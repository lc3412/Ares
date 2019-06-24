; ModuleID = './line69-queries.o.i'
source_filename = "./line69-queries.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
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
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._WI_ITEM_REC = type opaque

@__func__.query_init = private unnamed_addr constant [11 x i8] c"query_init\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"query != NULL\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"query->name != NULL\00", align 1
@queries = common global %struct._GSList* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"query created\00", align 1
@__func__.query_destroy = private unnamed_addr constant [14 x i8] c"query_destroy\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IS_QUERY(query)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"query destroyed\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.query_find = private unnamed_addr constant [11 x i8] c"query_find\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"server == NULL || IS_SERVER(server)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.query_change_nick = private unnamed_addr constant [18 x i8] c"query_change_nick\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"query nick changed\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"window item name changed\00", align 1
@__func__.query_change_address = private unnamed_addr constant [21 x i8] c"query_change_address\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"query address changed\00", align 1
@__func__.query_change_server = private unnamed_addr constant [20 x i8] c"query_change_server\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"query server changed\00", align 1
@__func__.query_find_server = private unnamed_addr constant [18 x i8] c"query_find_server\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1

; Function Attrs: nounwind uwtable
define void @query_init(%struct._QUERY_REC*, i32) #0 !dbg !415 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !419, metadata !420), !dbg !421
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !422, metadata !420), !dbg !423
  br label %5, !dbg !424, !llvm.loop !425

; <label>:5:                                      ; preds = %2
  %6 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !426
  %7 = icmp ne %struct._QUERY_REC* %6, null, !dbg !430
  br i1 %7, label %8, label %9, !dbg !426

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !431

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.query_init, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0)), !dbg !434
  br label %82, !dbg !437

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !438

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !440, !llvm.loop !441

; <label>:12:                                     ; preds = %11
  %13 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !442
  %14 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %13, i32 0, i32 6, !dbg !446
  %15 = load i8*, i8** %14, align 8, !dbg !446
  %16 = icmp ne i8* %15, null, !dbg !447
  br i1 %16, label %17, label %18, !dbg !442

; <label>:17:                                     ; preds = %12
  br label %19, !dbg !448

; <label>:18:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.query_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !451
  br label %82, !dbg !454

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !455

; <label>:20:                                     ; preds = %19
  %21 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !457
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !458
  %23 = bitcast %struct._QUERY_REC* %22 to i8*, !dbg !458
  %24 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %23), !dbg !459
  store %struct._GSList* %24, %struct._GSList** @queries, align 8, !dbg !460
  %25 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !461
  %26 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !462
  %27 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %26, i32 0, i32 2, !dbg !463
  store %struct._GHashTable* %25, %struct._GHashTable** %27, align 8, !dbg !464
  %28 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !465
  %29 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !466
  %30 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %29, i32 0, i32 0, !dbg !467
  store i32 %28, i32* %30, align 8, !dbg !468
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !469
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 10, !dbg !470
  store void (%struct._WI_ITEM_REC*)* bitcast (void (%struct._QUERY_REC*)* @query_destroy to void (%struct._WI_ITEM_REC*)*), void (%struct._WI_ITEM_REC*)** %32, align 8, !dbg !471
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !472
  %34 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %33, i32 0, i32 11, !dbg !473
  store i8* (%struct._WI_ITEM_REC*)* @query_get_target, i8* (%struct._WI_ITEM_REC*)** %34, align 8, !dbg !474
  %35 = call i64 @time(i64* null) #4, !dbg !475
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !476
  %37 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %36, i32 0, i32 7, !dbg !477
  store i64 %35, i64* %37, align 8, !dbg !478
  %38 = call i64 @time(i64* null) #4, !dbg !479
  %39 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !480
  %40 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %39, i32 0, i32 14, !dbg !481
  store i64 %38, i64* %40, align 8, !dbg !482
  %41 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !483
  %42 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %41, i32 0, i32 6, !dbg !484
  %43 = load i8*, i8** %42, align 8, !dbg !484
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !485
  %45 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !486
  %46 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %45, i32 0, i32 5, !dbg !487
  store i8* %44, i8** %46, align 8, !dbg !488
  %47 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !489
  %48 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %47, i32 0, i32 13, !dbg !491
  %49 = load i8*, i8** %48, align 8, !dbg !491
  %50 = icmp ne i8* %49, null, !dbg !492
  br i1 %50, label %51, label %76, !dbg !493

; <label>:51:                                     ; preds = %20
  %52 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !494
  %53 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %52, i32 0, i32 13, !dbg !496
  %54 = load i8*, i8** %53, align 8, !dbg !496
  %55 = call %struct._SERVER_REC* @server_find_tag(i8* %54), !dbg !497
  %56 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !498
  %57 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %56, i32 0, i32 4, !dbg !499
  store %struct._SERVER_REC* %55, %struct._SERVER_REC** %57, align 8, !dbg !500
  %58 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !501
  %59 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %58, i32 0, i32 4, !dbg !503
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %59, align 8, !dbg !503
  %61 = icmp ne %struct._SERVER_REC* %60, null, !dbg !504
  br i1 %61, label %62, label %75, !dbg !505

; <label>:62:                                     ; preds = %51
  %63 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !506
  %64 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %63, i32 0, i32 4, !dbg !508
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %64, align 8, !dbg !508
  %66 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %65, i32 0, i32 24, !dbg !509
  %67 = load %struct._GSList*, %struct._GSList** %66, align 8, !dbg !509
  %68 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !510
  %69 = bitcast %struct._QUERY_REC* %68 to i8*, !dbg !510
  %70 = call %struct._GSList* @g_slist_append(%struct._GSList* %67, i8* %69), !dbg !511
  %71 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !512
  %72 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %71, i32 0, i32 4, !dbg !513
  %73 = load %struct._SERVER_REC*, %struct._SERVER_REC** %72, align 8, !dbg !513
  %74 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %73, i32 0, i32 24, !dbg !514
  store %struct._GSList* %70, %struct._GSList** %74, align 8, !dbg !515
  br label %75, !dbg !516

; <label>:75:                                     ; preds = %62, %51
  br label %76, !dbg !517

; <label>:76:                                     ; preds = %75, %20
  %77 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !518
  %78 = load i32, i32* %4, align 4, !dbg !519
  %79 = sext i32 %78 to i64, !dbg !520
  %80 = inttoptr i64 %79 to i8*, !dbg !521
  %81 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct._QUERY_REC* %77, i8* %80), !dbg !522
  br label %82, !dbg !523

; <label>:82:                                     ; preds = %76, %18, %9
  ret void, !dbg !524
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @query_destroy(%struct._QUERY_REC*) #0 !dbg !526 {
  %2 = alloca %struct._QUERY_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !529, metadata !420), !dbg !530
  br label %3, !dbg !531, !llvm.loop !532

; <label>:3:                                      ; preds = %1
  %4 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !533
  %5 = bitcast %struct._QUERY_REC* %4 to i8*, !dbg !533
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !537
  %7 = bitcast i8* %6 to %struct._QUERY_REC*, !dbg !538
  %8 = icmp ne %struct._QUERY_REC* %7, null, !dbg !538
  br i1 %8, label %9, label %10, !dbg !539

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !540

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !542

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !544

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.query_destroy, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !547
  br label %75, !dbg !550

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !551

; <label>:14:                                     ; preds = %13
  %15 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !553
  %16 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %15, i32 0, i32 15, !dbg !555
  %17 = load i8, i8* %16, align 8, !dbg !555
  %18 = lshr i8 %17, 1, !dbg !555
  %19 = and i8 %18, 1, !dbg !555
  %20 = zext i8 %19 to i32, !dbg !555
  %21 = icmp ne i32 %20, 0, !dbg !553
  br i1 %21, label %22, label %23, !dbg !556

; <label>:22:                                     ; preds = %14
  br label %75, !dbg !557

; <label>:23:                                     ; preds = %14
  %24 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !559
  %25 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %24, i32 0, i32 15, !dbg !560
  %26 = load i8, i8* %25, align 8, !dbg !561
  %27 = and i8 %26, -3, !dbg !561
  %28 = or i8 %27, 2, !dbg !561
  store i8 %28, i8* %25, align 8, !dbg !561
  %29 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !562
  %30 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !563
  %31 = bitcast %struct._QUERY_REC* %30 to i8*, !dbg !563
  %32 = call %struct._GSList* @g_slist_remove(%struct._GSList* %29, i8* %31), !dbg !564
  store %struct._GSList* %32, %struct._GSList** @queries, align 8, !dbg !565
  %33 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !566
  %34 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %33, i32 0, i32 4, !dbg !568
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %34, align 8, !dbg !568
  %36 = icmp ne %struct._SERVER_REC* %35, null, !dbg !569
  br i1 %36, label %37, label %50, !dbg !570

; <label>:37:                                     ; preds = %23
  %38 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !571
  %39 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %38, i32 0, i32 4, !dbg !573
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %39, align 8, !dbg !573
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 24, !dbg !574
  %42 = load %struct._GSList*, %struct._GSList** %41, align 8, !dbg !574
  %43 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !575
  %44 = bitcast %struct._QUERY_REC* %43 to i8*, !dbg !575
  %45 = call %struct._GSList* @g_slist_remove(%struct._GSList* %42, i8* %44), !dbg !576
  %46 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !577
  %47 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %46, i32 0, i32 4, !dbg !578
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %47, align 8, !dbg !578
  %49 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %48, i32 0, i32 24, !dbg !579
  store %struct._GSList* %45, %struct._GSList** %49, align 8, !dbg !580
  br label %50, !dbg !581

