; ModuleID = './libRpcChannel_la-rpcChannel.o.i'
source_filename = "./libRpcChannel_la-rpcChannel.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RpcChannelCallback = type { i8*, i32 (%struct.RpcInData*)*, i8*, i8*, i8*, i64 }
%struct.RpcInData = type { i8*, i8*, i64, i8*, i64, i32, i8*, i8* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.RpcChannelInt = type { %struct._RpcChannel, i8*, %struct._GHashTable*, %struct._GMainContext*, %struct._GSource*, i8*, %struct.RpcChannelCallback, void (%struct._RpcChannel*, i32, i8*)*, i8*, i32, i32 }
%struct._RpcChannel = type { %struct._RpcChannelFuncs*, i8*, %struct._GMainContext*, i8*, i8*, %struct.GStaticMutex, %struct.RpcIn*, i32, i32 }
%struct._RpcChannelFuncs = type { i32 (%struct._RpcChannel*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)*, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)*, void (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)* }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.RpcIn = type opaque
%struct._GHashTable = type opaque
%struct._GMainContext = type opaque
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"RpcChannel: Bad command (null) received.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bad command\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"RpcChannel: Unknown Command '%s': Handler not registered.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Unknown Command\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@gRpcHandlers = internal global [1 x %struct.RpcChannelCallback] [%struct.RpcChannelCallback { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.RpcInData*)* @RpcChannelPing, i8* null, i8* null, i8* null, i64 0 }], align 16
@.str.6 = private unnamed_addr constant [55 x i8] c"Trying to overwrite existing RPC registration for %s!\0A\00", align 1
@gUseBackdoorOnly = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"RpcChannel: Using vsocket is disabled.\0A\00", align 1
@gVSocketFailed = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"RpcChannel: Fallback to backdoor ...\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"RpcChannel: Sticking backdoor behavior ...\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"RpcChannel: Sending: %zu bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"RpcChannel: Stop RpcOut channel and try to send again ...\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"RpcChannel: Recved %zu bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"RpcChannel: Unable to create the RpcChannel object\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"RpcChannel: Unable to open the communication channel\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"RpcChannel: Request %s: reqlen=%zu, replyLen=%zu\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"XDR deserialization failed.\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"XDR serialization failed.\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"ATR %s\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"rpcChannel.c\00", align 1
@RpcChannelCheckReset.channelTimeoutAttempts = internal global i32 60, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"Failed to reset channel after %u attempts\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"RpcChannel: Resetting channel [%u]\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"RpcChannel: Channel was reset successfully.\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"RpcChannel: Clearing backdoor behavior ...\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Channel restart failed [%d]\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"RpcChannel: Error in the RPC receive loop: %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_BuildXdrCommand(i8*, i8*, i8*, i8**, i64*) #0 !dbg !342 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32 (%struct.XDR*, i8*, ...)*, align 8
  %14 = alloca %struct.XDR, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !345, metadata !346), !dbg !347
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !348, metadata !346), !dbg !349
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !350, metadata !346), !dbg !351
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !352, metadata !346), !dbg !353
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !354, metadata !346), !dbg !355
  call void @llvm.dbg.declare(metadata i8* %12, metadata !356, metadata !346), !dbg !357
  store i8 0, i8* %12, align 1, !dbg !357
  call void @llvm.dbg.declare(metadata i32 (%struct.XDR*, i8*, ...)** %13, metadata !358, metadata !346), !dbg !359
  %15 = load i8*, i8** %8, align 8, !dbg !360
  %16 = bitcast i8* %15 to i32 (%struct.XDR*, i8*, ...)*, !dbg !360
  store i32 (%struct.XDR*, i8*, ...)* %16, i32 (%struct.XDR*, i8*, ...)** %13, align 8, !dbg !359
  call void @llvm.dbg.declare(metadata %struct.XDR* %14, metadata !361, metadata !346), !dbg !362
  %17 = call %struct.XDR* @DynXdr_Create(%struct.XDR* %14), !dbg !363
  %18 = icmp eq %struct.XDR* %17, null, !dbg !365
  br i1 %18, label %19, label %20, !dbg !366

; <label>:19:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !367
  br label %55, !dbg !367

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %7, align 8, !dbg !369
  %22 = load i8*, i8** %7, align 8, !dbg !371
  %23 = call i64 @strlen(i8* %22) #8, !dbg !372
  %24 = call signext i8 @DynXdr_AppendRaw(%struct.XDR* %14, i8* %21, i64 %23), !dbg !373
  %25 = icmp ne i8 %24, 0, !dbg !375
  br i1 %25, label %27, label %26, !dbg !376

; <label>:26:                                     ; preds = %20
  br label %47, !dbg !377

; <label>:27:                                     ; preds = %20
  %28 = call signext i8 @DynXdr_AppendRaw(%struct.XDR* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !379
  %29 = icmp ne i8 %28, 0, !dbg !379
  br i1 %29, label %31, label %30, !dbg !381

; <label>:30:                                     ; preds = %27
  br label %47, !dbg !382

; <label>:31:                                     ; preds = %27
  %32 = load i32 (%struct.XDR*, i8*, ...)*, i32 (%struct.XDR*, i8*, ...)** %13, align 8, !dbg !384
  %33 = load i8*, i8** %9, align 8, !dbg !386
  %34 = call i32 (%struct.XDR*, i8*, ...) %32(%struct.XDR* %14, i8* %33, i32 0), !dbg !384
  %35 = icmp ne i32 %34, 0, !dbg !384
  br i1 %35, label %37, label %36, !dbg !387

; <label>:36:                                     ; preds = %31
  br label %47, !dbg !388

; <label>:37:                                     ; preds = %31
  %38 = call i8* @DynXdr_Get(%struct.XDR* %14), !dbg !390
  %39 = load i8**, i8*** %10, align 8, !dbg !391
  store i8* %38, i8** %39, align 8, !dbg !392
  %40 = getelementptr inbounds %struct.XDR, %struct.XDR* %14, i32 0, i32 1, !dbg !393
  %41 = load %struct.xdr_ops*, %struct.xdr_ops** %40, align 8, !dbg !393
  %42 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %41, i32 0, i32 4, !dbg !394
  %43 = load i32 (%struct.XDR*)*, i32 (%struct.XDR*)** %42, align 8, !dbg !394
  %44 = call i32 %43(%struct.XDR* %14), !dbg !395
  %45 = zext i32 %44 to i64, !dbg !395
  %46 = load i64*, i64** %11, align 8, !dbg !396
  store i64 %45, i64* %46, align 8, !dbg !397
  store i8 1, i8* %12, align 1, !dbg !398
  br label %47, !dbg !399

; <label>:47:                                     ; preds = %37, %36, %30, %26
  %48 = load i8, i8* %12, align 1, !dbg !400
  %49 = icmp ne i8 %48, 0, !dbg !401
  %50 = xor i1 %49, true, !dbg !401
  %51 = zext i1 %50 to i32, !dbg !401
  %52 = trunc i32 %51 to i8, !dbg !401
  call void @DynXdr_Destroy(%struct.XDR* %14, i8 signext %52), !dbg !402
  %53 = load i8, i8* %12, align 1, !dbg !403
  %54 = sext i8 %53 to i32, !dbg !403
  store i32 %54, i32* %6, align 4, !dbg !404
  br label %55, !dbg !404

; <label>:55:                                     ; preds = %47, %19
  %56 = load i32, i32* %6, align 4, !dbg !405
  ret i32 %56, !dbg !405
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.XDR* @DynXdr_Create(%struct.XDR*) #2

declare signext i8 @DynXdr_AppendRaw(%struct.XDR*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @DynXdr_Get(%struct.XDR*) #2

declare void @DynXdr_Destroy(%struct.XDR*, i8 signext) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_Dispatch(%struct.RpcInData*) #0 !dbg !406 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.RpcChannelCallback*, align 8
  %8 = alloca %struct.RpcChannelInt*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !407, metadata !346), !dbg !408
  call void @llvm.dbg.declare(metadata i8** %3, metadata !409, metadata !346), !dbg !410
  store i8* null, i8** %3, align 8, !dbg !410
  call void @llvm.dbg.declare(metadata i32* %4, metadata !411, metadata !346), !dbg !412
  store i32 0, i32* %4, align 4, !dbg !412
  call void @llvm.dbg.declare(metadata i64* %5, metadata !413, metadata !346), !dbg !414
  call void @llvm.dbg.declare(metadata i8* %6, metadata !415, metadata !346), !dbg !416
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %7, metadata !417, metadata !346), !dbg !419
  store %struct.RpcChannelCallback* null, %struct.RpcChannelCallback** %7, align 8, !dbg !419
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %8, metadata !420, metadata !346), !dbg !421
  %9 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !422
  %10 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %9, i32 0, i32 7, !dbg !423
  %11 = load i8*, i8** %10, align 8, !dbg !423
  %12 = bitcast i8* %11 to %struct.RpcChannelInt*, !dbg !422
  store %struct.RpcChannelInt* %12, %struct.RpcChannelInt** %8, align 8, !dbg !421
  %13 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !424
  %14 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %13, i32 0, i32 1, !dbg !425
  %15 = load i8*, i8** %14, align 8, !dbg !425
  %16 = call i8* @StrUtil_GetNextToken(i32* %4, i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !426
  store i8* %16, i8** %3, align 8, !dbg !427
  %17 = load i8*, i8** %3, align 8, !dbg !428
  %18 = icmp eq i8* %17, null, !dbg !430
  br i1 %18, label %19, label %23, !dbg !431

; <label>:19:                                     ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0)), !dbg !432
  %20 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !434
  %21 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !435
  %22 = trunc i32 %21 to i8, !dbg !435
  store i8 %22, i8* %6, align 1, !dbg !436
  br label %92, !dbg !437

; <label>:23:                                     ; preds = %1
  %24 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %8, align 8, !dbg !438
  %25 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %24, i32 0, i32 2, !dbg !440
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !440
  %27 = icmp ne %struct._GHashTable* %26, null, !dbg !441
  br i1 %27, label %28, label %35, !dbg !442

; <label>:28:                                     ; preds = %23
  %29 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %8, align 8, !dbg !443
  %30 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %29, i32 0, i32 2, !dbg !445
  %31 = load %struct._GHashTable*, %struct._GHashTable** %30, align 8, !dbg !445
  %32 = load i8*, i8** %3, align 8, !dbg !446
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %31, i8* %32), !dbg !447
  %34 = bitcast i8* %33 to %struct.RpcChannelCallback*, !dbg !447
  store %struct.RpcChannelCallback* %34, %struct.RpcChannelCallback** %7, align 8, !dbg !448
  br label %35, !dbg !449

; <label>:35:                                     ; preds = %28, %23
  %36 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !450
  %37 = icmp eq %struct.RpcChannelCallback* %36, null, !dbg !452
  br i1 %37, label %38, label %43, !dbg !453

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %3, align 8, !dbg !454
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0), i8* %39), !dbg !456
  %40 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !457
  %41 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !458
  %42 = trunc i32 %41 to i8, !dbg !458
  store i8 %42, i8* %6, align 1, !dbg !459
  br label %92, !dbg !460

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %3, align 8, !dbg !461
  %45 = call i64 @strlen(i8* %44) #8, !dbg !462
  store i64 %45, i64* %5, align 8, !dbg !463
  %46 = load i8*, i8** %3, align 8, !dbg !464
  %47 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !465
  %48 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %47, i32 0, i32 0, !dbg !466
  store i8* %46, i8** %48, align 8, !dbg !467
  %49 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !468
  %50 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %49, i32 0, i32 1, !dbg !469
  %51 = load i8*, i8** %50, align 8, !dbg !469
  %52 = load i64, i64* %5, align 8, !dbg !470
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !471
  %54 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !472
  %55 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %54, i32 0, i32 1, !dbg !473
  store i8* %53, i8** %55, align 8, !dbg !474
  %56 = load i64, i64* %5, align 8, !dbg !475
  %57 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !476
  %58 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %57, i32 0, i32 2, !dbg !477
  %59 = load i64, i64* %58, align 8, !dbg !478
  %60 = sub i64 %59, %56, !dbg !478
  store i64 %60, i64* %58, align 8, !dbg !478
  %61 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %8, align 8, !dbg !479
  %62 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %61, i32 0, i32 5, !dbg !480
  %63 = load i8*, i8** %62, align 8, !dbg !480
  %64 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !481
  %65 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %64, i32 0, i32 6, !dbg !482
  store i8* %63, i8** %65, align 8, !dbg !483
  %66 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !484
  %67 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %66, i32 0, i32 2, !dbg !485
  %68 = load i8*, i8** %67, align 8, !dbg !485
  %69 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !486
  %70 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %69, i32 0, i32 7, !dbg !487
  store i8* %68, i8** %70, align 8, !dbg !488
  %71 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !489
  %72 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %71, i32 0, i32 3, !dbg !491
  %73 = load i8*, i8** %72, align 8, !dbg !491
  %74 = icmp ne i8* %73, null, !dbg !492
  br i1 %74, label %80, label %75, !dbg !493

; <label>:75:                                     ; preds = %43
  %76 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !494
  %77 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %76, i32 0, i32 4, !dbg !496
  %78 = load i8*, i8** %77, align 8, !dbg !496
  %79 = icmp ne i8* %78, null, !dbg !497
  br i1 %79, label %80, label %84, !dbg !498

; <label>:80:                                     ; preds = %75, %43
  %81 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !499
  %82 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !501
  %83 = call signext i8 @RpcChannelXdrWrapper(%struct.RpcInData* %81, %struct.RpcChannelCallback* %82), !dbg !502
  store i8 %83, i8* %6, align 1, !dbg !503
  br label %91, !dbg !504

; <label>:84:                                     ; preds = %75
  %85 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %7, align 8, !dbg !505
  %86 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %85, i32 0, i32 1, !dbg !507
  %87 = load i32 (%struct.RpcInData*)*, i32 (%struct.RpcInData*)** %86, align 8, !dbg !507
  %88 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !508
  %89 = call i32 %87(%struct.RpcInData* %88), !dbg !505
  %90 = trunc i32 %89 to i8, !dbg !505
  store i8 %90, i8* %6, align 1, !dbg !509
  br label %91

; <label>:91:                                     ; preds = %84, %80
  br label %92, !dbg !510

; <label>:92:                                     ; preds = %91, %38, %19
  %93 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !511
  %94 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %93, i32 0, i32 0, !dbg !512
  store i8* null, i8** %94, align 8, !dbg !513
  %95 = load i8*, i8** %3, align 8, !dbg !514
  call void @free(i8* %95) #6, !dbg !515
  %96 = load i8, i8* %6, align 1, !dbg !516
  %97 = sext i8 %96 to i32, !dbg !516
  ret i32 %97, !dbg !517
}

declare i8* @StrUtil_GetNextToken(i32*, i8*, i8*) #2

declare void @Debug(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_SetRetVals(%struct.RpcInData*, i8*, i32) #0 !dbg !518 {
  %4 = alloca %struct.RpcInData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %4, metadata !521, metadata !346), !dbg !522
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !523, metadata !346), !dbg !524
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !525, metadata !346), !dbg !526
  %7 = load i8*, i8** %5, align 8, !dbg !527
  %8 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !528
  %9 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %8, i32 0, i32 3, !dbg !529
  store i8* %7, i8** %9, align 8, !dbg !530
  %10 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !531
  %11 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %10, i32 0, i32 3, !dbg !532
  %12 = load i8*, i8** %11, align 8, !dbg !532
  %13 = call i64 @strlen(i8* %12) #8, !dbg !533
  %14 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !534
  %15 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %14, i32 0, i32 4, !dbg !535
  store i64 %13, i64* %15, align 8, !dbg !536
  %16 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !537
  %17 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 5, !dbg !538
  store i32 0, i32* %17, align 8, !dbg !539
  %18 = load i32, i32* %6, align 4, !dbg !540
  ret i32 %18, !dbg !541
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @RpcChannelXdrWrapper(%struct.RpcInData*, %struct.RpcChannelCallback*) #0 !dbg !542 {
  %3 = alloca %struct.RpcInData*, align 8
  %4 = alloca %struct.RpcChannelCallback*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.RpcInData, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.XDR, align 8
  %9 = alloca i32 (%struct.XDR*, i8*, ...)*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %3, metadata !545, metadata !346), !dbg !546
  store %struct.RpcChannelCallback* %1, %struct.RpcChannelCallback** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %4, metadata !547, metadata !346), !dbg !548
  call void @llvm.dbg.declare(metadata i8* %5, metadata !549, metadata !346), !dbg !550
  call void @llvm.dbg.declare(metadata %struct.RpcInData* %6, metadata !551, metadata !346), !dbg !552
  call void @llvm.dbg.declare(metadata i8** %7, metadata !553, metadata !346), !dbg !554
  store i8* null, i8** %7, align 8, !dbg !554
  %10 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 5, !dbg !555
  store i32 0, i32* %10, align 8, !dbg !556
  %11 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !557
  store i8* null, i8** %11, align 8, !dbg !558
  %12 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !559
  %13 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %12, i32 0, i32 3, !dbg !561
  %14 = load i8*, i8** %13, align 8, !dbg !561
  %15 = icmp ne i8* %14, null, !dbg !562
  br i1 %15, label %16, label %82, !dbg !563

; <label>:16:                                     ; preds = %2
  %17 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !564
  %18 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %17, i32 0, i32 5, !dbg !566
  %19 = load i64, i64* %18, align 8, !dbg !566
  %20 = call noalias i8* @malloc(i64 %19) #6, !dbg !567
  store i8* %20, i8** %7, align 8, !dbg !568
  %21 = load i8*, i8** %7, align 8, !dbg !569
  %22 = icmp eq i8* %21, null, !dbg !571
  br i1 %22, label %23, label %27, !dbg !572

; <label>:23:                                     ; preds = %16
  %24 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !573
  %25 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !575
  %26 = trunc i32 %25 to i8, !dbg !575
  store i8 %26, i8* %5, align 1, !dbg !576
  br label %172, !dbg !577

; <label>:27:                                     ; preds = %16
  %28 = load i8*, i8** %7, align 8, !dbg !578
  %29 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !579
  %30 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %29, i32 0, i32 5, !dbg !580
  %31 = load i64, i64* %30, align 8, !dbg !580
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 %31, i32 1, i1 false), !dbg !581
  %32 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !582
  %33 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %32, i32 0, i32 1, !dbg !584
  %34 = load i8*, i8** %33, align 8, !dbg !584
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !585
  %36 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !586
  %37 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %36, i32 0, i32 2, !dbg !587
  %38 = load i64, i64* %37, align 8, !dbg !587
  %39 = sub i64 %38, 1, !dbg !588
  %40 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !589
  %41 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %40, i32 0, i32 3, !dbg !590
  %42 = load i8*, i8** %41, align 8, !dbg !590
  %43 = load i8*, i8** %7, align 8, !dbg !591
  %44 = call signext i8 @XdrUtil_Deserialize(i8* %35, i64 %39, i8* %42, i8* %43), !dbg !592
  %45 = icmp ne i8 %44, 0, !dbg !592
  br i1 %45, label %51, label %46, !dbg !593

; <label>:46:                                     ; preds = %27
  %47 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !594
  %48 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i32 0), !dbg !596
  %49 = trunc i32 %48 to i8, !dbg !596
  store i8 %49, i8* %5, align 1, !dbg !597
  %50 = load i8*, i8** %7, align 8, !dbg !598
  call void @free(i8* %50) #6, !dbg !599
  br label %172, !dbg !600

; <label>:51:                                     ; preds = %27
  %52 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !601
  %53 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %52, i32 0, i32 0, !dbg !602
  %54 = load i8*, i8** %53, align 8, !dbg !602
  %55 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 0, !dbg !603
  store i8* %54, i8** %55, align 8, !dbg !604
  %56 = load i8*, i8** %7, align 8, !dbg !605
  %57 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 1, !dbg !606
  store i8* %56, i8** %57, align 8, !dbg !607
  %58 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !608
  %59 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %58, i32 0, i32 5, !dbg !609
  %60 = load i64, i64* %59, align 8, !dbg !609
  %61 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 2, !dbg !610
  store i64 %60, i64* %61, align 8, !dbg !611
  %62 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !612
  %63 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %62, i32 0, i32 3, !dbg !613
  %64 = load i8*, i8** %63, align 8, !dbg !613
  %65 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !614
  store i8* %64, i8** %65, align 8, !dbg !615
  %66 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !616
  %67 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %66, i32 0, i32 4, !dbg !617
  %68 = load i64, i64* %67, align 8, !dbg !617
  %69 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 4, !dbg !618
  store i64 %68, i64* %69, align 8, !dbg !619
  %70 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !620
  %71 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %70, i32 0, i32 5, !dbg !621
  %72 = load i32, i32* %71, align 8, !dbg !621
  %73 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 5, !dbg !622
  store i32 %72, i32* %73, align 8, !dbg !623
  %74 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !624
  %75 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %74, i32 0, i32 6, !dbg !625
  %76 = load i8*, i8** %75, align 8, !dbg !625
  %77 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 6, !dbg !626
  store i8* %76, i8** %77, align 8, !dbg !627
  %78 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !628
  %79 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %78, i32 0, i32 2, !dbg !629
  %80 = load i8*, i8** %79, align 8, !dbg !629
  %81 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 7, !dbg !630
  store i8* %80, i8** %81, align 8, !dbg !631
  br label %86, !dbg !632

; <label>:82:                                     ; preds = %2
  %83 = bitcast %struct.RpcInData* %6 to i8*, !dbg !633
  %84 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !635
  %85 = bitcast %struct.RpcInData* %84 to i8*, !dbg !633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %85, i64 64, i32 8, i1 false), !dbg !633
  br label %86

; <label>:86:                                     ; preds = %82, %51
  %87 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !636
  %88 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %87, i32 0, i32 1, !dbg !637
  %89 = load i32 (%struct.RpcInData*)*, i32 (%struct.RpcInData*)** %88, align 8, !dbg !637
  %90 = call i32 %89(%struct.RpcInData* %6), !dbg !636
  %91 = trunc i32 %90 to i8, !dbg !636
  store i8 %91, i8* %5, align 1, !dbg !638
  %92 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !639
  %93 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %92, i32 0, i32 3, !dbg !641
  %94 = load i8*, i8** %93, align 8, !dbg !641
  %95 = icmp ne i8* %94, null, !dbg !642
  br i1 %95, label %96, label %116, !dbg !643

; <label>:96:                                     ; preds = %86
  %97 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !644
  %98 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %97, i32 0, i32 3, !dbg !646
  %99 = load i8*, i8** %98, align 8, !dbg !646
  %100 = bitcast i8* %99 to i32 (%struct.XDR*, i8*, ...)*, !dbg !647
  %101 = load i8*, i8** %7, align 8, !dbg !648
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* %100, i8* %101) #6, !dbg !649
  %102 = load i8*, i8** %7, align 8, !dbg !650
  call void @free(i8* %102) #6, !dbg !651
  %103 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 1, !dbg !652
  store i8* null, i8** %103, align 8, !dbg !653
  %104 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !654
  %105 = load i8*, i8** %104, align 8, !dbg !654
  %106 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !655
  %107 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %106, i32 0, i32 3, !dbg !656
  store i8* %105, i8** %107, align 8, !dbg !657
  %108 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 4, !dbg !658
  %109 = load i64, i64* %108, align 8, !dbg !658
  %110 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !659
  %111 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %110, i32 0, i32 4, !dbg !660
  store i64 %109, i64* %111, align 8, !dbg !661
  %112 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 5, !dbg !662
  %113 = load i32, i32* %112, align 8, !dbg !662
  %114 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !663
  %115 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %114, i32 0, i32 5, !dbg !664
  store i32 %113, i32* %115, align 8, !dbg !665
  br label %116, !dbg !666

; <label>:116:                                    ; preds = %96, %86
  %117 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !667
  %118 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %117, i32 0, i32 4, !dbg !669
  %119 = load i8*, i8** %118, align 8, !dbg !669
  %120 = icmp ne i8* %119, null, !dbg !670
  br i1 %120, label %121, label %171, !dbg !671

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !672
  %123 = load i8*, i8** %122, align 8, !dbg !672
  %124 = icmp ne i8* %123, null, !dbg !674
  br i1 %124, label %125, label %171, !dbg !675

; <label>:125:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata %struct.XDR* %8, metadata !676, metadata !346), !dbg !678
  call void @llvm.dbg.declare(metadata i32 (%struct.XDR*, i8*, ...)** %9, metadata !679, metadata !346), !dbg !680
  %126 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !681
  %127 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %126, i32 0, i32 4, !dbg !682
  %128 = load i8*, i8** %127, align 8, !dbg !682
  %129 = bitcast i8* %128 to i32 (%struct.XDR*, i8*, ...)*, !dbg !681
  store i32 (%struct.XDR*, i8*, ...)* %129, i32 (%struct.XDR*, i8*, ...)** %9, align 8, !dbg !680
  %130 = call %struct.XDR* @DynXdr_Create(%struct.XDR* %8), !dbg !683
  %131 = icmp eq %struct.XDR* %130, null, !dbg !685
  br i1 %131, label %132, label %136, !dbg !686

; <label>:132:                                    ; preds = %125
  %133 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !687
  %134 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !689
  %135 = trunc i32 %134 to i8, !dbg !689
  store i8 %135, i8* %5, align 1, !dbg !690
  br label %172, !dbg !691

; <label>:136:                                    ; preds = %125
  %137 = load i32 (%struct.XDR*, i8*, ...)*, i32 (%struct.XDR*, i8*, ...)** %9, align 8, !dbg !692
  %138 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !694
  %139 = load i8*, i8** %138, align 8, !dbg !694
  %140 = call i32 (%struct.XDR*, i8*, ...) %137(%struct.XDR* %8, i8* %139, i32 0), !dbg !692
  %141 = icmp ne i32 %140, 0, !dbg !692
  br i1 %141, label %146, label %142, !dbg !695

; <label>:142:                                    ; preds = %136
  %143 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !696
  %144 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !698
  %145 = trunc i32 %144 to i8, !dbg !698
  store i8 %145, i8* %5, align 1, !dbg !699
  call void @DynXdr_Destroy(%struct.XDR* %8, i8 signext 1), !dbg !700
  br label %172, !dbg !701

; <label>:146:                                    ; preds = %136
  %147 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 5, !dbg !702
  %148 = load i32, i32* %147, align 8, !dbg !702
  %149 = icmp ne i32 %148, 0, !dbg !704
  br i1 %149, label %150, label %157, !dbg !705

; <label>:150:                                    ; preds = %146
  %151 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !706
  %152 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %151, i32 0, i32 4, !dbg !708
  %153 = load i8*, i8** %152, align 8, !dbg !708
  %154 = bitcast i8* %153 to i32 (%struct.XDR*, i8*, ...)*, !dbg !709
  %155 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !710
  %156 = load i8*, i8** %155, align 8, !dbg !710
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* %154, i8* %156) #6, !dbg !711
  br label %157, !dbg !712

