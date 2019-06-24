; ModuleID = './asyncSocketBase.o.i'
source_filename = "./asyncSocketBase.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint32 = type { i32 }
%struct.AsyncSocket = type { i32, i32, %struct.AsyncSocketPollParams, i32, i8, i8, void (i32, %struct.AsyncSocket*, i8*)*, i8*, i8*, i32, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*, i8, %struct.AsyncSocketVTable* }
%struct.AsyncSocketPollParams = type { i32, %struct.MXUserRecLock*, %struct.PollClassSet, %struct.IVmdbPoll* }
%struct.MXUserRecLock = type opaque
%struct.PollClassSet = type { i64 }
%struct.IVmdbPoll = type opaque
%struct.AsyncSocketVTable = type { i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32)*, i32 (%struct.AsyncSocket*, i32, i32, i8*, i32*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8**)*, i32 (%struct.AsyncSocket*, i32, i8**)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32, void (%struct.AsyncSocket*, i8*)*)*, i8 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*)*, i32 (%struct.AsyncSocket*, %struct._SSLVerifyParam*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i8 (%struct.AsyncSocket*, i8*)*, i32 (%struct.AsyncSocket*, i8*, void (i8, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i8, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i8*, i8*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, %struct.AsyncSocketNetworkStats*)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32*, i8**, i8**, i8)*, i32 (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*, i32*, i32*)*, i32 (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i16 (%struct.AsyncSocket*)*, i8* (%struct.AsyncSocket*)*, i32 (%struct.AsyncSocket*, i8*, i8*, i8*)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8*, i32, i32*, i32)*, i32 (%struct.AsyncSocket*, i8, i32)*, i32 (%struct.AsyncSocket*, i32)*, i32 (%struct.AsyncSocket**, i32, i32, i32*)*, {}* }
%struct._SSLVerifyParam = type opaque
%struct.AsyncSocketNetworkStats = type { i32, i32, i32, i32, i32, double }

@AsyncSocketInitSocket.nextid = internal global %struct.Atomic_uint32 { i32 1 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"SOCKET %d (%d) \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"owner closed connection in recv callback\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: no registered error handler!\0A\00", align 1
@__FUNCTION__.AsyncSocketSetRecvBuf = private unnamed_addr constant [22 x i8] c"AsyncSocketSetRecvBuf\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Recv called with invalid arguments!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"recv called but state is not connected!\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Recv called -- partially read buffer discarded.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"@&!*@*@(msg.asyncsocket.success)Success\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"@&!*@*@(msg.asyncsocket.generic)Asyncsocket error\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"@&!*@*@(msg.asyncsocket.invalid)Invalid parameters\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"@&!*@*@(msg.asyncsocket.timeout)Time-out error\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"@&!*@*@(msg.asyncsocket.notconnected)Local socket not connected\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"@&!*@*@(msg.asyncsocket.remotedisconnect)Remote disconnected\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"@&!*@*@(msg.asyncsocket.closed)Closed socket\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"@&!*@*@(msg.asyncsocket.connect)Connection error\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"@&!*@*@(msg.asyncsocket.poll)Poll registration error\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"@&!*@*@(msg.asyncsocket.bind)Socket bind error\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"@&!*@*@(msg.asyncsocket.bindaddrinuse)Socket bind address already in use\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"@&!*@*@(msg.asyncsocket.listen)Socket listen error\00", align 1
@.str.18 = private unnamed_addr constant [77 x i8] c"@&!*@*@(msg.asyncsocket.connectssl)Connection error: could not negotiate SSL\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"@&!*@*@(msg.asyncsocket.netunreach)Network unreachable\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"@&!*@*@(msg.asyncsocket.addrunresv)Address unresolvable\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"@&!*@*@(msg.asyncsocket.busy)Concurrent operations on socket\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"%s was passed bad code %d\0A\00", align 1
@__FUNCTION__.AsyncSocket_MsgError = private unnamed_addr constant [21 x i8] c"AsyncSocket_MsgError\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"@&!*@*@(msg.asyncsocket.unknown)Unknown error\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"@&!*@*@X\00", align 1

; Function Attrs: nounwind uwtable
define void @AsyncSocketLock(%struct.AsyncSocket*) #0 !dbg !270 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !271, metadata !272), !dbg !273
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !274
  call void @AsyncSocketInternalIncRef(%struct.AsyncSocket* %3, i8 signext 1), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @AsyncSocketInternalIncRef(%struct.AsyncSocket*, i8 signext) #2 !dbg !277 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8, align 1
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !280, metadata !272), !dbg !281
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !282, metadata !272), !dbg !283
  %5 = load i8, i8* %4, align 1, !dbg !284
  %6 = sext i8 %5 to i32, !dbg !284
  %7 = icmp ne i32 %6, 0, !dbg !284
  br i1 %7, label %8, label %19, !dbg !286

; <label>:8:                                      ; preds = %2
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !287
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 2, !dbg !289
  %11 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %10, i32 0, i32 1, !dbg !290
  %12 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %11, align 8, !dbg !290
  %13 = icmp ne %struct.MXUserRecLock* %12, null, !dbg !287
  br i1 %13, label %14, label %19, !dbg !291

; <label>:14:                                     ; preds = %8
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !292
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 2, !dbg !294
  %17 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %16, i32 0, i32 1, !dbg !295
  %18 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %17, align 8, !dbg !295
  call void @MXUser_AcquireRecLock(%struct.MXUserRecLock* %18), !dbg !296
  br label %19, !dbg !297

; <label>:19:                                     ; preds = %14, %8, %2
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !298
  %21 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %20, i32 0, i32 1, !dbg !299
  %22 = load i32, i32* %21, align 4, !dbg !300
  %23 = add i32 %22, 1, !dbg !300
  store i32 %23, i32* %21, align 4, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketUnlock(%struct.AsyncSocket*) #0 !dbg !302 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !303, metadata !272), !dbg !304
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !305
  call void @AsyncSocketInternalDecRef(%struct.AsyncSocket* %3, i8 signext 1), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @AsyncSocketInternalDecRef(%struct.AsyncSocket*, i8 signext) #2 !dbg !308 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !309, metadata !272), !dbg !310
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !311, metadata !272), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %5, metadata !313, metadata !272), !dbg !314
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !315
  %7 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %6, i32 0, i32 1, !dbg !316
  %8 = load i32, i32* %7, align 4, !dbg !317
  %9 = add i32 %8, -1, !dbg !317
  store i32 %9, i32* %7, align 4, !dbg !317
  store i32 %9, i32* %5, align 4, !dbg !314
  %10 = load i8, i8* %4, align 1, !dbg !318
  %11 = sext i8 %10 to i32, !dbg !318
  %12 = icmp ne i32 %11, 0, !dbg !318
  br i1 %12, label %13, label %24, !dbg !320

; <label>:13:                                     ; preds = %2
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !321
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 2, !dbg !323
  %16 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %15, i32 0, i32 1, !dbg !324
  %17 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %16, align 8, !dbg !324
  %18 = icmp ne %struct.MXUserRecLock* %17, null, !dbg !321
  br i1 %18, label %19, label %24, !dbg !325

; <label>:19:                                     ; preds = %13
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !326
  %21 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %20, i32 0, i32 2, !dbg !328
  %22 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %21, i32 0, i32 1, !dbg !329
  %23 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %22, align 8, !dbg !329
  call void @MXUser_ReleaseRecLock(%struct.MXUserRecLock* %23), !dbg !330
  br label %24, !dbg !331

; <label>:24:                                     ; preds = %19, %13, %2
  %25 = load i32, i32* %5, align 4, !dbg !332
  %26 = icmp eq i32 %25, 0, !dbg !334
  %27 = zext i1 %26 to i32, !dbg !334
  %28 = sext i32 %27 to i64, !dbg !335
  %29 = icmp ne i64 %28, 0, !dbg !336
  br i1 %29, label %30, label %40, !dbg !337

; <label>:30:                                     ; preds = %24
  br label %31, !dbg !338, !llvm.loop !340

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !341

; <label>:32:                                     ; preds = %31
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !344
  %34 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %33, i32 0, i32 14, !dbg !345
  %35 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %34, align 8, !dbg !345
  %36 = getelementptr inbounds %struct.AsyncSocketVTable, %struct.AsyncSocketVTable* %35, i32 0, i32 37, !dbg !346
  %37 = bitcast {}** %36 to void (%struct.AsyncSocket*)**, !dbg !346
  %38 = load void (%struct.AsyncSocket*)*, void (%struct.AsyncSocket*)** %37, align 8, !dbg !346
  %39 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !347
  call void %38(%struct.AsyncSocket* %39), !dbg !348
  br label %43, !dbg !349

; <label>:40:                                     ; preds = %24
  br label %41, !dbg !350, !llvm.loop !352

; <label>:41:                                     ; preds = %40
  br label %42, !dbg !353

; <label>:42:                                     ; preds = %41
  br label %43

; <label>:43:                                     ; preds = %42, %32
  ret void, !dbg !356
}

; Function Attrs: nounwind uwtable
define signext i8 @AsyncSocketIsLocked(%struct.AsyncSocket*) #0 !dbg !357 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !360, metadata !272), !dbg !361
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !362
  %5 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %4, i32 0, i32 2, !dbg !364
  %6 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %5, i32 0, i32 1, !dbg !365
  %7 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %6, align 8, !dbg !365
  %8 = icmp ne %struct.MXUserRecLock* %7, null, !dbg !362
  br i1 %8, label %9, label %19, !dbg !366

; <label>:9:                                      ; preds = %1
  %10 = call signext i8 @Poll_LockingEnabled(), !dbg !367
  %11 = sext i8 %10 to i32, !dbg !367
  %12 = icmp ne i32 %11, 0, !dbg !367
  br i1 %12, label %13, label %19, !dbg !369

; <label>:13:                                     ; preds = %9
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !370
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 2, !dbg !372
  %16 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %15, i32 0, i32 1, !dbg !373
  %17 = load %struct.MXUserRecLock*, %struct.MXUserRecLock** %16, align 8, !dbg !373
  %18 = call signext i8 @MXUser_IsCurThreadHoldingRecLock(%struct.MXUserRecLock* %17), !dbg !374
  store i8 %18, i8* %2, align 1, !dbg !375
  br label %20, !dbg !375

; <label>:19:                                     ; preds = %9, %1
  store i8 1, i8* %2, align 1, !dbg !376
  br label %20, !dbg !376

; <label>:20:                                     ; preds = %19, %13
  %21 = load i8, i8* %2, align 1, !dbg !377
  ret i8 %21, !dbg !377
}

declare signext i8 @Poll_LockingEnabled() #3

declare signext i8 @MXUser_IsCurThreadHoldingRecLock(%struct.MXUserRecLock*) #3

; Function Attrs: nounwind uwtable
define void @AsyncSocketAddRef(%struct.AsyncSocket*) #0 !dbg !378 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !379, metadata !272), !dbg !380
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !381
  call void @AsyncSocketInternalIncRef(%struct.AsyncSocket* %3, i8 signext 0), !dbg !382
  ret void, !dbg !383
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketRelease(%struct.AsyncSocket*) #0 !dbg !384 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !385, metadata !272), !dbg !386
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !387
  call void @AsyncSocketInternalDecRef(%struct.AsyncSocket* %3, i8 signext 0), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocketGetState(%struct.AsyncSocket*) #0 !dbg !390 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !391, metadata !272), !dbg !392
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !393
  %4 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %3, i32 0, i32 3, !dbg !394
  %5 = load i32, i32* %4, align 8, !dbg !394
  ret i32 %5, !dbg !395
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketSetState(%struct.AsyncSocket*, i32) #0 !dbg !396 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !399, metadata !272), !dbg !400
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !401, metadata !272), !dbg !402
  %5 = load i32, i32* %4, align 4, !dbg !403
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !404
  %7 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %6, i32 0, i32 3, !dbg !405
  store i32 %5, i32* %7, align 8, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: nounwind uwtable
define %struct.AsyncSocketPollParams* @AsyncSocketGetPollParams(%struct.AsyncSocket*) #0 !dbg !408 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !411, metadata !272), !dbg !412
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !413
  %4 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %3, i32 0, i32 2, !dbg !414
  ret %struct.AsyncSocketPollParams* %4, !dbg !415
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketInitSocket(%struct.AsyncSocket*, %struct.AsyncSocketPollParams*, %struct.AsyncSocketVTable*) #0 !dbg !30 {
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca %struct.AsyncSocketPollParams*, align 8
  %6 = alloca %struct.AsyncSocketVTable*, align 8
  %7 = alloca %struct.PollClassSet, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !416, metadata !272), !dbg !417
  store %struct.AsyncSocketPollParams* %1, %struct.AsyncSocketPollParams** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocketPollParams** %5, metadata !418, metadata !272), !dbg !419
  store %struct.AsyncSocketVTable* %2, %struct.AsyncSocketVTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocketVTable** %6, metadata !420, metadata !272), !dbg !421
  %8 = call i32 @Atomic_ReadInc32(%struct.Atomic_uint32* @AsyncSocketInitSocket.nextid), !dbg !422
  %9 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !423
  %10 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %9, i32 0, i32 0, !dbg !424
  store i32 %8, i32* %10, align 8, !dbg !425
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !426
  %12 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %11, i32 0, i32 1, !dbg !427
  store i32 1, i32* %12, align 4, !dbg !428
  %13 = load %struct.AsyncSocketVTable*, %struct.AsyncSocketVTable** %6, align 8, !dbg !429
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !430
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 14, !dbg !431
  store %struct.AsyncSocketVTable* %13, %struct.AsyncSocketVTable** %15, align 8, !dbg !432
  %16 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !433
  %17 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %16, i32 0, i32 4, !dbg !434
  store i8 1, i8* %17, align 4, !dbg !435
  %18 = load %struct.AsyncSocketPollParams*, %struct.AsyncSocketPollParams** %5, align 8, !dbg !436
  %19 = icmp ne %struct.AsyncSocketPollParams* %18, null, !dbg !436
  br i1 %19, label %20, label %26, !dbg !438

