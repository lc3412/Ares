; ModuleID = './asyncSocketInterface.o.i'
source_filename = "./asyncSocketInterface.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AsyncSocket = type { i32, i32, %struct.AsyncSocketPollParams, i32, i8, i8, void (i32, %struct.AsyncSocket*, i8*)*, i8*, i8*, i32, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*, i8, %struct.AsyncSocketVTable* }
%struct.AsyncSocketPollParams = type { i32, %struct.MXUserRecLock*, %struct.PollClassSet, %struct.IVmdbPoll* }
%struct.MXUserRecLock = type opaque
%struct.PollClassSet = type { i64 }
%struct.IVmdbPoll = type opaque
%struct.AsyncSocketVTable = type { i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8**)*, i32 (%struct.AsyncSocket*, i32, i8**)*, i32 (%struct.AsyncSocket*)*, {}*, i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)*, i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i8 (%struct.AsyncSocket*, i8*)*, i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i16 (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8*, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8, i32)*, i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket**, i32, i32, i32*)*, void (%struct.AsyncSocket*)* }
%struct._SSLVerifyParam = type opaque
%struct.AsyncSocketNetworkStats = type { i32, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetCloseOptions(%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*) #0 !dbg !56 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.AsyncSocket*, i8*)*, align 8
  %7 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !281, metadata !282), !dbg !283
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !284, metadata !282), !dbg !285
  store void (%struct.AsyncSocket*, i8*)* %2, void (%struct.AsyncSocket*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.AsyncSocket*, i8*)** %6, metadata !286, metadata !282), !dbg !287
  call void @llvm.dbg.declare(metadata i32* %7, metadata !288, metadata !282), !dbg !289
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !290
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !290
  br i1 %9, label %10, label %18, !dbg !292

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !293
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !295
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !295
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 8, !dbg !296
  %15 = bitcast {}** %14 to i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)**, !dbg !296
  %16 = load i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)*, i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)** %15, align 8, !dbg !296
  %17 = icmp ne i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)* %16, null, !dbg !297
  br label %18

; <label>:18:                                     ; preds = %10, %3
  %19 = phi i1 [ false, %3 ], [ %17, %10 ]
  %20 = xor i1 %19, true, !dbg !298
  %21 = xor i1 %20, true, !dbg !300
  %22 = zext i1 %21 to i32, !dbg !300
  %23 = sext i32 %22 to i64, !dbg !300
  %24 = icmp ne i64 %23, 0, !dbg !301
  br i1 %24, label %25, label %38, !dbg !301

; <label>:25:                                     ; preds = %18
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !302
  call void @AsyncSocketLock(%struct.AsyncSocket* %26), !dbg !304
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !305
  %28 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %27, i32 0, i32 14, !dbg !306
  %29 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %28, align 8, !dbg !306
  %30 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %29, i32 0, i32 8, !dbg !307
  %31 = bitcast {}** %30 to i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)**, !dbg !307
  %32 = load i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)*, i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)** %31, align 8, !dbg !307
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !308
  %34 = load i32, i32* %5, align 4, !dbg !309
  %35 = load void (%struct.AsyncSocket*, i8*)*, void (%struct.AsyncSocket*, i8*)** %6, align 8, !dbg !310
  %36 = call i32 %32(%struct.AsyncSocket* %33, i32 %34, void (%struct.AsyncSocket*, i8*)* %35), !dbg !311
  store i32 %36, i32* %7, align 4, !dbg !312
  %37 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !313
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %37), !dbg !314
  br label %39, !dbg !315

; <label>:38:                                     ; preds = %18
  store i32 5, i32* %7, align 4, !dbg !316
  br label %39

; <label>:39:                                     ; preds = %38, %25
  %40 = load i32, i32* %7, align 4, !dbg !318
  ret i32 %40, !dbg !319
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @AsyncSocketLock(%struct.AsyncSocket*) #2

declare void @AsyncSocketUnlock(%struct.AsyncSocket*) #2

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetState(%struct.AsyncSocket*) #0 !dbg !320 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !321, metadata !282), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %3, metadata !323, metadata !282), !dbg !324
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !325
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !325
  br i1 %5, label %6, label %13, !dbg !327

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !328
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !330
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !330
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 0, !dbg !331
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !331
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !332
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !333
  %16 = xor i1 %15, true, !dbg !335
  %17 = zext i1 %16 to i32, !dbg !335
  %18 = sext i32 %17 to i64, !dbg !335
  %19 = icmp ne i64 %18, 0, !dbg !336
  br i1 %19, label %20, label %30, !dbg !336

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !337
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !339
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !340
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !341
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !341
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 0, !dbg !342
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !342
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !343
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !344
  store i32 %28, i32* %3, align 4, !dbg !345
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !346
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !347
  br label %31, !dbg !348

; <label>:30:                                     ; preds = %13
  store i32 5, i32* %3, align 4, !dbg !349
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !351
  ret i32 %32, !dbg !352
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetGenericErrno(%struct.AsyncSocket*) #0 !dbg !353 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !354, metadata !282), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %3, metadata !356, metadata !282), !dbg !357
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !358
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !358
  br i1 %5, label %6, label %13, !dbg !360

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !361
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !363
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !363
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 3, !dbg !364
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !364
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !365
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !366
  %16 = xor i1 %15, true, !dbg !368
  %17 = zext i1 %16 to i32, !dbg !368
  %18 = sext i32 %17 to i64, !dbg !368
  %19 = icmp ne i64 %18, 0, !dbg !369
  br i1 %19, label %20, label %30, !dbg !369

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !370
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !372
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !373
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !374
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !374
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 3, !dbg !375
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !375
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !376
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !377
  store i32 %28, i32* %3, align 4, !dbg !378
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !379
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !380
  br label %31, !dbg !381

; <label>:30:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !382
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !384
  ret i32 %32, !dbg !385
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetFd(%struct.AsyncSocket*) #0 !dbg !386 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !387, metadata !282), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %3, metadata !389, metadata !282), !dbg !390
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !391
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !391
  br i1 %5, label %6, label %13, !dbg !393

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !394
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !396
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !396
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 4, !dbg !397
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !397
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !398
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !399
  %16 = xor i1 %15, true, !dbg !401
  %17 = zext i1 %16 to i32, !dbg !401
  %18 = sext i32 %17 to i64, !dbg !401
  %19 = icmp ne i64 %18, 0, !dbg !402
  br i1 %19, label %20, label %30, !dbg !402

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !403
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !405
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !406
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !407
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !407
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 4, !dbg !408
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !408
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !409
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !410
  store i32 %28, i32* %3, align 4, !dbg !411
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !412
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !413
  br label %31, !dbg !414

; <label>:30:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !415
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !417
  ret i32 %32, !dbg !418
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetRemoteIPStr(%struct.AsyncSocket*, i8**) #0 !dbg !419 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !420, metadata !282), !dbg !421
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !422, metadata !282), !dbg !423
  call void @llvm.dbg.declare(metadata i32* %5, metadata !424, metadata !282), !dbg !425
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !426
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !426
  br i1 %7, label %8, label %15, !dbg !428

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !429
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !431
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !431
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 5, !dbg !432
  %13 = load i32 (%struct.AsyncSocket*, i8**)*, i32 (%struct.AsyncSocket*, i8**)** %12, align 8, !dbg !432
  %14 = icmp ne i32 (%struct.AsyncSocket*, i8**)* %13, null, !dbg !433
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !434
  %18 = xor i1 %17, true, !dbg !436
  %19 = zext i1 %18 to i32, !dbg !436
  %20 = sext i32 %19 to i64, !dbg !436
  %21 = icmp ne i64 %20, 0, !dbg !437
  br i1 %21, label %22, label %33, !dbg !437

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !438
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !440
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !441
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !442
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !442
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 5, !dbg !443
  %28 = load i32 (%struct.AsyncSocket*, i8**)*, i32 (%struct.AsyncSocket*, i8**)** %27, align 8, !dbg !443
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !444
  %30 = load i8**, i8*** %4, align 8, !dbg !445
  %31 = call i32 %28(%struct.AsyncSocket* %29, i8** %30), !dbg !446
  store i32 %31, i32* %5, align 4, !dbg !447
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !448
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %32), !dbg !449
  br label %34, !dbg !450

; <label>:33:                                     ; preds = %15
  store i32 5, i32* %5, align 4, !dbg !451
  br label %34

; <label>:34:                                     ; preds = %33, %22
  %35 = load i32, i32* %5, align 4, !dbg !453
  ret i32 %35, !dbg !454
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetINETIPStr(%struct.AsyncSocket*, i32, i8**) #0 !dbg !455 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !456, metadata !282), !dbg !457
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !458, metadata !282), !dbg !459
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !460, metadata !282), !dbg !461
  call void @llvm.dbg.declare(metadata i32* %7, metadata !462, metadata !282), !dbg !463
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !464
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !464
  br i1 %9, label %10, label %17, !dbg !466

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !467
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !469
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !469
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 6, !dbg !470
  %15 = load i32 (%struct.AsyncSocket*, i32, i8**)*, i32 (%struct.AsyncSocket*, i32, i8**)** %14, align 8, !dbg !470
  %16 = icmp ne i32 (%struct.AsyncSocket*, i32, i8**)* %15, null, !dbg !471
  br label %17

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true, !dbg !472
  %20 = xor i1 %19, true, !dbg !474
  %21 = zext i1 %20 to i32, !dbg !474
  %22 = sext i32 %21 to i64, !dbg !474
  %23 = icmp ne i64 %22, 0, !dbg !475
  br i1 %23, label %24, label %36, !dbg !475

; <label>:24:                                     ; preds = %17
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !476
  call void @AsyncSocketLock(%struct.AsyncSocket* %25), !dbg !478
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !479
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 14, !dbg !480
  %28 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %27, align 8, !dbg !480
  %29 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %28, i32 0, i32 6, !dbg !481
  %30 = load i32 (%struct.AsyncSocket*, i32, i8**)*, i32 (%struct.AsyncSocket*, i32, i8**)** %29, align 8, !dbg !481
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !482
  %32 = load i32, i32* %5, align 4, !dbg !483
  %33 = load i8**, i8*** %6, align 8, !dbg !484
  %34 = call i32 %30(%struct.AsyncSocket* %31, i32 %32, i8** %33), !dbg !485
  store i32 %34, i32* %7, align 4, !dbg !486
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !487
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %35), !dbg !488
  br label %37, !dbg !489

; <label>:36:                                     ; preds = %17
  store i32 5, i32* %7, align 4, !dbg !490
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i32, i32* %7, align 4, !dbg !492
  ret i32 %38, !dbg !493
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetPort(%struct.AsyncSocket*) #0 !dbg !494 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !495, metadata !282), !dbg !496
  call void @llvm.dbg.declare(metadata i32* %3, metadata !497, metadata !282), !dbg !498
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !499
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !499
  br i1 %5, label %6, label %13, !dbg !501

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !502
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !504
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !504
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 7, !dbg !505
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !505
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !506
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !507
  %16 = xor i1 %15, true, !dbg !509
  %17 = zext i1 %16 to i32, !dbg !509
  %18 = sext i32 %17 to i64, !dbg !509
  %19 = icmp ne i64 %18, 0, !dbg !510
  br i1 %19, label %20, label %30, !dbg !510

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !511
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !513
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !514
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !515
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !515
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 7, !dbg !516
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !516
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !517
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !518
  store i32 %28, i32* %3, align 4, !dbg !519
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !520
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !521
  br label %31, !dbg !522

; <label>:30:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !523
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !525
  ret i32 %32, !dbg !526
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_UseNodelay(%struct.AsyncSocket*, i8 signext) #0 !dbg !527 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !530, metadata !282), !dbg !531
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !532, metadata !282), !dbg !533
  call void @llvm.dbg.declare(metadata i32* %5, metadata !534, metadata !282), !dbg !536
  %6 = load i8, i8* %4, align 1, !dbg !537
  %7 = sext i8 %6 to i32, !dbg !537
  %8 = icmp ne i32 %7, 0, !dbg !537
  %9 = select i1 %8, i32 1, i32 0, !dbg !537
  store i32 %9, i32* %5, align 4, !dbg !536
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !538
  %11 = bitcast i32* %5 to i8*, !dbg !539
  %12 = call i32 @AsyncSocket_SetOption(%struct.AsyncSocket* %10, i32 6, i32 1, i8* %11, i32 4), !dbg !540
  ret i32 %12, !dbg !541
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetOption(%struct.AsyncSocket*, i32, i32, i8*, i32) #0 !dbg !542 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !543, metadata !282), !dbg !544
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !545, metadata !282), !dbg !546
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !547, metadata !282), !dbg !548
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !549, metadata !282), !dbg !550
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !551, metadata !282), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %11, metadata !553, metadata !282), !dbg !554
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !555
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !555
  br i1 %13, label %14, label %21, !dbg !557

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !558
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !560
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !560
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 1, !dbg !561
  %19 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %18, align 8, !dbg !561
  %20 = icmp ne i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)* %19, null, !dbg !562
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !563
  %24 = xor i1 %23, true, !dbg !565
  %25 = zext i1 %24 to i32, !dbg !565
  %26 = sext i32 %25 to i64, !dbg !565
  %27 = icmp ne i64 %26, 0, !dbg !566
  br i1 %27, label %28, label %42, !dbg !566

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !567
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !569
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !570
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !571
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !571
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 1, !dbg !572
  %34 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %33, align 8, !dbg !572
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !573
  %36 = load i32, i32* %7, align 4, !dbg !574
  %37 = load i32, i32* %8, align 4, !dbg !575
  %38 = load i8*, i8** %9, align 8, !dbg !576
  %39 = load i32, i32* %10, align 4, !dbg !577
  %40 = call i32 %34(%struct.AsyncSocket* %35, i32 %36, i32 %37, i8* %38, i32 %39), !dbg !578
  store i32 %40, i32* %11, align 4, !dbg !579
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !580
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !581
  br label %43, !dbg !582

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !583
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !585
  ret i32 %44, !dbg !586
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetTCPTimeouts(%struct.AsyncSocket*, i32, i32, i32) #0 !dbg !587 {
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !590, metadata !282), !dbg !591
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !592, metadata !282), !dbg !593
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !594, metadata !282), !dbg !595
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !596, metadata !282), !dbg !597
  call void @llvm.dbg.declare(metadata i32* %9, metadata !598, metadata !282), !dbg !599
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !600
  %11 = icmp ne %struct.AsyncSocket* %10, null, !dbg !600
  br i1 %11, label %12, label %19, !dbg !602

; <label>:12:                                     ; preds = %4
  %13 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !603
  %14 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %13, i32 0, i32 14, !dbg !605
  %15 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %14, align 8, !dbg !605
  %16 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %15, i32 0, i32 1, !dbg !606
  %17 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %16, align 8, !dbg !606
  %18 = icmp ne i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)* %17, null, !dbg !607
  br label %19

; <label>:19:                                     ; preds = %12, %4
  %20 = phi i1 [ false, %4 ], [ %18, %12 ]
  %21 = xor i1 %20, true, !dbg !608
  %22 = xor i1 %21, true, !dbg !610
  %23 = zext i1 %22 to i32, !dbg !610
  %24 = sext i32 %23 to i64, !dbg !610
  %25 = icmp ne i64 %24, 0, !dbg !611
  br i1 %25, label %26, label %61, !dbg !611

; <label>:26:                                     ; preds = %19
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !612
  call void @AsyncSocketLock(%struct.AsyncSocket* %27), !dbg !614
  %28 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !615
  %29 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %28, i32 0, i32 14, !dbg !616
  %30 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %29, align 8, !dbg !616
  %31 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %30, i32 0, i32 1, !dbg !617
  %32 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %31, align 8, !dbg !617
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !618
  %34 = bitcast i32* %6 to i8*, !dbg !619
  %35 = call i32 %32(%struct.AsyncSocket* %33, i32 6, i32 4, i8* %34, i32 4), !dbg !620
  store i32 %35, i32* %9, align 4, !dbg !621
  %36 = load i32, i32* %9, align 4, !dbg !622
  %37 = icmp eq i32 %36, 0, !dbg !624
  br i1 %37, label %38, label %59, !dbg !625

; <label>:38:                                     ; preds = %26
  %39 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !626
  %40 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %39, i32 0, i32 14, !dbg !628
  %41 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %40, align 8, !dbg !628
  %42 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %41, i32 0, i32 1, !dbg !629
  %43 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %42, align 8, !dbg !629
  %44 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !630
  %45 = bitcast i32* %7 to i8*, !dbg !631
  %46 = call i32 %43(%struct.AsyncSocket* %44, i32 6, i32 5, i8* %45, i32 4), !dbg !632
  store i32 %46, i32* %9, align 4, !dbg !633
  %47 = load i32, i32* %9, align 4, !dbg !634
  %48 = icmp eq i32 %47, 0, !dbg !636
  br i1 %48, label %49, label %58, !dbg !637

; <label>:49:                                     ; preds = %38
  %50 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !638
  %51 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %50, i32 0, i32 14, !dbg !640
  %52 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %51, align 8, !dbg !640
  %53 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %52, i32 0, i32 1, !dbg !641
  %54 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %53, align 8, !dbg !641
  %55 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !642
  %56 = bitcast i32* %8 to i8*, !dbg !643
  %57 = call i32 %54(%struct.AsyncSocket* %55, i32 6, i32 6, i8* %56, i32 4), !dbg !644
  store i32 %57, i32* %9, align 4, !dbg !645
  br label %58, !dbg !646

; <label>:58:                                     ; preds = %49, %38
  br label %59, !dbg !647

; <label>:59:                                     ; preds = %58, %26
  %60 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !648
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %60), !dbg !649
  br label %62, !dbg !650

; <label>:61:                                     ; preds = %19
  store i32 5, i32* %9, align 4, !dbg !651
  br label %62

; <label>:62:                                     ; preds = %61, %59
  %63 = load i32, i32* %9, align 4, !dbg !653
  ret i32 %63, !dbg !654
}

; Function Attrs: nounwind uwtable
define signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket*, i32, i32) #0 !dbg !655 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !658, metadata !282), !dbg !659
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !660, metadata !282), !dbg !661
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !662, metadata !282), !dbg !663
  call void @llvm.dbg.declare(metadata i8* %7, metadata !664, metadata !282), !dbg !665
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !666
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !666
  br i1 %13, label %14, label %21, !dbg !668

; <label>:14:                                     ; preds = %3
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !669
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !671
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !671
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 1, !dbg !672
  %19 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %18, align 8, !dbg !672
  %20 = icmp ne i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)* %19, null, !dbg !673
  br label %21

; <label>:21:                                     ; preds = %14, %3
  %22 = phi i1 [ false, %3 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !674
  %24 = xor i1 %23, true, !dbg !676
  %25 = zext i1 %24 to i32, !dbg !676
  %26 = sext i32 %25 to i64, !dbg !676
  %27 = icmp ne i64 %26, 0, !dbg !677
  br i1 %27, label %28, label %94, !dbg !677

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i32* %8, metadata !678, metadata !282), !dbg !680
  call void @llvm.dbg.declare(metadata i32* %9, metadata !681, metadata !282), !dbg !682
  store i32 4, i32* %9, align 4, !dbg !682
  call void @llvm.dbg.declare(metadata i32* %10, metadata !683, metadata !282), !dbg !684
  call void @llvm.dbg.declare(metadata i32* %11, metadata !685, metadata !282), !dbg !686
  store i32 4, i32* %11, align 4, !dbg !686
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !687
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !688
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !689
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !690
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !690
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 2, !dbg !691
  %34 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)** %33, align 8, !dbg !691
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !692
  %36 = bitcast i32* %8 to i8*, !dbg !693
  %37 = call i32 %34(%struct.AsyncSocket* %35, i32 1, i32 7, i8* %36, i32* %9), !dbg !694
  %38 = icmp eq i32 %37, 0, !dbg !695
  br i1 %38, label %39, label %49, !dbg !696

; <label>:39:                                     ; preds = %28
  %40 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !697
  %41 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %40, i32 0, i32 14, !dbg !698
  %42 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %41, align 8, !dbg !698
  %43 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %42, i32 0, i32 2, !dbg !699
  %44 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)** %43, align 8, !dbg !699
  %45 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !700
  %46 = bitcast i32* %10 to i8*, !dbg !701
  %47 = call i32 %44(%struct.AsyncSocket* %45, i32 1, i32 8, i8* %46, i32* %11), !dbg !702
  %48 = icmp eq i32 %47, 0, !dbg !703
  br label %49

; <label>:49:                                     ; preds = %39, %28
  %50 = phi i1 [ false, %28 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32, !dbg !704
  %52 = trunc i32 %51 to i8, !dbg !706
  store i8 %52, i8* %7, align 1, !dbg !707
  %53 = load i8, i8* %7, align 1, !dbg !708
  %54 = sext i8 %53 to i32, !dbg !708
  %55 = icmp ne i32 %54, 0, !dbg !708
  br i1 %55, label %56, label %72, !dbg !710

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %8, align 4, !dbg !711
  %58 = load i32, i32* %5, align 4, !dbg !713
  %59 = icmp slt i32 %57, %58, !dbg !714
  br i1 %59, label %60, label %72, !dbg !715

; <label>:60:                                     ; preds = %56
  %61 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !716
  %62 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %61, i32 0, i32 14, !dbg !718
  %63 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %62, align 8, !dbg !718
  %64 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %63, i32 0, i32 1, !dbg !719
  %65 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %64, align 8, !dbg !719
  %66 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !720
  %67 = bitcast i32* %5 to i8*, !dbg !721
  %68 = call i32 %65(%struct.AsyncSocket* %66, i32 1, i32 7, i8* %67, i32 4), !dbg !722
  %69 = icmp eq i32 %68, 0, !dbg !723
  %70 = zext i1 %69 to i32, !dbg !723
  %71 = trunc i32 %70 to i8, !dbg !722
  store i8 %71, i8* %7, align 1, !dbg !724
  br label %72, !dbg !725

; <label>:72:                                     ; preds = %60, %56, %49
  %73 = load i8, i8* %7, align 1, !dbg !726
  %74 = sext i8 %73 to i32, !dbg !726
  %75 = icmp ne i32 %74, 0, !dbg !726
  br i1 %75, label %76, label %92, !dbg !728

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %10, align 4, !dbg !729
  %78 = load i32, i32* %6, align 4, !dbg !731
  %79 = icmp slt i32 %77, %78, !dbg !732
  br i1 %79, label %80, label %92, !dbg !733

; <label>:80:                                     ; preds = %76
  %81 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !734
  %82 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %81, i32 0, i32 14, !dbg !736
  %83 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %82, align 8, !dbg !736
  %84 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %83, i32 0, i32 1, !dbg !737
  %85 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %84, align 8, !dbg !737
  %86 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !738
  %87 = bitcast i32* %6 to i8*, !dbg !739
  %88 = call i32 %85(%struct.AsyncSocket* %86, i32 1, i32 8, i8* %87, i32 4), !dbg !740
  %89 = icmp eq i32 %88, 0, !dbg !741
  %90 = zext i1 %89 to i32, !dbg !741
  %91 = trunc i32 %90 to i8, !dbg !740
  store i8 %91, i8* %7, align 1, !dbg !742
  br label %92, !dbg !743

; <label>:92:                                     ; preds = %80, %76, %72
  %93 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !744
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %93), !dbg !745
  br label %95, !dbg !746

; <label>:94:                                     ; preds = %21
  store i8 0, i8* %7, align 1, !dbg !747
  br label %95

; <label>:95:                                     ; preds = %94, %92
  %96 = load i8, i8* %7, align 1, !dbg !749
  ret i8 %96, !dbg !750
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetSendLowLatencyMode(%struct.AsyncSocket*, i8 signext) #0 !dbg !751 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !752, metadata !282), !dbg !753
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !754, metadata !282), !dbg !755
  call void @llvm.dbg.declare(metadata i32* %5, metadata !756, metadata !282), !dbg !757
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !758
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !758
  br i1 %7, label %8, label %15, !dbg !760

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !761
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !763
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !763
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 1, !dbg !764
  %13 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %12, align 8, !dbg !764
  %14 = icmp ne i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)* %13, null, !dbg !765
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !766
  %18 = xor i1 %17, true, !dbg !768
  %19 = zext i1 %18 to i32, !dbg !768
  %20 = sext i32 %19 to i64, !dbg !768
  %21 = icmp ne i64 %20, 0, !dbg !769
  br i1 %21, label %22, label %32, !dbg !769

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !770
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !772
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !773
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !774
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !774
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 1, !dbg !775
  %28 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)** %27, align 8, !dbg !775
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !776
  %30 = call i32 %28(%struct.AsyncSocket* %29, i32 1001, i32 0, i8* %4, i32 1), !dbg !777
  store i32 %30, i32* %5, align 4, !dbg !778
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !779
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %31), !dbg !780
  br label %33, !dbg !781

; <label>:32:                                     ; preds = %15
  store i32 5, i32* %5, align 4, !dbg !782
  br label %33

; <label>:33:                                     ; preds = %32, %22
  %34 = load i32, i32* %5, align 4, !dbg !784
  ret i32 %34, !dbg !785
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetOption(%struct.AsyncSocket*, i32, i32, i8*, i32*) #0 !dbg !786 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !787, metadata !282), !dbg !788
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !789, metadata !282), !dbg !790
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !791, metadata !282), !dbg !792
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !793, metadata !282), !dbg !794
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !795, metadata !282), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %11, metadata !797, metadata !282), !dbg !798
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !799
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !799
  br i1 %13, label %14, label %21, !dbg !801

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !802
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !804
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !804
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 2, !dbg !805
  %19 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)** %18, align 8, !dbg !805
  %20 = icmp ne i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)* %19, null, !dbg !806
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !807
  %24 = xor i1 %23, true, !dbg !809
  %25 = zext i1 %24 to i32, !dbg !809
  %26 = sext i32 %25 to i64, !dbg !809
  %27 = icmp ne i64 %26, 0, !dbg !810
  br i1 %27, label %28, label %42, !dbg !810

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !811
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !813
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !814
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !815
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !815
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 2, !dbg !816
  %34 = load i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)** %33, align 8, !dbg !816
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !817
  %36 = load i32, i32* %7, align 4, !dbg !818
  %37 = load i32, i32* %8, align 4, !dbg !819
  %38 = load i8*, i8** %9, align 8, !dbg !820
  %39 = load i32*, i32** %10, align 8, !dbg !821
  %40 = call i32 %34(%struct.AsyncSocket* %35, i32 %36, i32 %37, i8* %38, i32* %39), !dbg !822
  store i32 %40, i32* %11, align 4, !dbg !823
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !824
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !825
  br label %43, !dbg !826

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !827
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !829
  ret i32 %44, !dbg !830
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_StartSslConnect(%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*) #0 !dbg !831 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca %struct._SSLVerifyParam*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8, %struct.AsyncSocket*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !837, metadata !282), !dbg !838
  store %struct._SSLVerifyParam* %1, %struct._SSLVerifyParam** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SSLVerifyParam** %7, metadata !839, metadata !282), !dbg !840
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !841, metadata !282), !dbg !842
  store void (i8, %struct.AsyncSocket*, i8*)* %3, void (i8, %struct.AsyncSocket*, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8, %struct.AsyncSocket*, i8*)** %9, metadata !843, metadata !282), !dbg !844
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !845, metadata !282), !dbg !846
  call void @llvm.dbg.declare(metadata i32* %11, metadata !847, metadata !282), !dbg !848
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !849
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !849
  br i1 %13, label %14, label %21, !dbg !851

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !852
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !854
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !854
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 10, !dbg !855
  %19 = load i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)** %18, align 8, !dbg !855
  %20 = icmp ne i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)* %19, null, !dbg !856
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !857
  %24 = xor i1 %23, true, !dbg !859
  %25 = zext i1 %24 to i32, !dbg !859
  %26 = sext i32 %25 to i64, !dbg !859
  %27 = icmp ne i64 %26, 0, !dbg !860
  br i1 %27, label %28, label %42, !dbg !860

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !861
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !863
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !864
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !865
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !865
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 10, !dbg !866
  %34 = load i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)** %33, align 8, !dbg !866
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !867
  %36 = load %struct._SSLVerifyParam*, %struct._SSLVerifyParam** %7, align 8, !dbg !868
  %37 = load i8*, i8** %8, align 8, !dbg !869
  %38 = load void (i8, %struct.AsyncSocket*, i8*)*, void (i8, %struct.AsyncSocket*, i8*)** %9, align 8, !dbg !870
  %39 = load i8*, i8** %10, align 8, !dbg !871
  %40 = call i32 %34(%struct.AsyncSocket* %35, %struct._SSLVerifyParam* %36, i8* %37, void (i8, %struct.AsyncSocket*, i8*)* %38, i8* %39), !dbg !872
  store i32 %40, i32* %11, align 4, !dbg !873
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !874
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !875
  br label %43, !dbg !876

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !877
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !879
  ret i32 %44, !dbg !880
}

