; ModuleID = './line256-fe-recode.o.i'
source_filename = "./line256-fe-recode.o.i"
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
%struct._SERVER_REC = type opaque
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"recode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"recode add\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"recode remove\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"conversions\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@term_charset = internal global i8* null, align 8
@recode_fallback = internal global i8* null, align 8
@recode_out_default = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"recode_transliterate\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"recode_fallback\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"term_charset\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"recode_out_default_charset\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_recode_init() #0 !dbg !335 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !339
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_add_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !340
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_remove_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !341
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !342
  call void @read_settings(), !dbg !343
  ret void, !dbg !344
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @fe_recode_cmd(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !345 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._CONFIG_NODE*, align 8
  %11 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !386, metadata !387), !dbg !388
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !389, metadata !387), !dbg !390
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !391, metadata !387), !dbg !392
  %12 = load i8*, i8** %4, align 8, !dbg !393
  %13 = load i8, i8* %12, align 1, !dbg !395
  %14 = icmp ne i8 %13, 0, !dbg !395
  br i1 %14, label %15, label %21, !dbg !396

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %4, align 8, !dbg !397
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !398
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !398
  %19 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !399
  %20 = bitcast %struct._WI_ITEM_REC* %19 to i8*, !dbg !399
  call void @command_runsub(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %16, i8* %18, i8* %20), !dbg !400
  br label %78, !dbg !400

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !401, metadata !387), !dbg !410
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !411, metadata !387), !dbg !419
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !420, metadata !387), !dbg !421
  store %struct._GSList* null, %struct._GSList** %9, align 8, !dbg !421
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !422
  %23 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !423
  store %struct._CONFIG_NODE* %23, %struct._CONFIG_NODE** %7, align 8, !dbg !424
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !425
  %25 = icmp ne %struct._CONFIG_NODE* %24, null, !dbg !425
  br i1 %25, label %26, label %32, !dbg !425

; <label>:26:                                     ; preds = %21
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !427
  %28 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %27, i32 0, i32 2, !dbg !429
  %29 = load i8*, i8** %28, align 8, !dbg !429
  %30 = bitcast i8* %29 to %struct._GSList*, !dbg !427
  %31 = call %struct._GSList* @config_node_first(%struct._GSList* %30), !dbg !430
  br label %33, !dbg !431

; <label>:32:                                     ; preds = %21
  br label %33, !dbg !432

; <label>:33:                                     ; preds = %32, %26
  %34 = phi %struct._GSList* [ %31, %26 ], [ null, %32 ], !dbg !434
  store %struct._GSList* %34, %struct._GSList** %8, align 8, !dbg !436
  br label %35, !dbg !437

; <label>:35:                                     ; preds = %53, %33
  %36 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !438
  %37 = icmp ne %struct._GSList* %36, null, !dbg !440
  br i1 %37, label %38, label %56, !dbg !441

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %10, metadata !443, metadata !387), !dbg !445
  %39 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !446
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !447
  %41 = load i8*, i8** %40, align 8, !dbg !447
  %42 = bitcast i8* %41 to %struct._CONFIG_NODE*, !dbg !446
  store %struct._CONFIG_NODE* %42, %struct._CONFIG_NODE** %10, align 8, !dbg !445
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !448
  %44 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %43, i32 0, i32 0, !dbg !450
  %45 = load i32, i32* %44, align 8, !dbg !450
  %46 = icmp eq i32 %45, 0, !dbg !451
  br i1 %46, label %47, label %52, !dbg !452

; <label>:47:                                     ; preds = %38
  %48 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !453
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !454
  %50 = bitcast %struct._CONFIG_NODE* %49 to i8*, !dbg !454
  %51 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %48, i8* %50, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._CONFIG_NODE*)* @fe_recode_compare_func to i32 (i8*, i8*)*)), !dbg !455
  store %struct._GSList* %51, %struct._GSList** %9, align 8, !dbg !456
  br label %52, !dbg !457

; <label>:52:                                     ; preds = %47, %38
  br label %53, !dbg !458

; <label>:53:                                     ; preds = %52
  %54 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !459
  %55 = call %struct._GSList* @config_node_next(%struct._GSList* %54), !dbg !460
  store %struct._GSList* %55, %struct._GSList** %8, align 8, !dbg !461
  br label %35, !dbg !462, !llvm.loop !464

; <label>:56:                                     ; preds = %35
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 200), !dbg !466
  %57 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !467
  store %struct._GSList* %57, %struct._GSList** %8, align 8, !dbg !469
  br label %58, !dbg !470

; <label>:58:                                     ; preds = %72, %56
  %59 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !471
  %60 = icmp ne %struct._GSList* %59, null, !dbg !474
  br i1 %60, label %61, label %76, !dbg !475

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %11, metadata !476, metadata !387), !dbg !478
  %62 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !479
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !480
  %64 = load i8*, i8** %63, align 8, !dbg !480
  %65 = bitcast i8* %64 to %struct._CONFIG_NODE*, !dbg !479
  store %struct._CONFIG_NODE* %65, %struct._CONFIG_NODE** %11, align 8, !dbg !478
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !481
  %67 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %66, i32 0, i32 1, !dbg !482
  %68 = load i8*, i8** %67, align 8, !dbg !482
  %69 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !483
  %70 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %69, i32 0, i32 2, !dbg !484
  %71 = load i8*, i8** %70, align 8, !dbg !484
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 201, i8* %68, i8* %71), !dbg !485
  br label %72, !dbg !486

; <label>:72:                                     ; preds = %61
  %73 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !487
  %74 = getelementptr inbounds %struct._GSList, %struct._GSList* %73, i32 0, i32 1, !dbg !489
  %75 = load %struct._GSList*, %struct._GSList** %74, align 8, !dbg !489
  store %struct._GSList* %75, %struct._GSList** %8, align 8, !dbg !490
  br label %58, !dbg !491, !llvm.loop !492

; <label>:76:                                     ; preds = %58
  %77 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !494
  call void @g_slist_free(%struct._GSList* %77), !dbg !495
  br label %78

; <label>:78:                                     ; preds = %76, %15
  ret void, !dbg !496
}

; Function Attrs: nounwind uwtable
define internal void @fe_recode_add_cmd(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !497 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !498, metadata !387), !dbg !499
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !500, metadata !387), !dbg !501
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !502, metadata !387), !dbg !503
  call void @llvm.dbg.declare(metadata i8** %7, metadata !504, metadata !387), !dbg !505
  call void @llvm.dbg.declare(metadata i8** %8, metadata !506, metadata !387), !dbg !507
  call void @llvm.dbg.declare(metadata i8** %9, metadata !508, metadata !387), !dbg !509
  call void @llvm.dbg.declare(metadata i8** %10, metadata !510, metadata !387), !dbg !511
  call void @llvm.dbg.declare(metadata i8** %11, metadata !512, metadata !387), !dbg !513
  %12 = load i8*, i8** %4, align 8, !dbg !514
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %11, i32 2, i8** %7, i8** %8), !dbg !516
  %14 = icmp ne i32 %13, 0, !dbg !516
  br i1 %14, label %16, label %15, !dbg !517

; <label>:15:                                     ; preds = %3
  br label %59, !dbg !518

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %7, align 8, !dbg !519
  %18 = load i8, i8* %17, align 1, !dbg !521
  %19 = icmp ne i8 %18, 0, !dbg !521
  br i1 %19, label %27, label %20, !dbg !522

