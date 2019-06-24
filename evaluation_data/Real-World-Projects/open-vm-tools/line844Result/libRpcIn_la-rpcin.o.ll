; ModuleID = './libRpcIn_la-rpcin.o.i'
source_filename = "./libRpcIn_la-rpcin.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcIn = type { %struct._GSource*, %struct._GMainContext*, i32 (%struct.RpcInData*)*, i8*, %struct._ConnInfo*, %struct._GSource*, %struct.Message_Channel*, i32, i32, void (i8*, i8*)*, i8*, i8, i8*, i64, i8, i8 }
%struct._ConnInfo = type { %struct.AsyncSocket*, i32, i8*, i32, i8, i8, i8, i32, i64, %struct.RpcIn* }
%struct.AsyncSocket = type opaque
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.Message_Channel = type { i16, i8*, i64, i8, i32, i32 }
%struct._GMainContext = type opaque
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.AsyncSocketPollParams = type { i32, %struct.MXUserRecLock*, %struct.PollClassSet, %struct.IVmdbPoll* }
%struct.MXUserRecLock = type opaque
%struct.PollClassSet = type { i64 }
%struct.IVmdbPoll = type opaque
%struct.DataMap = type { %struct.HashMap*, i64 }
%struct.HashMap = type opaque

@.str = private unnamed_addr constant [31 x i8] c"RpcIn: couldn't close channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"RpcIn: sending %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"RpcIn: couldn't send back the last result\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"RpcIn: sending msg to conn %d: len=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"RpcIn: error in AsyncSocket_Send for socket %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"RpcIn: Error in allocating memory for conn %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"RpcIn: Error in dataMap encoding for conn %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"RpcIn: Closing connection %d as sendbuffer is now empty.\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"RpcIn: Shutting down vsocket connection %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"RpcIn: Closing vsocket connection %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"RpcIn: error in stopping recv for conn %d\0A\00", align 1
@RpcInOpenChannel.first = internal global i8 1, align 1
@RpcInOpenChannel.initOk = internal global i8 1, align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"RpcIn: Error in socket initialization: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"RpcIn: Error in allocating memory for vsocket connection.\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"RpcIn: Error in creating vsocket connection: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"RpcIn: Error in setting error handler for vsocket %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"RpcIn: successfully created vsocket connection %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"RpcIn: couldn't open channel with TCLO protocol\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"RpcIn_start: couldn't start the loop\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"RpcIn: failed to create vsocket connection, using backdoor.\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"RpcIn: error in recving packet header for conn: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"RpcIn: error in recv\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"RpcIn:: Got packet length %d from conn %d.\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"RpcIn: packet error\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"RpcIn: Got msg from conn %d: [%s]\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"RpcIn: Unable to send\00", align 1
@.str.25 = private unnamed_addr constant [74 x i8] c"RpcIn: Could not allocate recv buffer for socket %d, closing connection.\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Couldn't allocate enough memory\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"RpcIn: error in recving packet for conn %d, closing connection.\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"RpcIn: Error in dataMap decoding for conn %d, error=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"RpcIn: Error in allocating memory for conn %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"RpcIn: Empty payload for conn %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"OK \00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"ERROR \00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"RpcIn: Not enough memory\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"RpcIn: error in scheduling heartbeat callback.\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"RpcIn: vsocket connection error\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"RpcIn: Error in socket %d, closing connection: %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"RpcIn: falling back to use backdoor ...\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"RpcIn: Channel is not active\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"RpcIn: Unable to receive\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"RpcIn: received %d bytes, content:\22%s\22\0A\00", align 1
@RpcInLoop.lastPrintMilli = internal global i64 0, align 8
@.str.41 = private unnamed_addr constant [42 x i8] c"RpcIn: received 0 bytes, empty TCLO poll\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"RpcIn: Unable to run the loop\00", align 1
@ByteDump.truncationTag = internal constant [4 x i8] c"...\00", align 1
@ByteDump.dumpBuffer = internal global [132 x i8] zeroinitializer, align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"(assumed/dropped binary data)\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.RpcIn* @RpcIn_Construct(%struct._GMainContext*, i32 (%struct.RpcInData*)*, i8*) #0 !dbg !262 {
  %4 = alloca %struct._GMainContext*, align 8
  %5 = alloca i32 (%struct.RpcInData*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.RpcIn*, align 8
  store %struct._GMainContext* %0, %struct._GMainContext** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GMainContext** %4, metadata !265, metadata !266), !dbg !267
  store i32 (%struct.RpcInData*)* %1, i32 (%struct.RpcInData*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.RpcInData*)** %5, metadata !268, metadata !266), !dbg !269
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !270, metadata !266), !dbg !271
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %7, metadata !272, metadata !266), !dbg !273
  call void @Poll_InitGtk(), !dbg !274
  %8 = call noalias i8* @calloc(i64 1, i64 112) #7, !dbg !275
  %9 = bitcast i8* %8 to %struct.RpcIn*, !dbg !275
  store %struct.RpcIn* %9, %struct.RpcIn** %7, align 8, !dbg !276
  %10 = load %struct.RpcIn*, %struct.RpcIn** %7, align 8, !dbg !277
  %11 = icmp ne %struct.RpcIn* %10, null, !dbg !279
  br i1 %11, label %12, label %22, !dbg !280

; <label>:12:                                     ; preds = %3
  %13 = load %struct._GMainContext*, %struct._GMainContext** %4, align 8, !dbg !281
  %14 = load %struct.RpcIn*, %struct.RpcIn** %7, align 8, !dbg !283
  %15 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %14, i32 0, i32 1, !dbg !284
  store %struct._GMainContext* %13, %struct._GMainContext** %15, align 8, !dbg !285
  %16 = load i8*, i8** %6, align 8, !dbg !286
  %17 = load %struct.RpcIn*, %struct.RpcIn** %7, align 8, !dbg !287
  %18 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %17, i32 0, i32 3, !dbg !288
  store i8* %16, i8** %18, align 8, !dbg !289
  %19 = load i32 (%struct.RpcInData*)*, i32 (%struct.RpcInData*)** %5, align 8, !dbg !290
  %20 = load %struct.RpcIn*, %struct.RpcIn** %7, align 8, !dbg !291
  %21 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %20, i32 0, i32 2, !dbg !292
  store i32 (%struct.RpcInData*)* %19, i32 (%struct.RpcInData*)** %21, align 8, !dbg !293
  br label %22, !dbg !294

; <label>:22:                                     ; preds = %12, %3
  %23 = load %struct.RpcIn*, %struct.RpcIn** %7, align 8, !dbg !295
  ret %struct.RpcIn* %23, !dbg !296
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Poll_InitGtk() #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define void @RpcIn_Destruct(%struct.RpcIn*) #0 !dbg !297 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !300, metadata !266), !dbg !301
  %3 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !302
  %4 = bitcast %struct.RpcIn* %3 to i8*, !dbg !302
  call void @free(i8* %4) #7, !dbg !303
  ret void, !dbg !304
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @RpcIn_stop(%struct.RpcIn*) #0 !dbg !305 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !306, metadata !266), !dbg !307
  %3 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !308
  %4 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %3, i32 0, i32 14, !dbg !310
  %5 = load i8, i8* %4, align 8, !dbg !310
  %6 = icmp ne i8 %5, 0, !dbg !308
  br i1 %6, label %7, label %10, !dbg !311

; <label>:7:                                      ; preds = %1
  %8 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !312
  %9 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %8, i32 0, i32 15, !dbg !314
  store i8 1, i8* %9, align 1, !dbg !315
  br label %12, !dbg !316

; <label>:10:                                     ; preds = %1
  %11 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !317
  call void @RpcInStop(%struct.RpcIn* %11), !dbg !319
  br label %12

; <label>:12:                                     ; preds = %10, %7
  ret void, !dbg !320
}

; Function Attrs: nounwind uwtable
define internal void @RpcInStop(%struct.RpcIn*) #0 !dbg !321 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !322, metadata !266), !dbg !323
  %3 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !324
  %4 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %3, i32 0, i32 0, !dbg !326
  %5 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !326
  %6 = icmp ne %struct._GSource* %5, null, !dbg !324
  br i1 %6, label %7, label %22, !dbg !327

; <label>:7:                                      ; preds = %1
  %8 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !328
  %9 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %8, i32 0, i32 14, !dbg !331
  %10 = load i8, i8* %9, align 8, !dbg !331
  %11 = icmp ne i8 %10, 0, !dbg !328
  br i1 %11, label %16, label %12, !dbg !332

; <label>:12:                                     ; preds = %7
  %13 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !333
  %14 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %13, i32 0, i32 0, !dbg !335
  %15 = load %struct._GSource*, %struct._GSource** %14, align 8, !dbg !335
  call void @g_source_destroy(%struct._GSource* %15), !dbg !336
  br label %16, !dbg !337

; <label>:16:                                     ; preds = %12, %7
  %17 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !338
  %18 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %17, i32 0, i32 0, !dbg !339
  %19 = load %struct._GSource*, %struct._GSource** %18, align 8, !dbg !339
  call void @g_source_unref(%struct._GSource* %19), !dbg !340
  %20 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !341
  %21 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %20, i32 0, i32 0, !dbg !342
  store %struct._GSource* null, %struct._GSource** %21, align 8, !dbg !343
  br label %22, !dbg !344

; <label>:22:                                     ; preds = %16, %1
  %23 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !345
  %24 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %23, i32 0, i32 6, !dbg !347
  %25 = load %struct.Message_Channel*, %struct.Message_Channel** %24, align 8, !dbg !347
  %26 = icmp ne %struct.Message_Channel* %25, null, !dbg !345
  br i1 %26, label %27, label %46, !dbg !348

; <label>:27:                                     ; preds = %22
  %28 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !349
  %29 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %28, i32 0, i32 11, !dbg !352
  %30 = load i8, i8* %29, align 8, !dbg !352
  %31 = icmp ne i8 %30, 0, !dbg !349
  br i1 %31, label %32, label %35, !dbg !353

; <label>:32:                                     ; preds = %27
  %33 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !354
  %34 = call signext i8 @RpcInSend(%struct.RpcIn* %33, i32 0), !dbg !356
  br label %35, !dbg !357

; <label>:35:                                     ; preds = %32, %27
  %36 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !358
  %37 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %36, i32 0, i32 6, !dbg !360
  %38 = load %struct.Message_Channel*, %struct.Message_Channel** %37, align 8, !dbg !360
  %39 = call signext i8 @Message_Close(%struct.Message_Channel* %38), !dbg !361
  %40 = sext i8 %39 to i32, !dbg !361
  %41 = icmp eq i32 %40, 0, !dbg !362
  br i1 %41, label %42, label %43, !dbg !363

; <label>:42:                                     ; preds = %35
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)), !dbg !364
  br label %43, !dbg !366

; <label>:43:                                     ; preds = %42, %35
  %44 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !367
  %45 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %44, i32 0, i32 6, !dbg !368
  store %struct.Message_Channel* null, %struct.Message_Channel** %45, align 8, !dbg !369
  br label %46, !dbg !370

; <label>:46:                                     ; preds = %43, %22
  %47 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !371
  %48 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %47, i32 0, i32 4, !dbg !373
  %49 = load %struct._ConnInfo*, %struct._ConnInfo** %48, align 8, !dbg !373
  %50 = icmp ne %struct._ConnInfo* %49, null, !dbg !374
  br i1 %50, label %51, label %63, !dbg !375

; <label>:51:                                     ; preds = %46
  %52 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !376
  %53 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %52, i32 0, i32 11, !dbg !379
  %54 = load i8, i8* %53, align 8, !dbg !379
  %55 = icmp ne i8 %54, 0, !dbg !376
  br i1 %55, label %56, label %59, !dbg !380

; <label>:56:                                     ; preds = %51
  %57 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !381
  %58 = call signext i8 @RpcInSend(%struct.RpcIn* %57, i32 0), !dbg !383
  br label %59, !dbg !384

; <label>:59:                                     ; preds = %56, %51
  %60 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !385
  %61 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %60, i32 0, i32 4, !dbg !386
  %62 = load %struct._ConnInfo*, %struct._ConnInfo** %61, align 8, !dbg !386
  call void @RpcInCloseConn(%struct._ConnInfo* %62), !dbg !387
  br label %63, !dbg !388

; <label>:63:                                     ; preds = %59, %46
  %64 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !389
  %65 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %64, i32 0, i32 5, !dbg !391
  %66 = load %struct._GSource*, %struct._GSource** %65, align 8, !dbg !391
  %67 = icmp ne %struct._GSource* %66, null, !dbg !392
  br i1 %67, label %68, label %77, !dbg !393

; <label>:68:                                     ; preds = %63
  %69 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !394
  %70 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %69, i32 0, i32 5, !dbg !396
  %71 = load %struct._GSource*, %struct._GSource** %70, align 8, !dbg !396
  call void @g_source_destroy(%struct._GSource* %71), !dbg !397
  %72 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !398
  %73 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %72, i32 0, i32 5, !dbg !399
  %74 = load %struct._GSource*, %struct._GSource** %73, align 8, !dbg !399
  call void @g_source_unref(%struct._GSource* %74), !dbg !400
  %75 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !401
  %76 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %75, i32 0, i32 5, !dbg !402
  store %struct._GSource* null, %struct._GSource** %76, align 8, !dbg !403
  br label %77, !dbg !404

; <label>:77:                                     ; preds = %68, %63
  ret void, !dbg !405
}

; Function Attrs: nounwind uwtable
define signext i8 @RpcIn_start(%struct.RpcIn*, i32, void (i8*, i8*)*, i8*) #0 !dbg !406 {
  %5 = alloca %struct.RpcIn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %5, metadata !409, metadata !266), !dbg !410
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !411, metadata !266), !dbg !412
  store void (i8*, i8*)* %2, void (i8*, i8*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %7, metadata !413, metadata !266), !dbg !414
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !415, metadata !266), !dbg !416
  %9 = load %struct.RpcIn*, %struct.RpcIn** %5, align 8, !dbg !417
  %10 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %9, i32 0, i32 7, !dbg !418
  store i32 0, i32* %10, align 8, !dbg !419
  %11 = load i32, i32* %6, align 4, !dbg !420
  %12 = load %struct.RpcIn*, %struct.RpcIn** %5, align 8, !dbg !421
  %13 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %12, i32 0, i32 8, !dbg !422
  store i32 %11, i32* %13, align 4, !dbg !423
  %14 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !424
  %15 = load %struct.RpcIn*, %struct.RpcIn** %5, align 8, !dbg !425
  %16 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %15, i32 0, i32 9, !dbg !426
  store void (i8*, i8*)* %14, void (i8*, i8*)** %16, align 8, !dbg !427
  %17 = load i8*, i8** %8, align 8, !dbg !428
  %18 = load %struct.RpcIn*, %struct.RpcIn** %5, align 8, !dbg !429
  %19 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %18, i32 0, i32 10, !dbg !430
  store i8* %17, i8** %19, align 8, !dbg !431
  %20 = load %struct.RpcIn*, %struct.RpcIn** %5, align 8, !dbg !432
  %21 = call signext i8 @RpcInOpenChannel(%struct.RpcIn* %20, i8 signext 0), !dbg !433
  ret i8 %21, !dbg !434
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInOpenChannel(%struct.RpcIn*, i8 signext) #0 !dbg !237 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.RpcIn*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.AsyncSocket*, align 8
  %7 = alloca i32, align 4
  store %struct.RpcIn* %0, %struct.RpcIn** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %4, metadata !435, metadata !266), !dbg !436
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !437, metadata !266), !dbg !438
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %6, metadata !439, metadata !266), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %7, metadata !441, metadata !266), !dbg !442
  br label %8, !dbg !443

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %5, align 1, !dbg !444
  %10 = icmp ne i8 %9, 0, !dbg !444
  br i1 %10, label %11, label %12, !dbg !447

; <label>:11:                                     ; preds = %8
  br label %81, !dbg !448

; <label>:12:                                     ; preds = %8
  %13 = load i8, i8* @RpcInOpenChannel.first, align 1, !dbg !450
  %14 = icmp ne i8 %13, 0, !dbg !450
  br i1 %14, label %15, label %27, !dbg !452

; <label>:15:                                     ; preds = %12
  store i8 0, i8* @RpcInOpenChannel.first, align 1, !dbg !453
  %16 = call i32 @AsyncSocket_Init(), !dbg !455
  store i32 %16, i32* %7, align 4, !dbg !456
  %17 = load i32, i32* %7, align 4, !dbg !457
  %18 = icmp eq i32 %17, 0, !dbg !458
  %19 = zext i1 %18 to i32, !dbg !458
  %20 = trunc i32 %19 to i8, !dbg !459
  store i8 %20, i8* @RpcInOpenChannel.initOk, align 1, !dbg !460
  %21 = load i8, i8* @RpcInOpenChannel.initOk, align 1, !dbg !461
  %22 = icmp ne i8 %21, 0, !dbg !461
  br i1 %22, label %26, label %23, !dbg !463

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %7, align 4, !dbg !464
  %25 = call i8* @AsyncSocket_Err2String(i32 %24), !dbg !466
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8* %25), !dbg !467
  br label %81, !dbg !468

; <label>:26:                                     ; preds = %15
  br label %27, !dbg !469

; <label>:27:                                     ; preds = %26, %12
  %28 = load i8, i8* @RpcInOpenChannel.initOk, align 1, !dbg !470
  %29 = icmp ne i8 %28, 0, !dbg !470
  br i1 %29, label %31, label %30, !dbg !472

; <label>:30:                                     ; preds = %27
  br label %81, !dbg !473

; <label>:31:                                     ; preds = %27
  %32 = call noalias i8* @calloc(i64 1, i64 56) #7, !dbg !475
  %33 = bitcast i8* %32 to %struct._ConnInfo*, !dbg !475
  %34 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !476
  %35 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %34, i32 0, i32 4, !dbg !477
  store %struct._ConnInfo* %33, %struct._ConnInfo** %35, align 8, !dbg !478
  %36 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !479
  %37 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %36, i32 0, i32 4, !dbg !481
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %37, align 8, !dbg !481
  %39 = icmp eq %struct._ConnInfo* %38, null, !dbg !482
  br i1 %39, label %40, label %41, !dbg !483

; <label>:40:                                     ; preds = %31
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i32 0, i32 0)), !dbg !484
  br label %81, !dbg !486

; <label>:41:                                     ; preds = %31
  %42 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !487
  %43 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !488
  %44 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %43, i32 0, i32 4, !dbg !489
  %45 = load %struct._ConnInfo*, %struct._ConnInfo** %44, align 8, !dbg !489
  %46 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %45, i32 0, i32 9, !dbg !490
  store %struct.RpcIn* %42, %struct.RpcIn** %46, align 8, !dbg !491
  %47 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !492
  %48 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %47, i32 0, i32 4, !dbg !493
  %49 = load %struct._ConnInfo*, %struct._ConnInfo** %48, align 8, !dbg !493
  %50 = bitcast %struct._ConnInfo* %49 to i8*, !dbg !492
  %51 = call %struct.AsyncSocket* @AsyncSocket_ConnectVMCI(i32 0, i32 975, void (%struct.AsyncSocket*, i8*)* @RpcInConnectDone, i8* %50, i32 0, %struct.AsyncSocketPollParams* null, i32* %7), !dbg !494
  store %struct.AsyncSocket* %51, %struct.AsyncSocket** %6, align 8, !dbg !495
  %52 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !496
  %53 = icmp eq %struct.AsyncSocket* %52, null, !dbg !498
  br i1 %53, label %54, label %57, !dbg !499

; <label>:54:                                     ; preds = %41
  %55 = load i32, i32* %7, align 4, !dbg !500
  %56 = call i8* @AsyncSocket_Err2String(i32 %55), !dbg !502
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* %56), !dbg !503
  br label %80, !dbg !504

; <label>:57:                                     ; preds = %41
  %58 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !505
  %59 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !507
  %60 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %59, i32 0, i32 4, !dbg !508
  %61 = load %struct._ConnInfo*, %struct._ConnInfo** %60, align 8, !dbg !508
  %62 = bitcast %struct._ConnInfo* %61 to i8*, !dbg !507
  %63 = call i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket* %58, void (i32, %struct.AsyncSocket*, i8*)* @RpcInConnErrorHandler, i8* %62), !dbg !509
  store i32 %63, i32* %7, align 4, !dbg !510
  %64 = load i32, i32* %7, align 4, !dbg !511
  %65 = icmp ne i32 %64, 0, !dbg !513
  br i1 %65, label %66, label %71, !dbg !514

; <label>:66:                                     ; preds = %57
  %67 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !515
  %68 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %67), !dbg !517
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i32 %68), !dbg !518
  %69 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !519
  %70 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %69), !dbg !520
  br label %79, !dbg !521

; <label>:71:                                     ; preds = %57
  %72 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !522
  %73 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %72), !dbg !524
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i32 %73), !dbg !525
  %74 = load %struct.AsyncSocket*, %struct.AsyncSocket** %6, align 8, !dbg !526
  %75 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !527
  %76 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %75, i32 0, i32 4, !dbg !528
  %77 = load %struct._ConnInfo*, %struct._ConnInfo** %76, align 8, !dbg !528
  %78 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %77, i32 0, i32 0, !dbg !529
  store %struct.AsyncSocket* %74, %struct.AsyncSocket** %78, align 8, !dbg !530
  store i8 1, i8* %3, align 1, !dbg !531
  br label %114, !dbg !531

; <label>:79:                                     ; preds = %66
  br label %80

; <label>:80:                                     ; preds = %79, %54
  br label %81, !dbg !532

; <label>:81:                                     ; preds = %80, %40, %30, %23, %11
  %82 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !533
  %83 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %82, i32 0, i32 4, !dbg !535
  %84 = load %struct._ConnInfo*, %struct._ConnInfo** %83, align 8, !dbg !535
  %85 = icmp ne %struct._ConnInfo* %84, null, !dbg !536
  br i1 %85, label %86, label %93, !dbg !537

; <label>:86:                                     ; preds = %81
  %87 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !538
  %88 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %87, i32 0, i32 4, !dbg !540
  %89 = load %struct._ConnInfo*, %struct._ConnInfo** %88, align 8, !dbg !540
  %90 = bitcast %struct._ConnInfo* %89 to i8*, !dbg !538
  call void @free(i8* %90) #7, !dbg !541
  %91 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !542
  %92 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %91, i32 0, i32 4, !dbg !543
  store %struct._ConnInfo* null, %struct._ConnInfo** %92, align 8, !dbg !544
  br label %93, !dbg !545

; <label>:93:                                     ; preds = %86, %81
  %94 = call %struct.Message_Channel* @Message_Open(i32 1330398036), !dbg !546
  %95 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !547
  %96 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %95, i32 0, i32 6, !dbg !548
  store %struct.Message_Channel* %94, %struct.Message_Channel** %96, align 8, !dbg !549
  %97 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !550
  %98 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %97, i32 0, i32 6, !dbg !552
  %99 = load %struct.Message_Channel*, %struct.Message_Channel** %98, align 8, !dbg !552
  %100 = icmp eq %struct.Message_Channel* %99, null, !dbg !553
  br i1 %100, label %101, label %103, !dbg !554

; <label>:101:                                    ; preds = %93
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0)), !dbg !555
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !557
  br label %112, !dbg !558

; <label>:103:                                    ; preds = %93
  %104 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !559
  %105 = call signext i8 @RpcInScheduleRecvEvent(%struct.RpcIn* %104), !dbg !561
  %106 = icmp ne i8 %105, 0, !dbg !561
  br i1 %106, label %109, label %107, !dbg !562

; <label>:107:                                    ; preds = %103
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0)), !dbg !563
  %108 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !565
  br label %112, !dbg !566

; <label>:109:                                    ; preds = %103
  %110 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !567
  %111 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %110, i32 0, i32 11, !dbg !568
  store i8 1, i8* %111, align 8, !dbg !569
  store i8 1, i8* %3, align 1, !dbg !570
  br label %114, !dbg !570

; <label>:112:                                    ; preds = %107, %101
  %113 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !571
  call void @RpcInStop(%struct.RpcIn* %113), !dbg !572
  store i8 0, i8* %3, align 1, !dbg !573
  br label %114, !dbg !573

; <label>:114:                                    ; preds = %112, %109, %71
  %115 = load i8, i8* %3, align 1, !dbg !574
  ret i8 %115, !dbg !574
}

declare void @g_source_destroy(%struct._GSource*) #2

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInSend(%struct.RpcIn*, i32) #0 !dbg !575 {
  %3 = alloca %struct.RpcIn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.RpcIn* %0, %struct.RpcIn** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %3, metadata !578, metadata !266), !dbg !579
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !580, metadata !266), !dbg !581
  call void @llvm.dbg.declare(metadata i8* %5, metadata !582, metadata !266), !dbg !583
  store i8 0, i8* %5, align 1, !dbg !583
  call void @llvm.dbg.declare(metadata i8* %6, metadata !584, metadata !266), !dbg !585
  store i8 1, i8* %6, align 1, !dbg !585
  %7 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !586
  %8 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %7, i32 0, i32 4, !dbg !588
  %9 = load %struct._ConnInfo*, %struct._ConnInfo** %8, align 8, !dbg !588
  %10 = icmp ne %struct._ConnInfo* %9, null, !dbg !589
  br i1 %10, label %11, label %24, !dbg !590

; <label>:11:                                     ; preds = %2
  store i8 0, i8* %6, align 1, !dbg !591
  %12 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !593
  %13 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %12, i32 0, i32 4, !dbg !594
  %14 = load %struct._ConnInfo*, %struct._ConnInfo** %13, align 8, !dbg !594
  %15 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !595
  %16 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %15, i32 0, i32 12, !dbg !596
  %17 = load i8*, i8** %16, align 8, !dbg !596
  %18 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !597
  %19 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %18, i32 0, i32 13, !dbg !598
  %20 = load i64, i64* %19, align 8, !dbg !598
  %21 = trunc i64 %20 to i32, !dbg !597
  %22 = load i32, i32* %4, align 4, !dbg !599
  %23 = call signext i8 @RpcInConnSend(%struct._ConnInfo* %14, i8* %17, i32 %21, i32 %22), !dbg !600
  store i8 %23, i8* %5, align 1, !dbg !601
  br label %24, !dbg !602

; <label>:24:                                     ; preds = %11, %2
  %25 = load i8, i8* %6, align 1, !dbg !603
  %26 = icmp ne i8 %25, 0, !dbg !603
  br i1 %26, label %27, label %47, !dbg !605

; <label>:27:                                     ; preds = %24
  %28 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !606
  %29 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %28, i32 0, i32 13, !dbg !609
  %30 = load i64, i64* %29, align 8, !dbg !609
  %31 = icmp ne i64 %30, 0, !dbg !606
  br i1 %31, label %32, label %36, !dbg !610

; <label>:32:                                     ; preds = %27
  %33 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !611
  %34 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %33, i32 0, i32 13, !dbg !613
  %35 = load i64, i64* %34, align 8, !dbg !613
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i64 %35), !dbg !614
  br label %36, !dbg !615

; <label>:36:                                     ; preds = %32, %27
  %37 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !616
  %38 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %37, i32 0, i32 6, !dbg !617
  %39 = load %struct.Message_Channel*, %struct.Message_Channel** %38, align 8, !dbg !617
  %40 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !618
  %41 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %40, i32 0, i32 12, !dbg !619
  %42 = load i8*, i8** %41, align 8, !dbg !619
  %43 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !620
  %44 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %43, i32 0, i32 13, !dbg !621
  %45 = load i64, i64* %44, align 8, !dbg !621
  %46 = call signext i8 @Message_Send(%struct.Message_Channel* %39, i8* %42, i64 %45), !dbg !622
  store i8 %46, i8* %5, align 1, !dbg !623
  br label %47, !dbg !624

; <label>:47:                                     ; preds = %36, %24
  %48 = load i8, i8* %5, align 1, !dbg !625
  %49 = sext i8 %48 to i32, !dbg !625
  %50 = icmp eq i32 %49, 0, !dbg !627
  br i1 %50, label %51, label %52, !dbg !628

; <label>:51:                                     ; preds = %47
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)), !dbg !629
  br label %52, !dbg !631

; <label>:52:                                     ; preds = %51, %47
  %53 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !632
  %54 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %53, i32 0, i32 12, !dbg !633
  %55 = load i8*, i8** %54, align 8, !dbg !633
  call void @free(i8* %55) #7, !dbg !634
  %56 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !635
  %57 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %56, i32 0, i32 12, !dbg !636
  store i8* null, i8** %57, align 8, !dbg !637
  %58 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !638
  %59 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %58, i32 0, i32 13, !dbg !639
  store i64 0, i64* %59, align 8, !dbg !640
  %60 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !641
  %61 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %60, i32 0, i32 11, !dbg !642
  store i8 0, i8* %61, align 8, !dbg !643
  %62 = load i8, i8* %5, align 1, !dbg !644
  ret i8 %62, !dbg !645
}

declare signext i8 @Message_Close(%struct.Message_Channel*) #2

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInCloseConn(%struct._ConnInfo*) #0 !dbg !646 {
  %2 = alloca %struct._ConnInfo*, align 8
  %3 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !649, metadata !266), !dbg !650
  call void @llvm.dbg.declare(metadata i32* %3, metadata !651, metadata !266), !dbg !652
  %4 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !653
  %5 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %4, i32 0, i32 0, !dbg !654
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !654
  %7 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %6), !dbg !655
  store i32 %7, i32* %3, align 4, !dbg !652
  %8 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !656
  %9 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %8, i32 0, i32 9, !dbg !658
  %10 = load %struct.RpcIn*, %struct.RpcIn** %9, align 8, !dbg !658
  %11 = icmp ne %struct.RpcIn* %10, null, !dbg !659
  br i1 %11, label %12, label %19, !dbg !660

