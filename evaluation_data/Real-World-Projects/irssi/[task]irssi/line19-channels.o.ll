; ModuleID = './line19-channels.o.i'
source_filename = "./line19-channels.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
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
%struct._QUERY_REC = type opaque
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }

@__func__.channel_init = private unnamed_addr constant [13 x i8] c"channel_init\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@channels = common global %struct._GSList* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"channel created\00", align 1
@__func__.channel_destroy = private unnamed_addr constant [16 x i8] c"channel_destroy\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"IS_CHANNEL(channel)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.channel_find = private unnamed_addr constant [13 x i8] c"channel_find\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"server == NULL || IS_SERVER(server)\00", align 1
@servers = external global %struct._GSList*, align 8
@__func__.channel_change_name = private unnamed_addr constant [20 x i8] c"channel_change_name\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"channel name changed\00", align 1
@__func__.channel_change_visible_name = private unnamed_addr constant [28 x i8] c"channel_change_visible_name\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"window item name changed\00", align 1
@__func__.channel_send_autocommands = private unnamed_addr constant [26 x i8] c"channel_send_autocommands\00", align 1
@__func__.channel_send_botcommands = private unnamed_addr constant [25 x i8] c"channel_send_botcommands\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@__func__.channel_find_server = private unnamed_addr constant [20 x i8] c"channel_find_server\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@__func__.event_connected = private unnamed_addr constant [16 x i8] c"event_connected\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SERVER(server)\00", align 1
@setupchannels = external global %struct._GSList*, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1

; Function Attrs: nounwind uwtable
define void @channel_init(%struct._CHANNEL_REC*, %struct._SERVER_REC*, i8*, i8*, i32) #0 !dbg !469 {
  %6 = alloca %struct._CHANNEL_REC*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !473, metadata !474), !dbg !475
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !476, metadata !474), !dbg !477
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !478, metadata !474), !dbg !479
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !480, metadata !474), !dbg !481
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !482, metadata !474), !dbg !483
  br label %11, !dbg !484, !llvm.loop !485

; <label>:11:                                     ; preds = %5
  %12 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !486
  %13 = icmp ne %struct._CHANNEL_REC* %12, null, !dbg !490
  br i1 %13, label %14, label %15, !dbg !486

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !491

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_init, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !494
  br label %88, !dbg !497

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !498

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !500, !llvm.loop !501

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !502
  %20 = icmp ne i8* %19, null, !dbg !506
  br i1 %20, label %21, label %22, !dbg !502

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !507

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_init, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !510
  br label %88, !dbg !513

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !514

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !516, !llvm.loop !517

; <label>:25:                                     ; preds = %24
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !518
  %27 = icmp ne %struct._SERVER_REC* %26, null, !dbg !522
  br i1 %27, label %28, label %29, !dbg !518

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !523

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !526
  br label %88, !dbg !529

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !530

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %9, align 8, !dbg !532
  %33 = icmp eq i8* %32, null, !dbg !534
  br i1 %33, label %34, label %36, !dbg !535

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %8, align 8, !dbg !536
  store i8* %35, i8** %9, align 8, !dbg !537
  br label %36, !dbg !538

; <label>:36:                                     ; preds = %34, %31
  %37 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !539
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !540
  %39 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %38, i32 0, i32 2, !dbg !541
  store %struct._GHashTable* %37, %struct._GHashTable** %39, align 8, !dbg !542
  %40 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !543
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !544
  %42 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %41, i32 0, i32 0, !dbg !545
  store i32 %40, i32* %42, align 8, !dbg !546
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !547
  %44 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %43, i32 0, i32 10, !dbg !548
  store void (%struct._WI_ITEM_REC*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_destroy to void (%struct._WI_ITEM_REC*)*), void (%struct._WI_ITEM_REC*)** %44, align 8, !dbg !549
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !550
  %46 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %45, i32 0, i32 11, !dbg !551
  store i8* (%struct._WI_ITEM_REC*)* @channel_get_target, i8* (%struct._WI_ITEM_REC*)** %46, align 8, !dbg !552
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !553
  %48 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %47, i32 0, i32 22, !dbg !554
  store i8* (%struct._CHANNEL_REC*)* @get_join_data, i8* (%struct._CHANNEL_REC*)** %48, align 8, !dbg !555
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !556
  %50 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %49, i32 0, i32 1, !dbg !557
  %51 = load i32, i32* %50, align 4, !dbg !557
  %52 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !558
  %53 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %52, i32 0, i32 1, !dbg !559
  store i32 %51, i32* %53, align 4, !dbg !560
  %54 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !561
  %55 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !562
  %56 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %55, i32 0, i32 4, !dbg !563
  store %struct._SERVER_REC* %54, %struct._SERVER_REC** %56, align 8, !dbg !564
  %57 = load i8*, i8** %8, align 8, !dbg !565
  %58 = call noalias i8* @g_strdup(i8* %57), !dbg !566
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !567
  %60 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %59, i32 0, i32 6, !dbg !568
  store i8* %58, i8** %60, align 8, !dbg !569
  %61 = load i8*, i8** %9, align 8, !dbg !570
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !571
  %63 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !572
  %64 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %63, i32 0, i32 5, !dbg !573
  store i8* %62, i8** %64, align 8, !dbg !574
  %65 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)), !dbg !575
  %66 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !576
  %67 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %66, i32 0, i32 18, !dbg !577
  store i8* %65, i8** %67, align 8, !dbg !578
  %68 = call i64 @time(i64* null) #5, !dbg !579
  %69 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !580
  %70 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %69, i32 0, i32 7, !dbg !581
  store i64 %68, i64* %70, align 8, !dbg !582
  %71 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !583
  %72 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !584
  %73 = bitcast %struct._CHANNEL_REC* %72 to i8*, !dbg !584
  %74 = call %struct._GSList* @g_slist_append(%struct._GSList* %71, i8* %73), !dbg !585
  store %struct._GSList* %74, %struct._GSList** @channels, align 8, !dbg !586
  %75 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !587
  %76 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %75, i32 0, i32 23, !dbg !588
  %77 = load %struct._GSList*, %struct._GSList** %76, align 8, !dbg !588
  %78 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !589
  %79 = bitcast %struct._CHANNEL_REC* %78 to i8*, !dbg !589
  %80 = call %struct._GSList* @g_slist_append(%struct._GSList* %77, i8* %79), !dbg !590
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !591
  %82 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %81, i32 0, i32 23, !dbg !592
  store %struct._GSList* %80, %struct._GSList** %82, align 8, !dbg !593
  %83 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !594
  %84 = load i32, i32* %10, align 4, !dbg !595
  %85 = sext i32 %84 to i64, !dbg !596
  %86 = inttoptr i64 %85 to i8*, !dbg !597
  %87 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %83, i8* %86), !dbg !598
  br label %88, !dbg !599

; <label>:88:                                     ; preds = %36, %29, %22, %15
  ret void, !dbg !600
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @channel_destroy(%struct._CHANNEL_REC*) #0 !dbg !602 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !605, metadata !474), !dbg !606
  br label %3, !dbg !607, !llvm.loop !608

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !609
  %5 = bitcast %struct._CHANNEL_REC* %4 to i8*, !dbg !609
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !613
  %7 = bitcast i8* %6 to %struct._CHANNEL_REC*, !dbg !614
  %8 = icmp ne %struct._CHANNEL_REC* %7, null, !dbg !614
  br i1 %8, label %9, label %10, !dbg !615

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !616

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !618

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !620

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.channel_destroy, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !623
  br label %75, !dbg !626

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !627

; <label>:14:                                     ; preds = %13
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !629
  %16 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %15, i32 0, i32 21, !dbg !631
  %17 = load i16, i16* %16, align 8, !dbg !631
  %18 = lshr i16 %17, 8, !dbg !631
  %19 = and i16 %18, 1, !dbg !631
  %20 = zext i16 %19 to i32, !dbg !631
  %21 = icmp ne i32 %20, 0, !dbg !629
  br i1 %21, label %22, label %23, !dbg !632

; <label>:22:                                     ; preds = %14
  br label %75, !dbg !633

; <label>:23:                                     ; preds = %14
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !635
  %25 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %24, i32 0, i32 21, !dbg !636
  %26 = load i16, i16* %25, align 8, !dbg !637
  %27 = and i16 %26, -257, !dbg !637
  %28 = or i16 %27, 256, !dbg !637
  store i16 %28, i16* %25, align 8, !dbg !637
  %29 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !638
  %30 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !639
  %31 = bitcast %struct._CHANNEL_REC* %30 to i8*, !dbg !639
  %32 = call %struct._GSList* @g_slist_remove(%struct._GSList* %29, i8* %31), !dbg !640
  store %struct._GSList* %32, %struct._GSList** @channels, align 8, !dbg !641
  %33 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !642
  %34 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %33, i32 0, i32 4, !dbg !643
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %34, align 8, !dbg !643
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 23, !dbg !644
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !644
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !645
  %39 = bitcast %struct._CHANNEL_REC* %38 to i8*, !dbg !645
  %40 = call %struct._GSList* @g_slist_remove(%struct._GSList* %37, i8* %39), !dbg !646
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !647
  %42 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %41, i32 0, i32 4, !dbg !648
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %42, align 8, !dbg !648
  %44 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %43, i32 0, i32 23, !dbg !649
  store %struct._GSList* %40, %struct._GSList** %44, align 8, !dbg !650
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !651
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct._CHANNEL_REC* %45), !dbg !652
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !653
  %48 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %47, i32 0, i32 2, !dbg !654
  %49 = load %struct._GHashTable*, %struct._GHashTable** %48, align 8, !dbg !654
  call void @g_hash_table_destroy(%struct._GHashTable* %49), !dbg !655
  %50 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !656
  %51 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %50, i32 0, i32 9, !dbg !657
  %52 = load i8*, i8** %51, align 8, !dbg !657
  call void @g_free(i8* %52), !dbg !658
  %53 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !659
  %54 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %53, i32 0, i32 12, !dbg !660
  %55 = load i8*, i8** %54, align 8, !dbg !660
  call void @g_free(i8* %55), !dbg !661
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !662
  %57 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %56, i32 0, i32 13, !dbg !663
  %58 = load i8*, i8** %57, align 8, !dbg !663
  call void @g_free(i8* %58), !dbg !664
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !665
  %60 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %59, i32 0, i32 20, !dbg !666
  %61 = load i8*, i8** %60, align 8, !dbg !666
  call void @g_free(i8* %61), !dbg !667
  %62 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !668
  %63 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %62, i32 0, i32 18, !dbg !669
  %64 = load i8*, i8** %63, align 8, !dbg !669
  call void @g_free(i8* %64), !dbg !670
  %65 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !671
  %66 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %65, i32 0, i32 6, !dbg !672
  %67 = load i8*, i8** %66, align 8, !dbg !672
  call void @g_free(i8* %67), !dbg !673
  %68 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !674
  %69 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %68, i32 0, i32 5, !dbg !675
  %70 = load i8*, i8** %69, align 8, !dbg !675
  call void @g_free(i8* %70), !dbg !676
  %71 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !677
  %72 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %71, i32 0, i32 0, !dbg !678
  store i32 0, i32* %72, align 8, !dbg !679
  %73 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !680
  %74 = bitcast %struct._CHANNEL_REC* %73 to i8*, !dbg !680
  call void @g_free(i8* %74), !dbg !681
  br label %75, !dbg !682

; <label>:75:                                     ; preds = %23, %22, %12
  ret void, !dbg !683
}

; Function Attrs: nounwind uwtable
define internal i8* @channel_get_target(%struct._WI_ITEM_REC*) #0 !dbg !685 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !686, metadata !474), !dbg !687
  %3 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !688
  %4 = bitcast %struct._WI_ITEM_REC* %3 to %struct._CHANNEL_REC*, !dbg !689
  %5 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %4, i32 0, i32 6, !dbg !689
  %6 = load i8*, i8** %5, align 8, !dbg !689
  ret i8* %6, !dbg !690
}

; Function Attrs: nounwind uwtable
define internal i8* @get_join_data(%struct._CHANNEL_REC*) #0 !dbg !691 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !692, metadata !474), !dbg !693
  %3 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !694
  %4 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %3, i32 0, i32 6, !dbg !695
  %5 = load i8*, i8** %4, align 8, !dbg !695
  %6 = call noalias i8* @g_strdup(i8* %5), !dbg !696
  ret i8* %6, !dbg !697
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #0 !dbg !698 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !699, metadata !474), !dbg !700
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !701, metadata !474), !dbg !702
  br label %6, !dbg !703, !llvm.loop !704

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !705
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !709
  br i1 %8, label %17, label %9, !dbg !710

; <label>:9:                                      ; preds = %6
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !711
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !711
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !713
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !714
  %14 = icmp ne %struct._SERVER_REC* %13, null, !dbg !714
  br i1 %14, label %15, label %16, !dbg !715

; <label>:15:                                     ; preds = %9
  br i1 false, label %18, label %17, !dbg !716

; <label>:16:                                     ; preds = %9
  br i1 false, label %17, label %18, !dbg !718

; <label>:17:                                     ; preds = %16, %15, %6
  br label %19, !dbg !720

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_find, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0)), !dbg !723
  store %struct._CHANNEL_REC* null, %struct._CHANNEL_REC** %3, align 8, !dbg !726
  br label %39, !dbg !726

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !727

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !729, !llvm.loop !730

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !731
  %23 = icmp ne i8* %22, null, !dbg !735
  br i1 %23, label %24, label %25, !dbg !731

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !736

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !739
  store %struct._CHANNEL_REC* null, %struct._CHANNEL_REC** %3, align 8, !dbg !742
  br label %39, !dbg !742

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !743

; <label>:27:                                     ; preds = %26
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !745
  %29 = icmp ne %struct._SERVER_REC* %28, null, !dbg !747
  br i1 %29, label %30, label %34, !dbg !748

; <label>:30:                                     ; preds = %27
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !749
  %32 = load i8*, i8** %5, align 8, !dbg !750
  %33 = call %struct._CHANNEL_REC* @channel_find_server(%struct._SERVER_REC* %31, i8* %32), !dbg !751
  store %struct._CHANNEL_REC* %33, %struct._CHANNEL_REC** %3, align 8, !dbg !752
  br label %39, !dbg !752

; <label>:34:                                     ; preds = %27
  %35 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !753
  %36 = load i8*, i8** %5, align 8, !dbg !754
  %37 = call i8* @gslist_foreach_find(%struct._GSList* %35, i8* (i8*, i8*)* bitcast (%struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)* @channel_find_server to i8* (i8*, i8*)*), i8* %36), !dbg !755
  %38 = bitcast i8* %37 to %struct._CHANNEL_REC*, !dbg !755
  store %struct._CHANNEL_REC* %38, %struct._CHANNEL_REC** %3, align 8, !dbg !756
  br label %39, !dbg !756

; <label>:39:                                     ; preds = %34, %30, %25, %18
  %40 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !757
  ret %struct._CHANNEL_REC* %40, !dbg !757
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_REC* @channel_find_server(%struct._SERVER_REC*, i8*) #0 !dbg !758 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !759, metadata !474), !dbg !760
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !761, metadata !474), !dbg !762
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !763, metadata !474), !dbg !764
  br label %8, !dbg !765, !llvm.loop !766