; <label>:20:                                     ; preds = %16
  br label %21, !dbg !523, !llvm.loop !524

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %11, align 8, !dbg !525
  call void @cmd_params_free(i8* %22), !dbg !528
  br label %23, !dbg !529, !llvm.loop !530

; <label>:23:                                     ; preds = %21
  %24 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !532
  call void @signal_stop(), !dbg !535
  br label %59, !dbg !537
                                                  ; No predecessors!
  br label %26, !dbg !538

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !540

; <label>:27:                                     ; preds = %26, %16
  %28 = load i8*, i8** %8, align 8, !dbg !542
  %29 = load i8, i8* %28, align 1, !dbg !544
  %30 = icmp ne i8 %29, 0, !dbg !544
  br i1 %30, label %31, label %34, !dbg !545

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %7, align 8, !dbg !546
  store i8* %32, i8** %9, align 8, !dbg !548
  %33 = load i8*, i8** %8, align 8, !dbg !549
  store i8* %33, i8** %10, align 8, !dbg !550
  br label %42, !dbg !551

; <label>:34:                                     ; preds = %27
  %35 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !552
  %36 = call i8* @fe_recode_get_target(%struct._WI_ITEM_REC* %35), !dbg !554
  store i8* %36, i8** %9, align 8, !dbg !555
  %37 = load i8*, i8** %7, align 8, !dbg !556
  store i8* %37, i8** %10, align 8, !dbg !557
  %38 = load i8*, i8** %9, align 8, !dbg !558
  %39 = icmp ne i8* %38, null, !dbg !558
  br i1 %39, label %41, label %40, !dbg !560

; <label>:40:                                     ; preds = %34
  br label %57, !dbg !561

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %41, %31
  %43 = load i8*, i8** %10, align 8, !dbg !562
  %44 = call i32 @is_valid_charset(i8* %43), !dbg !564
  %45 = icmp ne i32 %44, 0, !dbg !564
  br i1 %45, label %46, label %53, !dbg !565

; <label>:46:                                     ; preds = %42
  %47 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !566
  %48 = load i8*, i8** %9, align 8, !dbg !568
  %49 = load i8*, i8** %10, align 8, !dbg !569
  %50 = call i32 @config_set_str(%struct._CONFIG_REC* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %48, i8* %49), !dbg !570
  %51 = load i8*, i8** %9, align 8, !dbg !571
  %52 = load i8*, i8** %10, align 8, !dbg !572
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 196, i8* %51, i8* %52), !dbg !573
  br label %56, !dbg !574

; <label>:53:                                     ; preds = %42
  %54 = load i8*, i8** %10, align 8, !dbg !575
  %55 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 2, i8* inttoptr (i64 11 to i8*), i8* %54), !dbg !576
  br label %56

; <label>:56:                                     ; preds = %53, %46
  br label %57, !dbg !577

; <label>:57:                                     ; preds = %56, %40
  %58 = load i8*, i8** %11, align 8, !dbg !579
  call void @cmd_params_free(i8* %58), !dbg !580
  br label %59, !dbg !581

; <label>:59:                                     ; preds = %57, %23, %15
  ret void, !dbg !582
}

; Function Attrs: nounwind uwtable
define internal void @fe_recode_remove_cmd(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !584 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !585, metadata !387), !dbg !586
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !587, metadata !387), !dbg !588
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !589, metadata !387), !dbg !590
  call void @llvm.dbg.declare(metadata i8** %7, metadata !591, metadata !387), !dbg !592
  call void @llvm.dbg.declare(metadata i8** %8, metadata !593, metadata !387), !dbg !594
  %9 = load i8*, i8** %4, align 8, !dbg !595
  %10 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %9, i8** %8, i32 1, i8** %7), !dbg !597
  %11 = icmp ne i32 %10, 0, !dbg !597
  br i1 %11, label %13, label %12, !dbg !598

; <label>:12:                                     ; preds = %3
  br label %39, !dbg !599

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %7, align 8, !dbg !600
  %15 = load i8, i8* %14, align 1, !dbg !602
  %16 = icmp ne i8 %15, 0, !dbg !602
  br i1 %16, label %24, label %17, !dbg !603

; <label>:17:                                     ; preds = %13
  %18 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !604
  %19 = call i8* @fe_recode_get_target(%struct._WI_ITEM_REC* %18), !dbg !606
  store i8* %19, i8** %7, align 8, !dbg !607
  %20 = load i8*, i8** %7, align 8, !dbg !608
  %21 = icmp ne i8* %20, null, !dbg !608
  br i1 %21, label %23, label %22, !dbg !610

; <label>:22:                                     ; preds = %17
  br label %37, !dbg !611

; <label>:23:                                     ; preds = %17
  br label %24, !dbg !612

; <label>:24:                                     ; preds = %23, %13
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !613
  %26 = load i8*, i8** %7, align 8, !dbg !615
  %27 = call i8* @config_get_str(%struct._CONFIG_REC* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %26, i8* null), !dbg !616
  %28 = icmp eq i8* %27, null, !dbg !617
  br i1 %28, label %29, label %31, !dbg !618

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %7, align 8, !dbg !619
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 198, i8* %30), !dbg !620
  br label %36, !dbg !620

; <label>:31:                                     ; preds = %24
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !621
  %33 = load i8*, i8** %7, align 8, !dbg !623
  %34 = call i32 @config_set_str(%struct._CONFIG_REC* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %33, i8* null), !dbg !624
  %35 = load i8*, i8** %7, align 8, !dbg !625
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 197, i8* %35), !dbg !626
  br label %36

; <label>:36:                                     ; preds = %31, %29
  br label %37, !dbg !627

; <label>:37:                                     ; preds = %36, %22
  %38 = load i8*, i8** %8, align 8, !dbg !629
  call void @cmd_params_free(i8* %38), !dbg !630
  br label %39, !dbg !631

; <label>:39:                                     ; preds = %37, %12
  ret void, !dbg !632
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !634 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !635, metadata !387), !dbg !636
  %4 = load i8*, i8** @term_charset, align 8, !dbg !637
  %5 = call noalias i8* @g_strdup(i8* %4), !dbg !638
  store i8* %5, i8** %1, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata i8** %2, metadata !639, metadata !387), !dbg !640
  %6 = load i8*, i8** @recode_fallback, align 8, !dbg !641
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !642
  store i8* %7, i8** %2, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i8** %3, metadata !643, metadata !387), !dbg !644
  %8 = load i8*, i8** @recode_out_default, align 8, !dbg !645
  %9 = call noalias i8* @g_strdup(i8* %8), !dbg !646
  store i8* %9, i8** %3, align 8, !dbg !644
  %10 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)), !dbg !647
  %11 = icmp ne i32 %10, 0, !dbg !647
  br i1 %11, label %12, label %17, !dbg !649

; <label>:12:                                     ; preds = %0
  %13 = call i32 @is_valid_charset(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !650
  %14 = icmp ne i32 %13, 0, !dbg !650
  br i1 %14, label %16, label %15, !dbg !653

; <label>:15:                                     ; preds = %12
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 199), !dbg !654
  call void @settings_set_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !656
  br label %16, !dbg !657

; <label>:16:                                     ; preds = %15, %12
  br label %17, !dbg !658

; <label>:17:                                     ; preds = %16, %0
  %18 = load i8*, i8** @recode_fallback, align 8, !dbg !659
  %19 = icmp ne i8* %18, null, !dbg !659
  br i1 %19, label %20, label %22, !dbg !661

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** @recode_fallback, align 8, !dbg !662
  call void @g_free(i8* %21), !dbg !663
  br label %22, !dbg !663

