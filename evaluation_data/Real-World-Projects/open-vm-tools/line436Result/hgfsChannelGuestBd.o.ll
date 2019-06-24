; ModuleID = './hgfsChannelGuestBd.o.i'
source_filename = "./hgfsChannelGuestBd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsGuestChannelCBTable = type { i8 (%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**)*, void (%struct.HgfsGuestConn*)*, i8 (%struct.HgfsGuestConn*, i8*, i64, i8*, i64*)*, i32 (%struct.HgfsGuestConn*)* }
%struct.HgfsServerSessionCallbacks = type { i8 (i8*, %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelData*, i8**)*, void (i8*)*, void (i8*)*, void (%struct.HgfsPacket*, i8*)*, void (i8*, %struct.DblLnkLst_Links*)*, i32 (i8*)*, void (%struct.HgfsPacket*, i8*)*, void (i8*, i32)* }
%struct.HgfsServerChannelCallbacks = type { void ()*, void ()*, i8* (i64, i32, i8**)*, i8* (i64, i32, i8**)*, void (i8**)*, i8 (i8*, %struct.HgfsPacket*, i32)* }
%struct.HgfsPacket = type { i64, i64, i8*, i64, i32, i64, i8, i32, i8*, i64, i32, i64, i32, i8, i32, i8*, i64, i64, i8, [2 x %struct.HgfsVmxIov], i32, [1 x %struct.HgfsVmxIov] }
%struct.HgfsVmxIov = type { i8*, i64, i32, i8* }
%struct.HgfsServerChannelData = type { i32, i32 }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsGuestConn = type { %struct.Atomic_uint32, i32, %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerChannelCallbacks, i8*, i64, i8*, [63488 x i8] }
%struct.Atomic_uint32 = type { i32 }

@gGuestBackdoorOps = constant %struct.HgfsGuestChannelCBTable { i8 (%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**)* @HgfsChannelGuestBdInit, void (%struct.HgfsGuestConn*)* @HgfsChannelGuestBdExit, i8 (%struct.HgfsGuestConn*, i8*, i64, i8*, i64*)* @HgfsChannelGuestBdReceive, i32 (%struct.HgfsGuestConn*)* @HgfsChannelGuestBdInvalidateInactiveSessions }, align 8
@HgfsChannelGuestConnConnect.HgfsBdCapData = internal global %struct.HgfsServerChannelData { i32 0, i32 63488 }, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Error: guest connection initialized.\0A\00", align 1
@__FUNCTION__.HgfsChannelGuestBdInit = private unnamed_addr constant [23 x i8] c"HgfsChannelGuestBdInit\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: guest initialized.\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestBdInit(%struct.HgfsServerSessionCallbacks*, i8*, i8*, %struct.HgfsGuestConn**) #0 !dbg !211 {
  %5 = alloca %struct.HgfsServerSessionCallbacks*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.HgfsGuestConn**, align 8
  %9 = alloca %struct.HgfsGuestConn*, align 8
  %10 = alloca i8, align 1
  store %struct.HgfsServerSessionCallbacks* %0, %struct.HgfsServerSessionCallbacks** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerSessionCallbacks** %5, metadata !215, metadata !216), !dbg !217
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !218, metadata !216), !dbg !219
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !216), !dbg !221
  store %struct.HgfsGuestConn** %3, %struct.HgfsGuestConn*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn*** %8, metadata !222, metadata !216), !dbg !223
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %9, metadata !224, metadata !216), !dbg !225
  store %struct.HgfsGuestConn* null, %struct.HgfsGuestConn** %9, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i8* %10, metadata !226, metadata !216), !dbg !227
  %11 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %5, align 8, !dbg !228
  %12 = call signext i8 @HgfsChannelGuestConnInit(%struct.HgfsGuestConn** %9, %struct.HgfsServerSessionCallbacks* %11), !dbg !229
  store i8 %12, i8* %10, align 1, !dbg !230
  %13 = load i8, i8* %10, align 1, !dbg !231
  %14 = icmp ne i8 %13, 0, !dbg !231
  br i1 %14, label %16, label %15, !dbg !233

; <label>:15:                                     ; preds = %4
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsChannelGuestBdInit, i32 0, i32 0)), !dbg !234
  br label %20, !dbg !236

; <label>:16:                                     ; preds = %4
  %17 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %9, align 8, !dbg !237
  %18 = load i8*, i8** %6, align 8, !dbg !238
  %19 = load i8*, i8** %7, align 8, !dbg !239
  call void @HgfsChannelGuestConnCreate(%struct.HgfsGuestConn* %17, i8* %18, i8* %19), !dbg !240
  br label %20, !dbg !240

; <label>:20:                                     ; preds = %16, %15
  %21 = load i8, i8* %10, align 1, !dbg !241
  %22 = icmp ne i8 %21, 0, !dbg !241
  br i1 %22, label %29, label %23, !dbg !243

; <label>:23:                                     ; preds = %20
  %24 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %9, align 8, !dbg !244
  %25 = icmp ne %struct.HgfsGuestConn* null, %24, !dbg !247
  br i1 %25, label %26, label %28, !dbg !248

; <label>:26:                                     ; preds = %23
  %27 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %9, align 8, !dbg !249
  call void @HgfsChannelGuestBdExit(%struct.HgfsGuestConn* %27), !dbg !251
  store %struct.HgfsGuestConn* null, %struct.HgfsGuestConn** %9, align 8, !dbg !252
  br label %28, !dbg !253

; <label>:28:                                     ; preds = %26, %23
  br label %29, !dbg !254

; <label>:29:                                     ; preds = %28, %20
  %30 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %9, align 8, !dbg !255
  %31 = load %struct.HgfsGuestConn**, %struct.HgfsGuestConn*** %8, align 8, !dbg !256
  store %struct.HgfsGuestConn* %30, %struct.HgfsGuestConn** %31, align 8, !dbg !257
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.HgfsChannelGuestBdInit, i32 0, i32 0)), !dbg !258
  %32 = load i8, i8* %10, align 1, !dbg !259
  ret i8 %32, !dbg !260
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestBdExit(%struct.HgfsGuestConn*) #0 !dbg !261 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !264, metadata !216), !dbg !265
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !266
  %4 = icmp ne %struct.HgfsGuestConn* null, %3, !dbg !268
  br i1 %4, label %5, label %8, !dbg !269

; <label>:5:                                      ; preds = %1
  %6 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !270
  call void @HgfsChannelGuestConnCloseInternal(%struct.HgfsGuestConn* %6, i8* null, i8* null), !dbg !272
  %7 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !273
  call void @HgfsChannelGuestConnExit(%struct.HgfsGuestConn* %7), !dbg !274
  br label %8, !dbg !275

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !276
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestBdReceive(%struct.HgfsGuestConn*, i8*, i64, i8*, i64*) #0 !dbg !277 {
  %6 = alloca %struct.HgfsGuestConn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8, align 1
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %6, metadata !280, metadata !216), !dbg !281
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !282, metadata !216), !dbg !283
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !284, metadata !216), !dbg !285
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !286, metadata !216), !dbg !287
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !288, metadata !216), !dbg !289
  call void @llvm.dbg.declare(metadata i8* %11, metadata !290, metadata !216), !dbg !291
  store i8 1, i8* %11, align 1, !dbg !291
  %12 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !292
  %13 = icmp eq %struct.HgfsGuestConn* null, %12, !dbg !294
  br i1 %13, label %14, label %15, !dbg !295

; <label>:14:                                     ; preds = %5
  store i8 0, i8* %11, align 1, !dbg !296
  br label %35, !dbg !298

; <label>:15:                                     ; preds = %5
  %16 = load i64*, i64** %10, align 8, !dbg !299
  %17 = load i64, i64* %16, align 8, !dbg !300
  %18 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !301
  %19 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %18, i32 0, i32 5, !dbg !302
  store i64 %17, i64* %19, align 8, !dbg !303
  %20 = load i8*, i8** %9, align 8, !dbg !304
  %21 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !305
  %22 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %21, i32 0, i32 6, !dbg !306
  store i8* %20, i8** %22, align 8, !dbg !307
  %23 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !308
  %24 = load i8*, i8** %7, align 8, !dbg !309
  %25 = load i64, i64* %8, align 8, !dbg !310
  %26 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !311
  %27 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %26, i32 0, i32 6, !dbg !312
  %28 = load i8*, i8** %27, align 8, !dbg !312
  %29 = load i64*, i64** %10, align 8, !dbg !313
  %30 = call signext i8 @HgfsChannelGuestReceiveInternal(%struct.HgfsGuestConn* %23, i8* %24, i64 %25, i8* %28, i64* %29), !dbg !314
  store i8 %30, i8* %11, align 1, !dbg !315
  %31 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !316
  %32 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %31, i32 0, i32 6, !dbg !317
  store i8* null, i8** %32, align 8, !dbg !318
  %33 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %6, align 8, !dbg !319
  %34 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %33, i32 0, i32 5, !dbg !320
  store i64 63488, i64* %34, align 8, !dbg !321
  br label %35, !dbg !319

; <label>:35:                                     ; preds = %15, %14
  %36 = load i8, i8* %11, align 1, !dbg !322
  ret i8 %36, !dbg !323
}

; Function Attrs: nounwind uwtable
define internal i32 @HgfsChannelGuestBdInvalidateInactiveSessions(%struct.HgfsGuestConn*) #0 !dbg !324 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %3, metadata !327, metadata !216), !dbg !328
  %4 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %3, align 8, !dbg !329
  %5 = icmp eq %struct.HgfsGuestConn* null, %4, !dbg !331
  br i1 %5, label %6, label %7, !dbg !332

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !333
  br label %29, !dbg !333

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %3, align 8, !dbg !335
  %9 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %8, i32 0, i32 1, !dbg !337
  %10 = load i32, i32* %9, align 4, !dbg !337
  %11 = icmp eq i32 %10, 0, !dbg !338
  br i1 %11, label %12, label %13, !dbg !339

