; ModuleID = './line10-parse.o.i'
source_filename = "./line10-parse.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyz_0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@__func__.config_parse = private unnamed_addr constant [13 x i8] c"config_parse\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"rec->fname != NULL\00", align 1
@__func__.config_close = private unnamed_addr constant [13 x i8] c"config_close\00", align 1
@__func__.config_change_file_name = private unnamed_addr constant [24 x i8] c"config_change_file_name\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s%s:%d: %s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@__func__.config_parse_loop = private unnamed_addr constant [18 x i8] c"config_parse_loop\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@__func__.node_add_comment = private unnamed_addr constant [17 x i8] c"node_add_comment\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@__func__.config_parse_symbol = private unnamed_addr constant [20 x i8] c"config_parse_symbol\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Warning: missing '%c'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @config_error(%struct._CONFIG_REC*, i8*) #0 !dbg !391 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !396, metadata !397), !dbg !398
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !399, metadata !397), !dbg !400
  br label %5, !dbg !401, !llvm.loop !402

; <label>:5:                                      ; preds = %2
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !403
  %7 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %6, i32 0, i32 3, !dbg !407
  %8 = load i8*, i8** %7, align 8, !dbg !407
  %9 = icmp ne i8* %8, null, !dbg !403
  br i1 %9, label %10, label %16, !dbg !403

; <label>:10:                                     ; preds = %5
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !408
  %12 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %11, i32 0, i32 3, !dbg !411
  %13 = load i8*, i8** %12, align 8, !dbg !411
  call void @g_free(i8* %13), !dbg !412
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !413
  %15 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %14, i32 0, i32 3, !dbg !414
  store i8* null, i8** %15, align 8, !dbg !415
  br label %16, !dbg !416

; <label>:16:                                     ; preds = %10, %5
  br label %17, !dbg !417

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !419
  %19 = call noalias i8* @g_strdup(i8* %18), !dbg !420
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !421
  %21 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %20, i32 0, i32 3, !dbg !422
  store i8* %19, i8** %21, align 8, !dbg !423
  ret i32 -1, !dbg !424
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @config_parse_init(%struct._CONFIG_REC*, i8*) #0 !dbg !425 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GScanner*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !428, metadata !397), !dbg !429
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !430, metadata !397), !dbg !431
  call void @llvm.dbg.declare(metadata %struct._GScanner** %5, metadata !432, metadata !397), !dbg !433
  br label %6, !dbg !434, !llvm.loop !435

; <label>:6:                                      ; preds = %2
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !436
  %8 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %7, i32 0, i32 3, !dbg !440
  %9 = load i8*, i8** %8, align 8, !dbg !440
  %10 = icmp ne i8* %9, null, !dbg !436
  br i1 %10, label %11, label %17, !dbg !436

; <label>:11:                                     ; preds = %6
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !441
  %13 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %12, i32 0, i32 3, !dbg !444
  %14 = load i8*, i8** %13, align 8, !dbg !444
  call void @g_free(i8* %14), !dbg !445
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !446
  %16 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %15, i32 0, i32 3, !dbg !447
  store i8* null, i8** %16, align 8, !dbg !448
  br label %17, !dbg !449

; <label>:17:                                     ; preds = %11, %6
  br label %18, !dbg !450

; <label>:18:                                     ; preds = %17
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !452
  call void @config_nodes_remove_all(%struct._CONFIG_REC* %19), !dbg !453
  %20 = call %struct._GScanner* @g_scanner_new(%struct._GScannerConfig* null), !dbg !454
  store %struct._GScanner* %20, %struct._GScanner** %5, align 8, !dbg !455
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !456
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 7, !dbg !457
  store %struct._GScanner* %20, %struct._GScanner** %22, align 8, !dbg !458
  %23 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !459
  %24 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %23, i32 0, i32 5, !dbg !460
  %25 = load %struct._GScannerConfig*, %struct._GScannerConfig** %24, align 8, !dbg !460
  %26 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %25, i32 0, i32 4, !dbg !461
  %27 = bitcast i24* %26 to i32*, !dbg !461
  %28 = load i32, i32* %27, align 8, !dbg !462
  %29 = and i32 %28, -5, !dbg !462
  store i32 %29, i32* %27, align 8, !dbg !462
  %30 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !463
  %31 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %30, i32 0, i32 5, !dbg !464
  %32 = load %struct._GScannerConfig*, %struct._GScannerConfig** %31, align 8, !dbg !464
  %33 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %32, i32 0, i32 1, !dbg !465
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i32 0, i32 0), i8** %33, align 8, !dbg !466
  %34 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !467
  %35 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %34, i32 0, i32 5, !dbg !468
  %36 = load %struct._GScannerConfig*, %struct._GScannerConfig** %35, align 8, !dbg !468
  %37 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %36, i32 0, i32 0, !dbg !469
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %37, align 8, !dbg !470
  %38 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !471
  %39 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %38, i32 0, i32 5, !dbg !472
  %40 = load %struct._GScannerConfig*, %struct._GScannerConfig** %39, align 8, !dbg !472
  %41 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %40, i32 0, i32 4, !dbg !473
  %42 = bitcast i24* %41 to i32*, !dbg !473
  %43 = load i32, i32* %42, align 8, !dbg !474
  %44 = and i32 %43, -257, !dbg !474
  store i32 %44, i32* %42, align 8, !dbg !474
  %45 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !475
  %46 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %45, i32 0, i32 5, !dbg !476
  %47 = load %struct._GScannerConfig*, %struct._GScannerConfig** %46, align 8, !dbg !476
  %48 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %47, i32 0, i32 4, !dbg !477
  %49 = bitcast i24* %48 to i32*, !dbg !477
  %50 = load i32, i32* %49, align 8, !dbg !478
  %51 = and i32 %50, -513, !dbg !478
  store i32 %51, i32* %49, align 8, !dbg !478
  %52 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !479
  %53 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %52, i32 0, i32 5, !dbg !480
  %54 = load %struct._GScannerConfig*, %struct._GScannerConfig** %53, align 8, !dbg !480
  %55 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %54, i32 0, i32 4, !dbg !481
  %56 = bitcast i24* %55 to i32*, !dbg !481
  %57 = load i32, i32* %56, align 8, !dbg !482
  %58 = and i32 %57, -1025, !dbg !482
  store i32 %58, i32* %56, align 8, !dbg !482
  %59 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !483
  %60 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %59, i32 0, i32 5, !dbg !484
  %61 = load %struct._GScannerConfig*, %struct._GScannerConfig** %60, align 8, !dbg !484
  %62 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %61, i32 0, i32 4, !dbg !485
  %63 = bitcast i24* %62 to i32*, !dbg !485
  %64 = load i32, i32* %63, align 8, !dbg !486
  %65 = and i32 %64, -8193, !dbg !486
  %66 = or i32 %65, 8192, !dbg !486
  store i32 %66, i32* %63, align 8, !dbg !486
  %67 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !487
  %68 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %67, i32 0, i32 5, !dbg !488
  %69 = load %struct._GScannerConfig*, %struct._GScannerConfig** %68, align 8, !dbg !488
  %70 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %69, i32 0, i32 4, !dbg !489
  %71 = bitcast i24* %70 to i32*, !dbg !489
  %72 = load i32, i32* %71, align 8, !dbg !490
  %73 = and i32 %72, -16385, !dbg !490
  %74 = or i32 %73, 16384, !dbg !490
  store i32 %74, i32* %71, align 8, !dbg !490
  %75 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !491
  %76 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %75, i32 0, i32 5, !dbg !492
  %77 = load %struct._GScannerConfig*, %struct._GScannerConfig** %76, align 8, !dbg !492
  %78 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %77, i32 0, i32 4, !dbg !493
  %79 = bitcast i24* %78 to i32*, !dbg !493
  %80 = load i32, i32* %79, align 8, !dbg !494
  %81 = and i32 %80, -33, !dbg !494
  %82 = or i32 %81, 32, !dbg !494
  store i32 %82, i32* %79, align 8, !dbg !494
  %83 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !495
  %84 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %83, i32 0, i32 5, !dbg !496
  %85 = load %struct._GScannerConfig*, %struct._GScannerConfig** %84, align 8, !dbg !496
  %86 = getelementptr inbounds %struct._GScannerConfig, %struct._GScannerConfig* %85, i32 0, i32 4, !dbg !497
  %87 = bitcast i24* %86 to i32*, !dbg !497
  %88 = load i32, i32* %87, align 8, !dbg !498
  %89 = and i32 %88, -131073, !dbg !498
  %90 = or i32 %89, 131072, !dbg !498
  store i32 %90, i32* %87, align 8, !dbg !498
  %91 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !499
  %92 = bitcast %struct._CONFIG_REC* %91 to i8*, !dbg !499
  %93 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !500
  %94 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %93, i32 0, i32 0, !dbg !501
  store i8* %92, i8** %94, align 8, !dbg !502
  %95 = load i8*, i8** %4, align 8, !dbg !503
  %96 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !504
  %97 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %96, i32 0, i32 3, !dbg !505
  store i8* %95, i8** %97, align 8, !dbg !506
  %98 = load %struct._GScanner*, %struct._GScanner** %5, align 8, !dbg !507
  %99 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %98, i32 0, i32 20, !dbg !508
  store void (%struct._GScanner*, i8*, i32)* @config_parse_error_func, void (%struct._GScanner*, i8*, i32)** %99, align 8, !dbg !509
  ret void, !dbg !510
}

declare void @config_nodes_remove_all(%struct._CONFIG_REC*) #2

declare %struct._GScanner* @g_scanner_new(%struct._GScannerConfig*) #2

; Function Attrs: nounwind uwtable
define internal void @config_parse_error_func(%struct._GScanner*, i8*, i32) #0 !dbg !511 {
  %4 = alloca %struct._GScanner*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CONFIG_REC*, align 8
  %8 = alloca i8*, align 8
  store %struct._GScanner* %0, %struct._GScanner** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GScanner** %4, metadata !514, metadata !397), !dbg !515
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !516, metadata !397), !dbg !517
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !518, metadata !397), !dbg !519
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %7, metadata !520, metadata !397), !dbg !521
  %9 = load %struct._GScanner*, %struct._GScanner** %4, align 8, !dbg !522
  %10 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 0, !dbg !523
  %11 = load i8*, i8** %10, align 8, !dbg !523
  %12 = bitcast i8* %11 to %struct._CONFIG_REC*, !dbg !522
  store %struct._CONFIG_REC* %12, %struct._CONFIG_REC** %7, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata i8** %8, metadata !524, metadata !397), !dbg !525
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !526
  %14 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %13, i32 0, i32 3, !dbg !527
  %15 = load i8*, i8** %14, align 8, !dbg !527
  store i8* %15, i8** %8, align 8, !dbg !528
  %16 = load i8*, i8** %8, align 8, !dbg !529
  %17 = icmp eq i8* %16, null, !dbg !530
  br i1 %17, label %18, label %19, !dbg !529

; <label>:18:                                     ; preds = %3
  br label %21, !dbg !531

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %8, align 8, !dbg !533
  br label %21, !dbg !535

; <label>:21:                                     ; preds = %19, %18
  %22 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), %18 ], [ %20, %19 ], !dbg !536
  %23 = load %struct._GScanner*, %struct._GScanner** %4, align 8, !dbg !538
  %24 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %23, i32 0, i32 3, !dbg !539
  %25 = load i8*, i8** %24, align 8, !dbg !539
  %26 = load %struct._GScanner*, %struct._GScanner** %4, align 8, !dbg !540
  %27 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %26, i32 0, i32 8, !dbg !541
  %28 = load i32, i32* %27, align 8, !dbg !541
  %29 = load i32, i32* %6, align 4, !dbg !542
  %30 = icmp ne i32 %29, 0, !dbg !542
  %31 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), !dbg !542
  %32 = load i8*, i8** %5, align 8, !dbg !543
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* %22, i8* %25, i32 %28, i8* %31, i8* %32), !dbg !544
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !545
  %35 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %34, i32 0, i32 3, !dbg !546
  store i8* %33, i8** %35, align 8, !dbg !547
  %36 = load i8*, i8** %8, align 8, !dbg !548
  call void @g_free(i8* %36), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: nounwind uwtable
define i32 @config_parse(%struct._CONFIG_REC*) #0 !dbg !551 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !554, metadata !397), !dbg !555
  call void @llvm.dbg.declare(metadata i32* %4, metadata !556, metadata !397), !dbg !557
  br label %5, !dbg !558, !llvm.loop !559

; <label>:5:                                      ; preds = %1
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !560
  %7 = icmp ne %struct._CONFIG_REC* %6, null, !dbg !564
  br i1 %7, label %8, label %9, !dbg !560

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !565

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_parse, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !568
  store i32 -1, i32* %2, align 4, !dbg !571
  br label %56, !dbg !571

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !572

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !574, !llvm.loop !575

; <label>:12:                                     ; preds = %11
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !576
  %14 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %13, i32 0, i32 0, !dbg !580
  %15 = load i8*, i8** %14, align 8, !dbg !580
  %16 = icmp ne i8* %15, null, !dbg !581
  br i1 %16, label %17, label %18, !dbg !576

; <label>:17:                                     ; preds = %12
  br label %19, !dbg !582

; <label>:18:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_parse, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)), !dbg !585
  store i32 -1, i32* %2, align 4, !dbg !588
  br label %56, !dbg !588

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !589

; <label>:20:                                     ; preds = %19
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !591
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 0, !dbg !592
  %23 = load i8*, i8** %22, align 8, !dbg !592
  %24 = call i32 (i8*, i32, ...) @open(i8* %23, i32 0), !dbg !593
  store i32 %24, i32* %4, align 4, !dbg !594
  %25 = load i32, i32* %4, align 4, !dbg !595
  %26 = icmp eq i32 %25, -1, !dbg !597
  br i1 %26, label %27, label %33, !dbg !598

; <label>:27:                                     ; preds = %20
  %28 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !599
  %29 = call i32* @__errno_location() #1, !dbg !600
  %30 = load i32, i32* %29, align 4, !dbg !601
  %31 = call i8* @g_strerror(i32 %30) #1, !dbg !602
  %32 = call i32 @config_error(%struct._CONFIG_REC* %28, i8* %31), !dbg !604
  store i32 %32, i32* %2, align 4, !dbg !606
  br label %56, !dbg !606

; <label>:33:                                     ; preds = %20
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !607
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !608
  %36 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %35, i32 0, i32 0, !dbg !609
  %37 = load i8*, i8** %36, align 8, !dbg !609
  call void @config_parse_init(%struct._CONFIG_REC* %34, i8* %37), !dbg !610
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !611
  %39 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %38, i32 0, i32 7, !dbg !612
  %40 = load %struct._GScanner*, %struct._GScanner** %39, align 8, !dbg !612
  %41 = load i32, i32* %4, align 4, !dbg !613
  call void @g_scanner_input_file(%struct._GScanner* %40, i32 %41), !dbg !614
  %42 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !615
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !616
  %44 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %43, i32 0, i32 4, !dbg !617
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %44, align 8, !dbg !617
  call void @config_parse_loop(%struct._CONFIG_REC* %42, %struct._CONFIG_NODE* %45, i32 0), !dbg !618
  %46 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !619
  %47 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %46, i32 0, i32 7, !dbg !620
  %48 = load %struct._GScanner*, %struct._GScanner** %47, align 8, !dbg !620
  call void @g_scanner_destroy(%struct._GScanner* %48), !dbg !621
  %49 = load i32, i32* %4, align 4, !dbg !622
  %50 = call i32 @close(i32 %49), !dbg !623
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !624
  %52 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %51, i32 0, i32 3, !dbg !625
  %53 = load i8*, i8** %52, align 8, !dbg !625
  %54 = icmp eq i8* %53, null, !dbg !626
  %55 = select i1 %54, i32 0, i32 -1, !dbg !624
  store i32 %55, i32* %2, align 4, !dbg !627
  br label %56, !dbg !627

; <label>:56:                                     ; preds = %33, %27, %18, %9
  %57 = load i32, i32* %2, align 4, !dbg !628
  ret i32 %57, !dbg !628
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @g_scanner_input_file(%struct._GScanner*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @config_parse_loop(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #0 !dbg !629 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !632, metadata !397), !dbg !633
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !634, metadata !397), !dbg !635
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !636, metadata !397), !dbg !637
  call void @llvm.dbg.declare(metadata i32* %7, metadata !638, metadata !397), !dbg !639
  br label %8, !dbg !640, !llvm.loop !641

; <label>:8:                                      ; preds = %3
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !642
  %10 = icmp ne %struct._CONFIG_REC* %9, null, !dbg !646
  br i1 %10, label %11, label %12, !dbg !642

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !647

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_parse_loop, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !650
  br label %58, !dbg !653

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !654

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !656, !llvm.loop !657

; <label>:15:                                     ; preds = %14
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !658
  %17 = icmp ne %struct._CONFIG_NODE* %16, null, !dbg !662
  br i1 %17, label %18, label %19, !dbg !658

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !663

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_parse_loop, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !666
  br label %58, !dbg !669

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !670

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !672

