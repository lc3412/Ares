; ModuleID = './libNicInfo_la-nicInfo.o.i'
source_filename = "./libNicInfo_la-nicInfo.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GPtrArray = type { i8**, i32 }
%struct._GPatternSpec = type opaque
%struct.NicInfoV3 = type { %struct.anon, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon = type { i32, %struct.GuestNicV3* }
%struct.GuestNicV3 = type { i8*, %struct.anon.0, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.0 = type { i32, %struct.IpAddressEntry* }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.InetAddress = type { i32, i8* }
%struct.anon.3 = type { i32, %struct.InetCidrRouteEntry* }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i32, %struct.TypedIpAddress* }
%struct.anon.2 = type { i32, i8** }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.DhcpConfigInfo = type { i32, i8* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@gIfacePrimaryPatterns = internal global %struct._GPtrArray* null, align 8
@gIfaceLowPriorityPatterns = internal global %struct._GPtrArray* null, align 8
@gIfaceExcludePatterns = internal global %struct._GPtrArray* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s: checking %s\00", align 1
@__FUNCTION__.GuestInfo_IfaceGetPriority = private unnamed_addr constant [27 x i8] c"GuestInfo_IfaceGetPriority\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: NIC limit (%d) reached, skipping overflow.\00", align 1
@__FUNCTION__.GuestInfoAddNicEntry = private unnamed_addr constant [21 x i8] c"GuestInfoAddNicEntry\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nicInfo.c\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"%s: IP address limit (%d) reached, skipping overflow.\00", align 1
@__FUNCTION__.GuestInfoAddIpAddress = private unnamed_addr constant [22 x i8] c"GuestInfoAddIpAddress\00", align 1
@GuestInfoAddIpAddress.defaultStatus = internal constant i32 1, align 4
@GuestInfoAddIpAddress.defaultStatus.6 = internal constant i32 5, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: interface %s matched pattern %d\00", align 1
@__FUNCTION__.GuestInfoMatchesPatternList = private unnamed_addr constant [28 x i8] c"GuestInfoMatchesPatternList\00", align 1

; Function Attrs: nounwind uwtable
define void @GuestInfo_SetIfacePrimaryList(i8**) #0 !dbg !315 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !319, metadata !320), !dbg !321
  %3 = load i8**, i8*** %2, align 8, !dbg !322
  call void @GuestInfoResetPatternList(i8** %3, %struct._GPtrArray** @gIfacePrimaryPatterns), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @GuestInfoResetPatternList(i8**, %struct._GPtrArray**) #0 !dbg !325 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct._GPtrArray**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !329, metadata !320), !dbg !330
  store %struct._GPtrArray** %1, %struct._GPtrArray*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GPtrArray*** %4, metadata !331, metadata !320), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %5, metadata !333, metadata !320), !dbg !334
  %6 = load %struct._GPtrArray**, %struct._GPtrArray*** %4, align 8, !dbg !335
  %7 = load %struct._GPtrArray*, %struct._GPtrArray** %6, align 8, !dbg !337
  %8 = icmp ne %struct._GPtrArray* %7, null, !dbg !338
  br i1 %8, label %9, label %14, !dbg !339

; <label>:9:                                      ; preds = %2
  %10 = load %struct._GPtrArray**, %struct._GPtrArray*** %4, align 8, !dbg !340
  %11 = load %struct._GPtrArray*, %struct._GPtrArray** %10, align 8, !dbg !342
  %12 = call i8** @g_ptr_array_free(%struct._GPtrArray* %11, i32 1), !dbg !343
  %13 = load %struct._GPtrArray**, %struct._GPtrArray*** %4, align 8, !dbg !344
  store %struct._GPtrArray* null, %struct._GPtrArray** %13, align 8, !dbg !345
  br label %14, !dbg !346

; <label>:14:                                     ; preds = %9, %2
  %15 = load i8**, i8*** %3, align 8, !dbg !347
  %16 = icmp ne i8** %15, null, !dbg !349
  br i1 %16, label %17, label %52, !dbg !350

; <label>:17:                                     ; preds = %14
  %18 = call %struct._GPtrArray* @g_ptr_array_new_with_free_func(void (i8*)* bitcast (void (%struct._GPatternSpec*)* @g_pattern_spec_free to void (i8*)*)), !dbg !351
  %19 = load %struct._GPtrArray**, %struct._GPtrArray*** %4, align 8, !dbg !353
  store %struct._GPtrArray* %18, %struct._GPtrArray** %19, align 8, !dbg !354
  store i32 0, i32* %5, align 4, !dbg !355
  br label %20, !dbg !357

; <label>:20:                                     ; preds = %48, %17
  %21 = load i32, i32* %5, align 4, !dbg !358
  %22 = zext i32 %21 to i64, !dbg !361
  %23 = load i8**, i8*** %3, align 8, !dbg !361
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !361
  %25 = load i8*, i8** %24, align 8, !dbg !361
  %26 = icmp ne i8* %25, null, !dbg !362
  br i1 %26, label %27, label %51, !dbg !363

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %5, align 4, !dbg !364
  %29 = zext i32 %28 to i64, !dbg !367
  %30 = load i8**, i8*** %3, align 8, !dbg !367
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29, !dbg !367
  %32 = load i8*, i8** %31, align 8, !dbg !367
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !367
  %34 = load i8, i8* %33, align 1, !dbg !367
  %35 = sext i8 %34 to i32, !dbg !367
  %36 = icmp ne i32 %35, 0, !dbg !368
  br i1 %36, label %37, label %47, !dbg !369

; <label>:37:                                     ; preds = %27
  %38 = load %struct._GPtrArray**, %struct._GPtrArray*** %4, align 8, !dbg !370
  %39 = load %struct._GPtrArray*, %struct._GPtrArray** %38, align 8, !dbg !372
  %40 = load i32, i32* %5, align 4, !dbg !373
  %41 = zext i32 %40 to i64, !dbg !374
  %42 = load i8**, i8*** %3, align 8, !dbg !374
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41, !dbg !374
  %44 = load i8*, i8** %43, align 8, !dbg !374
  %45 = call %struct._GPatternSpec* @g_pattern_spec_new(i8* %44), !dbg !375
  %46 = bitcast %struct._GPatternSpec* %45 to i8*, !dbg !375
  call void @g_ptr_array_add(%struct._GPtrArray* %39, i8* %46), !dbg !376
  br label %47, !dbg !378

; <label>:47:                                     ; preds = %37, %27
  br label %48, !dbg !379

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %5, align 4, !dbg !380
  %50 = add i32 %49, 1, !dbg !380
  store i32 %50, i32* %5, align 4, !dbg !380
  br label %20, !dbg !382, !llvm.loop !383

; <label>:51:                                     ; preds = %20
  br label %52, !dbg !385

; <label>:52:                                     ; preds = %51, %14
  ret void, !dbg !386
}

; Function Attrs: nounwind uwtable
define void @GuestInfo_SetIfaceLowPriorityList(i8**) #0 !dbg !387 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !388, metadata !320), !dbg !389
  %3 = load i8**, i8*** %2, align 8, !dbg !390
  call void @GuestInfoResetPatternList(i8** %3, %struct._GPtrArray** @gIfaceLowPriorityPatterns), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: nounwind uwtable
define void @GuestInfo_SetIfaceExcludeList(i8**) #0 !dbg !393 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !394, metadata !320), !dbg !395
  %3 = load i8**, i8*** %2, align 8, !dbg !396
  call void @GuestInfoResetPatternList(i8** %3, %struct._GPtrArray** @gIfaceExcludePatterns), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_IfaceIsExcluded(i8*) #0 !dbg !399 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !403, metadata !320), !dbg !404
  %3 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfaceExcludePatterns, align 8, !dbg !405
  %4 = icmp ne %struct._GPtrArray* %3, null, !dbg !406
  br i1 %4, label %5, label %11, !dbg !407

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !408
  %7 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfaceExcludePatterns, align 8, !dbg !409
  %8 = call signext i8 @GuestInfoMatchesPatternList(i8* %6, %struct._GPtrArray* %7), !dbg !410
  %9 = sext i8 %8 to i32, !dbg !410
  %10 = icmp ne i32 %9, 0, !dbg !411
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32, !dbg !413
  %14 = trunc i32 %13 to i8, !dbg !415
  ret i8 %14, !dbg !416
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GuestInfoMatchesPatternList(i8*, %struct._GPtrArray*) #0 !dbg !417 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GPtrArray*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !422, metadata !320), !dbg !423
  store %struct._GPtrArray* %1, %struct._GPtrArray** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %5, metadata !424, metadata !320), !dbg !425
  call void @llvm.dbg.declare(metadata i32* %6, metadata !426, metadata !320), !dbg !427
  store i32 0, i32* %6, align 4, !dbg !428
  br label %7, !dbg !430

; <label>:7:                                      ; preds = %29, %2
  %8 = load i32, i32* %6, align 4, !dbg !431
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** %5, align 8, !dbg !434
  %10 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %9, i32 0, i32 1, !dbg !435
  %11 = load i32, i32* %10, align 8, !dbg !435
  %12 = icmp ult i32 %8, %11, !dbg !436
  br i1 %12, label %13, label %32, !dbg !437

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* %6, align 4, !dbg !438
  %15 = sext i32 %14 to i64, !dbg !441
  %16 = load %struct._GPtrArray*, %struct._GPtrArray** %5, align 8, !dbg !442
  %17 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %16, i32 0, i32 0, !dbg !443
  %18 = load i8**, i8*** %17, align 8, !dbg !443
  %19 = getelementptr inbounds i8*, i8** %18, i64 %15, !dbg !441
  %20 = load i8*, i8** %19, align 8, !dbg !441
  %21 = bitcast i8* %20 to %struct._GPatternSpec*, !dbg !441
  %22 = load i8*, i8** %4, align 8, !dbg !444
  %23 = call i32 @g_pattern_match_string(%struct._GPatternSpec* %21, i8* %22), !dbg !445
  %24 = icmp ne i32 %23, 0, !dbg !445
  br i1 %24, label %25, label %28, !dbg !446

; <label>:25:                                     ; preds = %13
  %26 = load i8*, i8** %4, align 8, !dbg !447
  %27 = load i32, i32* %6, align 4, !dbg !449
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.GuestInfoMatchesPatternList, i32 0, i32 0), i8* %26, i32 %27), !dbg !450
  store i8 1, i8* %3, align 1, !dbg !451
  br label %33, !dbg !451

; <label>:28:                                     ; preds = %13
  br label %29, !dbg !452

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %6, align 4, !dbg !453
  %31 = add nsw i32 %30, 1, !dbg !453
  store i32 %31, i32* %6, align 4, !dbg !453
  br label %7, !dbg !455, !llvm.loop !456

; <label>:32:                                     ; preds = %7
  store i8 0, i8* %3, align 1, !dbg !458
  br label %33, !dbg !458

; <label>:33:                                     ; preds = %32, %25
  %34 = load i8, i8* %3, align 1, !dbg !459
  ret i8 %34, !dbg !459
}

; Function Attrs: nounwind uwtable
define i32 @GuestInfo_IfaceGetPriority(i8*) #0 !dbg !460 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !464, metadata !320), !dbg !465
  %4 = load i8*, i8** %3, align 8, !dbg !466
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.GuestInfo_IfaceGetPriority, i32 0, i32 0), i8* %4), !dbg !467
  %5 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfacePrimaryPatterns, align 8, !dbg !468
  %6 = icmp ne %struct._GPtrArray* %5, null, !dbg !470
  br i1 %6, label %7, label %14, !dbg !471

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !472
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfacePrimaryPatterns, align 8, !dbg !473
  %10 = call signext i8 @GuestInfoMatchesPatternList(i8* %8, %struct._GPtrArray* %9), !dbg !474
  %11 = sext i8 %10 to i32, !dbg !474
  %12 = icmp ne i32 %11, 0, !dbg !474
  br i1 %12, label %13, label %14, !dbg !475

; <label>:13:                                     ; preds = %7
  store i32 0, i32* %2, align 4, !dbg !477
  br label %26, !dbg !477

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfaceLowPriorityPatterns, align 8, !dbg !479
  %16 = icmp ne %struct._GPtrArray* %15, null, !dbg !481
  br i1 %16, label %17, label %24, !dbg !482

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %3, align 8, !dbg !483
  %19 = load %struct._GPtrArray*, %struct._GPtrArray** @gIfaceLowPriorityPatterns, align 8, !dbg !484
  %20 = call signext i8 @GuestInfoMatchesPatternList(i8* %18, %struct._GPtrArray* %19), !dbg !485
  %21 = sext i8 %20 to i32, !dbg !485
  %22 = icmp ne i32 %21, 0, !dbg !485
  br i1 %22, label %23, label %24, !dbg !486