; <label>:12:                                     ; preds = %1
  %13 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !661
  %14 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %13, i32 0, i32 9, !dbg !663
  %15 = load %struct.RpcIn*, %struct.RpcIn** %14, align 8, !dbg !663
  %16 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %15, i32 0, i32 4, !dbg !664
  store %struct._ConnInfo* null, %struct._ConnInfo** %16, align 8, !dbg !665
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !666
  %18 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %17, i32 0, i32 9, !dbg !667
  store %struct.RpcIn* null, %struct.RpcIn** %18, align 8, !dbg !668
  br label %19, !dbg !669

; <label>:19:                                     ; preds = %12, %1
  %20 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !670
  %21 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %20, i32 0, i32 7, !dbg !672
  %22 = load i32, i32* %21, align 8, !dbg !672
  %23 = icmp sgt i32 %22, 0, !dbg !673
  br i1 %23, label %24, label %29, !dbg !674

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %3, align 4, !dbg !675
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i32 %25), !dbg !677
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !678
  %27 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %26, i32 0, i32 5, !dbg !679
  store i8 1, i8* %27, align 1, !dbg !680
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !681
  call void @RpcInConnStopRecv(%struct._ConnInfo* %28), !dbg !682
  br label %40, !dbg !683

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %3, align 4, !dbg !684
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 %30), !dbg !686
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !687
  %32 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %31, i32 0, i32 0, !dbg !688
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %32, align 8, !dbg !688
  %34 = call i32 @AsyncSocket_Close(%struct.AsyncSocket* %33), !dbg !689
  %35 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !690
  %36 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %35, i32 0, i32 2, !dbg !691
  %37 = load i8*, i8** %36, align 8, !dbg !691
  call void @free(i8* %37) #7, !dbg !692
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !693
  %39 = bitcast %struct._ConnInfo* %38 to i8*, !dbg !693
  call void @free(i8* %39) #7, !dbg !694
  br label %40

; <label>:40:                                     ; preds = %29, %24
  ret void, !dbg !695
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInConnSend(%struct._ConnInfo*, i8*, i32, i32) #0 !dbg !696 {
  %5 = alloca i8, align 1
  %6 = alloca %struct._ConnInfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %6, metadata !699, metadata !266), !dbg !700
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !701, metadata !266), !dbg !702
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !703, metadata !266), !dbg !704
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !705, metadata !266), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %10, metadata !707, metadata !266), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %11, metadata !709, metadata !266), !dbg !710
  call void @llvm.dbg.declare(metadata i8** %12, metadata !711, metadata !266), !dbg !712
  call void @llvm.dbg.declare(metadata i32* %13, metadata !713, metadata !266), !dbg !714
  %14 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !715
  %15 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %14, i32 0, i32 0, !dbg !716
  %16 = load %struct.AsyncSocket*, %struct.AsyncSocket** %15, align 8, !dbg !716
  %17 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %16), !dbg !717
  store i32 %17, i32* %13, align 4, !dbg !714
  %18 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !718
  %19 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %18, i32 0, i32 0, !dbg !719
  %20 = load %struct.AsyncSocket*, %struct.AsyncSocket** %19, align 8, !dbg !719
  %21 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %20), !dbg !720
  %22 = load i32, i32* %8, align 4, !dbg !721
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i32 %21, i32 %22), !dbg !722
  %23 = load i32, i32* %13, align 4, !dbg !723
  %24 = load i8*, i8** %7, align 8, !dbg !725
  %25 = load i32, i32* %8, align 4, !dbg !726
  %26 = load i32, i32* %9, align 4, !dbg !727
  %27 = call signext i8 @RpcInPackSendData(i32 %23, i8* %24, i32 %25, i32 %26, i8** %12, i32* %11), !dbg !728
  %28 = icmp ne i8 %27, 0, !dbg !728
  br i1 %28, label %30, label %29, !dbg !729

; <label>:29:                                     ; preds = %4
  store i8 0, i8* %5, align 1, !dbg !730
  br label %55, !dbg !730

; <label>:30:                                     ; preds = %4
  %31 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !732
  %32 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %31, i32 0, i32 0, !dbg !733
  %33 = load %struct.AsyncSocket*, %struct.AsyncSocket** %32, align 8, !dbg !733
  %34 = load i8*, i8** %12, align 8, !dbg !734
  %35 = load i32, i32* %11, align 4, !dbg !735
  %36 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !736
  %37 = bitcast %struct._ConnInfo* %36 to i8*, !dbg !736
  %38 = call i32 @AsyncSocket_Send(%struct.AsyncSocket* %33, i8* %34, i32 %35, void (i8*, i32, %struct.AsyncSocket*, i8*)* @RpcInConnSendDoneCb, i8* %37), !dbg !737
  store i32 %38, i32* %10, align 4, !dbg !738
  %39 = load i32, i32* %10, align 4, !dbg !739
  %40 = icmp ne i32 %39, 0, !dbg !741
  br i1 %40, label %41, label %49, !dbg !742

; <label>:41:                                     ; preds = %30
  %42 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !743
  %43 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %42, i32 0, i32 0, !dbg !745
  %44 = load %struct.AsyncSocket*, %struct.AsyncSocket** %43, align 8, !dbg !745
  %45 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %44), !dbg !746
  %46 = load i32, i32* %10, align 4, !dbg !747
  %47 = call i8* @AsyncSocket_Err2String(i32 %46), !dbg !748
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0), i32 %45, i8* %47), !dbg !750
  %48 = load i8*, i8** %12, align 8, !dbg !751
  call void @free(i8* %48) #7, !dbg !752
  store i8 0, i8* %5, align 1, !dbg !753
  br label %55, !dbg !753

; <label>:49:                                     ; preds = %30
  %50 = load i32, i32* %11, align 4, !dbg !754
  %51 = load %struct._ConnInfo*, %struct._ConnInfo** %6, align 8, !dbg !756
  %52 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %51, i32 0, i32 7, !dbg !757
  %53 = load i32, i32* %52, align 8, !dbg !758
  %54 = add nsw i32 %53, %50, !dbg !758
  store i32 %54, i32* %52, align 8, !dbg !758
  store i8 1, i8* %5, align 1, !dbg !759
  br label %55, !dbg !759

; <label>:55:                                     ; preds = %49, %41, %29
  %56 = load i8, i8* %5, align 1, !dbg !760
  ret i8 %56, !dbg !760
}

declare signext i8 @Message_Send(%struct.Message_Channel*, i8*, i64) #2

declare i32 @AsyncSocket_GetFd(%struct.AsyncSocket*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInPackSendData(i32, i8*, i32, i32, i8**, i32*) #0 !dbg !761 {
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.DataMap, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !765, metadata !266), !dbg !766
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !767, metadata !266), !dbg !768
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !769, metadata !266), !dbg !770
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !771, metadata !266), !dbg !772
  store i8** %4, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !773, metadata !266), !dbg !774
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !775, metadata !266), !dbg !776
  call void @llvm.dbg.declare(metadata %struct.DataMap* %14, metadata !777, metadata !266), !dbg !787
  call void @llvm.dbg.declare(metadata i32* %15, metadata !788, metadata !266), !dbg !790
  call void @llvm.dbg.declare(metadata i8** %16, metadata !791, metadata !266), !dbg !792
  call void @llvm.dbg.declare(metadata i32* %17, metadata !793, metadata !266), !dbg !794
  store i32 0, i32* %17, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata i64* %18, metadata !795, metadata !266), !dbg !796
  %19 = load i32, i32* %11, align 4, !dbg !797
  %20 = and i32 %19, 1, !dbg !798
  %21 = icmp ne i32 %20, 0, !dbg !799
  %22 = select i1 %21, i32 2, i32 1, !dbg !799
  %23 = sext i32 %22 to i64, !dbg !799
  store i64 %23, i64* %18, align 8, !dbg !796
  %24 = call i32 @DataMap_Create(%struct.DataMap* %14), !dbg !800
  store i32 %24, i32* %15, align 4, !dbg !801
  %25 = load i32, i32* %15, align 4, !dbg !802
  %26 = icmp ne i32 %25, 0, !dbg !804
  br i1 %26, label %27, label %28, !dbg !805

; <label>:27:                                     ; preds = %6
  br label %70, !dbg !806

; <label>:28:                                     ; preds = %6
  store i32 1, i32* %17, align 4, !dbg !808
  %29 = load i64, i64* %18, align 8, !dbg !809
  %30 = call i32 @DataMap_SetInt64(%struct.DataMap* %14, i32 1, i64 %29, i8 signext 1), !dbg !810
  store i32 %30, i32* %15, align 4, !dbg !811
  %31 = load i32, i32* %15, align 4, !dbg !812
  %32 = icmp ne i32 %31, 0, !dbg !814
  br i1 %32, label %33, label %34, !dbg !815

; <label>:33:                                     ; preds = %28
  br label %70, !dbg !816

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %9, align 8, !dbg !818
  %36 = icmp ne i8* %35, null, !dbg !820
  br i1 %36, label %37, label %61, !dbg !821

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %10, align 4, !dbg !822
  %39 = icmp sgt i32 %38, 0, !dbg !824
  br i1 %39, label %40, label %61, !dbg !825

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %10, align 4, !dbg !826
  %42 = sext i32 %41 to i64, !dbg !826
  %43 = call noalias i8* @malloc(i64 %42) #7, !dbg !828
  store i8* %43, i8** %16, align 8, !dbg !829
  %44 = load i8*, i8** %16, align 8, !dbg !830
  %45 = icmp eq i8* %44, null, !dbg !832
  br i1 %45, label %46, label %48, !dbg !833

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* %8, align 4, !dbg !834
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i32 %47), !dbg !836
  br label %70, !dbg !837

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** %16, align 8, !dbg !838
  %50 = load i8*, i8** %9, align 8, !dbg !839
  %51 = load i32, i32* %10, align 4, !dbg !840
  %52 = sext i32 %51 to i64, !dbg !840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %52, i32 1, i1 false), !dbg !841
  %53 = load i8*, i8** %16, align 8, !dbg !842
  %54 = load i32, i32* %10, align 4, !dbg !843
  %55 = call i32 @DataMap_SetString(%struct.DataMap* %14, i32 2, i8* %53, i32 %54, i8 signext 1), !dbg !844
  store i32 %55, i32* %15, align 4, !dbg !845
  %56 = load i32, i32* %15, align 4, !dbg !846
  %57 = icmp ne i32 %56, 0, !dbg !848
  br i1 %57, label %58, label %60, !dbg !849

; <label>:58:                                     ; preds = %48
  %59 = load i8*, i8** %16, align 8, !dbg !850
  call void @free(i8* %59) #7, !dbg !852
  br label %70, !dbg !853

; <label>:60:                                     ; preds = %48
  br label %61, !dbg !854

; <label>:61:                                     ; preds = %60, %37, %34
  %62 = load i8**, i8*** %12, align 8, !dbg !855
  %63 = load i32*, i32** %13, align 8, !dbg !856
  %64 = call i32 @DataMap_Serialize(%struct.DataMap* %14, i8** %62, i32* %63), !dbg !857
  store i32 %64, i32* %15, align 4, !dbg !858
  %65 = load i32, i32* %15, align 4, !dbg !859
  %66 = icmp ne i32 %65, 0, !dbg !861
  br i1 %66, label %67, label %68, !dbg !862

; <label>:67:                                     ; preds = %61
  br label %70, !dbg !863

; <label>:68:                                     ; preds = %61
  %69 = call i32 @DataMap_Destroy(%struct.DataMap* %14), !dbg !865
  store i8 1, i8* %7, align 1, !dbg !866
  br label %77, !dbg !866

; <label>:70:                                     ; preds = %67, %58, %46, %33, %27
  %71 = load i32, i32* %17, align 4, !dbg !867
  %72 = icmp ne i32 %71, 0, !dbg !867
  br i1 %72, label %73, label %75, !dbg !869

; <label>:73:                                     ; preds = %70
  %74 = call i32 @DataMap_Destroy(%struct.DataMap* %14), !dbg !870
  br label %75, !dbg !872

; <label>:75:                                     ; preds = %73, %70
  %76 = load i32, i32* %8, align 4, !dbg !873
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i32 %76), !dbg !874
  store i8 0, i8* %7, align 1, !dbg !875
  br label %77, !dbg !875

; <label>:77:                                     ; preds = %75, %68
  %78 = load i8, i8* %7, align 1, !dbg !876
  ret i8 %78, !dbg !876
}

declare i32 @AsyncSocket_Send(%struct.AsyncSocket*, i8*, i32, void (i8*, i32, %struct.AsyncSocket*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnSendDoneCb(i8*, i32, %struct.AsyncSocket*, i8*) #0 !dbg !877 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AsyncSocket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._ConnInfo*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !880, metadata !266), !dbg !881
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !882, metadata !266), !dbg !883
  store %struct.AsyncSocket* %2, %struct.AsyncSocket** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %7, metadata !884, metadata !266), !dbg !885
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !886, metadata !266), !dbg !887
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %9, metadata !888, metadata !266), !dbg !889
  %10 = load i8*, i8** %8, align 8, !dbg !890
  %11 = bitcast i8* %10 to %struct._ConnInfo*, !dbg !891
  store %struct._ConnInfo* %11, %struct._ConnInfo** %9, align 8, !dbg !889
  %12 = load i8*, i8** %5, align 8, !dbg !892
  call void @free(i8* %12) #7, !dbg !893
  %13 = load %struct.AsyncSocket*, %struct.AsyncSocket** %7, align 8, !dbg !894
  %14 = call i32 @AsyncSocket_GetState(%struct.AsyncSocket* %13), !dbg !896
  %15 = icmp eq i32 %14, 4, !dbg !897
  br i1 %15, label %16, label %17, !dbg !898

; <label>:16:                                     ; preds = %4
  br label %39, !dbg !899

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %6, align 4, !dbg !901
  %19 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !902
  %20 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %19, i32 0, i32 7, !dbg !903
  %21 = load i32, i32* %20, align 8, !dbg !904
  %22 = sub nsw i32 %21, %18, !dbg !904
  store i32 %22, i32* %20, align 8, !dbg !904
  %23 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !905
  %24 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %23, i32 0, i32 7, !dbg !907
  %25 = load i32, i32* %24, align 8, !dbg !907
  %26 = icmp eq i32 %25, 0, !dbg !908
  br i1 %26, label %27, label %39, !dbg !909

; <label>:27:                                     ; preds = %17
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !910
  %29 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %28, i32 0, i32 5, !dbg !912
  %30 = load i8, i8* %29, align 1, !dbg !912
  %31 = sext i8 %30 to i32, !dbg !910
  %32 = icmp ne i32 %31, 0, !dbg !910
  br i1 %32, label %33, label %39, !dbg !913

; <label>:33:                                     ; preds = %27
  %34 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !914
  %35 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %34, i32 0, i32 0, !dbg !916
  %36 = load %struct.AsyncSocket*, %struct.AsyncSocket** %35, align 8, !dbg !916
  %37 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %36), !dbg !917
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0), i32 %37), !dbg !918
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !919
  call void @RpcInCloseConn(%struct._ConnInfo* %38), !dbg !920
  br label %39, !dbg !921

; <label>:39:                                     ; preds = %16, %33, %27, %17
  ret void, !dbg !922
}

declare i8* @AsyncSocket_Err2String(i32) #2

declare i32 @DataMap_Create(%struct.DataMap*) #2

declare i32 @DataMap_SetInt64(%struct.DataMap*, i32, i64, i8 signext) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @DataMap_SetString(%struct.DataMap*, i32, i8*, i32, i8 signext) #2

declare i32 @DataMap_Serialize(%struct.DataMap*, i8**, i32*) #2

declare i32 @DataMap_Destroy(%struct.DataMap*) #2

declare i32 @AsyncSocket_GetState(%struct.AsyncSocket*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnStopRecv(%struct._ConnInfo*) #0 !dbg !923 {
  %2 = alloca %struct._ConnInfo*, align 8
  %3 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !924, metadata !266), !dbg !925
  %4 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !926
  %5 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %4, i32 0, i32 6, !dbg !928
  %6 = load i8, i8* %5, align 2, !dbg !928
  %7 = icmp ne i8 %6, 0, !dbg !929
  br i1 %7, label %23, label %8, !dbg !930

; <label>:8:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !931, metadata !266), !dbg !933
  %9 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !934
  %10 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %9, i32 0, i32 0, !dbg !935
  %11 = load %struct.AsyncSocket*, %struct.AsyncSocket** %10, align 8, !dbg !935
  %12 = call i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket* %11, i32* null, i8** null, i8** null, i8 signext 1), !dbg !936
  store i32 %12, i32* %3, align 4, !dbg !933
  %13 = load i32, i32* %3, align 4, !dbg !937
  %14 = icmp ne i32 %13, 0, !dbg !939
  br i1 %14, label %15, label %20, !dbg !940

; <label>:15:                                     ; preds = %8
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !941
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 0, !dbg !943
  %18 = load %struct.AsyncSocket*, %struct.AsyncSocket** %17, align 8, !dbg !943
  %19 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %18), !dbg !944
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i32 %19), !dbg !945
  br label %20, !dbg !946

; <label>:20:                                     ; preds = %15, %8
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !947
  %22 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %21, i32 0, i32 6, !dbg !948
  store i8 1, i8* %22, align 2, !dbg !949
  br label %23, !dbg !950

; <label>:23:                                     ; preds = %20, %1
  ret void, !dbg !951
}

declare i32 @AsyncSocket_Close(%struct.AsyncSocket*) #2

declare i32 @AsyncSocket_CancelRecvEx(%struct.AsyncSocket*, i32*, i8**, i8**, i8 signext) #2

declare i32 @AsyncSocket_Init() #2

declare %struct.AsyncSocket* @AsyncSocket_ConnectVMCI(i32, i32, void (%struct.AsyncSocket*, i8*)*, i8*, i32, %struct.AsyncSocketPollParams*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnectDone(%struct.AsyncSocket*, i8*) #0 !dbg !952 {
  %3 = alloca %struct.AsyncSocket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._ConnInfo*, align 8
  %6 = alloca %struct.RpcIn*, align 8
  store %struct.AsyncSocket* %0, %struct.AsyncSocket** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %3, metadata !955, metadata !266), !dbg !956
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !957, metadata !266), !dbg !958
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %5, metadata !959, metadata !266), !dbg !960
  %7 = load i8*, i8** %4, align 8, !dbg !961
  %8 = bitcast i8* %7 to %struct._ConnInfo*, !dbg !962
  store %struct._ConnInfo* %8, %struct._ConnInfo** %5, align 8, !dbg !960
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %6, metadata !963, metadata !266), !dbg !964
  %9 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !965
  %10 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %9, i32 0, i32 9, !dbg !966
  %11 = load %struct.RpcIn*, %struct.RpcIn** %10, align 8, !dbg !966
  store %struct.RpcIn* %11, %struct.RpcIn** %6, align 8, !dbg !964
  %12 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !967
  %13 = call i32 @AsyncSocket_GetState(%struct.AsyncSocket* %12), !dbg !969
  %14 = icmp ne i32 %13, 2, !dbg !970
  br i1 %14, label %15, label %16, !dbg !971

; <label>:15:                                     ; preds = %2
  br label %25, !dbg !972

; <label>:16:                                     ; preds = %2
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %3, align 8, !dbg !974
  %18 = call signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket* %17, i32 65536, i32 65536), !dbg !976
  %19 = icmp ne i8 %18, 0, !dbg !976
  br i1 %19, label %21, label %20, !dbg !977

; <label>:20:                                     ; preds = %16
  br label %25, !dbg !978

; <label>:21:                                     ; preds = %16
  %22 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !980
  %23 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %22, i32 0, i32 4, !dbg !981
  store i8 1, i8* %23, align 4, !dbg !982
  %24 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !983
  call void @RpcInConnRecvHeader(%struct._ConnInfo* %24), !dbg !984
  br label %29, !dbg !985

; <label>:25:                                     ; preds = %20, %15
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0)), !dbg !986
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !987
  call void @RpcInCloseConn(%struct._ConnInfo* %26), !dbg !988
  %27 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !989
  %28 = call signext i8 @RpcInOpenChannel(%struct.RpcIn* %27, i8 signext 1), !dbg !990
  br label %29, !dbg !991

; <label>:29:                                     ; preds = %25, %21
  ret void, !dbg !992
}

declare i32 @AsyncSocket_SetErrorFn(%struct.AsyncSocket*, void (i32, %struct.AsyncSocket*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnErrorHandler(i32, %struct.AsyncSocket*, i8*) #0 !dbg !994 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.AsyncSocket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._ConnInfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.RpcIn*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !997, metadata !266), !dbg !998
  store %struct.AsyncSocket* %1, %struct.AsyncSocket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %5, metadata !999, metadata !266), !dbg !1000
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1001, metadata !266), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %7, metadata !1003, metadata !266), !dbg !1004
  %10 = load i8*, i8** %6, align 8, !dbg !1005
  %11 = bitcast i8* %10 to %struct._ConnInfo*, !dbg !1006
  store %struct._ConnInfo* %11, %struct._ConnInfo** %7, align 8, !dbg !1004
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1007, metadata !266), !dbg !1008
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i8** %8, align 8, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %9, metadata !1009, metadata !266), !dbg !1010
  %12 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1011
  %13 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %12, i32 0, i32 9, !dbg !1012
  %14 = load %struct.RpcIn*, %struct.RpcIn** %13, align 8, !dbg !1012
  store %struct.RpcIn* %14, %struct.RpcIn** %9, align 8, !dbg !1010
  %15 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1013
  %16 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %15), !dbg !1014
  %17 = load i32, i32* %4, align 4, !dbg !1015
  %18 = call i8* @AsyncSocket_Err2String(i32 %17), !dbg !1016
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i32 0, i32 0), i32 %16, i8* %18), !dbg !1018
  %19 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1019
  %20 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %19, i32 0, i32 4, !dbg !1021
  %21 = load i8, i8* %20, align 4, !dbg !1021
  %22 = icmp ne i8 %21, 0, !dbg !1019
  br i1 %22, label %23, label %28, !dbg !1022

; <label>:23:                                     ; preds = %3
  %24 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1023
  %25 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %24, i32 0, i32 9, !dbg !1025
  %26 = load %struct.RpcIn*, %struct.RpcIn** %25, align 8, !dbg !1025
  %27 = load i8*, i8** %8, align 8, !dbg !1026
  call void @RpcInCloseChannel(%struct.RpcIn* %26, i8* %27), !dbg !1027
  br label %32, !dbg !1028

; <label>:28:                                     ; preds = %3
  %29 = load %struct._ConnInfo*, %struct._ConnInfo** %7, align 8, !dbg !1029
  call void @RpcInCloseConn(%struct._ConnInfo* %29), !dbg !1031
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0)), !dbg !1032
  %30 = load %struct.RpcIn*, %struct.RpcIn** %9, align 8, !dbg !1033
  %31 = call signext i8 @RpcInOpenChannel(%struct.RpcIn* %30, i8 signext 1), !dbg !1034
  br label %32

; <label>:32:                                     ; preds = %28, %23
  ret void, !dbg !1035
}

declare %struct.Message_Channel* @Message_Open(i32) #2

declare i32 @assert(...) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInScheduleRecvEvent(%struct.RpcIn*) #0 !dbg !1036 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !1039, metadata !266), !dbg !1040
  %3 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1041
  %4 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %3, i32 0, i32 0, !dbg !1043
  %5 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1043
  %6 = icmp ne %struct._GSource* %5, null, !dbg !1044
  br i1 %6, label %7, label %11, !dbg !1045

; <label>:7:                                      ; preds = %1
  %8 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1046
  %9 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %8, i32 0, i32 0, !dbg !1048
  %10 = load %struct._GSource*, %struct._GSource** %9, align 8, !dbg !1048
  call void @g_source_unref(%struct._GSource* %10), !dbg !1049
  br label %11, !dbg !1050

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1051
  %13 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %12, i32 0, i32 7, !dbg !1052
  %14 = load i32, i32* %13, align 8, !dbg !1052
  %15 = mul i32 %14, 10, !dbg !1053
  %16 = call %struct._GSource* @VMTools_CreateTimer(i32 %15), !dbg !1054
  %17 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1055
  %18 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %17, i32 0, i32 0, !dbg !1056
  store %struct._GSource* %16, %struct._GSource** %18, align 8, !dbg !1057
  %19 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1058
  %20 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %19, i32 0, i32 0, !dbg !1060
  %21 = load %struct._GSource*, %struct._GSource** %20, align 8, !dbg !1060
  %22 = icmp ne %struct._GSource* %21, null, !dbg !1061
  br i1 %22, label %23, label %36, !dbg !1062

; <label>:23:                                     ; preds = %11
  %24 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1063
  %25 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %24, i32 0, i32 0, !dbg !1065
  %26 = load %struct._GSource*, %struct._GSource** %25, align 8, !dbg !1065
  %27 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1066
  %28 = bitcast %struct.RpcIn* %27 to i8*, !dbg !1066
  call void @g_source_set_callback(%struct._GSource* %26, i32 (i8*)* @RpcInLoop, i8* %28, void (i8*)* null), !dbg !1067
  %29 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1068
  %30 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %29, i32 0, i32 0, !dbg !1069
  %31 = load %struct._GSource*, %struct._GSource** %30, align 8, !dbg !1069
  %32 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1070
  %33 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %32, i32 0, i32 1, !dbg !1071
  %34 = load %struct._GMainContext*, %struct._GMainContext** %33, align 8, !dbg !1071
  %35 = call i32 @g_source_attach(%struct._GSource* %31, %struct._GMainContext* %34), !dbg !1072
  br label %36, !dbg !1073

; <label>:36:                                     ; preds = %23, %11
  %37 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1074
  %38 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %37, i32 0, i32 0, !dbg !1075
  %39 = load %struct._GSource*, %struct._GSource** %38, align 8, !dbg !1075
  %40 = icmp ne %struct._GSource* %39, null, !dbg !1076
  %41 = zext i1 %40 to i32, !dbg !1076
  %42 = trunc i32 %41 to i8, !dbg !1074
  ret i8 %42, !dbg !1077
}

declare signext i8 @AsyncSocket_EstablishMinBufferSizes(%struct.AsyncSocket*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnRecvHeader(%struct._ConnInfo*) #0 !dbg !1078 {
  %2 = alloca %struct._ConnInfo*, align 8
  %3 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %2, metadata !1079, metadata !266), !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1081, metadata !266), !dbg !1082
  %4 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1083
  %5 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %4, i32 0, i32 0, !dbg !1084
  %6 = load %struct.AsyncSocket*, %struct.AsyncSocket** %5, align 8, !dbg !1084
  %7 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1085
  %8 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %7, i32 0, i32 1, !dbg !1086
  %9 = bitcast i32* %8 to i8*, !dbg !1087
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1088
  %11 = bitcast %struct._ConnInfo* %10 to i8*, !dbg !1088
  %12 = call i32 @AsyncSocket_Recv(%struct.AsyncSocket* %6, i8* %9, i32 4, i8* bitcast (void (i8*, i32, %struct.AsyncSocket*, i8*)* @RpcInConnRecvedCb to i8*), i8* %11), !dbg !1089
  store i32 %12, i32* %3, align 4, !dbg !1090
  %13 = load i32, i32* %3, align 4, !dbg !1091
  %14 = icmp ne i32 %13, 0, !dbg !1092
  %15 = zext i1 %14 to i32, !dbg !1092
  %16 = trunc i32 %15 to i8, !dbg !1091
  %17 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1093
  %18 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %17, i32 0, i32 6, !dbg !1094
  store i8 %16, i8* %18, align 2, !dbg !1095
  %19 = load i32, i32* %3, align 4, !dbg !1096
  %20 = icmp ne i32 %19, 0, !dbg !1098
  br i1 %20, label %21, label %29, !dbg !1099

; <label>:21:                                     ; preds = %1
  %22 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1100
  %23 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %22, i32 0, i32 0, !dbg !1102
  %24 = load %struct.AsyncSocket*, %struct.AsyncSocket** %23, align 8, !dbg !1102
  %25 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %24), !dbg !1103
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i32 0, i32 0), i32 %25), !dbg !1104
  %26 = load %struct._ConnInfo*, %struct._ConnInfo** %2, align 8, !dbg !1105
  %27 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %26, i32 0, i32 9, !dbg !1106
  %28 = load %struct.RpcIn*, %struct.RpcIn** %27, align 8, !dbg !1106
  call void @RpcInCloseChannel(%struct.RpcIn* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0)), !dbg !1107
  br label %29, !dbg !1108

; <label>:29:                                     ; preds = %21, %1
  ret void, !dbg !1109
}

declare i32 @AsyncSocket_Recv(%struct.AsyncSocket*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcInConnRecvedCb(i8*, i32, %struct.AsyncSocket*, i8*) #0 !dbg !1110 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.AsyncSocket*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._ConnInfo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1111, metadata !266), !dbg !1112
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1113, metadata !266), !dbg !1114
  store %struct.AsyncSocket* %2, %struct.AsyncSocket** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.AsyncSocket** %7, metadata !1115, metadata !266), !dbg !1116
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1117, metadata !266), !dbg !1118
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %9, metadata !1119, metadata !266), !dbg !1120
  %13 = load i8*, i8** %8, align 8, !dbg !1121
  %14 = bitcast i8* %13 to %struct._ConnInfo*, !dbg !1122
  store %struct._ConnInfo* %14, %struct._ConnInfo** %9, align 8, !dbg !1120
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1123, metadata !266), !dbg !1124
  store i8* null, i8** %10, align 8, !dbg !1124
  %15 = load i8*, i8** %5, align 8, !dbg !1125
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1127
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 1, !dbg !1128
  %18 = bitcast i32* %17 to i8*, !dbg !1129
  %19 = icmp eq i8* %15, %18, !dbg !1130
  br i1 %19, label %20, label %43, !dbg !1131