; <label>:157:                                    ; preds = %150, %146
  %158 = call i8* @DynXdr_Get(%struct.XDR* %8), !dbg !713
  %159 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !714
  %160 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %159, i32 0, i32 3, !dbg !715
  store i8* %158, i8** %160, align 8, !dbg !716
  %161 = getelementptr inbounds %struct.XDR, %struct.XDR* %8, i32 0, i32 1, !dbg !717
  %162 = load %struct.xdr_ops*, %struct.xdr_ops** %161, align 8, !dbg !717
  %163 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %162, i32 0, i32 4, !dbg !718
  %164 = load i32 (%struct.XDR*)*, i32 (%struct.XDR*)** %163, align 8, !dbg !718
  %165 = call i32 %164(%struct.XDR* %8), !dbg !719
  %166 = zext i32 %165 to i64, !dbg !719
  %167 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !720
  %168 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %167, i32 0, i32 4, !dbg !721
  store i64 %166, i64* %168, align 8, !dbg !722
  %169 = load %struct.RpcInData*, %struct.RpcInData** %3, align 8, !dbg !723
  %170 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %169, i32 0, i32 5, !dbg !724
  store i32 1, i32* %170, align 8, !dbg !725
  call void @DynXdr_Destroy(%struct.XDR* %8, i8 signext 0), !dbg !726
  br label %171, !dbg !727

; <label>:171:                                    ; preds = %157, %121, %116
  br label %172, !dbg !728

; <label>:172:                                    ; preds = %171, %142, %132, %46, %23
  %173 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 5, !dbg !730
  %174 = load i32, i32* %173, align 8, !dbg !730
  %175 = icmp ne i32 %174, 0, !dbg !732
  br i1 %175, label %176, label %183, !dbg !733

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !734
  %178 = load i8*, i8** %177, align 8, !dbg !734
  %179 = icmp ne i8* %178, null, !dbg !736
  br i1 %179, label %180, label %183, !dbg !737

; <label>:180:                                    ; preds = %176
  %181 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %6, i32 0, i32 3, !dbg !738
  %182 = load i8*, i8** %181, align 8, !dbg !738
  call void @g_free(i8* %182), !dbg !740
  br label %183, !dbg !741

; <label>:183:                                    ; preds = %180, %176, %172
  %184 = load i8, i8* %5, align 1, !dbg !742
  ret i8 %184, !dbg !743
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @RpcChannel_Setup(%struct._RpcChannel*, i8*, %struct._GMainContext*, i8*, void (%struct._RpcChannel*, i32, i8*)*, i8*) #0 !dbg !744 {
  %7 = alloca %struct._RpcChannel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GMainContext*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (%struct._RpcChannel*, i32, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.RpcChannelInt*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %7, metadata !749, metadata !346), !dbg !750
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !751, metadata !346), !dbg !752
  store %struct._GMainContext* %2, %struct._GMainContext** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GMainContext** %9, metadata !753, metadata !346), !dbg !754
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !755, metadata !346), !dbg !756
  store void (%struct._RpcChannel*, i32, i8*)* %4, void (%struct._RpcChannel*, i32, i8*)** %11, align 8
  call void @llvm.dbg.declare(metadata void (%struct._RpcChannel*, i32, i8*)** %11, metadata !757, metadata !346), !dbg !758
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !759, metadata !346), !dbg !760
  call void @llvm.dbg.declare(metadata i64* %13, metadata !761, metadata !346), !dbg !762
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %14, metadata !763, metadata !346), !dbg !764
  %15 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !765
  %16 = bitcast %struct._RpcChannel* %15 to %struct.RpcChannelInt*, !dbg !766
  store %struct.RpcChannelInt* %16, %struct.RpcChannelInt** %14, align 8, !dbg !764
  %17 = load i8*, i8** %8, align 8, !dbg !767
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !768
  %19 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !769
  %20 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %19, i32 0, i32 1, !dbg !770
  store i8* %18, i8** %20, align 8, !dbg !771
  %21 = load i8*, i8** %10, align 8, !dbg !772
  %22 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !773
  %23 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %22, i32 0, i32 5, !dbg !774
  store i8* %21, i8** %23, align 8, !dbg !775
  %24 = load %struct._GMainContext*, %struct._GMainContext** %9, align 8, !dbg !776
  %25 = call %struct._GMainContext* @g_main_context_ref(%struct._GMainContext* %24), !dbg !777
  %26 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !778
  %27 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %26, i32 0, i32 3, !dbg !779
  store %struct._GMainContext* %25, %struct._GMainContext** %27, align 8, !dbg !780
  %28 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %11, align 8, !dbg !781
  %29 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !782
  %30 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %29, i32 0, i32 7, !dbg !783
  store void (%struct._RpcChannel*, i32, i8*)* %28, void (%struct._RpcChannel*, i32, i8*)** %30, align 8, !dbg !784
  %31 = load i8*, i8** %12, align 8, !dbg !785
  %32 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !786
  %33 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %32, i32 0, i32 8, !dbg !787
  store i8* %31, i8** %33, align 8, !dbg !788
  %34 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !789
  %35 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %34, i32 0, i32 6, !dbg !790
  %36 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %35, i32 0, i32 0, !dbg !791
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %36, align 8, !dbg !792
  %37 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !793
  %38 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %37, i32 0, i32 6, !dbg !794
  %39 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %38, i32 0, i32 1, !dbg !795
  store i32 (%struct.RpcInData*)* @RpcChannelReset, i32 (%struct.RpcInData*)** %39, align 8, !dbg !796
  %40 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !797
  %41 = bitcast %struct._RpcChannel* %40 to i8*, !dbg !797
  %42 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !798
  %43 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %42, i32 0, i32 6, !dbg !799
  %44 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %43, i32 0, i32 2, !dbg !800
  store i8* %41, i8** %44, align 8, !dbg !801
  %45 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !802
  %46 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %14, align 8, !dbg !803
  %47 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %46, i32 0, i32 6, !dbg !804
  call void @RpcChannel_RegisterCallback(%struct._RpcChannel* %45, %struct.RpcChannelCallback* %47), !dbg !805
  store i64 0, i64* %13, align 8, !dbg !806
  br label %48, !dbg !808

; <label>:48:                                     ; preds = %55, %6
  %49 = load i64, i64* %13, align 8, !dbg !809
  %50 = icmp ult i64 %49, 1, !dbg !812
  br i1 %50, label %51, label %58, !dbg !813

; <label>:51:                                     ; preds = %48
  %52 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !814
  %53 = load i64, i64* %13, align 8, !dbg !816
  %54 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* @gRpcHandlers, i64 0, i64 %53, !dbg !817
  call void @RpcChannel_RegisterCallback(%struct._RpcChannel* %52, %struct.RpcChannelCallback* %54), !dbg !818
  br label %55, !dbg !819

; <label>:55:                                     ; preds = %51
  %56 = load i64, i64* %13, align 8, !dbg !820
  %57 = add i64 %56, 1, !dbg !820
  store i64 %57, i64* %13, align 8, !dbg !820
  br label %48, !dbg !822, !llvm.loop !823

; <label>:58:                                     ; preds = %48
  %59 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !825
  %60 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %59, i32 0, i32 0, !dbg !827
  %61 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %60, align 8, !dbg !827
  %62 = icmp ne %struct._RpcChannelFuncs* %61, null, !dbg !828
  br i1 %62, label %63, label %80, !dbg !829

; <label>:63:                                     ; preds = %58
  %64 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !830
  %65 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %64, i32 0, i32 0, !dbg !832
  %66 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %65, align 8, !dbg !832
  %67 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %66, i32 0, i32 3, !dbg !833
  %68 = load void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)*, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)** %67, align 8, !dbg !833
  %69 = icmp ne void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)* %68, null, !dbg !834
  br i1 %69, label %70, label %80, !dbg !835

; <label>:70:                                     ; preds = %63
  %71 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !836
  %72 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %71, i32 0, i32 0, !dbg !838
  %73 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %72, align 8, !dbg !838
  %74 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %73, i32 0, i32 3, !dbg !839
  %75 = load void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)*, void (%struct._RpcChannel*, %struct._GMainContext*, i8*, i8*)** %74, align 8, !dbg !839
  %76 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !840
  %77 = load %struct._GMainContext*, %struct._GMainContext** %9, align 8, !dbg !841
  %78 = load i8*, i8** %8, align 8, !dbg !842
  %79 = load i8*, i8** %10, align 8, !dbg !843
  call void %75(%struct._RpcChannel* %76, %struct._GMainContext* %77, i8* %78, i8* %79), !dbg !836
  br label %91, !dbg !844

; <label>:80:                                     ; preds = %63, %58
  %81 = load %struct._GMainContext*, %struct._GMainContext** %9, align 8, !dbg !845
  %82 = call %struct._GMainContext* @g_main_context_ref(%struct._GMainContext* %81), !dbg !847
  %83 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !848
  %84 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %83, i32 0, i32 2, !dbg !849
  store %struct._GMainContext* %82, %struct._GMainContext** %84, align 8, !dbg !850
  %85 = load %struct._GMainContext*, %struct._GMainContext** %9, align 8, !dbg !851
  %86 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !852
  %87 = bitcast %struct._RpcChannel* %86 to i8*, !dbg !852
  %88 = call %struct.RpcIn* @RpcIn_Construct(%struct._GMainContext* %85, i32 (%struct.RpcInData*)* @RpcChannel_Dispatch, i8* %87), !dbg !853
  %89 = load %struct._RpcChannel*, %struct._RpcChannel** %7, align 8, !dbg !854
  %90 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %89, i32 0, i32 6, !dbg !855
  store %struct.RpcIn* %88, %struct.RpcIn** %90, align 8, !dbg !856
  br label %91

; <label>:91:                                     ; preds = %80, %70
  ret void, !dbg !857
}

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GMainContext* @g_main_context_ref(%struct._GMainContext*) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcChannelReset(%struct.RpcInData*) #0 !dbg !858 {
  %2 = alloca %struct.RpcInData*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.RpcChannelInt*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !859, metadata !346), !dbg !860
  call void @llvm.dbg.declare(metadata i8** %3, metadata !861, metadata !346), !dbg !862
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %4, metadata !863, metadata !346), !dbg !864
  %5 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !865
  %6 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %5, i32 0, i32 7, !dbg !866
  %7 = load i8*, i8** %6, align 8, !dbg !866
  %8 = bitcast i8* %7 to %struct.RpcChannelInt*, !dbg !865
  store %struct.RpcChannelInt* %8, %struct.RpcChannelInt** %4, align 8, !dbg !864
  %9 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !867
  %10 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %9, i32 0, i32 4, !dbg !869
  %11 = load %struct._GSource*, %struct._GSource** %10, align 8, !dbg !869
  %12 = icmp eq %struct._GSource* %11, null, !dbg !870
  br i1 %12, label %13, label %32, !dbg !871

; <label>:13:                                     ; preds = %1
  %14 = call %struct._GSource* @g_idle_source_new(), !dbg !872
  %15 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !874
  %16 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %15, i32 0, i32 4, !dbg !875
  store %struct._GSource* %14, %struct._GSource** %16, align 8, !dbg !876
  %17 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !877
  %18 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %17, i32 0, i32 4, !dbg !878
  %19 = load %struct._GSource*, %struct._GSource** %18, align 8, !dbg !878
  call void @g_source_set_priority(%struct._GSource* %19, i32 -100), !dbg !879
  %20 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !880
  %21 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %20, i32 0, i32 4, !dbg !881
  %22 = load %struct._GSource*, %struct._GSource** %21, align 8, !dbg !881
  %23 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !882
  %24 = bitcast %struct.RpcChannelInt* %23 to i8*, !dbg !882
  call void @g_source_set_callback(%struct._GSource* %22, i32 (i8*)* @RpcChannelCheckReset, i8* %24, void (i8*)* null), !dbg !883
  %25 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !884
  %26 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %25, i32 0, i32 4, !dbg !885
  %27 = load %struct._GSource*, %struct._GSource** %26, align 8, !dbg !885
  %28 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !886
  %29 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %28, i32 0, i32 3, !dbg !887
  %30 = load %struct._GMainContext*, %struct._GMainContext** %29, align 8, !dbg !887
  %31 = call i32 @g_source_attach(%struct._GSource* %27, %struct._GMainContext* %30), !dbg !888
  br label %32, !dbg !889

; <label>:32:                                     ; preds = %13, %1
  %33 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !890
  %34 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %33, i32 0, i32 1, !dbg !891
  %35 = load i8*, i8** %34, align 8, !dbg !891
  %36 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* %35), !dbg !892
  store i8* %36, i8** %3, align 8, !dbg !893
  %37 = load i8*, i8** %3, align 8, !dbg !894
  %38 = icmp ne i8* %37, null, !dbg !897
  %39 = xor i1 %38, true, !dbg !897
  %40 = zext i1 %39 to i32, !dbg !897
  %41 = sext i32 %40 to i64, !dbg !898
  %42 = icmp ne i64 %41, 0, !dbg !899
  br i1 %42, label %43, label %44, !dbg !900

; <label>:43:                                     ; preds = %32
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i32 213) #9, !dbg !901
  unreachable, !dbg !901

; <label>:44:                                     ; preds = %32
  %45 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !904
  %46 = load i8*, i8** %3, align 8, !dbg !905
  %47 = call i32 @RpcChannel_SetRetValsF(%struct.RpcInData* %45, i8* %46, i32 1), !dbg !906
  ret i32 %47, !dbg !907
}

; Function Attrs: nounwind uwtable
define void @RpcChannel_RegisterCallback(%struct._RpcChannel*, %struct.RpcChannelCallback*) #0 !dbg !908 {
  %3 = alloca %struct._RpcChannel*, align 8
  %4 = alloca %struct.RpcChannelCallback*, align 8
  %5 = alloca %struct.RpcChannelInt*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !911, metadata !346), !dbg !912
  store %struct.RpcChannelCallback* %1, %struct.RpcChannelCallback** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %4, metadata !913, metadata !346), !dbg !914
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %5, metadata !915, metadata !346), !dbg !916
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !917
  %7 = bitcast %struct._RpcChannel* %6 to %struct.RpcChannelInt*, !dbg !918
  store %struct.RpcChannelInt* %7, %struct.RpcChannelInt** %5, align 8, !dbg !916
  %8 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !919
  %9 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %8, i32 0, i32 2, !dbg !921
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !921
  %11 = icmp eq %struct._GHashTable* %10, null, !dbg !922
  br i1 %11, label %12, label %16, !dbg !923

; <label>:12:                                     ; preds = %2
  %13 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !924
  %14 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !926
  %15 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %14, i32 0, i32 2, !dbg !927
  store %struct._GHashTable* %13, %struct._GHashTable** %15, align 8, !dbg !928
  br label %16, !dbg !929

; <label>:16:                                     ; preds = %12, %2
  %17 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !930
  %18 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %17, i32 0, i32 2, !dbg !932
  %19 = load %struct._GHashTable*, %struct._GHashTable** %18, align 8, !dbg !932
  %20 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !933
  %21 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %20, i32 0, i32 0, !dbg !934
  %22 = load i8*, i8** %21, align 8, !dbg !934
  %23 = call i8* @g_hash_table_lookup(%struct._GHashTable* %19, i8* %22), !dbg !935
  %24 = icmp ne i8* %23, null, !dbg !936
  br i1 %24, label %25, label %29, !dbg !937

; <label>:25:                                     ; preds = %16
  %26 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !938
  %27 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %26, i32 0, i32 0, !dbg !940
  %28 = load i8*, i8** %27, align 8, !dbg !940
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* %28) #9, !dbg !941
  unreachable, !dbg !941

; <label>:29:                                     ; preds = %16
  %30 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !942
  %31 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %30, i32 0, i32 2, !dbg !943
  %32 = load %struct._GHashTable*, %struct._GHashTable** %31, align 8, !dbg !943
  %33 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !944
  %34 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %33, i32 0, i32 0, !dbg !945
  %35 = load i8*, i8** %34, align 8, !dbg !945
  %36 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !946
  %37 = bitcast %struct.RpcChannelCallback* %36 to i8*, !dbg !946
  %38 = call i32 @g_hash_table_insert(%struct._GHashTable* %32, i8* %35, i8* %37), !dbg !947
  ret void, !dbg !948
}

declare %struct.RpcIn* @RpcIn_Construct(%struct._GMainContext*, i32 (%struct.RpcInData*)*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @RpcChannel_UnregisterCallback(%struct._RpcChannel*, %struct.RpcChannelCallback*) #0 !dbg !949 {
  %3 = alloca %struct._RpcChannel*, align 8
  %4 = alloca %struct.RpcChannelCallback*, align 8
  %5 = alloca %struct.RpcChannelInt*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !950, metadata !346), !dbg !951
  store %struct.RpcChannelCallback* %1, %struct.RpcChannelCallback** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcChannelCallback** %4, metadata !952, metadata !346), !dbg !953
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %5, metadata !954, metadata !346), !dbg !955
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !956
  %7 = bitcast %struct._RpcChannel* %6 to %struct.RpcChannelInt*, !dbg !957
  store %struct.RpcChannelInt* %7, %struct.RpcChannelInt** %5, align 8, !dbg !955
  %8 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !958
  %9 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %8, i32 0, i32 2, !dbg !960
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !960
  %11 = icmp ne %struct._GHashTable* %10, null, !dbg !961
  br i1 %11, label %12, label %20, !dbg !962

; <label>:12:                                     ; preds = %2
  %13 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !963
  %14 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %13, i32 0, i32 2, !dbg !965
  %15 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !965
  %16 = load %struct.RpcChannelCallback*, %struct.RpcChannelCallback** %4, align 8, !dbg !966
  %17 = getelementptr inbounds %struct.RpcChannelCallback, %struct.RpcChannelCallback* %16, i32 0, i32 0, !dbg !967
  %18 = load i8*, i8** %17, align 8, !dbg !967
  %19 = call i32 @g_hash_table_remove(%struct._GHashTable* %15, i8* %18), !dbg !968
  br label %20, !dbg !969

; <label>:20:                                     ; preds = %12, %2
  ret void, !dbg !970
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._RpcChannel* @RpcChannel_Create() #0 !dbg !971 {
  %1 = alloca %struct.RpcChannelInt*, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %1, metadata !974, metadata !346), !dbg !975
  %2 = call noalias i8* @g_malloc0_n(i64 1, i64 216), !dbg !976
  %3 = bitcast i8* %2 to %struct.RpcChannelInt*, !dbg !977
  store %struct.RpcChannelInt* %3, %struct.RpcChannelInt** %1, align 8, !dbg !975
  %4 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %1, align 8, !dbg !978
  %5 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %4, i32 0, i32 0, !dbg !979
  ret %struct._RpcChannel* %5, !dbg !980
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_Destroy(%struct._RpcChannel*) #0 !dbg !981 {
  %2 = alloca %struct._RpcChannel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.RpcChannelInt*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !982, metadata !346), !dbg !983
  call void @llvm.dbg.declare(metadata i64* %3, metadata !984, metadata !346), !dbg !985
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %4, metadata !986, metadata !346), !dbg !987
  %5 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !988
  %6 = bitcast %struct._RpcChannel* %5 to %struct.RpcChannelInt*, !dbg !989
  store %struct.RpcChannelInt* %6, %struct.RpcChannelInt** %4, align 8, !dbg !987
  %7 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !990
  %8 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %7, i32 0, i32 0, !dbg !992
  %9 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %8, i32 0, i32 0, !dbg !993
  %10 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %9, align 8, !dbg !993
  %11 = icmp ne %struct._RpcChannelFuncs* %10, null, !dbg !994
  br i1 %11, label %12, label %28, !dbg !995

; <label>:12:                                     ; preds = %1
  %13 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !996
  %14 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %13, i32 0, i32 0, !dbg !998
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 0, !dbg !999
  %16 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !999
  %17 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %16, i32 0, i32 4, !dbg !1000
  %18 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %17, align 8, !dbg !1000
  %19 = icmp ne void (%struct._RpcChannel*)* %18, null, !dbg !1001
  br i1 %19, label %20, label %28, !dbg !1002

; <label>:20:                                     ; preds = %12
  %21 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1003
  %22 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %21, i32 0, i32 0, !dbg !1005
  %23 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %22, i32 0, i32 0, !dbg !1006
  %24 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %23, align 8, !dbg !1006
  %25 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %24, i32 0, i32 4, !dbg !1007
  %26 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %25, align 8, !dbg !1007
  %27 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1008
  call void %26(%struct._RpcChannel* %27), !dbg !1003
  br label %28, !dbg !1009

; <label>:28:                                     ; preds = %20, %12, %1
  %29 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1010
  %30 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1011
  %31 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %30, i32 0, i32 6, !dbg !1012
  call void @RpcChannel_UnregisterCallback(%struct._RpcChannel* %29, %struct.RpcChannelCallback* %31), !dbg !1013
  store i64 0, i64* %3, align 8, !dbg !1014
  br label %32, !dbg !1016

; <label>:32:                                     ; preds = %39, %28
  %33 = load i64, i64* %3, align 8, !dbg !1017
  %34 = icmp ult i64 %33, 1, !dbg !1020
  br i1 %34, label %35, label %42, !dbg !1021

; <label>:35:                                     ; preds = %32
  %36 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1022
  %37 = load i64, i64* %3, align 8, !dbg !1024
  %38 = getelementptr inbounds [1 x %struct.RpcChannelCallback], [1 x %struct.RpcChannelCallback]* @gRpcHandlers, i64 0, i64 %37, !dbg !1025
  call void @RpcChannel_UnregisterCallback(%struct._RpcChannel* %36, %struct.RpcChannelCallback* %38), !dbg !1026
  br label %39, !dbg !1027

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* %3, align 8, !dbg !1028
  %41 = add i64 %40, 1, !dbg !1028
  store i64 %41, i64* %3, align 8, !dbg !1028
  br label %32, !dbg !1030, !llvm.loop !1031

; <label>:42:                                     ; preds = %32
  %43 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1033
  %44 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %43, i32 0, i32 2, !dbg !1035
  %45 = load %struct._GHashTable*, %struct._GHashTable** %44, align 8, !dbg !1035
  %46 = icmp ne %struct._GHashTable* %45, null, !dbg !1036
  br i1 %46, label %47, label %53, !dbg !1037

; <label>:47:                                     ; preds = %42
  %48 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1038
  %49 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %48, i32 0, i32 2, !dbg !1040
  %50 = load %struct._GHashTable*, %struct._GHashTable** %49, align 8, !dbg !1040
  call void @g_hash_table_destroy(%struct._GHashTable* %50), !dbg !1041
  %51 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1042
  %52 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %51, i32 0, i32 2, !dbg !1043
  store %struct._GHashTable* null, %struct._GHashTable** %52, align 8, !dbg !1044
  br label %53, !dbg !1045

; <label>:53:                                     ; preds = %47, %42
  %54 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1046
  %55 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %54, i32 0, i32 7, !dbg !1047
  store void (%struct._RpcChannel*, i32, i8*)* null, void (%struct._RpcChannel*, i32, i8*)** %55, align 8, !dbg !1048
  %56 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1049
  %57 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %56, i32 0, i32 8, !dbg !1050
  store i8* null, i8** %57, align 8, !dbg !1051
  %58 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1052
  %59 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %58, i32 0, i32 5, !dbg !1053
  store i8* null, i8** %59, align 8, !dbg !1054
  %60 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1055
  %61 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %60, i32 0, i32 1, !dbg !1056
  %62 = load i8*, i8** %61, align 8, !dbg !1056
  call void @g_free(i8* %62), !dbg !1057
  %63 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1058
  %64 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %63, i32 0, i32 1, !dbg !1059
  store i8* null, i8** %64, align 8, !dbg !1060
  %65 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1061
  %66 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %65, i32 0, i32 3, !dbg !1063
  %67 = load %struct._GMainContext*, %struct._GMainContext** %66, align 8, !dbg !1063
  %68 = icmp ne %struct._GMainContext* %67, null, !dbg !1064
  br i1 %68, label %69, label %75, !dbg !1065

; <label>:69:                                     ; preds = %53
  %70 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1066
  %71 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %70, i32 0, i32 3, !dbg !1068
  %72 = load %struct._GMainContext*, %struct._GMainContext** %71, align 8, !dbg !1068
  call void @g_main_context_unref(%struct._GMainContext* %72), !dbg !1069
  %73 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1070
  %74 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %73, i32 0, i32 3, !dbg !1071
  store %struct._GMainContext* null, %struct._GMainContext** %74, align 8, !dbg !1072
  br label %75, !dbg !1073

; <label>:75:                                     ; preds = %69, %53
  %76 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1074
  %77 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %76, i32 0, i32 4, !dbg !1076
  %78 = load %struct._GSource*, %struct._GSource** %77, align 8, !dbg !1076
  %79 = icmp ne %struct._GSource* %78, null, !dbg !1077
  br i1 %79, label %80, label %86, !dbg !1078

; <label>:80:                                     ; preds = %75
  %81 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1079
  %82 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %81, i32 0, i32 4, !dbg !1081
  %83 = load %struct._GSource*, %struct._GSource** %82, align 8, !dbg !1081
  call void @g_source_destroy(%struct._GSource* %83), !dbg !1082
  %84 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1083
  %85 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %84, i32 0, i32 4, !dbg !1084
  store %struct._GSource* null, %struct._GSource** %85, align 8, !dbg !1085
  br label %86, !dbg !1086

; <label>:86:                                     ; preds = %80, %75
  %87 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %4, align 8, !dbg !1087
  %88 = bitcast %struct.RpcChannelInt* %87 to i8*, !dbg !1087
  call void @g_free(i8* %88), !dbg !1088
  ret i32 1, !dbg !1089
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_free(i8*) #2

declare void @g_main_context_unref(%struct._GMainContext*) #2

declare void @g_source_destroy(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_SetRetValsF(%struct.RpcInData*, i8*, i32) #0 !dbg !1090 {
  %4 = alloca %struct.RpcInData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.RpcInData* %0, %struct.RpcInData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %4, metadata !1093, metadata !346), !dbg !1094
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1095, metadata !346), !dbg !1096
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1097, metadata !346), !dbg !1098
  %7 = load i8*, i8** %5, align 8, !dbg !1099
  %8 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1100
  %9 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %8, i32 0, i32 3, !dbg !1101
  store i8* %7, i8** %9, align 8, !dbg !1102
  %10 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1103
  %11 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %10, i32 0, i32 3, !dbg !1104
  %12 = load i8*, i8** %11, align 8, !dbg !1104
  %13 = call i64 @strlen(i8* %12) #8, !dbg !1105
  %14 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1106
  %15 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %14, i32 0, i32 4, !dbg !1107
  store i64 %13, i64* %15, align 8, !dbg !1108
  %16 = load %struct.RpcInData*, %struct.RpcInData** %4, align 8, !dbg !1109
  %17 = getelementptr inbounds %struct.RpcInData, %struct.RpcInData* %16, i32 0, i32 5, !dbg !1110
  store i32 1, i32* %17, align 8, !dbg !1111
  %18 = load i32, i32* %6, align 4, !dbg !1112
  ret i32 %18, !dbg !1113
}

; Function Attrs: nounwind uwtable
define void @RpcChannel_SetBackdoorOnly() #0 !dbg !1114 {
  store i32 1, i32* @gUseBackdoorOnly, align 4, !dbg !1115
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)), !dbg !1116
  ret void, !dbg !1117
}

; Function Attrs: nounwind uwtable
define %struct._RpcChannel* @RpcChannel_New() #0 !dbg !1118 {
  %1 = alloca %struct._RpcChannel*, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %1, metadata !1119, metadata !346), !dbg !1120
  %2 = load i32, i32* @gUseBackdoorOnly, align 4, !dbg !1121
  %3 = icmp ne i32 %2, 0, !dbg !1121
  br i1 %3, label %7, label %4, !dbg !1122

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @gVSocketFailed, align 4, !dbg !1123
  %6 = icmp ne i32 %5, 0, !dbg !1123
  br i1 %6, label %7, label %9, !dbg !1125

; <label>:7:                                      ; preds = %4, %0
  %8 = call %struct._RpcChannel* @BackdoorChannel_New(), !dbg !1126
  br label %11, !dbg !1127