; <label>:22:                                     ; preds = %20, %17
  %23 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)), !dbg !664
  %24 = call noalias i8* @g_strdup(i8* %23), !dbg !665
  store i8* %24, i8** @recode_fallback, align 8, !dbg !667
  %25 = load i8*, i8** @recode_fallback, align 8, !dbg !668
  %26 = call i32 @is_valid_charset(i8* %25), !dbg !670
  %27 = icmp ne i32 %26, 0, !dbg !670
  br i1 %27, label %42, label %28, !dbg !671

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** @recode_fallback, align 8, !dbg !672
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 2, i8* inttoptr (i64 11 to i8*), i8* %29), !dbg !674
  %31 = load i8*, i8** @recode_fallback, align 8, !dbg !675
  call void @g_free(i8* %31), !dbg !676
  %32 = load i8*, i8** %2, align 8, !dbg !677
  %33 = call i32 @is_valid_charset(i8* %32), !dbg !678
  %34 = icmp ne i32 %33, 0, !dbg !678
  br i1 %34, label %35, label %38, !dbg !678

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %2, align 8, !dbg !679
  %37 = call noalias i8* @g_strdup(i8* %36), !dbg !681
  br label %39, !dbg !682

; <label>:38:                                     ; preds = %28
  br label %39, !dbg !683

; <label>:39:                                     ; preds = %38, %35
  %40 = phi i8* [ %37, %35 ], [ null, %38 ], !dbg !685
  store i8* %40, i8** @recode_fallback, align 8, !dbg !687
  %41 = load i8*, i8** @recode_fallback, align 8, !dbg !688
  call void @settings_set_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* %41), !dbg !689
  br label %42, !dbg !690

; <label>:42:                                     ; preds = %39, %22
  %43 = load i8*, i8** @term_charset, align 8, !dbg !691
  %44 = icmp ne i8* %43, null, !dbg !691
  br i1 %44, label %45, label %47, !dbg !693

; <label>:45:                                     ; preds = %42
  %46 = load i8*, i8** @term_charset, align 8, !dbg !694
  call void @g_free(i8* %46), !dbg !695
  br label %47, !dbg !695

; <label>:47:                                     ; preds = %45, %42
  %48 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !696
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !697
  store i8* %49, i8** @term_charset, align 8, !dbg !698
  %50 = load i8*, i8** @term_charset, align 8, !dbg !699
  %51 = call i32 @is_valid_charset(i8* %50), !dbg !701
  %52 = icmp ne i32 %51, 0, !dbg !701
  br i1 %52, label %65, label %53, !dbg !702

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** @term_charset, align 8, !dbg !703
  call void @g_free(i8* %54), !dbg !705
  %55 = load i8*, i8** %1, align 8, !dbg !706
  %56 = call i32 @is_valid_charset(i8* %55), !dbg !707
  %57 = icmp ne i32 %56, 0, !dbg !707
  br i1 %57, label %58, label %61, !dbg !707

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %1, align 8, !dbg !708
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !710
  br label %62, !dbg !711

; <label>:61:                                     ; preds = %53
  br label %62, !dbg !712

; <label>:62:                                     ; preds = %61, %58
  %63 = phi i8* [ %60, %58 ], [ null, %61 ], !dbg !714
  store i8* %63, i8** @term_charset, align 8, !dbg !716
  %64 = load i8*, i8** @term_charset, align 8, !dbg !717
  call void @settings_set_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* %64), !dbg !718
  br label %65, !dbg !719

; <label>:65:                                     ; preds = %62, %47
  call void @recode_update_charset(), !dbg !720
  %66 = load i8*, i8** @recode_out_default, align 8, !dbg !721
  %67 = icmp ne i8* %66, null, !dbg !721
  br i1 %67, label %68, label %70, !dbg !723

; <label>:68:                                     ; preds = %65
  %69 = load i8*, i8** @recode_out_default, align 8, !dbg !724
  call void @g_free(i8* %69), !dbg !725
  br label %70, !dbg !725

; <label>:70:                                     ; preds = %68, %65
  %71 = call i8* @settings_get_str(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0)), !dbg !726
  %72 = call noalias i8* @g_strdup(i8* %71), !dbg !727
  store i8* %72, i8** @recode_out_default, align 8, !dbg !728
  %73 = load i8*, i8** @recode_out_default, align 8, !dbg !729
  %74 = icmp ne i8* %73, null, !dbg !731
  br i1 %74, label %75, label %98, !dbg !732

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** @recode_out_default, align 8, !dbg !733
  %77 = load i8, i8* %76, align 1, !dbg !735
  %78 = sext i8 %77 to i32, !dbg !735
  %79 = icmp ne i32 %78, 0, !dbg !736
  br i1 %79, label %80, label %98, !dbg !737

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** @recode_out_default, align 8, !dbg !738
  %82 = call i32 @is_valid_charset(i8* %81), !dbg !739
  %83 = icmp ne i32 %82, 0, !dbg !739
  br i1 %83, label %98, label %84, !dbg !740

; <label>:84:                                     ; preds = %80
  %85 = load i8*, i8** @recode_out_default, align 8, !dbg !742
  %86 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 2, i8* inttoptr (i64 11 to i8*), i8* %85), !dbg !744
  %87 = load i8*, i8** @recode_out_default, align 8, !dbg !745
  call void @g_free(i8* %87), !dbg !746
  %88 = load i8*, i8** %3, align 8, !dbg !747
  %89 = call i32 @is_valid_charset(i8* %88), !dbg !748
  %90 = icmp ne i32 %89, 0, !dbg !748
  br i1 %90, label %91, label %94, !dbg !748

; <label>:91:                                     ; preds = %84
  %92 = load i8*, i8** %3, align 8, !dbg !749
  %93 = call noalias i8* @g_strdup(i8* %92), !dbg !751
  br label %95, !dbg !752

; <label>:94:                                     ; preds = %84
  br label %95, !dbg !753

; <label>:95:                                     ; preds = %94, %91
  %96 = phi i8* [ %93, %91 ], [ null, %94 ], !dbg !755
  store i8* %96, i8** @recode_out_default, align 8, !dbg !757
  %97 = load i8*, i8** @recode_out_default, align 8, !dbg !758
  call void @settings_set_str(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* %97), !dbg !759
  br label %98, !dbg !760

; <label>:98:                                     ; preds = %95, %80, %75, %70
  %99 = load i8*, i8** %1, align 8, !dbg !761
  call void @g_free(i8* %99), !dbg !762
  %100 = load i8*, i8** %2, align 8, !dbg !763
  call void @g_free(i8* %100), !dbg !764
  %101 = load i8*, i8** %3, align 8, !dbg !765
  call void @g_free(i8* %101), !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define void @fe_recode_deinit() #0 !dbg !768 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !769
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_add_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !770
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @fe_recode_remove_cmd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !771
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !772
  ret void, !dbg !773
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #1

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #1

declare %struct._GSList* @config_node_first(%struct._GSList*) #1

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fe_recode_compare_func(%struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !774 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !777, metadata !387), !dbg !778
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !779, metadata !387), !dbg !780
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !781
  %6 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %5, i32 0, i32 1, !dbg !782
  %7 = load i8*, i8** %6, align 8, !dbg !782
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !783
  %9 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %8, i32 0, i32 1, !dbg !784
  %10 = load i8*, i8** %9, align 8, !dbg !784
  %11 = call i32 @g_strcmp0(i8* %7, i8* %10), !dbg !785
  ret i32 %11, !dbg !786
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