; <label>:22:                                     ; preds = %57, %21
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !673
  %24 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %23, i32 0, i32 7, !dbg !677
  %25 = load %struct._GScanner*, %struct._GScanner** %24, align 8, !dbg !677
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !678
  call void @config_parse_peek_token(%struct._GScanner* %25, %struct._CONFIG_NODE* %26), !dbg !679
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !680
  %28 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %27, i32 0, i32 7, !dbg !682
  %29 = load %struct._GScanner*, %struct._GScanner** %28, align 8, !dbg !682
  %30 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %29, i32 0, i32 10, !dbg !683
  %31 = load i32, i32* %30, align 8, !dbg !683
  %32 = load i32, i32* %6, align 4, !dbg !684
  %33 = icmp eq i32 %31, %32, !dbg !685
  br i1 %33, label %41, label %34, !dbg !686

; <label>:34:                                     ; preds = %22
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !687
  %36 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %35, i32 0, i32 7, !dbg !688
  %37 = load %struct._GScanner*, %struct._GScanner** %36, align 8, !dbg !688
  %38 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %37, i32 0, i32 10, !dbg !689
  %39 = load i32, i32* %38, align 8, !dbg !689
  %40 = icmp eq i32 %39, 0, !dbg !690
  br i1 %40, label %41, label %42, !dbg !691

; <label>:41:                                     ; preds = %34, %22
  br label %58, !dbg !693

; <label>:42:                                     ; preds = %34
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !695
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !696
  %45 = call i32 @config_parse_symbol(%struct._CONFIG_REC* %43, %struct._CONFIG_NODE* %44), !dbg !697
  store i32 %45, i32* %7, align 4, !dbg !698
  %46 = load i32, i32* %7, align 4, !dbg !699
  %47 = icmp ne i32 %46, 256, !dbg !701
  br i1 %47, label %48, label %57, !dbg !702

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %7, align 4, !dbg !703
  %50 = icmp eq i32 %49, 257, !dbg !706
  br i1 %50, label %51, label %52, !dbg !707

; <label>:51:                                     ; preds = %48
  store i32 256, i32* %7, align 4, !dbg !708
  br label %52, !dbg !709

; <label>:52:                                     ; preds = %51, %48
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !710
  %54 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %53, i32 0, i32 7, !dbg !711
  %55 = load %struct._GScanner*, %struct._GScanner** %54, align 8, !dbg !711
  %56 = load i32, i32* %7, align 4, !dbg !712
  call void @g_scanner_unexp_token(%struct._GScanner* %55, i32 %56, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i32 1), !dbg !713
  br label %57, !dbg !714

; <label>:57:                                     ; preds = %52, %42
  br label %22, !dbg !715, !llvm.loop !717

; <label>:58:                                     ; preds = %12, %19, %41
  ret void, !dbg !718
}

declare void @g_scanner_destroy(%struct._GScanner*) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define i32 @config_parse_data(%struct._CONFIG_REC*, i8*, i8*) #0 !dbg !719 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !722, metadata !397), !dbg !723
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !724, metadata !397), !dbg !725
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !726, metadata !397), !dbg !727
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !728
  %8 = load i8*, i8** %6, align 8, !dbg !729
  call void @config_parse_init(%struct._CONFIG_REC* %7, i8* %8), !dbg !730
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !731
  %10 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %9, i32 0, i32 7, !dbg !732
  %11 = load %struct._GScanner*, %struct._GScanner** %10, align 8, !dbg !732
  %12 = load i8*, i8** %5, align 8, !dbg !733
  %13 = load i8*, i8** %5, align 8, !dbg !734
  %14 = call i64 @strlen(i8* %13) #5, !dbg !735
  %15 = trunc i64 %14 to i32, !dbg !735
  call void @g_scanner_input_text(%struct._GScanner* %11, i8* %12, i32 %15), !dbg !736
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !738
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !739
  %18 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %17, i32 0, i32 4, !dbg !740
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %18, align 8, !dbg !740
  call void @config_parse_loop(%struct._CONFIG_REC* %16, %struct._CONFIG_NODE* %19, i32 0), !dbg !741
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !742
  %21 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %20, i32 0, i32 7, !dbg !743
  %22 = load %struct._GScanner*, %struct._GScanner** %21, align 8, !dbg !743
  call void @g_scanner_destroy(%struct._GScanner* %22), !dbg !744
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !745
  %24 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %23, i32 0, i32 3, !dbg !746
  %25 = load i8*, i8** %24, align 8, !dbg !746
  %26 = icmp eq i8* %25, null, !dbg !747
  %27 = select i1 %26, i32 0, i32 -1, !dbg !745
  ret i32 %27, !dbg !748
}

declare void @g_scanner_input_text(%struct._GScanner*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._CONFIG_REC* @config_open(i8*, i32) #0 !dbg !749 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !752, metadata !397), !dbg !753
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !754, metadata !397), !dbg !755
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !756, metadata !397), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %7, metadata !758, metadata !397), !dbg !759
  %8 = load i8*, i8** %4, align 8, !dbg !760
  %9 = icmp ne i8* %8, null, !dbg !762
  br i1 %9, label %10, label %24, !dbg !763

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !764
  %12 = load i32, i32* %5, align 4, !dbg !766
  %13 = icmp ne i32 %12, -1, !dbg !767
  %14 = select i1 %13, i32 64, i32 0, !dbg !766
  %15 = or i32 0, %14, !dbg !768
  %16 = load i32, i32* %5, align 4, !dbg !769
  %17 = call i32 (i8*, i32, ...) @open(i8* %11, i32 %15, i32 %16), !dbg !770
  store i32 %17, i32* %7, align 4, !dbg !771
  %18 = load i32, i32* %7, align 4, !dbg !772
  %19 = icmp eq i32 %18, -1, !dbg !774
  br i1 %19, label %20, label %21, !dbg !775

; <label>:20:                                     ; preds = %10
  store %struct._CONFIG_REC* null, %struct._CONFIG_REC** %3, align 8, !dbg !776
  br label %55, !dbg !776

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %7, align 4, !dbg !778
  %23 = call i32 @close(i32 %22), !dbg !779
  br label %24, !dbg !780

; <label>:24:                                     ; preds = %21, %2
  %25 = call noalias i8* @g_malloc0_n(i64 1, i64 72), !dbg !781
  %26 = bitcast i8* %25 to %struct._CONFIG_REC*, !dbg !782
  store %struct._CONFIG_REC* %26, %struct._CONFIG_REC** %6, align 8, !dbg !783
  %27 = load i8*, i8** %4, align 8, !dbg !784
  %28 = icmp eq i8* %27, null, !dbg !785
  br i1 %28, label %29, label %30, !dbg !784

; <label>:29:                                     ; preds = %24
  br label %33, !dbg !786

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %4, align 8, !dbg !788
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !790
  br label %33, !dbg !791

; <label>:33:                                     ; preds = %30, %29
  %34 = phi i8* [ null, %29 ], [ %32, %30 ], !dbg !792
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !794
  %36 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %35, i32 0, i32 0, !dbg !795
  store i8* %34, i8** %36, align 8, !dbg !796
  %37 = load i32, i32* %5, align 4, !dbg !797
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !798
  %39 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %38, i32 0, i32 1, !dbg !799
  store i32 %37, i32* %39, align 8, !dbg !800
  %40 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !801
  %41 = bitcast i8* %40 to %struct._CONFIG_NODE*, !dbg !802
  %42 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !803
  %43 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %42, i32 0, i32 4, !dbg !804
  store %struct._CONFIG_NODE* %41, %struct._CONFIG_NODE** %43, align 8, !dbg !805
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !806
  %45 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %44, i32 0, i32 4, !dbg !807
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %45, align 8, !dbg !807
  %47 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %46, i32 0, i32 0, !dbg !808
  store i32 2, i32* %47, align 8, !dbg !809
  %48 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !810
  %49 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !811
  %50 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %49, i32 0, i32 5, !dbg !812
  store %struct._GHashTable* %48, %struct._GHashTable** %50, align 8, !dbg !813
  %51 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !814
  %52 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !815
  %53 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %52, i32 0, i32 6, !dbg !816
  store %struct._GHashTable* %51, %struct._GHashTable** %53, align 8, !dbg !817
  %54 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !818
  store %struct._CONFIG_REC* %54, %struct._CONFIG_REC** %3, align 8, !dbg !819
  br label %55, !dbg !819

; <label>:55:                                     ; preds = %33, %20
  %56 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !820
  ret %struct._CONFIG_REC* %56, !dbg !820
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @g_istr_hash(i8*) #0 !dbg !821 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !824, metadata !397), !dbg !825
  call void @llvm.dbg.declare(metadata i8** %3, metadata !826, metadata !397), !dbg !827
  %6 = load i8*, i8** %2, align 8, !dbg !828
  store i8* %6, i8** %3, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata i32* %4, metadata !829, metadata !397), !dbg !830
  store i32 0, i32* %4, align 4, !dbg !830
  call void @llvm.dbg.declare(metadata i32* %5, metadata !831, metadata !397), !dbg !832
  br label %7, !dbg !833

; <label>:7:                                      ; preds = %33, %1
  %8 = load i8*, i8** %3, align 8, !dbg !834
  %9 = load i8, i8* %8, align 1, !dbg !836
  %10 = sext i8 %9 to i32, !dbg !836
  %11 = icmp ne i32 %10, 0, !dbg !837
  br i1 %11, label %12, label %36, !dbg !838

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %4, align 4, !dbg !839
  %14 = shl i32 %13, 4, !dbg !841
  %15 = load i8*, i8** %3, align 8, !dbg !842
  %16 = load i8, i8* %15, align 1, !dbg !843
  %17 = zext i8 %16 to i32, !dbg !844
  %18 = call i32 @toupper(i32 %17) #5, !dbg !845
  %19 = add i32 %14, %18, !dbg !846
  store i32 %19, i32* %4, align 4, !dbg !847
  %20 = load i32, i32* %4, align 4, !dbg !848
  %21 = zext i32 %20 to i64, !dbg !848
  %22 = and i64 %21, 4026531840, !dbg !850
  %23 = trunc i64 %22 to i32, !dbg !848
  store i32 %23, i32* %5, align 4, !dbg !851
  %24 = icmp ne i32 %23, 0, !dbg !851
  br i1 %24, label %25, label %33, !dbg !852

; <label>:25:                                     ; preds = %12
  %26 = load i32, i32* %4, align 4, !dbg !853
  %27 = load i32, i32* %5, align 4, !dbg !855
  %28 = lshr i32 %27, 24, !dbg !856
  %29 = xor i32 %26, %28, !dbg !857
  store i32 %29, i32* %4, align 4, !dbg !858
  %30 = load i32, i32* %4, align 4, !dbg !859
  %31 = load i32, i32* %5, align 4, !dbg !860
  %32 = xor i32 %30, %31, !dbg !861
  store i32 %32, i32* %4, align 4, !dbg !862
  br label %33, !dbg !863

; <label>:33:                                     ; preds = %25, %12
  %34 = load i8*, i8** %3, align 8, !dbg !864
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !864
  store i8* %35, i8** %3, align 8, !dbg !864
  br label %7, !dbg !865, !llvm.loop !867

; <label>:36:                                     ; preds = %7
  %37 = load i32, i32* %4, align 4, !dbg !868
  ret i32 %37, !dbg !869
}

; Function Attrs: nounwind uwtable
define internal i32 @g_istr_equal(i8*, i8*) #0 !dbg !870 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !873, metadata !397), !dbg !874
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !875, metadata !397), !dbg !876
  %5 = load i8*, i8** %3, align 8, !dbg !877
  %6 = load i8*, i8** %4, align 8, !dbg !878
  %7 = call i32 @g_ascii_strcasecmp(i8* %5, i8* %6), !dbg !879
  %8 = icmp eq i32 %7, 0, !dbg !880
  %9 = zext i1 %8 to i32, !dbg !880
  ret i32 %9, !dbg !881
}

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @config_close(%struct._CONFIG_REC*) #0 !dbg !882 {
  %2 = alloca %struct._CONFIG_REC*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %2, metadata !885, metadata !397), !dbg !886
  br label %3, !dbg !887, !llvm.loop !888

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !889
  %5 = icmp ne %struct._CONFIG_REC* %4, null, !dbg !893
  br i1 %5, label %6, label %7, !dbg !889

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !894

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.config_close, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !897
  br label %32, !dbg !900

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !901

; <label>:9:                                      ; preds = %8
  %10 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !903
  call void @config_nodes_remove_all(%struct._CONFIG_REC* %10), !dbg !904
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !905
  %12 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %11, i32 0, i32 4, !dbg !906
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !906
  %14 = bitcast %struct._CONFIG_NODE* %13 to i8*, !dbg !905
  call void @g_free(i8* %14), !dbg !907
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !908
  %16 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %15, i32 0, i32 5, !dbg !909
  %17 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !909
  call void @g_hash_table_foreach(%struct._GHashTable* %17, void (i8*, i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*, i8*)*), i8* null), !dbg !910
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !911
  %19 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %18, i32 0, i32 5, !dbg !912
  %20 = load %struct._GHashTable*, %struct._GHashTable** %19, align 8, !dbg !912
  call void @g_hash_table_destroy(%struct._GHashTable* %20), !dbg !913
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !914
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 6, !dbg !915
  %23 = load %struct._GHashTable*, %struct._GHashTable** %22, align 8, !dbg !915
  call void @g_hash_table_destroy(%struct._GHashTable* %23), !dbg !916
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !917
  %25 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %24, i32 0, i32 3, !dbg !918
  %26 = load i8*, i8** %25, align 8, !dbg !918
  call void @g_free(i8* %26), !dbg !919
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !920
  %28 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %27, i32 0, i32 0, !dbg !921
  %29 = load i8*, i8** %28, align 8, !dbg !921
  call void @g_free(i8* %29), !dbg !922
  %30 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !923
  %31 = bitcast %struct._CONFIG_REC* %30 to i8*, !dbg !923
  call void @g_free(i8* %31), !dbg !924
  br label %32, !dbg !925

; <label>:32:                                     ; preds = %9, %7
  ret void, !dbg !926
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define void @config_change_file_name(%struct._CONFIG_REC*, i8*, i32) #0 !dbg !928 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !931, metadata !397), !dbg !932
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !933, metadata !397), !dbg !934
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !935, metadata !397), !dbg !936
  br label %7, !dbg !937, !llvm.loop !938

; <label>:7:                                      ; preds = %3
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !939
  %9 = icmp ne %struct._CONFIG_REC* %8, null, !dbg !943
  br i1 %9, label %10, label %11, !dbg !939

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !944

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_change_file_name, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !947
  br label %34, !dbg !950

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !951

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !953, !llvm.loop !954

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !955
  %16 = icmp ne i8* %15, null, !dbg !959
  br i1 %16, label %17, label %18, !dbg !955

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !960

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_change_file_name, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !963
  br label %34, !dbg !966

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !967

; <label>:20:                                     ; preds = %19
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !969
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 0, !dbg !970
  %23 = load i8*, i8** %22, align 8, !dbg !970
  call void @g_free(i8* %23), !dbg !971
  %24 = load i8*, i8** %5, align 8, !dbg !972
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !973
  %26 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !974
  %27 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %26, i32 0, i32 0, !dbg !975
  store i8* %25, i8** %27, align 8, !dbg !976
  %28 = load i32, i32* %6, align 4, !dbg !977
  %29 = icmp ne i32 %28, -1, !dbg !979
  br i1 %29, label %30, label %34, !dbg !980

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %6, align 4, !dbg !981
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !982
  %33 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %32, i32 0, i32 1, !dbg !983
  store i32 %31, i32* %33, align 8, !dbg !984
  br label %34, !dbg !982

; <label>:34:                                     ; preds = %11, %18, %30, %20
  ret void, !dbg !985
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @config_parse_peek_token(%struct._GScanner*, %struct._CONFIG_NODE*) #0 !dbg !986 {
  %3 = alloca %struct._GScanner*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i32, align 4
  store %struct._GScanner* %0, %struct._GScanner** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GScanner** %3, metadata !989, metadata !397), !dbg !990
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !991, metadata !397), !dbg !992
  call void @llvm.dbg.declare(metadata i32* %5, metadata !993, metadata !397), !dbg !994
  store i32 0, i32* %5, align 4, !dbg !994
  br label %6, !dbg !995

; <label>:6:                                      ; preds = %34, %2
  %7 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !996
  %8 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %7), !dbg !1000
  %9 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1001
  %10 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 10, !dbg !1003
  %11 = load i32, i32* %10, align 8, !dbg !1003
  %12 = icmp eq i32 %11, 268, !dbg !1004
  br i1 %12, label %13, label %20, !dbg !1005

; <label>:13:                                     ; preds = %6
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1006
  %15 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1007
  %16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 11, !dbg !1008
  %17 = bitcast %union._GTokenValue* %16 to i8**, !dbg !1009
  %18 = load i8*, i8** %17, align 8, !dbg !1009
  %19 = call i32 @node_add_comment(%struct._CONFIG_NODE* %14, i8* %18), !dbg !1010
  br label %34, !dbg !1010