; <label>:12:                                     ; preds = %7
  store i32 0, i32* %2, align 4, !dbg !340
  br label %29, !dbg !340

; <label>:13:                                     ; preds = %7
  %14 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %3, align 8, !dbg !342
  %15 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %14, i32 0, i32 4, !dbg !344
  %16 = load i8*, i8** %15, align 8, !dbg !344
  %17 = icmp ne i8* %16, null, !dbg !342
  br i1 %17, label %18, label %28, !dbg !345

; <label>:18:                                     ; preds = %13
  %19 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %3, align 8, !dbg !346
  %20 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %19, i32 0, i32 2, !dbg !348
  %21 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %20, align 8, !dbg !348
  %22 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %21, i32 0, i32 5, !dbg !349
  %23 = load i32 (i8*)*, i32 (i8*)** %22, align 8, !dbg !349
  %24 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %3, align 8, !dbg !350
  %25 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %24, i32 0, i32 4, !dbg !351
  %26 = load i8*, i8** %25, align 8, !dbg !351
  %27 = call i32 %23(i8* %26), !dbg !346
  store i32 %27, i32* %2, align 4, !dbg !352
  br label %29, !dbg !352

; <label>:28:                                     ; preds = %13
  store i32 0, i32* %2, align 4, !dbg !353
  br label %29, !dbg !353

; <label>:29:                                     ; preds = %28, %18, %12, %6
  %30 = load i32, i32* %2, align 4, !dbg !354
  ret i32 %30, !dbg !354
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestReceiveInternal(%struct.HgfsGuestConn*, i8*, i64, i8*, i64*) #0 !dbg !355 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.HgfsGuestConn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.HgfsPacket, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %7, metadata !356, metadata !216), !dbg !357
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !358, metadata !216), !dbg !359
  store i64 %2, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !360, metadata !216), !dbg !361
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !362, metadata !216), !dbg !363
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !364, metadata !216), !dbg !365
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket* %12, metadata !366, metadata !216), !dbg !367
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !368
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 1, !dbg !370
  %15 = load i32, i32* %14, align 4, !dbg !370
  %16 = icmp eq i32 %15, 0, !dbg !371
  br i1 %16, label %17, label %19, !dbg !372

; <label>:17:                                     ; preds = %5
  %18 = load i64*, i64** %11, align 8, !dbg !373
  store i64 0, i64* %18, align 8, !dbg !375
  store i8 0, i8* %6, align 1, !dbg !376
  br label %74, !dbg !376

; <label>:19:                                     ; preds = %5
  %20 = load i64*, i64** %11, align 8, !dbg !377
  %21 = load i64, i64* %20, align 8, !dbg !379
  %22 = icmp eq i64 %21, 0, !dbg !380
  br i1 %22, label %23, label %24, !dbg !381

; <label>:23:                                     ; preds = %19
  store i8 1, i8* %6, align 1, !dbg !382
  br label %74, !dbg !382

; <label>:24:                                     ; preds = %19
  %25 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !384
  %26 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %25, i32 0, i32 4, !dbg !386
  %27 = load i8*, i8** %26, align 8, !dbg !386
  %28 = icmp eq i8* %27, null, !dbg !387
  br i1 %28, label %29, label %36, !dbg !388

; <label>:29:                                     ; preds = %24
  %30 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !389
  %31 = call signext i8 @HgfsChannelGuestConnConnect(%struct.HgfsGuestConn* %30), !dbg !392
  %32 = icmp ne i8 %31, 0, !dbg !392
  br i1 %32, label %35, label %33, !dbg !393

; <label>:33:                                     ; preds = %29
  %34 = load i64*, i64** %11, align 8, !dbg !394
  store i64 0, i64* %34, align 8, !dbg !396
  store i8 0, i8* %6, align 1, !dbg !397
  br label %74, !dbg !397

; <label>:35:                                     ; preds = %29
  br label %36, !dbg !398

; <label>:36:                                     ; preds = %35, %24
  %37 = bitcast %struct.HgfsPacket* %12 to i8*, !dbg !399
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 240, i32 8, i1 false), !dbg !399
  %38 = load i8*, i8** %8, align 8, !dbg !400
  %39 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 21, !dbg !401
  %40 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %39, i64 0, i64 0, !dbg !402
  %41 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %40, i32 0, i32 0, !dbg !403
  store i8* %38, i8** %41, align 8, !dbg !404
  %42 = load i64, i64* %9, align 8, !dbg !405
  %43 = trunc i64 %42 to i32, !dbg !405
  %44 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 21, !dbg !406
  %45 = getelementptr inbounds [1 x %struct.HgfsVmxIov], [1 x %struct.HgfsVmxIov]* %44, i64 0, i64 0, !dbg !407
  %46 = getelementptr inbounds %struct.HgfsVmxIov, %struct.HgfsVmxIov* %45, i32 0, i32 2, !dbg !408
  store i32 %43, i32* %46, align 8, !dbg !409
  %47 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 20, !dbg !410
  store i32 1, i32* %47, align 8, !dbg !411
  %48 = load i8*, i8** %8, align 8, !dbg !412
  %49 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 2, !dbg !413
  store i8* %48, i8** %49, align 8, !dbg !414
  %50 = load i64, i64* %9, align 8, !dbg !415
  %51 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 5, !dbg !416
  store i64 %50, i64* %51, align 8, !dbg !417
  %52 = load i64, i64* %9, align 8, !dbg !418
  %53 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 3, !dbg !419
  store i64 %52, i64* %53, align 8, !dbg !420
  %54 = load i8*, i8** %10, align 8, !dbg !421
  %55 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 15, !dbg !422
  store i8* %54, i8** %55, align 8, !dbg !423
  %56 = load i64*, i64** %11, align 8, !dbg !424
  %57 = load i64, i64* %56, align 8, !dbg !425
  %58 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 16, !dbg !426
  store i64 %57, i64* %58, align 8, !dbg !427
  %59 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %12, i32 0, i32 1, !dbg !428
  %60 = load i64, i64* %59, align 8, !dbg !429
  %61 = or i64 %60, 1, !dbg !429
  store i64 %61, i64* %59, align 8, !dbg !429
  %62 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !430
  %63 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %62, i32 0, i32 2, !dbg !431
  %64 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %63, align 8, !dbg !431
  %65 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %64, i32 0, i32 3, !dbg !432
  %66 = load void (%struct.HgfsPacket*, i8*)*, void (%struct.HgfsPacket*, i8*)** %65, align 8, !dbg !432
  %67 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !433
  %68 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %67, i32 0, i32 4, !dbg !434
  %69 = load i8*, i8** %68, align 8, !dbg !434
  call void %66(%struct.HgfsPacket* %12, i8* %69), !dbg !430
  %70 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !435
  %71 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %70, i32 0, i32 5, !dbg !436
  %72 = load i64, i64* %71, align 8, !dbg !436
  %73 = load i64*, i64** %11, align 8, !dbg !437
  store i64 %72, i64* %73, align 8, !dbg !438
  store i8 1, i8* %6, align 1, !dbg !439
  br label %74, !dbg !439

; <label>:74:                                     ; preds = %36, %33, %23, %17
  %75 = load i8, i8* %6, align 1, !dbg !440
  ret i8 %75, !dbg !440
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestConnConnect(%struct.HgfsGuestConn*) #0 !dbg !202 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  %3 = alloca i8, align 1
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !441, metadata !216), !dbg !442
  call void @llvm.dbg.declare(metadata i8* %3, metadata !443, metadata !216), !dbg !444
  %4 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !445
  %5 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %4, i32 0, i32 3, !dbg !446
  %6 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %5, i32 0, i32 0, !dbg !447
  store void ()* null, void ()** %6, align 8, !dbg !448
  %7 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !449
  %8 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %7, i32 0, i32 3, !dbg !450
  %9 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %8, i32 0, i32 1, !dbg !451
  store void ()* null, void ()** %9, align 8, !dbg !452
  %10 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !453
  %11 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %10, i32 0, i32 3, !dbg !454
  %12 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %11, i32 0, i32 3, !dbg !455
  store i8* (i64, i32, i8**)* null, i8* (i64, i32, i8**)** %12, align 8, !dbg !456
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !457
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 3, !dbg !458
  %15 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %14, i32 0, i32 2, !dbg !459
  store i8* (i64, i32, i8**)* null, i8* (i64, i32, i8**)** %15, align 8, !dbg !460
  %16 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !461
  %17 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %16, i32 0, i32 3, !dbg !462
  %18 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %17, i32 0, i32 4, !dbg !463
  store void (i8**)* null, void (i8**)** %18, align 8, !dbg !464
  %19 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !465
  %20 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %19, i32 0, i32 3, !dbg !466
  %21 = getelementptr inbounds %struct.HgfsServerChannelCallbacks, %struct.HgfsServerChannelCallbacks* %20, i32 0, i32 5, !dbg !467
  store i8 (i8*, %struct.HgfsPacket*, i32)* @HgfsChannelGuestBdSend, i8 (i8*, %struct.HgfsPacket*, i32)** %21, align 8, !dbg !468
  %22 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !469
  %23 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %22, i32 0, i32 2, !dbg !470
  %24 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %23, align 8, !dbg !470
  %25 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %24, i32 0, i32 0, !dbg !471
  %26 = load i8 (i8*, %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelData*, i8**)*, i8 (i8*, %struct.HgfsServerChannelCallbacks*, %struct.HgfsServerChannelData*, i8**)** %25, align 8, !dbg !471
  %27 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !472
  %28 = bitcast %struct.HgfsGuestConn* %27 to i8*, !dbg !472
  %29 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !473
  %30 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %29, i32 0, i32 3, !dbg !474
  %31 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !475
  %32 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %31, i32 0, i32 4, !dbg !476
  %33 = call signext i8 %26(i8* %28, %struct.HgfsServerChannelCallbacks* %30, %struct.HgfsServerChannelData* @HgfsChannelGuestConnConnect.HgfsBdCapData, i8** %32), !dbg !469
  store i8 %33, i8* %3, align 1, !dbg !477
  %34 = load i8, i8* %3, align 1, !dbg !478
  %35 = icmp ne i8 %34, 0, !dbg !478
  br i1 %35, label %36, label %38, !dbg !480

