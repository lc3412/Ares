; ModuleID = './hgfsChannelGuest.o.i'
source_filename = "./hgfsChannelGuest.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsChannelData = type { i8*, %struct.HgfsGuestChannelCBTable*, i32, %struct.HgfsGuestConn*, %struct.HgfsChannelServerData*, %struct.Atomic_uint32 }
%struct.HgfsGuestChannelCBTable = type { i8 (%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**)*, void (%struct.HgfsGuestConn*)*, i8 (%struct.HgfsGuestConn*, i8*, i64, i8*, i64*)*, i32 (%struct.HgfsGuestConn*)* }
%struct.HgfsServerSessionCallbacks = type { i8 (i8*, %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelData*, i8**)*, void (i8*)*, void (i8*)*, void (%struct.HgfsPacket*, i8*)*, void (i8*, %struct.DblLnkLst_Links*)*, i32 (i8*)*, void (%struct.HgfsPacket*, i8*)*, void (i8*, i32)* }
%struct.HgfsServerChannelCallbacks = type { void ()*, void ()*, i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)*, void (i8**)*, i8 (i8*, %struct.HgfsPacket*, i32)* }
%struct.HgfsPacket = type { i64, i64, i8*, i64, i32, i64, i8, i32, i8*, i64, i32, i64, i32, i8, i32, i8*, i64, i64, i8, [2 x %struct.HgfsVmxIov], i32, [1 x %struct.HgfsVmxIov] }
%struct.HgfsVmxIov = type { i8*, i64, i32, i8* }
%struct.HgfsServerChannelData = type { i32, i32 }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsGuestConn = type opaque
%struct.HgfsChannelServerData = type { %struct.HgfsServerCallbacks*, %struct.Atomic_uint32 }
%struct.HgfsServerCallbacks = type { %struct.HgfsServerSessionCallbacks }
%struct.Atomic_uint32 = type { i32 }
%struct.HgfsServerConfig = type { i32, i32 }
%struct.HgfsServerMgrData = type { i8*, i8*, i8*, i8* }
%struct.HgfsServerMgrCallbacks = type { %struct.HgfsServerResEnumCallbacks }
%struct.HgfsServerResEnumCallbacks = type { i8* ()*, i8 (i8*, i8**, i64*, i8*)*, i8 (i8*)* }

@gHgfsChannels = internal global [1 x %struct.HgfsChannelData] [%struct.HgfsChannelData { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct.HgfsGuestChannelCBTable* @gGuestBackdoorOps, i32 0, %struct.HgfsGuestConn* null, %struct.HgfsChannelServerData* null, %struct.Atomic_uint32 zeroinitializer }], align 16
@.str = private unnamed_addr constant [34 x i8] c"%s: app %s rpc = %p rpc cb = %p.\0A\00", align 1
@__FUNCTION__.HgfsChannelGuest_Init = private unnamed_addr constant [22 x i8] c"HgfsChannelGuest_Init\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Guest channel RPC override not supported.\0A\00", align 1
@gHgfsChannelServerInfo = internal global %struct.HgfsChannelServerData zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Could not init channel.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: Could not activate channel.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: app %s rpc = %p rpc cb = %p chn = %p.\0A\00", align 1
@__FUNCTION__.HgfsChannelGuest_Exit = private unnamed_addr constant [22 x i8] c"HgfsChannelGuest_Exit\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: %s Channel receive request.\0A\00", align 1
@__FUNCTION__.HgfsChannelGuest_Receive = private unnamed_addr constant [25 x i8] c"HgfsChannelGuest_Receive\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: Channel receive returns %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: %s Channel. Invalidating inactive sessions.\0A\00", align 1
@__FUNCTION__.HgfsChannelGuest_InvalidateInactiveSessions = private unnamed_addr constant [44 x i8] c"HgfsChannelGuest_InvalidateInactiveSessions\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"guest\00", align 1
@gGuestBackdoorOps = external constant %struct.HgfsGuestChannelCBTable, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: Could not init Hgfs server.\0A\00", align 1
@__FUNCTION__.HgfsChannelInitChannel = private unnamed_addr constant [23 x i8] c"HgfsChannelInitChannel\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: Init channel return %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s: Initialize Hgfs server.\0A\00", align 1
@__FUNCTION__.HgfsChannelInitServer = private unnamed_addr constant [22 x i8] c"HgfsChannelInitServer\00", align 1
@gHgfsGuestCfgSettings = internal global %struct.HgfsServerConfig { i32 20, i32 30 }, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: Exit channel returns.\0A\00", align 1
@__FUNCTION__.HgfsChannelExitChannel = private unnamed_addr constant [23 x i8] c"HgfsChannelExitChannel\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s: Teardown Hgfs server.\0A\00", align 1
@__FUNCTION__.HgfsChannelExitServer = private unnamed_addr constant [22 x i8] c"HgfsChannelExitServer\00", align 1

; Function Attrs: nounwind uwtable
define i32 @HgfsChannelGetChannel(%struct.HgfsChannelData*) #0 !dbg !215 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !220, metadata !221), !dbg !222
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !223
  %4 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %3, i32 0, i32 5, !dbg !224
  %5 = call i32 @Atomic_ReadInc32(%struct.Atomic_uint32* %4), !dbg !225
  ret i32 %5, !dbg !226
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadInc32(%struct.Atomic_uint32*) #2 !dbg !227 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !231, metadata !221), !dbg !232
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !233
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 1), !dbg !234
  ret i32 %4, !dbg !235
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsChannelGuest_Init(%struct.HgfsServerMgrData*, %struct.HgfsServerMgrCallbacks*) #0 !dbg !236 {
  %3 = alloca %struct.HgfsServerMgrData*, align 8
  %4 = alloca %struct.HgfsServerMgrCallbacks*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.HgfsChannelData*, align 8
  %7 = alloca i32, align 4
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %3, metadata !273, metadata !221), !dbg !274
  store %struct.HgfsServerMgrCallbacks* %1, %struct.HgfsServerMgrCallbacks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrCallbacks** %4, metadata !275, metadata !221), !dbg !276
  call void @llvm.dbg.declare(metadata i8* %5, metadata !277, metadata !221), !dbg !278
  store i8 0, i8* %5, align 1, !dbg !278
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %6, metadata !279, metadata !221), !dbg !280
  store %struct.HgfsChannelData* getelementptr inbounds ([1 x %struct.HgfsChannelData], [1 x %struct.HgfsChannelData]* @gHgfsChannels, i64 0, i64 0), %struct.HgfsChannelData** %6, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata i32* %7, metadata !281, metadata !221), !dbg !282
  %8 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !283
  %9 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %8, i32 0, i32 0, !dbg !284
  %10 = load i8*, i8** %9, align 8, !dbg !284
  %11 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !285
  %12 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %11, i32 0, i32 1, !dbg !286
  %13 = load i8*, i8** %12, align 8, !dbg !286
  %14 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !287
  %15 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %14, i32 0, i32 2, !dbg !288
  %16 = load i8*, i8** %15, align 8, !dbg !288
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelGuest_Init, i32 0, i32 0), i8* %10, i8* %13, i8* %16), !dbg !289
  %17 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !290
  %18 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %17, i32 0, i32 1, !dbg !292
  %19 = load i8*, i8** %18, align 8, !dbg !292
  %20 = icmp ne i8* null, %19, !dbg !293
  br i1 %20, label %26, label %21, !dbg !294

; <label>:21:                                     ; preds = %2
  %22 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !295
  %23 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %22, i32 0, i32 2, !dbg !297
  %24 = load i8*, i8** %23, align 8, !dbg !297
  %25 = icmp ne i8* null, %24, !dbg !298
  br i1 %25, label %26, label %27, !dbg !299

; <label>:26:                                     ; preds = %21, %2
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelGuest_Init, i32 0, i32 0)), !dbg !300
  br label %55, !dbg !302

; <label>:27:                                     ; preds = %21
  %28 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !303
  %29 = call i32 @HgfsChannelGetChannel(%struct.HgfsChannelData* %28), !dbg !304
  store i32 %29, i32* %7, align 4, !dbg !305
  %30 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !306
  %31 = bitcast %struct.HgfsChannelData* %30 to i8*, !dbg !306
  %32 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !307
  %33 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %32, i32 0, i32 3, !dbg !308
  store i8* %31, i8** %33, align 8, !dbg !309
  %34 = load i32, i32* %7, align 4, !dbg !310
  %35 = icmp eq i32 0, %34, !dbg !312
  br i1 %35, label %36, label %54, !dbg !313

; <label>:36:                                     ; preds = %27
  %37 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !314
  %38 = load %struct.HgfsServerMgrCallbacks*, %struct.HgfsServerMgrCallbacks** %4, align 8, !dbg !317
  %39 = call signext i8 @HgfsChannelInitChannel(%struct.HgfsChannelData* %37, %struct.HgfsServerMgrCallbacks* %38, %struct.HgfsChannelServerData* @gHgfsChannelServerInfo), !dbg !318
  %40 = icmp ne i8 %39, 0, !dbg !318
  br i1 %40, label %42, label %41, !dbg !319

; <label>:41:                                     ; preds = %36
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelGuest_Init, i32 0, i32 0)), !dbg !320
  br label %55, !dbg !322

; <label>:42:                                     ; preds = %36
  %43 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !323
  %44 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !325
  %45 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %44, i32 0, i32 1, !dbg !326
  %46 = load i8*, i8** %45, align 8, !dbg !326
  %47 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !327
  %48 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %47, i32 0, i32 2, !dbg !328
  %49 = load i8*, i8** %48, align 8, !dbg !328
  %50 = call signext i8 @HgfsChannelActivateChannel(%struct.HgfsChannelData* %43, i8* %46, i8* %49), !dbg !329
  %51 = icmp ne i8 %50, 0, !dbg !329
  br i1 %51, label %53, label %52, !dbg !330

; <label>:52:                                     ; preds = %42
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelGuest_Init, i32 0, i32 0)), !dbg !331
  br label %55, !dbg !333

; <label>:53:                                     ; preds = %42
  br label %54, !dbg !334

; <label>:54:                                     ; preds = %53, %27
  store i8 1, i8* %5, align 1, !dbg !335
  br label %55, !dbg !336