; <label>:23:                                     ; preds = %17
  store i32 2, i32* %2, align 4, !dbg !488
  br label %26, !dbg !488

; <label>:24:                                     ; preds = %17, %14
  br label %25

; <label>:25:                                     ; preds = %24
  store i32 1, i32* %2, align 4, !dbg !490
  br label %26, !dbg !490

; <label>:26:                                     ; preds = %25, %23, %13
  %27 = load i32, i32* %2, align 4, !dbg !491
  ret i32 %27, !dbg !491
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_GetFqdn(i32, i8*) #0 !dbg !492 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !495, metadata !320), !dbg !496
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !497, metadata !320), !dbg !498
  %5 = load i32, i32* %3, align 4, !dbg !499
  %6 = load i8*, i8** %4, align 8, !dbg !500
  %7 = call signext i8 @GuestInfoGetFqdn(i32 %5, i8* %6), !dbg !501
  ret i8 %7, !dbg !502
}

declare signext i8 @GuestInfoGetFqdn(i32, i8*) #2

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfo_GetNicInfo(i32, i32, %struct.NicInfoV3**) #0 !dbg !503 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NicInfoV3**, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !537, metadata !320), !dbg !538
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !539, metadata !320), !dbg !540
  store %struct.NicInfoV3** %2, %struct.NicInfoV3*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3*** %6, metadata !541, metadata !320), !dbg !542
  call void @llvm.dbg.declare(metadata i8* %7, metadata !543, metadata !320), !dbg !544
  store i8 0, i8* %7, align 1, !dbg !544
  %8 = call i8* @UtilSafeCalloc0(i64 1, i64 64), !dbg !545
  %9 = bitcast i8* %8 to %struct.NicInfoV3*, !dbg !545
  %10 = load %struct.NicInfoV3**, %struct.NicInfoV3*** %6, align 8, !dbg !546
  store %struct.NicInfoV3* %9, %struct.NicInfoV3** %10, align 8, !dbg !547
  %11 = load i32, i32* %4, align 4, !dbg !548
  %12 = load i32, i32* %5, align 4, !dbg !549
  %13 = load %struct.NicInfoV3**, %struct.NicInfoV3*** %6, align 8, !dbg !550
  %14 = load %struct.NicInfoV3*, %struct.NicInfoV3** %13, align 8, !dbg !551
  %15 = call signext i8 @GuestInfoGetNicInfo(i32 %11, i32 %12, %struct.NicInfoV3* %14), !dbg !552
  store i8 %15, i8* %7, align 1, !dbg !553
  %16 = load i8, i8* %7, align 1, !dbg !554
  %17 = icmp ne i8 %16, 0, !dbg !554
  br i1 %17, label %22, label %18, !dbg !556

; <label>:18:                                     ; preds = %3
  %19 = load %struct.NicInfoV3**, %struct.NicInfoV3*** %6, align 8, !dbg !557
  %20 = load %struct.NicInfoV3*, %struct.NicInfoV3** %19, align 8, !dbg !559
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %20), !dbg !560
  %21 = load %struct.NicInfoV3**, %struct.NicInfoV3*** %6, align 8, !dbg !561
  store %struct.NicInfoV3* null, %struct.NicInfoV3** %21, align 8, !dbg !562
  br label %22, !dbg !563

; <label>:22:                                     ; preds = %18, %3
  %23 = load i8, i8* %7, align 1, !dbg !564
  ret i8 %23, !dbg !565
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

declare signext i8 @GuestInfoGetNicInfo(i32, i32, %struct.NicInfoV3*) #2

; Function Attrs: nounwind uwtable
define void @GuestInfo_FreeNicInfo(%struct.NicInfoV3*) #0 !dbg !566 {
  %2 = alloca %struct.NicInfoV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %2, metadata !569, metadata !320), !dbg !570
  %3 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !571
  %4 = icmp ne %struct.NicInfoV3* %3, null, !dbg !573
  br i1 %4, label %5, label %10, !dbg !574

; <label>:5:                                      ; preds = %1
  %6 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !575
  %7 = bitcast %struct.NicInfoV3* %6 to i8*, !dbg !577
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, %struct.NicInfoV3*)* @xdr_NicInfoV3 to i32 (%struct.XDR*, i8*, ...)*), i8* %7) #7, !dbg !578
  %8 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !579
  %9 = bitcast %struct.NicInfoV3* %8 to i8*, !dbg !579
  call void @free(i8* %9) #7, !dbg !580
  br label %10, !dbg !581

; <label>:10:                                     ; preds = %5, %1
  ret void, !dbg !582
}

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #3

declare i32 @xdr_NicInfoV3(%struct.XDR*, %struct.NicInfoV3*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @GuestInfo_GetPrimaryIP() #0 !dbg !583 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !586, metadata !320), !dbg !587
  %2 = call i8* @GuestInfoGetPrimaryIP(), !dbg !588
  store i8* %2, i8** %1, align 8, !dbg !587
  %3 = load i8*, i8** %1, align 8, !dbg !589
  %4 = icmp eq i8* %3, null, !dbg !591
  br i1 %4, label %5, label %7, !dbg !592

; <label>:5:                                      ; preds = %0
  %6 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)), !dbg !593
  store i8* %6, i8** %1, align 8, !dbg !595
  br label %7, !dbg !596

; <label>:7:                                      ; preds = %5, %0
  %8 = load i8*, i8** %1, align 8, !dbg !597
  ret i8* %8, !dbg !598
}

declare i8* @GuestInfoGetPrimaryIP() #2

declare i8* @UtilSafeStrdup0(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.GuestNicV3* @GuestInfoAddNicEntry(%struct.NicInfoV3*, i8*, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*) #0 !dbg !599 {
  %5 = alloca %struct.GuestNicV3*, align 8
  %6 = alloca %struct.NicInfoV3*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DnsConfigInfo*, align 8
  %9 = alloca %struct.WinsConfigInfo*, align 8
  %10 = alloca %struct.GuestNicV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %6, metadata !602, metadata !320), !dbg !603
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !604, metadata !320), !dbg !605
  store %struct.DnsConfigInfo* %2, %struct.DnsConfigInfo** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.DnsConfigInfo** %8, metadata !606, metadata !320), !dbg !607
  store %struct.WinsConfigInfo* %3, %struct.WinsConfigInfo** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.WinsConfigInfo** %9, metadata !608, metadata !320), !dbg !609
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %10, metadata !610, metadata !320), !dbg !611
  %11 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !612
  %12 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %11, i32 0, i32 0, !dbg !614
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !615
  %14 = load i32, i32* %13, align 8, !dbg !615
  %15 = icmp eq i32 %14, 16, !dbg !616
  br i1 %15, label %16, label %17, !dbg !617

; <label>:16:                                     ; preds = %4
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.GuestInfoAddNicEntry, i32 0, i32 0), i32 16), !dbg !618
  store %struct.GuestNicV3* null, %struct.GuestNicV3** %5, align 8, !dbg !620
  br label %46, !dbg !620

; <label>:17:                                     ; preds = %4
  %18 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !621
  %19 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %18, i32 0, i32 0, !dbg !622
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1, !dbg !623
  %21 = bitcast %struct.GuestNicV3** %20 to i8**, !dbg !624
  %22 = load %struct.NicInfoV3*, %struct.NicInfoV3** %6, align 8, !dbg !625
  %23 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %22, i32 0, i32 0, !dbg !626
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0, !dbg !627
  %25 = call i8* @XdrUtil_ArrayAppend(i8** %21, i32* %24, i64 56, i32 1), !dbg !628
  %26 = bitcast i8* %25 to %struct.GuestNicV3*, !dbg !629
  store %struct.GuestNicV3* %26, %struct.GuestNicV3** %10, align 8, !dbg !630
  %27 = load %struct.GuestNicV3*, %struct.GuestNicV3** %10, align 8, !dbg !631
  %28 = icmp ne %struct.GuestNicV3* %27, null, !dbg !634
  %29 = xor i1 %28, true, !dbg !634
  %30 = zext i1 %29 to i32, !dbg !634
  %31 = sext i32 %30 to i64, !dbg !635
  %32 = icmp ne i64 %31, 0, !dbg !636
  br i1 %32, label %33, label %34, !dbg !637

; <label>:33:                                     ; preds = %17
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 406) #8, !dbg !638
  unreachable, !dbg !638

; <label>:34:                                     ; preds = %17
  %35 = load i8*, i8** %7, align 8, !dbg !641
  %36 = call i8* @UtilSafeStrdup0(i8* %35), !dbg !642
  %37 = load %struct.GuestNicV3*, %struct.GuestNicV3** %10, align 8, !dbg !643
  %38 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %37, i32 0, i32 0, !dbg !644
  store i8* %36, i8** %38, align 8, !dbg !645
  %39 = load %struct.DnsConfigInfo*, %struct.DnsConfigInfo** %8, align 8, !dbg !646
  %40 = load %struct.GuestNicV3*, %struct.GuestNicV3** %10, align 8, !dbg !647
  %41 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %40, i32 0, i32 2, !dbg !648
  store %struct.DnsConfigInfo* %39, %struct.DnsConfigInfo** %41, align 8, !dbg !649
  %42 = load %struct.WinsConfigInfo*, %struct.WinsConfigInfo** %9, align 8, !dbg !650
  %43 = load %struct.GuestNicV3*, %struct.GuestNicV3** %10, align 8, !dbg !651
  %44 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %43, i32 0, i32 3, !dbg !652
  store %struct.WinsConfigInfo* %42, %struct.WinsConfigInfo** %44, align 8, !dbg !653
  %45 = load %struct.GuestNicV3*, %struct.GuestNicV3** %10, align 8, !dbg !654
  store %struct.GuestNicV3* %45, %struct.GuestNicV3** %5, align 8, !dbg !655
  br label %46, !dbg !655

; <label>:46:                                     ; preds = %34, %16
  %47 = load %struct.GuestNicV3*, %struct.GuestNicV3** %5, align 8, !dbg !656
  ret %struct.GuestNicV3* %47, !dbg !656
}

declare i8* @XdrUtil_ArrayAppend(i8**, i32*, i64, i32) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct.IpAddressEntry* @GuestInfoAddIpAddress(%struct.GuestNicV3*, %struct.sockaddr*, i32, i32*, i32*) #0 !dbg !280 {
  %6 = alloca %struct.IpAddressEntry*, align 8
  %7 = alloca %struct.GuestNicV3*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.IpAddressEntry*, align 8
  store %struct.GuestNicV3* %0, %struct.GuestNicV3** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %7, metadata !657, metadata !320), !dbg !658
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %8, metadata !659, metadata !320), !dbg !660
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !661, metadata !320), !dbg !662
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !663, metadata !320), !dbg !664
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !665, metadata !320), !dbg !666
  call void @llvm.dbg.declare(metadata %struct.IpAddressEntry** %12, metadata !667, metadata !320), !dbg !668
  %13 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !669
  %14 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %13, i32 0, i32 1, !dbg !671
  %15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %14, i32 0, i32 0, !dbg !672
  %16 = load i32, i32* %15, align 8, !dbg !672
  %17 = icmp eq i32 %16, 2048, !dbg !673
  br i1 %17, label %18, label %19, !dbg !674

; <label>:18:                                     ; preds = %5
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.GuestInfoAddIpAddress, i32 0, i32 0), i32 2048), !dbg !675
  store %struct.IpAddressEntry* null, %struct.IpAddressEntry** %6, align 8, !dbg !677
  br label %112, !dbg !677

