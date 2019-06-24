; ModuleID = './line45-masks.o.i'
source_filename = "./line45-masks.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.mask_match = private unnamed_addr constant [11 x i8] c"mask_match\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"server == NULL || IS_SERVER(server)\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"mask != NULL && nick != NULL && nick != NULL && host != NULL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s!%s@%s\00", align 1
@__func__.mask_match_address = private unnamed_addr constant [19 x i8] c"mask_match_address\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mask != NULL && nick != NULL\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@__func__.masks_match = private unnamed_addr constant [12 x i8] c"masks_match\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"masks != NULL && nick != NULL && address != NULL\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind uwtable
define i32 @mask_match(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !409 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !414, metadata !415), !dbg !416
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !417, metadata !415), !dbg !418
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !419, metadata !415), !dbg !420
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !421, metadata !415), !dbg !422
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !423, metadata !415), !dbg !424
  call void @llvm.dbg.declare(metadata i8** %12, metadata !425, metadata !415), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %13, metadata !427, metadata !415), !dbg !428
  call void @llvm.dbg.declare(metadata i32* %14, metadata !429, metadata !415), !dbg !430
  br label %15, !dbg !431, !llvm.loop !432

; <label>:15:                                     ; preds = %5
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !433
  %17 = icmp eq %struct._SERVER_REC* %16, null, !dbg !437
  br i1 %17, label %26, label %18, !dbg !438

; <label>:18:                                     ; preds = %15
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !439
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !439
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !441
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !442
  %23 = icmp ne %struct._SERVER_REC* %22, null, !dbg !442
  br i1 %23, label %24, label %25, !dbg !443

; <label>:24:                                     ; preds = %18
  br i1 false, label %27, label %26, !dbg !444

; <label>:25:                                     ; preds = %18
  br i1 false, label %26, label %27, !dbg !446

; <label>:26:                                     ; preds = %25, %24, %15
  br label %28, !dbg !448

; <label>:27:                                     ; preds = %25, %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.mask_match, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)), !dbg !451
  store i32 0, i32* %6, align 4, !dbg !454
  br label %70, !dbg !454

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !455

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !457, !llvm.loop !458

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %8, align 8, !dbg !459
  %32 = icmp ne i8* %31, null, !dbg !463
  br i1 %32, label %33, label %43, !dbg !464

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %9, align 8, !dbg !465
  %35 = icmp ne i8* %34, null, !dbg !467
  br i1 %35, label %36, label %43, !dbg !468

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !469
  %38 = icmp ne i8* %37, null, !dbg !471
  br i1 %38, label %39, label %43, !dbg !472

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** %11, align 8, !dbg !473
  %41 = icmp ne i8* %40, null, !dbg !475
  br i1 %41, label %42, label %43, !dbg !476

; <label>:42:                                     ; preds = %39
  br label %44, !dbg !477

; <label>:43:                                     ; preds = %39, %36, %33, %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.mask_match, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0)), !dbg !480
  store i32 0, i32* %6, align 4, !dbg !483
  br label %70, !dbg !483

; <label>:44:                                     ; preds = %42
  br label %45, !dbg !484

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %8, align 8, !dbg !486
  %47 = call i32 @check_address(i8* %46, i32* %14), !dbg !487
  %48 = icmp ne i32 %47, 0, !dbg !487
  br i1 %48, label %51, label %49, !dbg !488

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %9, align 8, !dbg !489
  br label %56, !dbg !491

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %9, align 8, !dbg !492
  %53 = load i8*, i8** %10, align 8, !dbg !493
  %54 = load i8*, i8** %11, align 8, !dbg !494
  %55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %52, i8* %53, i8* %54), !dbg !495
  br label %56, !dbg !496

; <label>:56:                                     ; preds = %51, %49
  %57 = phi i8* [ %50, %49 ], [ %55, %51 ], !dbg !498
  store i8* %57, i8** %12, align 8, !dbg !500
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !501
  %59 = load i8*, i8** %8, align 8, !dbg !502
  %60 = load i8*, i8** %12, align 8, !dbg !503
  %61 = load i32, i32* %14, align 4, !dbg !504
  %62 = call i32 @check_mask(%struct._SERVER_REC* %58, i8* %59, i8* %60, i32 %61), !dbg !505
  store i32 %62, i32* %13, align 4, !dbg !506
  %63 = load i8*, i8** %12, align 8, !dbg !507
  %64 = load i8*, i8** %9, align 8, !dbg !509
  %65 = icmp ne i8* %63, %64, !dbg !510
  br i1 %65, label %66, label %68, !dbg !511

; <label>:66:                                     ; preds = %56
  %67 = load i8*, i8** %12, align 8, !dbg !512
  call void @g_free(i8* %67), !dbg !514
  br label %68, !dbg !514

; <label>:68:                                     ; preds = %66, %56
  %69 = load i32, i32* %13, align 4, !dbg !515
  store i32 %69, i32* %6, align 4, !dbg !516
  br label %70, !dbg !516

; <label>:70:                                     ; preds = %68, %43, %27
  %71 = load i32, i32* %6, align 4, !dbg !517
  ret i32 %71, !dbg !517
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_address(i8*, i32*) #0 !dbg !518 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !522, metadata !415), !dbg !523
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !524, metadata !415), !dbg !525
  call void @llvm.dbg.declare(metadata i32* %6, metadata !526, metadata !415), !dbg !527
  %7 = load i32*, i32** %5, align 8, !dbg !528
  store i32 0, i32* %7, align 4, !dbg !529
  store i32 0, i32* %6, align 4, !dbg !530
  br label %8, !dbg !531

; <label>:8:                                      ; preds = %40, %2
  %9 = load i8*, i8** %4, align 8, !dbg !532
  %10 = load i8, i8* %9, align 1, !dbg !534
  %11 = sext i8 %10 to i32, !dbg !534
  %12 = icmp ne i32 %11, 0, !dbg !535
  br i1 %12, label %13, label %43, !dbg !536

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %4, align 8, !dbg !537
  %15 = load i8, i8* %14, align 1, !dbg !540
  %16 = sext i8 %15 to i32, !dbg !540
  %17 = icmp eq i32 %16, 33, !dbg !541
  br i1 %17, label %18, label %24, !dbg !542

; <label>:18:                                     ; preds = %13
  %19 = load i32*, i32** %5, align 8, !dbg !543
  %20 = load i32, i32* %19, align 4, !dbg !546
  %21 = icmp ne i32 %20, 0, !dbg !546
  br i1 %21, label %22, label %23, !dbg !547

; <label>:22:                                     ; preds = %18
  store i32 1, i32* %3, align 4, !dbg !548
  br label %45, !dbg !548

; <label>:23:                                     ; preds = %18
  store i32 1, i32* %6, align 4, !dbg !550
  br label %24, !dbg !551

; <label>:24:                                     ; preds = %23, %13
  %25 = load i8*, i8** %4, align 8, !dbg !552
  %26 = load i8, i8* %25, align 1, !dbg !554
  %27 = sext i8 %26 to i32, !dbg !554
  %28 = icmp eq i32 %27, 63, !dbg !555
  br i1 %28, label %34, label %29, !dbg !556

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %4, align 8, !dbg !557
  %31 = load i8, i8* %30, align 1, !dbg !559
  %32 = sext i8 %31 to i32, !dbg !559
  %33 = icmp eq i32 %32, 42, !dbg !560
  br i1 %33, label %34, label %40, !dbg !561

; <label>:34:                                     ; preds = %29, %24
  %35 = load i32*, i32** %5, align 8, !dbg !562
  store i32 1, i32* %35, align 4, !dbg !564
  %36 = load i32, i32* %6, align 4, !dbg !565
  %37 = icmp ne i32 %36, 0, !dbg !565
  br i1 %37, label %38, label %39, !dbg !567

; <label>:38:                                     ; preds = %34
  store i32 1, i32* %3, align 4, !dbg !568
  br label %45, !dbg !568

; <label>:39:                                     ; preds = %34
  br label %40, !dbg !570

; <label>:40:                                     ; preds = %39, %29
  %41 = load i8*, i8** %4, align 8, !dbg !571
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !571
  store i8* %42, i8** %4, align 8, !dbg !571
  br label %8, !dbg !572, !llvm.loop !574

; <label>:43:                                     ; preds = %8
  %44 = load i32, i32* %6, align 4, !dbg !575
  store i32 %44, i32* %3, align 4, !dbg !576
  br label %45, !dbg !576