; <label>:20:                                     ; preds = %4
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1132
  %22 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %21, i32 0, i32 1, !dbg !1134
  %23 = load i32, i32* %22, align 8, !dbg !1134
  %24 = call i32 @ntohl(i32 %23) #1, !dbg !1135
  %25 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1136
  %26 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %25, i32 0, i32 1, !dbg !1137
  store i32 %24, i32* %26, align 8, !dbg !1138
  %27 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1139
  %28 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %27, i32 0, i32 1, !dbg !1140
  %29 = load i32, i32* %28, align 8, !dbg !1140
  %30 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1141
  %31 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %30, i32 0, i32 0, !dbg !1142
  %32 = load %struct.AsyncSocket*, %struct.AsyncSocket** %31, align 8, !dbg !1142
  %33 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %32), !dbg !1143
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), i32 %29, i32 %33), !dbg !1144
  %34 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1145
  %35 = call signext i8 @RpcInConnRecvPacket(%struct._ConnInfo* %34, i8** %10), !dbg !1147
  %36 = icmp ne i8 %35, 0, !dbg !1147
  br i1 %36, label %42, label %37, !dbg !1148

; <label>:37:                                     ; preds = %20
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1149
  %39 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %38, i32 0, i32 9, !dbg !1151
  %40 = load %struct.RpcIn*, %struct.RpcIn** %39, align 8, !dbg !1151
  %41 = load i8*, i8** %10, align 8, !dbg !1152
  call void @RpcInCloseChannel(%struct.RpcIn* %40, i8* %41), !dbg !1153
  br label %42, !dbg !1154

; <label>:42:                                     ; preds = %37, %20
  br label %98, !dbg !1155

; <label>:43:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1156, metadata !266), !dbg !1158
  store i8* null, i8** %11, align 8, !dbg !1158
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1159, metadata !266), !dbg !1160
  store i32 0, i32* %12, align 4, !dbg !1160
  %44 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1161
  %45 = call i32 @RpcInDecodePacket(%struct._ConnInfo* %44, i8** %11, i32* %12), !dbg !1163
  %46 = icmp ne i32 %45, 0, !dbg !1163
  br i1 %46, label %52, label %47, !dbg !1164

; <label>:47:                                     ; preds = %43
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8** %10, align 8, !dbg !1165
  %48 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1167
  %49 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %48, i32 0, i32 9, !dbg !1168
  %50 = load %struct.RpcIn*, %struct.RpcIn** %49, align 8, !dbg !1168
  %51 = load i8*, i8** %10, align 8, !dbg !1169
  call void @RpcInCloseChannel(%struct.RpcIn* %50, i8* %51), !dbg !1170
  br label %98, !dbg !1171

; <label>:52:                                     ; preds = %43
  %53 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1172
  %54 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %53, i32 0, i32 0, !dbg !1173
  %55 = load %struct.AsyncSocket*, %struct.AsyncSocket** %54, align 8, !dbg !1173
  %56 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %55), !dbg !1174
  %57 = load i8*, i8** %11, align 8, !dbg !1175
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 %56, i8* %57), !dbg !1176
  %58 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1177
  %59 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %58, i32 0, i32 9, !dbg !1179
  %60 = load %struct.RpcIn*, %struct.RpcIn** %59, align 8, !dbg !1179
  %61 = load i8*, i8** %11, align 8, !dbg !1180
  %62 = load i32, i32* %12, align 4, !dbg !1181
  %63 = sext i32 %62 to i64, !dbg !1181
  %64 = call signext i8 @RpcInExecRpc(%struct.RpcIn* %60, i8* %61, i64 %63, i8** %10), !dbg !1182
  %65 = icmp ne i8 %64, 0, !dbg !1182
  br i1 %65, label %66, label %92, !dbg !1183

; <label>:66:                                     ; preds = %52
  %67 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1184
  %68 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %67, i32 0, i32 9, !dbg !1186
  %69 = load %struct.RpcIn*, %struct.RpcIn** %68, align 8, !dbg !1186
  %70 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %69, i32 0, i32 11, !dbg !1187
  store i8 1, i8* %70, align 8, !dbg !1188
  %71 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1189
  %72 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %71, i32 0, i32 9, !dbg !1191
  %73 = load %struct.RpcIn*, %struct.RpcIn** %72, align 8, !dbg !1191
  %74 = call signext i8 @RpcInSend(%struct.RpcIn* %73, i32 0), !dbg !1192
  %75 = icmp ne i8 %74, 0, !dbg !1192
  br i1 %75, label %76, label %90, !dbg !1193

; <label>:76:                                     ; preds = %66
  %77 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1194
  %78 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %77, i32 0, i32 9, !dbg !1197
  %79 = load %struct.RpcIn*, %struct.RpcIn** %78, align 8, !dbg !1197
  %80 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %79, i32 0, i32 5, !dbg !1198
  %81 = load %struct._GSource*, %struct._GSource** %80, align 8, !dbg !1198
  %82 = icmp eq %struct._GSource* %81, null, !dbg !1199
  br i1 %82, label %83, label %87, !dbg !1200

; <label>:83:                                     ; preds = %76
  %84 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1201
  %85 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %84, i32 0, i32 9, !dbg !1203
  %86 = load %struct.RpcIn*, %struct.RpcIn** %85, align 8, !dbg !1203
  call void @RpcInRegisterHeartbeatCallback(%struct.RpcIn* %86), !dbg !1204
  br label %87, !dbg !1205

; <label>:87:                                     ; preds = %83, %76
  %88 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1206
  call void @RpcInConnRecvHeader(%struct._ConnInfo* %88), !dbg !1207
  %89 = load i8*, i8** %11, align 8, !dbg !1208
  call void @free(i8* %89) #7, !dbg !1209
  br label %98, !dbg !1210

; <label>:90:                                     ; preds = %66
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8** %10, align 8, !dbg !1211
  br label %91

; <label>:91:                                     ; preds = %90
  br label %92, !dbg !1213

; <label>:92:                                     ; preds = %91, %52
  %93 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1214
  %94 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %93, i32 0, i32 9, !dbg !1215
  %95 = load %struct.RpcIn*, %struct.RpcIn** %94, align 8, !dbg !1215
  %96 = load i8*, i8** %10, align 8, !dbg !1216
  call void @RpcInCloseChannel(%struct.RpcIn* %95, i8* %96), !dbg !1217
  %97 = load i8*, i8** %11, align 8, !dbg !1218
  call void @free(i8* %97) #7, !dbg !1219
  br label %98

; <label>:98:                                     ; preds = %47, %87, %92, %42
  ret void, !dbg !1220
}

; Function Attrs: nounwind uwtable
define internal void @RpcInCloseChannel(%struct.RpcIn*, i8*) #0 !dbg !1221 {
  %3 = alloca %struct.RpcIn*, align 8
  %4 = alloca i8*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %3, metadata !1224, metadata !266), !dbg !1225
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1226, metadata !266), !dbg !1227
  %5 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1228
  %6 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %5, i32 0, i32 9, !dbg !1229
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8, !dbg !1229
  %8 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1230
  %9 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %8, i32 0, i32 10, !dbg !1231
  %10 = load i8*, i8** %9, align 8, !dbg !1231
  %11 = load i8*, i8** %4, align 8, !dbg !1232
  call void %7(i8* %10, i8* %11), !dbg !1233
  %12 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1234
  call void @RpcInStop(%struct.RpcIn* %12), !dbg !1235
  %13 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1236
  %14 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %13, i32 0, i32 15, !dbg !1237
  store i8 0, i8* %14, align 1, !dbg !1238
  ret void, !dbg !1239
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #5

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInConnRecvPacket(%struct._ConnInfo*, i8**) #0 !dbg !1240 {
  %3 = alloca i8, align 1
  %4 = alloca %struct._ConnInfo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._ConnInfo* %0, %struct._ConnInfo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %4, metadata !1244, metadata !266), !dbg !1245
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1246, metadata !266), !dbg !1247
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1248, metadata !266), !dbg !1249
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1250, metadata !266), !dbg !1251
  %9 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1252
  %10 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %9, i32 0, i32 1, !dbg !1253
  %11 = load i32, i32* %10, align 8, !dbg !1253
  store i32 %11, i32* %7, align 4, !dbg !1251
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1254, metadata !266), !dbg !1255
  %12 = load i32, i32* %7, align 4, !dbg !1256
  %13 = sext i32 %12 to i64, !dbg !1256
  %14 = add i64 %13, 4, !dbg !1257
  %15 = trunc i64 %14 to i32, !dbg !1256
  store i32 %15, i32* %8, align 4, !dbg !1255
  %16 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1258
  %17 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %16, i32 0, i32 2, !dbg !1260
  %18 = load i8*, i8** %17, align 8, !dbg !1260
  %19 = icmp eq i8* %18, null, !dbg !1261
  br i1 %19, label %26, label %20, !dbg !1262

; <label>:20:                                     ; preds = %2
  %21 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1263
  %22 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %21, i32 0, i32 3, !dbg !1265
  %23 = load i32, i32* %22, align 8, !dbg !1265
  %24 = load i32, i32* %8, align 4, !dbg !1266
  %25 = icmp slt i32 %23, %24, !dbg !1267
  br i1 %25, label %26, label %51, !dbg !1268

; <label>:26:                                     ; preds = %20, %2
  %27 = load i32, i32* %8, align 4, !dbg !1269
  %28 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1271
  %29 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %28, i32 0, i32 3, !dbg !1272
  store i32 %27, i32* %29, align 8, !dbg !1273
  %30 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1274
  %31 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %30, i32 0, i32 2, !dbg !1275
  %32 = load i8*, i8** %31, align 8, !dbg !1275
  call void @free(i8* %32) #7, !dbg !1276
  %33 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1277
  %34 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %33, i32 0, i32 3, !dbg !1278
  %35 = load i32, i32* %34, align 8, !dbg !1278
  %36 = sext i32 %35 to i64, !dbg !1277
  %37 = call noalias i8* @malloc(i64 %36) #7, !dbg !1279
  %38 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1280
  %39 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %38, i32 0, i32 2, !dbg !1281
  store i8* %37, i8** %39, align 8, !dbg !1282
  %40 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1283
  %41 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %40, i32 0, i32 2, !dbg !1285
  %42 = load i8*, i8** %41, align 8, !dbg !1285
  %43 = icmp eq i8* %42, null, !dbg !1286
  br i1 %43, label %44, label %50, !dbg !1287

; <label>:44:                                     ; preds = %26
  %45 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1288
  %46 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %45, i32 0, i32 0, !dbg !1290
  %47 = load %struct.AsyncSocket*, %struct.AsyncSocket** %46, align 8, !dbg !1290
  %48 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %47), !dbg !1291
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.25, i32 0, i32 0), i32 %48), !dbg !1292
  %49 = load i8**, i8*** %5, align 8, !dbg !1293
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i8** %49, align 8, !dbg !1294
  store i8 0, i8* %3, align 1, !dbg !1295
  br label %88, !dbg !1295

; <label>:50:                                     ; preds = %26
  br label %51, !dbg !1296

; <label>:51:                                     ; preds = %50, %20
  %52 = load i32, i32* %7, align 4, !dbg !1297
  %53 = call i32 @htonl(i32 %52) #1, !dbg !1298
  %54 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1299
  %55 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %54, i32 0, i32 2, !dbg !1300
  %56 = load i8*, i8** %55, align 8, !dbg !1300
  %57 = bitcast i8* %56 to i32*, !dbg !1301
  store i32 %53, i32* %57, align 4, !dbg !1302
  %58 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1303
  %59 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %58, i32 0, i32 0, !dbg !1304
  %60 = load %struct.AsyncSocket*, %struct.AsyncSocket** %59, align 8, !dbg !1304
  %61 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1305
  %62 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %61, i32 0, i32 2, !dbg !1306
  %63 = load i8*, i8** %62, align 8, !dbg !1306
  %64 = getelementptr inbounds i8, i8* %63, i64 4, !dbg !1307
  %65 = load i32, i32* %7, align 4, !dbg !1308
  %66 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1309
  %67 = bitcast %struct._ConnInfo* %66 to i8*, !dbg !1309
  %68 = call i32 @AsyncSocket_Recv(%struct.AsyncSocket* %60, i8* %64, i32 %65, i8* bitcast (void (i8*, i32, %struct.AsyncSocket*, i8*)* @RpcInConnRecvedCb to i8*), i8* %67), !dbg !1310
  store i32 %68, i32* %6, align 4, !dbg !1311
  %69 = load i32, i32* %6, align 4, !dbg !1312
  %70 = icmp ne i32 %69, 0, !dbg !1313
  %71 = zext i1 %70 to i32, !dbg !1313
  %72 = trunc i32 %71 to i8, !dbg !1312
  %73 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1314
  %74 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %73, i32 0, i32 6, !dbg !1315
  store i8 %72, i8* %74, align 2, !dbg !1316
  %75 = load i32, i32* %6, align 4, !dbg !1317
  %76 = icmp ne i32 %75, 0, !dbg !1319
  br i1 %76, label %77, label %83, !dbg !1320

; <label>:77:                                     ; preds = %51
  %78 = load %struct._ConnInfo*, %struct._ConnInfo** %4, align 8, !dbg !1321
  %79 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %78, i32 0, i32 0, !dbg !1323
  %80 = load %struct.AsyncSocket*, %struct.AsyncSocket** %79, align 8, !dbg !1323
  %81 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %80), !dbg !1324
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i32 0, i32 0), i32 %81), !dbg !1325
  %82 = load i8**, i8*** %5, align 8, !dbg !1326
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8** %82, align 8, !dbg !1327
  br label %83, !dbg !1328

; <label>:83:                                     ; preds = %77, %51
  %84 = load i32, i32* %6, align 4, !dbg !1329
  %85 = icmp eq i32 %84, 0, !dbg !1330
  %86 = zext i1 %85 to i32, !dbg !1330
  %87 = trunc i32 %86 to i8, !dbg !1329
  store i8 %87, i8* %3, align 1, !dbg !1331
  br label %88, !dbg !1331

; <label>:88:                                     ; preds = %83, %44
  %89 = load i8, i8* %3, align 1, !dbg !1332
  ret i8 %89, !dbg !1332
}

; Function Attrs: nounwind uwtable
define internal i32 @RpcInDecodePacket(%struct._ConnInfo*, i8**, i32*) #0 !dbg !1333 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._ConnInfo*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.DataMap, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct._ConnInfo* %0, %struct._ConnInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ConnInfo** %5, metadata !1336, metadata !266), !dbg !1337
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1338, metadata !266), !dbg !1339
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1340, metadata !266), !dbg !1341
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1342, metadata !266), !dbg !1343
  call void @llvm.dbg.declare(metadata %struct.DataMap* %9, metadata !1344, metadata !266), !dbg !1345
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1346, metadata !266), !dbg !1347
  %15 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !1348
  %16 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %15, i32 0, i32 0, !dbg !1349
  %17 = load %struct.AsyncSocket*, %struct.AsyncSocket** %16, align 8, !dbg !1349
  %18 = call i32 @AsyncSocket_GetFd(%struct.AsyncSocket* %17), !dbg !1350
  store i32 %18, i32* %10, align 4, !dbg !1347
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1351, metadata !266), !dbg !1352
  %19 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !1353
  %20 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %19, i32 0, i32 1, !dbg !1354
  %21 = load i32, i32* %20, align 8, !dbg !1354
  %22 = sext i32 %21 to i64, !dbg !1353
  %23 = add i64 %22, 4, !dbg !1355
  %24 = trunc i64 %23 to i32, !dbg !1353
  store i32 %24, i32* %11, align 4, !dbg !1352
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1356, metadata !266), !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1358, metadata !266), !dbg !1359
  %25 = load %struct._ConnInfo*, %struct._ConnInfo** %5, align 8, !dbg !1360
  %26 = getelementptr inbounds %struct._ConnInfo, %struct._ConnInfo* %25, i32 0, i32 2, !dbg !1361
  %27 = load i8*, i8** %26, align 8, !dbg !1361
  %28 = load i32, i32* %11, align 4, !dbg !1362
  %29 = call i32 @DataMap_Deserialize(i8* %27, i32 %28, %struct.DataMap* %9), !dbg !1363
  store i32 %29, i32* %8, align 4, !dbg !1364
  %30 = load i32, i32* %8, align 4, !dbg !1365
  %31 = icmp ne i32 %30, 0, !dbg !1367
  br i1 %31, label %32, label %35, !dbg !1368

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %10, align 4, !dbg !1369
  %34 = load i32, i32* %8, align 4, !dbg !1371
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i32 0, i32 0), i32 %33, i32 %34), !dbg !1372
  store i32 0, i32* %4, align 4, !dbg !1373
  br label %67, !dbg !1373

; <label>:35:                                     ; preds = %3
  %36 = call i32 @DataMap_GetString(%struct.DataMap* %9, i32 2, i8** %12, i32* %13), !dbg !1374
  store i32 %36, i32* %8, align 4, !dbg !1375
  %37 = load i32, i32* %8, align 4, !dbg !1376
  %38 = icmp eq i32 %37, 0, !dbg !1378
  br i1 %38, label %39, label %61, !dbg !1379

; <label>:39:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1380, metadata !266), !dbg !1382
  %40 = load i32, i32* %13, align 4, !dbg !1383
  %41 = add nsw i32 %40, 1, !dbg !1384
  %42 = sext i32 %41 to i64, !dbg !1383
  %43 = call noalias i8* @malloc(i64 %42) #7, !dbg !1385
  store i8* %43, i8** %14, align 8, !dbg !1382
  %44 = load i8*, i8** %14, align 8, !dbg !1386
  %45 = icmp eq i8* %44, null, !dbg !1388
  br i1 %45, label %46, label %48, !dbg !1389

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %10, align 4, !dbg !1390
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0), i32 %47), !dbg !1392
  br label %65, !dbg !1393

; <label>:48:                                     ; preds = %39
  %49 = load i8*, i8** %14, align 8, !dbg !1394
  %50 = load i8*, i8** %12, align 8, !dbg !1395
  %51 = load i32, i32* %13, align 4, !dbg !1396
  %52 = sext i32 %51 to i64, !dbg !1396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %52, i32 1, i1 false), !dbg !1397
  %53 = load i32, i32* %13, align 4, !dbg !1398
  %54 = sext i32 %53 to i64, !dbg !1399
  %55 = load i8*, i8** %14, align 8, !dbg !1399
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !1399
  store i8 0, i8* %56, align 1, !dbg !1400
  %57 = load i8*, i8** %14, align 8, !dbg !1401
  %58 = load i8**, i8*** %6, align 8, !dbg !1402
  store i8* %57, i8** %58, align 8, !dbg !1403
  %59 = load i32, i32* %13, align 4, !dbg !1404
  %60 = load i32*, i32** %7, align 8, !dbg !1405
  store i32 %59, i32* %60, align 4, !dbg !1406
  br label %63, !dbg !1407

; <label>:61:                                     ; preds = %35
  %62 = load i32, i32* %10, align 4, !dbg !1408
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i32 %62), !dbg !1410
  br label %65, !dbg !1411

; <label>:63:                                     ; preds = %48
  %64 = call i32 @DataMap_Destroy(%struct.DataMap* %9), !dbg !1412
  store i32 1, i32* %4, align 4, !dbg !1413
  br label %67, !dbg !1413

; <label>:65:                                     ; preds = %61, %46
  %66 = call i32 @DataMap_Destroy(%struct.DataMap* %9), !dbg !1414
  store i32 0, i32* %4, align 4, !dbg !1415
  br label %67, !dbg !1415

; <label>:67:                                     ; preds = %65, %63, %32
  %68 = load i32, i32* %4, align 4, !dbg !1416
  ret i32 %68, !dbg !1416
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcInExecRpc(%struct.RpcIn*, i8*, i64, i8**) #0 !dbg !1417 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.RpcIn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.RpcInData, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %6, metadata !1420, metadata !266), !dbg !1421
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1422, metadata !266), !dbg !1423
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1424, metadata !266), !dbg !1425
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1426, metadata !266), !dbg !1427
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1428, metadata !266), !dbg !1429
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1430, metadata !266), !dbg !1431
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1432, metadata !266), !dbg !1433
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1434, metadata !266), !dbg !1435
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1436, metadata !266), !dbg !1437
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1438, metadata !266), !dbg !1439
  store i8 0, i8* %15, align 1, !dbg !1439
  call void @llvm.dbg.declare(metadata %struct.RpcInData* %16, metadata !1440, metadata !266), !dbg !1441
  %17 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 0, !dbg !1442
  store i8* null, i8** %17, align 8, !dbg !1442
  %18 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 1, !dbg !1442
  %19 = load i8*, i8** %7, align 8, !dbg !1443
  store i8* %19, i8** %18, align 8, !dbg !1442
  %20 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 2, !dbg !1442
  %21 = load i64, i64* %8, align 8, !dbg !1444
  store i64 %21, i64* %20, align 8, !dbg !1442
  %22 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 3, !dbg !1442
  store i8* null, i8** %22, align 8, !dbg !1442
  %23 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 4, !dbg !1442
  store i64 0, i64* %23, align 8, !dbg !1442
  %24 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 5, !dbg !1442
  store i32 0, i32* %24, align 8, !dbg !1442
  %25 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 6, !dbg !1442
  store i8* null, i8** %25, align 8, !dbg !1442
  %26 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 7, !dbg !1442
  %27 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1445
  %28 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %27, i32 0, i32 3, !dbg !1446
  %29 = load i8*, i8** %28, align 8, !dbg !1446
  store i8* %29, i8** %26, align 8, !dbg !1442
  %30 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1447
  %31 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %30, i32 0, i32 2, !dbg !1448
  %32 = load i32 (%struct.RpcInData*)*, i32 (%struct.RpcInData*)** %31, align 8, !dbg !1448
  %33 = call i32 %32(%struct.RpcInData* %16), !dbg !1447
  store i32 %33, i32* %10, align 4, !dbg !1449
  %34 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 3, !dbg !1450
  %35 = load i8*, i8** %34, align 8, !dbg !1450
  store i8* %35, i8** %13, align 8, !dbg !1451
  %36 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 4, !dbg !1452
  %37 = load i64, i64* %36, align 8, !dbg !1452
  store i64 %37, i64* %14, align 8, !dbg !1453
  %38 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 5, !dbg !1454
  %39 = load i32, i32* %38, align 8, !dbg !1454
  %40 = trunc i32 %39 to i8, !dbg !1455
  store i8 %40, i8* %15, align 1, !dbg !1456
  %41 = load i32, i32* %10, align 4, !dbg !1457
  %42 = icmp ne i32 %41, 0, !dbg !1457
  %43 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), !dbg !1457
  store i8* %43, i8** %11, align 8, !dbg !1458
  %44 = load i8*, i8** %11, align 8, !dbg !1459
  %45 = call i64 @strlen(i8* %44) #8, !dbg !1460
  %46 = trunc i64 %45 to i32, !dbg !1460
  store i32 %46, i32* %12, align 4, !dbg !1461
  %47 = load i32, i32* %12, align 4, !dbg !1462
  %48 = zext i32 %47 to i64, !dbg !1462
  %49 = load i64, i64* %14, align 8, !dbg !1463
  %50 = add i64 %48, %49, !dbg !1464
  %51 = call noalias i8* @malloc(i64 %50) #7, !dbg !1465
  %52 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1466
  %53 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %52, i32 0, i32 12, !dbg !1467
  store i8* %51, i8** %53, align 8, !dbg !1468
  %54 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1469
  %55 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %54, i32 0, i32 12, !dbg !1471
  %56 = load i8*, i8** %55, align 8, !dbg !1471
  %57 = icmp eq i8* %56, null, !dbg !1472
  br i1 %57, label %58, label %60, !dbg !1473

; <label>:58:                                     ; preds = %4
  %59 = load i8**, i8*** %9, align 8, !dbg !1474
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0), i8** %59, align 8, !dbg !1476
  store i8 0, i8* %5, align 1, !dbg !1477
  br label %88, !dbg !1477

; <label>:60:                                     ; preds = %4
  %61 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1478
  %62 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %61, i32 0, i32 12, !dbg !1479
  %63 = load i8*, i8** %62, align 8, !dbg !1479
  %64 = load i8*, i8** %11, align 8, !dbg !1480
  %65 = load i32, i32* %12, align 4, !dbg !1481
  %66 = zext i32 %65 to i64, !dbg !1481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 %66, i32 1, i1 false), !dbg !1482
  %67 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1483
  %68 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %67, i32 0, i32 12, !dbg !1484
  %69 = load i8*, i8** %68, align 8, !dbg !1484
  %70 = load i32, i32* %12, align 4, !dbg !1485
  %71 = zext i32 %70 to i64, !dbg !1486
  %72 = getelementptr inbounds i8, i8* %69, i64 %71, !dbg !1486
  %73 = load i8*, i8** %13, align 8, !dbg !1487
  %74 = load i64, i64* %14, align 8, !dbg !1488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 %74, i32 1, i1 false), !dbg !1489
  %75 = load i32, i32* %12, align 4, !dbg !1490
  %76 = zext i32 %75 to i64, !dbg !1490
  %77 = load i64, i64* %14, align 8, !dbg !1491
  %78 = add i64 %76, %77, !dbg !1492
  %79 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1493
  %80 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %79, i32 0, i32 13, !dbg !1494
  store i64 %78, i64* %80, align 8, !dbg !1495
  %81 = load i8, i8* %15, align 1, !dbg !1496
  %82 = icmp ne i8 %81, 0, !dbg !1496
  br i1 %82, label %83, label %85, !dbg !1498

; <label>:83:                                     ; preds = %60
  %84 = load i8*, i8** %13, align 8, !dbg !1499
  call void @free(i8* %84) #7, !dbg !1501
  br label %85, !dbg !1502

; <label>:85:                                     ; preds = %83, %60
  %86 = load %struct.RpcIn*, %struct.RpcIn** %6, align 8, !dbg !1503
  %87 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %86, i32 0, i32 7, !dbg !1504
  store i32 0, i32* %87, align 8, !dbg !1505
  store i8 1, i8* %5, align 1, !dbg !1506
  br label %88, !dbg !1506

; <label>:88:                                     ; preds = %85, %58
  %89 = load i8, i8* %5, align 1, !dbg !1507
  ret i8 %89, !dbg !1507
}

; Function Attrs: nounwind uwtable
define internal void @RpcInRegisterHeartbeatCallback(%struct.RpcIn*) #0 !dbg !1508 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !1509, metadata !266), !dbg !1510
  %3 = call %struct._GSource* @VMTools_CreateTimer(i32 1000), !dbg !1511
  %4 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1512
  %5 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %4, i32 0, i32 5, !dbg !1513
  store %struct._GSource* %3, %struct._GSource** %5, align 8, !dbg !1514
  %6 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1515
  %7 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %6, i32 0, i32 5, !dbg !1517
  %8 = load %struct._GSource*, %struct._GSource** %7, align 8, !dbg !1517
  %9 = icmp ne %struct._GSource* %8, null, !dbg !1518
  br i1 %9, label %10, label %23, !dbg !1519

; <label>:10:                                     ; preds = %1
  %11 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1520
  %12 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %11, i32 0, i32 5, !dbg !1522
  %13 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1522
  %14 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1523
  %15 = bitcast %struct.RpcIn* %14 to i8*, !dbg !1523
  call void @g_source_set_callback(%struct._GSource* %13, i32 (i8*)* @RpcInHeartbeatCallback, i8* %15, void (i8*)* null), !dbg !1524
  %16 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1525
  %17 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %16, i32 0, i32 5, !dbg !1526
  %18 = load %struct._GSource*, %struct._GSource** %17, align 8, !dbg !1526
  %19 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1527
  %20 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %19, i32 0, i32 1, !dbg !1528
  %21 = load %struct._GMainContext*, %struct._GMainContext** %20, align 8, !dbg !1528
  %22 = call i32 @g_source_attach(%struct._GSource* %18, %struct._GMainContext* %21), !dbg !1529
  br label %24, !dbg !1530

; <label>:23:                                     ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0)), !dbg !1531
  br label %24

; <label>:24:                                     ; preds = %23, %10
  ret void, !dbg !1533
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #5

declare i32 @DataMap_Deserialize(i8*, i32, %struct.DataMap*) #2