; <label>:20:                                     ; preds = %3
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !439
  %22 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %21, i32 0, i32 2, !dbg !441
  %23 = load %struct.AsyncSocketPollParams*, %struct.AsyncSocketPollParams** %5, align 8, !dbg !442
  %24 = bitcast %struct.AsyncSocketPollParams* %22 to i8*, !dbg !443
  %25 = bitcast %struct.AsyncSocketPollParams* %23 to i8*, !dbg !443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false), !dbg !443
  br label %43, !dbg !444

; <label>:26:                                     ; preds = %3
  %27 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !445
  %28 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %27, i32 0, i32 2, !dbg !447
  %29 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %28, i32 0, i32 2, !dbg !448
  %30 = call i64 @PollClassSet_Singleton(i32 0), !dbg !449
  %31 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %7, i32 0, i32 0, !dbg !449
  store i64 %30, i64* %31, align 8, !dbg !449
  %32 = bitcast %struct.PollClassSet* %29 to i8*, !dbg !449
  %33 = bitcast %struct.PollClassSet* %7 to i8*, !dbg !449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 8, i1 false), !dbg !450
  %34 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !452
  %35 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %34, i32 0, i32 2, !dbg !453
  %36 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %35, i32 0, i32 0, !dbg !454
  store i32 0, i32* %36, align 8, !dbg !455
  %37 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !456
  %38 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %37, i32 0, i32 2, !dbg !457
  %39 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %38, i32 0, i32 1, !dbg !458
  store %struct.MXUserRecLock* null, %struct.MXUserRecLock** %39, align 8, !dbg !459
  %40 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !460
  %41 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %40, i32 0, i32 2, !dbg !461
  %42 = getelementptr inbounds %struct.AsyncSocketPollParams, %struct.AsyncSocketPollParams* %41, i32 0, i32 3, !dbg !462
  store %struct.IVmdbPoll* null, %struct.IVmdbPoll** %42, align 8, !dbg !463
  br label %43

; <label>:43:                                     ; preds = %26, %20
  ret void, !dbg !464
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadInc32(%struct.Atomic_uint32*) #2 !dbg !465 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !469, metadata !272), !dbg !470
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !471
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 1), !dbg !472
  ret i32 %4, !dbg !473
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PollClassSet_Singleton(i32) #2 !dbg !474 {
  %2 = alloca %struct.PollClassSet, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.PollClassSet, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !478, metadata !272), !dbg !479
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %4, metadata !480, metadata !272), !dbg !481
  %5 = call i64 @PollClassSet_Empty(), !dbg !482
  %6 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0, !dbg !482
  store i64 %5, i64* %6, align 8, !dbg !482
  br label %7, !dbg !483, !llvm.loop !484

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !485

; <label>:8:                                      ; preds = %7
  %9 = load i32, i32* %3, align 4, !dbg !488
  %10 = zext i32 %9 to i64, !dbg !489
  %11 = shl i64 1, %10, !dbg !489
  %12 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %4, i32 0, i32 0, !dbg !490
  store i64 %11, i64* %12, align 8, !dbg !491
  %13 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !492
  %14 = bitcast %struct.PollClassSet* %4 to i8*, !dbg !492
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false), !dbg !492
  %15 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %2, i32 0, i32 0, !dbg !493
  %16 = load i64, i64* %15, align 8, !dbg !493
  ret i64 %16, !dbg !493
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketTeardownSocket(%struct.AsyncSocket*) #0 !dbg !494 {
  %2 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %2, metadata !495, metadata !272), !dbg !496
  %3 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !497
  %4 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %3, i32 0, i32 4, !dbg !498
  store i8 0, i8* %4, align 4, !dbg !499
  %5 = load %struct.AsyncSocket*, %struct.AsyncSocket** %2, align 8, !dbg !500
  call void @AsyncSocketRelease(%struct.AsyncSocket* %5), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_Init() #0 !dbg !503 {
  %1 = call i32 @AsyncTCPSocket_Init(), !dbg !506
  ret i32 %1, !dbg !507
}

declare i32 @AsyncTCPSocket_Init() #3

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_GetID(%struct.AsyncSocket*) #0 !dbg !508 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AsyncSocket*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !509, metadata !272), !dbg !510
  %4 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !511
  %5 = icmp ne %struct.AsyncSocket* %4, null, !dbg !511
  br i1 %5, label %7, label %6, !dbg !513

; <label>:6:                                      ; preds = %1
  store i32 5, i32* %2, align 4, !dbg !514
  br label %11, !dbg !514

; <label>:7:                                      ; preds = %1
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !516
  %9 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %8, i32 0, i32 0, !dbg !518
  %10 = load i32, i32* %9, align 8, !dbg !518
  store i32 %10, i32* %2, align 4, !dbg !519
  br label %11, !dbg !519

; <label>:11:                                     ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !520
  ret i32 %12, !dbg !520
}

; Function Attrs: nounwind uwtable
define i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket*, void (i32, %struct.AsyncSocket*, i8*)*, i8*) #0 !dbg !521 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca void (i32, %struct.AsyncSocket*, i8*)*, align 8
  %7 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !524, metadata !272), !dbg !525
  store void (i32, %struct.AsyncSocket*, i8*)* %1, void (i32, %struct.AsyncSocket*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (i32, %struct.AsyncSocket*, i8*)** %6, metadata !526, metadata !272), !dbg !527
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !528, metadata !272), !dbg !529
  %8 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !530
  %9 = icmp ne %struct.AsyncSocket* %8, null, !dbg !530
  br i1 %9, label %11, label %10, !dbg !532

; <label>:10:                                     ; preds = %3
  store i32 5, i32* %4, align 4, !dbg !533
  br label %20, !dbg !533

; <label>:11:                                     ; preds = %3
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !535
  call void @AsyncSocketLock(%struct.AsyncSocket* %12), !dbg !537
  %13 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %6, align 8, !dbg !538
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !539
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 6, !dbg !540
  store void (i32, %struct.AsyncSocket*, i8*)* %13, void (i32, %struct.AsyncSocket*, i8*)** %15, align 8, !dbg !541
  %16 = load i8*, i8** %7, align 8, !dbg !542
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !543
  %18 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %17, i32 0, i32 7, !dbg !544
  store i8* %16, i8** %18, align 8, !dbg !545
  %19 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !546
  call void @AsyncSocketUnlock(%struct.AsyncSocket* %19), !dbg !547
  store i32 0, i32* %4, align 4, !dbg !548
  br label %20, !dbg !548

; <label>:20:                                     ; preds = %11, %10
  %21 = load i32, i32* %4, align 4, !dbg !549
  ret i32 %21, !dbg !549
}

; Function Attrs: nounwind uwtable
define void @AsyncSocketHandleError(%struct.AsyncSocket*, i32) #0 !dbg !550 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i32, align 4
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !553, metadata !272), !dbg !554
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !555, metadata !272), !dbg !556
  %5 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !557
  %6 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %5, i32 0, i32 5, !dbg !558
  store i8 1, i8* %6, align 1, !dbg !559
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !560
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 6, !dbg !562
  %9 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %8, align 8, !dbg !562
  %10 = icmp ne void (i32, %struct.AsyncSocket*, i8*)* %9, null, !dbg !560
  br i1 %10, label %11, label %22, !dbg !563

; <label>:11:                                     ; preds = %2
  br label %12, !dbg !564, !llvm.loop !566

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !567

; <label>:13:                                     ; preds = %12
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !570
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 6, !dbg !571
  %16 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %15, align 8, !dbg !571
  %17 = load i32, i32* %4, align 4, !dbg !572
  %18 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !573
  %19 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !574
  %20 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %19, i32 0, i32 7, !dbg !575
  %21 = load i8*, i8** %20, align 8, !dbg !575
  call void %16(i32 %17, %struct.AsyncSocket* %18, i8* %21), !dbg !570
  br label %27, !dbg !576

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !577, !llvm.loop !579

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !580

; <label>:24:                                     ; preds = %23
  %25 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !583
  %26 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %25), !dbg !584
  br label %27

; <label>:27:                                     ; preds = %24, %13
  ret void, !dbg !585
}

declare i32 @AsyncSocket_Close(%struct.AsyncSocket*) #3

; Function Attrs: nounwind uwtable
define signext i8 @AsyncSocketCheckAndDispatchRecv(%struct.AsyncSocket*, i32*) #0 !dbg !586 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.AsyncSocket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %4, metadata !589, metadata !272), !dbg !590
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !591, metadata !272), !dbg !592
  %7 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !593
  %8 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %7, i32 0, i32 9, !dbg !595
  %9 = load i32, i32* %8, align 8, !dbg !595
  %10 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !596
  %11 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %10, i32 0, i32 10, !dbg !597
  %12 = load i32, i32* %11, align 4, !dbg !597
  %13 = icmp eq i32 %9, %12, !dbg !598
  br i1 %13, label %20, label %14, !dbg !599

; <label>:14:                                     ; preds = %2
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !600
  %16 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %15, i32 0, i32 13, !dbg !602
  %17 = load i8, i8* %16, align 8, !dbg !602
  %18 = sext i8 %17 to i32, !dbg !600
  %19 = icmp ne i32 %18, 0, !dbg !600
  br i1 %19, label %20, label %77, !dbg !603

; <label>:20:                                     ; preds = %14, %2
  call void @llvm.dbg.declare(metadata i8** %6, metadata !604, metadata !272), !dbg !606
  %21 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !607
  %22 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %21, i32 0, i32 8, !dbg !608
  %23 = load i8*, i8** %22, align 8, !dbg !608
  store i8* %23, i8** %6, align 8, !dbg !606
  br label %24, !dbg !609, !llvm.loop !610

; <label>:24:                                     ; preds = %20
  br label %25, !dbg !611

; <label>:25:                                     ; preds = %24
  %26 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !614
  %27 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %26, i32 0, i32 8, !dbg !615
  store i8* null, i8** %27, align 8, !dbg !616
  %28 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !617
  %29 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %28, i32 0, i32 11, !dbg !618
  %30 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %29, align 8, !dbg !618
  %31 = load i8*, i8** %6, align 8, !dbg !619
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !620
  %33 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %32, i32 0, i32 9, !dbg !621
  %34 = load i32, i32* %33, align 8, !dbg !621
  %35 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !622
  %36 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !623
  %37 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %36, i32 0, i32 12, !dbg !624
  %38 = load i8*, i8** %37, align 8, !dbg !624
  call void %30(i8* %31, i32 %34, %struct.AsyncSocket* %35, i8* %38), !dbg !617
  %39 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !625
  %40 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %39, i32 0, i32 3, !dbg !627
  %41 = load i32, i32* %40, align 8, !dbg !627
  %42 = icmp eq i32 %41, 4, !dbg !628
  br i1 %42, label %43, label %51, !dbg !629

; <label>:43:                                     ; preds = %25
  br label %44, !dbg !630, !llvm.loop !632

; <label>:44:                                     ; preds = %43
  %45 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !633
  %46 = call i32 @AsyncSocket_GetID(%struct.AsyncSocket* %45), !dbg !636
  %47 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !637
  %48 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %47), !dbg !638
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %46, i32 %48), !dbg !640
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)), !dbg !642
  br label %49, !dbg !644

; <label>:49:                                     ; preds = %44
  %50 = load i32*, i32** %5, align 8, !dbg !645
  store i32 9, i32* %50, align 4, !dbg !646
  store i8 1, i8* %3, align 1, !dbg !647
  br label %79, !dbg !647

; <label>:51:                                     ; preds = %25
  %52 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !648
  %53 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %52, i32 0, i32 11, !dbg !650
  %54 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %53, align 8, !dbg !650
  %55 = icmp eq void (i8*, i32, %struct.AsyncSocket*, i8*)* %54, null, !dbg !651
  br i1 %55, label %56, label %63, !dbg !652

; <label>:56:                                     ; preds = %51
  %57 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !653
  %58 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %57, i32 0, i32 10, !dbg !655
  %59 = load i32, i32* %58, align 4, !dbg !655
  %60 = icmp eq i32 %59, 0, !dbg !656
  br i1 %60, label %61, label %63, !dbg !657

; <label>:61:                                     ; preds = %56
  %62 = load i32*, i32** %5, align 8, !dbg !658
  store i32 0, i32* %62, align 4, !dbg !660
  store i8 1, i8* %3, align 1, !dbg !661
  br label %79, !dbg !661

; <label>:63:                                     ; preds = %56, %51
  %64 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !662
  %65 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %64, i32 0, i32 9, !dbg !664
  %66 = load i32, i32* %65, align 8, !dbg !664
  %67 = icmp sgt i32 %66, 0, !dbg !665
  br i1 %67, label %68, label %75, !dbg !666

; <label>:68:                                     ; preds = %63
  %69 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !667
  %70 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %69, i32 0, i32 9, !dbg !669
  store i32 0, i32* %70, align 8, !dbg !670
  %71 = load i8*, i8** %6, align 8, !dbg !671
  %72 = load %struct.AsyncSocket*, %struct.AsyncSocket** %4, align 8, !dbg !672
  %73 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %72, i32 0, i32 8, !dbg !673
  store i8* %71, i8** %73, align 8, !dbg !674
  %74 = load i32*, i32** %5, align 8, !dbg !675
  store i32 0, i32* %74, align 4, !dbg !676
  store i8 0, i8* %3, align 1, !dbg !677
  br label %79, !dbg !677