; <label>:55:                                     ; preds = %54, %52, %41, %26
  %56 = load i8, i8* %5, align 1, !dbg !337
  %57 = icmp ne i8 %56, 0, !dbg !337
  br i1 %57, label %60, label %58, !dbg !339

; <label>:58:                                     ; preds = %55
  %59 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %3, align 8, !dbg !340
  call void @HgfsChannelGuest_Exit(%struct.HgfsServerMgrData* %59), !dbg !342
  br label %60, !dbg !343

; <label>:60:                                     ; preds = %58, %55
  %61 = load i8, i8* %5, align 1, !dbg !344
  ret i8 %61, !dbg !345
}

declare void @Debug(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelInitChannel(%struct.HgfsChannelData*, %struct.HgfsServerMgrCallbacks*, %struct.HgfsChannelServerData*) #0 !dbg !346 {
  %4 = alloca %struct.HgfsChannelData*, align 8
  %5 = alloca %struct.HgfsServerMgrCallbacks*, align 8
  %6 = alloca %struct.HgfsChannelServerData*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %4, metadata !349, metadata !221), !dbg !350
  store %struct.HgfsServerMgrCallbacks* %1, %struct.HgfsServerMgrCallbacks** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrCallbacks** %5, metadata !351, metadata !221), !dbg !352
  store %struct.HgfsChannelServerData* %2, %struct.HgfsChannelServerData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %6, metadata !353, metadata !221), !dbg !354
  call void @llvm.dbg.declare(metadata i8* %7, metadata !355, metadata !221), !dbg !356
  store i8 1, i8* %7, align 1, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %8, metadata !357, metadata !221), !dbg !358
  %9 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !359
  %10 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %9, i32 0, i32 2, !dbg !360
  store i32 0, i32* %10, align 8, !dbg !361
  %11 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %6, align 8, !dbg !362
  %12 = call i32 @HgfsChannelGetServer(%struct.HgfsChannelServerData* %11), !dbg !363
  store i32 %12, i32* %8, align 4, !dbg !364
  %13 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %6, align 8, !dbg !365
  %14 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !366
  %15 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %14, i32 0, i32 4, !dbg !367
  store %struct.HgfsChannelServerData* %13, %struct.HgfsChannelServerData** %15, align 8, !dbg !368
  %16 = load i32, i32* %8, align 4, !dbg !369
  %17 = icmp eq i32 0, %16, !dbg !371
  br i1 %17, label %18, label %28, !dbg !372

; <label>:18:                                     ; preds = %3
  %19 = load %struct.HgfsServerMgrCallbacks*, %struct.HgfsServerMgrCallbacks** %5, align 8, !dbg !373
  %20 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !375
  %21 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %20, i32 0, i32 4, !dbg !376
  %22 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %21, align 8, !dbg !376
  %23 = call signext i8 @HgfsChannelInitServer(%struct.HgfsServerMgrCallbacks* %19, %struct.HgfsChannelServerData* %22), !dbg !377
  store i8 %23, i8* %7, align 1, !dbg !378
  %24 = load i8, i8* %7, align 1, !dbg !379
  %25 = icmp ne i8 %24, 0, !dbg !379
  br i1 %25, label %27, label %26, !dbg !381

; <label>:26:                                     ; preds = %18
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsChannelInitChannel, i32 0, i32 0)), !dbg !382
  br label %33, !dbg !384

; <label>:27:                                     ; preds = %18
  br label %28, !dbg !385

; <label>:28:                                     ; preds = %27, %3
  %29 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !386
  %30 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %29, i32 0, i32 2, !dbg !387
  %31 = load i32, i32* %30, align 8, !dbg !388
  %32 = or i32 %31, 1, !dbg !388
  store i32 %32, i32* %30, align 8, !dbg !388
  br label %33, !dbg !386

; <label>:33:                                     ; preds = %28, %26
  %34 = load i8, i8* %7, align 1, !dbg !389
  %35 = icmp ne i8 %34, 0, !dbg !389
  br i1 %35, label %38, label %36, !dbg !391

; <label>:36:                                     ; preds = %33
  %37 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !392
  call void @HgfsChannelExitChannel(%struct.HgfsChannelData* %37), !dbg !394
  br label %38, !dbg !395

; <label>:38:                                     ; preds = %36, %33
  %39 = load i8, i8* %7, align 1, !dbg !396
  %40 = sext i8 %39 to i32, !dbg !396
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsChannelInitChannel, i32 0, i32 0), i32 %40), !dbg !397
  %41 = load i8, i8* %7, align 1, !dbg !398
  ret i8 %41, !dbg !399
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelActivateChannel(%struct.HgfsChannelData*, i8*, i8*) #0 !dbg !400 {
  %4 = alloca %struct.HgfsChannelData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %4, metadata !403, metadata !221), !dbg !404
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !405, metadata !221), !dbg !406
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !407, metadata !221), !dbg !408
  call void @llvm.dbg.declare(metadata i8* %7, metadata !409, metadata !221), !dbg !410
  store i8 0, i8* %7, align 1, !dbg !410
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %8, metadata !411, metadata !221), !dbg !412
  store %struct.HgfsGuestConn* null, %struct.HgfsGuestConn** %8, align 8, !dbg !412
  %9 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !413
  %10 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %9, i32 0, i32 1, !dbg !415
  %11 = load %struct.HgfsGuestChannelCBTable*, %struct.HgfsGuestChannelCBTable** %10, align 8, !dbg !415
  %12 = getelementptr inbounds %struct.HgfsGuestChannelCBTable, %struct.HgfsGuestChannelCBTable* %11, i32 0, i32 0, !dbg !416
  %13 = load i8 (%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**)*, i8 (%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**)** %12, align 8, !dbg !416
  %14 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !417
  %15 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %14, i32 0, i32 4, !dbg !418
  %16 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %15, align 8, !dbg !418
  %17 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %16, i32 0, i32 0, !dbg !419
  %18 = load %struct.HgfsServerCallbacks*, %struct.HgfsServerCallbacks** %17, align 8, !dbg !419
  %19 = getelementptr inbounds %struct.HgfsServerCallbacks, %struct.HgfsServerCallbacks* %18, i32 0, i32 0, !dbg !420
  %20 = load i8*, i8** %5, align 8, !dbg !421
  %21 = load i8*, i8** %6, align 8, !dbg !422
  %22 = call signext i8 %13(%struct.HgfsServerSessionCallbacks* %19, i8* %20, i8* %21, %struct.HgfsGuestConn** %8), !dbg !413
  %23 = icmp ne i8 %22, 0, !dbg !413
  br i1 %23, label %24, label %32, !dbg !423

; <label>:24:                                     ; preds = %3
  %25 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !424
  %26 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %25, i32 0, i32 2, !dbg !426
  %27 = load i32, i32* %26, align 8, !dbg !427
  %28 = or i32 %27, 2, !dbg !427
  store i32 %28, i32* %26, align 8, !dbg !427
  %29 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %8, align 8, !dbg !428
  %30 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %4, align 8, !dbg !429
  %31 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %30, i32 0, i32 3, !dbg !430
  store %struct.HgfsGuestConn* %29, %struct.HgfsGuestConn** %31, align 8, !dbg !431
  store i8 1, i8* %7, align 1, !dbg !432
  br label %32, !dbg !433

; <label>:32:                                     ; preds = %24, %3
  %33 = load i8, i8* %7, align 1, !dbg !434
  ret i8 %33, !dbg !435
}

; Function Attrs: nounwind uwtable
define void @HgfsChannelGuest_Exit(%struct.HgfsServerMgrData*) #0 !dbg !436 {
  %2 = alloca %struct.HgfsServerMgrData*, align 8
  %3 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %2, metadata !439, metadata !221), !dbg !440
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %3, metadata !441, metadata !221), !dbg !442
  %4 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !443
  %5 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %4, i32 0, i32 3, !dbg !444
  %6 = load i8*, i8** %5, align 8, !dbg !444
  %7 = bitcast i8* %6 to %struct.HgfsChannelData*, !dbg !443
  store %struct.HgfsChannelData* %7, %struct.HgfsChannelData** %3, align 8, !dbg !445
  %8 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !446
  %9 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %8, i32 0, i32 0, !dbg !447
  %10 = load i8*, i8** %9, align 8, !dbg !447
  %11 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !448
  %12 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %11, i32 0, i32 1, !dbg !449
  %13 = load i8*, i8** %12, align 8, !dbg !449
  %14 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !450
  %15 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %14, i32 0, i32 2, !dbg !451
  %16 = load i8*, i8** %15, align 8, !dbg !451
  %17 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !452
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelGuest_Exit, i32 0, i32 0), i8* %10, i8* %13, i8* %16, %struct.HgfsChannelData* %17), !dbg !453
  %18 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !454
  %19 = icmp ne %struct.HgfsChannelData* null, %18, !dbg !456
  br i1 %19, label %20, label %24, !dbg !457

; <label>:20:                                     ; preds = %1
  %21 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !458
  call void @HgfsChannelPutChannel(%struct.HgfsChannelData* %21), !dbg !460
  %22 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !461
  %23 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %22, i32 0, i32 3, !dbg !462
  store i8* null, i8** %23, align 8, !dbg !463
  br label %24, !dbg !464

; <label>:24:                                     ; preds = %20, %1
  ret void, !dbg !465
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelPutChannel(%struct.HgfsChannelData*) #0 !dbg !466 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !469, metadata !221), !dbg !470
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !471
  %4 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %3, i32 0, i32 5, !dbg !473
  %5 = call i32 @Atomic_ReadDec32(%struct.Atomic_uint32* %4), !dbg !474
  %6 = icmp eq i32 %5, 1, !dbg !475
  br i1 %6, label %7, label %9, !dbg !476

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !477
  call void @HgfsChannelTeardownChannel(%struct.HgfsChannelData* %8), !dbg !479
  br label %9, !dbg !480