; <label>:36:                                     ; preds = %1
  %37 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !481
  call void @HgfsChannelGuestConnGet(%struct.HgfsGuestConn* %37), !dbg !483
  br label %38, !dbg !484

; <label>:38:                                     ; preds = %36, %1
  %39 = load i8, i8* %3, align 1, !dbg !485
  ret i8 %39, !dbg !486
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestBdSend(i8*, %struct.HgfsPacket*, i32) #0 !dbg !487 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.HgfsPacket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.HgfsGuestConn*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !488, metadata !216), !dbg !489
  store %struct.HgfsPacket* %1, %struct.HgfsPacket** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsPacket** %5, metadata !490, metadata !216), !dbg !491
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !492, metadata !216), !dbg !493
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %7, metadata !494, metadata !216), !dbg !495
  %8 = load i8*, i8** %4, align 8, !dbg !496
  %9 = bitcast i8* %8 to %struct.HgfsGuestConn*, !dbg !496
  store %struct.HgfsGuestConn* %9, %struct.HgfsGuestConn** %7, align 8, !dbg !495
  %10 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !497
  %11 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %10, i32 0, i32 17, !dbg !499
  %12 = load i64, i64* %11, align 8, !dbg !499
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !500
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 5, !dbg !501
  %15 = load i64, i64* %14, align 8, !dbg !501
  %16 = icmp ugt i64 %12, %15, !dbg !502
  br i1 %16, label %17, label %23, !dbg !503

; <label>:17:                                     ; preds = %3
  %18 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !504
  %19 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %18, i32 0, i32 5, !dbg !506
  %20 = load i64, i64* %19, align 8, !dbg !506
  %21 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !507
  %22 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %21, i32 0, i32 17, !dbg !508
  store i64 %20, i64* %22, align 8, !dbg !509
  br label %23, !dbg !510

; <label>:23:                                     ; preds = %17, %3
  %24 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !511
  %25 = getelementptr inbounds %struct.HgfsPacket, %struct.HgfsPacket* %24, i32 0, i32 17, !dbg !512
  %26 = load i64, i64* %25, align 8, !dbg !512
  %27 = trunc i64 %26 to i32, !dbg !513
  %28 = zext i32 %27 to i64, !dbg !513
  %29 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !514
  %30 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %29, i32 0, i32 5, !dbg !515
  store i64 %28, i64* %30, align 8, !dbg !516
  %31 = load i32, i32* %6, align 4, !dbg !517
  %32 = and i32 %31, 2, !dbg !519
  %33 = icmp ne i32 %32, 0, !dbg !519
  br i1 %33, label %44, label %34, !dbg !520

; <label>:34:                                     ; preds = %23
  %35 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !521
  %36 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %35, i32 0, i32 2, !dbg !523
  %37 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %36, align 8, !dbg !523
  %38 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %37, i32 0, i32 6, !dbg !524
  %39 = load void (%struct.HgfsPacket*, i8*)*, void (%struct.HgfsPacket*, i8*)** %38, align 8, !dbg !524
  %40 = load %struct.HgfsPacket*, %struct.HgfsPacket** %5, align 8, !dbg !525
  %41 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %7, align 8, !dbg !526
  %42 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %41, i32 0, i32 4, !dbg !527
  %43 = load i8*, i8** %42, align 8, !dbg !527
  call void %39(%struct.HgfsPacket* %40, i8* %43), !dbg !521
  br label %44, !dbg !528

; <label>:44:                                     ; preds = %34, %23
  ret i8 1, !dbg !529
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnGet(%struct.HgfsGuestConn*) #0 !dbg !530 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !531, metadata !216), !dbg !532
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !533
  %4 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %3, i32 0, i32 0, !dbg !534
  call void @Atomic_Inc32(%struct.Atomic_uint32* %4), !dbg !535
  ret void, !dbg !536
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Atomic_Inc32(%struct.Atomic_uint32*) #3 !dbg !537 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !541, metadata !216), !dbg !542
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !543
  %4 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %3, i32 0, i32 0, !dbg !544
  call void asm sideeffect "lock; incl $0", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %4, i32* %4) #6, !dbg !545, !srcloc !546
  ret void, !dbg !547
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestConnInit(%struct.HgfsGuestConn**, %struct.HgfsServerSessionCallbacks*) #0 !dbg !548 {
  %3 = alloca %struct.HgfsGuestConn**, align 8
  %4 = alloca %struct.HgfsServerSessionCallbacks*, align 8
  %5 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn** %0, %struct.HgfsGuestConn*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn*** %3, metadata !551, metadata !216), !dbg !552
  store %struct.HgfsServerSessionCallbacks* %1, %struct.HgfsServerSessionCallbacks** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsServerSessionCallbacks** %4, metadata !553, metadata !216), !dbg !554
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %5, metadata !555, metadata !216), !dbg !556
  store %struct.HgfsGuestConn* null, %struct.HgfsGuestConn** %5, align 8, !dbg !556
  %6 = call i8* @UtilSafeCalloc0(i64 1, i64 63576), !dbg !557
  %7 = bitcast i8* %6 to %struct.HgfsGuestConn*, !dbg !557
  store %struct.HgfsGuestConn* %7, %struct.HgfsGuestConn** %5, align 8, !dbg !558
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %5, align 8, !dbg !559
  call void @HgfsChannelGuestConnGet(%struct.HgfsGuestConn* %8), !dbg !560
  %9 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %4, align 8, !dbg !561
  %10 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %5, align 8, !dbg !562
  %11 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %10, i32 0, i32 2, !dbg !563
  store %struct.HgfsServerSessionCallbacks* %9, %struct.HgfsServerSessionCallbacks** %11, align 8, !dbg !564
  %12 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %5, align 8, !dbg !565
  %13 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %12, i32 0, i32 1, !dbg !566
  store i32 1, i32* %13, align 4, !dbg !567
  %14 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %5, align 8, !dbg !568
  %15 = load %struct.HgfsGuestConn**, %struct.HgfsGuestConn*** %3, align 8, !dbg !569
  store %struct.HgfsGuestConn* %14, %struct.HgfsGuestConn** %15, align 8, !dbg !570
  ret i8 1, !dbg !571
}

declare void @Debug(i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnCreate(%struct.HgfsGuestConn*, i8*, i8*) #0 !dbg !572 {
  %4 = alloca %struct.HgfsGuestConn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %4, metadata !575, metadata !216), !dbg !576
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !577, metadata !216), !dbg !578
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !579, metadata !216), !dbg !580
  %7 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !581
  %8 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %7, i32 0, i32 1, !dbg !583
  %9 = load i32, i32* %8, align 4, !dbg !583
  %10 = icmp eq i32 %9, 1, !dbg !584
  br i1 %10, label %11, label %15, !dbg !585

; <label>:11:                                     ; preds = %3
  %12 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !586
  %13 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %12, i32 0, i32 1, !dbg !588
  store i32 2, i32* %13, align 4, !dbg !589
  %14 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !590
  call void @HgfsChannelGuestConnGet(%struct.HgfsGuestConn* %14), !dbg !591
  br label %15, !dbg !592

; <label>:15:                                     ; preds = %11, %3
  ret void, !dbg !593
}

declare i8* @UtilSafeCalloc0(i64, i64) #4

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnCloseInternal(%struct.HgfsGuestConn*, i8*, i8*) #0 !dbg !594 {
  %4 = alloca %struct.HgfsGuestConn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %4, metadata !595, metadata !216), !dbg !596
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !597, metadata !216), !dbg !598
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !599, metadata !216), !dbg !600
  %7 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !601
  %8 = load i8*, i8** %5, align 8, !dbg !603
  %9 = load i8*, i8** %6, align 8, !dbg !604
  %10 = call signext i8 @HgfsChannelGuestConnClose(%struct.HgfsGuestConn* %7, i8* %8, i8* %9), !dbg !605
  %11 = icmp ne i8 %10, 0, !dbg !605
  br i1 %11, label %12, label %14, !dbg !606

; <label>:12:                                     ; preds = %3
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !607
  call void @HgfsChannelGuestConnDisconnect(%struct.HgfsGuestConn* %13), !dbg !609
  br label %14, !dbg !610

; <label>:14:                                     ; preds = %12, %3
  ret void, !dbg !611
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnExit(%struct.HgfsGuestConn*) #0 !dbg !612 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !613, metadata !216), !dbg !614
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !615
  %4 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %3, i32 0, i32 1, !dbg !616
  store i32 0, i32* %4, align 4, !dbg !617
  %5 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !618
  call void @HgfsChannelGuestConnPut(%struct.HgfsGuestConn* %5), !dbg !619
  ret void, !dbg !620
}

; Function Attrs: nounwind uwtable
define internal signext i8 @HgfsChannelGuestConnClose(%struct.HgfsGuestConn*, i8*, i8*) #0 !dbg !621 {
  %4 = alloca %struct.HgfsGuestConn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %4, metadata !624, metadata !216), !dbg !625
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !626, metadata !216), !dbg !627
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !628, metadata !216), !dbg !629
  call void @llvm.dbg.declare(metadata i8* %7, metadata !630, metadata !216), !dbg !631
  store i8 0, i8* %7, align 1, !dbg !631
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !632
  %9 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %8, i32 0, i32 1, !dbg !634
  %10 = load i32, i32* %9, align 4, !dbg !634
  %11 = icmp eq i32 %10, 2, !dbg !635
  br i1 %11, label %12, label %16, !dbg !636

; <label>:12:                                     ; preds = %3
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !637
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 1, !dbg !639
  store i32 1, i32* %14, align 4, !dbg !640
  %15 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %4, align 8, !dbg !641
  call void @HgfsChannelGuestConnPut(%struct.HgfsGuestConn* %15), !dbg !642
  store i8 1, i8* %7, align 1, !dbg !643
  br label %16, !dbg !644