; <label>:50:                                     ; preds = %37, %23
  %51 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !582
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._QUERY_REC* %51), !dbg !583
  %53 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !584
  %54 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %53, i32 0, i32 2, !dbg !585
  %55 = load %struct._GHashTable*, %struct._GHashTable** %54, align 8, !dbg !585
  call void @g_hash_table_destroy(%struct._GHashTable* %55), !dbg !586
  %56 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !587
  %57 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %56, i32 0, i32 9, !dbg !588
  %58 = load i8*, i8** %57, align 8, !dbg !588
  call void @g_free(i8* %58), !dbg !589
  %59 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !590
  %60 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %59, i32 0, i32 13, !dbg !591
  %61 = load i8*, i8** %60, align 8, !dbg !591
  call void @g_free(i8* %61), !dbg !592
  %62 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !593
  %63 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %62, i32 0, i32 12, !dbg !594
  %64 = load i8*, i8** %63, align 8, !dbg !594
  call void @g_free(i8* %64), !dbg !595
  %65 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !596
  %66 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %65, i32 0, i32 5, !dbg !597
  %67 = load i8*, i8** %66, align 8, !dbg !597
  call void @g_free(i8* %67), !dbg !598
  %68 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !599
  %69 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %68, i32 0, i32 6, !dbg !600
  %70 = load i8*, i8** %69, align 8, !dbg !600
  call void @g_free(i8* %70), !dbg !601
  %71 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !602
  %72 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %71, i32 0, i32 0, !dbg !603
  store i32 0, i32* %72, align 8, !dbg !604
  %73 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !605
  %74 = bitcast %struct._QUERY_REC* %73 to i8*, !dbg !605
  call void @g_free(i8* %74), !dbg !606
  br label %75, !dbg !607

; <label>:75:                                     ; preds = %50, %22, %12
  ret void, !dbg !608
}

; Function Attrs: nounwind uwtable
define internal i8* @query_get_target(%struct._WI_ITEM_REC*) #0 !dbg !610 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !611, metadata !420), !dbg !612
  %3 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !613
  %4 = bitcast %struct._WI_ITEM_REC* %3 to %struct._QUERY_REC*, !dbg !614
  %5 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %4, i32 0, i32 6, !dbg !614
  %6 = load i8*, i8** %5, align 8, !dbg !614
  ret i8* %6, !dbg !615
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare noalias i8* @g_strdup(i8*) #2

declare %struct._SERVER_REC* @server_find_tag(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #0 !dbg !616 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !617, metadata !420), !dbg !618
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !619, metadata !420), !dbg !620
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !621, metadata !420), !dbg !622
  br label %8, !dbg !623, !llvm.loop !624

; <label>:8:                                      ; preds = %2
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !625
  %10 = icmp eq %struct._SERVER_REC* %9, null, !dbg !629
  br i1 %10, label %19, label %11, !dbg !630

; <label>:11:                                     ; preds = %8
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !631
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !631
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !633
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !634
  %16 = icmp ne %struct._SERVER_REC* %15, null, !dbg !634
  br i1 %16, label %17, label %18, !dbg !635

; <label>:17:                                     ; preds = %11
  br i1 false, label %20, label %19, !dbg !636

; <label>:18:                                     ; preds = %11
  br i1 false, label %19, label %20, !dbg !638

; <label>:19:                                     ; preds = %18, %17, %8
  br label %21, !dbg !640

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.query_find, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)), !dbg !643
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !646
  br label %60, !dbg !646

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !647

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !649, !llvm.loop !650

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %5, align 8, !dbg !651
  %25 = icmp ne i8* %24, null, !dbg !655
  br i1 %25, label %26, label %27, !dbg !651

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !656

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.query_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !659
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !662
  br label %60, !dbg !662

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !663

; <label>:29:                                     ; preds = %28
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !665
  %31 = icmp ne %struct._SERVER_REC* %30, null, !dbg !667
  br i1 %31, label %32, label %36, !dbg !668

; <label>:32:                                     ; preds = %29
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !669
  %34 = load i8*, i8** %5, align 8, !dbg !670
  %35 = call %struct._QUERY_REC* @query_find_server(%struct._SERVER_REC* %33, i8* %34), !dbg !671
  store %struct._QUERY_REC* %35, %struct._QUERY_REC** %3, align 8, !dbg !672
  br label %60, !dbg !672

; <label>:36:                                     ; preds = %29
  %37 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !673
  store %struct._GSList* %37, %struct._GSList** %6, align 8, !dbg !675
  br label %38, !dbg !676

; <label>:38:                                     ; preds = %55, %36
  %39 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !677
  %40 = icmp ne %struct._GSList* %39, null, !dbg !680
  br i1 %40, label %41, label %59, !dbg !681

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !682, metadata !420), !dbg !684
  %42 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !685
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !686
  %44 = load i8*, i8** %43, align 8, !dbg !686
  %45 = bitcast i8* %44 to %struct._QUERY_REC*, !dbg !685
  store %struct._QUERY_REC* %45, %struct._QUERY_REC** %7, align 8, !dbg !684
  %46 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !687
  %47 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %46, i32 0, i32 6, !dbg !689
  %48 = load i8*, i8** %47, align 8, !dbg !689
  %49 = load i8*, i8** %5, align 8, !dbg !690
  %50 = call i32 @g_ascii_strcasecmp(i8* %48, i8* %49), !dbg !691
  %51 = icmp eq i32 %50, 0, !dbg !692
  br i1 %51, label %52, label %54, !dbg !693

; <label>:52:                                     ; preds = %41
  %53 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !694
  store %struct._QUERY_REC* %53, %struct._QUERY_REC** %3, align 8, !dbg !695
  br label %60, !dbg !695

; <label>:54:                                     ; preds = %41
  br label %55, !dbg !696

; <label>:55:                                     ; preds = %54
  %56 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !697
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1, !dbg !699
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !699
  store %struct._GSList* %58, %struct._GSList** %6, align 8, !dbg !700
  br label %38, !dbg !701, !llvm.loop !702

; <label>:59:                                     ; preds = %38
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !704
  br label %60, !dbg !704

; <label>:60:                                     ; preds = %59, %52, %32, %27, %20
  %61 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !705
  ret %struct._QUERY_REC* %61, !dbg !705
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._QUERY_REC* @query_find_server(%struct._SERVER_REC*, i8*) #0 !dbg !706 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !707, metadata !420), !dbg !708
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !709, metadata !420), !dbg !710
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !711, metadata !420), !dbg !712
  br label %8, !dbg !713, !llvm.loop !714

; <label>:8:                                      ; preds = %2
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !715
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !715
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !719
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !720
  %13 = icmp ne %struct._SERVER_REC* %12, null, !dbg !720
  br i1 %13, label %14, label %15, !dbg !721

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !722

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !724

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !726

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.query_find_server, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)), !dbg !729
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !732
  br label %57, !dbg !732

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !733

; <label>:19:                                     ; preds = %18
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !735
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 32, !dbg !737
  %22 = load %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)** %21, align 8, !dbg !737
  %23 = icmp ne %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)* %22, null, !dbg !738
  br i1 %23, label %24, label %31, !dbg !739

; <label>:24:                                     ; preds = %19
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !740
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 32, !dbg !742
  %27 = load %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)** %26, align 8, !dbg !742
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !743
  %29 = load i8*, i8** %5, align 8, !dbg !744
  %30 = call %struct._QUERY_REC* %27(%struct._SERVER_REC* %28, i8* %29), !dbg !740
  store %struct._QUERY_REC* %30, %struct._QUERY_REC** %3, align 8, !dbg !745
  br label %57, !dbg !745

; <label>:31:                                     ; preds = %19
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !746
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 24, !dbg !748
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !748
  store %struct._GSList* %34, %struct._GSList** %6, align 8, !dbg !749
  br label %35, !dbg !750

; <label>:35:                                     ; preds = %52, %31
  %36 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !751
  %37 = icmp ne %struct._GSList* %36, null, !dbg !754
  br i1 %37, label %38, label %56, !dbg !755

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !756, metadata !420), !dbg !758
  %39 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !759
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !760
  %41 = load i8*, i8** %40, align 8, !dbg !760
  %42 = bitcast i8* %41 to %struct._QUERY_REC*, !dbg !759
  store %struct._QUERY_REC* %42, %struct._QUERY_REC** %7, align 8, !dbg !758
  %43 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !761
  %44 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %43, i32 0, i32 6, !dbg !763
  %45 = load i8*, i8** %44, align 8, !dbg !763
  %46 = load i8*, i8** %5, align 8, !dbg !764
  %47 = call i32 @g_ascii_strcasecmp(i8* %45, i8* %46), !dbg !765
  %48 = icmp eq i32 %47, 0, !dbg !766
  br i1 %48, label %49, label %51, !dbg !767

; <label>:49:                                     ; preds = %38
  %50 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !768
  store %struct._QUERY_REC* %50, %struct._QUERY_REC** %3, align 8, !dbg !769
  br label %57, !dbg !769

; <label>:51:                                     ; preds = %38
  br label %52, !dbg !770

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !771
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !773
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !773
  store %struct._GSList* %55, %struct._GSList** %6, align 8, !dbg !774
  br label %35, !dbg !775, !llvm.loop !776

; <label>:56:                                     ; preds = %35
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !778
  br label %57, !dbg !778