; <label>:20:                                     ; preds = %6
  %21 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1011
  %22 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %21, i32 0, i32 10, !dbg !1013
  %23 = load i32, i32* %22, align 8, !dbg !1013
  %24 = icmp eq i32 %23, 10, !dbg !1014
  br i1 %24, label %25, label %32, !dbg !1015

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %5, align 4, !dbg !1016
  %27 = icmp ne i32 %26, 0, !dbg !1016
  br i1 %27, label %28, label %31, !dbg !1019

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1020
  %30 = call i32 @node_add_comment(%struct._CONFIG_NODE* %29, i8* null), !dbg !1022
  br label %31, !dbg !1022

; <label>:31:                                     ; preds = %28, %25
  br label %33, !dbg !1023

; <label>:32:                                     ; preds = %20
  br label %37, !dbg !1024

; <label>:33:                                     ; preds = %31
  br label %34

; <label>:34:                                     ; preds = %33, %13
  store i32 1, i32* %5, align 4, !dbg !1025
  %35 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1026
  %36 = call i32 @g_scanner_get_next_token(%struct._GScanner* %35), !dbg !1027
  br label %6, !dbg !1028, !llvm.loop !1030

; <label>:37:                                     ; preds = %32
  ret void, !dbg !1031
}

; Function Attrs: nounwind uwtable
define internal i32 @config_parse_symbol(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1032 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !1035, metadata !397), !dbg !1036
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1037, metadata !397), !dbg !1038
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1039, metadata !397), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1041, metadata !397), !dbg !1042
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1043, metadata !397), !dbg !1044
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1045, metadata !397), !dbg !1046
  br label %10, !dbg !1047, !llvm.loop !1048

; <label>:10:                                     ; preds = %2
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1049
  %12 = icmp ne %struct._CONFIG_REC* %11, null, !dbg !1053
  br i1 %12, label %13, label %14, !dbg !1049

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1054

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_parse_symbol, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !1057
  store i32 257, i32* %3, align 4, !dbg !1060
  br label %159, !dbg !1060

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1061

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1063, !llvm.loop !1064

; <label>:17:                                     ; preds = %16
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1065
  %19 = icmp ne %struct._CONFIG_NODE* %18, null, !dbg !1069
  br i1 %19, label %20, label %21, !dbg !1065

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1070

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_parse_symbol, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !1073
  store i32 257, i32* %3, align 4, !dbg !1076
  br label %159, !dbg !1076

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1077

; <label>:23:                                     ; preds = %22
  %24 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1079
  %25 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %24, i32 0, i32 7, !dbg !1080
  %26 = load %struct._GScanner*, %struct._GScanner** %25, align 8, !dbg !1080
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1081
  call void @config_parse_get_token(%struct._GScanner* %26, %struct._CONFIG_NODE* %27), !dbg !1082
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1083
  %29 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %28, i32 0, i32 0, !dbg !1084
  %30 = load i32, i32* %29, align 8, !dbg !1084
  %31 = icmp eq i32 %30, 3, !dbg !1085
  %32 = select i1 %31, i32 44, i32 59, !dbg !1083
  store i32 %32, i32* %7, align 4, !dbg !1086
  store i8* null, i8** %9, align 8, !dbg !1087
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1088
  %34 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %33, i32 0, i32 0, !dbg !1090
  %35 = load i32, i32* %34, align 8, !dbg !1090
  %36 = icmp ne i32 %35, 3, !dbg !1091
  br i1 %36, label %37, label %58, !dbg !1092

; <label>:37:                                     ; preds = %23
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1093
  %39 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %38, i32 0, i32 7, !dbg !1094
  %40 = load %struct._GScanner*, %struct._GScanner** %39, align 8, !dbg !1094
  %41 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %40, i32 0, i32 6, !dbg !1095
  %42 = load i32, i32* %41, align 8, !dbg !1095
  %43 = icmp eq i32 %42, 264, !dbg !1096
  br i1 %43, label %44, label %58, !dbg !1097

; <label>:44:                                     ; preds = %37
  %45 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1099
  %46 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %45, i32 0, i32 7, !dbg !1101
  %47 = load %struct._GScanner*, %struct._GScanner** %46, align 8, !dbg !1101
  %48 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %47, i32 0, i32 7, !dbg !1102
  %49 = bitcast %union._GTokenValue* %48 to i8**, !dbg !1103
  %50 = load i8*, i8** %49, align 8, !dbg !1103
  %51 = call noalias i8* @g_strdup(i8* %50), !dbg !1104
  store i8* %51, i8** %9, align 8, !dbg !1105
  %52 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1106
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1107
  call void @config_parse_warn_missing(%struct._CONFIG_REC* %52, %struct._CONFIG_NODE* %53, i32 61, i32 1), !dbg !1108
  %54 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1109
  %55 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %54, i32 0, i32 7, !dbg !1110
  %56 = load %struct._GScanner*, %struct._GScanner** %55, align 8, !dbg !1110
  %57 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1111
  call void @config_parse_get_token(%struct._GScanner* %56, %struct._CONFIG_NODE* %57), !dbg !1112
  br label %58, !dbg !1113

; <label>:58:                                     ; preds = %44, %37, %23
  %59 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1114
  %60 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %59, i32 0, i32 7, !dbg !1115
  %61 = load %struct._GScanner*, %struct._GScanner** %60, align 8, !dbg !1115
  %62 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %61, i32 0, i32 6, !dbg !1116
  %63 = load i32, i32* %62, align 8, !dbg !1116
  switch i32 %63, label %156 [
    i32 264, label %64
    i32 123, label %97
    i32 40, label %129
  ], !dbg !1117

; <label>:64:                                     ; preds = %58
  %65 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1118
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1120
  %67 = load i8*, i8** %9, align 8, !dbg !1121
  %68 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1122
  %69 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %68, i32 0, i32 7, !dbg !1123
  %70 = load %struct._GScanner*, %struct._GScanner** %69, align 8, !dbg !1123
  %71 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %70, i32 0, i32 7, !dbg !1124
  %72 = bitcast %union._GTokenValue* %71 to i8**, !dbg !1125
  %73 = load i8*, i8** %72, align 8, !dbg !1125
  call void @config_node_set_str(%struct._CONFIG_REC* %65, %struct._CONFIG_NODE* %66, i8* %67, i8* %73), !dbg !1126
  %74 = load i8*, i8** %9, align 8, !dbg !1127
  call void @g_free(i8* %74), !dbg !1128
  store i32 1, i32* %8, align 4, !dbg !1129
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1130
  %76 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %75, i32 0, i32 0, !dbg !1132
  %77 = load i32, i32* %76, align 8, !dbg !1132
  %78 = icmp eq i32 %77, 3, !dbg !1133
  br i1 %78, label %79, label %92, !dbg !1134

; <label>:79:                                     ; preds = %64
  %80 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1135
  %81 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %80, i32 0, i32 7, !dbg !1137
  %82 = load %struct._GScanner*, %struct._GScanner** %81, align 8, !dbg !1137
  %83 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1138
  call void @config_parse_peek_token(%struct._GScanner* %82, %struct._CONFIG_NODE* %83), !dbg !1139
  %84 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1140
  %85 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %84, i32 0, i32 7, !dbg !1142
  %86 = load %struct._GScanner*, %struct._GScanner** %85, align 8, !dbg !1142
  %87 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %86, i32 0, i32 10, !dbg !1143
  %88 = load i32, i32* %87, align 8, !dbg !1143
  %89 = icmp eq i32 %88, 41, !dbg !1144
  br i1 %89, label %90, label %91, !dbg !1145

; <label>:90:                                     ; preds = %79
  store i32 0, i32* %8, align 4, !dbg !1146
  br label %91, !dbg !1147

; <label>:91:                                     ; preds = %90, %79
  br label %92, !dbg !1148

; <label>:92:                                     ; preds = %91, %64
  %93 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1149
  %94 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1150
  %95 = load i32, i32* %7, align 4, !dbg !1151
  %96 = load i32, i32* %8, align 4, !dbg !1152
  call void @config_parse_warn_missing(%struct._CONFIG_REC* %93, %struct._CONFIG_NODE* %94, i32 %95, i32 %96), !dbg !1153
  br label %158, !dbg !1154

; <label>:97:                                     ; preds = %58
  %98 = load i8*, i8** %9, align 8, !dbg !1155
  %99 = icmp eq i8* %98, null, !dbg !1157
  br i1 %99, label %100, label %106, !dbg !1158

; <label>:100:                                    ; preds = %97
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1159
  %102 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %101, i32 0, i32 0, !dbg !1161
  %103 = load i32, i32* %102, align 8, !dbg !1161
  %104 = icmp ne i32 %103, 3, !dbg !1162
  br i1 %104, label %105, label %106, !dbg !1163

; <label>:105:                                    ; preds = %100
  store i32 257, i32* %3, align 4, !dbg !1164
  br label %159, !dbg !1164

; <label>:106:                                    ; preds = %100, %97
  %107 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1165
  %108 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1166
  %109 = load i8*, i8** %9, align 8, !dbg !1167
  %110 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %107, %struct._CONFIG_NODE* %108, i8* %109, i32 2), !dbg !1168
  store %struct._CONFIG_NODE* %110, %struct._CONFIG_NODE** %6, align 8, !dbg !1169
  %111 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1170
  %112 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1171
  call void @config_parse_loop(%struct._CONFIG_REC* %111, %struct._CONFIG_NODE* %112, i32 125), !dbg !1172
  %113 = load i8*, i8** %9, align 8, !dbg !1173
  call void @g_free(i8* %113), !dbg !1174
  %114 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1175
  %115 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %114, i32 0, i32 7, !dbg !1176
  %116 = load %struct._GScanner*, %struct._GScanner** %115, align 8, !dbg !1176
  %117 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1177
  call void @config_parse_get_token(%struct._GScanner* %116, %struct._CONFIG_NODE* %117), !dbg !1178
  %118 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1179
  %119 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %118, i32 0, i32 7, !dbg !1181
  %120 = load %struct._GScanner*, %struct._GScanner** %119, align 8, !dbg !1181
  %121 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %120, i32 0, i32 6, !dbg !1182
  %122 = load i32, i32* %121, align 8, !dbg !1182
  %123 = icmp ne i32 %122, 125, !dbg !1183
  br i1 %123, label %124, label %125, !dbg !1184

; <label>:124:                                    ; preds = %106
  store i32 125, i32* %3, align 4, !dbg !1185
  br label %159, !dbg !1185

; <label>:125:                                    ; preds = %106
  %126 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1186
  %127 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1187
  %128 = load i32, i32* %7, align 4, !dbg !1188
  call void @config_parse_warn_missing(%struct._CONFIG_REC* %126, %struct._CONFIG_NODE* %127, i32 %128, i32 0), !dbg !1189
  br label %158, !dbg !1190

; <label>:129:                                    ; preds = %58
  %130 = load i8*, i8** %9, align 8, !dbg !1191
  %131 = icmp eq i8* %130, null, !dbg !1193
  br i1 %131, label %132, label %133, !dbg !1194

; <label>:132:                                    ; preds = %129
  store i32 257, i32* %3, align 4, !dbg !1195
  br label %159, !dbg !1195

; <label>:133:                                    ; preds = %129
  %134 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1196
  %135 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1197
  %136 = load i8*, i8** %9, align 8, !dbg !1198
  %137 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %134, %struct._CONFIG_NODE* %135, i8* %136, i32 3), !dbg !1199
  store %struct._CONFIG_NODE* %137, %struct._CONFIG_NODE** %6, align 8, !dbg !1200
  %138 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1201
  %139 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1202
  call void @config_parse_loop(%struct._CONFIG_REC* %138, %struct._CONFIG_NODE* %139, i32 41), !dbg !1203
  %140 = load i8*, i8** %9, align 8, !dbg !1204
  call void @g_free(i8* %140), !dbg !1205
  %141 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1206
  %142 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %141, i32 0, i32 7, !dbg !1207
  %143 = load %struct._GScanner*, %struct._GScanner** %142, align 8, !dbg !1207
  %144 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1208
  call void @config_parse_get_token(%struct._GScanner* %143, %struct._CONFIG_NODE* %144), !dbg !1209
  %145 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1210
  %146 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %145, i32 0, i32 7, !dbg !1212
  %147 = load %struct._GScanner*, %struct._GScanner** %146, align 8, !dbg !1212
  %148 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %147, i32 0, i32 6, !dbg !1213
  %149 = load i32, i32* %148, align 8, !dbg !1213
  %150 = icmp ne i32 %149, 41, !dbg !1214
  br i1 %150, label %151, label %152, !dbg !1215

; <label>:151:                                    ; preds = %133
  store i32 41, i32* %3, align 4, !dbg !1216
  br label %159, !dbg !1216

; <label>:152:                                    ; preds = %133
  %153 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1217
  %154 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1218
  %155 = load i32, i32* %7, align 4, !dbg !1219
  call void @config_parse_warn_missing(%struct._CONFIG_REC* %153, %struct._CONFIG_NODE* %154, i32 %155, i32 0), !dbg !1220
  br label %158, !dbg !1221

; <label>:156:                                    ; preds = %58
  %157 = load i8*, i8** %9, align 8, !dbg !1222
  call void @g_free(i8* %157), !dbg !1223
  store i32 264, i32* %3, align 4, !dbg !1224
  br label %159, !dbg !1224

; <label>:158:                                    ; preds = %152, %125, %92
  store i32 256, i32* %3, align 4, !dbg !1225
  br label %159, !dbg !1225

; <label>:159:                                    ; preds = %158, %156, %151, %132, %124, %105, %21, %14
  %160 = load i32, i32* %3, align 4, !dbg !1226
  ret i32 %160, !dbg !1226
}

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #2

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #2

; Function Attrs: nounwind uwtable
define internal i32 @node_add_comment(%struct._CONFIG_NODE*, i8*) #0 !dbg !1227 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1230, metadata !397), !dbg !1231
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1232, metadata !397), !dbg !1233
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1234, metadata !397), !dbg !1235
  br label %7, !dbg !1236, !llvm.loop !1237

; <label>:7:                                      ; preds = %2
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1238
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !1242
  br i1 %9, label %10, label %11, !dbg !1238

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1243

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.node_add_comment, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !1246
  store i32 -1, i32* %3, align 4, !dbg !1249
  br label %49, !dbg !1249

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1250

; <label>:13:                                     ; preds = %12
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1252
  %15 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %14, i32 0, i32 0, !dbg !1254
  %16 = load i32, i32* %15, align 8, !dbg !1254
  %17 = icmp eq i32 %16, 2, !dbg !1255
  br i1 %17, label %24, label %18, !dbg !1256

; <label>:18:                                     ; preds = %13
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1257
  %20 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %19, i32 0, i32 0, !dbg !1259
  %21 = load i32, i32* %20, align 8, !dbg !1259
  %22 = icmp eq i32 %21, 3, !dbg !1260
  br i1 %22, label %24, label %23, !dbg !1261

; <label>:23:                                     ; preds = %18
  store i32 -1, i32* %3, align 4, !dbg !1262
  br label %49, !dbg !1262

; <label>:24:                                     ; preds = %18, %13
  %25 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1263
  %26 = bitcast i8* %25 to %struct._CONFIG_NODE*, !dbg !1264
  store %struct._CONFIG_NODE* %26, %struct._CONFIG_NODE** %6, align 8, !dbg !1265
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1266
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 0, !dbg !1267
  store i32 4, i32* %28, align 8, !dbg !1268
  %29 = load i8*, i8** %5, align 8, !dbg !1269
  %30 = icmp eq i8* %29, null, !dbg !1270
  br i1 %30, label %31, label %32, !dbg !1269

; <label>:31:                                     ; preds = %24
  br label %35, !dbg !1271

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %5, align 8, !dbg !1273
  %34 = call noalias i8* @g_strdup(i8* %33), !dbg !1275
  br label %35, !dbg !1276

; <label>:35:                                     ; preds = %32, %31
  %36 = phi i8* [ null, %31 ], [ %34, %32 ], !dbg !1277
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1279
  %38 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %37, i32 0, i32 2, !dbg !1280
  store i8* %36, i8** %38, align 8, !dbg !1281
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1282
  %40 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %39, i32 0, i32 2, !dbg !1283
  %41 = load i8*, i8** %40, align 8, !dbg !1283
  %42 = bitcast i8* %41 to %struct._GSList*, !dbg !1282
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1284
  %44 = bitcast %struct._CONFIG_NODE* %43 to i8*, !dbg !1284
  %45 = call %struct._GSList* @g_slist_append(%struct._GSList* %42, i8* %44), !dbg !1285
  %46 = bitcast %struct._GSList* %45 to i8*, !dbg !1285
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1286
  %48 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %47, i32 0, i32 2, !dbg !1287
  store i8* %46, i8** %48, align 8, !dbg !1288
  store i32 0, i32* %3, align 4, !dbg !1289
  br label %49, !dbg !1289