; <label>:9:                                      ; preds = %4
  %10 = call %struct._RpcChannel* @VSockChannel_New(), !dbg !1129
  br label %11, !dbg !1130

; <label>:11:                                     ; preds = %9, %7
  %12 = phi %struct._RpcChannel* [ %8, %7 ], [ %10, %9 ], !dbg !1132
  store %struct._RpcChannel* %12, %struct._RpcChannel** %1, align 8, !dbg !1134
  %13 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !1135
  %14 = icmp ne %struct._RpcChannel* %13, null, !dbg !1135
  br i1 %14, label %15, label %18, !dbg !1137

; <label>:15:                                     ; preds = %11
  %16 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !1138
  %17 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %16, i32 0, i32 5, !dbg !1140
  call void @g_static_mutex_init(%struct.GStaticMutex* %17), !dbg !1141
  br label %18, !dbg !1142

; <label>:18:                                     ; preds = %15, %11
  %19 = load %struct._RpcChannel*, %struct._RpcChannel** %1, align 8, !dbg !1143
  ret %struct._RpcChannel* %19, !dbg !1144
}

declare %struct._RpcChannel* @BackdoorChannel_New() #2

declare %struct._RpcChannel* @VSockChannel_New() #2

declare void @g_static_mutex_init(%struct.GStaticMutex*) #2

; Function Attrs: nounwind uwtable
define void @RpcChannel_Shutdown(%struct._RpcChannel*) #0 !dbg !1145 {
  %2 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !1146, metadata !346), !dbg !1147
  %3 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1148
  %4 = icmp ne %struct._RpcChannel* %3, null, !dbg !1150
  br i1 %4, label %5, label %8, !dbg !1151

; <label>:5:                                      ; preds = %1
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1152
  %7 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %6, i32 0, i32 5, !dbg !1154
  call void @g_static_mutex_free(%struct.GStaticMutex* %7), !dbg !1155
  br label %8, !dbg !1156

; <label>:8:                                      ; preds = %5, %1
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1157
  %10 = icmp ne %struct._RpcChannel* %9, null, !dbg !1159
  br i1 %10, label %11, label %62, !dbg !1160

; <label>:11:                                     ; preds = %8
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1161
  %13 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %12, i32 0, i32 0, !dbg !1163
  %14 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %13, align 8, !dbg !1163
  %15 = icmp ne %struct._RpcChannelFuncs* %14, null, !dbg !1164
  br i1 %15, label %16, label %62, !dbg !1165

; <label>:16:                                     ; preds = %11
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1166
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 0, !dbg !1168
  %19 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %18, align 8, !dbg !1168
  %20 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %19, i32 0, i32 4, !dbg !1169
  %21 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %20, align 8, !dbg !1169
  %22 = icmp ne void (%struct._RpcChannel*)* %21, null, !dbg !1170
  br i1 %22, label %23, label %62, !dbg !1171

; <label>:23:                                     ; preds = %16
  %24 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1172
  %25 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %24, i32 0, i32 6, !dbg !1175
  %26 = load %struct.RpcIn*, %struct.RpcIn** %25, align 8, !dbg !1175
  %27 = icmp ne %struct.RpcIn* %26, null, !dbg !1176
  br i1 %27, label %28, label %45, !dbg !1177

; <label>:28:                                     ; preds = %23
  %29 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1178
  %30 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %29, i32 0, i32 7, !dbg !1181
  %31 = load i32, i32* %30, align 8, !dbg !1181
  %32 = icmp ne i32 %31, 0, !dbg !1178
  br i1 %32, label %33, label %37, !dbg !1182

; <label>:33:                                     ; preds = %28
  %34 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1183
  %35 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %34, i32 0, i32 6, !dbg !1185
  %36 = load %struct.RpcIn*, %struct.RpcIn** %35, align 8, !dbg !1185
  call void @RpcIn_stop(%struct.RpcIn* %36), !dbg !1186
  br label %37, !dbg !1187

; <label>:37:                                     ; preds = %33, %28
  %38 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1188
  %39 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %38, i32 0, i32 7, !dbg !1189
  store i32 0, i32* %39, align 8, !dbg !1190
  %40 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1191
  %41 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %40, i32 0, i32 6, !dbg !1192
  %42 = load %struct.RpcIn*, %struct.RpcIn** %41, align 8, !dbg !1192
  call void @RpcIn_Destruct(%struct.RpcIn* %42), !dbg !1193
  %43 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1194
  %44 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %43, i32 0, i32 6, !dbg !1195
  store %struct.RpcIn* null, %struct.RpcIn** %44, align 8, !dbg !1196
  br label %46, !dbg !1197

; <label>:45:                                     ; preds = %23
  br label %46

; <label>:46:                                     ; preds = %45, %37
  %47 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1198
  %48 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %47, i32 0, i32 2, !dbg !1200
  %49 = load %struct._GMainContext*, %struct._GMainContext** %48, align 8, !dbg !1200
  %50 = icmp ne %struct._GMainContext* %49, null, !dbg !1201
  br i1 %50, label %51, label %55, !dbg !1202

; <label>:51:                                     ; preds = %46
  %52 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1203
  %53 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %52, i32 0, i32 2, !dbg !1205
  %54 = load %struct._GMainContext*, %struct._GMainContext** %53, align 8, !dbg !1205
  call void @g_main_context_unref(%struct._GMainContext* %54), !dbg !1206
  br label %55, !dbg !1207

; <label>:55:                                     ; preds = %51, %46
  %56 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1208
  %57 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %56, i32 0, i32 0, !dbg !1209
  %58 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %57, align 8, !dbg !1209
  %59 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %58, i32 0, i32 4, !dbg !1210
  %60 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %59, align 8, !dbg !1210
  %61 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1211
  call void %60(%struct._RpcChannel* %61), !dbg !1208
  br label %62, !dbg !1212

; <label>:62:                                     ; preds = %55, %16, %11, %8
  ret void, !dbg !1213
}

declare void @g_static_mutex_free(%struct.GStaticMutex*) #2

declare void @RpcIn_stop(%struct.RpcIn*) #2

declare void @RpcIn_Destruct(%struct.RpcIn*) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_Start(%struct._RpcChannel*) #0 !dbg !1214 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RpcChannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._RpcChannelFuncs*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !1215, metadata !346), !dbg !1216
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1217, metadata !346), !dbg !1218
  call void @llvm.dbg.declare(metadata %struct._RpcChannelFuncs** %5, metadata !1219, metadata !346), !dbg !1220
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1221
  %7 = icmp eq %struct._RpcChannel* %6, null, !dbg !1223
  br i1 %7, label %20, label %8, !dbg !1224

; <label>:8:                                      ; preds = %1
  %9 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1225
  %10 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %9, i32 0, i32 0, !dbg !1227
  %11 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %10, align 8, !dbg !1227
  %12 = icmp eq %struct._RpcChannelFuncs* %11, null, !dbg !1228
  br i1 %12, label %20, label %13, !dbg !1229

; <label>:13:                                     ; preds = %8
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1230
  %15 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %14, i32 0, i32 0, !dbg !1232
  %16 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1232
  %17 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %16, i32 0, i32 0, !dbg !1233
  %18 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %17, align 8, !dbg !1233
  %19 = icmp eq i32 (%struct._RpcChannel*)* %18, null, !dbg !1234
  br i1 %19, label %20, label %21, !dbg !1235

; <label>:20:                                     ; preds = %13, %8, %1
  store i32 0, i32* %2, align 4, !dbg !1236
  br label %73, !dbg !1236

; <label>:21:                                     ; preds = %13
  %22 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1238
  %23 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %22, i32 0, i32 8, !dbg !1240
  %24 = load i32, i32* %23, align 4, !dbg !1240
  %25 = icmp ne i32 %24, 0, !dbg !1238
  br i1 %25, label %26, label %27, !dbg !1241

; <label>:26:                                     ; preds = %21
  store i32 1, i32* %2, align 4, !dbg !1242
  br label %73, !dbg !1242

; <label>:27:                                     ; preds = %21
  %28 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1244
  %29 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %28, i32 0, i32 6, !dbg !1246
  %30 = load %struct.RpcIn*, %struct.RpcIn** %29, align 8, !dbg !1246
  %31 = icmp ne %struct.RpcIn* %30, null, !dbg !1247
  br i1 %31, label %32, label %48, !dbg !1248

; <label>:32:                                     ; preds = %27
  %33 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1249
  %34 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %33, i32 0, i32 7, !dbg !1251
  %35 = load i32, i32* %34, align 8, !dbg !1251
  %36 = icmp ne i32 %35, 0, !dbg !1249
  br i1 %36, label %48, label %37, !dbg !1252

; <label>:37:                                     ; preds = %32
  %38 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1253
  %39 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %38, i32 0, i32 6, !dbg !1255
  %40 = load %struct.RpcIn*, %struct.RpcIn** %39, align 8, !dbg !1255
  %41 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1256
  %42 = bitcast %struct._RpcChannel* %41 to i8*, !dbg !1256
  %43 = call signext i8 @RpcIn_start(%struct.RpcIn* %40, i32 10, void (i8*, i8*)* @RpcChannelError, i8* %42), !dbg !1257
  %44 = sext i8 %43 to i32, !dbg !1257
  store i32 %44, i32* %4, align 4, !dbg !1258
  %45 = load i32, i32* %4, align 4, !dbg !1259
  %46 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1260
  %47 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %46, i32 0, i32 7, !dbg !1261
  store i32 %45, i32* %47, align 8, !dbg !1262
  br label %48, !dbg !1263

; <label>:48:                                     ; preds = %37, %32, %27
  %49 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1264
  %50 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %49, i32 0, i32 0, !dbg !1265
  %51 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %50, align 8, !dbg !1265
  store %struct._RpcChannelFuncs* %51, %struct._RpcChannelFuncs** %5, align 8, !dbg !1266
  %52 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %5, align 8, !dbg !1267
  %53 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %52, i32 0, i32 0, !dbg !1268
  %54 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %53, align 8, !dbg !1268
  %55 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1269
  %56 = call i32 %54(%struct._RpcChannel* %55), !dbg !1267
  store i32 %56, i32* %4, align 4, !dbg !1270
  %57 = load i32, i32* %4, align 4, !dbg !1271
  %58 = icmp ne i32 %57, 0, !dbg !1271
  br i1 %58, label %71, label %59, !dbg !1273

; <label>:59:                                     ; preds = %48
  %60 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %5, align 8, !dbg !1274
  %61 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %60, i32 0, i32 6, !dbg !1276
  %62 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %61, align 8, !dbg !1276
  %63 = icmp ne void (%struct._RpcChannel*)* %62, null, !dbg !1277
  br i1 %63, label %64, label %71, !dbg !1278

; <label>:64:                                     ; preds = %59
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0)), !dbg !1279
  %65 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %5, align 8, !dbg !1281
  %66 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %65, i32 0, i32 6, !dbg !1282
  %67 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %66, align 8, !dbg !1282
  %68 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1283
  call void %67(%struct._RpcChannel* %68), !dbg !1281
  %69 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1284
  %70 = call i32 @BackdoorChannel_Fallback(%struct._RpcChannel* %69), !dbg !1285
  store i32 %70, i32* %4, align 4, !dbg !1286
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0)), !dbg !1287
  store i32 1, i32* @gVSocketFailed, align 4, !dbg !1288
  br label %71, !dbg !1289

; <label>:71:                                     ; preds = %64, %59, %48
  %72 = load i32, i32* %4, align 4, !dbg !1290
  store i32 %72, i32* %2, align 4, !dbg !1291
  br label %73, !dbg !1291

; <label>:73:                                     ; preds = %71, %26, %20
  %74 = load i32, i32* %2, align 4, !dbg !1292
  ret i32 %74, !dbg !1292
}

declare signext i8 @RpcIn_start(%struct.RpcIn*, i32, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcChannelError(i8*, i8*) #0 !dbg !1293 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.RpcChannelInt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1296, metadata !346), !dbg !1297
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1298, metadata !346), !dbg !1299
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %5, metadata !1300, metadata !346), !dbg !1301
  %6 = load i8*, i8** %3, align 8, !dbg !1302
  %7 = bitcast i8* %6 to %struct.RpcChannelInt*, !dbg !1302
  store %struct.RpcChannelInt* %7, %struct.RpcChannelInt** %5, align 8, !dbg !1301
  %8 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1303
  %9 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %8, i32 0, i32 9, !dbg !1304
  store i32 1, i32* %9, align 8, !dbg !1305
  %10 = load i8*, i8** %4, align 8, !dbg !1306
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0), i8* %10), !dbg !1307
  %11 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1308
  %12 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %11, i32 0, i32 4, !dbg !1310
  %13 = load %struct._GSource*, %struct._GSource** %12, align 8, !dbg !1310
  %14 = icmp eq %struct._GSource* %13, null, !dbg !1311
  br i1 %14, label %15, label %31, !dbg !1312

; <label>:15:                                     ; preds = %2
  %16 = call %struct._GSource* @g_idle_source_new(), !dbg !1313
  %17 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1315
  %18 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %17, i32 0, i32 4, !dbg !1316
  store %struct._GSource* %16, %struct._GSource** %18, align 8, !dbg !1317
  %19 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1318
  %20 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %19, i32 0, i32 4, !dbg !1319
  %21 = load %struct._GSource*, %struct._GSource** %20, align 8, !dbg !1319
  %22 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1320
  %23 = bitcast %struct.RpcChannelInt* %22 to i8*, !dbg !1320
  call void @g_source_set_callback(%struct._GSource* %21, i32 (i8*)* @RpcChannelCheckReset, i8* %23, void (i8*)* null), !dbg !1321
  %24 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1322
  %25 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %24, i32 0, i32 4, !dbg !1323
  %26 = load %struct._GSource*, %struct._GSource** %25, align 8, !dbg !1323
  %27 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %5, align 8, !dbg !1324
  %28 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %27, i32 0, i32 3, !dbg !1325
  %29 = load %struct._GMainContext*, %struct._GMainContext** %28, align 8, !dbg !1325
  %30 = call i32 @g_source_attach(%struct._GSource* %26, %struct._GMainContext* %29), !dbg !1326
  br label %31, !dbg !1327

; <label>:31:                                     ; preds = %15, %2
  ret void, !dbg !1328
}

declare i32 @BackdoorChannel_Fallback(%struct._RpcChannel*) #2

; Function Attrs: nounwind uwtable
define void @RpcChannel_Stop(%struct._RpcChannel*) #0 !dbg !1329 {
  %2 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !1330, metadata !346), !dbg !1331
  %3 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1332
  %4 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %3, i32 0, i32 5, !dbg !1333
  %5 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %4), !dbg !1334
  call void @g_mutex_lock(%union._GMutex* %5), !dbg !1335
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1337
  call void @RpcChannelStopNoLock(%struct._RpcChannel* %6), !dbg !1338
  %7 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1339
  %8 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %7, i32 0, i32 5, !dbg !1340
  %9 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %8), !dbg !1341
  call void @g_mutex_unlock(%union._GMutex* %9), !dbg !1342
  ret void, !dbg !1343
}

declare void @g_mutex_lock(%union._GMutex*) #2

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #2

; Function Attrs: nounwind uwtable
define internal void @RpcChannelStopNoLock(%struct._RpcChannel*) #0 !dbg !1344 {
  %2 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %2, metadata !1345, metadata !346), !dbg !1346
  %3 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1347
  %4 = icmp eq %struct._RpcChannel* %3, null, !dbg !1349
  br i1 %4, label %17, label %5, !dbg !1350

; <label>:5:                                      ; preds = %1
  %6 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1351
  %7 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %6, i32 0, i32 0, !dbg !1353
  %8 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %7, align 8, !dbg !1353
  %9 = icmp eq %struct._RpcChannelFuncs* %8, null, !dbg !1354
  br i1 %9, label %17, label %10, !dbg !1355

; <label>:10:                                     ; preds = %5
  %11 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1356
  %12 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %11, i32 0, i32 0, !dbg !1358
  %13 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %12, align 8, !dbg !1358
  %14 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %13, i32 0, i32 1, !dbg !1359
  %15 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %14, align 8, !dbg !1359
  %16 = icmp eq void (%struct._RpcChannel*)* %15, null, !dbg !1360
  br i1 %16, label %17, label %18, !dbg !1361

; <label>:17:                                     ; preds = %10, %5, %1
  br label %42, !dbg !1362

; <label>:18:                                     ; preds = %10
  %19 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1364
  %20 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %19, i32 0, i32 0, !dbg !1365
  %21 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %20, align 8, !dbg !1365
  %22 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %21, i32 0, i32 1, !dbg !1366
  %23 = load void (%struct._RpcChannel*)*, void (%struct._RpcChannel*)** %22, align 8, !dbg !1366
  %24 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1367
  call void %23(%struct._RpcChannel* %24), !dbg !1364
  %25 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1368
  %26 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %25, i32 0, i32 6, !dbg !1370
  %27 = load %struct.RpcIn*, %struct.RpcIn** %26, align 8, !dbg !1370
  %28 = icmp ne %struct.RpcIn* %27, null, !dbg !1371
  br i1 %28, label %29, label %41, !dbg !1372

; <label>:29:                                     ; preds = %18
  %30 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1373
  %31 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %30, i32 0, i32 7, !dbg !1376
  %32 = load i32, i32* %31, align 8, !dbg !1376
  %33 = icmp ne i32 %32, 0, !dbg !1373
  br i1 %33, label %34, label %38, !dbg !1377

; <label>:34:                                     ; preds = %29
  %35 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1378
  %36 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %35, i32 0, i32 6, !dbg !1380
  %37 = load %struct.RpcIn*, %struct.RpcIn** %36, align 8, !dbg !1380
  call void @RpcIn_stop(%struct.RpcIn* %37), !dbg !1381
  br label %38, !dbg !1382

; <label>:38:                                     ; preds = %34, %29
  %39 = load %struct._RpcChannel*, %struct._RpcChannel** %2, align 8, !dbg !1383
  %40 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %39, i32 0, i32 7, !dbg !1384
  store i32 0, i32* %40, align 8, !dbg !1385
  br label %42, !dbg !1386

; <label>:41:                                     ; preds = %18
  br label %42

; <label>:42:                                     ; preds = %17, %41, %38
  ret void, !dbg !1387
}

declare void @g_mutex_unlock(%union._GMutex*) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_GetType(%struct._RpcChannel*) #0 !dbg !1388 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._RpcChannel*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %3, metadata !1389, metadata !346), !dbg !1390
  %4 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1391
  %5 = icmp eq %struct._RpcChannel* %4, null, !dbg !1393
  br i1 %5, label %18, label %6, !dbg !1394

; <label>:6:                                      ; preds = %1
  %7 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1395
  %8 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %7, i32 0, i32 0, !dbg !1397
  %9 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %8, align 8, !dbg !1397
  %10 = icmp eq %struct._RpcChannelFuncs* %9, null, !dbg !1398
  br i1 %10, label %18, label %11, !dbg !1399

; <label>:11:                                     ; preds = %6
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1400
  %13 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %12, i32 0, i32 0, !dbg !1402
  %14 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %13, align 8, !dbg !1402
  %15 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %14, i32 0, i32 5, !dbg !1403
  %16 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %15, align 8, !dbg !1403
  %17 = icmp eq i32 (%struct._RpcChannel*)* %16, null, !dbg !1404
  br i1 %17, label %18, label %19, !dbg !1405

; <label>:18:                                     ; preds = %11, %6, %1
  store i32 0, i32* %2, align 4, !dbg !1406
  br label %27, !dbg !1406

; <label>:19:                                     ; preds = %11
  %20 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1408
  %21 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %20, i32 0, i32 0, !dbg !1409
  %22 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %21, align 8, !dbg !1409
  %23 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %22, i32 0, i32 5, !dbg !1410
  %24 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %23, align 8, !dbg !1410
  %25 = load %struct._RpcChannel*, %struct._RpcChannel** %3, align 8, !dbg !1411
  %26 = call i32 %24(%struct._RpcChannel* %25), !dbg !1408
  store i32 %26, i32* %2, align 4, !dbg !1412
  br label %27, !dbg !1412

; <label>:27:                                     ; preds = %19, %18
  %28 = load i32, i32* %2, align 4, !dbg !1413
  ret i32 %28, !dbg !1413
}

; Function Attrs: nounwind uwtable
define void @RpcChannel_Free(i8*) #0 !dbg !1414 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1417, metadata !346), !dbg !1418
  %3 = load i8*, i8** %2, align 8, !dbg !1419
  call void @free(i8* %3) #6, !dbg !1420
  ret void, !dbg !1421
}

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #0 !dbg !1422 {
  %6 = alloca %struct._RpcChannel*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._RpcChannelFuncs*, align 8
  store %struct._RpcChannel* %0, %struct._RpcChannel** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %6, metadata !1425, metadata !346), !dbg !1426
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1427, metadata !346), !dbg !1428
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1429, metadata !346), !dbg !1430
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1431, metadata !346), !dbg !1432
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1433, metadata !346), !dbg !1434
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1435, metadata !346), !dbg !1436
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1437, metadata !346), !dbg !1438
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1439, metadata !346), !dbg !1440
  store i8* null, i8** %13, align 8, !dbg !1440
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1441, metadata !346), !dbg !1442
  store i64 0, i64* %14, align 8, !dbg !1442
  call void @llvm.dbg.declare(metadata %struct._RpcChannelFuncs** %15, metadata !1443, metadata !346), !dbg !1444
  %16 = load i64, i64* %8, align 8, !dbg !1445
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i64 %16), !dbg !1446
  %17 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1447
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 5, !dbg !1448
  %19 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %18), !dbg !1449
  call void @g_mutex_lock(%union._GMutex* %19), !dbg !1450
  %20 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1452
  %21 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %20, i32 0, i32 0, !dbg !1453
  %22 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %21, align 8, !dbg !1453
  store %struct._RpcChannelFuncs* %22, %struct._RpcChannelFuncs** %15, align 8, !dbg !1454
  %23 = load i8**, i8*** %9, align 8, !dbg !1455
  %24 = icmp ne i8** %23, null, !dbg !1457
  br i1 %24, label %25, label %27, !dbg !1458

; <label>:25:                                     ; preds = %5
  %26 = load i8**, i8*** %9, align 8, !dbg !1459
  store i8* null, i8** %26, align 8, !dbg !1461
  br label %27, !dbg !1462

; <label>:27:                                     ; preds = %25, %5
  %28 = load i64*, i64** %10, align 8, !dbg !1463
  %29 = icmp ne i64* %28, null, !dbg !1465
  br i1 %29, label %30, label %32, !dbg !1466

; <label>:30:                                     ; preds = %27
  %31 = load i64*, i64** %10, align 8, !dbg !1467
  store i64 0, i64* %31, align 8, !dbg !1469
  br label %32, !dbg !1470

; <label>:32:                                     ; preds = %30, %27
  %33 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1471
  %34 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %33, i32 0, i32 2, !dbg !1472
  %35 = load i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)*, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)** %34, align 8, !dbg !1472
  %36 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1473
  %37 = load i8*, i8** %7, align 8, !dbg !1474
  %38 = load i64, i64* %8, align 8, !dbg !1475
  %39 = call i32 %35(%struct._RpcChannel* %36, i8* %37, i64 %38, i8* %12, i8** %13, i64* %14), !dbg !1471
  store i32 %39, i32* %11, align 4, !dbg !1476
  %40 = load i32, i32* %11, align 4, !dbg !1477
  %41 = icmp ne i32 %40, 0, !dbg !1477
  br i1 %41, label %76, label %42, !dbg !1479

; <label>:42:                                     ; preds = %32
  %43 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1480
  %44 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %43, i32 0, i32 5, !dbg !1482
  %45 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %44, align 8, !dbg !1482
  %46 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1483
  %47 = call i32 %45(%struct._RpcChannel* %46), !dbg !1480
  %48 = icmp ne i32 %47, 1, !dbg !1484
  br i1 %48, label %49, label %76, !dbg !1485

; <label>:49:                                     ; preds = %42
  %50 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1486
  %51 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %50, i32 0, i32 7, !dbg !1487
  %52 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %51, align 8, !dbg !1487
  %53 = icmp ne i32 (%struct._RpcChannel*)* %52, null, !dbg !1488
  br i1 %53, label %54, label %76, !dbg !1489

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %13, align 8, !dbg !1491
  call void @free(i8* %55) #6, !dbg !1493
  store i8* null, i8** %13, align 8, !dbg !1494
  store i64 0, i64* %14, align 8, !dbg !1495
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0)), !dbg !1496
  %56 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1497
  %57 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %56, i32 0, i32 7, !dbg !1498
  %58 = load i32 (%struct._RpcChannel*)*, i32 (%struct._RpcChannel*)** %57, align 8, !dbg !1498
  %59 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1499
  %60 = call i32 %58(%struct._RpcChannel* %59), !dbg !1497
  %61 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1500
  %62 = call i32 @RpcChannel_Start(%struct._RpcChannel* %61), !dbg !1502
  %63 = icmp ne i32 %62, 0, !dbg !1502
  br i1 %63, label %64, label %75, !dbg !1503

; <label>:64:                                     ; preds = %54
  %65 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1504
  %66 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %65, i32 0, i32 0, !dbg !1506
  %67 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %66, align 8, !dbg !1506
  store %struct._RpcChannelFuncs* %67, %struct._RpcChannelFuncs** %15, align 8, !dbg !1507
  %68 = load %struct._RpcChannelFuncs*, %struct._RpcChannelFuncs** %15, align 8, !dbg !1508
  %69 = getelementptr inbounds %struct._RpcChannelFuncs, %struct._RpcChannelFuncs* %68, i32 0, i32 2, !dbg !1509
  %70 = load i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)*, i32 (%struct._RpcChannel*, i8*, i64, i8*, i8**, i64*)** %69, align 8, !dbg !1509
  %71 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1510
  %72 = load i8*, i8** %7, align 8, !dbg !1511
  %73 = load i64, i64* %8, align 8, !dbg !1512
  %74 = call i32 %70(%struct._RpcChannel* %71, i8* %72, i64 %73, i8* %12, i8** %13, i64* %14), !dbg !1508
  store i32 %74, i32* %11, align 4, !dbg !1513
  br label %77, !dbg !1514

; <label>:75:                                     ; preds = %54
  store i32 0, i32* %11, align 4, !dbg !1515
  br label %97, !dbg !1516

; <label>:76:                                     ; preds = %49, %42, %32
  br label %77, !dbg !1517

; <label>:77:                                     ; preds = %76, %64
  %78 = load i32, i32* %11, align 4, !dbg !1518
  %79 = icmp ne i32 %78, 0, !dbg !1518
  br i1 %79, label %80, label %82, !dbg !1520

; <label>:80:                                     ; preds = %77
  %81 = load i64, i64* %14, align 8, !dbg !1521
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i64 %81), !dbg !1523
  br label %82, !dbg !1524

; <label>:82:                                     ; preds = %80, %77
  %83 = load i8**, i8*** %9, align 8, !dbg !1525
  %84 = icmp ne i8** %83, null, !dbg !1527
  br i1 %84, label %85, label %88, !dbg !1528

; <label>:85:                                     ; preds = %82
  %86 = load i8*, i8** %13, align 8, !dbg !1529
  %87 = load i8**, i8*** %9, align 8, !dbg !1531
  store i8* %86, i8** %87, align 8, !dbg !1532
  br label %90, !dbg !1533

; <label>:88:                                     ; preds = %82
  %89 = load i8*, i8** %13, align 8, !dbg !1534
  call void @free(i8* %89) #6, !dbg !1536
  br label %90