; Function Attrs: nounwind uwtable
define signext i8 @AsyncSocket_ConnectSSL(%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*) #0 !dbg !881 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca %struct._SSLVerifyParam*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !884, metadata !282), !dbg !885
  store %struct._SSLVerifyParam* %1, %struct._SSLVerifyParam** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SSLVerifyParam** %5, metadata !886, metadata !282), !dbg !887
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !888, metadata !282), !dbg !889
  call void @llvm.dbg.declare(metadata i8* %7, metadata !890, metadata !282), !dbg !891
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !892
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !892
  br i1 %9, label %10, label %17, !dbg !894

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !895
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !897
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !897
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 9, !dbg !898
  %15 = load i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)*, i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)** %14, align 8, !dbg !898
  %16 = icmp ne i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)* %15, null, !dbg !899
  br label %17

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true, !dbg !900
  %20 = xor i1 %19, true, !dbg !902
  %21 = zext i1 %20 to i32, !dbg !902
  %22 = sext i32 %21 to i64, !dbg !902
  %23 = icmp ne i64 %22, 0, !dbg !903
  br i1 %23, label %24, label %36, !dbg !903

; <label>:24:                                     ; preds = %17
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !904
  call void @AsyncSocketLock(%struct.AsyncSocket* %25), !dbg !906
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !907
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 14, !dbg !908
  %28 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %27, align 8, !dbg !908
  %29 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %28, i32 0, i32 9, !dbg !909
  %30 = load i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)*, i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)** %29, align 8, !dbg !909
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !910
  %32 = load %struct._SSLVerifyParam*, %struct._SSLVerifyParam** %5, align 8, !dbg !911
  %33 = load i8*, i8** %6, align 8, !dbg !912
  %34 = call signext i8 %30(%struct.AsyncSocket* %31, %struct._SSLVerifyParam* %32, i8* %33), !dbg !913
  store i8 %34, i8* %7, align 1, !dbg !914
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !915
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %35), !dbg !916
  br label %37, !dbg !917

; <label>:36:                                     ; preds = %17
  store i8 0, i8* %7, align 1, !dbg !918
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i8, i8* %7, align 1, !dbg !920
  ret i8 %38, !dbg !921
}

; Function Attrs: nounwind uwtable
define signext i8 @AsyncSocket_AcceptSSL(%struct.AsyncSocket*, i8*) #0 !dbg !922 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !923, metadata !282), !dbg !924
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !925, metadata !282), !dbg !926
  call void @llvm.dbg.declare(metadata i8* %5, metadata !927, metadata !282), !dbg !928
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !929
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !929
  br i1 %7, label %8, label %15, !dbg !931

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !932
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !934
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !934
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 11, !dbg !935
  %13 = load i8 (%struct.AsyncSocket*, i8*)*, i8 (%struct.AsyncSocket*, i8*)** %12, align 8, !dbg !935
  %14 = icmp ne i8 (%struct.AsyncSocket*, i8*)* %13, null, !dbg !936
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !937
  %18 = xor i1 %17, true, !dbg !939
  %19 = zext i1 %18 to i32, !dbg !939
  %20 = sext i32 %19 to i64, !dbg !939
  %21 = icmp ne i64 %20, 0, !dbg !940
  br i1 %21, label %22, label %33, !dbg !940

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !941
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !943
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !944
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !945
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !945
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 11, !dbg !946
  %28 = load i8 (%struct.AsyncSocket*, i8*)*, i8 (%struct.AsyncSocket*, i8*)** %27, align 8, !dbg !946
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !947
  %30 = load i8*, i8** %4, align 8, !dbg !948
  %31 = call signext i8 %28(%struct.AsyncSocket* %29, i8* %30), !dbg !949
  store i8 %31, i8* %5, align 1, !dbg !950
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !951
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %32), !dbg !952
  br label %34, !dbg !953

; <label>:33:                                     ; preds = %15
  store i8 0, i8* %5, align 1, !dbg !954
  br label %34

; <label>:34:                                     ; preds = %33, %22
  %35 = load i8, i8* %5, align 1, !dbg !956
  ret i8 %35, !dbg !957
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_StartSslAccept(%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*) #0 !dbg !958 {
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8, %struct.AsyncSocket*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !959, metadata !282), !dbg !960
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !961, metadata !282), !dbg !962
  store void (i8, %struct.AsyncSocket*, i8*)* %2, void (i8, %struct.AsyncSocket*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8, %struct.AsyncSocket*, i8*)** %7, metadata !963, metadata !282), !dbg !964
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !965, metadata !282), !dbg !966
  call void @llvm.dbg.declare(metadata i32* %9, metadata !967, metadata !282), !dbg !968
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !969
  %11 = icmp ne %struct.AsyncSocket* %10, null, !dbg !969
  br i1 %11, label %12, label %19, !dbg !971

; <label>:12:                                     ; preds = %4
  %13 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !972
  %14 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %13, i32 0, i32 14, !dbg !974
  %15 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %14, align 8, !dbg !974
  %16 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %15, i32 0, i32 12, !dbg !975
  %17 = load i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)** %16, align 8, !dbg !975
  %18 = icmp ne i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)* %17, null, !dbg !976
  br label %19

; <label>:19:                                     ; preds = %12, %4
  %20 = phi i1 [ false, %4 ], [ %18, %12 ]
  %21 = xor i1 %20, true, !dbg !977
  %22 = xor i1 %21, true, !dbg !979
  %23 = zext i1 %22 to i32, !dbg !979
  %24 = sext i32 %23 to i64, !dbg !979
  %25 = icmp ne i64 %24, 0, !dbg !980
  br i1 %25, label %26, label %39, !dbg !980

; <label>:26:                                     ; preds = %19
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !981
  call void @AsyncSocketLock(%struct.AsyncSocket* %27), !dbg !983
  %28 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !984
  %29 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %28, i32 0, i32 14, !dbg !985
  %30 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %29, align 8, !dbg !985
  %31 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %30, i32 0, i32 12, !dbg !986
  %32 = load i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)** %31, align 8, !dbg !986
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !987
  %34 = load i8*, i8** %6, align 8, !dbg !988
  %35 = load void (i8, %struct.AsyncSocket*, i8*)*, void (i8, %struct.AsyncSocket*, i8*)** %7, align 8, !dbg !989
  %36 = load i8*, i8** %8, align 8, !dbg !990
  %37 = call i32 %32(%struct.AsyncSocket* %33, i8* %34, void (i8, %struct.AsyncSocket*, i8*)* %35, i8* %36), !dbg !991
  store i32 %37, i32* %9, align 4, !dbg !992
  %38 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !993
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %38), !dbg !994
  br label %40, !dbg !995

; <label>:39:                                     ; preds = %19
  store i32 5, i32* %9, align 4, !dbg !996
  br label %40

; <label>:40:                                     ; preds = %39, %26
  %41 = load i32, i32* %9, align 4, !dbg !998
  ret i32 %41, !dbg !999
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_Flush(%struct.AsyncSocket*, i32) #0 !dbg !1000 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !1001, metadata !282), !dbg !1002
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1003, metadata !282), !dbg !1004
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1005, metadata !282), !dbg !1006
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1007
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !1007
  br i1 %7, label %8, label %15, !dbg !1009

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1010
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !1012
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !1012
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 13, !dbg !1013
  %13 = load i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i32)** %12, align 8, !dbg !1013
  %14 = icmp ne i32 (%struct.AsyncSocket*, i32)* %13, null, !dbg !1014
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !1015
  %18 = xor i1 %17, true, !dbg !1017
  %19 = zext i1 %18 to i32, !dbg !1017
  %20 = sext i32 %19 to i64, !dbg !1017
  %21 = icmp ne i64 %20, 0, !dbg !1018
  br i1 %21, label %22, label %33, !dbg !1018

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1019
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !1021
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1022
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !1023
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !1023
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 13, !dbg !1024
  %28 = load i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i32)** %27, align 8, !dbg !1024
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1025
  %30 = load i32, i32* %4, align 4, !dbg !1026
  %31 = call i32 %28(%struct.AsyncSocket* %29, i32 %30), !dbg !1027
  store i32 %31, i32* %5, align 4, !dbg !1028
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1029
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %32), !dbg !1030
  br label %34, !dbg !1031

; <label>:33:                                     ; preds = %15
  store i32 5, i32* %5, align 4, !dbg !1032
  br label %34

; <label>:34:                                     ; preds = %33, %22
  %35 = load i32, i32* %5, align 4, !dbg !1034
  ret i32 %35, !dbg !1035
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_Recv(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #0 !dbg !1036 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1037, metadata !282), !dbg !1038
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1039, metadata !282), !dbg !1040
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1041, metadata !282), !dbg !1042
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1043, metadata !282), !dbg !1044
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1045, metadata !282), !dbg !1046
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1047, metadata !282), !dbg !1048
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1049
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1049
  br i1 %13, label %14, label %21, !dbg !1051

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1052
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1054
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1054
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 14, !dbg !1055
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)** %18, align 8, !dbg !1055
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)* %19, null, !dbg !1056
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1057
  %24 = xor i1 %23, true, !dbg !1059
  %25 = zext i1 %24 to i32, !dbg !1059
  %26 = sext i32 %25 to i64, !dbg !1059
  %27 = icmp ne i64 %26, 0, !dbg !1060
  br i1 %27, label %28, label %42, !dbg !1060

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1061
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1063
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1064
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1065
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1065
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 14, !dbg !1066
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)** %33, align 8, !dbg !1066
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1067
  %36 = load i8*, i8** %7, align 8, !dbg !1068
  %37 = load i32, i32* %8, align 4, !dbg !1069
  %38 = load i8*, i8** %9, align 8, !dbg !1070
  %39 = load i8*, i8** %10, align 8, !dbg !1071
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i8 signext 0, i8* %38, i8* %39), !dbg !1072
  store i32 %40, i32* %11, align 4, !dbg !1073
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1074
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1075
  br label %43, !dbg !1076

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1077
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1079
  ret i32 %44, !dbg !1080
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_RecvPartial(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #0 !dbg !1081 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1082, metadata !282), !dbg !1083
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1084, metadata !282), !dbg !1085
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1086, metadata !282), !dbg !1087
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1088, metadata !282), !dbg !1089
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1090, metadata !282), !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1092, metadata !282), !dbg !1093
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1094
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1094
  br i1 %13, label %14, label %21, !dbg !1096

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1097
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1099
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1099
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 14, !dbg !1100
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)** %18, align 8, !dbg !1100
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)* %19, null, !dbg !1101
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1102
  %24 = xor i1 %23, true, !dbg !1104
  %25 = zext i1 %24 to i32, !dbg !1104
  %26 = sext i32 %25 to i64, !dbg !1104
  %27 = icmp ne i64 %26, 0, !dbg !1105
  br i1 %27, label %28, label %42, !dbg !1105

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1106
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1108
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1109
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1110
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1110
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 14, !dbg !1111
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)** %33, align 8, !dbg !1111
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1112
  %36 = load i8*, i8** %7, align 8, !dbg !1113
  %37 = load i32, i32* %8, align 4, !dbg !1114
  %38 = load i8*, i8** %9, align 8, !dbg !1115
  %39 = load i8*, i8** %10, align 8, !dbg !1116
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i8 signext 1, i8* %38, i8* %39), !dbg !1117
  store i32 %40, i32* %11, align 4, !dbg !1118
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1119
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1120
  br label %43, !dbg !1121

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1122
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1124
  ret i32 %44, !dbg !1125
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_RecvPassedFd(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #0 !dbg !1126 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1127, metadata !282), !dbg !1128
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1129, metadata !282), !dbg !1130
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1131, metadata !282), !dbg !1132
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1133, metadata !282), !dbg !1134
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1135, metadata !282), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1137, metadata !282), !dbg !1138
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1139
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1139
  br i1 %13, label %14, label %21, !dbg !1141

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1142
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1144
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1144
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 15, !dbg !1145
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)** %18, align 8, !dbg !1145
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)* %19, null, !dbg !1146
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1147
  %24 = xor i1 %23, true, !dbg !1149
  %25 = zext i1 %24 to i32, !dbg !1149
  %26 = sext i32 %25 to i64, !dbg !1149
  %27 = icmp ne i64 %26, 0, !dbg !1150
  br i1 %27, label %28, label %42, !dbg !1150

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1151
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1153
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1154
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1155
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1155
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 15, !dbg !1156
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)** %33, align 8, !dbg !1156
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1157
  %36 = load i8*, i8** %7, align 8, !dbg !1158
  %37 = load i32, i32* %8, align 4, !dbg !1159
  %38 = load i8*, i8** %9, align 8, !dbg !1160
  %39 = load i8*, i8** %10, align 8, !dbg !1161
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i8* %38, i8* %39), !dbg !1162
  store i32 %40, i32* %11, align 4, !dbg !1163
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1164
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1165
  br label %43, !dbg !1166

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1167
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1169
  ret i32 %44, !dbg !1170
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetReceivedFd(%struct.AsyncSocket*) #0 !dbg !1171 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1172, metadata !282), !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1174, metadata !282), !dbg !1175
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1176
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1176
  br i1 %5, label %6, label %13, !dbg !1178

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1179
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1181
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1181
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 16, !dbg !1182
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !1182
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !1183
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1184
  %16 = xor i1 %15, true, !dbg !1186
  %17 = zext i1 %16 to i32, !dbg !1186
  %18 = sext i32 %17 to i64, !dbg !1186
  %19 = icmp ne i64 %18, 0, !dbg !1187
  br i1 %19, label %20, label %30, !dbg !1187

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1188
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1190
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1191
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1192
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1192
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 16, !dbg !1193
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !1193
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1194
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !1195
  store i32 %28, i32* %3, align 4, !dbg !1196
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1197
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1198
  br label %31, !dbg !1199

; <label>:30:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !1200
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !1202
  ret i32 %32, !dbg !1203
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_Send(%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*) #0 !dbg !1204 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i8*, i32, %struct.AsyncSocket*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1205, metadata !282), !dbg !1206
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1207, metadata !282), !dbg !1208
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1209, metadata !282), !dbg !1210
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* %3, void (i8*, i32, %struct.AsyncSocket*, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i32, %struct.AsyncSocket*, i8*)** %9, metadata !1211, metadata !282), !dbg !1212
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1213, metadata !282), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1215, metadata !282), !dbg !1216
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1217
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1217
  br i1 %13, label %14, label %21, !dbg !1219

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1220
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1222
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1222
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 17, !dbg !1223
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)** %18, align 8, !dbg !1223
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)* %19, null, !dbg !1224
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1225
  %24 = xor i1 %23, true, !dbg !1227
  %25 = zext i1 %24 to i32, !dbg !1227
  %26 = sext i32 %25 to i64, !dbg !1227
  %27 = icmp ne i64 %26, 0, !dbg !1228
  br i1 %27, label %28, label %42, !dbg !1228

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1229
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1231
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1232
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1233
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1233
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 17, !dbg !1234
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)** %33, align 8, !dbg !1234
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1235
  %36 = load i8*, i8** %7, align 8, !dbg !1236
  %37 = load i32, i32* %8, align 4, !dbg !1237
  %38 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %9, align 8, !dbg !1238
  %39 = load i8*, i8** %10, align 8, !dbg !1239
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, void (i8*, i32, %struct.AsyncSocket*, i8*)* %38, i8* %39), !dbg !1240
  store i32 %40, i32* %11, align 4, !dbg !1241
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1242
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1243
  br label %43, !dbg !1244

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1245
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1247
  ret i32 %44, !dbg !1248
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_IsSendBufferFull(%struct.AsyncSocket*) #0 !dbg !1249 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1250, metadata !282), !dbg !1251
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1252, metadata !282), !dbg !1253
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1254
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1254
  br i1 %5, label %6, label %13, !dbg !1256

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1257
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1259
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1259
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 18, !dbg !1260
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !1260
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !1261
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1262
  %16 = xor i1 %15, true, !dbg !1264
  %17 = zext i1 %16 to i32, !dbg !1264
  %18 = sext i32 %17 to i64, !dbg !1264
  %19 = icmp ne i64 %18, 0, !dbg !1265
  br i1 %19, label %20, label %30, !dbg !1265

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1266
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1268
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1269
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1270
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1270
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 18, !dbg !1271
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !1271
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1272
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !1273
  store i32 %28, i32* %3, align 4, !dbg !1274
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1275
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1276
  br label %31, !dbg !1277

; <label>:30:                                     ; preds = %13
  store i32 5, i32* %3, align 4, !dbg !1278
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !1280
  ret i32 %32, !dbg !1281
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetNetworkStats(%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*) #0 !dbg !1282 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca %struct.AsyncSocketNetworkStats*, align 8
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !1283, metadata !282), !dbg !1284
  store %struct.AsyncSocketNetworkStats* %1, %struct.AsyncSocketNetworkStats** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocketNetworkStats** %4, metadata !1285, metadata !282), !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1287, metadata !282), !dbg !1288
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1289
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !1289
  br i1 %7, label %8, label %15, !dbg !1291

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1292
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !1294
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !1294
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 19, !dbg !1295
  %13 = load i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)*, i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)** %12, align 8, !dbg !1295
  %14 = icmp ne i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)* %13, null, !dbg !1296
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !1297
  %18 = xor i1 %17, true, !dbg !1299
  %19 = zext i1 %18 to i32, !dbg !1299
  %20 = sext i32 %19 to i64, !dbg !1299
  %21 = icmp ne i64 %20, 0, !dbg !1300
  br i1 %21, label %22, label %33, !dbg !1300

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1301
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !1303
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1304
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !1305
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !1305
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 19, !dbg !1306
  %28 = load i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)*, i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)** %27, align 8, !dbg !1306
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1307
  %30 = load %struct.AsyncSocketNetworkStats*, %struct.AsyncSocketNetworkStats** %4, align 8, !dbg !1308
  %31 = call i32 %28(%struct.AsyncSocket* %29, %struct.AsyncSocketNetworkStats* %30), !dbg !1309
  store i32 %31, i32* %5, align 4, !dbg !1310
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1311
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %32), !dbg !1312
  br label %34, !dbg !1313

; <label>:33:                                     ; preds = %15
  store i32 5, i32* %5, align 4, !dbg !1314
  br label %34

; <label>:34:                                     ; preds = %33, %22
  %35 = load i32, i32* %5, align 4, !dbg !1316
  ret i32 %35, !dbg !1317
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_Close(%struct.AsyncSocket*) #0 !dbg !1318 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1319, metadata !282), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1321, metadata !282), !dbg !1322
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1323
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1323
  br i1 %5, label %6, label %13, !dbg !1325

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1326
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1328
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1328
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 20, !dbg !1329
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !1329
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !1330
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1331
  %16 = xor i1 %15, true, !dbg !1333
  %17 = zext i1 %16 to i32, !dbg !1333
  %18 = sext i32 %17 to i64, !dbg !1333
  %19 = icmp ne i64 %18, 0, !dbg !1334
  br i1 %19, label %20, label %30, !dbg !1334

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1335
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1337
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1338
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1339
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1339
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 20, !dbg !1340
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !1340
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1341
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !1342
  store i32 %28, i32* %3, align 4, !dbg !1343
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1344
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1345
  br label %31, !dbg !1346

; <label>:30:                                     ; preds = %13
  store i32 5, i32* %3, align 4, !dbg !1347
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !1349
  ret i32 %32, !dbg !1350
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_CancelRecv(%struct.AsyncSocket*, i32*, i8**, i8**) #0 !dbg !1351 {
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !1354, metadata !282), !dbg !1355
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1356, metadata !282), !dbg !1357
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1358, metadata !282), !dbg !1359
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1360, metadata !282), !dbg !1361
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1362
  %10 = load i32*, i32** %6, align 8, !dbg !1363
  %11 = load i8**, i8*** %7, align 8, !dbg !1364
  %12 = load i8**, i8*** %8, align 8, !dbg !1365
  %13 = call i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket* %9, i32* %10, i8** %11, i8** %12, i8 signext 0), !dbg !1366
  ret i32 %13, !dbg !1367
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket*, i32*, i8**, i8**, i8 signext) #0 !dbg !1368 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1369, metadata !282), !dbg !1370
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1371, metadata !282), !dbg !1372
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1373, metadata !282), !dbg !1374
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1375, metadata !282), !dbg !1376
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1377, metadata !282), !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1379, metadata !282), !dbg !1380
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1381
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1381
  br i1 %13, label %14, label %21, !dbg !1383

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1384
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1386
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1386
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 21, !dbg !1387
  %19 = load i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)*, i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)** %18, align 8, !dbg !1387
  %20 = icmp ne i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)* %19, null, !dbg !1388
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1389
  %24 = xor i1 %23, true, !dbg !1391
  %25 = zext i1 %24 to i32, !dbg !1391
  %26 = sext i32 %25 to i64, !dbg !1391
  %27 = icmp ne i64 %26, 0, !dbg !1392
  br i1 %27, label %28, label %42, !dbg !1392

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1393
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1395
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1396
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1397
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1397
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 21, !dbg !1398
  %34 = load i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)*, i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)** %33, align 8, !dbg !1398
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1399
  %36 = load i32*, i32** %7, align 8, !dbg !1400
  %37 = load i8**, i8*** %8, align 8, !dbg !1401
  %38 = load i8**, i8*** %9, align 8, !dbg !1402
  %39 = load i8, i8* %10, align 1, !dbg !1403
  %40 = call i32 %34(%struct.AsyncSocket* %35, i32* %36, i8** %37, i8** %38, i8 signext %39), !dbg !1404
  store i32 %40, i32* %11, align 4, !dbg !1405
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1406
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1407
  br label %43, !dbg !1408

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1409
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1411
  ret i32 %44, !dbg !1412
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_CancelCbForClose(%struct.AsyncSocket*) #0 !dbg !1413 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1414, metadata !282), !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1416, metadata !282), !dbg !1417
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1418
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1418
  br i1 %5, label %6, label %13, !dbg !1420

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1421
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1423
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1423
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 22, !dbg !1424
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !1424
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !1425
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1426
  %16 = xor i1 %15, true, !dbg !1428
  %17 = zext i1 %16 to i32, !dbg !1428
  %18 = sext i32 %17 to i64, !dbg !1428
  %19 = icmp ne i64 %18, 0, !dbg !1429
  br i1 %19, label %20, label %30, !dbg !1429

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1430
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1432
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1433
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1434
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1434
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 22, !dbg !1435
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !1435
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1436
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !1437
  store i32 %28, i32* %3, align 4, !dbg !1438
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1439
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1440
  br label %31, !dbg !1441

; <label>:30:                                     ; preds = %13
  store i32 5, i32* %3, align 4, !dbg !1442
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !1444
  ret i32 %32, !dbg !1445
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetLocalVMCIAddress(%struct.AsyncSocket*, i32*, i32*) #0 !dbg !1446 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !1447, metadata !282), !dbg !1448
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1449, metadata !282), !dbg !1450
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1451, metadata !282), !dbg !1452
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1453, metadata !282), !dbg !1454
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1455
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !1455
  br i1 %9, label %10, label %17, !dbg !1457

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1458
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !1460
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !1460
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 23, !dbg !1461
  %15 = load i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)** %14, align 8, !dbg !1461
  %16 = icmp ne i32 (%struct.AsyncSocket*, i32*, i32*)* %15, null, !dbg !1462
  br label %17

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true, !dbg !1463
  %20 = xor i1 %19, true, !dbg !1465
  %21 = zext i1 %20 to i32, !dbg !1465
  %22 = sext i32 %21 to i64, !dbg !1465
  %23 = icmp ne i64 %22, 0, !dbg !1466
  br i1 %23, label %24, label %36, !dbg !1466

; <label>:24:                                     ; preds = %17
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1467
  call void @AsyncSocketLock(%struct.AsyncSocket* %25), !dbg !1469
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1470
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 14, !dbg !1471
  %28 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %27, align 8, !dbg !1471
  %29 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %28, i32 0, i32 23, !dbg !1472
  %30 = load i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)** %29, align 8, !dbg !1472
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1473
  %32 = load i32*, i32** %5, align 8, !dbg !1474
  %33 = load i32*, i32** %6, align 8, !dbg !1475
  %34 = call i32 %30(%struct.AsyncSocket* %31, i32* %32, i32* %33), !dbg !1476
  store i32 %34, i32* %7, align 4, !dbg !1477
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1478
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %35), !dbg !1479
  br label %37, !dbg !1480

; <label>:36:                                     ; preds = %17
  store i32 5, i32* %7, align 4, !dbg !1481
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i32, i32* %7, align 4, !dbg !1483
  ret i32 %38, !dbg !1484
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetRemoteVMCIAddress(%struct.AsyncSocket*, i32*, i32*) #0 !dbg !1485 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !1486, metadata !282), !dbg !1487
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1488, metadata !282), !dbg !1489
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1490, metadata !282), !dbg !1491
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1492, metadata !282), !dbg !1493
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1494
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !1494
  br i1 %9, label %10, label %17, !dbg !1496

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1497
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !1499
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !1499
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 24, !dbg !1500
  %15 = load i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)** %14, align 8, !dbg !1500
  %16 = icmp ne i32 (%struct.AsyncSocket*, i32*, i32*)* %15, null, !dbg !1501
  br label %17

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true, !dbg !1502
  %20 = xor i1 %19, true, !dbg !1504
  %21 = zext i1 %20 to i32, !dbg !1504
  %22 = sext i32 %21 to i64, !dbg !1504
  %23 = icmp ne i64 %22, 0, !dbg !1505
  br i1 %23, label %24, label %36, !dbg !1505

; <label>:24:                                     ; preds = %17
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1506
  call void @AsyncSocketLock(%struct.AsyncSocket* %25), !dbg !1508
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1509
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 14, !dbg !1510
  %28 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %27, align 8, !dbg !1510
  %29 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %28, i32 0, i32 24, !dbg !1511
  %30 = load i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)** %29, align 8, !dbg !1511
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1512
  %32 = load i32*, i32** %5, align 8, !dbg !1513
  %33 = load i32*, i32** %6, align 8, !dbg !1514
  %34 = call i32 %30(%struct.AsyncSocket* %31, i32* %32, i32* %33), !dbg !1515
  store i32 %34, i32* %7, align 4, !dbg !1516
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1517
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %35), !dbg !1518
  br label %37, !dbg !1519