; <label>:19:                                     ; preds = %5
  %20 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !678
  %21 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %20, i32 0, i32 1, !dbg !679
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %21, i32 0, i32 1, !dbg !680
  %23 = bitcast %struct.IpAddressEntry** %22 to i8**, !dbg !681
  %24 = load %struct.GuestNicV3*, %struct.GuestNicV3** %7, align 8, !dbg !682
  %25 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %24, i32 0, i32 1, !dbg !683
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %25, i32 0, i32 0, !dbg !684
  %27 = call i8* @XdrUtil_ArrayAppend(i8** %23, i32* %26, i64 48, i32 1), !dbg !685
  %28 = bitcast i8* %27 to %struct.IpAddressEntry*, !dbg !686
  store %struct.IpAddressEntry* %28, %struct.IpAddressEntry** %12, align 8, !dbg !687
  %29 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !688
  %30 = icmp ne %struct.IpAddressEntry* %29, null, !dbg !691
  %31 = xor i1 %30, true, !dbg !691
  %32 = zext i1 %31 to i32, !dbg !691
  %33 = sext i32 %32 to i64, !dbg !692
  %34 = icmp ne i64 %33, 0, !dbg !693
  br i1 %34, label %35, label %36, !dbg !694

; <label>:35:                                     ; preds = %19
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 452) #8, !dbg !695
  unreachable, !dbg !695

; <label>:36:                                     ; preds = %19
  br label %37, !dbg !698, !llvm.loop !699

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !700

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !703, !llvm.loop !704

; <label>:39:                                     ; preds = %38
  br label %40, !dbg !705

; <label>:40:                                     ; preds = %39
  %41 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8, !dbg !708
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0, !dbg !709
  %43 = load i16, i16* %42, align 2, !dbg !709
  %44 = zext i16 %43 to i32, !dbg !708
  switch i32 %44, label %109 [
    i32 2, label %45
    i32 10, label %77
  ], !dbg !710

; <label>:45:                                     ; preds = %40
  %46 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8, !dbg !711
  %47 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !714
  %48 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %47, i32 0, i32 0, !dbg !715
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %46, %struct.TypedIpAddress* %48), !dbg !716
  %49 = load i32, i32* %9, align 4, !dbg !717
  %50 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !718
  %51 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %50, i32 0, i32 1, !dbg !719
  store i32 %49, i32* %51, align 8, !dbg !720
  %52 = load i32*, i32** %10, align 8, !dbg !721
  %53 = icmp ne i32* %52, null, !dbg !721
  br i1 %53, label %54, label %58, !dbg !721

; <label>:54:                                     ; preds = %45
  %55 = load i32*, i32** %10, align 8, !dbg !722
  %56 = bitcast i32* %55 to i8*, !dbg !722
  %57 = call i8* @Util_DupeThis(i8* %56, i64 4), !dbg !724
  br label %59, !dbg !725

; <label>:58:                                     ; preds = %45
  br label %59, !dbg !726

; <label>:59:                                     ; preds = %58, %54
  %60 = phi i8* [ %57, %54 ], [ null, %58 ], !dbg !728
  %61 = bitcast i8* %60 to i32*, !dbg !728
  %62 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !730
  %63 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %62, i32 0, i32 2, !dbg !731
  store i32* %61, i32** %63, align 8, !dbg !732
  %64 = load i32*, i32** %11, align 8, !dbg !733
  %65 = icmp ne i32* %64, null, !dbg !733
  br i1 %65, label %66, label %70, !dbg !733

; <label>:66:                                     ; preds = %59
  %67 = load i32*, i32** %11, align 8, !dbg !734
  %68 = bitcast i32* %67 to i8*, !dbg !734
  %69 = call i8* @Util_DupeThis(i8* %68, i64 4), !dbg !735
  br label %72, !dbg !736

; <label>:70:                                     ; preds = %59
  %71 = call i8* @Util_DupeThis(i8* bitcast (i32* @GuestInfoAddIpAddress.defaultStatus to i8*), i64 4), !dbg !737
  br label %72, !dbg !738

; <label>:72:                                     ; preds = %70, %66
  %73 = phi i8* [ %69, %66 ], [ %71, %70 ], !dbg !739
  %74 = bitcast i8* %73 to i32*, !dbg !739
  %75 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !740
  %76 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %75, i32 0, i32 3, !dbg !741
  store i32* %74, i32** %76, align 8, !dbg !742
  br label %110, !dbg !743

; <label>:77:                                     ; preds = %40
  %78 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8, !dbg !744
  %79 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !746
  %80 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %79, i32 0, i32 0, !dbg !747
  call void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr* %78, %struct.TypedIpAddress* %80), !dbg !748
  %81 = load i32, i32* %9, align 4, !dbg !749
  %82 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !750
  %83 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %82, i32 0, i32 1, !dbg !751
  store i32 %81, i32* %83, align 8, !dbg !752
  %84 = load i32*, i32** %10, align 8, !dbg !753
  %85 = icmp ne i32* %84, null, !dbg !753
  br i1 %85, label %86, label %90, !dbg !753

; <label>:86:                                     ; preds = %77
  %87 = load i32*, i32** %10, align 8, !dbg !754
  %88 = bitcast i32* %87 to i8*, !dbg !754
  %89 = call i8* @Util_DupeThis(i8* %88, i64 4), !dbg !756
  br label %91, !dbg !757

; <label>:90:                                     ; preds = %77
  br label %91, !dbg !758

; <label>:91:                                     ; preds = %90, %86
  %92 = phi i8* [ %89, %86 ], [ null, %90 ], !dbg !760
  %93 = bitcast i8* %92 to i32*, !dbg !760
  %94 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !762
  %95 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %94, i32 0, i32 2, !dbg !763
  store i32* %93, i32** %95, align 8, !dbg !764
  %96 = load i32*, i32** %11, align 8, !dbg !765
  %97 = icmp ne i32* %96, null, !dbg !765
  br i1 %97, label %98, label %102, !dbg !765

; <label>:98:                                     ; preds = %91
  %99 = load i32*, i32** %11, align 8, !dbg !766
  %100 = bitcast i32* %99 to i8*, !dbg !766
  %101 = call i8* @Util_DupeThis(i8* %100, i64 4), !dbg !767
  br label %104, !dbg !768

; <label>:102:                                    ; preds = %91
  %103 = call i8* @Util_DupeThis(i8* bitcast (i32* @GuestInfoAddIpAddress.defaultStatus.6 to i8*), i64 4), !dbg !769
  br label %104, !dbg !770

; <label>:104:                                    ; preds = %102, %98
  %105 = phi i8* [ %101, %98 ], [ %103, %102 ], !dbg !771
  %106 = bitcast i8* %105 to i32*, !dbg !771
  %107 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !772
  %108 = getelementptr inbounds %struct.IpAddressEntry, %struct.IpAddressEntry* %107, i32 0, i32 3, !dbg !773
  store i32* %106, i32** %108, align 8, !dbg !774
  br label %110, !dbg !775

; <label>:109:                                    ; preds = %40
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 483) #8, !dbg !776
  unreachable, !dbg !776

; <label>:110:                                    ; preds = %104, %72
  %111 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %12, align 8, !dbg !777
  store %struct.IpAddressEntry* %111, %struct.IpAddressEntry** %6, align 8, !dbg !778
  br label %112, !dbg !778

; <label>:112:                                    ; preds = %110, %18
  %113 = load %struct.IpAddressEntry*, %struct.IpAddressEntry** %6, align 8, !dbg !779
  ret %struct.IpAddressEntry* %113, !dbg !779
}

; Function Attrs: nounwind uwtable
define void @GuestInfoSockaddrToTypedIpAddress(%struct.sockaddr*, %struct.TypedIpAddress*) #0 !dbg !780 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.TypedIpAddress*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %3, metadata !783, metadata !320), !dbg !784
  store %struct.TypedIpAddress* %1, %struct.TypedIpAddress** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.TypedIpAddress** %4, metadata !785, metadata !320), !dbg !786
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in** %5, metadata !787, metadata !320), !dbg !788
  %10 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !789
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*, !dbg !790
  store %struct.sockaddr_in* %11, %struct.sockaddr_in** %5, align 8, !dbg !788
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in6** %6, metadata !791, metadata !320), !dbg !792
  %12 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !793
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in6*, !dbg !794
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %6, align 8, !dbg !792
  %14 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !795
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0, !dbg !796
  %16 = load i16, i16* %15, align 2, !dbg !796
  %17 = zext i16 %16 to i32, !dbg !795
  switch i32 %17, label %76 [
    i32 2, label %18
    i32 10, label %38
  ], !dbg !797

; <label>:18:                                     ; preds = %2
  %19 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !798
  %20 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %19, i32 0, i32 0, !dbg !800
  store i32 1, i32* %20, align 8, !dbg !801
  br label %21, !dbg !802, !llvm.loop !803

; <label>:21:                                     ; preds = %18
  %22 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !804
  %23 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %22, i32 0, i32 1, !dbg !807
  %24 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %23, i32 0, i32 0, !dbg !808
  store i32 4, i32* %24, align 8, !dbg !809
  %25 = call i8* @UtilSafeMalloc0(i64 4), !dbg !810
  %26 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !811
  %27 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %26, i32 0, i32 1, !dbg !812
  %28 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %27, i32 0, i32 1, !dbg !813
  store i8* %25, i8** %28, align 8, !dbg !814
  %29 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !815
  %30 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %29, i32 0, i32 1, !dbg !816
  %31 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %30, i32 0, i32 1, !dbg !817
  %32 = load i8*, i8** %31, align 8, !dbg !817
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8, !dbg !818
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 2, !dbg !819
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0, !dbg !820
  %36 = bitcast i32* %35 to i8*, !dbg !821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %36, i64 4, i32 1, i1 false), !dbg !822
  br label %37, !dbg !824

; <label>:37:                                     ; preds = %21
  br label %77, !dbg !825

; <label>:38:                                     ; preds = %2
  %39 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !826
  %40 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %39, i32 0, i32 0, !dbg !827
  store i32 2, i32* %40, align 8, !dbg !828
  br label %41, !dbg !829, !llvm.loop !830

; <label>:41:                                     ; preds = %38
  %42 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !831
  %43 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %42, i32 0, i32 1, !dbg !834
  %44 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %43, i32 0, i32 0, !dbg !835
  store i32 16, i32* %44, align 8, !dbg !836
  %45 = call i8* @UtilSafeMalloc0(i64 16), !dbg !837
  %46 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !838
  %47 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %46, i32 0, i32 1, !dbg !839
  %48 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %47, i32 0, i32 1, !dbg !840
  store i8* %45, i8** %48, align 8, !dbg !841
  %49 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !839
  %50 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %49, i32 0, i32 1, !dbg !842
  %51 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %50, i32 0, i32 1, !dbg !843
  %52 = load i8*, i8** %51, align 8, !dbg !843
  %53 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8, !dbg !844
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %53, i32 0, i32 3, !dbg !845
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %54, i32 0, i32 0, !dbg !846
  %56 = bitcast %union.anon* %55 to [16 x i8]*, !dbg !831
  %57 = bitcast [16 x i8]* %56 to i8*, !dbg !838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %57, i64 16, i32 1, i1 false), !dbg !847
  br label %58, !dbg !849

; <label>:58:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %7, metadata !850, metadata !320), !dbg !852
  store i64 33022, i64* %7, align 8, !dbg !852
  call void @llvm.dbg.declare(metadata i64* %8, metadata !853, metadata !320), !dbg !854
  store i64 49407, i64* %8, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata i64** %9, metadata !855, metadata !320), !dbg !856
  %59 = load %struct.TypedIpAddress*, %struct.TypedIpAddress** %4, align 8, !dbg !857
  %60 = getelementptr inbounds %struct.TypedIpAddress, %struct.TypedIpAddress* %59, i32 0, i32 1, !dbg !858
  %61 = getelementptr inbounds %struct.InetAddress, %struct.InetAddress* %60, i32 0, i32 1, !dbg !859
  %62 = load i8*, i8** %61, align 8, !dbg !859
  %63 = bitcast i8* %62 to i64*, !dbg !860
  store i64* %63, i64** %9, align 8, !dbg !856
  %64 = load i64*, i64** %9, align 8, !dbg !861
  %65 = load i64, i64* %64, align 8, !dbg !863
  %66 = load i64, i64* %8, align 8, !dbg !864
  %67 = and i64 %65, %66, !dbg !865
  %68 = load i64, i64* %7, align 8, !dbg !866
  %69 = icmp eq i64 %67, %68, !dbg !867
  br i1 %69, label %70, label %75, !dbg !868

; <label>:70:                                     ; preds = %58
  %71 = load i64, i64* %8, align 8, !dbg !869
  %72 = load i64*, i64** %9, align 8, !dbg !871
  %73 = load i64, i64* %72, align 8, !dbg !872
  %74 = and i64 %73, %71, !dbg !872
  store i64 %74, i64* %72, align 8, !dbg !872
  br label %75, !dbg !873