; Function Attrs: nounwind uwtable
define internal i8* @fe_recode_get_target(%struct._WI_ITEM_REC*) #0 !dbg !787 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !788, metadata !387), !dbg !789
  %4 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !790
  %5 = icmp ne %struct._WI_ITEM_REC* %4, null, !dbg !790
  br i1 %5, label %6, label %24, !dbg !792

; <label>:6:                                      ; preds = %1
  %7 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !793
  %8 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %7, i32 0, i32 0, !dbg !795
  %9 = load i32, i32* %8, align 8, !dbg !795
  %10 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)), !dbg !796
  %11 = icmp eq i32 %9, %10, !dbg !797
  br i1 %11, label %18, label %12, !dbg !798

; <label>:12:                                     ; preds = %6
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !799
  %14 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %13, i32 0, i32 0, !dbg !800
  %15 = load i32, i32* %14, align 8, !dbg !800
  %16 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)), !dbg !801
  %17 = icmp eq i32 %15, %16, !dbg !802
  br i1 %17, label %18, label %24, !dbg !803

; <label>:18:                                     ; preds = %12, %6
  %19 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !805
  %20 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %19, i32 0, i32 11, !dbg !806
  %21 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %20, align 8, !dbg !806
  %22 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !807
  %23 = call i8* %21(%struct._WI_ITEM_REC* %22), !dbg !808
  store i8* %23, i8** %2, align 8, !dbg !809
  br label %25, !dbg !809

; <label>:24:                                     ; preds = %12, %1
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 195), !dbg !810
  store i8* null, i8** %2, align 8, !dbg !811
  br label %25, !dbg !811

; <label>:25:                                     ; preds = %24, %18
  %26 = load i8*, i8** %2, align 8, !dbg !812
  ret i8* %26, !dbg !812
}

declare i32 @is_valid_charset(i8*) #1

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #1

declare i32 @module_get_uniq_id_str(i8*, i8*) #1

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare void @settings_set_bool(i8*, i32) #1