; <label>:36:                                     ; preds = %17
  store i32 5, i32* %7, align 4, !dbg !1520
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i32, i32* %7, align 4, !dbg !1522
  ret i32 %38, !dbg !1523
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetWebSocketError(%struct.AsyncSocket*) #0 !dbg !1524 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1525, metadata !282), !dbg !1526
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1527, metadata !282), !dbg !1528
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1529
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1529
  br i1 %5, label %6, label %13, !dbg !1531

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1532
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1534
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1534
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 25, !dbg !1535
  %11 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %10, align 8, !dbg !1535
  %12 = icmp ne i32 (%struct.AsyncSocket*)* %11, null, !dbg !1536
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1537
  %16 = xor i1 %15, true, !dbg !1539
  %17 = zext i1 %16 to i32, !dbg !1539
  %18 = sext i32 %17 to i64, !dbg !1539
  %19 = icmp ne i64 %18, 0, !dbg !1540
  br i1 %19, label %20, label %30, !dbg !1540

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1541
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1543
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1544
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1545
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1545
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 25, !dbg !1546
  %26 = load i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)** %25, align 8, !dbg !1546
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1547
  %28 = call i32 %26(%struct.AsyncSocket* %27), !dbg !1548
  store i32 %28, i32* %3, align 4, !dbg !1549
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1550
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1551
  br label %31, !dbg !1552

; <label>:30:                                     ; preds = %13
  store i32 -1, i32* %3, align 4, !dbg !1553
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i32, i32* %3, align 4, !dbg !1555
  ret i32 %32, !dbg !1556
}

; Function Attrs: nounwind uwtable
define i8* @AsyncSocket_GetWebSocketURI(%struct.AsyncSocket*) #0 !dbg !1557 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1558, metadata !282), !dbg !1559
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1560, metadata !282), !dbg !1561
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1562
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1562
  br i1 %5, label %6, label %13, !dbg !1564

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1565
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1567
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1567
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 26, !dbg !1568
  %11 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %10, align 8, !dbg !1568
  %12 = icmp ne i8* (%struct.AsyncSocket*)* %11, null, !dbg !1569
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1570
  %16 = xor i1 %15, true, !dbg !1572
  %17 = zext i1 %16 to i32, !dbg !1572
  %18 = sext i32 %17 to i64, !dbg !1572
  %19 = icmp ne i64 %18, 0, !dbg !1573
  br i1 %19, label %20, label %30, !dbg !1573

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1574
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1576
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1577
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1578
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1578
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 26, !dbg !1579
  %26 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %25, align 8, !dbg !1579
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1580
  %28 = call i8* %26(%struct.AsyncSocket* %27), !dbg !1581
  store i8* %28, i8** %3, align 8, !dbg !1582
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1583
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1584
  br label %31, !dbg !1585

; <label>:30:                                     ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !1586
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i8*, i8** %3, align 8, !dbg !1588
  ret i8* %32, !dbg !1589
}

; Function Attrs: nounwind uwtable
define i8* @AsyncSocket_GetWebSocketCookie(%struct.AsyncSocket*) #0 !dbg !1590 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1591, metadata !282), !dbg !1592
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1593, metadata !282), !dbg !1594
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1595
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1595
  br i1 %5, label %6, label %13, !dbg !1597

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1598
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1600
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1600
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 27, !dbg !1601
  %11 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %10, align 8, !dbg !1601
  %12 = icmp ne i8* (%struct.AsyncSocket*)* %11, null, !dbg !1602
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1603
  %16 = xor i1 %15, true, !dbg !1605
  %17 = zext i1 %16 to i32, !dbg !1605
  %18 = sext i32 %17 to i64, !dbg !1605
  %19 = icmp ne i64 %18, 0, !dbg !1606
  br i1 %19, label %20, label %30, !dbg !1606

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1607
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1609
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1610
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1611
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1611
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 27, !dbg !1612
  %26 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %25, align 8, !dbg !1612
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1613
  %28 = call i8* %26(%struct.AsyncSocket* %27), !dbg !1614
  store i8* %28, i8** %3, align 8, !dbg !1615
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1616
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1617
  br label %31, !dbg !1618

; <label>:30:                                     ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !1619
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i8*, i8** %3, align 8, !dbg !1621
  ret i8* %32, !dbg !1622
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetWebSocketCookie(%struct.AsyncSocket*, i8*, i8*, i8*) #0 !dbg !1623 {
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !1624, metadata !282), !dbg !1625
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1626, metadata !282), !dbg !1627
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1628, metadata !282), !dbg !1629
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1630, metadata !282), !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1632, metadata !282), !dbg !1633
  store i32 1, i32* %9, align 4, !dbg !1633
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1634
  %11 = icmp ne %struct.AsyncSocket* %10, null, !dbg !1634
  br i1 %11, label %12, label %19, !dbg !1636

; <label>:12:                                     ; preds = %4
  %13 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1637
  %14 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %13, i32 0, i32 14, !dbg !1639
  %15 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %14, align 8, !dbg !1639
  %16 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %15, i32 0, i32 30, !dbg !1640
  %17 = load i32 (%struct.AsyncSocket*, i8*, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i8*, i8*)** %16, align 8, !dbg !1640
  %18 = icmp ne i32 (%struct.AsyncSocket*, i8*, i8*, i8*)* %17, null, !dbg !1641
  br label %19

; <label>:19:                                     ; preds = %12, %4
  %20 = phi i1 [ false, %4 ], [ %18, %12 ]
  %21 = xor i1 %20, true, !dbg !1642
  %22 = xor i1 %21, true, !dbg !1644
  %23 = zext i1 %22 to i32, !dbg !1644
  %24 = sext i32 %23 to i64, !dbg !1644
  %25 = icmp ne i64 %24, 0, !dbg !1645
  br i1 %25, label %26, label %39, !dbg !1645

; <label>:26:                                     ; preds = %19
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1646
  call void @AsyncSocketLock(%struct.AsyncSocket* %27), !dbg !1648
  %28 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1649
  %29 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %28, i32 0, i32 14, !dbg !1650
  %30 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %29, align 8, !dbg !1650
  %31 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %30, i32 0, i32 30, !dbg !1651
  %32 = load i32 (%struct.AsyncSocket*, i8*, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i8*, i8*)** %31, align 8, !dbg !1651
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1652
  %34 = load i8*, i8** %6, align 8, !dbg !1653
  %35 = load i8*, i8** %7, align 8, !dbg !1654
  %36 = load i8*, i8** %8, align 8, !dbg !1655
  %37 = call i32 %32(%struct.AsyncSocket* %33, i8* %34, i8* %35, i8* %36), !dbg !1656
  store i32 %37, i32* %9, align 4, !dbg !1657
  %38 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1658
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %38), !dbg !1659
  br label %39, !dbg !1660

; <label>:39:                                     ; preds = %26, %19
  %40 = load i32, i32* %9, align 4, !dbg !1661
  ret i32 %40, !dbg !1662
}

; Function Attrs: nounwind uwtable
define zeroext i16 @AsyncSocket_GetWebSocketCloseStatus(%struct.AsyncSocket*) #0 !dbg !1663 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i16, align 2
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1664, metadata !282), !dbg !1665
  call void @llvm.dbg.declare(metadata i16* %3, metadata !1666, metadata !282), !dbg !1667
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1668
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1668
  br i1 %5, label %6, label %13, !dbg !1670

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1671
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1673
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1673
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 28, !dbg !1674
  %11 = load i16 (%struct.AsyncSocket*)*, i16 (%struct.AsyncSocket*)** %10, align 8, !dbg !1674
  %12 = icmp ne i16 (%struct.AsyncSocket*)* %11, null, !dbg !1675
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1676
  %16 = xor i1 %15, true, !dbg !1678
  %17 = zext i1 %16 to i32, !dbg !1678
  %18 = sext i32 %17 to i64, !dbg !1678
  %19 = icmp ne i64 %18, 0, !dbg !1679
  br i1 %19, label %20, label %30, !dbg !1679

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1680
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1682
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1683
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1684
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1684
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 28, !dbg !1685
  %26 = load i16 (%struct.AsyncSocket*)*, i16 (%struct.AsyncSocket*)** %25, align 8, !dbg !1685
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1686
  %28 = call zeroext i16 %26(%struct.AsyncSocket* %27), !dbg !1687
  store i16 %28, i16* %3, align 2, !dbg !1688
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1689
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1690
  br label %31, !dbg !1691

; <label>:30:                                     ; preds = %13
  store i16 0, i16* %3, align 2, !dbg !1692
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i16, i16* %3, align 2, !dbg !1694
  ret i16 %32, !dbg !1695
}

; Function Attrs: nounwind uwtable
define i8* @AsyncSocket_GetWebSocketProtocol(%struct.AsyncSocket*) #0 !dbg !1696 {
  %2 = alloca %struct.AsyncSocket*, align 8
  %3 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !1697, metadata !282), !dbg !1698
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1699, metadata !282), !dbg !1700
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1701
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !1701
  br i1 %5, label %6, label %13, !dbg !1703

; <label>:6:                                      ; preds = %1
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1704
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 14, !dbg !1706
  %9 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %8, align 8, !dbg !1706
  %10 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %9, i32 0, i32 29, !dbg !1707
  %11 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %10, align 8, !dbg !1707
  %12 = icmp ne i8* (%struct.AsyncSocket*)* %11, null, !dbg !1708
  br label %13

; <label>:13:                                     ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = xor i1 %14, true, !dbg !1709
  %16 = xor i1 %15, true, !dbg !1711
  %17 = zext i1 %16 to i32, !dbg !1711
  %18 = sext i32 %17 to i64, !dbg !1711
  %19 = icmp ne i64 %18, 0, !dbg !1712
  br i1 %19, label %20, label %30, !dbg !1712

; <label>:20:                                     ; preds = %13
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1713
  call void @AsyncSocketLock(%struct.AsyncSocket* %21), !dbg !1715
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1716
  %23 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %22, i32 0, i32 14, !dbg !1717
  %24 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %23, align 8, !dbg !1717
  %25 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %24, i32 0, i32 29, !dbg !1718
  %26 = load i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)** %25, align 8, !dbg !1718
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1719
  %28 = call i8* %26(%struct.AsyncSocket* %27), !dbg !1720
  store i8* %28, i8** %3, align 8, !dbg !1721
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !1722
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %29), !dbg !1723
  br label %31, !dbg !1724

; <label>:30:                                     ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !1725
  br label %31

; <label>:31:                                     ; preds = %30, %20
  %32 = load i8*, i8** %3, align 8, !dbg !1727
  ret i8* %32, !dbg !1728
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_RecvBlocking(%struct.AsyncSocket*, i8*, i32, i32*, i32) #0 !dbg !1729 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1730, metadata !282), !dbg !1731
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1732, metadata !282), !dbg !1733
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1734, metadata !282), !dbg !1735
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1736, metadata !282), !dbg !1737
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1738, metadata !282), !dbg !1739
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1740, metadata !282), !dbg !1741
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1742
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1742
  br i1 %13, label %14, label %21, !dbg !1744

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1745
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1747
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1747
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 31, !dbg !1748
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %18, align 8, !dbg !1748
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)* %19, null, !dbg !1749
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1750
  %24 = xor i1 %23, true, !dbg !1752
  %25 = zext i1 %24 to i32, !dbg !1752
  %26 = sext i32 %25 to i64, !dbg !1752
  %27 = icmp ne i64 %26, 0, !dbg !1753
  br i1 %27, label %28, label %42, !dbg !1753

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1754
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1756
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1757
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1758
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1758
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 31, !dbg !1759
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %33, align 8, !dbg !1759
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1760
  %36 = load i8*, i8** %7, align 8, !dbg !1761
  %37 = load i32, i32* %8, align 4, !dbg !1762
  %38 = load i32*, i32** %9, align 8, !dbg !1763
  %39 = load i32, i32* %10, align 4, !dbg !1764
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i32* %38, i32 %39), !dbg !1765
  store i32 %40, i32* %11, align 4, !dbg !1766
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1767
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1768
  br label %43, !dbg !1769

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1770
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1772
  ret i32 %44, !dbg !1773
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_RecvPartialBlocking(%struct.AsyncSocket*, i8*, i32, i32*, i32) #0 !dbg !1774 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1775, metadata !282), !dbg !1776
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1777, metadata !282), !dbg !1778
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1779, metadata !282), !dbg !1780
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1781, metadata !282), !dbg !1782
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1783, metadata !282), !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1785, metadata !282), !dbg !1786
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1787
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1787
  br i1 %13, label %14, label %21, !dbg !1789

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1790
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1792
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1792
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 32, !dbg !1793
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %18, align 8, !dbg !1793
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)* %19, null, !dbg !1794
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1795
  %24 = xor i1 %23, true, !dbg !1797
  %25 = zext i1 %24 to i32, !dbg !1797
  %26 = sext i32 %25 to i64, !dbg !1797
  %27 = icmp ne i64 %26, 0, !dbg !1798
  br i1 %27, label %28, label %42, !dbg !1798

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1799
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1801
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1802
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1803
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1803
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 32, !dbg !1804
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %33, align 8, !dbg !1804
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1805
  %36 = load i8*, i8** %7, align 8, !dbg !1806
  %37 = load i32, i32* %8, align 4, !dbg !1807
  %38 = load i32*, i32** %9, align 8, !dbg !1808
  %39 = load i32, i32* %10, align 4, !dbg !1809
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i32* %38, i32 %39), !dbg !1810
  store i32 %40, i32* %11, align 4, !dbg !1811
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1812
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1813
  br label %43, !dbg !1814

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1815
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1817
  ret i32 %44, !dbg !1818
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SendBlocking(%struct.AsyncSocket*, i8*, i32, i32*, i32) #0 !dbg !1819 {
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !1820, metadata !282), !dbg !1821
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1822, metadata !282), !dbg !1823
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1824, metadata !282), !dbg !1825
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1826, metadata !282), !dbg !1827
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1828, metadata !282), !dbg !1829
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1830, metadata !282), !dbg !1831
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1832
  %13 = icmp ne %struct.AsyncSocket* %12, null, !dbg !1832
  br i1 %13, label %14, label %21, !dbg !1834

; <label>:14:                                     ; preds = %5
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1835
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 14, !dbg !1837
  %17 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %16, align 8, !dbg !1837
  %18 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %17, i32 0, i32 33, !dbg !1838
  %19 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %18, align 8, !dbg !1838
  %20 = icmp ne i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)* %19, null, !dbg !1839
  br label %21

; <label>:21:                                     ; preds = %14, %5
  %22 = phi i1 [ false, %5 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !1840
  %24 = xor i1 %23, true, !dbg !1842
  %25 = zext i1 %24 to i32, !dbg !1842
  %26 = sext i32 %25 to i64, !dbg !1842
  %27 = icmp ne i64 %26, 0, !dbg !1843
  br i1 %27, label %28, label %42, !dbg !1843

; <label>:28:                                     ; preds = %21
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1844
  call void @AsyncSocketLock(%struct.AsyncSocket* %29), !dbg !1846
  %30 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1847
  %31 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %30, i32 0, i32 14, !dbg !1848
  %32 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %31, align 8, !dbg !1848
  %33 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %32, i32 0, i32 33, !dbg !1849
  %34 = load i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)** %33, align 8, !dbg !1849
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1850
  %36 = load i8*, i8** %7, align 8, !dbg !1851
  %37 = load i32, i32* %8, align 4, !dbg !1852
  %38 = load i32*, i32** %9, align 8, !dbg !1853
  %39 = load i32, i32* %10, align 4, !dbg !1854
  %40 = call i32 %34(%struct.AsyncSocket* %35, i8* %36, i32 %37, i32* %38, i32 %39), !dbg !1855
  store i32 %40, i32* %11, align 4, !dbg !1856
  %41 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !1857
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %41), !dbg !1858
  br label %43, !dbg !1859

; <label>:42:                                     ; preds = %21
  store i32 5, i32* %11, align 4, !dbg !1860
  br label %43

; <label>:43:                                     ; preds = %42, %28
  %44 = load i32, i32* %11, align 4, !dbg !1862
  ret i32 %44, !dbg !1863
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_DoOneMsg(%struct.AsyncSocket*, i8 signext, i32) #0 !dbg !1864 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !1865, metadata !282), !dbg !1866
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1867, metadata !282), !dbg !1868
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1869, metadata !282), !dbg !1870
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1871, metadata !282), !dbg !1872
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1873
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !1873
  br i1 %9, label %10, label %17, !dbg !1875

; <label>:10:                                     ; preds = %3
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1876
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 14, !dbg !1878
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %12, align 8, !dbg !1878
  %14 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %13, i32 0, i32 34, !dbg !1879
  %15 = load i32 (%struct.AsyncSocket*, i8, i32)*, i32 (%struct.AsyncSocket*, i8, i32)** %14, align 8, !dbg !1879
  %16 = icmp ne i32 (%struct.AsyncSocket*, i8, i32)* %15, null, !dbg !1880
  br label %17

; <label>:17:                                     ; preds = %10, %3
  %18 = phi i1 [ false, %3 ], [ %16, %10 ]
  %19 = xor i1 %18, true, !dbg !1881
  %20 = xor i1 %19, true, !dbg !1883
  %21 = zext i1 %20 to i32, !dbg !1883
  %22 = sext i32 %21 to i64, !dbg !1883
  %23 = icmp ne i64 %22, 0, !dbg !1884
  br i1 %23, label %24, label %36, !dbg !1884

; <label>:24:                                     ; preds = %17
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1885
  call void @AsyncSocketLock(%struct.AsyncSocket* %25), !dbg !1887
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1888
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 14, !dbg !1889
  %28 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %27, align 8, !dbg !1889
  %29 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %28, i32 0, i32 34, !dbg !1890
  %30 = load i32 (%struct.AsyncSocket*, i8, i32)*, i32 (%struct.AsyncSocket*, i8, i32)** %29, align 8, !dbg !1890
  %31 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1891
  %32 = load i8, i8* %5, align 1, !dbg !1892
  %33 = load i32, i32* %6, align 4, !dbg !1893
  %34 = call i32 %30(%struct.AsyncSocket* %31, i8 signext %32, i32 %33), !dbg !1894
  store i32 %34, i32* %7, align 4, !dbg !1895
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !1896
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %35), !dbg !1897
  br label %37, !dbg !1898

; <label>:36:                                     ; preds = %17
  store i32 5, i32* %7, align 4, !dbg !1899
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i32, i32* %7, align 4, !dbg !1901
  ret i32 %38, !dbg !1902
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_WaitForConnection(%struct.AsyncSocket*, i32) #0 !dbg !1903 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !1904, metadata !282), !dbg !1905
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1906, metadata !282), !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1908, metadata !282), !dbg !1909
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1910
  %7 = icmp ne %struct.AsyncSocket* %6, null, !dbg !1910
  br i1 %7, label %8, label %15, !dbg !1912

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1913
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 14, !dbg !1915
  %11 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %10, align 8, !dbg !1915
  %12 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %11, i32 0, i32 35, !dbg !1916
  %13 = load i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i32)** %12, align 8, !dbg !1916
  %14 = icmp ne i32 (%struct.AsyncSocket*, i32)* %13, null, !dbg !1917
  br label %15

; <label>:15:                                     ; preds = %8, %2
  %16 = phi i1 [ false, %2 ], [ %14, %8 ]
  %17 = xor i1 %16, true, !dbg !1918
  %18 = xor i1 %17, true, !dbg !1920
  %19 = zext i1 %18 to i32, !dbg !1920
  %20 = sext i32 %19 to i64, !dbg !1920
  %21 = icmp ne i64 %20, 0, !dbg !1921
  br i1 %21, label %22, label %33, !dbg !1921

; <label>:22:                                     ; preds = %15
  %23 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1922
  call void @AsyncSocketLock(%struct.AsyncSocket* %23), !dbg !1924
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1925
  %25 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %24, i32 0, i32 14, !dbg !1926
  %26 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %25, align 8, !dbg !1926
  %27 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %26, i32 0, i32 35, !dbg !1927
  %28 = load i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i32)** %27, align 8, !dbg !1927
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1928
  %30 = load i32, i32* %4, align 4, !dbg !1929
  %31 = call i32 %28(%struct.AsyncSocket* %29, i32 %30), !dbg !1930
  store i32 %31, i32* %5, align 4, !dbg !1931
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !1932
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %32), !dbg !1933
  br label %34, !dbg !1934

; <label>:33:                                     ; preds = %15
  store i32 5, i32* %5, align 4, !dbg !1935
  br label %34

; <label>:34:                                     ; preds = %33, %22
  %35 = load i32, i32* %5, align 4, !dbg !1937
  ret i32 %35, !dbg !1938
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_WaitForReadMultiple(%struct.AsyncSocket**, i32, i32, i32*) #0 !dbg !1939 {
  %5 = alloca %struct.AsyncSocket**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.AsyncSocket** %0, %struct.AsyncSocket*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket*** %5, metadata !1940, metadata !282), !dbg !1941
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1942, metadata !282), !dbg !1943
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1944, metadata !282), !dbg !1945
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1946, metadata !282), !dbg !1947
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1948, metadata !282), !dbg !1949
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1950, metadata !282), !dbg !1951
  %11 = load i32, i32* %6, align 4, !dbg !1952
  %12 = icmp sgt i32 %11, 0, !dbg !1954
  br i1 %12, label %13, label %76, !dbg !1955

; <label>:13:                                     ; preds = %4
  %14 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !1956
  %15 = getelementptr inbounds %struct.AsyncSocket*, %struct.AsyncSocket** %14, i64 0, !dbg !1956
  %16 = load %struct.AsyncSocket*, %struct.AsyncSocket** %15, align 8, !dbg !1956
  %17 = icmp ne %struct.AsyncSocket* %16, null, !dbg !1956
  br i1 %17, label %18, label %27, !dbg !1958

; <label>:18:                                     ; preds = %13
  %19 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !1959
  %20 = getelementptr inbounds %struct.AsyncSocket*, %struct.AsyncSocket** %19, i64 0, !dbg !1959
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %20, align 8, !dbg !1959
  %22 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %21, i32 0, i32 14, !dbg !1961
  %23 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %22, align 8, !dbg !1961
  %24 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %23, i32 0, i32 36, !dbg !1962
  %25 = load i32 (%struct.AsyncSocket**, i32, i32, i32*)*, i32 (%struct.AsyncSocket**, i32, i32, i32*)** %24, align 8, !dbg !1962
  %26 = icmp ne i32 (%struct.AsyncSocket**, i32, i32, i32*)* %25, null, !dbg !1963
  br label %27

; <label>:27:                                     ; preds = %18, %13
  %28 = phi i1 [ false, %13 ], [ %26, %18 ]
  %29 = xor i1 %28, true, !dbg !1964
  %30 = xor i1 %29, true, !dbg !1966
  %31 = zext i1 %30 to i32, !dbg !1966
  %32 = sext i32 %31 to i64, !dbg !1966
  %33 = icmp ne i64 %32, 0, !dbg !1967
  br i1 %33, label %34, label %76, !dbg !1968

; <label>:34:                                     ; preds = %27
  store i32 0, i32* %9, align 4, !dbg !1969
  br label %35, !dbg !1972

; <label>:35:                                     ; preds = %45, %34
  %36 = load i32, i32* %9, align 4, !dbg !1973
  %37 = load i32, i32* %6, align 4, !dbg !1976
  %38 = icmp slt i32 %36, %37, !dbg !1977
  br i1 %38, label %39, label %48, !dbg !1978

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %9, align 4, !dbg !1979
  %41 = sext i32 %40 to i64, !dbg !1981
  %42 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !1981
  %43 = getelementptr inbounds %struct.AsyncSocket*, %struct.AsyncSocket** %42, i64 %41, !dbg !1981
  %44 = load %struct.AsyncSocket*, %struct.AsyncSocket** %43, align 8, !dbg !1981
  call void @AsyncSocketLock(%struct.AsyncSocket* %44), !dbg !1982
  br label %45, !dbg !1983

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %9, align 4, !dbg !1984
  %47 = add nsw i32 %46, 1, !dbg !1984
  store i32 %47, i32* %9, align 4, !dbg !1984
  br label %35, !dbg !1986, !llvm.loop !1987

; <label>:48:                                     ; preds = %35
  %49 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !1989
  %50 = getelementptr inbounds %struct.AsyncSocket*, %struct.AsyncSocket** %49, i64 0, !dbg !1989
  %51 = load %struct.AsyncSocket*, %struct.AsyncSocket** %50, align 8, !dbg !1989
  %52 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %51, i32 0, i32 14, !dbg !1990
  %53 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %52, align 8, !dbg !1990
  %54 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %53, i32 0, i32 36, !dbg !1991
  %55 = load i32 (%struct.AsyncSocket**, i32, i32, i32*)*, i32 (%struct.AsyncSocket**, i32, i32, i32*)** %54, align 8, !dbg !1991
  %56 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !1992
  %57 = load i32, i32* %6, align 4, !dbg !1993
  %58 = load i32, i32* %7, align 4, !dbg !1994
  %59 = load i32*, i32** %8, align 8, !dbg !1995
  %60 = call i32 %55(%struct.AsyncSocket** %56, i32 %57, i32 %58, i32* %59), !dbg !1996
  store i32 %60, i32* %10, align 4, !dbg !1997
  %61 = load i32, i32* %6, align 4, !dbg !1998
  %62 = sub nsw i32 %61, 1, !dbg !2000
  store i32 %62, i32* %9, align 4, !dbg !2001
  br label %63, !dbg !2002

; <label>:63:                                     ; preds = %72, %48
  %64 = load i32, i32* %9, align 4, !dbg !2003
  %65 = icmp sge i32 %64, 0, !dbg !2006
  br i1 %65, label %66, label %75, !dbg !2007

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %9, align 4, !dbg !2008
  %68 = sext i32 %67 to i64, !dbg !2010
  %69 = load %struct.AsyncSocket**, %struct.AsyncSocket*** %5, align 8, !dbg !2010
  %70 = getelementptr inbounds %struct.AsyncSocket*, %struct.AsyncSocket** %69, i64 %68, !dbg !2010
  %71 = load %struct.AsyncSocket*, %struct.AsyncSocket** %70, align 8, !dbg !2010
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %71), !dbg !2011
  br label %72, !dbg !2012

; <label>:72:                                     ; preds = %66
  %73 = load i32, i32* %9, align 4, !dbg !2013
  %74 = add nsw i32 %73, -1, !dbg !2013
  store i32 %74, i32* %9, align 4, !dbg !2013
  br label %63, !dbg !2015, !llvm.loop !2016

; <label>:75:                                     ; preds = %63
  br label %77, !dbg !2018

; <label>:76:                                     ; preds = %27, %4
  store i32 5, i32* %10, align 4, !dbg !2019
  br label %77