; <label>:8:                                      ; preds = %2
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !767
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !767
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !771
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !772
  %13 = icmp ne %struct._SERVER_REC* %12, null, !dbg !772
  br i1 %13, label %14, label %15, !dbg !773

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !774

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !776

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !778

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.channel_find_server, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)), !dbg !781
  store %struct._CHANNEL_REC* null, %struct._CHANNEL_REC** %3, align 8, !dbg !784
  br label %57, !dbg !784

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !785

; <label>:19:                                     ; preds = %18
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !787
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 31, !dbg !789
  %22 = load %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)** %21, align 8, !dbg !789
  %23 = icmp ne %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)* %22, null, !dbg !790
  br i1 %23, label %24, label %31, !dbg !791

; <label>:24:                                     ; preds = %19
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !792
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 31, !dbg !794
  %27 = load %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)** %26, align 8, !dbg !794
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !795
  %29 = load i8*, i8** %5, align 8, !dbg !796
  %30 = call %struct._CHANNEL_REC* %27(%struct._SERVER_REC* %28, i8* %29), !dbg !792
  store %struct._CHANNEL_REC* %30, %struct._CHANNEL_REC** %3, align 8, !dbg !797
  br label %57, !dbg !797

; <label>:31:                                     ; preds = %19
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !798
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 23, !dbg !800
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !800
  store %struct._GSList* %34, %struct._GSList** %6, align 8, !dbg !801
  br label %35, !dbg !802

; <label>:35:                                     ; preds = %52, %31
  %36 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !803
  %37 = icmp ne %struct._GSList* %36, null, !dbg !806
  br i1 %37, label %38, label %56, !dbg !807

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !808, metadata !474), !dbg !810
  %39 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !811
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !812
  %41 = load i8*, i8** %40, align 8, !dbg !812
  %42 = bitcast i8* %41 to %struct._CHANNEL_REC*, !dbg !811
  store %struct._CHANNEL_REC* %42, %struct._CHANNEL_REC** %7, align 8, !dbg !810
  %43 = load i8*, i8** %5, align 8, !dbg !813
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !815
  %45 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %44, i32 0, i32 6, !dbg !816
  %46 = load i8*, i8** %45, align 8, !dbg !816
  %47 = call i32 @g_ascii_strcasecmp(i8* %43, i8* %46), !dbg !817
  %48 = icmp eq i32 %47, 0, !dbg !818
  br i1 %48, label %49, label %51, !dbg !819

; <label>:49:                                     ; preds = %38
  %50 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !820
  store %struct._CHANNEL_REC* %50, %struct._CHANNEL_REC** %3, align 8, !dbg !821
  br label %57, !dbg !821

; <label>:51:                                     ; preds = %38
  br label %52, !dbg !822

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !823
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !825
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !825
  store %struct._GSList* %55, %struct._GSList** %6, align 8, !dbg !826
  br label %35, !dbg !827, !llvm.loop !828

; <label>:56:                                     ; preds = %35
  store %struct._CHANNEL_REC* null, %struct._CHANNEL_REC** %3, align 8, !dbg !830
  br label %57, !dbg !830

; <label>:57:                                     ; preds = %56, %49, %24, %17
  %58 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !831
  ret %struct._CHANNEL_REC* %58, !dbg !831
}

declare i8* @gslist_foreach_find(%struct._GSList*, i8* (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @channel_change_name(%struct._CHANNEL_REC*, i8*) #0 !dbg !832 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !835, metadata !474), !dbg !836
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !837, metadata !474), !dbg !838
  br label %5, !dbg !839, !llvm.loop !840

; <label>:5:                                      ; preds = %2
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !841
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !841
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !845
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !846
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !846
  br i1 %10, label %11, label %12, !dbg !847

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !848

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !850

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !852

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.channel_change_name, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !855
  br label %26, !dbg !858

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !859

; <label>:16:                                     ; preds = %15
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !861
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 6, !dbg !862
  %19 = load i8*, i8** %18, align 8, !dbg !862
  call void @g_free(i8* %19), !dbg !863
  %20 = load i8*, i8** %4, align 8, !dbg !864
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !865
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !866
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 6, !dbg !867
  store i8* %21, i8** %23, align 8, !dbg !868
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !869
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct._CHANNEL_REC* %24), !dbg !870
  br label %26, !dbg !871

; <label>:26:                                     ; preds = %16, %14
  ret void, !dbg !872
}

; Function Attrs: nounwind uwtable
define void @channel_change_visible_name(%struct._CHANNEL_REC*, i8*) #0 !dbg !874 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !875, metadata !474), !dbg !876
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !877, metadata !474), !dbg !878
  br label %5, !dbg !879, !llvm.loop !880

; <label>:5:                                      ; preds = %2
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !881
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !881
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !885
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !886
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !886
  br i1 %10, label %11, label %12, !dbg !887

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !888

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !890

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !892

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.channel_change_visible_name, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !895
  br label %26, !dbg !898

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !899

; <label>:16:                                     ; preds = %15
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !901
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 5, !dbg !902
  %19 = load i8*, i8** %18, align 8, !dbg !902
  call void @g_free(i8* %19), !dbg !903
  %20 = load i8*, i8** %4, align 8, !dbg !904
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !905
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !906
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 5, !dbg !907
  store i8* %21, i8** %23, align 8, !dbg !908
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !909
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct._CHANNEL_REC* %24), !dbg !910
  br label %26, !dbg !911

; <label>:26:                                     ; preds = %16, %14
  ret void, !dbg !912
}

; Function Attrs: nounwind uwtable
define void @channel_send_autocommands(%struct._CHANNEL_REC*) #0 !dbg !914 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !915, metadata !474), !dbg !916
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %3, metadata !917, metadata !474), !dbg !933
  br label %4, !dbg !934, !llvm.loop !935

; <label>:4:                                      ; preds = %1
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !936
  %6 = bitcast %struct._CHANNEL_REC* %5 to i8*, !dbg !936
  %7 = call i8* @module_check_cast_module(i8* %6, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !940
  %8 = bitcast i8* %7 to %struct._CHANNEL_REC*, !dbg !941
  %9 = icmp ne %struct._CHANNEL_REC* %8, null, !dbg !941
  br i1 %9, label %10, label %11, !dbg !942

; <label>:10:                                     ; preds = %4
  br i1 false, label %13, label %12, !dbg !943

; <label>:11:                                     ; preds = %4
  br i1 false, label %12, label %13, !dbg !945

; <label>:12:                                     ; preds = %11, %10
  br label %14, !dbg !947

; <label>:13:                                     ; preds = %11, %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.channel_send_autocommands, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !950
  br label %70, !dbg !953

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !954

; <label>:15:                                     ; preds = %14
  %16 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !956
  %17 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %16, i32 0, i32 21, !dbg !958
  %18 = load i16, i16* %17, align 8, !dbg !958
  %19 = lshr i16 %18, 7, !dbg !958
  %20 = and i16 %19, 1, !dbg !958
  %21 = zext i16 %20 to i32, !dbg !958
  %22 = icmp ne i32 %21, 0, !dbg !956
  br i1 %22, label %23, label %24, !dbg !959

; <label>:23:                                     ; preds = %15
  br label %70, !dbg !960

; <label>:24:                                     ; preds = %15
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !961
  %26 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %25, i32 0, i32 6, !dbg !962
  %27 = load i8*, i8** %26, align 8, !dbg !962
  %28 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !963
  %29 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %28, i32 0, i32 4, !dbg !964
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %29, align 8, !dbg !964
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 3, !dbg !965
  %32 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %31, align 8, !dbg !965
  %33 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %32, i32 0, i32 12, !dbg !966
  %34 = load i8*, i8** %33, align 8, !dbg !966
  %35 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %27, i8* %34), !dbg !967
  store %struct._CHANNEL_SETUP_REC* %35, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !968
  %36 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !969
  %37 = icmp eq %struct._CHANNEL_SETUP_REC* %36, null, !dbg !971
  br i1 %37, label %49, label %38, !dbg !972

; <label>:38:                                     ; preds = %24
  %39 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !973
  %40 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %39, i32 0, i32 6, !dbg !975
  %41 = load i8*, i8** %40, align 8, !dbg !975
  %42 = icmp eq i8* %41, null, !dbg !976
  br i1 %42, label %49, label %43, !dbg !977

; <label>:43:                                     ; preds = %38
  %44 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !978
  %45 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %44, i32 0, i32 6, !dbg !980
  %46 = load i8*, i8** %45, align 8, !dbg !980
  %47 = load i8, i8* %46, align 1, !dbg !981
  %48 = icmp ne i8 %47, 0, !dbg !981
  br i1 %48, label %50, label %49, !dbg !982

; <label>:49:                                     ; preds = %43, %38, %24
  br label %70, !dbg !983

; <label>:50:                                     ; preds = %43
  %51 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !984
  %52 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %51, i32 0, i32 5, !dbg !986
  %53 = load i8*, i8** %52, align 8, !dbg !986
  %54 = icmp eq i8* %53, null, !dbg !987
  br i1 %54, label %61, label %55, !dbg !988

; <label>:55:                                     ; preds = %50
  %56 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !989
  %57 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %56, i32 0, i32 5, !dbg !991
  %58 = load i8*, i8** %57, align 8, !dbg !991
  %59 = load i8, i8* %58, align 1, !dbg !992
  %60 = icmp ne i8 %59, 0, !dbg !992
  br i1 %60, label %70, label %61, !dbg !993

; <label>:61:                                     ; preds = %55, %50
  %62 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !994
  %63 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %62, i32 0, i32 6, !dbg !996
  %64 = load i8*, i8** %63, align 8, !dbg !996
  %65 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !997
  %66 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %65, i32 0, i32 4, !dbg !998
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %66, align 8, !dbg !998
  %68 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !999
  %69 = bitcast %struct._CHANNEL_REC* %68 to i8*, !dbg !999
  call void @eval_special_string(i8* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %struct._SERVER_REC* %67, i8* %69), !dbg !1000
  br label %70, !dbg !1001

; <label>:70:                                     ; preds = %13, %23, %49, %61, %55
  ret void, !dbg !1002
}

declare %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #2

declare void @eval_special_string(i8*, i8*, %struct._SERVER_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define void @channel_send_botcommands(%struct._CHANNEL_REC*) #0 !dbg !1003 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !1004, metadata !474), !dbg !1005
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %3, metadata !1006, metadata !474), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !1008, metadata !474), !dbg !1009
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1010, metadata !474), !dbg !1011
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1012, metadata !474), !dbg !1013
  br label %8, !dbg !1014, !llvm.loop !1015

; <label>:8:                                      ; preds = %1
  %9 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1016
  %10 = bitcast %struct._CHANNEL_REC* %9 to i8*, !dbg !1016
  %11 = call i8* @module_check_cast_module(i8* %10, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)), !dbg !1020
  %12 = bitcast i8* %11 to %struct._CHANNEL_REC*, !dbg !1021
  %13 = icmp ne %struct._CHANNEL_REC* %12, null, !dbg !1021
  br i1 %13, label %14, label %15, !dbg !1022

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !1023

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !1025

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1027

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.channel_send_botcommands, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !1030
  br label %135, !dbg !1033

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1034

; <label>:19:                                     ; preds = %18
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1036
  %21 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %20, i32 0, i32 21, !dbg !1038
  %22 = load i16, i16* %21, align 8, !dbg !1038
  %23 = lshr i16 %22, 7, !dbg !1038
  %24 = and i16 %23, 1, !dbg !1038
  %25 = zext i16 %24 to i32, !dbg !1038
  %26 = icmp ne i32 %25, 0, !dbg !1036
  br i1 %26, label %27, label %28, !dbg !1039

; <label>:27:                                     ; preds = %19
  br label %135, !dbg !1040

; <label>:28:                                     ; preds = %19
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1041
  %30 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %29, i32 0, i32 6, !dbg !1042
  %31 = load i8*, i8** %30, align 8, !dbg !1042
  %32 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1043
  %33 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %32, i32 0, i32 4, !dbg !1044
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %33, align 8, !dbg !1044
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 3, !dbg !1045
  %36 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %35, align 8, !dbg !1045
  %37 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %36, i32 0, i32 12, !dbg !1046
  %38 = load i8*, i8** %37, align 8, !dbg !1046
  %39 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %31, i8* %38), !dbg !1047
  store %struct._CHANNEL_SETUP_REC* %39, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1048
  %40 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1049
  %41 = icmp eq %struct._CHANNEL_SETUP_REC* %40, null, !dbg !1051
  br i1 %41, label %53, label %42, !dbg !1052

; <label>:42:                                     ; preds = %28
  %43 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1053
  %44 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %43, i32 0, i32 6, !dbg !1055
  %45 = load i8*, i8** %44, align 8, !dbg !1055
  %46 = icmp eq i8* %45, null, !dbg !1056
  br i1 %46, label %53, label %47, !dbg !1057

; <label>:47:                                     ; preds = %42
  %48 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1058
  %49 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %48, i32 0, i32 6, !dbg !1060
  %50 = load i8*, i8** %49, align 8, !dbg !1060
  %51 = load i8, i8* %50, align 1, !dbg !1061
  %52 = icmp ne i8 %51, 0, !dbg !1061
  br i1 %52, label %54, label %53, !dbg !1062

; <label>:53:                                     ; preds = %47, %42, %28
  br label %135, !dbg !1063

; <label>:54:                                     ; preds = %47
  %55 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1064
  %56 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %55, i32 0, i32 5, !dbg !1066
  %57 = load i8*, i8** %56, align 8, !dbg !1066
  %58 = icmp eq i8* %57, null, !dbg !1067
  br i1 %58, label %65, label %59, !dbg !1068

; <label>:59:                                     ; preds = %54
  %60 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1069
  %61 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %60, i32 0, i32 5, !dbg !1071
  %62 = load i8*, i8** %61, align 8, !dbg !1071
  %63 = load i8, i8* %62, align 1, !dbg !1072
  %64 = icmp ne i8 %63, 0, !dbg !1072
  br i1 %64, label %66, label %65, !dbg !1073

; <label>:65:                                     ; preds = %59, %54
  br label %135, !dbg !1074

; <label>:66:                                     ; preds = %59
  %67 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1075
  %68 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %67, i32 0, i32 5, !dbg !1076
  %69 = load i8*, i8** %68, align 8, !dbg !1076
  %70 = call noalias i8** @g_strsplit(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 -1), !dbg !1077
  store i8** %70, i8*** %5, align 8, !dbg !1078
  %71 = load i8**, i8*** %5, align 8, !dbg !1079
  store i8** %71, i8*** %6, align 8, !dbg !1081
  br label %72, !dbg !1082

; <label>:72:                                     ; preds = %130, %66
  %73 = load i8**, i8*** %6, align 8, !dbg !1083
  %74 = load i8*, i8** %73, align 8, !dbg !1086
  %75 = icmp ne i8* %74, null, !dbg !1087
  br i1 %75, label %76, label %133, !dbg !1088

; <label>:76:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1089, metadata !474), !dbg !1091
  %77 = load i8**, i8*** %6, align 8, !dbg !1092
  %78 = load i8*, i8** %77, align 8, !dbg !1093
  store i8* %78, i8** %7, align 8, !dbg !1091
  %79 = load i8*, i8** %7, align 8, !dbg !1094
  %80 = load i8, i8* %79, align 1, !dbg !1096
  %81 = sext i8 %80 to i32, !dbg !1096
  %82 = icmp eq i32 %81, 0, !dbg !1097
  br i1 %82, label %83, label %84, !dbg !1098