declare void @g_free(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare void @settings_set_str(i8*, i8*) #1

declare void @recode_update_charset() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!332, !333}
!llvm.ident = !{!334}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !305, globals: !325)
!1 = !DIFile(filename: "line256-fe-recode.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !11, !42, !284}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!7 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!8 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!9 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!10 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 10, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!14 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!15 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!16 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!17 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!18 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!19 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!20 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!21 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!22 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!23 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!24 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!25 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!26 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!27 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!28 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!29 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!30 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!31 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!32 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!33 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!34 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!35 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!36 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!37 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!38 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!39 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!40 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!41 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 3, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!45 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!46 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!47 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!48 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!49 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!50 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!51 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!52 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!53 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!54 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!55 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!56 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!57 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!58 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!59 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!60 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!61 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!62 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!63 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!64 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!65 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!66 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!68 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!69 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!77 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!78 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!79 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!80 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!81 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!82 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!83 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!84 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!85 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!86 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!87 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!88 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!89 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!90 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!91 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!92 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!93 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!94 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!95 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!96 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!97 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!98 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!99 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!100 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!101 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!102 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!103 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!104 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!105 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!106 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!107 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!108 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!109 = !DIEnumerator(name: "TXT_PART", value: 64)
!110 = !DIEnumerator(name: "TXT_KICK", value: 65)
!111 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!112 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!113 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!114 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!115 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!116 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!117 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!118 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!119 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!120 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!121 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!122 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!123 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!124 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!125 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!126 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!127 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!128 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!129 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!130 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!131 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!132 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!133 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!134 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!135 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!136 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!137 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!138 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!139 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!140 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!141 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!142 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!143 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!144 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!145 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!146 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!147 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!148 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!149 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!150 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!151 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!152 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!153 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!154 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!155 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!156 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!157 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!158 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!159 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!160 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!161 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!162 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!163 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!164 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!165 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!166 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!167 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!168 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!169 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!170 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!171 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!172 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!173 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!174 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!175 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!176 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!177 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!178 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!179 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!180 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!181 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!182 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!183 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!184 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!185 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!186 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!187 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!188 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!189 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!190 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!191 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!192 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!193 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!194 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!195 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!196 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!197 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!198 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!199 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!200 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!201 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!202 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!203 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!204 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!205 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!206 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!207 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!208 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!209 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!210 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!211 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!212 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!213 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!214 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!215 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!216 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!217 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!218 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!219 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!220 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!221 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!222 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!223 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!224 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!225 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!226 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!227 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!228 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!229 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!230 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!231 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!232 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!233 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!234 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!235 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!236 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!237 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!238 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!239 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!240 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!241 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!242 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!243 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!244 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!245 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!246 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!247 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!248 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!249 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!250 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!251 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!252 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!253 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!254 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!255 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!256 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!257 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!258 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!259 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!260 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!261 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!262 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!263 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!264 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!265 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!266 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!267 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!268 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!269 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!270 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!271 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!272 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!273 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!274 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!275 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!276 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!277 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!278 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!279 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!280 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!281 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!282 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!283 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 25, size: 32, align: 32, elements: !286)
!285 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!287 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!288 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!289 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!290 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!291 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!292 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!293 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!294 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!295 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!296 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!297 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!298 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!299 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!300 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!301 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!302 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!303 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!304 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!305 = !{!306, !313, !314, !322, !323}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !307, line: 9, baseType: !308)
!307 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311, !311, !311, !311, !311, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !315, line: 80, baseType: !316)
!315 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !321, !321}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !315, line: 49, baseType: !320)
!320 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !315, line: 78, baseType: !311)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !315, line: 77, baseType: !313)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !315, line: 48, baseType: !324)
!324 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!325 = !{!326, !330, !331}
!326 = distinct !DIGlobalVariable(name: "term_charset", scope: !0, file: !327, line: 34, type: !328, isLocal: true, isDefinition: true, variable: i8** @term_charset)
!327 = !DIFile(filename: "fe-recode.c", directory: "/home/lichi/Desktop/irssi/task1")
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!330 = distinct !DIGlobalVariable(name: "recode_fallback", scope: !0, file: !327, line: 32, type: !328, isLocal: true, isDefinition: true, variable: i8** @recode_fallback)
!331 = distinct !DIGlobalVariable(name: "recode_out_default", scope: !0, file: !327, line: 33, type: !328, isLocal: true, isDefinition: true, variable: i8** @recode_out_default)
!332 = !{i32 2, !"Dwarf Version", i32 4}
!333 = !{i32 2, !"Debug Info Version", i32 3}
!334 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!335 = distinct !DISubprogram(name: "fe_recode_init", scope: !327, file: !327, line: 193, type: !336, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null}
!338 = !{}
!339 = !DILocation(line: 195, column: 2, scope: !335)
!340 = !DILocation(line: 196, column: 2, scope: !335)
!341 = !DILocation(line: 197, column: 2, scope: !335)
!342 = !DILocation(line: 198, column: 2, scope: !335)
!343 = !DILocation(line: 199, column: 2, scope: !335)
!344 = !DILocation(line: 200, column: 1, scope: !335)
!345 = distinct !DISubprogram(name: "fe_recode_cmd", scope: !327, file: !327, line: 52, type: !346, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !350, !354}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !352, line: 107, baseType: !353)
!352 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !352, line: 107, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !352, line: 108, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !357, line: 5, size: 704, align: 64, elements: !358)
!357 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!358 = !{!359, !361, !362, !367, !368, !369, !370, !371, !376, !377, !378, !382}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !360, line: 3, baseType: !320, size: 32, align: 32)
!360 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !356, file: !360, line: 4, baseType: !320, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !356, file: !360, line: 5, baseType: !363, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !365, line: 37, baseType: !366)
!365 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !365, line: 37, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !356, file: !360, line: 7, baseType: !313, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !356, file: !360, line: 8, baseType: !350, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !356, file: !360, line: 9, baseType: !328, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !360, line: 10, baseType: !328, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !356, file: !360, line: 11, baseType: !372, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !373, line: 75, baseType: !374)
!373 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !375, line: 139, baseType: !324)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !356, file: !360, line: 12, baseType: !320, size: 32, align: 32, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !356, file: !360, line: 13, baseType: !328, size: 64, align: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !356, file: !360, line: 15, baseType: !379, size: 64, align: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !354}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !356, file: !360, line: 17, baseType: !383, size: 64, align: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!348, !354}
!386 = !DILocalVariable(name: "data", arg: 1, scope: !345, file: !327, line: 52, type: !348)
!387 = !DIExpression()
!388 = !DILocation(line: 52, column: 40, scope: !345)
!389 = !DILocalVariable(name: "server", arg: 2, scope: !345, file: !327, line: 52, type: !350)
!390 = !DILocation(line: 52, column: 58, scope: !345)
!391 = !DILocalVariable(name: "witem", arg: 3, scope: !345, file: !327, line: 52, type: !354)
!392 = !DILocation(line: 52, column: 79, scope: !345)
!393 = !DILocation(line: 54, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !345, file: !327, line: 54, column: 6)
!395 = !DILocation(line: 54, column: 6, scope: !394)
!396 = !DILocation(line: 54, column: 6, scope: !345)
!397 = !DILocation(line: 55, column: 28, scope: !394)
!398 = !DILocation(line: 55, column: 34, scope: !394)
!399 = !DILocation(line: 55, column: 42, scope: !394)
!400 = !DILocation(line: 55, column: 3, scope: !394)
!401 = !DILocalVariable(name: "conversions", scope: !402, file: !327, line: 57, type: !403)
!402 = distinct !DILexicalBlock(scope: !394, file: !327, line: 56, column: 7)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !4, line: 17, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !4, line: 20, size: 192, align: 64, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !4, line: 21, baseType: !320, size: 32, align: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !405, file: !4, line: 22, baseType: !328, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !4, line: 23, baseType: !313, size: 64, align: 64, offset: 128)
!410 = !DILocation(line: 57, column: 16, scope: !402)
!411 = !DILocalVariable(name: "tmp", scope: !402, file: !327, line: 58, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !414, line: 37, baseType: !415)
!414 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !414, line: 39, size: 128, align: 64, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !415, file: !414, line: 41, baseType: !322, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !414, line: 42, baseType: !412, size: 64, align: 64, offset: 64)
!419 = !DILocation(line: 58, column: 11, scope: !402)
!420 = !DILocalVariable(name: "sorted", scope: !402, file: !327, line: 59, type: !412)
!421 = !DILocation(line: 59, column: 11, scope: !402)
!422 = !DILocation(line: 61, column: 38, scope: !402)
!423 = !DILocation(line: 61, column: 17, scope: !402)
!424 = !DILocation(line: 61, column: 15, scope: !402)
!425 = !DILocation(line: 63, column: 14, scope: !426)
!426 = distinct !DILexicalBlock(scope: !402, file: !327, line: 63, column: 3)
!427 = !DILocation(line: 63, column: 46, scope: !428)
!428 = !DILexicalBlockFile(scope: !426, file: !327, discriminator: 1)
!429 = !DILocation(line: 63, column: 59, scope: !428)
!430 = !DILocation(line: 63, column: 28, scope: !428)
!431 = !DILocation(line: 63, column: 14, scope: !428)
!432 = !DILocation(line: 63, column: 14, scope: !433)
!433 = !DILexicalBlockFile(scope: !426, file: !327, discriminator: 2)
!434 = !DILocation(line: 63, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !426, file: !327, discriminator: 3)
!436 = !DILocation(line: 63, column: 12, scope: !435)
!437 = !DILocation(line: 63, column: 8, scope: !435)
!438 = !DILocation(line: 64, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !426, file: !327, line: 63, column: 3)
!440 = !DILocation(line: 64, column: 12, scope: !439)
!441 = !DILocation(line: 63, column: 3, scope: !442)
!442 = !DILexicalBlockFile(scope: !426, file: !327, discriminator: 4)
!443 = !DILocalVariable(name: "node", scope: !444, file: !327, line: 66, type: !403)
!444 = distinct !DILexicalBlock(scope: !439, file: !327, line: 65, column: 37)
!445 = !DILocation(line: 66, column: 17, scope: !444)
!446 = !DILocation(line: 66, column: 24, scope: !444)
!447 = !DILocation(line: 66, column: 29, scope: !444)
!448 = !DILocation(line: 68, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !327, line: 68, column: 8)
!450 = !DILocation(line: 68, column: 14, scope: !449)
!451 = !DILocation(line: 68, column: 19, scope: !449)
!452 = !DILocation(line: 68, column: 8, scope: !444)
!453 = !DILocation(line: 69, column: 36, scope: !449)
!454 = !DILocation(line: 69, column: 44, scope: !449)
!455 = !DILocation(line: 69, column: 14, scope: !449)
!456 = !DILocation(line: 69, column: 12, scope: !449)
!457 = !DILocation(line: 69, column: 5, scope: !449)
!458 = !DILocation(line: 70, column: 3, scope: !444)
!459 = !DILocation(line: 65, column: 31, scope: !439)
!460 = !DILocation(line: 65, column: 14, scope: !439)
!461 = !DILocation(line: 65, column: 12, scope: !439)
!462 = !DILocation(line: 63, column: 3, scope: !463)
!463 = !DILexicalBlockFile(scope: !439, file: !327, discriminator: 5)
!464 = distinct !{!464, !465}
!465 = !DILocation(line: 63, column: 3, scope: !402)
!466 = !DILocation(line: 72, column: 4, scope: !402)
!467 = !DILocation(line: 73, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !402, file: !327, line: 73, column: 3)
!469 = !DILocation(line: 73, column: 12, scope: !468)
!470 = !DILocation(line: 73, column: 8, scope: !468)
!471 = !DILocation(line: 73, column: 22, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !327, discriminator: 1)
!473 = distinct !DILexicalBlock(scope: !468, file: !327, line: 73, column: 3)
!474 = !DILocation(line: 73, column: 26, scope: !472)
!475 = !DILocation(line: 73, column: 3, scope: !472)
!476 = !DILocalVariable(name: "node", scope: !477, file: !327, line: 74, type: !403)
!477 = distinct !DILexicalBlock(scope: !473, file: !327, line: 73, column: 51)
!478 = !DILocation(line: 74, column: 17, scope: !477)
!479 = !DILocation(line: 74, column: 24, scope: !477)
!480 = !DILocation(line: 74, column: 29, scope: !477)
!481 = !DILocation(line: 75, column: 43, scope: !477)
!482 = !DILocation(line: 75, column: 49, scope: !477)
!483 = !DILocation(line: 75, column: 54, scope: !477)
!484 = !DILocation(line: 75, column: 60, scope: !477)
!485 = !DILocation(line: 75, column: 4, scope: !477)
!486 = !DILocation(line: 76, column: 3, scope: !477)
!487 = !DILocation(line: 73, column: 40, scope: !488)
!488 = !DILexicalBlockFile(scope: !473, file: !327, discriminator: 2)
!489 = !DILocation(line: 73, column: 45, scope: !488)
!490 = !DILocation(line: 73, column: 38, scope: !488)
!491 = !DILocation(line: 73, column: 3, scope: !488)
!492 = distinct !{!492, !493}
!493 = !DILocation(line: 73, column: 3, scope: !402)
!494 = !DILocation(line: 78, column: 16, scope: !402)
!495 = !DILocation(line: 78, column: 3, scope: !402)
!496 = !DILocation(line: 80, column: 1, scope: !345)
!497 = distinct !DISubprogram(name: "fe_recode_add_cmd", scope: !327, file: !327, line: 83, type: !346, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!498 = !DILocalVariable(name: "data", arg: 1, scope: !497, file: !327, line: 83, type: !348)
!499 = !DILocation(line: 83, column: 44, scope: !497)
!500 = !DILocalVariable(name: "server", arg: 2, scope: !497, file: !327, line: 83, type: !350)
!501 = !DILocation(line: 83, column: 62, scope: !497)
!502 = !DILocalVariable(name: "witem", arg: 3, scope: !497, file: !327, line: 83, type: !354)
!503 = !DILocation(line: 83, column: 83, scope: !497)
!504 = !DILocalVariable(name: "first", scope: !497, file: !327, line: 85, type: !348)
!505 = !DILocation(line: 85, column: 14, scope: !497)
!506 = !DILocalVariable(name: "second", scope: !497, file: !327, line: 86, type: !348)
!507 = !DILocation(line: 86, column: 14, scope: !497)
!508 = !DILocalVariable(name: "target", scope: !497, file: !327, line: 87, type: !348)
!509 = !DILocation(line: 87, column: 14, scope: !497)
!510 = !DILocalVariable(name: "charset", scope: !497, file: !327, line: 88, type: !348)
!511 = !DILocation(line: 88, column: 14, scope: !497)
!512 = !DILocalVariable(name: "free_arg", scope: !497, file: !327, line: 89, type: !313)
!513 = !DILocation(line: 89, column: 8, scope: !497)
!514 = !DILocation(line: 91, column: 23, scope: !515)
!515 = distinct !DILexicalBlock(scope: !497, file: !327, line: 91, column: 6)
!516 = !DILocation(line: 91, column: 8, scope: !515)
!517 = !DILocation(line: 91, column: 6, scope: !497)
!518 = !DILocation(line: 92, column: 3, scope: !515)
!519 = !DILocation(line: 94, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !497, file: !327, line: 94, column: 6)
!521 = !DILocation(line: 94, column: 8, scope: !520)
!522 = !DILocation(line: 94, column: 6, scope: !497)
!523 = !DILocation(line: 95, column: 3, scope: !520)
!524 = distinct !{!524, !523}
!525 = !DILocation(line: 95, column: 24, scope: !526)
!526 = !DILexicalBlockFile(scope: !527, file: !327, discriminator: 1)
!527 = distinct !DILexicalBlock(scope: !520, file: !327, line: 95, column: 6)
!528 = !DILocation(line: 95, column: 8, scope: !526)
!529 = !DILocation(line: 95, column: 35, scope: !526)
!530 = distinct !{!530, !531}
!531 = !DILocation(line: 95, column: 35, scope: !527)
!532 = !DILocation(line: 95, column: 40, scope: !533)
!533 = !DILexicalBlockFile(scope: !534, file: !327, discriminator: 2)
!534 = distinct !DILexicalBlock(scope: !527, file: !327, line: 95, column: 38)
!535 = !DILocation(line: 95, column: 122, scope: !536)
!536 = !DILexicalBlockFile(scope: !533, file: !327, discriminator: 5)
!537 = !DILocation(line: 95, column: 137, scope: !533)
!538 = !DILocation(line: 95, column: 158, scope: !539)
!539 = !DILexicalBlockFile(scope: !527, file: !327, discriminator: 3)
!540 = !DILocation(line: 95, column: 158, scope: !541)
!541 = !DILexicalBlockFile(scope: !527, file: !327, discriminator: 4)
!542 = !DILocation(line: 97, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !497, file: !327, line: 97, column: 6)
!544 = !DILocation(line: 97, column: 6, scope: !543)
!545 = !DILocation(line: 97, column: 6, scope: !497)
!546 = !DILocation(line: 98, column: 12, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !327, line: 97, column: 15)
!548 = !DILocation(line: 98, column: 10, scope: !547)
!549 = !DILocation(line: 99, column: 13, scope: !547)
!550 = !DILocation(line: 99, column: 11, scope: !547)
!551 = !DILocation(line: 100, column: 2, scope: !547)
!552 = !DILocation(line: 101, column: 33, scope: !553)
!553 = distinct !DILexicalBlock(scope: !543, file: !327, line: 100, column: 9)
!554 = !DILocation(line: 101, column: 12, scope: !553)
!555 = !DILocation(line: 101, column: 10, scope: !553)
!556 = !DILocation(line: 102, column: 13, scope: !553)
!557 = !DILocation(line: 102, column: 11, scope: !553)
!558 = !DILocation(line: 103, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !553, file: !327, line: 103, column: 7)
!560 = !DILocation(line: 103, column: 7, scope: !553)
!561 = !DILocation(line: 104, column: 4, scope: !559)
!562 = !DILocation(line: 106, column: 23, scope: !563)
!563 = distinct !DILexicalBlock(scope: !497, file: !327, line: 106, column: 6)
!564 = !DILocation(line: 106, column: 6, scope: !563)
!565 = !DILocation(line: 106, column: 6, scope: !497)
!566 = !DILocation(line: 107, column: 18, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !327, line: 106, column: 33)
!568 = !DILocation(line: 107, column: 45, scope: !567)
!569 = !DILocation(line: 107, column: 53, scope: !567)
!570 = !DILocation(line: 107, column: 3, scope: !567)
!571 = !DILocation(line: 108, column: 49, scope: !567)
!572 = !DILocation(line: 108, column: 57, scope: !567)
!573 = !DILocation(line: 108, column: 3, scope: !567)
!574 = !DILocation(line: 109, column: 2, scope: !567)
!575 = !DILocation(line: 110, column: 82, scope: !563)
!576 = !DILocation(line: 110, column: 3, scope: !563)
!577 = !DILocation(line: 106, column: 30, scope: !578)
!578 = !DILexicalBlockFile(scope: !563, file: !327, discriminator: 1)
!579 = !DILocation(line: 112, column: 18, scope: !497)
!580 = !DILocation(line: 112, column: 2, scope: !497)
!581 = !DILocation(line: 113, column: 1, scope: !497)
!582 = !DILocation(line: 113, column: 1, scope: !583)
!583 = !DILexicalBlockFile(scope: !497, file: !327, discriminator: 1)
!584 = distinct !DISubprogram(name: "fe_recode_remove_cmd", scope: !327, file: !327, line: 116, type: !346, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!585 = !DILocalVariable(name: "data", arg: 1, scope: !584, file: !327, line: 116, type: !348)
!586 = !DILocation(line: 116, column: 47, scope: !584)
!587 = !DILocalVariable(name: "server", arg: 2, scope: !584, file: !327, line: 116, type: !350)
!588 = !DILocation(line: 116, column: 65, scope: !584)
!589 = !DILocalVariable(name: "witem", arg: 3, scope: !584, file: !327, line: 116, type: !354)
!590 = !DILocation(line: 116, column: 86, scope: !584)
!591 = !DILocalVariable(name: "target", scope: !584, file: !327, line: 118, type: !348)
!592 = !DILocation(line: 118, column: 14, scope: !584)
!593 = !DILocalVariable(name: "free_arg", scope: !584, file: !327, line: 119, type: !313)
!594 = !DILocation(line: 119, column: 8, scope: !584)
!595 = !DILocation(line: 121, column: 23, scope: !596)
!596 = distinct !DILexicalBlock(scope: !584, file: !327, line: 121, column: 6)
!597 = !DILocation(line: 121, column: 8, scope: !596)
!598 = !DILocation(line: 121, column: 6, scope: !584)
!599 = !DILocation(line: 122, column: 3, scope: !596)
!600 = !DILocation(line: 124, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !584, file: !327, line: 124, column: 6)
!602 = !DILocation(line: 124, column: 8, scope: !601)
!603 = !DILocation(line: 124, column: 6, scope: !584)
!604 = !DILocation(line: 125, column: 33, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !327, line: 124, column: 17)
!606 = !DILocation(line: 125, column: 12, scope: !605)
!607 = !DILocation(line: 125, column: 10, scope: !605)
!608 = !DILocation(line: 126, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !327, line: 126, column: 7)
!610 = !DILocation(line: 126, column: 7, scope: !605)
!611 = !DILocation(line: 127, column: 4, scope: !609)
!612 = !DILocation(line: 128, column: 2, scope: !605)
!613 = !DILocation(line: 130, column: 21, scope: !614)
!614 = distinct !DILexicalBlock(scope: !584, file: !327, line: 130, column: 6)
!615 = !DILocation(line: 130, column: 48, scope: !614)
!616 = !DILocation(line: 130, column: 6, scope: !614)
!617 = !DILocation(line: 130, column: 7, scope: !614)
!618 = !DILocation(line: 130, column: 6, scope: !584)
!619 = !DILocation(line: 131, column: 53, scope: !614)
!620 = !DILocation(line: 131, column: 3, scope: !614)
!621 = !DILocation(line: 133, column: 18, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !327, line: 132, column: 7)
!623 = !DILocation(line: 133, column: 45, scope: !622)
!624 = !DILocation(line: 133, column: 3, scope: !622)
!625 = !DILocation(line: 134, column: 51, scope: !622)
!626 = !DILocation(line: 134, column: 3, scope: !622)
!627 = !DILocation(line: 130, column: 63, scope: !628)
!628 = !DILexicalBlockFile(scope: !614, file: !327, discriminator: 1)
!629 = !DILocation(line: 138, column: 18, scope: !584)
!630 = !DILocation(line: 138, column: 2, scope: !584)
!631 = !DILocation(line: 139, column: 1, scope: !584)
!632 = !DILocation(line: 139, column: 1, scope: !633)
!633 = !DILexicalBlockFile(scope: !584, file: !327, discriminator: 1)
!634 = distinct !DISubprogram(name: "read_settings", scope: !327, file: !327, line: 141, type: !336, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!635 = !DILocalVariable(name: "old_term_charset", scope: !634, file: !327, line: 144, type: !328)
!636 = !DILocation(line: 144, column: 8, scope: !634)
!637 = !DILocation(line: 144, column: 36, scope: !634)
!638 = !DILocation(line: 144, column: 27, scope: !634)
!639 = !DILocalVariable(name: "old_recode_fallback", scope: !634, file: !327, line: 145, type: !328)
!640 = !DILocation(line: 145, column: 8, scope: !634)
!641 = !DILocation(line: 145, column: 39, scope: !634)
!642 = !DILocation(line: 145, column: 30, scope: !634)
!643 = !DILocalVariable(name: "old_recode_out_default", scope: !634, file: !327, line: 146, type: !328)
!644 = !DILocation(line: 146, column: 8, scope: !634)
!645 = !DILocation(line: 146, column: 42, scope: !634)
!646 = !DILocation(line: 146, column: 33, scope: !634)
!647 = !DILocation(line: 148, column: 6, scope: !648)
!648 = distinct !DILexicalBlock(scope: !634, file: !327, line: 148, column: 6)
!649 = !DILocation(line: 148, column: 6, scope: !634)
!650 = !DILocation(line: 150, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !327, line: 150, column: 7)
!652 = distinct !DILexicalBlock(scope: !648, file: !327, line: 148, column: 49)
!653 = !DILocation(line: 150, column: 7, scope: !652)
!654 = !DILocation(line: 151, column: 4, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !327, line: 150, column: 35)
!656 = !DILocation(line: 153, column: 4, scope: !655)
!657 = !DILocation(line: 154, column: 3, scope: !655)
!658 = !DILocation(line: 155, column: 2, scope: !652)
!659 = !DILocation(line: 157, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !634, file: !327, line: 157, column: 6)
!661 = !DILocation(line: 157, column: 6, scope: !634)
!662 = !DILocation(line: 158, column: 10, scope: !660)
!663 = !DILocation(line: 158, column: 3, scope: !660)
!664 = !DILocation(line: 159, column: 29, scope: !634)
!665 = !DILocation(line: 159, column: 20, scope: !666)
!666 = !DILexicalBlockFile(scope: !634, file: !327, discriminator: 1)
!667 = !DILocation(line: 159, column: 18, scope: !634)
!668 = !DILocation(line: 160, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !634, file: !327, line: 160, column: 6)
!670 = !DILocation(line: 160, column: 7, scope: !669)
!671 = !DILocation(line: 160, column: 6, scope: !634)
!672 = !DILocation(line: 161, column: 82, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !327, line: 160, column: 42)
!674 = !DILocation(line: 161, column: 3, scope: !673)
!675 = !DILocation(line: 162, column: 10, scope: !673)
!676 = !DILocation(line: 162, column: 3, scope: !673)
!677 = !DILocation(line: 163, column: 38, scope: !673)
!678 = !DILocation(line: 163, column: 21, scope: !673)
!679 = !DILocation(line: 163, column: 70, scope: !680)
!680 = !DILexicalBlockFile(scope: !673, file: !327, discriminator: 1)
!681 = !DILocation(line: 163, column: 61, scope: !680)
!682 = !DILocation(line: 163, column: 21, scope: !680)
!683 = !DILocation(line: 163, column: 21, scope: !684)
!684 = !DILexicalBlockFile(scope: !673, file: !327, discriminator: 2)
!685 = !DILocation(line: 163, column: 21, scope: !686)
!686 = !DILexicalBlockFile(scope: !673, file: !327, discriminator: 3)
!687 = !DILocation(line: 163, column: 19, scope: !686)
!688 = !DILocation(line: 164, column: 39, scope: !673)
!689 = !DILocation(line: 164, column: 3, scope: !673)
!690 = !DILocation(line: 165, column: 2, scope: !673)
!691 = !DILocation(line: 167, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !634, file: !327, line: 167, column: 6)
!693 = !DILocation(line: 167, column: 6, scope: !634)
!694 = !DILocation(line: 168, column: 10, scope: !692)
!695 = !DILocation(line: 168, column: 3, scope: !692)
!696 = !DILocation(line: 169, column: 26, scope: !634)
!697 = !DILocation(line: 169, column: 17, scope: !666)
!698 = !DILocation(line: 169, column: 15, scope: !634)
!699 = !DILocation(line: 170, column: 24, scope: !700)
!700 = distinct !DILexicalBlock(scope: !634, file: !327, line: 170, column: 6)
!701 = !DILocation(line: 170, column: 7, scope: !700)
!702 = !DILocation(line: 170, column: 6, scope: !634)
!703 = !DILocation(line: 171, column: 10, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !327, line: 170, column: 39)
!705 = !DILocation(line: 171, column: 3, scope: !704)
!706 = !DILocation(line: 172, column: 35, scope: !704)
!707 = !DILocation(line: 172, column: 18, scope: !704)
!708 = !DILocation(line: 172, column: 64, scope: !709)
!709 = !DILexicalBlockFile(scope: !704, file: !327, discriminator: 1)
!710 = !DILocation(line: 172, column: 55, scope: !709)
!711 = !DILocation(line: 172, column: 18, scope: !709)
!712 = !DILocation(line: 172, column: 18, scope: !713)
!713 = !DILexicalBlockFile(scope: !704, file: !327, discriminator: 2)
!714 = !DILocation(line: 172, column: 18, scope: !715)
!715 = !DILexicalBlockFile(scope: !704, file: !327, discriminator: 3)
!716 = !DILocation(line: 172, column: 16, scope: !715)
!717 = !DILocation(line: 173, column: 36, scope: !704)
!718 = !DILocation(line: 173, column: 3, scope: !704)
!719 = !DILocation(line: 174, column: 2, scope: !704)
!720 = !DILocation(line: 175, column: 2, scope: !634)
!721 = !DILocation(line: 177, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !634, file: !327, line: 177, column: 6)
!723 = !DILocation(line: 177, column: 6, scope: !634)
!724 = !DILocation(line: 178, column: 10, scope: !722)
!725 = !DILocation(line: 178, column: 3, scope: !722)
!726 = !DILocation(line: 179, column: 32, scope: !634)
!727 = !DILocation(line: 179, column: 23, scope: !666)
!728 = !DILocation(line: 179, column: 21, scope: !634)
!729 = !DILocation(line: 180, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !634, file: !327, line: 180, column: 6)
!731 = !DILocation(line: 180, column: 25, scope: !730)
!732 = !DILocation(line: 180, column: 32, scope: !730)
!733 = !DILocation(line: 180, column: 36, scope: !734)
!734 = !DILexicalBlockFile(scope: !730, file: !327, discriminator: 1)
!735 = !DILocation(line: 180, column: 35, scope: !734)
!736 = !DILocation(line: 180, column: 55, scope: !734)
!737 = !DILocation(line: 180, column: 63, scope: !734)
!738 = !DILocation(line: 181, column: 24, scope: !730)
!739 = !DILocation(line: 181, column: 7, scope: !730)
!740 = !DILocation(line: 180, column: 6, scope: !741)
!741 = !DILexicalBlockFile(scope: !634, file: !327, discriminator: 2)
!742 = !DILocation(line: 182, column: 82, scope: !743)
!743 = distinct !DILexicalBlock(scope: !730, file: !327, line: 181, column: 45)
!744 = !DILocation(line: 182, column: 3, scope: !743)
!745 = !DILocation(line: 183, column: 10, scope: !743)
!746 = !DILocation(line: 183, column: 3, scope: !743)
!747 = !DILocation(line: 184, column: 41, scope: !743)
!748 = !DILocation(line: 184, column: 24, scope: !743)
!749 = !DILocation(line: 184, column: 76, scope: !750)
!750 = !DILexicalBlockFile(scope: !743, file: !327, discriminator: 1)
!751 = !DILocation(line: 184, column: 67, scope: !750)
!752 = !DILocation(line: 184, column: 24, scope: !750)
!753 = !DILocation(line: 184, column: 24, scope: !754)
!754 = !DILexicalBlockFile(scope: !743, file: !327, discriminator: 2)
!755 = !DILocation(line: 184, column: 24, scope: !756)
!756 = !DILexicalBlockFile(scope: !743, file: !327, discriminator: 3)
!757 = !DILocation(line: 184, column: 22, scope: !756)
!758 = !DILocation(line: 185, column: 50, scope: !743)
!759 = !DILocation(line: 185, column: 3, scope: !743)
!760 = !DILocation(line: 186, column: 2, scope: !743)
!761 = !DILocation(line: 188, column: 9, scope: !634)
!762 = !DILocation(line: 188, column: 2, scope: !634)
!763 = !DILocation(line: 189, column: 9, scope: !634)
!764 = !DILocation(line: 189, column: 2, scope: !634)
!765 = !DILocation(line: 190, column: 9, scope: !634)
!766 = !DILocation(line: 190, column: 2, scope: !634)
!767 = !DILocation(line: 191, column: 1, scope: !634)
!768 = distinct !DISubprogram(name: "fe_recode_deinit", scope: !327, file: !327, line: 202, type: !336, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!769 = !DILocation(line: 204, column: 2, scope: !768)
!770 = !DILocation(line: 205, column: 2, scope: !768)
!771 = !DILocation(line: 206, column: 2, scope: !768)
!772 = !DILocation(line: 207, column: 2, scope: !768)
!773 = !DILocation(line: 208, column: 1, scope: !768)
!774 = distinct !DISubprogram(name: "fe_recode_compare_func", scope: !327, file: !327, line: 46, type: !775, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!775 = !DISubroutineType(types: !776)
!776 = !{!320, !403, !403}
!777 = !DILocalVariable(name: "node1", arg: 1, scope: !774, file: !327, line: 46, type: !403)
!778 = !DILocation(line: 46, column: 49, scope: !774)
!779 = !DILocalVariable(name: "node2", arg: 2, scope: !774, file: !327, line: 46, type: !403)
!780 = !DILocation(line: 46, column: 69, scope: !774)
!781 = !DILocation(line: 48, column: 19, scope: !774)
!782 = !DILocation(line: 48, column: 26, scope: !774)
!783 = !DILocation(line: 48, column: 31, scope: !774)
!784 = !DILocation(line: 48, column: 38, scope: !774)
!785 = !DILocation(line: 48, column: 9, scope: !774)
!786 = !DILocation(line: 48, column: 2, scope: !774)
!787 = distinct !DISubprogram(name: "fe_recode_get_target", scope: !327, file: !327, line: 36, type: !384, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !338)
!788 = !DILocalVariable(name: "witem", arg: 1, scope: !787, file: !327, line: 36, type: !354)
!789 = !DILocation(line: 36, column: 55, scope: !787)
!790 = !DILocation(line: 38, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !327, line: 38, column: 6)
!792 = !DILocation(line: 38, column: 12, scope: !791)
!793 = !DILocation(line: 38, column: 16, scope: !794)
!794 = !DILexicalBlockFile(scope: !791, file: !327, discriminator: 1)
!795 = !DILocation(line: 38, column: 23, scope: !794)
!796 = !DILocation(line: 38, column: 31, scope: !794)
!797 = !DILocation(line: 38, column: 28, scope: !794)
!798 = !DILocation(line: 39, column: 6, scope: !791)
!799 = !DILocation(line: 39, column: 9, scope: !794)
!800 = !DILocation(line: 39, column: 16, scope: !794)
!801 = !DILocation(line: 39, column: 24, scope: !794)
!802 = !DILocation(line: 39, column: 21, scope: !794)
!803 = !DILocation(line: 38, column: 6, scope: !804)
!804 = !DILexicalBlockFile(scope: !787, file: !327, discriminator: 2)
!805 = !DILocation(line: 40, column: 12, scope: !791)
!806 = !DILocation(line: 40, column: 20, scope: !791)
!807 = !DILocation(line: 40, column: 31, scope: !791)
!808 = !DILocation(line: 40, column: 11, scope: !791)
!809 = !DILocation(line: 40, column: 3, scope: !791)
!810 = !DILocation(line: 42, column: 2, scope: !787)
!811 = !DILocation(line: 43, column: 2, scope: !787)
!812 = !DILocation(line: 44, column: 1, scope: !787)