; <label>:49:                                     ; preds = %35, %23, %11
  %50 = load i32, i32* %3, align 4, !dbg !1290
  ret i32 %50, !dbg !1290
}

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @config_parse_get_token(%struct._GScanner*, %struct._CONFIG_NODE*) #0 !dbg !1291 {
  %3 = alloca %struct._GScanner*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i32, align 4
  store %struct._GScanner* %0, %struct._GScanner** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GScanner** %3, metadata !1292, metadata !397), !dbg !1293
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1294, metadata !397), !dbg !1295
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1296, metadata !397), !dbg !1297
  store i32 0, i32* %5, align 4, !dbg !1297
  br label %6, !dbg !1298

; <label>:6:                                      ; preds = %50, %2
  %7 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1299
  %8 = call i32 @g_scanner_get_next_token(%struct._GScanner* %7), !dbg !1303
  %9 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1304
  %10 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %9, i32 0, i32 6, !dbg !1306
  %11 = load i32, i32* %10, align 8, !dbg !1306
  %12 = icmp eq i32 %11, 268, !dbg !1307
  br i1 %12, label %13, label %20, !dbg !1308

; <label>:13:                                     ; preds = %6
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1309
  %15 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1310
  %16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 7, !dbg !1311
  %17 = bitcast %union._GTokenValue* %16 to i8**, !dbg !1312
  %18 = load i8*, i8** %17, align 8, !dbg !1312
  %19 = call i32 @node_add_comment(%struct._CONFIG_NODE* %14, i8* %18), !dbg !1313
  br label %50, !dbg !1313

; <label>:20:                                     ; preds = %6
  %21 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1314
  %22 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %21, i32 0, i32 6, !dbg !1316
  %23 = load i32, i32* %22, align 8, !dbg !1316
  %24 = icmp eq i32 %23, 10, !dbg !1317
  br i1 %24, label %25, label %32, !dbg !1318

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %5, align 4, !dbg !1319
  %27 = icmp ne i32 %26, 0, !dbg !1319
  br i1 %27, label %28, label %31, !dbg !1322

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1323
  %30 = call i32 @node_add_comment(%struct._CONFIG_NODE* %29, i8* null), !dbg !1325
  br label %31, !dbg !1325

; <label>:31:                                     ; preds = %28, %25
  br label %49, !dbg !1326

; <label>:32:                                     ; preds = %20
  %33 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1327
  %34 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %33, i32 0, i32 6, !dbg !1330
  %35 = load i32, i32* %34, align 8, !dbg !1330
  %36 = icmp eq i32 %35, 261, !dbg !1331
  br i1 %36, label %37, label %48, !dbg !1332

; <label>:37:                                     ; preds = %32
  %38 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1333
  %39 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %38, i32 0, i32 6, !dbg !1335
  store i32 264, i32* %39, align 8, !dbg !1336
  %40 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1337
  %41 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %40, i32 0, i32 7, !dbg !1338
  %42 = bitcast %union._GTokenValue* %41 to i64*, !dbg !1339
  %43 = load i64, i64* %42, align 8, !dbg !1339
  %44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i64 %43), !dbg !1340
  %45 = load %struct._GScanner*, %struct._GScanner** %3, align 8, !dbg !1341
  %46 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %45, i32 0, i32 7, !dbg !1342
  %47 = bitcast %union._GTokenValue* %46 to i8**, !dbg !1343
  store i8* %44, i8** %47, align 8, !dbg !1344
  br label %48, !dbg !1345

; <label>:48:                                     ; preds = %37, %32
  br label %51, !dbg !1346

; <label>:49:                                     ; preds = %31
  br label %50

; <label>:50:                                     ; preds = %49, %13
  store i32 1, i32* %5, align 4, !dbg !1347
  br label %6, !dbg !1348, !llvm.loop !1350

; <label>:51:                                     ; preds = %48
  ret void, !dbg !1351
}

; Function Attrs: nounwind uwtable
define internal void @config_parse_warn_missing(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32, i32) #0 !dbg !1352 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !1355, metadata !397), !dbg !1356
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1357, metadata !397), !dbg !1358
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1359, metadata !397), !dbg !1360
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1361, metadata !397), !dbg !1362
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1363
  %10 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %9, i32 0, i32 7, !dbg !1364
  %11 = load %struct._GScanner*, %struct._GScanner** %10, align 8, !dbg !1364
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1365
  call void @config_parse_peek_token(%struct._GScanner* %11, %struct._CONFIG_NODE* %12), !dbg !1366
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1367
  %14 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %13, i32 0, i32 7, !dbg !1369
  %15 = load %struct._GScanner*, %struct._GScanner** %14, align 8, !dbg !1369
  %16 = getelementptr inbounds %struct._GScanner, %struct._GScanner* %15, i32 0, i32 10, !dbg !1370
  %17 = load i32, i32* %16, align 8, !dbg !1370
  %18 = load i32, i32* %7, align 4, !dbg !1371
  %19 = icmp eq i32 %17, %18, !dbg !1372
  br i1 %19, label %20, label %25, !dbg !1373

; <label>:20:                                     ; preds = %4
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1374
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 7, !dbg !1376
  %23 = load %struct._GScanner*, %struct._GScanner** %22, align 8, !dbg !1376
  %24 = call i32 @g_scanner_get_next_token(%struct._GScanner* %23), !dbg !1377
  br label %33, !dbg !1378

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %8, align 4, !dbg !1379
  %27 = icmp ne i32 %26, 0, !dbg !1379
  br i1 %27, label %28, label %33, !dbg !1381

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !1382
  %30 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %29, i32 0, i32 7, !dbg !1383
  %31 = load %struct._GScanner*, %struct._GScanner** %30, align 8, !dbg !1383
  %32 = load i32, i32* %7, align 4, !dbg !1384
  call void (%struct._GScanner*, i8*, ...) @g_scanner_warn(%struct._GScanner* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 %32), !dbg !1385
  br label %33, !dbg !1385