; <label>:83:                                     ; preds = %76
  br label %130, !dbg !1099

; <label>:84:                                     ; preds = %76
  %85 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1100
  %86 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1101
  %87 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %86, i32 0, i32 4, !dbg !1102
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %87, align 8, !dbg !1102
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 26, !dbg !1103
  %90 = load i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8)** %89, align 8, !dbg !1103
  %91 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1104
  %92 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %91, i32 0, i32 4, !dbg !1105
  %93 = load %struct._SERVER_REC*, %struct._SERVER_REC** %92, align 8, !dbg !1105
  %94 = load i8*, i8** %7, align 8, !dbg !1106
  %95 = load i8, i8* %94, align 1, !dbg !1107
  %96 = call i32 %90(%struct._SERVER_REC* %93, i8 signext %95), !dbg !1101
  %97 = icmp ne i32 %96, 0, !dbg !1101
  br i1 %97, label %98, label %101, !dbg !1101

; <label>:98:                                     ; preds = %84
  %99 = load i8*, i8** %7, align 8, !dbg !1108
  %100 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !1109
  br label %103, !dbg !1110

; <label>:101:                                    ; preds = %84
  %102 = load i8*, i8** %7, align 8, !dbg !1112
  br label %103, !dbg !1113

; <label>:103:                                    ; preds = %101, %98
  %104 = phi i8* [ %100, %98 ], [ %102, %101 ], !dbg !1115
  %105 = call %struct._NICK_REC* @nicklist_find_mask(%struct._CHANNEL_REC* %85, i8* %104), !dbg !1117
  store %struct._NICK_REC* %105, %struct._NICK_REC** %4, align 8, !dbg !1118
  %106 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1119
  %107 = icmp ne %struct._NICK_REC* %106, null, !dbg !1121
  br i1 %107, label %108, label %129, !dbg !1122

; <label>:108:                                    ; preds = %103
  %109 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1123
  %110 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %109, i32 0, i32 4, !dbg !1124
  %111 = load %struct._SERVER_REC*, %struct._SERVER_REC** %110, align 8, !dbg !1124
  %112 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1125
  %113 = load i8*, i8** %7, align 8, !dbg !1126
  %114 = load i8, i8* %113, align 1, !dbg !1127
  %115 = call i32 @match_nick_flags(%struct._SERVER_REC* %111, %struct._NICK_REC* %112, i8 signext %114), !dbg !1128
  %116 = icmp ne i32 %115, 0, !dbg !1128
  br i1 %116, label %117, label %129, !dbg !1129

; <label>:117:                                    ; preds = %108
  %118 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1130
  %119 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %118, i32 0, i32 6, !dbg !1132
  %120 = load i8*, i8** %119, align 8, !dbg !1132
  %121 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1133
  %122 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %121, i32 0, i32 3, !dbg !1134
  %123 = load i8*, i8** %122, align 8, !dbg !1134
  %124 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1135
  %125 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %124, i32 0, i32 4, !dbg !1136
  %126 = load %struct._SERVER_REC*, %struct._SERVER_REC** %125, align 8, !dbg !1136
  %127 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1137
  %128 = bitcast %struct._CHANNEL_REC* %127 to i8*, !dbg !1137
  call void @eval_special_string(i8* %120, i8* %123, %struct._SERVER_REC* %126, i8* %128), !dbg !1138
  br label %133, !dbg !1139

; <label>:129:                                    ; preds = %108, %103
  br label %130, !dbg !1140

; <label>:130:                                    ; preds = %129, %83
  %131 = load i8**, i8*** %6, align 8, !dbg !1141
  %132 = getelementptr inbounds i8*, i8** %131, i32 1, !dbg !1141
  store i8** %132, i8*** %6, align 8, !dbg !1141
  br label %72, !dbg !1143, !llvm.loop !1144

; <label>:133:                                    ; preds = %117, %72
  %134 = load i8**, i8*** %5, align 8, !dbg !1146
  call void @g_strfreev(i8** %134), !dbg !1147
  br label %135, !dbg !1148

; <label>:135:                                    ; preds = %133, %65, %53, %27, %17
  ret void, !dbg !1149
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare %struct._NICK_REC* @nicklist_find_mask(%struct._CHANNEL_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @match_nick_flags(%struct._SERVER_REC*, %struct._NICK_REC*, i8 signext) #0 !dbg !1151 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1154, metadata !474), !dbg !1155
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1156, metadata !474), !dbg !1157
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1158, metadata !474), !dbg !1159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1160, metadata !474), !dbg !1161
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1162
  %9 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %8, i32 0, i32 28, !dbg !1163
  %10 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %9, align 8, !dbg !1163
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1164
  %12 = call i8* %10(%struct._SERVER_REC* %11), !dbg !1162
  store i8* %12, i8** %7, align 8, !dbg !1161
  %13 = load i8*, i8** %7, align 8, !dbg !1165
  %14 = load i8, i8* %6, align 1, !dbg !1166
  %15 = sext i8 %14 to i32, !dbg !1166
  %16 = call i8* @strchr(i8* %13, i32 %15) #6, !dbg !1167
  %17 = icmp eq i8* %16, null, !dbg !1168
  br i1 %17, label %94, label %18, !dbg !1169

; <label>:18:                                     ; preds = %3
  %19 = load i8, i8* %6, align 1, !dbg !1170
  %20 = sext i8 %19 to i32, !dbg !1170
  %21 = load i8*, i8** %7, align 8, !dbg !1171
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !1171
  %23 = load i8, i8* %22, align 1, !dbg !1171
  %24 = sext i8 %23 to i32, !dbg !1171
  %25 = icmp eq i32 %20, %24, !dbg !1172
  br i1 %25, label %26, label %34, !dbg !1173

; <label>:26:                                     ; preds = %18
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1174
  %28 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %27, i32 0, i32 7, !dbg !1176
  %29 = load i8, i8* %28, align 4, !dbg !1176
  %30 = lshr i8 %29, 3, !dbg !1176
  %31 = and i8 %30, 1, !dbg !1176
  %32 = zext i8 %31 to i32, !dbg !1176
  %33 = icmp ne i32 %32, 0, !dbg !1174
  br i1 %33, label %94, label %34, !dbg !1177

; <label>:34:                                     ; preds = %26, %18
  %35 = load i8, i8* %6, align 1, !dbg !1178
  %36 = sext i8 %35 to i32, !dbg !1178
  %37 = load i8*, i8** %7, align 8, !dbg !1179
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1179
  %39 = load i8, i8* %38, align 1, !dbg !1179
  %40 = sext i8 %39 to i32, !dbg !1179
  %41 = icmp eq i32 %36, %40, !dbg !1180
  br i1 %41, label %42, label %66, !dbg !1181

; <label>:42:                                     ; preds = %34
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1182
  %44 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %43, i32 0, i32 7, !dbg !1183
  %45 = load i8, i8* %44, align 4, !dbg !1183
  %46 = lshr i8 %45, 5, !dbg !1183
  %47 = and i8 %46, 1, !dbg !1183
  %48 = zext i8 %47 to i32, !dbg !1183
  %49 = icmp ne i32 %48, 0, !dbg !1182
  br i1 %49, label %94, label %50, !dbg !1184

; <label>:50:                                     ; preds = %42
  %51 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1185
  %52 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %51, i32 0, i32 7, !dbg !1187
  %53 = load i8, i8* %52, align 4, !dbg !1187
  %54 = lshr i8 %53, 4, !dbg !1187
  %55 = and i8 %54, 1, !dbg !1187
  %56 = zext i8 %55 to i32, !dbg !1187
  %57 = icmp ne i32 %56, 0, !dbg !1185
  br i1 %57, label %94, label %58, !dbg !1188

; <label>:58:                                     ; preds = %50
  %59 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1189
  %60 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %59, i32 0, i32 7, !dbg !1190
  %61 = load i8, i8* %60, align 4, !dbg !1190
  %62 = lshr i8 %61, 3, !dbg !1190
  %63 = and i8 %62, 1, !dbg !1190
  %64 = zext i8 %63 to i32, !dbg !1190
  %65 = icmp ne i32 %64, 0, !dbg !1189
  br i1 %65, label %94, label %66, !dbg !1191

; <label>:66:                                     ; preds = %58, %34
  %67 = load i8, i8* %6, align 1, !dbg !1192
  %68 = sext i8 %67 to i32, !dbg !1192
  %69 = load i8*, i8** %7, align 8, !dbg !1193
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !1193
  %71 = load i8, i8* %70, align 1, !dbg !1193
  %72 = sext i8 %71 to i32, !dbg !1193
  %73 = icmp eq i32 %68, %72, !dbg !1194
  br i1 %73, label %74, label %92, !dbg !1195

; <label>:74:                                     ; preds = %66
  %75 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1196
  %76 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %75, i32 0, i32 7, !dbg !1197
  %77 = load i8, i8* %76, align 4, !dbg !1197
  %78 = lshr i8 %77, 4, !dbg !1197
  %79 = and i8 %78, 1, !dbg !1197
  %80 = zext i8 %79 to i32, !dbg !1197
  %81 = icmp ne i32 %80, 0, !dbg !1196
  br i1 %81, label %90, label %82, !dbg !1198

; <label>:82:                                     ; preds = %74
  %83 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1199
  %84 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %83, i32 0, i32 7, !dbg !1200
  %85 = load i8, i8* %84, align 4, !dbg !1200
  %86 = lshr i8 %85, 3, !dbg !1200
  %87 = and i8 %86, 1, !dbg !1200
  %88 = zext i8 %87 to i32, !dbg !1200
  %89 = icmp ne i32 %88, 0, !dbg !1201
  br label %90, !dbg !1201

; <label>:90:                                     ; preds = %82, %74
  %91 = phi i1 [ true, %74 ], [ %89, %82 ]
  br label %92

; <label>:92:                                     ; preds = %90, %66
  %93 = phi i1 [ false, %66 ], [ %91, %90 ]
  br label %94, !dbg !1202

; <label>:94:                                     ; preds = %92, %58, %50, %42, %26, %3
  %95 = phi i1 [ true, %58 ], [ true, %50 ], [ true, %42 ], [ true, %26 ], [ true, %3 ], [ %93, %92 ]
  %96 = zext i1 %95 to i32, !dbg !1203
  ret i32 %96, !dbg !1204
}

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define void @channels_init() #0 !dbg !1205 {
  call void @channels_setup_init(), !dbg !1206
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1207
  ret void, !dbg !1208
}

declare void @channels_setup_init() #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_connected(%struct._SERVER_REC*) #0 !dbg !1209 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GString*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1212, metadata !474), !dbg !1213
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1214, metadata !474), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1216, metadata !474), !dbg !1217
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1218, metadata !474), !dbg !1219
  br label %7, !dbg !1220, !llvm.loop !1221

; <label>:7:                                      ; preds = %1
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1222
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !1222
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1226
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !1227
  %12 = icmp ne %struct._SERVER_REC* %11, null, !dbg !1227
  br i1 %12, label %13, label %14, !dbg !1228

; <label>:13:                                     ; preds = %7
  br label %15, !dbg !1229

; <label>:14:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0)), !dbg !1232
  br label %137, !dbg !1235

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1236

; <label>:16:                                     ; preds = %15
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1238
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 3, !dbg !1240
  %19 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %18, align 8, !dbg !1240
  %20 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %19, i32 0, i32 28, !dbg !1241
  %21 = load i8, i8* %20, align 8, !dbg !1241
  %22 = and i8 %21, 1, !dbg !1241
  %23 = zext i8 %22 to i32, !dbg !1241
  %24 = icmp ne i32 %23, 0, !dbg !1238
  br i1 %24, label %35, label %25, !dbg !1242

; <label>:25:                                     ; preds = %16
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1243
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 3, !dbg !1244
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %27, align 8, !dbg !1244
  %29 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %28, i32 0, i32 28, !dbg !1245
  %30 = load i8, i8* %29, align 8, !dbg !1245
  %31 = lshr i8 %30, 2, !dbg !1245
  %32 = and i8 %31, 1, !dbg !1245
  %33 = zext i8 %32 to i32, !dbg !1245
  %34 = icmp ne i32 %33, 0, !dbg !1243
  br i1 %34, label %35, label %36, !dbg !1246

; <label>:35:                                     ; preds = %25, %16
  br label %137, !dbg !1248

; <label>:36:                                     ; preds = %25
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1249
  %38 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %37, i32 0, i32 3, !dbg !1250
  %39 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %38, align 8, !dbg !1250
  %40 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %39, i32 0, i32 12, !dbg !1251
  %41 = load i8*, i8** %40, align 8, !dbg !1251
  %42 = icmp eq i8* %41, null, !dbg !1252
  br i1 %42, label %43, label %44, !dbg !1249

; <label>:43:                                     ; preds = %36
  br label %47, !dbg !1253

; <label>:44:                                     ; preds = %36
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1254
  %46 = call %struct._GSList* @servers_find_chatnet_except(%struct._SERVER_REC* %45), !dbg !1255
  br label %47, !dbg !1256

; <label>:47:                                     ; preds = %44, %43
  %48 = phi %struct._GSList* [ null, %43 ], [ %46, %44 ], !dbg !1258
  store %struct._GSList* %48, %struct._GSList** %5, align 8, !dbg !1260
  %49 = call %struct._GString* @g_string_new(i8* null), !dbg !1261
  store %struct._GString* %49, %struct._GString** %3, align 8, !dbg !1262
  %50 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !1263
  store %struct._GSList* %50, %struct._GSList** %4, align 8, !dbg !1265
  br label %51, !dbg !1266

; <label>:51:                                     ; preds = %110, %47
  %52 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1267
  %53 = icmp ne %struct._GSList* %52, null, !dbg !1270
  br i1 %53, label %54, label %114, !dbg !1271

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %6, metadata !1272, metadata !474), !dbg !1274
  %55 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1275
  %56 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 0, !dbg !1276
  %57 = load i8*, i8** %56, align 8, !dbg !1276
  %58 = bitcast i8* %57 to %struct._CHANNEL_SETUP_REC*, !dbg !1275
  store %struct._CHANNEL_SETUP_REC* %58, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1274
  %59 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1277
  %60 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %59, i32 0, i32 7, !dbg !1279
  %61 = load i8, i8* %60, align 8, !dbg !1279
  %62 = and i8 %61, 1, !dbg !1279
  %63 = zext i8 %62 to i32, !dbg !1279
  %64 = icmp ne i32 %63, 0, !dbg !1277
  br i1 %64, label %65, label %96, !dbg !1280

; <label>:65:                                     ; preds = %54
  %66 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1281
  %67 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %66, i32 0, i32 3, !dbg !1282
  %68 = load i8*, i8** %67, align 8, !dbg !1282
  %69 = icmp eq i8* %68, null, !dbg !1283
  br i1 %69, label %97, label %70, !dbg !1284

; <label>:70:                                     ; preds = %65
  %71 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1285
  %72 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %71, i32 0, i32 3, !dbg !1287
  %73 = load i8*, i8** %72, align 8, !dbg !1287
  %74 = getelementptr inbounds i8, i8* %73, i64 0, !dbg !1288
  %75 = load i8, i8* %74, align 1, !dbg !1288
  %76 = sext i8 %75 to i32, !dbg !1288
  %77 = icmp eq i32 %76, 0, !dbg !1289
  br i1 %77, label %97, label %78, !dbg !1290