; <label>:75:                                     ; preds = %63
  %76 = load i32*, i32** %5, align 8, !dbg !678
  store i32 0, i32* %76, align 4, !dbg !680
  store i8 0, i8* %3, align 1, !dbg !681
  br label %79, !dbg !681

; <label>:77:                                     ; preds = %14
  %78 = load i32*, i32** %5, align 8, !dbg !682
  store i32 0, i32* %78, align 4, !dbg !684
  store i8 0, i8* %3, align 1, !dbg !685
  br label %79, !dbg !685

; <label>:79:                                     ; preds = %77, %75, %68, %61, %49
  %80 = load i8, i8* %3, align 1, !dbg !686
  ret i8 %80, !dbg !686
}

declare void @Log(i8*, ...) #3

declare i32 @AsyncSocket_GetFd(%struct.AsyncSocket*) #3

; Function Attrs: nounwind uwtable
define i32 @AsyncSocketSetRecvBuf(%struct.AsyncSocket*, i8*, i32, i8 signext, i8*, i8*) #0 !dbg !687 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.AsyncSocket*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %8, metadata !688, metadata !272), !dbg !689
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !690, metadata !272), !dbg !691
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !692, metadata !272), !dbg !693
  store i8 %3, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !694, metadata !272), !dbg !695
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !696, metadata !272), !dbg !697
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !698, metadata !272), !dbg !699
  %14 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !700
  %15 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %14, i32 0, i32 6, !dbg !702
  %16 = load void (i32, %struct.AsyncSocket*, i8*)*, void (i32, %struct.AsyncSocket*, i8*)** %15, align 8, !dbg !702
  %17 = icmp ne void (i32, %struct.AsyncSocket*, i8*)* %16, null, !dbg !700
  br i1 %17, label %25, label %18, !dbg !703

; <label>:18:                                     ; preds = %6
  br label %19, !dbg !704, !llvm.loop !706

; <label>:19:                                     ; preds = %18
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !707
  %21 = call i32 @AsyncSocket_GetID(%struct.AsyncSocket* %20), !dbg !710
  %22 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !711
  %23 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %22), !dbg !712
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %21, i32 %23), !dbg !714
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.AsyncSocketSetRecvBuf, i32 0, i32 0)), !dbg !716
  br label %24, !dbg !718

; <label>:24:                                     ; preds = %19
  store i32 5, i32* %7, align 4, !dbg !719
  br label %88, !dbg !719

; <label>:25:                                     ; preds = %6
  %26 = load i8*, i8** %9, align 8, !dbg !720
  %27 = icmp ne i8* %26, null, !dbg !720
  br i1 %27, label %28, label %34, !dbg !722

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %12, align 8, !dbg !723
  %30 = icmp ne i8* %29, null, !dbg !723
  br i1 %30, label %31, label %34, !dbg !725

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %10, align 4, !dbg !726
  %33 = icmp sle i32 %32, 0, !dbg !728
  br i1 %33, label %34, label %41, !dbg !729

; <label>:34:                                     ; preds = %31, %28, %25
  br label %35, !dbg !730, !llvm.loop !732

; <label>:35:                                     ; preds = %34
  %36 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !733
  %37 = call i32 @AsyncSocket_GetID(%struct.AsyncSocket* %36), !dbg !736
  %38 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !737
  %39 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %38), !dbg !738
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %37, i32 %39), !dbg !740
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)), !dbg !742
  br label %40, !dbg !744

; <label>:40:                                     ; preds = %35
  store i32 5, i32* %7, align 4, !dbg !745
  br label %88, !dbg !745

; <label>:41:                                     ; preds = %31
  %42 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !746
  %43 = call i32 @AsyncSocketGetState(%struct.AsyncSocket* %42), !dbg !748
  %44 = icmp ne i32 %43, 2, !dbg !749
  br i1 %44, label %45, label %52, !dbg !750

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !751, !llvm.loop !753

; <label>:46:                                     ; preds = %45
  %47 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !754
  %48 = call i32 @AsyncSocket_GetID(%struct.AsyncSocket* %47), !dbg !757
  %49 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !758
  %50 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %49), !dbg !759
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %48, i32 %50), !dbg !761
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0)), !dbg !763
  br label %51, !dbg !765

; <label>:51:                                     ; preds = %46
  store i32 3, i32* %7, align 4, !dbg !766
  br label %88, !dbg !766

; <label>:52:                                     ; preds = %41
  %53 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !767
  %54 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %53, i32 0, i32 8, !dbg !769
  %55 = load i8*, i8** %54, align 8, !dbg !769
  %56 = icmp ne i8* %55, null, !dbg !767
  br i1 %56, label %57, label %69, !dbg !770

; <label>:57:                                     ; preds = %52
  %58 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !771
  %59 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %58, i32 0, i32 9, !dbg !773
  %60 = load i32, i32* %59, align 8, !dbg !773
  %61 = icmp ne i32 %60, 0, !dbg !774
  br i1 %61, label %62, label %69, !dbg !775

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !776, !llvm.loop !778

; <label>:63:                                     ; preds = %62
  %64 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !779
  %65 = call i32 @AsyncSocket_GetID(%struct.AsyncSocket* %64), !dbg !782
  %66 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !783
  %67 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %66), !dbg !784
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %65, i32 %67), !dbg !786
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0)), !dbg !788
  br label %68, !dbg !790

; <label>:68:                                     ; preds = %63
  br label %69, !dbg !791

; <label>:69:                                     ; preds = %68, %57, %52
  %70 = load i8*, i8** %9, align 8, !dbg !792
  %71 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !793
  %72 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %71, i32 0, i32 8, !dbg !794
  store i8* %70, i8** %72, align 8, !dbg !795
  %73 = load i32, i32* %10, align 4, !dbg !796
  %74 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !797
  %75 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %74, i32 0, i32 10, !dbg !798
  store i32 %73, i32* %75, align 4, !dbg !799
  %76 = load i8, i8* %11, align 1, !dbg !800
  %77 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !801
  %78 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %77, i32 0, i32 13, !dbg !802
  store i8 %76, i8* %78, align 8, !dbg !803
  %79 = load i8*, i8** %12, align 8, !dbg !804
  %80 = bitcast i8* %79 to void (i8*, i32, %struct.AsyncSocket*, i8*)*, !dbg !804
  %81 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !805
  %82 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %81, i32 0, i32 11, !dbg !806
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* %80, void (i8*, i32, %struct.AsyncSocket*, i8*)** %82, align 8, !dbg !807
  %83 = load i8*, i8** %13, align 8, !dbg !808
  %84 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !809
  %85 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %84, i32 0, i32 12, !dbg !810
  store i8* %83, i8** %85, align 8, !dbg !811
  %86 = load %struct.AsyncSocket*, %struct.AsyncSocket** %8, align 8, !dbg !812
  %87 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %86, i32 0, i32 9, !dbg !813
  store i32 0, i32* %87, align 8, !dbg !814
  store i32 0, i32* %7, align 4, !dbg !815
  br label %88, !dbg !815

; <label>:88:                                     ; preds = %69, %51, %40, %24
  %89 = load i32, i32* %7, align 4, !dbg !816
  ret i32 %89, !dbg !816
}

declare void @Warning(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @AsyncSocketCancelRecv(%struct.AsyncSocket*, i32*, i8**, i8**) #0 !dbg !817 {
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !820, metadata !272), !dbg !821
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !822, metadata !272), !dbg !823
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !824, metadata !272), !dbg !825
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !826, metadata !272), !dbg !827
  %9 = load i32*, i32** %6, align 8, !dbg !828
  %10 = icmp ne i32* %9, null, !dbg !828
  br i1 %10, label %11, label %16, !dbg !830

; <label>:11:                                     ; preds = %4
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !831
  %13 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %12, i32 0, i32 9, !dbg !833
  %14 = load i32, i32* %13, align 8, !dbg !833
  %15 = load i32*, i32** %6, align 8, !dbg !834
  store i32 %14, i32* %15, align 4, !dbg !835
  br label %16, !dbg !836

; <label>:16:                                     ; preds = %11, %4
  %17 = load i8**, i8*** %8, align 8, !dbg !837
  %18 = icmp ne i8** %17, null, !dbg !837
  br i1 %18, label %19, label %25, !dbg !839

; <label>:19:                                     ; preds = %16
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !840
  %21 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %20, i32 0, i32 11, !dbg !842
  %22 = load void (i8*, i32, %struct.AsyncSocket*, i8*)*, void (i8*, i32, %struct.AsyncSocket*, i8*)** %21, align 8, !dbg !842
  %23 = bitcast void (i8*, i32, %struct.AsyncSocket*, i8*)* %22 to i8*, !dbg !840
  %24 = load i8**, i8*** %8, align 8, !dbg !843
  store i8* %23, i8** %24, align 8, !dbg !844
  br label %25, !dbg !845

; <label>:25:                                     ; preds = %19, %16
  %26 = load i8**, i8*** %7, align 8, !dbg !846
  %27 = icmp ne i8** %26, null, !dbg !846
  br i1 %27, label %28, label %33, !dbg !848

; <label>:28:                                     ; preds = %25
  %29 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !849
  %30 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %29, i32 0, i32 8, !dbg !851
  %31 = load i8*, i8** %30, align 8, !dbg !851
  %32 = load i8**, i8*** %7, align 8, !dbg !852
  store i8* %31, i8** %32, align 8, !dbg !853
  br label %33, !dbg !854

; <label>:33:                                     ; preds = %28, %25
  %34 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !855
  %35 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %34, i32 0, i32 8, !dbg !856
  store i8* null, i8** %35, align 8, !dbg !857
  %36 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !858
  %37 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %36, i32 0, i32 11, !dbg !859
  store void (i8*, i32, %struct.AsyncSocket*, i8*)* null, void (i8*, i32, %struct.AsyncSocket*, i8*)** %37, align 8, !dbg !860
  %38 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !861
  %39 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %38, i32 0, i32 9, !dbg !862
  store i32 0, i32* %39, align 8, !dbg !863
  %40 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !864
  %41 = getelementptr inbounds %struct.AsyncSocket, %struct.AsyncSocket* %40, i32 0, i32 10, !dbg !865
  store i32 0, i32* %41, align 4, !dbg !866
  ret void, !dbg !867
}

; Function Attrs: nounwind uwtable
define i8* @AsyncSocket_Err2String(i32) #0 !dbg !868 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !871, metadata !272), !dbg !872
  %3 = load i32, i32* %2, align 4, !dbg !873
  %4 = call i8* @AsyncSocket_MsgError(i32 %3), !dbg !874
  %5 = call i8* @Msg_StripMSGID(i8* %4), !dbg !875
  ret i8* %5, !dbg !877
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Msg_StripMSGID(i8*) #2 !dbg !878 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !882, metadata !272), !dbg !883
  call void @llvm.dbg.declare(metadata i8** %4, metadata !884, metadata !272), !dbg !885
  %5 = load i8*, i8** %3, align 8, !dbg !886
  store i8* %5, i8** %4, align 8, !dbg !885
  %6 = load i8*, i8** %4, align 8, !dbg !887
  %7 = icmp ne i8* %6, null, !dbg !889
  br i1 %7, label %8, label %26, !dbg !890

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %4, align 8, !dbg !891
  %10 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 7) #6, !dbg !893
  %11 = icmp eq i32 %10, 0, !dbg !894
  br i1 %11, label %12, label %26, !dbg !895

; <label>:12:                                     ; preds = %8
  %13 = load i8*, i8** %4, align 8, !dbg !896
  %14 = getelementptr inbounds i8, i8* %13, i64 7, !dbg !896
  store i8* %14, i8** %4, align 8, !dbg !896
  %15 = load i8, i8* %14, align 1, !dbg !897
  %16 = sext i8 %15 to i32, !dbg !897
  %17 = icmp eq i32 %16, 40, !dbg !898
  br i1 %17, label %18, label %26, !dbg !899

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !900
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !901
  %21 = call i8* @strchr(i8* %20, i32 41) #6, !dbg !902
  store i8* %21, i8** %4, align 8, !dbg !903
  %22 = icmp ne i8* %21, null, !dbg !904
  br i1 %22, label %23, label %26, !dbg !905

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !907
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !909
  store i8* %25, i8** %2, align 8, !dbg !910
  br label %28, !dbg !910

; <label>:26:                                     ; preds = %18, %12, %8, %1
  %27 = load i8*, i8** %3, align 8, !dbg !911
  store i8* %27, i8** %2, align 8, !dbg !912
  br label %28, !dbg !912

; <label>:28:                                     ; preds = %26, %23
  %29 = load i8*, i8** %2, align 8, !dbg !913
  ret i8* %29, !dbg !913
}

; Function Attrs: nounwind uwtable
define i8* @AsyncSocket_MsgError(i32) #0 !dbg !914 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !915, metadata !272), !dbg !916
  call void @llvm.dbg.declare(metadata i8** %3, metadata !917, metadata !272), !dbg !918
  store i8* null, i8** %3, align 8, !dbg !918
  %4 = load i32, i32* %2, align 4, !dbg !919
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %6
    i32 5, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 9, label %11
    i32 6, label %12
    i32 8, label %13
    i32 10, label %14
    i32 11, label %15
    i32 12, label %16
    i32 13, label %17
    i32 14, label %18
    i32 15, label %19
    i32 16, label %20
  ], !dbg !920

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8** %3, align 8, !dbg !921
  br label %21, !dbg !923

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i8** %3, align 8, !dbg !924
  br label %21, !dbg !925

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !926
  br label %21, !dbg !927

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0), i8** %3, align 8, !dbg !928
  br label %21, !dbg !929

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0), i8** %3, align 8, !dbg !930
  br label %21, !dbg !931

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i32 0, i32 0), i8** %3, align 8, !dbg !932
  br label %21, !dbg !933

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i8** %3, align 8, !dbg !934
  br label %21, !dbg !935

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8** %3, align 8, !dbg !936
  br label %21, !dbg !937

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), i8** %3, align 8, !dbg !938
  br label %21, !dbg !939

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i32 0, i32 0), i8** %3, align 8, !dbg !940
  br label %21, !dbg !941

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i32 0, i32 0), i8** %3, align 8, !dbg !942
  br label %21, !dbg !943

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i8** %3, align 8, !dbg !944
  br label %21, !dbg !945