; <label>:16:                                     ; preds = %12, %3
  %17 = load i8, i8* %7, align 1, !dbg !645
  ret i8 %17, !dbg !646
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnDisconnect(%struct.HgfsGuestConn*) #0 !dbg !647 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !648, metadata !216), !dbg !649
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !650
  %4 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %3, i32 0, i32 4, !dbg !652
  %5 = load i8*, i8** %4, align 8, !dbg !652
  %6 = icmp ne i8* %5, null, !dbg !653
  br i1 %6, label %7, label %17, !dbg !654

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !655
  %9 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %8, i32 0, i32 2, !dbg !657
  %10 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %9, align 8, !dbg !657
  %11 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %10, i32 0, i32 1, !dbg !658
  %12 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !658
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !659
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 4, !dbg !660
  %15 = load i8*, i8** %14, align 8, !dbg !660
  call void %12(i8* %15), !dbg !655
  %16 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !661
  call void @HgfsChannelGuestConnPut(%struct.HgfsGuestConn* %16), !dbg !662
  br label %17, !dbg !663

; <label>:17:                                     ; preds = %7, %1
  ret void, !dbg !664
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnPut(%struct.HgfsGuestConn*) #0 !dbg !665 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !666, metadata !216), !dbg !667
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !668
  %4 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %3, i32 0, i32 0, !dbg !670
  %5 = call i32 @Atomic_ReadDec32(%struct.Atomic_uint32* %4), !dbg !671
  %6 = icmp eq i32 %5, 1, !dbg !672
  br i1 %6, label %7, label %9, !dbg !673

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !674
  call void @HgfsChannelGuestConnDestroy(%struct.HgfsGuestConn* %8), !dbg !676
  br label %9, !dbg !677

; <label>:9:                                      ; preds = %7, %1
  ret void, !dbg !678
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadDec32(%struct.Atomic_uint32*) #3 !dbg !679 {
  %2 = alloca %struct.Atomic_uint32*, align 8
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %2, metadata !682, metadata !216), !dbg !683
  %3 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %2, align 8, !dbg !684
  %4 = call i32 @Atomic_ReadAdd32(%struct.Atomic_uint32* %3, i32 -1), !dbg !685
  ret i32 %4, !dbg !686
}

; Function Attrs: nounwind uwtable
define internal void @HgfsChannelGuestConnDestroy(%struct.HgfsGuestConn*) #0 !dbg !687 {
  %2 = alloca %struct.HgfsGuestConn*, align 8
  store %struct.HgfsGuestConn* %0, %struct.HgfsGuestConn** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsGuestConn** %2, metadata !688, metadata !216), !dbg !689
  %3 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !690
  %4 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %3, i32 0, i32 4, !dbg !692
  %5 = load i8*, i8** %4, align 8, !dbg !692
  %6 = icmp ne i8* null, %5, !dbg !693
  br i1 %6, label %7, label %18, !dbg !694

; <label>:7:                                      ; preds = %1
  %8 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !695
  %9 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %8, i32 0, i32 2, !dbg !697
  %10 = load %struct.HgfsServerSessionCallbacks*, %struct.HgfsServerSessionCallbacks** %9, align 8, !dbg !697
  %11 = getelementptr inbounds %struct.HgfsServerSessionCallbacks, %struct.HgfsServerSessionCallbacks* %10, i32 0, i32 2, !dbg !698
  %12 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !698
  %13 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !699
  %14 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %13, i32 0, i32 4, !dbg !700
  %15 = load i8*, i8** %14, align 8, !dbg !700
  call void %12(i8* %15), !dbg !695
  %16 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !701
  %17 = getelementptr inbounds %struct.HgfsGuestConn, %struct.HgfsGuestConn* %16, i32 0, i32 4, !dbg !702
  store i8* null, i8** %17, align 8, !dbg !703
  br label %18, !dbg !704