; <label>:45:                                     ; preds = %43, %38, %22
  %46 = load i32, i32* %3, align 4, !dbg !577
  ret i32 %46, !dbg !577
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_mask(%struct._SERVER_REC*, i8*, i8*, i32) #0 !dbg !578 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !581, metadata !415), !dbg !582
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !583, metadata !415), !dbg !584
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !585, metadata !415), !dbg !586
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !587, metadata !415), !dbg !588
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !589
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !591
  br i1 %11, label %12, label %24, !dbg !592

; <label>:12:                                     ; preds = %4
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !593
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 33, !dbg !595
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8, !dbg !595
  %16 = icmp ne i32 (i8*, i8*)* %15, null, !dbg !596
  br i1 %16, label %17, label %24, !dbg !597

; <label>:17:                                     ; preds = %12
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !598
  %19 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %18, i32 0, i32 33, !dbg !600
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %19, align 8, !dbg !600
  %21 = load i8*, i8** %7, align 8, !dbg !601
  %22 = load i8*, i8** %8, align 8, !dbg !602
  %23 = call i32 %20(i8* %21, i8* %22), !dbg !598
  store i32 %23, i32* %5, align 4, !dbg !603
  br label %39, !dbg !603

; <label>:24:                                     ; preds = %12, %4
  %25 = load i32, i32* %9, align 4, !dbg !604
  %26 = icmp ne i32 %25, 0, !dbg !604
  br i1 %26, label %27, label %31, !dbg !604

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %7, align 8, !dbg !605
  %29 = load i8*, i8** %8, align 8, !dbg !607
  %30 = call i32 @match_wildcards(i8* %28, i8* %29), !dbg !608
  br label %37, !dbg !609

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %7, align 8, !dbg !610
  %33 = load i8*, i8** %8, align 8, !dbg !611
  %34 = call i32 @g_ascii_strcasecmp(i8* %32, i8* %33), !dbg !612
  %35 = icmp eq i32 %34, 0, !dbg !613
  %36 = zext i1 %35 to i32, !dbg !613
  br label %37, !dbg !614

; <label>:37:                                     ; preds = %31, %27
  %38 = phi i32 [ %30, %27 ], [ %36, %31 ], !dbg !616
  store i32 %38, i32* %5, align 4, !dbg !618
  br label %39, !dbg !618

; <label>:39:                                     ; preds = %37, %17
  %40 = load i32, i32* %5, align 4, !dbg !619
  ret i32 %40, !dbg !619
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @mask_match_address(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !620 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !623, metadata !415), !dbg !624
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !625, metadata !415), !dbg !626
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !627, metadata !415), !dbg !628
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !629, metadata !415), !dbg !630
  call void @llvm.dbg.declare(metadata i8** %10, metadata !631, metadata !415), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %11, metadata !633, metadata !415), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %12, metadata !635, metadata !415), !dbg !636
  br label %13, !dbg !637, !llvm.loop !638

; <label>:13:                                     ; preds = %4
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !639
  %15 = icmp eq %struct._SERVER_REC* %14, null, !dbg !643
  br i1 %15, label %24, label %16, !dbg !644

; <label>:16:                                     ; preds = %13
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !645
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !645
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !647
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !648
  %21 = icmp ne %struct._SERVER_REC* %20, null, !dbg !648
  br i1 %21, label %22, label %23, !dbg !649

; <label>:22:                                     ; preds = %16
  br i1 false, label %25, label %24, !dbg !650

; <label>:23:                                     ; preds = %16
  br i1 false, label %24, label %25, !dbg !652

; <label>:24:                                     ; preds = %23, %22, %13
  br label %26, !dbg !654

; <label>:25:                                     ; preds = %23, %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mask_match_address, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)), !dbg !657
  store i32 0, i32* %5, align 4, !dbg !660
  br label %65, !dbg !660

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !661

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !663, !llvm.loop !664

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %7, align 8, !dbg !665
  %30 = icmp ne i8* %29, null, !dbg !669
  br i1 %30, label %31, label %35, !dbg !670

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %8, align 8, !dbg !671
  %33 = icmp ne i8* %32, null, !dbg !673
  br i1 %33, label %34, label %35, !dbg !674

; <label>:34:                                     ; preds = %31
  br label %36, !dbg !675

; <label>:35:                                     ; preds = %31, %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.mask_match_address, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)), !dbg !678
  store i32 0, i32* %5, align 4, !dbg !681
  br label %65, !dbg !681

; <label>:36:                                     ; preds = %34
  br label %37, !dbg !682

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %9, align 8, !dbg !684
  %39 = icmp eq i8* %38, null, !dbg !686
  br i1 %39, label %40, label %41, !dbg !687

; <label>:40:                                     ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %9, align 8, !dbg !688
  br label %41, !dbg !690

; <label>:41:                                     ; preds = %40, %37
  %42 = load i8*, i8** %7, align 8, !dbg !691
  %43 = call i32 @check_address(i8* %42, i32* %12), !dbg !692
  %44 = icmp ne i32 %43, 0, !dbg !692
  br i1 %44, label %47, label %45, !dbg !693

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %8, align 8, !dbg !694
  br label %51, !dbg !696

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %8, align 8, !dbg !697
  %49 = load i8*, i8** %9, align 8, !dbg !698
  %50 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %48, i8* %49), !dbg !699
  br label %51, !dbg !700

; <label>:51:                                     ; preds = %47, %45
  %52 = phi i8* [ %46, %45 ], [ %50, %47 ], !dbg !702
  store i8* %52, i8** %10, align 8, !dbg !704
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !705
  %54 = load i8*, i8** %7, align 8, !dbg !706
  %55 = load i8*, i8** %10, align 8, !dbg !707
  %56 = load i32, i32* %12, align 4, !dbg !708
  %57 = call i32 @check_mask(%struct._SERVER_REC* %53, i8* %54, i8* %55, i32 %56), !dbg !709
  store i32 %57, i32* %11, align 4, !dbg !710
  %58 = load i8*, i8** %10, align 8, !dbg !711
  %59 = load i8*, i8** %8, align 8, !dbg !713
  %60 = icmp ne i8* %58, %59, !dbg !714
  br i1 %60, label %61, label %63, !dbg !715

; <label>:61:                                     ; preds = %51
  %62 = load i8*, i8** %10, align 8, !dbg !716
  call void @g_free(i8* %62), !dbg !718
  br label %63, !dbg !718

; <label>:63:                                     ; preds = %61, %51
  %64 = load i32, i32* %11, align 4, !dbg !719
  store i32 %64, i32* %5, align 4, !dbg !720
  br label %65, !dbg !720

; <label>:65:                                     ; preds = %63, %35, %25
  %66 = load i32, i32* %5, align 4, !dbg !721
  ret i32 %66, !dbg !721
}

; Function Attrs: nounwind uwtable
define i32 @masks_match(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !722 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !723, metadata !415), !dbg !724
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !725, metadata !415), !dbg !726
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !727, metadata !415), !dbg !728
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !729, metadata !415), !dbg !730
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %10, metadata !731, metadata !415), !dbg !732
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !733, metadata !415), !dbg !734
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !735, metadata !415), !dbg !736
  call void @llvm.dbg.declare(metadata i8** %13, metadata !737, metadata !415), !dbg !738
  call void @llvm.dbg.declare(metadata i32* %14, metadata !739, metadata !415), !dbg !740
  br label %15, !dbg !741, !llvm.loop !742

; <label>:15:                                     ; preds = %4
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !743
  %17 = icmp eq %struct._SERVER_REC* %16, null, !dbg !747
  br i1 %17, label %26, label %18, !dbg !748

; <label>:18:                                     ; preds = %15
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !749
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !749
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !751
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !752
  %23 = icmp ne %struct._SERVER_REC* %22, null, !dbg !752
  br i1 %23, label %24, label %25, !dbg !753

; <label>:24:                                     ; preds = %18
  br i1 false, label %27, label %26, !dbg !754

; <label>:25:                                     ; preds = %18
  br i1 false, label %26, label %27, !dbg !756

; <label>:26:                                     ; preds = %25, %24, %15
  br label %28, !dbg !758

; <label>:27:                                     ; preds = %25, %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.masks_match, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)), !dbg !761
  store i32 0, i32* %5, align 4, !dbg !764
  br label %96, !dbg !764

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !765

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !767, !llvm.loop !768

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %7, align 8, !dbg !769
  %32 = icmp ne i8* %31, null, !dbg !773
  br i1 %32, label %33, label %40, !dbg !774

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %8, align 8, !dbg !775
  %35 = icmp ne i8* %34, null, !dbg !777
  br i1 %35, label %36, label %40, !dbg !778

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !779
  %38 = icmp ne i8* %37, null, !dbg !781
  br i1 %38, label %39, label %40, !dbg !782