; <label>:17:                                     ; preds = %1
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.18, i32 0, i32 0), i8** %3, align 8, !dbg !946
  br label %21, !dbg !947

; <label>:18:                                     ; preds = %1
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0), i8** %3, align 8, !dbg !948
  br label %21, !dbg !949

; <label>:19:                                     ; preds = %1
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i32 0, i32 0), i8** %3, align 8, !dbg !950
  br label %21, !dbg !951

; <label>:20:                                     ; preds = %1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0), i8** %3, align 8, !dbg !952
  br label %21, !dbg !953

; <label>:21:                                     ; preds = %20, %1, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %22 = load i8*, i8** %3, align 8, !dbg !954
  %23 = icmp ne i8* %22, null, !dbg !954
  br i1 %23, label %26, label %24, !dbg !956

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %2, align 4, !dbg !957
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.AsyncSocket_MsgError, i32 0, i32 0), i32 %25), !dbg !959
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0), i8** %3, align 8, !dbg !960
  br label %26, !dbg !961

; <label>:26:                                     ; preds = %24, %21
  %27 = load i8*, i8** %3, align 8, !dbg !962
  ret i8* %27, !dbg !963
}

; Function Attrs: nounwind uwtable
define i8* @stristr(i8*, i8*) #0 !dbg !964 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !967, metadata !272), !dbg !968
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !969, metadata !272), !dbg !970
  %7 = load i8*, i8** %5, align 8, !dbg !971
  %8 = load i8, i8* %7, align 1, !dbg !973
  %9 = icmp ne i8 %8, 0, !dbg !973
  br i1 %9, label %10, label %32, !dbg !974

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !975, metadata !272), !dbg !977
  %11 = load i8*, i8** %5, align 8, !dbg !978
  %12 = call i64 @strlen(i8* %11) #6, !dbg !979
  %13 = trunc i64 %12 to i32, !dbg !979
  store i32 %13, i32* %6, align 4, !dbg !977
  br label %14, !dbg !980

; <label>:14:                                     ; preds = %28, %10
  %15 = load i8*, i8** %4, align 8, !dbg !981
  %16 = load i8, i8* %15, align 1, !dbg !985
  %17 = icmp ne i8 %16, 0, !dbg !986
  br i1 %17, label %18, label %31, !dbg !986

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %4, align 8, !dbg !987
  %20 = load i8*, i8** %5, align 8, !dbg !990
  %21 = load i32, i32* %6, align 4, !dbg !991
  %22 = sext i32 %21 to i64, !dbg !991
  %23 = call i32 @strncasecmp(i8* %19, i8* %20, i64 %22) #6, !dbg !992
  %24 = icmp eq i32 %23, 0, !dbg !993
  br i1 %24, label %25, label %27, !dbg !994

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %4, align 8, !dbg !995
  store i8* %26, i8** %3, align 8, !dbg !997
  br label %34, !dbg !997

; <label>:27:                                     ; preds = %18
  br label %28, !dbg !998

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %4, align 8, !dbg !999
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !999
  store i8* %30, i8** %4, align 8, !dbg !999
  br label %14, !dbg !1001, !llvm.loop !1002

; <label>:31:                                     ; preds = %14
  store i8* null, i8** %3, align 8, !dbg !1003
  br label %34, !dbg !1003

; <label>:32:                                     ; preds = %2
  %33 = load i8*, i8** %4, align 8, !dbg !1004
  store i8* %33, i8** %3, align 8, !dbg !1006
  br label %34, !dbg !1006

; <label>:34:                                     ; preds = %32, %31, %25
  %35 = load i8*, i8** %3, align 8, !dbg !1007
  ret i8* %35, !dbg !1007
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #5

declare void @MXUser_AcquireRecLock(%struct.MXUserRecLock*) #3