; <label>:9:                                      ; preds = %7, %1
  ret void, !dbg !481
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsChannelGuest_Receive(%struct.HgfsServerMgrData*, i8*, i64, i8*, i64*) #0 !dbg !482 {
  %6 = alloca %struct.HgfsServerMgrData*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.HgfsChannelData*, align 8
  %12 = alloca i8, align 1
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %6, metadata !485, metadata !221), !dbg !486
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !487, metadata !221), !dbg !488
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !489, metadata !221), !dbg !490
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !491, metadata !221), !dbg !492
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !493, metadata !221), !dbg !494
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %11, metadata !495, metadata !221), !dbg !496
  store %struct.HgfsChannelData* null, %struct.HgfsChannelData** %11, align 8, !dbg !496
  call void @llvm.dbg.declare(metadata i8* %12, metadata !497, metadata !221), !dbg !498
  store i8 0, i8* %12, align 1, !dbg !498
  %13 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %6, align 8, !dbg !499
  %14 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %13, i32 0, i32 3, !dbg !500
  %15 = load i8*, i8** %14, align 8, !dbg !500
  %16 = bitcast i8* %15 to %struct.HgfsChannelData*, !dbg !499
  store %struct.HgfsChannelData* %16, %struct.HgfsChannelData** %11, align 8, !dbg !501
  %17 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %6, align 8, !dbg !502
  %18 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %17, i32 0, i32 0, !dbg !503
  %19 = load i8*, i8** %18, align 8, !dbg !503
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsChannelGuest_Receive, i32 0, i32 0), i8* %19), !dbg !504
  %20 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %11, align 8, !dbg !505
  %21 = call signext i8 @HgfsChannelIsChannelActive(%struct.HgfsChannelData* %20), !dbg !507
  %22 = icmp ne i8 %21, 0, !dbg !507
  br i1 %22, label %23, label %30, !dbg !508

; <label>:23:                                     ; preds = %5
  %24 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %11, align 8, !dbg !509
  %25 = load i8*, i8** %7, align 8, !dbg !511
  %26 = load i64, i64* %8, align 8, !dbg !512
  %27 = load i8*, i8** %9, align 8, !dbg !513
  %28 = load i64*, i64** %10, align 8, !dbg !514
  %29 = call signext i8 @HgfsChannelReceive(%struct.HgfsChannelData* %24, i8* %25, i64 %26, i8* %27, i64* %28), !dbg !515
  store i8 %29, i8* %12, align 1, !dbg !516
  br label %30, !dbg !517

; <label>:30:                                     ; preds = %23, %5
  %31 = load i8, i8* %12, align 1, !dbg !518
  %32 = sext i8 %31 to i32, !dbg !518
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.HgfsChannelGuest_Receive, i32 0, i32 0), i32 %32), !dbg !519
  %33 = load i8, i8* %12, align 1, !dbg !520
  ret i8 %33, !dbg !521
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelIsChannelActive(%struct.HgfsChannelData*) #0 !dbg !522 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !525, metadata !221), !dbg !526
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !527
  %4 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %3, i32 0, i32 2, !dbg !528
  %5 = load i32, i32* %4, align 8, !dbg !528
  %6 = and i32 %5, 1, !dbg !529
  %7 = icmp ne i32 0, %6, !dbg !530
  br i1 %7, label %8, label %14, !dbg !531

; <label>:8:                                      ; preds = %1
  %9 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !532
  %10 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %9, i32 0, i32 2, !dbg !533
  %11 = load i32, i32* %10, align 8, !dbg !533
  %12 = and i32 %11, 2, !dbg !534
  %13 = icmp ne i32 0, %12, !dbg !535
  br label %14

; <label>:14:                                     ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32, !dbg !536
  %17 = trunc i32 %16 to i8, !dbg !538
  ret i8 %17, !dbg !539
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelReceive(%struct.HgfsChannelData*, i8*, i64, i8*, i64*) #0 !dbg !540 {
  %6 = alloca %struct.HgfsChannelData*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %6, metadata !543, metadata !221), !dbg !544
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !545, metadata !221), !dbg !546
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !547, metadata !221), !dbg !548
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !549, metadata !221), !dbg !550
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !551, metadata !221), !dbg !552
  %11 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !553
  %12 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %11, i32 0, i32 1, !dbg !554
  %13 = load %struct.HgfsGuestChannelCBTable*, %struct.HgfsGuestChannelCBTable** %12, align 8, !dbg !554
  %14 = getelementptr inbounds %struct.HgfsGuestChannelCBTable, %struct.HgfsGuestChannelCBTable* %13, i32 0, i32 2, !dbg !555
  %15 = load i8 (%struct.HgfsGuestConn*, i8*, i64, i8*, i64*)*, i8 (%struct.HgfsGuestConn*, i8*, i64, i8*, i64*)** %14, align 8, !dbg !555
  %16 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %6, align 8, !dbg !556
  %17 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %16, i32 0, i32 3, !dbg !557
  %18 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %17, align 8, !dbg !557
  %19 = load i8*, i8** %7, align 8, !dbg !558
  %20 = load i64, i64* %8, align 8, !dbg !559
  %21 = load i8*, i8** %9, align 8, !dbg !560
  %22 = load i64*, i64** %10, align 8, !dbg !561
  %23 = call signext i8 %15(%struct.HgfsGuestConn* %18, i8* %19, i64 %20, i8* %21, i64* %22), !dbg !553
  ret i8 %23, !dbg !562
}

; Function Attrs: nounwind uwtable
define i32 @HgfsChannelGuest_InvalidateInactiveSessions(%struct.HgfsServerMgrData*) #0 !dbg !563 {
  %2 = alloca %struct.HgfsServerMgrData*, align 8
  %3 = alloca %struct.HgfsChannelData*, align 8
  %4 = alloca i32, align 4
  store %struct.HgfsServerMgrData* %0, %struct.HgfsServerMgrData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrData** %2, metadata !566, metadata !221), !dbg !567
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %3, metadata !568, metadata !221), !dbg !569
  store %struct.HgfsChannelData* null, %struct.HgfsChannelData** %3, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata i32* %4, metadata !570, metadata !221), !dbg !571
  store i32 0, i32* %4, align 4, !dbg !571
  %5 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !572
  %6 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %5, i32 0, i32 3, !dbg !573
  %7 = load i8*, i8** %6, align 8, !dbg !573
  %8 = bitcast i8* %7 to %struct.HgfsChannelData*, !dbg !572
  store %struct.HgfsChannelData* %8, %struct.HgfsChannelData** %3, align 8, !dbg !574
  %9 = load %struct.HgfsServerMgrData*, %struct.HgfsServerMgrData** %2, align 8, !dbg !575
  %10 = getelementptr inbounds %struct.HgfsServerMgrData, %struct.HgfsServerMgrData* %9, i32 0, i32 0, !dbg !576
  %11 = load i8*, i8** %10, align 8, !dbg !576
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__FUNCTION__.HgfsChannelGuest_InvalidateInactiveSessions, i32 0, i32 0), i8* %11), !dbg !577
  %12 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !578
  %13 = call signext i8 @HgfsChannelIsChannelActive(%struct.HgfsChannelData* %12), !dbg !580
  %14 = icmp ne i8 %13, 0, !dbg !580
  br i1 %14, label %15, label %25, !dbg !581

; <label>:15:                                     ; preds = %1
  %16 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !582
  %17 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %16, i32 0, i32 1, !dbg !584
  %18 = load %struct.HgfsGuestChannelCBTable*, %struct.HgfsGuestChannelCBTable** %17, align 8, !dbg !584
  %19 = getelementptr inbounds %struct.HgfsGuestChannelCBTable, %struct.HgfsGuestChannelCBTable* %18, i32 0, i32 3, !dbg !585
  %20 = load i32 (%struct.HgfsGuestConn*)*, i32 (%struct.HgfsGuestConn*)** %19, align 8, !dbg !585
  %21 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %3, align 8, !dbg !586
  %22 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %21, i32 0, i32 3, !dbg !587
  %23 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %22, align 8, !dbg !587
  %24 = call i32 %20(%struct.HgfsGuestConn* %23), !dbg !582
  store i32 %24, i32* %4, align 4, !dbg !588
  br label %25, !dbg !589

; <label>:25:                                     ; preds = %15, %1
  %26 = load i32, i32* %4, align 4, !dbg !590
  ret i32 %26, !dbg !591
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadAdd32(%struct.Atomic_uint32*, i32) #2 !dbg !592 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !595, metadata !221), !dbg !596
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !597, metadata !221), !dbg !598
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !599
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !600
  %7 = load i32, i32* %4, align 4, !dbg !601
  %8 = call i32 asm sideeffect "lock; xaddl $0, $1", "=r,=*m,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #4, !dbg !602, !srcloc !603
  store i32 %8, i32* %4, align 4, !dbg !602
  %9 = load i32, i32* %4, align 4, !dbg !604
  ret i32 %9, !dbg !605
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsChannelGetServer(%struct.HgfsChannelServerData*) #0 !dbg !606 {
  %2 = alloca %struct.HgfsChannelServerData*, align 8
  store %struct.HgfsChannelServerData* %0, %struct.HgfsChannelServerData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %2, metadata !609, metadata !221), !dbg !610
  %3 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !611
  %4 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %3, i32 0, i32 1, !dbg !612
  %5 = call i32 @Atomic_ReadInc32(%struct.Atomic_uint32* %4), !dbg !613
  ret i32 %5, !dbg !614
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelInitServer(%struct.HgfsServerMgrCallbacks*, %struct.HgfsChannelServerData*) #0 !dbg !615 {
  %3 = alloca %struct.HgfsServerMgrCallbacks*, align 8
  %4 = alloca %struct.HgfsChannelServerData*, align 8
  %5 = alloca i8, align 1
  store %struct.HgfsServerMgrCallbacks* %0, %struct.HgfsServerMgrCallbacks** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerMgrCallbacks** %3, metadata !618, metadata !221), !dbg !619
  store %struct.HgfsChannelServerData* %1, %struct.HgfsChannelServerData** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %4, metadata !620, metadata !221), !dbg !621
  call void @llvm.dbg.declare(metadata i8* %5, metadata !622, metadata !221), !dbg !623
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelInitServer, i32 0, i32 0)), !dbg !624
  %6 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %4, align 8, !dbg !625
  %7 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %6, i32 0, i32 0, !dbg !626
  %8 = load %struct.HgfsServerMgrCallbacks*, %struct.HgfsServerMgrCallbacks** %3, align 8, !dbg !627
  %9 = call signext i8 @HgfsServer_InitState(%struct.HgfsServerCallbacks** %7, %struct.HgfsServerConfig* @gHgfsGuestCfgSettings, %struct.HgfsServerMgrCallbacks* %8), !dbg !628
  store i8 %9, i8* %5, align 1, !dbg !629
  %10 = load i8, i8* %5, align 1, !dbg !630
  %11 = icmp ne i8 %10, 0, !dbg !630
  br i1 %11, label %13, label %12, !dbg !632