; <label>:57:                                     ; preds = %56, %49, %24, %17
  %58 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !779
  ret %struct._QUERY_REC* %58, !dbg !779
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @query_change_nick(%struct._QUERY_REC*, i8*) #0 !dbg !780 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !783, metadata !420), !dbg !784
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !785, metadata !420), !dbg !786
  call void @llvm.dbg.declare(metadata i8** %5, metadata !787, metadata !420), !dbg !788
  br label %6, !dbg !789, !llvm.loop !790

; <label>:6:                                      ; preds = %2
  %7 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !791
  %8 = bitcast %struct._QUERY_REC* %7 to i8*, !dbg !791
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !795
  %10 = bitcast i8* %9 to %struct._QUERY_REC*, !dbg !796
  %11 = icmp ne %struct._QUERY_REC* %10, null, !dbg !796
  br i1 %11, label %12, label %13, !dbg !797

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !798

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !800

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !802

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.query_change_nick, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !805
  br label %38, !dbg !808

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !809

; <label>:17:                                     ; preds = %16
  %18 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !811
  %19 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %18, i32 0, i32 6, !dbg !812
  %20 = load i8*, i8** %19, align 8, !dbg !812
  store i8* %20, i8** %5, align 8, !dbg !813
  %21 = load i8*, i8** %4, align 8, !dbg !814
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !815
  %23 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !816
  %24 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %23, i32 0, i32 6, !dbg !817
  store i8* %22, i8** %24, align 8, !dbg !818
  %25 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !819
  %26 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %25, i32 0, i32 5, !dbg !820
  %27 = load i8*, i8** %26, align 8, !dbg !820
  call void @g_free(i8* %27), !dbg !821
  %28 = load i8*, i8** %4, align 8, !dbg !822
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !823
  %30 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !824
  %31 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %30, i32 0, i32 5, !dbg !825
  store i8* %29, i8** %31, align 8, !dbg !826
  %32 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !827
  %33 = load i8*, i8** %5, align 8, !dbg !828
  %34 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct._QUERY_REC* %32, i8* %33), !dbg !829
  %35 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !830
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct._QUERY_REC* %35), !dbg !831
  %37 = load i8*, i8** %5, align 8, !dbg !832
  call void @g_free(i8* %37), !dbg !833
  br label %38, !dbg !834

; <label>:38:                                     ; preds = %17, %15
  ret void, !dbg !835
}

; Function Attrs: nounwind uwtable
define void @query_change_address(%struct._QUERY_REC*, i8*) #0 !dbg !837 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !838, metadata !420), !dbg !839
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !840, metadata !420), !dbg !841
  br label %5, !dbg !842, !llvm.loop !843

; <label>:5:                                      ; preds = %2
  %6 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !844
  %7 = bitcast %struct._QUERY_REC* %6 to i8*, !dbg !844
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !848
  %9 = bitcast i8* %8 to %struct._QUERY_REC*, !dbg !849
  %10 = icmp ne %struct._QUERY_REC* %9, null, !dbg !849
  br i1 %10, label %11, label %12, !dbg !850

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !851

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !853

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !855

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.query_change_address, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !858
  br label %26, !dbg !861

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !862

; <label>:16:                                     ; preds = %15
  %17 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !864
  %18 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %17, i32 0, i32 12, !dbg !865
  %19 = load i8*, i8** %18, align 8, !dbg !865
  call void @g_free(i8* %19), !dbg !866
  %20 = load i8*, i8** %4, align 8, !dbg !867
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !868
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !869
  %23 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %22, i32 0, i32 12, !dbg !870
  store i8* %21, i8** %23, align 8, !dbg !871
  %24 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !872
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct._QUERY_REC* %24), !dbg !873
  br label %26, !dbg !874

; <label>:26:                                     ; preds = %16, %14
  ret void, !dbg !875
}

; Function Attrs: nounwind uwtable
define void @query_change_server(%struct._QUERY_REC*, %struct._SERVER_REC*) #0 !dbg !877 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !880, metadata !420), !dbg !881
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !882, metadata !420), !dbg !883
  br label %5, !dbg !884, !llvm.loop !885

; <label>:5:                                      ; preds = %2
  %6 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !886
  %7 = bitcast %struct._QUERY_REC* %6 to i8*, !dbg !886
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !890
  %9 = bitcast i8* %8 to %struct._QUERY_REC*, !dbg !891
  %10 = icmp ne %struct._QUERY_REC* %9, null, !dbg !891
  br i1 %10, label %11, label %12, !dbg !892

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !893

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !895

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !897

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.query_change_server, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !900
  br label %52, !dbg !903

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !904

; <label>:16:                                     ; preds = %15
  %17 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !906
  %18 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %17, i32 0, i32 4, !dbg !908
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %18, align 8, !dbg !908
  %20 = icmp ne %struct._SERVER_REC* %19, null, !dbg !909
  br i1 %20, label %21, label %34, !dbg !910

; <label>:21:                                     ; preds = %16
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !911
  %23 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %22, i32 0, i32 4, !dbg !913
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %23, align 8, !dbg !913
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 24, !dbg !914
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !914
  %27 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !915
  %28 = bitcast %struct._QUERY_REC* %27 to i8*, !dbg !915
  %29 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %28), !dbg !916
  %30 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !917
  %31 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %30, i32 0, i32 4, !dbg !918
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %31, align 8, !dbg !918
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 24, !dbg !919
  store %struct._GSList* %29, %struct._GSList** %33, align 8, !dbg !920
  br label %34, !dbg !921

; <label>:34:                                     ; preds = %21, %16
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !922
  %36 = icmp ne %struct._SERVER_REC* %35, null, !dbg !924
  br i1 %36, label %37, label %46, !dbg !925

; <label>:37:                                     ; preds = %34
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !926
  %39 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %38, i32 0, i32 24, !dbg !927
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !927
  %41 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !928
  %42 = bitcast %struct._QUERY_REC* %41 to i8*, !dbg !928
  %43 = call %struct._GSList* @g_slist_append(%struct._GSList* %40, i8* %42), !dbg !929
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !930
  %45 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %44, i32 0, i32 24, !dbg !931
  store %struct._GSList* %43, %struct._GSList** %45, align 8, !dbg !932
  br label %46, !dbg !930

; <label>:46:                                     ; preds = %37, %34
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !933
  %48 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !934
  %49 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %48, i32 0, i32 4, !dbg !935
  store %struct._SERVER_REC* %47, %struct._SERVER_REC** %49, align 8, !dbg !936
  %50 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !937
  %51 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct._QUERY_REC* %50), !dbg !938
  br label %52, !dbg !939

; <label>:52:                                     ; preds = %46, %14
  ret void, !dbg !940
}

; Function Attrs: nounwind uwtable
define void @queries_init() #0 !dbg !942 {
  ret void, !dbg !943
}