; <label>:78:                                     ; preds = %70
  %79 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1291
  %80 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %79, i32 0, i32 3, !dbg !1293
  %81 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %80, align 8, !dbg !1293
  %82 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %81, i32 0, i32 12, !dbg !1294
  %83 = load i8*, i8** %82, align 8, !dbg !1294
  %84 = icmp ne i8* %83, null, !dbg !1295
  br i1 %84, label %85, label %96, !dbg !1296

; <label>:85:                                     ; preds = %78
  %86 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1297
  %87 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %86, i32 0, i32 3, !dbg !1299
  %88 = load i8*, i8** %87, align 8, !dbg !1299
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1300
  %90 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %89, i32 0, i32 3, !dbg !1301
  %91 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %90, align 8, !dbg !1301
  %92 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %91, i32 0, i32 12, !dbg !1302
  %93 = load i8*, i8** %92, align 8, !dbg !1302
  %94 = call i32 @g_ascii_strcasecmp(i8* %88, i8* %93), !dbg !1303
  %95 = icmp eq i32 %94, 0, !dbg !1304
  br i1 %95, label %97, label %96, !dbg !1305

; <label>:96:                                     ; preds = %85, %78, %54
  br label %110, !dbg !1307

; <label>:97:                                     ; preds = %85, %70, %65
  %98 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1308
  %99 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1310
  %100 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %99, i32 0, i32 2, !dbg !1311
  %101 = load i8*, i8** %100, align 8, !dbg !1311
  %102 = call %struct._CHANNEL_REC* @channel_find_servers(%struct._GSList* %98, i8* %101), !dbg !1312
  %103 = icmp eq %struct._CHANNEL_REC* %102, null, !dbg !1313
  br i1 %103, label %104, label %109, !dbg !1314

; <label>:104:                                    ; preds = %97
  %105 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1315
  %106 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %6, align 8, !dbg !1316
  %107 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %106, i32 0, i32 2, !dbg !1317
  %108 = load i8*, i8** %107, align 8, !dbg !1317
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %108), !dbg !1318
  br label %109, !dbg !1318

; <label>:109:                                    ; preds = %104, %97
  br label %110, !dbg !1319

; <label>:110:                                    ; preds = %109, %96
  %111 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1320
  %112 = getelementptr inbounds %struct._GSList, %struct._GSList* %111, i32 0, i32 1, !dbg !1322
  %113 = load %struct._GSList*, %struct._GSList** %112, align 8, !dbg !1322
  store %struct._GSList* %113, %struct._GSList** %4, align 8, !dbg !1323
  br label %51, !dbg !1324, !llvm.loop !1325

; <label>:114:                                    ; preds = %51
  %115 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1327
  call void @g_slist_free(%struct._GSList* %115), !dbg !1328
  %116 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1329
  %117 = getelementptr inbounds %struct._GString, %struct._GString* %116, i32 0, i32 1, !dbg !1331
  %118 = load i64, i64* %117, align 8, !dbg !1331
  %119 = icmp ugt i64 %118, 0, !dbg !1332
  br i1 %119, label %120, label %134, !dbg !1333

; <label>:120:                                    ; preds = %114
  %121 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1334
  %122 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1336
  %123 = getelementptr inbounds %struct._GString, %struct._GString* %122, i32 0, i32 1, !dbg !1337
  %124 = load i64, i64* %123, align 8, !dbg !1337
  %125 = sub i64 %124, 1, !dbg !1338
  %126 = call %struct._GString* @g_string_truncate(%struct._GString* %121, i64 %125), !dbg !1339
  %127 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1340
  %128 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %127, i32 0, i32 25, !dbg !1341
  %129 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %128, align 8, !dbg !1341
  %130 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1342
  %131 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1343
  %132 = getelementptr inbounds %struct._GString, %struct._GString* %131, i32 0, i32 0, !dbg !1344
  %133 = load i8*, i8** %132, align 8, !dbg !1344
  call void %129(%struct._SERVER_REC* %130, i8* %133, i32 1), !dbg !1340
  br label %134, !dbg !1345

; <label>:134:                                    ; preds = %120, %114
  %135 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1346
  %136 = call i8* @g_string_free(%struct._GString* %135, i32 1), !dbg !1347
  br label %137, !dbg !1348

; <label>:137:                                    ; preds = %134, %35, %14
  ret void, !dbg !1349
}

; Function Attrs: nounwind uwtable
define void @channels_deinit() #0 !dbg !1350 {
  call void @channels_setup_deinit(), !dbg !1351
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1352
  ret void, !dbg !1353
}

declare void @channels_setup_deinit() #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @servers_find_chatnet_except(%struct._SERVER_REC*) #0 !dbg !1354 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1357, metadata !474), !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1359, metadata !474), !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1361, metadata !474), !dbg !1362
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1363
  %6 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1364
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1366
  br label %7, !dbg !1367

; <label>:7:                                      ; preds = %44, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1368
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1371
  br i1 %9, label %10, label %48, !dbg !1372

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1373, metadata !474), !dbg !1375
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1376
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1377
  %13 = load i8*, i8** %12, align 8, !dbg !1377
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !1376
  store %struct._SERVER_REC* %14, %struct._SERVER_REC** %5, align 8, !dbg !1375
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1378
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1380
  %17 = icmp ne %struct._SERVER_REC* %15, %16, !dbg !1381
  br i1 %17, label %18, label %43, !dbg !1382

; <label>:18:                                     ; preds = %10
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1383
  %20 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %19, i32 0, i32 3, !dbg !1385
  %21 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %20, align 8, !dbg !1385
  %22 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %21, i32 0, i32 12, !dbg !1386
  %23 = load i8*, i8** %22, align 8, !dbg !1386
  %24 = icmp ne i8* %23, null, !dbg !1387
  br i1 %24, label %25, label %43, !dbg !1388

; <label>:25:                                     ; preds = %18
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1389
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 3, !dbg !1390
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %27, align 8, !dbg !1390
  %29 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %28, i32 0, i32 12, !dbg !1391
  %30 = load i8*, i8** %29, align 8, !dbg !1391
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1392
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 3, !dbg !1393
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %32, align 8, !dbg !1393
  %34 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %33, i32 0, i32 12, !dbg !1394
  %35 = load i8*, i8** %34, align 8, !dbg !1394
  %36 = call i32 @g_strcmp0(i8* %30, i8* %35), !dbg !1395
  %37 = icmp eq i32 %36, 0, !dbg !1396
  br i1 %37, label %38, label %43, !dbg !1397

; <label>:38:                                     ; preds = %25
  %39 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1399
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1401
  %41 = bitcast %struct._SERVER_REC* %40 to i8*, !dbg !1401
  %42 = call %struct._GSList* @g_slist_append(%struct._GSList* %39, i8* %41), !dbg !1402
  store %struct._GSList* %42, %struct._GSList** %4, align 8, !dbg !1403
  br label %43, !dbg !1404

; <label>:43:                                     ; preds = %38, %25, %18, %10
  br label %44, !dbg !1405

; <label>:44:                                     ; preds = %43
  %45 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1406
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !1408
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !1408
  store %struct._GSList* %47, %struct._GSList** %3, align 8, !dbg !1409
  br label %7, !dbg !1410, !llvm.loop !1411