; <label>:12:                                     ; preds = %2
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelInitServer, i32 0, i32 0)), !dbg !633
  br label %13, !dbg !635

; <label>:13:                                     ; preds = %12, %2
  %14 = load i8, i8* %5, align 1, !dbg !636
  ret i8 %14, !dbg !637
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelExitChannel(%struct.HgfsChannelData*) #0 !dbg !638 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !639, metadata !221), !dbg !640
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !641
  %4 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %3, i32 0, i32 4, !dbg !643
  %5 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %4, align 8, !dbg !643
  %6 = icmp ne %struct.HgfsChannelServerData* null, %5, !dbg !644
  br i1 %6, label %7, label %13, !dbg !645

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !646
  %9 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %8, i32 0, i32 4, !dbg !648
  %10 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %9, align 8, !dbg !648
  call void @HgfsChannelPutServer(%struct.HgfsChannelServerData* %10), !dbg !649
  %11 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !650
  %12 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %11, i32 0, i32 4, !dbg !651
  store %struct.HgfsChannelServerData* null, %struct.HgfsChannelServerData** %12, align 8, !dbg !652
  br label %13, !dbg !653

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !654
  %15 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %14, i32 0, i32 2, !dbg !655
  store i32 0, i32* %15, align 8, !dbg !656
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsChannelExitChannel, i32 0, i32 0)), !dbg !657
  ret void, !dbg !658
}

declare signext i8 @HgfsServer_InitState(%struct.HgfsServerCallbacks**, %struct.HgfsServerConfig*, %struct.HgfsServerMgrCallbacks*) #3

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelPutServer(%struct.HgfsChannelServerData*) #0 !dbg !659 {
  %2 = alloca %struct.HgfsChannelServerData*, align 8
  store %struct.HgfsChannelServerData* %0, %struct.HgfsChannelServerData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %2, metadata !662, metadata !221), !dbg !663
  %3 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !664
  %4 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %3, i32 0, i32 1, !dbg !666
  %5 = call i32 @Atomic_ReadDec32(%struct.Atomic_uint32* %4), !dbg !667
  %6 = icmp eq i32 %5, 1, !dbg !668
  br i1 %6, label %7, label %9, !dbg !669

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !670
  call void @HgfsChannelTeardownServer(%struct.HgfsChannelServerData* %8), !dbg !672
  br label %9, !dbg !673

; <label>:9:                                      ; preds = %7, %1
  ret void, !dbg !674
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadDec32(%struct.Atomic_uint32*) #2 !dbg !675 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !676, metadata !221), !dbg !677
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !678
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 -1), !dbg !679
  ret i32 %4, !dbg !680
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelTeardownServer(%struct.HgfsChannelServerData*) #0 !dbg !681 {
  %2 = alloca %struct.HgfsChannelServerData*, align 8
  store %struct.HgfsChannelServerData* %0, %struct.HgfsChannelServerData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %2, metadata !682, metadata !221), !dbg !683
  %3 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !684
  call void @HgfsChannelExitServer(%struct.HgfsChannelServerData* %3), !dbg !685
  ret void, !dbg !686
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelExitServer(%struct.HgfsChannelServerData*) #0 !dbg !687 {
  %2 = alloca %struct.HgfsChannelServerData*, align 8
  store %struct.HgfsChannelServerData* %0, %struct.HgfsChannelServerData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelServerData** %2, metadata !688, metadata !221), !dbg !689
  %3 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !690
  %4 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %3, i32 0, i32 0, !dbg !692
  %5 = load %struct.HgfsServerCallbacks*, %struct.HgfsServerCallbacks** %4, align 8, !dbg !692
  %6 = icmp ne %struct.HgfsServerCallbacks* null, %5, !dbg !693
  br i1 %6, label %7, label %10, !dbg !694

; <label>:7:                                      ; preds = %1
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.HgfsChannelExitServer, i32 0, i32 0)), !dbg !695
  call void @HgfsServer_ExitState(), !dbg !697
  %8 = load %struct.HgfsChannelServerData*, %struct.HgfsChannelServerData** %2, align 8, !dbg !698
  %9 = getelementptr inbounds %struct.HgfsChannelServerData, %struct.HgfsChannelServerData* %8, i32 0, i32 0, !dbg !699
  store %struct.HgfsServerCallbacks* null, %struct.HgfsServerCallbacks** %9, align 8, !dbg !700
  br label %10, !dbg !701

; <label>:10:                                     ; preds = %7, %1
  ret void, !dbg !702
}

declare void @HgfsServer_ExitState() #3

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelTeardownChannel(%struct.HgfsChannelData*) #0 !dbg !703 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !704, metadata !221), !dbg !705
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !706
  %4 = call signext i8 @HgfsChannelIsChannelActive(%struct.HgfsChannelData* %3), !dbg !708
  %5 = icmp ne i8 %4, 0, !dbg !708
  br i1 %5, label %6, label %8, !dbg !709

; <label>:6:                                      ; preds = %1
  %7 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !710
  call void @HgfsChannelDeactivateChannel(%struct.HgfsChannelData* %7), !dbg !712
  br label %8, !dbg !713

