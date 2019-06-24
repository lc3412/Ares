; ModuleID = './line8-set.o.i'
source_filename = "./line8-set.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
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
%struct._CONFIG_NODE = type { i32, i8*, i8* }

@__func__.config_node_remove = private unnamed_addr constant [19 x i8] c"config_node_remove\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@__func__.config_node_list_remove = private unnamed_addr constant [24 x i8] c"config_node_list_remove\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"is_node_list(node)\00", align 1
@__func__.config_node_clear = private unnamed_addr constant [18 x i8] c"config_node_clear\00", align 1
@__func__.config_nodes_remove_all = private unnamed_addr constant [24 x i8] c"config_nodes_remove_all\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"is_node_list(rec->mainnode)\00", align 1
@__func__.config_node_set_str = private unnamed_addr constant [20 x i8] c"config_node_set_str\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"is_node_list(parent)\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Expected scalar node at `..%s/%s' was of complex type. Corrupt config?\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@__func__.config_set_str = private unnamed_addr constant [15 x i8] c"config_set_str\00", align 1

; Function Attrs: nounwind uwtable
define void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !110 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !393, metadata !394), !dbg !395
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !396, metadata !394), !dbg !397
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !398, metadata !394), !dbg !399
  br label %7, !dbg !400, !llvm.loop !401

; <label>:7:                                      ; preds = %3
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !402
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !406
  br i1 %9, label %10, label %11, !dbg !402

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !407

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.config_node_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !410
  br label %67, !dbg !413

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !414

; <label>:13:                                     ; preds = %12
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !416
  %15 = icmp eq %struct._CONFIG_NODE* %14, null, !dbg !418
  br i1 %15, label %16, label %20, !dbg !419

; <label>:16:                                     ; preds = %13
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !420
  %18 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %17, i32 0, i32 4, !dbg !421
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %18, align 8, !dbg !421
  store %struct._CONFIG_NODE* %19, %struct._CONFIG_NODE** %5, align 8, !dbg !422
  br label %20, !dbg !423

; <label>:20:                                     ; preds = %16, %13
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !424
  %22 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %21, i32 0, i32 2, !dbg !425
  %23 = load i32, i32* %22, align 4, !dbg !426
  %24 = add nsw i32 %23, 1, !dbg !426
  store i32 %24, i32* %22, align 4, !dbg !426
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !427
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !428
  call void @cache_remove(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26), !dbg !429
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !430
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 2, !dbg !431
  %29 = load i8*, i8** %28, align 8, !dbg !431
  %30 = bitcast i8* %29 to %struct._GSList*, !dbg !430
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !432
  %32 = bitcast %struct._CONFIG_NODE* %31 to i8*, !dbg !432
  %33 = call %struct._GSList* @g_slist_remove(%struct._GSList* %30, i8* %32), !dbg !433
  %34 = bitcast %struct._GSList* %33 to i8*, !dbg !433
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !434
  %36 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %35, i32 0, i32 2, !dbg !435
  store i8* %34, i8** %36, align 8, !dbg !436
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !437
  %38 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %37, i32 0, i32 0, !dbg !438
  %39 = load i32, i32* %38, align 8, !dbg !438
  switch i32 %39, label %61 [
    i32 0, label %40
    i32 1, label %40
    i32 4, label %40
    i32 2, label %44
    i32 3, label %44
  ], !dbg !439

; <label>:40:                                     ; preds = %20, %20, %20
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !440
  %42 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %41, i32 0, i32 2, !dbg !442
  %43 = load i8*, i8** %42, align 8, !dbg !442
  call void @g_free(i8* %43), !dbg !443
  br label %61, !dbg !444

; <label>:44:                                     ; preds = %20, %20
  br label %45, !dbg !445

; <label>:45:                                     ; preds = %50, %44
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !446
  %47 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %46, i32 0, i32 2, !dbg !448
  %48 = load i8*, i8** %47, align 8, !dbg !448
  %49 = icmp ne i8* %48, null, !dbg !449
  br i1 %49, label %50, label %60, !dbg !450

; <label>:50:                                     ; preds = %45
  %51 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !451
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !452
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !453
  %54 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %53, i32 0, i32 2, !dbg !454
  %55 = load i8*, i8** %54, align 8, !dbg !454
  %56 = bitcast i8* %55 to %struct._GSList*, !dbg !455
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0, !dbg !456
  %58 = load i8*, i8** %57, align 8, !dbg !456
  %59 = bitcast i8* %58 to %struct._CONFIG_NODE*, !dbg !457
  call void @config_node_remove(%struct._CONFIG_REC* %51, %struct._CONFIG_NODE* %52, %struct._CONFIG_NODE* %59), !dbg !458
  br label %45, !dbg !459, !llvm.loop !461

; <label>:60:                                     ; preds = %45
  br label %61, !dbg !462

; <label>:61:                                     ; preds = %20, %60, %40
  %62 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !463
  %63 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %62, i32 0, i32 1, !dbg !464
  %64 = load i8*, i8** %63, align 8, !dbg !464
  call void @g_free(i8* %64), !dbg !465
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !466
  %66 = bitcast %struct._CONFIG_NODE* %65 to i8*, !dbg !466
  call void @g_free(i8* %66), !dbg !467
  br label %67, !dbg !468

; <label>:67:                                     ; preds = %61, %11
  ret void, !dbg !469
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cache_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !471 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !474, metadata !394), !dbg !475
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !476, metadata !394), !dbg !477
  call void @llvm.dbg.declare(metadata i8** %5, metadata !478, metadata !394), !dbg !479
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !480
  %7 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %6, i32 0, i32 6, !dbg !481
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !481
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !482
  %10 = bitcast %struct._CONFIG_NODE* %9 to i8*, !dbg !482
  %11 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %10), !dbg !483
  store i8* %11, i8** %5, align 8, !dbg !484
  %12 = load i8*, i8** %5, align 8, !dbg !485
  %13 = icmp ne i8* %12, null, !dbg !487
  br i1 %13, label %14, label %27, !dbg !488

; <label>:14:                                     ; preds = %2
  %15 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !489
  %16 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %15, i32 0, i32 5, !dbg !491
  %17 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !491
  %18 = load i8*, i8** %5, align 8, !dbg !492
  %19 = call i32 @g_hash_table_remove(%struct._GHashTable* %17, i8* %18), !dbg !493
  %20 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !494
  %21 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %20, i32 0, i32 6, !dbg !495
  %22 = load %struct._GHashTable*, %struct._GHashTable** %21, align 8, !dbg !495
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !496
  %24 = bitcast %struct._CONFIG_NODE* %23 to i8*, !dbg !496
  %25 = call i32 @g_hash_table_remove(%struct._GHashTable* %22, i8* %24), !dbg !497
  %26 = load i8*, i8** %5, align 8, !dbg !498
  call void @g_free(i8* %26), !dbg !499
  br label %27, !dbg !500

; <label>:27:                                     ; preds = %14, %2
  ret void, !dbg !501
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @config_node_list_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #0 !dbg !502 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !505, metadata !394), !dbg !506
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !507, metadata !394), !dbg !508
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !509, metadata !394), !dbg !510
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !511, metadata !394), !dbg !512
  br label %8, !dbg !513, !llvm.loop !514

; <label>:8:                                      ; preds = %3
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !515
  %10 = icmp ne %struct._CONFIG_NODE* %9, null, !dbg !519
  br i1 %10, label %11, label %12, !dbg !515

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !520

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_node_list_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !523
  br label %38, !dbg !526

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !527

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !529, !llvm.loop !530

; <label>:15:                                     ; preds = %14
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !531
  %17 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %16, i32 0, i32 0, !dbg !535
  %18 = load i32, i32* %17, align 8, !dbg !535
  %19 = icmp eq i32 %18, 2, !dbg !536
  br i1 %19, label %25, label %20, !dbg !537

; <label>:20:                                     ; preds = %15
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !538
  %22 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %21, i32 0, i32 0, !dbg !540
  %23 = load i32, i32* %22, align 8, !dbg !540
  %24 = icmp eq i32 %23, 3, !dbg !541
  br i1 %24, label %25, label %26, !dbg !542

; <label>:25:                                     ; preds = %20, %15
  br label %27, !dbg !543

; <label>:26:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_node_list_remove, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)), !dbg !546
  br label %38, !dbg !549

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !550

; <label>:28:                                     ; preds = %27
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !552
  %30 = load i32, i32* %6, align 4, !dbg !553
  %31 = call %struct._CONFIG_NODE* @config_node_nth(%struct._CONFIG_NODE* %29, i32 %30), !dbg !554
  store %struct._CONFIG_NODE* %31, %struct._CONFIG_NODE** %7, align 8, !dbg !555
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !556
  %33 = icmp ne %struct._CONFIG_NODE* %32, null, !dbg !558
  br i1 %33, label %34, label %38, !dbg !559

; <label>:34:                                     ; preds = %28
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !560
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !562
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !563
  call void @config_node_remove(%struct._CONFIG_REC* %35, %struct._CONFIG_NODE* %36, %struct._CONFIG_NODE* %37), !dbg !564
  br label %38, !dbg !564

; <label>:38:                                     ; preds = %12, %26, %34, %28
  ret void, !dbg !565
}

declare %struct._CONFIG_NODE* @config_node_nth(%struct._CONFIG_NODE*, i32) #2

; Function Attrs: nounwind uwtable
define void @config_node_clear(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !566 {
  %3 = alloca %struct._CONFIG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %3, metadata !567, metadata !394), !dbg !568
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !569, metadata !394), !dbg !570
  br label %5, !dbg !571, !llvm.loop !572

; <label>:5:                                      ; preds = %2
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !573
  %7 = icmp ne %struct._CONFIG_NODE* %6, null, !dbg !577
  br i1 %7, label %8, label %9, !dbg !573

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !578

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_node_clear, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !581
  br label %41, !dbg !584

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !585

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !587, !llvm.loop !588

; <label>:12:                                     ; preds = %11
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !589
  %14 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %13, i32 0, i32 0, !dbg !593
  %15 = load i32, i32* %14, align 8, !dbg !593
  %16 = icmp eq i32 %15, 2, !dbg !594
  br i1 %16, label %22, label %17, !dbg !595

; <label>:17:                                     ; preds = %12
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !596
  %19 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %18, i32 0, i32 0, !dbg !598
  %20 = load i32, i32* %19, align 8, !dbg !598
  %21 = icmp eq i32 %20, 3, !dbg !599
  br i1 %21, label %22, label %23, !dbg !600

; <label>:22:                                     ; preds = %17, %12
  br label %24, !dbg !601

; <label>:23:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_node_clear, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)), !dbg !604
  br label %41, !dbg !607

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !608

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !610

; <label>:26:                                     ; preds = %31, %25
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !611
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 2, !dbg !613
  %29 = load i8*, i8** %28, align 8, !dbg !613
  %30 = icmp ne i8* %29, null, !dbg !614
  br i1 %30, label %31, label %41, !dbg !615

; <label>:31:                                     ; preds = %26
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %3, align 8, !dbg !616
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !617
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !618
  %35 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %34, i32 0, i32 2, !dbg !619
  %36 = load i8*, i8** %35, align 8, !dbg !619
  %37 = bitcast i8* %36 to %struct._GSList*, !dbg !620
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !621
  %39 = load i8*, i8** %38, align 8, !dbg !621
  %40 = bitcast i8* %39 to %struct._CONFIG_NODE*, !dbg !622
  call void @config_node_remove(%struct._CONFIG_REC* %32, %struct._CONFIG_NODE* %33, %struct._CONFIG_NODE* %40), !dbg !623
  br label %26, !dbg !624, !llvm.loop !626

; <label>:41:                                     ; preds = %9, %23, %26
  ret void, !dbg !627
}

; Function Attrs: nounwind uwtable
define void @config_nodes_remove_all(%struct._CONFIG_REC*) #0 !dbg !628 {
  %2 = alloca %struct._CONFIG_REC*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %2, metadata !631, metadata !394), !dbg !632
  br label %3, !dbg !633, !llvm.loop !634

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !635
  %5 = icmp ne %struct._CONFIG_REC* %4, null, !dbg !639
  br i1 %5, label %6, label %7, !dbg !635

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !640

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_nodes_remove_all, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !643
  br label %49, !dbg !646

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !647

; <label>:9:                                      ; preds = %8
  br label %10, !dbg !649, !llvm.loop !650

; <label>:10:                                     ; preds = %9
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !651
  %12 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %11, i32 0, i32 4, !dbg !655
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !655
  %14 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %13, i32 0, i32 0, !dbg !656
  %15 = load i32, i32* %14, align 8, !dbg !656
  %16 = icmp eq i32 %15, 2, !dbg !657
  br i1 %16, label %24, label %17, !dbg !658

; <label>:17:                                     ; preds = %10
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !659
  %19 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %18, i32 0, i32 4, !dbg !661
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %19, align 8, !dbg !661
  %21 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %20, i32 0, i32 0, !dbg !662
  %22 = load i32, i32* %21, align 8, !dbg !662
  %23 = icmp eq i32 %22, 3, !dbg !663
  br i1 %23, label %24, label %25, !dbg !664

; <label>:24:                                     ; preds = %17, %10
  br label %26, !dbg !665

; <label>:25:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.config_nodes_remove_all, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !668
  br label %49, !dbg !671

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !672

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !674

; <label>:28:                                     ; preds = %35, %27
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !675
  %30 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %29, i32 0, i32 4, !dbg !677
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %30, align 8, !dbg !677
  %32 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %31, i32 0, i32 2, !dbg !678
  %33 = load i8*, i8** %32, align 8, !dbg !678
  %34 = icmp ne i8* %33, null, !dbg !679
  br i1 %34, label %35, label %49, !dbg !680

; <label>:35:                                     ; preds = %28
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !681
  %37 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !682
  %38 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %37, i32 0, i32 4, !dbg !683
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %38, align 8, !dbg !683
  %40 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %2, align 8, !dbg !684
  %41 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %40, i32 0, i32 4, !dbg !685
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %41, align 8, !dbg !685
  %43 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %42, i32 0, i32 2, !dbg !686
  %44 = load i8*, i8** %43, align 8, !dbg !686
  %45 = bitcast i8* %44 to %struct._GSList*, !dbg !687
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0, !dbg !688
  %47 = load i8*, i8** %46, align 8, !dbg !688
  %48 = bitcast i8* %47 to %struct._CONFIG_NODE*, !dbg !689
  call void @config_node_remove(%struct._CONFIG_REC* %36, %struct._CONFIG_NODE* %39, %struct._CONFIG_NODE* %48), !dbg !690
  br label %28, !dbg !691, !llvm.loop !693

; <label>:49:                                     ; preds = %7, %25, %28
  ret void, !dbg !694
}

; Function Attrs: nounwind uwtable
define void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #0 !dbg !695 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._CONFIG_NODE*, align 8
  %10 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !698, metadata !394), !dbg !699
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !700, metadata !394), !dbg !701
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !702, metadata !394), !dbg !703
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !704, metadata !394), !dbg !705
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %9, metadata !706, metadata !394), !dbg !707
  call void @llvm.dbg.declare(metadata i32* %10, metadata !708, metadata !394), !dbg !709
  br label %11, !dbg !710, !llvm.loop !711

; <label>:11:                                     ; preds = %4
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !712
  %13 = icmp ne %struct._CONFIG_REC* %12, null, !dbg !716
  br i1 %13, label %14, label %15, !dbg !712

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !717

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_node_set_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !720
  br label %134, !dbg !723

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !724

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !726, !llvm.loop !727

; <label>:18:                                     ; preds = %17
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !728
  %20 = icmp ne %struct._CONFIG_NODE* %19, null, !dbg !732
  br i1 %20, label %21, label %22, !dbg !728

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !733

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_node_set_str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !736
  br label %134, !dbg !739

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !740

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !742, !llvm.loop !743

; <label>:25:                                     ; preds = %24
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !744
  %27 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %26, i32 0, i32 0, !dbg !748
  %28 = load i32, i32* %27, align 8, !dbg !748
  %29 = icmp eq i32 %28, 2, !dbg !749
  br i1 %29, label %35, label %30, !dbg !750

; <label>:30:                                     ; preds = %25
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !751
  %32 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %31, i32 0, i32 0, !dbg !753
  %33 = load i32, i32* %32, align 8, !dbg !753
  %34 = icmp eq i32 %33, 3, !dbg !754
  br i1 %34, label %35, label %36, !dbg !755

; <label>:35:                                     ; preds = %30, %25
  br label %37, !dbg !756

; <label>:36:                                     ; preds = %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.config_node_set_str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)), !dbg !759
  br label %134, !dbg !762

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !763

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %7, align 8, !dbg !765
  %40 = icmp eq i8* %39, null, !dbg !766
  %41 = zext i1 %40 to i32, !dbg !766
  store i32 %41, i32* %10, align 4, !dbg !767
  %42 = load i32, i32* %10, align 4, !dbg !768
  %43 = icmp ne i32 %42, 0, !dbg !768
  br i1 %43, label %44, label %45, !dbg !768

; <label>:44:                                     ; preds = %38
  br label %49, !dbg !769

; <label>:45:                                     ; preds = %38
  %46 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !771
  %47 = load i8*, i8** %7, align 8, !dbg !773
  %48 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %46, i8* %47), !dbg !774
  br label %49, !dbg !775

; <label>:49:                                     ; preds = %45, %44
  %50 = phi %struct._CONFIG_NODE* [ null, %44 ], [ %48, %45 ], !dbg !776
  store %struct._CONFIG_NODE* %50, %struct._CONFIG_NODE** %9, align 8, !dbg !778
  %51 = load i8*, i8** %8, align 8, !dbg !779
  %52 = icmp eq i8* %51, null, !dbg !781
  br i1 %52, label %53, label %61, !dbg !782

; <label>:53:                                     ; preds = %49
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !783
  %55 = icmp ne %struct._CONFIG_NODE* %54, null, !dbg !786
  br i1 %55, label %56, label %60, !dbg !787

; <label>:56:                                     ; preds = %53
  %57 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !788
  %58 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !790
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !791
  call void @config_node_remove(%struct._CONFIG_REC* %57, %struct._CONFIG_NODE* %58, %struct._CONFIG_NODE* %59), !dbg !792
  br label %60, !dbg !792

; <label>:60:                                     ; preds = %56, %53
  br label %134, !dbg !793

; <label>:61:                                     ; preds = %49
  %62 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !794
  %63 = icmp ne %struct._CONFIG_NODE* %62, null, !dbg !796
  br i1 %63, label %64, label %82, !dbg !797

; <label>:64:                                     ; preds = %61
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !798
  %66 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %65, i32 0, i32 0, !dbg !800
  %67 = load i32, i32* %66, align 8, !dbg !800
  %68 = icmp eq i32 %67, 0, !dbg !801
  br i1 %68, label %82, label %69, !dbg !802

; <label>:69:                                     ; preds = %64
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !803
  %71 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %70, i32 0, i32 0, !dbg !805
  %72 = load i32, i32* %71, align 8, !dbg !805
  %73 = icmp eq i32 %72, 1, !dbg !806
  br i1 %73, label %82, label %74, !dbg !807

; <label>:74:                                     ; preds = %69
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !808
  %76 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %75, i32 0, i32 1, !dbg !810
  %77 = load i8*, i8** %76, align 8, !dbg !810
  %78 = load i8*, i8** %7, align 8, !dbg !811
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i32 0, i32 0), i8* %77, i8* %78), !dbg !812
  %79 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !813
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !814
  %81 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !815
  call void @config_node_remove(%struct._CONFIG_REC* %79, %struct._CONFIG_NODE* %80, %struct._CONFIG_NODE* %81), !dbg !816
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %9, align 8, !dbg !817
  br label %82, !dbg !818

; <label>:82:                                     ; preds = %74, %69, %64, %61
  %83 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !819
  %84 = icmp ne %struct._CONFIG_NODE* %83, null, !dbg !821
  br i1 %84, label %85, label %97, !dbg !822

; <label>:85:                                     ; preds = %82
  %86 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !823
  %87 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %86, i32 0, i32 2, !dbg !826
  %88 = load i8*, i8** %87, align 8, !dbg !826
  %89 = load i8*, i8** %8, align 8, !dbg !827
  %90 = call i32 @g_strcmp0(i8* %88, i8* %89), !dbg !828
  %91 = icmp eq i32 %90, 0, !dbg !829
  br i1 %91, label %92, label %93, !dbg !830

; <label>:92:                                     ; preds = %85
  br label %134, !dbg !831

; <label>:93:                                     ; preds = %85
  %94 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !832
  %95 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %94, i32 0, i32 2, !dbg !833
  %96 = load i8*, i8** %95, align 8, !dbg !833
  call void @g_free(i8* %96), !dbg !834
  br label %125, !dbg !835

; <label>:97:                                     ; preds = %82
  %98 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !836
  %99 = bitcast i8* %98 to %struct._CONFIG_NODE*, !dbg !838
  store %struct._CONFIG_NODE* %99, %struct._CONFIG_NODE** %9, align 8, !dbg !839
  %100 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !840
  %101 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %100, i32 0, i32 2, !dbg !841
  %102 = load i8*, i8** %101, align 8, !dbg !841
  %103 = bitcast i8* %102 to %struct._GSList*, !dbg !840
  %104 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !842
  %105 = bitcast %struct._CONFIG_NODE* %104 to i8*, !dbg !842
  %106 = call %struct._GSList* @g_slist_append(%struct._GSList* %103, i8* %105), !dbg !843
  %107 = bitcast %struct._GSList* %106 to i8*, !dbg !843
  %108 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !844
  %109 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %108, i32 0, i32 2, !dbg !845
  store i8* %107, i8** %109, align 8, !dbg !846
  %110 = load i32, i32* %10, align 4, !dbg !847
  %111 = icmp ne i32 %110, 0, !dbg !847
  %112 = select i1 %111, i32 1, i32 0, !dbg !847
  %113 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !848
  %114 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %113, i32 0, i32 0, !dbg !849
  store i32 %112, i32* %114, align 8, !dbg !850
  %115 = load i32, i32* %10, align 4, !dbg !851
  %116 = icmp ne i32 %115, 0, !dbg !851
  br i1 %116, label %117, label %118, !dbg !851

; <label>:117:                                    ; preds = %97
  br label %121, !dbg !852

; <label>:118:                                    ; preds = %97
  %119 = load i8*, i8** %7, align 8, !dbg !854
  %120 = call noalias i8* @g_strdup(i8* %119), !dbg !856
  br label %121, !dbg !857

; <label>:121:                                    ; preds = %118, %117
  %122 = phi i8* [ null, %117 ], [ %120, %118 ], !dbg !858
  %123 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !860
  %124 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %123, i32 0, i32 1, !dbg !861
  store i8* %122, i8** %124, align 8, !dbg !862
  br label %125

; <label>:125:                                    ; preds = %121, %93
  %126 = load i8*, i8** %8, align 8, !dbg !863
  %127 = call noalias i8* @g_strdup(i8* %126), !dbg !864
  %128 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !865
  %129 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %128, i32 0, i32 2, !dbg !866
  store i8* %127, i8** %129, align 8, !dbg !867
  %130 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !868
  %131 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %130, i32 0, i32 2, !dbg !869
  %132 = load i32, i32* %131, align 4, !dbg !870
  %133 = add nsw i32 %132, 1, !dbg !870
  store i32 %133, i32* %131, align 4, !dbg !870
  br label %134, !dbg !871

; <label>:134:                                    ; preds = %125, %92, %60, %36, %22, %15
  ret void, !dbg !872
}

declare %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #0 !dbg !873 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !876, metadata !394), !dbg !877
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !878, metadata !394), !dbg !879
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !880, metadata !394), !dbg !881
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !882, metadata !394), !dbg !883
  call void @llvm.dbg.declare(metadata [12 x i8]* %9, metadata !884, metadata !394), !dbg !888
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !889
  %11 = load i32, i32* %8, align 4, !dbg !890
  %12 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %10, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %11), !dbg !891
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !892
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !893
  %15 = load i8*, i8** %7, align 8, !dbg !894
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !895
  call void @config_node_set_str(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %14, i8* %15, i8* %16), !dbg !896
  ret void, !dbg !897
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #0 !dbg !898 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !899, metadata !394), !dbg !900
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !901, metadata !394), !dbg !902
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !903, metadata !394), !dbg !904
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !905, metadata !394), !dbg !906
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !907
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !908
  %11 = load i8*, i8** %7, align 8, !dbg !909
  %12 = load i32, i32* %8, align 4, !dbg !910
  %13 = icmp ne i32 %12, 0, !dbg !910
  %14 = select i1 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), !dbg !910
  call void @config_node_set_str(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %10, i8* %11, i8* %14), !dbg !911
  ret void, !dbg !912
}

; Function Attrs: nounwind uwtable
define i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #0 !dbg !913 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !916, metadata !394), !dbg !917
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !918, metadata !394), !dbg !919
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !920, metadata !394), !dbg !921
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !922, metadata !394), !dbg !923
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %10, metadata !924, metadata !394), !dbg !925
  br label %11, !dbg !926, !llvm.loop !927

; <label>:11:                                     ; preds = %4
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !928
  %13 = icmp ne %struct._CONFIG_REC* %12, null, !dbg !932
  br i1 %13, label %14, label %15, !dbg !928

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !933

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.config_set_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !936
  store i32 -1, i32* %5, align 4, !dbg !939
  br label %29, !dbg !939

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !940

; <label>:17:                                     ; preds = %16
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !942
  %19 = load i8*, i8** %7, align 8, !dbg !943
  %20 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %18, i8* %19, i32 1), !dbg !944
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %10, align 8, !dbg !945
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !946
  %22 = icmp eq %struct._CONFIG_NODE* %21, null, !dbg !948
  br i1 %22, label %23, label %24, !dbg !949

; <label>:23:                                     ; preds = %17
  store i32 -1, i32* %5, align 4, !dbg !950
  br label %29, !dbg !950

; <label>:24:                                     ; preds = %17
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !952
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !953
  %27 = load i8*, i8** %8, align 8, !dbg !954
  %28 = load i8*, i8** %9, align 8, !dbg !955
  call void @config_node_set_str(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26, i8* %27, i8* %28), !dbg !956
  store i32 0, i32* %5, align 4, !dbg !957
  br label %29, !dbg !957

; <label>:29:                                     ; preds = %24, %23, %15
  %30 = load i32, i32* %5, align 4, !dbg !958
  ret i32 %30, !dbg !958
}

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @config_set_int(%struct._CONFIG_REC*, i8*, i8*, i32) #0 !dbg !959 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !962, metadata !394), !dbg !963
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !964, metadata !394), !dbg !965
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !966, metadata !394), !dbg !967
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !968, metadata !394), !dbg !969
  call void @llvm.dbg.declare(metadata [12 x i8]* %9, metadata !970, metadata !394), !dbg !971
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !972
  %11 = load i32, i32* %8, align 4, !dbg !973
  %12 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %10, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %11), !dbg !974
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !975
  %14 = load i8*, i8** %6, align 8, !dbg !976
  %15 = load i8*, i8** %7, align 8, !dbg !977
  %16 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !978
  %17 = call i32 @config_set_str(%struct._CONFIG_REC* %13, i8* %14, i8* %15, i8* %16), !dbg !979
  ret i32 %17, !dbg !980
}

; Function Attrs: nounwind uwtable
define i32 @config_set_bool(%struct._CONFIG_REC*, i8*, i8*, i32) #0 !dbg !981 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !982, metadata !394), !dbg !983
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !984, metadata !394), !dbg !985
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !986, metadata !394), !dbg !987
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !988, metadata !394), !dbg !989
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !990
  %10 = load i8*, i8** %6, align 8, !dbg !991
  %11 = load i8*, i8** %7, align 8, !dbg !992
  %12 = load i32, i32* %8, align 4, !dbg !993
  %13 = icmp ne i32 %12, 0, !dbg !993
  %14 = select i1 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), !dbg !993
  %15 = call i32 @config_set_str(%struct._CONFIG_REC* %9, i8* %10, i8* %11, i8* %14), !dbg !994
  ret i32 %15, !dbg !995
}

; Function Attrs: nounwind uwtable
define void @config_node_add_list(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8**) #0 !dbg !996 {
  %4 = alloca %struct._CONFIG_REC*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %4, metadata !1000, metadata !394), !dbg !1001
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1002, metadata !394), !dbg !1003
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1004, metadata !394), !dbg !1005
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1006, metadata !394), !dbg !1007
  %8 = load i8**, i8*** %6, align 8, !dbg !1008
  store i8** %8, i8*** %7, align 8, !dbg !1010
  br label %9, !dbg !1011

; <label>:9:                                      ; preds = %18, %3
  %10 = load i8**, i8*** %7, align 8, !dbg !1012
  %11 = load i8*, i8** %10, align 8, !dbg !1015
  %12 = icmp ne i8* %11, null, !dbg !1016
  br i1 %12, label %13, label %21, !dbg !1017

; <label>:13:                                     ; preds = %9
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %4, align 8, !dbg !1018
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1019
  %16 = load i8**, i8*** %7, align 8, !dbg !1020
  %17 = load i8*, i8** %16, align 8, !dbg !1021
  call void @config_node_set_str(%struct._CONFIG_REC* %14, %struct._CONFIG_NODE* %15, i8* null, i8* %17), !dbg !1022
  br label %18, !dbg !1022

; <label>:18:                                     ; preds = %13
  %19 = load i8**, i8*** %7, align 8, !dbg !1023
  %20 = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !1023
  store i8** %20, i8*** %7, align 8, !dbg !1023
  br label %9, !dbg !1025, !llvm.loop !1026

; <label>:21:                                     ; preds = %9
  ret void, !dbg !1028
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !82)
!1 = !DIFile(filename: "line8-set.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !30, !37, !42, !51, !62, !70}
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
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 51, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81}
!73 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!74 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!75 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!76 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!77 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!78 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!79 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!80 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!81 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!82 = !{!83, !84, !88, !90, !98}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !92, line: 37, baseType: !93)
!92 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !92, line: 39, size: 128, align: 64, elements: !94)
!94 = !{!95, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !92, line: 41, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !86, line: 77, baseType: !83)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !92, line: 42, baseType: !90, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !63, line: 17, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !63, line: 20, size: 192, align: 64, elements: !101)
!101 = !{!102, !104, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !63, line: 21, baseType: !103, size: 32, align: 32)
!103 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !100, file: !63, line: 22, baseType: !105, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !63, line: 23, baseType: !83, size: 64, align: 64, offset: 128)
!107 = !{i32 2, !"Dwarf Version", i32 4}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!110 = distinct !DISubprogram(name: "config_node_remove", scope: !111, file: !111, line: 35, type: !112, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!111 = !DIFile(filename: "set.c", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !98, !98}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !63, line: 18, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !63, line: 49, size: 576, align: 64, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !128, !129, !224, !390, !391}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !116, file: !63, line: 50, baseType: !105, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !116, file: !63, line: 51, baseType: !103, size: 32, align: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !116, file: !63, line: 52, baseType: !103, size: 32, align: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !116, file: !63, line: 54, baseType: !105, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !116, file: !63, line: 55, baseType: !98, size: 64, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !116, file: !63, line: 56, baseType: !124, size: 64, align: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !126, line: 37, baseType: !127)
!126 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !126, line: 37, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !116, file: !63, line: 57, baseType: !124, size: 64, align: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !116, file: !63, line: 59, baseType: !130, size: 64, align: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !4, line: 37, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !4, line: 169, size: 1152, align: 64, elements: !133)
!133 = !{!134, !135, !138, !139, !142, !147, !179, !181, !205, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !132, file: !4, line: 172, baseType: !96, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !132, file: !4, line: 173, baseType: !136, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !86, line: 55, baseType: !137)
!137 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !132, file: !4, line: 176, baseType: !136, size: 32, align: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !132, file: !4, line: 179, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !132, file: !4, line: 182, baseType: !143, size: 64, align: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !145, line: 36, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !145, line: 36, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !132, file: !4, line: 185, baseType: !148, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !4, line: 38, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !4, line: 127, size: 320, align: 64, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !150, file: !4, line: 131, baseType: !84, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !150, file: !4, line: 132, baseType: !84, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !150, file: !4, line: 133, baseType: !84, size: 64, align: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !150, file: !4, line: 134, baseType: !84, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !150, file: !4, line: 138, baseType: !136, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !150, file: !4, line: 143, baseType: !136, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !150, file: !4, line: 144, baseType: !136, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !150, file: !4, line: 145, baseType: !136, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !150, file: !4, line: 146, baseType: !136, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !150, file: !4, line: 147, baseType: !136, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !150, file: !4, line: 148, baseType: !136, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !150, file: !4, line: 149, baseType: !136, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !150, file: !4, line: 150, baseType: !136, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !150, file: !4, line: 151, baseType: !136, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !150, file: !4, line: 152, baseType: !136, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !150, file: !4, line: 153, baseType: !136, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !150, file: !4, line: 154, baseType: !136, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !150, file: !4, line: 155, baseType: !136, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !150, file: !4, line: 156, baseType: !136, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !150, file: !4, line: 157, baseType: !136, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !150, file: !4, line: 158, baseType: !136, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !150, file: !4, line: 159, baseType: !136, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !150, file: !4, line: 160, baseType: !136, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !150, file: !4, line: 161, baseType: !136, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !150, file: !4, line: 162, baseType: !136, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !150, file: !4, line: 163, baseType: !136, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !150, file: !4, line: 166, baseType: !136, size: 32, align: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !132, file: !4, line: 188, baseType: !180, size: 32, align: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !4, line: 109, baseType: !3)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !132, file: !4, line: 189, baseType: !182, size: 64, align: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !4, line: 39, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !4, line: 111, size: 64, align: 64, elements: !184)
!184 = !{!185, !186, !187, !190, !191, !192, !195, !198, !199, !200, !201, !204}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !183, file: !4, line: 113, baseType: !96, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !183, file: !4, line: 114, baseType: !84, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !183, file: !4, line: 115, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !86, line: 54, baseType: !189)
!189 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !183, file: !4, line: 116, baseType: !188, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !183, file: !4, line: 117, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !183, file: !4, line: 118, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !194, line: 52, baseType: !189)
!194 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !183, file: !4, line: 119, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !86, line: 58, baseType: !197)
!197 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !183, file: !4, line: 120, baseType: !188, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !183, file: !4, line: 121, baseType: !84, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !183, file: !4, line: 122, baseType: !84, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !183, file: !4, line: 123, baseType: !202, size: 8, align: 8)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !86, line: 52, baseType: !203)
!203 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !183, file: !4, line: 124, baseType: !136, size: 32, align: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !132, file: !4, line: 190, baseType: !136, size: 32, align: 32, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !132, file: !4, line: 191, baseType: !136, size: 32, align: 32, offset: 480)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !132, file: !4, line: 194, baseType: !180, size: 32, align: 32, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !132, file: !4, line: 195, baseType: !182, size: 64, align: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !132, file: !4, line: 196, baseType: !136, size: 32, align: 32, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !132, file: !4, line: 197, baseType: !136, size: 32, align: 32, offset: 672)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !132, file: !4, line: 201, baseType: !124, size: 64, align: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !132, file: !4, line: 202, baseType: !213, size: 32, align: 32, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !86, line: 49, baseType: !103)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !132, file: !4, line: 203, baseType: !140, size: 64, align: 64, offset: 832)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !132, file: !4, line: 204, baseType: !140, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !132, file: !4, line: 205, baseType: !84, size: 64, align: 64, offset: 960)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !132, file: !4, line: 206, baseType: !136, size: 32, align: 32, offset: 1024)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !132, file: !4, line: 210, baseType: !219, size: 64, align: 64, offset: 1088)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !4, line: 41, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !130, !84, !223}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !86, line: 50, baseType: !213)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !116, file: !63, line: 62, baseType: !225, size: 64, align: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !228)
!228 = !{!229, !230, !357, !358, !363, !364, !365, !366, !367, !376, !377, !378, !382, !383, !384, !385, !386, !387, !388, !389}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !227, file: !31, line: 100, baseType: !213, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !227, file: !31, line: 101, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !234)
!234 = !{!235, !254, !258, !265, !269, !344, !348, !353}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !233, file: !31, line: 133, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !225, !84, !240, !241, !242}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !194, line: 66, baseType: !189)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !245, line: 42, baseType: !246)
!245 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !245, line: 44, size: 128, align: 64, elements: !247)
!247 = !{!248, !252, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !246, file: !245, line: 46, baseType: !249, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !250, line: 36, baseType: !251)
!250 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !194, line: 45, baseType: !137)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !246, file: !245, line: 47, baseType: !213, size: 32, align: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !246, file: !245, line: 48, baseType: !84, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !233, file: !31, line: 138, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!239, !225, !140, !240, !241, !242}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !233, file: !31, line: 143, baseType: !259, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!239, !225, !262, !264, !242}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !194, line: 51, baseType: !263)
!263 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !233, file: !31, line: 147, baseType: !266, size: 64, align: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!239, !225, !242}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !233, file: !31, line: 149, baseType: !270, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !225, !343}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !276)
!276 = !{!277, !278, !298, !327, !328, !332, !333, !334, !335, !336, !337, !338, !339}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !275, file: !43, line: 174, baseType: !96, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !275, file: !43, line: 175, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !282)
!282 = !{!283, !287, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !281, file: !43, line: 198, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !96}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !281, file: !43, line: 199, baseType: !284, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !281, file: !43, line: 200, baseType: !289, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !96, !273, !292, !297}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!223, !96}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !275, file: !43, line: 177, baseType: !299, size: 64, align: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !303)
!303 = !{!304, !309, !313, !317, !321, !322}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !302, file: !43, line: 216, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!223, !273, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !302, file: !43, line: 218, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!223, !273}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !302, file: !43, line: 219, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!223, !273, !293, !96}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !302, file: !43, line: 222, baseType: !318, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !273}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !302, file: !43, line: 226, baseType: !293, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !302, file: !43, line: 227, baseType: !323, size: 64, align: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !275, file: !43, line: 178, baseType: !136, size: 32, align: 32, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !275, file: !43, line: 180, baseType: !329, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !331)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !275, file: !43, line: 182, baseType: !213, size: 32, align: 32, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !43, line: 183, baseType: !136, size: 32, align: 32, offset: 352)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !275, file: !43, line: 184, baseType: !136, size: 32, align: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !275, file: !43, line: 186, baseType: !90, size: 64, align: 64, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !275, file: !43, line: 188, baseType: !273, size: 64, align: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !43, line: 189, baseType: !273, size: 64, align: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !43, line: 191, baseType: !105, size: 64, align: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !275, file: !43, line: 193, baseType: !340, size: 64, align: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !233, file: !31, line: 151, baseType: !345, size: 64, align: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !225}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !233, file: !31, line: 152, baseType: !349, size: 64, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!239, !225, !352, !242}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !233, file: !31, line: 155, baseType: !354, size: 64, align: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!352, !225}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !227, file: !31, line: 103, baseType: !84, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !227, file: !31, line: 104, baseType: !359, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !360, line: 77, baseType: !361)
!360 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !360, line: 77, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !227, file: !31, line: 105, baseType: !359, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !227, file: !31, line: 106, baseType: !84, size: 64, align: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !227, file: !31, line: 107, baseType: !136, size: 32, align: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !227, file: !31, line: 109, baseType: !240, size: 64, align: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !227, file: !31, line: 110, baseType: !368, size: 64, align: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !370, line: 39, baseType: !371)
!370 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !370, line: 41, size: 192, align: 64, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !371, file: !370, line: 43, baseType: !84, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !371, file: !370, line: 44, baseType: !240, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !371, file: !370, line: 45, baseType: !240, size: 64, align: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !227, file: !31, line: 111, baseType: !368, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !227, file: !31, line: 112, baseType: !368, size: 64, align: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !227, file: !31, line: 113, baseType: !379, size: 48, align: 8, offset: 704)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 48, align: 8, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 6)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !227, file: !31, line: 117, baseType: !136, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !227, file: !31, line: 118, baseType: !136, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !227, file: !31, line: 119, baseType: !136, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !227, file: !31, line: 120, baseType: !136, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !227, file: !31, line: 121, baseType: !136, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !227, file: !31, line: 122, baseType: !136, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !227, file: !31, line: 124, baseType: !96, size: 64, align: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !227, file: !31, line: 125, baseType: !96, size: 64, align: 64, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !116, file: !63, line: 63, baseType: !103, size: 32, align: 32, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !116, file: !63, line: 64, baseType: !103, size: 32, align: 32, offset: 544)
!392 = !{}
!393 = !DILocalVariable(name: "rec", arg: 1, scope: !110, file: !111, line: 35, type: !114)
!394 = !DIExpression()
!395 = !DILocation(line: 35, column: 37, scope: !110)
!396 = !DILocalVariable(name: "parent", arg: 2, scope: !110, file: !111, line: 35, type: !98)
!397 = !DILocation(line: 35, column: 55, scope: !110)
!398 = !DILocalVariable(name: "node", arg: 3, scope: !110, file: !111, line: 35, type: !98)
!399 = !DILocation(line: 35, column: 76, scope: !110)
!400 = !DILocation(line: 37, column: 2, scope: !110)
!401 = distinct !{!401, !400}
!402 = !DILocation(line: 37, column: 10, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !111, discriminator: 1)
!404 = distinct !DILexicalBlock(scope: !405, file: !111, line: 37, column: 10)
!405 = distinct !DILexicalBlock(scope: !110, file: !111, line: 37, column: 4)
!406 = !DILocation(line: 37, column: 15, scope: !403)
!407 = !DILocation(line: 37, column: 5, scope: !408)
!408 = !DILexicalBlockFile(scope: !409, file: !111, discriminator: 2)
!409 = distinct !DILexicalBlock(scope: !404, file: !111, line: 37, column: 3)
!410 = !DILocation(line: 37, column: 14, scope: !411)
!411 = !DILexicalBlockFile(scope: !412, file: !111, discriminator: 3)
!412 = distinct !DILexicalBlock(scope: !404, file: !111, line: 37, column: 12)
!413 = !DILocation(line: 37, column: 99, scope: !411)
!414 = !DILocation(line: 37, column: 110, scope: !415)
!415 = !DILexicalBlockFile(scope: !405, file: !111, discriminator: 4)
!416 = !DILocation(line: 39, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !110, file: !111, line: 39, column: 6)
!418 = !DILocation(line: 39, column: 13, scope: !417)
!419 = !DILocation(line: 39, column: 6, scope: !110)
!420 = !DILocation(line: 40, column: 26, scope: !417)
!421 = !DILocation(line: 40, column: 31, scope: !417)
!422 = !DILocation(line: 40, column: 24, scope: !417)
!423 = !DILocation(line: 40, column: 17, scope: !417)
!424 = !DILocation(line: 42, column: 2, scope: !110)
!425 = !DILocation(line: 42, column: 7, scope: !110)
!426 = !DILocation(line: 42, column: 20, scope: !110)
!427 = !DILocation(line: 43, column: 15, scope: !110)
!428 = !DILocation(line: 43, column: 20, scope: !110)
!429 = !DILocation(line: 43, column: 2, scope: !110)
!430 = !DILocation(line: 44, column: 33, scope: !110)
!431 = !DILocation(line: 44, column: 41, scope: !110)
!432 = !DILocation(line: 44, column: 48, scope: !110)
!433 = !DILocation(line: 44, column: 18, scope: !110)
!434 = !DILocation(line: 44, column: 2, scope: !110)
!435 = !DILocation(line: 44, column: 10, scope: !110)
!436 = !DILocation(line: 44, column: 16, scope: !110)
!437 = !DILocation(line: 46, column: 10, scope: !110)
!438 = !DILocation(line: 46, column: 16, scope: !110)
!439 = !DILocation(line: 46, column: 2, scope: !110)
!440 = !DILocation(line: 50, column: 10, scope: !441)
!441 = distinct !DILexicalBlock(scope: !110, file: !111, line: 46, column: 22)
!442 = !DILocation(line: 50, column: 16, scope: !441)
!443 = !DILocation(line: 50, column: 3, scope: !441)
!444 = !DILocation(line: 51, column: 3, scope: !441)
!445 = !DILocation(line: 54, column: 3, scope: !441)
!446 = !DILocation(line: 54, column: 10, scope: !447)
!447 = !DILexicalBlockFile(scope: !441, file: !111, discriminator: 1)
!448 = !DILocation(line: 54, column: 16, scope: !447)
!449 = !DILocation(line: 54, column: 22, scope: !447)
!450 = !DILocation(line: 54, column: 3, scope: !447)
!451 = !DILocation(line: 55, column: 23, scope: !441)
!452 = !DILocation(line: 55, column: 28, scope: !441)
!453 = !DILocation(line: 55, column: 46, scope: !441)
!454 = !DILocation(line: 55, column: 52, scope: !441)
!455 = !DILocation(line: 55, column: 35, scope: !441)
!456 = !DILocation(line: 55, column: 60, scope: !441)
!457 = !DILocation(line: 55, column: 34, scope: !441)
!458 = !DILocation(line: 55, column: 4, scope: !441)
!459 = !DILocation(line: 54, column: 3, scope: !460)
!460 = !DILexicalBlockFile(scope: !441, file: !111, discriminator: 2)
!461 = distinct !{!461, !445}
!462 = !DILocation(line: 56, column: 3, scope: !441)
!463 = !DILocation(line: 58, column: 9, scope: !110)
!464 = !DILocation(line: 58, column: 15, scope: !110)
!465 = !DILocation(line: 58, column: 2, scope: !110)
!466 = !DILocation(line: 59, column: 16, scope: !110)
!467 = !DILocation(line: 59, column: 9, scope: !110)
!468 = !DILocation(line: 60, column: 1, scope: !110)
!469 = !DILocation(line: 60, column: 1, scope: !470)
!470 = !DILexicalBlockFile(scope: !110, file: !111, discriminator: 1)
!471 = distinct !DISubprogram(name: "cache_remove", scope: !111, file: !111, line: 23, type: !472, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !114, !98}
!474 = !DILocalVariable(name: "rec", arg: 1, scope: !471, file: !111, line: 23, type: !114)
!475 = !DILocation(line: 23, column: 38, scope: !471)
!476 = !DILocalVariable(name: "node", arg: 2, scope: !471, file: !111, line: 23, type: !98)
!477 = !DILocation(line: 23, column: 56, scope: !471)
!478 = !DILocalVariable(name: "path", scope: !471, file: !111, line: 25, type: !105)
!479 = !DILocation(line: 25, column: 8, scope: !471)
!480 = !DILocation(line: 27, column: 29, scope: !471)
!481 = !DILocation(line: 27, column: 34, scope: !471)
!482 = !DILocation(line: 27, column: 47, scope: !471)
!483 = !DILocation(line: 27, column: 9, scope: !471)
!484 = !DILocation(line: 27, column: 7, scope: !471)
!485 = !DILocation(line: 28, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !471, file: !111, line: 28, column: 6)
!487 = !DILocation(line: 28, column: 11, scope: !486)
!488 = !DILocation(line: 28, column: 6, scope: !471)
!489 = !DILocation(line: 29, column: 23, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !111, line: 28, column: 19)
!491 = !DILocation(line: 29, column: 28, scope: !490)
!492 = !DILocation(line: 29, column: 35, scope: !490)
!493 = !DILocation(line: 29, column: 3, scope: !490)
!494 = !DILocation(line: 30, column: 23, scope: !490)
!495 = !DILocation(line: 30, column: 28, scope: !490)
!496 = !DILocation(line: 30, column: 41, scope: !490)
!497 = !DILocation(line: 30, column: 3, scope: !490)
!498 = !DILocation(line: 31, column: 24, scope: !490)
!499 = !DILocation(line: 31, column: 17, scope: !490)
!500 = !DILocation(line: 32, column: 2, scope: !490)
!501 = !DILocation(line: 33, column: 1, scope: !471)
!502 = distinct !DISubprogram(name: "config_node_list_remove", scope: !111, file: !111, line: 62, type: !503, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !114, !98, !103}
!505 = !DILocalVariable(name: "rec", arg: 1, scope: !502, file: !111, line: 62, type: !114)
!506 = !DILocation(line: 62, column: 42, scope: !502)
!507 = !DILocalVariable(name: "node", arg: 2, scope: !502, file: !111, line: 62, type: !98)
!508 = !DILocation(line: 62, column: 60, scope: !502)
!509 = !DILocalVariable(name: "index", arg: 3, scope: !502, file: !111, line: 62, type: !103)
!510 = !DILocation(line: 62, column: 70, scope: !502)
!511 = !DILocalVariable(name: "child", scope: !502, file: !111, line: 64, type: !98)
!512 = !DILocation(line: 64, column: 15, scope: !502)
!513 = !DILocation(line: 66, column: 2, scope: !502)
!514 = distinct !{!514, !513}
!515 = !DILocation(line: 66, column: 10, scope: !516)
!516 = !DILexicalBlockFile(scope: !517, file: !111, discriminator: 1)
!517 = distinct !DILexicalBlock(scope: !518, file: !111, line: 66, column: 10)
!518 = distinct !DILexicalBlock(scope: !502, file: !111, line: 66, column: 4)
!519 = !DILocation(line: 66, column: 15, scope: !516)
!520 = !DILocation(line: 66, column: 5, scope: !521)
!521 = !DILexicalBlockFile(scope: !522, file: !111, discriminator: 2)
!522 = distinct !DILexicalBlock(scope: !517, file: !111, line: 66, column: 3)
!523 = !DILocation(line: 66, column: 14, scope: !524)
!524 = !DILexicalBlockFile(scope: !525, file: !111, discriminator: 3)
!525 = distinct !DILexicalBlock(scope: !517, file: !111, line: 66, column: 12)
!526 = !DILocation(line: 66, column: 99, scope: !524)
!527 = !DILocation(line: 66, column: 110, scope: !528)
!528 = !DILexicalBlockFile(scope: !518, file: !111, discriminator: 4)
!529 = !DILocation(line: 67, column: 2, scope: !502)
!530 = distinct !{!530, !529}
!531 = !DILocation(line: 67, column: 12, scope: !532)
!532 = !DILexicalBlockFile(scope: !533, file: !111, discriminator: 1)
!533 = distinct !DILexicalBlock(scope: !534, file: !111, line: 67, column: 10)
!534 = distinct !DILexicalBlock(scope: !502, file: !111, line: 67, column: 4)
!535 = !DILocation(line: 67, column: 19, scope: !532)
!536 = !DILocation(line: 67, column: 24, scope: !532)
!537 = !DILocation(line: 67, column: 43, scope: !532)
!538 = !DILocation(line: 67, column: 47, scope: !539)
!539 = !DILexicalBlockFile(scope: !533, file: !111, discriminator: 2)
!540 = !DILocation(line: 67, column: 54, scope: !539)
!541 = !DILocation(line: 67, column: 59, scope: !539)
!542 = !DILocation(line: 67, column: 10, scope: !539)
!543 = !DILocation(line: 67, column: 81, scope: !544)
!544 = !DILexicalBlockFile(scope: !545, file: !111, discriminator: 3)
!545 = distinct !DILexicalBlock(scope: !533, file: !111, line: 67, column: 79)
!546 = !DILocation(line: 67, column: 90, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !111, discriminator: 4)
!548 = distinct !DILexicalBlock(scope: !533, file: !111, line: 67, column: 88)
!549 = !DILocation(line: 67, column: 181, scope: !547)
!550 = !DILocation(line: 67, column: 192, scope: !551)
!551 = !DILexicalBlockFile(scope: !534, file: !111, discriminator: 5)
!552 = !DILocation(line: 69, column: 26, scope: !502)
!553 = !DILocation(line: 69, column: 32, scope: !502)
!554 = !DILocation(line: 69, column: 10, scope: !502)
!555 = !DILocation(line: 69, column: 8, scope: !502)
!556 = !DILocation(line: 70, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !502, file: !111, line: 70, column: 6)
!558 = !DILocation(line: 70, column: 12, scope: !557)
!559 = !DILocation(line: 70, column: 6, scope: !502)
!560 = !DILocation(line: 70, column: 39, scope: !561)
!561 = !DILexicalBlockFile(scope: !557, file: !111, discriminator: 1)
!562 = !DILocation(line: 70, column: 44, scope: !561)
!563 = !DILocation(line: 70, column: 50, scope: !561)
!564 = !DILocation(line: 70, column: 20, scope: !561)
!565 = !DILocation(line: 71, column: 1, scope: !502)
!566 = distinct !DISubprogram(name: "config_node_clear", scope: !111, file: !111, line: 73, type: !472, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!567 = !DILocalVariable(name: "rec", arg: 1, scope: !566, file: !111, line: 73, type: !114)
!568 = !DILocation(line: 73, column: 36, scope: !566)
!569 = !DILocalVariable(name: "node", arg: 2, scope: !566, file: !111, line: 73, type: !98)
!570 = !DILocation(line: 73, column: 54, scope: !566)
!571 = !DILocation(line: 75, column: 2, scope: !566)
!572 = distinct !{!572, !571}
!573 = !DILocation(line: 75, column: 10, scope: !574)
!574 = !DILexicalBlockFile(scope: !575, file: !111, discriminator: 1)
!575 = distinct !DILexicalBlock(scope: !576, file: !111, line: 75, column: 10)
!576 = distinct !DILexicalBlock(scope: !566, file: !111, line: 75, column: 4)
!577 = !DILocation(line: 75, column: 15, scope: !574)
!578 = !DILocation(line: 75, column: 5, scope: !579)
!579 = !DILexicalBlockFile(scope: !580, file: !111, discriminator: 2)
!580 = distinct !DILexicalBlock(scope: !575, file: !111, line: 75, column: 3)
!581 = !DILocation(line: 75, column: 14, scope: !582)
!582 = !DILexicalBlockFile(scope: !583, file: !111, discriminator: 3)
!583 = distinct !DILexicalBlock(scope: !575, file: !111, line: 75, column: 12)
!584 = !DILocation(line: 75, column: 99, scope: !582)
!585 = !DILocation(line: 75, column: 110, scope: !586)
!586 = !DILexicalBlockFile(scope: !576, file: !111, discriminator: 4)
!587 = !DILocation(line: 76, column: 2, scope: !566)
!588 = distinct !{!588, !587}
!589 = !DILocation(line: 76, column: 12, scope: !590)
!590 = !DILexicalBlockFile(scope: !591, file: !111, discriminator: 1)
!591 = distinct !DILexicalBlock(scope: !592, file: !111, line: 76, column: 10)
!592 = distinct !DILexicalBlock(scope: !566, file: !111, line: 76, column: 4)
!593 = !DILocation(line: 76, column: 19, scope: !590)
!594 = !DILocation(line: 76, column: 24, scope: !590)
!595 = !DILocation(line: 76, column: 43, scope: !590)
!596 = !DILocation(line: 76, column: 47, scope: !597)
!597 = !DILexicalBlockFile(scope: !591, file: !111, discriminator: 2)
!598 = !DILocation(line: 76, column: 54, scope: !597)
!599 = !DILocation(line: 76, column: 59, scope: !597)
!600 = !DILocation(line: 76, column: 10, scope: !597)
!601 = !DILocation(line: 76, column: 81, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !111, discriminator: 3)
!603 = distinct !DILexicalBlock(scope: !591, file: !111, line: 76, column: 79)
!604 = !DILocation(line: 76, column: 90, scope: !605)
!605 = !DILexicalBlockFile(scope: !606, file: !111, discriminator: 4)
!606 = distinct !DILexicalBlock(scope: !591, file: !111, line: 76, column: 88)
!607 = !DILocation(line: 76, column: 181, scope: !605)
!608 = !DILocation(line: 76, column: 192, scope: !609)
!609 = !DILexicalBlockFile(scope: !592, file: !111, discriminator: 5)
!610 = !DILocation(line: 78, column: 2, scope: !566)
!611 = !DILocation(line: 78, column: 9, scope: !612)
!612 = !DILexicalBlockFile(scope: !566, file: !111, discriminator: 1)
!613 = !DILocation(line: 78, column: 15, scope: !612)
!614 = !DILocation(line: 78, column: 21, scope: !612)
!615 = !DILocation(line: 78, column: 2, scope: !612)
!616 = !DILocation(line: 79, column: 36, scope: !566)
!617 = !DILocation(line: 79, column: 41, scope: !566)
!618 = !DILocation(line: 79, column: 59, scope: !566)
!619 = !DILocation(line: 79, column: 65, scope: !566)
!620 = !DILocation(line: 79, column: 48, scope: !566)
!621 = !DILocation(line: 79, column: 73, scope: !566)
!622 = !DILocation(line: 79, column: 47, scope: !566)
!623 = !DILocation(line: 79, column: 17, scope: !566)
!624 = !DILocation(line: 78, column: 2, scope: !625)
!625 = !DILexicalBlockFile(scope: !566, file: !111, discriminator: 2)
!626 = distinct !{!626, !610}
!627 = !DILocation(line: 80, column: 1, scope: !566)
!628 = distinct !DISubprogram(name: "config_nodes_remove_all", scope: !111, file: !111, line: 82, type: !629, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !114}
!631 = !DILocalVariable(name: "rec", arg: 1, scope: !628, file: !111, line: 82, type: !114)
!632 = !DILocation(line: 82, column: 42, scope: !628)
!633 = !DILocation(line: 84, column: 2, scope: !628)
!634 = distinct !{!634, !633}
!635 = !DILocation(line: 84, column: 10, scope: !636)
!636 = !DILexicalBlockFile(scope: !637, file: !111, discriminator: 1)
!637 = distinct !DILexicalBlock(scope: !638, file: !111, line: 84, column: 10)
!638 = distinct !DILexicalBlock(scope: !628, file: !111, line: 84, column: 4)
!639 = !DILocation(line: 84, column: 14, scope: !636)
!640 = !DILocation(line: 84, column: 5, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !111, discriminator: 2)
!642 = distinct !DILexicalBlock(scope: !637, file: !111, line: 84, column: 3)
!643 = !DILocation(line: 84, column: 14, scope: !644)
!644 = !DILexicalBlockFile(scope: !645, file: !111, discriminator: 3)
!645 = distinct !DILexicalBlock(scope: !637, file: !111, line: 84, column: 12)
!646 = !DILocation(line: 84, column: 98, scope: !644)
!647 = !DILocation(line: 84, column: 109, scope: !648)
!648 = !DILexicalBlockFile(scope: !638, file: !111, discriminator: 4)
!649 = !DILocation(line: 85, column: 2, scope: !628)
!650 = distinct !{!650, !649}
!651 = !DILocation(line: 85, column: 12, scope: !652)
!652 = !DILexicalBlockFile(scope: !653, file: !111, discriminator: 1)
!653 = distinct !DILexicalBlock(scope: !654, file: !111, line: 85, column: 10)
!654 = distinct !DILexicalBlock(scope: !628, file: !111, line: 85, column: 4)
!655 = !DILocation(line: 85, column: 17, scope: !652)
!656 = !DILocation(line: 85, column: 28, scope: !652)
!657 = !DILocation(line: 85, column: 33, scope: !652)
!658 = !DILocation(line: 85, column: 52, scope: !652)
!659 = !DILocation(line: 85, column: 56, scope: !660)
!660 = !DILexicalBlockFile(scope: !653, file: !111, discriminator: 2)
!661 = !DILocation(line: 85, column: 61, scope: !660)
!662 = !DILocation(line: 85, column: 72, scope: !660)
!663 = !DILocation(line: 85, column: 77, scope: !660)
!664 = !DILocation(line: 85, column: 10, scope: !660)
!665 = !DILocation(line: 85, column: 99, scope: !666)
!666 = !DILexicalBlockFile(scope: !667, file: !111, discriminator: 3)
!667 = distinct !DILexicalBlock(scope: !653, file: !111, line: 85, column: 97)
!668 = !DILocation(line: 85, column: 108, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !111, discriminator: 4)
!670 = distinct !DILexicalBlock(scope: !653, file: !111, line: 85, column: 106)
!671 = !DILocation(line: 85, column: 208, scope: !669)
!672 = !DILocation(line: 85, column: 219, scope: !673)
!673 = !DILexicalBlockFile(scope: !654, file: !111, discriminator: 5)
!674 = !DILocation(line: 87, column: 2, scope: !628)
!675 = !DILocation(line: 87, column: 9, scope: !676)
!676 = !DILexicalBlockFile(scope: !628, file: !111, discriminator: 1)
!677 = !DILocation(line: 87, column: 14, scope: !676)
!678 = !DILocation(line: 87, column: 24, scope: !676)
!679 = !DILocation(line: 87, column: 30, scope: !676)
!680 = !DILocation(line: 87, column: 2, scope: !676)
!681 = !DILocation(line: 88, column: 22, scope: !628)
!682 = !DILocation(line: 88, column: 27, scope: !628)
!683 = !DILocation(line: 88, column: 32, scope: !628)
!684 = !DILocation(line: 88, column: 54, scope: !628)
!685 = !DILocation(line: 88, column: 59, scope: !628)
!686 = !DILocation(line: 88, column: 69, scope: !628)
!687 = !DILocation(line: 88, column: 43, scope: !628)
!688 = !DILocation(line: 88, column: 77, scope: !628)
!689 = !DILocation(line: 88, column: 42, scope: !628)
!690 = !DILocation(line: 88, column: 3, scope: !628)
!691 = !DILocation(line: 87, column: 2, scope: !692)
!692 = !DILexicalBlockFile(scope: !628, file: !111, discriminator: 2)
!693 = distinct !{!693, !674}
!694 = !DILocation(line: 89, column: 1, scope: !628)
!695 = distinct !DISubprogram(name: "config_node_set_str", scope: !111, file: !111, line: 91, type: !696, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !114, !98, !88, !88}
!698 = !DILocalVariable(name: "rec", arg: 1, scope: !695, file: !111, line: 91, type: !114)
!699 = !DILocation(line: 91, column: 38, scope: !695)
!700 = !DILocalVariable(name: "parent", arg: 2, scope: !695, file: !111, line: 91, type: !98)
!701 = !DILocation(line: 91, column: 56, scope: !695)
!702 = !DILocalVariable(name: "key", arg: 3, scope: !695, file: !111, line: 91, type: !88)
!703 = !DILocation(line: 91, column: 76, scope: !695)
!704 = !DILocalVariable(name: "value", arg: 4, scope: !695, file: !111, line: 91, type: !88)
!705 = !DILocation(line: 91, column: 93, scope: !695)
!706 = !DILocalVariable(name: "node", scope: !695, file: !111, line: 93, type: !98)
!707 = !DILocation(line: 93, column: 15, scope: !695)
!708 = !DILocalVariable(name: "no_key", scope: !695, file: !111, line: 94, type: !103)
!709 = !DILocation(line: 94, column: 6, scope: !695)
!710 = !DILocation(line: 96, column: 2, scope: !695)
!711 = distinct !{!711, !710}
!712 = !DILocation(line: 96, column: 10, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !111, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !715, file: !111, line: 96, column: 10)
!715 = distinct !DILexicalBlock(scope: !695, file: !111, line: 96, column: 4)
!716 = !DILocation(line: 96, column: 14, scope: !713)
!717 = !DILocation(line: 96, column: 5, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !111, discriminator: 2)
!719 = distinct !DILexicalBlock(scope: !714, file: !111, line: 96, column: 3)
!720 = !DILocation(line: 96, column: 14, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !111, discriminator: 3)
!722 = distinct !DILexicalBlock(scope: !714, file: !111, line: 96, column: 12)
!723 = !DILocation(line: 96, column: 98, scope: !721)
!724 = !DILocation(line: 96, column: 109, scope: !725)
!725 = !DILexicalBlockFile(scope: !715, file: !111, discriminator: 4)
!726 = !DILocation(line: 97, column: 2, scope: !695)
!727 = distinct !{!727, !726}
!728 = !DILocation(line: 97, column: 10, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !111, discriminator: 1)
!730 = distinct !DILexicalBlock(scope: !731, file: !111, line: 97, column: 10)
!731 = distinct !DILexicalBlock(scope: !695, file: !111, line: 97, column: 4)
!732 = !DILocation(line: 97, column: 17, scope: !729)
!733 = !DILocation(line: 97, column: 5, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !111, discriminator: 2)
!735 = distinct !DILexicalBlock(scope: !730, file: !111, line: 97, column: 3)
!736 = !DILocation(line: 97, column: 14, scope: !737)
!737 = !DILexicalBlockFile(scope: !738, file: !111, discriminator: 3)
!738 = distinct !DILexicalBlock(scope: !730, file: !111, line: 97, column: 12)
!739 = !DILocation(line: 97, column: 101, scope: !737)
!740 = !DILocation(line: 97, column: 112, scope: !741)
!741 = !DILexicalBlockFile(scope: !731, file: !111, discriminator: 4)
!742 = !DILocation(line: 98, column: 2, scope: !695)
!743 = distinct !{!743, !742}
!744 = !DILocation(line: 98, column: 12, scope: !745)
!745 = !DILexicalBlockFile(scope: !746, file: !111, discriminator: 1)
!746 = distinct !DILexicalBlock(scope: !747, file: !111, line: 98, column: 10)
!747 = distinct !DILexicalBlock(scope: !695, file: !111, line: 98, column: 4)
!748 = !DILocation(line: 98, column: 21, scope: !745)
!749 = !DILocation(line: 98, column: 26, scope: !745)
!750 = !DILocation(line: 98, column: 45, scope: !745)
!751 = !DILocation(line: 98, column: 49, scope: !752)
!752 = !DILexicalBlockFile(scope: !746, file: !111, discriminator: 2)
!753 = !DILocation(line: 98, column: 58, scope: !752)
!754 = !DILocation(line: 98, column: 63, scope: !752)
!755 = !DILocation(line: 98, column: 10, scope: !752)
!756 = !DILocation(line: 98, column: 85, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !111, discriminator: 3)
!758 = distinct !DILexicalBlock(scope: !746, file: !111, line: 98, column: 83)
!759 = !DILocation(line: 98, column: 94, scope: !760)
!760 = !DILexicalBlockFile(scope: !761, file: !111, discriminator: 4)
!761 = distinct !DILexicalBlock(scope: !746, file: !111, line: 98, column: 92)
!762 = !DILocation(line: 98, column: 187, scope: !760)
!763 = !DILocation(line: 98, column: 198, scope: !764)
!764 = !DILexicalBlockFile(scope: !747, file: !111, discriminator: 5)
!765 = !DILocation(line: 100, column: 11, scope: !695)
!766 = !DILocation(line: 100, column: 15, scope: !695)
!767 = !DILocation(line: 100, column: 9, scope: !695)
!768 = !DILocation(line: 101, column: 9, scope: !695)
!769 = !DILocation(line: 101, column: 9, scope: !770)
!770 = !DILexicalBlockFile(scope: !695, file: !111, discriminator: 1)
!771 = !DILocation(line: 101, column: 41, scope: !772)
!772 = !DILexicalBlockFile(scope: !695, file: !111, discriminator: 2)
!773 = !DILocation(line: 101, column: 49, scope: !772)
!774 = !DILocation(line: 101, column: 24, scope: !772)
!775 = !DILocation(line: 101, column: 9, scope: !772)
!776 = !DILocation(line: 101, column: 9, scope: !777)
!777 = !DILexicalBlockFile(scope: !695, file: !111, discriminator: 3)
!778 = !DILocation(line: 101, column: 7, scope: !777)
!779 = !DILocation(line: 103, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !695, file: !111, line: 103, column: 6)
!781 = !DILocation(line: 103, column: 12, scope: !780)
!782 = !DILocation(line: 103, column: 6, scope: !695)
!783 = !DILocation(line: 105, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !111, line: 105, column: 7)
!785 = distinct !DILexicalBlock(scope: !780, file: !111, line: 103, column: 20)
!786 = !DILocation(line: 105, column: 12, scope: !784)
!787 = !DILocation(line: 105, column: 7, scope: !785)
!788 = !DILocation(line: 105, column: 39, scope: !789)
!789 = !DILexicalBlockFile(scope: !784, file: !111, discriminator: 1)
!790 = !DILocation(line: 105, column: 44, scope: !789)
!791 = !DILocation(line: 105, column: 52, scope: !789)
!792 = !DILocation(line: 105, column: 20, scope: !789)
!793 = !DILocation(line: 106, column: 3, scope: !785)
!794 = !DILocation(line: 109, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !695, file: !111, line: 109, column: 6)
!796 = !DILocation(line: 109, column: 11, scope: !795)
!797 = !DILocation(line: 109, column: 18, scope: !795)
!798 = !DILocation(line: 109, column: 24, scope: !799)
!799 = !DILexicalBlockFile(scope: !795, file: !111, discriminator: 1)
!800 = !DILocation(line: 109, column: 31, scope: !799)
!801 = !DILocation(line: 109, column: 36, scope: !799)
!802 = !DILocation(line: 109, column: 53, scope: !799)
!803 = !DILocation(line: 109, column: 57, scope: !804)
!804 = !DILexicalBlockFile(scope: !795, file: !111, discriminator: 2)
!805 = !DILocation(line: 109, column: 64, scope: !804)
!806 = !DILocation(line: 109, column: 69, scope: !804)
!807 = !DILocation(line: 109, column: 6, scope: !804)
!808 = !DILocation(line: 110, column: 120, scope: !809)
!809 = distinct !DILexicalBlock(scope: !795, file: !111, line: 109, column: 90)
!810 = !DILocation(line: 110, column: 128, scope: !809)
!811 = !DILocation(line: 110, column: 133, scope: !809)
!812 = !DILocation(line: 110, column: 3, scope: !809)
!813 = !DILocation(line: 112, column: 22, scope: !809)
!814 = !DILocation(line: 112, column: 27, scope: !809)
!815 = !DILocation(line: 112, column: 35, scope: !809)
!816 = !DILocation(line: 112, column: 3, scope: !809)
!817 = !DILocation(line: 113, column: 8, scope: !809)
!818 = !DILocation(line: 114, column: 2, scope: !809)
!819 = !DILocation(line: 115, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !695, file: !111, line: 115, column: 6)
!821 = !DILocation(line: 115, column: 11, scope: !820)
!822 = !DILocation(line: 115, column: 6, scope: !695)
!823 = !DILocation(line: 116, column: 17, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !111, line: 116, column: 7)
!825 = distinct !DILexicalBlock(scope: !820, file: !111, line: 115, column: 19)
!826 = !DILocation(line: 116, column: 23, scope: !824)
!827 = !DILocation(line: 116, column: 30, scope: !824)
!828 = !DILocation(line: 116, column: 7, scope: !824)
!829 = !DILocation(line: 116, column: 37, scope: !824)
!830 = !DILocation(line: 116, column: 7, scope: !825)
!831 = !DILocation(line: 117, column: 4, scope: !824)
!832 = !DILocation(line: 118, column: 24, scope: !825)
!833 = !DILocation(line: 118, column: 30, scope: !825)
!834 = !DILocation(line: 118, column: 17, scope: !825)
!835 = !DILocation(line: 119, column: 2, scope: !825)
!836 = !DILocation(line: 120, column: 27, scope: !837)
!837 = distinct !DILexicalBlock(scope: !820, file: !111, line: 119, column: 9)
!838 = !DILocation(line: 120, column: 11, scope: !837)
!839 = !DILocation(line: 120, column: 8, scope: !837)
!840 = !DILocation(line: 121, column: 34, scope: !837)
!841 = !DILocation(line: 121, column: 42, scope: !837)
!842 = !DILocation(line: 121, column: 49, scope: !837)
!843 = !DILocation(line: 121, column: 19, scope: !837)
!844 = !DILocation(line: 121, column: 3, scope: !837)
!845 = !DILocation(line: 121, column: 11, scope: !837)
!846 = !DILocation(line: 121, column: 17, scope: !837)
!847 = !DILocation(line: 123, column: 16, scope: !837)
!848 = !DILocation(line: 123, column: 3, scope: !837)
!849 = !DILocation(line: 123, column: 9, scope: !837)
!850 = !DILocation(line: 123, column: 14, scope: !837)
!851 = !DILocation(line: 124, column: 15, scope: !837)
!852 = !DILocation(line: 124, column: 15, scope: !853)
!853 = !DILexicalBlockFile(scope: !837, file: !111, discriminator: 1)
!854 = !DILocation(line: 124, column: 39, scope: !855)
!855 = !DILexicalBlockFile(scope: !837, file: !111, discriminator: 2)
!856 = !DILocation(line: 124, column: 30, scope: !855)
!857 = !DILocation(line: 124, column: 15, scope: !855)
!858 = !DILocation(line: 124, column: 15, scope: !859)
!859 = !DILexicalBlockFile(scope: !837, file: !111, discriminator: 3)
!860 = !DILocation(line: 124, column: 3, scope: !859)
!861 = !DILocation(line: 124, column: 9, scope: !859)
!862 = !DILocation(line: 124, column: 13, scope: !859)
!863 = !DILocation(line: 127, column: 25, scope: !695)
!864 = !DILocation(line: 127, column: 16, scope: !695)
!865 = !DILocation(line: 127, column: 2, scope: !695)
!866 = !DILocation(line: 127, column: 8, scope: !695)
!867 = !DILocation(line: 127, column: 14, scope: !695)
!868 = !DILocation(line: 128, column: 2, scope: !695)
!869 = !DILocation(line: 128, column: 7, scope: !695)
!870 = !DILocation(line: 128, column: 20, scope: !695)
!871 = !DILocation(line: 129, column: 1, scope: !695)
!872 = !DILocation(line: 129, column: 1, scope: !770)
!873 = distinct !DISubprogram(name: "config_node_set_int", scope: !111, file: !111, line: 131, type: !874, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !114, !98, !88, !103}
!876 = !DILocalVariable(name: "rec", arg: 1, scope: !873, file: !111, line: 131, type: !114)
!877 = !DILocation(line: 131, column: 38, scope: !873)
!878 = !DILocalVariable(name: "parent", arg: 2, scope: !873, file: !111, line: 131, type: !98)
!879 = !DILocation(line: 131, column: 56, scope: !873)
!880 = !DILocalVariable(name: "key", arg: 3, scope: !873, file: !111, line: 131, type: !88)
!881 = !DILocation(line: 131, column: 76, scope: !873)
!882 = !DILocalVariable(name: "value", arg: 4, scope: !873, file: !111, line: 131, type: !103)
!883 = !DILocation(line: 131, column: 85, scope: !873)
!884 = !DILocalVariable(name: "str", scope: !873, file: !111, line: 133, type: !885)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 96, align: 8, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 12)
!888 = !DILocation(line: 133, column: 7, scope: !873)
!889 = !DILocation(line: 135, column: 13, scope: !873)
!890 = !DILocation(line: 135, column: 37, scope: !873)
!891 = !DILocation(line: 135, column: 2, scope: !873)
!892 = !DILocation(line: 136, column: 22, scope: !873)
!893 = !DILocation(line: 136, column: 27, scope: !873)
!894 = !DILocation(line: 136, column: 35, scope: !873)
!895 = !DILocation(line: 136, column: 40, scope: !873)
!896 = !DILocation(line: 136, column: 2, scope: !873)
!897 = !DILocation(line: 137, column: 1, scope: !873)
!898 = distinct !DISubprogram(name: "config_node_set_bool", scope: !111, file: !111, line: 139, type: !874, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!899 = !DILocalVariable(name: "rec", arg: 1, scope: !898, file: !111, line: 139, type: !114)
!900 = !DILocation(line: 139, column: 39, scope: !898)
!901 = !DILocalVariable(name: "parent", arg: 2, scope: !898, file: !111, line: 139, type: !98)
!902 = !DILocation(line: 139, column: 57, scope: !898)
!903 = !DILocalVariable(name: "key", arg: 3, scope: !898, file: !111, line: 139, type: !88)
!904 = !DILocation(line: 139, column: 77, scope: !898)
!905 = !DILocalVariable(name: "value", arg: 4, scope: !898, file: !111, line: 139, type: !103)
!906 = !DILocation(line: 139, column: 86, scope: !898)
!907 = !DILocation(line: 141, column: 22, scope: !898)
!908 = !DILocation(line: 141, column: 27, scope: !898)
!909 = !DILocation(line: 141, column: 35, scope: !898)
!910 = !DILocation(line: 141, column: 40, scope: !898)
!911 = !DILocation(line: 141, column: 2, scope: !898)
!912 = !DILocation(line: 142, column: 1, scope: !898)
!913 = distinct !DISubprogram(name: "config_set_str", scope: !111, file: !111, line: 144, type: !914, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!914 = !DISubroutineType(types: !915)
!915 = !{!103, !114, !88, !88, !88}
!916 = !DILocalVariable(name: "rec", arg: 1, scope: !913, file: !111, line: 144, type: !114)
!917 = !DILocation(line: 144, column: 32, scope: !913)
!918 = !DILocalVariable(name: "section", arg: 2, scope: !913, file: !111, line: 144, type: !88)
!919 = !DILocation(line: 144, column: 49, scope: !913)
!920 = !DILocalVariable(name: "key", arg: 3, scope: !913, file: !111, line: 144, type: !88)
!921 = !DILocation(line: 144, column: 70, scope: !913)
!922 = !DILocalVariable(name: "value", arg: 4, scope: !913, file: !111, line: 144, type: !88)
!923 = !DILocation(line: 144, column: 87, scope: !913)
!924 = !DILocalVariable(name: "parent", scope: !913, file: !111, line: 146, type: !98)
!925 = !DILocation(line: 146, column: 15, scope: !913)
!926 = !DILocation(line: 148, column: 2, scope: !913)
!927 = distinct !{!927, !926}
!928 = !DILocation(line: 148, column: 10, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !111, discriminator: 1)
!930 = distinct !DILexicalBlock(scope: !931, file: !111, line: 148, column: 10)
!931 = distinct !DILexicalBlock(scope: !913, file: !111, line: 148, column: 4)
!932 = !DILocation(line: 148, column: 14, scope: !929)
!933 = !DILocation(line: 148, column: 5, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !111, discriminator: 2)
!935 = distinct !DILexicalBlock(scope: !930, file: !111, line: 148, column: 3)
!936 = !DILocation(line: 148, column: 14, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !111, discriminator: 3)
!938 = distinct !DILexicalBlock(scope: !930, file: !111, line: 148, column: 12)
!939 = !DILocation(line: 148, column: 98, scope: !937)
!940 = !DILocation(line: 148, column: 114, scope: !941)
!941 = !DILexicalBlockFile(scope: !931, file: !111, discriminator: 4)
!942 = !DILocation(line: 150, column: 32, scope: !913)
!943 = !DILocation(line: 150, column: 37, scope: !913)
!944 = !DILocation(line: 150, column: 11, scope: !913)
!945 = !DILocation(line: 150, column: 9, scope: !913)
!946 = !DILocation(line: 151, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !913, file: !111, line: 151, column: 6)
!948 = !DILocation(line: 151, column: 13, scope: !947)
!949 = !DILocation(line: 151, column: 6, scope: !913)
!950 = !DILocation(line: 151, column: 21, scope: !951)
!951 = !DILexicalBlockFile(scope: !947, file: !111, discriminator: 1)
!952 = !DILocation(line: 153, column: 22, scope: !913)
!953 = !DILocation(line: 153, column: 27, scope: !913)
!954 = !DILocation(line: 153, column: 35, scope: !913)
!955 = !DILocation(line: 153, column: 40, scope: !913)
!956 = !DILocation(line: 153, column: 2, scope: !913)
!957 = !DILocation(line: 154, column: 2, scope: !913)
!958 = !DILocation(line: 155, column: 1, scope: !913)
!959 = distinct !DISubprogram(name: "config_set_int", scope: !111, file: !111, line: 157, type: !960, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!960 = !DISubroutineType(types: !961)
!961 = !{!103, !114, !88, !88, !103}
!962 = !DILocalVariable(name: "rec", arg: 1, scope: !959, file: !111, line: 157, type: !114)
!963 = !DILocation(line: 157, column: 32, scope: !959)
!964 = !DILocalVariable(name: "section", arg: 2, scope: !959, file: !111, line: 157, type: !88)
!965 = !DILocation(line: 157, column: 49, scope: !959)
!966 = !DILocalVariable(name: "key", arg: 3, scope: !959, file: !111, line: 157, type: !88)
!967 = !DILocation(line: 157, column: 70, scope: !959)
!968 = !DILocalVariable(name: "value", arg: 4, scope: !959, file: !111, line: 157, type: !103)
!969 = !DILocation(line: 157, column: 79, scope: !959)
!970 = !DILocalVariable(name: "str", scope: !959, file: !111, line: 159, type: !885)
!971 = !DILocation(line: 159, column: 7, scope: !959)
!972 = !DILocation(line: 161, column: 13, scope: !959)
!973 = !DILocation(line: 161, column: 37, scope: !959)
!974 = !DILocation(line: 161, column: 2, scope: !959)
!975 = !DILocation(line: 162, column: 24, scope: !959)
!976 = !DILocation(line: 162, column: 29, scope: !959)
!977 = !DILocation(line: 162, column: 38, scope: !959)
!978 = !DILocation(line: 162, column: 43, scope: !959)
!979 = !DILocation(line: 162, column: 9, scope: !959)
!980 = !DILocation(line: 162, column: 2, scope: !959)
!981 = distinct !DISubprogram(name: "config_set_bool", scope: !111, file: !111, line: 165, type: !960, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!982 = !DILocalVariable(name: "rec", arg: 1, scope: !981, file: !111, line: 165, type: !114)
!983 = !DILocation(line: 165, column: 33, scope: !981)
!984 = !DILocalVariable(name: "section", arg: 2, scope: !981, file: !111, line: 165, type: !88)
!985 = !DILocation(line: 165, column: 50, scope: !981)
!986 = !DILocalVariable(name: "key", arg: 3, scope: !981, file: !111, line: 165, type: !88)
!987 = !DILocation(line: 165, column: 71, scope: !981)
!988 = !DILocalVariable(name: "value", arg: 4, scope: !981, file: !111, line: 165, type: !103)
!989 = !DILocation(line: 165, column: 80, scope: !981)
!990 = !DILocation(line: 167, column: 24, scope: !981)
!991 = !DILocation(line: 167, column: 29, scope: !981)
!992 = !DILocation(line: 167, column: 38, scope: !981)
!993 = !DILocation(line: 167, column: 43, scope: !981)
!994 = !DILocation(line: 167, column: 9, scope: !981)
!995 = !DILocation(line: 167, column: 2, scope: !981)
!996 = distinct !DISubprogram(name: "config_node_add_list", scope: !111, file: !111, line: 170, type: !997, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !392)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !114, !98, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!1000 = !DILocalVariable(name: "rec", arg: 1, scope: !996, file: !111, line: 170, type: !114)
!1001 = !DILocation(line: 170, column: 39, scope: !996)
!1002 = !DILocalVariable(name: "node", arg: 2, scope: !996, file: !111, line: 170, type: !98)
!1003 = !DILocation(line: 170, column: 57, scope: !996)
!1004 = !DILocalVariable(name: "array", arg: 3, scope: !996, file: !111, line: 170, type: !999)
!1005 = !DILocation(line: 170, column: 70, scope: !996)
!1006 = !DILocalVariable(name: "tmp", scope: !996, file: !111, line: 172, type: !999)
!1007 = !DILocation(line: 172, column: 9, scope: !996)
!1008 = !DILocation(line: 174, column: 13, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !996, file: !111, line: 174, column: 2)
!1010 = !DILocation(line: 174, column: 11, scope: !1009)
!1011 = !DILocation(line: 174, column: 7, scope: !1009)
!1012 = !DILocation(line: 174, column: 21, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !111, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !111, line: 174, column: 2)
!1015 = !DILocation(line: 174, column: 20, scope: !1013)
!1016 = !DILocation(line: 174, column: 25, scope: !1013)
!1017 = !DILocation(line: 174, column: 2, scope: !1013)
!1018 = !DILocation(line: 175, column: 37, scope: !1014)
!1019 = !DILocation(line: 175, column: 42, scope: !1014)
!1020 = !DILocation(line: 175, column: 54, scope: !1014)
!1021 = !DILocation(line: 175, column: 53, scope: !1014)
!1022 = !DILocation(line: 175, column: 17, scope: !1014)
!1023 = !DILocation(line: 174, column: 36, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1014, file: !111, discriminator: 2)
!1025 = !DILocation(line: 174, column: 2, scope: !1024)
!1026 = distinct !{!1026, !1027}
!1027 = !DILocation(line: 174, column: 2, scope: !996)
!1028 = !DILocation(line: 176, column: 1, scope: !996)