; <label>:39:                                     ; preds = %36
  br label %41, !dbg !783

; <label>:40:                                     ; preds = %36, %33, %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.masks_match, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)), !dbg !786
  store i32 0, i32* %5, align 4, !dbg !789
  br label %96, !dbg !789

; <label>:41:                                     ; preds = %39
  br label %42, !dbg !790

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %7, align 8, !dbg !792
  %44 = load i8, i8* %43, align 1, !dbg !794
  %45 = sext i8 %44 to i32, !dbg !794
  %46 = icmp eq i32 %45, 0, !dbg !795
  br i1 %46, label %47, label %48, !dbg !796

; <label>:47:                                     ; preds = %42
  store i32 0, i32* %5, align 4, !dbg !797
  br label %96, !dbg !797

; <label>:48:                                     ; preds = %42
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !798
  %50 = icmp ne %struct._SERVER_REC* %49, null, !dbg !799
  br i1 %50, label %51, label %60, !dbg !800

; <label>:51:                                     ; preds = %48
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !801
  %53 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %52, i32 0, i32 33, !dbg !803
  %54 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %53, align 8, !dbg !803
  %55 = icmp ne i32 (i8*, i8*)* %54, null, !dbg !804
  br i1 %55, label %56, label %60, !dbg !805

; <label>:56:                                     ; preds = %51
  %57 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !806
  %58 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %57, i32 0, i32 33, !dbg !807
  %59 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %58, align 8, !dbg !807
  br label %61, !dbg !808

; <label>:60:                                     ; preds = %51, %48
  br label %61, !dbg !810

; <label>:61:                                     ; preds = %60, %56
  %62 = phi i32 (i8*, i8*)* [ %59, %56 ], [ @match_wildcards, %60 ], !dbg !812
  store i32 (i8*, i8*)* %62, i32 (i8*, i8*)** %10, align 8, !dbg !814
  store i32 0, i32* %14, align 4, !dbg !815
  %63 = load i8*, i8** %8, align 8, !dbg !816
  %64 = load i8*, i8** %9, align 8, !dbg !817
  %65 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %63, i8* %64), !dbg !818
  store i8* %65, i8** %13, align 8, !dbg !819
  %66 = load i8*, i8** %7, align 8, !dbg !820
  %67 = call noalias i8** @g_strsplit(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 -1), !dbg !821
  store i8** %67, i8*** %11, align 8, !dbg !822
  %68 = load i8**, i8*** %11, align 8, !dbg !823
  store i8** %68, i8*** %12, align 8, !dbg !825
  br label %69, !dbg !826

; <label>:69:                                     ; preds = %89, %61
  %70 = load i8**, i8*** %12, align 8, !dbg !827
  %71 = load i8*, i8** %70, align 8, !dbg !830
  %72 = icmp ne i8* %71, null, !dbg !831
  br i1 %72, label %73, label %92, !dbg !832

; <label>:73:                                     ; preds = %69
  %74 = load i8**, i8*** %12, align 8, !dbg !833
  %75 = load i8*, i8** %74, align 8, !dbg !836
  %76 = load i8*, i8** %8, align 8, !dbg !837
  %77 = call i32 @g_ascii_strcasecmp(i8* %75, i8* %76), !dbg !838
  %78 = icmp eq i32 %77, 0, !dbg !839
  br i1 %78, label %79, label %80, !dbg !840

; <label>:79:                                     ; preds = %73
  store i32 1, i32* %14, align 4, !dbg !841
  br label %92, !dbg !843

; <label>:80:                                     ; preds = %73
  %81 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8, !dbg !844
  %82 = load i8**, i8*** %12, align 8, !dbg !846
  %83 = load i8*, i8** %82, align 8, !dbg !847
  %84 = load i8*, i8** %13, align 8, !dbg !848
  %85 = call i32 %81(i8* %83, i8* %84), !dbg !844
  %86 = icmp ne i32 %85, 0, !dbg !844
  br i1 %86, label %87, label %88, !dbg !849

; <label>:87:                                     ; preds = %80
  store i32 1, i32* %14, align 4, !dbg !850
  br label %92, !dbg !852

; <label>:88:                                     ; preds = %80
  br label %89, !dbg !853

; <label>:89:                                     ; preds = %88
  %90 = load i8**, i8*** %12, align 8, !dbg !854
  %91 = getelementptr inbounds i8*, i8** %90, i32 1, !dbg !854
  store i8** %91, i8*** %12, align 8, !dbg !854
  br label %69, !dbg !856, !llvm.loop !857

; <label>:92:                                     ; preds = %87, %79, %69
  %93 = load i8**, i8*** %11, align 8, !dbg !859
  call void @g_strfreev(i8** %93), !dbg !860
  %94 = load i8*, i8** %13, align 8, !dbg !861
  call void @g_free(i8* %94), !dbg !862
  %95 = load i32, i32* %14, align 4, !dbg !863
  store i32 %95, i32* %5, align 4, !dbg !864
  br label %96, !dbg !864

; <label>:96:                                     ; preds = %92, %47, %40, %27
  %97 = load i32, i32* %5, align 4, !dbg !865
  ret i32 %97, !dbg !865
}