declare i32 @DataMap_GetString(%struct.DataMap*, i32, i8**, i32*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare %struct._GSource* @VMTools_CreateTimer(i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcInHeartbeatCallback(i8*) #0 !dbg !1534 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.RpcIn*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1535, metadata !266), !dbg !1536
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %4, metadata !1537, metadata !266), !dbg !1538
  %6 = load i8*, i8** %3, align 8, !dbg !1539
  %7 = bitcast i8* %6 to %struct.RpcIn*, !dbg !1540
  store %struct.RpcIn* %7, %struct.RpcIn** %4, align 8, !dbg !1538
  %8 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !1541
  %9 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %8, i32 0, i32 4, !dbg !1543
  %10 = load %struct._ConnInfo*, %struct._ConnInfo** %9, align 8, !dbg !1543
  %11 = icmp ne %struct._ConnInfo* %10, null, !dbg !1541
  br i1 %11, label %12, label %22, !dbg !1544

; <label>:12:                                     ; preds = %1
  %13 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !1545
  %14 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %13, i32 0, i32 11, !dbg !1547
  store i8 1, i8* %14, align 8, !dbg !1548
  %15 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !1549
  %16 = call signext i8 @RpcInSend(%struct.RpcIn* %15, i32 1), !dbg !1551
  %17 = icmp ne i8 %16, 0, !dbg !1551
  br i1 %17, label %18, label %19, !dbg !1552

; <label>:18:                                     ; preds = %12
  store i32 1, i32* %2, align 4, !dbg !1553
  br label %23, !dbg !1553

; <label>:19:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1555, metadata !266), !dbg !1557
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8** %5, align 8, !dbg !1557
  %20 = load %struct.RpcIn*, %struct.RpcIn** %4, align 8, !dbg !1558
  %21 = load i8*, i8** %5, align 8, !dbg !1559
  call void @RpcInCloseChannel(%struct.RpcIn* %20, i8* %21), !dbg !1560
  store i32 0, i32* %2, align 4, !dbg !1561
  br label %23, !dbg !1561

; <label>:22:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1562
  br label %23, !dbg !1562

; <label>:23:                                     ; preds = %22, %19, %18
  %24 = load i32, i32* %2, align 4, !dbg !1563
  ret i32 %24, !dbg !1563
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcInLoop(i8*) #0 !dbg !243 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.RpcIn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1564, metadata !266), !dbg !1565
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %3, metadata !1566, metadata !266), !dbg !1567
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1568, metadata !266), !dbg !1569
  store i8* null, i8** %4, align 8, !dbg !1569
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1570, metadata !266), !dbg !1571
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1572, metadata !266), !dbg !1573
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1574, metadata !266), !dbg !1575
  store i8 0, i8* %7, align 1, !dbg !1575
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1576, metadata !266), !dbg !1577
  %12 = load i8*, i8** %2, align 8, !dbg !1578
  %13 = bitcast i8* %12 to %struct.RpcIn*, !dbg !1579
  store %struct.RpcIn* %13, %struct.RpcIn** %3, align 8, !dbg !1580
  %14 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1581
  %15 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %14, i32 0, i32 7, !dbg !1582
  %16 = load i32, i32* %15, align 8, !dbg !1582
  store i32 %16, i32* %8, align 4, !dbg !1583
  %17 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1584
  %18 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %17, i32 0, i32 14, !dbg !1585
  store i8 1, i8* %18, align 8, !dbg !1586
  %19 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1587
  %20 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %19, i32 0, i32 6, !dbg !1589
  %21 = load %struct.Message_Channel*, %struct.Message_Channel** %20, align 8, !dbg !1589
  %22 = icmp eq %struct.Message_Channel* %21, null, !dbg !1590
  br i1 %22, label %23, label %25, !dbg !1591

; <label>:23:                                     ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), i8** %4, align 8, !dbg !1592
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1594
  br label %113, !dbg !1595

; <label>:25:                                     ; preds = %1
  %26 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1596
  %27 = call signext i8 @RpcInSend(%struct.RpcIn* %26, i32 0), !dbg !1598
  %28 = sext i8 %27 to i32, !dbg !1598
  %29 = icmp eq i32 %28, 0, !dbg !1599
  br i1 %29, label %30, label %32, !dbg !1600

; <label>:30:                                     ; preds = %25
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8** %4, align 8, !dbg !1601
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1603
  br label %113, !dbg !1604

; <label>:32:                                     ; preds = %25
  %33 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1605
  %34 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %33, i32 0, i32 6, !dbg !1607
  %35 = load %struct.Message_Channel*, %struct.Message_Channel** %34, align 8, !dbg !1607
  %36 = call signext i8 @Message_Receive(%struct.Message_Channel* %35, i8** %5, i64* %6), !dbg !1608
  %37 = sext i8 %36 to i32, !dbg !1608
  %38 = icmp eq i32 %37, 0, !dbg !1609
  br i1 %38, label %39, label %41, !dbg !1610

; <label>:39:                                     ; preds = %32
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i8** %4, align 8, !dbg !1611
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1613
  br label %113, !dbg !1614

; <label>:41:                                     ; preds = %32
  %42 = load i64, i64* %6, align 8, !dbg !1615
  %43 = icmp ne i64 %42, 0, !dbg !1615
  br i1 %43, label %44, label %59, !dbg !1617

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1618, metadata !266), !dbg !1620
  %45 = load i8*, i8** %5, align 8, !dbg !1621
  %46 = load i64, i64* %6, align 8, !dbg !1622
  %47 = call i8* @ByteDump(i8* %45, i64 %46), !dbg !1623
  store i8* %47, i8** %9, align 8, !dbg !1620
  %48 = load i64, i64* %6, align 8, !dbg !1624
  %49 = trunc i64 %48 to i32, !dbg !1625
  %50 = load i8*, i8** %9, align 8, !dbg !1626
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 %49, i8* %50), !dbg !1627
  %51 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1628
  %52 = load i8*, i8** %5, align 8, !dbg !1630
  %53 = load i64, i64* %6, align 8, !dbg !1631
  %54 = call signext i8 @RpcInExecRpc(%struct.RpcIn* %51, i8* %52, i64 %53, i8** %4), !dbg !1632
  %55 = icmp ne i8 %54, 0, !dbg !1632
  br i1 %55, label %58, label %56, !dbg !1633

; <label>:56:                                     ; preds = %44
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1634
  br label %113, !dbg !1636

; <label>:58:                                     ; preds = %44
  br label %70, !dbg !1637

; <label>:59:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1638, metadata !266), !dbg !1640
  %60 = call i64 @System_GetTimeMonotonic(), !dbg !1641
  %61 = mul i64 %60, 10, !dbg !1642
  store i64 %61, i64* %10, align 8, !dbg !1640
  %62 = load i64, i64* %10, align 8, !dbg !1643
  %63 = load i64, i64* @RpcInLoop.lastPrintMilli, align 8, !dbg !1645
  %64 = sub i64 %62, %63, !dbg !1646
  %65 = icmp ugt i64 %64, 5000, !dbg !1647
  br i1 %65, label %66, label %68, !dbg !1648

; <label>:66:                                     ; preds = %59
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i32 0, i32 0)), !dbg !1649
  %67 = load i64, i64* %10, align 8, !dbg !1651
  store i64 %67, i64* @RpcInLoop.lastPrintMilli, align 8, !dbg !1652
  br label %68, !dbg !1653

; <label>:68:                                     ; preds = %66, %59
  %69 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1654
  call void @RpcInUpdateDelayTime(%struct.RpcIn* %69), !dbg !1655
  br label %70

; <label>:70:                                     ; preds = %68, %58
  %71 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1656
  %72 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %71, i32 0, i32 11, !dbg !1657
  store i8 1, i8* %72, align 8, !dbg !1658
  %73 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1659
  %74 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %73, i32 0, i32 15, !dbg !1661
  %75 = load i8, i8* %74, align 1, !dbg !1661
  %76 = icmp ne i8 %75, 0, !dbg !1659
  br i1 %76, label %96, label %77, !dbg !1662

; <label>:77:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1663, metadata !266), !dbg !1665
  store i8 1, i8* %11, align 1, !dbg !1665
  %78 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1666
  %79 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %78, i32 0, i32 7, !dbg !1667
  %80 = load i32, i32* %79, align 8, !dbg !1667
  %81 = load i32, i32* %8, align 4, !dbg !1668
  %82 = icmp ne i32 %80, %81, !dbg !1669
  %83 = zext i1 %82 to i32, !dbg !1669
  %84 = trunc i32 %83 to i8, !dbg !1666
  store i8 %84, i8* %7, align 1, !dbg !1670
  %85 = load i8, i8* %7, align 1, !dbg !1671
  store i8 %85, i8* %11, align 1, !dbg !1672
  %86 = load i8, i8* %11, align 1, !dbg !1673
  %87 = sext i8 %86 to i32, !dbg !1673
  %88 = icmp ne i32 %87, 0, !dbg !1673
  br i1 %88, label %89, label %95, !dbg !1675

; <label>:89:                                     ; preds = %77
  %90 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1676
  %91 = call signext i8 @RpcInScheduleRecvEvent(%struct.RpcIn* %90), !dbg !1678
  %92 = icmp ne i8 %91, 0, !dbg !1678
  br i1 %92, label %95, label %93, !dbg !1679

; <label>:93:                                     ; preds = %89
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i8** %4, align 8, !dbg !1680
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1682
  br label %113, !dbg !1683

; <label>:95:                                     ; preds = %89, %77
  br label %96, !dbg !1684

; <label>:96:                                     ; preds = %95, %70
  br label %97, !dbg !1685

; <label>:97:                                     ; preds = %113, %96
  %98 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1687
  %99 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %98, i32 0, i32 15, !dbg !1689
  %100 = load i8, i8* %99, align 1, !dbg !1689
  %101 = icmp ne i8 %100, 0, !dbg !1687
  br i1 %101, label %102, label %106, !dbg !1690

; <label>:102:                                    ; preds = %97
  %103 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1691
  call void @RpcInStop(%struct.RpcIn* %103), !dbg !1693
  %104 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1694
  %105 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %104, i32 0, i32 15, !dbg !1695
  store i8 0, i8* %105, align 1, !dbg !1696
  store i8 1, i8* %7, align 1, !dbg !1697
  br label %106, !dbg !1698

; <label>:106:                                    ; preds = %102, %97
  %107 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1699
  %108 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %107, i32 0, i32 14, !dbg !1700
  store i8 0, i8* %108, align 8, !dbg !1701
  %109 = load i8, i8* %7, align 1, !dbg !1702
  %110 = icmp ne i8 %109, 0, !dbg !1703
  %111 = xor i1 %110, true, !dbg !1703
  %112 = zext i1 %111 to i32, !dbg !1703
  ret i32 %112, !dbg !1704

; <label>:113:                                    ; preds = %93, %56, %39, %30, %23
  %114 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1705
  %115 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %114, i32 0, i32 9, !dbg !1706
  %116 = load void (i8*, i8*)*, void (i8*, i8*)** %115, align 8, !dbg !1706
  %117 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1707
  %118 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %117, i32 0, i32 10, !dbg !1708
  %119 = load i8*, i8** %118, align 8, !dbg !1708
  %120 = load i8*, i8** %4, align 8, !dbg !1709
  call void %116(i8* %119, i8* %120), !dbg !1710
  %121 = load %struct.RpcIn*, %struct.RpcIn** %3, align 8, !dbg !1711
  %122 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %121, i32 0, i32 15, !dbg !1712
  store i8 1, i8* %122, align 1, !dbg !1713
  br label %97, !dbg !1714
}

declare signext i8 @Message_Receive(%struct.Message_Channel*, i8**, i64*) #2

; Function Attrs: nounwind uwtable
define internal i8* @ByteDump(i8*, i64) #0 !dbg !249 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1715, metadata !266), !dbg !1716
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1717, metadata !266), !dbg !1718
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1719, metadata !266), !dbg !1720
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1721, metadata !266), !dbg !1722
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1723, metadata !266), !dbg !1724
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1725, metadata !266), !dbg !1726
  store i64 0, i64* %7, align 8, !dbg !1727
  store i64 0, i64* %8, align 8, !dbg !1728
  store i64 0, i64* %9, align 8, !dbg !1729
  %12 = load i64, i64* %5, align 8, !dbg !1730
  %13 = icmp ne i64 %12, 0, !dbg !1730
  br i1 %13, label %15, label %14, !dbg !1732

; <label>:14:                                     ; preds = %2
  br label %110, !dbg !1733

; <label>:15:                                     ; preds = %2
  store i64 0, i64* %6, align 8, !dbg !1735
  br label %16, !dbg !1737

; <label>:16:                                     ; preds = %87, %15
  %17 = load i64, i64* %6, align 8, !dbg !1738
  %18 = load i64, i64* %5, align 8, !dbg !1741
  %19 = icmp ult i64 %17, %18, !dbg !1742
  br i1 %19, label %20, label %90, !dbg !1743

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1744, metadata !266), !dbg !1746
  %21 = load i64, i64* %6, align 8, !dbg !1747
  %22 = load i8*, i8** %4, align 8, !dbg !1748
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !1748
  %24 = load i8, i8* %23, align 1, !dbg !1748
  store i8 %24, i8* %10, align 1, !dbg !1746
  %25 = load i8, i8* %10, align 1, !dbg !1749
  %26 = zext i8 %25 to i32, !dbg !1749
  %27 = icmp eq i32 %26, 92, !dbg !1751
  br i1 %27, label %28, label %44, !dbg !1752

; <label>:28:                                     ; preds = %20
  %29 = load i64, i64* %7, align 8, !dbg !1753
  %30 = sub i64 128, %29, !dbg !1756
  %31 = icmp ult i64 %30, 2, !dbg !1757
  br i1 %31, label %32, label %33, !dbg !1758

; <label>:32:                                     ; preds = %28
  br label %90, !dbg !1759

; <label>:33:                                     ; preds = %28
  %34 = load i8, i8* %10, align 1, !dbg !1761
  %35 = load i64, i64* %7, align 8, !dbg !1762
  %36 = add i64 %35, 1, !dbg !1762
  store i64 %36, i64* %7, align 8, !dbg !1762
  %37 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %35, !dbg !1763
  store i8 %34, i8* %37, align 1, !dbg !1764
  %38 = load i8, i8* %10, align 1, !dbg !1765
  %39 = load i64, i64* %7, align 8, !dbg !1766
  %40 = add i64 %39, 1, !dbg !1766
  store i64 %40, i64* %7, align 8, !dbg !1766
  %41 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %39, !dbg !1767
  store i8 %38, i8* %41, align 1, !dbg !1768
  %42 = load i64, i64* %8, align 8, !dbg !1769
  %43 = add i64 %42, 1, !dbg !1769
  store i64 %43, i64* %8, align 8, !dbg !1769
  br label %86, !dbg !1770

; <label>:44:                                     ; preds = %20
  %45 = load i8, i8* %10, align 1, !dbg !1771
  %46 = zext i8 %45 to i32, !dbg !1774
  %47 = sext i32 %46 to i64, !dbg !1775
  %48 = call i16** @__ctype_b_loc() #1, !dbg !1776
  %49 = load i16*, i16** %48, align 8, !dbg !1777
  %50 = getelementptr inbounds i16, i16* %49, i64 %47, !dbg !1775
  %51 = load i16, i16* %50, align 2, !dbg !1775
  %52 = zext i16 %51 to i32, !dbg !1775
  %53 = and i32 %52, 16384, !dbg !1778
  %54 = icmp ne i32 %53, 0, !dbg !1778
  br i1 %54, label %55, label %67, !dbg !1771

; <label>:55:                                     ; preds = %44
  %56 = load i64, i64* %7, align 8, !dbg !1779
  %57 = sub i64 128, %56, !dbg !1782
  %58 = icmp ult i64 %57, 1, !dbg !1783
  br i1 %58, label %59, label %60, !dbg !1784

; <label>:59:                                     ; preds = %55
  br label %90, !dbg !1785

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %10, align 1, !dbg !1787
  %62 = load i64, i64* %7, align 8, !dbg !1788
  %63 = add i64 %62, 1, !dbg !1788
  store i64 %63, i64* %7, align 8, !dbg !1788
  %64 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %62, !dbg !1789
  store i8 %61, i8* %64, align 1, !dbg !1790
  %65 = load i64, i64* %8, align 8, !dbg !1791
  %66 = add i64 %65, 1, !dbg !1791
  store i64 %66, i64* %8, align 8, !dbg !1791
  br label %85, !dbg !1792

; <label>:67:                                     ; preds = %44
  %68 = load i64, i64* %7, align 8, !dbg !1793
  %69 = sub i64 128, %68, !dbg !1796
  %70 = icmp ult i64 %69, 3, !dbg !1797
  br i1 %70, label %71, label %72, !dbg !1798

; <label>:71:                                     ; preds = %67
  br label %90, !dbg !1799

; <label>:72:                                     ; preds = %67
  %73 = load i64, i64* %7, align 8, !dbg !1801
  %74 = add i64 %73, 1, !dbg !1801
  store i64 %74, i64* %7, align 8, !dbg !1801
  %75 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %73, !dbg !1802
  store i8 92, i8* %75, align 1, !dbg !1803
  %76 = load i64, i64* %7, align 8, !dbg !1804
  %77 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %76, !dbg !1805
  %78 = load i8, i8* %10, align 1, !dbg !1806
  %79 = zext i8 %78 to i32, !dbg !1806
  %80 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %77, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 %79), !dbg !1807
  %81 = load i64, i64* %7, align 8, !dbg !1808
  %82 = add i64 %81, 2, !dbg !1808
  store i64 %82, i64* %7, align 8, !dbg !1808
  %83 = load i64, i64* %9, align 8, !dbg !1809
  %84 = add i64 %83, 1, !dbg !1809
  store i64 %84, i64* %9, align 8, !dbg !1809
  br label %85

; <label>:85:                                     ; preds = %72, %60
  br label %86

; <label>:86:                                     ; preds = %85, %33
  br label %87, !dbg !1810

; <label>:87:                                     ; preds = %86
  %88 = load i64, i64* %6, align 8, !dbg !1811
  %89 = add i64 %88, 1, !dbg !1811
  store i64 %89, i64* %6, align 8, !dbg !1811
  br label %16, !dbg !1813, !llvm.loop !1814

; <label>:90:                                     ; preds = %71, %59, %32, %16
  %91 = load i64, i64* %9, align 8, !dbg !1816
  %92 = load i64, i64* %8, align 8, !dbg !1818
  %93 = icmp ugt i64 %91, %92, !dbg !1819
  br i1 %93, label %94, label %95, !dbg !1820

; <label>:94:                                     ; preds = %90
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i8** %3, align 8, !dbg !1821
  br label %113, !dbg !1821

; <label>:95:                                     ; preds = %90
  %96 = load i64, i64* %6, align 8, !dbg !1823
  %97 = load i64, i64* %5, align 8, !dbg !1825
  %98 = icmp ult i64 %96, %97, !dbg !1826
  br i1 %98, label %99, label %109, !dbg !1827

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1828, metadata !266), !dbg !1830
  %100 = load i64, i64* %7, align 8, !dbg !1831
  %101 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %100, !dbg !1832
  %102 = load i64, i64* %7, align 8, !dbg !1833
  %103 = sub i64 132, %102, !dbg !1834
  %104 = call i32 (i8*, i64, i8*, ...) @Str_Snprintf(i8* %101, i64 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @ByteDump.truncationTag, i32 0, i32 0)), !dbg !1835
  store i32 %104, i32* %11, align 4, !dbg !1830
  %105 = load i32, i32* %11, align 4, !dbg !1836
  %106 = sext i32 %105 to i64, !dbg !1836
  %107 = load i64, i64* %7, align 8, !dbg !1837
  %108 = add i64 %107, %106, !dbg !1837
  store i64 %108, i64* %7, align 8, !dbg !1837
  br label %109, !dbg !1838

; <label>:109:                                    ; preds = %99, %95
  br label %110, !dbg !1839

; <label>:110:                                    ; preds = %109, %14
  %111 = load i64, i64* %7, align 8, !dbg !1841
  %112 = getelementptr inbounds [132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i64 0, i64 %111, !dbg !1842
  store i8 0, i8* %112, align 1, !dbg !1843
  store i8* getelementptr inbounds ([132 x i8], [132 x i8]* @ByteDump.dumpBuffer, i32 0, i32 0), i8** %3, align 8, !dbg !1844
  br label %113, !dbg !1844

; <label>:113:                                    ; preds = %110, %94
  %114 = load i8*, i8** %3, align 8, !dbg !1845
  ret i8* %114, !dbg !1845
}

declare i64 @System_GetTimeMonotonic() #2

; Function Attrs: nounwind uwtable
define internal void @RpcInUpdateDelayTime(%struct.RpcIn*) #0 !dbg !1846 {
  %2 = alloca %struct.RpcIn*, align 8
  store %struct.RpcIn* %0, %struct.RpcIn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcIn** %2, metadata !1847, metadata !266), !dbg !1848
  %3 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1849
  %4 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %3, i32 0, i32 7, !dbg !1851
  %5 = load i32, i32* %4, align 8, !dbg !1851
  %6 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1852
  %7 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %6, i32 0, i32 8, !dbg !1853
  %8 = load i32, i32* %7, align 4, !dbg !1853
  %9 = icmp ult i32 %5, %8, !dbg !1854
  br i1 %9, label %10, label %60, !dbg !1855

; <label>:10:                                     ; preds = %1
  %11 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1856
  %12 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %11, i32 0, i32 7, !dbg !1859
  %13 = load i32, i32* %12, align 8, !dbg !1859
  %14 = icmp ugt i32 %13, 0, !dbg !1860
  br i1 %14, label %15, label %37, !dbg !1861

; <label>:15:                                     ; preds = %10
  %16 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1862
  %17 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %16, i32 0, i32 7, !dbg !1864
  %18 = load i32, i32* %17, align 8, !dbg !1864
  %19 = mul i32 %18, 2, !dbg !1865
  %20 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1866
  %21 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %20, i32 0, i32 7, !dbg !1867
  %22 = load i32, i32* %21, align 8, !dbg !1867
  %23 = icmp ugt i32 %19, %22, !dbg !1868
  br i1 %23, label %24, label %29, !dbg !1869

; <label>:24:                                     ; preds = %15
  %25 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1870
  %26 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %25, i32 0, i32 7, !dbg !1872
  %27 = load i32, i32* %26, align 8, !dbg !1872
  %28 = mul i32 %27, 2, !dbg !1873
  br label %33, !dbg !1874

; <label>:29:                                     ; preds = %15
  %30 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1875
  %31 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %30, i32 0, i32 8, !dbg !1877
  %32 = load i32, i32* %31, align 4, !dbg !1877
  br label %33, !dbg !1878

; <label>:33:                                     ; preds = %29, %24
  %34 = phi i32 [ %28, %24 ], [ %32, %29 ], !dbg !1879
  %35 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1881
  %36 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %35, i32 0, i32 7, !dbg !1882
  store i32 %34, i32* %36, align 8, !dbg !1883
  br label %40, !dbg !1884

; <label>:37:                                     ; preds = %10
  %38 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1885
  %39 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %38, i32 0, i32 7, !dbg !1887
  store i32 1, i32* %39, align 8, !dbg !1888
  br label %40

; <label>:40:                                     ; preds = %37, %33
  %41 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1889
  %42 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %41, i32 0, i32 7, !dbg !1890
  %43 = load i32, i32* %42, align 8, !dbg !1890
  %44 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1891
  %45 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %44, i32 0, i32 8, !dbg !1892
  %46 = load i32, i32* %45, align 4, !dbg !1892
  %47 = icmp ult i32 %43, %46, !dbg !1893
  br i1 %47, label %48, label %52, !dbg !1894

; <label>:48:                                     ; preds = %40
  %49 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1895
  %50 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %49, i32 0, i32 7, !dbg !1897
  %51 = load i32, i32* %50, align 8, !dbg !1897
  br label %56, !dbg !1898

; <label>:52:                                     ; preds = %40
  %53 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1899
  %54 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %53, i32 0, i32 8, !dbg !1901
  %55 = load i32, i32* %54, align 4, !dbg !1901
  br label %56, !dbg !1902

; <label>:56:                                     ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ], !dbg !1903
  %58 = load %struct.RpcIn*, %struct.RpcIn** %2, align 8, !dbg !1905
  %59 = getelementptr inbounds %struct.RpcIn, %struct.RpcIn* %58, i32 0, i32 7, !dbg !1906
  store i32 %57, i32* %59, align 8, !dbg !1907
  br label %60, !dbg !1908