; <label>:90:                                     ; preds = %88, %85
  %91 = load i64*, i64** %10, align 8, !dbg !1537
  %92 = icmp ne i64* %91, null, !dbg !1539
  br i1 %92, label %93, label %96, !dbg !1540

; <label>:93:                                     ; preds = %90
  %94 = load i64, i64* %14, align 8, !dbg !1541
  %95 = load i64*, i64** %10, align 8, !dbg !1543
  store i64 %94, i64* %95, align 8, !dbg !1544
  br label %96, !dbg !1545

; <label>:96:                                     ; preds = %93, %90
  br label %97, !dbg !1546

; <label>:97:                                     ; preds = %96, %75
  %98 = load %struct._RpcChannel*, %struct._RpcChannel** %6, align 8, !dbg !1548
  %99 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %98, i32 0, i32 5, !dbg !1549
  %100 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %99), !dbg !1550
  call void @g_mutex_unlock(%union._GMutex* %100), !dbg !1551
  %101 = load i32, i32* %11, align 4, !dbg !1552
  %102 = icmp ne i32 %101, 0, !dbg !1552
  br i1 %102, label %103, label %107, !dbg !1553

; <label>:103:                                    ; preds = %97
  %104 = load i8, i8* %12, align 1, !dbg !1554
  %105 = sext i8 %104 to i32, !dbg !1554
  %106 = icmp ne i32 %105, 0, !dbg !1555
  br label %107

; <label>:107:                                    ; preds = %103, %97
  %108 = phi i1 [ false, %97 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32, !dbg !1556
  ret i32 %109, !dbg !1557
}

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_SendOneRaw(i8*, i64, i8**, i64*) #0 !dbg !1558 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct._RpcChannel*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1561, metadata !346), !dbg !1562
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1563, metadata !346), !dbg !1564
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1565, metadata !346), !dbg !1566
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1567, metadata !346), !dbg !1568
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %9, metadata !1569, metadata !346), !dbg !1570
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1571, metadata !346), !dbg !1572
  store i32 0, i32* %10, align 4, !dbg !1573
  %11 = call %struct._RpcChannel* @RpcChannel_New(), !dbg !1574
  store %struct._RpcChannel* %11, %struct._RpcChannel** %9, align 8, !dbg !1575
  %12 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1576
  %13 = icmp eq %struct._RpcChannel* %12, null, !dbg !1578
  br i1 %13, label %14, label %29, !dbg !1579

; <label>:14:                                     ; preds = %4
  %15 = load i8**, i8*** %7, align 8, !dbg !1580
  %16 = icmp ne i8** %15, null, !dbg !1583
  br i1 %16, label %17, label %28, !dbg !1584

; <label>:17:                                     ; preds = %14
  %18 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0)), !dbg !1585
  %19 = load i8**, i8*** %7, align 8, !dbg !1587
  store i8* %18, i8** %19, align 8, !dbg !1588
  %20 = load i64*, i64** %8, align 8, !dbg !1589
  %21 = icmp ne i64* %20, null, !dbg !1591
  br i1 %21, label %22, label %27, !dbg !1592

; <label>:22:                                     ; preds = %17
  %23 = load i8**, i8*** %7, align 8, !dbg !1593
  %24 = load i8*, i8** %23, align 8, !dbg !1595
  %25 = call i64 @strlen(i8* %24) #8, !dbg !1596
  %26 = load i64*, i64** %8, align 8, !dbg !1597
  store i64 %25, i64* %26, align 8, !dbg !1598
  br label %27, !dbg !1599

; <label>:27:                                     ; preds = %22, %17
  br label %28, !dbg !1600

; <label>:28:                                     ; preds = %27, %14
  br label %60, !dbg !1601

; <label>:29:                                     ; preds = %4
  %30 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1602
  %31 = call i32 @RpcChannel_Start(%struct._RpcChannel* %30), !dbg !1604
  %32 = icmp ne i32 %31, 0, !dbg !1604
  br i1 %32, label %48, label %33, !dbg !1605

; <label>:33:                                     ; preds = %29
  %34 = load i8**, i8*** %7, align 8, !dbg !1606
  %35 = icmp ne i8** %34, null, !dbg !1609
  br i1 %35, label %36, label %47, !dbg !1610

; <label>:36:                                     ; preds = %33
  %37 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0)), !dbg !1611
  %38 = load i8**, i8*** %7, align 8, !dbg !1613
  store i8* %37, i8** %38, align 8, !dbg !1614
  %39 = load i64*, i64** %8, align 8, !dbg !1615
  %40 = icmp ne i64* %39, null, !dbg !1617
  br i1 %40, label %41, label %46, !dbg !1618

; <label>:41:                                     ; preds = %36
  %42 = load i8**, i8*** %7, align 8, !dbg !1619
  %43 = load i8*, i8** %42, align 8, !dbg !1621
  %44 = call i64 @strlen(i8* %43) #8, !dbg !1622
  %45 = load i64*, i64** %8, align 8, !dbg !1623
  store i64 %44, i64* %45, align 8, !dbg !1624
  br label %46, !dbg !1625

; <label>:46:                                     ; preds = %41, %36
  br label %47, !dbg !1626

; <label>:47:                                     ; preds = %46, %33
  br label %60, !dbg !1627

; <label>:48:                                     ; preds = %29
  %49 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1628
  %50 = load i8*, i8** %5, align 8, !dbg !1630
  %51 = load i64, i64* %6, align 8, !dbg !1631
  %52 = load i8**, i8*** %7, align 8, !dbg !1632
  %53 = load i64*, i64** %8, align 8, !dbg !1633
  %54 = call i32 @RpcChannel_Send(%struct._RpcChannel* %49, i8* %50, i64 %51, i8** %52, i64* %53), !dbg !1634
  %55 = icmp ne i32 %54, 0, !dbg !1634
  br i1 %55, label %57, label %56, !dbg !1635

; <label>:56:                                     ; preds = %48
  br label %60, !dbg !1636

; <label>:57:                                     ; preds = %48
  br label %58

; <label>:58:                                     ; preds = %57
  br label %59

; <label>:59:                                     ; preds = %58
  store i32 1, i32* %10, align 4, !dbg !1638
  br label %60, !dbg !1639

; <label>:60:                                     ; preds = %59, %56, %47, %28
  %61 = load i32, i32* %10, align 4, !dbg !1640
  %62 = icmp ne i32 %61, 0, !dbg !1640
  %63 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), !dbg !1640
  %64 = load i64, i64* %6, align 8, !dbg !1641
  %65 = load i64*, i64** %8, align 8, !dbg !1642
  %66 = icmp ne i64* %65, null, !dbg !1642
  br i1 %66, label %67, label %70, !dbg !1642

; <label>:67:                                     ; preds = %60
  %68 = load i64*, i64** %8, align 8, !dbg !1643
  %69 = load i64, i64* %68, align 8, !dbg !1645
  br label %71, !dbg !1646

; <label>:70:                                     ; preds = %60
  br label %71, !dbg !1647

; <label>:71:                                     ; preds = %70, %67
  %72 = phi i64 [ %69, %67 ], [ 0, %70 ], !dbg !1649
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i8* %63, i64 %64, i64 %72), !dbg !1651
  %73 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1652
  %74 = icmp ne %struct._RpcChannel* %73, null, !dbg !1652
  br i1 %74, label %75, label %79, !dbg !1654

; <label>:75:                                     ; preds = %71
  %76 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1655
  call void @RpcChannel_Stop(%struct._RpcChannel* %76), !dbg !1657
  %77 = load %struct._RpcChannel*, %struct._RpcChannel** %9, align 8, !dbg !1658
  %78 = call i32 @RpcChannel_Destroy(%struct._RpcChannel* %77), !dbg !1659
  br label %79, !dbg !1660

; <label>:79:                                     ; preds = %75, %71
  %80 = load i32, i32* %10, align 4, !dbg !1661
  ret i32 %80, !dbg !1662
}

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @RpcChannel_SendOne(i8**, i64*, i8*, ...) #0 !dbg !1663 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1666, metadata !346), !dbg !1667
  store i64* %1, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1668, metadata !346), !dbg !1669
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1670, metadata !346), !dbg !1671
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1672, metadata !346), !dbg !1684
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1685, metadata !346), !dbg !1686
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1687, metadata !346), !dbg !1688
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1689, metadata !346), !dbg !1690
  store i64 0, i64* %11, align 8, !dbg !1690
  store i32 0, i32* %9, align 4, !dbg !1691
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1692
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !1692
  call void @llvm.va_start(i8* %14), !dbg !1692
  %15 = load i8*, i8** %7, align 8, !dbg !1693
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1694
  %17 = call i8* @Str_Vasprintf(i64* %11, i8* %15, %struct.__va_list_tag* %16), !dbg !1695
  store i8* %17, i8** %10, align 8, !dbg !1696
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1697
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !1697
  call void @llvm.va_end(i8* %19), !dbg !1697
  %20 = load i8*, i8** %10, align 8, !dbg !1698
  %21 = icmp eq i8* %20, null, !dbg !1700
  br i1 %21, label %22, label %24, !dbg !1701

; <label>:22:                                     ; preds = %3
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1702
  br label %50, !dbg !1704

; <label>:24:                                     ; preds = %3
  %25 = load i64, i64* %11, align 8, !dbg !1705
  %26 = sub i64 %25, 1, !dbg !1707
  %27 = load i8*, i8** %10, align 8, !dbg !1708
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !1708
  %29 = load i8, i8* %28, align 1, !dbg !1708
  %30 = sext i8 %29 to i32, !dbg !1708
  %31 = icmp ne i32 %30, 32, !dbg !1709
  br i1 %31, label %32, label %42, !dbg !1710

; <label>:32:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1711, metadata !346), !dbg !1713
  %33 = load i8*, i8** %10, align 8, !dbg !1714
  %34 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %33), !dbg !1715
  store i8* %34, i8** %12, align 8, !dbg !1716
  %35 = load i8*, i8** %10, align 8, !dbg !1717
  call void @free(i8* %35) #6, !dbg !1718
  %36 = load i8*, i8** %12, align 8, !dbg !1719
  store i8* %36, i8** %10, align 8, !dbg !1720
  %37 = load i8*, i8** %10, align 8, !dbg !1721
  %38 = icmp eq i8* %37, null, !dbg !1723
  br i1 %38, label %39, label %41, !dbg !1724

; <label>:39:                                     ; preds = %32
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1725
  br label %50, !dbg !1727

; <label>:41:                                     ; preds = %32
  br label %42, !dbg !1728

; <label>:42:                                     ; preds = %41, %24
  %43 = load i8*, i8** %10, align 8, !dbg !1729
  %44 = load i64, i64* %11, align 8, !dbg !1730
  %45 = load i8**, i8*** %5, align 8, !dbg !1731
  %46 = load i64*, i64** %6, align 8, !dbg !1732
  %47 = call i32 @RpcChannel_SendOneRaw(i8* %43, i64 %44, i8** %45, i64* %46), !dbg !1733
  store i32 %47, i32* %9, align 4, !dbg !1734
  %48 = load i8*, i8** %10, align 8, !dbg !1735
  call void @free(i8* %48) #6, !dbg !1736
  %49 = load i32, i32* %9, align 4, !dbg !1737
  store i32 %49, i32* %4, align 4, !dbg !1738
  br label %61, !dbg !1738

; <label>:50:                                     ; preds = %39, %22
  %51 = load i8**, i8*** %5, align 8, !dbg !1739
  %52 = icmp ne i8** %51, null, !dbg !1739
  br i1 %52, label %53, label %55, !dbg !1741

; <label>:53:                                     ; preds = %50
  %54 = load i8**, i8*** %5, align 8, !dbg !1742
  store i8* null, i8** %54, align 8, !dbg !1744
  br label %55, !dbg !1745

; <label>:55:                                     ; preds = %53, %50
  %56 = load i64*, i64** %6, align 8, !dbg !1746
  %57 = icmp ne i64* %56, null, !dbg !1746
  br i1 %57, label %58, label %60, !dbg !1748

; <label>:58:                                     ; preds = %55
  %59 = load i64*, i64** %6, align 8, !dbg !1749
  store i64 0, i64* %59, align 8, !dbg !1751
  br label %60, !dbg !1752

; <label>:60:                                     ; preds = %58, %55
  store i32 0, i32* %4, align 4, !dbg !1753
  br label %61, !dbg !1753

; <label>:61:                                     ; preds = %60, %42
  %62 = load i32, i32* %4, align 4, !dbg !1754
  ret i32 %62, !dbg !1754
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @assert(...) #2

declare i8* @Str_Asprintf(i64*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare signext i8 @XdrUtil_Deserialize(i8*, i64, i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #4

declare %struct._GSource* @g_idle_source_new() #2

declare void @g_source_set_priority(%struct._GSource*, i32) #2

declare void @g_source_set_callback(%struct._GSource*, i32 (i8*)*, i8*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcChannelCheckReset(i8*) #0 !dbg !331 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.RpcChannelInt*, align 8
  %4 = alloca %struct._GSource*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1755, metadata !346), !dbg !1756
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %3, metadata !1757, metadata !346), !dbg !1758
  %5 = load i8*, i8** %2, align 8, !dbg !1759
  %6 = bitcast i8* %5 to %struct.RpcChannelInt*, !dbg !1759
  store %struct.RpcChannelInt* %6, %struct.RpcChannelInt** %3, align 8, !dbg !1758
  %7 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1760
  %8 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %7, i32 0, i32 9, !dbg !1762
  %9 = load i32, i32* %8, align 8, !dbg !1762
  %10 = icmp ne i32 %9, 0, !dbg !1760
  br i1 %10, label %11, label %51, !dbg !1763

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._GSource** %4, metadata !1764, metadata !346), !dbg !1766
  %12 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1767
  %13 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %12, i32 0, i32 10, !dbg !1769
  %14 = load i32, i32* %13, align 4, !dbg !1770
  %15 = add i32 %14, 1, !dbg !1770
  store i32 %15, i32* %13, align 4, !dbg !1770
  %16 = load i32, i32* @RpcChannelCheckReset.channelTimeoutAttempts, align 4, !dbg !1771
  %17 = icmp ugt i32 %15, %16, !dbg !1772
  br i1 %17, label %18, label %37, !dbg !1773

; <label>:18:                                     ; preds = %11
  %19 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1774
  %20 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %19, i32 0, i32 10, !dbg !1776
  %21 = load i32, i32* %20, align 4, !dbg !1776
  %22 = sub i32 %21, 1, !dbg !1777
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0), i32 %22), !dbg !1778
  %23 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1779
  %24 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %23, i32 0, i32 7, !dbg !1781
  %25 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %24, align 8, !dbg !1781
  %26 = icmp ne void (%struct._RpcChannel*, i32, i8*)* %25, null, !dbg !1782
  br i1 %26, label %27, label %36, !dbg !1783

; <label>:27:                                     ; preds = %18
  %28 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1784
  %29 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %28, i32 0, i32 7, !dbg !1786
  %30 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %29, align 8, !dbg !1786
  %31 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1787
  %32 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %31, i32 0, i32 0, !dbg !1788
  %33 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1789
  %34 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %33, i32 0, i32 8, !dbg !1790
  %35 = load i8*, i8** %34, align 8, !dbg !1790
  call void %30(%struct._RpcChannel* %32, i32 0, i8* %35), !dbg !1784
  br label %36, !dbg !1791

; <label>:36:                                     ; preds = %27, %18
  br label %68, !dbg !1792

; <label>:37:                                     ; preds = %11
  %38 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1793
  %39 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %38, i32 0, i32 10, !dbg !1794
  %40 = load i32, i32* %39, align 4, !dbg !1794
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %40), !dbg !1795
  %41 = call %struct._GSource* @g_timeout_source_new(i32 1000), !dbg !1796
  store %struct._GSource* %41, %struct._GSource** %4, align 8, !dbg !1797
  %42 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1798
  %43 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1799
  %44 = bitcast %struct.RpcChannelInt* %43 to i8*, !dbg !1799
  call void @g_source_set_callback(%struct._GSource* %42, i32 (i8*)* @RpcChannelRestart, i8* %44, void (i8*)* null), !dbg !1800
  %45 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1801
  %46 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1802
  %47 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %46, i32 0, i32 3, !dbg !1803
  %48 = load %struct._GMainContext*, %struct._GMainContext** %47, align 8, !dbg !1803
  %49 = call i32 @g_source_attach(%struct._GSource* %45, %struct._GMainContext* %48), !dbg !1804
  %50 = load %struct._GSource*, %struct._GSource** %4, align 8, !dbg !1805
  call void @g_source_unref(%struct._GSource* %50), !dbg !1806
  br label %68, !dbg !1807

; <label>:51:                                     ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0)), !dbg !1808
  %52 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1809
  %53 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %52, i32 0, i32 10, !dbg !1810
  store i32 0, i32* %53, align 4, !dbg !1811
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0)), !dbg !1812
  store i32 0, i32* @gVSocketFailed, align 4, !dbg !1813
  %54 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1814
  %55 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %54, i32 0, i32 7, !dbg !1816
  %56 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %55, align 8, !dbg !1816
  %57 = icmp ne void (%struct._RpcChannel*, i32, i8*)* %56, null, !dbg !1817
  br i1 %57, label %58, label %67, !dbg !1818

; <label>:58:                                     ; preds = %51
  %59 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1819
  %60 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %59, i32 0, i32 7, !dbg !1821
  %61 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %60, align 8, !dbg !1821
  %62 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1822
  %63 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %62, i32 0, i32 0, !dbg !1823
  %64 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1824
  %65 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %64, i32 0, i32 8, !dbg !1825
  %66 = load i8*, i8** %65, align 8, !dbg !1825
  call void %61(%struct._RpcChannel* %63, i32 1, i8* %66), !dbg !1819
  br label %67, !dbg !1826

; <label>:67:                                     ; preds = %58, %51
  br label %68, !dbg !1827

; <label>:68:                                     ; preds = %67, %37, %36
  %69 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1829
  %70 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %69, i32 0, i32 4, !dbg !1830
  %71 = load %struct._GSource*, %struct._GSource** %70, align 8, !dbg !1830
  call void @g_source_unref(%struct._GSource* %71), !dbg !1831
  %72 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1832
  %73 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %72, i32 0, i32 4, !dbg !1833
  store %struct._GSource* null, %struct._GSource** %73, align 8, !dbg !1834
  ret i32 0, !dbg !1835
}

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #2

declare void @Warning(i8*, ...) #2

declare %struct._GSource* @g_timeout_source_new(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcChannelRestart(i8*) #0 !dbg !1836 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.RpcChannelInt*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1837, metadata !346), !dbg !1838
  call void @llvm.dbg.declare(metadata %struct.RpcChannelInt** %3, metadata !1839, metadata !346), !dbg !1840
  %5 = load i8*, i8** %2, align 8, !dbg !1841
  %6 = bitcast i8* %5 to %struct.RpcChannelInt*, !dbg !1841
  store %struct.RpcChannelInt* %6, %struct.RpcChannelInt** %3, align 8, !dbg !1840
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1842, metadata !346), !dbg !1843
  %7 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1844
  %8 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %7, i32 0, i32 0, !dbg !1845
  %9 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %8, i32 0, i32 5, !dbg !1846
  %10 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %9), !dbg !1847
  call void @g_mutex_lock(%union._GMutex* %10), !dbg !1848
  %11 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1850
  %12 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %11, i32 0, i32 0, !dbg !1851
  call void @RpcChannelStopNoLock(%struct._RpcChannel* %12), !dbg !1852
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0)), !dbg !1853
  store i32 0, i32* @gVSocketFailed, align 4, !dbg !1854
  %13 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1855
  %14 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %13, i32 0, i32 0, !dbg !1856
  %15 = call i32 @RpcChannel_Start(%struct._RpcChannel* %14), !dbg !1857
  store i32 %15, i32* %4, align 4, !dbg !1858
  %16 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1859
  %17 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %16, i32 0, i32 0, !dbg !1860
  %18 = getelementptr inbounds %struct._RpcChannel, %struct._RpcChannel* %17, i32 0, i32 5, !dbg !1861
  %19 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %18), !dbg !1862
  call void @g_mutex_unlock(%union._GMutex* %19), !dbg !1863
  %20 = load i32, i32* %4, align 4, !dbg !1864
  %21 = icmp ne i32 %20, 0, !dbg !1864
  br i1 %21, label %40, label %22, !dbg !1866

; <label>:22:                                     ; preds = %1
  %23 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1867
  %24 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %23, i32 0, i32 10, !dbg !1869
  %25 = load i32, i32* %24, align 4, !dbg !1869
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i32 %25), !dbg !1870
  %26 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1871
  %27 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %26, i32 0, i32 7, !dbg !1873
  %28 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %27, align 8, !dbg !1873
  %29 = icmp ne void (%struct._RpcChannel*, i32, i8*)* %28, null, !dbg !1874
  br i1 %29, label %30, label %39, !dbg !1875

; <label>:30:                                     ; preds = %22
  %31 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1876
  %32 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %31, i32 0, i32 7, !dbg !1878
  %33 = load void (%struct._RpcChannel*, i32, i8*)*, void (%struct._RpcChannel*, i32, i8*)** %32, align 8, !dbg !1878
  %34 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1879
  %35 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %34, i32 0, i32 0, !dbg !1880
  %36 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1881
  %37 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %36, i32 0, i32 8, !dbg !1882
  %38 = load i8*, i8** %37, align 8, !dbg !1882
  call void %33(%struct._RpcChannel* %35, i32 0, i8* %38), !dbg !1876
  br label %39, !dbg !1883

; <label>:39:                                     ; preds = %30, %22
  br label %43, !dbg !1884

; <label>:40:                                     ; preds = %1
  %41 = load %struct.RpcChannelInt*, %struct.RpcChannelInt** %3, align 8, !dbg !1885
  %42 = getelementptr inbounds %struct.RpcChannelInt, %struct.RpcChannelInt* %41, i32 0, i32 9, !dbg !1887
  store i32 0, i32* %42, align 8, !dbg !1888
  br label %43

; <label>:43:                                     ; preds = %40, %39
  ret i32 0, !dbg !1889
}

declare void @g_source_unref(%struct._GSource*) #2