; Function Attrs: nounwind uwtable
define void @queries_deinit() #0 !dbg !944 {
  ret void, !dbg !945
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!412, !413}
!llvm.ident = !{!414}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !409)
!1 = !DIFile(filename: "line69-queries.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !50, !51, !53, !69}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !48, line: 108, baseType: !49)
!48 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !48, line: 108, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !36)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !39, line: 48, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !48, line: 110, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !56, line: 15, size: 960, align: 64, elements: !57)
!56 = !DIFile(filename: "queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !{!58, !61, !62, !67, !68, !393, !394, !395, !396, !397, !398, !399, !403, !405, !406, !407, !408}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !59, line: 3, baseType: !60, size: 32, align: 32)
!59 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !55, file: !59, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !55, file: !59, line: 5, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !65, line: 37, baseType: !66)
!65 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !65, line: 37, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !55, file: !59, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !55, file: !59, line: 8, baseType: !69, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !48, line: 107, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !72, line: 30, size: 2240, align: 64, elements: !73)
!72 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !{!74, !76, !77, !78, !306, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !324, !328, !329, !330, !334, !335, !336, !337, !338, !339, !340, !341, !342, !348, !349, !350, !351, !352, !356, !360, !364, !368, !372, !377, !384, !388, !392}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !75, line: 3, baseType: !60, size: 32, align: 32)
!75 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !71, file: !75, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !71, file: !75, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !71, file: !75, line: 8, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !48, line: 113, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !72, line: 25, size: 1920, align: 64, elements: !82)
!82 = !{!83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !84, line: 3, baseType: !60, size: 32, align: 32)
!84 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !81, file: !84, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !81, file: !84, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !81, file: !84, line: 9, baseType: !88, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !81, file: !84, line: 10, baseType: !60, size: 32, align: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !81, file: !84, line: 11, baseType: !88, size: 64, align: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !81, file: !84, line: 11, baseType: !88, size: 64, align: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !81, file: !84, line: 11, baseType: !88, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !81, file: !84, line: 13, baseType: !94, size: 16, align: 16, offset: 448)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !81, file: !84, line: 14, baseType: !88, size: 64, align: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !81, file: !84, line: 15, baseType: !88, size: 64, align: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !81, file: !84, line: 16, baseType: !60, size: 32, align: 32, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !81, file: !84, line: 17, baseType: !88, size: 64, align: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !81, file: !84, line: 19, baseType: !100, size: 64, align: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !48, line: 99, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !48, line: 99, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !81, file: !84, line: 19, baseType: !100, size: 64, align: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !81, file: !84, line: 21, baseType: !88, size: 64, align: 64, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !81, file: !84, line: 22, baseType: !88, size: 64, align: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !81, file: !84, line: 23, baseType: !88, size: 64, align: 64, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !81, file: !84, line: 24, baseType: !88, size: 64, align: 64, offset: 1088)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !81, file: !84, line: 26, baseType: !88, size: 64, align: 64, offset: 1152)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !81, file: !84, line: 27, baseType: !88, size: 64, align: 64, offset: 1216)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !81, file: !84, line: 28, baseType: !88, size: 64, align: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !81, file: !84, line: 29, baseType: !88, size: 64, align: 64, offset: 1344)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !81, file: !84, line: 30, baseType: !88, size: 64, align: 64, offset: 1408)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !81, file: !84, line: 31, baseType: !88, size: 64, align: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !81, file: !84, line: 32, baseType: !88, size: 64, align: 64, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !81, file: !84, line: 33, baseType: !88, size: 64, align: 64, offset: 1600)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !81, file: !84, line: 35, baseType: !117, size: 64, align: 64, offset: 1664)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !120)
!120 = !{!121, !123, !263, !264, !269, !270, !271, !272, !273, !282, !283, !284, !288, !289, !290, !291, !292, !293, !294, !295}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !119, file: !4, line: 100, baseType: !122, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !60)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !119, file: !4, line: 101, baseType: !124, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !127)
!127 = !{!128, !150, !156, !162, !166, !250, !254, !259}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !126, file: !4, line: 133, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !117, !37, !133, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !134, line: 66, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !140, line: 42, baseType: !141)
!140 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !140, line: 44, size: 128, align: 64, elements: !142)
!142 = !{!143, !148, !149}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !141, file: !140, line: 46, baseType: !144, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !145, line: 36, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !134, line: 45, baseType: !147)
!147 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !141, file: !140, line: 47, baseType: !122, size: 32, align: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !141, file: !140, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !126, file: !4, line: 138, baseType: !151, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!132, !117, !154, !133, !136, !137}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !126, file: !4, line: 143, baseType: !157, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!132, !117, !160, !161, !137}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !134, line: 51, baseType: !52)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !126, file: !4, line: 147, baseType: !163, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!132, !117, !137}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !126, file: !4, line: 149, baseType: !167, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !117, !249}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !173)
!173 = !{!174, !175, !196, !225, !227, !231, !232, !233, !234, !242, !243, !244, !245}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !172, file: !16, line: 174, baseType: !50, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !172, file: !16, line: 175, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !179)
!179 = !{!180, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !178, file: !16, line: 198, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !50}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !178, file: !16, line: 199, baseType: !181, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !178, file: !16, line: 200, baseType: !186, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !50, !170, !189, !195}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !50}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !122)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !172, file: !16, line: 177, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !201)
!201 = !{!202, !207, !211, !215, !219, !220}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !200, file: !16, line: 216, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!194, !170, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !200, file: !16, line: 218, baseType: !208, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!194, !170}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !200, file: !16, line: 219, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!194, !170, !190, !50}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !200, file: !16, line: 222, baseType: !216, size: 64, align: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !170}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !200, file: !16, line: 226, baseType: !190, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !200, file: !16, line: 227, baseType: !221, size: 64, align: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !172, file: !16, line: 178, baseType: !226, size: 32, align: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !147)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !172, file: !16, line: 180, baseType: !228, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !172, file: !16, line: 182, baseType: !122, size: 32, align: 32, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !16, line: 183, baseType: !226, size: 32, align: 32, offset: 352)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !172, file: !16, line: 184, baseType: !226, size: 32, align: 32, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !172, file: !16, line: 186, baseType: !235, size: 64, align: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !237, line: 37, baseType: !238)
!237 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !237, line: 39, size: 128, align: 64, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !238, file: !237, line: 41, baseType: !50, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !237, line: 42, baseType: !235, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !16, line: 188, baseType: !170, size: 64, align: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !16, line: 189, baseType: !170, size: 64, align: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !16, line: 191, baseType: !88, size: 64, align: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !16, line: 193, baseType: !246, size: 64, align: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !126, file: !4, line: 151, baseType: !251, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !117}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !126, file: !4, line: 152, baseType: !255, size: 64, align: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!132, !117, !258, !137}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !126, file: !4, line: 155, baseType: !260, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!258, !117}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !119, file: !4, line: 103, baseType: !37, size: 64, align: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !119, file: !4, line: 104, baseType: !265, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !266, line: 77, baseType: !267)
!266 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !266, line: 77, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !119, file: !4, line: 105, baseType: !265, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !119, file: !4, line: 106, baseType: !37, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !119, file: !4, line: 107, baseType: !226, size: 32, align: 32, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !119, file: !4, line: 109, baseType: !133, size: 64, align: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !119, file: !4, line: 110, baseType: !274, size: 64, align: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !276, line: 39, baseType: !277)
!276 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !276, line: 41, size: 192, align: 64, elements: !278)
!278 = !{!279, !280, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !277, file: !276, line: 43, baseType: !37, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !277, file: !276, line: 44, baseType: !133, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !277, file: !276, line: 45, baseType: !133, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !119, file: !4, line: 111, baseType: !274, size: 64, align: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !119, file: !4, line: 112, baseType: !274, size: 64, align: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !119, file: !4, line: 113, baseType: !285, size: 48, align: 8, offset: 704)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, align: 8, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 6)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !119, file: !4, line: 117, baseType: !226, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !119, file: !4, line: 118, baseType: !226, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !119, file: !4, line: 119, baseType: !226, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !119, file: !4, line: 120, baseType: !226, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !119, file: !4, line: 121, baseType: !226, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !119, file: !4, line: 122, baseType: !226, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !119, file: !4, line: 124, baseType: !50, size: 64, align: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !119, file: !4, line: 125, baseType: !50, size: 64, align: 64, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !81, file: !84, line: 38, baseType: !147, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !81, file: !84, line: 39, baseType: !147, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !81, file: !84, line: 40, baseType: !147, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !81, file: !84, line: 41, baseType: !147, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !81, file: !84, line: 42, baseType: !147, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !81, file: !84, line: 43, baseType: !147, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !81, file: !84, line: 44, baseType: !147, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !81, file: !84, line: 45, baseType: !147, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !81, file: !84, line: 46, baseType: !88, size: 64, align: 64, offset: 1792)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !81, file: !84, line: 47, baseType: !88, size: 64, align: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !71, file: !75, line: 9, baseType: !307, size: 64, align: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !308, line: 75, baseType: !309)
!308 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !310, line: 139, baseType: !52)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !71, file: !75, line: 10, baseType: !307, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !71, file: !75, line: 12, baseType: !88, size: 64, align: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !71, file: !75, line: 13, baseType: !88, size: 64, align: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !71, file: !75, line: 15, baseType: !147, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !71, file: !75, line: 16, baseType: !147, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !71, file: !75, line: 17, baseType: !147, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !71, file: !75, line: 18, baseType: !147, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !71, file: !75, line: 19, baseType: !147, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !71, file: !75, line: 21, baseType: !320, size: 64, align: 64, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !48, line: 102, baseType: !322)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !48, line: 102, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !71, file: !75, line: 22, baseType: !60, size: 32, align: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !71, file: !75, line: 25, baseType: !325, size: 128, align: 64, offset: 640)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, align: 64, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 2)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !71, file: !75, line: 26, baseType: !60, size: 32, align: 32, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !71, file: !75, line: 27, baseType: !60, size: 32, align: 32, offset: 800)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !71, file: !75, line: 29, baseType: !331, size: 64, align: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !48, line: 103, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !48, line: 103, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !71, file: !75, line: 30, baseType: !63, size: 64, align: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !71, file: !75, line: 32, baseType: !88, size: 64, align: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !71, file: !75, line: 33, baseType: !88, size: 64, align: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !71, file: !75, line: 34, baseType: !88, size: 64, align: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !71, file: !75, line: 35, baseType: !147, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !71, file: !75, line: 36, baseType: !147, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !71, file: !75, line: 37, baseType: !147, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !71, file: !75, line: 38, baseType: !147, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !71, file: !75, line: 40, baseType: !343, size: 128, align: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !39, line: 504, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !39, line: 506, size: 128, align: 64, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !344, file: !39, line: 508, baseType: !51, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !344, file: !39, line: 509, baseType: !51, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !71, file: !75, line: 41, baseType: !307, size: 64, align: 64, offset: 1344)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !71, file: !75, line: 42, baseType: !60, size: 32, align: 32, offset: 1408)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !71, file: !75, line: 44, baseType: !235, size: 64, align: 64, offset: 1472)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !71, file: !75, line: 45, baseType: !235, size: 64, align: 64, offset: 1536)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !71, file: !75, line: 53, baseType: !353, size: 64, align: 64, offset: 1600)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !69, !41, !60}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !71, file: !75, line: 55, baseType: !357, size: 64, align: 64, offset: 1664)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!60, !69, !40}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !71, file: !75, line: 57, baseType: !361, size: 64, align: 64, offset: 1728)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!60, !69, !41}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !71, file: !75, line: 60, baseType: !365, size: 64, align: 64, offset: 1792)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!41, !69}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !71, file: !75, line: 62, baseType: !369, size: 64, align: 64, offset: 1856)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !69, !41, !41, !60}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !71, file: !75, line: 65, baseType: !373, size: 64, align: 64, offset: 1920)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !69, !41, !41}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !71, file: !75, line: 69, baseType: !378, size: 64, align: 64, offset: 1984)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !69, !41}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !48, line: 109, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !48, line: 109, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !71, file: !75, line: 70, baseType: !385, size: 64, align: 64, offset: 2048)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!53, !69, !41}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !71, file: !75, line: 71, baseType: !389, size: 64, align: 64, offset: 2112)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!60, !41, !41}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !71, file: !75, line: 73, baseType: !389, size: 64, align: 64, offset: 2176)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !55, file: !59, line: 9, baseType: !88, size: 64, align: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !59, line: 10, baseType: !88, size: 64, align: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !55, file: !59, line: 11, baseType: !307, size: 64, align: 64, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !55, file: !59, line: 12, baseType: !60, size: 32, align: 32, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !55, file: !59, line: 13, baseType: !88, size: 64, align: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !55, file: !59, line: 15, baseType: !43, size: 64, align: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !55, file: !59, line: 17, baseType: !400, size: 64, align: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!41, !46}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !55, file: !404, line: 5, baseType: !88, size: 64, align: 64, offset: 704)
!404 = !DIFile(filename: "query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !55, file: !404, line: 6, baseType: !88, size: 64, align: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !55, file: !404, line: 7, baseType: !307, size: 64, align: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !55, file: !404, line: 9, baseType: !147, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !55, file: !404, line: 11, baseType: !147, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!409 = !{!410}
!410 = distinct !DIGlobalVariable(name: "queries", scope: !0, file: !411, line: 28, type: !235, isLocal: false, isDefinition: true, variable: %struct._GSList** @queries)
!411 = !DIFile(filename: "queries.c", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !{i32 2, !"Dwarf Version", i32 4}
!413 = !{i32 2, !"Debug Info Version", i32 3}
!414 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!415 = distinct !DISubprogram(name: "query_init", scope: !411, file: !411, line: 35, type: !416, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !53, !60}
!418 = !{}
!419 = !DILocalVariable(name: "query", arg: 1, scope: !415, file: !411, line: 35, type: !53)
!420 = !DIExpression()
!421 = !DILocation(line: 35, column: 28, scope: !415)
!422 = !DILocalVariable(name: "automatic", arg: 2, scope: !415, file: !411, line: 35, type: !60)
!423 = !DILocation(line: 35, column: 39, scope: !415)
!424 = !DILocation(line: 37, column: 2, scope: !415)
!425 = distinct !{!425, !424}
!426 = !DILocation(line: 37, column: 10, scope: !427)
!427 = !DILexicalBlockFile(scope: !428, file: !411, discriminator: 1)
!428 = distinct !DILexicalBlock(scope: !429, file: !411, line: 37, column: 10)
!429 = distinct !DILexicalBlock(scope: !415, file: !411, line: 37, column: 4)
!430 = !DILocation(line: 37, column: 16, scope: !427)
!431 = !DILocation(line: 37, column: 5, scope: !432)
!432 = !DILexicalBlockFile(scope: !433, file: !411, discriminator: 2)
!433 = distinct !DILexicalBlock(scope: !428, file: !411, line: 37, column: 3)
!434 = !DILocation(line: 37, column: 14, scope: !435)
!435 = !DILexicalBlockFile(scope: !436, file: !411, discriminator: 3)
!436 = distinct !DILexicalBlock(scope: !428, file: !411, line: 37, column: 12)
!437 = !DILocation(line: 37, column: 100, scope: !435)
!438 = !DILocation(line: 37, column: 111, scope: !439)
!439 = !DILexicalBlockFile(scope: !429, file: !411, discriminator: 4)
!440 = !DILocation(line: 38, column: 2, scope: !415)
!441 = distinct !{!441, !440}
!442 = !DILocation(line: 38, column: 10, scope: !443)
!443 = !DILexicalBlockFile(scope: !444, file: !411, discriminator: 1)
!444 = distinct !DILexicalBlock(scope: !445, file: !411, line: 38, column: 10)
!445 = distinct !DILexicalBlock(scope: !415, file: !411, line: 38, column: 4)
!446 = !DILocation(line: 38, column: 17, scope: !443)
!447 = !DILocation(line: 38, column: 22, scope: !443)
!448 = !DILocation(line: 38, column: 5, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !411, discriminator: 2)
!450 = distinct !DILexicalBlock(scope: !444, file: !411, line: 38, column: 3)
!451 = !DILocation(line: 38, column: 14, scope: !452)
!452 = !DILexicalBlockFile(scope: !453, file: !411, discriminator: 3)
!453 = distinct !DILexicalBlock(scope: !444, file: !411, line: 38, column: 12)
!454 = !DILocation(line: 38, column: 106, scope: !452)
!455 = !DILocation(line: 38, column: 117, scope: !456)
!456 = !DILexicalBlockFile(scope: !445, file: !411, discriminator: 4)
!457 = !DILocation(line: 40, column: 27, scope: !415)
!458 = !DILocation(line: 40, column: 36, scope: !415)
!459 = !DILocation(line: 40, column: 12, scope: !415)
!460 = !DILocation(line: 40, column: 10, scope: !415)
!461 = !DILocation(line: 42, column: 32, scope: !415)
!462 = !DILocation(line: 42, column: 10, scope: !415)
!463 = !DILocation(line: 42, column: 18, scope: !415)
!464 = !DILocation(line: 42, column: 30, scope: !415)
!465 = !DILocation(line: 43, column: 16, scope: !415)
!466 = !DILocation(line: 43, column: 2, scope: !415)
!467 = !DILocation(line: 43, column: 9, scope: !415)
!468 = !DILocation(line: 43, column: 14, scope: !415)
!469 = !DILocation(line: 44, column: 9, scope: !415)
!470 = !DILocation(line: 44, column: 16, scope: !415)
!471 = !DILocation(line: 44, column: 24, scope: !415)
!472 = !DILocation(line: 45, column: 2, scope: !415)
!473 = !DILocation(line: 45, column: 9, scope: !415)
!474 = !DILocation(line: 45, column: 20, scope: !415)
!475 = !DILocation(line: 46, column: 22, scope: !415)
!476 = !DILocation(line: 46, column: 2, scope: !415)
!477 = !DILocation(line: 46, column: 9, scope: !415)
!478 = !DILocation(line: 46, column: 20, scope: !415)
!479 = !DILocation(line: 47, column: 27, scope: !415)
!480 = !DILocation(line: 47, column: 2, scope: !415)
!481 = !DILocation(line: 47, column: 9, scope: !415)
!482 = !DILocation(line: 47, column: 25, scope: !415)
!483 = !DILocation(line: 48, column: 33, scope: !415)
!484 = !DILocation(line: 48, column: 40, scope: !415)
!485 = !DILocation(line: 48, column: 24, scope: !415)
!486 = !DILocation(line: 48, column: 2, scope: !415)
!487 = !DILocation(line: 48, column: 9, scope: !415)
!488 = !DILocation(line: 48, column: 22, scope: !415)
!489 = !DILocation(line: 50, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !415, file: !411, line: 50, column: 6)
!491 = !DILocation(line: 50, column: 13, scope: !490)
!492 = !DILocation(line: 50, column: 24, scope: !490)
!493 = !DILocation(line: 50, column: 6, scope: !415)
!494 = !DILocation(line: 51, column: 35, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !411, line: 50, column: 32)
!496 = !DILocation(line: 51, column: 42, scope: !495)
!497 = !DILocation(line: 51, column: 19, scope: !495)
!498 = !DILocation(line: 51, column: 3, scope: !495)
!499 = !DILocation(line: 51, column: 10, scope: !495)
!500 = !DILocation(line: 51, column: 17, scope: !495)
!501 = !DILocation(line: 52, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !411, line: 52, column: 7)
!503 = !DILocation(line: 52, column: 14, scope: !502)
!504 = !DILocation(line: 52, column: 21, scope: !502)
!505 = !DILocation(line: 52, column: 7, scope: !495)
!506 = !DILocation(line: 54, column: 20, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !411, line: 52, column: 29)
!508 = !DILocation(line: 54, column: 27, scope: !507)
!509 = !DILocation(line: 54, column: 35, scope: !507)
!510 = !DILocation(line: 54, column: 44, scope: !507)
!511 = !DILocation(line: 54, column: 5, scope: !507)
!512 = !DILocation(line: 53, column: 4, scope: !507)
!513 = !DILocation(line: 53, column: 11, scope: !507)
!514 = !DILocation(line: 53, column: 19, scope: !507)
!515 = !DILocation(line: 53, column: 27, scope: !507)
!516 = !DILocation(line: 55, column: 3, scope: !507)
!517 = !DILocation(line: 56, column: 2, scope: !495)
!518 = !DILocation(line: 58, column: 34, scope: !415)
!519 = !DILocation(line: 58, column: 62, scope: !415)
!520 = !DILocation(line: 58, column: 53, scope: !415)
!521 = !DILocation(line: 58, column: 42, scope: !415)
!522 = !DILocation(line: 58, column: 2, scope: !415)
!523 = !DILocation(line: 59, column: 1, scope: !415)
!524 = !DILocation(line: 59, column: 1, scope: !525)
!525 = !DILexicalBlockFile(scope: !415, file: !411, discriminator: 1)
!526 = distinct !DISubprogram(name: "query_destroy", scope: !411, file: !411, line: 61, type: !527, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !53}
!529 = !DILocalVariable(name: "query", arg: 1, scope: !526, file: !411, line: 61, type: !53)
!530 = !DILocation(line: 61, column: 31, scope: !526)
!531 = !DILocation(line: 63, column: 2, scope: !526)
!532 = distinct !{!532, !531}
!533 = !DILocation(line: 63, column: 51, scope: !534)
!534 = !DILexicalBlockFile(scope: !535, file: !411, discriminator: 1)
!535 = distinct !DILexicalBlock(scope: !536, file: !411, line: 63, column: 10)
!536 = distinct !DILexicalBlock(scope: !526, file: !411, line: 63, column: 4)
!537 = !DILocation(line: 63, column: 26, scope: !534)
!538 = !DILocation(line: 63, column: 12, scope: !534)
!539 = !DILocation(line: 63, column: 10, scope: !534)
!540 = !DILocation(line: 63, column: 11, scope: !541)
!541 = !DILexicalBlockFile(scope: !535, file: !411, discriminator: 2)
!542 = !DILocation(line: 63, column: 10, scope: !543)
!543 = !DILexicalBlockFile(scope: !536, file: !411, discriminator: 3)
!544 = !DILocation(line: 63, column: 52, scope: !545)
!545 = !DILexicalBlockFile(scope: !546, file: !411, discriminator: 4)
!546 = distinct !DILexicalBlock(scope: !535, file: !411, line: 63, column: 50)
!547 = !DILocation(line: 63, column: 61, scope: !548)
!548 = !DILexicalBlockFile(scope: !549, file: !411, discriminator: 5)
!549 = distinct !DILexicalBlock(scope: !535, file: !411, line: 63, column: 59)
!550 = !DILocation(line: 63, column: 149, scope: !548)
!551 = !DILocation(line: 63, column: 160, scope: !552)
!552 = !DILexicalBlockFile(scope: !536, file: !411, discriminator: 6)
!553 = !DILocation(line: 65, column: 13, scope: !554)
!554 = distinct !DILexicalBlock(scope: !526, file: !411, line: 65, column: 13)
!555 = !DILocation(line: 65, column: 20, scope: !554)
!556 = !DILocation(line: 65, column: 13, scope: !526)
!557 = !DILocation(line: 65, column: 32, scope: !558)
!558 = !DILexicalBlockFile(scope: !554, file: !411, discriminator: 1)
!559 = !DILocation(line: 66, column: 2, scope: !526)
!560 = !DILocation(line: 66, column: 9, scope: !526)
!561 = !DILocation(line: 66, column: 20, scope: !526)
!562 = !DILocation(line: 68, column: 27, scope: !526)
!563 = !DILocation(line: 68, column: 36, scope: !526)
!564 = !DILocation(line: 68, column: 12, scope: !526)
!565 = !DILocation(line: 68, column: 10, scope: !526)
!566 = !DILocation(line: 69, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !526, file: !411, line: 69, column: 6)
!568 = !DILocation(line: 69, column: 13, scope: !567)
!569 = !DILocation(line: 69, column: 20, scope: !567)
!570 = !DILocation(line: 69, column: 6, scope: !526)
!571 = !DILocation(line: 71, column: 19, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !411, line: 69, column: 28)
!573 = !DILocation(line: 71, column: 26, scope: !572)
!574 = !DILocation(line: 71, column: 34, scope: !572)
!575 = !DILocation(line: 71, column: 43, scope: !572)
!576 = !DILocation(line: 71, column: 4, scope: !572)
!577 = !DILocation(line: 70, column: 3, scope: !572)
!578 = !DILocation(line: 70, column: 10, scope: !572)
!579 = !DILocation(line: 70, column: 18, scope: !572)
!580 = !DILocation(line: 70, column: 26, scope: !572)
!581 = !DILocation(line: 72, column: 2, scope: !572)
!582 = !DILocation(line: 73, column: 36, scope: !526)
!583 = !DILocation(line: 73, column: 2, scope: !526)
!584 = !DILocation(line: 75, column: 31, scope: !526)
!585 = !DILocation(line: 75, column: 39, scope: !526)
!586 = !DILocation(line: 75, column: 9, scope: !526)
!587 = !DILocation(line: 76, column: 9, scope: !526)
!588 = !DILocation(line: 76, column: 16, scope: !526)
!589 = !DILocation(line: 76, column: 2, scope: !526)
!590 = !DILocation(line: 77, column: 16, scope: !526)
!591 = !DILocation(line: 77, column: 23, scope: !526)
!592 = !DILocation(line: 77, column: 9, scope: !526)
!593 = !DILocation(line: 78, column: 16, scope: !526)
!594 = !DILocation(line: 78, column: 23, scope: !526)
!595 = !DILocation(line: 78, column: 9, scope: !526)
!596 = !DILocation(line: 79, column: 9, scope: !526)
!597 = !DILocation(line: 79, column: 16, scope: !526)
!598 = !DILocation(line: 79, column: 2, scope: !526)
!599 = !DILocation(line: 80, column: 9, scope: !526)
!600 = !DILocation(line: 80, column: 16, scope: !526)
!601 = !DILocation(line: 80, column: 2, scope: !526)
!602 = !DILocation(line: 82, column: 9, scope: !526)
!603 = !DILocation(line: 82, column: 16, scope: !526)
!604 = !DILocation(line: 82, column: 21, scope: !526)
!605 = !DILocation(line: 83, column: 9, scope: !526)
!606 = !DILocation(line: 83, column: 2, scope: !526)
!607 = !DILocation(line: 84, column: 1, scope: !526)
!608 = !DILocation(line: 84, column: 1, scope: !609)
!609 = !DILexicalBlockFile(scope: !526, file: !411, discriminator: 1)
!610 = distinct !DISubprogram(name: "query_get_target", scope: !411, file: !411, line: 30, type: !401, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!611 = !DILocalVariable(name: "item", arg: 1, scope: !610, file: !411, line: 30, type: !46)
!612 = !DILocation(line: 30, column: 50, scope: !610)
!613 = !DILocation(line: 32, column: 24, scope: !610)
!614 = !DILocation(line: 32, column: 31, scope: !610)
!615 = !DILocation(line: 32, column: 2, scope: !610)
!616 = distinct !DISubprogram(name: "query_find", scope: !411, file: !411, line: 107, type: !386, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!617 = !DILocalVariable(name: "server", arg: 1, scope: !616, file: !411, line: 107, type: !69)
!618 = !DILocation(line: 107, column: 35, scope: !616)
!619 = !DILocalVariable(name: "nick", arg: 2, scope: !616, file: !411, line: 107, type: !41)
!620 = !DILocation(line: 107, column: 55, scope: !616)
!621 = !DILocalVariable(name: "tmp", scope: !616, file: !411, line: 109, type: !235)
!622 = !DILocation(line: 109, column: 10, scope: !616)
!623 = !DILocation(line: 111, column: 2, scope: !616)
!624 = distinct !{!624, !623}
!625 = !DILocation(line: 111, column: 10, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !411, discriminator: 1)
!627 = distinct !DILexicalBlock(scope: !628, file: !411, line: 111, column: 10)
!628 = distinct !DILexicalBlock(scope: !616, file: !411, line: 111, column: 4)
!629 = !DILocation(line: 111, column: 17, scope: !626)
!630 = !DILocation(line: 111, column: 1, scope: !626)
!631 = !DILocation(line: 111, column: 39, scope: !632)
!632 = !DILexicalBlockFile(scope: !627, file: !411, discriminator: 2)
!633 = !DILocation(line: 111, column: 21, scope: !632)
!634 = !DILocation(line: 111, column: 6, scope: !632)
!635 = !DILocation(line: 111, column: 10, scope: !632)
!636 = !DILocation(line: 111, column: 5, scope: !637)
!637 = !DILexicalBlockFile(scope: !627, file: !411, discriminator: 3)
!638 = !DILocation(line: 111, column: 10, scope: !639)
!639 = !DILexicalBlockFile(scope: !628, file: !411, discriminator: 4)
!640 = !DILocation(line: 111, column: 33, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !411, discriminator: 5)
!642 = distinct !DILexicalBlock(scope: !627, file: !411, line: 111, column: 31)
!643 = !DILocation(line: 111, column: 42, scope: !644)
!644 = !DILexicalBlockFile(scope: !645, file: !411, discriminator: 6)
!645 = distinct !DILexicalBlock(scope: !627, file: !411, line: 111, column: 40)
!646 = !DILocation(line: 111, column: 150, scope: !644)
!647 = !DILocation(line: 111, column: 7, scope: !648)
!648 = !DILexicalBlockFile(scope: !628, file: !411, discriminator: 7)
!649 = !DILocation(line: 112, column: 2, scope: !616)
!650 = distinct !{!650, !649}
!651 = !DILocation(line: 112, column: 10, scope: !652)
!652 = !DILexicalBlockFile(scope: !653, file: !411, discriminator: 1)
!653 = distinct !DILexicalBlock(scope: !654, file: !411, line: 112, column: 10)
!654 = distinct !DILexicalBlock(scope: !616, file: !411, line: 112, column: 4)
!655 = !DILocation(line: 112, column: 15, scope: !652)
!656 = !DILocation(line: 112, column: 5, scope: !657)
!657 = !DILexicalBlockFile(scope: !658, file: !411, discriminator: 2)
!658 = distinct !DILexicalBlock(scope: !653, file: !411, line: 112, column: 3)
!659 = !DILocation(line: 112, column: 14, scope: !660)
!660 = !DILexicalBlockFile(scope: !661, file: !411, discriminator: 3)
!661 = distinct !DILexicalBlock(scope: !653, file: !411, line: 112, column: 12)
!662 = !DILocation(line: 112, column: 99, scope: !660)
!663 = !DILocation(line: 112, column: 7, scope: !664)
!664 = !DILexicalBlockFile(scope: !654, file: !411, discriminator: 4)
!665 = !DILocation(line: 114, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !616, file: !411, line: 114, column: 6)
!667 = !DILocation(line: 114, column: 13, scope: !666)
!668 = !DILocation(line: 114, column: 6, scope: !616)
!669 = !DILocation(line: 115, column: 28, scope: !666)
!670 = !DILocation(line: 115, column: 36, scope: !666)
!671 = !DILocation(line: 115, column: 10, scope: !666)
!672 = !DILocation(line: 115, column: 3, scope: !666)
!673 = !DILocation(line: 117, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !616, file: !411, line: 117, column: 2)
!675 = !DILocation(line: 117, column: 11, scope: !674)
!676 = !DILocation(line: 117, column: 7, scope: !674)
!677 = !DILocation(line: 117, column: 22, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !411, discriminator: 1)
!679 = distinct !DILexicalBlock(scope: !674, file: !411, line: 117, column: 2)
!680 = !DILocation(line: 117, column: 26, scope: !678)
!681 = !DILocation(line: 117, column: 2, scope: !678)
!682 = !DILocalVariable(name: "rec", scope: !683, file: !411, line: 118, type: !53)
!683 = distinct !DILexicalBlock(scope: !679, file: !411, line: 117, column: 51)
!684 = !DILocation(line: 118, column: 14, scope: !683)
!685 = !DILocation(line: 118, column: 20, scope: !683)
!686 = !DILocation(line: 118, column: 25, scope: !683)
!687 = !DILocation(line: 120, column: 26, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !411, line: 120, column: 7)
!689 = !DILocation(line: 120, column: 31, scope: !688)
!690 = !DILocation(line: 120, column: 37, scope: !688)
!691 = !DILocation(line: 120, column: 7, scope: !688)
!692 = !DILocation(line: 120, column: 43, scope: !688)
!693 = !DILocation(line: 120, column: 7, scope: !683)
!694 = !DILocation(line: 121, column: 11, scope: !688)
!695 = !DILocation(line: 121, column: 4, scope: !688)
!696 = !DILocation(line: 122, column: 2, scope: !683)
!697 = !DILocation(line: 117, column: 40, scope: !698)
!698 = !DILexicalBlockFile(scope: !679, file: !411, discriminator: 2)
!699 = !DILocation(line: 117, column: 45, scope: !698)
!700 = !DILocation(line: 117, column: 38, scope: !698)
!701 = !DILocation(line: 117, column: 2, scope: !698)
!702 = distinct !{!702, !703}
!703 = !DILocation(line: 117, column: 2, scope: !616)
!704 = !DILocation(line: 124, column: 9, scope: !616)
!705 = !DILocation(line: 125, column: 1, scope: !616)
!706 = distinct !DISubprogram(name: "query_find_server", scope: !411, file: !411, line: 86, type: !386, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!707 = !DILocalVariable(name: "server", arg: 1, scope: !706, file: !411, line: 86, type: !69)
!708 = !DILocation(line: 86, column: 49, scope: !706)
!709 = !DILocalVariable(name: "nick", arg: 2, scope: !706, file: !411, line: 86, type: !41)
!710 = !DILocation(line: 86, column: 69, scope: !706)
!711 = !DILocalVariable(name: "tmp", scope: !706, file: !411, line: 88, type: !235)
!712 = !DILocation(line: 88, column: 10, scope: !706)
!713 = !DILocation(line: 90, column: 2, scope: !706)
!714 = distinct !{!714, !713}
!715 = !DILocation(line: 90, column: 45, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !411, discriminator: 1)
!717 = distinct !DILexicalBlock(scope: !718, file: !411, line: 90, column: 10)
!718 = distinct !DILexicalBlock(scope: !706, file: !411, line: 90, column: 4)
!719 = !DILocation(line: 90, column: 27, scope: !716)
!720 = !DILocation(line: 90, column: 12, scope: !716)
!721 = !DILocation(line: 90, column: 10, scope: !716)
!722 = !DILocation(line: 90, column: 11, scope: !723)
!723 = !DILexicalBlockFile(scope: !717, file: !411, discriminator: 2)
!724 = !DILocation(line: 90, column: 10, scope: !725)
!725 = !DILexicalBlockFile(scope: !718, file: !411, discriminator: 3)
!726 = !DILocation(line: 90, column: 33, scope: !727)
!727 = !DILexicalBlockFile(scope: !728, file: !411, discriminator: 4)
!728 = distinct !DILexicalBlock(scope: !717, file: !411, line: 90, column: 31)
!729 = !DILocation(line: 90, column: 42, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !411, discriminator: 5)
!731 = distinct !DILexicalBlock(scope: !717, file: !411, line: 90, column: 40)
!732 = !DILocation(line: 90, column: 132, scope: !730)
!733 = !DILocation(line: 90, column: 7, scope: !734)
!734 = !DILexicalBlockFile(scope: !718, file: !411, discriminator: 6)
!735 = !DILocation(line: 92, column: 6, scope: !736)
!736 = distinct !DILexicalBlock(scope: !706, file: !411, line: 92, column: 6)
!737 = !DILocation(line: 92, column: 14, scope: !736)
!738 = !DILocation(line: 92, column: 30, scope: !736)
!739 = !DILocation(line: 92, column: 6, scope: !706)
!740 = !DILocation(line: 94, column: 10, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !411, line: 92, column: 38)
!742 = !DILocation(line: 94, column: 18, scope: !741)
!743 = !DILocation(line: 94, column: 34, scope: !741)
!744 = !DILocation(line: 94, column: 42, scope: !741)
!745 = !DILocation(line: 94, column: 3, scope: !741)
!746 = !DILocation(line: 97, column: 13, scope: !747)
!747 = distinct !DILexicalBlock(scope: !706, file: !411, line: 97, column: 2)
!748 = !DILocation(line: 97, column: 21, scope: !747)
!749 = !DILocation(line: 97, column: 11, scope: !747)
!750 = !DILocation(line: 97, column: 7, scope: !747)
!751 = !DILocation(line: 97, column: 30, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !411, discriminator: 1)
!753 = distinct !DILexicalBlock(scope: !747, file: !411, line: 97, column: 2)
!754 = !DILocation(line: 97, column: 34, scope: !752)
!755 = !DILocation(line: 97, column: 2, scope: !752)
!756 = !DILocalVariable(name: "rec", scope: !757, file: !411, line: 98, type: !53)
!757 = distinct !DILexicalBlock(scope: !753, file: !411, line: 97, column: 59)
!758 = !DILocation(line: 98, column: 14, scope: !757)
!759 = !DILocation(line: 98, column: 20, scope: !757)
!760 = !DILocation(line: 98, column: 25, scope: !757)
!761 = !DILocation(line: 100, column: 26, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !411, line: 100, column: 7)
!763 = !DILocation(line: 100, column: 31, scope: !762)
!764 = !DILocation(line: 100, column: 37, scope: !762)
!765 = !DILocation(line: 100, column: 7, scope: !762)
!766 = !DILocation(line: 100, column: 43, scope: !762)
!767 = !DILocation(line: 100, column: 7, scope: !757)
!768 = !DILocation(line: 101, column: 11, scope: !762)
!769 = !DILocation(line: 101, column: 4, scope: !762)
!770 = !DILocation(line: 102, column: 2, scope: !757)
!771 = !DILocation(line: 97, column: 48, scope: !772)
!772 = !DILexicalBlockFile(scope: !753, file: !411, discriminator: 2)
!773 = !DILocation(line: 97, column: 53, scope: !772)
!774 = !DILocation(line: 97, column: 46, scope: !772)
!775 = !DILocation(line: 97, column: 2, scope: !772)
!776 = distinct !{!776, !777}
!777 = !DILocation(line: 97, column: 2, scope: !706)
!778 = !DILocation(line: 104, column: 2, scope: !706)
!779 = !DILocation(line: 105, column: 1, scope: !706)
!780 = distinct !DISubprogram(name: "query_change_nick", scope: !411, file: !411, line: 127, type: !781, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !53, !41}
!783 = !DILocalVariable(name: "query", arg: 1, scope: !780, file: !411, line: 127, type: !53)
!784 = !DILocation(line: 127, column: 35, scope: !780)
!785 = !DILocalVariable(name: "nick", arg: 2, scope: !780, file: !411, line: 127, type: !41)
!786 = !DILocation(line: 127, column: 54, scope: !780)
!787 = !DILocalVariable(name: "oldnick", scope: !780, file: !411, line: 129, type: !88)
!788 = !DILocation(line: 129, column: 8, scope: !780)
!789 = !DILocation(line: 131, column: 2, scope: !780)
!790 = distinct !{!790, !789}
!791 = !DILocation(line: 131, column: 51, scope: !792)
!792 = !DILexicalBlockFile(scope: !793, file: !411, discriminator: 1)
!793 = distinct !DILexicalBlock(scope: !794, file: !411, line: 131, column: 10)
!794 = distinct !DILexicalBlock(scope: !780, file: !411, line: 131, column: 4)
!795 = !DILocation(line: 131, column: 26, scope: !792)
!796 = !DILocation(line: 131, column: 12, scope: !792)
!797 = !DILocation(line: 131, column: 10, scope: !792)
!798 = !DILocation(line: 131, column: 11, scope: !799)
!799 = !DILexicalBlockFile(scope: !793, file: !411, discriminator: 2)
!800 = !DILocation(line: 131, column: 10, scope: !801)
!801 = !DILexicalBlockFile(scope: !794, file: !411, discriminator: 3)
!802 = !DILocation(line: 131, column: 52, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !411, discriminator: 4)
!804 = distinct !DILexicalBlock(scope: !793, file: !411, line: 131, column: 50)
!805 = !DILocation(line: 131, column: 61, scope: !806)
!806 = !DILexicalBlockFile(scope: !807, file: !411, discriminator: 5)
!807 = distinct !DILexicalBlock(scope: !793, file: !411, line: 131, column: 59)
!808 = !DILocation(line: 131, column: 149, scope: !806)
!809 = !DILocation(line: 131, column: 160, scope: !810)
!810 = !DILexicalBlockFile(scope: !794, file: !411, discriminator: 6)
!811 = !DILocation(line: 133, column: 19, scope: !780)
!812 = !DILocation(line: 133, column: 26, scope: !780)
!813 = !DILocation(line: 133, column: 17, scope: !780)
!814 = !DILocation(line: 134, column: 25, scope: !780)
!815 = !DILocation(line: 134, column: 16, scope: !780)
!816 = !DILocation(line: 134, column: 2, scope: !780)
!817 = !DILocation(line: 134, column: 9, scope: !780)
!818 = !DILocation(line: 134, column: 14, scope: !780)
!819 = !DILocation(line: 136, column: 9, scope: !780)
!820 = !DILocation(line: 136, column: 16, scope: !780)
!821 = !DILocation(line: 136, column: 2, scope: !780)
!822 = !DILocation(line: 137, column: 33, scope: !780)
!823 = !DILocation(line: 137, column: 24, scope: !780)
!824 = !DILocation(line: 137, column: 2, scope: !780)
!825 = !DILocation(line: 137, column: 9, scope: !780)
!826 = !DILocation(line: 137, column: 22, scope: !780)
!827 = !DILocation(line: 139, column: 39, scope: !780)
!828 = !DILocation(line: 139, column: 46, scope: !780)
!829 = !DILocation(line: 139, column: 2, scope: !780)
!830 = !DILocation(line: 140, column: 45, scope: !780)
!831 = !DILocation(line: 140, column: 2, scope: !780)
!832 = !DILocation(line: 141, column: 16, scope: !780)
!833 = !DILocation(line: 141, column: 9, scope: !780)
!834 = !DILocation(line: 142, column: 1, scope: !780)
!835 = !DILocation(line: 142, column: 1, scope: !836)
!836 = !DILexicalBlockFile(scope: !780, file: !411, discriminator: 1)
!837 = distinct !DISubprogram(name: "query_change_address", scope: !411, file: !411, line: 144, type: !781, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!838 = !DILocalVariable(name: "query", arg: 1, scope: !837, file: !411, line: 144, type: !53)
!839 = !DILocation(line: 144, column: 38, scope: !837)
!840 = !DILocalVariable(name: "address", arg: 2, scope: !837, file: !411, line: 144, type: !41)
!841 = !DILocation(line: 144, column: 57, scope: !837)
!842 = !DILocation(line: 146, column: 2, scope: !837)
!843 = distinct !{!843, !842}
!844 = !DILocation(line: 146, column: 51, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !411, discriminator: 1)
!846 = distinct !DILexicalBlock(scope: !847, file: !411, line: 146, column: 10)
!847 = distinct !DILexicalBlock(scope: !837, file: !411, line: 146, column: 4)
!848 = !DILocation(line: 146, column: 26, scope: !845)
!849 = !DILocation(line: 146, column: 12, scope: !845)
!850 = !DILocation(line: 146, column: 10, scope: !845)
!851 = !DILocation(line: 146, column: 11, scope: !852)
!852 = !DILexicalBlockFile(scope: !846, file: !411, discriminator: 2)
!853 = !DILocation(line: 146, column: 10, scope: !854)
!854 = !DILexicalBlockFile(scope: !847, file: !411, discriminator: 3)
!855 = !DILocation(line: 146, column: 52, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !411, discriminator: 4)
!857 = distinct !DILexicalBlock(scope: !846, file: !411, line: 146, column: 50)
!858 = !DILocation(line: 146, column: 61, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !411, discriminator: 5)
!860 = distinct !DILexicalBlock(scope: !846, file: !411, line: 146, column: 59)
!861 = !DILocation(line: 146, column: 149, scope: !859)
!862 = !DILocation(line: 146, column: 160, scope: !863)
!863 = !DILexicalBlockFile(scope: !847, file: !411, discriminator: 6)
!864 = !DILocation(line: 148, column: 16, scope: !837)
!865 = !DILocation(line: 148, column: 23, scope: !837)
!866 = !DILocation(line: 148, column: 9, scope: !837)
!867 = !DILocation(line: 149, column: 28, scope: !837)
!868 = !DILocation(line: 149, column: 19, scope: !837)
!869 = !DILocation(line: 149, column: 2, scope: !837)
!870 = !DILocation(line: 149, column: 9, scope: !837)
!871 = !DILocation(line: 149, column: 17, scope: !837)
!872 = !DILocation(line: 150, column: 42, scope: !837)
!873 = !DILocation(line: 150, column: 2, scope: !837)
!874 = !DILocation(line: 151, column: 1, scope: !837)
!875 = !DILocation(line: 151, column: 1, scope: !876)
!876 = !DILexicalBlockFile(scope: !837, file: !411, discriminator: 1)
!877 = distinct !DISubprogram(name: "query_change_server", scope: !411, file: !411, line: 153, type: !878, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !53, !69}
!880 = !DILocalVariable(name: "query", arg: 1, scope: !877, file: !411, line: 153, type: !53)
!881 = !DILocation(line: 153, column: 37, scope: !877)
!882 = !DILocalVariable(name: "server", arg: 2, scope: !877, file: !411, line: 153, type: !69)
!883 = !DILocation(line: 153, column: 56, scope: !877)
!884 = !DILocation(line: 155, column: 2, scope: !877)
!885 = distinct !{!885, !884}
!886 = !DILocation(line: 155, column: 51, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !411, discriminator: 1)
!888 = distinct !DILexicalBlock(scope: !889, file: !411, line: 155, column: 10)
!889 = distinct !DILexicalBlock(scope: !877, file: !411, line: 155, column: 4)
!890 = !DILocation(line: 155, column: 26, scope: !887)
!891 = !DILocation(line: 155, column: 12, scope: !887)
!892 = !DILocation(line: 155, column: 10, scope: !887)
!893 = !DILocation(line: 155, column: 11, scope: !894)
!894 = !DILexicalBlockFile(scope: !888, file: !411, discriminator: 2)
!895 = !DILocation(line: 155, column: 10, scope: !896)
!896 = !DILexicalBlockFile(scope: !889, file: !411, discriminator: 3)
!897 = !DILocation(line: 155, column: 52, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !411, discriminator: 4)
!899 = distinct !DILexicalBlock(scope: !888, file: !411, line: 155, column: 50)
!900 = !DILocation(line: 155, column: 61, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !411, discriminator: 5)
!902 = distinct !DILexicalBlock(scope: !888, file: !411, line: 155, column: 59)
!903 = !DILocation(line: 155, column: 149, scope: !901)
!904 = !DILocation(line: 155, column: 160, scope: !905)
!905 = !DILexicalBlockFile(scope: !889, file: !411, discriminator: 6)
!906 = !DILocation(line: 157, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !877, file: !411, line: 157, column: 6)
!908 = !DILocation(line: 157, column: 13, scope: !907)
!909 = !DILocation(line: 157, column: 20, scope: !907)
!910 = !DILocation(line: 157, column: 6, scope: !877)
!911 = !DILocation(line: 159, column: 40, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !411, line: 157, column: 28)
!913 = !DILocation(line: 159, column: 47, scope: !912)
!914 = !DILocation(line: 159, column: 55, scope: !912)
!915 = !DILocation(line: 159, column: 64, scope: !912)
!916 = !DILocation(line: 159, column: 25, scope: !912)
!917 = !DILocation(line: 158, column: 3, scope: !912)
!918 = !DILocation(line: 158, column: 10, scope: !912)
!919 = !DILocation(line: 158, column: 18, scope: !912)
!920 = !DILocation(line: 158, column: 26, scope: !912)
!921 = !DILocation(line: 160, column: 2, scope: !912)
!922 = !DILocation(line: 161, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !877, file: !411, line: 161, column: 6)
!924 = !DILocation(line: 161, column: 13, scope: !923)
!925 = !DILocation(line: 161, column: 6, scope: !877)
!926 = !DILocation(line: 162, column: 50, scope: !923)
!927 = !DILocation(line: 162, column: 58, scope: !923)
!928 = !DILocation(line: 162, column: 67, scope: !923)
!929 = !DILocation(line: 162, column: 35, scope: !923)
!930 = !DILocation(line: 162, column: 17, scope: !923)
!931 = !DILocation(line: 162, column: 25, scope: !923)
!932 = !DILocation(line: 162, column: 33, scope: !923)
!933 = !DILocation(line: 164, column: 18, scope: !877)
!934 = !DILocation(line: 164, column: 2, scope: !877)
!935 = !DILocation(line: 164, column: 9, scope: !877)
!936 = !DILocation(line: 164, column: 16, scope: !877)
!937 = !DILocation(line: 165, column: 41, scope: !877)
!938 = !DILocation(line: 165, column: 2, scope: !877)
!939 = !DILocation(line: 166, column: 1, scope: !877)
!940 = !DILocation(line: 166, column: 1, scope: !941)
!941 = !DILexicalBlockFile(scope: !877, file: !411, discriminator: 1)
!942 = distinct !DISubprogram(name: "queries_init", scope: !411, file: !411, line: 168, type: !223, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!943 = !DILocation(line: 170, column: 1, scope: !942)
!944 = distinct !DISubprogram(name: "queries_deinit", scope: !411, file: !411, line: 172, type: !223, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !418)
!945 = !DILocation(line: 174, column: 1, scope: !944)