; <label>:75:                                     ; preds = %70, %58
  br label %77, !dbg !874

; <label>:76:                                     ; preds = %2
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 554) #8, !dbg !875
  unreachable, !dbg !875

; <label>:77:                                     ; preds = %75, %37
  ret void, !dbg !876
}

; Function Attrs: nounwind uwtable
define internal i8* @Util_DupeThis(i8*, i64) #0 !dbg !877 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !884, metadata !320), !dbg !885
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !886, metadata !320), !dbg !887
  call void @llvm.dbg.declare(metadata i8** %5, metadata !888, metadata !320), !dbg !889
  %6 = load i64, i64* %4, align 8, !dbg !890
  %7 = call i8* @UtilSafeMalloc0(i64 %6), !dbg !891
  store i8* %7, i8** %5, align 8, !dbg !892
  %8 = load i8*, i8** %5, align 8, !dbg !893
  %9 = load i8*, i8** %3, align 8, !dbg !894
  %10 = load i64, i64* %4, align 8, !dbg !895
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false), !dbg !896
  %11 = load i8*, i8** %5, align 8, !dbg !897
  ret i8* %11, !dbg !898
}

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define signext i8 @GuestInfoGetNicInfoIfIndex(%struct.NicInfoV3*, i32, i32*) #0 !dbg !899 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.NicInfoV3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [18 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.GuestNicV3*, align 8
  store %struct.NicInfoV3* %0, %struct.NicInfoV3** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %5, metadata !903, metadata !320), !dbg !904
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !905, metadata !320), !dbg !906
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !907, metadata !320), !dbg !908
  call void @llvm.dbg.declare(metadata [18 x i8]* %8, metadata !909, metadata !320), !dbg !913
  call void @llvm.dbg.declare(metadata [16 x i8]* %9, metadata !914, metadata !320), !dbg !916
  call void @llvm.dbg.declare(metadata i32* %10, metadata !917, metadata !320), !dbg !919
  call void @llvm.dbg.declare(metadata i8* %11, metadata !920, metadata !320), !dbg !921
  store i8 0, i8* %11, align 1, !dbg !921
  call void @llvm.dbg.declare(metadata i32* %12, metadata !922, metadata !320), !dbg !923
  %14 = load i32, i32* %6, align 4, !dbg !924
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0, !dbg !926
  %16 = call i64 @NetUtil_GetHardwareAddress(i32 %14, i8* %15, i64 16, i32* %10), !dbg !927
  %17 = icmp ne i64 %16, 6, !dbg !928
  br i1 %17, label %21, label %18, !dbg !929

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* %10, align 4, !dbg !930
  %20 = icmp ne i32 %19, 6, !dbg !931
  br i1 %20, label %21, label %22, !dbg !932

; <label>:21:                                     ; preds = %18, %3
  store i8 0, i8* %4, align 1, !dbg !934
  br label %73, !dbg !934

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i32 0, i32 0, !dbg !936
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !937
  %25 = load i8, i8* %24, align 16, !dbg !937
  %26 = zext i8 %25 to i32, !dbg !937
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 1, !dbg !938
  %28 = load i8, i8* %27, align 1, !dbg !938
  %29 = zext i8 %28 to i32, !dbg !938
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 2, !dbg !939
  %31 = load i8, i8* %30, align 2, !dbg !939
  %32 = zext i8 %31 to i32, !dbg !939
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 3, !dbg !940
  %34 = load i8, i8* %33, align 1, !dbg !940
  %35 = zext i8 %34 to i32, !dbg !940
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 4, !dbg !941
  %37 = load i8, i8* %36, align 4, !dbg !941
  %38 = zext i8 %37 to i32, !dbg !941
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 5, !dbg !942
  %40 = load i8, i8* %39, align 1, !dbg !942
  %41 = zext i8 %40 to i32, !dbg !942
  %42 = call i32 (i8*, i64, i8*, ...) @Str_Sprintf(i8* %23, i64 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41), !dbg !943
  store i32 0, i32* %12, align 4, !dbg !944
  br label %43, !dbg !946

; <label>:43:                                     ; preds = %68, %22
  %44 = load i32, i32* %12, align 4, !dbg !947
  %45 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !950
  %46 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %45, i32 0, i32 0, !dbg !951
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0, !dbg !952
  %48 = load i32, i32* %47, align 8, !dbg !952
  %49 = icmp ult i32 %44, %48, !dbg !953
  br i1 %49, label %50, label %71, !dbg !954

; <label>:50:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct.GuestNicV3** %13, metadata !955, metadata !320), !dbg !957
  %51 = load i32, i32* %12, align 4, !dbg !958
  %52 = zext i32 %51 to i64, !dbg !959
  %53 = load %struct.NicInfoV3*, %struct.NicInfoV3** %5, align 8, !dbg !960
  %54 = getelementptr inbounds %struct.NicInfoV3, %struct.NicInfoV3* %53, i32 0, i32 0, !dbg !961
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 1, !dbg !962
  %56 = load %struct.GuestNicV3*, %struct.GuestNicV3** %55, align 8, !dbg !962
  %57 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %56, i64 %52, !dbg !959
  store %struct.GuestNicV3* %57, %struct.GuestNicV3** %13, align 8, !dbg !957
  %58 = load %struct.GuestNicV3*, %struct.GuestNicV3** %13, align 8, !dbg !963
  %59 = getelementptr inbounds %struct.GuestNicV3, %struct.GuestNicV3* %58, i32 0, i32 0, !dbg !965
  %60 = load i8*, i8** %59, align 8, !dbg !965
  %61 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i32 0, i32 0, !dbg !966
  %62 = call i32 @strcasecmp(i8* %60, i8* %61) #9, !dbg !967
  %63 = icmp ne i32 %62, 0, !dbg !967
  br i1 %63, label %67, label %64, !dbg !968

; <label>:64:                                     ; preds = %50
  %65 = load i32, i32* %12, align 4, !dbg !969
  %66 = load i32*, i32** %7, align 8, !dbg !971
  store i32 %65, i32* %66, align 4, !dbg !972
  store i8 1, i8* %11, align 1, !dbg !973
  br label %71, !dbg !974

; <label>:67:                                     ; preds = %50
  br label %68, !dbg !975

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %12, align 4, !dbg !976
  %70 = add i32 %69, 1, !dbg !976
  store i32 %70, i32* %12, align 4, !dbg !976
  br label %43, !dbg !978, !llvm.loop !979

; <label>:71:                                     ; preds = %64, %43
  %72 = load i8, i8* %11, align 1, !dbg !981
  store i8 %72, i8* %4, align 1, !dbg !982
  br label %73, !dbg !982

; <label>:73:                                     ; preds = %71, %21
  %74 = load i8, i8* %4, align 1, !dbg !983
  ret i8 %74, !dbg !983
}

declare i64 @NetUtil_GetHardwareAddress(i32, i8*, i64, i32*) #2

declare i32 @Str_Sprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #6

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #2

declare %struct._GPtrArray* @g_ptr_array_new_with_free_func(void (i8*)*) #2

declare void @g_pattern_spec_free(%struct._GPatternSpec*) #2

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #2

declare %struct._GPatternSpec* @g_pattern_spec_new(i8*) #2