declare void @MXUser_ReleaseRecLock(%struct.MXUserRecLock*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadAdd32(%struct.Atomic_uint32*, i32) #2 !dbg !1008 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !1011, metadata !272), !dbg !1012
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1013, metadata !272), !dbg !1014
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !1015
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !1016
  %7 = load i32, i32* %4, align 4, !dbg !1017
  %8 = call i32 asm sideeffect "lock; xaddl $0, $1", "=r,=*m,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #7, !dbg !1018, !srcloc !1019
  store i32 %8, i32* %4, align 4, !dbg !1018
  %9 = load i32, i32* %4, align 4, !dbg !1020
  ret i32 %9, !dbg !1021
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PollClassSet_Empty() #2 !dbg !1022 {
  %1 = alloca %struct.PollClassSet, align 8
  %2 = alloca %struct.PollClassSet, align 8
  call void @llvm.dbg.declare(metadata %struct.PollClassSet* %2, metadata !1025, metadata !272), !dbg !1026
  %3 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !1026
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 8, i32 8, i1 false), !dbg !1026
  %4 = bitcast %struct.PollClassSet* %1 to i8*, !dbg !1027
  %5 = bitcast %struct.PollClassSet* %2 to i8*, !dbg !1027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false), !dbg !1027
  %6 = getelementptr inbounds %struct.PollClassSet, %struct.PollClassSet* %1, i32 0, i32 0, !dbg !1028
  %7 = load i64, i64* %6, align 8, !dbg !1028
  ret i64 %7, !dbg !1028
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!267, !268}
!llvm.ident = !{!269}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, globals: !28)
!1 = !DIFile(filename: "asyncSocketBase.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!2 = !{!3, !11, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AsyncSocketState", file: !4, line: 184, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/asyncsocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PollClass", file: !16, line: 103, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/poll.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25}
!18 = !DIEnumerator(name: "POLL_CLASS_MAIN", value: 0)
!19 = !DIEnumerator(name: "POLL_CLASS_PAUSE", value: 1)
!20 = !DIEnumerator(name: "POLL_CLASS_IPC", value: 2)
!21 = !DIEnumerator(name: "POLL_CLASS_CPT", value: 3)
!22 = !DIEnumerator(name: "POLL_CLASS_MKS", value: 4)
!23 = !DIEnumerator(name: "POLL_FIXED_CLASSES", value: 5)
!24 = !DIEnumerator(name: "POLL_DEFAULT_FIXED_CLASSES", value: 6)
!25 = !DIEnumerator(name: "POLL_MAX_CLASSES", value: 31)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !{!29}
!29 = distinct !DIGlobalVariable(name: "nextid", scope: !30, file: !31, line: 321, type: !261, isLocal: true, isDefinition: true, variable: %struct.Atomic_uint32* @AsyncSocketInitSocket.nextid)
!30 = distinct !DISubprogram(name: "AsyncSocketInitSocket", scope: !31, file: !31, line: 313, type: !32, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!31 = !DIFile(filename: "asyncSocketBase.c", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !259, !90}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocket", file: !4, line: 155, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocket", file: !37, line: 47, size: 896, align: 64, elements: !38)
!37 = !DIFile(filename: "asyncSocketBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!38 = !{!39, !45, !46, !67, !69, !72, !73, !78, !79, !80, !81, !82, !87, !88, !89}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !37, line: 48, baseType: !40, size: 32, align: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !41, line: 173, baseType: !42)
!41 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 51, baseType: !44)
!43 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!44 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !36, file: !37, line: 49, baseType: !40, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pollParams", scope: !36, file: !37, line: 50, baseType: !47, size: 256, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketPollParams", file: !4, line: 174, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketPollParams", file: !4, line: 169, size: 256, align: 64, elements: !49)
!49 = !{!50, !52, !57, !64}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !4, line: 170, baseType: !51, size: 32, align: 32)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !48, file: !4, line: 171, baseType: !53, size: 64, align: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserRecLock", file: !55, line: 39, baseType: !56)
!55 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserRecLock", file: !55, line: 39, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pollClass", scope: !48, file: !4, line: 172, baseType: !58, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClassSet", file: !16, line: 128, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PollClassSet", file: !16, line: 126, size: 64, align: 64, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !59, file: !16, line: 127, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !43, line: 122, baseType: !63)
!63 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "iPoll", scope: !48, file: !4, line: 173, baseType: !65, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "IVmdbPoll", file: !4, line: 168, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !36, file: !37, line: 51, baseType: !68, size: 32, align: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketState", file: !4, line: 190, baseType: !3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "inited", scope: !36, file: !37, line: 53, baseType: !70, size: 8, align: 8, offset: 352)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !41, line: 230, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "errorSeen", scope: !36, file: !37, line: 54, baseType: !70, size: 8, align: 8, offset: 360)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "errorFn", scope: !36, file: !37, line: 55, baseType: !74, size: 64, align: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketErrorFn", file: !4, line: 401, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !51, !34, !27}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "errorClientData", scope: !36, file: !37, line: 56, baseType: !27, size: 64, align: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "recvBuf", scope: !36, file: !37, line: 58, baseType: !27, size: 64, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "recvPos", scope: !36, file: !37, line: 59, baseType: !51, size: 32, align: 32, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "recvLen", scope: !36, file: !37, line: 60, baseType: !51, size: 32, align: 32, offset: 608)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "recvFn", scope: !36, file: !37, line: 61, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketRecvFn", file: !4, line: 389, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !27, !51, !34, !27}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "recvClientData", scope: !36, file: !37, line: 62, baseType: !27, size: 64, align: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "recvFireOnPartial", scope: !36, file: !37, line: 63, baseType: !70, size: 8, align: 8, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !36, file: !37, line: 65, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketVTable", file: !93, line: 138, baseType: !94)
!93 = !DIFile(filename: "asyncSocketVTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketVTable", file: !93, line: 52, size: 2432, align: 64, elements: !95)
!95 = !{!96, !100, !112, !117, !121, !122, !129, !135, !139, !147, !153, !161, !165, !170, !174, !178, !182, !183, !188, !189, !204, !205, !211, !212, !217, !218, !219, !223, !224, !231, !235, !239, !243, !244, !245, !249, !250, !255}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "getState", scope: !94, file: !93, line: 53, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!68, !34}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "setOption", scope: !94, file: !93, line: 63, baseType: !101, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!51, !34, !104, !105, !106, !108}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketOpts_Layer", file: !4, line: 319, baseType: !11)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketOpts_ID", file: !4, line: 284, baseType: !51)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !109, line: 33, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !111, line: 189, baseType: !44)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "getOption", scope: !94, file: !93, line: 75, baseType: !113, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!51, !34, !104, !105, !27, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "getGenericErrno", scope: !94, file: !93, line: 81, baseType: !118, size: 64, align: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!51, !34}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "getFd", scope: !94, file: !93, line: 82, baseType: !118, size: 64, align: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "getRemoteIPStr", scope: !94, file: !93, line: 83, baseType: !123, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!51, !34, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "getINETIPStr", scope: !94, file: !93, line: 84, baseType: !130, size: 64, align: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!51, !34, !51, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "getPort", scope: !94, file: !93, line: 85, baseType: !136, size: 64, align: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!44, !34}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "setCloseOptions", scope: !94, file: !93, line: 86, baseType: !140, size: 64, align: 64, offset: 512)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!51, !34, !51, !143}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketCloseFn", file: !4, line: 410, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !34, !27}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "connectSSL", scope: !94, file: !93, line: 88, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!70, !34, !151, !27}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SSLVerifyParam", file: !4, line: 150, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "startSslConnect", scope: !94, file: !93, line: 90, baseType: !154, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!51, !34, !151, !27, !157, !27}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSslConnectFn", file: !4, line: 408, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !70, !34, !27}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "acceptSSL", scope: !94, file: !93, line: 94, baseType: !162, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!70, !34, !27}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "startSslAccept", scope: !94, file: !93, line: 95, baseType: !166, size: 64, align: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!51, !34, !27, !169, !27}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSslAcceptFn", file: !4, line: 406, baseType: !158)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !94, file: !93, line: 98, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!51, !34, !51}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !94, file: !93, line: 99, baseType: !175, size: 64, align: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!51, !34, !27, !51, !70, !27, !27}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "recvPassedFd", scope: !94, file: !93, line: 101, baseType: !179, size: 64, align: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!51, !34, !27, !51, !27, !27}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "getReceivedFd", scope: !94, file: !93, line: 103, baseType: !118, size: 64, align: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !94, file: !93, line: 104, baseType: !184, size: 64, align: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!51, !34, !27, !51, !187, !27}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketSendFn", file: !4, line: 395, baseType: !84)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "isSendBufferFull", scope: !94, file: !93, line: 106, baseType: !118, size: 64, align: 64, offset: 1152)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "getNetworkStats", scope: !94, file: !93, line: 107, baseType: !190, size: 64, align: 64, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!51, !34, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocketNetworkStats", file: !4, line: 200, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocketNetworkStats", file: !4, line: 193, size: 256, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cwndBytes", scope: !195, file: !4, line: 194, baseType: !40, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rttSmoothedAvgMillis", scope: !195, file: !4, line: 195, baseType: !40, size: 32, align: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rttSmoothedVarMillis", scope: !195, file: !4, line: 196, baseType: !40, size: 32, align: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "queuedBytes", scope: !195, file: !4, line: 197, baseType: !40, size: 32, align: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "inflightBytes", scope: !195, file: !4, line: 198, baseType: !40, size: 32, align: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "packetLossPercent", scope: !195, file: !4, line: 199, baseType: !203, size: 64, align: 64, offset: 192)
!203 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !94, file: !93, line: 109, baseType: !118, size: 64, align: 64, offset: 1280)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cancelRecv", scope: !94, file: !93, line: 110, baseType: !206, size: 64, align: 64, offset: 1344)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!51, !34, !209, !210, !210, !70}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cancelCbForClose", scope: !94, file: !93, line: 112, baseType: !118, size: 64, align: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "getLocalVMCIAddress", scope: !94, file: !93, line: 113, baseType: !213, size: 64, align: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!51, !34, !216, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "getRemoteVMCIAddress", scope: !94, file: !93, line: 114, baseType: !213, size: 64, align: 64, offset: 1536)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketError", scope: !94, file: !93, line: 115, baseType: !118, size: 64, align: 64, offset: 1600)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketURI", scope: !94, file: !93, line: 116, baseType: !220, size: 64, align: 64, offset: 1664)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!134, !34}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketCookie", scope: !94, file: !93, line: 117, baseType: !220, size: 64, align: 64, offset: 1728)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketCloseStatus", scope: !94, file: !93, line: 118, baseType: !225, size: 64, align: 64, offset: 1792)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !34}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !41, line: 175, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !43, line: 49, baseType: !230)
!230 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "getWebSocketProtocol", scope: !94, file: !93, line: 119, baseType: !232, size: 64, align: 64, offset: 1856)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!127, !34}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "setWebSocketCookie", scope: !94, file: !93, line: 120, baseType: !236, size: 64, align: 64, offset: 1920)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!51, !34, !27, !127, !127}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "recvBlocking", scope: !94, file: !93, line: 122, baseType: !240, size: 64, align: 64, offset: 1984)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!51, !34, !27, !51, !209, !51}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "recvPartialBlocking", scope: !94, file: !93, line: 124, baseType: !240, size: 64, align: 64, offset: 2048)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sendBlocking", scope: !94, file: !93, line: 126, baseType: !240, size: 64, align: 64, offset: 2112)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "doOneMsg", scope: !94, file: !93, line: 128, baseType: !246, size: 64, align: 64, offset: 2176)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!51, !34, !70, !51}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "waitForConnection", scope: !94, file: !93, line: 129, baseType: !171, size: 64, align: 64, offset: 2240)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "waitForReadMultiple", scope: !94, file: !93, line: 130, baseType: !251, size: 64, align: 64, offset: 2304)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!51, !254, !51, !51, !209}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !94, file: !93, line: 137, baseType: !256, size: 64, align: 64, offset: 2368)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !34}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!260 = !{}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !262, line: 135, baseType: !263)
!262 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !262, line: 133, size: 32, align: 32, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !262, line: 134, baseType: !266, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!267 = !{i32 2, !"Dwarf Version", i32 4}
!268 = !{i32 2, !"Debug Info Version", i32 3}
!269 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!270 = distinct !DISubprogram(name: "AsyncSocketLock", scope: !31, file: !31, line: 155, type: !257, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!271 = !DILocalVariable(name: "asock", arg: 1, scope: !270, file: !31, line: 155, type: !34)
!272 = !DIExpression()
!273 = !DILocation(line: 155, column: 30, scope: !270)
!274 = !DILocation(line: 157, column: 30, scope: !270)
!275 = !DILocation(line: 157, column: 4, scope: !270)
!276 = !DILocation(line: 158, column: 1, scope: !270)
!277 = distinct !DISubprogram(name: "AsyncSocketInternalIncRef", scope: !31, file: !31, line: 85, type: !278, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !34, !70}
!280 = !DILocalVariable(name: "asock", arg: 1, scope: !277, file: !31, line: 85, type: !34)
!281 = !DILocation(line: 85, column: 40, scope: !277)
!282 = !DILocalVariable(name: "lock", arg: 2, scope: !277, file: !31, line: 86, type: !70)
!283 = !DILocation(line: 86, column: 32, scope: !277)
!284 = !DILocation(line: 88, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !277, file: !31, line: 88, column: 8)
!286 = !DILocation(line: 88, column: 13, scope: !285)
!287 = !DILocation(line: 88, column: 16, scope: !288)
!288 = !DILexicalBlockFile(scope: !285, file: !31, discriminator: 1)
!289 = !DILocation(line: 88, column: 23, scope: !288)
!290 = !DILocation(line: 88, column: 34, scope: !288)
!291 = !DILocation(line: 88, column: 8, scope: !288)
!292 = !DILocation(line: 89, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !31, line: 88, column: 40)
!294 = !DILocation(line: 89, column: 36, scope: !293)
!295 = !DILocation(line: 89, column: 47, scope: !293)
!296 = !DILocation(line: 89, column: 7, scope: !293)
!297 = !DILocation(line: 90, column: 4, scope: !293)
!298 = !DILocation(line: 92, column: 6, scope: !277)
!299 = !DILocation(line: 92, column: 13, scope: !277)
!300 = !DILocation(line: 92, column: 4, scope: !277)
!301 = !DILocation(line: 93, column: 1, scope: !277)
!302 = distinct !DISubprogram(name: "AsyncSocketUnlock", scope: !31, file: !31, line: 161, type: !257, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!303 = !DILocalVariable(name: "asock", arg: 1, scope: !302, file: !31, line: 161, type: !34)
!304 = !DILocation(line: 161, column: 32, scope: !302)
!305 = !DILocation(line: 163, column: 30, scope: !302)
!306 = !DILocation(line: 163, column: 4, scope: !302)
!307 = !DILocation(line: 164, column: 1, scope: !302)
!308 = distinct !DISubprogram(name: "AsyncSocketInternalDecRef", scope: !31, file: !31, line: 117, type: !278, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!309 = !DILocalVariable(name: "s", arg: 1, scope: !308, file: !31, line: 117, type: !34)
!310 = !DILocation(line: 117, column: 40, scope: !308)
!311 = !DILocalVariable(name: "unlock", arg: 2, scope: !308, file: !31, line: 118, type: !70)
!312 = !DILocation(line: 118, column: 32, scope: !308)
!313 = !DILocalVariable(name: "count", scope: !308, file: !31, line: 120, type: !51)
!314 = !DILocation(line: 120, column: 8, scope: !308)
!315 = !DILocation(line: 120, column: 18, scope: !308)
!316 = !DILocation(line: 120, column: 21, scope: !308)
!317 = !DILocation(line: 120, column: 16, scope: !308)
!318 = !DILocation(line: 122, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !308, file: !31, line: 122, column: 8)
!320 = !DILocation(line: 122, column: 15, scope: !319)
!321 = !DILocation(line: 122, column: 18, scope: !322)
!322 = !DILexicalBlockFile(scope: !319, file: !31, discriminator: 1)
!323 = !DILocation(line: 122, column: 21, scope: !322)
!324 = !DILocation(line: 122, column: 32, scope: !322)
!325 = !DILocation(line: 122, column: 8, scope: !322)
!326 = !DILocation(line: 123, column: 29, scope: !327)
!327 = distinct !DILexicalBlock(scope: !319, file: !31, line: 122, column: 38)
!328 = !DILocation(line: 123, column: 32, scope: !327)
!329 = !DILocation(line: 123, column: 43, scope: !327)
!330 = !DILocation(line: 123, column: 7, scope: !327)
!331 = !DILocation(line: 124, column: 4, scope: !327)
!332 = !DILocation(line: 127, column: 26, scope: !333)
!333 = distinct !DILexicalBlock(scope: !308, file: !31, line: 127, column: 8)
!334 = !DILocation(line: 127, column: 32, scope: !333)
!335 = !DILocation(line: 127, column: 25, scope: !333)
!336 = !DILocation(line: 127, column: 8, scope: !333)
!337 = !DILocation(line: 127, column: 8, scope: !308)
!338 = !DILocation(line: 128, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !333, file: !31, line: 127, column: 43)
!340 = distinct !{!340, !338}
!341 = !DILocation(line: 128, column: 117, scope: !342)
!342 = !DILexicalBlockFile(scope: !343, file: !31, discriminator: 1)
!343 = distinct !DILexicalBlock(scope: !339, file: !31, line: 128, column: 10)
!344 = !DILocation(line: 129, column: 9, scope: !339)
!345 = !DILocation(line: 129, column: 13, scope: !339)
!346 = !DILocation(line: 129, column: 18, scope: !339)
!347 = !DILocation(line: 129, column: 26, scope: !339)
!348 = !DILocation(line: 129, column: 7, scope: !339)
!349 = !DILocation(line: 130, column: 4, scope: !339)
!350 = !DILocation(line: 131, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !333, file: !31, line: 130, column: 11)
!352 = distinct !{!352, !350}
!353 = !DILocation(line: 131, column: 111, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !31, discriminator: 1)
!355 = distinct !DILexicalBlock(scope: !351, file: !31, line: 131, column: 10)
!356 = !DILocation(line: 133, column: 1, scope: !308)
!357 = distinct !DISubprogram(name: "AsyncSocketIsLocked", scope: !31, file: !31, line: 186, type: !358, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!358 = !DISubroutineType(types: !359)
!359 = !{!70, !34}
!360 = !DILocalVariable(name: "asock", arg: 1, scope: !357, file: !31, line: 186, type: !34)
!361 = !DILocation(line: 186, column: 34, scope: !357)
!362 = !DILocation(line: 188, column: 8, scope: !363)
!363 = distinct !DILexicalBlock(scope: !357, file: !31, line: 188, column: 8)
!364 = !DILocation(line: 188, column: 15, scope: !363)
!365 = !DILocation(line: 188, column: 26, scope: !363)
!366 = !DILocation(line: 188, column: 31, scope: !363)
!367 = !DILocation(line: 188, column: 34, scope: !368)
!368 = !DILexicalBlockFile(scope: !363, file: !31, discriminator: 1)
!369 = !DILocation(line: 188, column: 8, scope: !368)
!370 = !DILocation(line: 189, column: 47, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !31, line: 188, column: 57)
!372 = !DILocation(line: 189, column: 54, scope: !371)
!373 = !DILocation(line: 189, column: 65, scope: !371)
!374 = !DILocation(line: 189, column: 14, scope: !371)
!375 = !DILocation(line: 189, column: 7, scope: !371)
!376 = !DILocation(line: 191, column: 4, scope: !357)
!377 = !DILocation(line: 192, column: 1, scope: !357)
!378 = distinct !DISubprogram(name: "AsyncSocketAddRef", scope: !31, file: !31, line: 212, type: !257, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!379 = !DILocalVariable(name: "s", arg: 1, scope: !378, file: !31, line: 212, type: !34)
!380 = !DILocation(line: 212, column: 32, scope: !378)
!381 = !DILocation(line: 214, column: 30, scope: !378)
!382 = !DILocation(line: 214, column: 4, scope: !378)
!383 = !DILocation(line: 215, column: 1, scope: !378)
!384 = distinct !DISubprogram(name: "AsyncSocketRelease", scope: !31, file: !31, line: 237, type: !257, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!385 = !DILocalVariable(name: "s", arg: 1, scope: !384, file: !31, line: 237, type: !34)
!386 = !DILocation(line: 237, column: 33, scope: !384)
!387 = !DILocation(line: 239, column: 30, scope: !384)
!388 = !DILocation(line: 239, column: 4, scope: !384)
!389 = !DILocation(line: 240, column: 1, scope: !384)
!390 = distinct !DISubprogram(name: "AsyncSocketGetState", scope: !31, file: !31, line: 254, type: !98, isLocal: false, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!391 = !DILocalVariable(name: "asock", arg: 1, scope: !390, file: !31, line: 254, type: !34)
!392 = !DILocation(line: 254, column: 34, scope: !390)
!393 = !DILocation(line: 257, column: 11, scope: !390)
!394 = !DILocation(line: 257, column: 18, scope: !390)
!395 = !DILocation(line: 257, column: 4, scope: !390)
!396 = distinct !DISubprogram(name: "AsyncSocketSetState", scope: !31, file: !31, line: 272, type: !397, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !34, !68}
!399 = !DILocalVariable(name: "asock", arg: 1, scope: !396, file: !31, line: 272, type: !34)
!400 = !DILocation(line: 272, column: 34, scope: !396)
!401 = !DILocalVariable(name: "state", arg: 2, scope: !396, file: !31, line: 273, type: !68)
!402 = !DILocation(line: 273, column: 38, scope: !396)
!403 = !DILocation(line: 275, column: 19, scope: !396)
!404 = !DILocation(line: 275, column: 4, scope: !396)
!405 = !DILocation(line: 275, column: 11, scope: !396)
!406 = !DILocation(line: 275, column: 17, scope: !396)
!407 = !DILocation(line: 276, column: 1, scope: !396)
!408 = distinct !DISubprogram(name: "AsyncSocketGetPollParams", scope: !31, file: !31, line: 290, type: !409, isLocal: false, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!409 = !DISubroutineType(types: !410)
!410 = !{!259, !34}
!411 = !DILocalVariable(name: "s", arg: 1, scope: !408, file: !31, line: 290, type: !34)
!412 = !DILocation(line: 290, column: 39, scope: !408)
!413 = !DILocation(line: 292, column: 12, scope: !408)
!414 = !DILocation(line: 292, column: 15, scope: !408)
!415 = !DILocation(line: 292, column: 4, scope: !408)
!416 = !DILocalVariable(name: "s", arg: 1, scope: !30, file: !31, line: 313, type: !34)
!417 = !DILocation(line: 313, column: 36, scope: !30)
!418 = !DILocalVariable(name: "pollParams", arg: 2, scope: !30, file: !31, line: 314, type: !259)
!419 = !DILocation(line: 314, column: 46, scope: !30)
!420 = !DILocalVariable(name: "vtable", arg: 3, scope: !30, file: !31, line: 315, type: !90)
!421 = !DILocation(line: 315, column: 48, scope: !30)
!422 = !DILocation(line: 323, column: 12, scope: !30)
!423 = !DILocation(line: 323, column: 4, scope: !30)
!424 = !DILocation(line: 323, column: 7, scope: !30)
!425 = !DILocation(line: 323, column: 10, scope: !30)
!426 = !DILocation(line: 324, column: 4, scope: !30)
!427 = !DILocation(line: 324, column: 7, scope: !30)
!428 = !DILocation(line: 324, column: 16, scope: !30)
!429 = !DILocation(line: 325, column: 12, scope: !30)
!430 = !DILocation(line: 325, column: 4, scope: !30)
!431 = !DILocation(line: 325, column: 7, scope: !30)
!432 = !DILocation(line: 325, column: 10, scope: !30)
!433 = !DILocation(line: 326, column: 4, scope: !30)
!434 = !DILocation(line: 326, column: 7, scope: !30)
!435 = !DILocation(line: 326, column: 14, scope: !30)
!436 = !DILocation(line: 327, column: 8, scope: !437)
!437 = distinct !DILexicalBlock(scope: !30, file: !31, line: 327, column: 8)
!438 = !DILocation(line: 327, column: 8, scope: !30)
!439 = !DILocation(line: 328, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !31, line: 327, column: 20)
!441 = !DILocation(line: 328, column: 10, scope: !440)
!442 = !DILocation(line: 328, column: 24, scope: !440)
!443 = !DILocation(line: 328, column: 23, scope: !440)
!444 = !DILocation(line: 329, column: 4, scope: !440)
!445 = !DILocation(line: 330, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !437, file: !31, line: 329, column: 11)
!447 = !DILocation(line: 330, column: 10, scope: !446)
!448 = !DILocation(line: 330, column: 21, scope: !446)
!449 = !DILocation(line: 330, column: 33, scope: !446)
!450 = !DILocation(line: 330, column: 33, scope: !451)
!451 = !DILexicalBlockFile(scope: !446, file: !31, discriminator: 1)
!452 = !DILocation(line: 331, column: 7, scope: !446)
!453 = !DILocation(line: 331, column: 10, scope: !446)
!454 = !DILocation(line: 331, column: 21, scope: !446)
!455 = !DILocation(line: 331, column: 27, scope: !446)
!456 = !DILocation(line: 332, column: 7, scope: !446)
!457 = !DILocation(line: 332, column: 10, scope: !446)
!458 = !DILocation(line: 332, column: 21, scope: !446)
!459 = !DILocation(line: 332, column: 26, scope: !446)
!460 = !DILocation(line: 333, column: 7, scope: !446)
!461 = !DILocation(line: 333, column: 10, scope: !446)
!462 = !DILocation(line: 333, column: 21, scope: !446)
!463 = !DILocation(line: 333, column: 27, scope: !446)
!464 = !DILocation(line: 335, column: 1, scope: !30)
!465 = distinct !DISubprogram(name: "Atomic_ReadInc32", scope: !262, file: !262, line: 1927, type: !466, isLocal: true, isDefinition: true, scopeLine: 1928, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!466 = !DISubroutineType(types: !467)
!467 = !{!40, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!469 = !DILocalVariable(name: "var", arg: 1, scope: !465, file: !262, line: 1927, type: !468)
!470 = !DILocation(line: 1927, column: 33, scope: !465)
!471 = !DILocation(line: 1929, column: 28, scope: !465)
!472 = !DILocation(line: 1929, column: 11, scope: !465)
!473 = !DILocation(line: 1929, column: 4, scope: !465)
!474 = distinct !DISubprogram(name: "PollClassSet_Singleton", scope: !16, file: !16, line: 140, type: !475, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!475 = !DISubroutineType(types: !476)
!476 = !{!58, !477}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "PollClass", file: !16, line: 113, baseType: !15)
!478 = !DILocalVariable(name: "c", arg: 1, scope: !474, file: !16, line: 140, type: !477)
!479 = !DILocation(line: 140, column: 34, scope: !474)
!480 = !DILocalVariable(name: "s", scope: !474, file: !16, line: 142, type: !58)
!481 = !DILocation(line: 142, column: 17, scope: !474)
!482 = !DILocation(line: 142, column: 21, scope: !474)
!483 = !DILocation(line: 144, column: 4, scope: !474)
!484 = distinct !{!484, !483}
!485 = !DILocation(line: 144, column: 103, scope: !486)
!486 = !DILexicalBlockFile(scope: !487, file: !16, discriminator: 1)
!487 = distinct !DILexicalBlock(scope: !474, file: !16, line: 144, column: 7)
!488 = !DILocation(line: 147, column: 20, scope: !474)
!489 = !DILocation(line: 147, column: 17, scope: !474)
!490 = !DILocation(line: 147, column: 6, scope: !474)
!491 = !DILocation(line: 147, column: 11, scope: !474)
!492 = !DILocation(line: 148, column: 11, scope: !474)
!493 = !DILocation(line: 148, column: 4, scope: !474)
!494 = distinct !DISubprogram(name: "AsyncSocketTeardownSocket", scope: !31, file: !31, line: 356, type: !257, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!495 = !DILocalVariable(name: "asock", arg: 1, scope: !494, file: !31, line: 356, type: !34)
!496 = !DILocation(line: 356, column: 40, scope: !494)
!497 = !DILocation(line: 365, column: 4, scope: !494)
!498 = !DILocation(line: 365, column: 11, scope: !494)
!499 = !DILocation(line: 365, column: 18, scope: !494)
!500 = !DILocation(line: 366, column: 23, scope: !494)
!501 = !DILocation(line: 366, column: 4, scope: !494)
!502 = !DILocation(line: 367, column: 1, scope: !494)
!503 = distinct !DISubprogram(name: "AsyncSocket_Init", scope: !31, file: !31, line: 388, type: !504, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!504 = !DISubroutineType(types: !505)
!505 = !{!51}
!506 = !DILocation(line: 390, column: 11, scope: !503)
!507 = !DILocation(line: 390, column: 4, scope: !503)
!508 = distinct !DISubprogram(name: "AsyncSocket_GetID", scope: !31, file: !31, line: 411, type: !119, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!509 = !DILocalVariable(name: "asock", arg: 1, scope: !508, file: !31, line: 411, type: !34)
!510 = !DILocation(line: 411, column: 32, scope: !508)
!511 = !DILocation(line: 413, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !31, line: 413, column: 8)
!513 = !DILocation(line: 413, column: 8, scope: !508)
!514 = !DILocation(line: 414, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !31, line: 413, column: 16)
!516 = !DILocation(line: 417, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !31, line: 416, column: 11)
!518 = !DILocation(line: 417, column: 21, scope: !517)
!519 = !DILocation(line: 417, column: 7, scope: !517)
!520 = !DILocation(line: 419, column: 1, scope: !508)
!521 = distinct !DISubprogram(name: "AsyncSocket_SetErrorFn", scope: !31, file: !31, line: 440, type: !522, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!522 = !DISubroutineType(types: !523)
!523 = !{!51, !34, !74, !27}
!524 = !DILocalVariable(name: "asock", arg: 1, scope: !521, file: !31, line: 440, type: !34)
!525 = !DILocation(line: 440, column: 37, scope: !521)
!526 = !DILocalVariable(name: "errorFn", arg: 2, scope: !521, file: !31, line: 441, type: !74)
!527 = !DILocation(line: 441, column: 43, scope: !521)
!528 = !DILocalVariable(name: "clientData", arg: 3, scope: !521, file: !31, line: 442, type: !27)
!529 = !DILocation(line: 442, column: 30, scope: !521)
!530 = !DILocation(line: 444, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !521, file: !31, line: 444, column: 8)
!532 = !DILocation(line: 444, column: 8, scope: !521)
!533 = !DILocation(line: 445, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !31, line: 444, column: 16)
!535 = !DILocation(line: 447, column: 23, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !31, line: 446, column: 11)
!537 = !DILocation(line: 447, column: 7, scope: !536)
!538 = !DILocation(line: 448, column: 24, scope: !536)
!539 = !DILocation(line: 448, column: 7, scope: !536)
!540 = !DILocation(line: 448, column: 14, scope: !536)
!541 = !DILocation(line: 448, column: 22, scope: !536)
!542 = !DILocation(line: 449, column: 32, scope: !536)
!543 = !DILocation(line: 449, column: 7, scope: !536)
!544 = !DILocation(line: 449, column: 14, scope: !536)
!545 = !DILocation(line: 449, column: 30, scope: !536)
!546 = !DILocation(line: 450, column: 25, scope: !536)
!547 = !DILocation(line: 450, column: 7, scope: !536)
!548 = !DILocation(line: 451, column: 7, scope: !536)
!549 = !DILocation(line: 453, column: 1, scope: !521)
!550 = distinct !DISubprogram(name: "AsyncSocketHandleError", scope: !31, file: !31, line: 474, type: !551, isLocal: false, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !34, !51}
!553 = !DILocalVariable(name: "asock", arg: 1, scope: !550, file: !31, line: 474, type: !34)
!554 = !DILocation(line: 474, column: 37, scope: !550)
!555 = !DILocalVariable(name: "asockErr", arg: 2, scope: !550, file: !31, line: 475, type: !51)
!556 = !DILocation(line: 475, column: 28, scope: !550)
!557 = !DILocation(line: 478, column: 4, scope: !550)
!558 = !DILocation(line: 478, column: 11, scope: !550)
!559 = !DILocation(line: 478, column: 21, scope: !550)
!560 = !DILocation(line: 479, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !550, file: !31, line: 479, column: 8)
!562 = !DILocation(line: 479, column: 15, scope: !561)
!563 = !DILocation(line: 479, column: 8, scope: !550)
!564 = !DILocation(line: 480, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !31, line: 479, column: 24)
!566 = distinct !{!566, !564}
!567 = !DILocation(line: 480, column: 192, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !31, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !565, file: !31, line: 480, column: 10)
!570 = !DILocation(line: 482, column: 7, scope: !565)
!571 = !DILocation(line: 482, column: 14, scope: !565)
!572 = !DILocation(line: 482, column: 22, scope: !565)
!573 = !DILocation(line: 482, column: 32, scope: !565)
!574 = !DILocation(line: 482, column: 39, scope: !565)
!575 = !DILocation(line: 482, column: 46, scope: !565)
!576 = !DILocation(line: 483, column: 4, scope: !565)
!577 = !DILocation(line: 484, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !561, file: !31, line: 483, column: 11)
!579 = distinct !{!579, !577}
!580 = !DILocation(line: 484, column: 204, scope: !581)
!581 = !DILexicalBlockFile(scope: !582, file: !31, discriminator: 1)
!582 = distinct !DILexicalBlock(scope: !578, file: !31, line: 484, column: 10)
!583 = !DILocation(line: 486, column: 25, scope: !578)
!584 = !DILocation(line: 486, column: 7, scope: !578)
!585 = !DILocation(line: 488, column: 1, scope: !550)
!586 = distinct !DISubprogram(name: "AsyncSocketCheckAndDispatchRecv", scope: !31, file: !31, line: 512, type: !587, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!587 = !DISubroutineType(types: !588)
!588 = !{!70, !34, !209}
!589 = !DILocalVariable(name: "s", arg: 1, scope: !586, file: !31, line: 512, type: !34)
!590 = !DILocation(line: 512, column: 46, scope: !586)
!591 = !DILocalVariable(name: "result", arg: 2, scope: !586, file: !31, line: 513, type: !209)
!592 = !DILocation(line: 513, column: 38, scope: !586)
!593 = !DILocation(line: 530, column: 8, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !31, line: 530, column: 8)
!595 = !DILocation(line: 530, column: 11, scope: !594)
!596 = !DILocation(line: 530, column: 22, scope: !594)
!597 = !DILocation(line: 530, column: 25, scope: !594)
!598 = !DILocation(line: 530, column: 19, scope: !594)
!599 = !DILocation(line: 530, column: 33, scope: !594)
!600 = !DILocation(line: 530, column: 36, scope: !601)
!601 = !DILexicalBlockFile(scope: !594, file: !31, discriminator: 1)
!602 = !DILocation(line: 530, column: 39, scope: !601)
!603 = !DILocation(line: 530, column: 8, scope: !601)
!604 = !DILocalVariable(name: "recvBuf", scope: !605, file: !31, line: 531, type: !27)
!605 = distinct !DILexicalBlock(scope: !594, file: !31, line: 530, column: 58)
!606 = !DILocation(line: 531, column: 13, scope: !605)
!607 = !DILocation(line: 531, column: 23, scope: !605)
!608 = !DILocation(line: 531, column: 26, scope: !605)
!609 = !DILocation(line: 532, column: 7, scope: !605)
!610 = distinct !{!610, !609}
!611 = !DILocation(line: 532, column: 156, scope: !612)
!612 = !DILexicalBlockFile(scope: !613, file: !31, discriminator: 1)
!613 = distinct !DILexicalBlock(scope: !605, file: !31, line: 532, column: 10)
!614 = !DILocation(line: 544, column: 7, scope: !605)
!615 = !DILocation(line: 544, column: 10, scope: !605)
!616 = !DILocation(line: 544, column: 18, scope: !605)
!617 = !DILocation(line: 545, column: 7, scope: !605)
!618 = !DILocation(line: 545, column: 10, scope: !605)
!619 = !DILocation(line: 545, column: 17, scope: !605)
!620 = !DILocation(line: 545, column: 26, scope: !605)
!621 = !DILocation(line: 545, column: 29, scope: !605)
!622 = !DILocation(line: 545, column: 38, scope: !605)
!623 = !DILocation(line: 545, column: 41, scope: !605)
!624 = !DILocation(line: 545, column: 44, scope: !605)
!625 = !DILocation(line: 546, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !605, file: !31, line: 546, column: 11)
!627 = !DILocation(line: 546, column: 14, scope: !626)
!628 = !DILocation(line: 546, column: 20, scope: !626)
!629 = !DILocation(line: 546, column: 11, scope: !605)
!630 = !DILocation(line: 547, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !31, line: 546, column: 42)
!632 = distinct !{!632, !630}
!633 = !DILocation(line: 547, column: 59, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !31, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !631, file: !31, line: 547, column: 13)
!636 = !DILocation(line: 547, column: 41, scope: !634)
!637 = !DILocation(line: 547, column: 81, scope: !634)
!638 = !DILocation(line: 547, column: 63, scope: !639)
!639 = !DILexicalBlockFile(scope: !634, file: !31, discriminator: 2)
!640 = !DILocation(line: 547, column: 15, scope: !641)
!641 = !DILexicalBlockFile(scope: !634, file: !31, discriminator: 3)
!642 = !DILocation(line: 547, column: 86, scope: !643)
!643 = !DILexicalBlockFile(scope: !634, file: !31, discriminator: 4)
!644 = !DILocation(line: 547, column: 138, scope: !634)
!645 = !DILocation(line: 548, column: 11, scope: !631)
!646 = !DILocation(line: 548, column: 18, scope: !631)
!647 = !DILocation(line: 549, column: 10, scope: !631)
!648 = !DILocation(line: 550, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !626, file: !31, line: 550, column: 18)
!650 = !DILocation(line: 550, column: 21, scope: !649)
!651 = !DILocation(line: 550, column: 28, scope: !649)
!652 = !DILocation(line: 550, column: 35, scope: !649)
!653 = !DILocation(line: 550, column: 38, scope: !654)
!654 = !DILexicalBlockFile(scope: !649, file: !31, discriminator: 1)
!655 = !DILocation(line: 550, column: 41, scope: !654)
!656 = !DILocation(line: 550, column: 49, scope: !654)
!657 = !DILocation(line: 550, column: 18, scope: !654)
!658 = !DILocation(line: 555, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !649, file: !31, line: 550, column: 55)
!660 = !DILocation(line: 555, column: 18, scope: !659)
!661 = !DILocation(line: 556, column: 10, scope: !659)
!662 = !DILocation(line: 557, column: 18, scope: !663)
!663 = distinct !DILexicalBlock(scope: !649, file: !31, line: 557, column: 18)
!664 = !DILocation(line: 557, column: 21, scope: !663)
!665 = !DILocation(line: 557, column: 29, scope: !663)
!666 = !DILocation(line: 557, column: 18, scope: !649)
!667 = !DILocation(line: 564, column: 10, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !31, line: 557, column: 34)
!669 = !DILocation(line: 564, column: 13, scope: !668)
!670 = !DILocation(line: 564, column: 21, scope: !668)
!671 = !DILocation(line: 565, column: 23, scope: !668)
!672 = !DILocation(line: 565, column: 10, scope: !668)
!673 = !DILocation(line: 565, column: 13, scope: !668)
!674 = !DILocation(line: 565, column: 21, scope: !668)
!675 = !DILocation(line: 566, column: 11, scope: !668)
!676 = !DILocation(line: 566, column: 18, scope: !668)
!677 = !DILocation(line: 567, column: 10, scope: !668)
!678 = !DILocation(line: 569, column: 11, scope: !679)
!679 = distinct !DILexicalBlock(scope: !663, file: !31, line: 568, column: 14)
!680 = !DILocation(line: 569, column: 18, scope: !679)
!681 = !DILocation(line: 570, column: 10, scope: !679)
!682 = !DILocation(line: 573, column: 8, scope: !683)
!683 = distinct !DILexicalBlock(scope: !594, file: !31, line: 572, column: 11)
!684 = !DILocation(line: 573, column: 15, scope: !683)
!685 = !DILocation(line: 574, column: 7, scope: !683)
!686 = !DILocation(line: 576, column: 1, scope: !586)
!687 = distinct !DISubprogram(name: "AsyncSocketSetRecvBuf", scope: !31, file: !31, line: 598, type: !176, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!688 = !DILocalVariable(name: "asock", arg: 1, scope: !687, file: !31, line: 598, type: !34)
!689 = !DILocation(line: 598, column: 36, scope: !687)
!690 = !DILocalVariable(name: "buf", arg: 2, scope: !687, file: !31, line: 599, type: !27)
!691 = !DILocation(line: 599, column: 29, scope: !687)
!692 = !DILocalVariable(name: "len", arg: 3, scope: !687, file: !31, line: 600, type: !51)
!693 = !DILocation(line: 600, column: 27, scope: !687)
!694 = !DILocalVariable(name: "fireOnPartial", arg: 4, scope: !687, file: !31, line: 601, type: !70)
!695 = !DILocation(line: 601, column: 28, scope: !687)
!696 = !DILocalVariable(name: "cb", arg: 5, scope: !687, file: !31, line: 602, type: !27)
!697 = !DILocation(line: 602, column: 29, scope: !687)
!698 = !DILocalVariable(name: "cbData", arg: 6, scope: !687, file: !31, line: 603, type: !27)
!699 = !DILocation(line: 603, column: 29, scope: !687)
!700 = !DILocation(line: 607, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !687, file: !31, line: 607, column: 8)
!702 = !DILocation(line: 607, column: 16, scope: !701)
!703 = !DILocation(line: 607, column: 8, scope: !687)
!704 = !DILocation(line: 608, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !31, line: 607, column: 25)
!706 = distinct !{!706, !704}
!707 = !DILocation(line: 608, column: 60, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !31, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !705, file: !31, line: 608, column: 10)
!710 = !DILocation(line: 608, column: 42, scope: !708)
!711 = !DILocation(line: 608, column: 86, scope: !708)
!712 = !DILocation(line: 608, column: 68, scope: !713)
!713 = !DILexicalBlockFile(scope: !708, file: !31, discriminator: 2)
!714 = !DILocation(line: 608, column: 12, scope: !715)
!715 = !DILexicalBlockFile(scope: !708, file: !31, discriminator: 3)
!716 = !DILocation(line: 608, column: 95, scope: !717)
!717 = !DILexicalBlockFile(scope: !708, file: !31, discriminator: 4)
!718 = !DILocation(line: 608, column: 157, scope: !708)
!719 = !DILocation(line: 609, column: 7, scope: !705)
!720 = !DILocation(line: 612, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !687, file: !31, line: 612, column: 8)
!722 = !DILocation(line: 612, column: 13, scope: !721)
!723 = !DILocation(line: 612, column: 17, scope: !724)
!724 = !DILexicalBlockFile(scope: !721, file: !31, discriminator: 1)
!725 = !DILocation(line: 612, column: 20, scope: !724)
!726 = !DILocation(line: 612, column: 23, scope: !727)
!727 = !DILexicalBlockFile(scope: !721, file: !31, discriminator: 2)
!728 = !DILocation(line: 612, column: 27, scope: !727)
!729 = !DILocation(line: 612, column: 8, scope: !727)
!730 = !DILocation(line: 613, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !721, file: !31, line: 612, column: 33)
!732 = distinct !{!732, !730}
!733 = !DILocation(line: 613, column: 60, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !31, discriminator: 1)
!735 = distinct !DILexicalBlock(scope: !731, file: !31, line: 613, column: 10)
!736 = !DILocation(line: 613, column: 42, scope: !734)
!737 = !DILocation(line: 613, column: 86, scope: !734)
!738 = !DILocation(line: 613, column: 68, scope: !739)
!739 = !DILexicalBlockFile(scope: !734, file: !31, discriminator: 2)
!740 = !DILocation(line: 613, column: 12, scope: !741)
!741 = !DILexicalBlockFile(scope: !734, file: !31, discriminator: 3)
!742 = !DILocation(line: 613, column: 95, scope: !743)
!743 = !DILexicalBlockFile(scope: !734, file: !31, discriminator: 4)
!744 = !DILocation(line: 613, column: 146, scope: !734)
!745 = !DILocation(line: 614, column: 7, scope: !731)
!746 = !DILocation(line: 617, column: 28, scope: !747)
!747 = distinct !DILexicalBlock(scope: !687, file: !31, line: 617, column: 8)
!748 = !DILocation(line: 617, column: 8, scope: !747)
!749 = !DILocation(line: 617, column: 35, scope: !747)
!750 = !DILocation(line: 617, column: 8, scope: !687)
!751 = !DILocation(line: 618, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !31, line: 617, column: 60)
!753 = distinct !{!753, !751}
!754 = !DILocation(line: 618, column: 60, scope: !755)
!755 = !DILexicalBlockFile(scope: !756, file: !31, discriminator: 1)
!756 = distinct !DILexicalBlock(scope: !752, file: !31, line: 618, column: 10)
!757 = !DILocation(line: 618, column: 42, scope: !755)
!758 = !DILocation(line: 618, column: 86, scope: !755)
!759 = !DILocation(line: 618, column: 68, scope: !760)
!760 = !DILexicalBlockFile(scope: !755, file: !31, discriminator: 2)
!761 = !DILocation(line: 618, column: 12, scope: !762)
!762 = !DILexicalBlockFile(scope: !755, file: !31, discriminator: 3)
!763 = !DILocation(line: 618, column: 95, scope: !764)
!764 = !DILexicalBlockFile(scope: !755, file: !31, discriminator: 4)
!765 = !DILocation(line: 618, column: 150, scope: !755)
!766 = !DILocation(line: 619, column: 7, scope: !752)
!767 = !DILocation(line: 622, column: 8, scope: !768)
!768 = distinct !DILexicalBlock(scope: !687, file: !31, line: 622, column: 8)
!769 = !DILocation(line: 622, column: 15, scope: !768)
!770 = !DILocation(line: 622, column: 23, scope: !768)
!771 = !DILocation(line: 622, column: 26, scope: !772)
!772 = !DILexicalBlockFile(scope: !768, file: !31, discriminator: 1)
!773 = !DILocation(line: 622, column: 33, scope: !772)
!774 = !DILocation(line: 622, column: 41, scope: !772)
!775 = !DILocation(line: 622, column: 8, scope: !772)
!776 = !DILocation(line: 623, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !768, file: !31, line: 622, column: 47)
!778 = distinct !{!778, !776}
!779 = !DILocation(line: 623, column: 60, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !31, discriminator: 1)
!781 = distinct !DILexicalBlock(scope: !777, file: !31, line: 623, column: 10)
!782 = !DILocation(line: 623, column: 42, scope: !780)
!783 = !DILocation(line: 623, column: 86, scope: !780)
!784 = !DILocation(line: 623, column: 68, scope: !785)
!785 = !DILexicalBlockFile(scope: !780, file: !31, discriminator: 2)
!786 = !DILocation(line: 623, column: 12, scope: !787)
!787 = !DILexicalBlockFile(scope: !780, file: !31, discriminator: 3)
!788 = !DILocation(line: 623, column: 95, scope: !789)
!789 = !DILexicalBlockFile(scope: !780, file: !31, discriminator: 4)
!790 = !DILocation(line: 623, column: 158, scope: !780)
!791 = !DILocation(line: 624, column: 4, scope: !777)
!792 = !DILocation(line: 626, column: 21, scope: !687)
!793 = !DILocation(line: 626, column: 4, scope: !687)
!794 = !DILocation(line: 626, column: 11, scope: !687)
!795 = !DILocation(line: 626, column: 19, scope: !687)
!796 = !DILocation(line: 627, column: 21, scope: !687)
!797 = !DILocation(line: 627, column: 4, scope: !687)
!798 = !DILocation(line: 627, column: 11, scope: !687)
!799 = !DILocation(line: 627, column: 19, scope: !687)
!800 = !DILocation(line: 628, column: 31, scope: !687)
!801 = !DILocation(line: 628, column: 4, scope: !687)
!802 = !DILocation(line: 628, column: 11, scope: !687)
!803 = !DILocation(line: 628, column: 29, scope: !687)
!804 = !DILocation(line: 629, column: 20, scope: !687)
!805 = !DILocation(line: 629, column: 4, scope: !687)
!806 = !DILocation(line: 629, column: 11, scope: !687)
!807 = !DILocation(line: 629, column: 18, scope: !687)
!808 = !DILocation(line: 630, column: 28, scope: !687)
!809 = !DILocation(line: 630, column: 4, scope: !687)
!810 = !DILocation(line: 630, column: 11, scope: !687)
!811 = !DILocation(line: 630, column: 26, scope: !687)
!812 = !DILocation(line: 631, column: 4, scope: !687)
!813 = !DILocation(line: 631, column: 11, scope: !687)
!814 = !DILocation(line: 631, column: 19, scope: !687)
!815 = !DILocation(line: 633, column: 4, scope: !687)
!816 = !DILocation(line: 634, column: 1, scope: !687)
!817 = distinct !DISubprogram(name: "AsyncSocketCancelRecv", scope: !31, file: !31, line: 659, type: !818, isLocal: false, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !34, !209, !210, !210}
!820 = !DILocalVariable(name: "asock", arg: 1, scope: !817, file: !31, line: 659, type: !34)
!821 = !DILocation(line: 659, column: 36, scope: !817)
!822 = !DILocalVariable(name: "partialRecvd", arg: 2, scope: !817, file: !31, line: 660, type: !209)
!823 = !DILocation(line: 660, column: 28, scope: !817)
!824 = !DILocalVariable(name: "recvBuf", arg: 3, scope: !817, file: !31, line: 661, type: !210)
!825 = !DILocation(line: 661, column: 30, scope: !817)
!826 = !DILocalVariable(name: "recvFn", arg: 4, scope: !817, file: !31, line: 662, type: !210)
!827 = !DILocation(line: 662, column: 30, scope: !817)
!828 = !DILocation(line: 664, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !817, file: !31, line: 664, column: 8)
!830 = !DILocation(line: 664, column: 8, scope: !817)
!831 = !DILocation(line: 665, column: 23, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !31, line: 664, column: 22)
!833 = !DILocation(line: 665, column: 30, scope: !832)
!834 = !DILocation(line: 665, column: 8, scope: !832)
!835 = !DILocation(line: 665, column: 21, scope: !832)
!836 = !DILocation(line: 666, column: 4, scope: !832)
!837 = !DILocation(line: 667, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !817, file: !31, line: 667, column: 8)
!839 = !DILocation(line: 667, column: 8, scope: !817)
!840 = !DILocation(line: 668, column: 17, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !31, line: 667, column: 16)
!842 = !DILocation(line: 668, column: 24, scope: !841)
!843 = !DILocation(line: 668, column: 8, scope: !841)
!844 = !DILocation(line: 668, column: 15, scope: !841)
!845 = !DILocation(line: 669, column: 4, scope: !841)
!846 = !DILocation(line: 670, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !817, file: !31, line: 670, column: 8)
!848 = !DILocation(line: 670, column: 8, scope: !817)
!849 = !DILocation(line: 671, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !31, line: 670, column: 17)
!851 = !DILocation(line: 671, column: 25, scope: !850)
!852 = !DILocation(line: 671, column: 8, scope: !850)
!853 = !DILocation(line: 671, column: 16, scope: !850)
!854 = !DILocation(line: 672, column: 4, scope: !850)
!855 = !DILocation(line: 674, column: 4, scope: !817)
!856 = !DILocation(line: 674, column: 11, scope: !817)
!857 = !DILocation(line: 674, column: 19, scope: !817)
!858 = !DILocation(line: 675, column: 4, scope: !817)
!859 = !DILocation(line: 675, column: 11, scope: !817)
!860 = !DILocation(line: 675, column: 18, scope: !817)
!861 = !DILocation(line: 676, column: 4, scope: !817)
!862 = !DILocation(line: 676, column: 11, scope: !817)
!863 = !DILocation(line: 676, column: 19, scope: !817)
!864 = !DILocation(line: 677, column: 4, scope: !817)
!865 = !DILocation(line: 677, column: 11, scope: !817)
!866 = !DILocation(line: 677, column: 19, scope: !817)
!867 = !DILocation(line: 678, column: 1, scope: !817)
!868 = distinct !DISubprogram(name: "AsyncSocket_Err2String", scope: !31, file: !31, line: 698, type: !869, isLocal: false, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!869 = !DISubroutineType(types: !870)
!870 = !{!127, !51}
!871 = !DILocalVariable(name: "err", arg: 1, scope: !868, file: !31, line: 698, type: !51)
!872 = !DILocation(line: 698, column: 28, scope: !868)
!873 = !DILocation(line: 700, column: 47, scope: !868)
!874 = !DILocation(line: 700, column: 26, scope: !868)
!875 = !DILocation(line: 700, column: 11, scope: !876)
!876 = !DILexicalBlockFile(scope: !868, file: !31, discriminator: 1)
!877 = !DILocation(line: 700, column: 4, scope: !868)
!878 = distinct !DISubprogram(name: "Msg_StripMSGID", scope: !879, file: !879, line: 99, type: !880, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!879 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/msgid.h", directory: "/home/lichi/Desktop/open-vm-tools/line57")
!880 = !DISubroutineType(types: !881)
!881 = !{!127, !127}
!882 = !DILocalVariable(name: "idString", arg: 1, scope: !878, file: !879, line: 99, type: !127)
!883 = !DILocation(line: 99, column: 28, scope: !878)
!884 = !DILocalVariable(name: "s", scope: !878, file: !879, line: 101, type: !127)
!885 = !DILocation(line: 101, column: 16, scope: !878)
!886 = !DILocation(line: 101, column: 20, scope: !878)
!887 = !DILocation(line: 103, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !878, file: !879, line: 103, column: 8)
!889 = !DILocation(line: 103, column: 11, scope: !888)
!890 = !DILocation(line: 103, column: 7, scope: !888)
!891 = !DILocation(line: 103, column: 18, scope: !892)
!892 = !DILexicalBlockFile(scope: !888, file: !879, discriminator: 1)
!893 = !DILocation(line: 103, column: 10, scope: !892)
!894 = !DILocation(line: 103, column: 38, scope: !892)
!895 = !DILocation(line: 103, column: 44, scope: !892)
!896 = !DILocation(line: 104, column: 12, scope: !888)
!897 = !DILocation(line: 104, column: 8, scope: !888)
!898 = !DILocation(line: 104, column: 18, scope: !888)
!899 = !DILocation(line: 104, column: 25, scope: !888)
!900 = !DILocation(line: 105, column: 20, scope: !888)
!901 = !DILocation(line: 105, column: 22, scope: !888)
!902 = !DILocation(line: 105, column: 13, scope: !888)
!903 = !DILocation(line: 105, column: 11, scope: !888)
!904 = !DILocation(line: 105, column: 33, scope: !888)
!905 = !DILocation(line: 103, column: 8, scope: !906)
!906 = !DILexicalBlockFile(scope: !878, file: !879, discriminator: 2)
!907 = !DILocation(line: 106, column: 14, scope: !908)
!908 = distinct !DILexicalBlock(scope: !888, file: !879, line: 105, column: 41)
!909 = !DILocation(line: 106, column: 16, scope: !908)
!910 = !DILocation(line: 106, column: 7, scope: !908)
!911 = !DILocation(line: 108, column: 11, scope: !878)
!912 = !DILocation(line: 108, column: 4, scope: !878)
!913 = !DILocation(line: 109, column: 1, scope: !878)
!914 = distinct !DISubprogram(name: "AsyncSocket_MsgError", scope: !31, file: !31, line: 721, type: !869, isLocal: false, isDefinition: true, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!915 = !DILocalVariable(name: "asyncSockError", arg: 1, scope: !914, file: !31, line: 721, type: !51)
!916 = !DILocation(line: 721, column: 26, scope: !914)
!917 = !DILocalVariable(name: "result", scope: !914, file: !31, line: 723, type: !127)
!918 = !DILocation(line: 723, column: 16, scope: !914)
!919 = !DILocation(line: 724, column: 12, scope: !914)
!920 = !DILocation(line: 724, column: 4, scope: !914)
!921 = !DILocation(line: 726, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !914, file: !31, line: 724, column: 28)
!923 = !DILocation(line: 727, column: 7, scope: !922)
!924 = !DILocation(line: 729, column: 14, scope: !922)
!925 = !DILocation(line: 730, column: 7, scope: !922)
!926 = !DILocation(line: 732, column: 14, scope: !922)
!927 = !DILocation(line: 733, column: 7, scope: !922)
!928 = !DILocation(line: 735, column: 14, scope: !922)
!929 = !DILocation(line: 736, column: 7, scope: !922)
!930 = !DILocation(line: 738, column: 14, scope: !922)
!931 = !DILocation(line: 739, column: 7, scope: !922)
!932 = !DILocation(line: 741, column: 14, scope: !922)
!933 = !DILocation(line: 742, column: 7, scope: !922)
!934 = !DILocation(line: 744, column: 14, scope: !922)
!935 = !DILocation(line: 745, column: 7, scope: !922)
!936 = !DILocation(line: 747, column: 14, scope: !922)
!937 = !DILocation(line: 748, column: 7, scope: !922)
!938 = !DILocation(line: 750, column: 14, scope: !922)
!939 = !DILocation(line: 751, column: 7, scope: !922)
!940 = !DILocation(line: 753, column: 14, scope: !922)
!941 = !DILocation(line: 754, column: 7, scope: !922)
!942 = !DILocation(line: 756, column: 14, scope: !922)
!943 = !DILocation(line: 757, column: 7, scope: !922)
!944 = !DILocation(line: 759, column: 14, scope: !922)
!945 = !DILocation(line: 760, column: 7, scope: !922)
!946 = !DILocation(line: 762, column: 14, scope: !922)
!947 = !DILocation(line: 763, column: 7, scope: !922)
!948 = !DILocation(line: 765, column: 14, scope: !922)
!949 = !DILocation(line: 766, column: 7, scope: !922)
!950 = !DILocation(line: 768, column: 14, scope: !922)
!951 = !DILocation(line: 769, column: 7, scope: !922)
!952 = !DILocation(line: 771, column: 14, scope: !922)
!953 = !DILocation(line: 772, column: 4, scope: !922)
!954 = !DILocation(line: 774, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !914, file: !31, line: 774, column: 8)
!956 = !DILocation(line: 774, column: 8, scope: !914)
!957 = !DILocation(line: 775, column: 60, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !31, line: 774, column: 17)
!959 = !DILocation(line: 775, column: 7, scope: !958)
!960 = !DILocation(line: 776, column: 14, scope: !958)
!961 = !DILocation(line: 777, column: 4, scope: !958)
!962 = !DILocation(line: 778, column: 11, scope: !914)
!963 = !DILocation(line: 778, column: 4, scope: !914)
!964 = distinct !DISubprogram(name: "stristr", scope: !31, file: !31, line: 802, type: !965, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!965 = !DISubroutineType(types: !966)
!966 = !{!127, !127, !127}
!967 = !DILocalVariable(name: "haystack", arg: 1, scope: !964, file: !31, line: 802, type: !127)
!968 = !DILocation(line: 802, column: 21, scope: !964)
!969 = !DILocalVariable(name: "needle", arg: 2, scope: !964, file: !31, line: 803, type: !127)
!970 = !DILocation(line: 803, column: 21, scope: !964)
!971 = !DILocation(line: 805, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !31, line: 805, column: 8)
!973 = !DILocation(line: 805, column: 8, scope: !972)
!974 = !DILocation(line: 805, column: 8, scope: !964)
!975 = !DILocalVariable(name: "len", scope: !976, file: !31, line: 806, type: !51)
!976 = distinct !DILexicalBlock(scope: !972, file: !31, line: 805, column: 17)
!977 = !DILocation(line: 806, column: 11, scope: !976)
!978 = !DILocation(line: 806, column: 24, scope: !976)
!979 = !DILocation(line: 806, column: 17, scope: !976)
!980 = !DILocation(line: 807, column: 7, scope: !976)
!981 = !DILocation(line: 807, column: 15, scope: !982)
!982 = !DILexicalBlockFile(scope: !983, file: !31, discriminator: 1)
!983 = distinct !DILexicalBlock(scope: !984, file: !31, line: 807, column: 7)
!984 = distinct !DILexicalBlock(scope: !976, file: !31, line: 807, column: 7)
!985 = !DILocation(line: 807, column: 14, scope: !982)
!986 = !DILocation(line: 807, column: 7, scope: !982)
!987 = !DILocation(line: 808, column: 26, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !31, line: 808, column: 14)
!989 = distinct !DILexicalBlock(scope: !983, file: !31, line: 807, column: 37)
!990 = !DILocation(line: 808, column: 36, scope: !988)
!991 = !DILocation(line: 808, column: 44, scope: !988)
!992 = !DILocation(line: 808, column: 14, scope: !988)
!993 = !DILocation(line: 808, column: 49, scope: !988)
!994 = !DILocation(line: 808, column: 14, scope: !989)
!995 = !DILocation(line: 809, column: 20, scope: !996)
!996 = distinct !DILexicalBlock(scope: !988, file: !31, line: 808, column: 55)
!997 = !DILocation(line: 809, column: 13, scope: !996)
!998 = !DILocation(line: 811, column: 7, scope: !989)
!999 = !DILocation(line: 807, column: 33, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !983, file: !31, discriminator: 2)
!1001 = !DILocation(line: 807, column: 7, scope: !1000)
!1002 = distinct !{!1002, !980}
!1003 = !DILocation(line: 812, column: 7, scope: !976)
!1004 = !DILocation(line: 814, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !972, file: !31, line: 813, column: 11)
!1006 = !DILocation(line: 814, column: 7, scope: !1005)
!1007 = !DILocation(line: 816, column: 1, scope: !964)
!1008 = distinct !DISubprogram(name: "Atomic_ReadAdd32", scope: !262, file: !262, line: 1864, type: !1009, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!40, !468, !40}
!1011 = !DILocalVariable(name: "var", arg: 1, scope: !1008, file: !262, line: 1864, type: !468)
!1012 = !DILocation(line: 1864, column: 33, scope: !1008)
!1013 = !DILocalVariable(name: "val", arg: 2, scope: !1008, file: !262, line: 1865, type: !40)
!1014 = !DILocation(line: 1865, column: 25, scope: !1008)
!1015 = !DILocation(line: 1896, column: 15, scope: !1008)
!1016 = !DILocation(line: 1896, column: 20, scope: !1008)
!1017 = !DILocation(line: 1897, column: 14, scope: !1008)
!1018 = !DILocation(line: 1893, column: 4, scope: !1008)
!1019 = !{i32 64626}
!1020 = !DILocation(line: 1900, column: 11, scope: !1008)
!1021 = !DILocation(line: 1900, column: 4, scope: !1008)
!1022 = distinct !DISubprogram(name: "PollClassSet_Empty", scope: !16, file: !16, line: 132, type: !1023, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !260)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!58}
!1025 = !DILocalVariable(name: "set", scope: !1022, file: !16, line: 134, type: !58)
!1026 = !DILocation(line: 134, column: 17, scope: !1022)
!1027 = !DILocation(line: 135, column: 11, scope: !1022)
!1028 = !DILocation(line: 135, column: 4, scope: !1022)