; <label>:18:                                     ; preds = %7, %1
  %19 = load %struct.HgfsGuestConn*, %struct.HgfsGuestConn** %2, align 8, !dbg !705
  %20 = bitcast %struct.HgfsGuestConn* %19 to i8*, !dbg !705
  call void @free(i8* %20) #6, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Atomic_ReadAdd32(%struct.Atomic_uint32*, i32) #3 !dbg !708 {
  %3 = alloca %struct.Atomic_uint32*, align 8
  %4 = alloca i32, align 4
  store %struct.Atomic_uint32* %0, %struct.Atomic_uint32** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.Atomic_uint32** %3, metadata !711, metadata !216), !dbg !712
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !713, metadata !216), !dbg !714
  %5 = load %struct.Atomic_uint32*, %struct.Atomic_uint32** %3, align 8, !dbg !715
  %6 = getelementptr inbounds %struct.Atomic_uint32, %struct.Atomic_uint32* %5, i32 0, i32 0, !dbg !716
  %7 = load i32, i32* %4, align 4, !dbg !717
  %8 = call i32 asm sideeffect "lock; xaddl $0, $1", "=r,=*m,0,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %6, i32 %7, i32* %6) #6, !dbg !718, !srcloc !719
  store i32 %8, i32* %4, align 4, !dbg !718
  %9 = load i32, i32* %4, align 4, !dbg !720
  ret i32 %9, !dbg !721
}

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!208, !209}
!llvm.ident = !{!210}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, globals: !26)
!1 = !DIFile(filename: "hgfsChannelGuestBd.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!2 = !{!3, !9, !13}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "BUF_READABLE", value: 0)
!7 = !DIEnumerator(name: "BUF_WRITEABLE", value: 1)
!8 = !DIEnumerator(name: "BUF_READWRITEABLE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 164, size: 32, align: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "HGFS_QUIESCE_FREEZE", value: 0)
!12 = !DIEnumerator(name: "HGFS_QUIESCE_THAW", value: 1)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 35, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "hgfsChannelGuestBd.c", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "HGFS_GST_CONN_UNINITIALIZED", value: 0)
!17 = !DIEnumerator(name: "HGFS_GST_CONN_NOTCONNECTED", value: 1)
!18 = !DIEnumerator(name: "HGFS_GST_CONN_CONNECTED", value: 2)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !22, line: 173, baseType: !23)
!22 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 51, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!25 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!26 = !{!27, !201}
!27 = distinct !DIGlobalVariable(name: "gGuestBackdoorOps", scope: !0, file: !14, line: 71, type: !28, isLocal: false, isDefinition: true, variable: %struct.HgfsGuestChannelCBTable* @gGuestBackdoorOps)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsGuestChannelCBTable", file: !30, line: 55, baseType: !31)
!30 = !DIFile(filename: "hgfsChannelGuestInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsGuestChannelCBTable", file: !30, line: 50, size: 256, align: 64, elements: !32)
!32 = !{!33, !185, !189, !197}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !31, file: !30, line: 51, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !39, !20, !20, !161}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !22, line: 230, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerSessionCallbacks", file: !4, line: 201, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerSessionCallbacks", file: !4, line: 192, size: 512, align: 64, elements: !43)
!43 = !{!44, !130, !134, !135, !139, !151, !155, !156}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !42, file: !4, line: 193, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!37, !20, !48, !123, !67}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerChannelCallbacks", file: !4, line: 190, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerChannelCallbacks", file: !4, line: 183, size: 384, align: 64, elements: !51)
!51 = !{!52, !57, !59, !68, !69, !74}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "registerThread", scope: !50, file: !4, line: 184, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelRegisterThreadFunc", file: !4, line: 180, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "unregisterThread", scope: !50, file: !4, line: 185, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnregisterThreadFunc", file: !4, line: 181, baseType: !54)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "getReadVa", scope: !50, file: !4, line: 186, baseType: !60, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelMapVirtAddrFunc", file: !4, line: 178, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!20, !64, !21, !67}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !22, line: 171, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 55, baseType: !66)
!66 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "getWriteVa", scope: !50, file: !4, line: 187, baseType: !60, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "putVa", scope: !50, file: !4, line: 188, baseType: !70, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelUnmapVirtAddrFunc", file: !4, line: 179, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !67}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !50, file: !4, line: 189, baseType: !75, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelSendFunc", file: !4, line: 175, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!37, !20, !79, !122}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsPacket", file: !4, line: 78, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsPacket", file: !4, line: 45, size: 1920, align: 64, elements: !82)
!82 = !{!83, !84, !86, !87, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !117, !118}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !81, file: !4, line: 46, baseType: !64, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !81, file: !4, line: 48, baseType: !85, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsStateFlags", file: !4, line: 42, baseType: !64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacket", scope: !81, file: !4, line: 51, baseType: !20, size: 64, align: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketSize", scope: !81, file: !4, line: 52, baseType: !88, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 216, baseType: !66)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketMappedIov", scope: !81, file: !4, line: 53, baseType: !21, size: 32, align: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketDataSize", scope: !81, file: !4, line: 54, baseType: !88, size: 64, align: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "metaPacketIsAllocated", scope: !81, file: !4, line: 55, baseType: !37, size: 8, align: 8, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "metaMappingType", scope: !81, file: !4, line: 56, baseType: !94, size: 32, align: 32, offset: 416)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "MappingType", file: !4, line: 40, baseType: !3)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacket", scope: !81, file: !4, line: 58, baseType: !20, size: 64, align: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketSize", scope: !81, file: !4, line: 59, baseType: !88, size: 64, align: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketMappedIov", scope: !81, file: !4, line: 60, baseType: !21, size: 32, align: 32, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketDataSize", scope: !81, file: !4, line: 61, baseType: !88, size: 64, align: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIovIndex", scope: !81, file: !4, line: 62, baseType: !21, size: 32, align: 32, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dataPacketIsAllocated", scope: !81, file: !4, line: 63, baseType: !37, size: 8, align: 8, offset: 736)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "dataMappingType", scope: !81, file: !4, line: 65, baseType: !94, size: 32, align: 32, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacket", scope: !81, file: !4, line: 67, baseType: !20, size: 64, align: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketSize", scope: !81, file: !4, line: 68, baseType: !88, size: 64, align: 64, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketDataSize", scope: !81, file: !4, line: 69, baseType: !88, size: 64, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "replyPacketIsAllocated", scope: !81, file: !4, line: 70, baseType: !37, size: 8, align: 8, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "channelIov", scope: !81, file: !4, line: 73, baseType: !107, size: 512, align: 64, offset: 1088)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, align: 64, elements: !115)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsVmxIov", file: !4, line: 34, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsVmxIov", file: !4, line: 29, size: 256, align: 64, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !109, file: !4, line: 30, baseType: !20, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !109, file: !4, line: 31, baseType: !64, size: 64, align: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !109, file: !4, line: 32, baseType: !21, size: 32, align: 32, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !109, file: !4, line: 33, baseType: !20, size: 64, align: 64, offset: 192)
!115 = !{!116}
!116 = !DISubrange(count: 2)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "iovCount", scope: !81, file: !4, line: 75, baseType: !21, size: 32, align: 32, offset: 1600)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !81, file: !4, line: 76, baseType: !119, size: 256, align: 64, offset: 1664)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, align: 64, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSendFlags", file: !4, line: 98, baseType: !21)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsServerChannelData", file: !4, line: 111, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsServerChannelData", file: !4, line: 108, size: 64, align: 32, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !4, line: 109, baseType: !128, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsChannelFlags", file: !4, line: 104, baseType: !21)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "maxPacketSize", scope: !125, file: !4, line: 110, baseType: !21, size: 32, align: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !42, file: !4, line: 194, baseType: !131, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !20}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !42, file: !4, line: 195, baseType: !131, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "receive", scope: !42, file: !4, line: 196, baseType: !136, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !79, !20}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateObjects", scope: !42, file: !4, line: 197, baseType: !140, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !20, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !145, line: 94, baseType: !146)
!145 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !145, line: 91, size: 128, align: 64, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !145, line: 92, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !145, line: 93, baseType: !149, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateInactiveSessions", scope: !42, file: !4, line: 198, baseType: !152, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!21, !20}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sendComplete", scope: !42, file: !4, line: 199, baseType: !136, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce", scope: !42, file: !4, line: 200, baseType: !157, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !20, !160}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsQuiesceOp", file: !4, line: 167, baseType: !9)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsGuestConn", file: !14, line: 43, size: 508608, align: 64, elements: !164)
!164 = !{!165, !172, !174, !175, !176, !177, !178, !181}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !163, file: !14, line: 44, baseType: !166, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !167, line: 135, baseType: !168)
!167 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line436")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !167, line: 133, size: 32, align: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !168, file: !167, line: 134, baseType: !171, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !14, line: 45, baseType: !173, size: 32, align: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsGuestConnState", file: !14, line: 39, baseType: !13)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "serverCbTable", scope: !163, file: !14, line: 46, baseType: !39, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "channelCbTable", scope: !163, file: !14, line: 47, baseType: !49, size: 384, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "serverSession", scope: !163, file: !14, line: 48, baseType: !20, size: 64, align: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "packetOutLen", scope: !163, file: !14, line: 49, baseType: !88, size: 64, align: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "clientPacketOut", scope: !163, file: !14, line: 50, baseType: !179, size: 64, align: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "packetOut", scope: !163, file: !14, line: 51, baseType: !182, size: 507904, align: 8, offset: 704)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 507904, align: 8, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 63488)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !31, file: !30, line: 52, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !162}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "receive", scope: !31, file: !30, line: 53, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!37, !162, !193, !88, !195, !196}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "invalidateInactiveSessions", scope: !31, file: !30, line: 54, baseType: !198, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!21, !162}
!201 = distinct !DIGlobalVariable(name: "HgfsBdCapData", scope: !202, file: !14, line: 345, type: !124, isLocal: true, isDefinition: true, variable: %struct.HgfsServerChannelData* @HgfsChannelGuestConnConnect.HgfsBdCapData)
!202 = distinct !DISubprogram(name: "HgfsChannelGuestConnConnect", scope: !14, file: !14, line: 342, type: !203, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!203 = !DISubroutineType(types: !204)
!204 = !{!37, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsGuestConn", file: !14, line: 52, baseType: !163)
!207 = !{}
!208 = !{i32 2, !"Dwarf Version", i32 4}
!209 = !{i32 2, !"Debug Info Version", i32 3}
!210 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!211 = distinct !DISubprogram(name: "HgfsChannelGuestBdInit", scope: !14, file: !14, line: 679, type: !212, isLocal: true, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!212 = !DISubroutineType(types: !213)
!213 = !{!37, !39, !20, !20, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!215 = !DILocalVariable(name: "serverCBTable", arg: 1, scope: !211, file: !14, line: 679, type: !39)
!216 = !DIExpression()
!217 = !DILocation(line: 679, column: 58, scope: !211)
!218 = !DILocalVariable(name: "rpc", arg: 2, scope: !211, file: !14, line: 680, type: !20)
!219 = !DILocation(line: 680, column: 30, scope: !211)
!220 = !DILocalVariable(name: "rpcCallback", arg: 3, scope: !211, file: !14, line: 681, type: !20)
!221 = !DILocation(line: 681, column: 30, scope: !211)
!222 = !DILocalVariable(name: "connection", arg: 4, scope: !211, file: !14, line: 682, type: !214)
!223 = !DILocation(line: 682, column: 40, scope: !211)
!224 = !DILocalVariable(name: "connData", scope: !211, file: !14, line: 684, type: !205)
!225 = !DILocation(line: 684, column: 19, scope: !211)
!226 = !DILocalVariable(name: "result", scope: !211, file: !14, line: 685, type: !37)
!227 = !DILocation(line: 685, column: 9, scope: !211)
!228 = !DILocation(line: 691, column: 38, scope: !211)
!229 = !DILocation(line: 690, column: 13, scope: !211)
!230 = !DILocation(line: 690, column: 11, scope: !211)
!231 = !DILocation(line: 692, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !211, file: !14, line: 692, column: 8)
!233 = !DILocation(line: 692, column: 8, scope: !211)
!234 = !DILocation(line: 693, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !14, line: 692, column: 17)
!236 = !DILocation(line: 694, column: 7, scope: !235)
!237 = !DILocation(line: 700, column: 31, scope: !211)
!238 = !DILocation(line: 701, column: 31, scope: !211)
!239 = !DILocation(line: 702, column: 31, scope: !211)
!240 = !DILocation(line: 700, column: 4, scope: !211)
!241 = !DILocation(line: 705, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !211, file: !14, line: 705, column: 8)
!243 = !DILocation(line: 705, column: 8, scope: !211)
!244 = !DILocation(line: 706, column: 18, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !14, line: 706, column: 10)
!246 = distinct !DILexicalBlock(scope: !242, file: !14, line: 705, column: 17)
!247 = !DILocation(line: 706, column: 15, scope: !245)
!248 = !DILocation(line: 706, column: 10, scope: !246)
!249 = !DILocation(line: 707, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !14, line: 706, column: 28)
!251 = !DILocation(line: 707, column: 10, scope: !250)
!252 = !DILocation(line: 708, column: 19, scope: !250)
!253 = !DILocation(line: 709, column: 7, scope: !250)
!254 = !DILocation(line: 710, column: 4, scope: !246)
!255 = !DILocation(line: 711, column: 18, scope: !211)
!256 = !DILocation(line: 711, column: 5, scope: !211)
!257 = !DILocation(line: 711, column: 16, scope: !211)
!258 = !DILocation(line: 712, column: 4, scope: !211)
!259 = !DILocation(line: 713, column: 11, scope: !211)
!260 = !DILocation(line: 713, column: 4, scope: !211)
!261 = distinct !DISubprogram(name: "HgfsChannelGuestBdExit", scope: !14, file: !14, line: 734, type: !262, isLocal: true, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !205}
!264 = !DILocalVariable(name: "connData", arg: 1, scope: !261, file: !14, line: 734, type: !205)
!265 = !DILocation(line: 734, column: 39, scope: !261)
!266 = !DILocation(line: 738, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !14, line: 738, column: 7)
!268 = !DILocation(line: 738, column: 12, scope: !267)
!269 = !DILocation(line: 738, column: 7, scope: !261)
!270 = !DILocation(line: 740, column: 41, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !14, line: 738, column: 25)
!272 = !DILocation(line: 740, column: 7, scope: !271)
!273 = !DILocation(line: 741, column: 32, scope: !271)
!274 = !DILocation(line: 741, column: 7, scope: !271)
!275 = !DILocation(line: 742, column: 4, scope: !271)
!276 = !DILocation(line: 743, column: 1, scope: !261)
!277 = distinct !DISubprogram(name: "HgfsChannelGuestBdReceive", scope: !14, file: !14, line: 543, type: !278, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!278 = !DISubroutineType(types: !279)
!279 = !{!37, !205, !193, !88, !195, !196}
!280 = !DILocalVariable(name: "connData", arg: 1, scope: !277, file: !14, line: 543, type: !205)
!281 = !DILocation(line: 543, column: 42, scope: !277)
!282 = !DILocalVariable(name: "packetIn", arg: 2, scope: !277, file: !14, line: 544, type: !193)
!283 = !DILocation(line: 544, column: 39, scope: !277)
!284 = !DILocalVariable(name: "packetInSize", arg: 3, scope: !277, file: !14, line: 545, type: !88)
!285 = !DILocation(line: 545, column: 34, scope: !277)
!286 = !DILocalVariable(name: "packetOut", arg: 4, scope: !277, file: !14, line: 546, type: !195)
!287 = !DILocation(line: 546, column: 33, scope: !277)
!288 = !DILocalVariable(name: "packetOutSize", arg: 5, scope: !277, file: !14, line: 547, type: !196)
!289 = !DILocation(line: 547, column: 35, scope: !277)
!290 = !DILocalVariable(name: "result", scope: !277, file: !14, line: 549, type: !37)
!291 = !DILocation(line: 549, column: 9, scope: !277)
!292 = !DILocation(line: 556, column: 15, scope: !293)
!293 = distinct !DILexicalBlock(scope: !277, file: !14, line: 556, column: 7)
!294 = !DILocation(line: 556, column: 12, scope: !293)
!295 = !DILocation(line: 556, column: 7, scope: !277)
!296 = !DILocation(line: 557, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !14, line: 556, column: 25)
!298 = !DILocation(line: 558, column: 7, scope: !297)
!299 = !DILocation(line: 561, column: 30, scope: !277)
!300 = !DILocation(line: 561, column: 29, scope: !277)
!301 = !DILocation(line: 561, column: 4, scope: !277)
!302 = !DILocation(line: 561, column: 14, scope: !277)
!303 = !DILocation(line: 561, column: 27, scope: !277)
!304 = !DILocation(line: 562, column: 32, scope: !277)
!305 = !DILocation(line: 562, column: 4, scope: !277)
!306 = !DILocation(line: 562, column: 14, scope: !277)
!307 = !DILocation(line: 562, column: 30, scope: !277)
!308 = !DILocation(line: 564, column: 45, scope: !277)
!309 = !DILocation(line: 565, column: 45, scope: !277)
!310 = !DILocation(line: 566, column: 45, scope: !277)
!311 = !DILocation(line: 567, column: 45, scope: !277)
!312 = !DILocation(line: 567, column: 55, scope: !277)
!313 = !DILocation(line: 568, column: 45, scope: !277)
!314 = !DILocation(line: 564, column: 13, scope: !277)
!315 = !DILocation(line: 564, column: 11, scope: !277)
!316 = !DILocation(line: 570, column: 4, scope: !277)
!317 = !DILocation(line: 570, column: 14, scope: !277)
!318 = !DILocation(line: 570, column: 30, scope: !277)
!319 = !DILocation(line: 571, column: 4, scope: !277)
!320 = !DILocation(line: 571, column: 14, scope: !277)
!321 = !DILocation(line: 571, column: 27, scope: !277)
!322 = !DILocation(line: 574, column: 11, scope: !277)
!323 = !DILocation(line: 574, column: 4, scope: !277)
!324 = distinct !DISubprogram(name: "HgfsChannelGuestBdInvalidateInactiveSessions", scope: !14, file: !14, line: 595, type: !325, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!325 = !DISubroutineType(types: !326)
!326 = !{!21, !205}
!327 = !DILocalVariable(name: "connData", arg: 1, scope: !324, file: !14, line: 595, type: !205)
!328 = !DILocation(line: 595, column: 61, scope: !324)
!329 = !DILocation(line: 599, column: 15, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !14, line: 599, column: 7)
!331 = !DILocation(line: 599, column: 12, scope: !330)
!332 = !DILocation(line: 599, column: 7, scope: !324)
!333 = !DILocation(line: 600, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !14, line: 599, column: 25)
!335 = !DILocation(line: 603, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !324, file: !14, line: 603, column: 8)
!337 = !DILocation(line: 603, column: 18, scope: !336)
!338 = !DILocation(line: 603, column: 24, scope: !336)
!339 = !DILocation(line: 603, column: 8, scope: !324)
!340 = !DILocation(line: 605, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !14, line: 603, column: 56)
!342 = !DILocation(line: 609, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !324, file: !14, line: 609, column: 8)
!344 = !DILocation(line: 609, column: 18, scope: !343)
!345 = !DILocation(line: 609, column: 8, scope: !324)
!346 = !DILocation(line: 610, column: 14, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !14, line: 609, column: 33)
!348 = !DILocation(line: 610, column: 24, scope: !347)
!349 = !DILocation(line: 610, column: 39, scope: !347)
!350 = !DILocation(line: 610, column: 66, scope: !347)
!351 = !DILocation(line: 610, column: 76, scope: !347)
!352 = !DILocation(line: 610, column: 7, scope: !347)
!353 = !DILocation(line: 613, column: 4, scope: !324)
!354 = !DILocation(line: 614, column: 1, scope: !324)
!355 = distinct !DISubprogram(name: "HgfsChannelGuestReceiveInternal", scope: !14, file: !14, line: 447, type: !278, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!356 = !DILocalVariable(name: "connData", arg: 1, scope: !355, file: !14, line: 447, type: !205)
!357 = !DILocation(line: 447, column: 48, scope: !355)
!358 = !DILocalVariable(name: "packetIn", arg: 2, scope: !355, file: !14, line: 448, type: !193)
!359 = !DILocation(line: 448, column: 45, scope: !355)
!360 = !DILocalVariable(name: "packetInSize", arg: 3, scope: !355, file: !14, line: 449, type: !88)
!361 = !DILocation(line: 449, column: 40, scope: !355)
!362 = !DILocalVariable(name: "packetOut", arg: 4, scope: !355, file: !14, line: 450, type: !195)
!363 = !DILocation(line: 450, column: 39, scope: !355)
!364 = !DILocalVariable(name: "packetOutSize", arg: 5, scope: !355, file: !14, line: 451, type: !196)
!365 = !DILocation(line: 451, column: 41, scope: !355)
!366 = !DILocalVariable(name: "packet", scope: !355, file: !14, line: 453, type: !80)
!367 = !DILocation(line: 453, column: 15, scope: !355)
!368 = !DILocation(line: 459, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !355, file: !14, line: 459, column: 8)
!370 = !DILocation(line: 459, column: 18, scope: !369)
!371 = !DILocation(line: 459, column: 24, scope: !369)
!372 = !DILocation(line: 459, column: 8, scope: !355)
!373 = !DILocation(line: 461, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !14, line: 459, column: 56)
!375 = !DILocation(line: 461, column: 22, scope: !374)
!376 = !DILocation(line: 462, column: 7, scope: !374)
!377 = !DILocation(line: 466, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !355, file: !14, line: 466, column: 8)
!379 = !DILocation(line: 466, column: 8, scope: !378)
!380 = !DILocation(line: 466, column: 23, scope: !378)
!381 = !DILocation(line: 466, column: 8, scope: !355)
!382 = !DILocation(line: 467, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !14, line: 466, column: 29)
!384 = !DILocation(line: 474, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !355, file: !14, line: 474, column: 8)
!386 = !DILocation(line: 474, column: 18, scope: !385)
!387 = !DILocation(line: 474, column: 32, scope: !385)
!388 = !DILocation(line: 474, column: 8, scope: !355)
!389 = !DILocation(line: 476, column: 40, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !14, line: 476, column: 11)
!391 = distinct !DILexicalBlock(scope: !385, file: !14, line: 474, column: 40)
!392 = !DILocation(line: 476, column: 12, scope: !390)
!393 = !DILocation(line: 476, column: 11, scope: !391)
!394 = !DILocation(line: 477, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !14, line: 476, column: 51)
!396 = !DILocation(line: 477, column: 25, scope: !395)
!397 = !DILocation(line: 478, column: 10, scope: !395)
!398 = !DILocation(line: 480, column: 4, scope: !391)
!399 = !DILocation(line: 482, column: 4, scope: !355)
!400 = !DILocation(line: 484, column: 31, scope: !355)
!401 = !DILocation(line: 484, column: 11, scope: !355)
!402 = !DILocation(line: 484, column: 4, scope: !355)
!403 = !DILocation(line: 484, column: 18, scope: !355)
!404 = !DILocation(line: 484, column: 21, scope: !355)
!405 = !DILocation(line: 485, column: 24, scope: !355)
!406 = !DILocation(line: 485, column: 11, scope: !355)
!407 = !DILocation(line: 485, column: 4, scope: !355)
!408 = !DILocation(line: 485, column: 18, scope: !355)
!409 = !DILocation(line: 485, column: 22, scope: !355)
!410 = !DILocation(line: 486, column: 11, scope: !355)
!411 = !DILocation(line: 486, column: 20, scope: !355)
!412 = !DILocation(line: 487, column: 32, scope: !355)
!413 = !DILocation(line: 487, column: 11, scope: !355)
!414 = !DILocation(line: 487, column: 22, scope: !355)
!415 = !DILocation(line: 488, column: 32, scope: !355)
!416 = !DILocation(line: 488, column: 11, scope: !355)
!417 = !DILocation(line: 488, column: 30, scope: !355)
!418 = !DILocation(line: 489, column: 28, scope: !355)
!419 = !DILocation(line: 489, column: 11, scope: !355)
!420 = !DILocation(line: 489, column: 26, scope: !355)
!421 = !DILocation(line: 490, column: 25, scope: !355)
!422 = !DILocation(line: 490, column: 11, scope: !355)
!423 = !DILocation(line: 490, column: 23, scope: !355)
!424 = !DILocation(line: 491, column: 30, scope: !355)
!425 = !DILocation(line: 491, column: 29, scope: !355)
!426 = !DILocation(line: 491, column: 11, scope: !355)
!427 = !DILocation(line: 491, column: 27, scope: !355)
!428 = !DILocation(line: 492, column: 11, scope: !355)
!429 = !DILocation(line: 492, column: 17, scope: !355)
!430 = !DILocation(line: 495, column: 4, scope: !355)
!431 = !DILocation(line: 495, column: 14, scope: !355)
!432 = !DILocation(line: 495, column: 29, scope: !355)
!433 = !DILocation(line: 495, column: 46, scope: !355)
!434 = !DILocation(line: 495, column: 56, scope: !355)
!435 = !DILocation(line: 497, column: 21, scope: !355)
!436 = !DILocation(line: 497, column: 31, scope: !355)
!437 = !DILocation(line: 497, column: 5, scope: !355)
!438 = !DILocation(line: 497, column: 19, scope: !355)
!439 = !DILocation(line: 499, column: 4, scope: !355)
!440 = !DILocation(line: 500, column: 1, scope: !355)
!441 = !DILocalVariable(name: "connData", arg: 1, scope: !202, file: !14, line: 342, type: !205)
!442 = !DILocation(line: 342, column: 44, scope: !202)
!443 = !DILocalVariable(name: "result", scope: !202, file: !14, line: 344, type: !37)
!444 = !DILocation(line: 344, column: 9, scope: !202)
!445 = !DILocation(line: 350, column: 4, scope: !202)
!446 = !DILocation(line: 350, column: 14, scope: !202)
!447 = !DILocation(line: 350, column: 29, scope: !202)
!448 = !DILocation(line: 350, column: 44, scope: !202)
!449 = !DILocation(line: 351, column: 4, scope: !202)
!450 = !DILocation(line: 351, column: 14, scope: !202)
!451 = !DILocation(line: 351, column: 29, scope: !202)
!452 = !DILocation(line: 351, column: 46, scope: !202)
!453 = !DILocation(line: 352, column: 4, scope: !202)
!454 = !DILocation(line: 352, column: 14, scope: !202)
!455 = !DILocation(line: 352, column: 29, scope: !202)
!456 = !DILocation(line: 352, column: 40, scope: !202)
!457 = !DILocation(line: 353, column: 4, scope: !202)
!458 = !DILocation(line: 353, column: 14, scope: !202)
!459 = !DILocation(line: 353, column: 29, scope: !202)
!460 = !DILocation(line: 353, column: 39, scope: !202)
!461 = !DILocation(line: 354, column: 4, scope: !202)
!462 = !DILocation(line: 354, column: 14, scope: !202)
!463 = !DILocation(line: 354, column: 29, scope: !202)
!464 = !DILocation(line: 354, column: 35, scope: !202)
!465 = !DILocation(line: 355, column: 4, scope: !202)
!466 = !DILocation(line: 355, column: 14, scope: !202)
!467 = !DILocation(line: 355, column: 29, scope: !202)
!468 = !DILocation(line: 355, column: 34, scope: !202)
!469 = !DILocation(line: 356, column: 13, scope: !202)
!470 = !DILocation(line: 356, column: 23, scope: !202)
!471 = !DILocation(line: 356, column: 38, scope: !202)
!472 = !DILocation(line: 356, column: 46, scope: !202)
!473 = !DILocation(line: 357, column: 47, scope: !202)
!474 = !DILocation(line: 357, column: 57, scope: !202)
!475 = !DILocation(line: 359, column: 47, scope: !202)
!476 = !DILocation(line: 359, column: 57, scope: !202)
!477 = !DILocation(line: 356, column: 11, scope: !202)
!478 = !DILocation(line: 360, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !202, file: !14, line: 360, column: 8)
!480 = !DILocation(line: 360, column: 8, scope: !202)
!481 = !DILocation(line: 361, column: 31, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !14, line: 360, column: 16)
!483 = !DILocation(line: 361, column: 7, scope: !482)
!484 = !DILocation(line: 362, column: 4, scope: !482)
!485 = !DILocation(line: 363, column: 11, scope: !202)
!486 = !DILocation(line: 363, column: 4, scope: !202)
!487 = distinct !DISubprogram(name: "HgfsChannelGuestBdSend", scope: !14, file: !14, line: 634, type: !77, isLocal: true, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!488 = !DILocalVariable(name: "conn", arg: 1, scope: !487, file: !14, line: 634, type: !20)
!489 = !DILocation(line: 634, column: 30, scope: !487)
!490 = !DILocalVariable(name: "packet", arg: 2, scope: !487, file: !14, line: 635, type: !79)
!491 = !DILocation(line: 635, column: 36, scope: !487)
!492 = !DILocalVariable(name: "flags", arg: 3, scope: !487, file: !14, line: 636, type: !122)
!493 = !DILocation(line: 636, column: 38, scope: !487)
!494 = !DILocalVariable(name: "connData", scope: !487, file: !14, line: 638, type: !205)
!495 = !DILocation(line: 638, column: 19, scope: !487)
!496 = !DILocation(line: 638, column: 30, scope: !487)
!497 = !DILocation(line: 646, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !487, file: !14, line: 646, column: 8)
!499 = !DILocation(line: 646, column: 16, scope: !498)
!500 = !DILocation(line: 646, column: 38, scope: !498)
!501 = !DILocation(line: 646, column: 48, scope: !498)
!502 = !DILocation(line: 646, column: 36, scope: !498)
!503 = !DILocation(line: 646, column: 8, scope: !487)
!504 = !DILocation(line: 647, column: 37, scope: !505)
!505 = distinct !DILexicalBlock(scope: !498, file: !14, line: 646, column: 62)
!506 = !DILocation(line: 647, column: 47, scope: !505)
!507 = !DILocation(line: 647, column: 7, scope: !505)
!508 = !DILocation(line: 647, column: 15, scope: !505)
!509 = !DILocation(line: 647, column: 35, scope: !505)
!510 = !DILocation(line: 648, column: 4, scope: !505)
!511 = !DILocation(line: 649, column: 37, scope: !487)
!512 = !DILocation(line: 649, column: 45, scope: !487)
!513 = !DILocation(line: 649, column: 29, scope: !487)
!514 = !DILocation(line: 649, column: 4, scope: !487)
!515 = !DILocation(line: 649, column: 14, scope: !487)
!516 = !DILocation(line: 649, column: 27, scope: !487)
!517 = !DILocation(line: 651, column: 10, scope: !518)
!518 = distinct !DILexicalBlock(scope: !487, file: !14, line: 651, column: 8)
!519 = !DILocation(line: 651, column: 16, scope: !518)
!520 = !DILocation(line: 651, column: 8, scope: !487)
!521 = !DILocation(line: 652, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !14, line: 651, column: 29)
!523 = !DILocation(line: 652, column: 17, scope: !522)
!524 = !DILocation(line: 652, column: 32, scope: !522)
!525 = !DILocation(line: 652, column: 45, scope: !522)
!526 = !DILocation(line: 653, column: 45, scope: !522)
!527 = !DILocation(line: 653, column: 55, scope: !522)
!528 = !DILocation(line: 654, column: 4, scope: !522)
!529 = !DILocation(line: 656, column: 4, scope: !487)
!530 = distinct !DISubprogram(name: "HgfsChannelGuestConnGet", scope: !14, file: !14, line: 114, type: !262, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!531 = !DILocalVariable(name: "connData", arg: 1, scope: !530, file: !14, line: 114, type: !205)
!532 = !DILocation(line: 114, column: 40, scope: !530)
!533 = !DILocation(line: 117, column: 18, scope: !530)
!534 = !DILocation(line: 117, column: 28, scope: !530)
!535 = !DILocation(line: 117, column: 4, scope: !530)
!536 = !DILocation(line: 118, column: 1, scope: !530)
!537 = distinct !DISubprogram(name: "Atomic_Inc32", scope: !167, file: !167, line: 1636, type: !538, isLocal: true, isDefinition: true, scopeLine: 1637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!541 = !DILocalVariable(name: "var", arg: 1, scope: !537, file: !167, line: 1636, type: !540)
!542 = !DILocation(line: 1636, column: 29, scope: !537)
!543 = !DILocation(line: 1645, column: 15, scope: !537)
!544 = !DILocation(line: 1645, column: 20, scope: !537)
!545 = !DILocation(line: 1643, column: 4, scope: !537)
!546 = !{i32 51021}
!547 = !DILocation(line: 1655, column: 1, scope: !537)
!548 = distinct !DISubprogram(name: "HgfsChannelGuestConnInit", scope: !14, file: !14, line: 166, type: !549, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!549 = !DISubroutineType(types: !550)
!550 = !{!37, !214, !39}
!551 = !DILocalVariable(name: "connData", arg: 1, scope: !548, file: !14, line: 166, type: !214)
!552 = !DILocation(line: 166, column: 42, scope: !548)
!553 = !DILocalVariable(name: "serverCBTable", arg: 2, scope: !548, file: !14, line: 167, type: !39)
!554 = !DILocation(line: 167, column: 60, scope: !548)
!555 = !DILocalVariable(name: "conn", scope: !548, file: !14, line: 169, type: !205)
!556 = !DILocation(line: 169, column: 19, scope: !548)
!557 = !DILocation(line: 171, column: 11, scope: !548)
!558 = !DILocation(line: 171, column: 9, scope: !548)
!559 = !DILocation(line: 174, column: 28, scope: !548)
!560 = !DILocation(line: 174, column: 4, scope: !548)
!561 = !DILocation(line: 175, column: 26, scope: !548)
!562 = !DILocation(line: 175, column: 4, scope: !548)
!563 = !DILocation(line: 175, column: 10, scope: !548)
!564 = !DILocation(line: 175, column: 24, scope: !548)
!565 = !DILocation(line: 176, column: 4, scope: !548)
!566 = !DILocation(line: 176, column: 10, scope: !548)
!567 = !DILocation(line: 176, column: 16, scope: !548)
!568 = !DILocation(line: 178, column: 16, scope: !548)
!569 = !DILocation(line: 178, column: 5, scope: !548)
!570 = !DILocation(line: 178, column: 14, scope: !548)
!571 = !DILocation(line: 179, column: 4, scope: !548)
!572 = distinct !DISubprogram(name: "HgfsChannelGuestConnCreate", scope: !14, file: !14, line: 266, type: !573, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !205, !20, !20}
!575 = !DILocalVariable(name: "connData", arg: 1, scope: !572, file: !14, line: 266, type: !205)
!576 = !DILocation(line: 266, column: 43, scope: !572)
!577 = !DILocalVariable(name: "rpc", arg: 2, scope: !572, file: !14, line: 267, type: !20)
!578 = !DILocation(line: 267, column: 34, scope: !572)
!579 = !DILocalVariable(name: "rpcCallback", arg: 3, scope: !572, file: !14, line: 268, type: !20)
!580 = !DILocation(line: 268, column: 34, scope: !572)
!581 = !DILocation(line: 277, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !14, line: 277, column: 8)
!583 = !DILocation(line: 277, column: 18, scope: !582)
!584 = !DILocation(line: 277, column: 24, scope: !582)
!585 = !DILocation(line: 277, column: 8, scope: !572)
!586 = !DILocation(line: 281, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !14, line: 277, column: 55)
!588 = !DILocation(line: 281, column: 17, scope: !587)
!589 = !DILocation(line: 281, column: 23, scope: !587)
!590 = !DILocation(line: 282, column: 31, scope: !587)
!591 = !DILocation(line: 282, column: 7, scope: !587)
!592 = !DILocation(line: 283, column: 4, scope: !587)
!593 = !DILocation(line: 284, column: 1, scope: !572)
!594 = distinct !DISubprogram(name: "HgfsChannelGuestConnCloseInternal", scope: !14, file: !14, line: 414, type: !573, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!595 = !DILocalVariable(name: "connData", arg: 1, scope: !594, file: !14, line: 414, type: !205)
!596 = !DILocation(line: 414, column: 50, scope: !594)
!597 = !DILocalVariable(name: "rpc", arg: 2, scope: !594, file: !14, line: 415, type: !20)
!598 = !DILocation(line: 415, column: 41, scope: !594)
!599 = !DILocalVariable(name: "rpcCallback", arg: 3, scope: !594, file: !14, line: 416, type: !20)
!600 = !DILocation(line: 416, column: 41, scope: !594)
!601 = !DILocation(line: 419, column: 34, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !14, line: 419, column: 8)
!603 = !DILocation(line: 419, column: 44, scope: !602)
!604 = !DILocation(line: 419, column: 49, scope: !602)
!605 = !DILocation(line: 419, column: 8, scope: !602)
!606 = !DILocation(line: 419, column: 8, scope: !594)
!607 = !DILocation(line: 421, column: 38, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !14, line: 419, column: 63)
!609 = !DILocation(line: 421, column: 7, scope: !608)
!610 = !DILocation(line: 422, column: 4, scope: !608)
!611 = !DILocation(line: 423, column: 1, scope: !594)
!612 = distinct !DISubprogram(name: "HgfsChannelGuestConnExit", scope: !14, file: !14, line: 203, type: !262, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!613 = !DILocalVariable(name: "connData", arg: 1, scope: !612, file: !14, line: 203, type: !205)
!614 = !DILocation(line: 203, column: 41, scope: !612)
!615 = !DILocation(line: 205, column: 4, scope: !612)
!616 = !DILocation(line: 205, column: 14, scope: !612)
!617 = !DILocation(line: 205, column: 20, scope: !612)
!618 = !DILocation(line: 207, column: 28, scope: !612)
!619 = !DILocation(line: 207, column: 4, scope: !612)
!620 = !DILocation(line: 208, column: 1, scope: !612)
!621 = distinct !DISubprogram(name: "HgfsChannelGuestConnClose", scope: !14, file: !14, line: 307, type: !622, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!622 = !DISubroutineType(types: !623)
!623 = !{!37, !205, !20, !20}
!624 = !DILocalVariable(name: "connData", arg: 1, scope: !621, file: !14, line: 307, type: !205)
!625 = !DILocation(line: 307, column: 42, scope: !621)
!626 = !DILocalVariable(name: "rpc", arg: 2, scope: !621, file: !14, line: 308, type: !20)
!627 = !DILocation(line: 308, column: 33, scope: !621)
!628 = !DILocalVariable(name: "rpcCallback", arg: 3, scope: !621, file: !14, line: 309, type: !20)
!629 = !DILocation(line: 309, column: 33, scope: !621)
!630 = !DILocalVariable(name: "result", scope: !621, file: !14, line: 311, type: !37)
!631 = !DILocation(line: 311, column: 9, scope: !621)
!632 = !DILocation(line: 313, column: 8, scope: !633)
!633 = distinct !DILexicalBlock(scope: !621, file: !14, line: 313, column: 8)
!634 = !DILocation(line: 313, column: 18, scope: !633)
!635 = !DILocation(line: 313, column: 24, scope: !633)
!636 = !DILocation(line: 313, column: 8, scope: !621)
!637 = !DILocation(line: 317, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !14, line: 313, column: 52)
!639 = !DILocation(line: 317, column: 17, scope: !638)
!640 = !DILocation(line: 317, column: 23, scope: !638)
!641 = !DILocation(line: 318, column: 31, scope: !638)
!642 = !DILocation(line: 318, column: 7, scope: !638)
!643 = !DILocation(line: 319, column: 14, scope: !638)
!644 = !DILocation(line: 320, column: 4, scope: !638)
!645 = !DILocation(line: 321, column: 11, scope: !621)
!646 = !DILocation(line: 321, column: 4, scope: !621)
!647 = distinct !DISubprogram(name: "HgfsChannelGuestConnDisconnect", scope: !14, file: !14, line: 387, type: !262, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!648 = !DILocalVariable(name: "connData", arg: 1, scope: !647, file: !14, line: 387, type: !205)
!649 = !DILocation(line: 387, column: 47, scope: !647)
!650 = !DILocation(line: 389, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !14, line: 389, column: 8)
!652 = !DILocation(line: 389, column: 18, scope: !651)
!653 = !DILocation(line: 389, column: 32, scope: !651)
!654 = !DILocation(line: 389, column: 8, scope: !647)
!655 = !DILocation(line: 391, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !14, line: 389, column: 40)
!657 = !DILocation(line: 391, column: 17, scope: !656)
!658 = !DILocation(line: 391, column: 32, scope: !656)
!659 = !DILocation(line: 391, column: 43, scope: !656)
!660 = !DILocation(line: 391, column: 53, scope: !656)
!661 = !DILocation(line: 392, column: 31, scope: !656)
!662 = !DILocation(line: 392, column: 7, scope: !656)
!663 = !DILocation(line: 393, column: 4, scope: !656)
!664 = !DILocation(line: 394, column: 1, scope: !647)
!665 = distinct !DISubprogram(name: "HgfsChannelGuestConnPut", scope: !14, file: !14, line: 140, type: !262, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!666 = !DILocalVariable(name: "connData", arg: 1, scope: !665, file: !14, line: 140, type: !205)
!667 = !DILocation(line: 140, column: 40, scope: !665)
!668 = !DILocation(line: 143, column: 26, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !14, line: 143, column: 8)
!670 = !DILocation(line: 143, column: 36, scope: !669)
!671 = !DILocation(line: 143, column: 8, scope: !669)
!672 = !DILocation(line: 143, column: 46, scope: !669)
!673 = !DILocation(line: 143, column: 8, scope: !665)
!674 = !DILocation(line: 144, column: 35, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !14, line: 143, column: 52)
!676 = !DILocation(line: 144, column: 7, scope: !675)
!677 = !DILocation(line: 145, column: 4, scope: !675)
!678 = !DILocation(line: 146, column: 1, scope: !665)
!679 = distinct !DISubprogram(name: "Atomic_ReadDec32", scope: !167, file: !167, line: 1950, type: !680, isLocal: true, isDefinition: true, scopeLine: 1951, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!680 = !DISubroutineType(types: !681)
!681 = !{!21, !540}
!682 = !DILocalVariable(name: "var", arg: 1, scope: !679, file: !167, line: 1950, type: !540)
!683 = !DILocation(line: 1950, column: 33, scope: !679)
!684 = !DILocation(line: 1952, column: 28, scope: !679)
!685 = !DILocation(line: 1952, column: 11, scope: !679)
!686 = !DILocation(line: 1952, column: 4, scope: !679)
!687 = distinct !DISubprogram(name: "HgfsChannelGuestConnDestroy", scope: !14, file: !14, line: 228, type: !262, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!688 = !DILocalVariable(name: "connData", arg: 1, scope: !687, file: !14, line: 228, type: !205)
!689 = !DILocation(line: 228, column: 44, scope: !687)
!690 = !DILocation(line: 231, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !14, line: 231, column: 7)
!692 = !DILocation(line: 231, column: 25, scope: !691)
!693 = !DILocation(line: 231, column: 12, scope: !691)
!694 = !DILocation(line: 231, column: 7, scope: !687)
!695 = !DILocation(line: 232, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !14, line: 231, column: 40)
!697 = !DILocation(line: 232, column: 17, scope: !696)
!698 = !DILocation(line: 232, column: 32, scope: !696)
!699 = !DILocation(line: 232, column: 38, scope: !696)
!700 = !DILocation(line: 232, column: 48, scope: !696)
!701 = !DILocation(line: 233, column: 7, scope: !696)
!702 = !DILocation(line: 233, column: 17, scope: !696)
!703 = !DILocation(line: 233, column: 31, scope: !696)
!704 = !DILocation(line: 234, column: 4, scope: !696)
!705 = !DILocation(line: 235, column: 9, scope: !687)
!706 = !DILocation(line: 235, column: 4, scope: !687)
!707 = !DILocation(line: 236, column: 1, scope: !687)
!708 = distinct !DISubprogram(name: "Atomic_ReadAdd32", scope: !167, file: !167, line: 1864, type: !709, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !207)
!709 = !DISubroutineType(types: !710)
!710 = !{!21, !540, !21}
!711 = !DILocalVariable(name: "var", arg: 1, scope: !708, file: !167, line: 1864, type: !540)
!712 = !DILocation(line: 1864, column: 33, scope: !708)
!713 = !DILocalVariable(name: "val", arg: 2, scope: !708, file: !167, line: 1865, type: !21)
!714 = !DILocation(line: 1865, column: 25, scope: !708)
!715 = !DILocation(line: 1896, column: 15, scope: !708)
!716 = !DILocation(line: 1896, column: 20, scope: !708)
!717 = !DILocation(line: 1897, column: 14, scope: !708)
!718 = !DILocation(line: 1893, column: 4, scope: !708)
!719 = !{i32 53116}
!720 = !DILocation(line: 1900, column: 11, scope: !708)
!721 = !DILocation(line: 1900, column: 4, scope: !708)