; <label>:33:                                     ; preds = %20, %28, %25
  ret void, !dbg !1386
}

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @g_scanner_warn(%struct._GScanner*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!388, !389}
!llvm.ident = !{!390}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !70)
!1 = !DIFile(filename: "line10-parse.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !30, !37, !42, !51, !62}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 75, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!6 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!7 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!8 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!9 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!10 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!11 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!12 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!13 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!14 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!15 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!16 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!17 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!18 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!19 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!20 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!21 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!22 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!23 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!24 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!25 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!26 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!27 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!28 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!29 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 69, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!34 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!35 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!36 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 77, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!40 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!41 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 31, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "G_IO_IN", value: 1)
!46 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!47 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!48 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!49 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!50 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 84, size: 32, align: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!54 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!55 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!56 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!57 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!58 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!59 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!60 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!61 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 4, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!66 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!67 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!68 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!69 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!70 = !{!71, !82, !103, !176, !178, !188, !373, !380, !384, !131, !169, !154}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !4, line: 41, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !103, !175}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !4, line: 37, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !4, line: 169, size: 1152, align: 64, elements: !78)
!78 = !{!79, !83, !86, !87, !92, !97, !130, !132, !156, !157, !158, !159, !160, !161, !162, !167, !170, !171, !172, !173, !174}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !77, file: !4, line: 172, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !81, line: 77, baseType: !82)
!81 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !77, file: !4, line: 173, baseType: !84, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !81, line: 55, baseType: !85)
!85 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !77, file: !4, line: 176, baseType: !84, size: 32, align: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !77, file: !4, line: 179, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !81, line: 46, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !77, file: !4, line: 182, baseType: !93, size: 64, align: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !95, line: 36, baseType: !96)
!95 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !95, line: 36, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !77, file: !4, line: 185, baseType: !98, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !4, line: 38, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !4, line: 127, size: 320, align: 64, elements: !101)
!101 = !{!102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !100, file: !4, line: 131, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !100, file: !4, line: 132, baseType: !103, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !100, file: !4, line: 133, baseType: !103, size: 64, align: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !100, file: !4, line: 134, baseType: !103, size: 64, align: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !100, file: !4, line: 138, baseType: !84, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !100, file: !4, line: 143, baseType: !84, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !100, file: !4, line: 144, baseType: !84, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !100, file: !4, line: 145, baseType: !84, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !100, file: !4, line: 146, baseType: !84, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !100, file: !4, line: 147, baseType: !84, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !100, file: !4, line: 148, baseType: !84, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !100, file: !4, line: 149, baseType: !84, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !100, file: !4, line: 150, baseType: !84, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !100, file: !4, line: 151, baseType: !84, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !100, file: !4, line: 152, baseType: !84, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !100, file: !4, line: 153, baseType: !84, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !100, file: !4, line: 154, baseType: !84, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !100, file: !4, line: 155, baseType: !84, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !100, file: !4, line: 156, baseType: !84, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !100, file: !4, line: 157, baseType: !84, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !100, file: !4, line: 158, baseType: !84, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !100, file: !4, line: 159, baseType: !84, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !100, file: !4, line: 160, baseType: !84, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !100, file: !4, line: 161, baseType: !84, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !100, file: !4, line: 162, baseType: !84, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !100, file: !4, line: 163, baseType: !84, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !100, file: !4, line: 166, baseType: !84, size: 32, align: 32, offset: 288)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !77, file: !4, line: 188, baseType: !131, size: 32, align: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !4, line: 109, baseType: !3)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !77, file: !4, line: 189, baseType: !133, size: 64, align: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !4, line: 39, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !4, line: 111, size: 64, align: 64, elements: !135)
!135 = !{!136, !137, !138, !141, !142, !143, !146, !149, !150, !151, !152, !155}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !134, file: !4, line: 113, baseType: !80, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !134, file: !4, line: 114, baseType: !103, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !134, file: !4, line: 115, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !81, line: 54, baseType: !140)
!140 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !134, file: !4, line: 116, baseType: !139, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !134, file: !4, line: 117, baseType: !139, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !134, file: !4, line: 118, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !145, line: 52, baseType: !140)
!145 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !134, file: !4, line: 119, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !81, line: 58, baseType: !148)
!148 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !134, file: !4, line: 120, baseType: !139, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !134, file: !4, line: 121, baseType: !103, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !134, file: !4, line: 122, baseType: !103, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !134, file: !4, line: 123, baseType: !153, size: 8, align: 8)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !81, line: 52, baseType: !154)
!154 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !134, file: !4, line: 124, baseType: !84, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !77, file: !4, line: 190, baseType: !84, size: 32, align: 32, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !77, file: !4, line: 191, baseType: !84, size: 32, align: 32, offset: 480)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !77, file: !4, line: 194, baseType: !131, size: 32, align: 32, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !77, file: !4, line: 195, baseType: !133, size: 64, align: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !77, file: !4, line: 196, baseType: !84, size: 32, align: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !77, file: !4, line: 197, baseType: !84, size: 32, align: 32, offset: 672)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !77, file: !4, line: 201, baseType: !163, size: 64, align: 64, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !165, line: 37, baseType: !166)
!165 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !165, line: 37, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !77, file: !4, line: 202, baseType: !168, size: 32, align: 32, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !81, line: 49, baseType: !169)
!169 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !77, file: !4, line: 203, baseType: !88, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !77, file: !4, line: 204, baseType: !88, size: 64, align: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !77, file: !4, line: 205, baseType: !103, size: 64, align: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !77, file: !4, line: 206, baseType: !84, size: 32, align: 32, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !77, file: !4, line: 210, baseType: !71, size: 64, align: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !81, line: 50, baseType: !168)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !63, line: 18, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !63, line: 49, size: 576, align: 64, elements: !181)
!181 = !{!182, !184, !185, !186, !187, !195, !196, !197, !198, !371, !372}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !180, file: !63, line: 50, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !180, file: !63, line: 51, baseType: !169, size: 32, align: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !180, file: !63, line: 52, baseType: !169, size: 32, align: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !180, file: !63, line: 54, baseType: !183, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !180, file: !63, line: 55, baseType: !188, size: 64, align: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !63, line: 17, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !63, line: 20, size: 192, align: 64, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !63, line: 21, baseType: !169, size: 32, align: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !190, file: !63, line: 22, baseType: !183, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !190, file: !63, line: 23, baseType: !82, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !180, file: !63, line: 56, baseType: !163, size: 64, align: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !180, file: !63, line: 57, baseType: !163, size: 64, align: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !180, file: !63, line: 59, baseType: !75, size: 64, align: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !180, file: !63, line: 62, baseType: !199, size: 64, align: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !202)
!202 = !{!203, !204, !338, !339, !344, !345, !346, !347, !348, !357, !358, !359, !363, !364, !365, !366, !367, !368, !369, !370}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !201, file: !31, line: 100, baseType: !168, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !201, file: !31, line: 101, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !208)
!208 = !{!209, !228, !232, !239, !243, !325, !329, !334}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !207, file: !31, line: 133, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !199, !103, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !145, line: 66, baseType: !140)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !219, line: 42, baseType: !220)
!219 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !219, line: 44, size: 128, align: 64, elements: !221)
!221 = !{!222, !226, !227}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !220, file: !219, line: 46, baseType: !223, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !224, line: 36, baseType: !225)
!224 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !145, line: 45, baseType: !85)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !220, file: !219, line: 47, baseType: !168, size: 32, align: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !220, file: !219, line: 48, baseType: !103, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !207, file: !31, line: 138, baseType: !229, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!213, !199, !88, !214, !215, !216}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !207, file: !31, line: 143, baseType: !233, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!213, !199, !236, !238, !216}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !145, line: 51, baseType: !237)
!237 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !207, file: !31, line: 147, baseType: !240, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!213, !199, !216}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !207, file: !31, line: 149, baseType: !244, size: 64, align: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !199, !324}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !250)
!250 = !{!251, !252, !272, !301, !302, !306, !307, !308, !309, !317, !318, !319, !320}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !249, file: !43, line: 174, baseType: !80, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !249, file: !43, line: 175, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !256)
!256 = !{!257, !261, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !255, file: !43, line: 198, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !80}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !255, file: !43, line: 199, baseType: !258, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !255, file: !43, line: 200, baseType: !263, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !80, !247, !266, !271}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!175, !80}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !249, file: !43, line: 177, baseType: !273, size: 64, align: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !277)
!277 = !{!278, !283, !287, !291, !295, !296}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !276, file: !43, line: 216, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!175, !247, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !276, file: !43, line: 218, baseType: !284, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!175, !247}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !276, file: !43, line: 219, baseType: !288, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!175, !247, !267, !80}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !276, file: !43, line: 222, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !247}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !276, file: !43, line: 226, baseType: !267, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !276, file: !43, line: 227, baseType: !297, size: 64, align: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !249, file: !43, line: 178, baseType: !84, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !249, file: !43, line: 180, baseType: !303, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !249, file: !43, line: 182, baseType: !168, size: 32, align: 32, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !43, line: 183, baseType: !84, size: 32, align: 32, offset: 352)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !249, file: !43, line: 184, baseType: !84, size: 32, align: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !249, file: !43, line: 186, baseType: !310, size: 64, align: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !312, line: 37, baseType: !313)
!312 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !312, line: 39, size: 128, align: 64, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !313, file: !312, line: 41, baseType: !80, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !312, line: 42, baseType: !310, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !43, line: 188, baseType: !247, size: 64, align: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !43, line: 189, baseType: !247, size: 64, align: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !43, line: 191, baseType: !183, size: 64, align: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !249, file: !43, line: 193, baseType: !321, size: 64, align: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !323)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !207, file: !31, line: 151, baseType: !326, size: 64, align: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !199}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !207, file: !31, line: 152, baseType: !330, size: 64, align: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!213, !199, !333, !216}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !207, file: !31, line: 155, baseType: !335, size: 64, align: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!333, !199}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !201, file: !31, line: 103, baseType: !103, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !201, file: !31, line: 104, baseType: !340, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !341, line: 77, baseType: !342)
!341 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !341, line: 77, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !201, file: !31, line: 105, baseType: !340, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !201, file: !31, line: 106, baseType: !103, size: 64, align: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !201, file: !31, line: 107, baseType: !84, size: 32, align: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !201, file: !31, line: 109, baseType: !214, size: 64, align: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !201, file: !31, line: 110, baseType: !349, size: 64, align: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !351, line: 39, baseType: !352)
!351 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !351, line: 41, size: 192, align: 64, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !352, file: !351, line: 43, baseType: !103, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !352, file: !351, line: 44, baseType: !214, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !352, file: !351, line: 45, baseType: !214, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !201, file: !31, line: 111, baseType: !349, size: 64, align: 64, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !201, file: !31, line: 112, baseType: !349, size: 64, align: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !201, file: !31, line: 113, baseType: !360, size: 48, align: 8, offset: 704)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 48, align: 8, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 6)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !201, file: !31, line: 117, baseType: !84, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !201, file: !31, line: 118, baseType: !84, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !201, file: !31, line: 119, baseType: !84, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !201, file: !31, line: 120, baseType: !84, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !201, file: !31, line: 121, baseType: !84, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !201, file: !31, line: 122, baseType: !84, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !201, file: !31, line: 124, baseType: !80, size: 64, align: 64, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !201, file: !31, line: 125, baseType: !80, size: 64, align: 64, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !180, file: !63, line: 63, baseType: !169, size: 32, align: 32, offset: 512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !180, file: !63, line: 64, baseType: !169, size: 32, align: 32, offset: 544)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !81, line: 90, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!84, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !81, line: 78, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !81, line: 80, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!168, !377, !377}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !81, line: 91, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !80, !80, !80}
!388 = !{i32 2, !"Dwarf Version", i32 4}
!389 = !{i32 2, !"Debug Info Version", i32 3}
!390 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!391 = distinct !DISubprogram(name: "config_error", scope: !392, file: !392, line: 46, type: !393, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!392 = !DIFile(filename: "parse.c", directory: "/home/lichi/Desktop/irssi/task1")
!393 = !DISubroutineType(types: !394)
!394 = !{!169, !178, !176}
!395 = !{}
!396 = !DILocalVariable(name: "rec", arg: 1, scope: !391, file: !392, line: 46, type: !178)
!397 = !DIExpression()
!398 = !DILocation(line: 46, column: 30, scope: !391)
!399 = !DILocalVariable(name: "msg", arg: 2, scope: !391, file: !392, line: 46, type: !176)
!400 = !DILocation(line: 46, column: 47, scope: !391)
!401 = !DILocation(line: 48, column: 2, scope: !391)
!402 = distinct !{!402, !401}
!403 = !DILocation(line: 48, column: 11, scope: !404)
!404 = !DILexicalBlockFile(scope: !405, file: !392, discriminator: 1)
!405 = distinct !DILexicalBlock(scope: !406, file: !392, line: 48, column: 11)
!406 = distinct !DILexicalBlock(scope: !391, file: !392, line: 48, column: 5)
!407 = !DILocation(line: 48, column: 16, scope: !404)
!408 = !DILocation(line: 48, column: 37, scope: !409)
!409 = !DILexicalBlockFile(scope: !410, file: !392, discriminator: 2)
!410 = distinct !DILexicalBlock(scope: !405, file: !392, line: 48, column: 28)
!411 = !DILocation(line: 48, column: 42, scope: !409)
!412 = !DILocation(line: 48, column: 30, scope: !409)
!413 = !DILocation(line: 48, column: 56, scope: !409)
!414 = !DILocation(line: 48, column: 61, scope: !409)
!415 = !DILocation(line: 48, column: 73, scope: !409)
!416 = !DILocation(line: 48, column: 3, scope: !409)
!417 = !DILocation(line: 48, column: 5, scope: !418)
!418 = !DILexicalBlockFile(scope: !406, file: !392, discriminator: 3)
!419 = !DILocation(line: 49, column: 29, scope: !391)
!420 = !DILocation(line: 49, column: 20, scope: !391)
!421 = !DILocation(line: 49, column: 2, scope: !391)
!422 = !DILocation(line: 49, column: 7, scope: !391)
!423 = !DILocation(line: 49, column: 18, scope: !391)
!424 = !DILocation(line: 50, column: 2, scope: !391)
!425 = distinct !DISubprogram(name: "config_parse_init", scope: !392, file: !392, line: 246, type: !426, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !178, !176}
!428 = !DILocalVariable(name: "rec", arg: 1, scope: !425, file: !392, line: 246, type: !178)
!429 = !DILocation(line: 246, column: 36, scope: !425)
!430 = !DILocalVariable(name: "name", arg: 2, scope: !425, file: !392, line: 246, type: !176)
!431 = !DILocation(line: 246, column: 53, scope: !425)
!432 = !DILocalVariable(name: "scanner", scope: !425, file: !392, line: 248, type: !75)
!433 = !DILocation(line: 248, column: 12, scope: !425)
!434 = !DILocation(line: 250, column: 2, scope: !425)
!435 = distinct !{!435, !434}
!436 = !DILocation(line: 250, column: 11, scope: !437)
!437 = !DILexicalBlockFile(scope: !438, file: !392, discriminator: 1)
!438 = distinct !DILexicalBlock(scope: !439, file: !392, line: 250, column: 11)
!439 = distinct !DILexicalBlock(scope: !425, file: !392, line: 250, column: 5)
!440 = !DILocation(line: 250, column: 16, scope: !437)
!441 = !DILocation(line: 250, column: 37, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !392, discriminator: 2)
!443 = distinct !DILexicalBlock(scope: !438, file: !392, line: 250, column: 28)
!444 = !DILocation(line: 250, column: 42, scope: !442)
!445 = !DILocation(line: 250, column: 30, scope: !442)
!446 = !DILocation(line: 250, column: 56, scope: !442)
!447 = !DILocation(line: 250, column: 61, scope: !442)
!448 = !DILocation(line: 250, column: 73, scope: !442)
!449 = !DILocation(line: 250, column: 3, scope: !442)
!450 = !DILocation(line: 250, column: 5, scope: !451)
!451 = !DILexicalBlockFile(scope: !439, file: !392, discriminator: 3)
!452 = !DILocation(line: 251, column: 26, scope: !425)
!453 = !DILocation(line: 251, column: 2, scope: !425)
!454 = !DILocation(line: 253, column: 27, scope: !425)
!455 = !DILocation(line: 253, column: 25, scope: !425)
!456 = !DILocation(line: 253, column: 2, scope: !425)
!457 = !DILocation(line: 253, column: 7, scope: !425)
!458 = !DILocation(line: 253, column: 15, scope: !425)
!459 = !DILocation(line: 254, column: 2, scope: !425)
!460 = !DILocation(line: 254, column: 11, scope: !425)
!461 = !DILocation(line: 254, column: 19, scope: !425)
!462 = !DILocation(line: 254, column: 39, scope: !425)
!463 = !DILocation(line: 255, column: 2, scope: !425)
!464 = !DILocation(line: 255, column: 11, scope: !425)
!465 = !DILocation(line: 255, column: 19, scope: !425)
!466 = !DILocation(line: 255, column: 41, scope: !425)
!467 = !DILocation(line: 256, column: 2, scope: !425)
!468 = !DILocation(line: 256, column: 11, scope: !425)
!469 = !DILocation(line: 256, column: 19, scope: !425)
!470 = !DILocation(line: 256, column: 40, scope: !425)
!471 = !DILocation(line: 257, column: 2, scope: !425)
!472 = !DILocation(line: 257, column: 11, scope: !425)
!473 = !DILocation(line: 257, column: 19, scope: !425)
!474 = !DILocation(line: 257, column: 31, scope: !425)
!475 = !DILocation(line: 258, column: 2, scope: !425)
!476 = !DILocation(line: 258, column: 11, scope: !425)
!477 = !DILocation(line: 258, column: 19, scope: !425)
!478 = !DILocation(line: 258, column: 30, scope: !425)
!479 = !DILocation(line: 259, column: 2, scope: !425)
!480 = !DILocation(line: 259, column: 11, scope: !425)
!481 = !DILocation(line: 259, column: 19, scope: !425)
!482 = !DILocation(line: 259, column: 30, scope: !425)
!483 = !DILocation(line: 260, column: 2, scope: !425)
!484 = !DILocation(line: 260, column: 11, scope: !425)
!485 = !DILocation(line: 260, column: 19, scope: !425)
!486 = !DILocation(line: 260, column: 34, scope: !425)
!487 = !DILocation(line: 261, column: 2, scope: !425)
!488 = !DILocation(line: 261, column: 11, scope: !425)
!489 = !DILocation(line: 261, column: 19, scope: !425)
!490 = !DILocation(line: 261, column: 34, scope: !425)
!491 = !DILocation(line: 262, column: 2, scope: !425)
!492 = !DILocation(line: 262, column: 11, scope: !425)
!493 = !DILocation(line: 262, column: 19, scope: !425)
!494 = !DILocation(line: 262, column: 41, scope: !425)
!495 = !DILocation(line: 263, column: 2, scope: !425)
!496 = !DILocation(line: 263, column: 11, scope: !425)
!497 = !DILocation(line: 263, column: 19, scope: !425)
!498 = !DILocation(line: 263, column: 39, scope: !425)
!499 = !DILocation(line: 265, column: 23, scope: !425)
!500 = !DILocation(line: 265, column: 2, scope: !425)
!501 = !DILocation(line: 265, column: 11, scope: !425)
!502 = !DILocation(line: 265, column: 21, scope: !425)
!503 = !DILocation(line: 266, column: 24, scope: !425)
!504 = !DILocation(line: 266, column: 2, scope: !425)
!505 = !DILocation(line: 266, column: 11, scope: !425)
!506 = !DILocation(line: 266, column: 22, scope: !425)
!507 = !DILocation(line: 267, column: 2, scope: !425)
!508 = !DILocation(line: 267, column: 11, scope: !425)
!509 = !DILocation(line: 267, column: 23, scope: !425)
!510 = !DILocation(line: 268, column: 1, scope: !425)
!511 = distinct !DISubprogram(name: "config_parse_error_func", scope: !392, file: !392, line: 232, type: !512, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !75, !183, !169}
!514 = !DILocalVariable(name: "scanner", arg: 1, scope: !511, file: !392, line: 232, type: !75)
!515 = !DILocation(line: 232, column: 47, scope: !511)
!516 = !DILocalVariable(name: "message", arg: 2, scope: !511, file: !392, line: 232, type: !183)
!517 = !DILocation(line: 232, column: 62, scope: !511)
!518 = !DILocalVariable(name: "is_error", arg: 3, scope: !511, file: !392, line: 232, type: !169)
!519 = !DILocation(line: 232, column: 75, scope: !511)
!520 = !DILocalVariable(name: "rec", scope: !511, file: !392, line: 234, type: !178)
!521 = !DILocation(line: 234, column: 14, scope: !511)
!522 = !DILocation(line: 234, column: 20, scope: !511)
!523 = !DILocation(line: 234, column: 29, scope: !511)
!524 = !DILocalVariable(name: "old", scope: !511, file: !392, line: 235, type: !183)
!525 = !DILocation(line: 235, column: 8, scope: !511)
!526 = !DILocation(line: 237, column: 8, scope: !511)
!527 = !DILocation(line: 237, column: 13, scope: !511)
!528 = !DILocation(line: 237, column: 6, scope: !511)
!529 = !DILocation(line: 239, column: 8, scope: !511)
!530 = !DILocation(line: 239, column: 12, scope: !511)
!531 = !DILocation(line: 239, column: 8, scope: !532)
!532 = !DILexicalBlockFile(scope: !511, file: !392, discriminator: 1)
!533 = !DILocation(line: 239, column: 26, scope: !534)
!534 = !DILexicalBlockFile(scope: !511, file: !392, discriminator: 2)
!535 = !DILocation(line: 239, column: 8, scope: !534)
!536 = !DILocation(line: 239, column: 8, scope: !537)
!537 = !DILexicalBlockFile(scope: !511, file: !392, discriminator: 3)
!538 = !DILocation(line: 240, column: 8, scope: !511)
!539 = !DILocation(line: 240, column: 17, scope: !511)
!540 = !DILocation(line: 240, column: 29, scope: !511)
!541 = !DILocation(line: 240, column: 38, scope: !511)
!542 = !DILocation(line: 241, column: 8, scope: !511)
!543 = !DILocation(line: 242, column: 8, scope: !511)
!544 = !DILocation(line: 238, column: 20, scope: !511)
!545 = !DILocation(line: 238, column: 2, scope: !511)
!546 = !DILocation(line: 238, column: 7, scope: !511)
!547 = !DILocation(line: 238, column: 18, scope: !511)
!548 = !DILocation(line: 243, column: 16, scope: !511)
!549 = !DILocation(line: 243, column: 9, scope: !511)
!550 = !DILocation(line: 244, column: 1, scope: !511)
!551 = distinct !DISubprogram(name: "config_parse", scope: !392, file: !392, line: 270, type: !552, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!552 = !DISubroutineType(types: !553)
!553 = !{!169, !178}
!554 = !DILocalVariable(name: "rec", arg: 1, scope: !551, file: !392, line: 270, type: !178)
!555 = !DILocation(line: 270, column: 30, scope: !551)
!556 = !DILocalVariable(name: "fd", scope: !551, file: !392, line: 272, type: !169)
!557 = !DILocation(line: 272, column: 6, scope: !551)
!558 = !DILocation(line: 274, column: 2, scope: !551)
!559 = distinct !{!559, !558}
!560 = !DILocation(line: 274, column: 10, scope: !561)
!561 = !DILexicalBlockFile(scope: !562, file: !392, discriminator: 1)
!562 = distinct !DILexicalBlock(scope: !563, file: !392, line: 274, column: 10)
!563 = distinct !DILexicalBlock(scope: !551, file: !392, line: 274, column: 4)
!564 = !DILocation(line: 274, column: 14, scope: !561)
!565 = !DILocation(line: 274, column: 5, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !392, discriminator: 2)
!567 = distinct !DILexicalBlock(scope: !562, file: !392, line: 274, column: 3)
!568 = !DILocation(line: 274, column: 14, scope: !569)
!569 = !DILexicalBlockFile(scope: !570, file: !392, discriminator: 3)
!570 = distinct !DILexicalBlock(scope: !562, file: !392, line: 274, column: 12)
!571 = !DILocation(line: 274, column: 98, scope: !569)
!572 = !DILocation(line: 274, column: 114, scope: !573)
!573 = !DILexicalBlockFile(scope: !563, file: !392, discriminator: 4)
!574 = !DILocation(line: 275, column: 2, scope: !551)
!575 = distinct !{!575, !574}
!576 = !DILocation(line: 275, column: 10, scope: !577)
!577 = !DILexicalBlockFile(scope: !578, file: !392, discriminator: 1)
!578 = distinct !DILexicalBlock(scope: !579, file: !392, line: 275, column: 10)
!579 = distinct !DILexicalBlock(scope: !551, file: !392, line: 275, column: 4)
!580 = !DILocation(line: 275, column: 15, scope: !577)
!581 = !DILocation(line: 275, column: 21, scope: !577)
!582 = !DILocation(line: 275, column: 5, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !392, discriminator: 2)
!584 = distinct !DILexicalBlock(scope: !578, file: !392, line: 275, column: 3)
!585 = !DILocation(line: 275, column: 14, scope: !586)
!586 = !DILexicalBlockFile(scope: !587, file: !392, discriminator: 3)
!587 = distinct !DILexicalBlock(scope: !578, file: !392, line: 275, column: 12)
!588 = !DILocation(line: 275, column: 105, scope: !586)
!589 = !DILocation(line: 275, column: 121, scope: !590)
!590 = !DILexicalBlockFile(scope: !579, file: !392, discriminator: 4)
!591 = !DILocation(line: 277, column: 12, scope: !551)
!592 = !DILocation(line: 277, column: 17, scope: !551)
!593 = !DILocation(line: 277, column: 7, scope: !551)
!594 = !DILocation(line: 277, column: 5, scope: !551)
!595 = !DILocation(line: 278, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !551, file: !392, line: 278, column: 6)
!597 = !DILocation(line: 278, column: 9, scope: !596)
!598 = !DILocation(line: 278, column: 6, scope: !551)
!599 = !DILocation(line: 279, column: 23, scope: !596)
!600 = !DILocation(line: 279, column: 40, scope: !596)
!601 = !DILocation(line: 279, column: 39, scope: !596)
!602 = !DILocation(line: 279, column: 28, scope: !603)
!603 = !DILexicalBlockFile(scope: !596, file: !392, discriminator: 1)
!604 = !DILocation(line: 279, column: 10, scope: !605)
!605 = !DILexicalBlockFile(scope: !596, file: !392, discriminator: 2)
!606 = !DILocation(line: 279, column: 3, scope: !596)
!607 = !DILocation(line: 281, column: 20, scope: !551)
!608 = !DILocation(line: 281, column: 25, scope: !551)
!609 = !DILocation(line: 281, column: 30, scope: !551)
!610 = !DILocation(line: 281, column: 2, scope: !551)
!611 = !DILocation(line: 282, column: 23, scope: !551)
!612 = !DILocation(line: 282, column: 28, scope: !551)
!613 = !DILocation(line: 282, column: 37, scope: !551)
!614 = !DILocation(line: 282, column: 2, scope: !551)
!615 = !DILocation(line: 283, column: 20, scope: !551)
!616 = !DILocation(line: 283, column: 25, scope: !551)
!617 = !DILocation(line: 283, column: 30, scope: !551)
!618 = !DILocation(line: 283, column: 2, scope: !551)
!619 = !DILocation(line: 284, column: 20, scope: !551)
!620 = !DILocation(line: 284, column: 25, scope: !551)
!621 = !DILocation(line: 284, column: 2, scope: !551)
!622 = !DILocation(line: 286, column: 8, scope: !551)
!623 = !DILocation(line: 286, column: 2, scope: !551)
!624 = !DILocation(line: 288, column: 9, scope: !551)
!625 = !DILocation(line: 288, column: 14, scope: !551)
!626 = !DILocation(line: 288, column: 25, scope: !551)
!627 = !DILocation(line: 288, column: 2, scope: !551)
!628 = !DILocation(line: 289, column: 1, scope: !551)
!629 = distinct !DISubprogram(name: "config_parse_loop", scope: !392, file: !392, line: 211, type: !630, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !178, !188, !131}
!632 = !DILocalVariable(name: "rec", arg: 1, scope: !629, file: !392, line: 211, type: !178)
!633 = !DILocation(line: 211, column: 43, scope: !629)
!634 = !DILocalVariable(name: "node", arg: 2, scope: !629, file: !392, line: 211, type: !188)
!635 = !DILocation(line: 211, column: 61, scope: !629)
!636 = !DILocalVariable(name: "expect", arg: 3, scope: !629, file: !392, line: 211, type: !131)
!637 = !DILocation(line: 211, column: 78, scope: !629)
!638 = !DILocalVariable(name: "expected_token", scope: !629, file: !392, line: 213, type: !131)
!639 = !DILocation(line: 213, column: 13, scope: !629)
!640 = !DILocation(line: 215, column: 2, scope: !629)
!641 = distinct !{!641, !640}
!642 = !DILocation(line: 215, column: 10, scope: !643)
!643 = !DILexicalBlockFile(scope: !644, file: !392, discriminator: 1)
!644 = distinct !DILexicalBlock(scope: !645, file: !392, line: 215, column: 10)
!645 = distinct !DILexicalBlock(scope: !629, file: !392, line: 215, column: 4)
!646 = !DILocation(line: 215, column: 14, scope: !643)
!647 = !DILocation(line: 215, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !392, discriminator: 2)
!649 = distinct !DILexicalBlock(scope: !644, file: !392, line: 215, column: 3)
!650 = !DILocation(line: 215, column: 14, scope: !651)
!651 = !DILexicalBlockFile(scope: !652, file: !392, discriminator: 3)
!652 = distinct !DILexicalBlock(scope: !644, file: !392, line: 215, column: 12)
!653 = !DILocation(line: 215, column: 98, scope: !651)
!654 = !DILocation(line: 215, column: 109, scope: !655)
!655 = !DILexicalBlockFile(scope: !645, file: !392, discriminator: 4)
!656 = !DILocation(line: 216, column: 2, scope: !629)
!657 = distinct !{!657, !656}
!658 = !DILocation(line: 216, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !392, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !661, file: !392, line: 216, column: 10)
!661 = distinct !DILexicalBlock(scope: !629, file: !392, line: 216, column: 4)
!662 = !DILocation(line: 216, column: 15, scope: !659)
!663 = !DILocation(line: 216, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !665, file: !392, discriminator: 2)
!665 = distinct !DILexicalBlock(scope: !660, file: !392, line: 216, column: 3)
!666 = !DILocation(line: 216, column: 14, scope: !667)
!667 = !DILexicalBlockFile(scope: !668, file: !392, discriminator: 3)
!668 = distinct !DILexicalBlock(scope: !660, file: !392, line: 216, column: 12)
!669 = !DILocation(line: 216, column: 99, scope: !667)
!670 = !DILocation(line: 216, column: 110, scope: !671)
!671 = !DILexicalBlockFile(scope: !661, file: !392, discriminator: 4)
!672 = !DILocation(line: 218, column: 2, scope: !629)
!673 = !DILocation(line: 219, column: 27, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !392, line: 218, column: 11)
!675 = distinct !DILexicalBlock(scope: !676, file: !392, line: 218, column: 2)
!676 = distinct !DILexicalBlock(scope: !629, file: !392, line: 218, column: 2)
!677 = !DILocation(line: 219, column: 32, scope: !674)
!678 = !DILocation(line: 219, column: 41, scope: !674)
!679 = !DILocation(line: 219, column: 3, scope: !674)
!680 = !DILocation(line: 220, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !674, file: !392, line: 220, column: 7)
!682 = !DILocation(line: 220, column: 12, scope: !681)
!683 = !DILocation(line: 220, column: 21, scope: !681)
!684 = !DILocation(line: 220, column: 35, scope: !681)
!685 = !DILocation(line: 220, column: 32, scope: !681)
!686 = !DILocation(line: 220, column: 42, scope: !681)
!687 = !DILocation(line: 221, column: 7, scope: !681)
!688 = !DILocation(line: 221, column: 12, scope: !681)
!689 = !DILocation(line: 221, column: 21, scope: !681)
!690 = !DILocation(line: 221, column: 32, scope: !681)
!691 = !DILocation(line: 220, column: 7, scope: !692)
!692 = !DILexicalBlockFile(scope: !674, file: !392, discriminator: 1)
!693 = !DILocation(line: 221, column: 48, scope: !694)
!694 = !DILexicalBlockFile(scope: !681, file: !392, discriminator: 1)
!695 = !DILocation(line: 223, column: 40, scope: !674)
!696 = !DILocation(line: 223, column: 45, scope: !674)
!697 = !DILocation(line: 223, column: 20, scope: !674)
!698 = !DILocation(line: 223, column: 18, scope: !674)
!699 = !DILocation(line: 224, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !674, file: !392, line: 224, column: 7)
!701 = !DILocation(line: 224, column: 22, scope: !700)
!702 = !DILocation(line: 224, column: 7, scope: !674)
!703 = !DILocation(line: 225, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !392, line: 225, column: 8)
!705 = distinct !DILexicalBlock(scope: !700, file: !392, line: 224, column: 39)
!706 = !DILocation(line: 225, column: 23, scope: !704)
!707 = !DILocation(line: 225, column: 8, scope: !705)
!708 = !DILocation(line: 226, column: 20, scope: !704)
!709 = !DILocation(line: 226, column: 5, scope: !704)
!710 = !DILocation(line: 227, column: 26, scope: !705)
!711 = !DILocation(line: 227, column: 31, scope: !705)
!712 = !DILocation(line: 227, column: 40, scope: !705)
!713 = !DILocation(line: 227, column: 4, scope: !705)
!714 = !DILocation(line: 228, column: 3, scope: !705)
!715 = !DILocation(line: 218, column: 2, scope: !716)
!716 = !DILexicalBlockFile(scope: !675, file: !392, discriminator: 1)
!717 = distinct !{!717, !672}
!718 = !DILocation(line: 230, column: 1, scope: !629)
!719 = distinct !DISubprogram(name: "config_parse_data", scope: !392, file: !392, line: 291, type: !720, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!720 = !DISubroutineType(types: !721)
!721 = !{!169, !178, !176, !176}
!722 = !DILocalVariable(name: "rec", arg: 1, scope: !719, file: !392, line: 291, type: !178)
!723 = !DILocation(line: 291, column: 35, scope: !719)
!724 = !DILocalVariable(name: "data", arg: 2, scope: !719, file: !392, line: 291, type: !176)
!725 = !DILocation(line: 291, column: 52, scope: !719)
!726 = !DILocalVariable(name: "input_name", arg: 3, scope: !719, file: !392, line: 291, type: !176)
!727 = !DILocation(line: 291, column: 70, scope: !719)
!728 = !DILocation(line: 293, column: 20, scope: !719)
!729 = !DILocation(line: 293, column: 25, scope: !719)
!730 = !DILocation(line: 293, column: 2, scope: !719)
!731 = !DILocation(line: 294, column: 23, scope: !719)
!732 = !DILocation(line: 294, column: 28, scope: !719)
!733 = !DILocation(line: 294, column: 37, scope: !719)
!734 = !DILocation(line: 294, column: 50, scope: !719)
!735 = !DILocation(line: 294, column: 43, scope: !719)
!736 = !DILocation(line: 294, column: 2, scope: !737)
!737 = !DILexicalBlockFile(scope: !719, file: !392, discriminator: 1)
!738 = !DILocation(line: 295, column: 20, scope: !719)
!739 = !DILocation(line: 295, column: 25, scope: !719)
!740 = !DILocation(line: 295, column: 30, scope: !719)
!741 = !DILocation(line: 295, column: 2, scope: !719)
!742 = !DILocation(line: 296, column: 20, scope: !719)
!743 = !DILocation(line: 296, column: 25, scope: !719)
!744 = !DILocation(line: 296, column: 2, scope: !719)
!745 = !DILocation(line: 298, column: 9, scope: !719)
!746 = !DILocation(line: 298, column: 14, scope: !719)
!747 = !DILocation(line: 298, column: 25, scope: !719)
!748 = !DILocation(line: 298, column: 2, scope: !719)
!749 = distinct !DISubprogram(name: "config_open", scope: !392, file: !392, line: 301, type: !750, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!750 = !DISubroutineType(types: !751)
!751 = !{!178, !176, !169}
!752 = !DILocalVariable(name: "fname", arg: 1, scope: !749, file: !392, line: 301, type: !176)
!753 = !DILocation(line: 301, column: 37, scope: !749)
!754 = !DILocalVariable(name: "create_mode", arg: 2, scope: !749, file: !392, line: 301, type: !169)
!755 = !DILocation(line: 301, column: 48, scope: !749)
!756 = !DILocalVariable(name: "rec", scope: !749, file: !392, line: 303, type: !178)
!757 = !DILocation(line: 303, column: 14, scope: !749)
!758 = !DILocalVariable(name: "f", scope: !749, file: !392, line: 304, type: !169)
!759 = !DILocation(line: 304, column: 6, scope: !749)
!760 = !DILocation(line: 306, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !749, file: !392, line: 306, column: 6)
!762 = !DILocation(line: 306, column: 12, scope: !761)
!763 = !DILocation(line: 306, column: 6, scope: !749)
!764 = !DILocation(line: 307, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !392, line: 306, column: 20)
!766 = !DILocation(line: 307, column: 30, scope: !765)
!767 = !DILocation(line: 307, column: 42, scope: !765)
!768 = !DILocation(line: 307, column: 27, scope: !765)
!769 = !DILocation(line: 307, column: 64, scope: !765)
!770 = !DILocation(line: 307, column: 7, scope: !765)
!771 = !DILocation(line: 307, column: 5, scope: !765)
!772 = !DILocation(line: 308, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !765, file: !392, line: 308, column: 7)
!774 = !DILocation(line: 308, column: 9, scope: !773)
!775 = !DILocation(line: 308, column: 7, scope: !765)
!776 = !DILocation(line: 308, column: 16, scope: !777)
!777 = !DILexicalBlockFile(scope: !773, file: !392, discriminator: 1)
!778 = !DILocation(line: 309, column: 9, scope: !765)
!779 = !DILocation(line: 309, column: 3, scope: !765)
!780 = !DILocation(line: 310, column: 2, scope: !765)
!781 = !DILocation(line: 312, column: 24, scope: !749)
!782 = !DILocation(line: 312, column: 9, scope: !749)
!783 = !DILocation(line: 312, column: 6, scope: !749)
!784 = !DILocation(line: 313, column: 15, scope: !749)
!785 = !DILocation(line: 313, column: 21, scope: !749)
!786 = !DILocation(line: 313, column: 15, scope: !787)
!787 = !DILexicalBlockFile(scope: !749, file: !392, discriminator: 1)
!788 = !DILocation(line: 313, column: 46, scope: !789)
!789 = !DILexicalBlockFile(scope: !749, file: !392, discriminator: 2)
!790 = !DILocation(line: 313, column: 37, scope: !789)
!791 = !DILocation(line: 313, column: 15, scope: !789)
!792 = !DILocation(line: 313, column: 15, scope: !793)
!793 = !DILexicalBlockFile(scope: !749, file: !392, discriminator: 3)
!794 = !DILocation(line: 313, column: 2, scope: !793)
!795 = !DILocation(line: 313, column: 7, scope: !793)
!796 = !DILocation(line: 313, column: 13, scope: !793)
!797 = !DILocation(line: 314, column: 21, scope: !749)
!798 = !DILocation(line: 314, column: 2, scope: !749)
!799 = !DILocation(line: 314, column: 7, scope: !749)
!800 = !DILocation(line: 314, column: 19, scope: !749)
!801 = !DILocation(line: 315, column: 35, scope: !749)
!802 = !DILocation(line: 315, column: 19, scope: !749)
!803 = !DILocation(line: 315, column: 2, scope: !749)
!804 = !DILocation(line: 315, column: 7, scope: !749)
!805 = !DILocation(line: 315, column: 16, scope: !749)
!806 = !DILocation(line: 316, column: 2, scope: !749)
!807 = !DILocation(line: 316, column: 7, scope: !749)
!808 = !DILocation(line: 316, column: 17, scope: !749)
!809 = !DILocation(line: 316, column: 22, scope: !749)
!810 = !DILocation(line: 317, column: 15, scope: !749)
!811 = !DILocation(line: 317, column: 2, scope: !749)
!812 = !DILocation(line: 317, column: 7, scope: !749)
!813 = !DILocation(line: 317, column: 13, scope: !749)
!814 = !DILocation(line: 318, column: 21, scope: !749)
!815 = !DILocation(line: 318, column: 2, scope: !749)
!816 = !DILocation(line: 318, column: 7, scope: !749)
!817 = !DILocation(line: 318, column: 19, scope: !749)
!818 = !DILocation(line: 320, column: 9, scope: !749)
!819 = !DILocation(line: 320, column: 2, scope: !749)
!820 = !DILocation(line: 321, column: 1, scope: !749)
!821 = distinct !DISubprogram(name: "g_istr_hash", scope: !392, file: !392, line: 29, type: !822, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!822 = !DISubroutineType(types: !823)
!823 = !{!85, !377}
!824 = !DILocalVariable(name: "v", arg: 1, scope: !821, file: !392, line: 29, type: !377)
!825 = !DILocation(line: 29, column: 47, scope: !821)
!826 = !DILocalVariable(name: "s", scope: !821, file: !392, line: 31, type: !176)
!827 = !DILocation(line: 31, column: 14, scope: !821)
!828 = !DILocation(line: 31, column: 33, scope: !821)
!829 = !DILocalVariable(name: "h", scope: !821, file: !392, line: 32, type: !85)
!830 = !DILocation(line: 32, column: 15, scope: !821)
!831 = !DILocalVariable(name: "g", scope: !821, file: !392, line: 32, type: !85)
!832 = !DILocation(line: 32, column: 22, scope: !821)
!833 = !DILocation(line: 34, column: 2, scope: !821)
!834 = !DILocation(line: 34, column: 10, scope: !835)
!835 = !DILexicalBlockFile(scope: !821, file: !392, discriminator: 1)
!836 = !DILocation(line: 34, column: 9, scope: !835)
!837 = !DILocation(line: 34, column: 12, scope: !835)
!838 = !DILocation(line: 34, column: 2, scope: !835)
!839 = !DILocation(line: 35, column: 8, scope: !840)
!840 = distinct !DILexicalBlock(scope: !821, file: !392, line: 34, column: 21)
!841 = !DILocation(line: 35, column: 10, scope: !840)
!842 = !DILocation(line: 35, column: 50, scope: !840)
!843 = !DILocation(line: 35, column: 49, scope: !840)
!844 = !DILocation(line: 35, column: 26, scope: !840)
!845 = !DILocation(line: 35, column: 18, scope: !840)
!846 = !DILocation(line: 35, column: 16, scope: !840)
!847 = !DILocation(line: 35, column: 5, scope: !840)
!848 = !DILocation(line: 36, column: 12, scope: !849)
!849 = distinct !DILexicalBlock(scope: !840, file: !392, line: 36, column: 7)
!850 = !DILocation(line: 36, column: 14, scope: !849)
!851 = !DILocation(line: 36, column: 10, scope: !849)
!852 = !DILocation(line: 36, column: 7, scope: !840)
!853 = !DILocation(line: 37, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !849, file: !392, line: 36, column: 31)
!855 = !DILocation(line: 37, column: 13, scope: !854)
!856 = !DILocation(line: 37, column: 15, scope: !854)
!857 = !DILocation(line: 37, column: 10, scope: !854)
!858 = !DILocation(line: 37, column: 6, scope: !854)
!859 = !DILocation(line: 38, column: 8, scope: !854)
!860 = !DILocation(line: 38, column: 12, scope: !854)
!861 = !DILocation(line: 38, column: 10, scope: !854)
!862 = !DILocation(line: 38, column: 6, scope: !854)
!863 = !DILocation(line: 39, column: 3, scope: !854)
!864 = !DILocation(line: 40, column: 4, scope: !840)
!865 = !DILocation(line: 34, column: 2, scope: !866)
!866 = !DILexicalBlockFile(scope: !821, file: !392, discriminator: 2)
!867 = distinct !{!867, !833}
!868 = !DILocation(line: 43, column: 9, scope: !821)
!869 = !DILocation(line: 43, column: 2, scope: !821)
!870 = distinct !DISubprogram(name: "g_istr_equal", scope: !392, file: !392, line: 23, type: !871, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!871 = !DISubroutineType(types: !872)
!872 = !{!169, !377, !377}
!873 = !DILocalVariable(name: "v", arg: 1, scope: !870, file: !392, line: 23, type: !377)
!874 = !DILocation(line: 23, column: 39, scope: !870)
!875 = !DILocalVariable(name: "v2", arg: 2, scope: !870, file: !392, line: 23, type: !377)
!876 = !DILocation(line: 23, column: 56, scope: !870)
!877 = !DILocation(line: 25, column: 43, scope: !870)
!878 = !DILocation(line: 25, column: 61, scope: !870)
!879 = !DILocation(line: 25, column: 9, scope: !870)
!880 = !DILocation(line: 25, column: 65, scope: !870)
!881 = !DILocation(line: 25, column: 2, scope: !870)
!882 = distinct !DISubprogram(name: "config_close", scope: !392, file: !392, line: 323, type: !883, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !178}
!885 = !DILocalVariable(name: "rec", arg: 1, scope: !882, file: !392, line: 323, type: !178)
!886 = !DILocation(line: 323, column: 31, scope: !882)
!887 = !DILocation(line: 325, column: 2, scope: !882)
!888 = distinct !{!888, !887}
!889 = !DILocation(line: 325, column: 10, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !392, discriminator: 1)
!891 = distinct !DILexicalBlock(scope: !892, file: !392, line: 325, column: 10)
!892 = distinct !DILexicalBlock(scope: !882, file: !392, line: 325, column: 4)
!893 = !DILocation(line: 325, column: 14, scope: !890)
!894 = !DILocation(line: 325, column: 5, scope: !895)
!895 = !DILexicalBlockFile(scope: !896, file: !392, discriminator: 2)
!896 = distinct !DILexicalBlock(scope: !891, file: !392, line: 325, column: 3)
!897 = !DILocation(line: 325, column: 14, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !392, discriminator: 3)
!899 = distinct !DILexicalBlock(scope: !891, file: !392, line: 325, column: 12)
!900 = !DILocation(line: 325, column: 98, scope: !898)
!901 = !DILocation(line: 325, column: 109, scope: !902)
!902 = !DILexicalBlockFile(scope: !892, file: !392, discriminator: 4)
!903 = !DILocation(line: 327, column: 26, scope: !882)
!904 = !DILocation(line: 327, column: 2, scope: !882)
!905 = !DILocation(line: 328, column: 9, scope: !882)
!906 = !DILocation(line: 328, column: 14, scope: !882)
!907 = !DILocation(line: 328, column: 2, scope: !882)
!908 = !DILocation(line: 330, column: 23, scope: !882)
!909 = !DILocation(line: 330, column: 28, scope: !882)
!910 = !DILocation(line: 330, column: 2, scope: !882)
!911 = !DILocation(line: 331, column: 23, scope: !882)
!912 = !DILocation(line: 331, column: 28, scope: !882)
!913 = !DILocation(line: 331, column: 2, scope: !882)
!914 = !DILocation(line: 332, column: 23, scope: !882)
!915 = !DILocation(line: 332, column: 28, scope: !882)
!916 = !DILocation(line: 332, column: 2, scope: !882)
!917 = !DILocation(line: 333, column: 9, scope: !882)
!918 = !DILocation(line: 333, column: 14, scope: !882)
!919 = !DILocation(line: 333, column: 2, scope: !882)
!920 = !DILocation(line: 334, column: 9, scope: !882)
!921 = !DILocation(line: 334, column: 14, scope: !882)
!922 = !DILocation(line: 334, column: 2, scope: !882)
!923 = !DILocation(line: 335, column: 9, scope: !882)
!924 = !DILocation(line: 335, column: 2, scope: !882)
!925 = !DILocation(line: 336, column: 1, scope: !882)
!926 = !DILocation(line: 336, column: 1, scope: !927)
!927 = !DILexicalBlockFile(scope: !882, file: !392, discriminator: 1)
!928 = distinct !DISubprogram(name: "config_change_file_name", scope: !392, file: !392, line: 338, type: !929, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !178, !176, !169}
!931 = !DILocalVariable(name: "rec", arg: 1, scope: !928, file: !392, line: 338, type: !178)
!932 = !DILocation(line: 338, column: 42, scope: !928)
!933 = !DILocalVariable(name: "fname", arg: 2, scope: !928, file: !392, line: 338, type: !176)
!934 = !DILocation(line: 338, column: 59, scope: !928)
!935 = !DILocalVariable(name: "create_mode", arg: 3, scope: !928, file: !392, line: 338, type: !169)
!936 = !DILocation(line: 338, column: 70, scope: !928)
!937 = !DILocation(line: 340, column: 2, scope: !928)
!938 = distinct !{!938, !937}
!939 = !DILocation(line: 340, column: 10, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !392, discriminator: 1)
!941 = distinct !DILexicalBlock(scope: !942, file: !392, line: 340, column: 10)
!942 = distinct !DILexicalBlock(scope: !928, file: !392, line: 340, column: 4)
!943 = !DILocation(line: 340, column: 14, scope: !940)
!944 = !DILocation(line: 340, column: 5, scope: !945)
!945 = !DILexicalBlockFile(scope: !946, file: !392, discriminator: 2)
!946 = distinct !DILexicalBlock(scope: !941, file: !392, line: 340, column: 3)
!947 = !DILocation(line: 340, column: 14, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !392, discriminator: 3)
!949 = distinct !DILexicalBlock(scope: !941, file: !392, line: 340, column: 12)
!950 = !DILocation(line: 340, column: 98, scope: !948)
!951 = !DILocation(line: 340, column: 109, scope: !952)
!952 = !DILexicalBlockFile(scope: !942, file: !392, discriminator: 4)
!953 = !DILocation(line: 341, column: 2, scope: !928)
!954 = distinct !{!954, !953}
!955 = !DILocation(line: 341, column: 10, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !392, discriminator: 1)
!957 = distinct !DILexicalBlock(scope: !958, file: !392, line: 341, column: 10)
!958 = distinct !DILexicalBlock(scope: !928, file: !392, line: 341, column: 4)
!959 = !DILocation(line: 341, column: 16, scope: !956)
!960 = !DILocation(line: 341, column: 5, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !392, discriminator: 2)
!962 = distinct !DILexicalBlock(scope: !957, file: !392, line: 341, column: 3)
!963 = !DILocation(line: 341, column: 14, scope: !964)
!964 = !DILexicalBlockFile(scope: !965, file: !392, discriminator: 3)
!965 = distinct !DILexicalBlock(scope: !957, file: !392, line: 341, column: 12)
!966 = !DILocation(line: 341, column: 100, scope: !964)
!967 = !DILocation(line: 341, column: 111, scope: !968)
!968 = !DILexicalBlockFile(scope: !958, file: !392, discriminator: 4)
!969 = !DILocation(line: 343, column: 9, scope: !928)
!970 = !DILocation(line: 343, column: 14, scope: !928)
!971 = !DILocation(line: 343, column: 2, scope: !928)
!972 = !DILocation(line: 344, column: 24, scope: !928)
!973 = !DILocation(line: 344, column: 15, scope: !928)
!974 = !DILocation(line: 344, column: 2, scope: !928)
!975 = !DILocation(line: 344, column: 7, scope: !928)
!976 = !DILocation(line: 344, column: 13, scope: !928)
!977 = !DILocation(line: 346, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !928, file: !392, line: 346, column: 6)
!979 = !DILocation(line: 346, column: 18, scope: !978)
!980 = !DILocation(line: 346, column: 6, scope: !928)
!981 = !DILocation(line: 347, column: 22, scope: !978)
!982 = !DILocation(line: 347, column: 3, scope: !978)
!983 = !DILocation(line: 347, column: 8, scope: !978)
!984 = !DILocation(line: 347, column: 20, scope: !978)
!985 = !DILocation(line: 348, column: 1, scope: !928)
!986 = distinct !DISubprogram(name: "config_parse_peek_token", scope: !392, file: !392, line: 95, type: !987, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !75, !188}
!989 = !DILocalVariable(name: "scanner", arg: 1, scope: !986, file: !392, line: 95, type: !75)
!990 = !DILocation(line: 95, column: 47, scope: !986)
!991 = !DILocalVariable(name: "node", arg: 2, scope: !986, file: !392, line: 95, type: !188)
!992 = !DILocation(line: 95, column: 69, scope: !986)
!993 = !DILocalVariable(name: "prev_empty", scope: !986, file: !392, line: 97, type: !169)
!994 = !DILocation(line: 97, column: 6, scope: !986)
!995 = !DILocation(line: 99, column: 2, scope: !986)
!996 = !DILocation(line: 100, column: 29, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !392, line: 99, column: 11)
!998 = distinct !DILexicalBlock(scope: !999, file: !392, line: 99, column: 2)
!999 = distinct !DILexicalBlock(scope: !986, file: !392, line: 99, column: 2)
!1000 = !DILocation(line: 100, column: 3, scope: !997)
!1001 = !DILocation(line: 102, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !392, line: 102, column: 7)
!1003 = !DILocation(line: 102, column: 16, scope: !1002)
!1004 = !DILocation(line: 102, column: 27, scope: !1002)
!1005 = !DILocation(line: 102, column: 7, scope: !997)
!1006 = !DILocation(line: 103, column: 21, scope: !1002)
!1007 = !DILocation(line: 103, column: 27, scope: !1002)
!1008 = !DILocation(line: 103, column: 36, scope: !1002)
!1009 = !DILocation(line: 103, column: 47, scope: !1002)
!1010 = !DILocation(line: 103, column: 4, scope: !1002)
!1011 = !DILocation(line: 104, column: 12, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1002, file: !392, line: 104, column: 12)
!1013 = !DILocation(line: 104, column: 21, scope: !1012)
!1014 = !DILocation(line: 104, column: 32, scope: !1012)
!1015 = !DILocation(line: 104, column: 12, scope: !1002)
!1016 = !DILocation(line: 105, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !392, line: 105, column: 8)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !392, line: 104, column: 41)
!1019 = !DILocation(line: 105, column: 8, scope: !1018)
!1020 = !DILocation(line: 105, column: 37, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1017, file: !392, discriminator: 1)
!1022 = !DILocation(line: 105, column: 20, scope: !1021)
!1023 = !DILocation(line: 106, column: 3, scope: !1018)
!1024 = !DILocation(line: 107, column: 4, scope: !1012)
!1025 = !DILocation(line: 109, column: 14, scope: !997)
!1026 = !DILocation(line: 110, column: 28, scope: !997)
!1027 = !DILocation(line: 110, column: 3, scope: !997)
!1028 = !DILocation(line: 99, column: 2, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !998, file: !392, discriminator: 1)
!1030 = distinct !{!1030, !995}
!1031 = !DILocation(line: 112, column: 1, scope: !986)
!1032 = distinct !DISubprogram(name: "config_parse_symbol", scope: !392, file: !392, line: 130, type: !1033, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!131, !178, !188}
!1035 = !DILocalVariable(name: "rec", arg: 1, scope: !1032, file: !392, line: 130, type: !178)
!1036 = !DILocation(line: 130, column: 51, scope: !1032)
!1037 = !DILocalVariable(name: "node", arg: 2, scope: !1032, file: !392, line: 130, type: !188)
!1038 = !DILocation(line: 130, column: 69, scope: !1032)
!1039 = !DILocalVariable(name: "newnode", scope: !1032, file: !392, line: 132, type: !188)
!1040 = !DILocation(line: 132, column: 15, scope: !1032)
!1041 = !DILocalVariable(name: "last_char", scope: !1032, file: !392, line: 133, type: !131)
!1042 = !DILocation(line: 133, column: 13, scope: !1032)
!1043 = !DILocalVariable(name: "print_warning", scope: !1032, file: !392, line: 134, type: !169)
!1044 = !DILocation(line: 134, column: 6, scope: !1032)
!1045 = !DILocalVariable(name: "key", scope: !1032, file: !392, line: 135, type: !183)
!1046 = !DILocation(line: 135, column: 8, scope: !1032)
!1047 = !DILocation(line: 137, column: 2, scope: !1032)
!1048 = distinct !{!1048, !1047}
!1049 = !DILocation(line: 137, column: 10, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1051, file: !392, discriminator: 1)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !392, line: 137, column: 10)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !392, line: 137, column: 4)
!1053 = !DILocation(line: 137, column: 14, scope: !1050)
!1054 = !DILocation(line: 137, column: 5, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !392, discriminator: 2)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !392, line: 137, column: 3)
!1057 = !DILocation(line: 137, column: 14, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !392, discriminator: 3)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !392, line: 137, column: 12)
!1060 = !DILocation(line: 137, column: 98, scope: !1058)
!1061 = !DILocation(line: 137, column: 125, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1052, file: !392, discriminator: 4)
!1063 = !DILocation(line: 138, column: 2, scope: !1032)
!1064 = distinct !{!1064, !1063}
!1065 = !DILocation(line: 138, column: 10, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1067, file: !392, discriminator: 1)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !392, line: 138, column: 10)
!1068 = distinct !DILexicalBlock(scope: !1032, file: !392, line: 138, column: 4)
!1069 = !DILocation(line: 138, column: 15, scope: !1066)
!1070 = !DILocation(line: 138, column: 5, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !392, discriminator: 2)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !392, line: 138, column: 3)
!1073 = !DILocation(line: 138, column: 14, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !392, discriminator: 3)
!1075 = distinct !DILexicalBlock(scope: !1067, file: !392, line: 138, column: 12)
!1076 = !DILocation(line: 138, column: 99, scope: !1074)
!1077 = !DILocation(line: 138, column: 126, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1068, file: !392, discriminator: 4)
!1079 = !DILocation(line: 140, column: 25, scope: !1032)
!1080 = !DILocation(line: 140, column: 30, scope: !1032)
!1081 = !DILocation(line: 140, column: 39, scope: !1032)
!1082 = !DILocation(line: 140, column: 2, scope: !1032)
!1083 = !DILocation(line: 142, column: 28, scope: !1032)
!1084 = !DILocation(line: 142, column: 34, scope: !1032)
!1085 = !DILocation(line: 142, column: 39, scope: !1032)
!1086 = !DILocation(line: 142, column: 12, scope: !1032)
!1087 = !DILocation(line: 145, column: 6, scope: !1032)
!1088 = !DILocation(line: 146, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1032, file: !392, line: 146, column: 6)
!1090 = !DILocation(line: 146, column: 12, scope: !1089)
!1091 = !DILocation(line: 146, column: 17, scope: !1089)
!1092 = !DILocation(line: 146, column: 35, scope: !1089)
!1093 = !DILocation(line: 147, column: 7, scope: !1089)
!1094 = !DILocation(line: 147, column: 12, scope: !1089)
!1095 = !DILocation(line: 147, column: 21, scope: !1089)
!1096 = !DILocation(line: 147, column: 27, scope: !1089)
!1097 = !DILocation(line: 146, column: 6, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1032, file: !392, discriminator: 1)
!1099 = !DILocation(line: 148, column: 18, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !392, line: 147, column: 47)
!1101 = !DILocation(line: 148, column: 23, scope: !1100)
!1102 = !DILocation(line: 148, column: 32, scope: !1100)
!1103 = !DILocation(line: 148, column: 38, scope: !1100)
!1104 = !DILocation(line: 148, column: 9, scope: !1100)
!1105 = !DILocation(line: 148, column: 7, scope: !1100)
!1106 = !DILocation(line: 150, column: 43, scope: !1100)
!1107 = !DILocation(line: 150, column: 48, scope: !1100)
!1108 = !DILocation(line: 150, column: 17, scope: !1100)
!1109 = !DILocation(line: 151, column: 26, scope: !1100)
!1110 = !DILocation(line: 151, column: 31, scope: !1100)
!1111 = !DILocation(line: 151, column: 40, scope: !1100)
!1112 = !DILocation(line: 151, column: 3, scope: !1100)
!1113 = !DILocation(line: 152, column: 2, scope: !1100)
!1114 = !DILocation(line: 154, column: 11, scope: !1032)
!1115 = !DILocation(line: 154, column: 16, scope: !1032)
!1116 = !DILocation(line: 154, column: 25, scope: !1032)
!1117 = !DILocation(line: 154, column: 3, scope: !1032)
!1118 = !DILocation(line: 157, column: 23, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1032, file: !392, line: 154, column: 32)
!1120 = !DILocation(line: 157, column: 28, scope: !1119)
!1121 = !DILocation(line: 157, column: 34, scope: !1119)
!1122 = !DILocation(line: 157, column: 39, scope: !1119)
!1123 = !DILocation(line: 157, column: 44, scope: !1119)
!1124 = !DILocation(line: 157, column: 53, scope: !1119)
!1125 = !DILocation(line: 157, column: 59, scope: !1119)
!1126 = !DILocation(line: 157, column: 3, scope: !1119)
!1127 = !DILocation(line: 158, column: 10, scope: !1119)
!1128 = !DILocation(line: 158, column: 3, scope: !1119)
!1129 = !DILocation(line: 160, column: 17, scope: !1119)
!1130 = !DILocation(line: 161, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !392, line: 161, column: 7)
!1132 = !DILocation(line: 161, column: 13, scope: !1131)
!1133 = !DILocation(line: 161, column: 18, scope: !1131)
!1134 = !DILocation(line: 161, column: 7, scope: !1119)
!1135 = !DILocation(line: 163, column: 28, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !392, line: 161, column: 37)
!1137 = !DILocation(line: 163, column: 33, scope: !1136)
!1138 = !DILocation(line: 163, column: 42, scope: !1136)
!1139 = !DILocation(line: 163, column: 4, scope: !1136)
!1140 = !DILocation(line: 164, column: 8, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !392, line: 164, column: 8)
!1142 = !DILocation(line: 164, column: 13, scope: !1141)
!1143 = !DILocation(line: 164, column: 22, scope: !1141)
!1144 = !DILocation(line: 164, column: 33, scope: !1141)
!1145 = !DILocation(line: 164, column: 8, scope: !1136)
!1146 = !DILocation(line: 165, column: 19, scope: !1141)
!1147 = !DILocation(line: 165, column: 5, scope: !1141)
!1148 = !DILocation(line: 166, column: 3, scope: !1136)
!1149 = !DILocation(line: 168, column: 29, scope: !1119)
!1150 = !DILocation(line: 168, column: 34, scope: !1119)
!1151 = !DILocation(line: 168, column: 40, scope: !1119)
!1152 = !DILocation(line: 168, column: 51, scope: !1119)
!1153 = !DILocation(line: 168, column: 3, scope: !1119)
!1154 = !DILocation(line: 169, column: 3, scope: !1119)
!1155 = !DILocation(line: 173, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1119, file: !392, line: 173, column: 7)
!1157 = !DILocation(line: 173, column: 11, scope: !1156)
!1158 = !DILocation(line: 173, column: 18, scope: !1156)
!1159 = !DILocation(line: 173, column: 21, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1156, file: !392, discriminator: 1)
!1161 = !DILocation(line: 173, column: 27, scope: !1160)
!1162 = !DILocation(line: 173, column: 32, scope: !1160)
!1163 = !DILocation(line: 173, column: 7, scope: !1160)
!1164 = !DILocation(line: 174, column: 4, scope: !1156)
!1165 = !DILocation(line: 176, column: 33, scope: !1119)
!1166 = !DILocation(line: 176, column: 38, scope: !1119)
!1167 = !DILocation(line: 176, column: 44, scope: !1119)
!1168 = !DILocation(line: 176, column: 13, scope: !1119)
!1169 = !DILocation(line: 176, column: 11, scope: !1119)
!1170 = !DILocation(line: 177, column: 21, scope: !1119)
!1171 = !DILocation(line: 177, column: 26, scope: !1119)
!1172 = !DILocation(line: 177, column: 3, scope: !1119)
!1173 = !DILocation(line: 178, column: 10, scope: !1119)
!1174 = !DILocation(line: 178, column: 3, scope: !1119)
!1175 = !DILocation(line: 180, column: 26, scope: !1119)
!1176 = !DILocation(line: 180, column: 31, scope: !1119)
!1177 = !DILocation(line: 180, column: 40, scope: !1119)
!1178 = !DILocation(line: 180, column: 3, scope: !1119)
!1179 = !DILocation(line: 181, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1119, file: !392, line: 181, column: 7)
!1181 = !DILocation(line: 181, column: 12, scope: !1180)
!1182 = !DILocation(line: 181, column: 21, scope: !1180)
!1183 = !DILocation(line: 181, column: 27, scope: !1180)
!1184 = !DILocation(line: 181, column: 7, scope: !1119)
!1185 = !DILocation(line: 182, column: 4, scope: !1180)
!1186 = !DILocation(line: 184, column: 29, scope: !1119)
!1187 = !DILocation(line: 184, column: 34, scope: !1119)
!1188 = !DILocation(line: 184, column: 40, scope: !1119)
!1189 = !DILocation(line: 184, column: 3, scope: !1119)
!1190 = !DILocation(line: 185, column: 3, scope: !1119)
!1191 = !DILocation(line: 189, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1119, file: !392, line: 189, column: 7)
!1193 = !DILocation(line: 189, column: 11, scope: !1192)
!1194 = !DILocation(line: 189, column: 7, scope: !1119)
!1195 = !DILocation(line: 190, column: 4, scope: !1192)
!1196 = !DILocation(line: 191, column: 33, scope: !1119)
!1197 = !DILocation(line: 191, column: 38, scope: !1119)
!1198 = !DILocation(line: 191, column: 44, scope: !1119)
!1199 = !DILocation(line: 191, column: 13, scope: !1119)
!1200 = !DILocation(line: 191, column: 11, scope: !1119)
!1201 = !DILocation(line: 192, column: 21, scope: !1119)
!1202 = !DILocation(line: 192, column: 26, scope: !1119)
!1203 = !DILocation(line: 192, column: 3, scope: !1119)
!1204 = !DILocation(line: 193, column: 10, scope: !1119)
!1205 = !DILocation(line: 193, column: 3, scope: !1119)
!1206 = !DILocation(line: 195, column: 26, scope: !1119)
!1207 = !DILocation(line: 195, column: 31, scope: !1119)
!1208 = !DILocation(line: 195, column: 40, scope: !1119)
!1209 = !DILocation(line: 195, column: 3, scope: !1119)
!1210 = !DILocation(line: 196, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1119, file: !392, line: 196, column: 7)
!1212 = !DILocation(line: 196, column: 12, scope: !1211)
!1213 = !DILocation(line: 196, column: 21, scope: !1211)
!1214 = !DILocation(line: 196, column: 27, scope: !1211)
!1215 = !DILocation(line: 196, column: 7, scope: !1119)
!1216 = !DILocation(line: 197, column: 4, scope: !1211)
!1217 = !DILocation(line: 199, column: 29, scope: !1119)
!1218 = !DILocation(line: 199, column: 34, scope: !1119)
!1219 = !DILocation(line: 199, column: 40, scope: !1119)
!1220 = !DILocation(line: 199, column: 3, scope: !1119)
!1221 = !DILocation(line: 200, column: 3, scope: !1119)
!1222 = !DILocation(line: 204, column: 10, scope: !1119)
!1223 = !DILocation(line: 204, column: 3, scope: !1119)
!1224 = !DILocation(line: 205, column: 3, scope: !1119)
!1225 = !DILocation(line: 208, column: 9, scope: !1032)
!1226 = !DILocation(line: 209, column: 1, scope: !1032)
!1227 = distinct !DISubprogram(name: "node_add_comment", scope: !392, file: !392, line: 53, type: !1228, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!169, !188, !176}
!1230 = !DILocalVariable(name: "parent", arg: 1, scope: !1227, file: !392, line: 53, type: !188)
!1231 = !DILocation(line: 53, column: 42, scope: !1227)
!1232 = !DILocalVariable(name: "str", arg: 2, scope: !1227, file: !392, line: 53, type: !176)
!1233 = !DILocation(line: 53, column: 62, scope: !1227)
!1234 = !DILocalVariable(name: "node", scope: !1227, file: !392, line: 55, type: !188)
!1235 = !DILocation(line: 55, column: 15, scope: !1227)
!1236 = !DILocation(line: 57, column: 2, scope: !1227)
!1237 = distinct !{!1237, !1236}
!1238 = !DILocation(line: 57, column: 10, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1240, file: !392, discriminator: 1)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !392, line: 57, column: 10)
!1241 = distinct !DILexicalBlock(scope: !1227, file: !392, line: 57, column: 4)
!1242 = !DILocation(line: 57, column: 17, scope: !1239)
!1243 = !DILocation(line: 57, column: 5, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1245, file: !392, discriminator: 2)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !392, line: 57, column: 3)
!1246 = !DILocation(line: 57, column: 14, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !392, discriminator: 3)
!1248 = distinct !DILexicalBlock(scope: !1240, file: !392, line: 57, column: 12)
!1249 = !DILocation(line: 57, column: 101, scope: !1247)
!1250 = !DILocation(line: 57, column: 117, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1241, file: !392, discriminator: 4)
!1252 = !DILocation(line: 59, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1227, file: !392, line: 59, column: 6)
!1254 = !DILocation(line: 59, column: 18, scope: !1253)
!1255 = !DILocation(line: 59, column: 23, scope: !1253)
!1256 = !DILocation(line: 59, column: 42, scope: !1253)
!1257 = !DILocation(line: 59, column: 46, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1253, file: !392, discriminator: 1)
!1259 = !DILocation(line: 59, column: 55, scope: !1258)
!1260 = !DILocation(line: 59, column: 60, scope: !1258)
!1261 = !DILocation(line: 59, column: 6, scope: !1258)
!1262 = !DILocation(line: 60, column: 3, scope: !1253)
!1263 = !DILocation(line: 62, column: 26, scope: !1227)
!1264 = !DILocation(line: 62, column: 10, scope: !1227)
!1265 = !DILocation(line: 62, column: 7, scope: !1227)
!1266 = !DILocation(line: 63, column: 2, scope: !1227)
!1267 = !DILocation(line: 63, column: 8, scope: !1227)
!1268 = !DILocation(line: 63, column: 13, scope: !1227)
!1269 = !DILocation(line: 64, column: 16, scope: !1227)
!1270 = !DILocation(line: 64, column: 20, scope: !1227)
!1271 = !DILocation(line: 64, column: 16, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1227, file: !392, discriminator: 1)
!1273 = !DILocation(line: 64, column: 45, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1227, file: !392, discriminator: 2)
!1275 = !DILocation(line: 64, column: 36, scope: !1274)
!1276 = !DILocation(line: 64, column: 16, scope: !1274)
!1277 = !DILocation(line: 64, column: 16, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1227, file: !392, discriminator: 3)
!1279 = !DILocation(line: 64, column: 2, scope: !1278)
!1280 = !DILocation(line: 64, column: 8, scope: !1278)
!1281 = !DILocation(line: 64, column: 14, scope: !1278)
!1282 = !DILocation(line: 66, column: 33, scope: !1227)
!1283 = !DILocation(line: 66, column: 41, scope: !1227)
!1284 = !DILocation(line: 66, column: 48, scope: !1227)
!1285 = !DILocation(line: 66, column: 18, scope: !1227)
!1286 = !DILocation(line: 66, column: 2, scope: !1227)
!1287 = !DILocation(line: 66, column: 10, scope: !1227)
!1288 = !DILocation(line: 66, column: 16, scope: !1227)
!1289 = !DILocation(line: 67, column: 2, scope: !1227)
!1290 = !DILocation(line: 68, column: 1, scope: !1227)
!1291 = distinct !DISubprogram(name: "config_parse_get_token", scope: !392, file: !392, line: 71, type: !987, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1292 = !DILocalVariable(name: "scanner", arg: 1, scope: !1291, file: !392, line: 71, type: !75)
!1293 = !DILocation(line: 71, column: 46, scope: !1291)
!1294 = !DILocalVariable(name: "node", arg: 2, scope: !1291, file: !392, line: 71, type: !188)
!1295 = !DILocation(line: 71, column: 68, scope: !1291)
!1296 = !DILocalVariable(name: "prev_empty", scope: !1291, file: !392, line: 73, type: !169)
!1297 = !DILocation(line: 73, column: 6, scope: !1291)
!1298 = !DILocation(line: 75, column: 2, scope: !1291)
!1299 = !DILocation(line: 76, column: 28, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !392, line: 75, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !392, line: 75, column: 2)
!1302 = distinct !DILexicalBlock(scope: !1291, file: !392, line: 75, column: 2)
!1303 = !DILocation(line: 76, column: 3, scope: !1300)
!1304 = !DILocation(line: 78, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1300, file: !392, line: 78, column: 7)
!1306 = !DILocation(line: 78, column: 16, scope: !1305)
!1307 = !DILocation(line: 78, column: 22, scope: !1305)
!1308 = !DILocation(line: 78, column: 7, scope: !1300)
!1309 = !DILocation(line: 79, column: 21, scope: !1305)
!1310 = !DILocation(line: 79, column: 27, scope: !1305)
!1311 = !DILocation(line: 79, column: 36, scope: !1305)
!1312 = !DILocation(line: 79, column: 42, scope: !1305)
!1313 = !DILocation(line: 79, column: 4, scope: !1305)
!1314 = !DILocation(line: 80, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1305, file: !392, line: 80, column: 12)
!1316 = !DILocation(line: 80, column: 21, scope: !1315)
!1317 = !DILocation(line: 80, column: 27, scope: !1315)
!1318 = !DILocation(line: 80, column: 12, scope: !1305)
!1319 = !DILocation(line: 81, column: 8, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !392, line: 81, column: 8)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !392, line: 80, column: 36)
!1322 = !DILocation(line: 81, column: 8, scope: !1321)
!1323 = !DILocation(line: 81, column: 37, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1320, file: !392, discriminator: 1)
!1325 = !DILocation(line: 81, column: 20, scope: !1324)
!1326 = !DILocation(line: 82, column: 3, scope: !1321)
!1327 = !DILocation(line: 83, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !392, line: 83, column: 8)
!1329 = distinct !DILexicalBlock(scope: !1315, file: !392, line: 82, column: 10)
!1330 = !DILocation(line: 83, column: 17, scope: !1328)
!1331 = !DILocation(line: 83, column: 23, scope: !1328)
!1332 = !DILocation(line: 83, column: 8, scope: !1329)
!1333 = !DILocation(line: 84, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !392, line: 83, column: 39)
!1335 = !DILocation(line: 84, column: 14, scope: !1334)
!1336 = !DILocation(line: 84, column: 20, scope: !1334)
!1337 = !DILocation(line: 85, column: 54, scope: !1334)
!1338 = !DILocation(line: 85, column: 63, scope: !1334)
!1339 = !DILocation(line: 85, column: 69, scope: !1334)
!1340 = !DILocation(line: 85, column: 31, scope: !1334)
!1341 = !DILocation(line: 85, column: 5, scope: !1334)
!1342 = !DILocation(line: 85, column: 14, scope: !1334)
!1343 = !DILocation(line: 85, column: 20, scope: !1334)
!1344 = !DILocation(line: 85, column: 29, scope: !1334)
!1345 = !DILocation(line: 86, column: 4, scope: !1334)
!1346 = !DILocation(line: 87, column: 4, scope: !1329)
!1347 = !DILocation(line: 90, column: 14, scope: !1300)
!1348 = !DILocation(line: 75, column: 2, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1301, file: !392, discriminator: 1)
!1350 = distinct !{!1350, !1298}
!1351 = !DILocation(line: 92, column: 1, scope: !1291)
!1352 = distinct !DISubprogram(name: "config_parse_warn_missing", scope: !392, file: !392, line: 115, type: !1353, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !395)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !178, !188, !131, !169}
!1355 = !DILocalVariable(name: "rec", arg: 1, scope: !1352, file: !392, line: 115, type: !178)
!1356 = !DILocation(line: 115, column: 51, scope: !1352)
!1357 = !DILocalVariable(name: "node", arg: 2, scope: !1352, file: !392, line: 115, type: !188)
!1358 = !DILocation(line: 115, column: 69, scope: !1352)
!1359 = !DILocalVariable(name: "expected_token", arg: 3, scope: !1352, file: !392, line: 116, type: !131)
!1360 = !DILocation(line: 116, column: 22, scope: !1352)
!1361 = !DILocalVariable(name: "print_warning", arg: 4, scope: !1352, file: !392, line: 116, type: !169)
!1362 = !DILocation(line: 116, column: 42, scope: !1352)
!1363 = !DILocation(line: 118, column: 26, scope: !1352)
!1364 = !DILocation(line: 118, column: 31, scope: !1352)
!1365 = !DILocation(line: 118, column: 40, scope: !1352)
!1366 = !DILocation(line: 118, column: 2, scope: !1352)
!1367 = !DILocation(line: 119, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1352, file: !392, line: 119, column: 6)
!1369 = !DILocation(line: 119, column: 11, scope: !1368)
!1370 = !DILocation(line: 119, column: 20, scope: !1368)
!1371 = !DILocation(line: 119, column: 34, scope: !1368)
!1372 = !DILocation(line: 119, column: 31, scope: !1368)
!1373 = !DILocation(line: 119, column: 6, scope: !1352)
!1374 = !DILocation(line: 120, column: 28, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !392, line: 119, column: 50)
!1376 = !DILocation(line: 120, column: 33, scope: !1375)
!1377 = !DILocation(line: 120, column: 3, scope: !1375)
!1378 = !DILocation(line: 121, column: 3, scope: !1375)
!1379 = !DILocation(line: 124, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1352, file: !392, line: 124, column: 13)
!1381 = !DILocation(line: 124, column: 13, scope: !1352)
!1382 = !DILocation(line: 125, column: 18, scope: !1380)
!1383 = !DILocation(line: 125, column: 23, scope: !1380)
!1384 = !DILocation(line: 125, column: 57, scope: !1380)
!1385 = !DILocation(line: 125, column: 3, scope: !1380)
!1386 = !DILocation(line: 126, column: 1, scope: !1352)