; <label>:8:                                      ; preds = %6, %1
  %9 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !714
  call void @HgfsChannelExitChannel(%struct.HgfsChannelData* %9), !dbg !715
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelDeactivateChannel(%struct.HgfsChannelData*) #0 !dbg !717 {
  %2 = alloca %struct.HgfsChannelData*, align 8
  store %struct.HgfsChannelData* %0, %struct.HgfsChannelData** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsChannelData** %2, metadata !718, metadata !221), !dbg !719
  %3 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !720
  %4 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %3, i32 0, i32 1, !dbg !721
  %5 = load %struct.HgfsGuestChannelCBTable*, %struct.HgfsGuestChannelCBTable** %4, align 8, !dbg !721
  %6 = getelementptr inbounds %struct.HgfsGuestChannelCBTable, %struct.HgfsGuestChannelCBTable* %5, i32 0, i32 1, !dbg !722
  %7 = load void (%struct.HgfsGuestConn*)*, void (%struct.HgfsGuestConn*)** %6, align 8, !dbg !722
  %8 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !723
  %9 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %8, i32 0, i32 3, !dbg !724
  %10 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %9, align 8, !dbg !724
  call void %7(%struct.HgfsGuestConn* %10), !dbg !720
  %11 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !725
  %12 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %11, i32 0, i32 2, !dbg !726
  %13 = load i32, i32* %12, align 8, !dbg !727
  %14 = and i32 %13, -3, !dbg !727
  store i32 %14, i32* %12, align 8, !dbg !727
  %15 = load %struct.HgfsChannelData*, %struct.HgfsChannelData** %2, align 8, !dbg !728
  %16 = getelementptr inbounds %struct.HgfsChannelData, %struct.HgfsChannelData* %15, i32 0, i32 3, !dbg !729
  store %struct.HgfsGuestConn* null, %struct.HgfsGuestConn** %16, align 8, !dbg !730
  ret void, !dbg !731
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!212, !213}
!llvm.ident = !{!214}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, globals: !20)
!1 = !DIFile(filename: "hgfsChannelGuest.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "BUF_READABLE", value: 0)
!7 = !DIEnumerator(name: "BUF_WRITEABLE", value: 1)
!8 = !DIEnumerator(name: "BUF_READWRITEABLE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 164, size: 32, align: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "HGFS_QUIESCE_FREEZE", value: 0)
!12 = !DIEnumerator(name: "HGFS_QUIESCE_THAW", value: 1)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !16, line: 173, baseType: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 51, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!19 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !204, !211}
!21 = distinct !DIGlobalVariable(name: "gHgfsChannels", scope: !0, file: !22, line: 95, type: !23, isLocal: true, isDefinition: true, variable: [1 x %struct.HgfsChannelData]* @gHgfsChannels)
!22 = !DIFile(filename: "hgfsChannelGuest.c", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 384, align: 64, elements: !124)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelData", file: !22, line: 89, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsChannelData", file: !22, line: 82, size: 384, align: 64, elements: !26)
!26 = !{!27, !31, !182, !183, !184, !203}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !22, line: 83, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !25, file: !22, line: 84, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsGuestChannelCBTable", file: !35, line: 55, baseType: !36)
!35 = !DIFile(filename: "hgfsChannelGuestInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsGuestChannelCBTable", file: !35, line: 50, size: 256, align: 64, elements: !37)
!37 = !{!38, !168, !172, !178}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !36, file: !35, line: 51, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43, !14, !14, !165}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !16, line: 230, baseType: !30)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerSessionCallbacks", file: !4, line: 201, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerSessionCallbacks", file: !4, line: 192, size: 512, align: 64, elements: !47)
!47 = !{!48, !134, !138, !139, !143, !155, !159, !160}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !46, file: !4, line: 193, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!42, !14, !52, !127, !71}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerChannelCallbacks", file: !4, line: 190, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerChannelCallbacks", file: !4, line: 183, size: 384, align: 64, elements: !55)
!55 = !{!56, !61, !63, !72, !73, !78}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "registerThread", scope: !54, file: !4, line: 184, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelRegisterThreadFunc", file: !4, line: 180, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "unregisterThread", scope: !54, file: !4, line: 185, baseType: !62, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnregisterThreadFunc", file: !4, line: 181, baseType: !58)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "getReadVa", scope: !54, file: !4, line: 186, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelMapVirtAddrFunc", file: !4, line: 178, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!14, !68, !15, !71}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !16, line: 171, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 55, baseType: !70)
!70 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "getWriteVa", scope: !54, file: !4, line: 187, baseType: !64, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "putVa", scope: !54, file: !4, line: 188, baseType: !74, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnmapVirtAddrFunc", file: !4, line: 179, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !71}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !54, file: !4, line: 189, baseType: !79, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelSendFunc", file: !4, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!42, !14, !83, !126}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsPacket", file: !4, line: 78, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsPacket", file: !4, line: 45, size: 1920, align: 64, elements: !86)
!86 = !{!87, !88, !90, !91, !94, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !121, !122}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !85, file: !4, line: 46, baseType: !68, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !85, file: !4, line: 48, baseType: !89, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsStateFlags", file: !4, line: 42, baseType: !68)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacket", scope: !85, file: !4, line: 51, baseType: !14, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketSize", scope: !85, file: !4, line: 52, baseType: !92, size: 64, align: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 216, baseType: !70)
!93 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketMappedIov", scope: !85, file: !4, line: 53, baseType: !15, size: 32, align: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketDataSize", scope: !85, file: !4, line: 54, baseType: !92, size: 64, align: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketIsAllocated", scope: !85, file: !4, line: 55, baseType: !42, size: 8, align: 8, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "metaMappingType", scope: !85, file: !4, line: 56, baseType: !98, size: 32, align: 32, offset: 416)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "MappingType", file: !4, line: 40, baseType: !3)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacket", scope: !85, file: !4, line: 58, baseType: !14, size: 64, align: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketSize", scope: !85, file: !4, line: 59, baseType: !92, size: 64, align: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketMappedIov", scope: !85, file: !4, line: 60, baseType: !15, size: 32, align: 32, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketDataSize", scope: !85, file: !4, line: 61, baseType: !92, size: 64, align: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIovIndex", scope: !85, file: !4, line: 62, baseType: !15, size: 32, align: 32, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIsAllocated", scope: !85, file: !4, line: 63, baseType: !42, size: 8, align: 8, offset: 736)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dataMappingType", scope: !85, file: !4, line: 65, baseType: !98, size: 32, align: 32, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacket", scope: !85, file: !4, line: 67, baseType: !14, size: 64, align: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketSize", scope: !85, file: !4, line: 68, baseType: !92, size: 64, align: 64, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketDataSize", scope: !85, file: !4, line: 69, baseType: !92, size: 64, align: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketIsAllocated", scope: !85, file: !4, line: 70, baseType: !42, size: 8, align: 8, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "channelIov", scope: !85, file: !4, line: 73, baseType: !111, size: 512, align: 64, offset: 1088)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, align: 64, elements: !119)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsVmxIov", file: !4, line: 34, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsVmxIov", file: !4, line: 29, size: 256, align: 64, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !113, file: !4, line: 30, baseType: !14, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !113, file: !4, line: 31, baseType: !68, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !113, file: !4, line: 32, baseType: !15, size: 32, align: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !113, file: !4, line: 33, baseType: !14, size: 64, align: 64, offset: 192)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "iovCount", scope: !85, file: !4, line: 75, baseType: !15, size: 32, align: 32, offset: 1600)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !85, file: !4, line: 76, baseType: !123, size: 256, align: 64, offset: 1664)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, align: 64, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSendFlags", file: !4, line: 98, baseType: !15)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerChannelData", file: !4, line: 111, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerChannelData", file: !4, line: 108, size: 64, align: 32, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !4, line: 109, baseType: !132, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelFlags", file: !4, line: 104, baseType: !15)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "maxPacketSize", scope: !129, file: !4, line: 110, baseType: !15, size: 32, align: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !46, file: !4, line: 194, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !14}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !46, file: !4, line: 195, baseType: !135, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "receive", scope: !46, file: !4, line: 196, baseType: !140, size: 64, align: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !83, !14}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateObjects", scope: !46, file: !4, line: 197, baseType: !144, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !14, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !149, line: 94, baseType: !150)
!149 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !149, line: 91, size: 128, align: 64, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !149, line: 92, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !149, line: 93, baseType: !153, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateInactiveSessions", scope: !46, file: !4, line: 198, baseType: !156, size: 64, align: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!15, !14}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sendComplete", scope: !46, file: !4, line: 199, baseType: !140, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce", scope: !46, file: !4, line: 200, baseType: !161, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !14, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsQuiesceOp", file: !4, line: 167, baseType: !9)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsGuestConn", file: !35, line: 45, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !36, file: !35, line: 52, baseType: !169, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !166}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "receive", scope: !36, file: !35, line: 53, baseType: !173, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!42, !166, !28, !92, !176, !177}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateInactiveSessions", scope: !36, file: !35, line: 54, baseType: !179, size: 64, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!15, !166}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !25, file: !22, line: 85, baseType: !15, size: 32, align: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !25, file: !22, line: 86, baseType: !166, size: 64, align: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "serverInfo", scope: !25, file: !22, line: 87, baseType: !185, size: 64, align: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelServerData", file: !22, line: 73, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsChannelServerData", file: !22, line: 70, size: 128, align: 64, elements: !188)
!188 = !{!189, !196}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "serverCBTable", scope: !187, file: !22, line: 71, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerCallbacks", file: !4, line: 206, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerCallbacks", file: !4, line: 204, size: 512, align: 64, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !193, file: !4, line: 205, baseType: !45, size: 512, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !187, file: !22, line: 72, baseType: !197, size: 32, align: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !198, line: 135, baseType: !199)
!198 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !198, line: 133, size: 32, align: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !198, line: 134, baseType: !202, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !25, file: !22, line: 88, baseType: !197, size: 32, align: 32, offset: 320)
!204 = distinct !DIGlobalVariable(name: "gHgfsGuestCfgSettings", scope: !0, file: !22, line: 99, type: !205, isLocal: true, isDefinition: true, variable: %struct.HgfsServerConfig* @gHgfsGuestCfgSettings)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerConfig", file: !4, line: 127, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerConfig", file: !4, line: 124, size: 64, align: 32, elements: !207)
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !4, line: 125, baseType: !209, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsConfigFlags", file: !4, line: 117, baseType: !15)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "maxCachedOpenNodes", scope: !206, file: !4, line: 126, baseType: !15, size: 32, align: 32, offset: 32)
!211 = distinct !DIGlobalVariable(name: "gHgfsChannelServerInfo", scope: !0, file: !22, line: 105, type: !186, isLocal: true, isDefinition: true, variable: %struct.HgfsChannelServerData* @gHgfsChannelServerInfo)
!212 = !{i32 2, !"Dwarf Version", i32 4}
!213 = !{i32 2, !"Debug Info Version", i32 3}
!214 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!215 = distinct !DISubprogram(name: "HgfsChannelGetChannel", scope: !22, file: !22, line: 286, type: !216, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!216 = !DISubroutineType(types: !217)
!217 = !{!15, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!219 = !{}
!220 = !DILocalVariable(name: "channel", arg: 1, scope: !215, file: !22, line: 286, type: !218)
!221 = !DIExpression()
!222 = !DILocation(line: 286, column: 40, scope: !215)
!223 = !DILocation(line: 289, column: 29, scope: !215)
!224 = !DILocation(line: 289, column: 38, scope: !215)
!225 = !DILocation(line: 289, column: 11, scope: !215)
!226 = !DILocation(line: 289, column: 4, scope: !215)
!227 = distinct !DISubprogram(name: "Atomic_ReadInc32", scope: !198, file: !198, line: 1927, type: !228, isLocal: true, isDefinition: true, scopeLine: 1928, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!228 = !DISubroutineType(types: !229)
!229 = !{!15, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!231 = !DILocalVariable(name: "var", arg: 1, scope: !227, file: !198, line: 1927, type: !230)
!232 = !DILocation(line: 1927, column: 33, scope: !227)
!233 = !DILocation(line: 1929, column: 28, scope: !227)
!234 = !DILocation(line: 1929, column: 11, scope: !227)
!235 = !DILocation(line: 1929, column: 4, scope: !227)
!236 = distinct !DISubprogram(name: "HgfsChannelGuest_Init", scope: !22, file: !22, line: 576, type: !237, isLocal: false, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!237 = !DISubroutineType(types: !238)
!238 = !{!42, !239, !248}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrData", file: !241, line: 49, baseType: !242)
!241 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServerManager.h", directory: "/home/lichi/Desktop/open-vm-tools/line429")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrData", file: !241, line: 44, size: 256, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "appName", scope: !242, file: !241, line: 45, baseType: !28, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !242, file: !241, line: 46, baseType: !14, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rpcCallback", scope: !242, file: !241, line: 47, baseType: !14, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !242, file: !241, line: 48, baseType: !14, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerMgrCallbacks", file: !4, line: 162, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerMgrCallbacks", file: !4, line: 160, size: 192, align: 64, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "enumResources", scope: !250, file: !4, line: 161, baseType: !253, size: 192, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumCallbacks", file: !4, line: 153, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerResEnumCallbacks", file: !4, line: 149, size: 192, align: 64, elements: !255)
!255 = !{!256, !261, !268}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !254, file: !4, line: 150, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumInitFunc", file: !4, line: 142, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!14}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !254, file: !4, line: 151, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumGetFunc", file: !4, line: 143, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!42, !14, !266, !177, !267}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !254, file: !4, line: 152, baseType: !269, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerResEnumExitFunc", file: !4, line: 147, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!42, !14}
!273 = !DILocalVariable(name: "mgrData", arg: 1, scope: !236, file: !22, line: 576, type: !239)
!274 = !DILocation(line: 576, column: 42, scope: !236)
!275 = !DILocalVariable(name: "mgrCb", arg: 2, scope: !236, file: !22, line: 577, type: !248)
!276 = !DILocation(line: 577, column: 47, scope: !236)
!277 = !DILocalVariable(name: "success", scope: !236, file: !22, line: 579, type: !42)
!278 = !DILocation(line: 579, column: 9, scope: !236)
!279 = !DILocalVariable(name: "channel", scope: !236, file: !22, line: 580, type: !218)
!280 = !DILocation(line: 580, column: 21, scope: !236)
!281 = !DILocalVariable(name: "channelRefCount", scope: !236, file: !22, line: 581, type: !15)
!282 = !DILocation(line: 581, column: 11, scope: !236)
!283 = !DILocation(line: 591, column: 10, scope: !236)
!284 = !DILocation(line: 591, column: 19, scope: !236)
!285 = !DILocation(line: 591, column: 28, scope: !236)
!286 = !DILocation(line: 591, column: 37, scope: !236)
!287 = !DILocation(line: 591, column: 42, scope: !236)
!288 = !DILocation(line: 591, column: 51, scope: !236)
!289 = !DILocation(line: 590, column: 4, scope: !236)
!290 = !DILocation(line: 593, column: 15, scope: !291)
!291 = distinct !DILexicalBlock(scope: !236, file: !22, line: 593, column: 7)
!292 = !DILocation(line: 593, column: 24, scope: !291)
!293 = !DILocation(line: 593, column: 12, scope: !291)
!294 = !DILocation(line: 593, column: 28, scope: !291)
!295 = !DILocation(line: 593, column: 39, scope: !296)
!296 = !DILexicalBlockFile(scope: !291, file: !22, discriminator: 1)
!297 = !DILocation(line: 593, column: 48, scope: !296)
!298 = !DILocation(line: 593, column: 36, scope: !296)
!299 = !DILocation(line: 593, column: 7, scope: !296)
!300 = !DILocation(line: 599, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !291, file: !22, line: 593, column: 61)
!302 = !DILocation(line: 600, column: 7, scope: !301)
!303 = !DILocation(line: 608, column: 44, scope: !236)
!304 = !DILocation(line: 608, column: 22, scope: !236)
!305 = !DILocation(line: 608, column: 20, scope: !236)
!306 = !DILocation(line: 610, column: 26, scope: !236)
!307 = !DILocation(line: 610, column: 4, scope: !236)
!308 = !DILocation(line: 610, column: 13, scope: !236)
!309 = !DILocation(line: 610, column: 24, scope: !236)
!310 = !DILocation(line: 611, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !236, file: !22, line: 611, column: 8)
!312 = !DILocation(line: 611, column: 10, scope: !311)
!313 = !DILocation(line: 611, column: 8, scope: !236)
!314 = !DILocation(line: 614, column: 35, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !22, line: 614, column: 11)
!316 = distinct !DILexicalBlock(scope: !311, file: !22, line: 611, column: 30)
!317 = !DILocation(line: 614, column: 44, scope: !315)
!318 = !DILocation(line: 614, column: 12, scope: !315)
!319 = !DILocation(line: 614, column: 11, scope: !316)
!320 = !DILocation(line: 615, column: 10, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !22, line: 614, column: 77)
!322 = !DILocation(line: 616, column: 10, scope: !321)
!323 = !DILocation(line: 620, column: 39, scope: !324)
!324 = distinct !DILexicalBlock(scope: !316, file: !22, line: 620, column: 11)
!325 = !DILocation(line: 621, column: 39, scope: !324)
!326 = !DILocation(line: 621, column: 48, scope: !324)
!327 = !DILocation(line: 622, column: 39, scope: !324)
!328 = !DILocation(line: 622, column: 48, scope: !324)
!329 = !DILocation(line: 620, column: 12, scope: !324)
!330 = !DILocation(line: 620, column: 11, scope: !316)
!331 = !DILocation(line: 623, column: 10, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !22, line: 622, column: 62)
!333 = !DILocation(line: 624, column: 10, scope: !332)
!334 = !DILocation(line: 626, column: 4, scope: !316)
!335 = !DILocation(line: 628, column: 12, scope: !236)
!336 = !DILocation(line: 628, column: 4, scope: !236)
!337 = !DILocation(line: 631, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !236, file: !22, line: 631, column: 8)
!339 = !DILocation(line: 631, column: 8, scope: !236)
!340 = !DILocation(line: 632, column: 29, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !22, line: 631, column: 18)
!342 = !DILocation(line: 632, column: 7, scope: !341)
!343 = !DILocation(line: 633, column: 4, scope: !341)
!344 = !DILocation(line: 634, column: 11, scope: !236)
!345 = !DILocation(line: 634, column: 4, scope: !236)
!346 = distinct !DISubprogram(name: "HgfsChannelInitChannel", scope: !22, file: !22, line: 338, type: !347, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!347 = !DISubroutineType(types: !348)
!348 = !{!42, !218, !248, !185}
!349 = !DILocalVariable(name: "channel", arg: 1, scope: !346, file: !22, line: 338, type: !218)
!350 = !DILocation(line: 338, column: 41, scope: !346)
!351 = !DILocalVariable(name: "mgrCb", arg: 2, scope: !346, file: !22, line: 339, type: !248)
!352 = !DILocation(line: 339, column: 48, scope: !346)
!353 = !DILocalVariable(name: "serverInfo", arg: 3, scope: !346, file: !22, line: 340, type: !185)
!354 = !DILocation(line: 340, column: 47, scope: !346)
!355 = !DILocalVariable(name: "result", scope: !346, file: !22, line: 342, type: !42)
!356 = !DILocation(line: 342, column: 9, scope: !346)
!357 = !DILocalVariable(name: "serverInfoCount", scope: !346, file: !22, line: 343, type: !15)
!358 = !DILocation(line: 343, column: 11, scope: !346)
!359 = !DILocation(line: 345, column: 4, scope: !346)
!360 = !DILocation(line: 345, column: 13, scope: !346)
!361 = !DILocation(line: 345, column: 19, scope: !346)
!362 = !DILocation(line: 352, column: 43, scope: !346)
!363 = !DILocation(line: 352, column: 22, scope: !346)
!364 = !DILocation(line: 352, column: 20, scope: !346)
!365 = !DILocation(line: 354, column: 26, scope: !346)
!366 = !DILocation(line: 354, column: 4, scope: !346)
!367 = !DILocation(line: 354, column: 13, scope: !346)
!368 = !DILocation(line: 354, column: 24, scope: !346)
!369 = !DILocation(line: 355, column: 13, scope: !370)
!370 = distinct !DILexicalBlock(scope: !346, file: !22, line: 355, column: 8)
!371 = !DILocation(line: 355, column: 10, scope: !370)
!372 = !DILocation(line: 355, column: 8, scope: !346)
!373 = !DILocation(line: 357, column: 38, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !22, line: 355, column: 30)
!375 = !DILocation(line: 357, column: 45, scope: !374)
!376 = !DILocation(line: 357, column: 54, scope: !374)
!377 = !DILocation(line: 357, column: 16, scope: !374)
!378 = !DILocation(line: 357, column: 14, scope: !374)
!379 = !DILocation(line: 358, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !22, line: 358, column: 11)
!381 = !DILocation(line: 358, column: 11, scope: !374)
!382 = !DILocation(line: 359, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !22, line: 358, column: 20)
!384 = !DILocation(line: 360, column: 10, scope: !383)
!385 = !DILocation(line: 362, column: 4, scope: !374)
!386 = !DILocation(line: 364, column: 4, scope: !346)
!387 = !DILocation(line: 364, column: 13, scope: !346)
!388 = !DILocation(line: 364, column: 19, scope: !346)
!389 = !DILocation(line: 367, column: 9, scope: !390)
!390 = distinct !DILexicalBlock(scope: !346, file: !22, line: 367, column: 8)
!391 = !DILocation(line: 367, column: 8, scope: !346)
!392 = !DILocation(line: 368, column: 30, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !22, line: 367, column: 17)
!394 = !DILocation(line: 368, column: 7, scope: !393)
!395 = !DILocation(line: 369, column: 4, scope: !393)
!396 = !DILocation(line: 370, column: 57, scope: !346)
!397 = !DILocation(line: 370, column: 4, scope: !346)
!398 = !DILocation(line: 371, column: 11, scope: !346)
!399 = !DILocation(line: 371, column: 4, scope: !346)
!400 = distinct !DISubprogram(name: "HgfsChannelActivateChannel", scope: !22, file: !22, line: 421, type: !401, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!401 = !DISubroutineType(types: !402)
!402 = !{!42, !218, !14, !14}
!403 = !DILocalVariable(name: "channel", arg: 1, scope: !400, file: !22, line: 421, type: !218)
!404 = !DILocation(line: 421, column: 45, scope: !400)
!405 = !DILocalVariable(name: "rpc", arg: 2, scope: !400, file: !22, line: 422, type: !14)
!406 = !DILocation(line: 422, column: 34, scope: !400)
!407 = !DILocalVariable(name: "rpcCallback", arg: 3, scope: !400, file: !22, line: 423, type: !14)
!408 = !DILocation(line: 423, column: 34, scope: !400)
!409 = !DILocalVariable(name: "success", scope: !400, file: !22, line: 425, type: !42)
!410 = !DILocation(line: 425, column: 9, scope: !400)
!411 = !DILocalVariable(name: "connData", scope: !400, file: !22, line: 426, type: !166)
!412 = !DILocation(line: 426, column: 26, scope: !400)
!413 = !DILocation(line: 428, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !400, file: !22, line: 428, column: 8)
!415 = !DILocation(line: 428, column: 17, scope: !414)
!416 = !DILocation(line: 428, column: 22, scope: !414)
!417 = !DILocation(line: 428, column: 28, scope: !414)
!418 = !DILocation(line: 428, column: 37, scope: !414)
!419 = !DILocation(line: 428, column: 49, scope: !414)
!420 = !DILocation(line: 428, column: 64, scope: !414)
!421 = !DILocation(line: 429, column: 27, scope: !414)
!422 = !DILocation(line: 430, column: 27, scope: !414)
!423 = !DILocation(line: 428, column: 8, scope: !400)
!424 = !DILocation(line: 432, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !414, file: !22, line: 431, column: 39)
!426 = !DILocation(line: 432, column: 16, scope: !425)
!427 = !DILocation(line: 432, column: 22, scope: !425)
!428 = !DILocation(line: 433, column: 29, scope: !425)
!429 = !DILocation(line: 433, column: 7, scope: !425)
!430 = !DILocation(line: 433, column: 16, scope: !425)
!431 = !DILocation(line: 433, column: 27, scope: !425)
!432 = !DILocation(line: 434, column: 15, scope: !425)
!433 = !DILocation(line: 435, column: 4, scope: !425)
!434 = !DILocation(line: 436, column: 11, scope: !400)
!435 = !DILocation(line: 436, column: 4, scope: !400)
!436 = distinct !DISubprogram(name: "HgfsChannelGuest_Exit", scope: !22, file: !22, line: 656, type: !437, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !239}
!439 = !DILocalVariable(name: "mgrData", arg: 1, scope: !436, file: !22, line: 656, type: !239)
!440 = !DILocation(line: 656, column: 42, scope: !436)
!441 = !DILocalVariable(name: "channel", scope: !436, file: !22, line: 658, type: !218)
!442 = !DILocation(line: 658, column: 21, scope: !436)
!443 = !DILocation(line: 663, column: 14, scope: !436)
!444 = !DILocation(line: 663, column: 23, scope: !436)
!445 = !DILocation(line: 663, column: 12, scope: !436)
!446 = !DILocation(line: 666, column: 10, scope: !436)
!447 = !DILocation(line: 666, column: 19, scope: !436)
!448 = !DILocation(line: 666, column: 28, scope: !436)
!449 = !DILocation(line: 666, column: 37, scope: !436)
!450 = !DILocation(line: 666, column: 42, scope: !436)
!451 = !DILocation(line: 666, column: 51, scope: !436)
!452 = !DILocation(line: 666, column: 64, scope: !436)
!453 = !DILocation(line: 665, column: 4, scope: !436)
!454 = !DILocation(line: 668, column: 15, scope: !455)
!455 = distinct !DILexicalBlock(scope: !436, file: !22, line: 668, column: 7)
!456 = !DILocation(line: 668, column: 12, scope: !455)
!457 = !DILocation(line: 668, column: 7, scope: !436)
!458 = !DILocation(line: 669, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !22, line: 668, column: 24)
!460 = !DILocation(line: 669, column: 7, scope: !459)
!461 = !DILocation(line: 670, column: 7, scope: !459)
!462 = !DILocation(line: 670, column: 16, scope: !459)
!463 = !DILocation(line: 670, column: 27, scope: !459)
!464 = !DILocation(line: 671, column: 4, scope: !459)
!465 = !DILocation(line: 672, column: 1, scope: !436)
!466 = distinct !DISubprogram(name: "HgfsChannelPutChannel", scope: !22, file: !22, line: 312, type: !467, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !218}
!469 = !DILocalVariable(name: "channel", arg: 1, scope: !466, file: !22, line: 312, type: !218)
!470 = !DILocation(line: 312, column: 40, scope: !466)
!471 = !DILocation(line: 315, column: 26, scope: !472)
!472 = distinct !DILexicalBlock(scope: !466, file: !22, line: 315, column: 8)
!473 = !DILocation(line: 315, column: 35, scope: !472)
!474 = !DILocation(line: 315, column: 8, scope: !472)
!475 = !DILocation(line: 315, column: 45, scope: !472)
!476 = !DILocation(line: 315, column: 8, scope: !466)
!477 = !DILocation(line: 316, column: 34, scope: !478)
!478 = distinct !DILexicalBlock(scope: !472, file: !22, line: 315, column: 51)
!479 = !DILocation(line: 316, column: 7, scope: !478)
!480 = !DILocation(line: 317, column: 4, scope: !478)
!481 = !DILocation(line: 318, column: 1, scope: !466)
!482 = distinct !DISubprogram(name: "HgfsChannelGuest_Receive", scope: !22, file: !22, line: 693, type: !483, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!483 = !DISubroutineType(types: !484)
!484 = !{!42, !239, !28, !92, !176, !177}
!485 = !DILocalVariable(name: "mgrData", arg: 1, scope: !482, file: !22, line: 693, type: !239)
!486 = !DILocation(line: 693, column: 45, scope: !482)
!487 = !DILocalVariable(name: "packetIn", arg: 2, scope: !482, file: !22, line: 694, type: !28)
!488 = !DILocation(line: 694, column: 38, scope: !482)
!489 = !DILocalVariable(name: "packetInSize", arg: 3, scope: !482, file: !22, line: 695, type: !92)
!490 = !DILocation(line: 695, column: 33, scope: !482)
!491 = !DILocalVariable(name: "packetOut", arg: 4, scope: !482, file: !22, line: 696, type: !176)
!492 = !DILocation(line: 696, column: 32, scope: !482)
!493 = !DILocalVariable(name: "packetOutSize", arg: 5, scope: !482, file: !22, line: 697, type: !177)
!494 = !DILocation(line: 697, column: 34, scope: !482)
!495 = !DILocalVariable(name: "channel", scope: !482, file: !22, line: 699, type: !218)
!496 = !DILocation(line: 699, column: 21, scope: !482)
!497 = !DILocalVariable(name: "result", scope: !482, file: !22, line: 700, type: !42)
!498 = !DILocation(line: 700, column: 9, scope: !482)
!499 = !DILocation(line: 706, column: 14, scope: !482)
!500 = !DILocation(line: 706, column: 23, scope: !482)
!501 = !DILocation(line: 706, column: 12, scope: !482)
!502 = !DILocation(line: 708, column: 61, scope: !482)
!503 = !DILocation(line: 708, column: 70, scope: !482)
!504 = !DILocation(line: 708, column: 4, scope: !482)
!505 = !DILocation(line: 710, column: 35, scope: !506)
!506 = distinct !DILexicalBlock(scope: !482, file: !22, line: 710, column: 8)
!507 = !DILocation(line: 710, column: 8, scope: !506)
!508 = !DILocation(line: 710, column: 8, scope: !482)
!509 = !DILocation(line: 711, column: 35, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !22, line: 710, column: 45)
!511 = !DILocation(line: 712, column: 35, scope: !510)
!512 = !DILocation(line: 713, column: 35, scope: !510)
!513 = !DILocation(line: 714, column: 35, scope: !510)
!514 = !DILocation(line: 715, column: 35, scope: !510)
!515 = !DILocation(line: 711, column: 16, scope: !510)
!516 = !DILocation(line: 711, column: 14, scope: !510)
!517 = !DILocation(line: 716, column: 4, scope: !510)
!518 = !DILocation(line: 718, column: 62, scope: !482)
!519 = !DILocation(line: 718, column: 4, scope: !482)
!520 = !DILocation(line: 720, column: 11, scope: !482)
!521 = !DILocation(line: 720, column: 4, scope: !482)
!522 = distinct !DISubprogram(name: "HgfsChannelIsChannelActive", scope: !22, file: !22, line: 482, type: !523, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!523 = !DISubroutineType(types: !524)
!524 = !{!42, !218}
!525 = !DILocalVariable(name: "channel", arg: 1, scope: !522, file: !22, line: 482, type: !218)
!526 = !DILocation(line: 482, column: 45, scope: !522)
!527 = !DILocation(line: 484, column: 18, scope: !522)
!528 = !DILocation(line: 484, column: 27, scope: !522)
!529 = !DILocation(line: 484, column: 33, scope: !522)
!530 = !DILocation(line: 484, column: 14, scope: !522)
!531 = !DILocation(line: 484, column: 45, scope: !522)
!532 = !DILocation(line: 485, column: 18, scope: !522)
!533 = !DILocation(line: 485, column: 27, scope: !522)
!534 = !DILocation(line: 485, column: 33, scope: !522)
!535 = !DILocation(line: 485, column: 14, scope: !522)
!536 = !DILocation(line: 484, column: 45, scope: !537)
!537 = !DILexicalBlockFile(scope: !522, file: !22, discriminator: 1)
!538 = !DILocation(line: 484, column: 11, scope: !537)
!539 = !DILocation(line: 484, column: 4, scope: !537)
!540 = distinct !DISubprogram(name: "HgfsChannelReceive", scope: !22, file: !22, line: 506, type: !541, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!541 = !DISubroutineType(types: !542)
!542 = !{!42, !218, !28, !92, !176, !177}
!543 = !DILocalVariable(name: "channel", arg: 1, scope: !540, file: !22, line: 506, type: !218)
!544 = !DILocation(line: 506, column: 37, scope: !540)
!545 = !DILocalVariable(name: "packetIn", arg: 2, scope: !540, file: !22, line: 507, type: !28)
!546 = !DILocation(line: 507, column: 32, scope: !540)
!547 = !DILocalVariable(name: "packetInSize", arg: 3, scope: !540, file: !22, line: 508, type: !92)
!548 = !DILocation(line: 508, column: 27, scope: !540)
!549 = !DILocalVariable(name: "packetOut", arg: 4, scope: !540, file: !22, line: 509, type: !176)
!550 = !DILocation(line: 509, column: 26, scope: !540)
!551 = !DILocalVariable(name: "packetOutSize", arg: 5, scope: !540, file: !22, line: 510, type: !177)
!552 = !DILocation(line: 510, column: 28, scope: !540)
!553 = !DILocation(line: 512, column: 11, scope: !540)
!554 = !DILocation(line: 512, column: 20, scope: !540)
!555 = !DILocation(line: 512, column: 25, scope: !540)
!556 = !DILocation(line: 512, column: 33, scope: !540)
!557 = !DILocation(line: 512, column: 42, scope: !540)
!558 = !DILocation(line: 513, column: 33, scope: !540)
!559 = !DILocation(line: 514, column: 33, scope: !540)
!560 = !DILocation(line: 515, column: 33, scope: !540)
!561 = !DILocation(line: 516, column: 33, scope: !540)
!562 = !DILocation(line: 512, column: 4, scope: !540)
!563 = distinct !DISubprogram(name: "HgfsChannelGuest_InvalidateInactiveSessions", scope: !22, file: !22, line: 741, type: !564, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!564 = !DISubroutineType(types: !565)
!565 = !{!15, !239}
!566 = !DILocalVariable(name: "mgrData", arg: 1, scope: !563, file: !22, line: 741, type: !239)
!567 = !DILocation(line: 741, column: 64, scope: !563)
!568 = !DILocalVariable(name: "channel", scope: !563, file: !22, line: 743, type: !218)
!569 = !DILocation(line: 743, column: 21, scope: !563)
!570 = !DILocalVariable(name: "result", scope: !563, file: !22, line: 744, type: !15)
!571 = !DILocation(line: 744, column: 11, scope: !563)
!572 = !DILocation(line: 750, column: 14, scope: !563)
!573 = !DILocation(line: 750, column: 23, scope: !563)
!574 = !DILocation(line: 750, column: 12, scope: !563)
!575 = !DILocation(line: 753, column: 24, scope: !563)
!576 = !DILocation(line: 753, column: 33, scope: !563)
!577 = !DILocation(line: 752, column: 4, scope: !563)
!578 = !DILocation(line: 755, column: 35, scope: !579)
!579 = distinct !DILexicalBlock(scope: !563, file: !22, line: 755, column: 8)
!580 = !DILocation(line: 755, column: 8, scope: !579)
!581 = !DILocation(line: 755, column: 8, scope: !563)
!582 = !DILocation(line: 756, column: 16, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !22, line: 755, column: 45)
!584 = !DILocation(line: 756, column: 25, scope: !583)
!585 = !DILocation(line: 756, column: 30, scope: !583)
!586 = !DILocation(line: 756, column: 57, scope: !583)
!587 = !DILocation(line: 756, column: 66, scope: !583)
!588 = !DILocation(line: 756, column: 14, scope: !583)
!589 = !DILocation(line: 757, column: 4, scope: !583)
!590 = !DILocation(line: 759, column: 11, scope: !563)
!591 = !DILocation(line: 759, column: 4, scope: !563)
!592 = distinct !DISubprogram(name: "Atomic_ReadAdd32", scope: !198, file: !198, line: 1864, type: !593, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!593 = !DISubroutineType(types: !594)
!594 = !{!15, !230, !15}
!595 = !DILocalVariable(name: "var", arg: 1, scope: !592, file: !198, line: 1864, type: !230)
!596 = !DILocation(line: 1864, column: 33, scope: !592)
!597 = !DILocalVariable(name: "val", arg: 2, scope: !592, file: !198, line: 1865, type: !15)
!598 = !DILocation(line: 1865, column: 25, scope: !592)
!599 = !DILocation(line: 1896, column: 15, scope: !592)
!600 = !DILocation(line: 1896, column: 20, scope: !592)
!601 = !DILocation(line: 1897, column: 14, scope: !592)
!602 = !DILocation(line: 1893, column: 4, scope: !592)
!603 = !{i32 53104}
!604 = !DILocation(line: 1900, column: 11, scope: !592)
!605 = !DILocation(line: 1900, column: 4, scope: !592)
!606 = distinct !DISubprogram(name: "HgfsChannelGetServer", scope: !22, file: !22, line: 138, type: !607, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!607 = !DISubroutineType(types: !608)
!608 = !{!15, !185}
!609 = !DILocalVariable(name: "serverInfo", arg: 1, scope: !606, file: !22, line: 138, type: !185)
!610 = !DILocation(line: 138, column: 45, scope: !606)
!611 = !DILocation(line: 141, column: 29, scope: !606)
!612 = !DILocation(line: 141, column: 41, scope: !606)
!613 = !DILocation(line: 141, column: 11, scope: !606)
!614 = !DILocation(line: 141, column: 4, scope: !606)
!615 = distinct !DISubprogram(name: "HgfsChannelInitServer", scope: !22, file: !22, line: 190, type: !616, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!616 = !DISubroutineType(types: !617)
!617 = !{!42, !248, !185}
!618 = !DILocalVariable(name: "mgrCb", arg: 1, scope: !615, file: !22, line: 190, type: !248)
!619 = !DILocation(line: 190, column: 47, scope: !615)
!620 = !DILocalVariable(name: "serverInfo", arg: 2, scope: !615, file: !22, line: 191, type: !185)
!621 = !DILocation(line: 191, column: 46, scope: !615)
!622 = !DILocalVariable(name: "result", scope: !615, file: !22, line: 193, type: !42)
!623 = !DILocation(line: 193, column: 9, scope: !615)
!624 = !DILocation(line: 197, column: 4, scope: !615)
!625 = !DILocation(line: 200, column: 35, scope: !615)
!626 = !DILocation(line: 200, column: 47, scope: !615)
!627 = !DILocation(line: 202, column: 34, scope: !615)
!628 = !DILocation(line: 200, column: 13, scope: !615)
!629 = !DILocation(line: 200, column: 11, scope: !615)
!630 = !DILocation(line: 203, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !615, file: !22, line: 203, column: 8)
!632 = !DILocation(line: 203, column: 8, scope: !615)
!633 = !DILocation(line: 204, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !22, line: 203, column: 17)
!635 = !DILocation(line: 205, column: 4, scope: !634)
!636 = !DILocation(line: 206, column: 11, scope: !615)
!637 = !DILocation(line: 206, column: 4, scope: !615)
!638 = distinct !DISubprogram(name: "HgfsChannelExitChannel", scope: !22, file: !22, line: 392, type: !467, isLocal: true, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!639 = !DILocalVariable(name: "channel", arg: 1, scope: !638, file: !22, line: 392, type: !218)
!640 = !DILocation(line: 392, column: 41, scope: !638)
!641 = !DILocation(line: 394, column: 15, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !22, line: 394, column: 7)
!643 = !DILocation(line: 394, column: 24, scope: !642)
!644 = !DILocation(line: 394, column: 12, scope: !642)
!645 = !DILocation(line: 394, column: 7, scope: !638)
!646 = !DILocation(line: 396, column: 28, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !22, line: 394, column: 36)
!648 = !DILocation(line: 396, column: 37, scope: !647)
!649 = !DILocation(line: 396, column: 7, scope: !647)
!650 = !DILocation(line: 397, column: 7, scope: !647)
!651 = !DILocation(line: 397, column: 16, scope: !647)
!652 = !DILocation(line: 397, column: 27, scope: !647)
!653 = !DILocation(line: 398, column: 5, scope: !647)
!654 = !DILocation(line: 399, column: 4, scope: !638)
!655 = !DILocation(line: 399, column: 13, scope: !638)
!656 = !DILocation(line: 399, column: 19, scope: !638)
!657 = !DILocation(line: 400, column: 4, scope: !638)
!658 = !DILocation(line: 401, column: 1, scope: !638)
!659 = distinct !DISubprogram(name: "HgfsChannelPutServer", scope: !22, file: !22, line: 164, type: !660, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !185}
!662 = !DILocalVariable(name: "serverInfo", arg: 1, scope: !659, file: !22, line: 164, type: !185)
!663 = !DILocation(line: 164, column: 45, scope: !659)
!664 = !DILocation(line: 167, column: 26, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !22, line: 167, column: 8)
!666 = !DILocation(line: 167, column: 38, scope: !665)
!667 = !DILocation(line: 167, column: 8, scope: !665)
!668 = !DILocation(line: 167, column: 48, scope: !665)
!669 = !DILocation(line: 167, column: 8, scope: !659)
!670 = !DILocation(line: 168, column: 33, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !22, line: 167, column: 54)
!672 = !DILocation(line: 168, column: 7, scope: !671)
!673 = !DILocation(line: 169, column: 4, scope: !671)
!674 = !DILocation(line: 170, column: 1, scope: !659)
!675 = distinct !DISubprogram(name: "Atomic_ReadDec32", scope: !198, file: !198, line: 1950, type: !228, isLocal: true, isDefinition: true, scopeLine: 1951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!676 = !DILocalVariable(name: "var", arg: 1, scope: !675, file: !198, line: 1950, type: !230)
!677 = !DILocation(line: 1950, column: 33, scope: !675)
!678 = !DILocation(line: 1952, column: 28, scope: !675)
!679 = !DILocation(line: 1952, column: 11, scope: !675)
!680 = !DILocation(line: 1952, column: 4, scope: !675)
!681 = distinct !DISubprogram(name: "HgfsChannelTeardownServer", scope: !22, file: !22, line: 254, type: !660, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!682 = !DILocalVariable(name: "serverInfo", arg: 1, scope: !681, file: !22, line: 254, type: !185)
!683 = !DILocation(line: 254, column: 50, scope: !681)
!684 = !DILocation(line: 256, column: 26, scope: !681)
!685 = !DILocation(line: 256, column: 4, scope: !681)
!686 = !DILocation(line: 257, column: 1, scope: !681)
!687 = distinct !DISubprogram(name: "HgfsChannelExitServer", scope: !22, file: !22, line: 227, type: !660, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!688 = !DILocalVariable(name: "serverInfo", arg: 1, scope: !687, file: !22, line: 227, type: !185)
!689 = !DILocation(line: 227, column: 46, scope: !687)
!690 = !DILocation(line: 229, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !22, line: 229, column: 7)
!692 = !DILocation(line: 229, column: 27, scope: !691)
!693 = !DILocation(line: 229, column: 12, scope: !691)
!694 = !DILocation(line: 229, column: 7, scope: !687)
!695 = !DILocation(line: 230, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !22, line: 229, column: 42)
!697 = !DILocation(line: 231, column: 7, scope: !696)
!698 = !DILocation(line: 232, column: 7, scope: !696)
!699 = !DILocation(line: 232, column: 19, scope: !696)
!700 = !DILocation(line: 232, column: 33, scope: !696)
!701 = !DILocation(line: 233, column: 4, scope: !696)
!702 = !DILocation(line: 234, column: 1, scope: !687)
!703 = distinct !DISubprogram(name: "HgfsChannelTeardownChannel", scope: !22, file: !22, line: 537, type: !467, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!704 = !DILocalVariable(name: "channel", arg: 1, scope: !703, file: !22, line: 537, type: !218)
!705 = !DILocation(line: 537, column: 45, scope: !703)
!706 = !DILocation(line: 539, column: 35, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !22, line: 539, column: 8)
!708 = !DILocation(line: 539, column: 8, scope: !707)
!709 = !DILocation(line: 539, column: 8, scope: !703)
!710 = !DILocation(line: 540, column: 36, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !22, line: 539, column: 45)
!712 = !DILocation(line: 540, column: 7, scope: !711)
!713 = !DILocation(line: 541, column: 4, scope: !711)
!714 = !DILocation(line: 542, column: 27, scope: !703)
!715 = !DILocation(line: 542, column: 4, scope: !703)
!716 = !DILocation(line: 543, column: 1, scope: !703)
!717 = distinct !DISubprogram(name: "HgfsChannelDeactivateChannel", scope: !22, file: !22, line: 457, type: !467, isLocal: true, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !219)
!718 = !DILocalVariable(name: "channel", arg: 1, scope: !717, file: !22, line: 457, type: !218)
!719 = !DILocation(line: 457, column: 47, scope: !717)
!720 = !DILocation(line: 459, column: 4, scope: !717)
!721 = !DILocation(line: 459, column: 13, scope: !717)
!722 = !DILocation(line: 459, column: 18, scope: !717)
!723 = !DILocation(line: 459, column: 23, scope: !717)
!724 = !DILocation(line: 459, column: 32, scope: !717)
!725 = !DILocation(line: 460, column: 4, scope: !717)
!726 = !DILocation(line: 460, column: 13, scope: !717)
!727 = !DILocation(line: 460, column: 19, scope: !717)
!728 = !DILocation(line: 461, column: 4, scope: !717)
!729 = !DILocation(line: 461, column: 13, scope: !717)
!730 = !DILocation(line: 461, column: 24, scope: !717)
!731 = !DILocation(line: 462, column: 1, scope: !717)