; Function Attrs: nounwind uwtable
define internal i32 @RpcChannelPing(%struct.RpcInData*) #0 !dbg !1890 {
  %2 = alloca %struct.RpcInData*, align 8
  store %struct.RpcInData* %0, %struct.RpcInData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RpcInData** %2, metadata !1891, metadata !346), !dbg !1892
  %3 = load %struct.RpcInData*, %struct.RpcInData** %2, align 8, !dbg !1893
  %4 = call i32 @RpcChannel_SetRetVals(%struct.RpcInData* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i32 1), !dbg !1894
  ret i32 %4, !dbg !1895
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!339, !340}
!llvm.ident = !{!341}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, globals: !329)
!1 = !DIFile(filename: "libRpcChannel_la-rpcChannel.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RpcChannelType", file: !10, line: 79, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "RPCCHANNEL_TYPE_INACTIVE", value: 0)
!13 = !DIEnumerator(name: "RPCCHANNEL_TYPE_BKDOOR", value: 1)
!14 = !DIEnumerator(name: "RPCCHANNEL_TYPE_PRIV_VSOCK", value: 2)
!15 = !DIEnumerator(name: "RPCCHANNEL_TYPE_UNPRIV_VSOCK", value: 3)
!16 = !{!17, !18, !71, !61, !255}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelInt", file: !20, line: 57, baseType: !21)
!20 = !DIFile(filename: "rpcChannel.c", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelInt", file: !20, line: 43, size: 1728, align: 64, elements: !22)
!22 = !{!23, !136, !139, !144, !145, !220, !221, !247, !252, !253, !254}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !21, file: !20, line: 44, baseType: !24, size: 832, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !10, line: 48, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !26, line: 64, size: 832, align: 64, elements: !27)
!26 = !DIFile(filename: "rpcChannelInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!27 = !{!28, !80, !81, !82, !83, !84, !131, !134, !135}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !25, file: !26, line: 65, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelFuncs", file: !26, line: 56, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannelFuncs", file: !26, line: 45, size: 512, align: 64, elements: !33)
!33 = !{!34, !43, !47, !63, !72, !73, !78, !79}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !32, file: !26, line: 46, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !42}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !41)
!41 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !32, file: !26, line: 47, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !42}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !32, file: !26, line: 48, baseType: !48, size: 64, align: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!38, !42, !51, !54, !57, !60, !62}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 216, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!56 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !59, line: 230, baseType: !53)
!59 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !32, file: !26, line: 50, baseType: !64, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !42, !67, !51, !71}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !69, line: 48, baseType: !70)
!69 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !69, line: 48, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !17)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !32, file: !26, line: 52, baseType: !44, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "getType", scope: !32, file: !26, line: 53, baseType: !74, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !42}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelType", file: !10, line: 84, baseType: !9)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "onStartErr", scope: !32, file: !26, line: 54, baseType: !44, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "stopRpcOut", scope: !32, file: !26, line: 55, baseType: !35, size: 64, align: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !25, file: !26, line: 66, baseType: !71, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mainCtx", scope: !25, file: !26, line: 68, baseType: !67, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !25, file: !26, line: 69, baseType: !51, size: 64, align: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !25, file: !26, line: 70, baseType: !71, size: 64, align: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "outLock", scope: !25, file: !26, line: 72, baseType: !85, size: 384, align: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !86, line: 140, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 133, size: 384, align: 64, elements: !88)
!88 = !{!89, !102}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !87, file: !86, line: 135, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !92, line: 51, baseType: !93)
!92 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !92, line: 58, size: 64, align: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !93, file: !92, line: 61, baseType: !71, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !93, file: !92, line: 62, baseType: !97, size: 64, align: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, align: 32, elements: !100)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!100 = !{!101}
!101 = !DISubrange(count: 2)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !87, file: !86, line: 138, baseType: !103, size: 320, align: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !104, line: 128, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !104, line: 90, size: 320, align: 64, elements: !106)
!106 = !{!107, !125, !129}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !105, file: !104, line: 125, baseType: !108, size: 320, align: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !104, line: 92, size: 320, align: 64, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !117, !118}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !108, file: !104, line: 94, baseType: !41, size: 32, align: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !108, file: !104, line: 95, baseType: !99, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !108, file: !104, line: 96, baseType: !41, size: 32, align: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !108, file: !104, line: 98, baseType: !99, size: 32, align: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !108, file: !104, line: 102, baseType: !41, size: 32, align: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !108, file: !104, line: 104, baseType: !116, size: 16, align: 16, offset: 160)
!116 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !108, file: !104, line: 105, baseType: !116, size: 16, align: 16, offset: 176)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !108, file: !104, line: 106, baseType: !119, size: 128, align: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !104, line: 79, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !104, line: 75, size: 128, align: 64, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !120, file: !104, line: 77, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !120, file: !104, line: 78, baseType: !123, size: 64, align: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !105, file: !104, line: 126, baseType: !126, size: 320, align: 8)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 320, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 40)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !105, file: !104, line: 127, baseType: !130, size: 64, align: 64)
!130 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !25, file: !26, line: 74, baseType: !132, size: 64, align: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "RpcIn", file: !26, line: 41, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "inStarted", scope: !25, file: !26, line: 75, baseType: !38, size: 32, align: 32, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "outStarted", scope: !25, file: !26, line: 77, baseType: !38, size: 32, align: 32, offset: 800)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !21, file: !20, line: 46, baseType: !137, size: 64, align: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !53)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rpcs", scope: !21, file: !20, line: 47, baseType: !140, size: 64, align: 64, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !142, line: 37, baseType: !143)
!142 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !142, line: 37, flags: DIFlagFwdDecl)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mainCtx", scope: !21, file: !20, line: 48, baseType: !67, size: 64, align: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "resetCheck", scope: !21, file: !20, line: 49, baseType: !146, size: 64, align: 64, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !69, line: 64, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !69, line: 171, size: 768, align: 64, elements: !149)
!149 = !{!150, !151, !171, !200, !201, !202, !203, !204, !205, !213, !214, !215, !216}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !148, file: !69, line: 174, baseType: !71, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !148, file: !69, line: 175, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !69, line: 77, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !69, line: 196, size: 192, align: 64, elements: !155)
!155 = !{!156, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !154, file: !69, line: 198, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !71}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !154, file: !69, line: 199, baseType: !157, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !154, file: !69, line: 200, baseType: !162, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !71, !146, !165, !170}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !69, line: 155, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!38, !71}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !148, file: !69, line: 177, baseType: !172, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !69, line: 130, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !69, line: 214, size: 384, align: 64, elements: !176)
!176 = !{!177, !182, !186, !190, !194, !195}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !175, file: !69, line: 216, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!38, !146, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !175, file: !69, line: 218, baseType: !183, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!38, !146}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !175, file: !69, line: 219, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!38, !146, !166, !71}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !175, file: !69, line: 222, baseType: !191, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !146}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !175, file: !69, line: 226, baseType: !166, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !175, file: !69, line: 227, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !69, line: 212, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !148, file: !69, line: 178, baseType: !98, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !148, file: !69, line: 180, baseType: !67, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !148, file: !69, line: 182, baseType: !40, size: 32, align: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !69, line: 183, baseType: !98, size: 32, align: 32, offset: 352)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !148, file: !69, line: 184, baseType: !98, size: 32, align: 32, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !148, file: !69, line: 186, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !208, line: 37, baseType: !209)
!208 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !208, line: 39, size: 128, align: 64, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !209, file: !208, line: 41, baseType: !71, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !208, line: 42, baseType: !206, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !69, line: 188, baseType: !146, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !69, line: 189, baseType: !146, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !69, line: 191, baseType: !61, size: 64, align: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !148, file: !69, line: 193, baseType: !217, size: 64, align: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !69, line: 65, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !69, line: 65, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !21, file: !20, line: 50, baseType: !71, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "resetReg", scope: !21, file: !20, line: 51, baseType: !222, size: 384, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelCallback", file: !10, line: 115, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcChannelCallback", file: !10, line: 94, size: 384, align: 64, elements: !224)
!224 = !{!225, !226, !243, !244, !245, !246}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !10, line: 96, baseType: !51, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !223, file: !10, line: 98, baseType: !227, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcIn_Callback", file: !10, line: 90, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!38, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcInData", file: !10, line: 77, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RpcInData", file: !10, line: 51, size: 512, align: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !10, line: 53, baseType: !51, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !233, file: !10, line: 58, baseType: !51, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argsSize", scope: !233, file: !10, line: 60, baseType: !54, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !233, file: !10, line: 65, baseType: !61, size: 64, align: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "resultLen", scope: !233, file: !10, line: 67, baseType: !54, size: 64, align: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "freeResult", scope: !233, file: !10, line: 72, baseType: !38, size: 32, align: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "appCtx", scope: !233, file: !10, line: 74, baseType: !17, size: 64, align: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !233, file: !10, line: 76, baseType: !17, size: 64, align: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !223, file: !10, line: 100, baseType: !71, size: 64, align: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xdrIn", scope: !223, file: !10, line: 102, baseType: !71, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xdrOut", scope: !223, file: !10, line: 109, baseType: !71, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "xdrInSize", scope: !223, file: !10, line: 114, baseType: !54, size: 64, align: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "resetCb", scope: !21, file: !20, line: 52, baseType: !248, size: 64, align: 64, offset: 1536)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannelResetCb", file: !10, line: 124, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !42, !38, !71}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "resetData", scope: !21, file: !20, line: 53, baseType: !71, size: 64, align: 64, offset: 1600)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rpcError", scope: !21, file: !20, line: 54, baseType: !38, size: 32, align: 32, offset: 1664)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rpcErrorCount", scope: !21, file: !20, line: 55, baseType: !98, size: 32, align: 32, offset: 1696)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 152, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !261, !17, null}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !260, line: 37, baseType: !41)
!260 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !264)
!264 = !{!265, !266, !325, !326, !327, !328}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !263, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !263, file: !4, line: 136, baseType: !267, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !269)
!269 = !{!270, !275, !281, !291, !295, !301, !305, !311, !315, !319}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !268, file: !4, line: 115, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !261, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !268, file: !4, line: 117, baseType: !276, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!259, !261, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !268, file: !4, line: 119, baseType: !282, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!259, !261, !285, !289}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !286, line: 116, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !288, line: 183, baseType: !61)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !286, line: 35, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !288, line: 32, baseType: !99)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !268, file: !4, line: 121, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!259, !261, !51, !289}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !268, file: !4, line: 123, baseType: !296, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!289, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !268, file: !4, line: 125, baseType: !302, size: 64, align: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!259, !261, !289}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !268, file: !4, line: 127, baseType: !306, size: 64, align: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !261, !289}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !286, line: 196, baseType: !41)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !268, file: !4, line: 129, baseType: !312, size: 64, align: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !261}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !268, file: !4, line: 131, baseType: !316, size: 64, align: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!259, !261, !309}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !268, file: !4, line: 133, baseType: !320, size: 64, align: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!259, !261, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !263, file: !4, line: 137, baseType: !285, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !263, file: !4, line: 138, baseType: !285, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !263, file: !4, line: 139, baseType: !285, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !263, file: !4, line: 140, baseType: !289, size: 32, align: 32, offset: 320)
!329 = !{!330, !333, !337, !338}
!330 = distinct !DIGlobalVariable(name: "channelTimeoutAttempts", scope: !331, file: !20, line: 149, type: !41, isLocal: true, isDefinition: true, variable: i32* @RpcChannelCheckReset.channelTimeoutAttempts)
!331 = distinct !DISubprogram(name: "RpcChannelCheckReset", scope: !20, file: !20, line: 147, type: !168, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!332 = !{}
!333 = distinct !DIGlobalVariable(name: "gRpcHandlers", scope: !0, file: !20, line: 80, type: !334, isLocal: true, isDefinition: true, variable: [1 x %struct.RpcChannelCallback]* @gRpcHandlers)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 384, align: 64, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 1)
!337 = distinct !DIGlobalVariable(name: "gUseBackdoorOnly", scope: !0, file: !20, line: 61, type: !38, isLocal: true, isDefinition: true, variable: i32* @gUseBackdoorOnly)
!338 = distinct !DIGlobalVariable(name: "gVSocketFailed", scope: !0, file: !20, line: 68, type: !38, isLocal: true, isDefinition: true, variable: i32* @gVSocketFailed)
!339 = !{i32 2, !"Dwarf Version", i32 4}
!340 = !{i32 2, !"Debug Info Version", i32 3}
!341 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!342 = distinct !DISubprogram(name: "RpcChannel_BuildXdrCommand", scope: !20, file: !20, line: 321, type: !343, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!343 = !DISubroutineType(types: !344)
!344 = !{!38, !51, !17, !17, !60, !62}
!345 = !DILocalVariable(name: "cmd", arg: 1, scope: !342, file: !20, line: 321, type: !51)
!346 = !DIExpression()
!347 = !DILocation(line: 321, column: 40, scope: !342)
!348 = !DILocalVariable(name: "xdrProc", arg: 2, scope: !342, file: !20, line: 322, type: !17)
!349 = !DILocation(line: 322, column: 34, scope: !342)
!350 = !DILocalVariable(name: "xdrData", arg: 3, scope: !342, file: !20, line: 323, type: !17)
!351 = !DILocation(line: 323, column: 34, scope: !342)
!352 = !DILocalVariable(name: "result", arg: 4, scope: !342, file: !20, line: 324, type: !60)
!353 = !DILocation(line: 324, column: 35, scope: !342)
!354 = !DILocalVariable(name: "resultLen", arg: 5, scope: !342, file: !20, line: 325, type: !62)
!355 = !DILocation(line: 325, column: 36, scope: !342)
!356 = !DILocalVariable(name: "ret", scope: !342, file: !20, line: 327, type: !58)
!357 = !DILocation(line: 327, column: 9, scope: !342)
!358 = !DILocalVariable(name: "proc", scope: !342, file: !20, line: 328, type: !255)
!359 = !DILocation(line: 328, column: 14, scope: !342)
!360 = !DILocation(line: 328, column: 21, scope: !342)
!361 = !DILocalVariable(name: "xdrs", scope: !342, file: !20, line: 329, type: !262)
!362 = !DILocation(line: 329, column: 8, scope: !342)
!363 = !DILocation(line: 331, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !342, file: !20, line: 331, column: 8)
!365 = !DILocation(line: 331, column: 29, scope: !364)
!366 = !DILocation(line: 331, column: 8, scope: !342)
!367 = !DILocation(line: 332, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !20, line: 331, column: 37)
!369 = !DILocation(line: 335, column: 33, scope: !370)
!370 = distinct !DILexicalBlock(scope: !342, file: !20, line: 335, column: 8)
!371 = !DILocation(line: 335, column: 45, scope: !370)
!372 = !DILocation(line: 335, column: 38, scope: !370)
!373 = !DILocation(line: 335, column: 9, scope: !374)
!374 = !DILexicalBlockFile(scope: !370, file: !20, discriminator: 1)
!375 = !DILocation(line: 335, column: 9, scope: !370)
!376 = !DILocation(line: 335, column: 8, scope: !342)
!377 = !DILocation(line: 336, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !20, line: 335, column: 52)
!379 = !DILocation(line: 339, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !342, file: !20, line: 339, column: 8)
!381 = !DILocation(line: 339, column: 8, scope: !342)
!382 = !DILocation(line: 340, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !20, line: 339, column: 42)
!384 = !DILocation(line: 343, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !342, file: !20, line: 343, column: 8)
!386 = !DILocation(line: 343, column: 21, scope: !385)
!387 = !DILocation(line: 343, column: 8, scope: !342)
!388 = !DILocation(line: 344, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !20, line: 343, column: 34)
!390 = !DILocation(line: 347, column: 14, scope: !342)
!391 = !DILocation(line: 347, column: 5, scope: !342)
!392 = !DILocation(line: 347, column: 12, scope: !342)
!393 = !DILocation(line: 348, column: 19, scope: !342)
!394 = !DILocation(line: 348, column: 26, scope: !342)
!395 = !DILocation(line: 348, column: 16, scope: !342)
!396 = !DILocation(line: 348, column: 5, scope: !342)
!397 = !DILocation(line: 348, column: 15, scope: !342)
!398 = !DILocation(line: 350, column: 8, scope: !342)
!399 = !DILocation(line: 350, column: 4, scope: !342)
!400 = !DILocation(line: 353, column: 27, scope: !342)
!401 = !DILocation(line: 353, column: 26, scope: !342)
!402 = !DILocation(line: 353, column: 4, scope: !342)
!403 = !DILocation(line: 354, column: 11, scope: !342)
!404 = !DILocation(line: 354, column: 4, scope: !342)
!405 = !DILocation(line: 355, column: 1, scope: !342)
!406 = distinct !DISubprogram(name: "RpcChannel_Dispatch", scope: !20, file: !20, line: 369, type: !229, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!407 = !DILocalVariable(name: "data", arg: 1, scope: !406, file: !20, line: 369, type: !231)
!408 = !DILocation(line: 369, column: 32, scope: !406)
!409 = !DILocalVariable(name: "name", scope: !406, file: !20, line: 371, type: !61)
!410 = !DILocation(line: 371, column: 10, scope: !406)
!411 = !DILocalVariable(name: "index", scope: !406, file: !20, line: 372, type: !99)
!412 = !DILocation(line: 372, column: 17, scope: !406)
!413 = !DILocalVariable(name: "nameLen", scope: !406, file: !20, line: 373, type: !54)
!414 = !DILocation(line: 373, column: 11, scope: !406)
!415 = !DILocalVariable(name: "status", scope: !406, file: !20, line: 374, type: !58)
!416 = !DILocation(line: 374, column: 9, scope: !406)
!417 = !DILocalVariable(name: "rpc", scope: !406, file: !20, line: 375, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!419 = !DILocation(line: 375, column: 24, scope: !406)
!420 = !DILocalVariable(name: "chan", scope: !406, file: !20, line: 376, type: !18)
!421 = !DILocation(line: 376, column: 19, scope: !406)
!422 = !DILocation(line: 376, column: 26, scope: !406)
!423 = !DILocation(line: 376, column: 32, scope: !406)
!424 = !DILocation(line: 378, column: 40, scope: !406)
!425 = !DILocation(line: 378, column: 46, scope: !406)
!426 = !DILocation(line: 378, column: 11, scope: !406)
!427 = !DILocation(line: 378, column: 9, scope: !406)
!428 = !DILocation(line: 379, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !406, file: !20, line: 379, column: 8)
!430 = !DILocation(line: 379, column: 13, scope: !429)
!431 = !DILocation(line: 379, column: 8, scope: !406)
!432 = !DILocation(line: 380, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !20, line: 379, column: 21)
!434 = !DILocation(line: 381, column: 38, scope: !433)
!435 = !DILocation(line: 381, column: 16, scope: !433)
!436 = !DILocation(line: 381, column: 14, scope: !433)
!437 = !DILocation(line: 382, column: 7, scope: !433)
!438 = !DILocation(line: 385, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !406, file: !20, line: 385, column: 8)
!440 = !DILocation(line: 385, column: 14, scope: !439)
!441 = !DILocation(line: 385, column: 19, scope: !439)
!442 = !DILocation(line: 385, column: 8, scope: !406)
!443 = !DILocation(line: 386, column: 33, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !20, line: 385, column: 27)
!445 = !DILocation(line: 386, column: 39, scope: !444)
!446 = !DILocation(line: 386, column: 45, scope: !444)
!447 = !DILocation(line: 386, column: 13, scope: !444)
!448 = !DILocation(line: 386, column: 11, scope: !444)
!449 = !DILocation(line: 387, column: 4, scope: !444)
!450 = !DILocation(line: 389, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !406, file: !20, line: 389, column: 8)
!452 = !DILocation(line: 389, column: 12, scope: !451)
!453 = !DILocation(line: 389, column: 8, scope: !406)
!454 = !DILocation(line: 390, column: 79, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !20, line: 389, column: 20)
!456 = !DILocation(line: 390, column: 7, scope: !455)
!457 = !DILocation(line: 391, column: 38, scope: !455)
!458 = !DILocation(line: 391, column: 16, scope: !455)
!459 = !DILocation(line: 391, column: 14, scope: !455)
!460 = !DILocation(line: 392, column: 7, scope: !455)
!461 = !DILocation(line: 396, column: 21, scope: !406)
!462 = !DILocation(line: 396, column: 14, scope: !406)
!463 = !DILocation(line: 396, column: 12, scope: !406)
!464 = !DILocation(line: 397, column: 17, scope: !406)
!465 = !DILocation(line: 397, column: 4, scope: !406)
!466 = !DILocation(line: 397, column: 10, scope: !406)
!467 = !DILocation(line: 397, column: 15, scope: !406)
!468 = !DILocation(line: 398, column: 17, scope: !406)
!469 = !DILocation(line: 398, column: 23, scope: !406)
!470 = !DILocation(line: 398, column: 30, scope: !406)
!471 = !DILocation(line: 398, column: 28, scope: !406)
!472 = !DILocation(line: 398, column: 4, scope: !406)
!473 = !DILocation(line: 398, column: 10, scope: !406)
!474 = !DILocation(line: 398, column: 15, scope: !406)
!475 = !DILocation(line: 399, column: 22, scope: !406)
!476 = !DILocation(line: 399, column: 4, scope: !406)
!477 = !DILocation(line: 399, column: 10, scope: !406)
!478 = !DILocation(line: 399, column: 19, scope: !406)
!479 = !DILocation(line: 400, column: 19, scope: !406)
!480 = !DILocation(line: 400, column: 25, scope: !406)
!481 = !DILocation(line: 400, column: 4, scope: !406)
!482 = !DILocation(line: 400, column: 10, scope: !406)
!483 = !DILocation(line: 400, column: 17, scope: !406)
!484 = !DILocation(line: 401, column: 23, scope: !406)
!485 = !DILocation(line: 401, column: 28, scope: !406)
!486 = !DILocation(line: 401, column: 4, scope: !406)
!487 = !DILocation(line: 401, column: 10, scope: !406)
!488 = !DILocation(line: 401, column: 21, scope: !406)
!489 = !DILocation(line: 403, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !406, file: !20, line: 403, column: 8)
!491 = !DILocation(line: 403, column: 13, scope: !490)
!492 = !DILocation(line: 403, column: 19, scope: !490)
!493 = !DILocation(line: 403, column: 26, scope: !490)
!494 = !DILocation(line: 403, column: 29, scope: !495)
!495 = !DILexicalBlockFile(scope: !490, file: !20, discriminator: 1)
!496 = !DILocation(line: 403, column: 34, scope: !495)
!497 = !DILocation(line: 403, column: 41, scope: !495)
!498 = !DILocation(line: 403, column: 8, scope: !495)
!499 = !DILocation(line: 404, column: 37, scope: !500)
!500 = distinct !DILexicalBlock(scope: !490, file: !20, line: 403, column: 50)
!501 = !DILocation(line: 404, column: 43, scope: !500)
!502 = !DILocation(line: 404, column: 16, scope: !500)
!503 = !DILocation(line: 404, column: 14, scope: !500)
!504 = !DILocation(line: 405, column: 4, scope: !500)
!505 = !DILocation(line: 406, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !490, file: !20, line: 405, column: 11)
!507 = !DILocation(line: 406, column: 21, scope: !506)
!508 = !DILocation(line: 406, column: 30, scope: !506)
!509 = !DILocation(line: 406, column: 14, scope: !506)
!510 = !DILocation(line: 409, column: 4, scope: !406)
!511 = !DILocation(line: 412, column: 4, scope: !406)
!512 = !DILocation(line: 412, column: 10, scope: !406)
!513 = !DILocation(line: 412, column: 15, scope: !406)
!514 = !DILocation(line: 413, column: 9, scope: !406)
!515 = !DILocation(line: 413, column: 4, scope: !406)
!516 = !DILocation(line: 414, column: 11, scope: !406)
!517 = !DILocation(line: 414, column: 4, scope: !406)
!518 = distinct !DISubprogram(name: "RpcChannel_SetRetVals", scope: !20, file: !20, line: 631, type: !519, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!519 = !DISubroutineType(types: !520)
!520 = !{!38, !231, !51, !38}
!521 = !DILocalVariable(name: "data", arg: 1, scope: !518, file: !20, line: 631, type: !231)
!522 = !DILocation(line: 631, column: 34, scope: !518)
!523 = !DILocalVariable(name: "result", arg: 2, scope: !518, file: !20, line: 632, type: !51)
!524 = !DILocation(line: 632, column: 35, scope: !518)
!525 = !DILocalVariable(name: "retVal", arg: 3, scope: !518, file: !20, line: 633, type: !38)
!526 = !DILocation(line: 633, column: 32, scope: !518)
!527 = !DILocation(line: 638, column: 27, scope: !518)
!528 = !DILocation(line: 638, column: 4, scope: !518)
!529 = !DILocation(line: 638, column: 10, scope: !518)
!530 = !DILocation(line: 638, column: 17, scope: !518)
!531 = !DILocation(line: 639, column: 29, scope: !518)
!532 = !DILocation(line: 639, column: 35, scope: !518)
!533 = !DILocation(line: 639, column: 22, scope: !518)
!534 = !DILocation(line: 639, column: 4, scope: !518)
!535 = !DILocation(line: 639, column: 10, scope: !518)
!536 = !DILocation(line: 639, column: 20, scope: !518)
!537 = !DILocation(line: 640, column: 4, scope: !518)
!538 = !DILocation(line: 640, column: 10, scope: !518)
!539 = !DILocation(line: 640, column: 21, scope: !518)
!540 = !DILocation(line: 642, column: 11, scope: !518)
!541 = !DILocation(line: 642, column: 4, scope: !518)
!542 = distinct !DISubprogram(name: "RpcChannelXdrWrapper", scope: !20, file: !20, line: 229, type: !543, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!543 = !DISubroutineType(types: !544)
!544 = !{!58, !231, !418}
!545 = !DILocalVariable(name: "data", arg: 1, scope: !542, file: !20, line: 229, type: !231)
!546 = !DILocation(line: 229, column: 33, scope: !542)
!547 = !DILocalVariable(name: "rpc", arg: 2, scope: !542, file: !20, line: 230, type: !418)
!548 = !DILocation(line: 230, column: 42, scope: !542)
!549 = !DILocalVariable(name: "ret", scope: !542, file: !20, line: 232, type: !58)
!550 = !DILocation(line: 232, column: 9, scope: !542)
!551 = !DILocalVariable(name: "copy", scope: !542, file: !20, line: 233, type: !232)
!552 = !DILocation(line: 233, column: 14, scope: !542)
!553 = !DILocalVariable(name: "xdrData", scope: !542, file: !20, line: 234, type: !17)
!554 = !DILocation(line: 234, column: 10, scope: !542)
!555 = !DILocation(line: 236, column: 9, scope: !542)
!556 = !DILocation(line: 236, column: 20, scope: !542)
!557 = !DILocation(line: 237, column: 9, scope: !542)
!558 = !DILocation(line: 237, column: 16, scope: !542)
!559 = !DILocation(line: 238, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !542, file: !20, line: 238, column: 8)
!561 = !DILocation(line: 238, column: 13, scope: !560)
!562 = !DILocation(line: 238, column: 19, scope: !560)
!563 = !DILocation(line: 238, column: 8, scope: !542)
!564 = !DILocation(line: 239, column: 24, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !20, line: 238, column: 27)
!566 = !DILocation(line: 239, column: 29, scope: !565)
!567 = !DILocation(line: 239, column: 17, scope: !565)
!568 = !DILocation(line: 239, column: 15, scope: !565)
!569 = !DILocation(line: 240, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !20, line: 240, column: 11)
!571 = !DILocation(line: 240, column: 19, scope: !570)
!572 = !DILocation(line: 240, column: 11, scope: !565)
!573 = !DILocation(line: 241, column: 38, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !20, line: 240, column: 27)
!575 = !DILocation(line: 241, column: 16, scope: !574)
!576 = !DILocation(line: 241, column: 14, scope: !574)
!577 = !DILocation(line: 242, column: 10, scope: !574)
!578 = !DILocation(line: 245, column: 14, scope: !565)
!579 = !DILocation(line: 245, column: 26, scope: !565)
!580 = !DILocation(line: 245, column: 31, scope: !565)
!581 = !DILocation(line: 245, column: 7, scope: !565)
!582 = !DILocation(line: 246, column: 32, scope: !583)
!583 = distinct !DILexicalBlock(scope: !565, file: !20, line: 246, column: 11)
!584 = !DILocation(line: 246, column: 38, scope: !583)
!585 = !DILocation(line: 246, column: 43, scope: !583)
!586 = !DILocation(line: 246, column: 48, scope: !583)
!587 = !DILocation(line: 246, column: 54, scope: !583)
!588 = !DILocation(line: 246, column: 63, scope: !583)
!589 = !DILocation(line: 247, column: 32, scope: !583)
!590 = !DILocation(line: 247, column: 37, scope: !583)
!591 = !DILocation(line: 247, column: 44, scope: !583)
!592 = !DILocation(line: 246, column: 12, scope: !583)
!593 = !DILocation(line: 246, column: 11, scope: !565)
!594 = !DILocation(line: 248, column: 38, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !20, line: 247, column: 54)
!596 = !DILocation(line: 248, column: 16, scope: !595)
!597 = !DILocation(line: 248, column: 14, scope: !595)
!598 = !DILocation(line: 249, column: 15, scope: !595)
!599 = !DILocation(line: 249, column: 10, scope: !595)
!600 = !DILocation(line: 250, column: 10, scope: !595)
!601 = !DILocation(line: 253, column: 19, scope: !565)
!602 = !DILocation(line: 253, column: 25, scope: !565)
!603 = !DILocation(line: 253, column: 12, scope: !565)
!604 = !DILocation(line: 253, column: 17, scope: !565)
!605 = !DILocation(line: 254, column: 19, scope: !565)
!606 = !DILocation(line: 254, column: 12, scope: !565)
!607 = !DILocation(line: 254, column: 17, scope: !565)
!608 = !DILocation(line: 255, column: 23, scope: !565)
!609 = !DILocation(line: 255, column: 28, scope: !565)
!610 = !DILocation(line: 255, column: 12, scope: !565)
!611 = !DILocation(line: 255, column: 21, scope: !565)
!612 = !DILocation(line: 256, column: 21, scope: !565)
!613 = !DILocation(line: 256, column: 27, scope: !565)
!614 = !DILocation(line: 256, column: 12, scope: !565)
!615 = !DILocation(line: 256, column: 19, scope: !565)
!616 = !DILocation(line: 257, column: 24, scope: !565)
!617 = !DILocation(line: 257, column: 30, scope: !565)
!618 = !DILocation(line: 257, column: 12, scope: !565)
!619 = !DILocation(line: 257, column: 22, scope: !565)
!620 = !DILocation(line: 258, column: 25, scope: !565)
!621 = !DILocation(line: 258, column: 31, scope: !565)
!622 = !DILocation(line: 258, column: 12, scope: !565)
!623 = !DILocation(line: 258, column: 23, scope: !565)
!624 = !DILocation(line: 259, column: 21, scope: !565)
!625 = !DILocation(line: 259, column: 27, scope: !565)
!626 = !DILocation(line: 259, column: 12, scope: !565)
!627 = !DILocation(line: 259, column: 19, scope: !565)
!628 = !DILocation(line: 260, column: 25, scope: !565)
!629 = !DILocation(line: 260, column: 30, scope: !565)
!630 = !DILocation(line: 260, column: 12, scope: !565)
!631 = !DILocation(line: 260, column: 23, scope: !565)
!632 = !DILocation(line: 261, column: 4, scope: !565)
!633 = !DILocation(line: 262, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !560, file: !20, line: 261, column: 11)
!635 = !DILocation(line: 262, column: 21, scope: !634)
!636 = !DILocation(line: 265, column: 10, scope: !542)
!637 = !DILocation(line: 265, column: 15, scope: !542)
!638 = !DILocation(line: 265, column: 8, scope: !542)
!639 = !DILocation(line: 267, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !542, file: !20, line: 267, column: 8)
!641 = !DILocation(line: 267, column: 13, scope: !640)
!642 = !DILocation(line: 267, column: 19, scope: !640)
!643 = !DILocation(line: 267, column: 8, scope: !542)
!644 = !DILocation(line: 268, column: 28, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !20, line: 267, column: 27)
!646 = !DILocation(line: 268, column: 33, scope: !645)
!647 = !DILocation(line: 268, column: 16, scope: !645)
!648 = !DILocation(line: 268, column: 50, scope: !645)
!649 = !DILocation(line: 268, column: 7, scope: !645)
!650 = !DILocation(line: 269, column: 12, scope: !645)
!651 = !DILocation(line: 269, column: 7, scope: !645)
!652 = !DILocation(line: 270, column: 12, scope: !645)
!653 = !DILocation(line: 270, column: 17, scope: !645)
!654 = !DILocation(line: 271, column: 27, scope: !645)
!655 = !DILocation(line: 271, column: 7, scope: !645)
!656 = !DILocation(line: 271, column: 13, scope: !645)
!657 = !DILocation(line: 271, column: 20, scope: !645)
!658 = !DILocation(line: 272, column: 30, scope: !645)
!659 = !DILocation(line: 272, column: 7, scope: !645)
!660 = !DILocation(line: 272, column: 13, scope: !645)
!661 = !DILocation(line: 272, column: 23, scope: !645)
!662 = !DILocation(line: 273, column: 31, scope: !645)
!663 = !DILocation(line: 273, column: 7, scope: !645)
!664 = !DILocation(line: 273, column: 13, scope: !645)
!665 = !DILocation(line: 273, column: 24, scope: !645)
!666 = !DILocation(line: 274, column: 4, scope: !645)
!667 = !DILocation(line: 276, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !542, file: !20, line: 276, column: 8)
!669 = !DILocation(line: 276, column: 13, scope: !668)
!670 = !DILocation(line: 276, column: 20, scope: !668)
!671 = !DILocation(line: 276, column: 27, scope: !668)
!672 = !DILocation(line: 276, column: 35, scope: !673)
!673 = !DILexicalBlockFile(scope: !668, file: !20, discriminator: 1)
!674 = !DILocation(line: 276, column: 42, scope: !673)
!675 = !DILocation(line: 276, column: 8, scope: !673)
!676 = !DILocalVariable(name: "xdrs", scope: !677, file: !20, line: 277, type: !262)
!677 = distinct !DILexicalBlock(scope: !668, file: !20, line: 276, column: 51)
!678 = !DILocation(line: 277, column: 11, scope: !677)
!679 = !DILocalVariable(name: "xdrProc", scope: !677, file: !20, line: 278, type: !255)
!680 = !DILocation(line: 278, column: 17, scope: !677)
!681 = !DILocation(line: 278, column: 27, scope: !677)
!682 = !DILocation(line: 278, column: 32, scope: !677)
!683 = !DILocation(line: 280, column: 11, scope: !684)
!684 = distinct !DILexicalBlock(scope: !677, file: !20, line: 280, column: 11)
!685 = !DILocation(line: 280, column: 32, scope: !684)
!686 = !DILocation(line: 280, column: 11, scope: !677)
!687 = !DILocation(line: 281, column: 38, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !20, line: 280, column: 40)
!689 = !DILocation(line: 281, column: 16, scope: !688)
!690 = !DILocation(line: 281, column: 14, scope: !688)
!691 = !DILocation(line: 282, column: 10, scope: !688)
!692 = !DILocation(line: 285, column: 12, scope: !693)
!693 = distinct !DILexicalBlock(scope: !677, file: !20, line: 285, column: 11)
!694 = !DILocation(line: 285, column: 32, scope: !693)
!695 = !DILocation(line: 285, column: 11, scope: !677)
!696 = !DILocation(line: 286, column: 38, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !20, line: 285, column: 44)
!698 = !DILocation(line: 286, column: 16, scope: !697)
!699 = !DILocation(line: 286, column: 14, scope: !697)
!700 = !DILocation(line: 287, column: 10, scope: !697)
!701 = !DILocation(line: 288, column: 10, scope: !697)
!702 = !DILocation(line: 291, column: 16, scope: !703)
!703 = distinct !DILexicalBlock(scope: !677, file: !20, line: 291, column: 11)
!704 = !DILocation(line: 291, column: 11, scope: !703)
!705 = !DILocation(line: 291, column: 11, scope: !677)
!706 = !DILocation(line: 292, column: 31, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !20, line: 291, column: 28)
!708 = !DILocation(line: 292, column: 36, scope: !707)
!709 = !DILocation(line: 292, column: 19, scope: !707)
!710 = !DILocation(line: 292, column: 59, scope: !707)
!711 = !DILocation(line: 292, column: 10, scope: !707)
!712 = !DILocation(line: 293, column: 7, scope: !707)
!713 = !DILocation(line: 294, column: 22, scope: !677)
!714 = !DILocation(line: 294, column: 7, scope: !677)
!715 = !DILocation(line: 294, column: 13, scope: !677)
!716 = !DILocation(line: 294, column: 20, scope: !677)
!717 = !DILocation(line: 295, column: 27, scope: !677)
!718 = !DILocation(line: 295, column: 34, scope: !677)
!719 = !DILocation(line: 295, column: 24, scope: !677)
!720 = !DILocation(line: 295, column: 7, scope: !677)
!721 = !DILocation(line: 295, column: 13, scope: !677)
!722 = !DILocation(line: 295, column: 23, scope: !677)
!723 = !DILocation(line: 296, column: 7, scope: !677)
!724 = !DILocation(line: 296, column: 13, scope: !677)
!725 = !DILocation(line: 296, column: 24, scope: !677)
!726 = !DILocation(line: 297, column: 7, scope: !677)
!727 = !DILocation(line: 298, column: 4, scope: !677)
!728 = !DILocation(line: 276, column: 55, scope: !729)
!729 = !DILexicalBlockFile(scope: !668, file: !20, discriminator: 2)
!730 = !DILocation(line: 301, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !542, file: !20, line: 301, column: 8)
!732 = !DILocation(line: 301, column: 8, scope: !731)
!733 = !DILocation(line: 301, column: 24, scope: !731)
!734 = !DILocation(line: 301, column: 32, scope: !735)
!735 = !DILexicalBlockFile(scope: !731, file: !20, discriminator: 1)
!736 = !DILocation(line: 301, column: 39, scope: !735)
!737 = !DILocation(line: 301, column: 8, scope: !735)
!738 = !DILocation(line: 302, column: 19, scope: !739)
!739 = distinct !DILexicalBlock(scope: !731, file: !20, line: 301, column: 47)
!740 = !DILocation(line: 302, column: 7, scope: !739)
!741 = !DILocation(line: 303, column: 4, scope: !739)
!742 = !DILocation(line: 304, column: 11, scope: !542)
!743 = !DILocation(line: 304, column: 4, scope: !542)
!744 = distinct !DISubprogram(name: "RpcChannel_Setup", scope: !20, file: !20, line: 434, type: !745, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !42, !747, !67, !71, !248, !71}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!749 = !DILocalVariable(name: "chan", arg: 1, scope: !744, file: !20, line: 434, type: !42)
!750 = !DILocation(line: 434, column: 30, scope: !744)
!751 = !DILocalVariable(name: "appName", arg: 2, scope: !744, file: !20, line: 435, type: !747)
!752 = !DILocation(line: 435, column: 31, scope: !744)
!753 = !DILocalVariable(name: "mainCtx", arg: 3, scope: !744, file: !20, line: 436, type: !67)
!754 = !DILocation(line: 436, column: 32, scope: !744)
!755 = !DILocalVariable(name: "appCtx", arg: 4, scope: !744, file: !20, line: 437, type: !71)
!756 = !DILocation(line: 437, column: 27, scope: !744)
!757 = !DILocalVariable(name: "resetCb", arg: 5, scope: !744, file: !20, line: 438, type: !248)
!758 = !DILocation(line: 438, column: 36, scope: !744)
!759 = !DILocalVariable(name: "resetData", arg: 6, scope: !744, file: !20, line: 439, type: !71)
!760 = !DILocation(line: 439, column: 27, scope: !744)
!761 = !DILocalVariable(name: "i", scope: !744, file: !20, line: 441, type: !54)
!762 = !DILocation(line: 441, column: 11, scope: !744)
!763 = !DILocalVariable(name: "cdata", scope: !744, file: !20, line: 442, type: !18)
!764 = !DILocation(line: 442, column: 19, scope: !744)
!765 = !DILocation(line: 442, column: 45, scope: !744)
!766 = !DILocation(line: 442, column: 27, scope: !744)
!767 = !DILocation(line: 444, column: 30, scope: !744)
!768 = !DILocation(line: 444, column: 21, scope: !744)
!769 = !DILocation(line: 444, column: 4, scope: !744)
!770 = !DILocation(line: 444, column: 11, scope: !744)
!771 = !DILocation(line: 444, column: 19, scope: !744)
!772 = !DILocation(line: 445, column: 20, scope: !744)
!773 = !DILocation(line: 445, column: 4, scope: !744)
!774 = !DILocation(line: 445, column: 11, scope: !744)
!775 = !DILocation(line: 445, column: 18, scope: !744)
!776 = !DILocation(line: 446, column: 40, scope: !744)
!777 = !DILocation(line: 446, column: 21, scope: !744)
!778 = !DILocation(line: 446, column: 4, scope: !744)
!779 = !DILocation(line: 446, column: 11, scope: !744)
!780 = !DILocation(line: 446, column: 19, scope: !744)
!781 = !DILocation(line: 447, column: 21, scope: !744)
!782 = !DILocation(line: 447, column: 4, scope: !744)
!783 = !DILocation(line: 447, column: 11, scope: !744)
!784 = !DILocation(line: 447, column: 19, scope: !744)
!785 = !DILocation(line: 448, column: 23, scope: !744)
!786 = !DILocation(line: 448, column: 4, scope: !744)
!787 = !DILocation(line: 448, column: 11, scope: !744)
!788 = !DILocation(line: 448, column: 21, scope: !744)
!789 = !DILocation(line: 450, column: 4, scope: !744)
!790 = !DILocation(line: 450, column: 11, scope: !744)
!791 = !DILocation(line: 450, column: 20, scope: !744)
!792 = !DILocation(line: 450, column: 25, scope: !744)
!793 = !DILocation(line: 451, column: 4, scope: !744)
!794 = !DILocation(line: 451, column: 11, scope: !744)
!795 = !DILocation(line: 451, column: 20, scope: !744)
!796 = !DILocation(line: 451, column: 29, scope: !744)
!797 = !DILocation(line: 452, column: 33, scope: !744)
!798 = !DILocation(line: 452, column: 4, scope: !744)
!799 = !DILocation(line: 452, column: 11, scope: !744)
!800 = !DILocation(line: 452, column: 20, scope: !744)
!801 = !DILocation(line: 452, column: 31, scope: !744)
!802 = !DILocation(line: 455, column: 32, scope: !744)
!803 = !DILocation(line: 455, column: 39, scope: !744)
!804 = !DILocation(line: 455, column: 46, scope: !744)
!805 = !DILocation(line: 455, column: 4, scope: !744)
!806 = !DILocation(line: 457, column: 11, scope: !807)
!807 = distinct !DILexicalBlock(scope: !744, file: !20, line: 457, column: 4)
!808 = !DILocation(line: 457, column: 9, scope: !807)
!809 = !DILocation(line: 457, column: 16, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !20, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !807, file: !20, line: 457, column: 4)
!812 = !DILocation(line: 457, column: 18, scope: !810)
!813 = !DILocation(line: 457, column: 4, scope: !810)
!814 = !DILocation(line: 458, column: 35, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !20, line: 457, column: 75)
!816 = !DILocation(line: 458, column: 55, scope: !815)
!817 = !DILocation(line: 458, column: 42, scope: !815)
!818 = !DILocation(line: 458, column: 7, scope: !815)
!819 = !DILocation(line: 459, column: 4, scope: !815)
!820 = !DILocation(line: 457, column: 71, scope: !821)
!821 = !DILexicalBlockFile(scope: !811, file: !20, discriminator: 2)
!822 = !DILocation(line: 457, column: 4, scope: !821)
!823 = distinct !{!823, !824}
!824 = !DILocation(line: 457, column: 4, scope: !744)
!825 = !DILocation(line: 461, column: 8, scope: !826)
!826 = distinct !DILexicalBlock(scope: !744, file: !20, line: 461, column: 8)
!827 = !DILocation(line: 461, column: 14, scope: !826)
!828 = !DILocation(line: 461, column: 20, scope: !826)
!829 = !DILocation(line: 461, column: 27, scope: !826)
!830 = !DILocation(line: 461, column: 30, scope: !831)
!831 = !DILexicalBlockFile(scope: !826, file: !20, discriminator: 1)
!832 = !DILocation(line: 461, column: 36, scope: !831)
!833 = !DILocation(line: 461, column: 43, scope: !831)
!834 = !DILocation(line: 461, column: 49, scope: !831)
!835 = !DILocation(line: 461, column: 8, scope: !831)
!836 = !DILocation(line: 462, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !826, file: !20, line: 461, column: 58)
!838 = !DILocation(line: 462, column: 13, scope: !837)
!839 = !DILocation(line: 462, column: 20, scope: !837)
!840 = !DILocation(line: 462, column: 26, scope: !837)
!841 = !DILocation(line: 462, column: 32, scope: !837)
!842 = !DILocation(line: 462, column: 41, scope: !837)
!843 = !DILocation(line: 462, column: 50, scope: !837)
!844 = !DILocation(line: 463, column: 4, scope: !837)
!845 = !DILocation(line: 464, column: 42, scope: !846)
!846 = distinct !DILexicalBlock(scope: !826, file: !20, line: 463, column: 11)
!847 = !DILocation(line: 464, column: 23, scope: !846)
!848 = !DILocation(line: 464, column: 7, scope: !846)
!849 = !DILocation(line: 464, column: 13, scope: !846)
!850 = !DILocation(line: 464, column: 21, scope: !846)
!851 = !DILocation(line: 465, column: 34, scope: !846)
!852 = !DILocation(line: 465, column: 64, scope: !846)
!853 = !DILocation(line: 465, column: 18, scope: !846)
!854 = !DILocation(line: 465, column: 7, scope: !846)
!855 = !DILocation(line: 465, column: 13, scope: !846)
!856 = !DILocation(line: 465, column: 16, scope: !846)
!857 = !DILocation(line: 468, column: 1, scope: !744)
!858 = distinct !DISubprogram(name: "RpcChannelReset", scope: !20, file: !20, line: 200, type: !229, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!859 = !DILocalVariable(name: "data", arg: 1, scope: !858, file: !20, line: 200, type: !231)
!860 = !DILocation(line: 200, column: 28, scope: !858)
!861 = !DILocalVariable(name: "msg", scope: !858, file: !20, line: 202, type: !137)
!862 = !DILocation(line: 202, column: 11, scope: !858)
!863 = !DILocalVariable(name: "chan", scope: !858, file: !20, line: 203, type: !18)
!864 = !DILocation(line: 203, column: 19, scope: !858)
!865 = !DILocation(line: 203, column: 26, scope: !858)
!866 = !DILocation(line: 203, column: 32, scope: !858)
!867 = !DILocation(line: 205, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !858, file: !20, line: 205, column: 8)
!869 = !DILocation(line: 205, column: 14, scope: !868)
!870 = !DILocation(line: 205, column: 25, scope: !868)
!871 = !DILocation(line: 205, column: 8, scope: !858)
!872 = !DILocation(line: 206, column: 26, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !20, line: 205, column: 33)
!874 = !DILocation(line: 206, column: 7, scope: !873)
!875 = !DILocation(line: 206, column: 13, scope: !873)
!876 = !DILocation(line: 206, column: 24, scope: !873)
!877 = !DILocation(line: 207, column: 29, scope: !873)
!878 = !DILocation(line: 207, column: 35, scope: !873)
!879 = !DILocation(line: 207, column: 7, scope: !873)
!880 = !DILocation(line: 208, column: 29, scope: !873)
!881 = !DILocation(line: 208, column: 35, scope: !873)
!882 = !DILocation(line: 208, column: 69, scope: !873)
!883 = !DILocation(line: 208, column: 7, scope: !873)
!884 = !DILocation(line: 209, column: 23, scope: !873)
!885 = !DILocation(line: 209, column: 29, scope: !873)
!886 = !DILocation(line: 209, column: 41, scope: !873)
!887 = !DILocation(line: 209, column: 47, scope: !873)
!888 = !DILocation(line: 209, column: 7, scope: !873)
!889 = !DILocation(line: 210, column: 4, scope: !873)
!890 = !DILocation(line: 212, column: 38, scope: !858)
!891 = !DILocation(line: 212, column: 44, scope: !858)
!892 = !DILocation(line: 212, column: 10, scope: !858)
!893 = !DILocation(line: 212, column: 8, scope: !858)
!894 = !DILocation(line: 213, column: 30, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !20, line: 213, column: 10)
!896 = distinct !DILexicalBlock(scope: !858, file: !20, line: 213, column: 5)
!897 = !DILocation(line: 213, column: 28, scope: !895)
!898 = !DILocation(line: 213, column: 27, scope: !895)
!899 = !DILocation(line: 213, column: 10, scope: !895)
!900 = !DILocation(line: 213, column: 10, scope: !896)
!901 = !DILocation(line: 213, column: 43, scope: !902)
!902 = !DILexicalBlockFile(scope: !903, file: !20, discriminator: 1)
!903 = distinct !DILexicalBlock(scope: !895, file: !20, line: 213, column: 41)
!904 = !DILocation(line: 214, column: 34, scope: !858)
!905 = !DILocation(line: 214, column: 40, scope: !858)
!906 = !DILocation(line: 214, column: 11, scope: !858)
!907 = !DILocation(line: 214, column: 4, scope: !858)
!908 = distinct !DISubprogram(name: "RpcChannel_RegisterCallback", scope: !20, file: !20, line: 480, type: !909, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !42, !418}
!911 = !DILocalVariable(name: "chan", arg: 1, scope: !908, file: !20, line: 480, type: !42)
!912 = !DILocation(line: 480, column: 41, scope: !908)
!913 = !DILocalVariable(name: "rpc", arg: 2, scope: !908, file: !20, line: 481, type: !418)
!914 = !DILocation(line: 481, column: 49, scope: !908)
!915 = !DILocalVariable(name: "cdata", scope: !908, file: !20, line: 483, type: !18)
!916 = !DILocation(line: 483, column: 19, scope: !908)
!917 = !DILocation(line: 483, column: 45, scope: !908)
!918 = !DILocation(line: 483, column: 27, scope: !908)
!919 = !DILocation(line: 487, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !908, file: !20, line: 487, column: 8)
!921 = !DILocation(line: 487, column: 15, scope: !920)
!922 = !DILocation(line: 487, column: 20, scope: !920)
!923 = !DILocation(line: 487, column: 8, scope: !908)
!924 = !DILocation(line: 488, column: 21, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !20, line: 487, column: 28)
!926 = !DILocation(line: 488, column: 7, scope: !925)
!927 = !DILocation(line: 488, column: 14, scope: !925)
!928 = !DILocation(line: 488, column: 19, scope: !925)
!929 = !DILocation(line: 489, column: 4, scope: !925)
!930 = !DILocation(line: 490, column: 28, scope: !931)
!931 = distinct !DILexicalBlock(scope: !908, file: !20, line: 490, column: 8)
!932 = !DILocation(line: 490, column: 35, scope: !931)
!933 = !DILocation(line: 490, column: 41, scope: !931)
!934 = !DILocation(line: 490, column: 46, scope: !931)
!935 = !DILocation(line: 490, column: 8, scope: !931)
!936 = !DILocation(line: 490, column: 52, scope: !931)
!937 = !DILocation(line: 490, column: 8, scope: !908)
!938 = !DILocation(line: 491, column: 72, scope: !939)
!939 = distinct !DILexicalBlock(scope: !931, file: !20, line: 490, column: 60)
!940 = !DILocation(line: 491, column: 77, scope: !939)
!941 = !DILocation(line: 491, column: 7, scope: !939)
!942 = !DILocation(line: 493, column: 24, scope: !908)
!943 = !DILocation(line: 493, column: 31, scope: !908)
!944 = !DILocation(line: 493, column: 48, scope: !908)
!945 = !DILocation(line: 493, column: 53, scope: !908)
!946 = !DILocation(line: 493, column: 59, scope: !908)
!947 = !DILocation(line: 493, column: 4, scope: !908)
!948 = !DILocation(line: 494, column: 1, scope: !908)
!949 = distinct !DISubprogram(name: "RpcChannel_UnregisterCallback", scope: !20, file: !20, line: 506, type: !909, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!950 = !DILocalVariable(name: "chan", arg: 1, scope: !949, file: !20, line: 506, type: !42)
!951 = !DILocation(line: 506, column: 43, scope: !949)
!952 = !DILocalVariable(name: "rpc", arg: 2, scope: !949, file: !20, line: 507, type: !418)
!953 = !DILocation(line: 507, column: 51, scope: !949)
!954 = !DILocalVariable(name: "cdata", scope: !949, file: !20, line: 509, type: !18)
!955 = !DILocation(line: 509, column: 19, scope: !949)
!956 = !DILocation(line: 509, column: 45, scope: !949)
!957 = !DILocation(line: 509, column: 27, scope: !949)
!958 = !DILocation(line: 510, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !20, line: 510, column: 8)
!960 = !DILocation(line: 510, column: 15, scope: !959)
!961 = !DILocation(line: 510, column: 20, scope: !959)
!962 = !DILocation(line: 510, column: 8, scope: !949)
!963 = !DILocation(line: 511, column: 27, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !20, line: 510, column: 28)
!965 = !DILocation(line: 511, column: 34, scope: !964)
!966 = !DILocation(line: 511, column: 40, scope: !964)
!967 = !DILocation(line: 511, column: 45, scope: !964)
!968 = !DILocation(line: 511, column: 7, scope: !964)
!969 = !DILocation(line: 512, column: 4, scope: !964)
!970 = !DILocation(line: 513, column: 1, scope: !949)
!971 = distinct !DISubprogram(name: "RpcChannel_Create", scope: !20, file: !20, line: 558, type: !972, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!972 = !DISubroutineType(types: !973)
!973 = !{!42}
!974 = !DILocalVariable(name: "chan", scope: !971, file: !20, line: 560, type: !18)
!975 = !DILocation(line: 560, column: 19, scope: !971)
!976 = !DILocation(line: 560, column: 45, scope: !971)
!977 = !DILocation(line: 560, column: 27, scope: !971)
!978 = !DILocation(line: 561, column: 12, scope: !971)
!979 = !DILocation(line: 561, column: 18, scope: !971)
!980 = !DILocation(line: 561, column: 4, scope: !971)
!981 = distinct !DISubprogram(name: "RpcChannel_Destroy", scope: !20, file: !20, line: 574, type: !36, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!982 = !DILocalVariable(name: "chan", arg: 1, scope: !981, file: !20, line: 574, type: !42)
!983 = !DILocation(line: 574, column: 32, scope: !981)
!984 = !DILocalVariable(name: "i", scope: !981, file: !20, line: 577, type: !54)
!985 = !DILocation(line: 577, column: 11, scope: !981)
!986 = !DILocalVariable(name: "cdata", scope: !981, file: !20, line: 579, type: !18)
!987 = !DILocation(line: 579, column: 19, scope: !981)
!988 = !DILocation(line: 579, column: 45, scope: !981)
!989 = !DILocation(line: 579, column: 27, scope: !981)
!990 = !DILocation(line: 581, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !981, file: !20, line: 581, column: 8)
!992 = !DILocation(line: 581, column: 15, scope: !991)
!993 = !DILocation(line: 581, column: 20, scope: !991)
!994 = !DILocation(line: 581, column: 26, scope: !991)
!995 = !DILocation(line: 581, column: 33, scope: !991)
!996 = !DILocation(line: 581, column: 36, scope: !997)
!997 = !DILexicalBlockFile(scope: !991, file: !20, discriminator: 1)
!998 = !DILocation(line: 581, column: 43, scope: !997)
!999 = !DILocation(line: 581, column: 48, scope: !997)
!1000 = !DILocation(line: 581, column: 55, scope: !997)
!1001 = !DILocation(line: 581, column: 64, scope: !997)
!1002 = !DILocation(line: 581, column: 8, scope: !997)
!1003 = !DILocation(line: 582, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !991, file: !20, line: 581, column: 73)
!1005 = !DILocation(line: 582, column: 14, scope: !1004)
!1006 = !DILocation(line: 582, column: 19, scope: !1004)
!1007 = !DILocation(line: 582, column: 26, scope: !1004)
!1008 = !DILocation(line: 582, column: 35, scope: !1004)
!1009 = !DILocation(line: 583, column: 4, scope: !1004)
!1010 = !DILocation(line: 586, column: 34, scope: !981)
!1011 = !DILocation(line: 586, column: 41, scope: !981)
!1012 = !DILocation(line: 586, column: 48, scope: !981)
!1013 = !DILocation(line: 586, column: 4, scope: !981)
!1014 = !DILocation(line: 587, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !981, file: !20, line: 587, column: 4)
!1016 = !DILocation(line: 587, column: 9, scope: !1015)
!1017 = !DILocation(line: 587, column: 16, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !20, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !20, line: 587, column: 4)
!1020 = !DILocation(line: 587, column: 18, scope: !1018)
!1021 = !DILocation(line: 587, column: 4, scope: !1018)
!1022 = !DILocation(line: 588, column: 37, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !20, line: 587, column: 75)
!1024 = !DILocation(line: 588, column: 57, scope: !1023)
!1025 = !DILocation(line: 588, column: 44, scope: !1023)
!1026 = !DILocation(line: 588, column: 7, scope: !1023)
!1027 = !DILocation(line: 589, column: 4, scope: !1023)
!1028 = !DILocation(line: 587, column: 71, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1019, file: !20, discriminator: 2)
!1030 = !DILocation(line: 587, column: 4, scope: !1029)
!1031 = distinct !{!1031, !1032}
!1032 = !DILocation(line: 587, column: 4, scope: !981)
!1033 = !DILocation(line: 591, column: 8, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !981, file: !20, line: 591, column: 8)
!1035 = !DILocation(line: 591, column: 15, scope: !1034)
!1036 = !DILocation(line: 591, column: 20, scope: !1034)
!1037 = !DILocation(line: 591, column: 8, scope: !981)
!1038 = !DILocation(line: 592, column: 28, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !20, line: 591, column: 28)
!1040 = !DILocation(line: 592, column: 35, scope: !1039)
!1041 = !DILocation(line: 592, column: 7, scope: !1039)
!1042 = !DILocation(line: 593, column: 7, scope: !1039)
!1043 = !DILocation(line: 593, column: 14, scope: !1039)
!1044 = !DILocation(line: 593, column: 19, scope: !1039)
!1045 = !DILocation(line: 594, column: 4, scope: !1039)
!1046 = !DILocation(line: 596, column: 4, scope: !981)
!1047 = !DILocation(line: 596, column: 11, scope: !981)
!1048 = !DILocation(line: 596, column: 19, scope: !981)
!1049 = !DILocation(line: 597, column: 4, scope: !981)
!1050 = !DILocation(line: 597, column: 11, scope: !981)
!1051 = !DILocation(line: 597, column: 21, scope: !981)
!1052 = !DILocation(line: 598, column: 4, scope: !981)
!1053 = !DILocation(line: 598, column: 11, scope: !981)
!1054 = !DILocation(line: 598, column: 18, scope: !981)
!1055 = !DILocation(line: 600, column: 11, scope: !981)
!1056 = !DILocation(line: 600, column: 18, scope: !981)
!1057 = !DILocation(line: 600, column: 4, scope: !981)
!1058 = !DILocation(line: 601, column: 4, scope: !981)
!1059 = !DILocation(line: 601, column: 11, scope: !981)
!1060 = !DILocation(line: 601, column: 19, scope: !981)
!1061 = !DILocation(line: 603, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !981, file: !20, line: 603, column: 8)
!1063 = !DILocation(line: 603, column: 15, scope: !1062)
!1064 = !DILocation(line: 603, column: 23, scope: !1062)
!1065 = !DILocation(line: 603, column: 8, scope: !981)
!1066 = !DILocation(line: 604, column: 28, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !20, line: 603, column: 31)
!1068 = !DILocation(line: 604, column: 35, scope: !1067)
!1069 = !DILocation(line: 604, column: 7, scope: !1067)
!1070 = !DILocation(line: 605, column: 7, scope: !1067)
!1071 = !DILocation(line: 605, column: 14, scope: !1067)
!1072 = !DILocation(line: 605, column: 22, scope: !1067)
!1073 = !DILocation(line: 606, column: 4, scope: !1067)
!1074 = !DILocation(line: 608, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !981, file: !20, line: 608, column: 8)
!1076 = !DILocation(line: 608, column: 15, scope: !1075)
!1077 = !DILocation(line: 608, column: 26, scope: !1075)
!1078 = !DILocation(line: 608, column: 8, scope: !981)
!1079 = !DILocation(line: 609, column: 24, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !20, line: 608, column: 34)
!1081 = !DILocation(line: 609, column: 31, scope: !1080)
!1082 = !DILocation(line: 609, column: 7, scope: !1080)
!1083 = !DILocation(line: 610, column: 7, scope: !1080)
!1084 = !DILocation(line: 610, column: 14, scope: !1080)
!1085 = !DILocation(line: 610, column: 25, scope: !1080)
!1086 = !DILocation(line: 611, column: 4, scope: !1080)
!1087 = !DILocation(line: 614, column: 11, scope: !981)
!1088 = !DILocation(line: 614, column: 4, scope: !981)
!1089 = !DILocation(line: 615, column: 4, scope: !981)
!1090 = distinct !DISubprogram(name: "RpcChannel_SetRetValsF", scope: !20, file: !20, line: 658, type: !1091, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!38, !231, !61, !38}
!1093 = !DILocalVariable(name: "data", arg: 1, scope: !1090, file: !20, line: 658, type: !231)
!1094 = !DILocation(line: 658, column: 35, scope: !1090)
!1095 = !DILocalVariable(name: "result", arg: 2, scope: !1090, file: !20, line: 659, type: !61)
!1096 = !DILocation(line: 659, column: 30, scope: !1090)
!1097 = !DILocalVariable(name: "retVal", arg: 3, scope: !1090, file: !20, line: 660, type: !38)
!1098 = !DILocation(line: 660, column: 33, scope: !1090)
!1099 = !DILocation(line: 664, column: 19, scope: !1090)
!1100 = !DILocation(line: 664, column: 4, scope: !1090)
!1101 = !DILocation(line: 664, column: 10, scope: !1090)
!1102 = !DILocation(line: 664, column: 17, scope: !1090)
!1103 = !DILocation(line: 665, column: 29, scope: !1090)
!1104 = !DILocation(line: 665, column: 35, scope: !1090)
!1105 = !DILocation(line: 665, column: 22, scope: !1090)
!1106 = !DILocation(line: 665, column: 4, scope: !1090)
!1107 = !DILocation(line: 665, column: 10, scope: !1090)
!1108 = !DILocation(line: 665, column: 20, scope: !1090)
!1109 = !DILocation(line: 666, column: 4, scope: !1090)
!1110 = !DILocation(line: 666, column: 10, scope: !1090)
!1111 = !DILocation(line: 666, column: 21, scope: !1090)
!1112 = !DILocation(line: 668, column: 11, scope: !1090)
!1113 = !DILocation(line: 668, column: 4, scope: !1090)
!1114 = distinct !DISubprogram(name: "RpcChannel_SetBackdoorOnly", scope: !20, file: !20, line: 679, type: !198, isLocal: false, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1115 = !DILocation(line: 681, column: 21, scope: !1114)
!1116 = !DILocation(line: 682, column: 4, scope: !1114)
!1117 = !DILocation(line: 683, column: 1, scope: !1114)
!1118 = distinct !DISubprogram(name: "RpcChannel_New", scope: !20, file: !20, line: 694, type: !972, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1119 = !DILocalVariable(name: "chan", scope: !1118, file: !20, line: 696, type: !42)
!1120 = !DILocation(line: 696, column: 16, scope: !1118)
!1121 = !DILocation(line: 698, column: 12, scope: !1118)
!1122 = !DILocation(line: 698, column: 29, scope: !1118)
!1123 = !DILocation(line: 698, column: 32, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1118, file: !20, discriminator: 1)
!1125 = !DILocation(line: 698, column: 11, scope: !1124)
!1126 = !DILocation(line: 699, column: 11, scope: !1118)
!1127 = !DILocation(line: 698, column: 11, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1118, file: !20, discriminator: 2)
!1129 = !DILocation(line: 699, column: 35, scope: !1124)
!1130 = !DILocation(line: 698, column: 11, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1118, file: !20, discriminator: 3)
!1132 = !DILocation(line: 698, column: 11, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1118, file: !20, discriminator: 4)
!1134 = !DILocation(line: 698, column: 9, scope: !1133)
!1135 = !DILocation(line: 703, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1118, file: !20, line: 703, column: 8)
!1137 = !DILocation(line: 703, column: 8, scope: !1118)
!1138 = !DILocation(line: 704, column: 28, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !20, line: 703, column: 14)
!1140 = !DILocation(line: 704, column: 34, scope: !1139)
!1141 = !DILocation(line: 704, column: 7, scope: !1139)
!1142 = !DILocation(line: 705, column: 4, scope: !1139)
!1143 = !DILocation(line: 706, column: 11, scope: !1118)
!1144 = !DILocation(line: 706, column: 4, scope: !1118)
!1145 = distinct !DISubprogram(name: "RpcChannel_Shutdown", scope: !20, file: !20, line: 717, type: !45, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1146 = !DILocalVariable(name: "chan", arg: 1, scope: !1145, file: !20, line: 717, type: !42)
!1147 = !DILocation(line: 717, column: 33, scope: !1145)
!1148 = !DILocation(line: 719, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !20, line: 719, column: 8)
!1150 = !DILocation(line: 719, column: 13, scope: !1149)
!1151 = !DILocation(line: 719, column: 8, scope: !1145)
!1152 = !DILocation(line: 720, column: 28, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !20, line: 719, column: 21)
!1154 = !DILocation(line: 720, column: 34, scope: !1153)
!1155 = !DILocation(line: 720, column: 7, scope: !1153)
!1156 = !DILocation(line: 721, column: 4, scope: !1153)
!1157 = !DILocation(line: 723, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1145, file: !20, line: 723, column: 8)
!1159 = !DILocation(line: 723, column: 13, scope: !1158)
!1160 = !DILocation(line: 723, column: 20, scope: !1158)
!1161 = !DILocation(line: 723, column: 23, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1158, file: !20, discriminator: 1)
!1163 = !DILocation(line: 723, column: 29, scope: !1162)
!1164 = !DILocation(line: 723, column: 35, scope: !1162)
!1165 = !DILocation(line: 723, column: 43, scope: !1162)
!1166 = !DILocation(line: 723, column: 46, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1158, file: !20, discriminator: 2)
!1168 = !DILocation(line: 723, column: 52, scope: !1167)
!1169 = !DILocation(line: 723, column: 59, scope: !1167)
!1170 = !DILocation(line: 723, column: 68, scope: !1167)
!1171 = !DILocation(line: 723, column: 8, scope: !1167)
!1172 = !DILocation(line: 725, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !20, line: 725, column: 11)
!1174 = distinct !DILexicalBlock(scope: !1158, file: !20, line: 723, column: 77)
!1175 = !DILocation(line: 725, column: 17, scope: !1173)
!1176 = !DILocation(line: 725, column: 20, scope: !1173)
!1177 = !DILocation(line: 725, column: 11, scope: !1174)
!1178 = !DILocation(line: 726, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !20, line: 726, column: 14)
!1180 = distinct !DILexicalBlock(scope: !1173, file: !20, line: 725, column: 28)
!1181 = !DILocation(line: 726, column: 20, scope: !1179)
!1182 = !DILocation(line: 726, column: 14, scope: !1180)
!1183 = !DILocation(line: 727, column: 24, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !20, line: 726, column: 31)
!1185 = !DILocation(line: 727, column: 30, scope: !1184)
!1186 = !DILocation(line: 727, column: 13, scope: !1184)
!1187 = !DILocation(line: 728, column: 10, scope: !1184)
!1188 = !DILocation(line: 729, column: 10, scope: !1180)
!1189 = !DILocation(line: 729, column: 16, scope: !1180)
!1190 = !DILocation(line: 729, column: 26, scope: !1180)
!1191 = !DILocation(line: 730, column: 25, scope: !1180)
!1192 = !DILocation(line: 730, column: 31, scope: !1180)
!1193 = !DILocation(line: 730, column: 10, scope: !1180)
!1194 = !DILocation(line: 731, column: 10, scope: !1180)
!1195 = !DILocation(line: 731, column: 16, scope: !1180)
!1196 = !DILocation(line: 731, column: 19, scope: !1180)
!1197 = !DILocation(line: 732, column: 7, scope: !1180)
!1198 = !DILocation(line: 736, column: 11, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1174, file: !20, line: 736, column: 11)
!1200 = !DILocation(line: 736, column: 17, scope: !1199)
!1201 = !DILocation(line: 736, column: 25, scope: !1199)
!1202 = !DILocation(line: 736, column: 11, scope: !1174)
!1203 = !DILocation(line: 737, column: 31, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !20, line: 736, column: 33)
!1205 = !DILocation(line: 737, column: 37, scope: !1204)
!1206 = !DILocation(line: 737, column: 10, scope: !1204)
!1207 = !DILocation(line: 738, column: 7, scope: !1204)
!1208 = !DILocation(line: 740, column: 7, scope: !1174)
!1209 = !DILocation(line: 740, column: 13, scope: !1174)
!1210 = !DILocation(line: 740, column: 20, scope: !1174)
!1211 = !DILocation(line: 740, column: 29, scope: !1174)
!1212 = !DILocation(line: 741, column: 4, scope: !1174)
!1213 = !DILocation(line: 742, column: 1, scope: !1145)
!1214 = distinct !DISubprogram(name: "RpcChannel_Start", scope: !20, file: !20, line: 755, type: !36, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1215 = !DILocalVariable(name: "chan", arg: 1, scope: !1214, file: !20, line: 755, type: !42)
!1216 = !DILocation(line: 755, column: 30, scope: !1214)
!1217 = !DILocalVariable(name: "ok", scope: !1214, file: !20, line: 757, type: !38)
!1218 = !DILocation(line: 757, column: 13, scope: !1214)
!1219 = !DILocalVariable(name: "funcs", scope: !1214, file: !20, line: 758, type: !29)
!1220 = !DILocation(line: 758, column: 27, scope: !1214)
!1221 = !DILocation(line: 760, column: 8, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !20, line: 760, column: 8)
!1223 = !DILocation(line: 760, column: 13, scope: !1222)
!1224 = !DILocation(line: 760, column: 20, scope: !1222)
!1225 = !DILocation(line: 760, column: 23, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1222, file: !20, discriminator: 1)
!1227 = !DILocation(line: 760, column: 29, scope: !1226)
!1228 = !DILocation(line: 760, column: 35, scope: !1226)
!1229 = !DILocation(line: 760, column: 43, scope: !1226)
!1230 = !DILocation(line: 760, column: 46, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1222, file: !20, discriminator: 2)
!1232 = !DILocation(line: 760, column: 52, scope: !1231)
!1233 = !DILocation(line: 760, column: 59, scope: !1231)
!1234 = !DILocation(line: 760, column: 65, scope: !1231)
!1235 = !DILocation(line: 760, column: 8, scope: !1231)
!1236 = !DILocation(line: 761, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !20, line: 760, column: 74)
!1238 = !DILocation(line: 764, column: 8, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1214, file: !20, line: 764, column: 8)
!1240 = !DILocation(line: 764, column: 14, scope: !1239)
!1241 = !DILocation(line: 764, column: 8, scope: !1214)
!1242 = !DILocation(line: 769, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !20, line: 764, column: 26)
!1244 = !DILocation(line: 773, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1214, file: !20, line: 773, column: 8)
!1246 = !DILocation(line: 773, column: 14, scope: !1245)
!1247 = !DILocation(line: 773, column: 17, scope: !1245)
!1248 = !DILocation(line: 773, column: 24, scope: !1245)
!1249 = !DILocation(line: 773, column: 28, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1245, file: !20, discriminator: 1)
!1251 = !DILocation(line: 773, column: 34, scope: !1250)
!1252 = !DILocation(line: 773, column: 8, scope: !1250)
!1253 = !DILocation(line: 774, column: 24, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1245, file: !20, line: 773, column: 45)
!1255 = !DILocation(line: 774, column: 30, scope: !1254)
!1256 = !DILocation(line: 774, column: 55, scope: !1254)
!1257 = !DILocation(line: 774, column: 12, scope: !1254)
!1258 = !DILocation(line: 774, column: 10, scope: !1254)
!1259 = !DILocation(line: 775, column: 25, scope: !1254)
!1260 = !DILocation(line: 775, column: 7, scope: !1254)
!1261 = !DILocation(line: 775, column: 13, scope: !1254)
!1262 = !DILocation(line: 775, column: 23, scope: !1254)
!1263 = !DILocation(line: 776, column: 4, scope: !1254)
!1264 = !DILocation(line: 779, column: 12, scope: !1214)
!1265 = !DILocation(line: 779, column: 18, scope: !1214)
!1266 = !DILocation(line: 779, column: 10, scope: !1214)
!1267 = !DILocation(line: 780, column: 9, scope: !1214)
!1268 = !DILocation(line: 780, column: 16, scope: !1214)
!1269 = !DILocation(line: 780, column: 22, scope: !1214)
!1270 = !DILocation(line: 780, column: 7, scope: !1214)
!1271 = !DILocation(line: 782, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1214, file: !20, line: 782, column: 8)
!1273 = !DILocation(line: 782, column: 12, scope: !1272)
!1274 = !DILocation(line: 782, column: 15, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1272, file: !20, discriminator: 1)
!1276 = !DILocation(line: 782, column: 22, scope: !1275)
!1277 = !DILocation(line: 782, column: 33, scope: !1275)
!1278 = !DILocation(line: 782, column: 8, scope: !1275)
!1279 = !DILocation(line: 783, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !20, line: 782, column: 41)
!1281 = !DILocation(line: 784, column: 7, scope: !1280)
!1282 = !DILocation(line: 784, column: 14, scope: !1280)
!1283 = !DILocation(line: 784, column: 25, scope: !1280)
!1284 = !DILocation(line: 785, column: 37, scope: !1280)
!1285 = !DILocation(line: 785, column: 12, scope: !1280)
!1286 = !DILocation(line: 785, column: 10, scope: !1280)
!1287 = !DILocation(line: 790, column: 7, scope: !1280)
!1288 = !DILocation(line: 791, column: 22, scope: !1280)
!1289 = !DILocation(line: 792, column: 4, scope: !1280)
!1290 = !DILocation(line: 794, column: 11, scope: !1214)
!1291 = !DILocation(line: 794, column: 4, scope: !1214)
!1292 = !DILocation(line: 795, column: 1, scope: !1214)
!1293 = distinct !DISubprogram(name: "RpcChannelError", scope: !20, file: !20, line: 525, type: !1294, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !17, !51}
!1296 = !DILocalVariable(name: "_chan", arg: 1, scope: !1293, file: !20, line: 525, type: !17)
!1297 = !DILocation(line: 525, column: 23, scope: !1293)
!1298 = !DILocalVariable(name: "status", arg: 2, scope: !1293, file: !20, line: 526, type: !51)
!1299 = !DILocation(line: 526, column: 30, scope: !1293)
!1300 = !DILocalVariable(name: "chan", scope: !1293, file: !20, line: 528, type: !18)
!1301 = !DILocation(line: 528, column: 19, scope: !1293)
!1302 = !DILocation(line: 528, column: 26, scope: !1293)
!1303 = !DILocation(line: 529, column: 4, scope: !1293)
!1304 = !DILocation(line: 529, column: 10, scope: !1293)
!1305 = !DILocation(line: 529, column: 19, scope: !1293)
!1306 = !DILocation(line: 534, column: 65, scope: !1293)
!1307 = !DILocation(line: 534, column: 4, scope: !1293)
!1308 = !DILocation(line: 536, column: 8, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1293, file: !20, line: 536, column: 8)
!1310 = !DILocation(line: 536, column: 14, scope: !1309)
!1311 = !DILocation(line: 536, column: 25, scope: !1309)
!1312 = !DILocation(line: 536, column: 8, scope: !1293)
!1313 = !DILocation(line: 537, column: 26, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !20, line: 536, column: 33)
!1315 = !DILocation(line: 537, column: 7, scope: !1314)
!1316 = !DILocation(line: 537, column: 13, scope: !1314)
!1317 = !DILocation(line: 537, column: 24, scope: !1314)
!1318 = !DILocation(line: 538, column: 29, scope: !1314)
!1319 = !DILocation(line: 538, column: 35, scope: !1314)
!1320 = !DILocation(line: 538, column: 69, scope: !1314)
!1321 = !DILocation(line: 538, column: 7, scope: !1314)
!1322 = !DILocation(line: 539, column: 23, scope: !1314)
!1323 = !DILocation(line: 539, column: 29, scope: !1314)
!1324 = !DILocation(line: 539, column: 41, scope: !1314)
!1325 = !DILocation(line: 539, column: 47, scope: !1314)
!1326 = !DILocation(line: 539, column: 7, scope: !1314)
!1327 = !DILocation(line: 540, column: 4, scope: !1314)
!1328 = !DILocation(line: 541, column: 1, scope: !1293)
!1329 = distinct !DISubprogram(name: "RpcChannel_Stop", scope: !20, file: !20, line: 834, type: !45, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1330 = !DILocalVariable(name: "chan", arg: 1, scope: !1329, file: !20, line: 834, type: !42)
!1331 = !DILocation(line: 834, column: 29, scope: !1329)
!1332 = !DILocation(line: 836, column: 50, scope: !1329)
!1333 = !DILocation(line: 836, column: 56, scope: !1329)
!1334 = !DILocation(line: 836, column: 18, scope: !1329)
!1335 = !DILocation(line: 836, column: 4, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1329, file: !20, discriminator: 1)
!1337 = !DILocation(line: 837, column: 25, scope: !1329)
!1338 = !DILocation(line: 837, column: 4, scope: !1329)
!1339 = !DILocation(line: 838, column: 52, scope: !1329)
!1340 = !DILocation(line: 838, column: 58, scope: !1329)
!1341 = !DILocation(line: 838, column: 20, scope: !1329)
!1342 = !DILocation(line: 838, column: 4, scope: !1336)
!1343 = !DILocation(line: 839, column: 1, scope: !1329)
!1344 = distinct !DISubprogram(name: "RpcChannelStopNoLock", scope: !20, file: !20, line: 806, type: !45, isLocal: true, isDefinition: true, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1345 = !DILocalVariable(name: "chan", arg: 1, scope: !1344, file: !20, line: 806, type: !42)
!1346 = !DILocation(line: 806, column: 34, scope: !1344)
!1347 = !DILocation(line: 808, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !20, line: 808, column: 8)
!1349 = !DILocation(line: 808, column: 13, scope: !1348)
!1350 = !DILocation(line: 808, column: 20, scope: !1348)
!1351 = !DILocation(line: 808, column: 23, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1348, file: !20, discriminator: 1)
!1353 = !DILocation(line: 808, column: 29, scope: !1352)
!1354 = !DILocation(line: 808, column: 35, scope: !1352)
!1355 = !DILocation(line: 808, column: 43, scope: !1352)
!1356 = !DILocation(line: 808, column: 46, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1348, file: !20, discriminator: 2)
!1358 = !DILocation(line: 808, column: 52, scope: !1357)
!1359 = !DILocation(line: 808, column: 59, scope: !1357)
!1360 = !DILocation(line: 808, column: 64, scope: !1357)
!1361 = !DILocation(line: 808, column: 8, scope: !1357)
!1362 = !DILocation(line: 809, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !20, line: 808, column: 73)
!1364 = !DILocation(line: 812, column: 4, scope: !1344)
!1365 = !DILocation(line: 812, column: 10, scope: !1344)
!1366 = !DILocation(line: 812, column: 17, scope: !1344)
!1367 = !DILocation(line: 812, column: 22, scope: !1344)
!1368 = !DILocation(line: 815, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1344, file: !20, line: 815, column: 8)
!1370 = !DILocation(line: 815, column: 14, scope: !1369)
!1371 = !DILocation(line: 815, column: 17, scope: !1369)
!1372 = !DILocation(line: 815, column: 8, scope: !1344)
!1373 = !DILocation(line: 816, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !20, line: 816, column: 11)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !20, line: 815, column: 25)
!1376 = !DILocation(line: 816, column: 17, scope: !1374)
!1377 = !DILocation(line: 816, column: 11, scope: !1375)
!1378 = !DILocation(line: 817, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !20, line: 816, column: 28)
!1380 = !DILocation(line: 817, column: 27, scope: !1379)
!1381 = !DILocation(line: 817, column: 10, scope: !1379)
!1382 = !DILocation(line: 818, column: 7, scope: !1379)
!1383 = !DILocation(line: 819, column: 7, scope: !1375)
!1384 = !DILocation(line: 819, column: 13, scope: !1375)
!1385 = !DILocation(line: 819, column: 23, scope: !1375)
!1386 = !DILocation(line: 820, column: 4, scope: !1375)
!1387 = !DILocation(line: 824, column: 1, scope: !1344)
!1388 = distinct !DISubprogram(name: "RpcChannel_GetType", scope: !20, file: !20, line: 849, type: !75, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1389 = !DILocalVariable(name: "chan", arg: 1, scope: !1388, file: !20, line: 849, type: !42)
!1390 = !DILocation(line: 849, column: 32, scope: !1388)
!1391 = !DILocation(line: 851, column: 8, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !20, line: 851, column: 8)
!1393 = !DILocation(line: 851, column: 13, scope: !1392)
!1394 = !DILocation(line: 851, column: 20, scope: !1392)
!1395 = !DILocation(line: 851, column: 23, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1392, file: !20, discriminator: 1)
!1397 = !DILocation(line: 851, column: 29, scope: !1396)
!1398 = !DILocation(line: 851, column: 35, scope: !1396)
!1399 = !DILocation(line: 851, column: 43, scope: !1396)
!1400 = !DILocation(line: 851, column: 46, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1392, file: !20, discriminator: 2)
!1402 = !DILocation(line: 851, column: 52, scope: !1401)
!1403 = !DILocation(line: 851, column: 59, scope: !1401)
!1404 = !DILocation(line: 851, column: 67, scope: !1401)
!1405 = !DILocation(line: 851, column: 8, scope: !1401)
!1406 = !DILocation(line: 852, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !20, line: 851, column: 76)
!1408 = !DILocation(line: 854, column: 11, scope: !1388)
!1409 = !DILocation(line: 854, column: 17, scope: !1388)
!1410 = !DILocation(line: 854, column: 24, scope: !1388)
!1411 = !DILocation(line: 854, column: 32, scope: !1388)
!1412 = !DILocation(line: 854, column: 4, scope: !1388)
!1413 = !DILocation(line: 855, column: 1, scope: !1388)
!1414 = distinct !DISubprogram(name: "RpcChannel_Free", scope: !20, file: !20, line: 867, type: !1415, isLocal: false, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !17}
!1417 = !DILocalVariable(name: "ptr", arg: 1, scope: !1414, file: !20, line: 867, type: !17)
!1418 = !DILocation(line: 867, column: 23, scope: !1414)
!1419 = !DILocation(line: 869, column: 9, scope: !1414)
!1420 = !DILocation(line: 869, column: 4, scope: !1414)
!1421 = !DILocation(line: 870, column: 1, scope: !1414)
!1422 = distinct !DISubprogram(name: "RpcChannel_Send", scope: !20, file: !20, line: 889, type: !1423, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!38, !42, !51, !54, !60, !62}
!1425 = !DILocalVariable(name: "chan", arg: 1, scope: !1422, file: !20, line: 889, type: !42)
!1426 = !DILocation(line: 889, column: 29, scope: !1422)
!1427 = !DILocalVariable(name: "data", arg: 2, scope: !1422, file: !20, line: 890, type: !51)
!1428 = !DILocation(line: 890, column: 29, scope: !1422)
!1429 = !DILocalVariable(name: "dataLen", arg: 3, scope: !1422, file: !20, line: 891, type: !54)
!1430 = !DILocation(line: 891, column: 24, scope: !1422)
!1431 = !DILocalVariable(name: "result", arg: 4, scope: !1422, file: !20, line: 892, type: !60)
!1432 = !DILocation(line: 892, column: 24, scope: !1422)
!1433 = !DILocalVariable(name: "resultLen", arg: 5, scope: !1422, file: !20, line: 893, type: !62)
!1434 = !DILocation(line: 893, column: 25, scope: !1422)
!1435 = !DILocalVariable(name: "ok", scope: !1422, file: !20, line: 895, type: !38)
!1436 = !DILocation(line: 895, column: 13, scope: !1422)
!1437 = !DILocalVariable(name: "rpcStatus", scope: !1422, file: !20, line: 896, type: !58)
!1438 = !DILocation(line: 896, column: 9, scope: !1422)
!1439 = !DILocalVariable(name: "res", scope: !1422, file: !20, line: 897, type: !61)
!1440 = !DILocation(line: 897, column: 10, scope: !1422)
!1441 = !DILocalVariable(name: "resLen", scope: !1422, file: !20, line: 898, type: !54)
!1442 = !DILocation(line: 898, column: 11, scope: !1422)
!1443 = !DILocalVariable(name: "funcs", scope: !1422, file: !20, line: 899, type: !29)
!1444 = !DILocation(line: 899, column: 27, scope: !1422)
!1445 = !DILocation(line: 901, column: 53, scope: !1422)
!1446 = !DILocation(line: 901, column: 4, scope: !1422)
!1447 = !DILocation(line: 905, column: 50, scope: !1422)
!1448 = !DILocation(line: 905, column: 56, scope: !1422)
!1449 = !DILocation(line: 905, column: 18, scope: !1422)
!1450 = !DILocation(line: 905, column: 4, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1422, file: !20, discriminator: 1)
!1452 = !DILocation(line: 907, column: 12, scope: !1422)
!1453 = !DILocation(line: 907, column: 18, scope: !1422)
!1454 = !DILocation(line: 907, column: 10, scope: !1422)
!1455 = !DILocation(line: 910, column: 8, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 910, column: 8)
!1457 = !DILocation(line: 910, column: 15, scope: !1456)
!1458 = !DILocation(line: 910, column: 8, scope: !1422)
!1459 = !DILocation(line: 911, column: 8, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !20, line: 910, column: 23)
!1461 = !DILocation(line: 911, column: 15, scope: !1460)
!1462 = !DILocation(line: 912, column: 4, scope: !1460)
!1463 = !DILocation(line: 913, column: 8, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 913, column: 8)
!1465 = !DILocation(line: 913, column: 18, scope: !1464)
!1466 = !DILocation(line: 913, column: 8, scope: !1422)
!1467 = !DILocation(line: 914, column: 8, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !20, line: 913, column: 26)
!1469 = !DILocation(line: 914, column: 18, scope: !1468)
!1470 = !DILocation(line: 915, column: 4, scope: !1468)
!1471 = !DILocation(line: 917, column: 9, scope: !1422)
!1472 = !DILocation(line: 917, column: 16, scope: !1422)
!1473 = !DILocation(line: 917, column: 21, scope: !1422)
!1474 = !DILocation(line: 917, column: 27, scope: !1422)
!1475 = !DILocation(line: 917, column: 33, scope: !1422)
!1476 = !DILocation(line: 917, column: 7, scope: !1422)
!1477 = !DILocation(line: 919, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 919, column: 8)
!1479 = !DILocation(line: 919, column: 12, scope: !1478)
!1480 = !DILocation(line: 919, column: 16, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1478, file: !20, discriminator: 1)
!1482 = !DILocation(line: 919, column: 23, scope: !1481)
!1483 = !DILocation(line: 919, column: 31, scope: !1481)
!1484 = !DILocation(line: 919, column: 37, scope: !1481)
!1485 = !DILocation(line: 919, column: 64, scope: !1481)
!1486 = !DILocation(line: 920, column: 9, scope: !1478)
!1487 = !DILocation(line: 920, column: 16, scope: !1478)
!1488 = !DILocation(line: 920, column: 27, scope: !1478)
!1489 = !DILocation(line: 919, column: 8, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1422, file: !20, discriminator: 2)
!1491 = !DILocation(line: 922, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1478, file: !20, line: 920, column: 36)
!1493 = !DILocation(line: 922, column: 7, scope: !1492)
!1494 = !DILocation(line: 923, column: 11, scope: !1492)
!1495 = !DILocation(line: 924, column: 14, scope: !1492)
!1496 = !DILocation(line: 927, column: 7, scope: !1492)
!1497 = !DILocation(line: 928, column: 7, scope: !1492)
!1498 = !DILocation(line: 928, column: 14, scope: !1492)
!1499 = !DILocation(line: 928, column: 25, scope: !1492)
!1500 = !DILocation(line: 929, column: 28, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !20, line: 929, column: 11)
!1502 = !DILocation(line: 929, column: 11, scope: !1501)
!1503 = !DILocation(line: 929, column: 11, scope: !1492)
!1504 = !DILocation(line: 931, column: 18, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !20, line: 929, column: 35)
!1506 = !DILocation(line: 931, column: 24, scope: !1505)
!1507 = !DILocation(line: 931, column: 16, scope: !1505)
!1508 = !DILocation(line: 933, column: 15, scope: !1505)
!1509 = !DILocation(line: 933, column: 22, scope: !1505)
!1510 = !DILocation(line: 933, column: 27, scope: !1505)
!1511 = !DILocation(line: 933, column: 33, scope: !1505)
!1512 = !DILocation(line: 933, column: 39, scope: !1505)
!1513 = !DILocation(line: 933, column: 13, scope: !1505)
!1514 = !DILocation(line: 934, column: 10, scope: !1505)
!1515 = !DILocation(line: 937, column: 10, scope: !1492)
!1516 = !DILocation(line: 938, column: 7, scope: !1492)
!1517 = !DILocation(line: 920, column: 33, scope: !1481)
!1518 = !DILocation(line: 942, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 942, column: 8)
!1520 = !DILocation(line: 942, column: 8, scope: !1422)
!1521 = !DILocation(line: 943, column: 54, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !20, line: 942, column: 12)
!1523 = !DILocation(line: 943, column: 7, scope: !1522)
!1524 = !DILocation(line: 944, column: 4, scope: !1522)
!1525 = !DILocation(line: 946, column: 8, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 946, column: 8)
!1527 = !DILocation(line: 946, column: 15, scope: !1526)
!1528 = !DILocation(line: 946, column: 8, scope: !1422)
!1529 = !DILocation(line: 947, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !20, line: 946, column: 23)
!1531 = !DILocation(line: 947, column: 8, scope: !1530)
!1532 = !DILocation(line: 947, column: 15, scope: !1530)
!1533 = !DILocation(line: 948, column: 4, scope: !1530)
!1534 = !DILocation(line: 949, column: 12, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !20, line: 948, column: 11)
!1536 = !DILocation(line: 949, column: 7, scope: !1535)
!1537 = !DILocation(line: 951, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1422, file: !20, line: 951, column: 8)
!1539 = !DILocation(line: 951, column: 18, scope: !1538)
!1540 = !DILocation(line: 951, column: 8, scope: !1422)
!1541 = !DILocation(line: 952, column: 20, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !20, line: 951, column: 26)
!1543 = !DILocation(line: 952, column: 8, scope: !1542)
!1544 = !DILocation(line: 952, column: 18, scope: !1542)
!1545 = !DILocation(line: 953, column: 4, scope: !1542)
!1546 = !DILocation(line: 951, column: 30, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1538, file: !20, discriminator: 1)
!1548 = !DILocation(line: 956, column: 52, scope: !1422)
!1549 = !DILocation(line: 956, column: 58, scope: !1422)
!1550 = !DILocation(line: 956, column: 20, scope: !1422)
!1551 = !DILocation(line: 956, column: 4, scope: !1451)
!1552 = !DILocation(line: 957, column: 11, scope: !1422)
!1553 = !DILocation(line: 957, column: 14, scope: !1422)
!1554 = !DILocation(line: 957, column: 17, scope: !1451)
!1555 = !DILocation(line: 957, column: 14, scope: !1451)
!1556 = !DILocation(line: 957, column: 14, scope: !1490)
!1557 = !DILocation(line: 957, column: 4, scope: !1490)
!1558 = distinct !DISubprogram(name: "RpcChannel_SendOneRaw", scope: !20, file: !20, line: 974, type: !1559, isLocal: false, isDefinition: true, scopeLine: 978, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!38, !51, !54, !60, !62}
!1561 = !DILocalVariable(name: "data", arg: 1, scope: !1558, file: !20, line: 974, type: !51)
!1562 = !DILocation(line: 974, column: 35, scope: !1558)
!1563 = !DILocalVariable(name: "dataLen", arg: 2, scope: !1558, file: !20, line: 975, type: !54)
!1564 = !DILocation(line: 975, column: 30, scope: !1558)
!1565 = !DILocalVariable(name: "result", arg: 3, scope: !1558, file: !20, line: 976, type: !60)
!1566 = !DILocation(line: 976, column: 30, scope: !1558)
!1567 = !DILocalVariable(name: "resultLen", arg: 4, scope: !1558, file: !20, line: 977, type: !62)
!1568 = !DILocation(line: 977, column: 31, scope: !1558)
!1569 = !DILocalVariable(name: "chan", scope: !1558, file: !20, line: 979, type: !42)
!1570 = !DILocation(line: 979, column: 16, scope: !1558)
!1571 = !DILocalVariable(name: "status", scope: !1558, file: !20, line: 980, type: !38)
!1572 = !DILocation(line: 980, column: 13, scope: !1558)
!1573 = !DILocation(line: 982, column: 11, scope: !1558)
!1574 = !DILocation(line: 984, column: 11, scope: !1558)
!1575 = !DILocation(line: 984, column: 9, scope: !1558)
!1576 = !DILocation(line: 985, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1558, file: !20, line: 985, column: 8)
!1578 = !DILocation(line: 985, column: 13, scope: !1577)
!1579 = !DILocation(line: 985, column: 8, scope: !1558)
!1580 = !DILocation(line: 986, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !20, line: 986, column: 11)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !20, line: 985, column: 21)
!1583 = !DILocation(line: 986, column: 18, scope: !1581)
!1584 = !DILocation(line: 986, column: 11, scope: !1582)
!1585 = !DILocation(line: 987, column: 20, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !20, line: 986, column: 26)
!1587 = !DILocation(line: 987, column: 11, scope: !1586)
!1588 = !DILocation(line: 987, column: 18, scope: !1586)
!1589 = !DILocation(line: 989, column: 14, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !20, line: 989, column: 14)
!1591 = !DILocation(line: 989, column: 24, scope: !1590)
!1592 = !DILocation(line: 989, column: 14, scope: !1586)
!1593 = !DILocation(line: 990, column: 34, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !20, line: 989, column: 32)
!1595 = !DILocation(line: 990, column: 33, scope: !1594)
!1596 = !DILocation(line: 990, column: 26, scope: !1594)
!1597 = !DILocation(line: 990, column: 14, scope: !1594)
!1598 = !DILocation(line: 990, column: 24, scope: !1594)
!1599 = !DILocation(line: 991, column: 10, scope: !1594)
!1600 = !DILocation(line: 992, column: 7, scope: !1586)
!1601 = !DILocation(line: 993, column: 7, scope: !1582)
!1602 = !DILocation(line: 994, column: 33, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1577, file: !20, line: 994, column: 15)
!1604 = !DILocation(line: 994, column: 16, scope: !1603)
!1605 = !DILocation(line: 994, column: 15, scope: !1577)
!1606 = !DILocation(line: 995, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !20, line: 995, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !20, line: 994, column: 40)
!1609 = !DILocation(line: 995, column: 18, scope: !1607)
!1610 = !DILocation(line: 995, column: 11, scope: !1608)
!1611 = !DILocation(line: 996, column: 20, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !20, line: 995, column: 26)
!1613 = !DILocation(line: 996, column: 11, scope: !1612)
!1614 = !DILocation(line: 996, column: 18, scope: !1612)
!1615 = !DILocation(line: 998, column: 14, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !20, line: 998, column: 14)
!1617 = !DILocation(line: 998, column: 24, scope: !1616)
!1618 = !DILocation(line: 998, column: 14, scope: !1612)
!1619 = !DILocation(line: 999, column: 34, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !20, line: 998, column: 32)
!1621 = !DILocation(line: 999, column: 33, scope: !1620)
!1622 = !DILocation(line: 999, column: 26, scope: !1620)
!1623 = !DILocation(line: 999, column: 14, scope: !1620)
!1624 = !DILocation(line: 999, column: 24, scope: !1620)
!1625 = !DILocation(line: 1000, column: 10, scope: !1620)
!1626 = !DILocation(line: 1001, column: 7, scope: !1612)
!1627 = !DILocation(line: 1002, column: 7, scope: !1608)
!1628 = !DILocation(line: 1003, column: 32, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1603, file: !20, line: 1003, column: 15)
!1630 = !DILocation(line: 1003, column: 38, scope: !1629)
!1631 = !DILocation(line: 1003, column: 44, scope: !1629)
!1632 = !DILocation(line: 1003, column: 53, scope: !1629)
!1633 = !DILocation(line: 1003, column: 61, scope: !1629)
!1634 = !DILocation(line: 1003, column: 16, scope: !1629)
!1635 = !DILocation(line: 1003, column: 15, scope: !1603)
!1636 = !DILocation(line: 1005, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1629, file: !20, line: 1003, column: 73)
!1638 = !DILocation(line: 1008, column: 11, scope: !1558)
!1639 = !DILocation(line: 1008, column: 4, scope: !1558)
!1640 = !DILocation(line: 1012, column: 10, scope: !1558)
!1641 = !DILocation(line: 1012, column: 36, scope: !1558)
!1642 = !DILocation(line: 1012, column: 45, scope: !1558)
!1643 = !DILocation(line: 1012, column: 58, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1558, file: !20, discriminator: 1)
!1645 = !DILocation(line: 1012, column: 57, scope: !1644)
!1646 = !DILocation(line: 1012, column: 45, scope: !1644)
!1647 = !DILocation(line: 1012, column: 45, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1558, file: !20, discriminator: 2)
!1649 = !DILocation(line: 1012, column: 45, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1558, file: !20, discriminator: 3)
!1651 = !DILocation(line: 1011, column: 4, scope: !1558)
!1652 = !DILocation(line: 1013, column: 8, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1558, file: !20, line: 1013, column: 8)
!1654 = !DILocation(line: 1013, column: 8, scope: !1558)
!1655 = !DILocation(line: 1014, column: 23, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !20, line: 1013, column: 14)
!1657 = !DILocation(line: 1014, column: 7, scope: !1656)
!1658 = !DILocation(line: 1015, column: 26, scope: !1656)
!1659 = !DILocation(line: 1015, column: 7, scope: !1656)
!1660 = !DILocation(line: 1016, column: 4, scope: !1656)
!1661 = !DILocation(line: 1018, column: 11, scope: !1558)
!1662 = !DILocation(line: 1018, column: 4, scope: !1558)
!1663 = distinct !DISubprogram(name: "RpcChannel_SendOne", scope: !20, file: !20, line: 1035, type: !1664, isLocal: false, isDefinition: true, scopeLine: 1039, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!38, !60, !62, !51, null}
!1666 = !DILocalVariable(name: "reply", arg: 1, scope: !1663, file: !20, line: 1035, type: !60)
!1667 = !DILocation(line: 1035, column: 27, scope: !1663)
!1668 = !DILocalVariable(name: "repLen", arg: 2, scope: !1663, file: !20, line: 1036, type: !62)
!1669 = !DILocation(line: 1036, column: 28, scope: !1663)
!1670 = !DILocalVariable(name: "reqFmt", arg: 3, scope: !1663, file: !20, line: 1037, type: !51)
!1671 = !DILocation(line: 1037, column: 32, scope: !1663)
!1672 = !DILocalVariable(name: "args", scope: !1663, file: !20, line: 1040, type: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1674, line: 98, baseType: !1675)
!1674 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line819")
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1674, line: 40, baseType: !1676)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 1040, baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1678, size: 192, align: 64, elements: !335)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 1040, size: 192, align: 64, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1678, file: !1, line: 1040, baseType: !99, size: 32, align: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1678, file: !1, line: 1040, baseType: !99, size: 32, align: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1678, file: !1, line: 1040, baseType: !17, size: 64, align: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1678, file: !1, line: 1040, baseType: !17, size: 64, align: 64, offset: 128)
!1684 = !DILocation(line: 1040, column: 12, scope: !1663)
!1685 = !DILocalVariable(name: "status", scope: !1663, file: !20, line: 1041, type: !38)
!1686 = !DILocation(line: 1041, column: 13, scope: !1663)
!1687 = !DILocalVariable(name: "request", scope: !1663, file: !20, line: 1042, type: !61)
!1688 = !DILocation(line: 1042, column: 10, scope: !1663)
!1689 = !DILocalVariable(name: "reqLen", scope: !1663, file: !20, line: 1043, type: !54)
!1690 = !DILocation(line: 1043, column: 11, scope: !1663)
!1691 = !DILocation(line: 1045, column: 11, scope: !1663)
!1692 = !DILocation(line: 1048, column: 3, scope: !1663)
!1693 = !DILocation(line: 1049, column: 37, scope: !1663)
!1694 = !DILocation(line: 1049, column: 45, scope: !1663)
!1695 = !DILocation(line: 1049, column: 14, scope: !1663)
!1696 = !DILocation(line: 1049, column: 12, scope: !1663)
!1697 = !DILocation(line: 1050, column: 3, scope: !1663)
!1698 = !DILocation(line: 1056, column: 8, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1663, file: !20, line: 1056, column: 8)
!1700 = !DILocation(line: 1056, column: 16, scope: !1699)
!1701 = !DILocation(line: 1056, column: 8, scope: !1663)
!1702 = !DILocation(line: 1057, column: 1, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !20, line: 1056, column: 24)
!1704 = !DILocation(line: 1058, column: 7, scope: !1703)
!1705 = !DILocation(line: 1069, column: 16, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1663, file: !20, line: 1069, column: 8)
!1707 = !DILocation(line: 1069, column: 23, scope: !1706)
!1708 = !DILocation(line: 1069, column: 8, scope: !1706)
!1709 = !DILocation(line: 1069, column: 28, scope: !1706)
!1710 = !DILocation(line: 1069, column: 8, scope: !1663)
!1711 = !DILocalVariable(name: "tmp", scope: !1712, file: !20, line: 1070, type: !61)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !20, line: 1069, column: 36)
!1713 = !DILocation(line: 1070, column: 13, scope: !1712)
!1714 = !DILocation(line: 1072, column: 38, scope: !1712)
!1715 = !DILocation(line: 1072, column: 13, scope: !1712)
!1716 = !DILocation(line: 1072, column: 11, scope: !1712)
!1717 = !DILocation(line: 1073, column: 12, scope: !1712)
!1718 = !DILocation(line: 1073, column: 7, scope: !1712)
!1719 = !DILocation(line: 1074, column: 17, scope: !1712)
!1720 = !DILocation(line: 1074, column: 15, scope: !1712)
!1721 = !DILocation(line: 1080, column: 11, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !20, line: 1080, column: 11)
!1723 = !DILocation(line: 1080, column: 19, scope: !1722)
!1724 = !DILocation(line: 1080, column: 11, scope: !1712)
!1725 = !DILocation(line: 1081, column: 1, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !20, line: 1080, column: 27)
!1727 = !DILocation(line: 1082, column: 10, scope: !1726)
!1728 = !DILocation(line: 1084, column: 4, scope: !1712)
!1729 = !DILocation(line: 1086, column: 35, scope: !1663)
!1730 = !DILocation(line: 1086, column: 44, scope: !1663)
!1731 = !DILocation(line: 1086, column: 52, scope: !1663)
!1732 = !DILocation(line: 1086, column: 59, scope: !1663)
!1733 = !DILocation(line: 1086, column: 13, scope: !1663)
!1734 = !DILocation(line: 1086, column: 11, scope: !1663)
!1735 = !DILocation(line: 1088, column: 9, scope: !1663)
!1736 = !DILocation(line: 1088, column: 4, scope: !1663)
!1737 = !DILocation(line: 1090, column: 11, scope: !1663)
!1738 = !DILocation(line: 1090, column: 4, scope: !1663)
!1739 = !DILocation(line: 1093, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1663, file: !20, line: 1093, column: 8)
!1741 = !DILocation(line: 1093, column: 8, scope: !1663)
!1742 = !DILocation(line: 1094, column: 8, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !20, line: 1093, column: 15)
!1744 = !DILocation(line: 1094, column: 14, scope: !1743)
!1745 = !DILocation(line: 1094, column: 4, scope: !1743)
!1746 = !DILocation(line: 1096, column: 8, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1663, file: !20, line: 1096, column: 8)
!1748 = !DILocation(line: 1096, column: 8, scope: !1663)
!1749 = !DILocation(line: 1097, column: 8, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !20, line: 1096, column: 16)
!1751 = !DILocation(line: 1097, column: 15, scope: !1750)
!1752 = !DILocation(line: 1098, column: 4, scope: !1750)
!1753 = !DILocation(line: 1099, column: 4, scope: !1663)
!1754 = !DILocation(line: 1100, column: 1, scope: !1663)
!1755 = !DILocalVariable(name: "_chan", arg: 1, scope: !331, file: !20, line: 147, type: !71)
!1756 = !DILocation(line: 147, column: 31, scope: !331)
!1757 = !DILocalVariable(name: "chan", scope: !331, file: !20, line: 150, type: !18)
!1758 = !DILocation(line: 150, column: 19, scope: !331)
!1759 = !DILocation(line: 150, column: 26, scope: !331)
!1760 = !DILocation(line: 153, column: 8, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !331, file: !20, line: 153, column: 8)
!1762 = !DILocation(line: 153, column: 14, scope: !1761)
!1763 = !DILocation(line: 153, column: 8, scope: !331)
!1764 = !DILocalVariable(name: "src", scope: !1765, file: !20, line: 154, type: !146)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !20, line: 153, column: 24)
!1766 = !DILocation(line: 154, column: 16, scope: !1765)
!1767 = !DILocation(line: 156, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !20, line: 156, column: 11)
!1769 = !DILocation(line: 156, column: 20, scope: !1768)
!1770 = !DILocation(line: 156, column: 11, scope: !1768)
!1771 = !DILocation(line: 156, column: 37, scope: !1768)
!1772 = !DILocation(line: 156, column: 35, scope: !1768)
!1773 = !DILocation(line: 156, column: 11, scope: !1765)
!1774 = !DILocation(line: 158, column: 18, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !20, line: 156, column: 61)
!1776 = !DILocation(line: 158, column: 24, scope: !1775)
!1777 = !DILocation(line: 158, column: 38, scope: !1775)
!1778 = !DILocation(line: 157, column: 10, scope: !1775)
!1779 = !DILocation(line: 159, column: 14, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !20, line: 159, column: 14)
!1781 = !DILocation(line: 159, column: 20, scope: !1780)
!1782 = !DILocation(line: 159, column: 28, scope: !1780)
!1783 = !DILocation(line: 159, column: 14, scope: !1775)
!1784 = !DILocation(line: 160, column: 13, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !20, line: 159, column: 36)
!1786 = !DILocation(line: 160, column: 19, scope: !1785)
!1787 = !DILocation(line: 160, column: 28, scope: !1785)
!1788 = !DILocation(line: 160, column: 34, scope: !1785)
!1789 = !DILocation(line: 160, column: 43, scope: !1785)
!1790 = !DILocation(line: 160, column: 49, scope: !1785)
!1791 = !DILocation(line: 161, column: 10, scope: !1785)
!1792 = !DILocation(line: 162, column: 10, scope: !1775)
!1793 = !DILocation(line: 166, column: 56, scope: !1765)
!1794 = !DILocation(line: 166, column: 62, scope: !1765)
!1795 = !DILocation(line: 166, column: 7, scope: !1765)
!1796 = !DILocation(line: 167, column: 13, scope: !1765)
!1797 = !DILocation(line: 167, column: 11, scope: !1765)
!1798 = !DILocation(line: 168, column: 29, scope: !1765)
!1799 = !DILocation(line: 168, column: 53, scope: !1765)
!1800 = !DILocation(line: 168, column: 7, scope: !1765)
!1801 = !DILocation(line: 169, column: 23, scope: !1765)
!1802 = !DILocation(line: 169, column: 28, scope: !1765)
!1803 = !DILocation(line: 169, column: 34, scope: !1765)
!1804 = !DILocation(line: 169, column: 7, scope: !1765)
!1805 = !DILocation(line: 170, column: 22, scope: !1765)
!1806 = !DILocation(line: 170, column: 7, scope: !1765)
!1807 = !DILocation(line: 171, column: 7, scope: !1765)
!1808 = !DILocation(line: 175, column: 4, scope: !331)
!1809 = !DILocation(line: 176, column: 4, scope: !331)
!1810 = !DILocation(line: 176, column: 10, scope: !331)
!1811 = !DILocation(line: 176, column: 24, scope: !331)
!1812 = !DILocation(line: 177, column: 4, scope: !331)
!1813 = !DILocation(line: 178, column: 19, scope: !331)
!1814 = !DILocation(line: 180, column: 8, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !331, file: !20, line: 180, column: 8)
!1816 = !DILocation(line: 180, column: 14, scope: !1815)
!1817 = !DILocation(line: 180, column: 22, scope: !1815)
!1818 = !DILocation(line: 180, column: 8, scope: !331)
!1819 = !DILocation(line: 181, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !20, line: 180, column: 30)
!1821 = !DILocation(line: 181, column: 13, scope: !1820)
!1822 = !DILocation(line: 181, column: 22, scope: !1820)
!1823 = !DILocation(line: 181, column: 28, scope: !1820)
!1824 = !DILocation(line: 181, column: 37, scope: !1820)
!1825 = !DILocation(line: 181, column: 43, scope: !1820)
!1826 = !DILocation(line: 182, column: 4, scope: !1820)
!1827 = !DILocation(line: 180, column: 34, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1815, file: !20, discriminator: 1)
!1829 = !DILocation(line: 185, column: 19, scope: !331)
!1830 = !DILocation(line: 185, column: 25, scope: !331)
!1831 = !DILocation(line: 185, column: 4, scope: !331)
!1832 = !DILocation(line: 186, column: 4, scope: !331)
!1833 = !DILocation(line: 186, column: 10, scope: !331)
!1834 = !DILocation(line: 186, column: 21, scope: !331)
!1835 = !DILocation(line: 187, column: 4, scope: !331)
!1836 = distinct !DISubprogram(name: "RpcChannelRestart", scope: !20, file: !20, line: 108, type: !168, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1837 = !DILocalVariable(name: "_chan", arg: 1, scope: !1836, file: !20, line: 108, type: !71)
!1838 = !DILocation(line: 108, column: 28, scope: !1836)
!1839 = !DILocalVariable(name: "chan", scope: !1836, file: !20, line: 110, type: !18)
!1840 = !DILocation(line: 110, column: 19, scope: !1836)
!1841 = !DILocation(line: 110, column: 26, scope: !1836)
!1842 = !DILocalVariable(name: "chanStarted", scope: !1836, file: !20, line: 111, type: !38)
!1843 = !DILocation(line: 111, column: 13, scope: !1836)
!1844 = !DILocation(line: 114, column: 50, scope: !1836)
!1845 = !DILocation(line: 114, column: 56, scope: !1836)
!1846 = !DILocation(line: 114, column: 61, scope: !1836)
!1847 = !DILocation(line: 114, column: 18, scope: !1836)
!1848 = !DILocation(line: 114, column: 4, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1836, file: !20, discriminator: 1)
!1850 = !DILocation(line: 116, column: 26, scope: !1836)
!1851 = !DILocation(line: 116, column: 32, scope: !1836)
!1852 = !DILocation(line: 116, column: 4, scope: !1836)
!1853 = !DILocation(line: 119, column: 4, scope: !1836)
!1854 = !DILocation(line: 120, column: 19, scope: !1836)
!1855 = !DILocation(line: 122, column: 36, scope: !1836)
!1856 = !DILocation(line: 122, column: 42, scope: !1836)
!1857 = !DILocation(line: 122, column: 18, scope: !1836)
!1858 = !DILocation(line: 122, column: 16, scope: !1836)
!1859 = !DILocation(line: 123, column: 52, scope: !1836)
!1860 = !DILocation(line: 123, column: 58, scope: !1836)
!1861 = !DILocation(line: 123, column: 63, scope: !1836)
!1862 = !DILocation(line: 123, column: 20, scope: !1836)
!1863 = !DILocation(line: 123, column: 4, scope: !1849)
!1864 = !DILocation(line: 124, column: 9, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1836, file: !20, line: 124, column: 8)
!1866 = !DILocation(line: 124, column: 8, scope: !1836)
!1867 = !DILocation(line: 125, column: 48, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !20, line: 124, column: 22)
!1869 = !DILocation(line: 125, column: 54, scope: !1868)
!1870 = !DILocation(line: 125, column: 7, scope: !1868)
!1871 = !DILocation(line: 126, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !20, line: 126, column: 11)
!1873 = !DILocation(line: 126, column: 17, scope: !1872)
!1874 = !DILocation(line: 126, column: 25, scope: !1872)
!1875 = !DILocation(line: 126, column: 11, scope: !1868)
!1876 = !DILocation(line: 127, column: 10, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !20, line: 126, column: 33)
!1878 = !DILocation(line: 127, column: 16, scope: !1877)
!1879 = !DILocation(line: 127, column: 25, scope: !1877)
!1880 = !DILocation(line: 127, column: 31, scope: !1877)
!1881 = !DILocation(line: 127, column: 40, scope: !1877)
!1882 = !DILocation(line: 127, column: 46, scope: !1877)
!1883 = !DILocation(line: 128, column: 7, scope: !1877)
!1884 = !DILocation(line: 129, column: 4, scope: !1868)
!1885 = !DILocation(line: 130, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1865, file: !20, line: 129, column: 11)
!1887 = !DILocation(line: 130, column: 13, scope: !1886)
!1888 = !DILocation(line: 130, column: 22, scope: !1886)
!1889 = !DILocation(line: 133, column: 4, scope: !1836)
!1890 = distinct !DISubprogram(name: "RpcChannelPing", scope: !20, file: !20, line: 93, type: !229, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !332)
!1891 = !DILocalVariable(name: "data", arg: 1, scope: !1890, file: !20, line: 93, type: !231)
!1892 = !DILocation(line: 93, column: 27, scope: !1890)
!1893 = !DILocation(line: 95, column: 33, scope: !1890)
!1894 = !DILocation(line: 95, column: 11, scope: !1890)
!1895 = !DILocation(line: 95, column: 4, scope: !1890)