; <label>:60:                                     ; preds = %56, %1
  ret void, !dbg !1909
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @Str_Snprintf(i8*, i64, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!259, !260}
!llvm.ident = !{!261}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50, globals: !235)
!1 = !DIFile(filename: "libRpcIn_la-rpcin.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!2 = !{!3, !18, !23, !27, !35}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 47, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dataMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "DMERR_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "DMERR_NOT_FOUND", value: 1)
!8 = !DIEnumerator(name: "DMERR_ALREADY_EXIST", value: 2)
!9 = !DIEnumerator(name: "DMERR_DUPLICATED_FIELD_IDS", value: 3)
!10 = !DIEnumerator(name: "DMERR_INSUFFICIENT_MEM", value: 4)
!11 = !DIEnumerator(name: "DMERR_TYPE_MISMATCH", value: 5)
!12 = !DIEnumerator(name: "DMERR_INVALID_ARGS", value: 6)
!13 = !DIEnumerator(name: "DMERR_UNKNOWN_TYPE", value: 7)
!14 = !DIEnumerator(name: "DMERR_TRUNCATED_DATA", value: 8)
!15 = !DIEnumerator(name: "DMERR_BUFFER_TOO_SMALL", value: 9)
!16 = !DIEnumerator(name: "DMERR_INTEGER_OVERFLOW", value: 10)
!17 = !DIEnumerator(name: "DMERR_BAD_DATA", value: 11)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 122, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/guestrpc/tclodefs.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "GUESTRPCPKT_TYPE_DATA", value: 1)
!22 = !DIEnumerator(name: "GUESTRPCPKT_TYPE_PING", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 127, size: 32, align: 32, elements: !24)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "GUESTRPCPKT_FIELD_TYPE", value: 1)
!26 = !DIEnumerator(name: "GUESTRPCPKT_FIELD_PAYLOAD", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "AsyncSocketState", file: !28, line: 184, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/asyncsocket.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "AsyncSocketListening", value: 0)
!31 = !DIEnumerator(name: "AsyncSocketConnecting", value: 1)
!32 = !DIEnumerator(name: "AsyncSocketConnected", value: 2)
!33 = !DIEnumerator(name: "AsyncSocketCBCancelled", value: 3)
!34 = !DIEnumerator(name: "AsyncSocketClosed", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !{!51, !52, !54, !231, !70, !232, !234, !68, !209}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnInfo", file: !56, line: 128, baseType: !57)
!56 = !DIFile(filename: "rpcin.c", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ConnInfo", file: !56, line: 113, size: 448, align: 64, elements: !58)
!58 = !{!59, !63, !69, !72, !73, !75, !76, !77, !78, !83}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "asock", scope: !57, file: !56, line: 114, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "AsyncSocket", file: !28, line: 155, baseType: !62)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "AsyncSocket", file: !28, line: 155, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "packetLen", scope: !57, file: !56, line: 116, baseType: !64, size: 32, align: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !65, line: 174, baseType: !66)
!65 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !67, line: 196, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "recvBuf", scope: !57, file: !56, line: 117, baseType: !70, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "recvBufLen", scope: !57, file: !56, line: 118, baseType: !68, size: 32, align: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !57, file: !56, line: 120, baseType: !74, size: 8, align: 8, offset: 224)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !65, line: 230, baseType: !71)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "shutDown", scope: !57, file: !56, line: 121, baseType: !74, size: 8, align: 8, offset: 232)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "recvStopped", scope: !57, file: !56, line: 122, baseType: !74, size: 8, align: 8, offset: 240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sendQueueLen", scope: !57, file: !56, line: 123, baseType: !68, size: 32, align: 32, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !57, file: !56, line: 125, baseType: !79, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmTimeType", file: !65, line: 354, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !65, line: 172, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !67, line: 197, baseType: !82)
!82 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !57, file: !56, line: 127, baseType: !84, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcIn", file: !56, line: 135, size: 896, align: 64, elements: !86)
!86 = !{!87, !172, !173, !196, !197, !198, !199, !217, !218, !219, !225, !226, !227, !228, !229, !230}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "nextEvent", scope: !85, file: !56, line: 137, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !90, line: 64, baseType: !91)
!90 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !90, line: 171, size: 768, align: 64, elements: !92)
!92 = !{!93, !96, !118, !147, !150, !154, !155, !156, !157, !165, !166, !167, !168}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !91, file: !90, line: 174, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !95, line: 77, baseType: !51)
!95 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !91, file: !90, line: 175, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !90, line: 77, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !90, line: 196, size: 192, align: 64, elements: !100)
!100 = !{!101, !105, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !99, file: !90, line: 198, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !94}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !99, file: !90, line: 199, baseType: !102, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !99, file: !90, line: 200, baseType: !107, size: 64, align: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !94, !88, !110, !117}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !90, line: 155, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !94}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !95, line: 50, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !95, line: 49, baseType: !68)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !91, file: !90, line: 177, baseType: !119, size: 64, align: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !90, line: 130, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !90, line: 214, size: 384, align: 64, elements: !123)
!123 = !{!124, !129, !133, !137, !141, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !122, file: !90, line: 216, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!115, !88, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !122, file: !90, line: 218, baseType: !130, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!115, !88}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !122, file: !90, line: 219, baseType: !134, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!115, !88, !111, !94}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !122, file: !90, line: 222, baseType: !138, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !88}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !122, file: !90, line: 226, baseType: !111, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !122, file: !90, line: 227, baseType: !143, size: 64, align: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !90, line: 212, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !91, file: !90, line: 178, baseType: !148, size: 32, align: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !95, line: 55, baseType: !149)
!149 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !91, file: !90, line: 180, baseType: !151, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !90, line: 48, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !90, line: 48, flags: DIFlagFwdDecl)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !91, file: !90, line: 182, baseType: !116, size: 32, align: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !90, line: 183, baseType: !148, size: 32, align: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !91, file: !90, line: 184, baseType: !148, size: 32, align: 32, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !91, file: !90, line: 186, baseType: !158, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !160, line: 37, baseType: !161)
!160 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !160, line: 39, size: 128, align: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !161, file: !160, line: 41, baseType: !94, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !160, line: 42, baseType: !158, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !90, line: 188, baseType: !88, size: 64, align: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !90, line: 189, baseType: !88, size: 64, align: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !90, line: 191, baseType: !70, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !91, file: !90, line: 193, baseType: !169, size: 64, align: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !90, line: 65, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !90, line: 65, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mainCtx", scope: !85, file: !56, line: 138, baseType: !151, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !85, file: !56, line: 139, baseType: !174, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !175, line: 90, baseType: !176)
!175 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!115, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !175, line: 77, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !175, line: 51, size: 512, align: 64, elements: !182)
!182 = !{!183, !186, !187, !191, !192, !193, !194, !195}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !175, line: 53, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !181, file: !175, line: 58, baseType: !184, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !181, file: !175, line: 60, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 216, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!190 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !181, file: !175, line: 65, baseType: !70, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !181, file: !175, line: 67, baseType: !188, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !181, file: !175, line: 72, baseType: !115, size: 32, align: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !181, file: !175, line: 74, baseType: !51, size: 64, align: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !181, file: !175, line: 76, baseType: !51, size: 64, align: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !85, file: !56, line: 140, baseType: !94, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !85, file: !56, line: 147, baseType: !54, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "heartbeatSrc", scope: !85, file: !56, line: 148, baseType: !88, size: 64, align: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !85, file: !56, line: 151, baseType: !200, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "Message_Channel", file: !202, line: 65, baseType: !203)
!202 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/message.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Message_Channel", file: !202, line: 51, size: 320, align: 64, elements: !204)
!204 = !{!205, !210, !211, !212, !213, !216}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !203, file: !202, line: 53, baseType: !206, size: 16, align: 16)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !65, line: 175, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !208, line: 49, baseType: !209)
!208 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!209 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !203, file: !202, line: 57, baseType: !52, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "inAlloc", scope: !203, file: !202, line: 59, baseType: !188, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "inPreallocated", scope: !203, file: !202, line: 60, baseType: !74, size: 8, align: 8, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "cookieHigh", scope: !203, file: !202, line: 63, baseType: !214, size: 32, align: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !65, line: 173, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !208, line: 51, baseType: !149)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cookieLow", scope: !203, file: !202, line: 64, baseType: !214, size: 32, align: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !85, file: !56, line: 152, baseType: !149, size: 32, align: 32, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "maxDelay", scope: !85, file: !56, line: 153, baseType: !149, size: 32, align: 32, offset: 480)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "errorFunc", scope: !85, file: !56, line: 154, baseType: !220, size: 64, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_ErrorFunc", file: !222, line: 34, baseType: !223)
!222 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/rpcin.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!223 = !DISubroutineType(types: !224)
!224 = !{null, !51, !184}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "errorData", scope: !85, file: !56, line: 155, baseType: !51, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mustSend", scope: !85, file: !56, line: 162, baseType: !74, size: 8, align: 8, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_result", scope: !85, file: !56, line: 165, baseType: !70, size: 64, align: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "last_resultLen", scope: !85, file: !56, line: 168, baseType: !188, size: 64, align: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "inLoop", scope: !85, file: !56, line: 179, baseType: !74, size: 8, align: 8, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "shouldStop", scope: !85, file: !56, line: 180, baseType: !74, size: 8, align: 8, offset: 840)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn", file: !222, line: 36, baseType: !85)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!235 = !{!236, !241, !242, !248, !255}
!236 = distinct !DIGlobalVariable(name: "first", scope: !237, file: !56, line: 1692, type: !74, isLocal: true, isDefinition: true, variable: i8* @RpcInOpenChannel.first)
!237 = distinct !DISubprogram(name: "RpcInOpenChannel", scope: !56, file: !56, line: 1688, type: !238, isLocal: true, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!74, !232, !74}
!240 = !{}
!241 = distinct !DIGlobalVariable(name: "initOk", scope: !237, file: !56, line: 1693, type: !74, isLocal: true, isDefinition: true, variable: i8* @RpcInOpenChannel.initOk)
!242 = distinct !DIGlobalVariable(name: "lastPrintMilli", scope: !243, file: !56, line: 1580, type: !246, isLocal: true, isDefinition: true, variable: i64* @RpcInLoop.lastPrintMilli)
!243 = distinct !DISubprogram(name: "RpcInLoop", scope: !56, file: !56, line: 1516, type: !244, isLocal: true, isDefinition: true, scopeLine: 1517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!244 = !DISubroutineType(types: !245)
!245 = !{!115, !51}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !65, line: 171, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !208, line: 55, baseType: !190)
!248 = distinct !DIGlobalVariable(name: "truncationTag", scope: !249, file: !56, line: 1434, type: !252, isLocal: true, isDefinition: true, variable: [4 x i8]* @ByteDump.truncationTag)
!249 = distinct !DISubprogram(name: "ByteDump", scope: !56, file: !56, line: 1430, type: !250, isLocal: true, isDefinition: true, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!250 = !DISubroutineType(types: !251)
!251 = !{!70, !184, !188}
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 32, align: 8, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 4)
!255 = distinct !DIGlobalVariable(name: "dumpBuffer", scope: !249, file: !56, line: 1435, type: !256, isLocal: true, isDefinition: true, variable: [132 x i8]* @ByteDump.dumpBuffer)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1056, align: 8, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 132)
!259 = !{i32 2, !"Dwarf Version", i32 4}
!260 = !{i32 2, !"Debug Info Version", i32 3}
!261 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!262 = distinct !DISubprogram(name: "RpcIn_Construct", scope: !56, file: !56, line: 417, type: !263, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!263 = !DISubroutineType(types: !264)
!264 = !{!232, !151, !174, !94}
!265 = !DILocalVariable(name: "mainCtx", arg: 1, scope: !262, file: !56, line: 417, type: !151)
!266 = !DIExpression()
!267 = !DILocation(line: 417, column: 31, scope: !262)
!268 = !DILocalVariable(name: "dispatch", arg: 2, scope: !262, file: !56, line: 418, type: !174)
!269 = !DILocation(line: 418, column: 32, scope: !262)
!270 = !DILocalVariable(name: "clientData", arg: 3, scope: !262, file: !56, line: 419, type: !94)
!271 = !DILocation(line: 419, column: 26, scope: !262)
!272 = !DILocalVariable(name: "result", scope: !262, file: !56, line: 421, type: !232)
!273 = !DILocation(line: 421, column: 11, scope: !262)
!274 = !DILocation(line: 424, column: 4, scope: !262)
!275 = !DILocation(line: 430, column: 13, scope: !262)
!276 = !DILocation(line: 430, column: 11, scope: !262)
!277 = !DILocation(line: 431, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !262, file: !56, line: 431, column: 8)
!279 = !DILocation(line: 431, column: 15, scope: !278)
!280 = !DILocation(line: 431, column: 8, scope: !262)
!281 = !DILocation(line: 432, column: 25, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !56, line: 431, column: 23)
!283 = !DILocation(line: 432, column: 7, scope: !282)
!284 = !DILocation(line: 432, column: 15, scope: !282)
!285 = !DILocation(line: 432, column: 23, scope: !282)
!286 = !DILocation(line: 433, column: 28, scope: !282)
!287 = !DILocation(line: 433, column: 7, scope: !282)
!288 = !DILocation(line: 433, column: 15, scope: !282)
!289 = !DILocation(line: 433, column: 26, scope: !282)
!290 = !DILocation(line: 434, column: 26, scope: !282)
!291 = !DILocation(line: 434, column: 7, scope: !282)
!292 = !DILocation(line: 434, column: 15, scope: !282)
!293 = !DILocation(line: 434, column: 24, scope: !282)
!294 = !DILocation(line: 435, column: 4, scope: !282)
!295 = !DILocation(line: 436, column: 11, scope: !262)
!296 = !DILocation(line: 436, column: 4, scope: !262)
!297 = distinct !DISubprogram(name: "RpcIn_Destruct", scope: !56, file: !56, line: 460, type: !298, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !232}
!300 = !DILocalVariable(name: "in", arg: 1, scope: !297, file: !56, line: 460, type: !232)
!301 = !DILocation(line: 460, column: 23, scope: !297)
!302 = !DILocation(line: 484, column: 9, scope: !297)
!303 = !DILocation(line: 484, column: 4, scope: !297)
!304 = !DILocation(line: 485, column: 1, scope: !297)
!305 = distinct !DISubprogram(name: "RpcIn_stop", scope: !56, file: !56, line: 1270, type: !298, isLocal: false, isDefinition: true, scopeLine: 1271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!306 = !DILocalVariable(name: "in", arg: 1, scope: !305, file: !56, line: 1270, type: !232)
!307 = !DILocation(line: 1270, column: 19, scope: !305)
!308 = !DILocation(line: 1272, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !56, line: 1272, column: 8)
!310 = !DILocation(line: 1272, column: 12, scope: !309)
!311 = !DILocation(line: 1272, column: 8, scope: !305)
!312 = !DILocation(line: 1273, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !56, line: 1272, column: 20)
!314 = !DILocation(line: 1273, column: 11, scope: !313)
!315 = !DILocation(line: 1273, column: 22, scope: !313)
!316 = !DILocation(line: 1274, column: 4, scope: !313)
!317 = !DILocation(line: 1275, column: 17, scope: !318)
!318 = distinct !DILexicalBlock(scope: !309, file: !56, line: 1274, column: 11)
!319 = !DILocation(line: 1275, column: 7, scope: !318)
!320 = !DILocation(line: 1277, column: 1, scope: !305)
!321 = distinct !DISubprogram(name: "RpcInStop", scope: !56, file: !56, line: 1202, type: !298, isLocal: true, isDefinition: true, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!322 = !DILocalVariable(name: "in", arg: 1, scope: !321, file: !56, line: 1202, type: !232)
!323 = !DILocation(line: 1202, column: 18, scope: !321)
!324 = !DILocation(line: 1205, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !56, line: 1205, column: 8)
!326 = !DILocation(line: 1205, column: 12, scope: !325)
!327 = !DILocation(line: 1205, column: 8, scope: !321)
!328 = !DILocation(line: 1208, column: 12, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !56, line: 1208, column: 11)
!330 = distinct !DILexicalBlock(scope: !325, file: !56, line: 1205, column: 23)
!331 = !DILocation(line: 1208, column: 16, scope: !329)
!332 = !DILocation(line: 1208, column: 11, scope: !330)
!333 = !DILocation(line: 1209, column: 27, scope: !334)
!334 = distinct !DILexicalBlock(scope: !329, file: !56, line: 1208, column: 24)
!335 = !DILocation(line: 1209, column: 31, scope: !334)
!336 = !DILocation(line: 1209, column: 10, scope: !334)
!337 = !DILocation(line: 1210, column: 7, scope: !334)
!338 = !DILocation(line: 1212, column: 22, scope: !330)
!339 = !DILocation(line: 1212, column: 26, scope: !330)
!340 = !DILocation(line: 1212, column: 7, scope: !330)
!341 = !DILocation(line: 1216, column: 7, scope: !330)
!342 = !DILocation(line: 1216, column: 11, scope: !330)
!343 = !DILocation(line: 1216, column: 21, scope: !330)
!344 = !DILocation(line: 1217, column: 4, scope: !330)
!345 = !DILocation(line: 1219, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !321, file: !56, line: 1219, column: 8)
!347 = !DILocation(line: 1219, column: 12, scope: !346)
!348 = !DILocation(line: 1219, column: 8, scope: !321)
!349 = !DILocation(line: 1221, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !56, line: 1221, column: 11)
!351 = distinct !DILexicalBlock(scope: !346, file: !56, line: 1219, column: 21)
!352 = !DILocation(line: 1221, column: 15, scope: !350)
!353 = !DILocation(line: 1221, column: 11, scope: !351)
!354 = !DILocation(line: 1223, column: 20, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !56, line: 1221, column: 25)
!356 = !DILocation(line: 1223, column: 10, scope: !355)
!357 = !DILocation(line: 1225, column: 7, scope: !355)
!358 = !DILocation(line: 1228, column: 25, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !56, line: 1228, column: 11)
!360 = !DILocation(line: 1228, column: 29, scope: !359)
!361 = !DILocation(line: 1228, column: 11, scope: !359)
!362 = !DILocation(line: 1228, column: 38, scope: !359)
!363 = !DILocation(line: 1228, column: 11, scope: !351)
!364 = !DILocation(line: 1229, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !56, line: 1228, column: 44)
!366 = !DILocation(line: 1230, column: 7, scope: !365)
!367 = !DILocation(line: 1232, column: 7, scope: !351)
!368 = !DILocation(line: 1232, column: 11, scope: !351)
!369 = !DILocation(line: 1232, column: 19, scope: !351)
!370 = !DILocation(line: 1233, column: 4, scope: !351)
!371 = !DILocation(line: 1236, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !321, file: !56, line: 1236, column: 8)
!373 = !DILocation(line: 1236, column: 12, scope: !372)
!374 = !DILocation(line: 1236, column: 17, scope: !372)
!375 = !DILocation(line: 1236, column: 8, scope: !321)
!376 = !DILocation(line: 1237, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !56, line: 1237, column: 11)
!378 = distinct !DILexicalBlock(scope: !372, file: !56, line: 1236, column: 25)
!379 = !DILocation(line: 1237, column: 15, scope: !377)
!380 = !DILocation(line: 1237, column: 11, scope: !378)
!381 = !DILocation(line: 1239, column: 20, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !56, line: 1237, column: 25)
!383 = !DILocation(line: 1239, column: 10, scope: !382)
!384 = !DILocation(line: 1240, column: 7, scope: !382)
!385 = !DILocation(line: 1241, column: 22, scope: !378)
!386 = !DILocation(line: 1241, column: 26, scope: !378)
!387 = !DILocation(line: 1241, column: 7, scope: !378)
!388 = !DILocation(line: 1242, column: 4, scope: !378)
!389 = !DILocation(line: 1244, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !321, file: !56, line: 1244, column: 8)
!391 = !DILocation(line: 1244, column: 12, scope: !390)
!392 = !DILocation(line: 1244, column: 25, scope: !390)
!393 = !DILocation(line: 1244, column: 8, scope: !321)
!394 = !DILocation(line: 1245, column: 24, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !56, line: 1244, column: 33)
!396 = !DILocation(line: 1245, column: 28, scope: !395)
!397 = !DILocation(line: 1245, column: 7, scope: !395)
!398 = !DILocation(line: 1246, column: 22, scope: !395)
!399 = !DILocation(line: 1246, column: 26, scope: !395)
!400 = !DILocation(line: 1246, column: 7, scope: !395)
!401 = !DILocation(line: 1247, column: 7, scope: !395)
!402 = !DILocation(line: 1247, column: 11, scope: !395)
!403 = !DILocation(line: 1247, column: 24, scope: !395)
!404 = !DILocation(line: 1248, column: 4, scope: !395)
!405 = !DILocation(line: 1250, column: 1, scope: !321)
!406 = distinct !DISubprogram(name: "RpcIn_start", scope: !56, file: !56, line: 1795, type: !407, isLocal: false, isDefinition: true, scopeLine: 1808, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!407 = !DISubroutineType(types: !408)
!408 = !{!74, !232, !149, !220, !51}
!409 = !DILocalVariable(name: "in", arg: 1, scope: !406, file: !56, line: 1795, type: !232)
!410 = !DILocation(line: 1795, column: 20, scope: !406)
!411 = !DILocalVariable(name: "delay", arg: 2, scope: !406, file: !56, line: 1796, type: !149)
!412 = !DILocation(line: 1796, column: 26, scope: !406)
!413 = !DILocalVariable(name: "errorFunc", arg: 3, scope: !406, file: !56, line: 1797, type: !220)
!414 = !DILocation(line: 1797, column: 30, scope: !406)
!415 = !DILocalVariable(name: "errorData", arg: 4, scope: !406, file: !56, line: 1798, type: !51)
!416 = !DILocation(line: 1798, column: 19, scope: !406)
!417 = !DILocation(line: 1811, column: 4, scope: !406)
!418 = !DILocation(line: 1811, column: 8, scope: !406)
!419 = !DILocation(line: 1811, column: 14, scope: !406)
!420 = !DILocation(line: 1812, column: 19, scope: !406)
!421 = !DILocation(line: 1812, column: 4, scope: !406)
!422 = !DILocation(line: 1812, column: 8, scope: !406)
!423 = !DILocation(line: 1812, column: 17, scope: !406)
!424 = !DILocation(line: 1813, column: 20, scope: !406)
!425 = !DILocation(line: 1813, column: 4, scope: !406)
!426 = !DILocation(line: 1813, column: 8, scope: !406)
!427 = !DILocation(line: 1813, column: 18, scope: !406)
!428 = !DILocation(line: 1814, column: 20, scope: !406)
!429 = !DILocation(line: 1814, column: 4, scope: !406)
!430 = !DILocation(line: 1814, column: 8, scope: !406)
!431 = !DILocation(line: 1814, column: 18, scope: !406)
!432 = !DILocation(line: 1831, column: 28, scope: !406)
!433 = !DILocation(line: 1831, column: 11, scope: !406)
!434 = !DILocation(line: 1831, column: 4, scope: !406)
!435 = !DILocalVariable(name: "in", arg: 1, scope: !237, file: !56, line: 1688, type: !232)
!436 = !DILocation(line: 1688, column: 25, scope: !237)
!437 = !DILocalVariable(name: "useBackdoorOnly", arg: 2, scope: !237, file: !56, line: 1689, type: !74)
!438 = !DILocation(line: 1689, column: 23, scope: !237)
!439 = !DILocalVariable(name: "asock", scope: !237, file: !56, line: 1694, type: !60)
!440 = !DILocation(line: 1694, column: 17, scope: !237)
!441 = !DILocalVariable(name: "res", scope: !237, file: !56, line: 1695, type: !68)
!442 = !DILocation(line: 1695, column: 8, scope: !237)
!443 = !DILocation(line: 1699, column: 4, scope: !237)
!444 = !DILocation(line: 1700, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !56, line: 1700, column: 11)
!446 = distinct !DILexicalBlock(scope: !237, file: !56, line: 1699, column: 14)
!447 = !DILocation(line: 1700, column: 11, scope: !446)
!448 = !DILocation(line: 1701, column: 10, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !56, line: 1700, column: 28)
!450 = !DILocation(line: 1704, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !56, line: 1704, column: 11)
!452 = !DILocation(line: 1704, column: 11, scope: !446)
!453 = !DILocation(line: 1705, column: 16, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !56, line: 1704, column: 18)
!455 = !DILocation(line: 1706, column: 16, scope: !454)
!456 = !DILocation(line: 1706, column: 14, scope: !454)
!457 = !DILocation(line: 1707, column: 20, scope: !454)
!458 = !DILocation(line: 1707, column: 24, scope: !454)
!459 = !DILocation(line: 1707, column: 19, scope: !454)
!460 = !DILocation(line: 1707, column: 17, scope: !454)
!461 = !DILocation(line: 1708, column: 15, scope: !462)
!462 = distinct !DILexicalBlock(scope: !454, file: !56, line: 1708, column: 14)
!463 = !DILocation(line: 1708, column: 14, scope: !454)
!464 = !DILocation(line: 1710, column: 42, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !56, line: 1708, column: 23)
!466 = !DILocation(line: 1710, column: 19, scope: !465)
!467 = !DILocation(line: 1709, column: 13, scope: !465)
!468 = !DILocation(line: 1711, column: 13, scope: !465)
!469 = !DILocation(line: 1713, column: 7, scope: !454)
!470 = !DILocation(line: 1715, column: 12, scope: !471)
!471 = distinct !DILexicalBlock(scope: !446, file: !56, line: 1715, column: 11)
!472 = !DILocation(line: 1715, column: 11, scope: !446)
!473 = !DILocation(line: 1716, column: 10, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !56, line: 1715, column: 20)
!475 = !DILocation(line: 1719, column: 18, scope: !446)
!476 = !DILocation(line: 1719, column: 7, scope: !446)
!477 = !DILocation(line: 1719, column: 11, scope: !446)
!478 = !DILocation(line: 1719, column: 16, scope: !446)
!479 = !DILocation(line: 1720, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !446, file: !56, line: 1720, column: 11)
!481 = !DILocation(line: 1720, column: 15, scope: !480)
!482 = !DILocation(line: 1720, column: 20, scope: !480)
!483 = !DILocation(line: 1720, column: 11, scope: !446)
!484 = !DILocation(line: 1721, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !56, line: 1720, column: 28)
!486 = !DILocation(line: 1722, column: 10, scope: !485)
!487 = !DILocation(line: 1724, column: 22, scope: !446)
!488 = !DILocation(line: 1724, column: 7, scope: !446)
!489 = !DILocation(line: 1724, column: 11, scope: !446)
!490 = !DILocation(line: 1724, column: 17, scope: !446)
!491 = !DILocation(line: 1724, column: 20, scope: !446)
!492 = !DILocation(line: 1728, column: 39, scope: !446)
!493 = !DILocation(line: 1728, column: 43, scope: !446)
!494 = !DILocation(line: 1725, column: 15, scope: !446)
!495 = !DILocation(line: 1725, column: 13, scope: !446)
!496 = !DILocation(line: 1729, column: 11, scope: !497)
!497 = distinct !DILexicalBlock(scope: !446, file: !56, line: 1729, column: 11)
!498 = !DILocation(line: 1729, column: 17, scope: !497)
!499 = !DILocation(line: 1729, column: 11, scope: !446)
!500 = !DILocation(line: 1731, column: 39, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !56, line: 1729, column: 25)
!502 = !DILocation(line: 1731, column: 16, scope: !501)
!503 = !DILocation(line: 1730, column: 10, scope: !501)
!504 = !DILocation(line: 1732, column: 7, scope: !501)
!505 = !DILocation(line: 1733, column: 39, scope: !506)
!506 = distinct !DILexicalBlock(scope: !497, file: !56, line: 1732, column: 14)
!507 = !DILocation(line: 1733, column: 69, scope: !506)
!508 = !DILocation(line: 1733, column: 73, scope: !506)
!509 = !DILocation(line: 1733, column: 16, scope: !506)
!510 = !DILocation(line: 1733, column: 14, scope: !506)
!511 = !DILocation(line: 1734, column: 14, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !56, line: 1734, column: 14)
!513 = !DILocation(line: 1734, column: 18, scope: !512)
!514 = !DILocation(line: 1734, column: 14, scope: !506)
!515 = !DILocation(line: 1736, column: 37, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !56, line: 1734, column: 24)
!517 = !DILocation(line: 1736, column: 19, scope: !516)
!518 = !DILocation(line: 1735, column: 13, scope: !516)
!519 = !DILocation(line: 1737, column: 31, scope: !516)
!520 = !DILocation(line: 1737, column: 13, scope: !516)
!521 = !DILocation(line: 1738, column: 10, scope: !516)
!522 = !DILocation(line: 1740, column: 37, scope: !523)
!523 = distinct !DILexicalBlock(scope: !512, file: !56, line: 1738, column: 17)
!524 = !DILocation(line: 1740, column: 19, scope: !523)
!525 = !DILocation(line: 1739, column: 13, scope: !523)
!526 = !DILocation(line: 1741, column: 31, scope: !523)
!527 = !DILocation(line: 1741, column: 13, scope: !523)
!528 = !DILocation(line: 1741, column: 17, scope: !523)
!529 = !DILocation(line: 1741, column: 23, scope: !523)
!530 = !DILocation(line: 1741, column: 29, scope: !523)
!531 = !DILocation(line: 1742, column: 13, scope: !523)
!532 = !DILocation(line: 1745, column: 7, scope: !446)
!533 = !DILocation(line: 1748, column: 8, scope: !534)
!534 = distinct !DILexicalBlock(scope: !237, file: !56, line: 1748, column: 8)
!535 = !DILocation(line: 1748, column: 12, scope: !534)
!536 = !DILocation(line: 1748, column: 17, scope: !534)
!537 = !DILocation(line: 1748, column: 8, scope: !237)
!538 = !DILocation(line: 1749, column: 12, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !56, line: 1748, column: 25)
!540 = !DILocation(line: 1749, column: 16, scope: !539)
!541 = !DILocation(line: 1749, column: 7, scope: !539)
!542 = !DILocation(line: 1750, column: 7, scope: !539)
!543 = !DILocation(line: 1750, column: 11, scope: !539)
!544 = !DILocation(line: 1750, column: 16, scope: !539)
!545 = !DILocation(line: 1751, column: 4, scope: !539)
!546 = !DILocation(line: 1756, column: 18, scope: !237)
!547 = !DILocation(line: 1756, column: 4, scope: !237)
!548 = !DILocation(line: 1756, column: 8, scope: !237)
!549 = !DILocation(line: 1756, column: 16, scope: !237)
!550 = !DILocation(line: 1757, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !237, file: !56, line: 1757, column: 8)
!552 = !DILocation(line: 1757, column: 12, scope: !551)
!553 = !DILocation(line: 1757, column: 20, scope: !551)
!554 = !DILocation(line: 1757, column: 8, scope: !237)
!555 = !DILocation(line: 1758, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !56, line: 1757, column: 28)
!557 = !DILocation(line: 1759, column: 1, scope: !556)
!558 = !DILocation(line: 1760, column: 7, scope: !556)
!559 = !DILocation(line: 1763, column: 32, scope: !560)
!560 = distinct !DILexicalBlock(scope: !237, file: !56, line: 1763, column: 8)
!561 = !DILocation(line: 1763, column: 9, scope: !560)
!562 = !DILocation(line: 1763, column: 8, scope: !237)
!563 = !DILocation(line: 1764, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !56, line: 1763, column: 37)
!565 = !DILocation(line: 1765, column: 1, scope: !564)
!566 = !DILocation(line: 1766, column: 7, scope: !564)
!567 = !DILocation(line: 1769, column: 4, scope: !237)
!568 = !DILocation(line: 1769, column: 8, scope: !237)
!569 = !DILocation(line: 1769, column: 17, scope: !237)
!570 = !DILocation(line: 1770, column: 4, scope: !237)
!571 = !DILocation(line: 1773, column: 14, scope: !237)
!572 = !DILocation(line: 1773, column: 4, scope: !237)
!573 = !DILocation(line: 1774, column: 4, scope: !237)
!574 = !DILocation(line: 1775, column: 1, scope: !237)
!575 = distinct !DISubprogram(name: "RpcInSend", scope: !56, file: !56, line: 1146, type: !576, isLocal: true, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!576 = !DISubroutineType(types: !577)
!577 = !{!74, !232, !68}
!578 = !DILocalVariable(name: "in", arg: 1, scope: !575, file: !56, line: 1146, type: !232)
!579 = !DILocation(line: 1146, column: 18, scope: !575)
!580 = !DILocalVariable(name: "flags", arg: 2, scope: !575, file: !56, line: 1147, type: !68)
!581 = !DILocation(line: 1147, column: 15, scope: !575)
!582 = !DILocalVariable(name: "status", scope: !575, file: !56, line: 1149, type: !74)
!583 = !DILocation(line: 1149, column: 9, scope: !575)
!584 = !DILocalVariable(name: "useBackdoor", scope: !575, file: !56, line: 1150, type: !74)
!585 = !DILocation(line: 1150, column: 9, scope: !575)
!586 = !DILocation(line: 1156, column: 8, scope: !587)
!587 = distinct !DILexicalBlock(scope: !575, file: !56, line: 1156, column: 8)
!588 = !DILocation(line: 1156, column: 12, scope: !587)
!589 = !DILocation(line: 1156, column: 17, scope: !587)
!590 = !DILocation(line: 1156, column: 8, scope: !575)
!591 = !DILocation(line: 1157, column: 19, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !56, line: 1156, column: 25)
!593 = !DILocation(line: 1158, column: 30, scope: !592)
!594 = !DILocation(line: 1158, column: 34, scope: !592)
!595 = !DILocation(line: 1158, column: 40, scope: !592)
!596 = !DILocation(line: 1158, column: 44, scope: !592)
!597 = !DILocation(line: 1158, column: 57, scope: !592)
!598 = !DILocation(line: 1158, column: 61, scope: !592)
!599 = !DILocation(line: 1159, column: 30, scope: !592)
!600 = !DILocation(line: 1158, column: 16, scope: !592)
!601 = !DILocation(line: 1158, column: 14, scope: !592)
!602 = !DILocation(line: 1160, column: 4, scope: !592)
!603 = !DILocation(line: 1163, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !575, file: !56, line: 1163, column: 8)
!605 = !DILocation(line: 1163, column: 8, scope: !575)
!606 = !DILocation(line: 1165, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !56, line: 1165, column: 11)
!608 = distinct !DILexicalBlock(scope: !604, file: !56, line: 1163, column: 21)
!609 = !DILocation(line: 1165, column: 15, scope: !607)
!610 = !DILocation(line: 1165, column: 11, scope: !608)
!611 = !DILocation(line: 1166, column: 50, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !56, line: 1165, column: 31)
!613 = !DILocation(line: 1166, column: 54, scope: !612)
!614 = !DILocation(line: 1166, column: 10, scope: !612)
!615 = !DILocation(line: 1167, column: 7, scope: !612)
!616 = !DILocation(line: 1168, column: 29, scope: !608)
!617 = !DILocation(line: 1168, column: 33, scope: !608)
!618 = !DILocation(line: 1168, column: 59, scope: !608)
!619 = !DILocation(line: 1168, column: 63, scope: !608)
!620 = !DILocation(line: 1169, column: 29, scope: !608)
!621 = !DILocation(line: 1169, column: 33, scope: !608)
!622 = !DILocation(line: 1168, column: 16, scope: !608)
!623 = !DILocation(line: 1168, column: 14, scope: !608)
!624 = !DILocation(line: 1170, column: 4, scope: !608)
!625 = !DILocation(line: 1172, column: 8, scope: !626)
!626 = distinct !DILexicalBlock(scope: !575, file: !56, line: 1172, column: 8)
!627 = !DILocation(line: 1172, column: 15, scope: !626)
!628 = !DILocation(line: 1172, column: 8, scope: !575)
!629 = !DILocation(line: 1173, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !56, line: 1172, column: 21)
!631 = !DILocation(line: 1174, column: 4, scope: !630)
!632 = !DILocation(line: 1176, column: 9, scope: !575)
!633 = !DILocation(line: 1176, column: 13, scope: !575)
!634 = !DILocation(line: 1176, column: 4, scope: !575)
!635 = !DILocation(line: 1177, column: 4, scope: !575)
!636 = !DILocation(line: 1177, column: 8, scope: !575)
!637 = !DILocation(line: 1177, column: 20, scope: !575)
!638 = !DILocation(line: 1178, column: 4, scope: !575)
!639 = !DILocation(line: 1178, column: 8, scope: !575)
!640 = !DILocation(line: 1178, column: 23, scope: !575)
!641 = !DILocation(line: 1179, column: 4, scope: !575)
!642 = !DILocation(line: 1179, column: 8, scope: !575)
!643 = !DILocation(line: 1179, column: 17, scope: !575)
!644 = !DILocation(line: 1181, column: 11, scope: !575)
!645 = !DILocation(line: 1181, column: 4, scope: !575)
!646 = distinct !DISubprogram(name: "RpcInCloseConn", scope: !56, file: !56, line: 538, type: !647, isLocal: true, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !54}
!649 = !DILocalVariable(name: "conn", arg: 1, scope: !646, file: !56, line: 538, type: !54)
!650 = !DILocation(line: 538, column: 26, scope: !646)
!651 = !DILocalVariable(name: "fd", scope: !646, file: !56, line: 540, type: !68)
!652 = !DILocation(line: 540, column: 8, scope: !646)
!653 = !DILocation(line: 540, column: 31, scope: !646)
!654 = !DILocation(line: 540, column: 37, scope: !646)
!655 = !DILocation(line: 540, column: 13, scope: !646)
!656 = !DILocation(line: 542, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !646, file: !56, line: 542, column: 8)
!658 = !DILocation(line: 542, column: 14, scope: !657)
!659 = !DILocation(line: 542, column: 17, scope: !657)
!660 = !DILocation(line: 542, column: 8, scope: !646)
!661 = !DILocation(line: 543, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !56, line: 542, column: 25)
!663 = !DILocation(line: 543, column: 13, scope: !662)
!664 = !DILocation(line: 543, column: 17, scope: !662)
!665 = !DILocation(line: 543, column: 22, scope: !662)
!666 = !DILocation(line: 544, column: 7, scope: !662)
!667 = !DILocation(line: 544, column: 13, scope: !662)
!668 = !DILocation(line: 544, column: 16, scope: !662)
!669 = !DILocation(line: 545, column: 4, scope: !662)
!670 = !DILocation(line: 547, column: 8, scope: !671)
!671 = distinct !DILexicalBlock(scope: !646, file: !56, line: 547, column: 8)
!672 = !DILocation(line: 547, column: 14, scope: !671)
!673 = !DILocation(line: 547, column: 27, scope: !671)
!674 = !DILocation(line: 547, column: 8, scope: !646)
!675 = !DILocation(line: 548, column: 62, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !56, line: 547, column: 32)
!677 = !DILocation(line: 548, column: 7, scope: !676)
!678 = !DILocation(line: 549, column: 7, scope: !676)
!679 = !DILocation(line: 549, column: 13, scope: !676)
!680 = !DILocation(line: 549, column: 22, scope: !676)
!681 = !DILocation(line: 550, column: 25, scope: !676)
!682 = !DILocation(line: 550, column: 7, scope: !676)
!683 = !DILocation(line: 551, column: 4, scope: !676)
!684 = !DILocation(line: 552, column: 55, scope: !685)
!685 = distinct !DILexicalBlock(scope: !671, file: !56, line: 551, column: 11)
!686 = !DILocation(line: 552, column: 7, scope: !685)
!687 = !DILocation(line: 553, column: 25, scope: !685)
!688 = !DILocation(line: 553, column: 31, scope: !685)
!689 = !DILocation(line: 553, column: 7, scope: !685)
!690 = !DILocation(line: 554, column: 12, scope: !685)
!691 = !DILocation(line: 554, column: 18, scope: !685)
!692 = !DILocation(line: 554, column: 7, scope: !685)
!693 = !DILocation(line: 555, column: 12, scope: !685)
!694 = !DILocation(line: 555, column: 7, scope: !685)
!695 = !DILocation(line: 557, column: 1, scope: !646)
!696 = distinct !DISubprogram(name: "RpcInConnSend", scope: !56, file: !56, line: 695, type: !697, isLocal: true, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!697 = !DISubroutineType(types: !698)
!698 = !{!74, !54, !184, !68, !68}
!699 = !DILocalVariable(name: "conn", arg: 1, scope: !696, file: !56, line: 695, type: !54)
!700 = !DILocation(line: 695, column: 25, scope: !696)
!701 = !DILocalVariable(name: "buf", arg: 2, scope: !696, file: !56, line: 696, type: !184)
!702 = !DILocation(line: 696, column: 27, scope: !696)
!703 = !DILocalVariable(name: "len", arg: 3, scope: !696, file: !56, line: 697, type: !68)
!704 = !DILocation(line: 697, column: 19, scope: !696)
!705 = !DILocalVariable(name: "flags", arg: 4, scope: !696, file: !56, line: 698, type: !68)
!706 = !DILocation(line: 698, column: 19, scope: !696)
!707 = !DILocalVariable(name: "res", scope: !696, file: !56, line: 700, type: !68)
!708 = !DILocation(line: 700, column: 8, scope: !696)
!709 = !DILocalVariable(name: "packetLen", scope: !696, file: !56, line: 701, type: !64)
!710 = !DILocation(line: 701, column: 10, scope: !696)
!711 = !DILocalVariable(name: "packetBuf", scope: !696, file: !56, line: 702, type: !70)
!712 = !DILocation(line: 702, column: 10, scope: !696)
!713 = !DILocalVariable(name: "fd", scope: !696, file: !56, line: 703, type: !68)
!714 = !DILocation(line: 703, column: 8, scope: !696)
!715 = !DILocation(line: 703, column: 31, scope: !696)
!716 = !DILocation(line: 703, column: 37, scope: !696)
!717 = !DILocation(line: 703, column: 13, scope: !696)
!718 = !DILocation(line: 706, column: 28, scope: !696)
!719 = !DILocation(line: 706, column: 34, scope: !696)
!720 = !DILocation(line: 706, column: 10, scope: !696)
!721 = !DILocation(line: 706, column: 42, scope: !696)
!722 = !DILocation(line: 705, column: 4, scope: !696)
!723 = !DILocation(line: 708, column: 27, scope: !724)
!724 = distinct !DILexicalBlock(scope: !696, file: !56, line: 708, column: 8)
!725 = !DILocation(line: 708, column: 31, scope: !724)
!726 = !DILocation(line: 708, column: 36, scope: !724)
!727 = !DILocation(line: 708, column: 41, scope: !724)
!728 = !DILocation(line: 708, column: 9, scope: !724)
!729 = !DILocation(line: 708, column: 8, scope: !696)
!730 = !DILocation(line: 709, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !724, file: !56, line: 708, column: 73)
!732 = !DILocation(line: 712, column: 27, scope: !696)
!733 = !DILocation(line: 712, column: 33, scope: !696)
!734 = !DILocation(line: 712, column: 40, scope: !696)
!735 = !DILocation(line: 712, column: 51, scope: !696)
!736 = !DILocation(line: 713, column: 48, scope: !696)
!737 = !DILocation(line: 712, column: 10, scope: !696)
!738 = !DILocation(line: 712, column: 8, scope: !696)
!739 = !DILocation(line: 714, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !696, file: !56, line: 714, column: 8)
!741 = !DILocation(line: 714, column: 12, scope: !740)
!742 = !DILocation(line: 714, column: 8, scope: !696)
!743 = !DILocation(line: 716, column: 31, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !56, line: 714, column: 18)
!745 = !DILocation(line: 716, column: 37, scope: !744)
!746 = !DILocation(line: 716, column: 13, scope: !744)
!747 = !DILocation(line: 716, column: 68, scope: !744)
!748 = !DILocation(line: 716, column: 45, scope: !749)
!749 = !DILexicalBlockFile(scope: !744, file: !56, discriminator: 1)
!750 = !DILocation(line: 715, column: 7, scope: !744)
!751 = !DILocation(line: 717, column: 12, scope: !744)
!752 = !DILocation(line: 717, column: 7, scope: !744)
!753 = !DILocation(line: 718, column: 7, scope: !744)
!754 = !DILocation(line: 720, column: 29, scope: !755)
!755 = distinct !DILexicalBlock(scope: !740, file: !56, line: 719, column: 11)
!756 = !DILocation(line: 720, column: 7, scope: !755)
!757 = !DILocation(line: 720, column: 13, scope: !755)
!758 = !DILocation(line: 720, column: 26, scope: !755)
!759 = !DILocation(line: 721, column: 7, scope: !755)
!760 = !DILocation(line: 723, column: 1, scope: !696)
!761 = distinct !DISubprogram(name: "RpcInPackSendData", scope: !56, file: !56, line: 619, type: !762, isLocal: true, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!762 = !DISubroutineType(types: !763)
!763 = !{!74, !68, !184, !68, !68, !764, !231}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!765 = !DILocalVariable(name: "fd", arg: 1, scope: !761, file: !56, line: 619, type: !68)
!766 = !DILocation(line: 619, column: 23, scope: !761)
!767 = !DILocalVariable(name: "buf", arg: 2, scope: !761, file: !56, line: 620, type: !184)
!768 = !DILocation(line: 620, column: 31, scope: !761)
!769 = !DILocalVariable(name: "len", arg: 3, scope: !761, file: !56, line: 621, type: !68)
!770 = !DILocation(line: 621, column: 23, scope: !761)
!771 = !DILocalVariable(name: "flags", arg: 4, scope: !761, file: !56, line: 622, type: !68)
!772 = !DILocation(line: 622, column: 23, scope: !761)
!773 = !DILocalVariable(name: "serBuf", arg: 5, scope: !761, file: !56, line: 623, type: !764)
!774 = !DILocation(line: 623, column: 26, scope: !761)
!775 = !DILocalVariable(name: "serBufLen", arg: 6, scope: !761, file: !56, line: 624, type: !231)
!776 = !DILocation(line: 624, column: 26, scope: !761)
!777 = !DILocalVariable(name: "map", scope: !761, file: !56, line: 626, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataMap", file: !4, line: 77, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 74, size: 128, align: 64, elements: !780)
!780 = !{!781, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !779, file: !4, line: 75, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashMap", file: !784, line: 45, baseType: !785)
!784 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashMap.h", directory: "/home/lichi/Desktop/open-vm-tools/line844")
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashMap", file: !784, line: 45, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !779, file: !4, line: 76, baseType: !246, size: 64, align: 64, offset: 64)
!787 = !DILocation(line: 626, column: 12, scope: !761)
!788 = !DILocalVariable(name: "res", scope: !761, file: !56, line: 627, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorCode", file: !4, line: 60, baseType: !3)
!790 = !DILocation(line: 627, column: 14, scope: !761)
!791 = !DILocalVariable(name: "newBuf", scope: !761, file: !56, line: 628, type: !70)
!792 = !DILocation(line: 628, column: 10, scope: !761)
!793 = !DILocalVariable(name: "mapCreated", scope: !761, file: !56, line: 629, type: !115)
!794 = !DILocation(line: 629, column: 13, scope: !761)
!795 = !DILocalVariable(name: "pktType", scope: !761, file: !56, line: 630, type: !80)
!796 = !DILocation(line: 630, column: 10, scope: !761)
!797 = !DILocation(line: 630, column: 21, scope: !761)
!798 = !DILocation(line: 630, column: 27, scope: !761)
!799 = !DILocation(line: 630, column: 20, scope: !761)
!800 = !DILocation(line: 633, column: 10, scope: !761)
!801 = !DILocation(line: 633, column: 8, scope: !761)
!802 = !DILocation(line: 634, column: 8, scope: !803)
!803 = distinct !DILexicalBlock(scope: !761, file: !56, line: 634, column: 8)
!804 = !DILocation(line: 634, column: 12, scope: !803)
!805 = !DILocation(line: 634, column: 8, scope: !761)
!806 = !DILocation(line: 635, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !56, line: 634, column: 30)
!808 = !DILocation(line: 638, column: 15, scope: !761)
!809 = !DILocation(line: 640, column: 27, scope: !761)
!810 = !DILocation(line: 639, column: 10, scope: !761)
!811 = !DILocation(line: 639, column: 8, scope: !761)
!812 = !DILocation(line: 641, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !761, file: !56, line: 641, column: 8)
!814 = !DILocation(line: 641, column: 12, scope: !813)
!815 = !DILocation(line: 641, column: 8, scope: !761)
!816 = !DILocation(line: 642, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !56, line: 641, column: 30)
!818 = !DILocation(line: 645, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !761, file: !56, line: 645, column: 8)
!820 = !DILocation(line: 645, column: 12, scope: !819)
!821 = !DILocation(line: 645, column: 19, scope: !819)
!822 = !DILocation(line: 645, column: 22, scope: !823)
!823 = !DILexicalBlockFile(scope: !819, file: !56, discriminator: 1)
!824 = !DILocation(line: 645, column: 26, scope: !823)
!825 = !DILocation(line: 645, column: 8, scope: !823)
!826 = !DILocation(line: 646, column: 23, scope: !827)
!827 = distinct !DILexicalBlock(scope: !819, file: !56, line: 645, column: 31)
!828 = !DILocation(line: 646, column: 16, scope: !827)
!829 = !DILocation(line: 646, column: 14, scope: !827)
!830 = !DILocation(line: 647, column: 11, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !56, line: 647, column: 11)
!832 = !DILocation(line: 647, column: 18, scope: !831)
!833 = !DILocation(line: 647, column: 11, scope: !827)
!834 = !DILocation(line: 648, column: 68, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !56, line: 647, column: 26)
!836 = !DILocation(line: 648, column: 10, scope: !835)
!837 = !DILocation(line: 649, column: 10, scope: !835)
!838 = !DILocation(line: 651, column: 14, scope: !827)
!839 = !DILocation(line: 651, column: 22, scope: !827)
!840 = !DILocation(line: 651, column: 27, scope: !827)
!841 = !DILocation(line: 651, column: 7, scope: !827)
!842 = !DILocation(line: 652, column: 64, scope: !827)
!843 = !DILocation(line: 653, column: 31, scope: !827)
!844 = !DILocation(line: 652, column: 13, scope: !827)
!845 = !DILocation(line: 652, column: 11, scope: !827)
!846 = !DILocation(line: 654, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !827, file: !56, line: 654, column: 11)
!848 = !DILocation(line: 654, column: 15, scope: !847)
!849 = !DILocation(line: 654, column: 11, scope: !827)
!850 = !DILocation(line: 655, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !56, line: 654, column: 33)
!852 = !DILocation(line: 655, column: 10, scope: !851)
!853 = !DILocation(line: 656, column: 10, scope: !851)
!854 = !DILocation(line: 658, column: 4, scope: !827)
!855 = !DILocation(line: 660, column: 34, scope: !761)
!856 = !DILocation(line: 660, column: 42, scope: !761)
!857 = !DILocation(line: 660, column: 10, scope: !761)
!858 = !DILocation(line: 660, column: 8, scope: !761)
!859 = !DILocation(line: 661, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !761, file: !56, line: 661, column: 8)
!861 = !DILocation(line: 661, column: 12, scope: !860)
!862 = !DILocation(line: 661, column: 8, scope: !761)
!863 = !DILocation(line: 662, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !56, line: 661, column: 30)
!865 = !DILocation(line: 665, column: 4, scope: !761)
!866 = !DILocation(line: 666, column: 4, scope: !761)
!867 = !DILocation(line: 669, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !761, file: !56, line: 669, column: 8)
!869 = !DILocation(line: 669, column: 8, scope: !761)
!870 = !DILocation(line: 670, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !56, line: 669, column: 20)
!872 = !DILocation(line: 671, column: 4, scope: !871)
!873 = !DILocation(line: 672, column: 61, scope: !761)
!874 = !DILocation(line: 672, column: 4, scope: !761)
!875 = !DILocation(line: 673, column: 4, scope: !761)
!876 = !DILocation(line: 674, column: 1, scope: !761)
!877 = distinct !DISubprogram(name: "RpcInConnSendDoneCb", scope: !56, file: !56, line: 577, type: !878, isLocal: true, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !51, !68, !60, !51}
!880 = !DILocalVariable(name: "buf", arg: 1, scope: !877, file: !56, line: 577, type: !51)
!881 = !DILocation(line: 577, column: 27, scope: !877)
!882 = !DILocalVariable(name: "len", arg: 2, scope: !877, file: !56, line: 578, type: !68)
!883 = !DILocation(line: 578, column: 25, scope: !877)
!884 = !DILocalVariable(name: "asock", arg: 3, scope: !877, file: !56, line: 579, type: !60)
!885 = !DILocation(line: 579, column: 34, scope: !877)
!886 = !DILocalVariable(name: "clientData", arg: 4, scope: !877, file: !56, line: 580, type: !51)
!887 = !DILocation(line: 580, column: 27, scope: !877)
!888 = !DILocalVariable(name: "conn", scope: !877, file: !56, line: 582, type: !54)
!889 = !DILocation(line: 582, column: 14, scope: !877)
!890 = !DILocation(line: 582, column: 33, scope: !877)
!891 = !DILocation(line: 582, column: 21, scope: !877)
!892 = !DILocation(line: 584, column: 9, scope: !877)
!893 = !DILocation(line: 584, column: 4, scope: !877)
!894 = !DILocation(line: 586, column: 29, scope: !895)
!895 = distinct !DILexicalBlock(scope: !877, file: !56, line: 586, column: 8)
!896 = !DILocation(line: 586, column: 8, scope: !895)
!897 = !DILocation(line: 586, column: 36, scope: !895)
!898 = !DILocation(line: 586, column: 8, scope: !877)
!899 = !DILocation(line: 588, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !56, line: 586, column: 58)
!901 = !DILocation(line: 591, column: 26, scope: !877)
!902 = !DILocation(line: 591, column: 4, scope: !877)
!903 = !DILocation(line: 591, column: 10, scope: !877)
!904 = !DILocation(line: 591, column: 23, scope: !877)
!905 = !DILocation(line: 594, column: 8, scope: !906)
!906 = distinct !DILexicalBlock(scope: !877, file: !56, line: 594, column: 8)
!907 = !DILocation(line: 594, column: 14, scope: !906)
!908 = !DILocation(line: 594, column: 27, scope: !906)
!909 = !DILocation(line: 594, column: 32, scope: !906)
!910 = !DILocation(line: 594, column: 35, scope: !911)
!911 = !DILexicalBlockFile(scope: !906, file: !56, discriminator: 1)
!912 = !DILocation(line: 594, column: 41, scope: !911)
!913 = !DILocation(line: 594, column: 8, scope: !911)
!914 = !DILocation(line: 596, column: 31, scope: !915)
!915 = distinct !DILexicalBlock(scope: !906, file: !56, line: 594, column: 51)
!916 = !DILocation(line: 596, column: 37, scope: !915)
!917 = !DILocation(line: 596, column: 13, scope: !915)
!918 = !DILocation(line: 595, column: 7, scope: !915)
!919 = !DILocation(line: 597, column: 22, scope: !915)
!920 = !DILocation(line: 597, column: 7, scope: !915)
!921 = !DILocation(line: 598, column: 4, scope: !915)
!922 = !DILocation(line: 599, column: 1, scope: !877)
!923 = distinct !DISubprogram(name: "RpcInConnStopRecv", scope: !56, file: !56, line: 507, type: !647, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!924 = !DILocalVariable(name: "conn", arg: 1, scope: !923, file: !56, line: 507, type: !54)
!925 = !DILocation(line: 507, column: 29, scope: !923)
!926 = !DILocation(line: 509, column: 10, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !56, line: 509, column: 8)
!928 = !DILocation(line: 509, column: 16, scope: !927)
!929 = !DILocation(line: 509, column: 9, scope: !927)
!930 = !DILocation(line: 509, column: 8, scope: !923)
!931 = !DILocalVariable(name: "res", scope: !932, file: !56, line: 510, type: !68)
!932 = distinct !DILexicalBlock(scope: !927, file: !56, line: 509, column: 30)
!933 = !DILocation(line: 510, column: 11, scope: !932)
!934 = !DILocation(line: 510, column: 42, scope: !932)
!935 = !DILocation(line: 510, column: 48, scope: !932)
!936 = !DILocation(line: 510, column: 17, scope: !932)
!937 = !DILocation(line: 511, column: 11, scope: !938)
!938 = distinct !DILexicalBlock(scope: !932, file: !56, line: 511, column: 11)
!939 = !DILocation(line: 511, column: 15, scope: !938)
!940 = !DILocation(line: 511, column: 11, scope: !932)
!941 = !DILocation(line: 514, column: 34, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !56, line: 511, column: 21)
!943 = !DILocation(line: 514, column: 40, scope: !942)
!944 = !DILocation(line: 514, column: 16, scope: !942)
!945 = !DILocation(line: 513, column: 10, scope: !942)
!946 = !DILocation(line: 515, column: 7, scope: !942)
!947 = !DILocation(line: 516, column: 7, scope: !932)
!948 = !DILocation(line: 516, column: 13, scope: !932)
!949 = !DILocation(line: 516, column: 25, scope: !932)
!950 = !DILocation(line: 517, column: 4, scope: !932)
!951 = !DILocation(line: 518, column: 1, scope: !923)
!952 = distinct !DISubprogram(name: "RpcInConnectDone", scope: !56, file: !56, line: 1100, type: !953, isLocal: true, isDefinition: true, scopeLine: 1102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !60, !51}
!955 = !DILocalVariable(name: "asock", arg: 1, scope: !952, file: !56, line: 1100, type: !60)
!956 = !DILocation(line: 1100, column: 31, scope: !952)
!957 = !DILocalVariable(name: "clientData", arg: 2, scope: !952, file: !56, line: 1101, type: !51)
!958 = !DILocation(line: 1101, column: 24, scope: !952)
!959 = !DILocalVariable(name: "conn", scope: !952, file: !56, line: 1103, type: !54)
!960 = !DILocation(line: 1103, column: 14, scope: !952)
!961 = !DILocation(line: 1103, column: 33, scope: !952)
!962 = !DILocation(line: 1103, column: 21, scope: !952)
!963 = !DILocalVariable(name: "in", scope: !952, file: !56, line: 1104, type: !232)
!964 = !DILocation(line: 1104, column: 11, scope: !952)
!965 = !DILocation(line: 1104, column: 16, scope: !952)
!966 = !DILocation(line: 1104, column: 22, scope: !952)
!967 = !DILocation(line: 1106, column: 29, scope: !968)
!968 = distinct !DILexicalBlock(scope: !952, file: !56, line: 1106, column: 8)
!969 = !DILocation(line: 1106, column: 8, scope: !968)
!970 = !DILocation(line: 1106, column: 36, scope: !968)
!971 = !DILocation(line: 1106, column: 8, scope: !952)
!972 = !DILocation(line: 1107, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !56, line: 1106, column: 61)
!974 = !DILocation(line: 1110, column: 45, scope: !975)
!975 = distinct !DILexicalBlock(scope: !952, file: !56, line: 1110, column: 8)
!976 = !DILocation(line: 1110, column: 9, scope: !975)
!977 = !DILocation(line: 1110, column: 8, scope: !952)
!978 = !DILocation(line: 1112, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !56, line: 1111, column: 59)
!980 = !DILocation(line: 1115, column: 4, scope: !952)
!981 = !DILocation(line: 1115, column: 10, scope: !952)
!982 = !DILocation(line: 1115, column: 20, scope: !952)
!983 = !DILocation(line: 1116, column: 24, scope: !952)
!984 = !DILocation(line: 1116, column: 4, scope: !952)
!985 = !DILocation(line: 1117, column: 4, scope: !952)
!986 = !DILocation(line: 1120, column: 4, scope: !952)
!987 = !DILocation(line: 1121, column: 19, scope: !952)
!988 = !DILocation(line: 1121, column: 4, scope: !952)
!989 = !DILocation(line: 1122, column: 21, scope: !952)
!990 = !DILocation(line: 1122, column: 4, scope: !952)
!991 = !DILocation(line: 1123, column: 1, scope: !952)
!992 = !DILocation(line: 1123, column: 1, scope: !993)
!993 = !DILexicalBlockFile(scope: !952, file: !56, discriminator: 1)
!994 = distinct !DISubprogram(name: "RpcInConnErrorHandler", scope: !56, file: !56, line: 1062, type: !995, isLocal: true, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !68, !60, !51}
!997 = !DILocalVariable(name: "err", arg: 1, scope: !994, file: !56, line: 1062, type: !68)
!998 = !DILocation(line: 1062, column: 27, scope: !994)
!999 = !DILocalVariable(name: "asock", arg: 2, scope: !994, file: !56, line: 1063, type: !60)
!1000 = !DILocation(line: 1063, column: 36, scope: !994)
!1001 = !DILocalVariable(name: "clientData", arg: 3, scope: !994, file: !56, line: 1064, type: !51)
!1002 = !DILocation(line: 1064, column: 29, scope: !994)
!1003 = !DILocalVariable(name: "conn", scope: !994, file: !56, line: 1066, type: !54)
!1004 = !DILocation(line: 1066, column: 14, scope: !994)
!1005 = !DILocation(line: 1066, column: 33, scope: !994)
!1006 = !DILocation(line: 1066, column: 21, scope: !994)
!1007 = !DILocalVariable(name: "errmsg", scope: !994, file: !56, line: 1067, type: !184)
!1008 = !DILocation(line: 1067, column: 16, scope: !994)
!1009 = !DILocalVariable(name: "in", scope: !994, file: !56, line: 1068, type: !232)
!1010 = !DILocation(line: 1068, column: 11, scope: !994)
!1011 = !DILocation(line: 1068, column: 16, scope: !994)
!1012 = !DILocation(line: 1068, column: 22, scope: !994)
!1013 = !DILocation(line: 1071, column: 28, scope: !994)
!1014 = !DILocation(line: 1071, column: 10, scope: !994)
!1015 = !DILocation(line: 1071, column: 59, scope: !994)
!1016 = !DILocation(line: 1071, column: 36, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !994, file: !56, discriminator: 1)
!1018 = !DILocation(line: 1070, column: 4, scope: !994)
!1019 = !DILocation(line: 1073, column: 8, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !994, file: !56, line: 1073, column: 8)
!1021 = !DILocation(line: 1073, column: 14, scope: !1020)
!1022 = !DILocation(line: 1073, column: 8, scope: !994)
!1023 = !DILocation(line: 1074, column: 25, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !56, line: 1073, column: 25)
!1025 = !DILocation(line: 1074, column: 31, scope: !1024)
!1026 = !DILocation(line: 1074, column: 35, scope: !1024)
!1027 = !DILocation(line: 1074, column: 7, scope: !1024)
!1028 = !DILocation(line: 1075, column: 4, scope: !1024)
!1029 = !DILocation(line: 1076, column: 22, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1020, file: !56, line: 1075, column: 11)
!1031 = !DILocation(line: 1076, column: 7, scope: !1030)
!1032 = !DILocation(line: 1077, column: 7, scope: !1030)
!1033 = !DILocation(line: 1078, column: 24, scope: !1030)
!1034 = !DILocation(line: 1078, column: 7, scope: !1030)
!1035 = !DILocation(line: 1080, column: 1, scope: !994)
!1036 = distinct !DISubprogram(name: "RpcInScheduleRecvEvent", scope: !56, file: !56, line: 1652, type: !1037, isLocal: true, isDefinition: true, scopeLine: 1653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!74, !232}
!1039 = !DILocalVariable(name: "in", arg: 1, scope: !1036, file: !56, line: 1652, type: !232)
!1040 = !DILocation(line: 1652, column: 31, scope: !1036)
!1041 = !DILocation(line: 1655, column: 8, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !56, line: 1655, column: 8)
!1043 = !DILocation(line: 1655, column: 12, scope: !1042)
!1044 = !DILocation(line: 1655, column: 22, scope: !1042)
!1045 = !DILocation(line: 1655, column: 8, scope: !1036)
!1046 = !DILocation(line: 1656, column: 22, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !56, line: 1655, column: 30)
!1048 = !DILocation(line: 1656, column: 26, scope: !1047)
!1049 = !DILocation(line: 1656, column: 7, scope: !1047)
!1050 = !DILocation(line: 1657, column: 4, scope: !1047)
!1051 = !DILocation(line: 1658, column: 40, scope: !1036)
!1052 = !DILocation(line: 1658, column: 44, scope: !1036)
!1053 = !DILocation(line: 1658, column: 50, scope: !1036)
!1054 = !DILocation(line: 1658, column: 20, scope: !1036)
!1055 = !DILocation(line: 1658, column: 4, scope: !1036)
!1056 = !DILocation(line: 1658, column: 8, scope: !1036)
!1057 = !DILocation(line: 1658, column: 18, scope: !1036)
!1058 = !DILocation(line: 1659, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1036, file: !56, line: 1659, column: 8)
!1060 = !DILocation(line: 1659, column: 12, scope: !1059)
!1061 = !DILocation(line: 1659, column: 22, scope: !1059)
!1062 = !DILocation(line: 1659, column: 8, scope: !1036)
!1063 = !DILocation(line: 1660, column: 29, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !56, line: 1659, column: 30)
!1065 = !DILocation(line: 1660, column: 33, scope: !1064)
!1066 = !DILocation(line: 1660, column: 55, scope: !1064)
!1067 = !DILocation(line: 1660, column: 7, scope: !1064)
!1068 = !DILocation(line: 1661, column: 23, scope: !1064)
!1069 = !DILocation(line: 1661, column: 27, scope: !1064)
!1070 = !DILocation(line: 1661, column: 38, scope: !1064)
!1071 = !DILocation(line: 1661, column: 42, scope: !1064)
!1072 = !DILocation(line: 1661, column: 7, scope: !1064)
!1073 = !DILocation(line: 1662, column: 4, scope: !1064)
!1074 = !DILocation(line: 1666, column: 11, scope: !1036)
!1075 = !DILocation(line: 1666, column: 15, scope: !1036)
!1076 = !DILocation(line: 1666, column: 25, scope: !1036)
!1077 = !DILocation(line: 1666, column: 4, scope: !1036)
!1078 = distinct !DISubprogram(name: "RpcInConnRecvHeader", scope: !56, file: !56, line: 978, type: !647, isLocal: true, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1079 = !DILocalVariable(name: "conn", arg: 1, scope: !1078, file: !56, line: 978, type: !54)
!1080 = !DILocation(line: 978, column: 31, scope: !1078)
!1081 = !DILocalVariable(name: "res", scope: !1078, file: !56, line: 980, type: !68)
!1082 = !DILocation(line: 980, column: 8, scope: !1078)
!1083 = !DILocation(line: 981, column: 27, scope: !1078)
!1084 = !DILocation(line: 981, column: 33, scope: !1078)
!1085 = !DILocation(line: 981, column: 41, scope: !1078)
!1086 = !DILocation(line: 981, column: 47, scope: !1078)
!1087 = !DILocation(line: 981, column: 40, scope: !1078)
!1088 = !DILocation(line: 983, column: 46, scope: !1078)
!1089 = !DILocation(line: 981, column: 10, scope: !1078)
!1090 = !DILocation(line: 981, column: 8, scope: !1078)
!1091 = !DILocation(line: 985, column: 24, scope: !1078)
!1092 = !DILocation(line: 985, column: 28, scope: !1078)
!1093 = !DILocation(line: 985, column: 4, scope: !1078)
!1094 = !DILocation(line: 985, column: 10, scope: !1078)
!1095 = !DILocation(line: 985, column: 22, scope: !1078)
!1096 = !DILocation(line: 986, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1078, file: !56, line: 986, column: 8)
!1098 = !DILocation(line: 986, column: 12, scope: !1097)
!1099 = !DILocation(line: 986, column: 8, scope: !1078)
!1100 = !DILocation(line: 988, column: 31, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !56, line: 986, column: 18)
!1102 = !DILocation(line: 988, column: 37, scope: !1101)
!1103 = !DILocation(line: 988, column: 13, scope: !1101)
!1104 = !DILocation(line: 987, column: 7, scope: !1101)
!1105 = !DILocation(line: 989, column: 25, scope: !1101)
!1106 = !DILocation(line: 989, column: 31, scope: !1101)
!1107 = !DILocation(line: 989, column: 7, scope: !1101)
!1108 = !DILocation(line: 990, column: 4, scope: !1101)
!1109 = !DILocation(line: 991, column: 1, scope: !1078)
!1110 = distinct !DISubprogram(name: "RpcInConnRecvedCb", scope: !56, file: !56, line: 905, type: !878, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1111 = !DILocalVariable(name: "buf", arg: 1, scope: !1110, file: !56, line: 905, type: !51)
!1112 = !DILocation(line: 905, column: 25, scope: !1110)
!1113 = !DILocalVariable(name: "len", arg: 2, scope: !1110, file: !56, line: 906, type: !68)
!1114 = !DILocation(line: 906, column: 23, scope: !1110)
!1115 = !DILocalVariable(name: "asock", arg: 3, scope: !1110, file: !56, line: 907, type: !60)
!1116 = !DILocation(line: 907, column: 32, scope: !1110)
!1117 = !DILocalVariable(name: "clientData", arg: 4, scope: !1110, file: !56, line: 908, type: !51)
!1118 = !DILocation(line: 908, column: 25, scope: !1110)
!1119 = !DILocalVariable(name: "conn", scope: !1110, file: !56, line: 910, type: !54)
!1120 = !DILocation(line: 910, column: 14, scope: !1110)
!1121 = !DILocation(line: 910, column: 33, scope: !1110)
!1122 = !DILocation(line: 910, column: 21, scope: !1110)
!1123 = !DILocalVariable(name: "errmsg", scope: !1110, file: !56, line: 911, type: !184)
!1124 = !DILocation(line: 911, column: 16, scope: !1110)
!1125 = !DILocation(line: 915, column: 8, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1110, file: !56, line: 915, column: 8)
!1127 = !DILocation(line: 915, column: 16, scope: !1126)
!1128 = !DILocation(line: 915, column: 22, scope: !1126)
!1129 = !DILocation(line: 915, column: 15, scope: !1126)
!1130 = !DILocation(line: 915, column: 12, scope: !1126)
!1131 = !DILocation(line: 915, column: 8, scope: !1110)
!1132 = !DILocation(line: 917, column: 31, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1126, file: !56, line: 915, column: 33)
!1134 = !DILocation(line: 917, column: 37, scope: !1133)
!1135 = !DILocation(line: 917, column: 25, scope: !1133)
!1136 = !DILocation(line: 917, column: 7, scope: !1133)
!1137 = !DILocation(line: 917, column: 13, scope: !1133)
!1138 = !DILocation(line: 917, column: 23, scope: !1133)
!1139 = !DILocation(line: 919, column: 13, scope: !1133)
!1140 = !DILocation(line: 919, column: 19, scope: !1133)
!1141 = !DILocation(line: 919, column: 48, scope: !1133)
!1142 = !DILocation(line: 919, column: 54, scope: !1133)
!1143 = !DILocation(line: 919, column: 30, scope: !1133)
!1144 = !DILocation(line: 918, column: 7, scope: !1133)
!1145 = !DILocation(line: 920, column: 32, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1133, file: !56, line: 920, column: 11)
!1147 = !DILocation(line: 920, column: 12, scope: !1146)
!1148 = !DILocation(line: 920, column: 11, scope: !1133)
!1149 = !DILocation(line: 921, column: 28, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !56, line: 920, column: 48)
!1151 = !DILocation(line: 921, column: 34, scope: !1150)
!1152 = !DILocation(line: 921, column: 38, scope: !1150)
!1153 = !DILocation(line: 921, column: 10, scope: !1150)
!1154 = !DILocation(line: 922, column: 7, scope: !1150)
!1155 = !DILocation(line: 923, column: 4, scope: !1133)
!1156 = !DILocalVariable(name: "payload", scope: !1157, file: !56, line: 924, type: !70)
!1157 = distinct !DILexicalBlock(scope: !1126, file: !56, line: 923, column: 11)
!1158 = !DILocation(line: 924, column: 13, scope: !1157)
!1159 = !DILocalVariable(name: "payloadLen", scope: !1157, file: !56, line: 925, type: !64)
!1160 = !DILocation(line: 925, column: 13, scope: !1157)
!1161 = !DILocation(line: 930, column: 30, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !56, line: 930, column: 11)
!1163 = !DILocation(line: 930, column: 12, scope: !1162)
!1164 = !DILocation(line: 930, column: 11, scope: !1157)
!1165 = !DILocation(line: 931, column: 17, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !56, line: 930, column: 60)
!1167 = !DILocation(line: 932, column: 28, scope: !1166)
!1168 = !DILocation(line: 932, column: 34, scope: !1166)
!1169 = !DILocation(line: 932, column: 38, scope: !1166)
!1170 = !DILocation(line: 932, column: 10, scope: !1166)
!1171 = !DILocation(line: 933, column: 10, scope: !1166)
!1172 = !DILocation(line: 937, column: 31, scope: !1157)
!1173 = !DILocation(line: 937, column: 37, scope: !1157)
!1174 = !DILocation(line: 937, column: 13, scope: !1157)
!1175 = !DILocation(line: 937, column: 45, scope: !1157)
!1176 = !DILocation(line: 936, column: 7, scope: !1157)
!1177 = !DILocation(line: 939, column: 24, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1157, file: !56, line: 939, column: 11)
!1179 = !DILocation(line: 939, column: 30, scope: !1178)
!1180 = !DILocation(line: 939, column: 34, scope: !1178)
!1181 = !DILocation(line: 939, column: 43, scope: !1178)
!1182 = !DILocation(line: 939, column: 11, scope: !1178)
!1183 = !DILocation(line: 939, column: 11, scope: !1157)
!1184 = !DILocation(line: 940, column: 10, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1178, file: !56, line: 939, column: 65)
!1186 = !DILocation(line: 940, column: 16, scope: !1185)
!1187 = !DILocation(line: 940, column: 20, scope: !1185)
!1188 = !DILocation(line: 940, column: 29, scope: !1185)
!1189 = !DILocation(line: 941, column: 24, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !56, line: 941, column: 14)
!1191 = !DILocation(line: 941, column: 30, scope: !1190)
!1192 = !DILocation(line: 941, column: 14, scope: !1190)
!1193 = !DILocation(line: 941, column: 14, scope: !1185)
!1194 = !DILocation(line: 942, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !56, line: 942, column: 17)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !56, line: 941, column: 38)
!1197 = !DILocation(line: 942, column: 23, scope: !1195)
!1198 = !DILocation(line: 942, column: 27, scope: !1195)
!1199 = !DILocation(line: 942, column: 40, scope: !1195)
!1200 = !DILocation(line: 942, column: 17, scope: !1196)
!1201 = !DILocation(line: 945, column: 47, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1195, file: !56, line: 942, column: 48)
!1203 = !DILocation(line: 945, column: 53, scope: !1202)
!1204 = !DILocation(line: 945, column: 16, scope: !1202)
!1205 = !DILocation(line: 946, column: 13, scope: !1202)
!1206 = !DILocation(line: 947, column: 33, scope: !1196)
!1207 = !DILocation(line: 947, column: 13, scope: !1196)
!1208 = !DILocation(line: 948, column: 18, scope: !1196)
!1209 = !DILocation(line: 948, column: 13, scope: !1196)
!1210 = !DILocation(line: 949, column: 13, scope: !1196)
!1211 = !DILocation(line: 951, column: 20, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1190, file: !56, line: 950, column: 17)
!1213 = !DILocation(line: 953, column: 7, scope: !1185)
!1214 = !DILocation(line: 955, column: 25, scope: !1157)
!1215 = !DILocation(line: 955, column: 31, scope: !1157)
!1216 = !DILocation(line: 955, column: 35, scope: !1157)
!1217 = !DILocation(line: 955, column: 7, scope: !1157)
!1218 = !DILocation(line: 956, column: 12, scope: !1157)
!1219 = !DILocation(line: 956, column: 7, scope: !1157)
!1220 = !DILocation(line: 958, column: 1, scope: !1110)
!1221 = distinct !DISubprogram(name: "RpcInCloseChannel", scope: !56, file: !56, line: 743, type: !1222, isLocal: true, isDefinition: true, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !232, !184}
!1224 = !DILocalVariable(name: "in", arg: 1, scope: !1221, file: !56, line: 743, type: !232)
!1225 = !DILocation(line: 743, column: 26, scope: !1221)
!1226 = !DILocalVariable(name: "errmsg", arg: 2, scope: !1221, file: !56, line: 744, type: !184)
!1227 = !DILocation(line: 744, column: 31, scope: !1221)
!1228 = !DILocation(line: 747, column: 6, scope: !1221)
!1229 = !DILocation(line: 747, column: 10, scope: !1221)
!1230 = !DILocation(line: 747, column: 21, scope: !1221)
!1231 = !DILocation(line: 747, column: 25, scope: !1221)
!1232 = !DILocation(line: 747, column: 36, scope: !1221)
!1233 = !DILocation(line: 747, column: 4, scope: !1221)
!1234 = !DILocation(line: 748, column: 14, scope: !1221)
!1235 = !DILocation(line: 748, column: 4, scope: !1221)
!1236 = !DILocation(line: 749, column: 4, scope: !1221)
!1237 = !DILocation(line: 749, column: 8, scope: !1221)
!1238 = !DILocation(line: 749, column: 19, scope: !1221)
!1239 = !DILocation(line: 750, column: 1, scope: !1221)
!1240 = distinct !DISubprogram(name: "RpcInConnRecvPacket", scope: !56, file: !56, line: 1011, type: !1241, isLocal: true, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!74, !54, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!1244 = !DILocalVariable(name: "conn", arg: 1, scope: !1240, file: !56, line: 1011, type: !54)
!1245 = !DILocation(line: 1011, column: 31, scope: !1240)
!1246 = !DILocalVariable(name: "errmsg", arg: 2, scope: !1240, file: !56, line: 1012, type: !1243)
!1247 = !DILocation(line: 1012, column: 34, scope: !1240)
!1248 = !DILocalVariable(name: "res", scope: !1240, file: !56, line: 1014, type: !68)
!1249 = !DILocation(line: 1014, column: 8, scope: !1240)
!1250 = !DILocalVariable(name: "pktLen", scope: !1240, file: !56, line: 1015, type: !64)
!1251 = !DILocation(line: 1015, column: 10, scope: !1240)
!1252 = !DILocation(line: 1015, column: 19, scope: !1240)
!1253 = !DILocation(line: 1015, column: 25, scope: !1240)
!1254 = !DILocalVariable(name: "fullPktLen", scope: !1240, file: !56, line: 1016, type: !68)
!1255 = !DILocation(line: 1016, column: 8, scope: !1240)
!1256 = !DILocation(line: 1016, column: 21, scope: !1240)
!1257 = !DILocation(line: 1016, column: 28, scope: !1240)
!1258 = !DILocation(line: 1018, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1240, file: !56, line: 1018, column: 8)
!1260 = !DILocation(line: 1018, column: 14, scope: !1259)
!1261 = !DILocation(line: 1018, column: 22, scope: !1259)
!1262 = !DILocation(line: 1018, column: 29, scope: !1259)
!1263 = !DILocation(line: 1018, column: 32, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1259, file: !56, discriminator: 1)
!1265 = !DILocation(line: 1018, column: 38, scope: !1264)
!1266 = !DILocation(line: 1018, column: 51, scope: !1264)
!1267 = !DILocation(line: 1018, column: 49, scope: !1264)
!1268 = !DILocation(line: 1018, column: 8, scope: !1264)
!1269 = !DILocation(line: 1020, column: 26, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1259, file: !56, line: 1018, column: 63)
!1271 = !DILocation(line: 1020, column: 7, scope: !1270)
!1272 = !DILocation(line: 1020, column: 13, scope: !1270)
!1273 = !DILocation(line: 1020, column: 24, scope: !1270)
!1274 = !DILocation(line: 1021, column: 12, scope: !1270)
!1275 = !DILocation(line: 1021, column: 18, scope: !1270)
!1276 = !DILocation(line: 1021, column: 7, scope: !1270)
!1277 = !DILocation(line: 1022, column: 30, scope: !1270)
!1278 = !DILocation(line: 1022, column: 36, scope: !1270)
!1279 = !DILocation(line: 1022, column: 23, scope: !1270)
!1280 = !DILocation(line: 1022, column: 7, scope: !1270)
!1281 = !DILocation(line: 1022, column: 13, scope: !1270)
!1282 = !DILocation(line: 1022, column: 21, scope: !1270)
!1283 = !DILocation(line: 1023, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1270, file: !56, line: 1023, column: 11)
!1285 = !DILocation(line: 1023, column: 17, scope: !1284)
!1286 = !DILocation(line: 1023, column: 25, scope: !1284)
!1287 = !DILocation(line: 1023, column: 11, scope: !1270)
!1288 = !DILocation(line: 1025, column: 59, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !56, line: 1023, column: 33)
!1290 = !DILocation(line: 1025, column: 65, scope: !1289)
!1291 = !DILocation(line: 1025, column: 41, scope: !1289)
!1292 = !DILocation(line: 1024, column: 10, scope: !1289)
!1293 = !DILocation(line: 1026, column: 11, scope: !1289)
!1294 = !DILocation(line: 1026, column: 18, scope: !1289)
!1295 = !DILocation(line: 1027, column: 10, scope: !1289)
!1296 = !DILocation(line: 1029, column: 4, scope: !1270)
!1297 = !DILocation(line: 1031, column: 40, scope: !1240)
!1298 = !DILocation(line: 1031, column: 34, scope: !1240)
!1299 = !DILocation(line: 1031, column: 16, scope: !1240)
!1300 = !DILocation(line: 1031, column: 22, scope: !1240)
!1301 = !DILocation(line: 1031, column: 4, scope: !1240)
!1302 = !DILocation(line: 1031, column: 32, scope: !1240)
!1303 = !DILocation(line: 1032, column: 27, scope: !1240)
!1304 = !DILocation(line: 1032, column: 33, scope: !1240)
!1305 = !DILocation(line: 1032, column: 40, scope: !1240)
!1306 = !DILocation(line: 1032, column: 46, scope: !1240)
!1307 = !DILocation(line: 1032, column: 54, scope: !1240)
!1308 = !DILocation(line: 1033, column: 27, scope: !1240)
!1309 = !DILocation(line: 1033, column: 54, scope: !1240)
!1310 = !DILocation(line: 1032, column: 10, scope: !1240)
!1311 = !DILocation(line: 1032, column: 8, scope: !1240)
!1312 = !DILocation(line: 1035, column: 24, scope: !1240)
!1313 = !DILocation(line: 1035, column: 28, scope: !1240)
!1314 = !DILocation(line: 1035, column: 4, scope: !1240)
!1315 = !DILocation(line: 1035, column: 10, scope: !1240)
!1316 = !DILocation(line: 1035, column: 22, scope: !1240)
!1317 = !DILocation(line: 1036, column: 8, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1240, file: !56, line: 1036, column: 8)
!1319 = !DILocation(line: 1036, column: 12, scope: !1318)
!1320 = !DILocation(line: 1036, column: 8, scope: !1240)
!1321 = !DILocation(line: 1038, column: 56, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !56, line: 1036, column: 18)
!1323 = !DILocation(line: 1038, column: 62, scope: !1322)
!1324 = !DILocation(line: 1038, column: 38, scope: !1322)
!1325 = !DILocation(line: 1037, column: 7, scope: !1322)
!1326 = !DILocation(line: 1039, column: 8, scope: !1322)
!1327 = !DILocation(line: 1039, column: 15, scope: !1322)
!1328 = !DILocation(line: 1040, column: 4, scope: !1322)
!1329 = !DILocation(line: 1041, column: 11, scope: !1240)
!1330 = !DILocation(line: 1041, column: 15, scope: !1240)
!1331 = !DILocation(line: 1041, column: 4, scope: !1240)
!1332 = !DILocation(line: 1042, column: 1, scope: !1240)
!1333 = distinct !DISubprogram(name: "RpcInDecodePacket", scope: !56, file: !56, line: 841, type: !1334, isLocal: true, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!115, !54, !764, !231}
!1336 = !DILocalVariable(name: "conn", arg: 1, scope: !1333, file: !56, line: 841, type: !54)
!1337 = !DILocation(line: 841, column: 29, scope: !1333)
!1338 = !DILocalVariable(name: "payload", arg: 2, scope: !1333, file: !56, line: 842, type: !764)
!1339 = !DILocation(line: 842, column: 26, scope: !1333)
!1340 = !DILocalVariable(name: "payloadLen", arg: 3, scope: !1333, file: !56, line: 843, type: !231)
!1341 = !DILocation(line: 843, column: 26, scope: !1333)
!1342 = !DILocalVariable(name: "res", scope: !1333, file: !56, line: 845, type: !789)
!1343 = !DILocation(line: 845, column: 14, scope: !1333)
!1344 = !DILocalVariable(name: "map", scope: !1333, file: !56, line: 846, type: !778)
!1345 = !DILocation(line: 846, column: 12, scope: !1333)
!1346 = !DILocalVariable(name: "fd", scope: !1333, file: !56, line: 847, type: !68)
!1347 = !DILocation(line: 847, column: 8, scope: !1333)
!1348 = !DILocation(line: 847, column: 31, scope: !1333)
!1349 = !DILocation(line: 847, column: 37, scope: !1333)
!1350 = !DILocation(line: 847, column: 13, scope: !1333)
!1351 = !DILocalVariable(name: "fullPacketLen", scope: !1333, file: !56, line: 848, type: !68)
!1352 = !DILocation(line: 848, column: 8, scope: !1333)
!1353 = !DILocation(line: 848, column: 24, scope: !1333)
!1354 = !DILocation(line: 848, column: 30, scope: !1333)
!1355 = !DILocation(line: 848, column: 40, scope: !1333)
!1356 = !DILocalVariable(name: "buf", scope: !1333, file: !56, line: 849, type: !70)
!1357 = !DILocation(line: 849, column: 10, scope: !1333)
!1358 = !DILocalVariable(name: "len", scope: !1333, file: !56, line: 850, type: !64)
!1359 = !DILocation(line: 850, column: 10, scope: !1333)
!1360 = !DILocation(line: 854, column: 30, scope: !1333)
!1361 = !DILocation(line: 854, column: 36, scope: !1333)
!1362 = !DILocation(line: 854, column: 45, scope: !1333)
!1363 = !DILocation(line: 854, column: 10, scope: !1333)
!1364 = !DILocation(line: 854, column: 8, scope: !1333)
!1365 = !DILocation(line: 855, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1333, file: !56, line: 855, column: 8)
!1367 = !DILocation(line: 855, column: 12, scope: !1366)
!1368 = !DILocation(line: 855, column: 8, scope: !1333)
!1369 = !DILocation(line: 857, column: 13, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !56, line: 855, column: 30)
!1371 = !DILocation(line: 857, column: 17, scope: !1370)
!1372 = !DILocation(line: 856, column: 7, scope: !1370)
!1373 = !DILocation(line: 858, column: 7, scope: !1370)
!1374 = !DILocation(line: 861, column: 10, scope: !1333)
!1375 = !DILocation(line: 861, column: 8, scope: !1333)
!1376 = !DILocation(line: 862, column: 8, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1333, file: !56, line: 862, column: 8)
!1378 = !DILocation(line: 862, column: 12, scope: !1377)
!1379 = !DILocation(line: 862, column: 8, scope: !1333)
!1380 = !DILocalVariable(name: "tmpPtr", scope: !1381, file: !56, line: 863, type: !70)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !56, line: 862, column: 30)
!1382 = !DILocation(line: 863, column: 13, scope: !1381)
!1383 = !DILocation(line: 863, column: 37, scope: !1381)
!1384 = !DILocation(line: 863, column: 41, scope: !1381)
!1385 = !DILocation(line: 863, column: 30, scope: !1381)
!1386 = !DILocation(line: 864, column: 11, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !56, line: 864, column: 11)
!1388 = !DILocation(line: 864, column: 18, scope: !1387)
!1389 = !DILocation(line: 864, column: 11, scope: !1381)
!1390 = !DILocation(line: 865, column: 67, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !56, line: 864, column: 26)
!1392 = !DILocation(line: 865, column: 10, scope: !1391)
!1393 = !DILocation(line: 866, column: 10, scope: !1391)
!1394 = !DILocation(line: 868, column: 14, scope: !1381)
!1395 = !DILocation(line: 868, column: 22, scope: !1381)
!1396 = !DILocation(line: 868, column: 27, scope: !1381)
!1397 = !DILocation(line: 868, column: 7, scope: !1381)
!1398 = !DILocation(line: 870, column: 14, scope: !1381)
!1399 = !DILocation(line: 870, column: 7, scope: !1381)
!1400 = !DILocation(line: 870, column: 19, scope: !1381)
!1401 = !DILocation(line: 872, column: 18, scope: !1381)
!1402 = !DILocation(line: 872, column: 8, scope: !1381)
!1403 = !DILocation(line: 872, column: 16, scope: !1381)
!1404 = !DILocation(line: 873, column: 21, scope: !1381)
!1405 = !DILocation(line: 873, column: 8, scope: !1381)
!1406 = !DILocation(line: 873, column: 19, scope: !1381)
!1407 = !DILocation(line: 874, column: 4, scope: !1381)
!1408 = !DILocation(line: 875, column: 51, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1377, file: !56, line: 874, column: 11)
!1410 = !DILocation(line: 875, column: 7, scope: !1409)
!1411 = !DILocation(line: 876, column: 7, scope: !1409)
!1412 = !DILocation(line: 879, column: 4, scope: !1333)
!1413 = !DILocation(line: 880, column: 4, scope: !1333)
!1414 = !DILocation(line: 883, column: 4, scope: !1333)
!1415 = !DILocation(line: 884, column: 4, scope: !1333)
!1416 = !DILocation(line: 885, column: 1, scope: !1333)
!1417 = distinct !DISubprogram(name: "RpcInExecRpc", scope: !56, file: !56, line: 1297, type: !1418, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!74, !232, !184, !188, !1243}
!1420 = !DILocalVariable(name: "in", arg: 1, scope: !1417, file: !56, line: 1297, type: !232)
!1421 = !DILocation(line: 1297, column: 21, scope: !1417)
!1422 = !DILocalVariable(name: "reply", arg: 2, scope: !1417, file: !56, line: 1298, type: !184)
!1423 = !DILocation(line: 1298, column: 26, scope: !1417)
!1424 = !DILocalVariable(name: "repLen", arg: 3, scope: !1417, file: !56, line: 1299, type: !188)
!1425 = !DILocation(line: 1299, column: 21, scope: !1417)
!1426 = !DILocalVariable(name: "errmsg", arg: 4, scope: !1417, file: !56, line: 1300, type: !1243)
!1427 = !DILocation(line: 1300, column: 27, scope: !1417)
!1428 = !DILocalVariable(name: "status", scope: !1417, file: !56, line: 1302, type: !149)
!1429 = !DILocation(line: 1302, column: 17, scope: !1417)
!1430 = !DILocalVariable(name: "statusStr", scope: !1417, file: !56, line: 1303, type: !184)
!1431 = !DILocation(line: 1303, column: 16, scope: !1417)
!1432 = !DILocalVariable(name: "statusLen", scope: !1417, file: !56, line: 1304, type: !149)
!1433 = !DILocation(line: 1304, column: 17, scope: !1417)
!1434 = !DILocalVariable(name: "result", scope: !1417, file: !56, line: 1305, type: !70)
!1435 = !DILocation(line: 1305, column: 10, scope: !1417)
!1436 = !DILocalVariable(name: "resultLen", scope: !1417, file: !56, line: 1306, type: !188)
!1437 = !DILocation(line: 1306, column: 11, scope: !1417)
!1438 = !DILocalVariable(name: "freeResult", scope: !1417, file: !56, line: 1307, type: !74)
!1439 = !DILocation(line: 1307, column: 9, scope: !1417)
!1440 = !DILocalVariable(name: "data", scope: !1417, file: !56, line: 1314, type: !180)
!1441 = !DILocation(line: 1314, column: 14, scope: !1417)
!1442 = !DILocation(line: 1314, column: 21, scope: !1417)
!1443 = !DILocation(line: 1314, column: 28, scope: !1417)
!1444 = !DILocation(line: 1314, column: 35, scope: !1417)
!1445 = !DILocation(line: 1314, column: 65, scope: !1417)
!1446 = !DILocation(line: 1314, column: 69, scope: !1417)
!1447 = !DILocation(line: 1316, column: 13, scope: !1417)
!1448 = !DILocation(line: 1316, column: 17, scope: !1417)
!1449 = !DILocation(line: 1316, column: 11, scope: !1417)
!1450 = !DILocation(line: 1317, column: 18, scope: !1417)
!1451 = !DILocation(line: 1317, column: 11, scope: !1417)
!1452 = !DILocation(line: 1318, column: 21, scope: !1417)
!1453 = !DILocation(line: 1318, column: 14, scope: !1417)
!1454 = !DILocation(line: 1319, column: 22, scope: !1417)
!1455 = !DILocation(line: 1319, column: 17, scope: !1417)
!1456 = !DILocation(line: 1319, column: 15, scope: !1417)
!1457 = !DILocation(line: 1349, column: 16, scope: !1417)
!1458 = !DILocation(line: 1349, column: 14, scope: !1417)
!1459 = !DILocation(line: 1350, column: 23, scope: !1417)
!1460 = !DILocation(line: 1350, column: 16, scope: !1417)
!1461 = !DILocation(line: 1350, column: 14, scope: !1417)
!1462 = !DILocation(line: 1352, column: 37, scope: !1417)
!1463 = !DILocation(line: 1352, column: 49, scope: !1417)
!1464 = !DILocation(line: 1352, column: 47, scope: !1417)
!1465 = !DILocation(line: 1352, column: 30, scope: !1417)
!1466 = !DILocation(line: 1352, column: 4, scope: !1417)
!1467 = !DILocation(line: 1352, column: 8, scope: !1417)
!1468 = !DILocation(line: 1352, column: 20, scope: !1417)
!1469 = !DILocation(line: 1353, column: 8, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1417, file: !56, line: 1353, column: 8)
!1471 = !DILocation(line: 1353, column: 12, scope: !1470)
!1472 = !DILocation(line: 1353, column: 24, scope: !1470)
!1473 = !DILocation(line: 1353, column: 8, scope: !1417)
!1474 = !DILocation(line: 1354, column: 8, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !56, line: 1353, column: 32)
!1476 = !DILocation(line: 1354, column: 15, scope: !1475)
!1477 = !DILocation(line: 1355, column: 7, scope: !1475)
!1478 = !DILocation(line: 1357, column: 11, scope: !1417)
!1479 = !DILocation(line: 1357, column: 15, scope: !1417)
!1480 = !DILocation(line: 1357, column: 28, scope: !1417)
!1481 = !DILocation(line: 1357, column: 39, scope: !1417)
!1482 = !DILocation(line: 1357, column: 4, scope: !1417)
!1483 = !DILocation(line: 1358, column: 11, scope: !1417)
!1484 = !DILocation(line: 1358, column: 15, scope: !1417)
!1485 = !DILocation(line: 1358, column: 29, scope: !1417)
!1486 = !DILocation(line: 1358, column: 27, scope: !1417)
!1487 = !DILocation(line: 1358, column: 40, scope: !1417)
!1488 = !DILocation(line: 1358, column: 48, scope: !1417)
!1489 = !DILocation(line: 1358, column: 4, scope: !1417)
!1490 = !DILocation(line: 1359, column: 25, scope: !1417)
!1491 = !DILocation(line: 1359, column: 37, scope: !1417)
!1492 = !DILocation(line: 1359, column: 35, scope: !1417)
!1493 = !DILocation(line: 1359, column: 4, scope: !1417)
!1494 = !DILocation(line: 1359, column: 8, scope: !1417)
!1495 = !DILocation(line: 1359, column: 23, scope: !1417)
!1496 = !DILocation(line: 1361, column: 8, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1417, file: !56, line: 1361, column: 8)
!1498 = !DILocation(line: 1361, column: 8, scope: !1417)
!1499 = !DILocation(line: 1362, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !56, line: 1361, column: 20)
!1501 = !DILocation(line: 1362, column: 7, scope: !1500)
!1502 = !DILocation(line: 1363, column: 4, scope: !1500)
!1503 = !DILocation(line: 1369, column: 4, scope: !1417)
!1504 = !DILocation(line: 1369, column: 8, scope: !1417)
!1505 = !DILocation(line: 1369, column: 14, scope: !1417)
!1506 = !DILocation(line: 1371, column: 4, scope: !1417)
!1507 = !DILocation(line: 1372, column: 1, scope: !1417)
!1508 = distinct !DISubprogram(name: "RpcInRegisterHeartbeatCallback", scope: !56, file: !56, line: 811, type: !298, isLocal: true, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1509 = !DILocalVariable(name: "in", arg: 1, scope: !1508, file: !56, line: 811, type: !232)
!1510 = !DILocation(line: 811, column: 39, scope: !1508)
!1511 = !DILocation(line: 814, column: 23, scope: !1508)
!1512 = !DILocation(line: 814, column: 4, scope: !1508)
!1513 = !DILocation(line: 814, column: 8, scope: !1508)
!1514 = !DILocation(line: 814, column: 21, scope: !1508)
!1515 = !DILocation(line: 815, column: 8, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !56, line: 815, column: 8)
!1517 = !DILocation(line: 815, column: 12, scope: !1516)
!1518 = !DILocation(line: 815, column: 25, scope: !1516)
!1519 = !DILocation(line: 815, column: 8, scope: !1508)
!1520 = !DILocation(line: 816, column: 29, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !56, line: 815, column: 33)
!1522 = !DILocation(line: 816, column: 33, scope: !1521)
!1523 = !DILocation(line: 816, column: 71, scope: !1521)
!1524 = !DILocation(line: 816, column: 7, scope: !1521)
!1525 = !DILocation(line: 817, column: 23, scope: !1521)
!1526 = !DILocation(line: 817, column: 27, scope: !1521)
!1527 = !DILocation(line: 817, column: 41, scope: !1521)
!1528 = !DILocation(line: 817, column: 45, scope: !1521)
!1529 = !DILocation(line: 817, column: 7, scope: !1521)
!1530 = !DILocation(line: 818, column: 4, scope: !1521)
!1531 = !DILocation(line: 819, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1516, file: !56, line: 818, column: 11)
!1533 = !DILocation(line: 821, column: 1, scope: !1508)
!1534 = distinct !DISubprogram(name: "RpcInHeartbeatCallback", scope: !56, file: !56, line: 770, type: !244, isLocal: true, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1535 = !DILocalVariable(name: "clientData", arg: 1, scope: !1534, file: !56, line: 770, type: !51)
!1536 = !DILocation(line: 770, column: 30, scope: !1534)
!1537 = !DILocalVariable(name: "in", scope: !1534, file: !56, line: 772, type: !232)
!1538 = !DILocation(line: 772, column: 11, scope: !1534)
!1539 = !DILocation(line: 772, column: 25, scope: !1534)
!1540 = !DILocation(line: 772, column: 16, scope: !1534)
!1541 = !DILocation(line: 774, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1534, file: !56, line: 774, column: 8)
!1543 = !DILocation(line: 774, column: 12, scope: !1542)
!1544 = !DILocation(line: 774, column: 8, scope: !1534)
!1545 = !DILocation(line: 779, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !56, line: 774, column: 18)
!1547 = !DILocation(line: 779, column: 11, scope: !1546)
!1548 = !DILocation(line: 779, column: 20, scope: !1546)
!1549 = !DILocation(line: 780, column: 21, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !56, line: 780, column: 11)
!1551 = !DILocation(line: 780, column: 11, scope: !1550)
!1552 = !DILocation(line: 780, column: 11, scope: !1546)
!1553 = !DILocation(line: 781, column: 10, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !56, line: 780, column: 31)
!1555 = !DILocalVariable(name: "errmsg", scope: !1556, file: !56, line: 783, type: !70)
!1556 = distinct !DILexicalBlock(scope: !1550, file: !56, line: 782, column: 14)
!1557 = !DILocation(line: 783, column: 16, scope: !1556)
!1558 = !DILocation(line: 784, column: 28, scope: !1556)
!1559 = !DILocation(line: 784, column: 32, scope: !1556)
!1560 = !DILocation(line: 784, column: 10, scope: !1556)
!1561 = !DILocation(line: 785, column: 10, scope: !1556)
!1562 = !DILocation(line: 789, column: 4, scope: !1534)
!1563 = !DILocation(line: 790, column: 1, scope: !1534)
!1564 = !DILocalVariable(name: "clientData", arg: 1, scope: !243, file: !56, line: 1516, type: !51)
!1565 = !DILocation(line: 1516, column: 17, scope: !243)
!1566 = !DILocalVariable(name: "in", scope: !243, file: !56, line: 1518, type: !232)
!1567 = !DILocation(line: 1518, column: 11, scope: !243)
!1568 = !DILocalVariable(name: "errmsg", scope: !243, file: !56, line: 1519, type: !184)
!1569 = !DILocation(line: 1519, column: 16, scope: !243)
!1570 = !DILocalVariable(name: "reply", scope: !243, file: !56, line: 1520, type: !184)
!1571 = !DILocation(line: 1520, column: 16, scope: !243)
!1572 = !DILocalVariable(name: "repLen", scope: !243, file: !56, line: 1521, type: !188)
!1573 = !DILocation(line: 1521, column: 11, scope: !243)
!1574 = !DILocalVariable(name: "resched", scope: !243, file: !56, line: 1522, type: !74)
!1575 = !DILocation(line: 1522, column: 9, scope: !243)
!1576 = !DILocalVariable(name: "current", scope: !243, file: !56, line: 1525, type: !149)
!1577 = !DILocation(line: 1525, column: 17, scope: !243)
!1578 = !DILocation(line: 1528, column: 18, scope: !243)
!1579 = !DILocation(line: 1528, column: 9, scope: !243)
!1580 = !DILocation(line: 1528, column: 7, scope: !243)
!1581 = !DILocation(line: 1535, column: 14, scope: !243)
!1582 = !DILocation(line: 1535, column: 18, scope: !243)
!1583 = !DILocation(line: 1535, column: 12, scope: !243)
!1584 = !DILocation(line: 1544, column: 4, scope: !243)
!1585 = !DILocation(line: 1544, column: 8, scope: !243)
!1586 = !DILocation(line: 1544, column: 15, scope: !243)
!1587 = !DILocation(line: 1550, column: 8, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1550, column: 8)
!1589 = !DILocation(line: 1550, column: 12, scope: !1588)
!1590 = !DILocation(line: 1550, column: 20, scope: !1588)
!1591 = !DILocation(line: 1550, column: 8, scope: !243)
!1592 = !DILocation(line: 1551, column: 14, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !56, line: 1550, column: 28)
!1594 = !DILocation(line: 1552, column: 1, scope: !1593)
!1595 = !DILocation(line: 1553, column: 7, scope: !1593)
!1596 = !DILocation(line: 1560, column: 18, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1560, column: 8)
!1598 = !DILocation(line: 1560, column: 8, scope: !1597)
!1599 = !DILocation(line: 1560, column: 25, scope: !1597)
!1600 = !DILocation(line: 1560, column: 8, scope: !243)
!1601 = !DILocation(line: 1561, column: 14, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !56, line: 1560, column: 31)
!1603 = !DILocation(line: 1562, column: 1, scope: !1602)
!1604 = !DILocation(line: 1563, column: 7, scope: !1602)
!1605 = !DILocation(line: 1566, column: 24, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1566, column: 8)
!1607 = !DILocation(line: 1566, column: 28, scope: !1606)
!1608 = !DILocation(line: 1566, column: 8, scope: !1606)
!1609 = !DILocation(line: 1566, column: 72, scope: !1606)
!1610 = !DILocation(line: 1566, column: 8, scope: !243)
!1611 = !DILocation(line: 1567, column: 14, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !56, line: 1566, column: 78)
!1613 = !DILocation(line: 1568, column: 1, scope: !1612)
!1614 = !DILocation(line: 1569, column: 7, scope: !1612)
!1615 = !DILocation(line: 1572, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1572, column: 8)
!1617 = !DILocation(line: 1572, column: 8, scope: !243)
!1618 = !DILocalVariable(name: "s", scope: !1619, file: !56, line: 1573, type: !70)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !56, line: 1572, column: 16)
!1620 = !DILocation(line: 1573, column: 13, scope: !1619)
!1621 = !DILocation(line: 1573, column: 26, scope: !1619)
!1622 = !DILocation(line: 1573, column: 33, scope: !1619)
!1623 = !DILocation(line: 1573, column: 17, scope: !1619)
!1624 = !DILocation(line: 1574, column: 65, scope: !1619)
!1625 = !DILocation(line: 1574, column: 59, scope: !1619)
!1626 = !DILocation(line: 1574, column: 73, scope: !1619)
!1627 = !DILocation(line: 1574, column: 7, scope: !1619)
!1628 = !DILocation(line: 1575, column: 25, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !56, line: 1575, column: 11)
!1630 = !DILocation(line: 1575, column: 29, scope: !1629)
!1631 = !DILocation(line: 1575, column: 36, scope: !1629)
!1632 = !DILocation(line: 1575, column: 12, scope: !1629)
!1633 = !DILocation(line: 1575, column: 11, scope: !1619)
!1634 = !DILocation(line: 1576, column: 1, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1629, file: !56, line: 1575, column: 54)
!1636 = !DILocation(line: 1577, column: 10, scope: !1635)
!1637 = !DILocation(line: 1579, column: 4, scope: !1619)
!1638 = !DILocalVariable(name: "now", scope: !1639, file: !56, line: 1581, type: !246)
!1639 = distinct !DILexicalBlock(scope: !1616, file: !56, line: 1579, column: 11)
!1640 = !DILocation(line: 1581, column: 14, scope: !1639)
!1641 = !DILocation(line: 1581, column: 20, scope: !1639)
!1642 = !DILocation(line: 1581, column: 46, scope: !1639)
!1643 = !DILocation(line: 1582, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !56, line: 1582, column: 11)
!1645 = !DILocation(line: 1582, column: 18, scope: !1644)
!1646 = !DILocation(line: 1582, column: 16, scope: !1644)
!1647 = !DILocation(line: 1582, column: 34, scope: !1644)
!1648 = !DILocation(line: 1582, column: 11, scope: !1639)
!1649 = !DILocation(line: 1587, column: 10, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !56, line: 1582, column: 42)
!1651 = !DILocation(line: 1588, column: 27, scope: !1650)
!1652 = !DILocation(line: 1588, column: 25, scope: !1650)
!1653 = !DILocation(line: 1589, column: 7, scope: !1650)
!1654 = !DILocation(line: 1599, column: 28, scope: !1639)
!1655 = !DILocation(line: 1599, column: 7, scope: !1639)
!1656 = !DILocation(line: 1603, column: 4, scope: !243)
!1657 = !DILocation(line: 1603, column: 8, scope: !243)
!1658 = !DILocation(line: 1603, column: 17, scope: !243)
!1659 = !DILocation(line: 1605, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1605, column: 8)
!1661 = !DILocation(line: 1605, column: 13, scope: !1660)
!1662 = !DILocation(line: 1605, column: 8, scope: !243)
!1663 = !DILocalVariable(name: "needResched", scope: !1664, file: !56, line: 1606, type: !74)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !56, line: 1605, column: 25)
!1665 = !DILocation(line: 1606, column: 12, scope: !1664)
!1666 = !DILocation(line: 1608, column: 17, scope: !1664)
!1667 = !DILocation(line: 1608, column: 21, scope: !1664)
!1668 = !DILocation(line: 1608, column: 30, scope: !1664)
!1669 = !DILocation(line: 1608, column: 27, scope: !1664)
!1670 = !DILocation(line: 1608, column: 15, scope: !1664)
!1671 = !DILocation(line: 1609, column: 21, scope: !1664)
!1672 = !DILocation(line: 1609, column: 19, scope: !1664)
!1673 = !DILocation(line: 1611, column: 11, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1664, file: !56, line: 1611, column: 11)
!1675 = !DILocation(line: 1611, column: 23, scope: !1674)
!1676 = !DILocation(line: 1611, column: 50, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1674, file: !56, discriminator: 1)
!1678 = !DILocation(line: 1611, column: 27, scope: !1677)
!1679 = !DILocation(line: 1611, column: 11, scope: !1677)
!1680 = !DILocation(line: 1612, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !56, line: 1611, column: 55)
!1682 = !DILocation(line: 1613, column: 1, scope: !1681)
!1683 = !DILocation(line: 1614, column: 10, scope: !1681)
!1684 = !DILocation(line: 1616, column: 4, scope: !1664)
!1685 = !DILocation(line: 1605, column: 13, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1660, file: !56, discriminator: 1)
!1687 = !DILocation(line: 1619, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !243, file: !56, line: 1619, column: 8)
!1689 = !DILocation(line: 1619, column: 12, scope: !1688)
!1690 = !DILocation(line: 1619, column: 8, scope: !243)
!1691 = !DILocation(line: 1620, column: 17, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !56, line: 1619, column: 24)
!1693 = !DILocation(line: 1620, column: 7, scope: !1692)
!1694 = !DILocation(line: 1621, column: 7, scope: !1692)
!1695 = !DILocation(line: 1621, column: 11, scope: !1692)
!1696 = !DILocation(line: 1621, column: 22, scope: !1692)
!1697 = !DILocation(line: 1624, column: 15, scope: !1692)
!1698 = !DILocation(line: 1626, column: 4, scope: !1692)
!1699 = !DILocation(line: 1628, column: 4, scope: !243)
!1700 = !DILocation(line: 1628, column: 8, scope: !243)
!1701 = !DILocation(line: 1628, column: 15, scope: !243)
!1702 = !DILocation(line: 1630, column: 12, scope: !243)
!1703 = !DILocation(line: 1630, column: 11, scope: !243)
!1704 = !DILocation(line: 1630, column: 4, scope: !243)
!1705 = !DILocation(line: 1634, column: 6, scope: !243)
!1706 = !DILocation(line: 1634, column: 10, scope: !243)
!1707 = !DILocation(line: 1634, column: 21, scope: !243)
!1708 = !DILocation(line: 1634, column: 25, scope: !243)
!1709 = !DILocation(line: 1634, column: 36, scope: !243)
!1710 = !DILocation(line: 1634, column: 4, scope: !243)
!1711 = !DILocation(line: 1635, column: 4, scope: !243)
!1712 = !DILocation(line: 1635, column: 8, scope: !243)
!1713 = !DILocation(line: 1635, column: 19, scope: !243)
!1714 = !DILocation(line: 1636, column: 4, scope: !243)
!1715 = !DILocalVariable(name: "buf", arg: 1, scope: !249, file: !56, line: 1430, type: !184)
!1716 = !DILocation(line: 1430, column: 22, scope: !249)
!1717 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !56, line: 1431, type: !188)
!1718 = !DILocation(line: 1431, column: 16, scope: !249)
!1719 = !DILocalVariable(name: "i", scope: !249, file: !56, line: 1436, type: !188)
!1720 = !DILocation(line: 1436, column: 11, scope: !249)
!1721 = !DILocalVariable(name: "count", scope: !249, file: !56, line: 1436, type: !188)
!1722 = !DILocation(line: 1436, column: 14, scope: !249)
!1723 = !DILocalVariable(name: "nPrintable", scope: !249, file: !56, line: 1436, type: !188)
!1724 = !DILocation(line: 1436, column: 21, scope: !249)
!1725 = !DILocalVariable(name: "nBinary", scope: !249, file: !56, line: 1436, type: !188)
!1726 = !DILocation(line: 1436, column: 33, scope: !249)
!1727 = !DILocation(line: 1438, column: 10, scope: !249)
!1728 = !DILocation(line: 1439, column: 15, scope: !249)
!1729 = !DILocation(line: 1440, column: 12, scope: !249)
!1730 = !DILocation(line: 1442, column: 10, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !249, file: !56, line: 1442, column: 8)
!1732 = !DILocation(line: 1442, column: 8, scope: !249)
!1733 = !DILocation(line: 1443, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !56, line: 1442, column: 16)
!1735 = !DILocation(line: 1446, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !249, file: !56, line: 1446, column: 4)
!1737 = !DILocation(line: 1446, column: 9, scope: !1736)
!1738 = !DILocation(line: 1446, column: 16, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !56, discriminator: 1)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !56, line: 1446, column: 4)
!1741 = !DILocation(line: 1446, column: 20, scope: !1739)
!1742 = !DILocation(line: 1446, column: 18, scope: !1739)
!1743 = !DILocation(line: 1446, column: 4, scope: !1739)
!1744 = !DILocalVariable(name: "c", scope: !1745, file: !56, line: 1447, type: !53)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !56, line: 1446, column: 31)
!1746 = !DILocation(line: 1447, column: 21, scope: !1745)
!1747 = !DILocation(line: 1447, column: 29, scope: !1745)
!1748 = !DILocation(line: 1447, column: 25, scope: !1745)
!1749 = !DILocation(line: 1448, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !56, line: 1448, column: 11)
!1751 = !DILocation(line: 1448, column: 13, scope: !1750)
!1752 = !DILocation(line: 1448, column: 11, scope: !1745)
!1753 = !DILocation(line: 1449, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !56, line: 1449, column: 14)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !56, line: 1448, column: 22)
!1756 = !DILocation(line: 1449, column: 19, scope: !1754)
!1757 = !DILocation(line: 1449, column: 28, scope: !1754)
!1758 = !DILocation(line: 1449, column: 14, scope: !1755)
!1759 = !DILocation(line: 1450, column: 13, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1754, file: !56, line: 1449, column: 33)
!1761 = !DILocation(line: 1452, column: 32, scope: !1755)
!1762 = !DILocation(line: 1452, column: 26, scope: !1755)
!1763 = !DILocation(line: 1452, column: 10, scope: !1755)
!1764 = !DILocation(line: 1452, column: 30, scope: !1755)
!1765 = !DILocation(line: 1453, column: 32, scope: !1755)
!1766 = !DILocation(line: 1453, column: 26, scope: !1755)
!1767 = !DILocation(line: 1453, column: 10, scope: !1755)
!1768 = !DILocation(line: 1453, column: 30, scope: !1755)
!1769 = !DILocation(line: 1454, column: 10, scope: !1755)
!1770 = !DILocation(line: 1455, column: 7, scope: !1755)
!1771 = !DILocation(line: 1455, column: 17, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1773, file: !56, discriminator: 1)
!1773 = distinct !DILexicalBlock(scope: !1750, file: !56, line: 1455, column: 17)
!1774 = !DILocation(line: 1455, column: 38, scope: !1772)
!1775 = !DILocation(line: 1455, column: 18, scope: !1772)
!1776 = !DILocation(line: 1455, column: 20, scope: !1772)
!1777 = !DILocation(line: 1455, column: 19, scope: !1772)
!1778 = !DILocation(line: 1455, column: 21, scope: !1772)
!1779 = !DILocation(line: 1456, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !56, line: 1456, column: 14)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !56, line: 1455, column: 29)
!1782 = !DILocation(line: 1456, column: 19, scope: !1780)
!1783 = !DILocation(line: 1456, column: 28, scope: !1780)
!1784 = !DILocation(line: 1456, column: 14, scope: !1781)
!1785 = !DILocation(line: 1457, column: 13, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !56, line: 1456, column: 33)
!1787 = !DILocation(line: 1459, column: 32, scope: !1781)
!1788 = !DILocation(line: 1459, column: 26, scope: !1781)
!1789 = !DILocation(line: 1459, column: 10, scope: !1781)
!1790 = !DILocation(line: 1459, column: 30, scope: !1781)
!1791 = !DILocation(line: 1460, column: 10, scope: !1781)
!1792 = !DILocation(line: 1461, column: 7, scope: !1781)
!1793 = !DILocation(line: 1462, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !56, line: 1462, column: 14)
!1795 = distinct !DILexicalBlock(scope: !1773, file: !56, line: 1461, column: 14)
!1796 = !DILocation(line: 1462, column: 19, scope: !1794)
!1797 = !DILocation(line: 1462, column: 28, scope: !1794)
!1798 = !DILocation(line: 1462, column: 14, scope: !1795)
!1799 = !DILocation(line: 1463, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !56, line: 1462, column: 33)
!1801 = !DILocation(line: 1465, column: 26, scope: !1795)
!1802 = !DILocation(line: 1465, column: 10, scope: !1795)
!1803 = !DILocation(line: 1465, column: 30, scope: !1795)
!1804 = !DILocation(line: 1466, column: 35, scope: !1795)
!1805 = !DILocation(line: 1466, column: 24, scope: !1795)
!1806 = !DILocation(line: 1466, column: 54, scope: !1795)
!1807 = !DILocation(line: 1466, column: 10, scope: !1795)
!1808 = !DILocation(line: 1467, column: 16, scope: !1795)
!1809 = !DILocation(line: 1468, column: 10, scope: !1795)
!1810 = !DILocation(line: 1470, column: 4, scope: !1745)
!1811 = !DILocation(line: 1446, column: 26, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1740, file: !56, discriminator: 2)
!1813 = !DILocation(line: 1446, column: 4, scope: !1812)
!1814 = distinct !{!1814, !1815}
!1815 = !DILocation(line: 1446, column: 4, scope: !249)
!1816 = !DILocation(line: 1472, column: 8, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !249, file: !56, line: 1472, column: 8)
!1818 = !DILocation(line: 1472, column: 18, scope: !1817)
!1819 = !DILocation(line: 1472, column: 16, scope: !1817)
!1820 = !DILocation(line: 1472, column: 8, scope: !249)
!1821 = !DILocation(line: 1473, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !56, line: 1472, column: 30)
!1823 = !DILocation(line: 1476, column: 8, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !249, file: !56, line: 1476, column: 8)
!1825 = !DILocation(line: 1476, column: 12, scope: !1824)
!1826 = !DILocation(line: 1476, column: 10, scope: !1824)
!1827 = !DILocation(line: 1476, column: 8, scope: !249)
!1828 = !DILocalVariable(name: "n", scope: !1829, file: !56, line: 1478, type: !68)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !56, line: 1476, column: 18)
!1830 = !DILocation(line: 1478, column: 11, scope: !1829)
!1831 = !DILocation(line: 1478, column: 40, scope: !1829)
!1832 = !DILocation(line: 1478, column: 29, scope: !1829)
!1833 = !DILocation(line: 1478, column: 68, scope: !1829)
!1834 = !DILocation(line: 1478, column: 66, scope: !1829)
!1835 = !DILocation(line: 1478, column: 15, scope: !1829)
!1836 = !DILocation(line: 1481, column: 16, scope: !1829)
!1837 = !DILocation(line: 1481, column: 13, scope: !1829)
!1838 = !DILocation(line: 1482, column: 4, scope: !1829)
!1839 = !DILocation(line: 1476, column: 12, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1824, file: !56, discriminator: 1)
!1841 = !DILocation(line: 1486, column: 15, scope: !249)
!1842 = !DILocation(line: 1486, column: 4, scope: !249)
!1843 = !DILocation(line: 1486, column: 22, scope: !249)
!1844 = !DILocation(line: 1488, column: 4, scope: !249)
!1845 = !DILocation(line: 1489, column: 1, scope: !249)
!1846 = distinct !DISubprogram(name: "RpcInUpdateDelayTime", scope: !56, file: !56, line: 1394, type: !298, isLocal: true, isDefinition: true, scopeLine: 1395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !240)
!1847 = !DILocalVariable(name: "in", arg: 1, scope: !1846, file: !56, line: 1394, type: !232)
!1848 = !DILocation(line: 1394, column: 29, scope: !1846)
!1849 = !DILocation(line: 1396, column: 8, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !56, line: 1396, column: 8)
!1851 = !DILocation(line: 1396, column: 12, scope: !1850)
!1852 = !DILocation(line: 1396, column: 20, scope: !1850)
!1853 = !DILocation(line: 1396, column: 24, scope: !1850)
!1854 = !DILocation(line: 1396, column: 18, scope: !1850)
!1855 = !DILocation(line: 1396, column: 8, scope: !1846)
!1856 = !DILocation(line: 1397, column: 11, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !56, line: 1397, column: 11)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !56, line: 1396, column: 34)
!1859 = !DILocation(line: 1397, column: 15, scope: !1857)
!1860 = !DILocation(line: 1397, column: 21, scope: !1857)
!1861 = !DILocation(line: 1397, column: 11, scope: !1858)
!1862 = !DILocation(line: 1401, column: 24, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1857, file: !56, line: 1397, column: 26)
!1864 = !DILocation(line: 1401, column: 28, scope: !1863)
!1865 = !DILocation(line: 1401, column: 34, scope: !1863)
!1866 = !DILocation(line: 1401, column: 41, scope: !1863)
!1867 = !DILocation(line: 1401, column: 45, scope: !1863)
!1868 = !DILocation(line: 1401, column: 39, scope: !1863)
!1869 = !DILocation(line: 1401, column: 22, scope: !1863)
!1870 = !DILocation(line: 1401, column: 55, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1863, file: !56, discriminator: 1)
!1872 = !DILocation(line: 1401, column: 59, scope: !1871)
!1873 = !DILocation(line: 1401, column: 65, scope: !1871)
!1874 = !DILocation(line: 1401, column: 22, scope: !1871)
!1875 = !DILocation(line: 1401, column: 72, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1863, file: !56, discriminator: 2)
!1877 = !DILocation(line: 1401, column: 76, scope: !1876)
!1878 = !DILocation(line: 1401, column: 22, scope: !1876)
!1879 = !DILocation(line: 1401, column: 22, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1863, file: !56, discriminator: 3)
!1881 = !DILocation(line: 1401, column: 10, scope: !1880)
!1882 = !DILocation(line: 1401, column: 14, scope: !1880)
!1883 = !DILocation(line: 1401, column: 20, scope: !1880)
!1884 = !DILocation(line: 1402, column: 7, scope: !1863)
!1885 = !DILocation(line: 1403, column: 10, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1857, file: !56, line: 1402, column: 14)
!1887 = !DILocation(line: 1403, column: 14, scope: !1886)
!1888 = !DILocation(line: 1403, column: 20, scope: !1886)
!1889 = !DILocation(line: 1405, column: 22, scope: !1858)
!1890 = !DILocation(line: 1405, column: 26, scope: !1858)
!1891 = !DILocation(line: 1405, column: 36, scope: !1858)
!1892 = !DILocation(line: 1405, column: 40, scope: !1858)
!1893 = !DILocation(line: 1405, column: 33, scope: !1858)
!1894 = !DILocation(line: 1405, column: 20, scope: !1858)
!1895 = !DILocation(line: 1405, column: 54, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1858, file: !56, discriminator: 1)
!1897 = !DILocation(line: 1405, column: 58, scope: !1896)
!1898 = !DILocation(line: 1405, column: 20, scope: !1896)
!1899 = !DILocation(line: 1405, column: 68, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1858, file: !56, discriminator: 2)
!1901 = !DILocation(line: 1405, column: 72, scope: !1900)
!1902 = !DILocation(line: 1405, column: 20, scope: !1900)
!1903 = !DILocation(line: 1405, column: 20, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1858, file: !56, discriminator: 3)
!1905 = !DILocation(line: 1405, column: 7, scope: !1904)
!1906 = !DILocation(line: 1405, column: 11, scope: !1904)
!1907 = !DILocation(line: 1405, column: 17, scope: !1904)
!1908 = !DILocation(line: 1406, column: 4, scope: !1858)
!1909 = !DILocation(line: 1407, column: 1, scope: !1846)