declare i32 @match_wildcards(i8*, i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare void @g_strfreev(i8**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!406, !407}
!llvm.ident = !{!408}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line45-masks.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !{!36, !37, !133, !364, !58}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !39, line: 107, baseType: !40)
!39 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !41, line: 30, size: 2240, align: 64, elements: !42)
!41 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!42 = !{!43, !46, !47, !48, !309, !314, !315, !316, !317, !318, !319, !320, !321, !322, !326, !327, !331, !332, !333, !337, !342, !343, !344, !345, !346, !347, !348, !349, !356, !357, !358, !359, !360, !366, !370, !374, !378, !382, !387, !394, !401, !405}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !44, line: 3, baseType: !45, size: 32, align: 32)
!44 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !40, file: !44, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !40, file: !44, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !40, file: !44, line: 8, baseType: !49, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !39, line: 113, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !41, line: 25, size: 1920, align: 64, elements: !52)
!52 = !{!53, !55, !56, !57, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !54, line: 3, baseType: !45, size: 32, align: 32)
!54 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !51, file: !54, line: 4, baseType: !45, size: 32, align: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !51, file: !54, line: 6, baseType: !45, size: 32, align: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !51, file: !54, line: 9, baseType: !58, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !51, file: !54, line: 10, baseType: !45, size: 32, align: 32, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !51, file: !54, line: 11, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !51, file: !54, line: 13, baseType: !65, size: 16, align: 16, offset: 448)
!65 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !51, file: !54, line: 14, baseType: !58, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !54, line: 15, baseType: !58, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !51, file: !54, line: 16, baseType: !45, size: 32, align: 32, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !51, file: !54, line: 17, baseType: !58, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !51, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !39, line: 99, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !74, line: 22, size: 160, align: 32, elements: !75)
!74 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !73, file: !74, line: 23, baseType: !65, size: 16, align: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !73, file: !74, line: 24, baseType: !78, size: 128, align: 32, offset: 32)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !79, line: 211, size: 128, align: 32, elements: !80)
!79 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !78, file: !79, line: 220, baseType: !82, size: 128, align: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !79, line: 213, size: 128, align: 32, elements: !83)
!83 = !{!84, !91, !96}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !82, file: !79, line: 215, baseType: !85, size: 128, align: 8)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, align: 8, elements: !89)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !87, line: 48, baseType: !88)
!87 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!89 = !{!90}
!90 = !DISubrange(count: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !82, file: !79, line: 217, baseType: !92, size: 128, align: 16)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, align: 16, elements: !94)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !87, line: 49, baseType: !65)
!94 = !{!95}
!95 = !DISubrange(count: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !82, file: !79, line: 218, baseType: !97, size: 128, align: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, align: 32, elements: !100)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 51, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !51, file: !54, line: 19, baseType: !71, size: 64, align: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !51, file: !54, line: 21, baseType: !58, size: 64, align: 64, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !51, file: !54, line: 22, baseType: !58, size: 64, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !51, file: !54, line: 23, baseType: !58, size: 64, align: 64, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !51, file: !54, line: 24, baseType: !58, size: 64, align: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !51, file: !54, line: 26, baseType: !58, size: 64, align: 64, offset: 1152)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !51, file: !54, line: 27, baseType: !58, size: 64, align: 64, offset: 1216)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !51, file: !54, line: 28, baseType: !58, size: 64, align: 64, offset: 1280)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !51, file: !54, line: 29, baseType: !58, size: 64, align: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !51, file: !54, line: 30, baseType: !58, size: 64, align: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !51, file: !54, line: 31, baseType: !58, size: 64, align: 64, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !51, file: !54, line: 32, baseType: !58, size: 64, align: 64, offset: 1536)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !51, file: !54, line: 33, baseType: !58, size: 64, align: 64, offset: 1600)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !51, file: !54, line: 35, baseType: !116, size: 64, align: 64, offset: 1664)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !119)
!119 = !{!120, !123, !266, !267, !272, !273, !274, !275, !276, !285, !286, !287, !291, !292, !293, !294, !295, !296, !297, !298}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !118, file: !4, line: 100, baseType: !121, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !122, line: 49, baseType: !45)
!122 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !118, file: !4, line: 101, baseType: !124, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !127)
!127 = !{!128, !151, !157, !164, !168, !253, !257, !262}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !126, file: !4, line: 133, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !116, !133, !135, !138, !139}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !122, line: 46, baseType: !59)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !136, line: 66, baseType: !137)
!136 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !142, line: 42, baseType: !143)
!142 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !142, line: 44, size: 128, align: 64, elements: !144)
!144 = !{!145, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !143, file: !142, line: 46, baseType: !146, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !147, line: 36, baseType: !148)
!147 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !136, line: 45, baseType: !99)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !143, file: !142, line: 47, baseType: !121, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !143, file: !142, line: 48, baseType: !133, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !126, file: !4, line: 138, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!132, !116, !155, !135, !138, !139}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !126, file: !4, line: 143, baseType: !158, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!132, !116, !161, !163, !139}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !136, line: 51, baseType: !162)
!162 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !126, file: !4, line: 147, baseType: !165, size: 64, align: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!132, !116, !139}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !126, file: !4, line: 149, baseType: !169, size: 64, align: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !116, !252}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !175)
!175 = !{!176, !178, !199, !228, !230, !234, !235, !236, !237, !245, !246, !247, !248}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !174, file: !16, line: 174, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !122, line: 77, baseType: !36)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !174, file: !16, line: 175, baseType: !179, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !182)
!182 = !{!183, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !181, file: !16, line: 198, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !177}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !181, file: !16, line: 199, baseType: !184, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !181, file: !16, line: 200, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !177, !172, !192, !198}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !177}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !122, line: 50, baseType: !121)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !174, file: !16, line: 177, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !204)
!204 = !{!205, !210, !214, !218, !222, !223}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !203, file: !16, line: 216, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!197, !172, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !203, file: !16, line: 218, baseType: !211, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!197, !172}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !203, file: !16, line: 219, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!197, !172, !193, !177}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !203, file: !16, line: 222, baseType: !219, size: 64, align: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !172}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !203, file: !16, line: 226, baseType: !193, size: 64, align: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !203, file: !16, line: 227, baseType: !224, size: 64, align: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !174, file: !16, line: 178, baseType: !229, size: 32, align: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !122, line: 55, baseType: !99)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !174, file: !16, line: 180, baseType: !231, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !174, file: !16, line: 182, baseType: !121, size: 32, align: 32, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !16, line: 183, baseType: !229, size: 32, align: 32, offset: 352)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !174, file: !16, line: 184, baseType: !229, size: 32, align: 32, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !174, file: !16, line: 186, baseType: !238, size: 64, align: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !240, line: 37, baseType: !241)
!240 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !240, line: 39, size: 128, align: 64, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !241, file: !240, line: 41, baseType: !177, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !240, line: 42, baseType: !238, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !16, line: 188, baseType: !172, size: 64, align: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !16, line: 189, baseType: !172, size: 64, align: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !16, line: 191, baseType: !58, size: 64, align: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !174, file: !16, line: 193, baseType: !249, size: 64, align: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !126, file: !4, line: 151, baseType: !254, size: 64, align: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !116}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !126, file: !4, line: 152, baseType: !258, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!132, !116, !261, !139}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !126, file: !4, line: 155, baseType: !263, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!261, !116}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !118, file: !4, line: 103, baseType: !133, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !118, file: !4, line: 104, baseType: !268, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !269, line: 77, baseType: !270)
!269 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !269, line: 77, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !118, file: !4, line: 105, baseType: !268, size: 64, align: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !118, file: !4, line: 106, baseType: !133, size: 64, align: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !118, file: !4, line: 107, baseType: !229, size: 32, align: 32, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !118, file: !4, line: 109, baseType: !135, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !118, file: !4, line: 110, baseType: !277, size: 64, align: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !279, line: 39, baseType: !280)
!279 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !279, line: 41, size: 192, align: 64, elements: !281)
!281 = !{!282, !283, !284}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !280, file: !279, line: 43, baseType: !133, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !280, file: !279, line: 44, baseType: !135, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !280, file: !279, line: 45, baseType: !135, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !118, file: !4, line: 111, baseType: !277, size: 64, align: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !118, file: !4, line: 112, baseType: !277, size: 64, align: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !118, file: !4, line: 113, baseType: !288, size: 48, align: 8, offset: 704)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 48, align: 8, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 6)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !118, file: !4, line: 117, baseType: !229, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !118, file: !4, line: 118, baseType: !229, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !118, file: !4, line: 119, baseType: !229, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !118, file: !4, line: 120, baseType: !229, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !118, file: !4, line: 121, baseType: !229, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !118, file: !4, line: 122, baseType: !229, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !118, file: !4, line: 124, baseType: !177, size: 64, align: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !118, file: !4, line: 125, baseType: !177, size: 64, align: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !51, file: !54, line: 38, baseType: !99, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !51, file: !54, line: 39, baseType: !99, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !51, file: !54, line: 40, baseType: !99, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !51, file: !54, line: 41, baseType: !99, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !51, file: !54, line: 42, baseType: !99, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !51, file: !54, line: 43, baseType: !99, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !51, file: !54, line: 44, baseType: !99, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !51, file: !54, line: 45, baseType: !99, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !51, file: !54, line: 46, baseType: !58, size: 64, align: 64, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !51, file: !54, line: 47, baseType: !58, size: 64, align: 64, offset: 1856)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !40, file: !44, line: 9, baseType: !310, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !311, line: 75, baseType: !312)
!311 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !313, line: 139, baseType: !162)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !40, file: !44, line: 10, baseType: !310, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !40, file: !44, line: 12, baseType: !58, size: 64, align: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !40, file: !44, line: 13, baseType: !58, size: 64, align: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !40, file: !44, line: 15, baseType: !99, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !40, file: !44, line: 16, baseType: !99, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !40, file: !44, line: 17, baseType: !99, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !40, file: !44, line: 18, baseType: !99, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !40, file: !44, line: 19, baseType: !99, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !40, file: !44, line: 21, baseType: !323, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !39, line: 102, baseType: !325)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !39, line: 102, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !40, file: !44, line: 22, baseType: !45, size: 32, align: 32, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !40, file: !44, line: 25, baseType: !328, size: 128, align: 64, offset: 640)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, align: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !40, file: !44, line: 26, baseType: !45, size: 32, align: 32, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !40, file: !44, line: 27, baseType: !45, size: 32, align: 32, offset: 800)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !40, file: !44, line: 29, baseType: !334, size: 64, align: 64, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !39, line: 103, baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !39, line: 103, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !40, file: !44, line: 30, baseType: !338, size: 64, align: 64, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !340, line: 37, baseType: !341)
!340 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !340, line: 37, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !40, file: !44, line: 32, baseType: !58, size: 64, align: 64, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !40, file: !44, line: 33, baseType: !58, size: 64, align: 64, offset: 1024)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !40, file: !44, line: 34, baseType: !58, size: 64, align: 64, offset: 1088)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !40, file: !44, line: 35, baseType: !99, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !40, file: !44, line: 36, baseType: !99, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !40, file: !44, line: 37, baseType: !99, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !40, file: !44, line: 38, baseType: !99, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !40, file: !44, line: 40, baseType: !350, size: 128, align: 64, offset: 1216)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !122, line: 504, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !122, line: 506, size: 128, align: 64, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !351, file: !122, line: 508, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !122, line: 48, baseType: !162)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !351, file: !122, line: 509, baseType: !354, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !40, file: !44, line: 41, baseType: !310, size: 64, align: 64, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !40, file: !44, line: 42, baseType: !45, size: 32, align: 32, offset: 1408)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !40, file: !44, line: 44, baseType: !238, size: 64, align: 64, offset: 1472)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !40, file: !44, line: 45, baseType: !238, size: 64, align: 64, offset: 1536)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !40, file: !44, line: 53, baseType: !361, size: 64, align: 64, offset: 1600)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !37, !364, !45}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !40, file: !44, line: 55, baseType: !367, size: 64, align: 64, offset: 1664)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!45, !37, !59}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !40, file: !44, line: 57, baseType: !371, size: 64, align: 64, offset: 1728)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!45, !37, !364}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !40, file: !44, line: 60, baseType: !375, size: 64, align: 64, offset: 1792)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!364, !37}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !40, file: !44, line: 62, baseType: !379, size: 64, align: 64, offset: 1856)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !37, !364, !364, !45}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !40, file: !44, line: 65, baseType: !383, size: 64, align: 64, offset: 1920)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386, !37, !364, !364}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !40, file: !44, line: 69, baseType: !388, size: 64, align: 64, offset: 1984)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!391, !37, !364}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !39, line: 109, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !39, line: 109, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !40, file: !44, line: 70, baseType: !395, size: 64, align: 64, offset: 2048)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !37, !364}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !39, line: 110, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !39, line: 110, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !40, file: !44, line: 71, baseType: !402, size: 64, align: 64, offset: 2112)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!45, !364, !364}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !40, file: !44, line: 73, baseType: !402, size: 64, align: 64, offset: 2176)
!406 = !{i32 2, !"Dwarf Version", i32 4}
!407 = !{i32 2, !"Debug Info Version", i32 3}
!408 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!409 = distinct !DISubprogram(name: "mask_match", scope: !410, file: !410, line: 63, type: !411, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !413)
!410 = !DIFile(filename: "masks.c", directory: "/home/lichi/Desktop/irssi/task1")
!411 = !DISubroutineType(types: !412)
!412 = !{!45, !37, !364, !364, !364, !364}
!413 = !{}
!414 = !DILocalVariable(name: "server", arg: 1, scope: !409, file: !410, line: 63, type: !37)
!415 = !DIExpression()
!416 = !DILocation(line: 63, column: 28, scope: !409)
!417 = !DILocalVariable(name: "mask", arg: 2, scope: !409, file: !410, line: 63, type: !364)
!418 = !DILocation(line: 63, column: 48, scope: !409)
!419 = !DILocalVariable(name: "nick", arg: 3, scope: !409, file: !410, line: 64, type: !364)
!420 = !DILocation(line: 64, column: 21, scope: !409)
!421 = !DILocalVariable(name: "user", arg: 4, scope: !409, file: !410, line: 64, type: !364)
!422 = !DILocation(line: 64, column: 39, scope: !409)
!423 = !DILocalVariable(name: "host", arg: 5, scope: !409, file: !410, line: 64, type: !364)
!424 = !DILocation(line: 64, column: 57, scope: !409)
!425 = !DILocalVariable(name: "str", scope: !409, file: !410, line: 66, type: !58)
!426 = !DILocation(line: 66, column: 8, scope: !409)
!427 = !DILocalVariable(name: "ret", scope: !409, file: !410, line: 67, type: !45)
!428 = !DILocation(line: 67, column: 6, scope: !409)
!429 = !DILocalVariable(name: "wildcards", scope: !409, file: !410, line: 67, type: !45)
!430 = !DILocation(line: 67, column: 11, scope: !409)
!431 = !DILocation(line: 69, column: 2, scope: !409)
!432 = distinct !{!432, !431}
!433 = !DILocation(line: 69, column: 10, scope: !434)
!434 = !DILexicalBlockFile(scope: !435, file: !410, discriminator: 1)
!435 = distinct !DILexicalBlock(scope: !436, file: !410, line: 69, column: 10)
!436 = distinct !DILexicalBlock(scope: !409, file: !410, line: 69, column: 4)
!437 = !DILocation(line: 69, column: 17, scope: !434)
!438 = !DILocation(line: 69, column: 1, scope: !434)
!439 = !DILocation(line: 69, column: 39, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !410, discriminator: 2)
!441 = !DILocation(line: 69, column: 21, scope: !440)
!442 = !DILocation(line: 69, column: 6, scope: !440)
!443 = !DILocation(line: 69, column: 10, scope: !440)
!444 = !DILocation(line: 69, column: 5, scope: !445)
!445 = !DILexicalBlockFile(scope: !435, file: !410, discriminator: 3)
!446 = !DILocation(line: 69, column: 10, scope: !447)
!447 = !DILexicalBlockFile(scope: !436, file: !410, discriminator: 4)
!448 = !DILocation(line: 69, column: 33, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !410, discriminator: 5)
!450 = distinct !DILexicalBlock(scope: !435, file: !410, line: 69, column: 31)
!451 = !DILocation(line: 69, column: 42, scope: !452)
!452 = !DILexicalBlockFile(scope: !453, file: !410, discriminator: 6)
!453 = distinct !DILexicalBlock(scope: !435, file: !410, line: 69, column: 40)
!454 = !DILocation(line: 69, column: 150, scope: !452)
!455 = !DILocation(line: 69, column: 167, scope: !456)
!456 = !DILexicalBlockFile(scope: !436, file: !410, discriminator: 7)
!457 = !DILocation(line: 70, column: 2, scope: !409)
!458 = distinct !{!458, !457}
!459 = !DILocation(line: 70, column: 10, scope: !460)
!460 = !DILexicalBlockFile(scope: !461, file: !410, discriminator: 1)
!461 = distinct !DILexicalBlock(scope: !462, file: !410, line: 70, column: 10)
!462 = distinct !DILexicalBlock(scope: !409, file: !410, line: 70, column: 4)
!463 = !DILocation(line: 70, column: 15, scope: !460)
!464 = !DILocation(line: 70, column: 1, scope: !460)
!465 = !DILocation(line: 70, column: 4, scope: !466)
!466 = !DILexicalBlockFile(scope: !461, file: !410, discriminator: 2)
!467 = !DILocation(line: 70, column: 9, scope: !466)
!468 = !DILocation(line: 70, column: 1, scope: !466)
!469 = !DILocation(line: 70, column: 4, scope: !470)
!470 = !DILexicalBlockFile(scope: !461, file: !410, discriminator: 3)
!471 = !DILocation(line: 70, column: 9, scope: !470)
!472 = !DILocation(line: 70, column: 1, scope: !470)
!473 = !DILocation(line: 70, column: 4, scope: !474)
!474 = !DILexicalBlockFile(scope: !461, file: !410, discriminator: 4)
!475 = !DILocation(line: 70, column: 9, scope: !474)
!476 = !DILocation(line: 70, column: 10, scope: !474)
!477 = !DILocation(line: 70, column: 5, scope: !478)
!478 = !DILexicalBlockFile(scope: !479, file: !410, discriminator: 5)
!479 = distinct !DILexicalBlock(scope: !461, file: !410, line: 70, column: 3)
!480 = !DILocation(line: 70, column: 14, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !410, discriminator: 6)
!482 = distinct !DILexicalBlock(scope: !461, file: !410, line: 70, column: 12)
!483 = !DILocation(line: 70, column: 147, scope: !481)
!484 = !DILocation(line: 70, column: 164, scope: !485)
!485 = !DILexicalBlockFile(scope: !462, file: !410, discriminator: 7)
!486 = !DILocation(line: 73, column: 23, scope: !409)
!487 = !DILocation(line: 73, column: 9, scope: !409)
!488 = !DILocation(line: 73, column: 8, scope: !409)
!489 = !DILocation(line: 73, column: 52, scope: !490)
!490 = !DILexicalBlockFile(scope: !409, file: !410, discriminator: 1)
!491 = !DILocation(line: 73, column: 8, scope: !490)
!492 = !DILocation(line: 74, column: 31, scope: !409)
!493 = !DILocation(line: 74, column: 37, scope: !409)
!494 = !DILocation(line: 74, column: 43, scope: !409)
!495 = !DILocation(line: 74, column: 3, scope: !409)
!496 = !DILocation(line: 73, column: 8, scope: !497)
!497 = !DILexicalBlockFile(scope: !409, file: !410, discriminator: 2)
!498 = !DILocation(line: 73, column: 8, scope: !499)
!499 = !DILexicalBlockFile(scope: !409, file: !410, discriminator: 3)
!500 = !DILocation(line: 73, column: 6, scope: !499)
!501 = !DILocation(line: 75, column: 19, scope: !409)
!502 = !DILocation(line: 75, column: 27, scope: !409)
!503 = !DILocation(line: 75, column: 33, scope: !409)
!504 = !DILocation(line: 75, column: 38, scope: !409)
!505 = !DILocation(line: 75, column: 8, scope: !409)
!506 = !DILocation(line: 75, column: 6, scope: !409)
!507 = !DILocation(line: 76, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !409, file: !410, line: 76, column: 6)
!509 = !DILocation(line: 76, column: 13, scope: !508)
!510 = !DILocation(line: 76, column: 10, scope: !508)
!511 = !DILocation(line: 76, column: 6, scope: !409)
!512 = !DILocation(line: 76, column: 26, scope: !513)
!513 = !DILexicalBlockFile(scope: !508, file: !410, discriminator: 1)
!514 = !DILocation(line: 76, column: 19, scope: !513)
!515 = !DILocation(line: 78, column: 9, scope: !409)
!516 = !DILocation(line: 78, column: 2, scope: !409)
!517 = !DILocation(line: 79, column: 1, scope: !409)
!518 = distinct !DISubprogram(name: "check_address", scope: !410, file: !410, line: 29, type: !519, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !413)
!519 = !DISubroutineType(types: !520)
!520 = !{!45, !364, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!522 = !DILocalVariable(name: "mask", arg: 1, scope: !518, file: !410, line: 29, type: !364)
!523 = !DILocation(line: 29, column: 38, scope: !518)
!524 = !DILocalVariable(name: "wildcards", arg: 2, scope: !518, file: !410, line: 29, type: !521)
!525 = !DILocation(line: 29, column: 49, scope: !518)
!526 = !DILocalVariable(name: "ret", scope: !518, file: !410, line: 31, type: !45)
!527 = !DILocation(line: 31, column: 6, scope: !518)
!528 = !DILocation(line: 33, column: 3, scope: !518)
!529 = !DILocation(line: 33, column: 13, scope: !518)
!530 = !DILocation(line: 34, column: 6, scope: !518)
!531 = !DILocation(line: 35, column: 2, scope: !518)
!532 = !DILocation(line: 35, column: 10, scope: !533)
!533 = !DILexicalBlockFile(scope: !518, file: !410, discriminator: 1)
!534 = !DILocation(line: 35, column: 9, scope: !533)
!535 = !DILocation(line: 35, column: 15, scope: !533)
!536 = !DILocation(line: 35, column: 2, scope: !533)
!537 = !DILocation(line: 36, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !410, line: 36, column: 7)
!539 = distinct !DILexicalBlock(scope: !518, file: !410, line: 35, column: 24)
!540 = !DILocation(line: 36, column: 7, scope: !538)
!541 = !DILocation(line: 36, column: 13, scope: !538)
!542 = !DILocation(line: 36, column: 7, scope: !539)
!543 = !DILocation(line: 37, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !410, line: 37, column: 8)
!545 = distinct !DILexicalBlock(scope: !538, file: !410, line: 36, column: 21)
!546 = !DILocation(line: 37, column: 8, scope: !544)
!547 = !DILocation(line: 37, column: 8, scope: !545)
!548 = !DILocation(line: 37, column: 20, scope: !549)
!549 = !DILexicalBlockFile(scope: !544, file: !410, discriminator: 1)
!550 = !DILocation(line: 38, column: 8, scope: !545)
!551 = !DILocation(line: 39, column: 3, scope: !545)
!552 = !DILocation(line: 41, column: 8, scope: !553)
!553 = distinct !DILexicalBlock(scope: !539, file: !410, line: 41, column: 7)
!554 = !DILocation(line: 41, column: 7, scope: !553)
!555 = !DILocation(line: 41, column: 13, scope: !553)
!556 = !DILocation(line: 41, column: 20, scope: !553)
!557 = !DILocation(line: 41, column: 24, scope: !558)
!558 = !DILexicalBlockFile(scope: !553, file: !410, discriminator: 1)
!559 = !DILocation(line: 41, column: 23, scope: !558)
!560 = !DILocation(line: 41, column: 29, scope: !558)
!561 = !DILocation(line: 41, column: 7, scope: !558)
!562 = !DILocation(line: 42, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !553, file: !410, line: 41, column: 37)
!564 = !DILocation(line: 42, column: 15, scope: !563)
!565 = !DILocation(line: 43, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !410, line: 43, column: 8)
!567 = !DILocation(line: 43, column: 8, scope: !563)
!568 = !DILocation(line: 43, column: 13, scope: !569)
!569 = !DILexicalBlockFile(scope: !566, file: !410, discriminator: 1)
!570 = !DILocation(line: 44, column: 3, scope: !563)
!571 = !DILocation(line: 45, column: 7, scope: !539)
!572 = !DILocation(line: 35, column: 2, scope: !573)
!573 = !DILexicalBlockFile(scope: !518, file: !410, discriminator: 2)
!574 = distinct !{!574, !531}
!575 = !DILocation(line: 48, column: 9, scope: !518)
!576 = !DILocation(line: 48, column: 2, scope: !518)
!577 = !DILocation(line: 49, column: 1, scope: !518)
!578 = distinct !DISubprogram(name: "check_mask", scope: !410, file: !410, line: 51, type: !579, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !413)
!579 = !DISubroutineType(types: !580)
!580 = !{!45, !37, !364, !364, !45}
!581 = !DILocalVariable(name: "server", arg: 1, scope: !578, file: !410, line: 51, type: !37)
!582 = !DILocation(line: 51, column: 35, scope: !578)
!583 = !DILocalVariable(name: "mask", arg: 2, scope: !578, file: !410, line: 51, type: !364)
!584 = !DILocation(line: 51, column: 55, scope: !578)
!585 = !DILocalVariable(name: "str", arg: 3, scope: !578, file: !410, line: 52, type: !364)
!586 = !DILocation(line: 52, column: 21, scope: !578)
!587 = !DILocalVariable(name: "wildcards", arg: 4, scope: !578, file: !410, line: 52, type: !45)
!588 = !DILocation(line: 52, column: 30, scope: !578)
!589 = !DILocation(line: 54, column: 6, scope: !590)
!590 = distinct !DILexicalBlock(scope: !578, file: !410, line: 54, column: 6)
!591 = !DILocation(line: 54, column: 13, scope: !590)
!592 = !DILocation(line: 54, column: 20, scope: !590)
!593 = !DILocation(line: 54, column: 23, scope: !594)
!594 = !DILexicalBlockFile(scope: !590, file: !410, discriminator: 1)
!595 = !DILocation(line: 54, column: 31, scope: !594)
!596 = !DILocation(line: 54, column: 47, scope: !594)
!597 = !DILocation(line: 54, column: 6, scope: !594)
!598 = !DILocation(line: 56, column: 10, scope: !599)
!599 = distinct !DILexicalBlock(scope: !590, file: !410, line: 54, column: 56)
!600 = !DILocation(line: 56, column: 18, scope: !599)
!601 = !DILocation(line: 56, column: 34, scope: !599)
!602 = !DILocation(line: 56, column: 40, scope: !599)
!603 = !DILocation(line: 56, column: 3, scope: !599)
!604 = !DILocation(line: 59, column: 9, scope: !578)
!605 = !DILocation(line: 59, column: 37, scope: !606)
!606 = !DILexicalBlockFile(scope: !578, file: !410, discriminator: 1)
!607 = !DILocation(line: 59, column: 43, scope: !606)
!608 = !DILocation(line: 59, column: 21, scope: !606)
!609 = !DILocation(line: 59, column: 9, scope: !606)
!610 = !DILocation(line: 60, column: 22, scope: !578)
!611 = !DILocation(line: 60, column: 28, scope: !578)
!612 = !DILocation(line: 60, column: 3, scope: !578)
!613 = !DILocation(line: 60, column: 33, scope: !578)
!614 = !DILocation(line: 59, column: 9, scope: !615)
!615 = !DILexicalBlockFile(scope: !578, file: !410, discriminator: 2)
!616 = !DILocation(line: 59, column: 9, scope: !617)
!617 = !DILexicalBlockFile(scope: !578, file: !410, discriminator: 3)
!618 = !DILocation(line: 59, column: 2, scope: !617)
!619 = !DILocation(line: 61, column: 1, scope: !578)
!620 = distinct !DISubprogram(name: "mask_match_address", scope: !410, file: !410, line: 81, type: !621, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !413)
!621 = !DISubroutineType(types: !622)
!622 = !{!45, !37, !364, !364, !364}
!623 = !DILocalVariable(name: "server", arg: 1, scope: !620, file: !410, line: 81, type: !37)
!624 = !DILocation(line: 81, column: 36, scope: !620)
!625 = !DILocalVariable(name: "mask", arg: 2, scope: !620, file: !410, line: 81, type: !364)
!626 = !DILocation(line: 81, column: 56, scope: !620)
!627 = !DILocalVariable(name: "nick", arg: 3, scope: !620, file: !410, line: 82, type: !364)
!628 = !DILocation(line: 82, column: 22, scope: !620)
!629 = !DILocalVariable(name: "address", arg: 4, scope: !620, file: !410, line: 82, type: !364)
!630 = !DILocation(line: 82, column: 40, scope: !620)
!631 = !DILocalVariable(name: "str", scope: !620, file: !410, line: 84, type: !58)
!632 = !DILocation(line: 84, column: 8, scope: !620)
!633 = !DILocalVariable(name: "ret", scope: !620, file: !410, line: 85, type: !45)
!634 = !DILocation(line: 85, column: 6, scope: !620)
!635 = !DILocalVariable(name: "wildcards", scope: !620, file: !410, line: 85, type: !45)
!636 = !DILocation(line: 85, column: 11, scope: !620)
!637 = !DILocation(line: 87, column: 2, scope: !620)
!638 = distinct !{!638, !637}
!639 = !DILocation(line: 87, column: 10, scope: !640)
!640 = !DILexicalBlockFile(scope: !641, file: !410, discriminator: 1)
!641 = distinct !DILexicalBlock(scope: !642, file: !410, line: 87, column: 10)
!642 = distinct !DILexicalBlock(scope: !620, file: !410, line: 87, column: 4)
!643 = !DILocation(line: 87, column: 17, scope: !640)
!644 = !DILocation(line: 87, column: 1, scope: !640)
!645 = !DILocation(line: 87, column: 39, scope: !646)
!646 = !DILexicalBlockFile(scope: !641, file: !410, discriminator: 2)
!647 = !DILocation(line: 87, column: 21, scope: !646)
!648 = !DILocation(line: 87, column: 6, scope: !646)
!649 = !DILocation(line: 87, column: 10, scope: !646)
!650 = !DILocation(line: 87, column: 5, scope: !651)
!651 = !DILexicalBlockFile(scope: !641, file: !410, discriminator: 3)
!652 = !DILocation(line: 87, column: 10, scope: !653)
!653 = !DILexicalBlockFile(scope: !642, file: !410, discriminator: 4)
!654 = !DILocation(line: 87, column: 33, scope: !655)
!655 = !DILexicalBlockFile(scope: !656, file: !410, discriminator: 5)
!656 = distinct !DILexicalBlock(scope: !641, file: !410, line: 87, column: 31)
!657 = !DILocation(line: 87, column: 42, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !410, discriminator: 6)
!659 = distinct !DILexicalBlock(scope: !641, file: !410, line: 87, column: 40)
!660 = !DILocation(line: 87, column: 150, scope: !658)
!661 = !DILocation(line: 87, column: 167, scope: !662)
!662 = !DILexicalBlockFile(scope: !642, file: !410, discriminator: 7)
!663 = !DILocation(line: 88, column: 2, scope: !620)
!664 = distinct !{!664, !663}
!665 = !DILocation(line: 88, column: 10, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !410, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !668, file: !410, line: 88, column: 10)
!668 = distinct !DILexicalBlock(scope: !620, file: !410, line: 88, column: 4)
!669 = !DILocation(line: 88, column: 15, scope: !666)
!670 = !DILocation(line: 88, column: 1, scope: !666)
!671 = !DILocation(line: 88, column: 4, scope: !672)
!672 = !DILexicalBlockFile(scope: !667, file: !410, discriminator: 2)
!673 = !DILocation(line: 88, column: 9, scope: !672)
!674 = !DILocation(line: 88, column: 10, scope: !672)
!675 = !DILocation(line: 88, column: 5, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !410, discriminator: 3)
!677 = distinct !DILexicalBlock(scope: !667, file: !410, line: 88, column: 3)
!678 = !DILocation(line: 88, column: 14, scope: !679)
!679 = !DILexicalBlockFile(scope: !680, file: !410, discriminator: 4)
!680 = distinct !DILexicalBlock(scope: !667, file: !410, line: 88, column: 12)
!681 = !DILocation(line: 88, column: 115, scope: !679)
!682 = !DILocation(line: 88, column: 132, scope: !683)
!683 = !DILexicalBlockFile(scope: !668, file: !410, discriminator: 5)
!684 = !DILocation(line: 89, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !620, file: !410, line: 89, column: 6)
!686 = !DILocation(line: 89, column: 14, scope: !685)
!687 = !DILocation(line: 89, column: 6, scope: !620)
!688 = !DILocation(line: 89, column: 30, scope: !689)
!689 = !DILexicalBlockFile(scope: !685, file: !410, discriminator: 1)
!690 = !DILocation(line: 89, column: 22, scope: !689)
!691 = !DILocation(line: 91, column: 23, scope: !620)
!692 = !DILocation(line: 91, column: 9, scope: !620)
!693 = !DILocation(line: 91, column: 8, scope: !620)
!694 = !DILocation(line: 91, column: 52, scope: !695)
!695 = !DILexicalBlockFile(scope: !620, file: !410, discriminator: 1)
!696 = !DILocation(line: 91, column: 8, scope: !695)
!697 = !DILocation(line: 92, column: 28, scope: !620)
!698 = !DILocation(line: 92, column: 34, scope: !620)
!699 = !DILocation(line: 92, column: 3, scope: !620)
!700 = !DILocation(line: 91, column: 8, scope: !701)
!701 = !DILexicalBlockFile(scope: !620, file: !410, discriminator: 2)
!702 = !DILocation(line: 91, column: 8, scope: !703)
!703 = !DILexicalBlockFile(scope: !620, file: !410, discriminator: 3)
!704 = !DILocation(line: 91, column: 6, scope: !703)
!705 = !DILocation(line: 93, column: 19, scope: !620)
!706 = !DILocation(line: 93, column: 27, scope: !620)
!707 = !DILocation(line: 93, column: 33, scope: !620)
!708 = !DILocation(line: 93, column: 38, scope: !620)
!709 = !DILocation(line: 93, column: 8, scope: !620)
!710 = !DILocation(line: 93, column: 6, scope: !620)
!711 = !DILocation(line: 94, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !620, file: !410, line: 94, column: 6)
!713 = !DILocation(line: 94, column: 13, scope: !712)
!714 = !DILocation(line: 94, column: 10, scope: !712)
!715 = !DILocation(line: 94, column: 6, scope: !620)
!716 = !DILocation(line: 94, column: 26, scope: !717)
!717 = !DILexicalBlockFile(scope: !712, file: !410, discriminator: 1)
!718 = !DILocation(line: 94, column: 19, scope: !717)
!719 = !DILocation(line: 96, column: 9, scope: !620)
!720 = !DILocation(line: 96, column: 2, scope: !620)
!721 = !DILocation(line: 97, column: 1, scope: !620)
!722 = distinct !DISubprogram(name: "masks_match", scope: !410, file: !410, line: 99, type: !621, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !413)
!723 = !DILocalVariable(name: "server", arg: 1, scope: !722, file: !410, line: 99, type: !37)
!724 = !DILocation(line: 99, column: 29, scope: !722)
!725 = !DILocalVariable(name: "masks", arg: 2, scope: !722, file: !410, line: 99, type: !364)
!726 = !DILocation(line: 99, column: 49, scope: !722)
!727 = !DILocalVariable(name: "nick", arg: 3, scope: !722, file: !410, line: 100, type: !364)
!728 = !DILocation(line: 100, column: 15, scope: !722)
!729 = !DILocalVariable(name: "address", arg: 4, scope: !722, file: !410, line: 100, type: !364)
!730 = !DILocation(line: 100, column: 33, scope: !722)
!731 = !DILocalVariable(name: "mask_match_func", scope: !722, file: !410, line: 102, type: !402)
!732 = !DILocation(line: 102, column: 8, scope: !722)
!733 = !DILocalVariable(name: "list", scope: !722, file: !410, line: 103, type: !386)
!734 = !DILocation(line: 103, column: 9, scope: !722)
!735 = !DILocalVariable(name: "tmp", scope: !722, file: !410, line: 103, type: !386)
!736 = !DILocation(line: 103, column: 17, scope: !722)
!737 = !DILocalVariable(name: "mask", scope: !722, file: !410, line: 103, type: !58)
!738 = !DILocation(line: 103, column: 23, scope: !722)
!739 = !DILocalVariable(name: "found", scope: !722, file: !410, line: 104, type: !45)
!740 = !DILocation(line: 104, column: 6, scope: !722)
!741 = !DILocation(line: 106, column: 2, scope: !722)
!742 = distinct !{!742, !741}
!743 = !DILocation(line: 106, column: 10, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !410, discriminator: 1)
!745 = distinct !DILexicalBlock(scope: !746, file: !410, line: 106, column: 10)
!746 = distinct !DILexicalBlock(scope: !722, file: !410, line: 106, column: 4)
!747 = !DILocation(line: 106, column: 17, scope: !744)
!748 = !DILocation(line: 106, column: 1, scope: !744)
!749 = !DILocation(line: 106, column: 39, scope: !750)
!750 = !DILexicalBlockFile(scope: !745, file: !410, discriminator: 2)
!751 = !DILocation(line: 106, column: 21, scope: !750)
!752 = !DILocation(line: 106, column: 6, scope: !750)
!753 = !DILocation(line: 106, column: 10, scope: !750)
!754 = !DILocation(line: 106, column: 5, scope: !755)
!755 = !DILexicalBlockFile(scope: !745, file: !410, discriminator: 3)
!756 = !DILocation(line: 106, column: 10, scope: !757)
!757 = !DILexicalBlockFile(scope: !746, file: !410, discriminator: 4)
!758 = !DILocation(line: 106, column: 33, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !410, discriminator: 5)
!760 = distinct !DILexicalBlock(scope: !745, file: !410, line: 106, column: 31)
!761 = !DILocation(line: 106, column: 42, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !410, discriminator: 6)
!763 = distinct !DILexicalBlock(scope: !745, file: !410, line: 106, column: 40)
!764 = !DILocation(line: 106, column: 150, scope: !762)
!765 = !DILocation(line: 106, column: 167, scope: !766)
!766 = !DILexicalBlockFile(scope: !746, file: !410, discriminator: 7)
!767 = !DILocation(line: 107, column: 2, scope: !722)
!768 = distinct !{!768, !767}
!769 = !DILocation(line: 107, column: 10, scope: !770)
!770 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 1)
!771 = distinct !DILexicalBlock(scope: !772, file: !410, line: 107, column: 10)
!772 = distinct !DILexicalBlock(scope: !722, file: !410, line: 107, column: 4)
!773 = !DILocation(line: 107, column: 16, scope: !770)
!774 = !DILocation(line: 107, column: 1, scope: !770)
!775 = !DILocation(line: 107, column: 4, scope: !776)
!776 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 2)
!777 = !DILocation(line: 107, column: 9, scope: !776)
!778 = !DILocation(line: 107, column: 1, scope: !776)
!779 = !DILocation(line: 107, column: 4, scope: !780)
!780 = !DILexicalBlockFile(scope: !771, file: !410, discriminator: 3)
!781 = !DILocation(line: 107, column: 12, scope: !780)
!782 = !DILocation(line: 107, column: 10, scope: !780)
!783 = !DILocation(line: 107, column: 5, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !410, discriminator: 4)
!785 = distinct !DILexicalBlock(scope: !771, file: !410, line: 107, column: 3)
!786 = !DILocation(line: 107, column: 14, scope: !787)
!787 = !DILexicalBlockFile(scope: !788, file: !410, discriminator: 5)
!788 = distinct !DILexicalBlock(scope: !771, file: !410, line: 107, column: 12)
!789 = !DILocation(line: 107, column: 135, scope: !787)
!790 = !DILocation(line: 107, column: 152, scope: !791)
!791 = !DILexicalBlockFile(scope: !772, file: !410, discriminator: 6)
!792 = !DILocation(line: 110, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !722, file: !410, line: 110, column: 6)
!794 = !DILocation(line: 110, column: 6, scope: !793)
!795 = !DILocation(line: 110, column: 13, scope: !793)
!796 = !DILocation(line: 110, column: 6, scope: !722)
!797 = !DILocation(line: 111, column: 17, scope: !793)
!798 = !DILocation(line: 113, column: 20, scope: !722)
!799 = !DILocation(line: 113, column: 27, scope: !722)
!800 = !DILocation(line: 113, column: 34, scope: !722)
!801 = !DILocation(line: 113, column: 37, scope: !802)
!802 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 1)
!803 = !DILocation(line: 113, column: 45, scope: !802)
!804 = !DILocation(line: 113, column: 61, scope: !802)
!805 = !DILocation(line: 113, column: 20, scope: !802)
!806 = !DILocation(line: 114, column: 3, scope: !722)
!807 = !DILocation(line: 114, column: 11, scope: !722)
!808 = !DILocation(line: 113, column: 20, scope: !809)
!809 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 2)
!810 = !DILocation(line: 113, column: 20, scope: !811)
!811 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 3)
!812 = !DILocation(line: 113, column: 20, scope: !813)
!813 = !DILexicalBlockFile(scope: !722, file: !410, discriminator: 4)
!814 = !DILocation(line: 113, column: 18, scope: !813)
!815 = !DILocation(line: 116, column: 8, scope: !722)
!816 = !DILocation(line: 117, column: 34, scope: !722)
!817 = !DILocation(line: 117, column: 40, scope: !722)
!818 = !DILocation(line: 117, column: 9, scope: !722)
!819 = !DILocation(line: 117, column: 7, scope: !722)
!820 = !DILocation(line: 118, column: 20, scope: !722)
!821 = !DILocation(line: 118, column: 9, scope: !722)
!822 = !DILocation(line: 118, column: 7, scope: !722)
!823 = !DILocation(line: 119, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !722, file: !410, line: 119, column: 2)
!825 = !DILocation(line: 119, column: 11, scope: !824)
!826 = !DILocation(line: 119, column: 7, scope: !824)
!827 = !DILocation(line: 119, column: 20, scope: !828)
!828 = !DILexicalBlockFile(scope: !829, file: !410, discriminator: 1)
!829 = distinct !DILexicalBlock(scope: !824, file: !410, line: 119, column: 2)
!830 = !DILocation(line: 119, column: 19, scope: !828)
!831 = !DILocation(line: 119, column: 24, scope: !828)
!832 = !DILocation(line: 119, column: 2, scope: !828)
!833 = !DILocation(line: 120, column: 27, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !410, line: 120, column: 7)
!835 = distinct !DILexicalBlock(scope: !829, file: !410, line: 119, column: 39)
!836 = !DILocation(line: 120, column: 26, scope: !834)
!837 = !DILocation(line: 120, column: 32, scope: !834)
!838 = !DILocation(line: 120, column: 7, scope: !834)
!839 = !DILocation(line: 120, column: 38, scope: !834)
!840 = !DILocation(line: 120, column: 7, scope: !835)
!841 = !DILocation(line: 121, column: 31, scope: !842)
!842 = distinct !DILexicalBlock(scope: !834, file: !410, line: 120, column: 44)
!843 = !DILocation(line: 122, column: 4, scope: !842)
!844 = !DILocation(line: 125, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !835, file: !410, line: 125, column: 7)
!846 = !DILocation(line: 125, column: 24, scope: !845)
!847 = !DILocation(line: 125, column: 23, scope: !845)
!848 = !DILocation(line: 125, column: 29, scope: !845)
!849 = !DILocation(line: 125, column: 7, scope: !835)
!850 = !DILocation(line: 126, column: 10, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !410, line: 125, column: 36)
!852 = !DILocation(line: 127, column: 4, scope: !851)
!853 = !DILocation(line: 129, column: 2, scope: !835)
!854 = !DILocation(line: 119, column: 35, scope: !855)
!855 = !DILexicalBlockFile(scope: !829, file: !410, discriminator: 2)
!856 = !DILocation(line: 119, column: 2, scope: !855)
!857 = distinct !{!857, !858}
!858 = !DILocation(line: 119, column: 2, scope: !722)
!859 = !DILocation(line: 130, column: 13, scope: !722)
!860 = !DILocation(line: 130, column: 2, scope: !722)
!861 = !DILocation(line: 131, column: 9, scope: !722)
!862 = !DILocation(line: 131, column: 2, scope: !722)
!863 = !DILocation(line: 133, column: 9, scope: !722)
!864 = !DILocation(line: 133, column: 2, scope: !722)
!865 = !DILocation(line: 134, column: 1, scope: !722)