; <label>:77:                                     ; preds = %76, %75
  %78 = load i32, i32* %10, align 4, !dbg !2021
  ret i32 %78, !dbg !2022
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47)
!1 = !DIFile(filename: "asyncSocketInterface.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!2 = !{!3, !11, !15, !44}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AsyncSocketState", file: !4, line: 184, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/asyncsocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "AsyncSocketListening", value: 0)
!7 = !DIEnumerator(name: "AsyncSocketConnecting", value: 1)
!8 = !DIEnumerator(name: "AsyncSocketConnected", value: 2)
!9 = !DIEnumerator(name: "AsyncSocketCBCancelled", value: 3)
!10 = !DIEnumerator(name: "AsyncSocketClosed", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 303, size: 32, align: 32, elements: !12)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "ASYNC_SOCKET_OPTS_LAYER_BASE", value: 1001)
!14 = !DIEnumerator(name: "ASYNC_SOCKET_OPTS_LAYER_BLAST_PROXY", value: 1002)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 40, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!18 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!19 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!20 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!21 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!22 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!23 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!24 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!25 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!26 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!27 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!28 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!29 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!30 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!31 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!32 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!33 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!34 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!35 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!36 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!37 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!38 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!39 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!40 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!41 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!42 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!43 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 326, size: 32, align: 32, elements: !45)
!45 = !{!46}
!46 = !DIEnumerator(name: "ASYNC_SOCKET_OPT_SEND_LOW_LATENCY_MODE", value: 0)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !49, line: 173, baseType: !50)
!49 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 51, baseType: !52)
!51 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!52 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!53 = !{i32 2, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!56 = distinct !DISubprogram(name: "AsyncSocket_SetCloseOptions", scope: !57, file: !57, line: 95, type: !58, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!57 = !DIFile(filename: "asyncSocketInterface.c", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61, !60, !276}
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocket", file: !4, line: 155, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocket", file: !64, line: 47, size: 896, align: 64, elements: !65)
!64 = !DIFile(filename: "asyncSocketBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!65 = !{!66, !67, !68, !89, !91, !94, !95, !101, !102, !103, !104, !105, !110, !111, !112}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !64, line: 48, baseType: !48, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !63, file: !64, line: 49, baseType: !48, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pollParams", scope: !63, file: !64, line: 50, baseType: !69, size: 256, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketPollParams", file: !4, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketPollParams", file: !4, line: 169, size: 256, align: 64, elements: !71)
!71 = !{!72, !73, !78, !86}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !4, line: 170, baseType: !60, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !70, file: !4, line: 171, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !76, line: 39, baseType: !77)
!76 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !76, line: 39, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pollClass", scope: !70, file: !4, line: 172, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClassSet", file: !80, line: 128, baseType: !81)
!80 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/poll.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollClassSet", file: !80, line: 126, size: 64, align: 64, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !81, file: !80, line: 127, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !51, line: 122, baseType: !85)
!85 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "iPoll", scope: !70, file: !4, line: 173, baseType: !87, size: 64, align: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "IVmdbPoll", file: !4, line: 168, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !63, file: !64, line: 51, baseType: !90, size: 32, align: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketState", file: !4, line: 190, baseType: !3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "inited", scope: !63, file: !64, line: 53, baseType: !92, size: 8, align: 8, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !49, line: 230, baseType: !93)
!93 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "errorSeen", scope: !63, file: !64, line: 54, baseType: !92, size: 8, align: 8, offset: 360)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "errorFn", scope: !63, file: !64, line: 55, baseType: !96, size: 64, align: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketErrorFn", file: !4, line: 401, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !60, !61, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "errorClientData", scope: !63, file: !64, line: 56, baseType: !100, size: 64, align: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "recvBuf", scope: !63, file: !64, line: 58, baseType: !100, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "recvPos", scope: !63, file: !64, line: 59, baseType: !60, size: 32, align: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "recvLen", scope: !63, file: !64, line: 60, baseType: !60, size: 32, align: 32, offset: 608)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !63, file: !64, line: 61, baseType: !106, size: 64, align: 64, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketRecvFn", file: !4, line: 389, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !100, !60, !61, !100}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "recvClientData", scope: !63, file: !64, line: 62, baseType: !100, size: 64, align: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "recvFireOnPartial", scope: !63, file: !64, line: 63, baseType: !92, size: 8, align: 8, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !63, file: !64, line: 65, baseType: !113, size: 64, align: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketVTable", file: !116, line: 138, baseType: !117)
!116 = !DIFile(filename: "asyncSocketVTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketVTable", file: !116, line: 52, size: 2432, align: 64, elements: !118)
!118 = !{!119, !123, !135, !140, !144, !145, !152, !158, !162, !164, !170, !178, !182, !187, !191, !195, !199, !200, !205, !206, !221, !222, !228, !229, !234, !235, !236, !240, !241, !248, !252, !256, !260, !261, !262, !266, !267, !272}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "getState", scope: !117, file: !116, line: 53, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!90, !61}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "setOption", scope: !117, file: !116, line: 63, baseType: !124, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!60, !61, !127, !128, !129, !131}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketOpts_Layer", file: !4, line: 319, baseType: !11)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketOpts_ID", file: !4, line: 284, baseType: !60)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !132, line: 33, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !134, line: 189, baseType: !52)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "getOption", scope: !117, file: !116, line: 75, baseType: !136, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!60, !61, !127, !128, !100, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "getGenericErrno", scope: !117, file: !116, line: 81, baseType: !141, size: 64, align: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!60, !61}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "getFd", scope: !117, file: !116, line: 82, baseType: !141, size: 64, align: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "getRemoteIPStr", scope: !117, file: !116, line: 83, baseType: !146, size: 64, align: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!60, !61, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "getINETIPStr", scope: !117, file: !116, line: 84, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!60, !61, !60, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "getPort", scope: !117, file: !116, line: 85, baseType: !159, size: 64, align: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!52, !61}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "setCloseOptions", scope: !117, file: !116, line: 86, baseType: !163, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "connectSSL", scope: !117, file: !116, line: 88, baseType: !165, size: 64, align: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!92, !61, !168, !100}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SSLVerifyParam", file: !4, line: 150, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "startSslConnect", scope: !117, file: !116, line: 90, baseType: !171, size: 64, align: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!60, !61, !168, !100, !174, !100}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSslConnectFn", file: !4, line: 408, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !92, !61, !100}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "acceptSSL", scope: !117, file: !116, line: 94, baseType: !179, size: 64, align: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!92, !61, !100}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "startSslAccept", scope: !117, file: !116, line: 95, baseType: !183, size: 64, align: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!60, !61, !100, !186, !100}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSslAcceptFn", file: !4, line: 406, baseType: !175)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !117, file: !116, line: 98, baseType: !188, size: 64, align: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!60, !61, !60}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !117, file: !116, line: 99, baseType: !192, size: 64, align: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!60, !61, !100, !60, !92, !100, !100}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "recvPassedFd", scope: !117, file: !116, line: 101, baseType: !196, size: 64, align: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!60, !61, !100, !60, !100, !100}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "getReceivedFd", scope: !117, file: !116, line: 103, baseType: !141, size: 64, align: 64, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !117, file: !116, line: 104, baseType: !201, size: 64, align: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!60, !61, !100, !60, !204, !100}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSendFn", file: !4, line: 395, baseType: !107)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "isSendBufferFull", scope: !117, file: !116, line: 106, baseType: !141, size: 64, align: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "getNetworkStats", scope: !117, file: !116, line: 107, baseType: !207, size: 64, align: 64, offset: 1216)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!60, !61, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketNetworkStats", file: !4, line: 200, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketNetworkStats", file: !4, line: 193, size: 256, align: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cwndBytes", scope: !212, file: !4, line: 194, baseType: !48, size: 32, align: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rttSmoothedAvgMillis", scope: !212, file: !4, line: 195, baseType: !48, size: 32, align: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rttSmoothedVarMillis", scope: !212, file: !4, line: 196, baseType: !48, size: 32, align: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "queuedBytes", scope: !212, file: !4, line: 197, baseType: !48, size: 32, align: 32, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "inflightBytes", scope: !212, file: !4, line: 198, baseType: !48, size: 32, align: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "packetLossPercent", scope: !212, file: !4, line: 199, baseType: !220, size: 64, align: 64, offset: 192)
!220 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !117, file: !116, line: 109, baseType: !141, size: 64, align: 64, offset: 1280)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cancelRecv", scope: !117, file: !116, line: 110, baseType: !223, size: 64, align: 64, offset: 1344)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!60, !61, !226, !227, !227, !92}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cancelCbForClose", scope: !117, file: !116, line: 112, baseType: !141, size: 64, align: 64, offset: 1408)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "getLocalVMCIAddress", scope: !117, file: !116, line: 113, baseType: !230, size: 64, align: 64, offset: 1472)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!60, !61, !233, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "getRemoteVMCIAddress", scope: !117, file: !116, line: 114, baseType: !230, size: 64, align: 64, offset: 1536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketError", scope: !117, file: !116, line: 115, baseType: !141, size: 64, align: 64, offset: 1600)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketURI", scope: !117, file: !116, line: 116, baseType: !237, size: 64, align: 64, offset: 1664)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!157, !61}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketCookie", scope: !117, file: !116, line: 117, baseType: !237, size: 64, align: 64, offset: 1728)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketCloseStatus", scope: !117, file: !116, line: 118, baseType: !242, size: 64, align: 64, offset: 1792)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !61}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !49, line: 175, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !51, line: 49, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketProtocol", scope: !117, file: !116, line: 119, baseType: !249, size: 64, align: 64, offset: 1856)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!150, !61}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "setWebSocketCookie", scope: !117, file: !116, line: 120, baseType: !253, size: 64, align: 64, offset: 1920)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!60, !61, !100, !150, !150}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "recvBlocking", scope: !117, file: !116, line: 122, baseType: !257, size: 64, align: 64, offset: 1984)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!60, !61, !100, !60, !226, !60}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "recvPartialBlocking", scope: !117, file: !116, line: 124, baseType: !257, size: 64, align: 64, offset: 2048)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sendBlocking", scope: !117, file: !116, line: 126, baseType: !257, size: 64, align: 64, offset: 2112)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "doOneMsg", scope: !117, file: !116, line: 128, baseType: !263, size: 64, align: 64, offset: 2176)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!60, !61, !92, !60}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "waitForConnection", scope: !117, file: !116, line: 129, baseType: !188, size: 64, align: 64, offset: 2240)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "waitForReadMultiple", scope: !117, file: !116, line: 130, baseType: !268, size: 64, align: 64, offset: 2304)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!60, !271, !60, !60, !226}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !117, file: !116, line: 137, baseType: !273, size: 64, align: 64, offset: 2368)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !61}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketCloseFn", file: !4, line: 410, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !61, !100}
!280 = !{}
!281 = !DILocalVariable(name: "asock", arg: 1, scope: !56, file: !57, line: 95, type: !61)
!282 = !DIExpression()
!283 = !DILocation(line: 95, column: 42, scope: !56)
!284 = !DILocalVariable(name: "flushEnabledMaxWaitMsec", arg: 2, scope: !56, file: !57, line: 96, type: !60)
!285 = !DILocation(line: 96, column: 33, scope: !56)
!286 = !DILocalVariable(name: "closeCb", arg: 3, scope: !56, file: !57, line: 97, type: !276)
!287 = !DILocation(line: 97, column: 48, scope: !56)
!288 = !DILocalVariable(name: "ret", scope: !56, file: !57, line: 99, type: !60)
!289 = !DILocation(line: 99, column: 8, scope: !56)
!290 = !DILocation(line: 100, column: 28, scope: !291)
!291 = distinct !DILexicalBlock(scope: !56, file: !57, line: 100, column: 8)
!292 = !DILocation(line: 100, column: 34, scope: !291)
!293 = !DILocation(line: 100, column: 39, scope: !294)
!294 = !DILexicalBlockFile(scope: !291, file: !57, discriminator: 1)
!295 = !DILocation(line: 100, column: 47, scope: !294)
!296 = !DILocation(line: 100, column: 52, scope: !294)
!297 = !DILocation(line: 100, column: 34, scope: !294)
!298 = !DILocation(line: 100, column: 26, scope: !299)
!299 = !DILexicalBlockFile(scope: !291, file: !57, discriminator: 2)
!300 = !DILocation(line: 100, column: 25, scope: !299)
!301 = !DILocation(line: 100, column: 8, scope: !299)
!302 = !DILocation(line: 101, column: 23, scope: !303)
!303 = distinct !DILexicalBlock(scope: !291, file: !57, line: 100, column: 74)
!304 = !DILocation(line: 101, column: 7, scope: !303)
!305 = !DILocation(line: 102, column: 15, scope: !303)
!306 = !DILocation(line: 102, column: 23, scope: !303)
!307 = !DILocation(line: 102, column: 28, scope: !303)
!308 = !DILocation(line: 102, column: 44, scope: !303)
!309 = !DILocation(line: 102, column: 51, scope: !303)
!310 = !DILocation(line: 102, column: 76, scope: !303)
!311 = !DILocation(line: 102, column: 13, scope: !303)
!312 = !DILocation(line: 102, column: 11, scope: !303)
!313 = !DILocation(line: 103, column: 25, scope: !303)
!314 = !DILocation(line: 103, column: 7, scope: !303)
!315 = !DILocation(line: 104, column: 4, scope: !303)
!316 = !DILocation(line: 105, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !291, file: !57, line: 104, column: 11)
!318 = !DILocation(line: 107, column: 11, scope: !56)
!319 = !DILocation(line: 107, column: 4, scope: !56)
!320 = distinct !DISubprogram(name: "AsyncSocket_GetState", scope: !57, file: !57, line: 130, type: !121, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!321 = !DILocalVariable(name: "asock", arg: 1, scope: !320, file: !57, line: 130, type: !61)
!322 = !DILocation(line: 130, column: 35, scope: !320)
!323 = !DILocalVariable(name: "ret", scope: !320, file: !57, line: 132, type: !90)
!324 = !DILocation(line: 132, column: 21, scope: !320)
!325 = !DILocation(line: 133, column: 28, scope: !326)
!326 = distinct !DILexicalBlock(scope: !320, file: !57, line: 133, column: 8)
!327 = !DILocation(line: 133, column: 34, scope: !326)
!328 = !DILocation(line: 133, column: 39, scope: !329)
!329 = !DILexicalBlockFile(scope: !326, file: !57, discriminator: 1)
!330 = !DILocation(line: 133, column: 47, scope: !329)
!331 = !DILocation(line: 133, column: 52, scope: !329)
!332 = !DILocation(line: 133, column: 34, scope: !329)
!333 = !DILocation(line: 133, column: 26, scope: !334)
!334 = !DILexicalBlockFile(scope: !326, file: !57, discriminator: 2)
!335 = !DILocation(line: 133, column: 25, scope: !334)
!336 = !DILocation(line: 133, column: 8, scope: !334)
!337 = !DILocation(line: 134, column: 23, scope: !338)
!338 = distinct !DILexicalBlock(scope: !326, file: !57, line: 133, column: 67)
!339 = !DILocation(line: 134, column: 7, scope: !338)
!340 = !DILocation(line: 135, column: 15, scope: !338)
!341 = !DILocation(line: 135, column: 23, scope: !338)
!342 = !DILocation(line: 135, column: 28, scope: !338)
!343 = !DILocation(line: 135, column: 37, scope: !338)
!344 = !DILocation(line: 135, column: 13, scope: !338)
!345 = !DILocation(line: 135, column: 11, scope: !338)
!346 = !DILocation(line: 136, column: 25, scope: !338)
!347 = !DILocation(line: 136, column: 7, scope: !338)
!348 = !DILocation(line: 137, column: 4, scope: !338)
!349 = !DILocation(line: 138, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !326, file: !57, line: 137, column: 11)
!351 = !DILocation(line: 140, column: 11, scope: !320)
!352 = !DILocation(line: 140, column: 4, scope: !320)
!353 = distinct !DISubprogram(name: "AsyncSocket_GetGenericErrno", scope: !57, file: !57, line: 166, type: !142, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!354 = !DILocalVariable(name: "asock", arg: 1, scope: !353, file: !57, line: 166, type: !61)
!355 = !DILocation(line: 166, column: 42, scope: !353)
!356 = !DILocalVariable(name: "ret", scope: !353, file: !57, line: 168, type: !60)
!357 = !DILocation(line: 168, column: 8, scope: !353)
!358 = !DILocation(line: 169, column: 28, scope: !359)
!359 = distinct !DILexicalBlock(scope: !353, file: !57, line: 169, column: 8)
!360 = !DILocation(line: 169, column: 34, scope: !359)
!361 = !DILocation(line: 169, column: 39, scope: !362)
!362 = !DILexicalBlockFile(scope: !359, file: !57, discriminator: 1)
!363 = !DILocation(line: 169, column: 47, scope: !362)
!364 = !DILocation(line: 169, column: 52, scope: !362)
!365 = !DILocation(line: 169, column: 34, scope: !362)
!366 = !DILocation(line: 169, column: 26, scope: !367)
!367 = !DILexicalBlockFile(scope: !359, file: !57, discriminator: 2)
!368 = !DILocation(line: 169, column: 25, scope: !367)
!369 = !DILocation(line: 169, column: 8, scope: !367)
!370 = !DILocation(line: 170, column: 23, scope: !371)
!371 = distinct !DILexicalBlock(scope: !359, file: !57, line: 169, column: 74)
!372 = !DILocation(line: 170, column: 7, scope: !371)
!373 = !DILocation(line: 171, column: 15, scope: !371)
!374 = !DILocation(line: 171, column: 23, scope: !371)
!375 = !DILocation(line: 171, column: 28, scope: !371)
!376 = !DILocation(line: 171, column: 44, scope: !371)
!377 = !DILocation(line: 171, column: 13, scope: !371)
!378 = !DILocation(line: 171, column: 11, scope: !371)
!379 = !DILocation(line: 172, column: 25, scope: !371)
!380 = !DILocation(line: 172, column: 7, scope: !371)
!381 = !DILocation(line: 173, column: 4, scope: !371)
!382 = !DILocation(line: 174, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !359, file: !57, line: 173, column: 11)
!384 = !DILocation(line: 176, column: 11, scope: !353)
!385 = !DILocation(line: 176, column: 4, scope: !353)
!386 = distinct !DISubprogram(name: "AsyncSocket_GetFd", scope: !57, file: !57, line: 197, type: !142, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!387 = !DILocalVariable(name: "asock", arg: 1, scope: !386, file: !57, line: 197, type: !61)
!388 = !DILocation(line: 197, column: 32, scope: !386)
!389 = !DILocalVariable(name: "ret", scope: !386, file: !57, line: 199, type: !60)
!390 = !DILocation(line: 199, column: 8, scope: !386)
!391 = !DILocation(line: 200, column: 28, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !57, line: 200, column: 8)
!393 = !DILocation(line: 200, column: 34, scope: !392)
!394 = !DILocation(line: 200, column: 39, scope: !395)
!395 = !DILexicalBlockFile(scope: !392, file: !57, discriminator: 1)
!396 = !DILocation(line: 200, column: 47, scope: !395)
!397 = !DILocation(line: 200, column: 52, scope: !395)
!398 = !DILocation(line: 200, column: 34, scope: !395)
!399 = !DILocation(line: 200, column: 26, scope: !400)
!400 = !DILexicalBlockFile(scope: !392, file: !57, discriminator: 2)
!401 = !DILocation(line: 200, column: 25, scope: !400)
!402 = !DILocation(line: 200, column: 8, scope: !400)
!403 = !DILocation(line: 201, column: 23, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !57, line: 200, column: 64)
!405 = !DILocation(line: 201, column: 7, scope: !404)
!406 = !DILocation(line: 202, column: 15, scope: !404)
!407 = !DILocation(line: 202, column: 23, scope: !404)
!408 = !DILocation(line: 202, column: 28, scope: !404)
!409 = !DILocation(line: 202, column: 34, scope: !404)
!410 = !DILocation(line: 202, column: 13, scope: !404)
!411 = !DILocation(line: 202, column: 11, scope: !404)
!412 = !DILocation(line: 203, column: 25, scope: !404)
!413 = !DILocation(line: 203, column: 7, scope: !404)
!414 = !DILocation(line: 204, column: 4, scope: !404)
!415 = !DILocation(line: 205, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !392, file: !57, line: 204, column: 11)
!417 = !DILocation(line: 207, column: 11, scope: !386)
!418 = !DILocation(line: 207, column: 4, scope: !386)
!419 = distinct !DISubprogram(name: "AsyncSocket_GetRemoteIPStr", scope: !57, file: !57, line: 230, type: !147, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!420 = !DILocalVariable(name: "asock", arg: 1, scope: !419, file: !57, line: 230, type: !61)
!421 = !DILocation(line: 230, column: 41, scope: !419)
!422 = !DILocalVariable(name: "ipRetStr", arg: 2, scope: !419, file: !57, line: 231, type: !149)
!423 = !DILocation(line: 231, column: 41, scope: !419)
!424 = !DILocalVariable(name: "ret", scope: !419, file: !57, line: 233, type: !60)
!425 = !DILocation(line: 233, column: 8, scope: !419)
!426 = !DILocation(line: 234, column: 28, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !57, line: 234, column: 8)
!428 = !DILocation(line: 234, column: 34, scope: !427)
!429 = !DILocation(line: 234, column: 39, scope: !430)
!430 = !DILexicalBlockFile(scope: !427, file: !57, discriminator: 1)
!431 = !DILocation(line: 234, column: 47, scope: !430)
!432 = !DILocation(line: 234, column: 52, scope: !430)
!433 = !DILocation(line: 234, column: 34, scope: !430)
!434 = !DILocation(line: 234, column: 26, scope: !435)
!435 = !DILexicalBlockFile(scope: !427, file: !57, discriminator: 2)
!436 = !DILocation(line: 234, column: 25, scope: !435)
!437 = !DILocation(line: 234, column: 8, scope: !435)
!438 = !DILocation(line: 235, column: 23, scope: !439)
!439 = distinct !DILexicalBlock(scope: !427, file: !57, line: 234, column: 73)
!440 = !DILocation(line: 235, column: 7, scope: !439)
!441 = !DILocation(line: 236, column: 15, scope: !439)
!442 = !DILocation(line: 236, column: 23, scope: !439)
!443 = !DILocation(line: 236, column: 28, scope: !439)
!444 = !DILocation(line: 236, column: 43, scope: !439)
!445 = !DILocation(line: 236, column: 50, scope: !439)
!446 = !DILocation(line: 236, column: 13, scope: !439)
!447 = !DILocation(line: 236, column: 11, scope: !439)
!448 = !DILocation(line: 237, column: 25, scope: !439)
!449 = !DILocation(line: 237, column: 7, scope: !439)
!450 = !DILocation(line: 238, column: 4, scope: !439)
!451 = !DILocation(line: 239, column: 11, scope: !452)
!452 = distinct !DILexicalBlock(scope: !427, file: !57, line: 238, column: 11)
!453 = !DILocation(line: 241, column: 11, scope: !419)
!454 = !DILocation(line: 241, column: 4, scope: !419)
!455 = distinct !DISubprogram(name: "AsyncSocket_GetINETIPStr", scope: !57, file: !57, line: 270, type: !154, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!456 = !DILocalVariable(name: "asock", arg: 1, scope: !455, file: !57, line: 270, type: !61)
!457 = !DILocation(line: 270, column: 39, scope: !455)
!458 = !DILocalVariable(name: "socketFamily", arg: 2, scope: !455, file: !57, line: 271, type: !60)
!459 = !DILocation(line: 271, column: 30, scope: !455)
!460 = !DILocalVariable(name: "ipRetStr", arg: 3, scope: !455, file: !57, line: 272, type: !156)
!461 = !DILocation(line: 272, column: 33, scope: !455)
!462 = !DILocalVariable(name: "ret", scope: !455, file: !57, line: 274, type: !60)
!463 = !DILocation(line: 274, column: 8, scope: !455)
!464 = !DILocation(line: 275, column: 28, scope: !465)
!465 = distinct !DILexicalBlock(scope: !455, file: !57, line: 275, column: 8)
!466 = !DILocation(line: 275, column: 34, scope: !465)
!467 = !DILocation(line: 275, column: 39, scope: !468)
!468 = !DILexicalBlockFile(scope: !465, file: !57, discriminator: 1)
!469 = !DILocation(line: 275, column: 47, scope: !468)
!470 = !DILocation(line: 275, column: 52, scope: !468)
!471 = !DILocation(line: 275, column: 34, scope: !468)
!472 = !DILocation(line: 275, column: 26, scope: !473)
!473 = !DILexicalBlockFile(scope: !465, file: !57, discriminator: 2)
!474 = !DILocation(line: 275, column: 25, scope: !473)
!475 = !DILocation(line: 275, column: 8, scope: !473)
!476 = !DILocation(line: 276, column: 23, scope: !477)
!477 = distinct !DILexicalBlock(scope: !465, file: !57, line: 275, column: 71)
!478 = !DILocation(line: 276, column: 7, scope: !477)
!479 = !DILocation(line: 277, column: 15, scope: !477)
!480 = !DILocation(line: 277, column: 23, scope: !477)
!481 = !DILocation(line: 277, column: 28, scope: !477)
!482 = !DILocation(line: 277, column: 41, scope: !477)
!483 = !DILocation(line: 277, column: 48, scope: !477)
!484 = !DILocation(line: 277, column: 62, scope: !477)
!485 = !DILocation(line: 277, column: 13, scope: !477)
!486 = !DILocation(line: 277, column: 11, scope: !477)
!487 = !DILocation(line: 278, column: 25, scope: !477)
!488 = !DILocation(line: 278, column: 7, scope: !477)
!489 = !DILocation(line: 279, column: 4, scope: !477)
!490 = !DILocation(line: 280, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !465, file: !57, line: 279, column: 11)
!492 = !DILocation(line: 282, column: 11, scope: !455)
!493 = !DILocation(line: 282, column: 4, scope: !455)
!494 = distinct !DISubprogram(name: "AsyncSocket_GetPort", scope: !57, file: !57, line: 304, type: !160, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!495 = !DILocalVariable(name: "asock", arg: 1, scope: !494, file: !57, line: 304, type: !61)
!496 = !DILocation(line: 304, column: 34, scope: !494)
!497 = !DILocalVariable(name: "ret", scope: !494, file: !57, line: 306, type: !60)
!498 = !DILocation(line: 306, column: 8, scope: !494)
!499 = !DILocation(line: 307, column: 28, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !57, line: 307, column: 8)
!501 = !DILocation(line: 307, column: 34, scope: !500)
!502 = !DILocation(line: 307, column: 39, scope: !503)
!503 = !DILexicalBlockFile(scope: !500, file: !57, discriminator: 1)
!504 = !DILocation(line: 307, column: 47, scope: !503)
!505 = !DILocation(line: 307, column: 52, scope: !503)
!506 = !DILocation(line: 307, column: 34, scope: !503)
!507 = !DILocation(line: 307, column: 26, scope: !508)
!508 = !DILexicalBlockFile(scope: !500, file: !57, discriminator: 2)
!509 = !DILocation(line: 307, column: 25, scope: !508)
!510 = !DILocation(line: 307, column: 8, scope: !508)
!511 = !DILocation(line: 308, column: 23, scope: !512)
!512 = distinct !DILexicalBlock(scope: !500, file: !57, line: 307, column: 66)
!513 = !DILocation(line: 308, column: 7, scope: !512)
!514 = !DILocation(line: 309, column: 15, scope: !512)
!515 = !DILocation(line: 309, column: 23, scope: !512)
!516 = !DILocation(line: 309, column: 28, scope: !512)
!517 = !DILocation(line: 309, column: 36, scope: !512)
!518 = !DILocation(line: 309, column: 13, scope: !512)
!519 = !DILocation(line: 309, column: 11, scope: !512)
!520 = !DILocation(line: 310, column: 25, scope: !512)
!521 = !DILocation(line: 310, column: 7, scope: !512)
!522 = !DILocation(line: 311, column: 4, scope: !512)
!523 = !DILocation(line: 312, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !500, file: !57, line: 311, column: 11)
!525 = !DILocation(line: 314, column: 11, scope: !494)
!526 = !DILocation(line: 314, column: 4, scope: !494)
!527 = distinct !DISubprogram(name: "AsyncSocket_UseNodelay", scope: !57, file: !57, line: 347, type: !528, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!528 = !DISubroutineType(types: !529)
!529 = !{!60, !61, !92}
!530 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !527, file: !57, line: 347, type: !61)
!531 = !DILocation(line: 347, column: 37, scope: !527)
!532 = !DILocalVariable(name: "noDelay", arg: 2, scope: !527, file: !57, line: 348, type: !92)
!533 = !DILocation(line: 348, column: 29, scope: !527)
!534 = !DILocalVariable(name: "noDelayNative", scope: !527, file: !57, line: 350, type: !535)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!536 = !DILocation(line: 350, column: 14, scope: !527)
!537 = !DILocation(line: 350, column: 30, scope: !527)
!538 = !DILocation(line: 351, column: 33, scope: !527)
!539 = !DILocation(line: 353, column: 33, scope: !527)
!540 = !DILocation(line: 351, column: 11, scope: !527)
!541 = !DILocation(line: 351, column: 4, scope: !527)
!542 = distinct !DISubprogram(name: "AsyncSocket_SetOption", scope: !57, file: !57, line: 620, type: !125, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!543 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !542, file: !57, line: 620, type: !61)
!544 = !DILocation(line: 620, column: 36, scope: !542)
!545 = !DILocalVariable(name: "layer", arg: 2, scope: !542, file: !57, line: 621, type: !127)
!546 = !DILocation(line: 621, column: 45, scope: !542)
!547 = !DILocalVariable(name: "optID", arg: 3, scope: !542, file: !57, line: 622, type: !128)
!548 = !DILocation(line: 622, column: 42, scope: !542)
!549 = !DILocalVariable(name: "valuePtr", arg: 4, scope: !542, file: !57, line: 623, type: !129)
!550 = !DILocation(line: 623, column: 35, scope: !542)
!551 = !DILocalVariable(name: "inBufLen", arg: 5, scope: !542, file: !57, line: 624, type: !131)
!552 = !DILocation(line: 624, column: 33, scope: !542)
!553 = !DILocalVariable(name: "ret", scope: !542, file: !57, line: 626, type: !60)
!554 = !DILocation(line: 626, column: 8, scope: !542)
!555 = !DILocation(line: 632, column: 28, scope: !556)
!556 = distinct !DILexicalBlock(scope: !542, file: !57, line: 632, column: 8)
!557 = !DILocation(line: 632, column: 40, scope: !556)
!558 = !DILocation(line: 632, column: 45, scope: !559)
!559 = !DILexicalBlockFile(scope: !556, file: !57, discriminator: 1)
!560 = !DILocation(line: 632, column: 59, scope: !559)
!561 = !DILocation(line: 632, column: 64, scope: !559)
!562 = !DILocation(line: 632, column: 40, scope: !559)
!563 = !DILocation(line: 632, column: 26, scope: !564)
!564 = !DILexicalBlockFile(scope: !556, file: !57, discriminator: 2)
!565 = !DILocation(line: 632, column: 25, scope: !564)
!566 = !DILocation(line: 632, column: 8, scope: !564)
!567 = !DILocation(line: 633, column: 23, scope: !568)
!568 = distinct !DILexicalBlock(scope: !556, file: !57, line: 632, column: 80)
!569 = !DILocation(line: 633, column: 7, scope: !568)
!570 = !DILocation(line: 634, column: 15, scope: !568)
!571 = !DILocation(line: 634, column: 29, scope: !568)
!572 = !DILocation(line: 634, column: 34, scope: !568)
!573 = !DILocation(line: 634, column: 44, scope: !568)
!574 = !DILocation(line: 634, column: 57, scope: !568)
!575 = !DILocation(line: 634, column: 64, scope: !568)
!576 = !DILocation(line: 635, column: 40, scope: !568)
!577 = !DILocation(line: 635, column: 50, scope: !568)
!578 = !DILocation(line: 634, column: 13, scope: !568)
!579 = !DILocation(line: 634, column: 11, scope: !568)
!580 = !DILocation(line: 636, column: 25, scope: !568)
!581 = !DILocation(line: 636, column: 7, scope: !568)
!582 = !DILocation(line: 637, column: 4, scope: !568)
!583 = !DILocation(line: 638, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !556, file: !57, line: 637, column: 11)
!585 = !DILocation(line: 640, column: 11, scope: !542)
!586 = !DILocation(line: 640, column: 4, scope: !542)
!587 = distinct !DISubprogram(name: "AsyncSocket_SetTCPTimeouts", scope: !57, file: !57, line: 384, type: !588, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!588 = !DISubroutineType(types: !589)
!589 = !{!60, !61, !60, !60, !60}
!590 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !587, file: !57, line: 384, type: !61)
!591 = !DILocation(line: 384, column: 41, scope: !587)
!592 = !DILocalVariable(name: "keepIdleSec", arg: 2, scope: !587, file: !57, line: 385, type: !60)
!593 = !DILocation(line: 385, column: 32, scope: !587)
!594 = !DILocalVariable(name: "keepIntvlSec", arg: 3, scope: !587, file: !57, line: 386, type: !60)
!595 = !DILocation(line: 386, column: 32, scope: !587)
!596 = !DILocalVariable(name: "keepCnt", arg: 4, scope: !587, file: !57, line: 387, type: !60)
!597 = !DILocation(line: 387, column: 32, scope: !587)
!598 = !DILocalVariable(name: "ret", scope: !587, file: !57, line: 406, type: !60)
!599 = !DILocation(line: 406, column: 8, scope: !587)
!600 = !DILocation(line: 407, column: 28, scope: !601)
!601 = distinct !DILexicalBlock(scope: !587, file: !57, line: 407, column: 8)
!602 = !DILocation(line: 407, column: 40, scope: !601)
!603 = !DILocation(line: 407, column: 45, scope: !604)
!604 = !DILexicalBlockFile(scope: !601, file: !57, discriminator: 1)
!605 = !DILocation(line: 407, column: 59, scope: !604)
!606 = !DILocation(line: 407, column: 64, scope: !604)
!607 = !DILocation(line: 407, column: 40, scope: !604)
!608 = !DILocation(line: 407, column: 26, scope: !609)
!609 = !DILexicalBlockFile(scope: !601, file: !57, discriminator: 2)
!610 = !DILocation(line: 407, column: 25, scope: !609)
!611 = !DILocation(line: 407, column: 8, scope: !609)
!612 = !DILocation(line: 408, column: 23, scope: !613)
!613 = distinct !DILexicalBlock(scope: !601, file: !57, line: 407, column: 80)
!614 = !DILocation(line: 408, column: 7, scope: !613)
!615 = !DILocation(line: 410, column: 15, scope: !613)
!616 = !DILocation(line: 410, column: 29, scope: !613)
!617 = !DILocation(line: 410, column: 34, scope: !613)
!618 = !DILocation(line: 411, column: 17, scope: !613)
!619 = !DILocation(line: 413, column: 17, scope: !613)
!620 = !DILocation(line: 410, column: 13, scope: !613)
!621 = !DILocation(line: 410, column: 11, scope: !613)
!622 = !DILocation(line: 414, column: 11, scope: !623)
!623 = distinct !DILexicalBlock(scope: !613, file: !57, line: 414, column: 11)
!624 = !DILocation(line: 414, column: 15, scope: !623)
!625 = !DILocation(line: 414, column: 11, scope: !613)
!626 = !DILocation(line: 415, column: 18, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !57, line: 414, column: 21)
!628 = !DILocation(line: 415, column: 32, scope: !627)
!629 = !DILocation(line: 415, column: 37, scope: !627)
!630 = !DILocation(line: 416, column: 20, scope: !627)
!631 = !DILocation(line: 418, column: 20, scope: !627)
!632 = !DILocation(line: 415, column: 16, scope: !627)
!633 = !DILocation(line: 415, column: 14, scope: !627)
!634 = !DILocation(line: 419, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !57, line: 419, column: 14)
!636 = !DILocation(line: 419, column: 18, scope: !635)
!637 = !DILocation(line: 419, column: 14, scope: !627)
!638 = !DILocation(line: 420, column: 21, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !57, line: 419, column: 24)
!640 = !DILocation(line: 420, column: 35, scope: !639)
!641 = !DILocation(line: 420, column: 40, scope: !639)
!642 = !DILocation(line: 421, column: 23, scope: !639)
!643 = !DILocation(line: 423, column: 23, scope: !639)
!644 = !DILocation(line: 420, column: 19, scope: !639)
!645 = !DILocation(line: 420, column: 17, scope: !639)
!646 = !DILocation(line: 424, column: 10, scope: !639)
!647 = !DILocation(line: 425, column: 7, scope: !627)
!648 = !DILocation(line: 427, column: 25, scope: !613)
!649 = !DILocation(line: 427, column: 7, scope: !613)
!650 = !DILocation(line: 428, column: 4, scope: !613)
!651 = !DILocation(line: 429, column: 11, scope: !652)
!652 = distinct !DILexicalBlock(scope: !601, file: !57, line: 428, column: 11)
!653 = !DILocation(line: 431, column: 11, scope: !587)
!654 = !DILocation(line: 431, column: 4, scope: !587)
!655 = distinct !DISubprogram(name: "AsyncSocket_EstablishMinBufferSizes", scope: !57, file: !57, line: 472, type: !656, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!656 = !DISubroutineType(types: !657)
!657 = !{!92, !61, !60, !60}
!658 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !655, file: !57, line: 472, type: !61)
!659 = !DILocation(line: 472, column: 50, scope: !655)
!660 = !DILocalVariable(name: "sendSz", arg: 2, scope: !655, file: !57, line: 473, type: !60)
!661 = !DILocation(line: 473, column: 41, scope: !655)
!662 = !DILocalVariable(name: "recvSz", arg: 3, scope: !655, file: !57, line: 474, type: !60)
!663 = !DILocation(line: 474, column: 41, scope: !655)
!664 = !DILocalVariable(name: "ok", scope: !655, file: !57, line: 476, type: !92)
!665 = !DILocation(line: 476, column: 9, scope: !655)
!666 = !DILocation(line: 478, column: 28, scope: !667)
!667 = distinct !DILexicalBlock(scope: !655, file: !57, line: 478, column: 8)
!668 = !DILocation(line: 478, column: 40, scope: !667)
!669 = !DILocation(line: 478, column: 45, scope: !670)
!670 = !DILexicalBlockFile(scope: !667, file: !57, discriminator: 1)
!671 = !DILocation(line: 478, column: 59, scope: !670)
!672 = !DILocation(line: 478, column: 64, scope: !670)
!673 = !DILocation(line: 478, column: 40, scope: !670)
!674 = !DILocation(line: 478, column: 26, scope: !675)
!675 = !DILexicalBlockFile(scope: !667, file: !57, discriminator: 2)
!676 = !DILocation(line: 478, column: 25, scope: !675)
!677 = !DILocation(line: 478, column: 8, scope: !675)
!678 = !DILocalVariable(name: "curSendSz", scope: !679, file: !57, line: 479, type: !60)
!679 = distinct !DILexicalBlock(scope: !667, file: !57, line: 478, column: 80)
!680 = !DILocation(line: 479, column: 11, scope: !679)
!681 = !DILocalVariable(name: "curSendSzSz", scope: !679, file: !57, line: 480, type: !131)
!682 = !DILocation(line: 480, column: 17, scope: !679)
!683 = !DILocalVariable(name: "curRecvSz", scope: !679, file: !57, line: 481, type: !60)
!684 = !DILocation(line: 481, column: 11, scope: !679)
!685 = !DILocalVariable(name: "curRecvSzSz", scope: !679, file: !57, line: 482, type: !131)
!686 = !DILocation(line: 482, column: 17, scope: !679)
!687 = !DILocation(line: 484, column: 23, scope: !679)
!688 = !DILocation(line: 484, column: 7, scope: !679)
!689 = !DILocation(line: 502, column: 15, scope: !679)
!690 = !DILocation(line: 502, column: 29, scope: !679)
!691 = !DILocation(line: 502, column: 34, scope: !679)
!692 = !DILocation(line: 502, column: 44, scope: !679)
!693 = !DILocation(line: 504, column: 40, scope: !679)
!694 = !DILocation(line: 502, column: 13, scope: !679)
!695 = !DILocation(line: 504, column: 66, scope: !679)
!696 = !DILocation(line: 505, column: 16, scope: !679)
!697 = !DILocation(line: 506, column: 15, scope: !679)
!698 = !DILocation(line: 506, column: 29, scope: !679)
!699 = !DILocation(line: 506, column: 34, scope: !679)
!700 = !DILocation(line: 506, column: 44, scope: !679)
!701 = !DILocation(line: 508, column: 40, scope: !679)
!702 = !DILocation(line: 506, column: 13, scope: !679)
!703 = !DILocation(line: 508, column: 66, scope: !679)
!704 = !DILocation(line: 505, column: 16, scope: !705)
!705 = !DILexicalBlockFile(scope: !679, file: !57, discriminator: 1)
!706 = !DILocation(line: 502, column: 12, scope: !705)
!707 = !DILocation(line: 502, column: 10, scope: !705)
!708 = !DILocation(line: 510, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !679, file: !57, line: 510, column: 11)
!710 = !DILocation(line: 510, column: 14, scope: !709)
!711 = !DILocation(line: 510, column: 18, scope: !712)
!712 = !DILexicalBlockFile(scope: !709, file: !57, discriminator: 1)
!713 = !DILocation(line: 510, column: 30, scope: !712)
!714 = !DILocation(line: 510, column: 28, scope: !712)
!715 = !DILocation(line: 510, column: 11, scope: !712)
!716 = !DILocation(line: 511, column: 17, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !57, line: 510, column: 39)
!718 = !DILocation(line: 511, column: 31, scope: !717)
!719 = !DILocation(line: 511, column: 36, scope: !717)
!720 = !DILocation(line: 511, column: 46, scope: !717)
!721 = !DILocation(line: 513, column: 42, scope: !717)
!722 = !DILocation(line: 511, column: 15, scope: !717)
!723 = !DILocation(line: 513, column: 66, scope: !717)
!724 = !DILocation(line: 511, column: 13, scope: !717)
!725 = !DILocation(line: 515, column: 7, scope: !717)
!726 = !DILocation(line: 516, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !679, file: !57, line: 516, column: 11)
!728 = !DILocation(line: 516, column: 14, scope: !727)
!729 = !DILocation(line: 516, column: 18, scope: !730)
!730 = !DILexicalBlockFile(scope: !727, file: !57, discriminator: 1)
!731 = !DILocation(line: 516, column: 30, scope: !730)
!732 = !DILocation(line: 516, column: 28, scope: !730)
!733 = !DILocation(line: 516, column: 11, scope: !730)
!734 = !DILocation(line: 517, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !727, file: !57, line: 516, column: 39)
!736 = !DILocation(line: 517, column: 31, scope: !735)
!737 = !DILocation(line: 517, column: 36, scope: !735)
!738 = !DILocation(line: 517, column: 46, scope: !735)
!739 = !DILocation(line: 519, column: 42, scope: !735)
!740 = !DILocation(line: 517, column: 15, scope: !735)
!741 = !DILocation(line: 519, column: 66, scope: !735)
!742 = !DILocation(line: 517, column: 13, scope: !735)
!743 = !DILocation(line: 521, column: 7, scope: !735)
!744 = !DILocation(line: 523, column: 25, scope: !679)
!745 = !DILocation(line: 523, column: 7, scope: !679)
!746 = !DILocation(line: 524, column: 4, scope: !679)
!747 = !DILocation(line: 525, column: 10, scope: !748)
!748 = distinct !DILexicalBlock(scope: !667, file: !57, line: 524, column: 11)
!749 = !DILocation(line: 528, column: 11, scope: !655)
!750 = !DILocation(line: 528, column: 4, scope: !655)
!751 = distinct !DISubprogram(name: "AsyncSocket_SetSendLowLatencyMode", scope: !57, file: !57, line: 563, type: !528, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!752 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !751, file: !57, line: 563, type: !61)
!753 = !DILocation(line: 563, column: 48, scope: !751)
!754 = !DILocalVariable(name: "enable", arg: 2, scope: !751, file: !57, line: 564, type: !92)
!755 = !DILocation(line: 564, column: 40, scope: !751)
!756 = !DILocalVariable(name: "ret", scope: !751, file: !57, line: 566, type: !60)
!757 = !DILocation(line: 566, column: 8, scope: !751)
!758 = !DILocation(line: 567, column: 28, scope: !759)
!759 = distinct !DILexicalBlock(scope: !751, file: !57, line: 567, column: 8)
!760 = !DILocation(line: 567, column: 40, scope: !759)
!761 = !DILocation(line: 567, column: 45, scope: !762)
!762 = !DILexicalBlockFile(scope: !759, file: !57, discriminator: 1)
!763 = !DILocation(line: 567, column: 59, scope: !762)
!764 = !DILocation(line: 567, column: 64, scope: !762)
!765 = !DILocation(line: 567, column: 40, scope: !762)
!766 = !DILocation(line: 567, column: 26, scope: !767)
!767 = !DILexicalBlockFile(scope: !759, file: !57, discriminator: 2)
!768 = !DILocation(line: 567, column: 25, scope: !767)
!769 = !DILocation(line: 567, column: 8, scope: !767)
!770 = !DILocation(line: 568, column: 23, scope: !771)
!771 = distinct !DILexicalBlock(scope: !759, file: !57, line: 567, column: 80)
!772 = !DILocation(line: 568, column: 7, scope: !771)
!773 = !DILocation(line: 569, column: 15, scope: !771)
!774 = !DILocation(line: 569, column: 29, scope: !771)
!775 = !DILocation(line: 569, column: 34, scope: !771)
!776 = !DILocation(line: 570, column: 17, scope: !771)
!777 = !DILocation(line: 569, column: 13, scope: !771)
!778 = !DILocation(line: 569, column: 11, scope: !771)
!779 = !DILocation(line: 573, column: 25, scope: !771)
!780 = !DILocation(line: 573, column: 7, scope: !771)
!781 = !DILocation(line: 574, column: 4, scope: !771)
!782 = !DILocation(line: 575, column: 11, scope: !783)
!783 = distinct !DILexicalBlock(scope: !759, file: !57, line: 574, column: 11)
!784 = !DILocation(line: 577, column: 11, scope: !751)
!785 = !DILocation(line: 577, column: 4, scope: !751)
!786 = distinct !DISubprogram(name: "AsyncSocket_GetOption", scope: !57, file: !57, line: 676, type: !137, isLocal: false, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!787 = !DILocalVariable(name: "asyncSocket", arg: 1, scope: !786, file: !57, line: 676, type: !61)
!788 = !DILocation(line: 676, column: 36, scope: !786)
!789 = !DILocalVariable(name: "layer", arg: 2, scope: !786, file: !57, line: 677, type: !127)
!790 = !DILocation(line: 677, column: 45, scope: !786)
!791 = !DILocalVariable(name: "optID", arg: 3, scope: !786, file: !57, line: 678, type: !128)
!792 = !DILocation(line: 678, column: 42, scope: !786)
!793 = !DILocalVariable(name: "valuePtr", arg: 4, scope: !786, file: !57, line: 679, type: !100)
!794 = !DILocation(line: 679, column: 29, scope: !786)
!795 = !DILocalVariable(name: "outBufLen", arg: 5, scope: !786, file: !57, line: 680, type: !139)
!796 = !DILocation(line: 680, column: 34, scope: !786)
!797 = !DILocalVariable(name: "ret", scope: !786, file: !57, line: 682, type: !60)
!798 = !DILocation(line: 682, column: 8, scope: !786)
!799 = !DILocation(line: 688, column: 28, scope: !800)
!800 = distinct !DILexicalBlock(scope: !786, file: !57, line: 688, column: 8)
!801 = !DILocation(line: 688, column: 40, scope: !800)
!802 = !DILocation(line: 688, column: 45, scope: !803)
!803 = !DILexicalBlockFile(scope: !800, file: !57, discriminator: 1)
!804 = !DILocation(line: 688, column: 59, scope: !803)
!805 = !DILocation(line: 688, column: 64, scope: !803)
!806 = !DILocation(line: 688, column: 40, scope: !803)
!807 = !DILocation(line: 688, column: 26, scope: !808)
!808 = !DILexicalBlockFile(scope: !800, file: !57, discriminator: 2)
!809 = !DILocation(line: 688, column: 25, scope: !808)
!810 = !DILocation(line: 688, column: 8, scope: !808)
!811 = !DILocation(line: 689, column: 23, scope: !812)
!812 = distinct !DILexicalBlock(scope: !800, file: !57, line: 688, column: 80)
!813 = !DILocation(line: 689, column: 7, scope: !812)
!814 = !DILocation(line: 690, column: 15, scope: !812)
!815 = !DILocation(line: 690, column: 29, scope: !812)
!816 = !DILocation(line: 690, column: 34, scope: !812)
!817 = !DILocation(line: 690, column: 44, scope: !812)
!818 = !DILocation(line: 690, column: 57, scope: !812)
!819 = !DILocation(line: 690, column: 64, scope: !812)
!820 = !DILocation(line: 691, column: 40, scope: !812)
!821 = !DILocation(line: 691, column: 50, scope: !812)
!822 = !DILocation(line: 690, column: 13, scope: !812)
!823 = !DILocation(line: 690, column: 11, scope: !812)
!824 = !DILocation(line: 692, column: 25, scope: !812)
!825 = !DILocation(line: 692, column: 7, scope: !812)
!826 = !DILocation(line: 693, column: 4, scope: !812)
!827 = !DILocation(line: 694, column: 11, scope: !828)
!828 = distinct !DILexicalBlock(scope: !800, file: !57, line: 693, column: 11)
!829 = !DILocation(line: 696, column: 11, scope: !786)
!830 = !DILocation(line: 696, column: 4, scope: !786)
!831 = distinct !DISubprogram(name: "AsyncSocket_StartSslConnect", scope: !57, file: !57, line: 726, type: !832, isLocal: false, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!832 = !DISubroutineType(types: !833)
!833 = !{!60, !61, !834, !100, !174, !100}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSLVerifyParam", file: !836, line: 32, baseType: !169)
!836 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/sslDirect.h", directory: "/home/lichi/Desktop/open-vm-tools/line64")
!837 = !DILocalVariable(name: "asock", arg: 1, scope: !831, file: !57, line: 726, type: !61)
!838 = !DILocation(line: 726, column: 42, scope: !831)
!839 = !DILocalVariable(name: "verifyParam", arg: 2, scope: !831, file: !57, line: 727, type: !834)
!840 = !DILocation(line: 727, column: 45, scope: !831)
!841 = !DILocalVariable(name: "sslCtx", arg: 3, scope: !831, file: !57, line: 728, type: !100)
!842 = !DILocation(line: 728, column: 35, scope: !831)
!843 = !DILocalVariable(name: "sslConnectFn", arg: 4, scope: !831, file: !57, line: 729, type: !174)
!844 = !DILocation(line: 729, column: 53, scope: !831)
!845 = !DILocalVariable(name: "clientData", arg: 5, scope: !831, file: !57, line: 730, type: !100)
!846 = !DILocation(line: 730, column: 35, scope: !831)
!847 = !DILocalVariable(name: "ret", scope: !831, file: !57, line: 732, type: !60)
!848 = !DILocation(line: 732, column: 8, scope: !831)
!849 = !DILocation(line: 733, column: 28, scope: !850)
!850 = distinct !DILexicalBlock(scope: !831, file: !57, line: 733, column: 8)
!851 = !DILocation(line: 733, column: 34, scope: !850)
!852 = !DILocation(line: 733, column: 39, scope: !853)
!853 = !DILexicalBlockFile(scope: !850, file: !57, discriminator: 1)
!854 = !DILocation(line: 733, column: 47, scope: !853)
!855 = !DILocation(line: 733, column: 52, scope: !853)
!856 = !DILocation(line: 733, column: 34, scope: !853)
!857 = !DILocation(line: 733, column: 26, scope: !858)
!858 = !DILexicalBlockFile(scope: !850, file: !57, discriminator: 2)
!859 = !DILocation(line: 733, column: 25, scope: !858)
!860 = !DILocation(line: 733, column: 8, scope: !858)
!861 = !DILocation(line: 734, column: 23, scope: !862)
!862 = distinct !DILexicalBlock(scope: !850, file: !57, line: 733, column: 74)
!863 = !DILocation(line: 734, column: 7, scope: !862)
!864 = !DILocation(line: 735, column: 15, scope: !862)
!865 = !DILocation(line: 735, column: 23, scope: !862)
!866 = !DILocation(line: 735, column: 28, scope: !862)
!867 = !DILocation(line: 735, column: 44, scope: !862)
!868 = !DILocation(line: 735, column: 51, scope: !862)
!869 = !DILocation(line: 735, column: 64, scope: !862)
!870 = !DILocation(line: 735, column: 72, scope: !862)
!871 = !DILocation(line: 736, column: 40, scope: !862)
!872 = !DILocation(line: 735, column: 13, scope: !862)
!873 = !DILocation(line: 735, column: 11, scope: !862)
!874 = !DILocation(line: 737, column: 25, scope: !862)
!875 = !DILocation(line: 737, column: 7, scope: !862)
!876 = !DILocation(line: 738, column: 4, scope: !862)
!877 = !DILocation(line: 739, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !850, file: !57, line: 738, column: 11)
!879 = !DILocation(line: 741, column: 11, scope: !831)
!880 = !DILocation(line: 741, column: 4, scope: !831)
!881 = distinct !DISubprogram(name: "AsyncSocket_ConnectSSL", scope: !57, file: !57, line: 763, type: !882, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!882 = !DISubroutineType(types: !883)
!883 = !{!92, !61, !834, !100}
!884 = !DILocalVariable(name: "asock", arg: 1, scope: !881, file: !57, line: 763, type: !61)
!885 = !DILocation(line: 763, column: 37, scope: !881)
!886 = !DILocalVariable(name: "verifyParam", arg: 2, scope: !881, file: !57, line: 764, type: !834)
!887 = !DILocation(line: 764, column: 40, scope: !881)
!888 = !DILocalVariable(name: "sslContext", arg: 3, scope: !881, file: !57, line: 765, type: !100)
!889 = !DILocation(line: 765, column: 30, scope: !881)
!890 = !DILocalVariable(name: "ret", scope: !881, file: !57, line: 767, type: !92)
!891 = !DILocation(line: 767, column: 9, scope: !881)
!892 = !DILocation(line: 768, column: 28, scope: !893)
!893 = distinct !DILexicalBlock(scope: !881, file: !57, line: 768, column: 8)
!894 = !DILocation(line: 768, column: 34, scope: !893)
!895 = !DILocation(line: 768, column: 39, scope: !896)
!896 = !DILexicalBlockFile(scope: !893, file: !57, discriminator: 1)
!897 = !DILocation(line: 768, column: 47, scope: !896)
!898 = !DILocation(line: 768, column: 52, scope: !896)
!899 = !DILocation(line: 768, column: 34, scope: !896)
!900 = !DILocation(line: 768, column: 26, scope: !901)
!901 = !DILexicalBlockFile(scope: !893, file: !57, discriminator: 2)
!902 = !DILocation(line: 768, column: 25, scope: !901)
!903 = !DILocation(line: 768, column: 8, scope: !901)
!904 = !DILocation(line: 769, column: 23, scope: !905)
!905 = distinct !DILexicalBlock(scope: !893, file: !57, line: 768, column: 69)
!906 = !DILocation(line: 769, column: 7, scope: !905)
!907 = !DILocation(line: 770, column: 15, scope: !905)
!908 = !DILocation(line: 770, column: 23, scope: !905)
!909 = !DILocation(line: 770, column: 28, scope: !905)
!910 = !DILocation(line: 770, column: 39, scope: !905)
!911 = !DILocation(line: 770, column: 46, scope: !905)
!912 = !DILocation(line: 770, column: 59, scope: !905)
!913 = !DILocation(line: 770, column: 13, scope: !905)
!914 = !DILocation(line: 770, column: 11, scope: !905)
!915 = !DILocation(line: 771, column: 25, scope: !905)
!916 = !DILocation(line: 771, column: 7, scope: !905)
!917 = !DILocation(line: 772, column: 4, scope: !905)
!918 = !DILocation(line: 773, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !893, file: !57, line: 772, column: 11)
!920 = !DILocation(line: 775, column: 11, scope: !881)
!921 = !DILocation(line: 775, column: 4, scope: !881)
!922 = distinct !DISubprogram(name: "AsyncSocket_AcceptSSL", scope: !57, file: !57, line: 796, type: !180, isLocal: false, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!923 = !DILocalVariable(name: "asock", arg: 1, scope: !922, file: !57, line: 796, type: !61)
!924 = !DILocation(line: 796, column: 36, scope: !922)
!925 = !DILocalVariable(name: "sslCtx", arg: 2, scope: !922, file: !57, line: 797, type: !100)
!926 = !DILocation(line: 797, column: 29, scope: !922)
!927 = !DILocalVariable(name: "ret", scope: !922, file: !57, line: 799, type: !92)
!928 = !DILocation(line: 799, column: 9, scope: !922)
!929 = !DILocation(line: 800, column: 28, scope: !930)
!930 = distinct !DILexicalBlock(scope: !922, file: !57, line: 800, column: 8)
!931 = !DILocation(line: 800, column: 34, scope: !930)
!932 = !DILocation(line: 800, column: 39, scope: !933)
!933 = !DILexicalBlockFile(scope: !930, file: !57, discriminator: 1)
!934 = !DILocation(line: 800, column: 47, scope: !933)
!935 = !DILocation(line: 800, column: 52, scope: !933)
!936 = !DILocation(line: 800, column: 34, scope: !933)
!937 = !DILocation(line: 800, column: 26, scope: !938)
!938 = !DILexicalBlockFile(scope: !930, file: !57, discriminator: 2)
!939 = !DILocation(line: 800, column: 25, scope: !938)
!940 = !DILocation(line: 800, column: 8, scope: !938)
!941 = !DILocation(line: 801, column: 23, scope: !942)
!942 = distinct !DILexicalBlock(scope: !930, file: !57, line: 800, column: 68)
!943 = !DILocation(line: 801, column: 7, scope: !942)
!944 = !DILocation(line: 802, column: 15, scope: !942)
!945 = !DILocation(line: 802, column: 23, scope: !942)
!946 = !DILocation(line: 802, column: 28, scope: !942)
!947 = !DILocation(line: 802, column: 38, scope: !942)
!948 = !DILocation(line: 802, column: 45, scope: !942)
!949 = !DILocation(line: 802, column: 13, scope: !942)
!950 = !DILocation(line: 802, column: 11, scope: !942)
!951 = !DILocation(line: 803, column: 25, scope: !942)
!952 = !DILocation(line: 803, column: 7, scope: !942)
!953 = !DILocation(line: 804, column: 4, scope: !942)
!954 = !DILocation(line: 805, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !930, file: !57, line: 804, column: 11)
!956 = !DILocation(line: 807, column: 11, scope: !922)
!957 = !DILocation(line: 807, column: 4, scope: !922)
!958 = distinct !DISubprogram(name: "AsyncSocket_StartSslAccept", scope: !57, file: !57, line: 834, type: !184, isLocal: false, isDefinition: true, scopeLine: 838, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!959 = !DILocalVariable(name: "asock", arg: 1, scope: !958, file: !57, line: 834, type: !61)
!960 = !DILocation(line: 834, column: 41, scope: !958)
!961 = !DILocalVariable(name: "sslCtx", arg: 2, scope: !958, file: !57, line: 835, type: !100)
!962 = !DILocation(line: 835, column: 34, scope: !958)
!963 = !DILocalVariable(name: "sslAcceptFn", arg: 3, scope: !958, file: !57, line: 836, type: !186)
!964 = !DILocation(line: 836, column: 51, scope: !958)
!965 = !DILocalVariable(name: "clientData", arg: 4, scope: !958, file: !57, line: 837, type: !100)
!966 = !DILocation(line: 837, column: 34, scope: !958)
!967 = !DILocalVariable(name: "ret", scope: !958, file: !57, line: 839, type: !60)
!968 = !DILocation(line: 839, column: 8, scope: !958)
!969 = !DILocation(line: 840, column: 28, scope: !970)
!970 = distinct !DILexicalBlock(scope: !958, file: !57, line: 840, column: 8)
!971 = !DILocation(line: 840, column: 34, scope: !970)
!972 = !DILocation(line: 840, column: 39, scope: !973)
!973 = !DILexicalBlockFile(scope: !970, file: !57, discriminator: 1)
!974 = !DILocation(line: 840, column: 47, scope: !973)
!975 = !DILocation(line: 840, column: 52, scope: !973)
!976 = !DILocation(line: 840, column: 34, scope: !973)
!977 = !DILocation(line: 840, column: 26, scope: !978)
!978 = !DILexicalBlockFile(scope: !970, file: !57, discriminator: 2)
!979 = !DILocation(line: 840, column: 25, scope: !978)
!980 = !DILocation(line: 840, column: 8, scope: !978)
!981 = !DILocation(line: 841, column: 23, scope: !982)
!982 = distinct !DILexicalBlock(scope: !970, file: !57, line: 840, column: 73)
!983 = !DILocation(line: 841, column: 7, scope: !982)
!984 = !DILocation(line: 842, column: 15, scope: !982)
!985 = !DILocation(line: 842, column: 23, scope: !982)
!986 = !DILocation(line: 842, column: 28, scope: !982)
!987 = !DILocation(line: 842, column: 43, scope: !982)
!988 = !DILocation(line: 842, column: 50, scope: !982)
!989 = !DILocation(line: 842, column: 58, scope: !982)
!990 = !DILocation(line: 842, column: 71, scope: !982)
!991 = !DILocation(line: 842, column: 13, scope: !982)
!992 = !DILocation(line: 842, column: 11, scope: !982)
!993 = !DILocation(line: 843, column: 25, scope: !982)
!994 = !DILocation(line: 843, column: 7, scope: !982)
!995 = !DILocation(line: 844, column: 4, scope: !982)
!996 = !DILocation(line: 845, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !970, file: !57, line: 844, column: 11)
!998 = !DILocation(line: 847, column: 11, scope: !958)
!999 = !DILocation(line: 847, column: 4, scope: !958)
!1000 = distinct !DISubprogram(name: "AsyncSocket_Flush", scope: !57, file: !57, line: 871, type: !189, isLocal: false, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1001 = !DILocalVariable(name: "asock", arg: 1, scope: !1000, file: !57, line: 871, type: !61)
!1002 = !DILocation(line: 871, column: 32, scope: !1000)
!1003 = !DILocalVariable(name: "timeoutMS", arg: 2, scope: !1000, file: !57, line: 872, type: !60)
!1004 = !DILocation(line: 872, column: 23, scope: !1000)
!1005 = !DILocalVariable(name: "ret", scope: !1000, file: !57, line: 874, type: !60)
!1006 = !DILocation(line: 874, column: 8, scope: !1000)
!1007 = !DILocation(line: 875, column: 28, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1000, file: !57, line: 875, column: 8)
!1009 = !DILocation(line: 875, column: 34, scope: !1008)
!1010 = !DILocation(line: 875, column: 39, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1008, file: !57, discriminator: 1)
!1012 = !DILocation(line: 875, column: 47, scope: !1011)
!1013 = !DILocation(line: 875, column: 52, scope: !1011)
!1014 = !DILocation(line: 875, column: 34, scope: !1011)
!1015 = !DILocation(line: 875, column: 26, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1008, file: !57, discriminator: 2)
!1017 = !DILocation(line: 875, column: 25, scope: !1016)
!1018 = !DILocation(line: 875, column: 8, scope: !1016)
!1019 = !DILocation(line: 876, column: 23, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1008, file: !57, line: 875, column: 64)
!1021 = !DILocation(line: 876, column: 7, scope: !1020)
!1022 = !DILocation(line: 877, column: 15, scope: !1020)
!1023 = !DILocation(line: 877, column: 23, scope: !1020)
!1024 = !DILocation(line: 877, column: 28, scope: !1020)
!1025 = !DILocation(line: 877, column: 34, scope: !1020)
!1026 = !DILocation(line: 877, column: 41, scope: !1020)
!1027 = !DILocation(line: 877, column: 13, scope: !1020)
!1028 = !DILocation(line: 877, column: 11, scope: !1020)
!1029 = !DILocation(line: 878, column: 25, scope: !1020)
!1030 = !DILocation(line: 878, column: 7, scope: !1020)
!1031 = !DILocation(line: 879, column: 4, scope: !1020)
!1032 = !DILocation(line: 880, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1008, file: !57, line: 879, column: 11)
!1034 = !DILocation(line: 882, column: 11, scope: !1000)
!1035 = !DILocation(line: 882, column: 4, scope: !1000)
!1036 = distinct !DISubprogram(name: "AsyncSocket_Recv", scope: !57, file: !57, line: 915, type: !197, isLocal: false, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1037 = !DILocalVariable(name: "asock", arg: 1, scope: !1036, file: !57, line: 915, type: !61)
!1038 = !DILocation(line: 915, column: 31, scope: !1036)
!1039 = !DILocalVariable(name: "buf", arg: 2, scope: !1036, file: !57, line: 916, type: !100)
!1040 = !DILocation(line: 916, column: 24, scope: !1036)
!1041 = !DILocalVariable(name: "len", arg: 3, scope: !1036, file: !57, line: 917, type: !60)
!1042 = !DILocation(line: 917, column: 22, scope: !1036)
!1043 = !DILocalVariable(name: "cb", arg: 4, scope: !1036, file: !57, line: 918, type: !100)
!1044 = !DILocation(line: 918, column: 24, scope: !1036)
!1045 = !DILocalVariable(name: "cbData", arg: 5, scope: !1036, file: !57, line: 919, type: !100)
!1046 = !DILocation(line: 919, column: 24, scope: !1036)
!1047 = !DILocalVariable(name: "ret", scope: !1036, file: !57, line: 921, type: !60)
!1048 = !DILocation(line: 921, column: 8, scope: !1036)
!1049 = !DILocation(line: 922, column: 28, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1036, file: !57, line: 922, column: 8)
!1051 = !DILocation(line: 922, column: 34, scope: !1050)
!1052 = !DILocation(line: 922, column: 39, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1050, file: !57, discriminator: 1)
!1054 = !DILocation(line: 922, column: 47, scope: !1053)
!1055 = !DILocation(line: 922, column: 52, scope: !1053)
!1056 = !DILocation(line: 922, column: 34, scope: !1053)
!1057 = !DILocation(line: 922, column: 26, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1050, file: !57, discriminator: 2)
!1059 = !DILocation(line: 922, column: 25, scope: !1058)
!1060 = !DILocation(line: 922, column: 8, scope: !1058)
!1061 = !DILocation(line: 923, column: 23, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !57, line: 922, column: 63)
!1063 = !DILocation(line: 923, column: 7, scope: !1062)
!1064 = !DILocation(line: 924, column: 15, scope: !1062)
!1065 = !DILocation(line: 924, column: 23, scope: !1062)
!1066 = !DILocation(line: 924, column: 28, scope: !1062)
!1067 = !DILocation(line: 924, column: 33, scope: !1062)
!1068 = !DILocation(line: 924, column: 40, scope: !1062)
!1069 = !DILocation(line: 924, column: 45, scope: !1062)
!1070 = !DILocation(line: 924, column: 53, scope: !1062)
!1071 = !DILocation(line: 924, column: 57, scope: !1062)
!1072 = !DILocation(line: 924, column: 13, scope: !1062)
!1073 = !DILocation(line: 924, column: 11, scope: !1062)
!1074 = !DILocation(line: 925, column: 25, scope: !1062)
!1075 = !DILocation(line: 925, column: 7, scope: !1062)
!1076 = !DILocation(line: 926, column: 4, scope: !1062)
!1077 = !DILocation(line: 927, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1050, file: !57, line: 926, column: 11)
!1079 = !DILocation(line: 929, column: 11, scope: !1036)
!1080 = !DILocation(line: 929, column: 4, scope: !1036)
!1081 = distinct !DISubprogram(name: "AsyncSocket_RecvPartial", scope: !57, file: !57, line: 933, type: !197, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1082 = !DILocalVariable(name: "asock", arg: 1, scope: !1081, file: !57, line: 933, type: !61)
!1083 = !DILocation(line: 933, column: 38, scope: !1081)
!1084 = !DILocalVariable(name: "buf", arg: 2, scope: !1081, file: !57, line: 934, type: !100)
!1085 = !DILocation(line: 934, column: 31, scope: !1081)
!1086 = !DILocalVariable(name: "len", arg: 3, scope: !1081, file: !57, line: 935, type: !60)
!1087 = !DILocation(line: 935, column: 29, scope: !1081)
!1088 = !DILocalVariable(name: "cb", arg: 4, scope: !1081, file: !57, line: 936, type: !100)
!1089 = !DILocation(line: 936, column: 31, scope: !1081)
!1090 = !DILocalVariable(name: "cbData", arg: 5, scope: !1081, file: !57, line: 937, type: !100)
!1091 = !DILocation(line: 937, column: 31, scope: !1081)
!1092 = !DILocalVariable(name: "ret", scope: !1081, file: !57, line: 939, type: !60)
!1093 = !DILocation(line: 939, column: 8, scope: !1081)
!1094 = !DILocation(line: 940, column: 28, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1081, file: !57, line: 940, column: 8)
!1096 = !DILocation(line: 940, column: 34, scope: !1095)
!1097 = !DILocation(line: 940, column: 39, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1095, file: !57, discriminator: 1)
!1099 = !DILocation(line: 940, column: 47, scope: !1098)
!1100 = !DILocation(line: 940, column: 52, scope: !1098)
!1101 = !DILocation(line: 940, column: 34, scope: !1098)
!1102 = !DILocation(line: 940, column: 26, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1095, file: !57, discriminator: 2)
!1104 = !DILocation(line: 940, column: 25, scope: !1103)
!1105 = !DILocation(line: 940, column: 8, scope: !1103)
!1106 = !DILocation(line: 941, column: 23, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1095, file: !57, line: 940, column: 63)
!1108 = !DILocation(line: 941, column: 7, scope: !1107)
!1109 = !DILocation(line: 942, column: 15, scope: !1107)
!1110 = !DILocation(line: 942, column: 23, scope: !1107)
!1111 = !DILocation(line: 942, column: 28, scope: !1107)
!1112 = !DILocation(line: 942, column: 33, scope: !1107)
!1113 = !DILocation(line: 942, column: 40, scope: !1107)
!1114 = !DILocation(line: 942, column: 45, scope: !1107)
!1115 = !DILocation(line: 942, column: 53, scope: !1107)
!1116 = !DILocation(line: 942, column: 57, scope: !1107)
!1117 = !DILocation(line: 942, column: 13, scope: !1107)
!1118 = !DILocation(line: 942, column: 11, scope: !1107)
!1119 = !DILocation(line: 943, column: 25, scope: !1107)
!1120 = !DILocation(line: 943, column: 7, scope: !1107)
!1121 = !DILocation(line: 944, column: 4, scope: !1107)
!1122 = !DILocation(line: 945, column: 11, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1095, file: !57, line: 944, column: 11)
!1124 = !DILocation(line: 947, column: 11, scope: !1081)
!1125 = !DILocation(line: 947, column: 4, scope: !1081)
!1126 = distinct !DISubprogram(name: "AsyncSocket_RecvPassedFd", scope: !57, file: !57, line: 969, type: !197, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1127 = !DILocalVariable(name: "asock", arg: 1, scope: !1126, file: !57, line: 969, type: !61)
!1128 = !DILocation(line: 969, column: 39, scope: !1126)
!1129 = !DILocalVariable(name: "buf", arg: 2, scope: !1126, file: !57, line: 970, type: !100)
!1130 = !DILocation(line: 970, column: 32, scope: !1126)
!1131 = !DILocalVariable(name: "len", arg: 3, scope: !1126, file: !57, line: 971, type: !60)
!1132 = !DILocation(line: 971, column: 30, scope: !1126)
!1133 = !DILocalVariable(name: "cb", arg: 4, scope: !1126, file: !57, line: 972, type: !100)
!1134 = !DILocation(line: 972, column: 32, scope: !1126)
!1135 = !DILocalVariable(name: "cbData", arg: 5, scope: !1126, file: !57, line: 973, type: !100)
!1136 = !DILocation(line: 973, column: 32, scope: !1126)
!1137 = !DILocalVariable(name: "ret", scope: !1126, file: !57, line: 975, type: !60)
!1138 = !DILocation(line: 975, column: 8, scope: !1126)
!1139 = !DILocation(line: 976, column: 28, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1126, file: !57, line: 976, column: 8)
!1141 = !DILocation(line: 976, column: 34, scope: !1140)
!1142 = !DILocation(line: 976, column: 39, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1140, file: !57, discriminator: 1)
!1144 = !DILocation(line: 976, column: 47, scope: !1143)
!1145 = !DILocation(line: 976, column: 52, scope: !1143)
!1146 = !DILocation(line: 976, column: 34, scope: !1143)
!1147 = !DILocation(line: 976, column: 26, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1140, file: !57, discriminator: 2)
!1149 = !DILocation(line: 976, column: 25, scope: !1148)
!1150 = !DILocation(line: 976, column: 8, scope: !1148)
!1151 = !DILocation(line: 977, column: 23, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1140, file: !57, line: 976, column: 71)
!1153 = !DILocation(line: 977, column: 7, scope: !1152)
!1154 = !DILocation(line: 978, column: 15, scope: !1152)
!1155 = !DILocation(line: 978, column: 23, scope: !1152)
!1156 = !DILocation(line: 978, column: 28, scope: !1152)
!1157 = !DILocation(line: 978, column: 41, scope: !1152)
!1158 = !DILocation(line: 978, column: 48, scope: !1152)
!1159 = !DILocation(line: 978, column: 53, scope: !1152)
!1160 = !DILocation(line: 978, column: 58, scope: !1152)
!1161 = !DILocation(line: 978, column: 62, scope: !1152)
!1162 = !DILocation(line: 978, column: 13, scope: !1152)
!1163 = !DILocation(line: 978, column: 11, scope: !1152)
!1164 = !DILocation(line: 979, column: 25, scope: !1152)
!1165 = !DILocation(line: 979, column: 7, scope: !1152)
!1166 = !DILocation(line: 980, column: 4, scope: !1152)
!1167 = !DILocation(line: 981, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1140, file: !57, line: 980, column: 11)
!1169 = !DILocation(line: 983, column: 11, scope: !1126)
!1170 = !DILocation(line: 983, column: 4, scope: !1126)
!1171 = distinct !DISubprogram(name: "AsyncSocket_GetReceivedFd", scope: !57, file: !57, line: 1004, type: !142, isLocal: false, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1172 = !DILocalVariable(name: "asock", arg: 1, scope: !1171, file: !57, line: 1004, type: !61)
!1173 = !DILocation(line: 1004, column: 40, scope: !1171)
!1174 = !DILocalVariable(name: "ret", scope: !1171, file: !57, line: 1006, type: !60)
!1175 = !DILocation(line: 1006, column: 8, scope: !1171)
!1176 = !DILocation(line: 1007, column: 28, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1171, file: !57, line: 1007, column: 8)
!1178 = !DILocation(line: 1007, column: 34, scope: !1177)
!1179 = !DILocation(line: 1007, column: 39, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1177, file: !57, discriminator: 1)
!1181 = !DILocation(line: 1007, column: 47, scope: !1180)
!1182 = !DILocation(line: 1007, column: 52, scope: !1180)
!1183 = !DILocation(line: 1007, column: 34, scope: !1180)
!1184 = !DILocation(line: 1007, column: 26, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1177, file: !57, discriminator: 2)
!1186 = !DILocation(line: 1007, column: 25, scope: !1185)
!1187 = !DILocation(line: 1007, column: 8, scope: !1185)
!1188 = !DILocation(line: 1008, column: 23, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1177, file: !57, line: 1007, column: 72)
!1190 = !DILocation(line: 1008, column: 7, scope: !1189)
!1191 = !DILocation(line: 1009, column: 15, scope: !1189)
!1192 = !DILocation(line: 1009, column: 23, scope: !1189)
!1193 = !DILocation(line: 1009, column: 28, scope: !1189)
!1194 = !DILocation(line: 1009, column: 42, scope: !1189)
!1195 = !DILocation(line: 1009, column: 13, scope: !1189)
!1196 = !DILocation(line: 1009, column: 11, scope: !1189)
!1197 = !DILocation(line: 1010, column: 25, scope: !1189)
!1198 = !DILocation(line: 1010, column: 7, scope: !1189)
!1199 = !DILocation(line: 1011, column: 4, scope: !1189)
!1200 = !DILocation(line: 1012, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1177, file: !57, line: 1011, column: 11)
!1202 = !DILocation(line: 1014, column: 11, scope: !1171)
!1203 = !DILocation(line: 1014, column: 4, scope: !1171)
!1204 = distinct !DISubprogram(name: "AsyncSocket_Send", scope: !57, file: !57, line: 1046, type: !202, isLocal: false, isDefinition: true, scopeLine: 1051, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1205 = !DILocalVariable(name: "asock", arg: 1, scope: !1204, file: !57, line: 1046, type: !61)
!1206 = !DILocation(line: 1046, column: 31, scope: !1204)
!1207 = !DILocalVariable(name: "buf", arg: 2, scope: !1204, file: !57, line: 1047, type: !100)
!1208 = !DILocation(line: 1047, column: 24, scope: !1204)
!1209 = !DILocalVariable(name: "len", arg: 3, scope: !1204, file: !57, line: 1048, type: !60)
!1210 = !DILocation(line: 1048, column: 22, scope: !1204)
!1211 = !DILocalVariable(name: "sendFn", arg: 4, scope: !1204, file: !57, line: 1049, type: !204)
!1212 = !DILocation(line: 1049, column: 36, scope: !1204)
!1213 = !DILocalVariable(name: "clientData", arg: 5, scope: !1204, file: !57, line: 1050, type: !100)
!1214 = !DILocation(line: 1050, column: 24, scope: !1204)
!1215 = !DILocalVariable(name: "ret", scope: !1204, file: !57, line: 1052, type: !60)
!1216 = !DILocation(line: 1052, column: 8, scope: !1204)
!1217 = !DILocation(line: 1053, column: 28, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1204, file: !57, line: 1053, column: 8)
!1219 = !DILocation(line: 1053, column: 34, scope: !1218)
!1220 = !DILocation(line: 1053, column: 39, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1218, file: !57, discriminator: 1)
!1222 = !DILocation(line: 1053, column: 47, scope: !1221)
!1223 = !DILocation(line: 1053, column: 52, scope: !1221)
!1224 = !DILocation(line: 1053, column: 34, scope: !1221)
!1225 = !DILocation(line: 1053, column: 26, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1218, file: !57, discriminator: 2)
!1227 = !DILocation(line: 1053, column: 25, scope: !1226)
!1228 = !DILocation(line: 1053, column: 8, scope: !1226)
!1229 = !DILocation(line: 1054, column: 23, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1218, file: !57, line: 1053, column: 63)
!1231 = !DILocation(line: 1054, column: 7, scope: !1230)
!1232 = !DILocation(line: 1055, column: 15, scope: !1230)
!1233 = !DILocation(line: 1055, column: 23, scope: !1230)
!1234 = !DILocation(line: 1055, column: 28, scope: !1230)
!1235 = !DILocation(line: 1055, column: 33, scope: !1230)
!1236 = !DILocation(line: 1055, column: 40, scope: !1230)
!1237 = !DILocation(line: 1055, column: 45, scope: !1230)
!1238 = !DILocation(line: 1055, column: 50, scope: !1230)
!1239 = !DILocation(line: 1055, column: 58, scope: !1230)
!1240 = !DILocation(line: 1055, column: 13, scope: !1230)
!1241 = !DILocation(line: 1055, column: 11, scope: !1230)
!1242 = !DILocation(line: 1056, column: 25, scope: !1230)
!1243 = !DILocation(line: 1056, column: 7, scope: !1230)
!1244 = !DILocation(line: 1057, column: 4, scope: !1230)
!1245 = !DILocation(line: 1058, column: 11, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1218, file: !57, line: 1057, column: 11)
!1247 = !DILocation(line: 1060, column: 11, scope: !1204)
!1248 = !DILocation(line: 1060, column: 4, scope: !1204)
!1249 = distinct !DISubprogram(name: "AsyncSocket_IsSendBufferFull", scope: !57, file: !57, line: 1085, type: !142, isLocal: false, isDefinition: true, scopeLine: 1086, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1250 = !DILocalVariable(name: "asock", arg: 1, scope: !1249, file: !57, line: 1085, type: !61)
!1251 = !DILocation(line: 1085, column: 43, scope: !1249)
!1252 = !DILocalVariable(name: "ret", scope: !1249, file: !57, line: 1087, type: !60)
!1253 = !DILocation(line: 1087, column: 8, scope: !1249)
!1254 = !DILocation(line: 1088, column: 28, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1249, file: !57, line: 1088, column: 8)
!1256 = !DILocation(line: 1088, column: 34, scope: !1255)
!1257 = !DILocation(line: 1088, column: 39, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1255, file: !57, discriminator: 1)
!1259 = !DILocation(line: 1088, column: 47, scope: !1258)
!1260 = !DILocation(line: 1088, column: 52, scope: !1258)
!1261 = !DILocation(line: 1088, column: 34, scope: !1258)
!1262 = !DILocation(line: 1088, column: 26, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1255, file: !57, discriminator: 2)
!1264 = !DILocation(line: 1088, column: 25, scope: !1263)
!1265 = !DILocation(line: 1088, column: 8, scope: !1263)
!1266 = !DILocation(line: 1089, column: 23, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1255, file: !57, line: 1088, column: 75)
!1268 = !DILocation(line: 1089, column: 7, scope: !1267)
!1269 = !DILocation(line: 1090, column: 15, scope: !1267)
!1270 = !DILocation(line: 1090, column: 23, scope: !1267)
!1271 = !DILocation(line: 1090, column: 28, scope: !1267)
!1272 = !DILocation(line: 1090, column: 45, scope: !1267)
!1273 = !DILocation(line: 1090, column: 13, scope: !1267)
!1274 = !DILocation(line: 1090, column: 11, scope: !1267)
!1275 = !DILocation(line: 1091, column: 25, scope: !1267)
!1276 = !DILocation(line: 1091, column: 7, scope: !1267)
!1277 = !DILocation(line: 1092, column: 4, scope: !1267)
!1278 = !DILocation(line: 1093, column: 11, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1255, file: !57, line: 1092, column: 11)
!1280 = !DILocation(line: 1095, column: 11, scope: !1249)
!1281 = !DILocation(line: 1095, column: 4, scope: !1249)
!1282 = distinct !DISubprogram(name: "AsyncSocket_GetNetworkStats", scope: !57, file: !57, line: 1116, type: !208, isLocal: false, isDefinition: true, scopeLine: 1118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1283 = !DILocalVariable(name: "asock", arg: 1, scope: !1282, file: !57, line: 1116, type: !61)
!1284 = !DILocation(line: 1116, column: 42, scope: !1282)
!1285 = !DILocalVariable(name: "stats", arg: 2, scope: !1282, file: !57, line: 1117, type: !210)
!1286 = !DILocation(line: 1117, column: 54, scope: !1282)
!1287 = !DILocalVariable(name: "ret", scope: !1282, file: !57, line: 1119, type: !60)
!1288 = !DILocation(line: 1119, column: 8, scope: !1282)
!1289 = !DILocation(line: 1120, column: 28, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !57, line: 1120, column: 8)
!1291 = !DILocation(line: 1120, column: 34, scope: !1290)
!1292 = !DILocation(line: 1120, column: 39, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1290, file: !57, discriminator: 1)
!1294 = !DILocation(line: 1120, column: 47, scope: !1293)
!1295 = !DILocation(line: 1120, column: 52, scope: !1293)
!1296 = !DILocation(line: 1120, column: 34, scope: !1293)
!1297 = !DILocation(line: 1120, column: 26, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1290, file: !57, discriminator: 2)
!1299 = !DILocation(line: 1120, column: 25, scope: !1298)
!1300 = !DILocation(line: 1120, column: 8, scope: !1298)
!1301 = !DILocation(line: 1121, column: 23, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1290, file: !57, line: 1120, column: 74)
!1303 = !DILocation(line: 1121, column: 7, scope: !1302)
!1304 = !DILocation(line: 1122, column: 15, scope: !1302)
!1305 = !DILocation(line: 1122, column: 23, scope: !1302)
!1306 = !DILocation(line: 1122, column: 28, scope: !1302)
!1307 = !DILocation(line: 1122, column: 44, scope: !1302)
!1308 = !DILocation(line: 1122, column: 51, scope: !1302)
!1309 = !DILocation(line: 1122, column: 13, scope: !1302)
!1310 = !DILocation(line: 1122, column: 11, scope: !1302)
!1311 = !DILocation(line: 1123, column: 25, scope: !1302)
!1312 = !DILocation(line: 1123, column: 7, scope: !1302)
!1313 = !DILocation(line: 1124, column: 4, scope: !1302)
!1314 = !DILocation(line: 1125, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1290, file: !57, line: 1124, column: 11)
!1316 = !DILocation(line: 1127, column: 11, scope: !1282)
!1317 = !DILocation(line: 1127, column: 4, scope: !1282)
!1318 = distinct !DISubprogram(name: "AsyncSocket_Close", scope: !57, file: !57, line: 1153, type: !142, isLocal: false, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1319 = !DILocalVariable(name: "asock", arg: 1, scope: !1318, file: !57, line: 1153, type: !61)
!1320 = !DILocation(line: 1153, column: 32, scope: !1318)
!1321 = !DILocalVariable(name: "ret", scope: !1318, file: !57, line: 1155, type: !60)
!1322 = !DILocation(line: 1155, column: 8, scope: !1318)
!1323 = !DILocation(line: 1156, column: 28, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !57, line: 1156, column: 8)
!1325 = !DILocation(line: 1156, column: 34, scope: !1324)
!1326 = !DILocation(line: 1156, column: 39, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1324, file: !57, discriminator: 1)
!1328 = !DILocation(line: 1156, column: 47, scope: !1327)
!1329 = !DILocation(line: 1156, column: 52, scope: !1327)
!1330 = !DILocation(line: 1156, column: 34, scope: !1327)
!1331 = !DILocation(line: 1156, column: 26, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1324, file: !57, discriminator: 2)
!1333 = !DILocation(line: 1156, column: 25, scope: !1332)
!1334 = !DILocation(line: 1156, column: 8, scope: !1332)
!1335 = !DILocation(line: 1157, column: 23, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !57, line: 1156, column: 64)
!1337 = !DILocation(line: 1157, column: 7, scope: !1336)
!1338 = !DILocation(line: 1158, column: 15, scope: !1336)
!1339 = !DILocation(line: 1158, column: 23, scope: !1336)
!1340 = !DILocation(line: 1158, column: 28, scope: !1336)
!1341 = !DILocation(line: 1158, column: 34, scope: !1336)
!1342 = !DILocation(line: 1158, column: 13, scope: !1336)
!1343 = !DILocation(line: 1158, column: 11, scope: !1336)
!1344 = !DILocation(line: 1160, column: 25, scope: !1336)
!1345 = !DILocation(line: 1160, column: 7, scope: !1336)
!1346 = !DILocation(line: 1161, column: 4, scope: !1336)
!1347 = !DILocation(line: 1162, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1324, file: !57, line: 1161, column: 11)
!1349 = !DILocation(line: 1164, column: 11, scope: !1318)
!1350 = !DILocation(line: 1164, column: 4, scope: !1318)
!1351 = distinct !DISubprogram(name: "AsyncSocket_CancelRecv", scope: !57, file: !57, line: 1191, type: !1352, isLocal: false, isDefinition: true, scopeLine: 1195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!60, !61, !226, !227, !227}
!1354 = !DILocalVariable(name: "asock", arg: 1, scope: !1351, file: !57, line: 1191, type: !61)
!1355 = !DILocation(line: 1191, column: 37, scope: !1351)
!1356 = !DILocalVariable(name: "partialRecvd", arg: 2, scope: !1351, file: !57, line: 1192, type: !226)
!1357 = !DILocation(line: 1192, column: 29, scope: !1351)
!1358 = !DILocalVariable(name: "recvBuf", arg: 3, scope: !1351, file: !57, line: 1193, type: !227)
!1359 = !DILocation(line: 1193, column: 31, scope: !1351)
!1360 = !DILocalVariable(name: "recvFn", arg: 4, scope: !1351, file: !57, line: 1194, type: !227)
!1361 = !DILocation(line: 1194, column: 31, scope: !1351)
!1362 = !DILocation(line: 1196, column: 36, scope: !1351)
!1363 = !DILocation(line: 1196, column: 43, scope: !1351)
!1364 = !DILocation(line: 1196, column: 57, scope: !1351)
!1365 = !DILocation(line: 1196, column: 66, scope: !1351)
!1366 = !DILocation(line: 1196, column: 11, scope: !1351)
!1367 = !DILocation(line: 1196, column: 4, scope: !1351)
!1368 = distinct !DISubprogram(name: "AsyncSocket_CancelRecvEx", scope: !57, file: !57, line: 1200, type: !224, isLocal: false, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1369 = !DILocalVariable(name: "asock", arg: 1, scope: !1368, file: !57, line: 1200, type: !61)
!1370 = !DILocation(line: 1200, column: 39, scope: !1368)
!1371 = !DILocalVariable(name: "partialRecvd", arg: 2, scope: !1368, file: !57, line: 1201, type: !226)
!1372 = !DILocation(line: 1201, column: 31, scope: !1368)
!1373 = !DILocalVariable(name: "recvBuf", arg: 3, scope: !1368, file: !57, line: 1202, type: !227)
!1374 = !DILocation(line: 1202, column: 33, scope: !1368)
!1375 = !DILocalVariable(name: "recvFn", arg: 4, scope: !1368, file: !57, line: 1203, type: !227)
!1376 = !DILocation(line: 1203, column: 33, scope: !1368)
!1377 = !DILocalVariable(name: "cancelOnSend", arg: 5, scope: !1368, file: !57, line: 1204, type: !92)
!1378 = !DILocation(line: 1204, column: 31, scope: !1368)
!1379 = !DILocalVariable(name: "ret", scope: !1368, file: !57, line: 1206, type: !60)
!1380 = !DILocation(line: 1206, column: 8, scope: !1368)
!1381 = !DILocation(line: 1207, column: 28, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1368, file: !57, line: 1207, column: 8)
!1383 = !DILocation(line: 1207, column: 34, scope: !1382)
!1384 = !DILocation(line: 1207, column: 39, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1382, file: !57, discriminator: 1)
!1386 = !DILocation(line: 1207, column: 47, scope: !1385)
!1387 = !DILocation(line: 1207, column: 52, scope: !1385)
!1388 = !DILocation(line: 1207, column: 34, scope: !1385)
!1389 = !DILocation(line: 1207, column: 26, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1382, file: !57, discriminator: 2)
!1391 = !DILocation(line: 1207, column: 25, scope: !1390)
!1392 = !DILocation(line: 1207, column: 8, scope: !1390)
!1393 = !DILocation(line: 1208, column: 23, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1382, file: !57, line: 1207, column: 69)
!1395 = !DILocation(line: 1208, column: 7, scope: !1394)
!1396 = !DILocation(line: 1209, column: 15, scope: !1394)
!1397 = !DILocation(line: 1209, column: 23, scope: !1394)
!1398 = !DILocation(line: 1209, column: 28, scope: !1394)
!1399 = !DILocation(line: 1209, column: 39, scope: !1394)
!1400 = !DILocation(line: 1209, column: 46, scope: !1394)
!1401 = !DILocation(line: 1209, column: 60, scope: !1394)
!1402 = !DILocation(line: 1209, column: 69, scope: !1394)
!1403 = !DILocation(line: 1210, column: 35, scope: !1394)
!1404 = !DILocation(line: 1209, column: 13, scope: !1394)
!1405 = !DILocation(line: 1209, column: 11, scope: !1394)
!1406 = !DILocation(line: 1211, column: 25, scope: !1394)
!1407 = !DILocation(line: 1211, column: 7, scope: !1394)
!1408 = !DILocation(line: 1212, column: 4, scope: !1394)
!1409 = !DILocation(line: 1213, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1382, file: !57, line: 1212, column: 11)
!1411 = !DILocation(line: 1215, column: 11, scope: !1368)
!1412 = !DILocation(line: 1215, column: 4, scope: !1368)
!1413 = distinct !DISubprogram(name: "AsyncSocket_CancelCbForClose", scope: !57, file: !57, line: 1238, type: !142, isLocal: false, isDefinition: true, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1414 = !DILocalVariable(name: "asock", arg: 1, scope: !1413, file: !57, line: 1238, type: !61)
!1415 = !DILocation(line: 1238, column: 43, scope: !1413)
!1416 = !DILocalVariable(name: "ret", scope: !1413, file: !57, line: 1240, type: !60)
!1417 = !DILocation(line: 1240, column: 8, scope: !1413)
!1418 = !DILocation(line: 1241, column: 28, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !57, line: 1241, column: 8)
!1420 = !DILocation(line: 1241, column: 34, scope: !1419)
!1421 = !DILocation(line: 1241, column: 39, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1419, file: !57, discriminator: 1)
!1423 = !DILocation(line: 1241, column: 47, scope: !1422)
!1424 = !DILocation(line: 1241, column: 52, scope: !1422)
!1425 = !DILocation(line: 1241, column: 34, scope: !1422)
!1426 = !DILocation(line: 1241, column: 26, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1419, file: !57, discriminator: 2)
!1428 = !DILocation(line: 1241, column: 25, scope: !1427)
!1429 = !DILocation(line: 1241, column: 8, scope: !1427)
!1430 = !DILocation(line: 1242, column: 23, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1419, file: !57, line: 1241, column: 75)
!1432 = !DILocation(line: 1242, column: 7, scope: !1431)
!1433 = !DILocation(line: 1243, column: 15, scope: !1431)
!1434 = !DILocation(line: 1243, column: 23, scope: !1431)
!1435 = !DILocation(line: 1243, column: 28, scope: !1431)
!1436 = !DILocation(line: 1243, column: 45, scope: !1431)
!1437 = !DILocation(line: 1243, column: 13, scope: !1431)
!1438 = !DILocation(line: 1243, column: 11, scope: !1431)
!1439 = !DILocation(line: 1244, column: 25, scope: !1431)
!1440 = !DILocation(line: 1244, column: 7, scope: !1431)
!1441 = !DILocation(line: 1245, column: 4, scope: !1431)
!1442 = !DILocation(line: 1246, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1419, file: !57, line: 1245, column: 11)
!1444 = !DILocation(line: 1248, column: 11, scope: !1413)
!1445 = !DILocation(line: 1248, column: 4, scope: !1413)
!1446 = distinct !DISubprogram(name: "AsyncSocket_GetLocalVMCIAddress", scope: !57, file: !57, line: 1271, type: !231, isLocal: false, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1447 = !DILocalVariable(name: "asock", arg: 1, scope: !1446, file: !57, line: 1271, type: !61)
!1448 = !DILocation(line: 1271, column: 46, scope: !1446)
!1449 = !DILocalVariable(name: "cid", arg: 2, scope: !1446, file: !57, line: 1272, type: !233)
!1450 = !DILocation(line: 1272, column: 41, scope: !1446)
!1451 = !DILocalVariable(name: "port", arg: 3, scope: !1446, file: !57, line: 1273, type: !233)
!1452 = !DILocation(line: 1273, column: 41, scope: !1446)
!1453 = !DILocalVariable(name: "ret", scope: !1446, file: !57, line: 1275, type: !60)
!1454 = !DILocation(line: 1275, column: 8, scope: !1446)
!1455 = !DILocation(line: 1276, column: 28, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !57, line: 1276, column: 8)
!1457 = !DILocation(line: 1276, column: 34, scope: !1456)
!1458 = !DILocation(line: 1276, column: 39, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1456, file: !57, discriminator: 1)
!1460 = !DILocation(line: 1276, column: 47, scope: !1459)
!1461 = !DILocation(line: 1276, column: 52, scope: !1459)
!1462 = !DILocation(line: 1276, column: 34, scope: !1459)
!1463 = !DILocation(line: 1276, column: 26, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1456, file: !57, discriminator: 2)
!1465 = !DILocation(line: 1276, column: 25, scope: !1464)
!1466 = !DILocation(line: 1276, column: 8, scope: !1464)
!1467 = !DILocation(line: 1277, column: 23, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1456, file: !57, line: 1276, column: 78)
!1469 = !DILocation(line: 1277, column: 7, scope: !1468)
!1470 = !DILocation(line: 1278, column: 15, scope: !1468)
!1471 = !DILocation(line: 1278, column: 23, scope: !1468)
!1472 = !DILocation(line: 1278, column: 28, scope: !1468)
!1473 = !DILocation(line: 1278, column: 48, scope: !1468)
!1474 = !DILocation(line: 1278, column: 55, scope: !1468)
!1475 = !DILocation(line: 1278, column: 60, scope: !1468)
!1476 = !DILocation(line: 1278, column: 13, scope: !1468)
!1477 = !DILocation(line: 1278, column: 11, scope: !1468)
!1478 = !DILocation(line: 1279, column: 25, scope: !1468)
!1479 = !DILocation(line: 1279, column: 7, scope: !1468)
!1480 = !DILocation(line: 1280, column: 4, scope: !1468)
!1481 = !DILocation(line: 1281, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1456, file: !57, line: 1280, column: 11)
!1483 = !DILocation(line: 1283, column: 11, scope: !1446)
!1484 = !DILocation(line: 1283, column: 4, scope: !1446)
!1485 = distinct !DISubprogram(name: "AsyncSocket_GetRemoteVMCIAddress", scope: !57, file: !57, line: 1306, type: !231, isLocal: false, isDefinition: true, scopeLine: 1309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1486 = !DILocalVariable(name: "asock", arg: 1, scope: !1485, file: !57, line: 1306, type: !61)
!1487 = !DILocation(line: 1306, column: 47, scope: !1485)
!1488 = !DILocalVariable(name: "cid", arg: 2, scope: !1485, file: !57, line: 1307, type: !233)
!1489 = !DILocation(line: 1307, column: 42, scope: !1485)
!1490 = !DILocalVariable(name: "port", arg: 3, scope: !1485, file: !57, line: 1308, type: !233)
!1491 = !DILocation(line: 1308, column: 42, scope: !1485)
!1492 = !DILocalVariable(name: "ret", scope: !1485, file: !57, line: 1310, type: !60)
!1493 = !DILocation(line: 1310, column: 8, scope: !1485)
!1494 = !DILocation(line: 1311, column: 28, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1485, file: !57, line: 1311, column: 8)
!1496 = !DILocation(line: 1311, column: 34, scope: !1495)
!1497 = !DILocation(line: 1311, column: 39, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1495, file: !57, discriminator: 1)
!1499 = !DILocation(line: 1311, column: 47, scope: !1498)
!1500 = !DILocation(line: 1311, column: 52, scope: !1498)
!1501 = !DILocation(line: 1311, column: 34, scope: !1498)
!1502 = !DILocation(line: 1311, column: 26, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1495, file: !57, discriminator: 2)
!1504 = !DILocation(line: 1311, column: 25, scope: !1503)
!1505 = !DILocation(line: 1311, column: 8, scope: !1503)
!1506 = !DILocation(line: 1312, column: 23, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1495, file: !57, line: 1311, column: 79)
!1508 = !DILocation(line: 1312, column: 7, scope: !1507)
!1509 = !DILocation(line: 1313, column: 15, scope: !1507)
!1510 = !DILocation(line: 1313, column: 23, scope: !1507)
!1511 = !DILocation(line: 1313, column: 28, scope: !1507)
!1512 = !DILocation(line: 1313, column: 49, scope: !1507)
!1513 = !DILocation(line: 1313, column: 56, scope: !1507)
!1514 = !DILocation(line: 1313, column: 61, scope: !1507)
!1515 = !DILocation(line: 1313, column: 13, scope: !1507)
!1516 = !DILocation(line: 1313, column: 11, scope: !1507)
!1517 = !DILocation(line: 1314, column: 25, scope: !1507)
!1518 = !DILocation(line: 1314, column: 7, scope: !1507)
!1519 = !DILocation(line: 1315, column: 4, scope: !1507)
!1520 = !DILocation(line: 1316, column: 11, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1495, file: !57, line: 1315, column: 11)
!1522 = !DILocation(line: 1318, column: 11, scope: !1485)
!1523 = !DILocation(line: 1318, column: 4, scope: !1485)
!1524 = distinct !DISubprogram(name: "AsyncSocket_GetWebSocketError", scope: !57, file: !57, line: 1340, type: !142, isLocal: false, isDefinition: true, scopeLine: 1341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1525 = !DILocalVariable(name: "asock", arg: 1, scope: !1524, file: !57, line: 1340, type: !61)
!1526 = !DILocation(line: 1340, column: 44, scope: !1524)
!1527 = !DILocalVariable(name: "ret", scope: !1524, file: !57, line: 1342, type: !60)
!1528 = !DILocation(line: 1342, column: 8, scope: !1524)
!1529 = !DILocation(line: 1343, column: 28, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !57, line: 1343, column: 8)
!1531 = !DILocation(line: 1343, column: 34, scope: !1530)
!1532 = !DILocation(line: 1343, column: 39, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1530, file: !57, discriminator: 1)
!1534 = !DILocation(line: 1343, column: 47, scope: !1533)
!1535 = !DILocation(line: 1343, column: 52, scope: !1533)
!1536 = !DILocation(line: 1343, column: 34, scope: !1533)
!1537 = !DILocation(line: 1343, column: 26, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1530, file: !57, discriminator: 2)
!1539 = !DILocation(line: 1343, column: 25, scope: !1538)
!1540 = !DILocation(line: 1343, column: 8, scope: !1538)
!1541 = !DILocation(line: 1344, column: 23, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !57, line: 1343, column: 76)
!1543 = !DILocation(line: 1344, column: 7, scope: !1542)
!1544 = !DILocation(line: 1345, column: 15, scope: !1542)
!1545 = !DILocation(line: 1345, column: 23, scope: !1542)
!1546 = !DILocation(line: 1345, column: 28, scope: !1542)
!1547 = !DILocation(line: 1345, column: 46, scope: !1542)
!1548 = !DILocation(line: 1345, column: 13, scope: !1542)
!1549 = !DILocation(line: 1345, column: 11, scope: !1542)
!1550 = !DILocation(line: 1346, column: 25, scope: !1542)
!1551 = !DILocation(line: 1346, column: 7, scope: !1542)
!1552 = !DILocation(line: 1347, column: 4, scope: !1542)
!1553 = !DILocation(line: 1348, column: 11, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1530, file: !57, line: 1347, column: 11)
!1555 = !DILocation(line: 1350, column: 11, scope: !1524)
!1556 = !DILocation(line: 1350, column: 4, scope: !1524)
!1557 = distinct !DISubprogram(name: "AsyncSocket_GetWebSocketURI", scope: !57, file: !57, line: 1371, type: !238, isLocal: false, isDefinition: true, scopeLine: 1372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1558 = !DILocalVariable(name: "asock", arg: 1, scope: !1557, file: !57, line: 1371, type: !61)
!1559 = !DILocation(line: 1371, column: 42, scope: !1557)
!1560 = !DILocalVariable(name: "ret", scope: !1557, file: !57, line: 1373, type: !157)
!1561 = !DILocation(line: 1373, column: 10, scope: !1557)
!1562 = !DILocation(line: 1374, column: 28, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !57, line: 1374, column: 8)
!1564 = !DILocation(line: 1374, column: 34, scope: !1563)
!1565 = !DILocation(line: 1374, column: 39, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1563, file: !57, discriminator: 1)
!1567 = !DILocation(line: 1374, column: 47, scope: !1566)
!1568 = !DILocation(line: 1374, column: 52, scope: !1566)
!1569 = !DILocation(line: 1374, column: 34, scope: !1566)
!1570 = !DILocation(line: 1374, column: 26, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1563, file: !57, discriminator: 2)
!1572 = !DILocation(line: 1374, column: 25, scope: !1571)
!1573 = !DILocation(line: 1374, column: 8, scope: !1571)
!1574 = !DILocation(line: 1375, column: 23, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1563, file: !57, line: 1374, column: 74)
!1576 = !DILocation(line: 1375, column: 7, scope: !1575)
!1577 = !DILocation(line: 1376, column: 15, scope: !1575)
!1578 = !DILocation(line: 1376, column: 23, scope: !1575)
!1579 = !DILocation(line: 1376, column: 28, scope: !1575)
!1580 = !DILocation(line: 1376, column: 44, scope: !1575)
!1581 = !DILocation(line: 1376, column: 13, scope: !1575)
!1582 = !DILocation(line: 1376, column: 11, scope: !1575)
!1583 = !DILocation(line: 1377, column: 25, scope: !1575)
!1584 = !DILocation(line: 1377, column: 7, scope: !1575)
!1585 = !DILocation(line: 1378, column: 4, scope: !1575)
!1586 = !DILocation(line: 1379, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1563, file: !57, line: 1378, column: 11)
!1588 = !DILocation(line: 1381, column: 11, scope: !1557)
!1589 = !DILocation(line: 1381, column: 4, scope: !1557)
!1590 = distinct !DISubprogram(name: "AsyncSocket_GetWebSocketCookie", scope: !57, file: !57, line: 1404, type: !238, isLocal: false, isDefinition: true, scopeLine: 1405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1591 = !DILocalVariable(name: "asock", arg: 1, scope: !1590, file: !57, line: 1404, type: !61)
!1592 = !DILocation(line: 1404, column: 45, scope: !1590)
!1593 = !DILocalVariable(name: "ret", scope: !1590, file: !57, line: 1406, type: !157)
!1594 = !DILocation(line: 1406, column: 10, scope: !1590)
!1595 = !DILocation(line: 1407, column: 28, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1590, file: !57, line: 1407, column: 8)
!1597 = !DILocation(line: 1407, column: 34, scope: !1596)
!1598 = !DILocation(line: 1407, column: 39, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1596, file: !57, discriminator: 1)
!1600 = !DILocation(line: 1407, column: 47, scope: !1599)
!1601 = !DILocation(line: 1407, column: 52, scope: !1599)
!1602 = !DILocation(line: 1407, column: 34, scope: !1599)
!1603 = !DILocation(line: 1407, column: 26, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1596, file: !57, discriminator: 2)
!1605 = !DILocation(line: 1407, column: 25, scope: !1604)
!1606 = !DILocation(line: 1407, column: 8, scope: !1604)
!1607 = !DILocation(line: 1408, column: 23, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1596, file: !57, line: 1407, column: 77)
!1609 = !DILocation(line: 1408, column: 7, scope: !1608)
!1610 = !DILocation(line: 1409, column: 15, scope: !1608)
!1611 = !DILocation(line: 1409, column: 23, scope: !1608)
!1612 = !DILocation(line: 1409, column: 28, scope: !1608)
!1613 = !DILocation(line: 1409, column: 47, scope: !1608)
!1614 = !DILocation(line: 1409, column: 13, scope: !1608)
!1615 = !DILocation(line: 1409, column: 11, scope: !1608)
!1616 = !DILocation(line: 1410, column: 25, scope: !1608)
!1617 = !DILocation(line: 1410, column: 7, scope: !1608)
!1618 = !DILocation(line: 1411, column: 4, scope: !1608)
!1619 = !DILocation(line: 1412, column: 11, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1596, file: !57, line: 1411, column: 11)
!1621 = !DILocation(line: 1414, column: 11, scope: !1590)
!1622 = !DILocation(line: 1414, column: 4, scope: !1590)
!1623 = distinct !DISubprogram(name: "AsyncSocket_SetWebSocketCookie", scope: !57, file: !57, line: 1436, type: !254, isLocal: false, isDefinition: true, scopeLine: 1440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1624 = !DILocalVariable(name: "asock", arg: 1, scope: !1623, file: !57, line: 1436, type: !61)
!1625 = !DILocation(line: 1436, column: 45, scope: !1623)
!1626 = !DILocalVariable(name: "clientData", arg: 2, scope: !1623, file: !57, line: 1437, type: !100)
!1627 = !DILocation(line: 1437, column: 38, scope: !1623)
!1628 = !DILocalVariable(name: "path", arg: 3, scope: !1623, file: !57, line: 1438, type: !150)
!1629 = !DILocation(line: 1438, column: 44, scope: !1623)
!1630 = !DILocalVariable(name: "sessionId", arg: 4, scope: !1623, file: !57, line: 1439, type: !150)
!1631 = !DILocation(line: 1439, column: 44, scope: !1623)
!1632 = !DILocalVariable(name: "ret", scope: !1623, file: !57, line: 1441, type: !60)
!1633 = !DILocation(line: 1441, column: 8, scope: !1623)
!1634 = !DILocation(line: 1442, column: 28, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1623, file: !57, line: 1442, column: 8)
!1636 = !DILocation(line: 1442, column: 34, scope: !1635)
!1637 = !DILocation(line: 1442, column: 39, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1635, file: !57, discriminator: 1)
!1639 = !DILocation(line: 1442, column: 47, scope: !1638)
!1640 = !DILocation(line: 1442, column: 52, scope: !1638)
!1641 = !DILocation(line: 1442, column: 34, scope: !1638)
!1642 = !DILocation(line: 1442, column: 26, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1635, file: !57, discriminator: 2)
!1644 = !DILocation(line: 1442, column: 25, scope: !1643)
!1645 = !DILocation(line: 1442, column: 8, scope: !1643)
!1646 = !DILocation(line: 1443, column: 23, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1635, file: !57, line: 1442, column: 77)
!1648 = !DILocation(line: 1443, column: 7, scope: !1647)
!1649 = !DILocation(line: 1444, column: 15, scope: !1647)
!1650 = !DILocation(line: 1444, column: 23, scope: !1647)
!1651 = !DILocation(line: 1444, column: 28, scope: !1647)
!1652 = !DILocation(line: 1444, column: 47, scope: !1647)
!1653 = !DILocation(line: 1444, column: 54, scope: !1647)
!1654 = !DILocation(line: 1444, column: 66, scope: !1647)
!1655 = !DILocation(line: 1444, column: 72, scope: !1647)
!1656 = !DILocation(line: 1444, column: 13, scope: !1647)
!1657 = !DILocation(line: 1444, column: 11, scope: !1647)
!1658 = !DILocation(line: 1445, column: 25, scope: !1647)
!1659 = !DILocation(line: 1445, column: 7, scope: !1647)
!1660 = !DILocation(line: 1446, column: 4, scope: !1647)
!1661 = !DILocation(line: 1447, column: 11, scope: !1623)
!1662 = !DILocation(line: 1447, column: 4, scope: !1623)
!1663 = distinct !DISubprogram(name: "AsyncSocket_GetWebSocketCloseStatus", scope: !57, file: !57, line: 1468, type: !243, isLocal: false, isDefinition: true, scopeLine: 1469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1664 = !DILocalVariable(name: "asock", arg: 1, scope: !1663, file: !57, line: 1468, type: !61)
!1665 = !DILocation(line: 1468, column: 50, scope: !1663)
!1666 = !DILocalVariable(name: "ret", scope: !1663, file: !57, line: 1470, type: !245)
!1667 = !DILocation(line: 1470, column: 11, scope: !1663)
!1668 = !DILocation(line: 1471, column: 28, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1663, file: !57, line: 1471, column: 8)
!1670 = !DILocation(line: 1471, column: 34, scope: !1669)
!1671 = !DILocation(line: 1471, column: 39, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1669, file: !57, discriminator: 1)
!1673 = !DILocation(line: 1471, column: 47, scope: !1672)
!1674 = !DILocation(line: 1471, column: 52, scope: !1672)
!1675 = !DILocation(line: 1471, column: 34, scope: !1672)
!1676 = !DILocation(line: 1471, column: 26, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1669, file: !57, discriminator: 2)
!1678 = !DILocation(line: 1471, column: 25, scope: !1677)
!1679 = !DILocation(line: 1471, column: 8, scope: !1677)
!1680 = !DILocation(line: 1472, column: 23, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1669, file: !57, line: 1471, column: 82)
!1682 = !DILocation(line: 1472, column: 7, scope: !1681)
!1683 = !DILocation(line: 1473, column: 15, scope: !1681)
!1684 = !DILocation(line: 1473, column: 23, scope: !1681)
!1685 = !DILocation(line: 1473, column: 28, scope: !1681)
!1686 = !DILocation(line: 1473, column: 52, scope: !1681)
!1687 = !DILocation(line: 1473, column: 13, scope: !1681)
!1688 = !DILocation(line: 1473, column: 11, scope: !1681)
!1689 = !DILocation(line: 1474, column: 25, scope: !1681)
!1690 = !DILocation(line: 1474, column: 7, scope: !1681)
!1691 = !DILocation(line: 1475, column: 4, scope: !1681)
!1692 = !DILocation(line: 1476, column: 11, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1669, file: !57, line: 1475, column: 11)
!1694 = !DILocation(line: 1478, column: 11, scope: !1663)
!1695 = !DILocation(line: 1478, column: 4, scope: !1663)
!1696 = distinct !DISubprogram(name: "AsyncSocket_GetWebSocketProtocol", scope: !57, file: !57, line: 1501, type: !250, isLocal: false, isDefinition: true, scopeLine: 1502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1697 = !DILocalVariable(name: "asock", arg: 1, scope: !1696, file: !57, line: 1501, type: !61)
!1698 = !DILocation(line: 1501, column: 47, scope: !1696)
!1699 = !DILocalVariable(name: "ret", scope: !1696, file: !57, line: 1503, type: !150)
!1700 = !DILocation(line: 1503, column: 16, scope: !1696)
!1701 = !DILocation(line: 1504, column: 28, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1696, file: !57, line: 1504, column: 8)
!1703 = !DILocation(line: 1504, column: 34, scope: !1702)
!1704 = !DILocation(line: 1504, column: 39, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1702, file: !57, discriminator: 1)
!1706 = !DILocation(line: 1504, column: 47, scope: !1705)
!1707 = !DILocation(line: 1504, column: 52, scope: !1705)
!1708 = !DILocation(line: 1504, column: 34, scope: !1705)
!1709 = !DILocation(line: 1504, column: 26, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1702, file: !57, discriminator: 2)
!1711 = !DILocation(line: 1504, column: 25, scope: !1710)
!1712 = !DILocation(line: 1504, column: 8, scope: !1710)
!1713 = !DILocation(line: 1505, column: 23, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1702, file: !57, line: 1504, column: 79)
!1715 = !DILocation(line: 1505, column: 7, scope: !1714)
!1716 = !DILocation(line: 1506, column: 15, scope: !1714)
!1717 = !DILocation(line: 1506, column: 23, scope: !1714)
!1718 = !DILocation(line: 1506, column: 28, scope: !1714)
!1719 = !DILocation(line: 1506, column: 49, scope: !1714)
!1720 = !DILocation(line: 1506, column: 13, scope: !1714)
!1721 = !DILocation(line: 1506, column: 11, scope: !1714)
!1722 = !DILocation(line: 1507, column: 25, scope: !1714)
!1723 = !DILocation(line: 1507, column: 7, scope: !1714)
!1724 = !DILocation(line: 1508, column: 4, scope: !1714)
!1725 = !DILocation(line: 1509, column: 11, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1702, file: !57, line: 1508, column: 11)
!1727 = !DILocation(line: 1511, column: 11, scope: !1696)
!1728 = !DILocation(line: 1511, column: 4, scope: !1696)
!1729 = distinct !DISubprogram(name: "AsyncSocket_RecvBlocking", scope: !57, file: !57, line: 1542, type: !258, isLocal: false, isDefinition: true, scopeLine: 1547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1730 = !DILocalVariable(name: "asock", arg: 1, scope: !1729, file: !57, line: 1542, type: !61)
!1731 = !DILocation(line: 1542, column: 39, scope: !1729)
!1732 = !DILocalVariable(name: "buf", arg: 2, scope: !1729, file: !57, line: 1543, type: !100)
!1733 = !DILocation(line: 1543, column: 32, scope: !1729)
!1734 = !DILocalVariable(name: "len", arg: 3, scope: !1729, file: !57, line: 1544, type: !60)
!1735 = !DILocation(line: 1544, column: 30, scope: !1729)
!1736 = !DILocalVariable(name: "received", arg: 4, scope: !1729, file: !57, line: 1545, type: !226)
!1737 = !DILocation(line: 1545, column: 31, scope: !1729)
!1738 = !DILocalVariable(name: "timeoutMS", arg: 5, scope: !1729, file: !57, line: 1546, type: !60)
!1739 = !DILocation(line: 1546, column: 30, scope: !1729)
!1740 = !DILocalVariable(name: "ret", scope: !1729, file: !57, line: 1548, type: !60)
!1741 = !DILocation(line: 1548, column: 8, scope: !1729)
!1742 = !DILocation(line: 1549, column: 28, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1729, file: !57, line: 1549, column: 8)
!1744 = !DILocation(line: 1549, column: 34, scope: !1743)
!1745 = !DILocation(line: 1549, column: 39, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1743, file: !57, discriminator: 1)
!1747 = !DILocation(line: 1549, column: 47, scope: !1746)
!1748 = !DILocation(line: 1549, column: 52, scope: !1746)
!1749 = !DILocation(line: 1549, column: 34, scope: !1746)
!1750 = !DILocation(line: 1549, column: 26, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1743, file: !57, discriminator: 2)
!1752 = !DILocation(line: 1549, column: 25, scope: !1751)
!1753 = !DILocation(line: 1549, column: 8, scope: !1751)
!1754 = !DILocation(line: 1550, column: 23, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1743, file: !57, line: 1549, column: 71)
!1756 = !DILocation(line: 1550, column: 7, scope: !1755)
!1757 = !DILocation(line: 1551, column: 15, scope: !1755)
!1758 = !DILocation(line: 1551, column: 23, scope: !1755)
!1759 = !DILocation(line: 1551, column: 28, scope: !1755)
!1760 = !DILocation(line: 1551, column: 41, scope: !1755)
!1761 = !DILocation(line: 1551, column: 48, scope: !1755)
!1762 = !DILocation(line: 1551, column: 53, scope: !1755)
!1763 = !DILocation(line: 1551, column: 58, scope: !1755)
!1764 = !DILocation(line: 1551, column: 68, scope: !1755)
!1765 = !DILocation(line: 1551, column: 13, scope: !1755)
!1766 = !DILocation(line: 1551, column: 11, scope: !1755)
!1767 = !DILocation(line: 1552, column: 25, scope: !1755)
!1768 = !DILocation(line: 1552, column: 7, scope: !1755)
!1769 = !DILocation(line: 1553, column: 4, scope: !1755)
!1770 = !DILocation(line: 1554, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1743, file: !57, line: 1553, column: 11)
!1772 = !DILocation(line: 1556, column: 11, scope: !1729)
!1773 = !DILocation(line: 1556, column: 4, scope: !1729)
!1774 = distinct !DISubprogram(name: "AsyncSocket_RecvPartialBlocking", scope: !57, file: !57, line: 1578, type: !258, isLocal: false, isDefinition: true, scopeLine: 1583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1775 = !DILocalVariable(name: "asock", arg: 1, scope: !1774, file: !57, line: 1578, type: !61)
!1776 = !DILocation(line: 1578, column: 46, scope: !1774)
!1777 = !DILocalVariable(name: "buf", arg: 2, scope: !1774, file: !57, line: 1579, type: !100)
!1778 = !DILocation(line: 1579, column: 39, scope: !1774)
!1779 = !DILocalVariable(name: "len", arg: 3, scope: !1774, file: !57, line: 1580, type: !60)
!1780 = !DILocation(line: 1580, column: 37, scope: !1774)
!1781 = !DILocalVariable(name: "received", arg: 4, scope: !1774, file: !57, line: 1581, type: !226)
!1782 = !DILocation(line: 1581, column: 38, scope: !1774)
!1783 = !DILocalVariable(name: "timeoutMS", arg: 5, scope: !1774, file: !57, line: 1582, type: !60)
!1784 = !DILocation(line: 1582, column: 37, scope: !1774)
!1785 = !DILocalVariable(name: "ret", scope: !1774, file: !57, line: 1584, type: !60)
!1786 = !DILocation(line: 1584, column: 8, scope: !1774)
!1787 = !DILocation(line: 1585, column: 28, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1774, file: !57, line: 1585, column: 8)
!1789 = !DILocation(line: 1585, column: 34, scope: !1788)
!1790 = !DILocation(line: 1585, column: 39, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1788, file: !57, discriminator: 1)
!1792 = !DILocation(line: 1585, column: 47, scope: !1791)
!1793 = !DILocation(line: 1585, column: 52, scope: !1791)
!1794 = !DILocation(line: 1585, column: 34, scope: !1791)
!1795 = !DILocation(line: 1585, column: 26, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1788, file: !57, discriminator: 2)
!1797 = !DILocation(line: 1585, column: 25, scope: !1796)
!1798 = !DILocation(line: 1585, column: 8, scope: !1796)
!1799 = !DILocation(line: 1586, column: 23, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1788, file: !57, line: 1585, column: 78)
!1801 = !DILocation(line: 1586, column: 7, scope: !1800)
!1802 = !DILocation(line: 1587, column: 15, scope: !1800)
!1803 = !DILocation(line: 1587, column: 23, scope: !1800)
!1804 = !DILocation(line: 1587, column: 28, scope: !1800)
!1805 = !DILocation(line: 1587, column: 48, scope: !1800)
!1806 = !DILocation(line: 1587, column: 55, scope: !1800)
!1807 = !DILocation(line: 1587, column: 60, scope: !1800)
!1808 = !DILocation(line: 1587, column: 65, scope: !1800)
!1809 = !DILocation(line: 1588, column: 44, scope: !1800)
!1810 = !DILocation(line: 1587, column: 13, scope: !1800)
!1811 = !DILocation(line: 1587, column: 11, scope: !1800)
!1812 = !DILocation(line: 1589, column: 25, scope: !1800)
!1813 = !DILocation(line: 1589, column: 7, scope: !1800)
!1814 = !DILocation(line: 1590, column: 4, scope: !1800)
!1815 = !DILocation(line: 1591, column: 11, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1788, file: !57, line: 1590, column: 11)
!1817 = !DILocation(line: 1593, column: 11, scope: !1774)
!1818 = !DILocation(line: 1593, column: 4, scope: !1774)
!1819 = distinct !DISubprogram(name: "AsyncSocket_SendBlocking", scope: !57, file: !57, line: 1615, type: !258, isLocal: false, isDefinition: true, scopeLine: 1620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1820 = !DILocalVariable(name: "asock", arg: 1, scope: !1819, file: !57, line: 1615, type: !61)
!1821 = !DILocation(line: 1615, column: 39, scope: !1819)
!1822 = !DILocalVariable(name: "buf", arg: 2, scope: !1819, file: !57, line: 1616, type: !100)
!1823 = !DILocation(line: 1616, column: 32, scope: !1819)
!1824 = !DILocalVariable(name: "len", arg: 3, scope: !1819, file: !57, line: 1617, type: !60)
!1825 = !DILocation(line: 1617, column: 30, scope: !1819)
!1826 = !DILocalVariable(name: "sent", arg: 4, scope: !1819, file: !57, line: 1618, type: !226)
!1827 = !DILocation(line: 1618, column: 31, scope: !1819)
!1828 = !DILocalVariable(name: "timeoutMS", arg: 5, scope: !1819, file: !57, line: 1619, type: !60)
!1829 = !DILocation(line: 1619, column: 30, scope: !1819)
!1830 = !DILocalVariable(name: "ret", scope: !1819, file: !57, line: 1621, type: !60)
!1831 = !DILocation(line: 1621, column: 8, scope: !1819)
!1832 = !DILocation(line: 1622, column: 28, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1819, file: !57, line: 1622, column: 8)
!1834 = !DILocation(line: 1622, column: 34, scope: !1833)
!1835 = !DILocation(line: 1622, column: 39, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1833, file: !57, discriminator: 1)
!1837 = !DILocation(line: 1622, column: 47, scope: !1836)
!1838 = !DILocation(line: 1622, column: 52, scope: !1836)
!1839 = !DILocation(line: 1622, column: 34, scope: !1836)
!1840 = !DILocation(line: 1622, column: 26, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1833, file: !57, discriminator: 2)
!1842 = !DILocation(line: 1622, column: 25, scope: !1841)
!1843 = !DILocation(line: 1622, column: 8, scope: !1841)
!1844 = !DILocation(line: 1623, column: 23, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1833, file: !57, line: 1622, column: 71)
!1846 = !DILocation(line: 1623, column: 7, scope: !1845)
!1847 = !DILocation(line: 1624, column: 15, scope: !1845)
!1848 = !DILocation(line: 1624, column: 23, scope: !1845)
!1849 = !DILocation(line: 1624, column: 28, scope: !1845)
!1850 = !DILocation(line: 1624, column: 41, scope: !1845)
!1851 = !DILocation(line: 1624, column: 48, scope: !1845)
!1852 = !DILocation(line: 1624, column: 53, scope: !1845)
!1853 = !DILocation(line: 1624, column: 58, scope: !1845)
!1854 = !DILocation(line: 1624, column: 64, scope: !1845)
!1855 = !DILocation(line: 1624, column: 13, scope: !1845)
!1856 = !DILocation(line: 1624, column: 11, scope: !1845)
!1857 = !DILocation(line: 1625, column: 25, scope: !1845)
!1858 = !DILocation(line: 1625, column: 7, scope: !1845)
!1859 = !DILocation(line: 1626, column: 4, scope: !1845)
!1860 = !DILocation(line: 1627, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1833, file: !57, line: 1626, column: 11)
!1862 = !DILocation(line: 1629, column: 11, scope: !1819)
!1863 = !DILocation(line: 1629, column: 4, scope: !1819)
!1864 = distinct !DISubprogram(name: "AsyncSocket_DoOneMsg", scope: !57, file: !57, line: 1652, type: !264, isLocal: false, isDefinition: true, scopeLine: 1655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1865 = !DILocalVariable(name: "asock", arg: 1, scope: !1864, file: !57, line: 1652, type: !61)
!1866 = !DILocation(line: 1652, column: 35, scope: !1864)
!1867 = !DILocalVariable(name: "read", arg: 2, scope: !1864, file: !57, line: 1653, type: !92)
!1868 = !DILocation(line: 1653, column: 27, scope: !1864)
!1869 = !DILocalVariable(name: "timeoutMS", arg: 3, scope: !1864, file: !57, line: 1654, type: !60)
!1870 = !DILocation(line: 1654, column: 26, scope: !1864)
!1871 = !DILocalVariable(name: "ret", scope: !1864, file: !57, line: 1656, type: !60)
!1872 = !DILocation(line: 1656, column: 8, scope: !1864)
!1873 = !DILocation(line: 1657, column: 28, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !57, line: 1657, column: 8)
!1875 = !DILocation(line: 1657, column: 34, scope: !1874)
!1876 = !DILocation(line: 1657, column: 39, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1874, file: !57, discriminator: 1)
!1878 = !DILocation(line: 1657, column: 47, scope: !1877)
!1879 = !DILocation(line: 1657, column: 52, scope: !1877)
!1880 = !DILocation(line: 1657, column: 34, scope: !1877)
!1881 = !DILocation(line: 1657, column: 26, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1874, file: !57, discriminator: 2)
!1883 = !DILocation(line: 1657, column: 25, scope: !1882)
!1884 = !DILocation(line: 1657, column: 8, scope: !1882)
!1885 = !DILocation(line: 1658, column: 23, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1874, file: !57, line: 1657, column: 67)
!1887 = !DILocation(line: 1658, column: 7, scope: !1886)
!1888 = !DILocation(line: 1659, column: 15, scope: !1886)
!1889 = !DILocation(line: 1659, column: 23, scope: !1886)
!1890 = !DILocation(line: 1659, column: 28, scope: !1886)
!1891 = !DILocation(line: 1659, column: 37, scope: !1886)
!1892 = !DILocation(line: 1659, column: 44, scope: !1886)
!1893 = !DILocation(line: 1659, column: 50, scope: !1886)
!1894 = !DILocation(line: 1659, column: 13, scope: !1886)
!1895 = !DILocation(line: 1659, column: 11, scope: !1886)
!1896 = !DILocation(line: 1660, column: 25, scope: !1886)
!1897 = !DILocation(line: 1660, column: 7, scope: !1886)
!1898 = !DILocation(line: 1661, column: 4, scope: !1886)
!1899 = !DILocation(line: 1662, column: 11, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1874, file: !57, line: 1661, column: 11)
!1901 = !DILocation(line: 1664, column: 11, scope: !1864)
!1902 = !DILocation(line: 1664, column: 4, scope: !1864)
!1903 = distinct !DISubprogram(name: "AsyncSocket_WaitForConnection", scope: !57, file: !57, line: 1686, type: !189, isLocal: false, isDefinition: true, scopeLine: 1688, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1904 = !DILocalVariable(name: "asock", arg: 1, scope: !1903, file: !57, line: 1686, type: !61)
!1905 = !DILocation(line: 1686, column: 44, scope: !1903)
!1906 = !DILocalVariable(name: "timeoutMS", arg: 2, scope: !1903, file: !57, line: 1687, type: !60)
!1907 = !DILocation(line: 1687, column: 35, scope: !1903)
!1908 = !DILocalVariable(name: "ret", scope: !1903, file: !57, line: 1689, type: !60)
!1909 = !DILocation(line: 1689, column: 8, scope: !1903)
!1910 = !DILocation(line: 1690, column: 28, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1903, file: !57, line: 1690, column: 8)
!1912 = !DILocation(line: 1690, column: 34, scope: !1911)
!1913 = !DILocation(line: 1690, column: 39, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1911, file: !57, discriminator: 1)
!1915 = !DILocation(line: 1690, column: 47, scope: !1914)
!1916 = !DILocation(line: 1690, column: 52, scope: !1914)
!1917 = !DILocation(line: 1690, column: 34, scope: !1914)
!1918 = !DILocation(line: 1690, column: 26, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1911, file: !57, discriminator: 2)
!1920 = !DILocation(line: 1690, column: 25, scope: !1919)
!1921 = !DILocation(line: 1690, column: 8, scope: !1919)
!1922 = !DILocation(line: 1691, column: 23, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1911, file: !57, line: 1690, column: 76)
!1924 = !DILocation(line: 1691, column: 7, scope: !1923)
!1925 = !DILocation(line: 1692, column: 15, scope: !1923)
!1926 = !DILocation(line: 1692, column: 23, scope: !1923)
!1927 = !DILocation(line: 1692, column: 28, scope: !1923)
!1928 = !DILocation(line: 1692, column: 46, scope: !1923)
!1929 = !DILocation(line: 1692, column: 53, scope: !1923)
!1930 = !DILocation(line: 1692, column: 13, scope: !1923)
!1931 = !DILocation(line: 1692, column: 11, scope: !1923)
!1932 = !DILocation(line: 1693, column: 25, scope: !1923)
!1933 = !DILocation(line: 1693, column: 7, scope: !1923)
!1934 = !DILocation(line: 1694, column: 4, scope: !1923)
!1935 = !DILocation(line: 1695, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1911, file: !57, line: 1694, column: 11)
!1937 = !DILocation(line: 1697, column: 11, scope: !1903)
!1938 = !DILocation(line: 1697, column: 4, scope: !1903)
!1939 = distinct !DISubprogram(name: "AsyncSocket_WaitForReadMultiple", scope: !57, file: !57, line: 1729, type: !269, isLocal: false, isDefinition: true, scopeLine: 1733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !280)
!1940 = !DILocalVariable(name: "asock", arg: 1, scope: !1939, file: !57, line: 1729, type: !271)
!1941 = !DILocation(line: 1729, column: 47, scope: !1939)
!1942 = !DILocalVariable(name: "numSock", arg: 2, scope: !1939, file: !57, line: 1730, type: !60)
!1943 = !DILocation(line: 1730, column: 37, scope: !1939)
!1944 = !DILocalVariable(name: "timeoutMS", arg: 3, scope: !1939, file: !57, line: 1731, type: !60)
!1945 = !DILocation(line: 1731, column: 37, scope: !1939)
!1946 = !DILocalVariable(name: "outIdx", arg: 4, scope: !1939, file: !57, line: 1732, type: !226)
!1947 = !DILocation(line: 1732, column: 38, scope: !1939)
!1948 = !DILocalVariable(name: "i", scope: !1939, file: !57, line: 1734, type: !60)
!1949 = !DILocation(line: 1734, column: 8, scope: !1939)
!1950 = !DILocalVariable(name: "ret", scope: !1939, file: !57, line: 1735, type: !60)
!1951 = !DILocation(line: 1735, column: 8, scope: !1939)
!1952 = !DILocation(line: 1736, column: 8, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1939, file: !57, line: 1736, column: 8)
!1954 = !DILocation(line: 1736, column: 16, scope: !1953)
!1955 = !DILocation(line: 1736, column: 20, scope: !1953)
!1956 = !DILocation(line: 1736, column: 43, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1953, file: !57, discriminator: 1)
!1958 = !DILocation(line: 1736, column: 52, scope: !1957)
!1959 = !DILocation(line: 1736, column: 57, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1953, file: !57, discriminator: 2)
!1961 = !DILocation(line: 1736, column: 68, scope: !1960)
!1962 = !DILocation(line: 1736, column: 73, scope: !1960)
!1963 = !DILocation(line: 1736, column: 52, scope: !1960)
!1964 = !DILocation(line: 1736, column: 41, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1953, file: !57, discriminator: 3)
!1966 = !DILocation(line: 1736, column: 40, scope: !1965)
!1967 = !DILocation(line: 1736, column: 23, scope: !1965)
!1968 = !DILocation(line: 1736, column: 8, scope: !1965)
!1969 = !DILocation(line: 1737, column: 14, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !57, line: 1737, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1953, file: !57, line: 1736, column: 99)
!1972 = !DILocation(line: 1737, column: 12, scope: !1970)
!1973 = !DILocation(line: 1737, column: 19, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !57, discriminator: 1)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !57, line: 1737, column: 7)
!1976 = !DILocation(line: 1737, column: 23, scope: !1974)
!1977 = !DILocation(line: 1737, column: 21, scope: !1974)
!1978 = !DILocation(line: 1737, column: 7, scope: !1974)
!1979 = !DILocation(line: 1738, column: 32, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !57, line: 1737, column: 37)
!1981 = !DILocation(line: 1738, column: 26, scope: !1980)
!1982 = !DILocation(line: 1738, column: 10, scope: !1980)
!1983 = !DILocation(line: 1739, column: 7, scope: !1980)
!1984 = !DILocation(line: 1737, column: 33, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1975, file: !57, discriminator: 2)
!1986 = !DILocation(line: 1737, column: 7, scope: !1985)
!1987 = distinct !{!1987, !1988}
!1988 = !DILocation(line: 1737, column: 7, scope: !1971)
!1989 = !DILocation(line: 1740, column: 15, scope: !1971)
!1990 = !DILocation(line: 1740, column: 26, scope: !1971)
!1991 = !DILocation(line: 1740, column: 31, scope: !1971)
!1992 = !DILocation(line: 1740, column: 51, scope: !1971)
!1993 = !DILocation(line: 1740, column: 58, scope: !1971)
!1994 = !DILocation(line: 1741, column: 47, scope: !1971)
!1995 = !DILocation(line: 1741, column: 58, scope: !1971)
!1996 = !DILocation(line: 1740, column: 13, scope: !1971)
!1997 = !DILocation(line: 1740, column: 11, scope: !1971)
!1998 = !DILocation(line: 1742, column: 16, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1971, file: !57, line: 1742, column: 7)
!2000 = !DILocation(line: 1742, column: 24, scope: !1999)
!2001 = !DILocation(line: 1742, column: 14, scope: !1999)
!2002 = !DILocation(line: 1742, column: 12, scope: !1999)
!2003 = !DILocation(line: 1742, column: 29, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !57, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !57, line: 1742, column: 7)
!2006 = !DILocation(line: 1742, column: 31, scope: !2004)
!2007 = !DILocation(line: 1742, column: 7, scope: !2004)
!2008 = !DILocation(line: 1743, column: 34, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !57, line: 1742, column: 42)
!2010 = !DILocation(line: 1743, column: 28, scope: !2009)
!2011 = !DILocation(line: 1743, column: 10, scope: !2009)
!2012 = !DILocation(line: 1744, column: 7, scope: !2009)
!2013 = !DILocation(line: 1742, column: 38, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2005, file: !57, discriminator: 2)
!2015 = !DILocation(line: 1742, column: 7, scope: !2014)
!2016 = distinct !{!2016, !2017}
!2017 = !DILocation(line: 1742, column: 7, scope: !1971)
!2018 = !DILocation(line: 1745, column: 4, scope: !1971)
!2019 = !DILocation(line: 1746, column: 11, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1953, file: !57, line: 1745, column: 11)
!2021 = !DILocation(line: 1748, column: 11, scope: !1939)
!2022 = !DILocation(line: 1748, column: 4, scope: !1939)