declare i32 @g_pattern_match_string(%struct._GPatternSpec*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!312, !313}
!llvm.ident = !{!314}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !65, globals: !278)
!1 = !DIFile(filename: "libNicInfo_la-nicInfo.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!2 = !{!3, !10, !22, !31, !38, !48, !54, !60}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/nicInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "NICINFO_PRIORITY_PRIMARY", value: 0)
!7 = !DIEnumerator(name: "NICINFO_PRIORITY_NORMAL", value: 1)
!8 = !DIEnumerator(name: "NICINFO_PRIORITY_LOW", value: 2)
!9 = !DIEnumerator(name: "NICINFO_PRIORITY_MAX", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 51, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21}
!13 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!14 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!19 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!20 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!21 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !23, line: 65, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!26 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!27 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!28 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!29 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!30 = !DIEnumerator(name: "IAT_DNS", value: 16)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !23, line: 77, size: 32, align: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!34 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!35 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!36 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!37 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !23, line: 86, size: 32, align: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47}
!40 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!41 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!42 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!43 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!44 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!45 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!46 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!47 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !23, line: 138, size: 32, align: 32, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!51 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!52 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!53 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !55, line: 81, size: 32, align: 32, elements: !56)
!55 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!58 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!59 = !DIEnumerator(name: "XDR_FREE", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 49, size: 32, align: 32, elements: !62)
!61 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/netutil.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!62 = !{!63, !64}
!63 = !DIEnumerator(name: "IANA_IFTYPE_OTHER", value: 1)
!64 = !DIEnumerator(name: "IANA_IFTYPE_ETHERNETCSMACD", value: 6)
!65 = !{!66, !67, !71, !107, !151, !220, !161, !221, !244, !268, !273}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!70 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !55, line: 152, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !78, !66, null}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !76, line: 37, baseType: !77)
!76 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !55, line: 109, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !55, line: 110, size: 384, align: 64, elements: !81)
!81 = !{!82, !83, !147, !148, !149, !150}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !80, file: !55, line: 112, baseType: !54, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !80, file: !55, line: 136, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !55, line: 113, size: 640, align: 64, elements: !86)
!86 = !{!87, !93, !99, !111, !117, !123, !127, !133, !137, !141}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !85, file: !55, line: 115, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!75, !78, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !85, file: !55, line: 117, baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!75, !78, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !85, file: !55, line: 119, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!75, !78, !103, !108}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !104, line: 116, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !106, line: 183, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !104, line: 35, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !106, line: 32, baseType: !110)
!110 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !85, file: !55, line: 121, baseType: !112, size: 64, align: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!75, !78, !115, !108}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !85, file: !55, line: 123, baseType: !118, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!108, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !85, file: !55, line: 125, baseType: !124, size: 64, align: 64, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!75, !78, !108}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !85, file: !55, line: 127, baseType: !128, size: 64, align: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !78, !108}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !104, line: 196, baseType: !77)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !85, file: !55, line: 129, baseType: !134, size: 64, align: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !78}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !85, file: !55, line: 131, baseType: !138, size: 64, align: 64, offset: 512)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!75, !78, !131}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !85, file: !55, line: 133, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!75, !78, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !80, file: !55, line: 137, baseType: !103, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !80, file: !55, line: 138, baseType: !103, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !80, file: !55, line: 139, baseType: !103, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !80, file: !55, line: 140, baseType: !108, size: 32, align: 32, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !23, line: 174, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !23, line: 163, size: 448, align: 64, elements: !154)
!154 = !{!155, !156, !185, !205, !212, !219}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !153, file: !23, line: 164, baseType: !107, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !153, file: !23, line: 168, baseType: !157, size: 128, align: 64, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !23, line: 165, size: 128, align: 64, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !157, file: !23, line: 166, baseType: !108, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !157, file: !23, line: 167, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !23, line: 110, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !23, line: 104, size: 384, align: 64, elements: !164)
!164 = !{!165, !177, !179, !182}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !163, file: !23, line: 105, baseType: !166, size: 192, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !23, line: 102, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !23, line: 98, size: 192, align: 64, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !167, file: !23, line: 99, baseType: !170, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !23, line: 73, baseType: !22)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !167, file: !23, line: 100, baseType: !172, size: 128, align: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !23, line: 63, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 60, size: 128, align: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !173, file: !23, line: 61, baseType: !108, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !173, file: !23, line: 62, baseType: !107, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !163, file: !23, line: 106, baseType: !178, size: 32, align: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !23, line: 75, baseType: !108)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !163, file: !23, line: 107, baseType: !180, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !23, line: 84, baseType: !31)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !163, file: !23, line: 108, baseType: !183, size: 64, align: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !23, line: 96, baseType: !38)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !153, file: !23, line: 169, baseType: !186, size: 64, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !23, line: 129, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !23, line: 117, size: 384, align: 64, elements: !189)
!189 = !{!190, !193, !194, !200}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !188, file: !23, line: 118, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !23, line: 113, baseType: !107)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !188, file: !23, line: 119, baseType: !191, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !188, file: !23, line: 123, baseType: !195, size: 128, align: 64, offset: 128)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !23, line: 120, size: 128, align: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !195, file: !23, line: 121, baseType: !108, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !195, file: !23, line: 122, baseType: !199, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !188, file: !23, line: 127, baseType: !201, size: 128, align: 64, offset: 256)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !23, line: 124, size: 128, align: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !201, file: !23, line: 125, baseType: !108, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !201, file: !23, line: 126, baseType: !191, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !153, file: !23, line: 170, baseType: !206, size: 64, align: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !23, line: 135, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !23, line: 131, size: 384, align: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !208, file: !23, line: 132, baseType: !166, size: 192, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !208, file: !23, line: 133, baseType: !166, size: 192, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !153, file: !23, line: 171, baseType: !213, size: 64, align: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !23, line: 161, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !23, line: 157, size: 128, align: 64, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !215, file: !23, line: 158, baseType: !75, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !215, file: !23, line: 159, baseType: !107, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !153, file: !23, line: 172, baseType: !213, size: 64, align: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !223, line: 239, size: 128, align: 32, elements: !224)
!223 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!224 = !{!225, !229, !233, !239}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !222, file: !223, line: 241, baseType: !226, size: 16, align: 16)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !227, line: 28, baseType: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!228 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !222, file: !223, line: 242, baseType: !230, size: 16, align: 16, offset: 16)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !223, line: 119, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !232, line: 49, baseType: !228)
!232 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !222, file: !223, line: 243, baseType: !234, size: 32, align: 32, offset: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !223, line: 31, size: 32, align: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !234, file: !223, line: 33, baseType: !237, size: 32, align: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !223, line: 30, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !232, line: 51, baseType: !110)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !222, file: !223, line: 246, baseType: !240, size: 64, align: 8, offset: 64)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, align: 8, elements: !242)
!241 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!242 = !{!243}
!243 = !DISubrange(count: 8)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !223, line: 254, size: 224, align: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !267}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !245, file: !223, line: 256, baseType: !226, size: 16, align: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !245, file: !223, line: 257, baseType: !230, size: 16, align: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !245, file: !223, line: 258, baseType: !238, size: 32, align: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !245, file: !223, line: 259, baseType: !251, size: 128, align: 32, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !223, line: 211, size: 128, align: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !251, file: !223, line: 220, baseType: !254, size: 128, align: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !223, line: 213, size: 128, align: 32, elements: !255)
!255 = !{!256, !261, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !254, file: !223, line: 215, baseType: !257, size: 128, align: 8)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 128, align: 8, elements: !259)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !232, line: 48, baseType: !241)
!259 = !{!260}
!260 = !DISubrange(count: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !254, file: !223, line: 217, baseType: !262, size: 128, align: 16)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 128, align: 16, elements: !242)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !254, file: !223, line: 218, baseType: !264, size: 128, align: 32)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, align: 32, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 4)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !245, file: !223, line: 260, baseType: !238, size: 32, align: 32, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !270, line: 171, baseType: !271)
!270 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !232, line: 55, baseType: !272)
!272 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !69, line: 87, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !69, line: 77, baseType: !66)
!278 = !{!279, !299, !300, !310, !311}
!279 = distinct !DIGlobalVariable(name: "defaultStatus", scope: !280, file: !281, line: 460, type: !297, isLocal: true, isDefinition: true, variable: i32* @GuestInfoAddIpAddress.defaultStatus)
!280 = distinct !DISubprogram(name: "GuestInfoAddIpAddress", scope: !281, file: !281, line: 434, type: !282, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!281 = !DIFile(filename: "nicInfo.c", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!282 = !DISubroutineType(types: !283)
!283 = !{!161, !151, !284, !178, !294, !296}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !287, line: 153, size: 128, align: 16, elements: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !286, file: !287, line: 155, baseType: !226, size: 16, align: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !286, file: !287, line: 156, baseType: !291, size: 112, align: 8, offset: 16)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 112, align: 8, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 14)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!298 = !{}
!299 = distinct !DIGlobalVariable(name: "defaultStatus", scope: !280, file: !281, line: 472, type: !297, isLocal: true, isDefinition: true, variable: i32* @GuestInfoAddIpAddress.defaultStatus.6)
!300 = distinct !DIGlobalVariable(name: "gIfacePrimaryPatterns", scope: !0, file: !281, line: 42, type: !301, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gIfacePrimaryPatterns)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !303, line: 39, baseType: !304)
!303 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !303, line: 53, size: 128, align: 64, elements: !305)
!305 = !{!306, !308}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !304, file: !303, line: 55, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !304, file: !303, line: 56, baseType: !309, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !69, line: 55, baseType: !110)
!310 = distinct !DIGlobalVariable(name: "gIfaceLowPriorityPatterns", scope: !0, file: !281, line: 43, type: !301, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gIfaceLowPriorityPatterns)
!311 = distinct !DIGlobalVariable(name: "gIfaceExcludePatterns", scope: !0, file: !281, line: 41, type: !301, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gIfaceExcludePatterns)
!312 = !{i32 2, !"Dwarf Version", i32 4}
!313 = !{i32 2, !"Debug Info Version", i32 3}
!314 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!315 = distinct !DISubprogram(name: "GuestInfo_SetIfacePrimaryList", scope: !281, file: !281, line: 117, type: !316, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!319 = !DILocalVariable(name: "list", arg: 1, scope: !315, file: !281, line: 117, type: !318)
!320 = !DIExpression()
!321 = !DILocation(line: 117, column: 38, scope: !315)
!322 = !DILocation(line: 119, column: 30, scope: !315)
!323 = !DILocation(line: 119, column: 4, scope: !315)
!324 = !DILocation(line: 120, column: 1, scope: !315)
!325 = distinct !DISubprogram(name: "GuestInfoResetPatternList", scope: !281, file: !281, line: 80, type: !326, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !318, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!329 = !DILocalVariable(name: "list", arg: 1, scope: !325, file: !281, line: 80, type: !318)
!330 = !DILocation(line: 80, column: 34, scope: !325)
!331 = !DILocalVariable(name: "pPatternList", arg: 2, scope: !325, file: !281, line: 81, type: !328)
!332 = !DILocation(line: 81, column: 39, scope: !325)
!333 = !DILocalVariable(name: "i", scope: !325, file: !281, line: 83, type: !309)
!334 = !DILocation(line: 83, column: 10, scope: !325)
!335 = !DILocation(line: 85, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !325, file: !281, line: 85, column: 8)
!337 = !DILocation(line: 85, column: 8, scope: !336)
!338 = !DILocation(line: 85, column: 22, scope: !336)
!339 = !DILocation(line: 85, column: 8, scope: !325)
!340 = !DILocation(line: 86, column: 25, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !281, line: 85, column: 30)
!342 = !DILocation(line: 86, column: 24, scope: !341)
!343 = !DILocation(line: 86, column: 7, scope: !341)
!344 = !DILocation(line: 87, column: 8, scope: !341)
!345 = !DILocation(line: 87, column: 21, scope: !341)
!346 = !DILocation(line: 88, column: 4, scope: !341)
!347 = !DILocation(line: 90, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !325, file: !281, line: 90, column: 8)
!349 = !DILocation(line: 90, column: 13, scope: !348)
!350 = !DILocation(line: 90, column: 8, scope: !325)
!351 = !DILocation(line: 92, column: 10, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !281, line: 90, column: 21)
!353 = !DILocation(line: 91, column: 8, scope: !352)
!354 = !DILocation(line: 91, column: 21, scope: !352)
!355 = !DILocation(line: 93, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !281, line: 93, column: 7)
!357 = !DILocation(line: 93, column: 12, scope: !356)
!358 = !DILocation(line: 93, column: 24, scope: !359)
!359 = !DILexicalBlockFile(scope: !360, file: !281, discriminator: 1)
!360 = distinct !DILexicalBlock(scope: !356, file: !281, line: 93, column: 7)
!361 = !DILocation(line: 93, column: 19, scope: !359)
!362 = !DILocation(line: 93, column: 27, scope: !359)
!363 = !DILocation(line: 93, column: 7, scope: !359)
!364 = !DILocation(line: 94, column: 19, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !281, line: 94, column: 14)
!366 = distinct !DILexicalBlock(scope: !360, file: !281, line: 93, column: 40)
!367 = !DILocation(line: 94, column: 14, scope: !365)
!368 = !DILocation(line: 94, column: 25, scope: !365)
!369 = !DILocation(line: 94, column: 14, scope: !366)
!370 = !DILocation(line: 95, column: 30, scope: !371)
!371 = distinct !DILexicalBlock(scope: !365, file: !281, line: 94, column: 34)
!372 = !DILocation(line: 95, column: 29, scope: !371)
!373 = !DILocation(line: 95, column: 68, scope: !371)
!374 = !DILocation(line: 95, column: 63, scope: !371)
!375 = !DILocation(line: 95, column: 44, scope: !371)
!376 = !DILocation(line: 95, column: 13, scope: !377)
!377 = !DILexicalBlockFile(scope: !371, file: !281, discriminator: 1)
!378 = !DILocation(line: 96, column: 10, scope: !371)
!379 = !DILocation(line: 97, column: 7, scope: !366)
!380 = !DILocation(line: 93, column: 36, scope: !381)
!381 = !DILexicalBlockFile(scope: !360, file: !281, discriminator: 2)
!382 = !DILocation(line: 93, column: 7, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 93, column: 7, scope: !352)
!385 = !DILocation(line: 98, column: 4, scope: !352)
!386 = !DILocation(line: 99, column: 1, scope: !325)
!387 = distinct !DISubprogram(name: "GuestInfo_SetIfaceLowPriorityList", scope: !281, file: !281, line: 138, type: !316, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!388 = !DILocalVariable(name: "list", arg: 1, scope: !387, file: !281, line: 138, type: !318)
!389 = !DILocation(line: 138, column: 42, scope: !387)
!390 = !DILocation(line: 140, column: 30, scope: !387)
!391 = !DILocation(line: 140, column: 4, scope: !387)
!392 = !DILocation(line: 141, column: 1, scope: !387)
!393 = distinct !DISubprogram(name: "GuestInfo_SetIfaceExcludeList", scope: !281, file: !281, line: 160, type: !316, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!394 = !DILocalVariable(name: "list", arg: 1, scope: !393, file: !281, line: 160, type: !318)
!395 = !DILocation(line: 160, column: 38, scope: !393)
!396 = !DILocation(line: 162, column: 30, scope: !393)
!397 = !DILocation(line: 162, column: 4, scope: !393)
!398 = !DILocation(line: 163, column: 1, scope: !393)
!399 = distinct !DISubprogram(name: "GuestInfo_IfaceIsExcluded", scope: !281, file: !281, line: 216, type: !400, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !115}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !270, line: 230, baseType: !70)
!403 = !DILocalVariable(name: "name", arg: 1, scope: !399, file: !281, line: 216, type: !115)
!404 = !DILocation(line: 216, column: 44, scope: !399)
!405 = !DILocation(line: 219, column: 11, scope: !399)
!406 = !DILocation(line: 219, column: 33, scope: !399)
!407 = !DILocation(line: 219, column: 40, scope: !399)
!408 = !DILocation(line: 220, column: 39, scope: !399)
!409 = !DILocation(line: 220, column: 45, scope: !399)
!410 = !DILocation(line: 220, column: 11, scope: !399)
!411 = !DILocation(line: 219, column: 40, scope: !412)
!412 = !DILexicalBlockFile(scope: !399, file: !281, discriminator: 1)
!413 = !DILocation(line: 219, column: 40, scope: !414)
!414 = !DILexicalBlockFile(scope: !399, file: !281, discriminator: 2)
!415 = !DILocation(line: 219, column: 11, scope: !414)
!416 = !DILocation(line: 219, column: 4, scope: !414)
!417 = distinct !DISubprogram(name: "GuestInfoMatchesPatternList", scope: !281, file: !281, line: 182, type: !418, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!418 = !DISubroutineType(types: !419)
!419 = !{!402, !115, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!422 = !DILocalVariable(name: "name", arg: 1, scope: !417, file: !281, line: 182, type: !115)
!423 = !DILocation(line: 182, column: 41, scope: !417)
!424 = !DILocalVariable(name: "patterns", arg: 2, scope: !417, file: !281, line: 183, type: !420)
!425 = !DILocation(line: 183, column: 46, scope: !417)
!426 = !DILocalVariable(name: "i", scope: !417, file: !281, line: 185, type: !77)
!427 = !DILocation(line: 185, column: 8, scope: !417)
!428 = !DILocation(line: 190, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !417, file: !281, line: 190, column: 4)
!430 = !DILocation(line: 190, column: 9, scope: !429)
!431 = !DILocation(line: 190, column: 16, scope: !432)
!432 = !DILexicalBlockFile(scope: !433, file: !281, discriminator: 1)
!433 = distinct !DILexicalBlock(scope: !429, file: !281, line: 190, column: 4)
!434 = !DILocation(line: 190, column: 20, scope: !432)
!435 = !DILocation(line: 190, column: 30, scope: !432)
!436 = !DILocation(line: 190, column: 18, scope: !432)
!437 = !DILocation(line: 190, column: 4, scope: !432)
!438 = !DILocation(line: 191, column: 54, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !281, line: 191, column: 11)
!440 = distinct !DILexicalBlock(scope: !433, file: !281, line: 190, column: 40)
!441 = !DILocation(line: 191, column: 34, scope: !439)
!442 = !DILocation(line: 191, column: 36, scope: !439)
!443 = !DILocation(line: 191, column: 47, scope: !439)
!444 = !DILocation(line: 192, column: 34, scope: !439)
!445 = !DILocation(line: 191, column: 11, scope: !439)
!446 = !DILocation(line: 191, column: 11, scope: !440)
!447 = !DILocation(line: 193, column: 103, scope: !448)
!448 = distinct !DILexicalBlock(scope: !439, file: !281, line: 192, column: 41)
!449 = !DILocation(line: 193, column: 109, scope: !448)
!450 = !DILocation(line: 193, column: 10, scope: !448)
!451 = !DILocation(line: 195, column: 10, scope: !448)
!452 = !DILocation(line: 197, column: 4, scope: !440)
!453 = !DILocation(line: 190, column: 36, scope: !454)
!454 = !DILexicalBlockFile(scope: !433, file: !281, discriminator: 2)
!455 = !DILocation(line: 190, column: 4, scope: !454)
!456 = distinct !{!456, !457}
!457 = !DILocation(line: 190, column: 4, scope: !417)
!458 = !DILocation(line: 198, column: 4, scope: !417)
!459 = !DILocation(line: 199, column: 1, scope: !417)
!460 = distinct !DISubprogram(name: "GuestInfo_IfaceGetPriority", scope: !281, file: !281, line: 240, type: !461, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !115}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoPriority", file: !4, line: 39, baseType: !3)
!464 = !DILocalVariable(name: "name", arg: 1, scope: !460, file: !281, line: 240, type: !115)
!465 = !DILocation(line: 240, column: 40, scope: !460)
!466 = !DILocation(line: 243, column: 77, scope: !460)
!467 = !DILocation(line: 243, column: 4, scope: !460)
!468 = !DILocation(line: 244, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !281, line: 244, column: 8)
!470 = !DILocation(line: 244, column: 30, scope: !469)
!471 = !DILocation(line: 244, column: 37, scope: !469)
!472 = !DILocation(line: 245, column: 36, scope: !469)
!473 = !DILocation(line: 245, column: 42, scope: !469)
!474 = !DILocation(line: 245, column: 8, scope: !469)
!475 = !DILocation(line: 244, column: 8, scope: !476)
!476 = !DILexicalBlockFile(scope: !460, file: !281, discriminator: 1)
!477 = !DILocation(line: 246, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !281, line: 245, column: 66)
!479 = !DILocation(line: 247, column: 15, scope: !480)
!480 = distinct !DILexicalBlock(scope: !469, file: !281, line: 247, column: 15)
!481 = !DILocation(line: 247, column: 41, scope: !480)
!482 = !DILocation(line: 247, column: 48, scope: !480)
!483 = !DILocation(line: 248, column: 43, scope: !480)
!484 = !DILocation(line: 248, column: 49, scope: !480)
!485 = !DILocation(line: 248, column: 15, scope: !480)
!486 = !DILocation(line: 247, column: 15, scope: !487)
!487 = !DILexicalBlockFile(scope: !469, file: !281, discriminator: 1)
!488 = !DILocation(line: 249, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !480, file: !281, line: 248, column: 77)
!490 = !DILocation(line: 251, column: 4, scope: !460)
!491 = !DILocation(line: 252, column: 1, scope: !460)
!492 = distinct !DISubprogram(name: "GuestInfo_GetFqdn", scope: !281, file: !281, line: 271, type: !493, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!493 = !DISubroutineType(types: !494)
!494 = !{!402, !77, !107}
!495 = !DILocalVariable(name: "outBufLen", arg: 1, scope: !492, file: !281, line: 271, type: !77)
!496 = !DILocation(line: 271, column: 23, scope: !492)
!497 = !DILocalVariable(name: "fqdn", arg: 2, scope: !492, file: !281, line: 272, type: !107)
!498 = !DILocation(line: 272, column: 24, scope: !492)
!499 = !DILocation(line: 274, column: 28, scope: !492)
!500 = !DILocation(line: 274, column: 39, scope: !492)
!501 = !DILocation(line: 274, column: 11, scope: !492)
!502 = !DILocation(line: 274, column: 4, scope: !492)
!503 = distinct !DISubprogram(name: "GuestInfo_GetNicInfo", scope: !281, file: !281, line: 298, type: !504, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!504 = !DISubroutineType(types: !505)
!505 = !{!402, !110, !110, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !23, line: 190, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !23, line: 176, size: 512, align: 64, elements: !510)
!510 = !{!511, !516, !533, !534, !535, !536}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !509, file: !23, line: 180, baseType: !512, size: 128, align: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !509, file: !23, line: 177, size: 128, align: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !512, file: !23, line: 178, baseType: !108, size: 32, align: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !512, file: !23, line: 179, baseType: !151, size: 64, align: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !509, file: !23, line: 184, baseType: !517, size: 128, align: 64, offset: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !509, file: !23, line: 181, size: 128, align: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !517, file: !23, line: 182, baseType: !108, size: 32, align: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !517, file: !23, line: 183, baseType: !521, size: 64, align: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !23, line: 154, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !23, line: 146, size: 448, align: 64, elements: !524)
!524 = !{!525, !526, !527, !528, !530, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !523, file: !23, line: 147, baseType: !166, size: 192, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !523, file: !23, line: 148, baseType: !178, size: 32, align: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !523, file: !23, line: 149, baseType: !199, size: 64, align: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !523, file: !23, line: 150, baseType: !529, size: 32, align: 32, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !270, line: 173, baseType: !238)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !523, file: !23, line: 151, baseType: !531, size: 32, align: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !23, line: 144, baseType: !48)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !523, file: !23, line: 152, baseType: !529, size: 32, align: 32, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !509, file: !23, line: 185, baseType: !186, size: 64, align: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !509, file: !23, line: 186, baseType: !206, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !509, file: !23, line: 187, baseType: !213, size: 64, align: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !509, file: !23, line: 188, baseType: !213, size: 64, align: 64, offset: 448)
!537 = !DILocalVariable(name: "maxIPv4Routes", arg: 1, scope: !503, file: !281, line: 298, type: !110)
!538 = !DILocation(line: 298, column: 35, scope: !503)
!539 = !DILocalVariable(name: "maxIPv6Routes", arg: 2, scope: !503, file: !281, line: 299, type: !110)
!540 = !DILocation(line: 299, column: 35, scope: !503)
!541 = !DILocalVariable(name: "nicInfo", arg: 3, scope: !503, file: !281, line: 300, type: !506)
!542 = !DILocation(line: 300, column: 34, scope: !503)
!543 = !DILocalVariable(name: "retval", scope: !503, file: !281, line: 302, type: !402)
!544 = !DILocation(line: 302, column: 9, scope: !503)
!545 = !DILocation(line: 304, column: 15, scope: !503)
!546 = !DILocation(line: 304, column: 5, scope: !503)
!547 = !DILocation(line: 304, column: 13, scope: !503)
!548 = !DILocation(line: 306, column: 33, scope: !503)
!549 = !DILocation(line: 306, column: 48, scope: !503)
!550 = !DILocation(line: 306, column: 64, scope: !503)
!551 = !DILocation(line: 306, column: 63, scope: !503)
!552 = !DILocation(line: 306, column: 13, scope: !503)
!553 = !DILocation(line: 306, column: 11, scope: !503)
!554 = !DILocation(line: 307, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !503, file: !281, line: 307, column: 8)
!556 = !DILocation(line: 307, column: 8, scope: !503)
!557 = !DILocation(line: 308, column: 30, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !281, line: 307, column: 17)
!559 = !DILocation(line: 308, column: 29, scope: !558)
!560 = !DILocation(line: 308, column: 7, scope: !558)
!561 = !DILocation(line: 309, column: 8, scope: !558)
!562 = !DILocation(line: 309, column: 16, scope: !558)
!563 = !DILocation(line: 310, column: 4, scope: !558)
!564 = !DILocation(line: 312, column: 11, scope: !503)
!565 = !DILocation(line: 312, column: 4, scope: !503)
!566 = distinct !DISubprogram(name: "GuestInfo_FreeNicInfo", scope: !281, file: !281, line: 330, type: !567, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !507}
!569 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !566, file: !281, line: 330, type: !507)
!570 = !DILocation(line: 330, column: 34, scope: !566)
!571 = !DILocation(line: 332, column: 8, scope: !572)
!572 = distinct !DILexicalBlock(scope: !566, file: !281, line: 332, column: 8)
!573 = !DILocation(line: 332, column: 16, scope: !572)
!574 = !DILocation(line: 332, column: 8, scope: !566)
!575 = !DILocation(line: 333, column: 53, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !281, line: 332, column: 24)
!577 = !DILocation(line: 333, column: 44, scope: !576)
!578 = !DILocation(line: 333, column: 7, scope: !576)
!579 = !DILocation(line: 334, column: 12, scope: !576)
!580 = !DILocation(line: 334, column: 7, scope: !576)
!581 = !DILocation(line: 335, column: 4, scope: !576)
!582 = !DILocation(line: 336, column: 1, scope: !566)
!583 = distinct !DISubprogram(name: "GuestInfo_GetPrimaryIP", scope: !281, file: !281, line: 354, type: !584, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!584 = !DISubroutineType(types: !585)
!585 = !{!107}
!586 = !DILocalVariable(name: "ipstr", scope: !583, file: !281, line: 356, type: !107)
!587 = !DILocation(line: 356, column: 10, scope: !583)
!588 = !DILocation(line: 356, column: 18, scope: !583)
!589 = !DILocation(line: 358, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !583, file: !281, line: 358, column: 8)
!591 = !DILocation(line: 358, column: 14, scope: !590)
!592 = !DILocation(line: 358, column: 8, scope: !583)
!593 = !DILocation(line: 359, column: 15, scope: !594)
!594 = distinct !DILexicalBlock(scope: !590, file: !281, line: 358, column: 22)
!595 = !DILocation(line: 359, column: 13, scope: !594)
!596 = !DILocation(line: 360, column: 4, scope: !594)
!597 = !DILocation(line: 362, column: 11, scope: !583)
!598 = !DILocation(line: 362, column: 4, scope: !583)
!599 = distinct !DISubprogram(name: "GuestInfoAddNicEntry", scope: !281, file: !281, line: 391, type: !600, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!600 = !DISubroutineType(types: !601)
!601 = !{!151, !507, !115, !186, !206}
!602 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !599, file: !281, line: 391, type: !507)
!603 = !DILocation(line: 391, column: 33, scope: !599)
!604 = !DILocalVariable(name: "macAddress", arg: 2, scope: !599, file: !281, line: 392, type: !115)
!605 = !DILocation(line: 392, column: 33, scope: !599)
!606 = !DILocalVariable(name: "dnsInfo", arg: 3, scope: !599, file: !281, line: 393, type: !186)
!607 = !DILocation(line: 393, column: 37, scope: !599)
!608 = !DILocalVariable(name: "winsInfo", arg: 4, scope: !599, file: !281, line: 394, type: !206)
!609 = !DILocation(line: 394, column: 38, scope: !599)
!610 = !DILocalVariable(name: "newNic", scope: !599, file: !281, line: 396, type: !151)
!611 = !DILocation(line: 396, column: 16, scope: !599)
!612 = !DILocation(line: 399, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !599, file: !281, line: 399, column: 8)
!614 = !DILocation(line: 399, column: 17, scope: !613)
!615 = !DILocation(line: 399, column: 22, scope: !613)
!616 = !DILocation(line: 399, column: 31, scope: !613)
!617 = !DILocation(line: 399, column: 8, scope: !599)
!618 = !DILocation(line: 400, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !281, line: 399, column: 38)
!620 = !DILocation(line: 402, column: 7, scope: !619)
!621 = !DILocation(line: 405, column: 81, scope: !599)
!622 = !DILocation(line: 405, column: 91, scope: !599)
!623 = !DILocation(line: 405, column: 96, scope: !599)
!624 = !DILocation(line: 405, column: 69, scope: !599)
!625 = !DILocation(line: 405, column: 108, scope: !599)
!626 = !DILocation(line: 405, column: 118, scope: !599)
!627 = !DILocation(line: 405, column: 123, scope: !599)
!628 = !DILocation(line: 405, column: 49, scope: !599)
!629 = !DILocation(line: 405, column: 13, scope: !599)
!630 = !DILocation(line: 405, column: 11, scope: !599)
!631 = !DILocation(line: 406, column: 30, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !281, line: 406, column: 10)
!633 = distinct !DILexicalBlock(scope: !599, file: !281, line: 406, column: 5)
!634 = !DILocation(line: 406, column: 28, scope: !632)
!635 = !DILocation(line: 406, column: 27, scope: !632)
!636 = !DILocation(line: 406, column: 10, scope: !632)
!637 = !DILocation(line: 406, column: 10, scope: !633)
!638 = !DILocation(line: 406, column: 46, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !281, discriminator: 1)
!640 = distinct !DILexicalBlock(scope: !632, file: !281, line: 406, column: 44)
!641 = !DILocation(line: 408, column: 42, scope: !599)
!642 = !DILocation(line: 408, column: 25, scope: !599)
!643 = !DILocation(line: 408, column: 4, scope: !599)
!644 = !DILocation(line: 408, column: 12, scope: !599)
!645 = !DILocation(line: 408, column: 23, scope: !599)
!646 = !DILocation(line: 409, column: 28, scope: !599)
!647 = !DILocation(line: 409, column: 4, scope: !599)
!648 = !DILocation(line: 409, column: 12, scope: !599)
!649 = !DILocation(line: 409, column: 26, scope: !599)
!650 = !DILocation(line: 410, column: 29, scope: !599)
!651 = !DILocation(line: 410, column: 4, scope: !599)
!652 = !DILocation(line: 410, column: 12, scope: !599)
!653 = !DILocation(line: 410, column: 27, scope: !599)
!654 = !DILocation(line: 412, column: 11, scope: !599)
!655 = !DILocation(line: 412, column: 4, scope: !599)
!656 = !DILocation(line: 413, column: 1, scope: !599)
!657 = !DILocalVariable(name: "nic", arg: 1, scope: !280, file: !281, line: 434, type: !151)
!658 = !DILocation(line: 434, column: 35, scope: !280)
!659 = !DILocalVariable(name: "sockAddr", arg: 2, scope: !280, file: !281, line: 435, type: !284)
!660 = !DILocation(line: 435, column: 46, scope: !280)
!661 = !DILocalVariable(name: "pfxLen", arg: 3, scope: !280, file: !281, line: 436, type: !178)
!662 = !DILocation(line: 436, column: 47, scope: !280)
!663 = !DILocalVariable(name: "origin", arg: 4, scope: !280, file: !281, line: 437, type: !294)
!664 = !DILocation(line: 437, column: 46, scope: !280)
!665 = !DILocalVariable(name: "status", arg: 5, scope: !280, file: !281, line: 438, type: !296)
!666 = !DILocation(line: 438, column: 46, scope: !280)
!667 = !DILocalVariable(name: "ip", scope: !280, file: !281, line: 440, type: !161)
!668 = !DILocation(line: 440, column: 20, scope: !280)
!669 = !DILocation(line: 445, column: 8, scope: !670)
!670 = distinct !DILexicalBlock(scope: !280, file: !281, line: 445, column: 8)
!671 = !DILocation(line: 445, column: 13, scope: !670)
!672 = !DILocation(line: 445, column: 17, scope: !670)
!673 = !DILocation(line: 445, column: 25, scope: !670)
!674 = !DILocation(line: 445, column: 8, scope: !280)
!675 = !DILocation(line: 446, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !281, line: 445, column: 34)
!677 = !DILocation(line: 448, column: 7, scope: !676)
!678 = !DILocation(line: 451, column: 71, scope: !280)
!679 = !DILocation(line: 451, column: 77, scope: !280)
!680 = !DILocation(line: 451, column: 81, scope: !280)
!681 = !DILocation(line: 451, column: 59, scope: !280)
!682 = !DILocation(line: 451, column: 92, scope: !280)
!683 = !DILocation(line: 451, column: 98, scope: !280)
!684 = !DILocation(line: 451, column: 102, scope: !280)
!685 = !DILocation(line: 451, column: 39, scope: !280)
!686 = !DILocation(line: 451, column: 9, scope: !280)
!687 = !DILocation(line: 451, column: 7, scope: !280)
!688 = !DILocation(line: 452, column: 30, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !281, line: 452, column: 10)
!690 = distinct !DILexicalBlock(scope: !280, file: !281, line: 452, column: 5)
!691 = !DILocation(line: 452, column: 28, scope: !689)
!692 = !DILocation(line: 452, column: 27, scope: !689)
!693 = !DILocation(line: 452, column: 10, scope: !689)
!694 = !DILocation(line: 452, column: 10, scope: !690)
!695 = !DILocation(line: 452, column: 42, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !281, discriminator: 1)
!697 = distinct !DILexicalBlock(scope: !689, file: !281, line: 452, column: 40)
!698 = !DILocation(line: 454, column: 4, scope: !280)
!699 = distinct !{!699, !698}
!700 = !DILocation(line: 454, column: 121, scope: !701)
!701 = !DILexicalBlockFile(scope: !702, file: !281, discriminator: 1)
!702 = distinct !DILexicalBlock(scope: !280, file: !281, line: 454, column: 7)
!703 = !DILocation(line: 455, column: 4, scope: !280)
!704 = distinct !{!704, !703}
!705 = !DILocation(line: 455, column: 121, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !281, discriminator: 1)
!707 = distinct !DILexicalBlock(scope: !280, file: !281, line: 455, column: 7)
!708 = !DILocation(line: 457, column: 12, scope: !280)
!709 = !DILocation(line: 457, column: 22, scope: !280)
!710 = !DILocation(line: 457, column: 4, scope: !280)
!711 = !DILocation(line: 462, column: 44, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !281, line: 459, column: 7)
!713 = distinct !DILexicalBlock(scope: !280, file: !281, line: 457, column: 33)
!714 = !DILocation(line: 462, column: 55, scope: !712)
!715 = !DILocation(line: 462, column: 59, scope: !712)
!716 = !DILocation(line: 462, column: 10, scope: !712)
!717 = !DILocation(line: 464, column: 38, scope: !712)
!718 = !DILocation(line: 464, column: 10, scope: !712)
!719 = !DILocation(line: 464, column: 14, scope: !712)
!720 = !DILocation(line: 464, column: 36, scope: !712)
!721 = !DILocation(line: 465, column: 32, scope: !712)
!722 = !DILocation(line: 465, column: 55, scope: !723)
!723 = !DILexicalBlockFile(scope: !712, file: !281, discriminator: 1)
!724 = !DILocation(line: 465, column: 41, scope: !723)
!725 = !DILocation(line: 465, column: 32, scope: !723)
!726 = !DILocation(line: 465, column: 32, scope: !727)
!727 = !DILexicalBlockFile(scope: !712, file: !281, discriminator: 2)
!728 = !DILocation(line: 465, column: 32, scope: !729)
!729 = !DILexicalBlockFile(scope: !712, file: !281, discriminator: 3)
!730 = !DILocation(line: 465, column: 10, scope: !729)
!731 = !DILocation(line: 465, column: 14, scope: !729)
!732 = !DILocation(line: 465, column: 30, scope: !729)
!733 = !DILocation(line: 466, column: 32, scope: !712)
!734 = !DILocation(line: 466, column: 55, scope: !723)
!735 = !DILocation(line: 466, column: 41, scope: !723)
!736 = !DILocation(line: 466, column: 32, scope: !723)
!737 = !DILocation(line: 467, column: 13, scope: !712)
!738 = !DILocation(line: 466, column: 32, scope: !727)
!739 = !DILocation(line: 466, column: 32, scope: !729)
!740 = !DILocation(line: 466, column: 10, scope: !729)
!741 = !DILocation(line: 466, column: 14, scope: !729)
!742 = !DILocation(line: 466, column: 30, scope: !729)
!743 = !DILocation(line: 469, column: 7, scope: !713)
!744 = !DILocation(line: 474, column: 44, scope: !745)
!745 = distinct !DILexicalBlock(scope: !713, file: !281, line: 471, column: 7)
!746 = !DILocation(line: 474, column: 55, scope: !745)
!747 = !DILocation(line: 474, column: 59, scope: !745)
!748 = !DILocation(line: 474, column: 10, scope: !745)
!749 = !DILocation(line: 476, column: 38, scope: !745)
!750 = !DILocation(line: 476, column: 10, scope: !745)
!751 = !DILocation(line: 476, column: 14, scope: !745)
!752 = !DILocation(line: 476, column: 36, scope: !745)
!753 = !DILocation(line: 477, column: 32, scope: !745)
!754 = !DILocation(line: 477, column: 55, scope: !755)
!755 = !DILexicalBlockFile(scope: !745, file: !281, discriminator: 1)
!756 = !DILocation(line: 477, column: 41, scope: !755)
!757 = !DILocation(line: 477, column: 32, scope: !755)
!758 = !DILocation(line: 477, column: 32, scope: !759)
!759 = !DILexicalBlockFile(scope: !745, file: !281, discriminator: 2)
!760 = !DILocation(line: 477, column: 32, scope: !761)
!761 = !DILexicalBlockFile(scope: !745, file: !281, discriminator: 3)
!762 = !DILocation(line: 477, column: 10, scope: !761)
!763 = !DILocation(line: 477, column: 14, scope: !761)
!764 = !DILocation(line: 477, column: 30, scope: !761)
!765 = !DILocation(line: 478, column: 32, scope: !745)
!766 = !DILocation(line: 478, column: 55, scope: !755)
!767 = !DILocation(line: 478, column: 41, scope: !755)
!768 = !DILocation(line: 478, column: 32, scope: !755)
!769 = !DILocation(line: 479, column: 13, scope: !745)
!770 = !DILocation(line: 478, column: 32, scope: !759)
!771 = !DILocation(line: 478, column: 32, scope: !761)
!772 = !DILocation(line: 478, column: 10, scope: !761)
!773 = !DILocation(line: 478, column: 14, scope: !761)
!774 = !DILocation(line: 478, column: 30, scope: !761)
!775 = !DILocation(line: 481, column: 7, scope: !713)
!776 = !DILocation(line: 483, column: 7, scope: !713)
!777 = !DILocation(line: 486, column: 11, scope: !280)
!778 = !DILocation(line: 486, column: 4, scope: !280)
!779 = !DILocation(line: 487, column: 1, scope: !280)
!780 = distinct !DISubprogram(name: "GuestInfoSockaddrToTypedIpAddress", scope: !281, file: !281, line: 506, type: !781, isLocal: false, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !284, !199}
!783 = !DILocalVariable(name: "sa", arg: 1, scope: !780, file: !281, line: 506, type: !284)
!784 = !DILocation(line: 506, column: 58, scope: !780)
!785 = !DILocalVariable(name: "typedIp", arg: 2, scope: !780, file: !281, line: 507, type: !199)
!786 = !DILocation(line: 507, column: 51, scope: !780)
!787 = !DILocalVariable(name: "sin", scope: !780, file: !281, line: 509, type: !221)
!788 = !DILocation(line: 509, column: 24, scope: !780)
!789 = !DILocation(line: 509, column: 52, scope: !780)
!790 = !DILocation(line: 509, column: 30, scope: !780)
!791 = !DILocalVariable(name: "sin6", scope: !780, file: !281, line: 510, type: !244)
!792 = !DILocation(line: 510, column: 25, scope: !780)
!793 = !DILocation(line: 510, column: 55, scope: !780)
!794 = !DILocation(line: 510, column: 32, scope: !780)
!795 = !DILocation(line: 512, column: 12, scope: !780)
!796 = !DILocation(line: 512, column: 16, scope: !780)
!797 = !DILocation(line: 512, column: 4, scope: !780)
!798 = !DILocation(line: 514, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !780, file: !281, line: 512, column: 27)
!800 = !DILocation(line: 514, column: 16, scope: !799)
!801 = !DILocation(line: 514, column: 34, scope: !799)
!802 = !DILocation(line: 515, column: 7, scope: !799)
!803 = distinct !{!803, !802}
!804 = !DILocation(line: 515, column: 14, scope: !805)
!805 = !DILexicalBlockFile(scope: !806, file: !281, discriminator: 1)
!806 = distinct !DILexicalBlock(scope: !799, file: !281, line: 515, column: 10)
!807 = !DILocation(line: 515, column: 23, scope: !805)
!808 = !DILocation(line: 515, column: 39, scope: !805)
!809 = !DILocation(line: 515, column: 55, scope: !805)
!810 = !DILocation(line: 515, column: 133, scope: !805)
!811 = !DILocation(line: 515, column: 90, scope: !805)
!812 = !DILocation(line: 515, column: 99, scope: !805)
!813 = !DILocation(line: 515, column: 115, scope: !805)
!814 = !DILocation(line: 515, column: 131, scope: !805)
!815 = !DILocation(line: 515, column: 192, scope: !805)
!816 = !DILocation(line: 515, column: 201, scope: !805)
!817 = !DILocation(line: 515, column: 217, scope: !805)
!818 = !DILocation(line: 515, column: 236, scope: !805)
!819 = !DILocation(line: 515, column: 241, scope: !805)
!820 = !DILocation(line: 515, column: 250, scope: !805)
!821 = !DILocation(line: 515, column: 183, scope: !805)
!822 = !DILocation(line: 515, column: 183, scope: !823)
!823 = !DILexicalBlockFile(scope: !805, file: !281, discriminator: 2)
!824 = !DILocation(line: 515, column: 291, scope: !805)
!825 = !DILocation(line: 518, column: 7, scope: !799)
!826 = !DILocation(line: 520, column: 7, scope: !799)
!827 = !DILocation(line: 520, column: 16, scope: !799)
!828 = !DILocation(line: 520, column: 34, scope: !799)
!829 = !DILocation(line: 521, column: 7, scope: !799)
!830 = distinct !{!830, !829}
!831 = !DILocation(line: 521, column: 14, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !281, discriminator: 1)
!833 = distinct !DILexicalBlock(scope: !799, file: !281, line: 521, column: 10)
!834 = !DILocation(line: 521, column: 23, scope: !832)
!835 = !DILocation(line: 521, column: 39, scope: !832)
!836 = !DILocation(line: 521, column: 55, scope: !832)
!837 = !DILocation(line: 521, column: 54, scope: !832)
!838 = !DILocation(line: 521, column: 11, scope: !832)
!839 = !DILocation(line: 521, column: 20, scope: !832)
!840 = !DILocation(line: 521, column: 36, scope: !832)
!841 = !DILocation(line: 521, column: 52, scope: !832)
!842 = !DILocation(line: 521, column: 29, scope: !832)
!843 = !DILocation(line: 521, column: 45, scope: !832)
!844 = !DILocation(line: 521, column: 64, scope: !832)
!845 = !DILocation(line: 521, column: 70, scope: !832)
!846 = !DILocation(line: 521, column: 6, scope: !832)
!847 = !DILocation(line: 521, column: 11, scope: !848)
!848 = !DILexicalBlockFile(scope: !832, file: !281, discriminator: 2)
!849 = !DILocation(line: 521, column: 10, scope: !832)
!850 = !DILocalVariable(name: "ip6_ll_test", scope: !851, file: !281, line: 543, type: !269)
!851 = distinct !DILexicalBlock(scope: !799, file: !281, line: 542, column: 7)
!852 = !DILocation(line: 543, column: 17, scope: !851)
!853 = !DILocalVariable(name: "ip6_ll_mask", scope: !851, file: !281, line: 544, type: !269)
!854 = !DILocation(line: 544, column: 17, scope: !851)
!855 = !DILocalVariable(name: "ip6", scope: !851, file: !281, line: 545, type: !268)
!856 = !DILocation(line: 545, column: 18, scope: !851)
!857 = !DILocation(line: 545, column: 35, scope: !851)
!858 = !DILocation(line: 545, column: 44, scope: !851)
!859 = !DILocation(line: 545, column: 58, scope: !851)
!860 = !DILocation(line: 545, column: 24, scope: !851)
!861 = !DILocation(line: 547, column: 16, scope: !862)
!862 = distinct !DILexicalBlock(scope: !851, file: !281, line: 547, column: 14)
!863 = !DILocation(line: 547, column: 15, scope: !862)
!864 = !DILocation(line: 547, column: 22, scope: !862)
!865 = !DILocation(line: 547, column: 20, scope: !862)
!866 = !DILocation(line: 547, column: 38, scope: !862)
!867 = !DILocation(line: 547, column: 35, scope: !862)
!868 = !DILocation(line: 547, column: 14, scope: !851)
!869 = !DILocation(line: 548, column: 21, scope: !870)
!870 = distinct !DILexicalBlock(scope: !862, file: !281, line: 547, column: 51)
!871 = !DILocation(line: 548, column: 14, scope: !870)
!872 = !DILocation(line: 548, column: 18, scope: !870)
!873 = !DILocation(line: 549, column: 10, scope: !870)
!874 = !DILocation(line: 552, column: 7, scope: !799)
!875 = !DILocation(line: 554, column: 7, scope: !799)
!876 = !DILocation(line: 556, column: 1, scope: !780)
!877 = distinct !DISubprogram(name: "Util_DupeThis", scope: !281, file: !281, line: 660, type: !878, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!878 = !DISubroutineType(types: !879)
!879 = !{!66, !880, !882}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !883, line: 216, baseType: !272)
!883 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line759")
!884 = !DILocalVariable(name: "source", arg: 1, scope: !877, file: !281, line: 660, type: !880)
!885 = !DILocation(line: 660, column: 27, scope: !877)
!886 = !DILocalVariable(name: "sourceSize", arg: 2, scope: !877, file: !281, line: 661, type: !882)
!887 = !DILocation(line: 661, column: 22, scope: !877)
!888 = !DILocalVariable(name: "dest", scope: !877, file: !281, line: 663, type: !66)
!889 = !DILocation(line: 663, column: 10, scope: !877)
!890 = !DILocation(line: 667, column: 28, scope: !877)
!891 = !DILocation(line: 667, column: 11, scope: !877)
!892 = !DILocation(line: 667, column: 9, scope: !877)
!893 = !DILocation(line: 668, column: 11, scope: !877)
!894 = !DILocation(line: 668, column: 17, scope: !877)
!895 = !DILocation(line: 668, column: 25, scope: !877)
!896 = !DILocation(line: 668, column: 4, scope: !877)
!897 = !DILocation(line: 670, column: 11, scope: !877)
!898 = !DILocation(line: 670, column: 4, scope: !877)
!899 = distinct !DISubprogram(name: "GuestInfoGetNicInfoIfIndex", scope: !281, file: !281, line: 604, type: !900, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!900 = !DISubroutineType(types: !901)
!901 = !{!402, !507, !77, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!903 = !DILocalVariable(name: "nicInfo", arg: 1, scope: !899, file: !281, line: 604, type: !507)
!904 = !DILocation(line: 604, column: 39, scope: !899)
!905 = !DILocalVariable(name: "ifIndex", arg: 2, scope: !899, file: !281, line: 605, type: !77)
!906 = !DILocation(line: 605, column: 32, scope: !899)
!907 = !DILocalVariable(name: "nicIfIndex", arg: 3, scope: !899, file: !281, line: 606, type: !902)
!908 = !DILocation(line: 606, column: 33, scope: !899)
!909 = !DILocalVariable(name: "hwAddrString", scope: !899, file: !281, line: 608, type: !910)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 144, align: 8, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 18)
!913 = !DILocation(line: 608, column: 9, scope: !899)
!914 = !DILocalVariable(name: "hwAddr", scope: !899, file: !281, line: 609, type: !915)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, align: 8, elements: !259)
!916 = !DILocation(line: 609, column: 18, scope: !899)
!917 = !DILocalVariable(name: "ifType", scope: !899, file: !281, line: 610, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "IanaIfType", file: !61, line: 52, baseType: !60)
!919 = !DILocation(line: 610, column: 15, scope: !899)
!920 = !DILocalVariable(name: "ret", scope: !899, file: !281, line: 611, type: !402)
!921 = !DILocation(line: 611, column: 9, scope: !899)
!922 = !DILocalVariable(name: "i", scope: !899, file: !281, line: 612, type: !108)
!923 = !DILocation(line: 612, column: 10, scope: !899)
!924 = !DILocation(line: 617, column: 35, scope: !925)
!925 = distinct !DILexicalBlock(scope: !899, file: !281, line: 617, column: 8)
!926 = !DILocation(line: 617, column: 44, scope: !925)
!927 = !DILocation(line: 617, column: 8, scope: !925)
!928 = !DILocation(line: 618, column: 44, scope: !925)
!929 = !DILocation(line: 618, column: 49, scope: !925)
!930 = !DILocation(line: 619, column: 8, scope: !925)
!931 = !DILocation(line: 619, column: 15, scope: !925)
!932 = !DILocation(line: 617, column: 8, scope: !933)
!933 = !DILexicalBlockFile(scope: !899, file: !281, discriminator: 1)
!934 = !DILocation(line: 620, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !925, file: !281, line: 619, column: 46)
!936 = !DILocation(line: 623, column: 16, scope: !899)
!937 = !DILocation(line: 625, column: 16, scope: !899)
!938 = !DILocation(line: 625, column: 27, scope: !899)
!939 = !DILocation(line: 625, column: 38, scope: !899)
!940 = !DILocation(line: 626, column: 16, scope: !899)
!941 = !DILocation(line: 626, column: 27, scope: !899)
!942 = !DILocation(line: 626, column: 38, scope: !899)
!943 = !DILocation(line: 623, column: 4, scope: !899)
!944 = !DILocation(line: 628, column: 13, scope: !945)
!945 = distinct !DILexicalBlock(scope: !899, file: !281, line: 628, column: 4)
!946 = !DILocation(line: 628, column: 9, scope: !945)
!947 = !DILocation(line: 628, column: 19, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !281, discriminator: 1)
!949 = distinct !DILexicalBlock(scope: !945, file: !281, line: 628, column: 4)
!950 = !DILocation(line: 628, column: 26, scope: !948)
!951 = !DILocation(line: 628, column: 36, scope: !948)
!952 = !DILocation(line: 628, column: 41, scope: !948)
!953 = !DILocation(line: 628, column: 22, scope: !948)
!954 = !DILocation(line: 628, column: 4, scope: !948)
!955 = !DILocalVariable(name: "nic", scope: !956, file: !281, line: 629, type: !151)
!956 = distinct !DILexicalBlock(scope: !949, file: !281, line: 628, column: 59)
!957 = !DILocation(line: 629, column: 19, scope: !956)
!958 = !DILocation(line: 629, column: 52, scope: !956)
!959 = !DILocation(line: 629, column: 27, scope: !956)
!960 = !DILocation(line: 629, column: 28, scope: !956)
!961 = !DILocation(line: 629, column: 38, scope: !956)
!962 = !DILocation(line: 629, column: 43, scope: !956)
!963 = !DILocation(line: 630, column: 23, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !281, line: 630, column: 11)
!965 = !DILocation(line: 630, column: 28, scope: !964)
!966 = !DILocation(line: 630, column: 40, scope: !964)
!967 = !DILocation(line: 630, column: 12, scope: !964)
!968 = !DILocation(line: 630, column: 11, scope: !956)
!969 = !DILocation(line: 631, column: 24, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !281, line: 630, column: 55)
!971 = !DILocation(line: 631, column: 11, scope: !970)
!972 = !DILocation(line: 631, column: 22, scope: !970)
!973 = !DILocation(line: 632, column: 14, scope: !970)
!974 = !DILocation(line: 633, column: 10, scope: !970)
!975 = !DILocation(line: 635, column: 4, scope: !956)
!976 = !DILocation(line: 628, column: 55, scope: !977)
!977 = !DILexicalBlockFile(scope: !949, file: !281, discriminator: 2)
!978 = !DILocation(line: 628, column: 4, scope: !977)
!979 = distinct !{!979, !980}
!980 = !DILocation(line: 628, column: 4, scope: !899)
!981 = !DILocation(line: 637, column: 11, scope: !899)
!982 = !DILocation(line: 637, column: 4, scope: !899)
!983 = !DILocation(line: 638, column: 1, scope: !899)