; <label>:48:                                     ; preds = %7
  %49 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1413
  ret %struct._GSList* %49, !dbg !1414
}

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_REC* @channel_find_servers(%struct._GSList*, i8*) #0 !dbg !1415 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  store %struct._GSList* %0, %struct._GSList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1418, metadata !474), !dbg !1419
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1420, metadata !474), !dbg !1421
  %5 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1422
  %6 = load i8*, i8** %4, align 8, !dbg !1423
  %7 = call i8* @gslist_foreach_find(%struct._GSList* %5, i8* (i8*, i8*)* bitcast (%struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)* @channel_find_server to i8* (i8*, i8*)*), i8* %6), !dbg !1424
  %8 = bitcast i8* %7 to %struct._CHANNEL_REC*, !dbg !1424
  ret %struct._CHANNEL_REC* %8, !dbg !1425
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare i32 @g_strcmp0(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!466, !467}
!llvm.ident = !{!468}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !463)
!1 = !DIFile(filename: "line19-channels.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !50, !51, !53, !69, !451, !456}
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
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !48, line: 109, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !56, line: 15, size: 1408, align: 64, elements: !57)
!56 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !{!58, !61, !62, !67, !68, !393, !394, !395, !396, !397, !398, !399, !403, !405, !406, !407, !408, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
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
!73 = !{!74, !76, !77, !78, !306, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !324, !328, !329, !330, !334, !335, !336, !337, !338, !339, !340, !341, !342, !348, !349, !350, !351, !352, !356, !360, !364, !368, !372, !377, !381, !388, !392}
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
!380 = !{!53, !69, !41}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !71, file: !75, line: 70, baseType: !382, size: 64, align: 64, offset: 2048)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !69, !41}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !48, line: 110, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !48, line: 110, flags: DIFlagFwdDecl)
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
!403 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !55, file: !404, line: 5, baseType: !88, size: 64, align: 64, offset: 704)
!404 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !55, file: !404, line: 6, baseType: !88, size: 64, align: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !55, file: !404, line: 7, baseType: !307, size: 64, align: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !55, file: !404, line: 9, baseType: !63, size: 64, align: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !55, file: !404, line: 10, baseType: !409, size: 64, align: 64, offset: 960)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !48, line: 111, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !412, line: 13, size: 576, align: 64, elements: !413)
!412 = !DIFile(filename: "nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!413 = !{!414, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !432, !433}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !415, line: 3, baseType: !60, size: 32, align: 32)
!415 = !DIFile(filename: "nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !411, file: !415, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !411, file: !415, line: 6, baseType: !307, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !411, file: !415, line: 8, baseType: !88, size: 64, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !411, file: !415, line: 9, baseType: !88, size: 64, align: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !411, file: !415, line: 10, baseType: !88, size: 64, align: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !411, file: !415, line: 11, baseType: !60, size: 32, align: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !411, file: !415, line: 14, baseType: !147, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !411, file: !415, line: 15, baseType: !147, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !411, file: !415, line: 18, baseType: !147, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !411, file: !415, line: 19, baseType: !147, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !411, file: !415, line: 20, baseType: !147, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !411, file: !415, line: 21, baseType: !147, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !411, file: !415, line: 22, baseType: !429, size: 64, align: 8, offset: 360)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, align: 8, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 8)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !411, file: !415, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !415, line: 28, baseType: !409, size: 64, align: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !55, file: !404, line: 12, baseType: !147, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !55, file: !404, line: 13, baseType: !88, size: 64, align: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !55, file: !404, line: 14, baseType: !60, size: 32, align: 32, offset: 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !55, file: !404, line: 15, baseType: !88, size: 64, align: 64, offset: 1216)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !55, file: !404, line: 17, baseType: !147, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !55, file: !404, line: 18, baseType: !147, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !55, file: !404, line: 19, baseType: !147, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !55, file: !404, line: 20, baseType: !147, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !55, file: !404, line: 22, baseType: !147, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !55, file: !404, line: 23, baseType: !147, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !55, file: !404, line: 24, baseType: !147, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !55, file: !404, line: 25, baseType: !147, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !55, file: !404, line: 26, baseType: !147, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !55, file: !404, line: 31, baseType: !448, size: 64, align: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!88, !53}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FOREACH_FIND_FUNC", file: !452, line: 11, baseType: !453)
!452 = !DIFile(filename: "misc.h", directory: "/home/lichi/Desktop/irssi/task1")
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!36, !36, !36}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !457, line: 9, baseType: !458)
!457 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461, !461, !461, !461, !461, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!463 = !{!464}
!464 = distinct !DIGlobalVariable(name: "channels", scope: !0, file: !465, line: 31, type: !235, isLocal: false, isDefinition: true, variable: %struct._GSList** @channels)
!465 = !DIFile(filename: "channels.c", directory: "/home/lichi/Desktop/irssi/task1")
!466 = !{i32 2, !"Dwarf Version", i32 4}
!467 = !{i32 2, !"Debug Info Version", i32 3}
!468 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!469 = distinct !DISubprogram(name: "channel_init", scope: !465, file: !465, line: 43, type: !470, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !53, !69, !41, !41, !60}
!472 = !{}
!473 = !DILocalVariable(name: "channel", arg: 1, scope: !469, file: !465, line: 43, type: !53)
!474 = !DIExpression()
!475 = !DILocation(line: 43, column: 32, scope: !469)
!476 = !DILocalVariable(name: "server", arg: 2, scope: !469, file: !465, line: 43, type: !69)
!477 = !DILocation(line: 43, column: 53, scope: !469)
!478 = !DILocalVariable(name: "name", arg: 3, scope: !469, file: !465, line: 43, type: !41)
!479 = !DILocation(line: 43, column: 73, scope: !469)
!480 = !DILocalVariable(name: "visible_name", arg: 4, scope: !469, file: !465, line: 44, type: !41)
!481 = !DILocation(line: 44, column: 17, scope: !469)
!482 = !DILocalVariable(name: "automatic", arg: 5, scope: !469, file: !465, line: 44, type: !60)
!483 = !DILocation(line: 44, column: 35, scope: !469)
!484 = !DILocation(line: 46, column: 2, scope: !469)
!485 = distinct !{!485, !484}
!486 = !DILocation(line: 46, column: 10, scope: !487)
!487 = !DILexicalBlockFile(scope: !488, file: !465, discriminator: 1)
!488 = distinct !DILexicalBlock(scope: !489, file: !465, line: 46, column: 10)
!489 = distinct !DILexicalBlock(scope: !469, file: !465, line: 46, column: 4)
!490 = !DILocation(line: 46, column: 18, scope: !487)
!491 = !DILocation(line: 46, column: 5, scope: !492)
!492 = !DILexicalBlockFile(scope: !493, file: !465, discriminator: 2)
!493 = distinct !DILexicalBlock(scope: !488, file: !465, line: 46, column: 3)
!494 = !DILocation(line: 46, column: 14, scope: !495)
!495 = !DILexicalBlockFile(scope: !496, file: !465, discriminator: 3)
!496 = distinct !DILexicalBlock(scope: !488, file: !465, line: 46, column: 12)
!497 = !DILocation(line: 46, column: 102, scope: !495)
!498 = !DILocation(line: 46, column: 113, scope: !499)
!499 = !DILexicalBlockFile(scope: !489, file: !465, discriminator: 4)
!500 = !DILocation(line: 47, column: 2, scope: !469)
!501 = distinct !{!501, !500}
!502 = !DILocation(line: 47, column: 10, scope: !503)
!503 = !DILexicalBlockFile(scope: !504, file: !465, discriminator: 1)
!504 = distinct !DILexicalBlock(scope: !505, file: !465, line: 47, column: 10)
!505 = distinct !DILexicalBlock(scope: !469, file: !465, line: 47, column: 4)
!506 = !DILocation(line: 47, column: 15, scope: !503)
!507 = !DILocation(line: 47, column: 5, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !465, discriminator: 2)
!509 = distinct !DILexicalBlock(scope: !504, file: !465, line: 47, column: 3)
!510 = !DILocation(line: 47, column: 14, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !465, discriminator: 3)
!512 = distinct !DILexicalBlock(scope: !504, file: !465, line: 47, column: 12)
!513 = !DILocation(line: 47, column: 99, scope: !511)
!514 = !DILocation(line: 47, column: 110, scope: !515)
!515 = !DILexicalBlockFile(scope: !505, file: !465, discriminator: 4)
!516 = !DILocation(line: 48, column: 2, scope: !469)
!517 = distinct !{!517, !516}
!518 = !DILocation(line: 48, column: 10, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !465, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !521, file: !465, line: 48, column: 10)
!521 = distinct !DILexicalBlock(scope: !469, file: !465, line: 48, column: 4)
!522 = !DILocation(line: 48, column: 17, scope: !519)
!523 = !DILocation(line: 48, column: 5, scope: !524)
!524 = !DILexicalBlockFile(scope: !525, file: !465, discriminator: 2)
!525 = distinct !DILexicalBlock(scope: !520, file: !465, line: 48, column: 3)
!526 = !DILocation(line: 48, column: 14, scope: !527)
!527 = !DILexicalBlockFile(scope: !528, file: !465, discriminator: 3)
!528 = distinct !DILexicalBlock(scope: !520, file: !465, line: 48, column: 12)
!529 = !DILocation(line: 48, column: 101, scope: !527)
!530 = !DILocation(line: 48, column: 112, scope: !531)
!531 = !DILexicalBlockFile(scope: !521, file: !465, discriminator: 4)
!532 = !DILocation(line: 50, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !469, file: !465, line: 50, column: 6)
!534 = !DILocation(line: 50, column: 19, scope: !533)
!535 = !DILocation(line: 50, column: 6, scope: !469)
!536 = !DILocation(line: 51, column: 18, scope: !533)
!537 = !DILocation(line: 51, column: 16, scope: !533)
!538 = !DILocation(line: 51, column: 3, scope: !533)
!539 = !DILocation(line: 53, column: 34, scope: !469)
!540 = !DILocation(line: 53, column: 10, scope: !469)
!541 = !DILocation(line: 53, column: 20, scope: !469)
!542 = !DILocation(line: 53, column: 32, scope: !469)
!543 = !DILocation(line: 54, column: 18, scope: !469)
!544 = !DILocation(line: 54, column: 2, scope: !469)
!545 = !DILocation(line: 54, column: 11, scope: !469)
!546 = !DILocation(line: 54, column: 16, scope: !469)
!547 = !DILocation(line: 55, column: 9, scope: !469)
!548 = !DILocation(line: 55, column: 18, scope: !469)
!549 = !DILocation(line: 55, column: 26, scope: !469)
!550 = !DILocation(line: 56, column: 2, scope: !469)
!551 = !DILocation(line: 56, column: 11, scope: !469)
!552 = !DILocation(line: 56, column: 22, scope: !469)
!553 = !DILocation(line: 57, column: 9, scope: !469)
!554 = !DILocation(line: 57, column: 18, scope: !469)
!555 = !DILocation(line: 57, column: 32, scope: !469)
!556 = !DILocation(line: 59, column: 23, scope: !469)
!557 = !DILocation(line: 59, column: 31, scope: !469)
!558 = !DILocation(line: 59, column: 2, scope: !469)
!559 = !DILocation(line: 59, column: 11, scope: !469)
!560 = !DILocation(line: 59, column: 21, scope: !469)
!561 = !DILocation(line: 60, column: 20, scope: !469)
!562 = !DILocation(line: 60, column: 2, scope: !469)
!563 = !DILocation(line: 60, column: 11, scope: !469)
!564 = !DILocation(line: 60, column: 18, scope: !469)
!565 = !DILocation(line: 61, column: 27, scope: !469)
!566 = !DILocation(line: 61, column: 18, scope: !469)
!567 = !DILocation(line: 61, column: 2, scope: !469)
!568 = !DILocation(line: 61, column: 11, scope: !469)
!569 = !DILocation(line: 61, column: 16, scope: !469)
!570 = !DILocation(line: 62, column: 35, scope: !469)
!571 = !DILocation(line: 62, column: 26, scope: !469)
!572 = !DILocation(line: 62, column: 2, scope: !469)
!573 = !DILocation(line: 62, column: 11, scope: !469)
!574 = !DILocation(line: 62, column: 24, scope: !469)
!575 = !DILocation(line: 63, column: 18, scope: !469)
!576 = !DILocation(line: 63, column: 2, scope: !469)
!577 = !DILocation(line: 63, column: 11, scope: !469)
!578 = !DILocation(line: 63, column: 16, scope: !469)
!579 = !DILocation(line: 64, column: 24, scope: !469)
!580 = !DILocation(line: 64, column: 2, scope: !469)
!581 = !DILocation(line: 64, column: 11, scope: !469)
!582 = !DILocation(line: 64, column: 22, scope: !469)
!583 = !DILocation(line: 66, column: 28, scope: !469)
!584 = !DILocation(line: 66, column: 38, scope: !469)
!585 = !DILocation(line: 66, column: 13, scope: !469)
!586 = !DILocation(line: 66, column: 11, scope: !469)
!587 = !DILocation(line: 67, column: 36, scope: !469)
!588 = !DILocation(line: 67, column: 44, scope: !469)
!589 = !DILocation(line: 67, column: 54, scope: !469)
!590 = !DILocation(line: 67, column: 21, scope: !469)
!591 = !DILocation(line: 67, column: 2, scope: !469)
!592 = !DILocation(line: 67, column: 10, scope: !469)
!593 = !DILocation(line: 67, column: 19, scope: !469)
!594 = !DILocation(line: 69, column: 36, scope: !469)
!595 = !DILocation(line: 69, column: 66, scope: !469)
!596 = !DILocation(line: 69, column: 57, scope: !469)
!597 = !DILocation(line: 69, column: 46, scope: !469)
!598 = !DILocation(line: 69, column: 2, scope: !469)
!599 = !DILocation(line: 70, column: 1, scope: !469)
!600 = !DILocation(line: 70, column: 1, scope: !601)
!601 = !DILexicalBlockFile(scope: !469, file: !465, discriminator: 1)
!602 = distinct !DISubprogram(name: "channel_destroy", scope: !465, file: !465, line: 72, type: !603, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !53}
!605 = !DILocalVariable(name: "channel", arg: 1, scope: !602, file: !465, line: 72, type: !53)
!606 = !DILocation(line: 72, column: 35, scope: !602)
!607 = !DILocation(line: 74, column: 2, scope: !602)
!608 = distinct !{!608, !607}
!609 = !DILocation(line: 74, column: 53, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !465, discriminator: 1)
!611 = distinct !DILexicalBlock(scope: !612, file: !465, line: 74, column: 10)
!612 = distinct !DILexicalBlock(scope: !602, file: !465, line: 74, column: 4)
!613 = !DILocation(line: 74, column: 28, scope: !610)
!614 = !DILocation(line: 74, column: 12, scope: !610)
!615 = !DILocation(line: 74, column: 10, scope: !610)
!616 = !DILocation(line: 74, column: 11, scope: !617)
!617 = !DILexicalBlockFile(scope: !611, file: !465, discriminator: 2)
!618 = !DILocation(line: 74, column: 10, scope: !619)
!619 = !DILexicalBlockFile(scope: !612, file: !465, discriminator: 3)
!620 = !DILocation(line: 74, column: 54, scope: !621)
!621 = !DILexicalBlockFile(scope: !622, file: !465, discriminator: 4)
!622 = distinct !DILexicalBlock(scope: !611, file: !465, line: 74, column: 52)
!623 = !DILocation(line: 74, column: 63, scope: !624)
!624 = !DILexicalBlockFile(scope: !625, file: !465, discriminator: 5)
!625 = distinct !DILexicalBlock(scope: !611, file: !465, line: 74, column: 61)
!626 = !DILocation(line: 74, column: 155, scope: !624)
!627 = !DILocation(line: 74, column: 166, scope: !628)
!628 = !DILexicalBlockFile(scope: !612, file: !465, discriminator: 6)
!629 = !DILocation(line: 76, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !602, file: !465, line: 76, column: 6)
!631 = !DILocation(line: 76, column: 15, scope: !630)
!632 = !DILocation(line: 76, column: 6, scope: !602)
!633 = !DILocation(line: 76, column: 27, scope: !634)
!634 = !DILexicalBlockFile(scope: !630, file: !465, discriminator: 1)
!635 = !DILocation(line: 77, column: 2, scope: !602)
!636 = !DILocation(line: 77, column: 11, scope: !602)
!637 = !DILocation(line: 77, column: 22, scope: !602)
!638 = !DILocation(line: 79, column: 28, scope: !602)
!639 = !DILocation(line: 79, column: 38, scope: !602)
!640 = !DILocation(line: 79, column: 13, scope: !602)
!641 = !DILocation(line: 79, column: 11, scope: !602)
!642 = !DILocation(line: 81, column: 18, scope: !602)
!643 = !DILocation(line: 81, column: 27, scope: !602)
!644 = !DILocation(line: 81, column: 35, scope: !602)
!645 = !DILocation(line: 81, column: 45, scope: !602)
!646 = !DILocation(line: 81, column: 3, scope: !602)
!647 = !DILocation(line: 80, column: 2, scope: !602)
!648 = !DILocation(line: 80, column: 11, scope: !602)
!649 = !DILocation(line: 80, column: 19, scope: !602)
!650 = !DILocation(line: 80, column: 28, scope: !602)
!651 = !DILocation(line: 83, column: 38, scope: !602)
!652 = !DILocation(line: 83, column: 2, scope: !602)
!653 = !DILocation(line: 85, column: 31, scope: !602)
!654 = !DILocation(line: 85, column: 41, scope: !602)
!655 = !DILocation(line: 85, column: 9, scope: !602)
!656 = !DILocation(line: 86, column: 9, scope: !602)
!657 = !DILocation(line: 86, column: 18, scope: !602)
!658 = !DILocation(line: 86, column: 2, scope: !602)
!659 = !DILocation(line: 87, column: 9, scope: !602)
!660 = !DILocation(line: 87, column: 18, scope: !602)
!661 = !DILocation(line: 87, column: 2, scope: !602)
!662 = !DILocation(line: 88, column: 9, scope: !602)
!663 = !DILocation(line: 88, column: 18, scope: !602)
!664 = !DILocation(line: 88, column: 2, scope: !602)
!665 = !DILocation(line: 89, column: 9, scope: !602)
!666 = !DILocation(line: 89, column: 18, scope: !602)
!667 = !DILocation(line: 89, column: 2, scope: !602)
!668 = !DILocation(line: 90, column: 9, scope: !602)
!669 = !DILocation(line: 90, column: 18, scope: !602)
!670 = !DILocation(line: 90, column: 2, scope: !602)
!671 = !DILocation(line: 91, column: 9, scope: !602)
!672 = !DILocation(line: 91, column: 18, scope: !602)
!673 = !DILocation(line: 91, column: 2, scope: !602)
!674 = !DILocation(line: 92, column: 9, scope: !602)
!675 = !DILocation(line: 92, column: 18, scope: !602)
!676 = !DILocation(line: 92, column: 2, scope: !602)
!677 = !DILocation(line: 94, column: 9, scope: !602)
!678 = !DILocation(line: 94, column: 18, scope: !602)
!679 = !DILocation(line: 94, column: 23, scope: !602)
!680 = !DILocation(line: 95, column: 9, scope: !602)
!681 = !DILocation(line: 95, column: 2, scope: !602)
!682 = !DILocation(line: 96, column: 1, scope: !602)
!683 = !DILocation(line: 96, column: 1, scope: !684)
!684 = !DILexicalBlockFile(scope: !602, file: !465, discriminator: 1)
!685 = distinct !DISubprogram(name: "channel_get_target", scope: !465, file: !465, line: 38, type: !401, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!686 = !DILocalVariable(name: "item", arg: 1, scope: !685, file: !465, line: 38, type: !46)
!687 = !DILocation(line: 38, column: 52, scope: !685)
!688 = !DILocation(line: 40, column: 26, scope: !685)
!689 = !DILocation(line: 40, column: 33, scope: !685)
!690 = !DILocation(line: 40, column: 2, scope: !685)
!691 = distinct !DISubprogram(name: "get_join_data", scope: !465, file: !465, line: 33, type: !449, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!692 = !DILocalVariable(name: "channel", arg: 1, scope: !691, file: !465, line: 33, type: !53)
!693 = !DILocation(line: 33, column: 41, scope: !691)
!694 = !DILocation(line: 35, column: 18, scope: !691)
!695 = !DILocation(line: 35, column: 27, scope: !691)
!696 = !DILocation(line: 35, column: 9, scope: !691)
!697 = !DILocation(line: 35, column: 2, scope: !691)
!698 = distinct !DISubprogram(name: "channel_find", scope: !465, file: !465, line: 120, type: !379, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!699 = !DILocalVariable(name: "server", arg: 1, scope: !698, file: !465, line: 120, type: !69)
!700 = !DILocation(line: 120, column: 39, scope: !698)
!701 = !DILocalVariable(name: "name", arg: 2, scope: !698, file: !465, line: 120, type: !41)
!702 = !DILocation(line: 120, column: 59, scope: !698)
!703 = !DILocation(line: 122, column: 2, scope: !698)
!704 = distinct !{!704, !703}
!705 = !DILocation(line: 122, column: 10, scope: !706)
!706 = !DILexicalBlockFile(scope: !707, file: !465, discriminator: 1)
!707 = distinct !DILexicalBlock(scope: !708, file: !465, line: 122, column: 10)
!708 = distinct !DILexicalBlock(scope: !698, file: !465, line: 122, column: 4)
!709 = !DILocation(line: 122, column: 17, scope: !706)
!710 = !DILocation(line: 122, column: 1, scope: !706)
!711 = !DILocation(line: 122, column: 39, scope: !712)
!712 = !DILexicalBlockFile(scope: !707, file: !465, discriminator: 2)
!713 = !DILocation(line: 122, column: 21, scope: !712)
!714 = !DILocation(line: 122, column: 6, scope: !712)
!715 = !DILocation(line: 122, column: 10, scope: !712)
!716 = !DILocation(line: 122, column: 5, scope: !717)
!717 = !DILexicalBlockFile(scope: !707, file: !465, discriminator: 3)
!718 = !DILocation(line: 122, column: 10, scope: !719)
!719 = !DILexicalBlockFile(scope: !708, file: !465, discriminator: 4)
!720 = !DILocation(line: 122, column: 33, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !465, discriminator: 5)
!722 = distinct !DILexicalBlock(scope: !707, file: !465, line: 122, column: 31)
!723 = !DILocation(line: 122, column: 42, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !465, discriminator: 6)
!725 = distinct !DILexicalBlock(scope: !707, file: !465, line: 122, column: 40)
!726 = !DILocation(line: 122, column: 150, scope: !724)
!727 = !DILocation(line: 122, column: 7, scope: !728)
!728 = !DILexicalBlockFile(scope: !708, file: !465, discriminator: 7)
!729 = !DILocation(line: 123, column: 2, scope: !698)
!730 = distinct !{!730, !729}
!731 = !DILocation(line: 123, column: 10, scope: !732)
!732 = !DILexicalBlockFile(scope: !733, file: !465, discriminator: 1)
!733 = distinct !DILexicalBlock(scope: !734, file: !465, line: 123, column: 10)
!734 = distinct !DILexicalBlock(scope: !698, file: !465, line: 123, column: 4)
!735 = !DILocation(line: 123, column: 15, scope: !732)
!736 = !DILocation(line: 123, column: 5, scope: !737)
!737 = !DILexicalBlockFile(scope: !738, file: !465, discriminator: 2)
!738 = distinct !DILexicalBlock(scope: !733, file: !465, line: 123, column: 3)
!739 = !DILocation(line: 123, column: 14, scope: !740)
!740 = !DILexicalBlockFile(scope: !741, file: !465, discriminator: 3)
!741 = distinct !DILexicalBlock(scope: !733, file: !465, line: 123, column: 12)
!742 = !DILocation(line: 123, column: 99, scope: !740)
!743 = !DILocation(line: 123, column: 7, scope: !744)
!744 = !DILexicalBlockFile(scope: !734, file: !465, discriminator: 4)
!745 = !DILocation(line: 125, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !698, file: !465, line: 125, column: 6)
!747 = !DILocation(line: 125, column: 13, scope: !746)
!748 = !DILocation(line: 125, column: 6, scope: !698)
!749 = !DILocation(line: 126, column: 30, scope: !746)
!750 = !DILocation(line: 126, column: 38, scope: !746)
!751 = !DILocation(line: 126, column: 10, scope: !746)
!752 = !DILocation(line: 126, column: 3, scope: !746)
!753 = !DILocation(line: 129, column: 29, scope: !698)
!754 = !DILocation(line: 131, column: 17, scope: !698)
!755 = !DILocation(line: 129, column: 9, scope: !698)
!756 = !DILocation(line: 129, column: 2, scope: !698)
!757 = !DILocation(line: 132, column: 1, scope: !698)
!758 = distinct !DISubprogram(name: "channel_find_server", scope: !465, file: !465, line: 98, type: !379, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!759 = !DILocalVariable(name: "server", arg: 1, scope: !758, file: !465, line: 98, type: !69)
!760 = !DILocation(line: 98, column: 53, scope: !758)
!761 = !DILocalVariable(name: "name", arg: 2, scope: !758, file: !465, line: 99, type: !41)
!762 = !DILocation(line: 99, column: 18, scope: !758)
!763 = !DILocalVariable(name: "tmp", scope: !758, file: !465, line: 101, type: !235)
!764 = !DILocation(line: 101, column: 10, scope: !758)
!765 = !DILocation(line: 103, column: 2, scope: !758)
!766 = distinct !{!766, !765}
!767 = !DILocation(line: 103, column: 45, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !465, discriminator: 1)
!769 = distinct !DILexicalBlock(scope: !770, file: !465, line: 103, column: 10)
!770 = distinct !DILexicalBlock(scope: !758, file: !465, line: 103, column: 4)
!771 = !DILocation(line: 103, column: 27, scope: !768)
!772 = !DILocation(line: 103, column: 12, scope: !768)
!773 = !DILocation(line: 103, column: 10, scope: !768)
!774 = !DILocation(line: 103, column: 11, scope: !775)
!775 = !DILexicalBlockFile(scope: !769, file: !465, discriminator: 2)
!776 = !DILocation(line: 103, column: 10, scope: !777)
!777 = !DILexicalBlockFile(scope: !770, file: !465, discriminator: 3)
!778 = !DILocation(line: 103, column: 33, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !465, discriminator: 4)
!780 = distinct !DILexicalBlock(scope: !769, file: !465, line: 103, column: 31)
!781 = !DILocation(line: 103, column: 42, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !465, discriminator: 5)
!783 = distinct !DILexicalBlock(scope: !769, file: !465, line: 103, column: 40)
!784 = !DILocation(line: 103, column: 132, scope: !782)
!785 = !DILocation(line: 103, column: 7, scope: !786)
!786 = !DILexicalBlockFile(scope: !770, file: !465, discriminator: 6)
!787 = !DILocation(line: 105, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !758, file: !465, line: 105, column: 6)
!789 = !DILocation(line: 105, column: 14, scope: !788)
!790 = !DILocation(line: 105, column: 32, scope: !788)
!791 = !DILocation(line: 105, column: 6, scope: !758)
!792 = !DILocation(line: 107, column: 10, scope: !793)
!793 = distinct !DILexicalBlock(scope: !788, file: !465, line: 105, column: 40)
!794 = !DILocation(line: 107, column: 18, scope: !793)
!795 = !DILocation(line: 107, column: 36, scope: !793)
!796 = !DILocation(line: 107, column: 44, scope: !793)
!797 = !DILocation(line: 107, column: 3, scope: !793)
!798 = !DILocation(line: 110, column: 13, scope: !799)
!799 = distinct !DILexicalBlock(scope: !758, file: !465, line: 110, column: 2)
!800 = !DILocation(line: 110, column: 21, scope: !799)
!801 = !DILocation(line: 110, column: 11, scope: !799)
!802 = !DILocation(line: 110, column: 7, scope: !799)
!803 = !DILocation(line: 110, column: 31, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !465, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !799, file: !465, line: 110, column: 2)
!806 = !DILocation(line: 110, column: 35, scope: !804)
!807 = !DILocation(line: 110, column: 2, scope: !804)
!808 = !DILocalVariable(name: "rec", scope: !809, file: !465, line: 111, type: !53)
!809 = distinct !DILexicalBlock(scope: !805, file: !465, line: 110, column: 60)
!810 = !DILocation(line: 111, column: 16, scope: !809)
!811 = !DILocation(line: 111, column: 22, scope: !809)
!812 = !DILocation(line: 111, column: 27, scope: !809)
!813 = !DILocation(line: 113, column: 26, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !465, line: 113, column: 7)
!815 = !DILocation(line: 113, column: 32, scope: !814)
!816 = !DILocation(line: 113, column: 37, scope: !814)
!817 = !DILocation(line: 113, column: 7, scope: !814)
!818 = !DILocation(line: 113, column: 43, scope: !814)
!819 = !DILocation(line: 113, column: 7, scope: !809)
!820 = !DILocation(line: 114, column: 11, scope: !814)
!821 = !DILocation(line: 114, column: 4, scope: !814)
!822 = !DILocation(line: 115, column: 2, scope: !809)
!823 = !DILocation(line: 110, column: 49, scope: !824)
!824 = !DILexicalBlockFile(scope: !805, file: !465, discriminator: 2)
!825 = !DILocation(line: 110, column: 54, scope: !824)
!826 = !DILocation(line: 110, column: 47, scope: !824)
!827 = !DILocation(line: 110, column: 2, scope: !824)
!828 = distinct !{!828, !829}
!829 = !DILocation(line: 110, column: 2, scope: !758)
!830 = !DILocation(line: 117, column: 2, scope: !758)
!831 = !DILocation(line: 118, column: 1, scope: !758)
!832 = distinct !DISubprogram(name: "channel_change_name", scope: !465, file: !465, line: 134, type: !833, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !53, !41}
!835 = !DILocalVariable(name: "channel", arg: 1, scope: !832, file: !465, line: 134, type: !53)
!836 = !DILocation(line: 134, column: 39, scope: !832)
!837 = !DILocalVariable(name: "name", arg: 2, scope: !832, file: !465, line: 134, type: !41)
!838 = !DILocation(line: 134, column: 60, scope: !832)
!839 = !DILocation(line: 136, column: 2, scope: !832)
!840 = distinct !{!840, !839}
!841 = !DILocation(line: 136, column: 53, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !465, discriminator: 1)
!843 = distinct !DILexicalBlock(scope: !844, file: !465, line: 136, column: 10)
!844 = distinct !DILexicalBlock(scope: !832, file: !465, line: 136, column: 4)
!845 = !DILocation(line: 136, column: 28, scope: !842)
!846 = !DILocation(line: 136, column: 12, scope: !842)
!847 = !DILocation(line: 136, column: 10, scope: !842)
!848 = !DILocation(line: 136, column: 11, scope: !849)
!849 = !DILexicalBlockFile(scope: !843, file: !465, discriminator: 2)
!850 = !DILocation(line: 136, column: 10, scope: !851)
!851 = !DILexicalBlockFile(scope: !844, file: !465, discriminator: 3)
!852 = !DILocation(line: 136, column: 54, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !465, discriminator: 4)
!854 = distinct !DILexicalBlock(scope: !843, file: !465, line: 136, column: 52)
!855 = !DILocation(line: 136, column: 63, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !465, discriminator: 5)
!857 = distinct !DILexicalBlock(scope: !843, file: !465, line: 136, column: 61)
!858 = !DILocation(line: 136, column: 155, scope: !856)
!859 = !DILocation(line: 136, column: 166, scope: !860)
!860 = !DILexicalBlockFile(scope: !844, file: !465, discriminator: 6)
!861 = !DILocation(line: 138, column: 9, scope: !832)
!862 = !DILocation(line: 138, column: 18, scope: !832)
!863 = !DILocation(line: 138, column: 2, scope: !832)
!864 = !DILocation(line: 139, column: 27, scope: !832)
!865 = !DILocation(line: 139, column: 18, scope: !832)
!866 = !DILocation(line: 139, column: 2, scope: !832)
!867 = !DILocation(line: 139, column: 11, scope: !832)
!868 = !DILocation(line: 139, column: 16, scope: !832)
!869 = !DILocation(line: 141, column: 41, scope: !832)
!870 = !DILocation(line: 141, column: 2, scope: !832)
!871 = !DILocation(line: 142, column: 1, scope: !832)
!872 = !DILocation(line: 142, column: 1, scope: !873)
!873 = !DILexicalBlockFile(scope: !832, file: !465, discriminator: 1)
!874 = distinct !DISubprogram(name: "channel_change_visible_name", scope: !465, file: !465, line: 144, type: !833, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!875 = !DILocalVariable(name: "channel", arg: 1, scope: !874, file: !465, line: 144, type: !53)
!876 = !DILocation(line: 144, column: 47, scope: !874)
!877 = !DILocalVariable(name: "name", arg: 2, scope: !874, file: !465, line: 144, type: !41)
!878 = !DILocation(line: 144, column: 68, scope: !874)
!879 = !DILocation(line: 146, column: 2, scope: !874)
!880 = distinct !{!880, !879}
!881 = !DILocation(line: 146, column: 53, scope: !882)
!882 = !DILexicalBlockFile(scope: !883, file: !465, discriminator: 1)
!883 = distinct !DILexicalBlock(scope: !884, file: !465, line: 146, column: 10)
!884 = distinct !DILexicalBlock(scope: !874, file: !465, line: 146, column: 4)
!885 = !DILocation(line: 146, column: 28, scope: !882)
!886 = !DILocation(line: 146, column: 12, scope: !882)
!887 = !DILocation(line: 146, column: 10, scope: !882)
!888 = !DILocation(line: 146, column: 11, scope: !889)
!889 = !DILexicalBlockFile(scope: !883, file: !465, discriminator: 2)
!890 = !DILocation(line: 146, column: 10, scope: !891)
!891 = !DILexicalBlockFile(scope: !884, file: !465, discriminator: 3)
!892 = !DILocation(line: 146, column: 54, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !465, discriminator: 4)
!894 = distinct !DILexicalBlock(scope: !883, file: !465, line: 146, column: 52)
!895 = !DILocation(line: 146, column: 63, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !465, discriminator: 5)
!897 = distinct !DILexicalBlock(scope: !883, file: !465, line: 146, column: 61)
!898 = !DILocation(line: 146, column: 155, scope: !896)
!899 = !DILocation(line: 146, column: 166, scope: !900)
!900 = !DILexicalBlockFile(scope: !884, file: !465, discriminator: 6)
!901 = !DILocation(line: 148, column: 9, scope: !874)
!902 = !DILocation(line: 148, column: 18, scope: !874)
!903 = !DILocation(line: 148, column: 2, scope: !874)
!904 = !DILocation(line: 149, column: 35, scope: !874)
!905 = !DILocation(line: 149, column: 26, scope: !874)
!906 = !DILocation(line: 149, column: 2, scope: !874)
!907 = !DILocation(line: 149, column: 11, scope: !874)
!908 = !DILocation(line: 149, column: 24, scope: !874)
!909 = !DILocation(line: 151, column: 45, scope: !874)
!910 = !DILocation(line: 151, column: 2, scope: !874)
!911 = !DILocation(line: 152, column: 1, scope: !874)
!912 = !DILocation(line: 152, column: 1, scope: !913)
!913 = !DILexicalBlockFile(scope: !874, file: !465, discriminator: 1)
!914 = distinct !DISubprogram(name: "channel_send_autocommands", scope: !465, file: !465, line: 233, type: !603, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!915 = !DILocalVariable(name: "channel", arg: 1, scope: !914, file: !465, line: 233, type: !53)
!916 = !DILocation(line: 233, column: 45, scope: !914)
!917 = !DILocalVariable(name: "rec", scope: !914, file: !465, line: 235, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !48, line: 115, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !921, line: 12, size: 512, align: 64, elements: !922)
!921 = !DIFile(filename: "channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!922 = !{!923, !925, !926, !927, !928, !929, !930, !931, !932}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !924, line: 1, baseType: !60, size: 32, align: 32)
!924 = !DIFile(filename: "channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!925 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !920, file: !924, line: 2, baseType: !60, size: 32, align: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !924, line: 4, baseType: !88, size: 64, align: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !920, file: !924, line: 5, baseType: !88, size: 64, align: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !920, file: !924, line: 6, baseType: !88, size: 64, align: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !920, file: !924, line: 8, baseType: !88, size: 64, align: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !920, file: !924, line: 9, baseType: !88, size: 64, align: 64, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !920, file: !924, line: 11, baseType: !147, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !920, file: !924, line: 12, baseType: !63, size: 64, align: 64, offset: 448)
!933 = !DILocation(line: 235, column: 21, scope: !914)
!934 = !DILocation(line: 237, column: 2, scope: !914)
!935 = distinct !{!935, !934}
!936 = !DILocation(line: 237, column: 53, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !465, discriminator: 1)
!938 = distinct !DILexicalBlock(scope: !939, file: !465, line: 237, column: 10)
!939 = distinct !DILexicalBlock(scope: !914, file: !465, line: 237, column: 4)
!940 = !DILocation(line: 237, column: 28, scope: !937)
!941 = !DILocation(line: 237, column: 12, scope: !937)
!942 = !DILocation(line: 237, column: 10, scope: !937)
!943 = !DILocation(line: 237, column: 11, scope: !944)
!944 = !DILexicalBlockFile(scope: !938, file: !465, discriminator: 2)
!945 = !DILocation(line: 237, column: 10, scope: !946)
!946 = !DILexicalBlockFile(scope: !939, file: !465, discriminator: 3)
!947 = !DILocation(line: 237, column: 54, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !465, discriminator: 4)
!949 = distinct !DILexicalBlock(scope: !938, file: !465, line: 237, column: 52)
!950 = !DILocation(line: 237, column: 63, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !465, discriminator: 5)
!952 = distinct !DILexicalBlock(scope: !938, file: !465, line: 237, column: 61)
!953 = !DILocation(line: 237, column: 155, scope: !951)
!954 = !DILocation(line: 237, column: 166, scope: !955)
!955 = !DILexicalBlockFile(scope: !939, file: !465, discriminator: 6)
!956 = !DILocation(line: 239, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !914, file: !465, line: 239, column: 6)
!958 = !DILocation(line: 239, column: 15, scope: !957)
!959 = !DILocation(line: 239, column: 6, scope: !914)
!960 = !DILocation(line: 240, column: 3, scope: !957)
!961 = !DILocation(line: 242, column: 27, scope: !914)
!962 = !DILocation(line: 242, column: 36, scope: !914)
!963 = !DILocation(line: 242, column: 42, scope: !914)
!964 = !DILocation(line: 242, column: 51, scope: !914)
!965 = !DILocation(line: 242, column: 59, scope: !914)
!966 = !DILocation(line: 242, column: 68, scope: !914)
!967 = !DILocation(line: 242, column: 8, scope: !914)
!968 = !DILocation(line: 242, column: 6, scope: !914)
!969 = !DILocation(line: 243, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !914, file: !465, line: 243, column: 6)
!971 = !DILocation(line: 243, column: 10, scope: !970)
!972 = !DILocation(line: 243, column: 17, scope: !970)
!973 = !DILocation(line: 243, column: 20, scope: !974)
!974 = !DILexicalBlockFile(scope: !970, file: !465, discriminator: 1)
!975 = !DILocation(line: 243, column: 25, scope: !974)
!976 = !DILocation(line: 243, column: 37, scope: !974)
!977 = !DILocation(line: 243, column: 45, scope: !974)
!978 = !DILocation(line: 243, column: 50, scope: !979)
!979 = !DILexicalBlockFile(scope: !970, file: !465, discriminator: 2)
!980 = !DILocation(line: 243, column: 55, scope: !979)
!981 = !DILocation(line: 243, column: 49, scope: !979)
!982 = !DILocation(line: 243, column: 6, scope: !979)
!983 = !DILocation(line: 244, column: 3, scope: !970)
!984 = !DILocation(line: 252, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !914, file: !465, line: 252, column: 6)
!986 = !DILocation(line: 252, column: 11, scope: !985)
!987 = !DILocation(line: 252, column: 20, scope: !985)
!988 = !DILocation(line: 252, column: 27, scope: !985)
!989 = !DILocation(line: 252, column: 32, scope: !990)
!990 = !DILexicalBlockFile(scope: !985, file: !465, discriminator: 1)
!991 = !DILocation(line: 252, column: 37, scope: !990)
!992 = !DILocation(line: 252, column: 31, scope: !990)
!993 = !DILocation(line: 252, column: 6, scope: !990)
!994 = !DILocation(line: 254, column: 23, scope: !995)
!995 = distinct !DILexicalBlock(scope: !985, file: !465, line: 252, column: 47)
!996 = !DILocation(line: 254, column: 28, scope: !995)
!997 = !DILocation(line: 254, column: 45, scope: !995)
!998 = !DILocation(line: 254, column: 54, scope: !995)
!999 = !DILocation(line: 254, column: 62, scope: !995)
!1000 = !DILocation(line: 254, column: 3, scope: !995)
!1001 = !DILocation(line: 255, column: 2, scope: !995)
!1002 = !DILocation(line: 256, column: 1, scope: !914)
!1003 = distinct !DISubprogram(name: "channel_send_botcommands", scope: !465, file: !465, line: 258, type: !603, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1004 = !DILocalVariable(name: "channel", arg: 1, scope: !1003, file: !465, line: 258, type: !53)
!1005 = !DILocation(line: 258, column: 44, scope: !1003)
!1006 = !DILocalVariable(name: "rec", scope: !1003, file: !465, line: 260, type: !918)
!1007 = !DILocation(line: 260, column: 21, scope: !1003)
!1008 = !DILocalVariable(name: "nick", scope: !1003, file: !465, line: 261, type: !409)
!1009 = !DILocation(line: 261, column: 12, scope: !1003)
!1010 = !DILocalVariable(name: "bots", scope: !1003, file: !465, line: 262, type: !376)
!1011 = !DILocation(line: 262, column: 9, scope: !1003)
!1012 = !DILocalVariable(name: "bot", scope: !1003, file: !465, line: 262, type: !376)
!1013 = !DILocation(line: 262, column: 17, scope: !1003)
!1014 = !DILocation(line: 264, column: 2, scope: !1003)
!1015 = distinct !{!1015, !1014}
!1016 = !DILocation(line: 264, column: 53, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1018, file: !465, discriminator: 1)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !465, line: 264, column: 10)
!1019 = distinct !DILexicalBlock(scope: !1003, file: !465, line: 264, column: 4)
!1020 = !DILocation(line: 264, column: 28, scope: !1017)
!1021 = !DILocation(line: 264, column: 12, scope: !1017)
!1022 = !DILocation(line: 264, column: 10, scope: !1017)
!1023 = !DILocation(line: 264, column: 11, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1018, file: !465, discriminator: 2)
!1025 = !DILocation(line: 264, column: 10, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1019, file: !465, discriminator: 3)
!1027 = !DILocation(line: 264, column: 54, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !465, discriminator: 4)
!1029 = distinct !DILexicalBlock(scope: !1018, file: !465, line: 264, column: 52)
!1030 = !DILocation(line: 264, column: 63, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !465, discriminator: 5)
!1032 = distinct !DILexicalBlock(scope: !1018, file: !465, line: 264, column: 61)
!1033 = !DILocation(line: 264, column: 155, scope: !1031)
!1034 = !DILocation(line: 264, column: 166, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1019, file: !465, discriminator: 6)
!1036 = !DILocation(line: 266, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1003, file: !465, line: 266, column: 6)
!1038 = !DILocation(line: 266, column: 15, scope: !1037)
!1039 = !DILocation(line: 266, column: 6, scope: !1003)
!1040 = !DILocation(line: 267, column: 17, scope: !1037)
!1041 = !DILocation(line: 269, column: 27, scope: !1003)
!1042 = !DILocation(line: 269, column: 36, scope: !1003)
!1043 = !DILocation(line: 269, column: 42, scope: !1003)
!1044 = !DILocation(line: 269, column: 51, scope: !1003)
!1045 = !DILocation(line: 269, column: 59, scope: !1003)
!1046 = !DILocation(line: 269, column: 68, scope: !1003)
!1047 = !DILocation(line: 269, column: 8, scope: !1003)
!1048 = !DILocation(line: 269, column: 6, scope: !1003)
!1049 = !DILocation(line: 270, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1003, file: !465, line: 270, column: 6)
!1051 = !DILocation(line: 270, column: 10, scope: !1050)
!1052 = !DILocation(line: 270, column: 17, scope: !1050)
!1053 = !DILocation(line: 270, column: 20, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1050, file: !465, discriminator: 1)
!1055 = !DILocation(line: 270, column: 25, scope: !1054)
!1056 = !DILocation(line: 270, column: 37, scope: !1054)
!1057 = !DILocation(line: 270, column: 45, scope: !1054)
!1058 = !DILocation(line: 270, column: 50, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1050, file: !465, discriminator: 2)
!1060 = !DILocation(line: 270, column: 55, scope: !1059)
!1061 = !DILocation(line: 270, column: 49, scope: !1059)
!1062 = !DILocation(line: 270, column: 6, scope: !1059)
!1063 = !DILocation(line: 271, column: 3, scope: !1050)
!1064 = !DILocation(line: 274, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1003, file: !465, line: 274, column: 6)
!1066 = !DILocation(line: 274, column: 11, scope: !1065)
!1067 = !DILocation(line: 274, column: 20, scope: !1065)
!1068 = !DILocation(line: 274, column: 27, scope: !1065)
!1069 = !DILocation(line: 274, column: 32, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1065, file: !465, discriminator: 1)
!1071 = !DILocation(line: 274, column: 37, scope: !1070)
!1072 = !DILocation(line: 274, column: 31, scope: !1070)
!1073 = !DILocation(line: 274, column: 6, scope: !1070)
!1074 = !DILocation(line: 275, column: 3, scope: !1065)
!1075 = !DILocation(line: 278, column: 20, scope: !1003)
!1076 = !DILocation(line: 278, column: 25, scope: !1003)
!1077 = !DILocation(line: 278, column: 9, scope: !1003)
!1078 = !DILocation(line: 278, column: 7, scope: !1003)
!1079 = !DILocation(line: 279, column: 13, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1003, file: !465, line: 279, column: 2)
!1081 = !DILocation(line: 279, column: 11, scope: !1080)
!1082 = !DILocation(line: 279, column: 7, scope: !1080)
!1083 = !DILocation(line: 279, column: 20, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !465, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !465, line: 279, column: 2)
!1086 = !DILocation(line: 279, column: 19, scope: !1084)
!1087 = !DILocation(line: 279, column: 24, scope: !1084)
!1088 = !DILocation(line: 279, column: 2, scope: !1084)
!1089 = !DILocalVariable(name: "botnick", scope: !1090, file: !465, line: 280, type: !41)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !465, line: 279, column: 39)
!1091 = !DILocation(line: 280, column: 15, scope: !1090)
!1092 = !DILocation(line: 280, column: 26, scope: !1090)
!1093 = !DILocation(line: 280, column: 25, scope: !1090)
!1094 = !DILocation(line: 282, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !465, line: 282, column: 7)
!1096 = !DILocation(line: 282, column: 7, scope: !1095)
!1097 = !DILocation(line: 282, column: 16, scope: !1095)
!1098 = !DILocation(line: 282, column: 7, scope: !1090)
!1099 = !DILocation(line: 283, column: 25, scope: !1095)
!1100 = !DILocation(line: 285, column: 29, scope: !1090)
!1101 = !DILocation(line: 286, column: 8, scope: !1090)
!1102 = !DILocation(line: 286, column: 17, scope: !1090)
!1103 = !DILocation(line: 286, column: 25, scope: !1090)
!1104 = !DILocation(line: 286, column: 36, scope: !1090)
!1105 = !DILocation(line: 286, column: 45, scope: !1090)
!1106 = !DILocation(line: 286, column: 54, scope: !1090)
!1107 = !DILocation(line: 286, column: 53, scope: !1090)
!1108 = !DILocation(line: 287, column: 8, scope: !1090)
!1109 = !DILocation(line: 287, column: 15, scope: !1090)
!1110 = !DILocation(line: 286, column: 8, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1090, file: !465, discriminator: 1)
!1112 = !DILocation(line: 287, column: 20, scope: !1111)
!1113 = !DILocation(line: 286, column: 8, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1090, file: !465, discriminator: 2)
!1115 = !DILocation(line: 286, column: 8, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1090, file: !465, discriminator: 3)
!1117 = !DILocation(line: 285, column: 10, scope: !1111)
!1118 = !DILocation(line: 285, column: 8, scope: !1111)
!1119 = !DILocation(line: 288, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1090, file: !465, line: 288, column: 7)
!1121 = !DILocation(line: 288, column: 12, scope: !1120)
!1122 = !DILocation(line: 288, column: 19, scope: !1120)
!1123 = !DILocation(line: 289, column: 24, scope: !1120)
!1124 = !DILocation(line: 289, column: 33, scope: !1120)
!1125 = !DILocation(line: 289, column: 41, scope: !1120)
!1126 = !DILocation(line: 289, column: 48, scope: !1120)
!1127 = !DILocation(line: 289, column: 47, scope: !1120)
!1128 = !DILocation(line: 289, column: 7, scope: !1120)
!1129 = !DILocation(line: 288, column: 7, scope: !1111)
!1130 = !DILocation(line: 290, column: 24, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1120, file: !465, line: 289, column: 58)
!1132 = !DILocation(line: 290, column: 29, scope: !1131)
!1133 = !DILocation(line: 290, column: 42, scope: !1131)
!1134 = !DILocation(line: 290, column: 48, scope: !1131)
!1135 = !DILocation(line: 291, column: 10, scope: !1131)
!1136 = !DILocation(line: 291, column: 19, scope: !1131)
!1137 = !DILocation(line: 291, column: 27, scope: !1131)
!1138 = !DILocation(line: 290, column: 4, scope: !1131)
!1139 = !DILocation(line: 292, column: 4, scope: !1131)
!1140 = !DILocation(line: 294, column: 2, scope: !1090)
!1141 = !DILocation(line: 279, column: 35, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1085, file: !465, discriminator: 2)
!1143 = !DILocation(line: 279, column: 2, scope: !1142)
!1144 = distinct !{!1144, !1145}
!1145 = !DILocation(line: 279, column: 2, scope: !1003)
!1146 = !DILocation(line: 295, column: 13, scope: !1003)
!1147 = !DILocation(line: 295, column: 2, scope: !1003)
!1148 = !DILocation(line: 296, column: 1, scope: !1003)
!1149 = !DILocation(line: 296, column: 1, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1003, file: !465, discriminator: 1)
!1151 = distinct !DISubprogram(name: "match_nick_flags", scope: !465, file: !465, line: 221, type: !1152, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!60, !69, !409, !40}
!1154 = !DILocalVariable(name: "server", arg: 1, scope: !1151, file: !465, line: 221, type: !69)
!1155 = !DILocation(line: 221, column: 41, scope: !1151)
!1156 = !DILocalVariable(name: "nick", arg: 2, scope: !1151, file: !465, line: 221, type: !409)
!1157 = !DILocation(line: 221, column: 59, scope: !1151)
!1158 = !DILocalVariable(name: "flag", arg: 3, scope: !1151, file: !465, line: 221, type: !40)
!1159 = !DILocation(line: 221, column: 70, scope: !1151)
!1160 = !DILocalVariable(name: "flags", scope: !1151, file: !465, line: 223, type: !41)
!1161 = !DILocation(line: 223, column: 14, scope: !1151)
!1162 = !DILocation(line: 223, column: 22, scope: !1151)
!1163 = !DILocation(line: 223, column: 30, scope: !1151)
!1164 = !DILocation(line: 223, column: 45, scope: !1151)
!1165 = !DILocation(line: 225, column: 16, scope: !1151)
!1166 = !DILocation(line: 225, column: 23, scope: !1151)
!1167 = !DILocation(line: 225, column: 9, scope: !1151)
!1168 = !DILocation(line: 225, column: 29, scope: !1151)
!1169 = !DILocation(line: 225, column: 36, scope: !1151)
!1170 = !DILocation(line: 226, column: 4, scope: !1151)
!1171 = !DILocation(line: 226, column: 12, scope: !1151)
!1172 = !DILocation(line: 226, column: 9, scope: !1151)
!1173 = !DILocation(line: 226, column: 21, scope: !1151)
!1174 = !DILocation(line: 226, column: 24, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1151, file: !465, discriminator: 1)
!1176 = !DILocation(line: 226, column: 30, scope: !1175)
!1177 = !DILocation(line: 226, column: 34, scope: !1175)
!1178 = !DILocation(line: 227, column: 4, scope: !1151)
!1179 = !DILocation(line: 227, column: 12, scope: !1151)
!1180 = !DILocation(line: 227, column: 9, scope: !1151)
!1181 = !DILocation(line: 227, column: 21, scope: !1151)
!1182 = !DILocation(line: 227, column: 25, scope: !1175)
!1183 = !DILocation(line: 227, column: 31, scope: !1175)
!1184 = !DILocation(line: 227, column: 37, scope: !1175)
!1185 = !DILocation(line: 227, column: 40, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1151, file: !465, discriminator: 2)
!1187 = !DILocation(line: 227, column: 46, scope: !1186)
!1188 = !DILocation(line: 227, column: 53, scope: !1186)
!1189 = !DILocation(line: 228, column: 11, scope: !1151)
!1190 = !DILocation(line: 228, column: 17, scope: !1151)
!1191 = !DILocation(line: 228, column: 22, scope: !1151)
!1192 = !DILocation(line: 229, column: 4, scope: !1151)
!1193 = !DILocation(line: 229, column: 12, scope: !1151)
!1194 = !DILocation(line: 229, column: 9, scope: !1151)
!1195 = !DILocation(line: 229, column: 21, scope: !1151)
!1196 = !DILocation(line: 229, column: 25, scope: !1175)
!1197 = !DILocation(line: 229, column: 31, scope: !1175)
!1198 = !DILocation(line: 229, column: 38, scope: !1175)
!1199 = !DILocation(line: 229, column: 41, scope: !1186)
!1200 = !DILocation(line: 229, column: 47, scope: !1186)
!1201 = !DILocation(line: 229, column: 38, scope: !1186)
!1202 = !DILocation(line: 228, column: 22, scope: !1175)
!1203 = !DILocation(line: 228, column: 22, scope: !1186)
!1204 = !DILocation(line: 225, column: 2, scope: !1175)
!1205 = distinct !DISubprogram(name: "channels_init", scope: !465, file: !465, line: 298, type: !223, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1206 = !DILocation(line: 300, column: 2, scope: !1205)
!1207 = !DILocation(line: 302, column: 2, scope: !1205)
!1208 = !DILocation(line: 303, column: 1, scope: !1205)
!1209 = distinct !DISubprogram(name: "event_connected", scope: !465, file: !465, line: 181, type: !1210, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !69}
!1212 = !DILocalVariable(name: "server", arg: 1, scope: !1209, file: !465, line: 181, type: !69)
!1213 = !DILocation(line: 181, column: 41, scope: !1209)
!1214 = !DILocalVariable(name: "chans", scope: !1209, file: !465, line: 183, type: !274)
!1215 = !DILocation(line: 183, column: 11, scope: !1209)
!1216 = !DILocalVariable(name: "tmp", scope: !1209, file: !465, line: 184, type: !235)
!1217 = !DILocation(line: 184, column: 10, scope: !1209)
!1218 = !DILocalVariable(name: "chatnet_servers", scope: !1209, file: !465, line: 184, type: !235)
!1219 = !DILocation(line: 184, column: 16, scope: !1209)
!1220 = !DILocation(line: 186, column: 2, scope: !1209)
!1221 = distinct !{!1221, !1220}
!1222 = !DILocation(line: 186, column: 44, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1224, file: !465, discriminator: 1)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !465, line: 186, column: 10)
!1225 = distinct !DILexicalBlock(scope: !1209, file: !465, line: 186, column: 4)
!1226 = !DILocation(line: 186, column: 26, scope: !1223)
!1227 = !DILocation(line: 186, column: 11, scope: !1223)
!1228 = !DILocation(line: 186, column: 10, scope: !1223)
!1229 = !DILocation(line: 186, column: 17, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !465, discriminator: 2)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !465, line: 186, column: 15)
!1232 = !DILocation(line: 186, column: 26, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !465, discriminator: 3)
!1234 = distinct !DILexicalBlock(scope: !1224, file: !465, line: 186, column: 24)
!1235 = !DILocation(line: 186, column: 113, scope: !1233)
!1236 = !DILocation(line: 186, column: 124, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1225, file: !465, discriminator: 4)
!1238 = !DILocation(line: 188, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1209, file: !465, line: 188, column: 6)
!1240 = !DILocation(line: 188, column: 14, scope: !1239)
!1241 = !DILocation(line: 188, column: 23, scope: !1239)
!1242 = !DILocation(line: 188, column: 36, scope: !1239)
!1243 = !DILocation(line: 189, column: 6, scope: !1239)
!1244 = !DILocation(line: 189, column: 14, scope: !1239)
!1245 = !DILocation(line: 189, column: 23, scope: !1239)
!1246 = !DILocation(line: 188, column: 6, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1209, file: !465, discriminator: 1)
!1248 = !DILocation(line: 190, column: 3, scope: !1239)
!1249 = !DILocation(line: 193, column: 20, scope: !1209)
!1250 = !DILocation(line: 193, column: 28, scope: !1209)
!1251 = !DILocation(line: 193, column: 37, scope: !1209)
!1252 = !DILocation(line: 193, column: 45, scope: !1209)
!1253 = !DILocation(line: 193, column: 20, scope: !1247)
!1254 = !DILocation(line: 194, column: 31, scope: !1209)
!1255 = !DILocation(line: 194, column: 3, scope: !1209)
!1256 = !DILocation(line: 193, column: 20, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1209, file: !465, discriminator: 2)
!1258 = !DILocation(line: 193, column: 20, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1209, file: !465, discriminator: 3)
!1260 = !DILocation(line: 193, column: 18, scope: !1259)
!1261 = !DILocation(line: 197, column: 10, scope: !1209)
!1262 = !DILocation(line: 197, column: 8, scope: !1209)
!1263 = !DILocation(line: 198, column: 13, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1209, file: !465, line: 198, column: 2)
!1265 = !DILocation(line: 198, column: 11, scope: !1264)
!1266 = !DILocation(line: 198, column: 7, scope: !1264)
!1267 = !DILocation(line: 198, column: 28, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !465, discriminator: 1)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !465, line: 198, column: 2)
!1270 = !DILocation(line: 198, column: 32, scope: !1268)
!1271 = !DILocation(line: 198, column: 2, scope: !1268)
!1272 = !DILocalVariable(name: "rec", scope: !1273, file: !465, line: 199, type: !918)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !465, line: 198, column: 57)
!1274 = !DILocation(line: 199, column: 22, scope: !1273)
!1275 = !DILocation(line: 199, column: 28, scope: !1273)
!1276 = !DILocation(line: 199, column: 33, scope: !1273)
!1277 = !DILocation(line: 201, column: 8, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !465, line: 201, column: 7)
!1279 = !DILocation(line: 201, column: 13, scope: !1278)
!1280 = !DILocation(line: 201, column: 22, scope: !1278)
!1281 = !DILocation(line: 202, column: 10, scope: !1278)
!1282 = !DILocation(line: 202, column: 15, scope: !1278)
!1283 = !DILocation(line: 202, column: 24, scope: !1278)
!1284 = !DILocation(line: 202, column: 7, scope: !1278)
!1285 = !DILocation(line: 202, column: 11, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1278, file: !465, discriminator: 1)
!1287 = !DILocation(line: 202, column: 16, scope: !1286)
!1288 = !DILocation(line: 202, column: 10, scope: !1286)
!1289 = !DILocation(line: 202, column: 28, scope: !1286)
!1290 = !DILocation(line: 202, column: 36, scope: !1286)
!1291 = !DILocation(line: 202, column: 41, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1278, file: !465, discriminator: 2)
!1293 = !DILocation(line: 202, column: 49, scope: !1292)
!1294 = !DILocation(line: 202, column: 58, scope: !1292)
!1295 = !DILocation(line: 202, column: 67, scope: !1292)
!1296 = !DILocation(line: 202, column: 7, scope: !1292)
!1297 = !DILocation(line: 202, column: 29, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1278, file: !465, discriminator: 3)
!1299 = !DILocation(line: 202, column: 34, scope: !1298)
!1300 = !DILocation(line: 202, column: 43, scope: !1298)
!1301 = !DILocation(line: 202, column: 51, scope: !1298)
!1302 = !DILocation(line: 202, column: 60, scope: !1298)
!1303 = !DILocation(line: 202, column: 10, scope: !1298)
!1304 = !DILocation(line: 202, column: 69, scope: !1298)
!1305 = !DILocation(line: 201, column: 7, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1273, file: !465, discriminator: 1)
!1307 = !DILocation(line: 204, column: 4, scope: !1278)
!1308 = !DILocation(line: 208, column: 42, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1273, file: !465, line: 208, column: 21)
!1310 = !DILocation(line: 208, column: 59, scope: !1309)
!1311 = !DILocation(line: 208, column: 64, scope: !1309)
!1312 = !DILocation(line: 208, column: 21, scope: !1309)
!1313 = !DILocation(line: 208, column: 70, scope: !1309)
!1314 = !DILocation(line: 208, column: 21, scope: !1273)
!1315 = !DILocation(line: 209, column: 27, scope: !1309)
!1316 = !DILocation(line: 209, column: 41, scope: !1309)
!1317 = !DILocation(line: 209, column: 46, scope: !1309)
!1318 = !DILocation(line: 209, column: 4, scope: !1309)
!1319 = !DILocation(line: 210, column: 2, scope: !1273)
!1320 = !DILocation(line: 198, column: 46, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1269, file: !465, discriminator: 2)
!1322 = !DILocation(line: 198, column: 51, scope: !1321)
!1323 = !DILocation(line: 198, column: 44, scope: !1321)
!1324 = !DILocation(line: 198, column: 2, scope: !1321)
!1325 = distinct !{!1325, !1326}
!1326 = !DILocation(line: 198, column: 2, scope: !1209)
!1327 = !DILocation(line: 211, column: 22, scope: !1209)
!1328 = !DILocation(line: 211, column: 9, scope: !1209)
!1329 = !DILocation(line: 213, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1209, file: !465, line: 213, column: 6)
!1331 = !DILocation(line: 213, column: 13, scope: !1330)
!1332 = !DILocation(line: 213, column: 17, scope: !1330)
!1333 = !DILocation(line: 213, column: 6, scope: !1209)
!1334 = !DILocation(line: 214, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !465, line: 213, column: 22)
!1336 = !DILocation(line: 214, column: 28, scope: !1335)
!1337 = !DILocation(line: 214, column: 35, scope: !1335)
!1338 = !DILocation(line: 214, column: 38, scope: !1335)
!1339 = !DILocation(line: 214, column: 3, scope: !1335)
!1340 = !DILocation(line: 215, column: 3, scope: !1335)
!1341 = !DILocation(line: 215, column: 11, scope: !1335)
!1342 = !DILocation(line: 215, column: 25, scope: !1335)
!1343 = !DILocation(line: 215, column: 33, scope: !1335)
!1344 = !DILocation(line: 215, column: 40, scope: !1335)
!1345 = !DILocation(line: 216, column: 2, scope: !1335)
!1346 = !DILocation(line: 218, column: 16, scope: !1209)
!1347 = !DILocation(line: 218, column: 2, scope: !1209)
!1348 = !DILocation(line: 219, column: 1, scope: !1209)
!1349 = !DILocation(line: 219, column: 1, scope: !1247)
!1350 = distinct !DISubprogram(name: "channels_deinit", scope: !465, file: !465, line: 305, type: !223, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1351 = !DILocation(line: 307, column: 2, scope: !1350)
!1352 = !DILocation(line: 309, column: 2, scope: !1350)
!1353 = !DILocation(line: 310, column: 1, scope: !1350)
!1354 = distinct !DISubprogram(name: "servers_find_chatnet_except", scope: !465, file: !465, line: 161, type: !1355, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!235, !69}
!1357 = !DILocalVariable(name: "server", arg: 1, scope: !1354, file: !465, line: 161, type: !69)
!1358 = !DILocation(line: 161, column: 56, scope: !1354)
!1359 = !DILocalVariable(name: "tmp", scope: !1354, file: !465, line: 163, type: !235)
!1360 = !DILocation(line: 163, column: 10, scope: !1354)
!1361 = !DILocalVariable(name: "list", scope: !1354, file: !465, line: 163, type: !235)
!1362 = !DILocation(line: 163, column: 16, scope: !1354)
!1363 = !DILocation(line: 165, column: 14, scope: !1354)
!1364 = !DILocation(line: 166, column: 13, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1354, file: !465, line: 166, column: 2)
!1366 = !DILocation(line: 166, column: 11, scope: !1365)
!1367 = !DILocation(line: 166, column: 7, scope: !1365)
!1368 = !DILocation(line: 166, column: 22, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !465, discriminator: 1)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !465, line: 166, column: 2)
!1371 = !DILocation(line: 166, column: 26, scope: !1369)
!1372 = !DILocation(line: 166, column: 2, scope: !1369)
!1373 = !DILocalVariable(name: "rec", scope: !1374, file: !465, line: 167, type: !69)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !465, line: 166, column: 51)
!1375 = !DILocation(line: 167, column: 15, scope: !1374)
!1376 = !DILocation(line: 167, column: 21, scope: !1374)
!1377 = !DILocation(line: 167, column: 26, scope: !1374)
!1378 = !DILocation(line: 169, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !465, line: 169, column: 7)
!1380 = !DILocation(line: 169, column: 17, scope: !1379)
!1381 = !DILocation(line: 169, column: 14, scope: !1379)
!1382 = !DILocation(line: 169, column: 21, scope: !1379)
!1383 = !DILocation(line: 169, column: 24, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1379, file: !465, discriminator: 1)
!1385 = !DILocation(line: 169, column: 29, scope: !1384)
!1386 = !DILocation(line: 169, column: 38, scope: !1384)
!1387 = !DILocation(line: 169, column: 46, scope: !1384)
!1388 = !DILocation(line: 169, column: 53, scope: !1384)
!1389 = !DILocation(line: 170, column: 17, scope: !1379)
!1390 = !DILocation(line: 170, column: 25, scope: !1379)
!1391 = !DILocation(line: 170, column: 34, scope: !1379)
!1392 = !DILocation(line: 171, column: 7, scope: !1379)
!1393 = !DILocation(line: 171, column: 12, scope: !1379)
!1394 = !DILocation(line: 171, column: 21, scope: !1379)
!1395 = !DILocation(line: 170, column: 7, scope: !1379)
!1396 = !DILocation(line: 171, column: 30, scope: !1379)
!1397 = !DILocation(line: 169, column: 7, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1374, file: !465, discriminator: 2)
!1399 = !DILocation(line: 173, column: 26, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1379, file: !465, line: 171, column: 36)
!1401 = !DILocation(line: 173, column: 32, scope: !1400)
!1402 = !DILocation(line: 173, column: 11, scope: !1400)
!1403 = !DILocation(line: 173, column: 9, scope: !1400)
!1404 = !DILocation(line: 174, column: 3, scope: !1400)
!1405 = !DILocation(line: 175, column: 2, scope: !1374)
!1406 = !DILocation(line: 166, column: 40, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1370, file: !465, discriminator: 2)
!1408 = !DILocation(line: 166, column: 45, scope: !1407)
!1409 = !DILocation(line: 166, column: 38, scope: !1407)
!1410 = !DILocation(line: 166, column: 2, scope: !1407)
!1411 = distinct !{!1411, !1412}
!1412 = !DILocation(line: 166, column: 2, scope: !1354)
!1413 = !DILocation(line: 177, column: 16, scope: !1354)
!1414 = !DILocation(line: 177, column: 9, scope: !1354)
!1415 = distinct !DISubprogram(name: "channel_find_servers", scope: !465, file: !465, line: 154, type: !1416, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !472)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!53, !235, !41}
!1418 = !DILocalVariable(name: "servers", arg: 1, scope: !1415, file: !465, line: 154, type: !235)
!1419 = !DILocation(line: 154, column: 50, scope: !1415)
!1420 = !DILocalVariable(name: "name", arg: 2, scope: !1415, file: !465, line: 154, type: !41)
!1421 = !DILocation(line: 154, column: 71, scope: !1415)
!1422 = !DILocation(line: 156, column: 29, scope: !1415)
!1423 = !DILocation(line: 158, column: 17, scope: !1415)
!1424 = !DILocation(line: 156, column: 9, scope: !1415)
!1425 = !DILocation(line: 156, column: 2, scope: !1415)
