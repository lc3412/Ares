; ModuleID = './line63-nicklist.o.i'
source_filename = "./line63-nicklist.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._QUERY_REC = type opaque
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct.NICKLIST_GET_SAME_UNIQUE_REC = type { %struct._CHANNEL_REC*, i8*, %struct._GSList* }
%struct._GHashTableIter = type { i8*, i8*, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"NICK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nicklist new\00", align 1
@__func__.nicklist_set_host = private unnamed_addr constant [18 x i8] c"nicklist_set_host\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"host != NULL\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"nicklist host changed\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@__func__.nicklist_remove = private unnamed_addr constant [16 x i8] c"nicklist_remove\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"IS_CHANNEL(channel)\00", align 1
@__func__.nicklist_find_multiple = private unnamed_addr constant [23 x i8] c"nicklist_find_multiple\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@__func__.nicklist_find = private unnamed_addr constant [14 x i8] c"nicklist_find\00", align 1
@__func__.nicklist_find_unique = private unnamed_addr constant [21 x i8] c"nicklist_find_unique\00", align 1
@__func__.nicklist_find_mask = private unnamed_addr constant [19 x i8] c"nicklist_find_mask\00", align 1
@__func__.nicklist_getnicks = private unnamed_addr constant [18 x i8] c"nicklist_getnicks\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.nicklist_get_same = private unnamed_addr constant [18 x i8] c"nicklist_get_same\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@__func__.nicklist_get_same_unique = private unnamed_addr constant [25 x i8] c"nicklist_get_same_unique\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"id != NULL\00", align 1
@__func__.nick_match_msg = private unnamed_addr constant [15 x i8] c"nick_match_msg\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@__func__.nick_match_msg_everywhere = private unnamed_addr constant [26 x i8] c"nick_match_msg_everywhere\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"channel created\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"nicklist remove\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"nicklist changed\00", align 1
@__func__.nicklist_update_flags_list = private unnamed_addr constant [27 x i8] c"nicklist_update_flags_list\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"nicklist gone changed\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"nicklist serverop changed\00", align 1
@__func__.sig_channel_created = private unnamed_addr constant [20 x i8] c"sig_channel_created\00", align 1
@__func__.sig_channel_destroyed = private unnamed_addr constant [22 x i8] c"sig_channel_destroyed\00", align 1

; Function Attrs: nounwind uwtable
define void @nicklist_insert(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !490 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !495, metadata !496), !dbg !497
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !498, metadata !496), !dbg !499
  %5 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !500
  %6 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !501
  %7 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %6, i32 0, i32 0, !dbg !502
  store i32 %5, i32* %7, align 8, !dbg !503
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !504
  %9 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %8, i32 0, i32 1, !dbg !505
  %10 = load i32, i32* %9, align 4, !dbg !505
  %11 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !506
  %12 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %11, i32 0, i32 1, !dbg !507
  store i32 %10, i32* %12, align 4, !dbg !508
  %13 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !509
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !510
  call void @nick_hash_add(%struct._CHANNEL_REC* %13, %struct._NICK_REC* %14), !dbg !511
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !512
  %16 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !513
  %17 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %15, %struct._NICK_REC* %16), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @module_get_uniq_id(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @nick_hash_add(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !516 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !517, metadata !496), !dbg !518
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !519, metadata !496), !dbg !520
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !521, metadata !496), !dbg !522
  %6 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !523
  %7 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %6, i32 0, i32 10, !dbg !524
  store %struct._NICK_REC* null, %struct._NICK_REC** %7, align 8, !dbg !525
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !526
  %9 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %8, i32 0, i32 15, !dbg !527
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !527
  %11 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !528
  %12 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %11, i32 0, i32 3, !dbg !529
  %13 = load i8*, i8** %12, align 8, !dbg !529
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %13), !dbg !530
  %15 = bitcast i8* %14 to %struct._NICK_REC*, !dbg !530
  store %struct._NICK_REC* %15, %struct._NICK_REC** %5, align 8, !dbg !531
  %16 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !532
  %17 = icmp eq %struct._NICK_REC* %16, null, !dbg !534
  br i1 %17, label %18, label %28, !dbg !535

; <label>:18:                                     ; preds = %2
  %19 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !536
  %20 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %19, i32 0, i32 15, !dbg !537
  %21 = load %struct._GHashTable*, %struct._GHashTable** %20, align 8, !dbg !537
  %22 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !538
  %23 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %22, i32 0, i32 3, !dbg !539
  %24 = load i8*, i8** %23, align 8, !dbg !539
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !540
  %26 = bitcast %struct._NICK_REC* %25 to i8*, !dbg !540
  %27 = call i32 @g_hash_table_insert(%struct._GHashTable* %21, i8* %24, i8* %26), !dbg !541
  br label %42, !dbg !541

; <label>:28:                                     ; preds = %2
  br label %29, !dbg !542

; <label>:29:                                     ; preds = %34, %28
  %30 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !544
  %31 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %30, i32 0, i32 10, !dbg !546
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %31, align 8, !dbg !546
  %33 = icmp ne %struct._NICK_REC* %32, null, !dbg !547
  br i1 %33, label %34, label %38, !dbg !548

; <label>:34:                                     ; preds = %29
  %35 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !549
  %36 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %35, i32 0, i32 10, !dbg !550
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %36, align 8, !dbg !550
  store %struct._NICK_REC* %37, %struct._NICK_REC** %5, align 8, !dbg !551
  br label %29, !dbg !552, !llvm.loop !554

; <label>:38:                                     ; preds = %29
  %39 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !555
  %40 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !556
  %41 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %40, i32 0, i32 10, !dbg !557
  store %struct._NICK_REC* %39, %struct._NICK_REC** %41, align 8, !dbg !558
  br label %42

; <label>:42:                                     ; preds = %38, %18
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !559
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !561
  %45 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %44, i32 0, i32 16, !dbg !562
  %46 = load %struct._NICK_REC*, %struct._NICK_REC** %45, align 8, !dbg !562
  %47 = icmp eq %struct._NICK_REC* %43, %46, !dbg !563
  br i1 %47, label %48, label %51, !dbg !564

; <label>:48:                                     ; preds = %42
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !565
  %50 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !567
  call void @nicklist_set_own(%struct._CHANNEL_REC* %49, %struct._NICK_REC* %50), !dbg !568
  br label %51, !dbg !569

; <label>:51:                                     ; preds = %48, %42
  ret void, !dbg !570
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @nicklist_set_host(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #0 !dbg !571 {
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !574, metadata !496), !dbg !575
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !576, metadata !496), !dbg !577
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !578, metadata !496), !dbg !579
  br label %7, !dbg !580, !llvm.loop !581

; <label>:7:                                      ; preds = %3
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !582
  %9 = icmp ne %struct._CHANNEL_REC* %8, null, !dbg !586
  br i1 %9, label %10, label %11, !dbg !582

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !587

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nicklist_set_host, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !590
  br label %38, !dbg !593

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !594

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !596, !llvm.loop !597

; <label>:14:                                     ; preds = %13
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !598
  %16 = icmp ne %struct._NICK_REC* %15, null, !dbg !602
  br i1 %16, label %17, label %18, !dbg !598

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !603

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nicklist_set_host, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !606
  br label %38, !dbg !609

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !610

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !612, !llvm.loop !613

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !614
  %23 = icmp ne i8* %22, null, !dbg !618
  br i1 %23, label %24, label %25, !dbg !614

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !619

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nicklist_set_host, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !622
  br label %38, !dbg !625

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !626

; <label>:27:                                     ; preds = %26
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !628
  %29 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %28, i32 0, i32 4, !dbg !629
  %30 = load i8*, i8** %29, align 8, !dbg !629
  call void @g_free(i8* %30), !dbg !630
  %31 = load i8*, i8** %6, align 8, !dbg !631
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !632
  %33 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !633
  %34 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %33, i32 0, i32 4, !dbg !634
  store i8* %32, i8** %34, align 8, !dbg !635
  %35 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !636
  %36 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !637
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %35, %struct._NICK_REC* %36), !dbg !638
  br label %38, !dbg !639

; <label>:38:                                     ; preds = %27, %25, %18, %11
  ret void, !dbg !640
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @nicklist_remove(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !642 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !643, metadata !496), !dbg !644
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !645, metadata !496), !dbg !646
  br label %5, !dbg !647, !llvm.loop !648

; <label>:5:                                      ; preds = %2
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !649
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !649
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !653
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !654
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !654
  br i1 %10, label %11, label %12, !dbg !655

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !656

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !658

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !660

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.nicklist_remove, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !663
  br label %28, !dbg !666

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !667

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !669, !llvm.loop !670

; <label>:17:                                     ; preds = %16
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !671
  %19 = icmp ne %struct._NICK_REC* %18, null, !dbg !675
  br i1 %19, label %20, label %21, !dbg !671

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !676

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.nicklist_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !679
  br label %28, !dbg !682

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !683

; <label>:23:                                     ; preds = %22
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !685
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !686
  call void @nick_hash_remove(%struct._CHANNEL_REC* %24, %struct._NICK_REC* %25), !dbg !687
  %26 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !688
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !689
  call void @nicklist_destroy(%struct._CHANNEL_REC* %26, %struct._NICK_REC* %27), !dbg !690
  br label %28, !dbg !691

; <label>:28:                                     ; preds = %23, %21, %14
  ret void, !dbg !692
}

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @nick_hash_remove(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !694 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !695, metadata !496), !dbg !696
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !697, metadata !496), !dbg !698
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !699, metadata !496), !dbg !700
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !701, metadata !496), !dbg !702
  %7 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !703
  %8 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %7, i32 0, i32 15, !dbg !704
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !704
  %10 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !705
  %11 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %10, i32 0, i32 3, !dbg !706
  %12 = load i8*, i8** %11, align 8, !dbg !706
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* %12), !dbg !707
  %14 = bitcast i8* %13 to %struct._NICK_REC*, !dbg !707
  store %struct._NICK_REC* %14, %struct._NICK_REC** %5, align 8, !dbg !708
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !709
  %16 = icmp eq %struct._NICK_REC* %15, null, !dbg !711
  br i1 %16, label %17, label %18, !dbg !712

; <label>:17:                                     ; preds = %2
  br label %64, !dbg !713

; <label>:18:                                     ; preds = %2
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !714
  %20 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !716
  %21 = icmp eq %struct._NICK_REC* %19, %20, !dbg !717
  br i1 %21, label %22, label %26, !dbg !718

; <label>:22:                                     ; preds = %18
  %23 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !719
  %24 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %23, i32 0, i32 10, !dbg !721
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %24, align 8, !dbg !721
  store %struct._NICK_REC* %25, %struct._NICK_REC** %6, align 8, !dbg !722
  br label %44, !dbg !723

; <label>:26:                                     ; preds = %18
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !724
  store %struct._NICK_REC* %27, %struct._NICK_REC** %6, align 8, !dbg !726
  br label %28, !dbg !727

; <label>:28:                                     ; preds = %34, %26
  %29 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !728
  %30 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %29, i32 0, i32 10, !dbg !730
  %31 = load %struct._NICK_REC*, %struct._NICK_REC** %30, align 8, !dbg !730
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !731
  %33 = icmp ne %struct._NICK_REC* %31, %32, !dbg !732
  br i1 %33, label %34, label %38, !dbg !733

; <label>:34:                                     ; preds = %28
  %35 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !734
  %36 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %35, i32 0, i32 10, !dbg !735
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %36, align 8, !dbg !735
  store %struct._NICK_REC* %37, %struct._NICK_REC** %5, align 8, !dbg !736
  br label %28, !dbg !737, !llvm.loop !739

; <label>:38:                                     ; preds = %28
  %39 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !740
  %40 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %39, i32 0, i32 10, !dbg !741
  %41 = load %struct._NICK_REC*, %struct._NICK_REC** %40, align 8, !dbg !741
  %42 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !742
  %43 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %42, i32 0, i32 10, !dbg !743
  store %struct._NICK_REC* %41, %struct._NICK_REC** %43, align 8, !dbg !744
  br label %44

; <label>:44:                                     ; preds = %38, %22
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !745
  %46 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %45, i32 0, i32 15, !dbg !746
  %47 = load %struct._GHashTable*, %struct._GHashTable** %46, align 8, !dbg !746
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !747
  %49 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %48, i32 0, i32 3, !dbg !748
  %50 = load i8*, i8** %49, align 8, !dbg !748
  %51 = call i32 @g_hash_table_remove(%struct._GHashTable* %47, i8* %50), !dbg !749
  %52 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !750
  %53 = icmp ne %struct._NICK_REC* %52, null, !dbg !752
  br i1 %53, label %54, label %64, !dbg !753

; <label>:54:                                     ; preds = %44
  %55 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !754
  %56 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %55, i32 0, i32 15, !dbg !756
  %57 = load %struct._GHashTable*, %struct._GHashTable** %56, align 8, !dbg !756
  %58 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !757
  %59 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %58, i32 0, i32 3, !dbg !758
  %60 = load i8*, i8** %59, align 8, !dbg !758
  %61 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !759
  %62 = bitcast %struct._NICK_REC* %61 to i8*, !dbg !759
  %63 = call i32 @g_hash_table_insert(%struct._GHashTable* %57, i8* %60, i8* %62), !dbg !760
  br label %64, !dbg !761

; <label>:64:                                     ; preds = %17, %54, %44
  ret void, !dbg !762
}

; Function Attrs: nounwind uwtable
define internal void @nicklist_destroy(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !763 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !764, metadata !496), !dbg !765
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !766, metadata !496), !dbg !767
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !768
  %6 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !769
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %5, %struct._NICK_REC* %6), !dbg !770
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !771
  %9 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %8, i32 0, i32 16, !dbg !773
  %10 = load %struct._NICK_REC*, %struct._NICK_REC** %9, align 8, !dbg !773
  %11 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !774
  %12 = icmp eq %struct._NICK_REC* %10, %11, !dbg !775
  br i1 %12, label %13, label %16, !dbg !776

; <label>:13:                                     ; preds = %2
  %14 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !777
  %15 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %14, i32 0, i32 16, !dbg !778
  store %struct._NICK_REC* null, %struct._NICK_REC** %15, align 8, !dbg !779
  br label %16, !dbg !777

; <label>:16:                                     ; preds = %13, %2
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !780
  %18 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %17, i32 0, i32 3, !dbg !781
  %19 = load i8*, i8** %18, align 8, !dbg !781
  call void @g_free(i8* %19), !dbg !782
  %20 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !783
  %21 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %20, i32 0, i32 5, !dbg !784
  %22 = load i8*, i8** %21, align 8, !dbg !784
  call void @g_free(i8* %22), !dbg !785
  %23 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !786
  %24 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %23, i32 0, i32 4, !dbg !787
  %25 = load i8*, i8** %24, align 8, !dbg !787
  call void @g_free(i8* %25), !dbg !788
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !789
  %27 = bitcast %struct._NICK_REC* %26 to i8*, !dbg !789
  call void @g_free(i8* %27), !dbg !790
  ret void, !dbg !791
}

; Function Attrs: nounwind uwtable
define void @nicklist_rename(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !792 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !795, metadata !496), !dbg !796
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !797, metadata !496), !dbg !798
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !799, metadata !496), !dbg !800
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !801
  %8 = load i8*, i8** %5, align 8, !dbg !802
  %9 = load i8*, i8** %6, align 8, !dbg !803
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !804
  %11 = load i8*, i8** %5, align 8, !dbg !805
  %12 = call %struct._GSList* @nicklist_get_same(%struct._SERVER_REC* %10, i8* %11), !dbg !806
  call void @nicklist_rename_list(%struct._SERVER_REC* %7, i8* null, i8* %8, i8* %9, %struct._GSList* %12), !dbg !807
  ret void, !dbg !808
}

; Function Attrs: nounwind uwtable
define internal void @nicklist_rename_list(%struct._SERVER_REC*, i8*, i8*, i8*, %struct._GSList*) #0 !dbg !809 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._CHANNEL_REC*, align 8
  %12 = alloca %struct._NICK_REC*, align 8
  %13 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !812, metadata !496), !dbg !813
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !814, metadata !496), !dbg !815
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !816, metadata !496), !dbg !817
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !818, metadata !496), !dbg !819
  store %struct._GSList* %4, %struct._GSList** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !820, metadata !496), !dbg !821
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %11, metadata !822, metadata !496), !dbg !823
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %12, metadata !824, metadata !496), !dbg !825
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !826, metadata !496), !dbg !827
  %14 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !828
  store %struct._GSList* %14, %struct._GSList** %13, align 8, !dbg !830
  br label %15, !dbg !831

; <label>:15:                                     ; preds = %51, %5
  %16 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !832
  %17 = icmp ne %struct._GSList* %16, null, !dbg !835
  br i1 %17, label %18, label %57, !dbg !836

; <label>:18:                                     ; preds = %15
  %19 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !837
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !839
  %21 = load i8*, i8** %20, align 8, !dbg !839
  %22 = bitcast i8* %21 to %struct._CHANNEL_REC*, !dbg !837
  store %struct._CHANNEL_REC* %22, %struct._CHANNEL_REC** %11, align 8, !dbg !840
  %23 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !841
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 1, !dbg !842
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !842
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0, !dbg !843
  %27 = load i8*, i8** %26, align 8, !dbg !843
  %28 = bitcast i8* %27 to %struct._NICK_REC*, !dbg !841
  store %struct._NICK_REC* %28, %struct._NICK_REC** %12, align 8, !dbg !844
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !845
  %30 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !846
  call void @nick_hash_remove(%struct._CHANNEL_REC* %29, %struct._NICK_REC* %30), !dbg !847
  %31 = load i8*, i8** %7, align 8, !dbg !848
  %32 = icmp ne i8* %31, null, !dbg !850
  br i1 %32, label %33, label %37, !dbg !851

; <label>:33:                                     ; preds = %18
  %34 = load i8*, i8** %7, align 8, !dbg !852
  %35 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !853
  %36 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %35, i32 0, i32 9, !dbg !854
  store i8* %34, i8** %36, align 8, !dbg !855
  br label %37, !dbg !853

; <label>:37:                                     ; preds = %33, %18
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !856
  %39 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %38, i32 0, i32 3, !dbg !857
  %40 = load i8*, i8** %39, align 8, !dbg !857
  call void @g_free(i8* %40), !dbg !858
  %41 = load i8*, i8** %9, align 8, !dbg !859
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !860
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !861
  %44 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %43, i32 0, i32 3, !dbg !862
  store i8* %42, i8** %44, align 8, !dbg !863
  %45 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !864
  %46 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !865
  call void @nick_hash_add(%struct._CHANNEL_REC* %45, %struct._NICK_REC* %46), !dbg !866
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !867
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !868
  %49 = load i8*, i8** %8, align 8, !dbg !869
  %50 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32 3, %struct._CHANNEL_REC* %47, %struct._NICK_REC* %48, i8* %49), !dbg !870
  br label %51, !dbg !871

; <label>:51:                                     ; preds = %37
  %52 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !872
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1, !dbg !874
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !874
  %55 = getelementptr inbounds %struct._GSList, %struct._GSList* %54, i32 0, i32 1, !dbg !875
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !875
  store %struct._GSList* %56, %struct._GSList** %13, align 8, !dbg !876
  br label %15, !dbg !877, !llvm.loop !878

; <label>:57:                                     ; preds = %15
  %58 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !880
  call void @g_slist_free(%struct._GSList* %58), !dbg !881
  ret void, !dbg !882
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @nicklist_get_same(%struct._SERVER_REC*, i8*) #0 !dbg !883 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._NICK_REC*, align 8
  %9 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !886, metadata !496), !dbg !887
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !888, metadata !496), !dbg !889
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !890, metadata !496), !dbg !891
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !892, metadata !496), !dbg !893
  store %struct._GSList* null, %struct._GSList** %7, align 8, !dbg !893
  br label %10, !dbg !894, !llvm.loop !895

; <label>:10:                                     ; preds = %2
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !896
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !896
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !900
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !901
  %15 = icmp ne %struct._SERVER_REC* %14, null, !dbg !901
  br i1 %15, label %16, label %17, !dbg !902

; <label>:16:                                     ; preds = %10
  br i1 false, label %19, label %18, !dbg !903

; <label>:17:                                     ; preds = %10
  br i1 false, label %18, label %19, !dbg !905

; <label>:18:                                     ; preds = %17, %16
  br label %20, !dbg !907

; <label>:19:                                     ; preds = %17, %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nicklist_get_same, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)), !dbg !910
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !913
  br label %62, !dbg !913

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !914

; <label>:21:                                     ; preds = %20
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !916
  %23 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %22, i32 0, i32 23, !dbg !918
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !918
  store %struct._GSList* %24, %struct._GSList** %6, align 8, !dbg !919
  br label %25, !dbg !920

; <label>:25:                                     ; preds = %56, %21
  %26 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !921
  %27 = icmp ne %struct._GSList* %26, null, !dbg !924
  br i1 %27, label %28, label %60, !dbg !925

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %8, metadata !926, metadata !496), !dbg !928
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %9, metadata !929, metadata !496), !dbg !930
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !931
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !932
  %31 = load i8*, i8** %30, align 8, !dbg !932
  %32 = bitcast i8* %31 to %struct._CHANNEL_REC*, !dbg !931
  store %struct._CHANNEL_REC* %32, %struct._CHANNEL_REC** %9, align 8, !dbg !930
  %33 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !933
  %34 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %33, i32 0, i32 15, !dbg !935
  %35 = load %struct._GHashTable*, %struct._GHashTable** %34, align 8, !dbg !935
  %36 = load i8*, i8** %5, align 8, !dbg !936
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %35, i8* %36), !dbg !937
  %38 = bitcast i8* %37 to %struct._NICK_REC*, !dbg !937
  store %struct._NICK_REC* %38, %struct._NICK_REC** %8, align 8, !dbg !938
  br label %39, !dbg !939

; <label>:39:                                     ; preds = %51, %28
  %40 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !940
  %41 = icmp ne %struct._NICK_REC* %40, null, !dbg !942
  br i1 %41, label %42, label %55, !dbg !943

; <label>:42:                                     ; preds = %39
  %43 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !945
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !947
  %45 = bitcast %struct._CHANNEL_REC* %44 to i8*, !dbg !947
  %46 = call %struct._GSList* @g_slist_append(%struct._GSList* %43, i8* %45), !dbg !948
  store %struct._GSList* %46, %struct._GSList** %7, align 8, !dbg !949
  %47 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !950
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !951
  %49 = bitcast %struct._NICK_REC* %48 to i8*, !dbg !951
  %50 = call %struct._GSList* @g_slist_append(%struct._GSList* %47, i8* %49), !dbg !952
  store %struct._GSList* %50, %struct._GSList** %7, align 8, !dbg !953
  br label %51, !dbg !954

; <label>:51:                                     ; preds = %42
  %52 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !955
  %53 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %52, i32 0, i32 10, !dbg !956
  %54 = load %struct._NICK_REC*, %struct._NICK_REC** %53, align 8, !dbg !956
  store %struct._NICK_REC* %54, %struct._NICK_REC** %8, align 8, !dbg !957
  br label %39, !dbg !958, !llvm.loop !960

; <label>:55:                                     ; preds = %39
  br label %56, !dbg !962

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !963
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !965
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !965
  store %struct._GSList* %59, %struct._GSList** %6, align 8, !dbg !966
  br label %25, !dbg !967, !llvm.loop !968

; <label>:60:                                     ; preds = %25
  %61 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !970
  store %struct._GSList* %61, %struct._GSList** %3, align 8, !dbg !971
  br label %62, !dbg !971

; <label>:62:                                     ; preds = %60, %19
  %63 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !972
  ret %struct._GSList* %63, !dbg !972
}

; Function Attrs: nounwind uwtable
define void @nicklist_rename_unique(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !973 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !976, metadata !496), !dbg !977
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !978, metadata !496), !dbg !979
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !980, metadata !496), !dbg !981
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !982, metadata !496), !dbg !983
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !984, metadata !496), !dbg !985
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !986
  %12 = load i8*, i8** %9, align 8, !dbg !987
  %13 = load i8*, i8** %8, align 8, !dbg !988
  %14 = load i8*, i8** %10, align 8, !dbg !989
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !990
  %16 = load i8*, i8** %7, align 8, !dbg !991
  %17 = call %struct._GSList* @nicklist_get_same_unique(%struct._SERVER_REC* %15, i8* %16), !dbg !992
  call void @nicklist_rename_list(%struct._SERVER_REC* %11, i8* %12, i8* %13, i8* %14, %struct._GSList* %17), !dbg !993
  ret void, !dbg !994
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @nicklist_get_same_unique(%struct._SERVER_REC*, i8*) #0 !dbg !995 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NICKLIST_GET_SAME_UNIQUE_REC, align 8
  %7 = alloca %struct._GSList*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !998, metadata !496), !dbg !999
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1000, metadata !496), !dbg !1001
  call void @llvm.dbg.declare(metadata %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, metadata !1002, metadata !496), !dbg !1009
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1010, metadata !496), !dbg !1011
  br label %8, !dbg !1012, !llvm.loop !1013

; <label>:8:                                      ; preds = %2
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1014
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1014
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1018
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1019
  %13 = icmp ne %struct._SERVER_REC* %12, null, !dbg !1019
  br i1 %13, label %14, label %15, !dbg !1020

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !1021

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !1023

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1025

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.nicklist_get_same_unique, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)), !dbg !1028
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1031
  br label %54, !dbg !1031

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1032

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !1034, !llvm.loop !1035

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %5, align 8, !dbg !1036
  %22 = icmp ne i8* %21, null, !dbg !1040
  br i1 %22, label %23, label %24, !dbg !1036

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1041

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.nicklist_get_same_unique, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)), !dbg !1044
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1047
  br label %54, !dbg !1047

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1048

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %5, align 8, !dbg !1050
  %28 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, i32 0, i32 1, !dbg !1051
  store i8* %27, i8** %28, align 8, !dbg !1052
  %29 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, i32 0, i32 2, !dbg !1053
  store %struct._GSList* null, %struct._GSList** %29, align 8, !dbg !1054
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1055
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 23, !dbg !1057
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !1057
  store %struct._GSList* %32, %struct._GSList** %7, align 8, !dbg !1058
  br label %33, !dbg !1059

; <label>:33:                                     ; preds = %47, %26
  %34 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1060
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1063
  br i1 %35, label %36, label %51, !dbg !1064

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1065
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1067
  %39 = load i8*, i8** %38, align 8, !dbg !1067
  %40 = bitcast i8* %39 to %struct._CHANNEL_REC*, !dbg !1065
  %41 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, i32 0, i32 0, !dbg !1068
  store %struct._CHANNEL_REC* %40, %struct._CHANNEL_REC** %41, align 8, !dbg !1069
  %42 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, i32 0, i32 0, !dbg !1070
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %42, align 8, !dbg !1070
  %44 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %43, i32 0, i32 15, !dbg !1071
  %45 = load %struct._GHashTable*, %struct._GHashTable** %44, align 8, !dbg !1071
  %46 = bitcast %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6 to i8*, !dbg !1072
  call void @g_hash_table_foreach(%struct._GHashTable* %45, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._NICK_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC*)* @get_nicks_same_hash_unique to void (i8*, i8*, i8*)*), i8* %46), !dbg !1073
  br label %47, !dbg !1074

; <label>:47:                                     ; preds = %36
  %48 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1075
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !1077
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !1077
  store %struct._GSList* %50, %struct._GSList** %7, align 8, !dbg !1078
  br label %33, !dbg !1079, !llvm.loop !1080

; <label>:51:                                     ; preds = %33
  %52 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %6, i32 0, i32 2, !dbg !1082
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1082
  store %struct._GSList* %53, %struct._GSList** %3, align 8, !dbg !1083
  br label %54, !dbg !1083

; <label>:54:                                     ; preds = %51, %24, %17
  %55 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1084
  ret %struct._GSList* %55, !dbg !1084
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @nicklist_find_multiple(%struct._CHANNEL_REC*, i8*) #0 !dbg !1085 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._NICK_REC*, align 8
  %8 = alloca %struct._GHashTableIter, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1088, metadata !496), !dbg !1089
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1090, metadata !496), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1092, metadata !496), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %7, metadata !1094, metadata !496), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct._GHashTableIter* %8, metadata !1096, metadata !496), !dbg !1106
  br label %9, !dbg !1107, !llvm.loop !1108

; <label>:9:                                      ; preds = %2
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1109
  %11 = bitcast %struct._CHANNEL_REC* %10 to i8*, !dbg !1109
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1113
  %13 = bitcast i8* %12 to %struct._CHANNEL_REC*, !dbg !1114
  %14 = icmp ne %struct._CHANNEL_REC* %13, null, !dbg !1114
  br i1 %14, label %15, label %16, !dbg !1115

; <label>:15:                                     ; preds = %9
  br i1 false, label %18, label %17, !dbg !1116

; <label>:16:                                     ; preds = %9
  br i1 false, label %17, label %18, !dbg !1118

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !1120

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.nicklist_find_multiple, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !1123
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1126
  br label %66, !dbg !1126

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1127

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1129, !llvm.loop !1130

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !1131
  %23 = icmp ne i8* %22, null, !dbg !1135
  br i1 %23, label %24, label %25, !dbg !1131

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1136

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.nicklist_find_multiple, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1139
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1142
  br label %66, !dbg !1142

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1143

; <label>:27:                                     ; preds = %26
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !1145
  %28 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1146
  %29 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %28, i32 0, i32 15, !dbg !1147
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !1147
  call void @g_hash_table_iter_init(%struct._GHashTableIter* %8, %struct._GHashTable* %30), !dbg !1148
  br label %31, !dbg !1149

; <label>:31:                                     ; preds = %63, %27
  %32 = bitcast %struct._NICK_REC** %7 to i8*, !dbg !1150
  %33 = bitcast i8* %32 to i8**, !dbg !1150
  %34 = call i32 @g_hash_table_iter_next(%struct._GHashTableIter* %8, i8** null, i8** %33), !dbg !1152
  %35 = icmp ne i32 %34, 0, !dbg !1153
  br i1 %35, label %36, label %64, !dbg !1153

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !1154

; <label>:37:                                     ; preds = %59, %36
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !1156
  %39 = icmp ne %struct._NICK_REC* %38, null, !dbg !1160
  br i1 %39, label %40, label %63, !dbg !1161

; <label>:40:                                     ; preds = %37
  %41 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1162
  %42 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %41, i32 0, i32 4, !dbg !1165
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %42, align 8, !dbg !1165
  %44 = load i8*, i8** %5, align 8, !dbg !1166
  %45 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !1167
  %46 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %45, i32 0, i32 3, !dbg !1168
  %47 = load i8*, i8** %46, align 8, !dbg !1168
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !1169
  %49 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %48, i32 0, i32 4, !dbg !1170
  %50 = load i8*, i8** %49, align 8, !dbg !1170
  %51 = call i32 @mask_match_address(%struct._SERVER_REC* %43, i8* %44, i8* %47, i8* %50), !dbg !1171
  %52 = icmp ne i32 %51, 0, !dbg !1171
  br i1 %52, label %53, label %58, !dbg !1172

; <label>:53:                                     ; preds = %40
  %54 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1173
  %55 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !1174
  %56 = bitcast %struct._NICK_REC* %55 to i8*, !dbg !1174
  %57 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %54, i8* %56), !dbg !1175
  store %struct._GSList* %57, %struct._GSList** %6, align 8, !dbg !1176
  br label %58, !dbg !1177

; <label>:58:                                     ; preds = %53, %40
  br label %59, !dbg !1178

; <label>:59:                                     ; preds = %58
  %60 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !1179
  %61 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %60, i32 0, i32 10, !dbg !1181
  %62 = load %struct._NICK_REC*, %struct._NICK_REC** %61, align 8, !dbg !1181
  store %struct._NICK_REC* %62, %struct._NICK_REC** %7, align 8, !dbg !1182
  br label %37, !dbg !1183, !llvm.loop !1184

; <label>:63:                                     ; preds = %37
  br label %31, !dbg !1185, !llvm.loop !1187

; <label>:64:                                     ; preds = %31
  %65 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1188
  store %struct._GSList* %65, %struct._GSList** %3, align 8, !dbg !1189
  br label %66, !dbg !1189

; <label>:66:                                     ; preds = %64, %25, %18
  %67 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1190
  ret %struct._GSList* %67, !dbg !1190
}

declare void @g_hash_table_iter_init(%struct._GHashTableIter*, %struct._GHashTable*) #2

declare i32 @g_hash_table_iter_next(%struct._GHashTableIter*, i8**, i8**) #2

declare i32 @mask_match_address(%struct._SERVER_REC*, i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #0 !dbg !1191 {
  %3 = alloca %struct._NICK_REC*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1194, metadata !496), !dbg !1195
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1196, metadata !496), !dbg !1197
  br label %6, !dbg !1198, !llvm.loop !1199

; <label>:6:                                      ; preds = %2
  %7 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1200
  %8 = bitcast %struct._CHANNEL_REC* %7 to i8*, !dbg !1200
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1204
  %10 = bitcast i8* %9 to %struct._CHANNEL_REC*, !dbg !1205
  %11 = icmp ne %struct._CHANNEL_REC* %10, null, !dbg !1205
  br i1 %11, label %12, label %13, !dbg !1206

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !1207

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !1209

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !1211

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.nicklist_find, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !1214
  store %struct._NICK_REC* null, %struct._NICK_REC** %3, align 8, !dbg !1217
  br label %31, !dbg !1217

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1218

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1220, !llvm.loop !1221

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %5, align 8, !dbg !1222
  %20 = icmp ne i8* %19, null, !dbg !1226
  br i1 %20, label %21, label %22, !dbg !1222

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1227

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.nicklist_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1230
  store %struct._NICK_REC* null, %struct._NICK_REC** %3, align 8, !dbg !1233
  br label %31, !dbg !1233

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1234

; <label>:24:                                     ; preds = %23
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1236
  %26 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %25, i32 0, i32 15, !dbg !1237
  %27 = load %struct._GHashTable*, %struct._GHashTable** %26, align 8, !dbg !1237
  %28 = load i8*, i8** %5, align 8, !dbg !1238
  %29 = call i8* @g_hash_table_lookup(%struct._GHashTable* %27, i8* %28), !dbg !1239
  %30 = bitcast i8* %29 to %struct._NICK_REC*, !dbg !1239
  store %struct._NICK_REC* %30, %struct._NICK_REC** %3, align 8, !dbg !1240
  br label %31, !dbg !1240

; <label>:31:                                     ; preds = %24, %22, %15
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1241
  ret %struct._NICK_REC* %32, !dbg !1241
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._NICK_REC* @nicklist_find_unique(%struct._CHANNEL_REC*, i8*, i8*) #0 !dbg !1242 {
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1245, metadata !496), !dbg !1246
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1247, metadata !496), !dbg !1248
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1249, metadata !496), !dbg !1250
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %8, metadata !1251, metadata !496), !dbg !1252
  br label %9, !dbg !1253, !llvm.loop !1254

; <label>:9:                                      ; preds = %3
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1255
  %11 = bitcast %struct._CHANNEL_REC* %10 to i8*, !dbg !1255
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1259
  %13 = bitcast i8* %12 to %struct._CHANNEL_REC*, !dbg !1260
  %14 = icmp ne %struct._CHANNEL_REC* %13, null, !dbg !1260
  br i1 %14, label %15, label %16, !dbg !1261

; <label>:15:                                     ; preds = %9
  br i1 false, label %18, label %17, !dbg !1262

; <label>:16:                                     ; preds = %9
  br i1 false, label %17, label %18, !dbg !1264

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !1266

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.nicklist_find_unique, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !1269
  store %struct._NICK_REC* null, %struct._NICK_REC** %4, align 8, !dbg !1272
  br label %51, !dbg !1272

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1273

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1275, !llvm.loop !1276

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !1277
  %23 = icmp ne i8* %22, null, !dbg !1281
  br i1 %23, label %24, label %25, !dbg !1277

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1282

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.nicklist_find_unique, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1285
  store %struct._NICK_REC* null, %struct._NICK_REC** %4, align 8, !dbg !1288
  br label %51, !dbg !1288

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1289

; <label>:27:                                     ; preds = %26
  %28 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1291
  %29 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %28, i32 0, i32 15, !dbg !1292
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !1292
  %31 = load i8*, i8** %6, align 8, !dbg !1293
  %32 = call i8* @g_hash_table_lookup(%struct._GHashTable* %30, i8* %31), !dbg !1294
  %33 = bitcast i8* %32 to %struct._NICK_REC*, !dbg !1294
  store %struct._NICK_REC* %33, %struct._NICK_REC** %8, align 8, !dbg !1295
  br label %34, !dbg !1296

; <label>:34:                                     ; preds = %45, %27
  %35 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1297
  %36 = icmp ne %struct._NICK_REC* %35, null, !dbg !1299
  br i1 %36, label %37, label %43, !dbg !1300

; <label>:37:                                     ; preds = %34
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1301
  %39 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %38, i32 0, i32 9, !dbg !1303
  %40 = load i8*, i8** %39, align 8, !dbg !1303
  %41 = load i8*, i8** %7, align 8, !dbg !1304
  %42 = icmp ne i8* %40, %41, !dbg !1305
  br label %43

; <label>:43:                                     ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %49, !dbg !1306

; <label>:45:                                     ; preds = %43
  %46 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1308
  %47 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %46, i32 0, i32 10, !dbg !1309
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %47, align 8, !dbg !1309
  store %struct._NICK_REC* %48, %struct._NICK_REC** %8, align 8, !dbg !1310
  br label %34, !dbg !1311, !llvm.loop !1313

; <label>:49:                                     ; preds = %43
  %50 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1314
  store %struct._NICK_REC* %50, %struct._NICK_REC** %4, align 8, !dbg !1315
  br label %51, !dbg !1315

; <label>:51:                                     ; preds = %49, %25, %18
  %52 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1316
  ret %struct._NICK_REC* %52, !dbg !1316
}

; Function Attrs: nounwind uwtable
define %struct._NICK_REC* @nicklist_find_mask(%struct._CHANNEL_REC*, i8*) #0 !dbg !1317 {
  %3 = alloca %struct._NICK_REC*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1318, metadata !496), !dbg !1319
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1320, metadata !496), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1322, metadata !496), !dbg !1323
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1324, metadata !496), !dbg !1325
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1326, metadata !496), !dbg !1327
  br label %9, !dbg !1328, !llvm.loop !1329

; <label>:9:                                      ; preds = %2
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1330
  %11 = bitcast %struct._CHANNEL_REC* %10 to i8*, !dbg !1330
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1334
  %13 = bitcast i8* %12 to %struct._CHANNEL_REC*, !dbg !1335
  %14 = icmp ne %struct._CHANNEL_REC* %13, null, !dbg !1335
  br i1 %14, label %15, label %16, !dbg !1336

; <label>:15:                                     ; preds = %9
  br i1 false, label %18, label %17, !dbg !1337

; <label>:16:                                     ; preds = %9
  br i1 false, label %17, label %18, !dbg !1339

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !1341

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.nicklist_find_mask, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !1344
  store %struct._NICK_REC* null, %struct._NICK_REC** %3, align 8, !dbg !1347
  br label %84, !dbg !1347

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1348

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1350, !llvm.loop !1351

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %5, align 8, !dbg !1352
  %23 = icmp ne i8* %22, null, !dbg !1356
  br i1 %23, label %24, label %25, !dbg !1352

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1357

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.nicklist_find_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1360
  store %struct._NICK_REC* null, %struct._NICK_REC** %3, align 8, !dbg !1363
  br label %84, !dbg !1363

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1364

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %5, align 8, !dbg !1366
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !1367
  store i8* %29, i8** %7, align 8, !dbg !1368
  %30 = load i8*, i8** %7, align 8, !dbg !1369
  %31 = call i8* @strchr(i8* %30, i32 33) #6, !dbg !1370
  store i8* %31, i8** %8, align 8, !dbg !1371
  %32 = load i8*, i8** %8, align 8, !dbg !1372
  %33 = icmp ne i8* %32, null, !dbg !1374
  br i1 %33, label %34, label %37, !dbg !1375

; <label>:34:                                     ; preds = %27
  %35 = load i8*, i8** %8, align 8, !dbg !1376
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !1376
  store i8* %36, i8** %8, align 8, !dbg !1376
  store i8 0, i8* %35, align 1, !dbg !1378
  br label %37, !dbg !1379

; <label>:37:                                     ; preds = %34, %27
  %38 = load i8*, i8** %7, align 8, !dbg !1380
  %39 = call i8* @strchr(i8* %38, i32 42) #6, !dbg !1382
  %40 = icmp ne i8* %39, null, !dbg !1382
  br i1 %40, label %45, label %41, !dbg !1383

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %7, align 8, !dbg !1384
  %43 = call i8* @strchr(i8* %42, i32 63) #6, !dbg !1386
  %44 = icmp ne i8* %43, null, !dbg !1386
  br i1 %44, label %45, label %50, !dbg !1387

; <label>:45:                                     ; preds = %41, %37
  %46 = load i8*, i8** %7, align 8, !dbg !1388
  call void @g_free(i8* %46), !dbg !1390
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1391
  %48 = load i8*, i8** %5, align 8, !dbg !1392
  %49 = call %struct._NICK_REC* @nicklist_find_wildcards(%struct._CHANNEL_REC* %47, i8* %48), !dbg !1393
  store %struct._NICK_REC* %49, %struct._NICK_REC** %3, align 8, !dbg !1394
  br label %84, !dbg !1394

; <label>:50:                                     ; preds = %41
  %51 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1395
  %52 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %51, i32 0, i32 15, !dbg !1396
  %53 = load %struct._GHashTable*, %struct._GHashTable** %52, align 8, !dbg !1396
  %54 = load i8*, i8** %7, align 8, !dbg !1397
  %55 = call i8* @g_hash_table_lookup(%struct._GHashTable* %53, i8* %54), !dbg !1398
  %56 = bitcast i8* %55 to %struct._NICK_REC*, !dbg !1398
  store %struct._NICK_REC* %56, %struct._NICK_REC** %6, align 8, !dbg !1399
  %57 = load i8*, i8** %8, align 8, !dbg !1400
  %58 = icmp ne i8* %57, null, !dbg !1402
  br i1 %58, label %59, label %81, !dbg !1403

; <label>:59:                                     ; preds = %50
  br label %60, !dbg !1404

; <label>:60:                                     ; preds = %76, %59
  %61 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1406
  %62 = icmp ne %struct._NICK_REC* %61, null, !dbg !1408
  br i1 %62, label %63, label %80, !dbg !1409

; <label>:63:                                     ; preds = %60
  %64 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1410
  %65 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %64, i32 0, i32 4, !dbg !1413
  %66 = load i8*, i8** %65, align 8, !dbg !1413
  %67 = icmp ne i8* %66, null, !dbg !1414
  br i1 %67, label %68, label %76, !dbg !1415

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %8, align 8, !dbg !1416
  %70 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1417
  %71 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %70, i32 0, i32 4, !dbg !1418
  %72 = load i8*, i8** %71, align 8, !dbg !1418
  %73 = call i32 @match_wildcards(i8* %69, i8* %72), !dbg !1419
  %74 = icmp ne i32 %73, 0, !dbg !1419
  br i1 %74, label %75, label %76, !dbg !1420

; <label>:75:                                     ; preds = %68
  br label %80, !dbg !1422

; <label>:76:                                     ; preds = %68, %63
  %77 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1423
  %78 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %77, i32 0, i32 10, !dbg !1424
  %79 = load %struct._NICK_REC*, %struct._NICK_REC** %78, align 8, !dbg !1424
  store %struct._NICK_REC* %79, %struct._NICK_REC** %6, align 8, !dbg !1425
  br label %60, !dbg !1426, !llvm.loop !1428

; <label>:80:                                     ; preds = %75, %60
  br label %81, !dbg !1429

; <label>:81:                                     ; preds = %80, %50
  %82 = load i8*, i8** %7, align 8, !dbg !1430
  call void @g_free(i8* %82), !dbg !1431
  %83 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1432
  store %struct._NICK_REC* %83, %struct._NICK_REC** %3, align 8, !dbg !1433
  br label %84, !dbg !1433

; <label>:84:                                     ; preds = %81, %45, %25, %18
  %85 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1434
  ret %struct._NICK_REC* %85, !dbg !1434
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._NICK_REC* @nicklist_find_wildcards(%struct._CHANNEL_REC*, i8*) #0 !dbg !1435 {
  %3 = alloca %struct._NICK_REC*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca %struct._GHashTableIter, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1436, metadata !496), !dbg !1437
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1438, metadata !496), !dbg !1439
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1440, metadata !496), !dbg !1441
  call void @llvm.dbg.declare(metadata %struct._GHashTableIter* %7, metadata !1442, metadata !496), !dbg !1443
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1444
  %9 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %8, i32 0, i32 15, !dbg !1445
  %10 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !1445
  call void @g_hash_table_iter_init(%struct._GHashTableIter* %7, %struct._GHashTable* %10), !dbg !1446
  br label %11, !dbg !1447

; <label>:11:                                     ; preds = %40, %2
  %12 = bitcast %struct._NICK_REC** %6 to i8*, !dbg !1448
  %13 = bitcast i8* %12 to i8**, !dbg !1448
  %14 = call i32 @g_hash_table_iter_next(%struct._GHashTableIter* %7, i8** null, i8** %13), !dbg !1450
  %15 = icmp ne i32 %14, 0, !dbg !1451
  br i1 %15, label %16, label %41, !dbg !1451

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !1452

; <label>:17:                                     ; preds = %36, %16
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1454
  %19 = icmp ne %struct._NICK_REC* %18, null, !dbg !1458
  br i1 %19, label %20, label %40, !dbg !1459

; <label>:20:                                     ; preds = %17
  %21 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1460
  %22 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %21, i32 0, i32 4, !dbg !1463
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %22, align 8, !dbg !1463
  %24 = load i8*, i8** %5, align 8, !dbg !1464
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1465
  %26 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %25, i32 0, i32 3, !dbg !1466
  %27 = load i8*, i8** %26, align 8, !dbg !1466
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1467
  %29 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %28, i32 0, i32 4, !dbg !1468
  %30 = load i8*, i8** %29, align 8, !dbg !1468
  %31 = call i32 @mask_match_address(%struct._SERVER_REC* %23, i8* %24, i8* %27, i8* %30), !dbg !1469
  %32 = icmp ne i32 %31, 0, !dbg !1469
  br i1 %32, label %33, label %35, !dbg !1470

; <label>:33:                                     ; preds = %20
  %34 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1471
  store %struct._NICK_REC* %34, %struct._NICK_REC** %3, align 8, !dbg !1472
  br label %42, !dbg !1472

; <label>:35:                                     ; preds = %20
  br label %36, !dbg !1473

; <label>:36:                                     ; preds = %35
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1474
  %38 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %37, i32 0, i32 10, !dbg !1476
  %39 = load %struct._NICK_REC*, %struct._NICK_REC** %38, align 8, !dbg !1476
  store %struct._NICK_REC* %39, %struct._NICK_REC** %6, align 8, !dbg !1477
  br label %17, !dbg !1478, !llvm.loop !1479

; <label>:40:                                     ; preds = %17
  br label %11, !dbg !1480, !llvm.loop !1482

; <label>:41:                                     ; preds = %11
  store %struct._NICK_REC* null, %struct._NICK_REC** %3, align 8, !dbg !1483
  br label %42, !dbg !1483

; <label>:42:                                     ; preds = %41, %33
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1484
  ret %struct._NICK_REC* %43, !dbg !1484
}

declare i32 @match_wildcards(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #0 !dbg !1485 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !1488, metadata !496), !dbg !1489
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1490, metadata !496), !dbg !1491
  br label %5, !dbg !1492, !llvm.loop !1493

; <label>:5:                                      ; preds = %1
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1494
  %7 = bitcast %struct._CHANNEL_REC* %6 to i8*, !dbg !1494
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1498
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !1499
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !1499
  br i1 %10, label %11, label %12, !dbg !1500

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1501

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1503

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1505

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.nicklist_getnicks, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !1508
  store %struct._GSList* null, %struct._GSList** %2, align 8, !dbg !1511
  br label %22, !dbg !1511

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1512

; <label>:16:                                     ; preds = %15
  store %struct._GSList* null, %struct._GSList** %4, align 8, !dbg !1514
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1515
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 15, !dbg !1516
  %19 = load %struct._GHashTable*, %struct._GHashTable** %18, align 8, !dbg !1516
  %20 = bitcast %struct._GSList** %4 to i8*, !dbg !1517
  call void @g_hash_table_foreach(%struct._GHashTable* %19, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._NICK_REC*, %struct._GSList**)* @get_nicks_hash to void (i8*, i8*, i8*)*), i8* %20), !dbg !1518
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1519
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !1520
  br label %22, !dbg !1520

; <label>:22:                                     ; preds = %16, %14
  %23 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1521
  ret %struct._GSList* %23, !dbg !1521
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_nicks_hash(i8*, %struct._NICK_REC*, %struct._GSList**) #0 !dbg !1522 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1526, metadata !496), !dbg !1527
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1528, metadata !496), !dbg !1529
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !1530, metadata !496), !dbg !1531
  br label %7, !dbg !1532

; <label>:7:                                      ; preds = %10, %3
  %8 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1533
  %9 = icmp ne %struct._NICK_REC* %8, null, !dbg !1535
  br i1 %9, label %10, label %20, !dbg !1536

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1537
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1539
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1540
  %14 = bitcast %struct._NICK_REC* %13 to i8*, !dbg !1540
  %15 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %12, i8* %14), !dbg !1541
  %16 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1542
  store %struct._GSList* %15, %struct._GSList** %16, align 8, !dbg !1543
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1544
  %18 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %17, i32 0, i32 10, !dbg !1545
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %18, align 8, !dbg !1545
  store %struct._NICK_REC* %19, %struct._NICK_REC** %5, align 8, !dbg !1546
  br label %7, !dbg !1547, !llvm.loop !1549

; <label>:20:                                     ; preds = %7
  ret void, !dbg !1550
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_nicks_same_hash_unique(i8*, %struct._NICK_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC*) #0 !dbg !1551 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct.NICKLIST_GET_SAME_UNIQUE_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1555, metadata !496), !dbg !1556
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1557, metadata !496), !dbg !1558
  store %struct.NICKLIST_GET_SAME_UNIQUE_REC* %2, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, metadata !1559, metadata !496), !dbg !1560
  br label %7, !dbg !1561

; <label>:7:                                      ; preds = %37, %3
  %8 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1562
  %9 = icmp ne %struct._NICK_REC* %8, null, !dbg !1564
  br i1 %9, label %10, label %41, !dbg !1565

; <label>:10:                                     ; preds = %7
  %11 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1566
  %12 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %11, i32 0, i32 9, !dbg !1569
  %13 = load i8*, i8** %12, align 8, !dbg !1569
  %14 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1570
  %15 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %14, i32 0, i32 1, !dbg !1571
  %16 = load i8*, i8** %15, align 8, !dbg !1571
  %17 = icmp eq i8* %13, %16, !dbg !1572
  br i1 %17, label %18, label %37, !dbg !1573

; <label>:18:                                     ; preds = %10
  %19 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1574
  %20 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %19, i32 0, i32 2, !dbg !1576
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !1576
  %22 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1577
  %23 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %22, i32 0, i32 0, !dbg !1578
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %23, align 8, !dbg !1578
  %25 = bitcast %struct._CHANNEL_REC* %24 to i8*, !dbg !1577
  %26 = call %struct._GSList* @g_slist_append(%struct._GSList* %21, i8* %25), !dbg !1579
  %27 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1580
  %28 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %27, i32 0, i32 2, !dbg !1581
  store %struct._GSList* %26, %struct._GSList** %28, align 8, !dbg !1582
  %29 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1583
  %30 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %29, i32 0, i32 2, !dbg !1584
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1584
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1585
  %33 = bitcast %struct._NICK_REC* %32 to i8*, !dbg !1585
  %34 = call %struct._GSList* @g_slist_append(%struct._GSList* %31, i8* %33), !dbg !1586
  %35 = load %struct.NICKLIST_GET_SAME_UNIQUE_REC*, %struct.NICKLIST_GET_SAME_UNIQUE_REC** %6, align 8, !dbg !1587
  %36 = getelementptr inbounds %struct.NICKLIST_GET_SAME_UNIQUE_REC, %struct.NICKLIST_GET_SAME_UNIQUE_REC* %35, i32 0, i32 2, !dbg !1588
  store %struct._GSList* %34, %struct._GSList** %36, align 8, !dbg !1589
  br label %41, !dbg !1590

; <label>:37:                                     ; preds = %10
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1591
  %39 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %38, i32 0, i32 10, !dbg !1592
  %40 = load %struct._NICK_REC*, %struct._NICK_REC** %39, align 8, !dbg !1592
  store %struct._NICK_REC* %40, %struct._NICK_REC** %5, align 8, !dbg !1593
  br label %7, !dbg !1594, !llvm.loop !1596

; <label>:41:                                     ; preds = %18, %7
  ret void, !dbg !1597
}

; Function Attrs: nounwind uwtable
define i32 @nicklist_compare(%struct._NICK_REC*, %struct._NICK_REC*, i8*) #0 !dbg !1598 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._NICK_REC* %0, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1601, metadata !496), !dbg !1602
  store %struct._NICK_REC* %1, %struct._NICK_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1603, metadata !496), !dbg !1604
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1605, metadata !496), !dbg !1606
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1607, metadata !496), !dbg !1608
  %9 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1609
  %10 = icmp eq %struct._NICK_REC* %9, null, !dbg !1611
  br i1 %10, label %11, label %12, !dbg !1612

; <label>:11:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1613
  br label %99, !dbg !1613

; <label>:12:                                     ; preds = %3
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1615
  %14 = icmp eq %struct._NICK_REC* %13, null, !dbg !1617
  br i1 %14, label %15, label %16, !dbg !1618

; <label>:15:                                     ; preds = %12
  store i32 1, i32* %4, align 4, !dbg !1619
  br label %99, !dbg !1619

; <label>:16:                                     ; preds = %12
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1621
  %18 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %17, i32 0, i32 8, !dbg !1623
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0, !dbg !1621
  %20 = load i8, i8* %19, align 1, !dbg !1621
  %21 = sext i8 %20 to i32, !dbg !1621
  %22 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1624
  %23 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %22, i32 0, i32 8, !dbg !1625
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0, !dbg !1624
  %25 = load i8, i8* %24, align 1, !dbg !1624
  %26 = sext i8 %25 to i32, !dbg !1624
  %27 = icmp eq i32 %21, %26, !dbg !1626
  br i1 %27, label %28, label %36, !dbg !1627

; <label>:28:                                     ; preds = %16
  %29 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1628
  %30 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %29, i32 0, i32 3, !dbg !1629
  %31 = load i8*, i8** %30, align 8, !dbg !1629
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1630
  %33 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %32, i32 0, i32 3, !dbg !1631
  %34 = load i8*, i8** %33, align 8, !dbg !1631
  %35 = call i32 @g_ascii_strcasecmp(i8* %31, i8* %34), !dbg !1632
  store i32 %35, i32* %4, align 4, !dbg !1633
  br label %99, !dbg !1633

; <label>:36:                                     ; preds = %16
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1634
  %38 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %37, i32 0, i32 8, !dbg !1636
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0, !dbg !1634
  %40 = load i8, i8* %39, align 1, !dbg !1634
  %41 = icmp ne i8 %40, 0, !dbg !1634
  br i1 %41, label %43, label %42, !dbg !1637

; <label>:42:                                     ; preds = %36
  store i32 1, i32* %4, align 4, !dbg !1638
  br label %99, !dbg !1638

; <label>:43:                                     ; preds = %36
  %44 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1639
  %45 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %44, i32 0, i32 8, !dbg !1641
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %45, i64 0, i64 0, !dbg !1639
  %47 = load i8, i8* %46, align 1, !dbg !1639
  %48 = icmp ne i8 %47, 0, !dbg !1639
  br i1 %48, label %50, label %49, !dbg !1642

; <label>:49:                                     ; preds = %43
  store i32 -1, i32* %4, align 4, !dbg !1643
  br label %99, !dbg !1643

; <label>:50:                                     ; preds = %43
  store i32 0, i32* %8, align 4, !dbg !1644
  br label %51, !dbg !1646

; <label>:51:                                     ; preds = %88, %50
  %52 = load i32, i32* %8, align 4, !dbg !1647
  %53 = sext i32 %52 to i64, !dbg !1650
  %54 = load i8*, i8** %7, align 8, !dbg !1650
  %55 = getelementptr inbounds i8, i8* %54, i64 %53, !dbg !1650
  %56 = load i8, i8* %55, align 1, !dbg !1650
  %57 = sext i8 %56 to i32, !dbg !1650
  %58 = icmp ne i32 %57, 0, !dbg !1651
  br i1 %58, label %59, label %91, !dbg !1652

; <label>:59:                                     ; preds = %51
  %60 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1653
  %61 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %60, i32 0, i32 8, !dbg !1656
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 0, !dbg !1653
  %63 = load i8, i8* %62, align 1, !dbg !1653
  %64 = sext i8 %63 to i32, !dbg !1653
  %65 = load i32, i32* %8, align 4, !dbg !1657
  %66 = sext i32 %65 to i64, !dbg !1658
  %67 = load i8*, i8** %7, align 8, !dbg !1658
  %68 = getelementptr inbounds i8, i8* %67, i64 %66, !dbg !1658
  %69 = load i8, i8* %68, align 1, !dbg !1658
  %70 = sext i8 %69 to i32, !dbg !1658
  %71 = icmp eq i32 %64, %70, !dbg !1659
  br i1 %71, label %72, label %73, !dbg !1660

; <label>:72:                                     ; preds = %59
  store i32 -1, i32* %4, align 4, !dbg !1661
  br label %99, !dbg !1661

; <label>:73:                                     ; preds = %59
  %74 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1662
  %75 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %74, i32 0, i32 8, !dbg !1664
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %75, i64 0, i64 0, !dbg !1662
  %77 = load i8, i8* %76, align 1, !dbg !1662
  %78 = sext i8 %77 to i32, !dbg !1662
  %79 = load i32, i32* %8, align 4, !dbg !1665
  %80 = sext i32 %79 to i64, !dbg !1666
  %81 = load i8*, i8** %7, align 8, !dbg !1666
  %82 = getelementptr inbounds i8, i8* %81, i64 %80, !dbg !1666
  %83 = load i8, i8* %82, align 1, !dbg !1666
  %84 = sext i8 %83 to i32, !dbg !1666
  %85 = icmp eq i32 %78, %84, !dbg !1667
  br i1 %85, label %86, label %87, !dbg !1668

; <label>:86:                                     ; preds = %73
  store i32 1, i32* %4, align 4, !dbg !1669
  br label %99, !dbg !1669

; <label>:87:                                     ; preds = %73
  br label %88, !dbg !1670

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %8, align 4, !dbg !1671
  %90 = add nsw i32 %89, 1, !dbg !1671
  store i32 %90, i32* %8, align 4, !dbg !1671
  br label %51, !dbg !1673, !llvm.loop !1674

; <label>:91:                                     ; preds = %51
  %92 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1676
  %93 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %92, i32 0, i32 3, !dbg !1677
  %94 = load i8*, i8** %93, align 8, !dbg !1677
  %95 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1678
  %96 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %95, i32 0, i32 3, !dbg !1679
  %97 = load i8*, i8** %96, align 8, !dbg !1679
  %98 = call i32 @g_ascii_strcasecmp(i8* %94, i8* %97), !dbg !1680
  store i32 %98, i32* %4, align 4, !dbg !1681
  br label %99, !dbg !1681

; <label>:99:                                     ; preds = %91, %86, %72, %49, %42, %28, %15, %11
  %100 = load i32, i32* %4, align 4, !dbg !1682
  ret i32 %100, !dbg !1682
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @nicklist_update_flags(%struct._SERVER_REC*, i8*, i32, i32) #0 !dbg !1683 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1686, metadata !496), !dbg !1687
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1688, metadata !496), !dbg !1689
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1690, metadata !496), !dbg !1691
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1692, metadata !496), !dbg !1693
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1694
  %10 = load i32, i32* %7, align 4, !dbg !1695
  %11 = load i32, i32* %8, align 4, !dbg !1696
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1697
  %13 = load i8*, i8** %6, align 8, !dbg !1698
  %14 = call %struct._GSList* @nicklist_get_same(%struct._SERVER_REC* %12, i8* %13), !dbg !1699
  call void @nicklist_update_flags_list(%struct._SERVER_REC* %9, i32 %10, i32 %11, %struct._GSList* %14), !dbg !1700
  ret void, !dbg !1701
}

; Function Attrs: nounwind uwtable
define internal void @nicklist_update_flags_list(%struct._SERVER_REC*, i32, i32, %struct._GSList*) #0 !dbg !1702 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._CHANNEL_REC*, align 8
  %11 = alloca %struct._NICK_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1705, metadata !496), !dbg !1706
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1707, metadata !496), !dbg !1708
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1709, metadata !496), !dbg !1710
  store %struct._GSList* %3, %struct._GSList** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1711, metadata !496), !dbg !1712
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1713, metadata !496), !dbg !1714
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %10, metadata !1715, metadata !496), !dbg !1716
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %11, metadata !1717, metadata !496), !dbg !1718
  br label %12, !dbg !1719, !llvm.loop !1720

; <label>:12:                                     ; preds = %4
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1721
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1721
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1725
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1726
  %17 = icmp ne %struct._SERVER_REC* %16, null, !dbg !1726
  br i1 %17, label %18, label %19, !dbg !1727

; <label>:18:                                     ; preds = %12
  br i1 false, label %21, label %20, !dbg !1728

; <label>:19:                                     ; preds = %12
  br i1 false, label %20, label %21, !dbg !1730

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !1732

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.nicklist_update_flags_list, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)), !dbg !1735
  br label %100, !dbg !1738

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1739

; <label>:23:                                     ; preds = %22
  %24 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1741
  store %struct._GSList* %24, %struct._GSList** %9, align 8, !dbg !1743
  br label %25, !dbg !1744

; <label>:25:                                     ; preds = %92, %23
  %26 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1745
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1748
  br i1 %27, label %28, label %98, !dbg !1749

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1750
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1752
  %31 = load i8*, i8** %30, align 8, !dbg !1752
  %32 = bitcast i8* %31 to %struct._CHANNEL_REC*, !dbg !1750
  store %struct._CHANNEL_REC* %32, %struct._CHANNEL_REC** %10, align 8, !dbg !1753
  %33 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1754
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !1755
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1755
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !1756
  %37 = load i8*, i8** %36, align 8, !dbg !1756
  %38 = bitcast i8* %37 to %struct._NICK_REC*, !dbg !1754
  store %struct._NICK_REC* %38, %struct._NICK_REC** %11, align 8, !dbg !1757
  %39 = call i64 @time(i64* null) #7, !dbg !1758
  %40 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1759
  %41 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %40, i32 0, i32 2, !dbg !1760
  store i64 %39, i64* %41, align 8, !dbg !1761
  %42 = load i32, i32* %6, align 4, !dbg !1762
  %43 = icmp ne i32 %42, -1, !dbg !1764
  br i1 %43, label %44, label %65, !dbg !1765

; <label>:44:                                     ; preds = %28
  %45 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1766
  %46 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %45, i32 0, i32 7, !dbg !1768
  %47 = load i8, i8* %46, align 4, !dbg !1768
  %48 = and i8 %47, 1, !dbg !1768
  %49 = zext i8 %48 to i32, !dbg !1768
  %50 = load i32, i32* %6, align 4, !dbg !1769
  %51 = icmp ne i32 %49, %50, !dbg !1770
  br i1 %51, label %52, label %65, !dbg !1771

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %6, align 4, !dbg !1772
  %54 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1774
  %55 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %54, i32 0, i32 7, !dbg !1775
  %56 = trunc i32 %53 to i8, !dbg !1776
  %57 = load i8, i8* %55, align 4, !dbg !1776
  %58 = and i8 %56, 1, !dbg !1776
  %59 = and i8 %57, -2, !dbg !1776
  %60 = or i8 %59, %58, !dbg !1776
  store i8 %60, i8* %55, align 4, !dbg !1776
  %61 = zext i8 %58 to i32, !dbg !1776
  %62 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1777
  %63 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1778
  %64 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %62, %struct._NICK_REC* %63), !dbg !1779
  br label %65, !dbg !1780

; <label>:65:                                     ; preds = %52, %44, %28
  %66 = load i32, i32* %7, align 4, !dbg !1781
  %67 = icmp ne i32 %66, -1, !dbg !1783
  br i1 %67, label %68, label %91, !dbg !1784

; <label>:68:                                     ; preds = %65
  %69 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1785
  %70 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %69, i32 0, i32 7, !dbg !1787
  %71 = load i8, i8* %70, align 4, !dbg !1787
  %72 = lshr i8 %71, 1, !dbg !1787
  %73 = and i8 %72, 1, !dbg !1787
  %74 = zext i8 %73 to i32, !dbg !1787
  %75 = load i32, i32* %7, align 4, !dbg !1788
  %76 = icmp ne i32 %74, %75, !dbg !1789
  br i1 %76, label %77, label %91, !dbg !1790

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %7, align 4, !dbg !1791
  %79 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1793
  %80 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %79, i32 0, i32 7, !dbg !1794
  %81 = trunc i32 %78 to i8, !dbg !1795
  %82 = load i8, i8* %80, align 4, !dbg !1795
  %83 = and i8 %81, 1, !dbg !1795
  %84 = shl i8 %83, 1, !dbg !1795
  %85 = and i8 %82, -3, !dbg !1795
  %86 = or i8 %85, %84, !dbg !1795
  store i8 %86, i8* %80, align 4, !dbg !1795
  %87 = zext i8 %83 to i32, !dbg !1795
  %88 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1796
  %89 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1797
  %90 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._CHANNEL_REC* %88, %struct._NICK_REC* %89), !dbg !1798
  br label %91, !dbg !1799

; <label>:91:                                     ; preds = %77, %68, %65
  br label %92, !dbg !1800

; <label>:92:                                     ; preds = %91
  %93 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1801
  %94 = getelementptr inbounds %struct._GSList, %struct._GSList* %93, i32 0, i32 1, !dbg !1803
  %95 = load %struct._GSList*, %struct._GSList** %94, align 8, !dbg !1803
  %96 = getelementptr inbounds %struct._GSList, %struct._GSList* %95, i32 0, i32 1, !dbg !1804
  %97 = load %struct._GSList*, %struct._GSList** %96, align 8, !dbg !1804
  store %struct._GSList* %97, %struct._GSList** %9, align 8, !dbg !1805
  br label %25, !dbg !1806, !llvm.loop !1807

; <label>:98:                                     ; preds = %25
  %99 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1809
  call void @g_slist_free(%struct._GSList* %99), !dbg !1810
  br label %100, !dbg !1811

; <label>:100:                                    ; preds = %98, %21
  ret void, !dbg !1812
}

; Function Attrs: nounwind uwtable
define void @nicklist_update_flags_unique(%struct._SERVER_REC*, i8*, i32, i32) #0 !dbg !1814 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1817, metadata !496), !dbg !1818
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1819, metadata !496), !dbg !1820
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1821, metadata !496), !dbg !1822
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1823, metadata !496), !dbg !1824
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1825
  %10 = load i32, i32* %7, align 4, !dbg !1826
  %11 = load i32, i32* %8, align 4, !dbg !1827
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1828
  %13 = load i8*, i8** %6, align 8, !dbg !1829
  %14 = call %struct._GSList* @nicklist_get_same_unique(%struct._SERVER_REC* %12, i8* %13), !dbg !1830
  call void @nicklist_update_flags_list(%struct._SERVER_REC* %9, i32 %10, i32 %11, %struct._GSList* %14), !dbg !1831
  ret void, !dbg !1832
}

; Function Attrs: nounwind uwtable
define void @nicklist_set_own(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !1833 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !1834, metadata !496), !dbg !1835
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !1836, metadata !496), !dbg !1837
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1838, metadata !496), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1840, metadata !496), !dbg !1841
  %7 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1842
  %8 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1843
  %9 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %8, i32 0, i32 16, !dbg !1844
  store %struct._NICK_REC* %7, %struct._NICK_REC** %9, align 8, !dbg !1845
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1846
  %11 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %10, i32 0, i32 15, !dbg !1847
  %12 = load %struct._GHashTable*, %struct._GHashTable** %11, align 8, !dbg !1847
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1848
  %14 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %13, i32 0, i32 3, !dbg !1849
  %15 = load i8*, i8** %14, align 8, !dbg !1849
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %15), !dbg !1850
  %17 = bitcast i8* %16 to %struct._NICK_REC*, !dbg !1850
  store %struct._NICK_REC* %17, %struct._NICK_REC** %5, align 8, !dbg !1851
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1852
  %19 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %18, i32 0, i32 10, !dbg !1854
  %20 = load %struct._NICK_REC*, %struct._NICK_REC** %19, align 8, !dbg !1854
  %21 = icmp eq %struct._NICK_REC* %20, null, !dbg !1855
  br i1 %21, label %22, label %23, !dbg !1856

; <label>:22:                                     ; preds = %2
  br label %53, !dbg !1857

; <label>:23:                                     ; preds = %2
  %24 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1858
  %25 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %24, i32 0, i32 10, !dbg !1859
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %25, align 8, !dbg !1859
  store %struct._NICK_REC* %26, %struct._NICK_REC** %6, align 8, !dbg !1860
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1861
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1862
  %29 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %28, i32 0, i32 10, !dbg !1863
  store %struct._NICK_REC* %27, %struct._NICK_REC** %29, align 8, !dbg !1864
  br label %30, !dbg !1865

; <label>:30:                                     ; preds = %36, %23
  %31 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1866
  %32 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %31, i32 0, i32 10, !dbg !1868
  %33 = load %struct._NICK_REC*, %struct._NICK_REC** %32, align 8, !dbg !1868
  %34 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1869
  %35 = icmp ne %struct._NICK_REC* %33, %34, !dbg !1870
  br i1 %35, label %36, label %40, !dbg !1871

; <label>:36:                                     ; preds = %30
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1872
  %38 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %37, i32 0, i32 10, !dbg !1873
  %39 = load %struct._NICK_REC*, %struct._NICK_REC** %38, align 8, !dbg !1873
  store %struct._NICK_REC* %39, %struct._NICK_REC** %5, align 8, !dbg !1874
  br label %30, !dbg !1875, !llvm.loop !1877

; <label>:40:                                     ; preds = %30
  %41 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1878
  %42 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1879
  %43 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %42, i32 0, i32 10, !dbg !1880
  store %struct._NICK_REC* %41, %struct._NICK_REC** %43, align 8, !dbg !1881
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1882
  %45 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %44, i32 0, i32 15, !dbg !1883
  %46 = load %struct._GHashTable*, %struct._GHashTable** %45, align 8, !dbg !1883
  %47 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1884
  %48 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %47, i32 0, i32 3, !dbg !1885
  %49 = load i8*, i8** %48, align 8, !dbg !1885
  %50 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !1886
  %51 = bitcast %struct._NICK_REC* %50 to i8*, !dbg !1886
  %52 = call i32 @g_hash_table_insert(%struct._GHashTable* %46, i8* %49, i8* %51), !dbg !1887
  br label %53, !dbg !1888

; <label>:53:                                     ; preds = %40, %22
  ret void, !dbg !1889
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @nick_match_msg(%struct._CHANNEL_REC*, i8*, i8*) #0 !dbg !1890 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1893, metadata !496), !dbg !1894
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1895, metadata !496), !dbg !1896
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1897, metadata !496), !dbg !1898
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1899, metadata !496), !dbg !1900
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1901, metadata !496), !dbg !1902
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1903, metadata !496), !dbg !1904
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1905, metadata !496), !dbg !1906
  br label %12, !dbg !1907, !llvm.loop !1908

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %7, align 8, !dbg !1909
  %14 = icmp ne i8* %13, null, !dbg !1913
  br i1 %14, label %15, label %16, !dbg !1909

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1914

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.nick_match_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1917
  store i32 0, i32* %4, align 4, !dbg !1920
  br label %257, !dbg !1920

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1921

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !1923, !llvm.loop !1924

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1925
  %21 = icmp ne i8* %20, null, !dbg !1929
  br i1 %21, label %22, label %23, !dbg !1925

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !1930

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.nick_match_msg, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !1933
  store i32 0, i32* %4, align 4, !dbg !1936
  br label %257, !dbg !1936

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1937

; <label>:25:                                     ; preds = %24
  %26 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1939
  %27 = icmp ne %struct._CHANNEL_REC* %26, null, !dbg !1941
  br i1 %27, label %28, label %44, !dbg !1942

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1943
  %30 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %29, i32 0, i32 4, !dbg !1945
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %30, align 8, !dbg !1945
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 34, !dbg !1946
  %33 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %32, align 8, !dbg !1946
  %34 = icmp ne i32 (i8*, i8*)* %33, null, !dbg !1947
  br i1 %34, label %35, label %44, !dbg !1948

; <label>:35:                                     ; preds = %28
  %36 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1949
  %37 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %36, i32 0, i32 4, !dbg !1950
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1950
  %39 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %38, i32 0, i32 34, !dbg !1951
  %40 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %39, align 8, !dbg !1951
  %41 = load i8*, i8** %6, align 8, !dbg !1952
  %42 = load i8*, i8** %7, align 8, !dbg !1953
  %43 = call i32 %40(i8* %41, i8* %42), !dbg !1949
  store i32 %43, i32* %4, align 4, !dbg !1954
  br label %257, !dbg !1954

; <label>:44:                                     ; preds = %28, %25
  %45 = load i8*, i8** %7, align 8, !dbg !1955
  %46 = call i64 @strlen(i8* %45) #6, !dbg !1956
  %47 = trunc i64 %46 to i32, !dbg !1956
  store i32 %47, i32* %10, align 4, !dbg !1957
  %48 = load i8*, i8** %6, align 8, !dbg !1958
  %49 = load i8*, i8** %7, align 8, !dbg !1960
  %50 = load i32, i32* %10, align 4, !dbg !1961
  %51 = sext i32 %50 to i64, !dbg !1961
  %52 = call i32 @g_ascii_strncasecmp(i8* %48, i8* %49, i64 %51), !dbg !1962
  %53 = icmp eq i32 %52, 0, !dbg !1963
  br i1 %53, label %54, label %82, !dbg !1964

; <label>:54:                                     ; preds = %44
  %55 = load i32, i32* %10, align 4, !dbg !1965
  %56 = sext i32 %55 to i64, !dbg !1966
  %57 = load i8*, i8** %6, align 8, !dbg !1966
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !1966
  %59 = load i8, i8* %58, align 1, !dbg !1966
  %60 = sext i8 %59 to i32, !dbg !1967
  %61 = trunc i32 %60 to i8, !dbg !1968
  %62 = zext i8 %61 to i32, !dbg !1969
  %63 = sext i32 %62 to i64, !dbg !1970
  %64 = call i16** @__ctype_b_loc() #1, !dbg !1971
  %65 = load i16*, i16** %64, align 8, !dbg !1972
  %66 = getelementptr inbounds i16, i16* %65, i64 %63, !dbg !1970
  %67 = load i16, i16* %66, align 2, !dbg !1970
  %68 = zext i16 %67 to i32, !dbg !1970
  %69 = and i32 %68, 8, !dbg !1973
  %70 = icmp ne i32 %69, 0, !dbg !1973
  br i1 %70, label %82, label %71, !dbg !1969

; <label>:71:                                     ; preds = %54
  %72 = load i32, i32* %10, align 4, !dbg !1974
  %73 = sext i32 %72 to i64, !dbg !1976
  %74 = load i8*, i8** %6, align 8, !dbg !1976
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !1976
  %76 = load i8, i8* %75, align 1, !dbg !1976
  %77 = sext i8 %76 to i32, !dbg !1977
  %78 = trunc i32 %77 to i8, !dbg !1978
  %79 = zext i8 %78 to i32, !dbg !1978
  %80 = icmp sge i32 %79, 128, !dbg !1979
  br i1 %80, label %82, label %81, !dbg !1980

; <label>:81:                                     ; preds = %71
  store i32 1, i32* %4, align 4, !dbg !1982
  br label %257, !dbg !1982

; <label>:82:                                     ; preds = %71, %54, %44
  %83 = load i8*, i8** %7, align 8, !dbg !1983
  store i8* %83, i8** %9, align 8, !dbg !1984
  br label %84, !dbg !1985

; <label>:84:                                     ; preds = %228, %82
  %85 = load i8*, i8** %9, align 8, !dbg !1986
  store i8* %85, i8** %7, align 8, !dbg !1990
  %86 = load i8*, i8** %6, align 8, !dbg !1991
  store i8* %86, i8** %8, align 8, !dbg !1992
  store i32 1, i32* %11, align 4, !dbg !1993
  br label %87, !dbg !1994

; <label>:87:                                     ; preds = %139, %84
  %88 = load i8*, i8** %7, align 8, !dbg !1995
  %89 = load i8, i8* %88, align 1, !dbg !1997
  %90 = sext i8 %89 to i32, !dbg !1997
  %91 = icmp ne i32 %90, 0, !dbg !1998
  br i1 %91, label %92, label %97, !dbg !1999

; <label>:92:                                     ; preds = %87
  %93 = load i8*, i8** %6, align 8, !dbg !2000
  %94 = load i8, i8* %93, align 1, !dbg !2002
  %95 = sext i8 %94 to i32, !dbg !2002
  %96 = icmp ne i32 %95, 0, !dbg !2003
  br label %97

; <label>:97:                                     ; preds = %92, %87
  %98 = phi i1 [ false, %87 ], [ %96, %92 ]
  br i1 %98, label %99, label %142, !dbg !2004

; <label>:99:                                     ; preds = %97
  %100 = load i8*, i8** %7, align 8, !dbg !2006
  %101 = load i8, i8* %100, align 1, !dbg !2009
  %102 = zext i8 %101 to i32, !dbg !2010
  %103 = call i32 @toupper(i32 %102) #6, !dbg !2011
  %104 = load i8*, i8** %6, align 8, !dbg !2012
  %105 = load i8, i8* %104, align 1, !dbg !2013
  %106 = zext i8 %105 to i32, !dbg !2014
  %107 = call i32 @toupper(i32 %106) #6, !dbg !2015
  %108 = icmp eq i32 %103, %107, !dbg !2017
  br i1 %108, label %109, label %112, !dbg !2018

; <label>:109:                                    ; preds = %99
  %110 = load i8*, i8** %6, align 8, !dbg !2019
  %111 = getelementptr inbounds i8, i8* %110, i32 1, !dbg !2019
  store i8* %111, i8** %6, align 8, !dbg !2019
  br label %139, !dbg !2021

; <label>:112:                                    ; preds = %99
  %113 = load i8*, i8** %6, align 8, !dbg !2022
  %114 = load i8, i8* %113, align 1, !dbg !2025
  %115 = zext i8 %114 to i32, !dbg !2026
  %116 = sext i32 %115 to i64, !dbg !2027
  %117 = call i16** @__ctype_b_loc() #1, !dbg !2028
  %118 = load i16*, i16** %117, align 8, !dbg !2029
  %119 = getelementptr inbounds i16, i16* %118, i64 %116, !dbg !2027
  %120 = load i16, i16* %119, align 2, !dbg !2027
  %121 = zext i16 %120 to i32, !dbg !2027
  %122 = and i32 %121, 8, !dbg !2030
  %123 = icmp ne i32 %122, 0, !dbg !2030
  br i1 %123, label %124, label %137, !dbg !2031

; <label>:124:                                    ; preds = %112
  %125 = load i8*, i8** %7, align 8, !dbg !2032
  %126 = load i8, i8* %125, align 1, !dbg !2034
  %127 = zext i8 %126 to i32, !dbg !2035
  %128 = sext i32 %127 to i64, !dbg !2036
  %129 = call i16** @__ctype_b_loc() #1, !dbg !2037
  %130 = load i16*, i16** %129, align 8, !dbg !2038
  %131 = getelementptr inbounds i16, i16* %130, i64 %128, !dbg !2036
  %132 = load i16, i16* %131, align 2, !dbg !2036
  %133 = zext i16 %132 to i32, !dbg !2036
  %134 = and i32 %133, 8, !dbg !2039
  %135 = icmp ne i32 %134, 0, !dbg !2039
  br i1 %135, label %137, label %136, !dbg !2040

; <label>:136:                                    ; preds = %124
  store i32 0, i32* %11, align 4, !dbg !2041
  br label %138, !dbg !2043

; <label>:137:                                    ; preds = %124, %112
  br label %142, !dbg !2044

; <label>:138:                                    ; preds = %136
  br label %139

; <label>:139:                                    ; preds = %138, %109
  %140 = load i8*, i8** %7, align 8, !dbg !2045
  %141 = getelementptr inbounds i8, i8* %140, i32 1, !dbg !2045
  store i8* %141, i8** %7, align 8, !dbg !2045
  br label %87, !dbg !2046, !llvm.loop !2048

; <label>:142:                                    ; preds = %137, %97
  %143 = load i8*, i8** %6, align 8, !dbg !2049
  %144 = load i8*, i8** %8, align 8, !dbg !2051
  %145 = icmp ne i8* %143, %144, !dbg !2052
  br i1 %145, label %146, label %200, !dbg !2053

; <label>:146:                                    ; preds = %142
  %147 = load i8*, i8** %6, align 8, !dbg !2054
  %148 = load i8, i8* %147, align 1, !dbg !2056
  %149 = zext i8 %148 to i32, !dbg !2057
  %150 = sext i32 %149 to i64, !dbg !2058
  %151 = call i16** @__ctype_b_loc() #1, !dbg !2059
  %152 = load i16*, i16** %151, align 8, !dbg !2060
  %153 = getelementptr inbounds i16, i16* %152, i64 %150, !dbg !2058
  %154 = load i16, i16* %153, align 2, !dbg !2058
  %155 = zext i16 %154 to i32, !dbg !2058
  %156 = and i32 %155, 8, !dbg !2061
  %157 = icmp ne i32 %156, 0, !dbg !2061
  br i1 %157, label %200, label %158, !dbg !2057

; <label>:158:                                    ; preds = %146
  %159 = load i8*, i8** %6, align 8, !dbg !2062
  %160 = load i8, i8* %159, align 1, !dbg !2064
  %161 = zext i8 %160 to i32, !dbg !2065
  %162 = icmp sge i32 %161, 128, !dbg !2066
  br i1 %162, label %200, label %163, !dbg !2067

; <label>:163:                                    ; preds = %158
  %164 = load i8*, i8** %7, align 8, !dbg !2068
  %165 = load i8, i8* %164, align 1, !dbg !2071
  %166 = sext i8 %165 to i32, !dbg !2071
  %167 = icmp ne i32 %166, 0, !dbg !2072
  br i1 %167, label %168, label %193, !dbg !2073

; <label>:168:                                    ; preds = %163
  store i32 0, i32* %11, align 4, !dbg !2074
  br label %169, !dbg !2076

; <label>:169:                                    ; preds = %189, %168
  %170 = load i8*, i8** %7, align 8, !dbg !2077
  %171 = load i8, i8* %170, align 1, !dbg !2079
  %172 = sext i8 %171 to i32, !dbg !2079
  %173 = icmp ne i32 %172, 0, !dbg !2080
  br i1 %173, label %174, label %187, !dbg !2081

; <label>:174:                                    ; preds = %169
  %175 = load i8*, i8** %7, align 8, !dbg !2082
  %176 = load i8, i8* %175, align 1, !dbg !2084
  %177 = zext i8 %176 to i32, !dbg !2085
  %178 = sext i32 %177 to i64, !dbg !2086
  %179 = call i16** @__ctype_b_loc() #1, !dbg !2087
  %180 = load i16*, i16** %179, align 8, !dbg !2088
  %181 = getelementptr inbounds i16, i16* %180, i64 %178, !dbg !2086
  %182 = load i16, i16* %181, align 2, !dbg !2086
  %183 = zext i16 %182 to i32, !dbg !2086
  %184 = and i32 %183, 8, !dbg !2089
  %185 = icmp ne i32 %184, 0, !dbg !2085
  %186 = xor i1 %185, true, !dbg !2085
  br label %187

; <label>:187:                                    ; preds = %174, %169
  %188 = phi i1 [ false, %169 ], [ %186, %174 ]
  br i1 %188, label %189, label %192, !dbg !2090

; <label>:189:                                    ; preds = %187
  %190 = load i8*, i8** %7, align 8, !dbg !2092
  %191 = getelementptr inbounds i8, i8* %190, i32 1, !dbg !2092
  store i8* %191, i8** %7, align 8, !dbg !2092
  br label %169, !dbg !2093, !llvm.loop !2095

; <label>:192:                                    ; preds = %187
  br label %193, !dbg !2096

; <label>:193:                                    ; preds = %192, %163
  %194 = load i8*, i8** %7, align 8, !dbg !2097
  %195 = load i8, i8* %194, align 1, !dbg !2099
  %196 = sext i8 %195 to i32, !dbg !2099
  %197 = icmp eq i32 %196, 0, !dbg !2100
  br i1 %197, label %198, label %199, !dbg !2101

; <label>:198:                                    ; preds = %193
  br label %231, !dbg !2102

; <label>:199:                                    ; preds = %193
  br label %200, !dbg !2104

; <label>:200:                                    ; preds = %199, %158, %146, %142
  br label %201, !dbg !2105

; <label>:201:                                    ; preds = %218, %200
  %202 = load i8*, i8** %6, align 8, !dbg !2106
  %203 = load i8, i8* %202, align 1, !dbg !2107
  %204 = sext i8 %203 to i32, !dbg !2107
  %205 = icmp ne i32 %204, 0, !dbg !2108
  br i1 %205, label %206, label %216, !dbg !2109

; <label>:206:                                    ; preds = %201
  %207 = load i8*, i8** %6, align 8, !dbg !2110
  %208 = load i8, i8* %207, align 1, !dbg !2111
  %209 = sext i8 %208 to i32, !dbg !2111
  %210 = icmp ne i32 %209, 32, !dbg !2112
  br i1 %210, label %211, label %216, !dbg !2113

; <label>:211:                                    ; preds = %206
  %212 = load i8*, i8** %6, align 8, !dbg !2114
  %213 = load i8, i8* %212, align 1, !dbg !2115
  %214 = sext i8 %213 to i32, !dbg !2115
  %215 = icmp ne i32 %214, 44, !dbg !2116
  br label %216

; <label>:216:                                    ; preds = %211, %206, %201
  %217 = phi i1 [ false, %206 ], [ false, %201 ], [ %215, %211 ]
  br i1 %217, label %218, label %221, !dbg !2117

; <label>:218:                                    ; preds = %216
  %219 = load i8*, i8** %6, align 8, !dbg !2118
  %220 = getelementptr inbounds i8, i8* %219, i32 1, !dbg !2118
  store i8* %220, i8** %6, align 8, !dbg !2118
  br label %201, !dbg !2120, !llvm.loop !2121

; <label>:221:                                    ; preds = %216
  %222 = load i8*, i8** %6, align 8, !dbg !2122
  %223 = load i8, i8* %222, align 1, !dbg !2124
  %224 = sext i8 %223 to i32, !dbg !2124
  %225 = icmp ne i32 %224, 44, !dbg !2125
  br i1 %225, label %226, label %228, !dbg !2126

; <label>:226:                                    ; preds = %221
  %227 = load i8*, i8** %9, align 8, !dbg !2127
  store i8* %227, i8** %7, align 8, !dbg !2129
  br label %231, !dbg !2130

; <label>:228:                                    ; preds = %221
  %229 = load i8*, i8** %6, align 8, !dbg !2131
  %230 = getelementptr inbounds i8, i8* %229, i32 1, !dbg !2131
  store i8* %230, i8** %6, align 8, !dbg !2131
  br label %84, !dbg !2132, !llvm.loop !2134

; <label>:231:                                    ; preds = %226, %198
  %232 = load i8*, i8** %7, align 8, !dbg !2135
  %233 = load i8, i8* %232, align 1, !dbg !2137
  %234 = sext i8 %233 to i32, !dbg !2137
  %235 = icmp ne i32 %234, 0, !dbg !2138
  br i1 %235, label %236, label %237, !dbg !2139

; <label>:236:                                    ; preds = %231
  store i32 0, i32* %4, align 4, !dbg !2140
  br label %257, !dbg !2140

; <label>:237:                                    ; preds = %231
  %238 = load i32, i32* %11, align 4, !dbg !2141
  %239 = icmp ne i32 %238, 0, !dbg !2141
  br i1 %239, label %240, label %241, !dbg !2143

; <label>:240:                                    ; preds = %237
  store i32 1, i32* %4, align 4, !dbg !2144
  br label %257, !dbg !2144

; <label>:241:                                    ; preds = %237
  %242 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !2145
  %243 = icmp ne %struct._CHANNEL_REC* %242, null, !dbg !2147
  br i1 %243, label %244, label %256, !dbg !2148

; <label>:244:                                    ; preds = %241
  %245 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !2149
  %246 = load i8*, i8** %8, align 8, !dbg !2151
  %247 = load i8*, i8** %6, align 8, !dbg !2152
  %248 = load i8*, i8** %8, align 8, !dbg !2153
  %249 = ptrtoint i8* %247 to i64, !dbg !2154
  %250 = ptrtoint i8* %248 to i64, !dbg !2154
  %251 = sub i64 %249, %250, !dbg !2154
  %252 = trunc i64 %251 to i32, !dbg !2155
  %253 = call %struct._NICK_REC* @nick_nfind(%struct._CHANNEL_REC* %245, i8* %246, i32 %252), !dbg !2156
  %254 = icmp eq %struct._NICK_REC* %253, null, !dbg !2157
  %255 = zext i1 %254 to i32, !dbg !2157
  store i32 %255, i32* %4, align 4, !dbg !2158
  br label %257, !dbg !2158

; <label>:256:                                    ; preds = %241
  store i32 1, i32* %4, align 4, !dbg !2159
  br label %257, !dbg !2159

; <label>:257:                                    ; preds = %256, %244, %240, %236, %81, %35, %23, %16
  %258 = load i32, i32* %4, align 4, !dbg !2161
  ret i32 %258, !dbg !2161
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._NICK_REC* @nick_nfind(%struct._CHANNEL_REC*, i8*, i32) #0 !dbg !2162 {
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._NICK_REC*, align 8
  %8 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !2165, metadata !496), !dbg !2166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2167, metadata !496), !dbg !2168
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2169, metadata !496), !dbg !2170
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %7, metadata !2171, metadata !496), !dbg !2172
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2173, metadata !496), !dbg !2174
  %9 = load i8*, i8** %5, align 8, !dbg !2175
  %10 = load i32, i32* %6, align 4, !dbg !2176
  %11 = sext i32 %10 to i64, !dbg !2176
  %12 = call noalias i8* @g_strndup(i8* %9, i64 %11), !dbg !2177
  store i8* %12, i8** %8, align 8, !dbg !2178
  %13 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !2179
  %14 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %13, i32 0, i32 15, !dbg !2180
  %15 = load %struct._GHashTable*, %struct._GHashTable** %14, align 8, !dbg !2180
  %16 = load i8*, i8** %8, align 8, !dbg !2181
  %17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* %16), !dbg !2182
  %18 = bitcast i8* %17 to %struct._NICK_REC*, !dbg !2182
  store %struct._NICK_REC* %18, %struct._NICK_REC** %7, align 8, !dbg !2183
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2184
  %20 = icmp ne %struct._NICK_REC* %19, null, !dbg !2186
  br i1 %20, label %21, label %40, !dbg !2187

; <label>:21:                                     ; preds = %3
  br label %22, !dbg !2188

; <label>:22:                                     ; preds = %35, %21
  %23 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2190
  %24 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %23, i32 0, i32 10, !dbg !2192
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %24, align 8, !dbg !2192
  %26 = icmp ne %struct._NICK_REC* %25, null, !dbg !2193
  br i1 %26, label %27, label %39, !dbg !2194

; <label>:27:                                     ; preds = %22
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2195
  %29 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %28, i32 0, i32 3, !dbg !2198
  %30 = load i8*, i8** %29, align 8, !dbg !2198
  %31 = load i8*, i8** %8, align 8, !dbg !2199
  %32 = call i32 @g_strcmp0(i8* %30, i8* %31), !dbg !2200
  %33 = icmp eq i32 %32, 0, !dbg !2201
  br i1 %33, label %34, label %35, !dbg !2202

; <label>:34:                                     ; preds = %27
  br label %39, !dbg !2203

; <label>:35:                                     ; preds = %27
  %36 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2204
  %37 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %36, i32 0, i32 10, !dbg !2205
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %37, align 8, !dbg !2205
  store %struct._NICK_REC* %38, %struct._NICK_REC** %7, align 8, !dbg !2206
  br label %22, !dbg !2207, !llvm.loop !2209

; <label>:39:                                     ; preds = %34, %22
  br label %40, !dbg !2210

; <label>:40:                                     ; preds = %39, %3
  %41 = load i8*, i8** %8, align 8, !dbg !2211
  call void @g_free(i8* %41), !dbg !2212
  %42 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2213
  ret %struct._NICK_REC* %42, !dbg !2214
}

; Function Attrs: nounwind uwtable
define i32 @nick_match_msg_everywhere(%struct._CHANNEL_REC*, i8*, i8*) #0 !dbg !2215 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !2216, metadata !496), !dbg !2217
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2218, metadata !496), !dbg !2219
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2220, metadata !496), !dbg !2221
  br label %8, !dbg !2222, !llvm.loop !2223

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %7, align 8, !dbg !2224
  %10 = icmp ne i8* %9, null, !dbg !2228
  br i1 %10, label %11, label %12, !dbg !2224

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2229

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.nick_match_msg_everywhere, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !2232
  store i32 0, i32* %4, align 4, !dbg !2235
  br label %27, !dbg !2235

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2236

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !2238, !llvm.loop !2239

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %6, align 8, !dbg !2240
  %17 = icmp ne i8* %16, null, !dbg !2244
  br i1 %17, label %18, label %19, !dbg !2240

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !2245

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.nick_match_msg_everywhere, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !2248
  store i32 0, i32* %4, align 4, !dbg !2251
  br label %27, !dbg !2251

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !2252

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !2254
  %23 = load i8*, i8** %7, align 8, !dbg !2255
  %24 = call i8* @stristr_full(i8* %22, i8* %23), !dbg !2256
  %25 = icmp ne i8* %24, null, !dbg !2257
  %26 = zext i1 %25 to i32, !dbg !2257
  store i32 %26, i32* %4, align 4, !dbg !2258
  br label %27, !dbg !2258

; <label>:27:                                     ; preds = %21, %19, %12
  %28 = load i32, i32* %4, align 4, !dbg !2259
  ret i32 %28, !dbg !2259
}

declare i8* @stristr_full(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @nicklist_init() #0 !dbg !2260 {
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2261
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2262
  ret void, !dbg !2263
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_channel_created(%struct._CHANNEL_REC*) #0 !dbg !2264 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !2267, metadata !496), !dbg !2268
  br label %3, !dbg !2269, !llvm.loop !2270

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2271
  %5 = bitcast %struct._CHANNEL_REC* %4 to i8*, !dbg !2271
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !2275
  %7 = bitcast i8* %6 to %struct._CHANNEL_REC*, !dbg !2276
  %8 = icmp ne %struct._CHANNEL_REC* %7, null, !dbg !2276
  br i1 %8, label %9, label %10, !dbg !2277

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !2278

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !2280

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !2282

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_channel_created, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !2285
  br label %18, !dbg !2288

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2289

; <label>:14:                                     ; preds = %13
  %15 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !2291
  %16 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2292
  %17 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %16, i32 0, i32 15, !dbg !2293
  store %struct._GHashTable* %15, %struct._GHashTable** %17, align 8, !dbg !2294
  br label %18, !dbg !2295

; <label>:18:                                     ; preds = %14, %12
  ret void, !dbg !2296
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._CHANNEL_REC*) #0 !dbg !2298 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !2299, metadata !496), !dbg !2300
  br label %3, !dbg !2301, !llvm.loop !2302

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2303
  %5 = bitcast %struct._CHANNEL_REC* %4 to i8*, !dbg !2303
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !2307
  %7 = bitcast i8* %6 to %struct._CHANNEL_REC*, !dbg !2308
  %8 = icmp ne %struct._CHANNEL_REC* %7, null, !dbg !2308
  br i1 %8, label %9, label %10, !dbg !2309

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !2310

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !2312

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !2314

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_channel_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0)), !dbg !2317
  br label %23, !dbg !2320

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2321

; <label>:14:                                     ; preds = %13
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2323
  %16 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %15, i32 0, i32 15, !dbg !2324
  %17 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !2324
  %18 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2325
  %19 = bitcast %struct._CHANNEL_REC* %18 to i8*, !dbg !2325
  call void @g_hash_table_foreach(%struct._GHashTable* %17, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._NICK_REC*, %struct._CHANNEL_REC*)* @nicklist_remove_hash to void (i8*, i8*, i8*)*), i8* %19), !dbg !2326
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2327
  %21 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %20, i32 0, i32 15, !dbg !2328
  %22 = load %struct._GHashTable*, %struct._GHashTable** %21, align 8, !dbg !2328
  call void @g_hash_table_destroy(%struct._GHashTable* %22), !dbg !2329
  br label %23, !dbg !2330

; <label>:23:                                     ; preds = %14, %12
  ret void, !dbg !2331
}

; Function Attrs: nounwind uwtable
define void @nicklist_deinit() #0 !dbg !2333 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2334
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2335
  call void @module_uniq_destroy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !2336
  ret void, !dbg !2337
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @module_uniq_destroy(i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare noalias i8* @g_strndup(i8*, i64) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_istr_hash(i8*) #2

declare i32 @g_istr_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @nicklist_remove_hash(i8*, %struct._NICK_REC*, %struct._CHANNEL_REC*) #0 !dbg !2338 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  %7 = alloca %struct._NICK_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2341, metadata !496), !dbg !2342
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !2343, metadata !496), !dbg !2344
  store %struct._CHANNEL_REC* %2, %struct._CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !2345, metadata !496), !dbg !2346
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %7, metadata !2347, metadata !496), !dbg !2348
  br label %8, !dbg !2349

; <label>:8:                                      ; preds = %11, %3
  %9 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2350
  %10 = icmp ne %struct._NICK_REC* %9, null, !dbg !2352
  br i1 %10, label %11, label %18, !dbg !2353

; <label>:11:                                     ; preds = %8
  %12 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2354
  %13 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %12, i32 0, i32 10, !dbg !2356
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !2356
  store %struct._NICK_REC* %14, %struct._NICK_REC** %7, align 8, !dbg !2357
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !2358
  %16 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2359
  call void @nicklist_destroy(%struct._CHANNEL_REC* %15, %struct._NICK_REC* %16), !dbg !2360
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2361
  store %struct._NICK_REC* %17, %struct._NICK_REC** %5, align 8, !dbg !2362
  br label %8, !dbg !2363, !llvm.loop !2365

; <label>:18:                                     ; preds = %8
  ret void, !dbg !2366
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!487, !488}
!llvm.ident = !{!489}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50)
!1 = !DIFile(filename: "line63-nicklist.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !{!51, !52, !56, !58, !466, !75, !66, !470, !100, !471, !478, !483}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !60, line: 109, baseType: !61)
!60 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !62, line: 15, size: 1408, align: 64, elements: !63)
!62 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !{!64, !67, !68, !73, !74, !402, !403, !404, !405, !406, !407, !414, !418, !420, !421, !422, !423, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !65, line: 3, baseType: !66, size: 32, align: 32)
!65 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!66 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !61, file: !65, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !61, file: !65, line: 5, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !71, line: 37, baseType: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !71, line: 37, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !61, file: !65, line: 7, baseType: !51, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !61, file: !65, line: 8, baseType: !75, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !60, line: 107, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !78, line: 30, size: 2240, align: 64, elements: !79)
!78 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !82, !83, !84, !314, !319, !320, !321, !322, !323, !324, !325, !326, !327, !331, !332, !336, !337, !338, !342, !343, !344, !345, !346, !347, !348, !349, !350, !357, !358, !359, !360, !361, !365, !369, !373, !377, !381, !386, !390, !397, !401}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !81, line: 3, baseType: !66, size: 32, align: 32)
!81 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !81, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !81, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !77, file: !81, line: 8, baseType: !85, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !60, line: 113, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !78, line: 25, size: 1920, align: 64, elements: !88)
!88 = !{!89, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !90, line: 3, baseType: !66, size: 32, align: 32)
!90 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !87, file: !90, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !87, file: !90, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !87, file: !90, line: 9, baseType: !94, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !87, file: !90, line: 10, baseType: !66, size: 32, align: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !87, file: !90, line: 13, baseType: !100, size: 16, align: 16, offset: 448)
!100 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !87, file: !90, line: 14, baseType: !94, size: 64, align: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !87, file: !90, line: 15, baseType: !94, size: 64, align: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !87, file: !90, line: 16, baseType: !66, size: 32, align: 32, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !87, file: !90, line: 17, baseType: !94, size: 64, align: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !87, file: !90, line: 19, baseType: !106, size: 64, align: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !60, line: 99, baseType: !108)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !60, line: 99, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !87, file: !90, line: 19, baseType: !106, size: 64, align: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !87, file: !90, line: 21, baseType: !94, size: 64, align: 64, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !87, file: !90, line: 22, baseType: !94, size: 64, align: 64, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !87, file: !90, line: 23, baseType: !94, size: 64, align: 64, offset: 1024)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !87, file: !90, line: 24, baseType: !94, size: 64, align: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !87, file: !90, line: 26, baseType: !94, size: 64, align: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !87, file: !90, line: 27, baseType: !94, size: 64, align: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !87, file: !90, line: 28, baseType: !94, size: 64, align: 64, offset: 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !87, file: !90, line: 29, baseType: !94, size: 64, align: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !87, file: !90, line: 30, baseType: !94, size: 64, align: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !87, file: !90, line: 31, baseType: !94, size: 64, align: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !87, file: !90, line: 32, baseType: !94, size: 64, align: 64, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !87, file: !90, line: 33, baseType: !94, size: 64, align: 64, offset: 1600)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !87, file: !90, line: 35, baseType: !123, size: 64, align: 64, offset: 1664)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !126)
!126 = !{!127, !129, !271, !272, !277, !278, !279, !280, !281, !290, !291, !292, !296, !297, !298, !299, !300, !301, !302, !303}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !125, file: !4, line: 100, baseType: !128, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !54, line: 49, baseType: !66)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !125, file: !4, line: 101, baseType: !130, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !133)
!133 = !{!134, !156, !162, !169, !173, !258, !262, !267}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !132, file: !4, line: 133, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!138, !123, !52, !139, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !140, line: 66, baseType: !141)
!140 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !146, line: 42, baseType: !147)
!146 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !146, line: 44, size: 128, align: 64, elements: !148)
!148 = !{!149, !154, !155}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !147, file: !146, line: 46, baseType: !150, size: 32, align: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !151, line: 36, baseType: !152)
!151 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !140, line: 45, baseType: !153)
!153 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !147, file: !146, line: 47, baseType: !128, size: 32, align: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !147, file: !146, line: 48, baseType: !52, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !132, file: !4, line: 138, baseType: !157, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!138, !123, !160, !139, !142, !143}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !132, file: !4, line: 143, baseType: !163, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!138, !123, !166, !168, !143}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !140, line: 51, baseType: !167)
!167 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !132, file: !4, line: 147, baseType: !170, size: 64, align: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!138, !123, !143}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !132, file: !4, line: 149, baseType: !174, size: 64, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !123, !257}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !180)
!180 = !{!181, !183, !204, !233, !235, !239, !240, !241, !242, !250, !251, !252, !253}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !179, file: !16, line: 174, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !54, line: 77, baseType: !51)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !179, file: !16, line: 175, baseType: !184, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !187)
!187 = !{!188, !192, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !186, file: !16, line: 198, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !182}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !186, file: !16, line: 199, baseType: !189, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !186, file: !16, line: 200, baseType: !194, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !182, !177, !197, !203}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !182}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !54, line: 50, baseType: !128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !179, file: !16, line: 177, baseType: !205, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !209)
!209 = !{!210, !215, !219, !223, !227, !228}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !208, file: !16, line: 216, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!202, !177, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !208, file: !16, line: 218, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!202, !177}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !208, file: !16, line: 219, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!202, !177, !198, !182}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !208, file: !16, line: 222, baseType: !224, size: 64, align: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !177}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !208, file: !16, line: 226, baseType: !198, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !208, file: !16, line: 227, baseType: !229, size: 64, align: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !179, file: !16, line: 178, baseType: !234, size: 32, align: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !54, line: 55, baseType: !153)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !179, file: !16, line: 180, baseType: !236, size: 64, align: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !179, file: !16, line: 182, baseType: !128, size: 32, align: 32, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !16, line: 183, baseType: !234, size: 32, align: 32, offset: 352)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !179, file: !16, line: 184, baseType: !234, size: 32, align: 32, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !179, file: !16, line: 186, baseType: !243, size: 64, align: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !245, line: 37, baseType: !246)
!245 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !245, line: 39, size: 128, align: 64, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !246, file: !245, line: 41, baseType: !182, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !245, line: 42, baseType: !243, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !179, file: !16, line: 188, baseType: !177, size: 64, align: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !16, line: 189, baseType: !177, size: 64, align: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !16, line: 191, baseType: !94, size: 64, align: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !179, file: !16, line: 193, baseType: !254, size: 64, align: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !132, file: !4, line: 151, baseType: !259, size: 64, align: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !123}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !132, file: !4, line: 152, baseType: !263, size: 64, align: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!138, !123, !266, !143}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !132, file: !4, line: 155, baseType: !268, size: 64, align: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!266, !123}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !125, file: !4, line: 103, baseType: !52, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !125, file: !4, line: 104, baseType: !273, size: 64, align: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !274, line: 77, baseType: !275)
!274 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !274, line: 77, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !125, file: !4, line: 105, baseType: !273, size: 64, align: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !125, file: !4, line: 106, baseType: !52, size: 64, align: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !125, file: !4, line: 107, baseType: !234, size: 32, align: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !125, file: !4, line: 109, baseType: !139, size: 64, align: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !125, file: !4, line: 110, baseType: !282, size: 64, align: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !284, line: 39, baseType: !285)
!284 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !284, line: 41, size: 192, align: 64, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !285, file: !284, line: 43, baseType: !52, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !285, file: !284, line: 44, baseType: !139, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !285, file: !284, line: 45, baseType: !139, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !125, file: !4, line: 111, baseType: !282, size: 64, align: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !125, file: !4, line: 112, baseType: !282, size: 64, align: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !125, file: !4, line: 113, baseType: !293, size: 48, align: 8, offset: 704)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, align: 8, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 6)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !125, file: !4, line: 117, baseType: !234, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !125, file: !4, line: 118, baseType: !234, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !125, file: !4, line: 119, baseType: !234, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !125, file: !4, line: 120, baseType: !234, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !125, file: !4, line: 121, baseType: !234, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !125, file: !4, line: 122, baseType: !234, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !125, file: !4, line: 124, baseType: !182, size: 64, align: 64, offset: 768)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !125, file: !4, line: 125, baseType: !182, size: 64, align: 64, offset: 832)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !87, file: !90, line: 38, baseType: !153, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !87, file: !90, line: 39, baseType: !153, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !87, file: !90, line: 40, baseType: !153, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !87, file: !90, line: 41, baseType: !153, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !87, file: !90, line: 42, baseType: !153, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !87, file: !90, line: 43, baseType: !153, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !87, file: !90, line: 44, baseType: !153, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !87, file: !90, line: 45, baseType: !153, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !87, file: !90, line: 46, baseType: !94, size: 64, align: 64, offset: 1792)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !87, file: !90, line: 47, baseType: !94, size: 64, align: 64, offset: 1856)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !77, file: !81, line: 9, baseType: !315, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !316, line: 75, baseType: !317)
!316 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !318, line: 139, baseType: !167)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!319 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !77, file: !81, line: 10, baseType: !315, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !81, line: 12, baseType: !94, size: 64, align: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !81, line: 13, baseType: !94, size: 64, align: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !77, file: !81, line: 15, baseType: !153, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !77, file: !81, line: 16, baseType: !153, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !77, file: !81, line: 17, baseType: !153, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !77, file: !81, line: 18, baseType: !153, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !77, file: !81, line: 19, baseType: !153, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !77, file: !81, line: 21, baseType: !328, size: 64, align: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !60, line: 102, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !60, line: 102, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !77, file: !81, line: 22, baseType: !66, size: 32, align: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !77, file: !81, line: 25, baseType: !333, size: 128, align: 64, offset: 640)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, align: 64, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 2)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !77, file: !81, line: 26, baseType: !66, size: 32, align: 32, offset: 768)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !77, file: !81, line: 27, baseType: !66, size: 32, align: 32, offset: 800)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !77, file: !81, line: 29, baseType: !339, size: 64, align: 64, offset: 832)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !60, line: 103, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !60, line: 103, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !77, file: !81, line: 30, baseType: !69, size: 64, align: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !81, line: 32, baseType: !94, size: 64, align: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !81, line: 33, baseType: !94, size: 64, align: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !77, file: !81, line: 34, baseType: !94, size: 64, align: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !77, file: !81, line: 35, baseType: !153, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !77, file: !81, line: 36, baseType: !153, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !77, file: !81, line: 37, baseType: !153, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !77, file: !81, line: 38, baseType: !153, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !77, file: !81, line: 40, baseType: !351, size: 128, align: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !54, line: 504, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !54, line: 506, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !352, file: !54, line: 508, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !54, line: 48, baseType: !167)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !352, file: !54, line: 509, baseType: !355, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !77, file: !81, line: 41, baseType: !315, size: 64, align: 64, offset: 1344)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !77, file: !81, line: 42, baseType: !66, size: 32, align: 32, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !81, line: 44, baseType: !243, size: 64, align: 64, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !77, file: !81, line: 45, baseType: !243, size: 64, align: 64, offset: 1536)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !77, file: !81, line: 53, baseType: !362, size: 64, align: 64, offset: 1600)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !75, !56, !66}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !77, file: !81, line: 55, baseType: !366, size: 64, align: 64, offset: 1664)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!66, !75, !55}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !77, file: !81, line: 57, baseType: !370, size: 64, align: 64, offset: 1728)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!66, !75, !56}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !77, file: !81, line: 60, baseType: !374, size: 64, align: 64, offset: 1792)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!56, !75}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !77, file: !81, line: 62, baseType: !378, size: 64, align: 64, offset: 1856)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !75, !56, !56, !66}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !77, file: !81, line: 65, baseType: !382, size: 64, align: 64, offset: 1920)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !75, !56, !56}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !77, file: !81, line: 69, baseType: !387, size: 64, align: 64, offset: 1984)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!58, !75, !56}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !77, file: !81, line: 70, baseType: !391, size: 64, align: 64, offset: 2048)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !75, !56}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !60, line: 110, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !60, line: 110, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !77, file: !81, line: 71, baseType: !398, size: 64, align: 64, offset: 2112)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!66, !56, !56}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !77, file: !81, line: 73, baseType: !398, size: 64, align: 64, offset: 2176)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !61, file: !65, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !65, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !61, file: !65, line: 11, baseType: !315, size: 64, align: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !61, file: !65, line: 12, baseType: !66, size: 32, align: 32, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !61, file: !65, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !61, file: !65, line: 15, baseType: !408, size: 64, align: 64, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !60, line: 108, baseType: !413)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !60, line: 108, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !61, file: !65, line: 17, baseType: !415, size: 64, align: 64, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!56, !411}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !61, file: !419, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!419 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!420 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !61, file: !419, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !61, file: !419, line: 7, baseType: !315, size: 64, align: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !61, file: !419, line: 9, baseType: !69, size: 64, align: 64, offset: 896)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !61, file: !419, line: 10, baseType: !424, size: 64, align: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !60, line: 111, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !427, line: 13, size: 576, align: 64, elements: !428)
!427 = !DIFile(filename: "nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!428 = !{!429, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !447, !448}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !430, line: 3, baseType: !66, size: 32, align: 32)
!430 = !DIFile(filename: "nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !426, file: !430, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !426, file: !430, line: 6, baseType: !315, size: 64, align: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !426, file: !430, line: 8, baseType: !94, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !426, file: !430, line: 9, baseType: !94, size: 64, align: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !426, file: !430, line: 10, baseType: !94, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !426, file: !430, line: 11, baseType: !66, size: 32, align: 32, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !426, file: !430, line: 14, baseType: !153, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !426, file: !430, line: 15, baseType: !153, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !426, file: !430, line: 18, baseType: !153, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !426, file: !430, line: 19, baseType: !153, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !426, file: !430, line: 20, baseType: !153, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !426, file: !430, line: 21, baseType: !153, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !426, file: !430, line: 22, baseType: !444, size: 64, align: 8, offset: 360)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 8, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !426, file: !430, line: 26, baseType: !51, size: 64, align: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !426, file: !430, line: 28, baseType: !424, size: 64, align: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !61, file: !419, line: 12, baseType: !153, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !61, file: !419, line: 13, baseType: !94, size: 64, align: 64, offset: 1088)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !61, file: !419, line: 14, baseType: !66, size: 32, align: 32, offset: 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !61, file: !419, line: 15, baseType: !94, size: 64, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !61, file: !419, line: 17, baseType: !153, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !61, file: !419, line: 18, baseType: !153, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !61, file: !419, line: 19, baseType: !153, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !61, file: !419, line: 20, baseType: !153, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !61, file: !419, line: 22, baseType: !153, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !61, file: !419, line: 23, baseType: !153, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !61, file: !419, line: 24, baseType: !153, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !61, file: !419, line: 25, baseType: !153, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !61, file: !419, line: 26, baseType: !153, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !61, file: !419, line: 31, baseType: !463, size: 64, align: 64, offset: 1344)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!94, !58}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !54, line: 91, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !182, !182, !182}
!470 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !472, line: 9, baseType: !473)
!472 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !476, !476, !476, !476, !476, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !54, line: 90, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!234, !482}
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !54, line: 78, baseType: !476)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !54, line: 80, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!128, !482, !482}
!487 = !{i32 2, !"Dwarf Version", i32 4}
!488 = !{i32 2, !"Debug Info Version", i32 3}
!489 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!490 = distinct !DISubprogram(name: "nicklist_insert", scope: !491, file: !491, line: 80, type: !492, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!491 = !DIFile(filename: "nicklist.c", directory: "/home/lichi/Desktop/irssi/task1")
!492 = !DISubroutineType(types: !493)
!493 = !{null, !58, !424}
!494 = !{}
!495 = !DILocalVariable(name: "channel", arg: 1, scope: !490, file: !491, line: 80, type: !58)
!496 = !DIExpression()
!497 = !DILocation(line: 80, column: 35, scope: !490)
!498 = !DILocalVariable(name: "nick", arg: 2, scope: !490, file: !491, line: 80, type: !424)
!499 = !DILocation(line: 80, column: 54, scope: !490)
!500 = !DILocation(line: 84, column: 15, scope: !490)
!501 = !DILocation(line: 84, column: 2, scope: !490)
!502 = !DILocation(line: 84, column: 8, scope: !490)
!503 = !DILocation(line: 84, column: 13, scope: !490)
!504 = !DILocation(line: 85, column: 27, scope: !490)
!505 = !DILocation(line: 85, column: 36, scope: !490)
!506 = !DILocation(line: 85, column: 9, scope: !490)
!507 = !DILocation(line: 85, column: 15, scope: !490)
!508 = !DILocation(line: 85, column: 25, scope: !490)
!509 = !DILocation(line: 87, column: 23, scope: !490)
!510 = !DILocation(line: 87, column: 32, scope: !490)
!511 = !DILocation(line: 87, column: 9, scope: !490)
!512 = !DILocation(line: 88, column: 33, scope: !490)
!513 = !DILocation(line: 88, column: 42, scope: !490)
!514 = !DILocation(line: 88, column: 2, scope: !490)
!515 = !DILocation(line: 89, column: 1, scope: !490)
!516 = distinct !DISubprogram(name: "nick_hash_add", scope: !491, file: !491, line: 33, type: !492, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!517 = !DILocalVariable(name: "channel", arg: 1, scope: !516, file: !491, line: 33, type: !58)
!518 = !DILocation(line: 33, column: 40, scope: !516)
!519 = !DILocalVariable(name: "nick", arg: 2, scope: !516, file: !491, line: 33, type: !424)
!520 = !DILocation(line: 33, column: 59, scope: !516)
!521 = !DILocalVariable(name: "list", scope: !516, file: !491, line: 35, type: !424)
!522 = !DILocation(line: 35, column: 12, scope: !516)
!523 = !DILocation(line: 37, column: 2, scope: !516)
!524 = !DILocation(line: 37, column: 8, scope: !516)
!525 = !DILocation(line: 37, column: 13, scope: !516)
!526 = !DILocation(line: 39, column: 29, scope: !516)
!527 = !DILocation(line: 39, column: 38, scope: !516)
!528 = !DILocation(line: 39, column: 45, scope: !516)
!529 = !DILocation(line: 39, column: 51, scope: !516)
!530 = !DILocation(line: 39, column: 9, scope: !516)
!531 = !DILocation(line: 39, column: 7, scope: !516)
!532 = !DILocation(line: 40, column: 13, scope: !533)
!533 = distinct !DILexicalBlock(scope: !516, file: !491, line: 40, column: 13)
!534 = !DILocation(line: 40, column: 18, scope: !533)
!535 = !DILocation(line: 40, column: 13, scope: !516)
!536 = !DILocation(line: 41, column: 23, scope: !533)
!537 = !DILocation(line: 41, column: 32, scope: !533)
!538 = !DILocation(line: 41, column: 39, scope: !533)
!539 = !DILocation(line: 41, column: 45, scope: !533)
!540 = !DILocation(line: 41, column: 51, scope: !533)
!541 = !DILocation(line: 41, column: 3, scope: !533)
!542 = !DILocation(line: 44, column: 3, scope: !543)
!543 = distinct !DILexicalBlock(scope: !533, file: !491, line: 42, column: 7)
!544 = !DILocation(line: 44, column: 10, scope: !545)
!545 = !DILexicalBlockFile(scope: !543, file: !491, discriminator: 1)
!546 = !DILocation(line: 44, column: 16, scope: !545)
!547 = !DILocation(line: 44, column: 21, scope: !545)
!548 = !DILocation(line: 44, column: 3, scope: !545)
!549 = !DILocation(line: 45, column: 11, scope: !543)
!550 = !DILocation(line: 45, column: 17, scope: !543)
!551 = !DILocation(line: 45, column: 9, scope: !543)
!552 = !DILocation(line: 44, column: 3, scope: !553)
!553 = !DILexicalBlockFile(scope: !543, file: !491, discriminator: 2)
!554 = distinct !{!554, !542}
!555 = !DILocation(line: 46, column: 16, scope: !543)
!556 = !DILocation(line: 46, column: 3, scope: !543)
!557 = !DILocation(line: 46, column: 9, scope: !543)
!558 = !DILocation(line: 46, column: 14, scope: !543)
!559 = !DILocation(line: 49, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !516, file: !491, line: 49, column: 6)
!561 = !DILocation(line: 49, column: 14, scope: !560)
!562 = !DILocation(line: 49, column: 23, scope: !560)
!563 = !DILocation(line: 49, column: 11, scope: !560)
!564 = !DILocation(line: 49, column: 6, scope: !516)
!565 = !DILocation(line: 51, column: 20, scope: !566)
!566 = distinct !DILexicalBlock(scope: !560, file: !491, line: 49, column: 32)
!567 = !DILocation(line: 51, column: 29, scope: !566)
!568 = !DILocation(line: 51, column: 3, scope: !566)
!569 = !DILocation(line: 52, column: 2, scope: !566)
!570 = !DILocation(line: 53, column: 1, scope: !516)
!571 = distinct !DISubprogram(name: "nicklist_set_host", scope: !491, file: !491, line: 92, type: !572, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !58, !424, !56}
!574 = !DILocalVariable(name: "channel", arg: 1, scope: !571, file: !491, line: 92, type: !58)
!575 = !DILocation(line: 92, column: 37, scope: !571)
!576 = !DILocalVariable(name: "nick", arg: 2, scope: !571, file: !491, line: 92, type: !424)
!577 = !DILocation(line: 92, column: 56, scope: !571)
!578 = !DILocalVariable(name: "host", arg: 3, scope: !571, file: !491, line: 92, type: !56)
!579 = !DILocation(line: 92, column: 74, scope: !571)
!580 = !DILocation(line: 94, column: 9, scope: !571)
!581 = distinct !{!581, !580}
!582 = !DILocation(line: 94, column: 17, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !491, discriminator: 1)
!584 = distinct !DILexicalBlock(scope: !585, file: !491, line: 94, column: 17)
!585 = distinct !DILexicalBlock(scope: !571, file: !491, line: 94, column: 11)
!586 = !DILocation(line: 94, column: 25, scope: !583)
!587 = !DILocation(line: 94, column: 12, scope: !588)
!588 = !DILexicalBlockFile(scope: !589, file: !491, discriminator: 2)
!589 = distinct !DILexicalBlock(scope: !584, file: !491, line: 94, column: 10)
!590 = !DILocation(line: 94, column: 21, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !491, discriminator: 3)
!592 = distinct !DILexicalBlock(scope: !584, file: !491, line: 94, column: 19)
!593 = !DILocation(line: 94, column: 109, scope: !591)
!594 = !DILocation(line: 94, column: 120, scope: !595)
!595 = !DILexicalBlockFile(scope: !585, file: !491, discriminator: 4)
!596 = !DILocation(line: 95, column: 9, scope: !571)
!597 = distinct !{!597, !596}
!598 = !DILocation(line: 95, column: 17, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !491, discriminator: 1)
!600 = distinct !DILexicalBlock(scope: !601, file: !491, line: 95, column: 17)
!601 = distinct !DILexicalBlock(scope: !571, file: !491, line: 95, column: 11)
!602 = !DILocation(line: 95, column: 22, scope: !599)
!603 = !DILocation(line: 95, column: 12, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !491, discriminator: 2)
!605 = distinct !DILexicalBlock(scope: !600, file: !491, line: 95, column: 10)
!606 = !DILocation(line: 95, column: 21, scope: !607)
!607 = !DILexicalBlockFile(scope: !608, file: !491, discriminator: 3)
!608 = distinct !DILexicalBlock(scope: !600, file: !491, line: 95, column: 19)
!609 = !DILocation(line: 95, column: 106, scope: !607)
!610 = !DILocation(line: 95, column: 117, scope: !611)
!611 = !DILexicalBlockFile(scope: !601, file: !491, discriminator: 4)
!612 = !DILocation(line: 96, column: 2, scope: !571)
!613 = distinct !{!613, !612}
!614 = !DILocation(line: 96, column: 10, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !491, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !617, file: !491, line: 96, column: 10)
!617 = distinct !DILexicalBlock(scope: !571, file: !491, line: 96, column: 4)
!618 = !DILocation(line: 96, column: 15, scope: !615)
!619 = !DILocation(line: 96, column: 5, scope: !620)
!620 = !DILexicalBlockFile(scope: !621, file: !491, discriminator: 2)
!621 = distinct !DILexicalBlock(scope: !616, file: !491, line: 96, column: 3)
!622 = !DILocation(line: 96, column: 14, scope: !623)
!623 = !DILexicalBlockFile(scope: !624, file: !491, discriminator: 3)
!624 = distinct !DILexicalBlock(scope: !616, file: !491, line: 96, column: 12)
!625 = !DILocation(line: 96, column: 99, scope: !623)
!626 = !DILocation(line: 96, column: 110, scope: !627)
!627 = !DILexicalBlockFile(scope: !617, file: !491, discriminator: 4)
!628 = !DILocation(line: 98, column: 16, scope: !571)
!629 = !DILocation(line: 98, column: 22, scope: !571)
!630 = !DILocation(line: 98, column: 9, scope: !571)
!631 = !DILocation(line: 99, column: 24, scope: !571)
!632 = !DILocation(line: 99, column: 15, scope: !571)
!633 = !DILocation(line: 99, column: 2, scope: !571)
!634 = !DILocation(line: 99, column: 8, scope: !571)
!635 = !DILocation(line: 99, column: 13, scope: !571)
!636 = !DILocation(line: 101, column: 49, scope: !571)
!637 = !DILocation(line: 101, column: 58, scope: !571)
!638 = !DILocation(line: 101, column: 9, scope: !571)
!639 = !DILocation(line: 102, column: 1, scope: !571)
!640 = !DILocation(line: 102, column: 1, scope: !641)
!641 = !DILexicalBlockFile(scope: !571, file: !491, discriminator: 1)
!642 = distinct !DISubprogram(name: "nicklist_remove", scope: !491, file: !491, line: 119, type: !492, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!643 = !DILocalVariable(name: "channel", arg: 1, scope: !642, file: !491, line: 119, type: !58)
!644 = !DILocation(line: 119, column: 35, scope: !642)
!645 = !DILocalVariable(name: "nick", arg: 2, scope: !642, file: !491, line: 119, type: !424)
!646 = !DILocation(line: 119, column: 54, scope: !642)
!647 = !DILocation(line: 121, column: 2, scope: !642)
!648 = distinct !{!648, !647}
!649 = !DILocation(line: 121, column: 53, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !491, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !652, file: !491, line: 121, column: 10)
!652 = distinct !DILexicalBlock(scope: !642, file: !491, line: 121, column: 4)
!653 = !DILocation(line: 121, column: 28, scope: !650)
!654 = !DILocation(line: 121, column: 12, scope: !650)
!655 = !DILocation(line: 121, column: 10, scope: !650)
!656 = !DILocation(line: 121, column: 11, scope: !657)
!657 = !DILexicalBlockFile(scope: !651, file: !491, discriminator: 2)
!658 = !DILocation(line: 121, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !652, file: !491, discriminator: 3)
!660 = !DILocation(line: 121, column: 54, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !491, discriminator: 4)
!662 = distinct !DILexicalBlock(scope: !651, file: !491, line: 121, column: 52)
!663 = !DILocation(line: 121, column: 63, scope: !664)
!664 = !DILexicalBlockFile(scope: !665, file: !491, discriminator: 5)
!665 = distinct !DILexicalBlock(scope: !651, file: !491, line: 121, column: 61)
!666 = !DILocation(line: 121, column: 155, scope: !664)
!667 = !DILocation(line: 121, column: 166, scope: !668)
!668 = !DILexicalBlockFile(scope: !652, file: !491, discriminator: 6)
!669 = !DILocation(line: 122, column: 2, scope: !642)
!670 = distinct !{!670, !669}
!671 = !DILocation(line: 122, column: 10, scope: !672)
!672 = !DILexicalBlockFile(scope: !673, file: !491, discriminator: 1)
!673 = distinct !DILexicalBlock(scope: !674, file: !491, line: 122, column: 10)
!674 = distinct !DILexicalBlock(scope: !642, file: !491, line: 122, column: 4)
!675 = !DILocation(line: 122, column: 15, scope: !672)
!676 = !DILocation(line: 122, column: 5, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !491, discriminator: 2)
!678 = distinct !DILexicalBlock(scope: !673, file: !491, line: 122, column: 3)
!679 = !DILocation(line: 122, column: 14, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !491, discriminator: 3)
!681 = distinct !DILexicalBlock(scope: !673, file: !491, line: 122, column: 12)
!682 = !DILocation(line: 122, column: 99, scope: !680)
!683 = !DILocation(line: 122, column: 110, scope: !684)
!684 = !DILexicalBlockFile(scope: !674, file: !491, discriminator: 4)
!685 = !DILocation(line: 124, column: 26, scope: !642)
!686 = !DILocation(line: 124, column: 35, scope: !642)
!687 = !DILocation(line: 124, column: 9, scope: !642)
!688 = !DILocation(line: 125, column: 19, scope: !642)
!689 = !DILocation(line: 125, column: 28, scope: !642)
!690 = !DILocation(line: 125, column: 2, scope: !642)
!691 = !DILocation(line: 126, column: 1, scope: !642)
!692 = !DILocation(line: 126, column: 1, scope: !693)
!693 = !DILexicalBlockFile(scope: !642, file: !491, discriminator: 1)
!694 = distinct !DISubprogram(name: "nick_hash_remove", scope: !491, file: !491, line: 55, type: !492, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!695 = !DILocalVariable(name: "channel", arg: 1, scope: !694, file: !491, line: 55, type: !58)
!696 = !DILocation(line: 55, column: 43, scope: !694)
!697 = !DILocalVariable(name: "nick", arg: 2, scope: !694, file: !491, line: 55, type: !424)
!698 = !DILocation(line: 55, column: 62, scope: !694)
!699 = !DILocalVariable(name: "list", scope: !694, file: !491, line: 57, type: !424)
!700 = !DILocation(line: 57, column: 12, scope: !694)
!701 = !DILocalVariable(name: "newlist", scope: !694, file: !491, line: 57, type: !424)
!702 = !DILocation(line: 57, column: 19, scope: !694)
!703 = !DILocation(line: 59, column: 29, scope: !694)
!704 = !DILocation(line: 59, column: 38, scope: !694)
!705 = !DILocation(line: 59, column: 45, scope: !694)
!706 = !DILocation(line: 59, column: 51, scope: !694)
!707 = !DILocation(line: 59, column: 9, scope: !694)
!708 = !DILocation(line: 59, column: 7, scope: !694)
!709 = !DILocation(line: 60, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !694, file: !491, line: 60, column: 6)
!711 = !DILocation(line: 60, column: 11, scope: !710)
!712 = !DILocation(line: 60, column: 6, scope: !694)
!713 = !DILocation(line: 61, column: 3, scope: !710)
!714 = !DILocation(line: 63, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !694, file: !491, line: 63, column: 6)
!716 = !DILocation(line: 63, column: 14, scope: !715)
!717 = !DILocation(line: 63, column: 11, scope: !715)
!718 = !DILocation(line: 63, column: 6, scope: !694)
!719 = !DILocation(line: 64, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !491, line: 63, column: 20)
!721 = !DILocation(line: 64, column: 19, scope: !720)
!722 = !DILocation(line: 64, column: 11, scope: !720)
!723 = !DILocation(line: 65, column: 2, scope: !720)
!724 = !DILocation(line: 66, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !715, file: !491, line: 65, column: 9)
!726 = !DILocation(line: 66, column: 11, scope: !725)
!727 = !DILocation(line: 67, column: 3, scope: !725)
!728 = !DILocation(line: 67, column: 10, scope: !729)
!729 = !DILexicalBlockFile(scope: !725, file: !491, discriminator: 1)
!730 = !DILocation(line: 67, column: 16, scope: !729)
!731 = !DILocation(line: 67, column: 24, scope: !729)
!732 = !DILocation(line: 67, column: 21, scope: !729)
!733 = !DILocation(line: 67, column: 3, scope: !729)
!734 = !DILocation(line: 68, column: 11, scope: !725)
!735 = !DILocation(line: 68, column: 17, scope: !725)
!736 = !DILocation(line: 68, column: 9, scope: !725)
!737 = !DILocation(line: 67, column: 3, scope: !738)
!738 = !DILexicalBlockFile(scope: !725, file: !491, discriminator: 2)
!739 = distinct !{!739, !727}
!740 = !DILocation(line: 69, column: 16, scope: !725)
!741 = !DILocation(line: 69, column: 22, scope: !725)
!742 = !DILocation(line: 69, column: 3, scope: !725)
!743 = !DILocation(line: 69, column: 9, scope: !725)
!744 = !DILocation(line: 69, column: 14, scope: !725)
!745 = !DILocation(line: 72, column: 22, scope: !694)
!746 = !DILocation(line: 72, column: 31, scope: !694)
!747 = !DILocation(line: 72, column: 38, scope: !694)
!748 = !DILocation(line: 72, column: 44, scope: !694)
!749 = !DILocation(line: 72, column: 2, scope: !694)
!750 = !DILocation(line: 73, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !694, file: !491, line: 73, column: 6)
!752 = !DILocation(line: 73, column: 14, scope: !751)
!753 = !DILocation(line: 73, column: 6, scope: !694)
!754 = !DILocation(line: 74, column: 23, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !491, line: 73, column: 22)
!756 = !DILocation(line: 74, column: 32, scope: !755)
!757 = !DILocation(line: 74, column: 39, scope: !755)
!758 = !DILocation(line: 74, column: 48, scope: !755)
!759 = !DILocation(line: 75, column: 9, scope: !755)
!760 = !DILocation(line: 74, column: 3, scope: !755)
!761 = !DILocation(line: 76, column: 2, scope: !755)
!762 = !DILocation(line: 77, column: 1, scope: !694)
!763 = distinct !DISubprogram(name: "nicklist_destroy", scope: !491, file: !491, line: 104, type: !492, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!764 = !DILocalVariable(name: "channel", arg: 1, scope: !763, file: !491, line: 104, type: !58)
!765 = !DILocation(line: 104, column: 43, scope: !763)
!766 = !DILocalVariable(name: "nick", arg: 2, scope: !763, file: !491, line: 104, type: !424)
!767 = !DILocation(line: 104, column: 62, scope: !763)
!768 = !DILocation(line: 106, column: 36, scope: !763)
!769 = !DILocation(line: 106, column: 45, scope: !763)
!770 = !DILocation(line: 106, column: 2, scope: !763)
!771 = !DILocation(line: 108, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !763, file: !491, line: 108, column: 6)
!773 = !DILocation(line: 108, column: 15, scope: !772)
!774 = !DILocation(line: 108, column: 26, scope: !772)
!775 = !DILocation(line: 108, column: 23, scope: !772)
!776 = !DILocation(line: 108, column: 6, scope: !763)
!777 = !DILocation(line: 109, column: 17, scope: !772)
!778 = !DILocation(line: 109, column: 26, scope: !772)
!779 = !DILocation(line: 109, column: 34, scope: !772)
!780 = !DILocation(line: 112, column: 9, scope: !763)
!781 = !DILocation(line: 112, column: 15, scope: !763)
!782 = !DILocation(line: 112, column: 2, scope: !763)
!783 = !DILocation(line: 113, column: 9, scope: !763)
!784 = !DILocation(line: 113, column: 15, scope: !763)
!785 = !DILocation(line: 113, column: 2, scope: !763)
!786 = !DILocation(line: 114, column: 9, scope: !763)
!787 = !DILocation(line: 114, column: 15, scope: !763)
!788 = !DILocation(line: 114, column: 2, scope: !763)
!789 = !DILocation(line: 115, column: 9, scope: !763)
!790 = !DILocation(line: 115, column: 2, scope: !763)
!791 = !DILocation(line: 116, column: 1, scope: !763)
!792 = distinct !DISubprogram(name: "nicklist_rename", scope: !491, file: !491, line: 157, type: !793, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !75, !56, !56}
!795 = !DILocalVariable(name: "server", arg: 1, scope: !792, file: !491, line: 157, type: !75)
!796 = !DILocation(line: 157, column: 34, scope: !792)
!797 = !DILocalVariable(name: "old_nick", arg: 2, scope: !792, file: !491, line: 157, type: !56)
!798 = !DILocation(line: 157, column: 54, scope: !792)
!799 = !DILocalVariable(name: "new_nick", arg: 3, scope: !792, file: !491, line: 158, type: !56)
!800 = !DILocation(line: 158, column: 20, scope: !792)
!801 = !DILocation(line: 160, column: 23, scope: !792)
!802 = !DILocation(line: 160, column: 36, scope: !792)
!803 = !DILocation(line: 160, column: 46, scope: !792)
!804 = !DILocation(line: 161, column: 27, scope: !792)
!805 = !DILocation(line: 161, column: 35, scope: !792)
!806 = !DILocation(line: 161, column: 9, scope: !792)
!807 = !DILocation(line: 160, column: 2, scope: !792)
!808 = !DILocation(line: 162, column: 1, scope: !792)
!809 = distinct !DISubprogram(name: "nicklist_rename_list", scope: !491, file: !491, line: 128, type: !810, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !75, !51, !56, !56, !243}
!812 = !DILocalVariable(name: "server", arg: 1, scope: !809, file: !491, line: 128, type: !75)
!813 = !DILocation(line: 128, column: 46, scope: !809)
!814 = !DILocalVariable(name: "new_nick_id", arg: 2, scope: !809, file: !491, line: 128, type: !51)
!815 = !DILocation(line: 128, column: 60, scope: !809)
!816 = !DILocalVariable(name: "old_nick", arg: 3, scope: !809, file: !491, line: 129, type: !56)
!817 = !DILocation(line: 129, column: 18, scope: !809)
!818 = !DILocalVariable(name: "new_nick", arg: 4, scope: !809, file: !491, line: 129, type: !56)
!819 = !DILocation(line: 129, column: 40, scope: !809)
!820 = !DILocalVariable(name: "nicks", arg: 5, scope: !809, file: !491, line: 130, type: !243)
!821 = !DILocation(line: 130, column: 14, scope: !809)
!822 = !DILocalVariable(name: "channel", scope: !809, file: !491, line: 132, type: !58)
!823 = !DILocation(line: 132, column: 15, scope: !809)
!824 = !DILocalVariable(name: "nickrec", scope: !809, file: !491, line: 133, type: !424)
!825 = !DILocation(line: 133, column: 12, scope: !809)
!826 = !DILocalVariable(name: "tmp", scope: !809, file: !491, line: 134, type: !243)
!827 = !DILocation(line: 134, column: 10, scope: !809)
!828 = !DILocation(line: 136, column: 13, scope: !829)
!829 = distinct !DILexicalBlock(scope: !809, file: !491, line: 136, column: 2)
!830 = !DILocation(line: 136, column: 11, scope: !829)
!831 = !DILocation(line: 136, column: 7, scope: !829)
!832 = !DILocation(line: 136, column: 20, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !491, discriminator: 1)
!834 = distinct !DILexicalBlock(scope: !829, file: !491, line: 136, column: 2)
!835 = !DILocation(line: 136, column: 24, scope: !833)
!836 = !DILocation(line: 136, column: 2, scope: !833)
!837 = !DILocation(line: 137, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !491, line: 136, column: 55)
!839 = !DILocation(line: 137, column: 18, scope: !838)
!840 = !DILocation(line: 137, column: 11, scope: !838)
!841 = !DILocation(line: 138, column: 13, scope: !838)
!842 = !DILocation(line: 138, column: 18, scope: !838)
!843 = !DILocation(line: 138, column: 24, scope: !838)
!844 = !DILocation(line: 138, column: 11, scope: !838)
!845 = !DILocation(line: 141, column: 34, scope: !838)
!846 = !DILocation(line: 141, column: 43, scope: !838)
!847 = !DILocation(line: 141, column: 17, scope: !838)
!848 = !DILocation(line: 143, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !838, file: !491, line: 143, column: 7)
!850 = !DILocation(line: 143, column: 19, scope: !849)
!851 = !DILocation(line: 143, column: 7, scope: !838)
!852 = !DILocation(line: 144, column: 25, scope: !849)
!853 = !DILocation(line: 144, column: 4, scope: !849)
!854 = !DILocation(line: 144, column: 13, scope: !849)
!855 = !DILocation(line: 144, column: 23, scope: !849)
!856 = !DILocation(line: 146, column: 10, scope: !838)
!857 = !DILocation(line: 146, column: 19, scope: !838)
!858 = !DILocation(line: 146, column: 3, scope: !838)
!859 = !DILocation(line: 147, column: 28, scope: !838)
!860 = !DILocation(line: 147, column: 19, scope: !838)
!861 = !DILocation(line: 147, column: 3, scope: !838)
!862 = !DILocation(line: 147, column: 12, scope: !838)
!863 = !DILocation(line: 147, column: 17, scope: !838)
!864 = !DILocation(line: 150, column: 31, scope: !838)
!865 = !DILocation(line: 150, column: 40, scope: !838)
!866 = !DILocation(line: 150, column: 17, scope: !838)
!867 = !DILocation(line: 152, column: 38, scope: !838)
!868 = !DILocation(line: 152, column: 47, scope: !838)
!869 = !DILocation(line: 152, column: 56, scope: !838)
!870 = !DILocation(line: 152, column: 3, scope: !838)
!871 = !DILocation(line: 153, column: 2, scope: !838)
!872 = !DILocation(line: 136, column: 38, scope: !873)
!873 = !DILexicalBlockFile(scope: !834, file: !491, discriminator: 2)
!874 = !DILocation(line: 136, column: 43, scope: !873)
!875 = !DILocation(line: 136, column: 49, scope: !873)
!876 = !DILocation(line: 136, column: 36, scope: !873)
!877 = !DILocation(line: 136, column: 2, scope: !873)
!878 = distinct !{!878, !879}
!879 = !DILocation(line: 136, column: 2, scope: !809)
!880 = !DILocation(line: 154, column: 15, scope: !809)
!881 = !DILocation(line: 154, column: 2, scope: !809)
!882 = !DILocation(line: 155, column: 1, scope: !809)
!883 = distinct !DISubprogram(name: "nicklist_get_same", scope: !491, file: !491, line: 289, type: !884, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!884 = !DISubroutineType(types: !885)
!885 = !{!243, !75, !56}
!886 = !DILocalVariable(name: "server", arg: 1, scope: !883, file: !491, line: 289, type: !75)
!887 = !DILocation(line: 289, column: 39, scope: !883)
!888 = !DILocalVariable(name: "nick", arg: 2, scope: !883, file: !491, line: 289, type: !56)
!889 = !DILocation(line: 289, column: 59, scope: !883)
!890 = !DILocalVariable(name: "tmp", scope: !883, file: !491, line: 291, type: !243)
!891 = !DILocation(line: 291, column: 10, scope: !883)
!892 = !DILocalVariable(name: "list", scope: !883, file: !491, line: 292, type: !243)
!893 = !DILocation(line: 292, column: 10, scope: !883)
!894 = !DILocation(line: 294, column: 2, scope: !883)
!895 = distinct !{!895, !894}
!896 = !DILocation(line: 294, column: 45, scope: !897)
!897 = !DILexicalBlockFile(scope: !898, file: !491, discriminator: 1)
!898 = distinct !DILexicalBlock(scope: !899, file: !491, line: 294, column: 10)
!899 = distinct !DILexicalBlock(scope: !883, file: !491, line: 294, column: 4)
!900 = !DILocation(line: 294, column: 27, scope: !897)
!901 = !DILocation(line: 294, column: 12, scope: !897)
!902 = !DILocation(line: 294, column: 10, scope: !897)
!903 = !DILocation(line: 294, column: 11, scope: !904)
!904 = !DILexicalBlockFile(scope: !898, file: !491, discriminator: 2)
!905 = !DILocation(line: 294, column: 10, scope: !906)
!906 = !DILexicalBlockFile(scope: !899, file: !491, discriminator: 3)
!907 = !DILocation(line: 294, column: 33, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !491, discriminator: 4)
!909 = distinct !DILexicalBlock(scope: !898, file: !491, line: 294, column: 31)
!910 = !DILocation(line: 294, column: 42, scope: !911)
!911 = !DILexicalBlockFile(scope: !912, file: !491, discriminator: 5)
!912 = distinct !DILexicalBlock(scope: !898, file: !491, line: 294, column: 40)
!913 = !DILocation(line: 294, column: 132, scope: !911)
!914 = !DILocation(line: 294, column: 7, scope: !915)
!915 = !DILexicalBlockFile(scope: !899, file: !491, discriminator: 6)
!916 = !DILocation(line: 296, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !883, file: !491, line: 296, column: 2)
!918 = !DILocation(line: 296, column: 21, scope: !917)
!919 = !DILocation(line: 296, column: 11, scope: !917)
!920 = !DILocation(line: 296, column: 7, scope: !917)
!921 = !DILocation(line: 296, column: 31, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !491, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !917, file: !491, line: 296, column: 2)
!924 = !DILocation(line: 296, column: 35, scope: !922)
!925 = !DILocation(line: 296, column: 2, scope: !922)
!926 = !DILocalVariable(name: "nick_rec", scope: !927, file: !491, line: 297, type: !424)
!927 = distinct !DILexicalBlock(scope: !923, file: !491, line: 296, column: 60)
!928 = !DILocation(line: 297, column: 13, scope: !927)
!929 = !DILocalVariable(name: "channel", scope: !927, file: !491, line: 298, type: !58)
!930 = !DILocation(line: 298, column: 16, scope: !927)
!931 = !DILocation(line: 298, column: 26, scope: !927)
!932 = !DILocation(line: 298, column: 31, scope: !927)
!933 = !DILocation(line: 300, column: 39, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !491, line: 300, column: 3)
!935 = !DILocation(line: 300, column: 48, scope: !934)
!936 = !DILocation(line: 300, column: 55, scope: !934)
!937 = !DILocation(line: 300, column: 19, scope: !934)
!938 = !DILocation(line: 300, column: 17, scope: !934)
!939 = !DILocation(line: 300, column: 8, scope: !934)
!940 = !DILocation(line: 301, column: 8, scope: !941)
!941 = distinct !DILexicalBlock(scope: !934, file: !491, line: 300, column: 3)
!942 = !DILocation(line: 301, column: 17, scope: !941)
!943 = !DILocation(line: 300, column: 3, scope: !944)
!944 = !DILexicalBlockFile(scope: !934, file: !491, discriminator: 1)
!945 = !DILocation(line: 303, column: 26, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !491, line: 302, column: 35)
!947 = !DILocation(line: 303, column: 32, scope: !946)
!948 = !DILocation(line: 303, column: 11, scope: !946)
!949 = !DILocation(line: 303, column: 9, scope: !946)
!950 = !DILocation(line: 304, column: 26, scope: !946)
!951 = !DILocation(line: 304, column: 32, scope: !946)
!952 = !DILocation(line: 304, column: 11, scope: !946)
!953 = !DILocation(line: 304, column: 9, scope: !946)
!954 = !DILocation(line: 305, column: 3, scope: !946)
!955 = !DILocation(line: 302, column: 19, scope: !941)
!956 = !DILocation(line: 302, column: 29, scope: !941)
!957 = !DILocation(line: 302, column: 17, scope: !941)
!958 = !DILocation(line: 300, column: 3, scope: !959)
!959 = !DILexicalBlockFile(scope: !941, file: !491, discriminator: 2)
!960 = distinct !{!960, !961}
!961 = !DILocation(line: 300, column: 3, scope: !927)
!962 = !DILocation(line: 306, column: 2, scope: !927)
!963 = !DILocation(line: 296, column: 49, scope: !964)
!964 = !DILexicalBlockFile(scope: !923, file: !491, discriminator: 2)
!965 = !DILocation(line: 296, column: 54, scope: !964)
!966 = !DILocation(line: 296, column: 47, scope: !964)
!967 = !DILocation(line: 296, column: 2, scope: !964)
!968 = distinct !{!968, !969}
!969 = !DILocation(line: 296, column: 2, scope: !883)
!970 = !DILocation(line: 308, column: 9, scope: !883)
!971 = !DILocation(line: 308, column: 2, scope: !883)
!972 = !DILocation(line: 309, column: 1, scope: !883)
!973 = distinct !DISubprogram(name: "nicklist_rename_unique", scope: !491, file: !491, line: 164, type: !974, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !75, !51, !56, !51, !56}
!976 = !DILocalVariable(name: "server", arg: 1, scope: !973, file: !491, line: 164, type: !75)
!977 = !DILocation(line: 164, column: 41, scope: !973)
!978 = !DILocalVariable(name: "old_nick_id", arg: 2, scope: !973, file: !491, line: 165, type: !51)
!979 = !DILocation(line: 165, column: 14, scope: !973)
!980 = !DILocalVariable(name: "old_nick", arg: 3, scope: !973, file: !491, line: 165, type: !56)
!981 = !DILocation(line: 165, column: 39, scope: !973)
!982 = !DILocalVariable(name: "new_nick_id", arg: 4, scope: !973, file: !491, line: 166, type: !51)
!983 = !DILocation(line: 166, column: 14, scope: !973)
!984 = !DILocalVariable(name: "new_nick", arg: 5, scope: !973, file: !491, line: 166, type: !56)
!985 = !DILocation(line: 166, column: 39, scope: !973)
!986 = !DILocation(line: 168, column: 23, scope: !973)
!987 = !DILocation(line: 168, column: 31, scope: !973)
!988 = !DILocation(line: 168, column: 44, scope: !973)
!989 = !DILocation(line: 168, column: 54, scope: !973)
!990 = !DILocation(line: 169, column: 34, scope: !973)
!991 = !DILocation(line: 169, column: 42, scope: !973)
!992 = !DILocation(line: 169, column: 9, scope: !973)
!993 = !DILocation(line: 168, column: 2, scope: !973)
!994 = !DILocation(line: 170, column: 1, scope: !973)
!995 = distinct !DISubprogram(name: "nicklist_get_same_unique", scope: !491, file: !491, line: 331, type: !996, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!996 = !DISubroutineType(types: !997)
!997 = !{!243, !75, !51}
!998 = !DILocalVariable(name: "server", arg: 1, scope: !995, file: !491, line: 331, type: !75)
!999 = !DILocation(line: 331, column: 46, scope: !995)
!1000 = !DILocalVariable(name: "id", arg: 2, scope: !995, file: !491, line: 331, type: !51)
!1001 = !DILocation(line: 331, column: 60, scope: !995)
!1002 = !DILocalVariable(name: "rec", scope: !995, file: !491, line: 333, type: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKLIST_GET_SAME_UNIQUE_REC", file: !491, line: 315, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 311, size: 192, align: 64, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1004, file: !491, line: 312, baseType: !58, size: 64, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1004, file: !491, line: 313, baseType: !51, size: 64, align: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1004, file: !491, line: 314, baseType: !243, size: 64, align: 64, offset: 128)
!1009 = !DILocation(line: 333, column: 31, scope: !995)
!1010 = !DILocalVariable(name: "tmp", scope: !995, file: !491, line: 334, type: !243)
!1011 = !DILocation(line: 334, column: 10, scope: !995)
!1012 = !DILocation(line: 336, column: 2, scope: !995)
!1013 = distinct !{!1013, !1012}
!1014 = !DILocation(line: 336, column: 45, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1016, file: !491, discriminator: 1)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !491, line: 336, column: 10)
!1017 = distinct !DILexicalBlock(scope: !995, file: !491, line: 336, column: 4)
!1018 = !DILocation(line: 336, column: 27, scope: !1015)
!1019 = !DILocation(line: 336, column: 12, scope: !1015)
!1020 = !DILocation(line: 336, column: 10, scope: !1015)
!1021 = !DILocation(line: 336, column: 11, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1016, file: !491, discriminator: 2)
!1023 = !DILocation(line: 336, column: 10, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1017, file: !491, discriminator: 3)
!1025 = !DILocation(line: 336, column: 33, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1027, file: !491, discriminator: 4)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !491, line: 336, column: 31)
!1028 = !DILocation(line: 336, column: 42, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !491, discriminator: 5)
!1030 = distinct !DILexicalBlock(scope: !1016, file: !491, line: 336, column: 40)
!1031 = !DILocation(line: 336, column: 132, scope: !1029)
!1032 = !DILocation(line: 336, column: 7, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1017, file: !491, discriminator: 6)
!1034 = !DILocation(line: 337, column: 2, scope: !995)
!1035 = distinct !{!1035, !1034}
!1036 = !DILocation(line: 337, column: 10, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !491, discriminator: 1)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !491, line: 337, column: 10)
!1039 = distinct !DILexicalBlock(scope: !995, file: !491, line: 337, column: 4)
!1040 = !DILocation(line: 337, column: 13, scope: !1037)
!1041 = !DILocation(line: 337, column: 5, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1043, file: !491, discriminator: 2)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !491, line: 337, column: 3)
!1044 = !DILocation(line: 337, column: 14, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1046, file: !491, discriminator: 3)
!1046 = distinct !DILexicalBlock(scope: !1038, file: !491, line: 337, column: 12)
!1047 = !DILocation(line: 337, column: 97, scope: !1045)
!1048 = !DILocation(line: 337, column: 7, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1039, file: !491, discriminator: 4)
!1050 = !DILocation(line: 339, column: 18, scope: !995)
!1051 = !DILocation(line: 339, column: 13, scope: !995)
!1052 = !DILocation(line: 339, column: 16, scope: !995)
!1053 = !DILocation(line: 340, column: 6, scope: !995)
!1054 = !DILocation(line: 340, column: 11, scope: !995)
!1055 = !DILocation(line: 341, column: 13, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !995, file: !491, line: 341, column: 2)
!1057 = !DILocation(line: 341, column: 21, scope: !1056)
!1058 = !DILocation(line: 341, column: 11, scope: !1056)
!1059 = !DILocation(line: 341, column: 7, scope: !1056)
!1060 = !DILocation(line: 341, column: 31, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !491, discriminator: 1)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !491, line: 341, column: 2)
!1063 = !DILocation(line: 341, column: 35, scope: !1061)
!1064 = !DILocation(line: 341, column: 2, scope: !1061)
!1065 = !DILocation(line: 342, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !491, line: 341, column: 60)
!1067 = !DILocation(line: 342, column: 22, scope: !1066)
!1068 = !DILocation(line: 342, column: 7, scope: !1066)
!1069 = !DILocation(line: 342, column: 15, scope: !1066)
!1070 = !DILocation(line: 343, column: 28, scope: !1066)
!1071 = !DILocation(line: 343, column: 37, scope: !1066)
!1072 = !DILocation(line: 345, column: 10, scope: !1066)
!1073 = !DILocation(line: 343, column: 3, scope: !1066)
!1074 = !DILocation(line: 346, column: 2, scope: !1066)
!1075 = !DILocation(line: 341, column: 49, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1062, file: !491, discriminator: 2)
!1077 = !DILocation(line: 341, column: 54, scope: !1076)
!1078 = !DILocation(line: 341, column: 47, scope: !1076)
!1079 = !DILocation(line: 341, column: 2, scope: !1076)
!1080 = distinct !{!1080, !1081}
!1081 = !DILocation(line: 341, column: 2, scope: !995)
!1082 = !DILocation(line: 347, column: 13, scope: !995)
!1083 = !DILocation(line: 347, column: 2, scope: !995)
!1084 = !DILocation(line: 348, column: 1, scope: !995)
!1085 = distinct !DISubprogram(name: "nicklist_find_multiple", scope: !491, file: !491, line: 190, type: !1086, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!243, !58, !56}
!1088 = !DILocalVariable(name: "channel", arg: 1, scope: !1085, file: !491, line: 190, type: !58)
!1089 = !DILocation(line: 190, column: 45, scope: !1085)
!1090 = !DILocalVariable(name: "mask", arg: 2, scope: !1085, file: !491, line: 190, type: !56)
!1091 = !DILocation(line: 190, column: 66, scope: !1085)
!1092 = !DILocalVariable(name: "nicks", scope: !1085, file: !491, line: 192, type: !243)
!1093 = !DILocation(line: 192, column: 10, scope: !1085)
!1094 = !DILocalVariable(name: "nick", scope: !1085, file: !491, line: 193, type: !424)
!1095 = !DILocation(line: 193, column: 12, scope: !1085)
!1096 = !DILocalVariable(name: "iter", scope: !1085, file: !491, line: 194, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTableIter", file: !71, line: 43, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTableIter", file: !71, line: 45, size: 320, align: 64, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dummy1", scope: !1098, file: !71, line: 48, baseType: !182, size: 64, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dummy2", scope: !1098, file: !71, line: 49, baseType: !182, size: 64, align: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dummy3", scope: !1098, file: !71, line: 50, baseType: !182, size: 64, align: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dummy4", scope: !1098, file: !71, line: 51, baseType: !66, size: 32, align: 32, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dummy5", scope: !1098, file: !71, line: 52, baseType: !202, size: 32, align: 32, offset: 224)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dummy6", scope: !1098, file: !71, line: 53, baseType: !182, size: 64, align: 64, offset: 256)
!1106 = !DILocation(line: 194, column: 17, scope: !1085)
!1107 = !DILocation(line: 196, column: 2, scope: !1085)
!1108 = distinct !{!1108, !1107}
!1109 = !DILocation(line: 196, column: 53, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !491, discriminator: 1)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !491, line: 196, column: 10)
!1112 = distinct !DILexicalBlock(scope: !1085, file: !491, line: 196, column: 4)
!1113 = !DILocation(line: 196, column: 28, scope: !1110)
!1114 = !DILocation(line: 196, column: 12, scope: !1110)
!1115 = !DILocation(line: 196, column: 10, scope: !1110)
!1116 = !DILocation(line: 196, column: 11, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1111, file: !491, discriminator: 2)
!1118 = !DILocation(line: 196, column: 10, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1112, file: !491, discriminator: 3)
!1120 = !DILocation(line: 196, column: 54, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1122, file: !491, discriminator: 4)
!1122 = distinct !DILexicalBlock(scope: !1111, file: !491, line: 196, column: 52)
!1123 = !DILocation(line: 196, column: 63, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1125, file: !491, discriminator: 5)
!1125 = distinct !DILexicalBlock(scope: !1111, file: !491, line: 196, column: 61)
!1126 = !DILocation(line: 196, column: 155, scope: !1124)
!1127 = !DILocation(line: 196, column: 7, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1112, file: !491, discriminator: 6)
!1129 = !DILocation(line: 197, column: 2, scope: !1085)
!1130 = distinct !{!1130, !1129}
!1131 = !DILocation(line: 197, column: 10, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !491, discriminator: 1)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !491, line: 197, column: 10)
!1134 = distinct !DILexicalBlock(scope: !1085, file: !491, line: 197, column: 4)
!1135 = !DILocation(line: 197, column: 15, scope: !1132)
!1136 = !DILocation(line: 197, column: 5, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !491, discriminator: 2)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !491, line: 197, column: 3)
!1139 = !DILocation(line: 197, column: 14, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !491, discriminator: 3)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !491, line: 197, column: 12)
!1142 = !DILocation(line: 197, column: 99, scope: !1140)
!1143 = !DILocation(line: 197, column: 7, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1134, file: !491, discriminator: 4)
!1145 = !DILocation(line: 199, column: 8, scope: !1085)
!1146 = !DILocation(line: 201, column: 32, scope: !1085)
!1147 = !DILocation(line: 201, column: 41, scope: !1085)
!1148 = !DILocation(line: 201, column: 2, scope: !1085)
!1149 = !DILocation(line: 202, column: 2, scope: !1085)
!1150 = !DILocation(line: 202, column: 44, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1085, file: !491, discriminator: 1)
!1152 = !DILocation(line: 202, column: 9, scope: !1151)
!1153 = !DILocation(line: 202, column: 2, scope: !1151)
!1154 = !DILocation(line: 203, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1085, file: !491, line: 202, column: 59)
!1156 = !DILocation(line: 203, column: 10, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !491, discriminator: 1)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !491, line: 203, column: 3)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !491, line: 203, column: 3)
!1160 = !DILocation(line: 203, column: 15, scope: !1157)
!1161 = !DILocation(line: 203, column: 3, scope: !1157)
!1162 = !DILocation(line: 204, column: 27, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !491, line: 204, column: 8)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !491, line: 203, column: 42)
!1165 = !DILocation(line: 204, column: 36, scope: !1163)
!1166 = !DILocation(line: 204, column: 44, scope: !1163)
!1167 = !DILocation(line: 205, column: 13, scope: !1163)
!1168 = !DILocation(line: 205, column: 19, scope: !1163)
!1169 = !DILocation(line: 205, column: 25, scope: !1163)
!1170 = !DILocation(line: 205, column: 31, scope: !1163)
!1171 = !DILocation(line: 204, column: 8, scope: !1163)
!1172 = !DILocation(line: 204, column: 8, scope: !1164)
!1173 = !DILocation(line: 206, column: 29, scope: !1163)
!1174 = !DILocation(line: 206, column: 36, scope: !1163)
!1175 = !DILocation(line: 206, column: 13, scope: !1163)
!1176 = !DILocation(line: 206, column: 11, scope: !1163)
!1177 = !DILocation(line: 206, column: 5, scope: !1163)
!1178 = !DILocation(line: 207, column: 3, scope: !1164)
!1179 = !DILocation(line: 203, column: 30, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1158, file: !491, discriminator: 2)
!1181 = !DILocation(line: 203, column: 36, scope: !1180)
!1182 = !DILocation(line: 203, column: 28, scope: !1180)
!1183 = !DILocation(line: 203, column: 3, scope: !1180)
!1184 = distinct !{!1184, !1154}
!1185 = !DILocation(line: 202, column: 2, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1085, file: !491, discriminator: 2)
!1187 = distinct !{!1187, !1149}
!1188 = !DILocation(line: 210, column: 9, scope: !1085)
!1189 = !DILocation(line: 210, column: 2, scope: !1085)
!1190 = !DILocation(line: 211, column: 1, scope: !1085)
!1191 = distinct !DISubprogram(name: "nicklist_find", scope: !491, file: !491, line: 214, type: !1192, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!424, !58, !56}
!1194 = !DILocalVariable(name: "channel", arg: 1, scope: !1191, file: !491, line: 214, type: !58)
!1195 = !DILocation(line: 214, column: 38, scope: !1191)
!1196 = !DILocalVariable(name: "nick", arg: 2, scope: !1191, file: !491, line: 214, type: !56)
!1197 = !DILocation(line: 214, column: 59, scope: !1191)
!1198 = !DILocation(line: 216, column: 2, scope: !1191)
!1199 = distinct !{!1199, !1198}
!1200 = !DILocation(line: 216, column: 53, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !491, discriminator: 1)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !491, line: 216, column: 10)
!1203 = distinct !DILexicalBlock(scope: !1191, file: !491, line: 216, column: 4)
!1204 = !DILocation(line: 216, column: 28, scope: !1201)
!1205 = !DILocation(line: 216, column: 12, scope: !1201)
!1206 = !DILocation(line: 216, column: 10, scope: !1201)
!1207 = !DILocation(line: 216, column: 11, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1202, file: !491, discriminator: 2)
!1209 = !DILocation(line: 216, column: 10, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1203, file: !491, discriminator: 3)
!1211 = !DILocation(line: 216, column: 54, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !491, discriminator: 4)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !491, line: 216, column: 52)
!1214 = !DILocation(line: 216, column: 63, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !491, discriminator: 5)
!1216 = distinct !DILexicalBlock(scope: !1202, file: !491, line: 216, column: 61)
!1217 = !DILocation(line: 216, column: 155, scope: !1215)
!1218 = !DILocation(line: 216, column: 7, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1203, file: !491, discriminator: 6)
!1220 = !DILocation(line: 217, column: 2, scope: !1191)
!1221 = distinct !{!1221, !1220}
!1222 = !DILocation(line: 217, column: 10, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1224, file: !491, discriminator: 1)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !491, line: 217, column: 10)
!1225 = distinct !DILexicalBlock(scope: !1191, file: !491, line: 217, column: 4)
!1226 = !DILocation(line: 217, column: 15, scope: !1223)
!1227 = !DILocation(line: 217, column: 5, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1229, file: !491, discriminator: 2)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !491, line: 217, column: 3)
!1230 = !DILocation(line: 217, column: 14, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1232, file: !491, discriminator: 3)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !491, line: 217, column: 12)
!1233 = !DILocation(line: 217, column: 99, scope: !1231)
!1234 = !DILocation(line: 217, column: 7, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1225, file: !491, discriminator: 4)
!1236 = !DILocation(line: 219, column: 29, scope: !1191)
!1237 = !DILocation(line: 219, column: 38, scope: !1191)
!1238 = !DILocation(line: 219, column: 45, scope: !1191)
!1239 = !DILocation(line: 219, column: 9, scope: !1191)
!1240 = !DILocation(line: 219, column: 2, scope: !1191)
!1241 = !DILocation(line: 220, column: 1, scope: !1191)
!1242 = distinct !DISubprogram(name: "nicklist_find_unique", scope: !491, file: !491, line: 222, type: !1243, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!424, !58, !56, !51}
!1245 = !DILocalVariable(name: "channel", arg: 1, scope: !1242, file: !491, line: 222, type: !58)
!1246 = !DILocation(line: 222, column: 45, scope: !1242)
!1247 = !DILocalVariable(name: "nick", arg: 2, scope: !1242, file: !491, line: 222, type: !56)
!1248 = !DILocation(line: 222, column: 66, scope: !1242)
!1249 = !DILocalVariable(name: "id", arg: 3, scope: !1242, file: !491, line: 223, type: !51)
!1250 = !DILocation(line: 223, column: 17, scope: !1242)
!1251 = !DILocalVariable(name: "rec", scope: !1242, file: !491, line: 225, type: !424)
!1252 = !DILocation(line: 225, column: 12, scope: !1242)
!1253 = !DILocation(line: 227, column: 2, scope: !1242)
!1254 = distinct !{!1254, !1253}
!1255 = !DILocation(line: 227, column: 53, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !491, discriminator: 1)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !491, line: 227, column: 10)
!1258 = distinct !DILexicalBlock(scope: !1242, file: !491, line: 227, column: 4)
!1259 = !DILocation(line: 227, column: 28, scope: !1256)
!1260 = !DILocation(line: 227, column: 12, scope: !1256)
!1261 = !DILocation(line: 227, column: 10, scope: !1256)
!1262 = !DILocation(line: 227, column: 11, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1257, file: !491, discriminator: 2)
!1264 = !DILocation(line: 227, column: 10, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1258, file: !491, discriminator: 3)
!1266 = !DILocation(line: 227, column: 54, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1268, file: !491, discriminator: 4)
!1268 = distinct !DILexicalBlock(scope: !1257, file: !491, line: 227, column: 52)
!1269 = !DILocation(line: 227, column: 63, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !491, discriminator: 5)
!1271 = distinct !DILexicalBlock(scope: !1257, file: !491, line: 227, column: 61)
!1272 = !DILocation(line: 227, column: 155, scope: !1270)
!1273 = !DILocation(line: 227, column: 7, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1258, file: !491, discriminator: 6)
!1275 = !DILocation(line: 228, column: 2, scope: !1242)
!1276 = distinct !{!1276, !1275}
!1277 = !DILocation(line: 228, column: 10, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1279, file: !491, discriminator: 1)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !491, line: 228, column: 10)
!1280 = distinct !DILexicalBlock(scope: !1242, file: !491, line: 228, column: 4)
!1281 = !DILocation(line: 228, column: 15, scope: !1278)
!1282 = !DILocation(line: 228, column: 5, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !491, discriminator: 2)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !491, line: 228, column: 3)
!1285 = !DILocation(line: 228, column: 14, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !491, discriminator: 3)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !491, line: 228, column: 12)
!1288 = !DILocation(line: 228, column: 99, scope: !1286)
!1289 = !DILocation(line: 228, column: 7, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1280, file: !491, discriminator: 4)
!1291 = !DILocation(line: 230, column: 28, scope: !1242)
!1292 = !DILocation(line: 230, column: 37, scope: !1242)
!1293 = !DILocation(line: 230, column: 44, scope: !1242)
!1294 = !DILocation(line: 230, column: 8, scope: !1242)
!1295 = !DILocation(line: 230, column: 6, scope: !1242)
!1296 = !DILocation(line: 231, column: 2, scope: !1242)
!1297 = !DILocation(line: 231, column: 9, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1242, file: !491, discriminator: 1)
!1299 = !DILocation(line: 231, column: 13, scope: !1298)
!1300 = !DILocation(line: 231, column: 20, scope: !1298)
!1301 = !DILocation(line: 231, column: 23, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1242, file: !491, discriminator: 2)
!1303 = !DILocation(line: 231, column: 28, scope: !1302)
!1304 = !DILocation(line: 231, column: 41, scope: !1302)
!1305 = !DILocation(line: 231, column: 38, scope: !1302)
!1306 = !DILocation(line: 231, column: 2, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1242, file: !491, discriminator: 3)
!1308 = !DILocation(line: 232, column: 23, scope: !1242)
!1309 = !DILocation(line: 232, column: 28, scope: !1242)
!1310 = !DILocation(line: 232, column: 21, scope: !1242)
!1311 = !DILocation(line: 231, column: 2, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1242, file: !491, discriminator: 4)
!1313 = distinct !{!1313, !1296}
!1314 = !DILocation(line: 234, column: 16, scope: !1242)
!1315 = !DILocation(line: 234, column: 9, scope: !1242)
!1316 = !DILocation(line: 235, column: 1, scope: !1242)
!1317 = distinct !DISubprogram(name: "nicklist_find_mask", scope: !491, file: !491, line: 238, type: !1192, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1318 = !DILocalVariable(name: "channel", arg: 1, scope: !1317, file: !491, line: 238, type: !58)
!1319 = !DILocation(line: 238, column: 43, scope: !1317)
!1320 = !DILocalVariable(name: "mask", arg: 2, scope: !1317, file: !491, line: 238, type: !56)
!1321 = !DILocation(line: 238, column: 64, scope: !1317)
!1322 = !DILocalVariable(name: "nickrec", scope: !1317, file: !491, line: 240, type: !424)
!1323 = !DILocation(line: 240, column: 12, scope: !1317)
!1324 = !DILocalVariable(name: "nick", scope: !1317, file: !491, line: 241, type: !94)
!1325 = !DILocation(line: 241, column: 8, scope: !1317)
!1326 = !DILocalVariable(name: "host", scope: !1317, file: !491, line: 241, type: !94)
!1327 = !DILocation(line: 241, column: 15, scope: !1317)
!1328 = !DILocation(line: 243, column: 2, scope: !1317)
!1329 = distinct !{!1329, !1328}
!1330 = !DILocation(line: 243, column: 53, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !491, discriminator: 1)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !491, line: 243, column: 10)
!1333 = distinct !DILexicalBlock(scope: !1317, file: !491, line: 243, column: 4)
!1334 = !DILocation(line: 243, column: 28, scope: !1331)
!1335 = !DILocation(line: 243, column: 12, scope: !1331)
!1336 = !DILocation(line: 243, column: 10, scope: !1331)
!1337 = !DILocation(line: 243, column: 11, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1332, file: !491, discriminator: 2)
!1339 = !DILocation(line: 243, column: 10, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1333, file: !491, discriminator: 3)
!1341 = !DILocation(line: 243, column: 54, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !491, discriminator: 4)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !491, line: 243, column: 52)
!1344 = !DILocation(line: 243, column: 63, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !491, discriminator: 5)
!1346 = distinct !DILexicalBlock(scope: !1332, file: !491, line: 243, column: 61)
!1347 = !DILocation(line: 243, column: 155, scope: !1345)
!1348 = !DILocation(line: 243, column: 7, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1333, file: !491, discriminator: 6)
!1350 = !DILocation(line: 244, column: 2, scope: !1317)
!1351 = distinct !{!1351, !1350}
!1352 = !DILocation(line: 244, column: 10, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !491, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !491, line: 244, column: 10)
!1355 = distinct !DILexicalBlock(scope: !1317, file: !491, line: 244, column: 4)
!1356 = !DILocation(line: 244, column: 15, scope: !1353)
!1357 = !DILocation(line: 244, column: 5, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !491, discriminator: 2)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !491, line: 244, column: 3)
!1360 = !DILocation(line: 244, column: 14, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !491, discriminator: 3)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !491, line: 244, column: 12)
!1363 = !DILocation(line: 244, column: 99, scope: !1361)
!1364 = !DILocation(line: 244, column: 7, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1355, file: !491, discriminator: 4)
!1366 = !DILocation(line: 246, column: 18, scope: !1317)
!1367 = !DILocation(line: 246, column: 9, scope: !1317)
!1368 = !DILocation(line: 246, column: 7, scope: !1317)
!1369 = !DILocation(line: 247, column: 16, scope: !1317)
!1370 = !DILocation(line: 247, column: 9, scope: !1317)
!1371 = !DILocation(line: 247, column: 7, scope: !1317)
!1372 = !DILocation(line: 248, column: 6, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1317, file: !491, line: 248, column: 6)
!1374 = !DILocation(line: 248, column: 11, scope: !1373)
!1375 = !DILocation(line: 248, column: 6, scope: !1317)
!1376 = !DILocation(line: 248, column: 24, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1373, file: !491, discriminator: 1)
!1378 = !DILocation(line: 248, column: 27, scope: !1377)
!1379 = !DILocation(line: 248, column: 19, scope: !1377)
!1380 = !DILocation(line: 250, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1317, file: !491, line: 250, column: 6)
!1382 = !DILocation(line: 250, column: 6, scope: !1381)
!1383 = !DILocation(line: 250, column: 24, scope: !1381)
!1384 = !DILocation(line: 250, column: 34, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1381, file: !491, discriminator: 1)
!1386 = !DILocation(line: 250, column: 27, scope: !1385)
!1387 = !DILocation(line: 250, column: 6, scope: !1385)
!1388 = !DILocation(line: 251, column: 10, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !491, line: 250, column: 46)
!1390 = !DILocation(line: 251, column: 3, scope: !1389)
!1391 = !DILocation(line: 252, column: 34, scope: !1389)
!1392 = !DILocation(line: 252, column: 43, scope: !1389)
!1393 = !DILocation(line: 252, column: 10, scope: !1389)
!1394 = !DILocation(line: 252, column: 3, scope: !1389)
!1395 = !DILocation(line: 255, column: 32, scope: !1317)
!1396 = !DILocation(line: 255, column: 41, scope: !1317)
!1397 = !DILocation(line: 255, column: 48, scope: !1317)
!1398 = !DILocation(line: 255, column: 12, scope: !1317)
!1399 = !DILocation(line: 255, column: 10, scope: !1317)
!1400 = !DILocation(line: 257, column: 6, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1317, file: !491, line: 257, column: 6)
!1402 = !DILocation(line: 257, column: 11, scope: !1401)
!1403 = !DILocation(line: 257, column: 6, scope: !1317)
!1404 = !DILocation(line: 258, column: 3, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !491, line: 257, column: 19)
!1406 = !DILocation(line: 258, column: 10, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1405, file: !491, discriminator: 1)
!1408 = !DILocation(line: 258, column: 18, scope: !1407)
!1409 = !DILocation(line: 258, column: 3, scope: !1407)
!1410 = !DILocation(line: 259, column: 8, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !491, line: 259, column: 8)
!1412 = distinct !DILexicalBlock(scope: !1405, file: !491, line: 258, column: 26)
!1413 = !DILocation(line: 259, column: 17, scope: !1411)
!1414 = !DILocation(line: 259, column: 22, scope: !1411)
!1415 = !DILocation(line: 259, column: 29, scope: !1411)
!1416 = !DILocation(line: 260, column: 24, scope: !1411)
!1417 = !DILocation(line: 260, column: 30, scope: !1411)
!1418 = !DILocation(line: 260, column: 39, scope: !1411)
!1419 = !DILocation(line: 260, column: 8, scope: !1411)
!1420 = !DILocation(line: 259, column: 8, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1412, file: !491, discriminator: 1)
!1422 = !DILocation(line: 261, column: 5, scope: !1411)
!1423 = !DILocation(line: 262, column: 14, scope: !1412)
!1424 = !DILocation(line: 262, column: 23, scope: !1412)
!1425 = !DILocation(line: 262, column: 12, scope: !1412)
!1426 = !DILocation(line: 258, column: 3, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1405, file: !491, discriminator: 2)
!1428 = distinct !{!1428, !1404}
!1429 = !DILocation(line: 264, column: 2, scope: !1405)
!1430 = !DILocation(line: 265, column: 9, scope: !1317)
!1431 = !DILocation(line: 265, column: 2, scope: !1317)
!1432 = !DILocation(line: 266, column: 9, scope: !1317)
!1433 = !DILocation(line: 266, column: 2, scope: !1317)
!1434 = !DILocation(line: 267, column: 1, scope: !1317)
!1435 = distinct !DISubprogram(name: "nicklist_find_wildcards", scope: !491, file: !491, line: 172, type: !1192, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1436 = !DILocalVariable(name: "channel", arg: 1, scope: !1435, file: !491, line: 172, type: !58)
!1437 = !DILocation(line: 172, column: 55, scope: !1435)
!1438 = !DILocalVariable(name: "mask", arg: 2, scope: !1435, file: !491, line: 173, type: !56)
!1439 = !DILocation(line: 173, column: 19, scope: !1435)
!1440 = !DILocalVariable(name: "nick", scope: !1435, file: !491, line: 175, type: !424)
!1441 = !DILocation(line: 175, column: 12, scope: !1435)
!1442 = !DILocalVariable(name: "iter", scope: !1435, file: !491, line: 176, type: !1097)
!1443 = !DILocation(line: 176, column: 17, scope: !1435)
!1444 = !DILocation(line: 178, column: 32, scope: !1435)
!1445 = !DILocation(line: 178, column: 41, scope: !1435)
!1446 = !DILocation(line: 178, column: 2, scope: !1435)
!1447 = !DILocation(line: 179, column: 2, scope: !1435)
!1448 = !DILocation(line: 179, column: 44, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1435, file: !491, discriminator: 1)
!1450 = !DILocation(line: 179, column: 9, scope: !1449)
!1451 = !DILocation(line: 179, column: 2, scope: !1449)
!1452 = !DILocation(line: 180, column: 3, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1435, file: !491, line: 179, column: 59)
!1454 = !DILocation(line: 180, column: 10, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1456, file: !491, discriminator: 1)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !491, line: 180, column: 3)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !491, line: 180, column: 3)
!1458 = !DILocation(line: 180, column: 15, scope: !1455)
!1459 = !DILocation(line: 180, column: 3, scope: !1455)
!1460 = !DILocation(line: 181, column: 27, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !491, line: 181, column: 8)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !491, line: 180, column: 42)
!1463 = !DILocation(line: 181, column: 36, scope: !1461)
!1464 = !DILocation(line: 181, column: 44, scope: !1461)
!1465 = !DILocation(line: 182, column: 13, scope: !1461)
!1466 = !DILocation(line: 182, column: 19, scope: !1461)
!1467 = !DILocation(line: 182, column: 25, scope: !1461)
!1468 = !DILocation(line: 182, column: 31, scope: !1461)
!1469 = !DILocation(line: 181, column: 8, scope: !1461)
!1470 = !DILocation(line: 181, column: 8, scope: !1462)
!1471 = !DILocation(line: 183, column: 12, scope: !1461)
!1472 = !DILocation(line: 183, column: 5, scope: !1461)
!1473 = !DILocation(line: 184, column: 3, scope: !1462)
!1474 = !DILocation(line: 180, column: 30, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1456, file: !491, discriminator: 2)
!1476 = !DILocation(line: 180, column: 36, scope: !1475)
!1477 = !DILocation(line: 180, column: 28, scope: !1475)
!1478 = !DILocation(line: 180, column: 3, scope: !1475)
!1479 = distinct !{!1479, !1452}
!1480 = !DILocation(line: 179, column: 2, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1435, file: !491, discriminator: 2)
!1482 = distinct !{!1482, !1447}
!1483 = !DILocation(line: 187, column: 2, scope: !1435)
!1484 = !DILocation(line: 188, column: 1, scope: !1435)
!1485 = distinct !DISubprogram(name: "nicklist_getnicks", scope: !491, file: !491, line: 278, type: !1486, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!243, !58}
!1488 = !DILocalVariable(name: "channel", arg: 1, scope: !1485, file: !491, line: 278, type: !58)
!1489 = !DILocation(line: 278, column: 40, scope: !1485)
!1490 = !DILocalVariable(name: "list", scope: !1485, file: !491, line: 280, type: !243)
!1491 = !DILocation(line: 280, column: 10, scope: !1485)
!1492 = !DILocation(line: 282, column: 2, scope: !1485)
!1493 = distinct !{!1493, !1492}
!1494 = !DILocation(line: 282, column: 53, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !491, discriminator: 1)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !491, line: 282, column: 10)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !491, line: 282, column: 4)
!1498 = !DILocation(line: 282, column: 28, scope: !1495)
!1499 = !DILocation(line: 282, column: 12, scope: !1495)
!1500 = !DILocation(line: 282, column: 10, scope: !1495)
!1501 = !DILocation(line: 282, column: 11, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1496, file: !491, discriminator: 2)
!1503 = !DILocation(line: 282, column: 10, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1497, file: !491, discriminator: 3)
!1505 = !DILocation(line: 282, column: 54, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !491, discriminator: 4)
!1507 = distinct !DILexicalBlock(scope: !1496, file: !491, line: 282, column: 52)
!1508 = !DILocation(line: 282, column: 63, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1510, file: !491, discriminator: 5)
!1510 = distinct !DILexicalBlock(scope: !1496, file: !491, line: 282, column: 61)
!1511 = !DILocation(line: 282, column: 155, scope: !1509)
!1512 = !DILocation(line: 282, column: 7, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1497, file: !491, discriminator: 6)
!1514 = !DILocation(line: 284, column: 7, scope: !1485)
!1515 = !DILocation(line: 285, column: 23, scope: !1485)
!1516 = !DILocation(line: 285, column: 32, scope: !1485)
!1517 = !DILocation(line: 285, column: 64, scope: !1485)
!1518 = !DILocation(line: 285, column: 2, scope: !1485)
!1519 = !DILocation(line: 286, column: 9, scope: !1485)
!1520 = !DILocation(line: 286, column: 2, scope: !1485)
!1521 = !DILocation(line: 287, column: 1, scope: !1485)
!1522 = distinct !DISubprogram(name: "get_nicks_hash", scope: !491, file: !491, line: 269, type: !1523, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !182, !424, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!1526 = !DILocalVariable(name: "key", arg: 1, scope: !1522, file: !491, line: 269, type: !182)
!1527 = !DILocation(line: 269, column: 37, scope: !1522)
!1528 = !DILocalVariable(name: "rec", arg: 2, scope: !1522, file: !491, line: 269, type: !424)
!1529 = !DILocation(line: 269, column: 52, scope: !1522)
!1530 = !DILocalVariable(name: "list", arg: 3, scope: !1522, file: !491, line: 269, type: !1525)
!1531 = !DILocation(line: 269, column: 66, scope: !1522)
!1532 = !DILocation(line: 271, column: 2, scope: !1522)
!1533 = !DILocation(line: 271, column: 9, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1522, file: !491, discriminator: 1)
!1535 = !DILocation(line: 271, column: 13, scope: !1534)
!1536 = !DILocation(line: 271, column: 2, scope: !1534)
!1537 = !DILocation(line: 272, column: 28, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1522, file: !491, line: 271, column: 21)
!1539 = !DILocation(line: 272, column: 27, scope: !1538)
!1540 = !DILocation(line: 272, column: 34, scope: !1538)
!1541 = !DILocation(line: 272, column: 11, scope: !1538)
!1542 = !DILocation(line: 272, column: 4, scope: !1538)
!1543 = !DILocation(line: 272, column: 9, scope: !1538)
!1544 = !DILocation(line: 273, column: 9, scope: !1538)
!1545 = !DILocation(line: 273, column: 14, scope: !1538)
!1546 = !DILocation(line: 273, column: 7, scope: !1538)
!1547 = !DILocation(line: 271, column: 2, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1522, file: !491, discriminator: 2)
!1549 = distinct !{!1549, !1532}
!1550 = !DILocation(line: 275, column: 1, scope: !1522)
!1551 = distinct !DISubprogram(name: "get_nicks_same_hash_unique", scope: !491, file: !491, line: 317, type: !1552, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !182, !424, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64, align: 64)
!1555 = !DILocalVariable(name: "key", arg: 1, scope: !1551, file: !491, line: 317, type: !182)
!1556 = !DILocation(line: 317, column: 49, scope: !1551)
!1557 = !DILocalVariable(name: "nick", arg: 2, scope: !1551, file: !491, line: 317, type: !424)
!1558 = !DILocation(line: 317, column: 64, scope: !1551)
!1559 = !DILocalVariable(name: "rec", arg: 3, scope: !1551, file: !491, line: 318, type: !1554)
!1560 = !DILocation(line: 318, column: 42, scope: !1551)
!1561 = !DILocation(line: 320, column: 2, scope: !1551)
!1562 = !DILocation(line: 320, column: 9, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1551, file: !491, discriminator: 1)
!1564 = !DILocation(line: 320, column: 14, scope: !1563)
!1565 = !DILocation(line: 320, column: 2, scope: !1563)
!1566 = !DILocation(line: 321, column: 7, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !491, line: 321, column: 7)
!1568 = distinct !DILexicalBlock(scope: !1551, file: !491, line: 320, column: 22)
!1569 = !DILocation(line: 321, column: 13, scope: !1567)
!1570 = !DILocation(line: 321, column: 26, scope: !1567)
!1571 = !DILocation(line: 321, column: 31, scope: !1567)
!1572 = !DILocation(line: 321, column: 23, scope: !1567)
!1573 = !DILocation(line: 321, column: 7, scope: !1568)
!1574 = !DILocation(line: 322, column: 31, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !491, line: 321, column: 35)
!1576 = !DILocation(line: 322, column: 36, scope: !1575)
!1577 = !DILocation(line: 322, column: 42, scope: !1575)
!1578 = !DILocation(line: 322, column: 47, scope: !1575)
!1579 = !DILocation(line: 322, column: 16, scope: !1575)
!1580 = !DILocation(line: 322, column: 4, scope: !1575)
!1581 = !DILocation(line: 322, column: 9, scope: !1575)
!1582 = !DILocation(line: 322, column: 14, scope: !1575)
!1583 = !DILocation(line: 323, column: 31, scope: !1575)
!1584 = !DILocation(line: 323, column: 36, scope: !1575)
!1585 = !DILocation(line: 323, column: 42, scope: !1575)
!1586 = !DILocation(line: 323, column: 16, scope: !1575)
!1587 = !DILocation(line: 323, column: 4, scope: !1575)
!1588 = !DILocation(line: 323, column: 9, scope: !1575)
!1589 = !DILocation(line: 323, column: 14, scope: !1575)
!1590 = !DILocation(line: 324, column: 25, scope: !1575)
!1591 = !DILocation(line: 327, column: 24, scope: !1568)
!1592 = !DILocation(line: 327, column: 30, scope: !1568)
!1593 = !DILocation(line: 327, column: 22, scope: !1568)
!1594 = !DILocation(line: 320, column: 2, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1551, file: !491, discriminator: 2)
!1596 = distinct !{!1596, !1561}
!1597 = !DILocation(line: 329, column: 1, scope: !1551)
!1598 = distinct !DISubprogram(name: "nicklist_compare", scope: !491, file: !491, line: 351, type: !1599, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!66, !424, !424, !56}
!1601 = !DILocalVariable(name: "p1", arg: 1, scope: !1598, file: !491, line: 351, type: !424)
!1602 = !DILocation(line: 351, column: 32, scope: !1598)
!1603 = !DILocalVariable(name: "p2", arg: 2, scope: !1598, file: !491, line: 351, type: !424)
!1604 = !DILocation(line: 351, column: 46, scope: !1598)
!1605 = !DILocalVariable(name: "nick_prefix", arg: 3, scope: !1598, file: !491, line: 351, type: !56)
!1606 = !DILocation(line: 351, column: 62, scope: !1598)
!1607 = !DILocalVariable(name: "i", scope: !1598, file: !491, line: 353, type: !66)
!1608 = !DILocation(line: 353, column: 6, scope: !1598)
!1609 = !DILocation(line: 355, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 355, column: 6)
!1611 = !DILocation(line: 355, column: 9, scope: !1610)
!1612 = !DILocation(line: 355, column: 6, scope: !1598)
!1613 = !DILocation(line: 355, column: 17, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1610, file: !491, discriminator: 1)
!1615 = !DILocation(line: 356, column: 6, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 356, column: 6)
!1617 = !DILocation(line: 356, column: 9, scope: !1616)
!1618 = !DILocation(line: 356, column: 6, scope: !1598)
!1619 = !DILocation(line: 356, column: 17, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1616, file: !491, discriminator: 1)
!1621 = !DILocation(line: 358, column: 6, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 358, column: 6)
!1623 = !DILocation(line: 358, column: 10, scope: !1622)
!1624 = !DILocation(line: 358, column: 25, scope: !1622)
!1625 = !DILocation(line: 358, column: 29, scope: !1622)
!1626 = !DILocation(line: 358, column: 22, scope: !1622)
!1627 = !DILocation(line: 358, column: 6, scope: !1598)
!1628 = !DILocation(line: 359, column: 29, scope: !1622)
!1629 = !DILocation(line: 359, column: 33, scope: !1622)
!1630 = !DILocation(line: 359, column: 39, scope: !1622)
!1631 = !DILocation(line: 359, column: 43, scope: !1622)
!1632 = !DILocation(line: 359, column: 10, scope: !1622)
!1633 = !DILocation(line: 359, column: 3, scope: !1622)
!1634 = !DILocation(line: 361, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 361, column: 6)
!1636 = !DILocation(line: 361, column: 11, scope: !1635)
!1637 = !DILocation(line: 361, column: 6, scope: !1598)
!1638 = !DILocation(line: 362, column: 3, scope: !1635)
!1639 = !DILocation(line: 363, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 363, column: 6)
!1641 = !DILocation(line: 363, column: 11, scope: !1640)
!1642 = !DILocation(line: 363, column: 6, scope: !1598)
!1643 = !DILocation(line: 364, column: 3, scope: !1640)
!1644 = !DILocation(line: 370, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1598, file: !491, line: 370, column: 2)
!1646 = !DILocation(line: 370, column: 7, scope: !1645)
!1647 = !DILocation(line: 370, column: 26, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !491, discriminator: 1)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !491, line: 370, column: 2)
!1650 = !DILocation(line: 370, column: 14, scope: !1648)
!1651 = !DILocation(line: 370, column: 29, scope: !1648)
!1652 = !DILocation(line: 370, column: 2, scope: !1648)
!1653 = !DILocation(line: 371, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !491, line: 371, column: 7)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !491, line: 370, column: 43)
!1656 = !DILocation(line: 371, column: 11, scope: !1654)
!1657 = !DILocation(line: 371, column: 38, scope: !1654)
!1658 = !DILocation(line: 371, column: 26, scope: !1654)
!1659 = !DILocation(line: 371, column: 23, scope: !1654)
!1660 = !DILocation(line: 371, column: 7, scope: !1655)
!1661 = !DILocation(line: 372, column: 4, scope: !1654)
!1662 = !DILocation(line: 373, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !491, line: 373, column: 7)
!1664 = !DILocation(line: 373, column: 11, scope: !1663)
!1665 = !DILocation(line: 373, column: 38, scope: !1663)
!1666 = !DILocation(line: 373, column: 26, scope: !1663)
!1667 = !DILocation(line: 373, column: 23, scope: !1663)
!1668 = !DILocation(line: 373, column: 7, scope: !1655)
!1669 = !DILocation(line: 374, column: 4, scope: !1663)
!1670 = !DILocation(line: 375, column: 2, scope: !1655)
!1671 = !DILocation(line: 370, column: 39, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1649, file: !491, discriminator: 2)
!1673 = !DILocation(line: 370, column: 2, scope: !1672)
!1674 = distinct !{!1674, !1675}
!1675 = !DILocation(line: 370, column: 2, scope: !1598)
!1676 = !DILocation(line: 378, column: 28, scope: !1598)
!1677 = !DILocation(line: 378, column: 32, scope: !1598)
!1678 = !DILocation(line: 378, column: 38, scope: !1598)
!1679 = !DILocation(line: 378, column: 42, scope: !1598)
!1680 = !DILocation(line: 378, column: 9, scope: !1598)
!1681 = !DILocation(line: 378, column: 2, scope: !1598)
!1682 = !DILocation(line: 379, column: 1, scope: !1598)
!1683 = distinct !DISubprogram(name: "nicklist_update_flags", scope: !491, file: !491, line: 409, type: !1684, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !75, !56, !66, !66}
!1686 = !DILocalVariable(name: "server", arg: 1, scope: !1683, file: !491, line: 409, type: !75)
!1687 = !DILocation(line: 409, column: 40, scope: !1683)
!1688 = !DILocalVariable(name: "nick", arg: 2, scope: !1683, file: !491, line: 409, type: !56)
!1689 = !DILocation(line: 409, column: 60, scope: !1683)
!1690 = !DILocalVariable(name: "gone", arg: 3, scope: !1683, file: !491, line: 410, type: !66)
!1691 = !DILocation(line: 410, column: 11, scope: !1683)
!1692 = !DILocalVariable(name: "serverop", arg: 4, scope: !1683, file: !491, line: 410, type: !66)
!1693 = !DILocation(line: 410, column: 21, scope: !1683)
!1694 = !DILocation(line: 412, column: 29, scope: !1683)
!1695 = !DILocation(line: 412, column: 37, scope: !1683)
!1696 = !DILocation(line: 412, column: 43, scope: !1683)
!1697 = !DILocation(line: 413, column: 26, scope: !1683)
!1698 = !DILocation(line: 413, column: 34, scope: !1683)
!1699 = !DILocation(line: 413, column: 8, scope: !1683)
!1700 = !DILocation(line: 412, column: 2, scope: !1683)
!1701 = !DILocation(line: 414, column: 1, scope: !1683)
!1702 = distinct !DISubprogram(name: "nicklist_update_flags_list", scope: !491, file: !491, line: 381, type: !1703, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !75, !66, !66, !243}
!1705 = !DILocalVariable(name: "server", arg: 1, scope: !1702, file: !491, line: 381, type: !75)
!1706 = !DILocation(line: 381, column: 52, scope: !1702)
!1707 = !DILocalVariable(name: "gone", arg: 2, scope: !1702, file: !491, line: 381, type: !66)
!1708 = !DILocation(line: 381, column: 64, scope: !1702)
!1709 = !DILocalVariable(name: "serverop", arg: 3, scope: !1702, file: !491, line: 382, type: !66)
!1710 = !DILocation(line: 382, column: 16, scope: !1702)
!1711 = !DILocalVariable(name: "nicks", arg: 4, scope: !1702, file: !491, line: 382, type: !243)
!1712 = !DILocation(line: 382, column: 34, scope: !1702)
!1713 = !DILocalVariable(name: "tmp", scope: !1702, file: !491, line: 384, type: !243)
!1714 = !DILocation(line: 384, column: 10, scope: !1702)
!1715 = !DILocalVariable(name: "channel", scope: !1702, file: !491, line: 385, type: !58)
!1716 = !DILocation(line: 385, column: 15, scope: !1702)
!1717 = !DILocalVariable(name: "rec", scope: !1702, file: !491, line: 386, type: !424)
!1718 = !DILocation(line: 386, column: 12, scope: !1702)
!1719 = !DILocation(line: 388, column: 2, scope: !1702)
!1720 = distinct !{!1720, !1719}
!1721 = !DILocation(line: 388, column: 45, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !491, discriminator: 1)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !491, line: 388, column: 10)
!1724 = distinct !DILexicalBlock(scope: !1702, file: !491, line: 388, column: 4)
!1725 = !DILocation(line: 388, column: 27, scope: !1722)
!1726 = !DILocation(line: 388, column: 12, scope: !1722)
!1727 = !DILocation(line: 388, column: 10, scope: !1722)
!1728 = !DILocation(line: 388, column: 11, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1723, file: !491, discriminator: 2)
!1730 = !DILocation(line: 388, column: 10, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1724, file: !491, discriminator: 3)
!1732 = !DILocation(line: 388, column: 33, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1734, file: !491, discriminator: 4)
!1734 = distinct !DILexicalBlock(scope: !1723, file: !491, line: 388, column: 31)
!1735 = !DILocation(line: 388, column: 42, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !491, discriminator: 5)
!1737 = distinct !DILexicalBlock(scope: !1723, file: !491, line: 388, column: 40)
!1738 = !DILocation(line: 388, column: 132, scope: !1736)
!1739 = !DILocation(line: 388, column: 143, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1724, file: !491, discriminator: 6)
!1741 = !DILocation(line: 390, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1702, file: !491, line: 390, column: 2)
!1743 = !DILocation(line: 390, column: 11, scope: !1742)
!1744 = !DILocation(line: 390, column: 7, scope: !1742)
!1745 = !DILocation(line: 390, column: 20, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !491, discriminator: 1)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !491, line: 390, column: 2)
!1748 = !DILocation(line: 390, column: 24, scope: !1746)
!1749 = !DILocation(line: 390, column: 2, scope: !1746)
!1750 = !DILocation(line: 391, column: 13, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !491, line: 390, column: 55)
!1752 = !DILocation(line: 391, column: 18, scope: !1751)
!1753 = !DILocation(line: 391, column: 11, scope: !1751)
!1754 = !DILocation(line: 392, column: 9, scope: !1751)
!1755 = !DILocation(line: 392, column: 14, scope: !1751)
!1756 = !DILocation(line: 392, column: 20, scope: !1751)
!1757 = !DILocation(line: 392, column: 7, scope: !1751)
!1758 = !DILocation(line: 394, column: 21, scope: !1751)
!1759 = !DILocation(line: 394, column: 3, scope: !1751)
!1760 = !DILocation(line: 394, column: 8, scope: !1751)
!1761 = !DILocation(line: 394, column: 19, scope: !1751)
!1762 = !DILocation(line: 396, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1751, file: !491, line: 396, column: 7)
!1764 = !DILocation(line: 396, column: 12, scope: !1763)
!1765 = !DILocation(line: 396, column: 18, scope: !1763)
!1766 = !DILocation(line: 396, column: 26, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1763, file: !491, discriminator: 1)
!1768 = !DILocation(line: 396, column: 31, scope: !1767)
!1769 = !DILocation(line: 396, column: 39, scope: !1767)
!1770 = !DILocation(line: 396, column: 36, scope: !1767)
!1771 = !DILocation(line: 396, column: 7, scope: !1767)
!1772 = !DILocation(line: 397, column: 16, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !491, line: 396, column: 45)
!1774 = !DILocation(line: 397, column: 4, scope: !1773)
!1775 = !DILocation(line: 397, column: 9, scope: !1773)
!1776 = !DILocation(line: 397, column: 14, scope: !1773)
!1777 = !DILocation(line: 398, column: 44, scope: !1773)
!1778 = !DILocation(line: 398, column: 53, scope: !1773)
!1779 = !DILocation(line: 398, column: 4, scope: !1773)
!1780 = !DILocation(line: 399, column: 3, scope: !1773)
!1781 = !DILocation(line: 401, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1751, file: !491, line: 401, column: 7)
!1783 = !DILocation(line: 401, column: 16, scope: !1782)
!1784 = !DILocation(line: 401, column: 22, scope: !1782)
!1785 = !DILocation(line: 401, column: 30, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1782, file: !491, discriminator: 1)
!1787 = !DILocation(line: 401, column: 35, scope: !1786)
!1788 = !DILocation(line: 401, column: 47, scope: !1786)
!1789 = !DILocation(line: 401, column: 44, scope: !1786)
!1790 = !DILocation(line: 401, column: 7, scope: !1786)
!1791 = !DILocation(line: 402, column: 20, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !491, line: 401, column: 57)
!1793 = !DILocation(line: 402, column: 4, scope: !1792)
!1794 = !DILocation(line: 402, column: 9, scope: !1792)
!1795 = !DILocation(line: 402, column: 18, scope: !1792)
!1796 = !DILocation(line: 403, column: 48, scope: !1792)
!1797 = !DILocation(line: 403, column: 57, scope: !1792)
!1798 = !DILocation(line: 403, column: 4, scope: !1792)
!1799 = !DILocation(line: 404, column: 3, scope: !1792)
!1800 = !DILocation(line: 405, column: 2, scope: !1751)
!1801 = !DILocation(line: 390, column: 38, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1747, file: !491, discriminator: 2)
!1803 = !DILocation(line: 390, column: 43, scope: !1802)
!1804 = !DILocation(line: 390, column: 49, scope: !1802)
!1805 = !DILocation(line: 390, column: 36, scope: !1802)
!1806 = !DILocation(line: 390, column: 2, scope: !1802)
!1807 = distinct !{!1807, !1808}
!1808 = !DILocation(line: 390, column: 2, scope: !1702)
!1809 = !DILocation(line: 406, column: 15, scope: !1702)
!1810 = !DILocation(line: 406, column: 2, scope: !1702)
!1811 = !DILocation(line: 407, column: 1, scope: !1702)
!1812 = !DILocation(line: 407, column: 1, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1702, file: !491, discriminator: 1)
!1814 = distinct !DISubprogram(name: "nicklist_update_flags_unique", scope: !491, file: !491, line: 416, type: !1815, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !75, !51, !66, !66}
!1817 = !DILocalVariable(name: "server", arg: 1, scope: !1814, file: !491, line: 416, type: !75)
!1818 = !DILocation(line: 416, column: 47, scope: !1814)
!1819 = !DILocalVariable(name: "id", arg: 2, scope: !1814, file: !491, line: 416, type: !51)
!1820 = !DILocation(line: 416, column: 61, scope: !1814)
!1821 = !DILocalVariable(name: "gone", arg: 3, scope: !1814, file: !491, line: 417, type: !66)
!1822 = !DILocation(line: 417, column: 11, scope: !1814)
!1823 = !DILocalVariable(name: "serverop", arg: 4, scope: !1814, file: !491, line: 417, type: !66)
!1824 = !DILocation(line: 417, column: 21, scope: !1814)
!1825 = !DILocation(line: 419, column: 29, scope: !1814)
!1826 = !DILocation(line: 419, column: 37, scope: !1814)
!1827 = !DILocation(line: 419, column: 43, scope: !1814)
!1828 = !DILocation(line: 420, column: 33, scope: !1814)
!1829 = !DILocation(line: 420, column: 41, scope: !1814)
!1830 = !DILocation(line: 420, column: 8, scope: !1814)
!1831 = !DILocation(line: 419, column: 2, scope: !1814)
!1832 = !DILocation(line: 421, column: 1, scope: !1814)
!1833 = distinct !DISubprogram(name: "nicklist_set_own", scope: !491, file: !491, line: 424, type: !492, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1834 = !DILocalVariable(name: "channel", arg: 1, scope: !1833, file: !491, line: 424, type: !58)
!1835 = !DILocation(line: 424, column: 36, scope: !1833)
!1836 = !DILocalVariable(name: "nick", arg: 2, scope: !1833, file: !491, line: 424, type: !424)
!1837 = !DILocation(line: 424, column: 55, scope: !1833)
!1838 = !DILocalVariable(name: "first", scope: !1833, file: !491, line: 426, type: !424)
!1839 = !DILocation(line: 426, column: 12, scope: !1833)
!1840 = !DILocalVariable(name: "next", scope: !1833, file: !491, line: 426, type: !424)
!1841 = !DILocation(line: 426, column: 20, scope: !1833)
!1842 = !DILocation(line: 428, column: 28, scope: !1833)
!1843 = !DILocation(line: 428, column: 9, scope: !1833)
!1844 = !DILocation(line: 428, column: 18, scope: !1833)
!1845 = !DILocation(line: 428, column: 26, scope: !1833)
!1846 = !DILocation(line: 432, column: 30, scope: !1833)
!1847 = !DILocation(line: 432, column: 39, scope: !1833)
!1848 = !DILocation(line: 432, column: 46, scope: !1833)
!1849 = !DILocation(line: 432, column: 52, scope: !1833)
!1850 = !DILocation(line: 432, column: 10, scope: !1833)
!1851 = !DILocation(line: 432, column: 8, scope: !1833)
!1852 = !DILocation(line: 433, column: 6, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 433, column: 6)
!1854 = !DILocation(line: 433, column: 13, scope: !1853)
!1855 = !DILocation(line: 433, column: 18, scope: !1853)
!1856 = !DILocation(line: 433, column: 6, scope: !1833)
!1857 = !DILocation(line: 434, column: 3, scope: !1853)
!1858 = !DILocation(line: 436, column: 9, scope: !1833)
!1859 = !DILocation(line: 436, column: 15, scope: !1833)
!1860 = !DILocation(line: 436, column: 7, scope: !1833)
!1861 = !DILocation(line: 437, column: 15, scope: !1833)
!1862 = !DILocation(line: 437, column: 2, scope: !1833)
!1863 = !DILocation(line: 437, column: 8, scope: !1833)
!1864 = !DILocation(line: 437, column: 13, scope: !1833)
!1865 = !DILocation(line: 439, column: 2, scope: !1833)
!1866 = !DILocation(line: 439, column: 9, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1833, file: !491, discriminator: 1)
!1868 = !DILocation(line: 439, column: 16, scope: !1867)
!1869 = !DILocation(line: 439, column: 24, scope: !1867)
!1870 = !DILocation(line: 439, column: 21, scope: !1867)
!1871 = !DILocation(line: 439, column: 2, scope: !1867)
!1872 = !DILocation(line: 440, column: 25, scope: !1833)
!1873 = !DILocation(line: 440, column: 32, scope: !1833)
!1874 = !DILocation(line: 440, column: 23, scope: !1833)
!1875 = !DILocation(line: 439, column: 2, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1833, file: !491, discriminator: 2)
!1877 = distinct !{!1877, !1865}
!1878 = !DILocation(line: 441, column: 16, scope: !1833)
!1879 = !DILocation(line: 441, column: 2, scope: !1833)
!1880 = !DILocation(line: 441, column: 9, scope: !1833)
!1881 = !DILocation(line: 441, column: 14, scope: !1833)
!1882 = !DILocation(line: 443, column: 29, scope: !1833)
!1883 = !DILocation(line: 443, column: 38, scope: !1833)
!1884 = !DILocation(line: 443, column: 45, scope: !1833)
!1885 = !DILocation(line: 443, column: 51, scope: !1833)
!1886 = !DILocation(line: 443, column: 57, scope: !1833)
!1887 = !DILocation(line: 443, column: 9, scope: !1833)
!1888 = !DILocation(line: 444, column: 1, scope: !1833)
!1889 = !DILocation(line: 444, column: 1, scope: !1867)
!1890 = distinct !DISubprogram(name: "nick_match_msg", scope: !491, file: !491, line: 497, type: !1891, isLocal: false, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!66, !58, !56, !56}
!1893 = !DILocalVariable(name: "channel", arg: 1, scope: !1890, file: !491, line: 497, type: !58)
!1894 = !DILocation(line: 497, column: 33, scope: !1890)
!1895 = !DILocalVariable(name: "msg", arg: 2, scope: !1890, file: !491, line: 497, type: !56)
!1896 = !DILocation(line: 497, column: 54, scope: !1890)
!1897 = !DILocalVariable(name: "nick", arg: 3, scope: !1890, file: !491, line: 497, type: !56)
!1898 = !DILocation(line: 497, column: 71, scope: !1890)
!1899 = !DILocalVariable(name: "msgstart", scope: !1890, file: !491, line: 499, type: !56)
!1900 = !DILocation(line: 499, column: 14, scope: !1890)
!1901 = !DILocalVariable(name: "orignick", scope: !1890, file: !491, line: 499, type: !56)
!1902 = !DILocation(line: 499, column: 25, scope: !1890)
!1903 = !DILocalVariable(name: "len", scope: !1890, file: !491, line: 500, type: !66)
!1904 = !DILocation(line: 500, column: 6, scope: !1890)
!1905 = !DILocalVariable(name: "fullmatch", scope: !1890, file: !491, line: 500, type: !66)
!1906 = !DILocation(line: 500, column: 11, scope: !1890)
!1907 = !DILocation(line: 502, column: 2, scope: !1890)
!1908 = distinct !{!1908, !1907}
!1909 = !DILocation(line: 502, column: 10, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1911, file: !491, discriminator: 1)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !491, line: 502, column: 10)
!1912 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 502, column: 4)
!1913 = !DILocation(line: 502, column: 15, scope: !1910)
!1914 = !DILocation(line: 502, column: 5, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !491, discriminator: 2)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !491, line: 502, column: 3)
!1917 = !DILocation(line: 502, column: 14, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1919, file: !491, discriminator: 3)
!1919 = distinct !DILexicalBlock(scope: !1911, file: !491, line: 502, column: 12)
!1920 = !DILocation(line: 502, column: 99, scope: !1918)
!1921 = !DILocation(line: 502, column: 116, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1912, file: !491, discriminator: 4)
!1923 = !DILocation(line: 503, column: 2, scope: !1890)
!1924 = distinct !{!1924, !1923}
!1925 = !DILocation(line: 503, column: 10, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !491, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !491, line: 503, column: 10)
!1928 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 503, column: 4)
!1929 = !DILocation(line: 503, column: 14, scope: !1926)
!1930 = !DILocation(line: 503, column: 5, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1932, file: !491, discriminator: 2)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !491, line: 503, column: 3)
!1933 = !DILocation(line: 503, column: 14, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !491, discriminator: 3)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !491, line: 503, column: 12)
!1936 = !DILocation(line: 503, column: 98, scope: !1934)
!1937 = !DILocation(line: 503, column: 115, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1928, file: !491, discriminator: 4)
!1939 = !DILocation(line: 505, column: 6, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 505, column: 6)
!1941 = !DILocation(line: 505, column: 14, scope: !1940)
!1942 = !DILocation(line: 505, column: 21, scope: !1940)
!1943 = !DILocation(line: 505, column: 24, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1940, file: !491, discriminator: 1)
!1945 = !DILocation(line: 505, column: 33, scope: !1944)
!1946 = !DILocation(line: 505, column: 41, scope: !1944)
!1947 = !DILocation(line: 505, column: 56, scope: !1944)
!1948 = !DILocation(line: 505, column: 6, scope: !1944)
!1949 = !DILocation(line: 506, column: 10, scope: !1940)
!1950 = !DILocation(line: 506, column: 19, scope: !1940)
!1951 = !DILocation(line: 506, column: 27, scope: !1940)
!1952 = !DILocation(line: 506, column: 42, scope: !1940)
!1953 = !DILocation(line: 506, column: 47, scope: !1940)
!1954 = !DILocation(line: 506, column: 3, scope: !1940)
!1955 = !DILocation(line: 509, column: 15, scope: !1890)
!1956 = !DILocation(line: 509, column: 8, scope: !1890)
!1957 = !DILocation(line: 509, column: 6, scope: !1890)
!1958 = !DILocation(line: 510, column: 26, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 510, column: 6)
!1960 = !DILocation(line: 510, column: 31, scope: !1959)
!1961 = !DILocation(line: 510, column: 37, scope: !1959)
!1962 = !DILocation(line: 510, column: 6, scope: !1959)
!1963 = !DILocation(line: 510, column: 42, scope: !1959)
!1964 = !DILocation(line: 510, column: 47, scope: !1959)
!1965 = !DILocation(line: 511, column: 39, scope: !1959)
!1966 = !DILocation(line: 511, column: 35, scope: !1959)
!1967 = !DILocation(line: 511, column: 29, scope: !1959)
!1968 = !DILocation(line: 511, column: 12, scope: !1959)
!1969 = !DILocation(line: 511, column: 6, scope: !1959)
!1970 = !DILocation(line: 511, column: 7, scope: !1959)
!1971 = !DILocation(line: 511, column: 9, scope: !1959)
!1972 = !DILocation(line: 511, column: 8, scope: !1959)
!1973 = !DILocation(line: 511, column: 10, scope: !1959)
!1974 = !DILocation(line: 511, column: 36, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1959, file: !491, discriminator: 1)
!1976 = !DILocation(line: 511, column: 32, scope: !1975)
!1977 = !DILocation(line: 511, column: 26, scope: !1975)
!1978 = !DILocation(line: 511, column: 9, scope: !1975)
!1979 = !DILocation(line: 511, column: 42, scope: !1975)
!1980 = !DILocation(line: 510, column: 6, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1890, file: !491, discriminator: 1)
!1982 = !DILocation(line: 512, column: 3, scope: !1959)
!1983 = !DILocation(line: 514, column: 13, scope: !1890)
!1984 = !DILocation(line: 514, column: 11, scope: !1890)
!1985 = !DILocation(line: 515, column: 2, scope: !1890)
!1986 = !DILocation(line: 516, column: 10, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !491, line: 515, column: 11)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !491, line: 515, column: 2)
!1989 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 515, column: 2)
!1990 = !DILocation(line: 516, column: 8, scope: !1987)
!1991 = !DILocation(line: 517, column: 14, scope: !1987)
!1992 = !DILocation(line: 517, column: 12, scope: !1987)
!1993 = !DILocation(line: 518, column: 27, scope: !1987)
!1994 = !DILocation(line: 521, column: 3, scope: !1987)
!1995 = !DILocation(line: 521, column: 11, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1987, file: !491, discriminator: 1)
!1997 = !DILocation(line: 521, column: 10, scope: !1996)
!1998 = !DILocation(line: 521, column: 16, scope: !1996)
!1999 = !DILocation(line: 521, column: 24, scope: !1996)
!2000 = !DILocation(line: 521, column: 28, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1987, file: !491, discriminator: 2)
!2002 = !DILocation(line: 521, column: 27, scope: !2001)
!2003 = !DILocation(line: 521, column: 32, scope: !2001)
!2004 = !DILocation(line: 521, column: 3, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1987, file: !491, discriminator: 3)
!2006 = !DILocation(line: 522, column: 40, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !491, line: 522, column: 8)
!2008 = distinct !DILexicalBlock(scope: !1987, file: !491, line: 521, column: 41)
!2009 = !DILocation(line: 522, column: 39, scope: !2007)
!2010 = !DILocation(line: 522, column: 16, scope: !2007)
!2011 = !DILocation(line: 522, column: 8, scope: !2007)
!2012 = !DILocation(line: 522, column: 82, scope: !2007)
!2013 = !DILocation(line: 522, column: 81, scope: !2007)
!2014 = !DILocation(line: 522, column: 58, scope: !2007)
!2015 = !DILocation(line: 522, column: 50, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2007, file: !491, discriminator: 1)
!2017 = !DILocation(line: 522, column: 47, scope: !2007)
!2018 = !DILocation(line: 522, column: 8, scope: !2008)
!2019 = !DILocation(line: 524, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2007, file: !491, line: 522, column: 89)
!2021 = !DILocation(line: 525, column: 4, scope: !2020)
!2022 = !DILocation(line: 525, column: 38, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !491, discriminator: 1)
!2024 = distinct !DILexicalBlock(scope: !2007, file: !491, line: 525, column: 14)
!2025 = !DILocation(line: 525, column: 37, scope: !2023)
!2026 = !DILocation(line: 525, column: 14, scope: !2023)
!2027 = !DILocation(line: 525, column: 15, scope: !2023)
!2028 = !DILocation(line: 525, column: 17, scope: !2023)
!2029 = !DILocation(line: 525, column: 16, scope: !2023)
!2030 = !DILocation(line: 525, column: 18, scope: !2023)
!2031 = !DILocation(line: 525, column: 30, scope: !2023)
!2032 = !DILocation(line: 525, column: 58, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2024, file: !491, discriminator: 2)
!2034 = !DILocation(line: 525, column: 57, scope: !2033)
!2035 = !DILocation(line: 525, column: 34, scope: !2033)
!2036 = !DILocation(line: 525, column: 35, scope: !2033)
!2037 = !DILocation(line: 525, column: 37, scope: !2033)
!2038 = !DILocation(line: 525, column: 36, scope: !2033)
!2039 = !DILocation(line: 525, column: 38, scope: !2033)
!2040 = !DILocation(line: 525, column: 14, scope: !2033)
!2041 = !DILocation(line: 527, column: 43, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2024, file: !491, line: 525, column: 52)
!2043 = !DILocation(line: 528, column: 4, scope: !2042)
!2044 = !DILocation(line: 529, column: 5, scope: !2024)
!2045 = !DILocation(line: 531, column: 8, scope: !2008)
!2046 = !DILocation(line: 521, column: 3, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1987, file: !491, discriminator: 4)
!2048 = distinct !{!2048, !1994}
!2049 = !DILocation(line: 534, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1987, file: !491, line: 534, column: 7)
!2051 = !DILocation(line: 534, column: 14, scope: !2050)
!2052 = !DILocation(line: 534, column: 11, scope: !2050)
!2053 = !DILocation(line: 534, column: 23, scope: !2050)
!2054 = !DILocation(line: 534, column: 50, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2050, file: !491, discriminator: 1)
!2056 = !DILocation(line: 534, column: 49, scope: !2055)
!2057 = !DILocation(line: 534, column: 26, scope: !2055)
!2058 = !DILocation(line: 534, column: 27, scope: !2055)
!2059 = !DILocation(line: 534, column: 29, scope: !2055)
!2060 = !DILocation(line: 534, column: 28, scope: !2055)
!2061 = !DILocation(line: 534, column: 30, scope: !2055)
!2062 = !DILocation(line: 534, column: 47, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2050, file: !491, discriminator: 2)
!2064 = !DILocation(line: 534, column: 46, scope: !2063)
!2065 = !DILocation(line: 534, column: 29, scope: !2063)
!2066 = !DILocation(line: 534, column: 52, scope: !2063)
!2067 = !DILocation(line: 534, column: 7, scope: !2063)
!2068 = !DILocation(line: 538, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !491, line: 538, column: 8)
!2070 = distinct !DILexicalBlock(scope: !2050, file: !491, line: 534, column: 61)
!2071 = !DILocation(line: 538, column: 8, scope: !2069)
!2072 = !DILocation(line: 538, column: 14, scope: !2069)
!2073 = !DILocation(line: 538, column: 8, scope: !2070)
!2074 = !DILocation(line: 541, column: 43, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2069, file: !491, line: 538, column: 23)
!2076 = !DILocation(line: 542, column: 5, scope: !2075)
!2077 = !DILocation(line: 542, column: 13, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2075, file: !491, discriminator: 1)
!2079 = !DILocation(line: 542, column: 12, scope: !2078)
!2080 = !DILocation(line: 542, column: 18, scope: !2078)
!2081 = !DILocation(line: 542, column: 26, scope: !2078)
!2082 = !DILocation(line: 542, column: 53, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2075, file: !491, discriminator: 2)
!2084 = !DILocation(line: 542, column: 52, scope: !2083)
!2085 = !DILocation(line: 542, column: 29, scope: !2083)
!2086 = !DILocation(line: 542, column: 30, scope: !2083)
!2087 = !DILocation(line: 542, column: 32, scope: !2083)
!2088 = !DILocation(line: 542, column: 31, scope: !2083)
!2089 = !DILocation(line: 542, column: 33, scope: !2083)
!2090 = !DILocation(line: 542, column: 5, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2075, file: !491, discriminator: 3)
!2092 = !DILocation(line: 543, column: 10, scope: !2075)
!2093 = !DILocation(line: 542, column: 5, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2075, file: !491, discriminator: 4)
!2095 = distinct !{!2095, !2076}
!2096 = !DILocation(line: 544, column: 4, scope: !2075)
!2097 = !DILocation(line: 546, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2070, file: !491, line: 546, column: 8)
!2099 = !DILocation(line: 546, column: 8, scope: !2098)
!2100 = !DILocation(line: 546, column: 14, scope: !2098)
!2101 = !DILocation(line: 546, column: 8, scope: !2070)
!2102 = !DILocation(line: 548, column: 33, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !491, line: 546, column: 23)
!2104 = !DILocation(line: 550, column: 3, scope: !2070)
!2105 = !DILocation(line: 554, column: 3, scope: !1987)
!2106 = !DILocation(line: 554, column: 11, scope: !1996)
!2107 = !DILocation(line: 554, column: 10, scope: !1996)
!2108 = !DILocation(line: 554, column: 15, scope: !1996)
!2109 = !DILocation(line: 554, column: 23, scope: !1996)
!2110 = !DILocation(line: 554, column: 27, scope: !2001)
!2111 = !DILocation(line: 554, column: 26, scope: !2001)
!2112 = !DILocation(line: 554, column: 31, scope: !2001)
!2113 = !DILocation(line: 554, column: 38, scope: !2001)
!2114 = !DILocation(line: 554, column: 42, scope: !2005)
!2115 = !DILocation(line: 554, column: 41, scope: !2005)
!2116 = !DILocation(line: 554, column: 46, scope: !2005)
!2117 = !DILocation(line: 554, column: 3, scope: !2047)
!2118 = !DILocation(line: 554, column: 57, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !1987, file: !491, discriminator: 5)
!2120 = !DILocation(line: 554, column: 3, scope: !2119)
!2121 = distinct !{!2121, !2105}
!2122 = !DILocation(line: 556, column: 8, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1987, file: !491, line: 556, column: 7)
!2124 = !DILocation(line: 556, column: 7, scope: !2123)
!2125 = !DILocation(line: 556, column: 12, scope: !2123)
!2126 = !DILocation(line: 556, column: 7, scope: !1987)
!2127 = !DILocation(line: 557, column: 32, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !491, line: 556, column: 20)
!2129 = !DILocation(line: 557, column: 30, scope: !2128)
!2130 = !DILocation(line: 558, column: 4, scope: !2128)
!2131 = !DILocation(line: 561, column: 20, scope: !1987)
!2132 = !DILocation(line: 515, column: 2, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !1988, file: !491, discriminator: 1)
!2134 = distinct !{!2134, !1985}
!2135 = !DILocation(line: 564, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 564, column: 6)
!2137 = !DILocation(line: 564, column: 6, scope: !2136)
!2138 = !DILocation(line: 564, column: 12, scope: !2136)
!2139 = !DILocation(line: 564, column: 6, scope: !1890)
!2140 = !DILocation(line: 565, column: 3, scope: !2136)
!2141 = !DILocation(line: 567, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 567, column: 6)
!2143 = !DILocation(line: 567, column: 6, scope: !1890)
!2144 = !DILocation(line: 568, column: 3, scope: !2142)
!2145 = !DILocation(line: 570, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 570, column: 6)
!2147 = !DILocation(line: 570, column: 14, scope: !2146)
!2148 = !DILocation(line: 570, column: 6, scope: !1890)
!2149 = !DILocation(line: 573, column: 21, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !491, line: 570, column: 22)
!2151 = !DILocation(line: 573, column: 30, scope: !2150)
!2152 = !DILocation(line: 573, column: 47, scope: !2150)
!2153 = !DILocation(line: 573, column: 51, scope: !2150)
!2154 = !DILocation(line: 573, column: 50, scope: !2150)
!2155 = !DILocation(line: 573, column: 40, scope: !2150)
!2156 = !DILocation(line: 573, column: 10, scope: !2150)
!2157 = !DILocation(line: 573, column: 62, scope: !2150)
!2158 = !DILocation(line: 573, column: 3, scope: !2150)
!2159 = !DILocation(line: 575, column: 3, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2146, file: !491, line: 574, column: 9)
!2161 = !DILocation(line: 577, column: 1, scope: !1890)
!2162 = distinct !DISubprogram(name: "nick_nfind", scope: !491, file: !491, line: 475, type: !2163, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!424, !58, !56, !66}
!2165 = !DILocalVariable(name: "channel", arg: 1, scope: !2162, file: !491, line: 475, type: !58)
!2166 = !DILocation(line: 475, column: 42, scope: !2162)
!2167 = !DILocalVariable(name: "nick", arg: 2, scope: !2162, file: !491, line: 475, type: !56)
!2168 = !DILocation(line: 475, column: 63, scope: !2162)
!2169 = !DILocalVariable(name: "len", arg: 3, scope: !2162, file: !491, line: 475, type: !66)
!2170 = !DILocation(line: 475, column: 73, scope: !2162)
!2171 = !DILocalVariable(name: "rec", scope: !2162, file: !491, line: 477, type: !424)
!2172 = !DILocation(line: 477, column: 19, scope: !2162)
!2173 = !DILocalVariable(name: "tmpnick", scope: !2162, file: !491, line: 478, type: !94)
!2174 = !DILocation(line: 478, column: 8, scope: !2162)
!2175 = !DILocation(line: 480, column: 22, scope: !2162)
!2176 = !DILocation(line: 480, column: 28, scope: !2162)
!2177 = !DILocation(line: 480, column: 12, scope: !2162)
!2178 = !DILocation(line: 480, column: 10, scope: !2162)
!2179 = !DILocation(line: 481, column: 28, scope: !2162)
!2180 = !DILocation(line: 481, column: 37, scope: !2162)
!2181 = !DILocation(line: 481, column: 44, scope: !2162)
!2182 = !DILocation(line: 481, column: 8, scope: !2162)
!2183 = !DILocation(line: 481, column: 6, scope: !2162)
!2184 = !DILocation(line: 483, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2162, file: !491, line: 483, column: 6)
!2186 = !DILocation(line: 483, column: 10, scope: !2185)
!2187 = !DILocation(line: 483, column: 6, scope: !2162)
!2188 = !DILocation(line: 485, column: 3, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !491, line: 483, column: 18)
!2190 = !DILocation(line: 485, column: 10, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2189, file: !491, discriminator: 1)
!2192 = !DILocation(line: 485, column: 15, scope: !2191)
!2193 = !DILocation(line: 485, column: 20, scope: !2191)
!2194 = !DILocation(line: 485, column: 3, scope: !2191)
!2195 = !DILocation(line: 486, column: 18, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !491, line: 486, column: 8)
!2197 = distinct !DILexicalBlock(scope: !2189, file: !491, line: 485, column: 28)
!2198 = !DILocation(line: 486, column: 23, scope: !2196)
!2199 = !DILocation(line: 486, column: 29, scope: !2196)
!2200 = !DILocation(line: 486, column: 8, scope: !2196)
!2201 = !DILocation(line: 486, column: 38, scope: !2196)
!2202 = !DILocation(line: 486, column: 8, scope: !2197)
!2203 = !DILocation(line: 487, column: 5, scope: !2196)
!2204 = !DILocation(line: 488, column: 31, scope: !2197)
!2205 = !DILocation(line: 488, column: 36, scope: !2197)
!2206 = !DILocation(line: 488, column: 29, scope: !2197)
!2207 = !DILocation(line: 485, column: 3, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2189, file: !491, discriminator: 2)
!2209 = distinct !{!2209, !2188}
!2210 = !DILocation(line: 490, column: 2, scope: !2189)
!2211 = !DILocation(line: 492, column: 16, scope: !2162)
!2212 = !DILocation(line: 492, column: 9, scope: !2162)
!2213 = !DILocation(line: 493, column: 9, scope: !2162)
!2214 = !DILocation(line: 493, column: 2, scope: !2162)
!2215 = distinct !DISubprogram(name: "nick_match_msg_everywhere", scope: !491, file: !491, line: 579, type: !1891, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2216 = !DILocalVariable(name: "channel", arg: 1, scope: !2215, file: !491, line: 579, type: !58)
!2217 = !DILocation(line: 579, column: 44, scope: !2215)
!2218 = !DILocalVariable(name: "msg", arg: 2, scope: !2215, file: !491, line: 579, type: !56)
!2219 = !DILocation(line: 579, column: 65, scope: !2215)
!2220 = !DILocalVariable(name: "nick", arg: 3, scope: !2215, file: !491, line: 579, type: !56)
!2221 = !DILocation(line: 579, column: 82, scope: !2215)
!2222 = !DILocation(line: 581, column: 2, scope: !2215)
!2223 = distinct !{!2223, !2222}
!2224 = !DILocation(line: 581, column: 10, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2226, file: !491, discriminator: 1)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !491, line: 581, column: 10)
!2227 = distinct !DILexicalBlock(scope: !2215, file: !491, line: 581, column: 4)
!2228 = !DILocation(line: 581, column: 15, scope: !2225)
!2229 = !DILocation(line: 581, column: 5, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !491, discriminator: 2)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !491, line: 581, column: 3)
!2232 = !DILocation(line: 581, column: 14, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2234, file: !491, discriminator: 3)
!2234 = distinct !DILexicalBlock(scope: !2226, file: !491, line: 581, column: 12)
!2235 = !DILocation(line: 581, column: 99, scope: !2233)
!2236 = !DILocation(line: 581, column: 116, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2227, file: !491, discriminator: 4)
!2238 = !DILocation(line: 582, column: 2, scope: !2215)
!2239 = distinct !{!2239, !2238}
!2240 = !DILocation(line: 582, column: 10, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2242, file: !491, discriminator: 1)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !491, line: 582, column: 10)
!2243 = distinct !DILexicalBlock(scope: !2215, file: !491, line: 582, column: 4)
!2244 = !DILocation(line: 582, column: 14, scope: !2241)
!2245 = !DILocation(line: 582, column: 5, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !491, discriminator: 2)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !491, line: 582, column: 3)
!2248 = !DILocation(line: 582, column: 14, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !491, discriminator: 3)
!2250 = distinct !DILexicalBlock(scope: !2242, file: !491, line: 582, column: 12)
!2251 = !DILocation(line: 582, column: 98, scope: !2249)
!2252 = !DILocation(line: 582, column: 115, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2243, file: !491, discriminator: 4)
!2254 = !DILocation(line: 584, column: 22, scope: !2215)
!2255 = !DILocation(line: 584, column: 27, scope: !2215)
!2256 = !DILocation(line: 584, column: 9, scope: !2215)
!2257 = !DILocation(line: 584, column: 33, scope: !2215)
!2258 = !DILocation(line: 584, column: 2, scope: !2215)
!2259 = !DILocation(line: 585, column: 1, scope: !2215)
!2260 = distinct !DISubprogram(name: "nicklist_init", scope: !491, file: !491, line: 587, type: !231, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2261 = !DILocation(line: 589, column: 2, scope: !2260)
!2262 = !DILocation(line: 590, column: 2, scope: !2260)
!2263 = !DILocation(line: 591, column: 1, scope: !2260)
!2264 = distinct !DISubprogram(name: "sig_channel_created", scope: !491, file: !491, line: 446, type: !2265, isLocal: true, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !58}
!2267 = !DILocalVariable(name: "channel", arg: 1, scope: !2264, file: !491, line: 446, type: !58)
!2268 = !DILocation(line: 446, column: 46, scope: !2264)
!2269 = !DILocation(line: 448, column: 2, scope: !2264)
!2270 = distinct !{!2270, !2269}
!2271 = !DILocation(line: 448, column: 53, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !491, discriminator: 1)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !491, line: 448, column: 10)
!2274 = distinct !DILexicalBlock(scope: !2264, file: !491, line: 448, column: 4)
!2275 = !DILocation(line: 448, column: 28, scope: !2272)
!2276 = !DILocation(line: 448, column: 12, scope: !2272)
!2277 = !DILocation(line: 448, column: 10, scope: !2272)
!2278 = !DILocation(line: 448, column: 11, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2273, file: !491, discriminator: 2)
!2280 = !DILocation(line: 448, column: 10, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2274, file: !491, discriminator: 3)
!2282 = !DILocation(line: 448, column: 54, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2284, file: !491, discriminator: 4)
!2284 = distinct !DILexicalBlock(scope: !2273, file: !491, line: 448, column: 52)
!2285 = !DILocation(line: 448, column: 63, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !491, discriminator: 5)
!2287 = distinct !DILexicalBlock(scope: !2273, file: !491, line: 448, column: 61)
!2288 = !DILocation(line: 448, column: 155, scope: !2286)
!2289 = !DILocation(line: 448, column: 166, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2274, file: !491, discriminator: 6)
!2291 = !DILocation(line: 450, column: 19, scope: !2264)
!2292 = !DILocation(line: 450, column: 2, scope: !2264)
!2293 = !DILocation(line: 450, column: 11, scope: !2264)
!2294 = !DILocation(line: 450, column: 17, scope: !2264)
!2295 = !DILocation(line: 452, column: 1, scope: !2264)
!2296 = !DILocation(line: 452, column: 1, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2264, file: !491, discriminator: 1)
!2298 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !491, file: !491, line: 466, type: !2265, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2299 = !DILocalVariable(name: "channel", arg: 1, scope: !2298, file: !491, line: 466, type: !58)
!2300 = !DILocation(line: 466, column: 48, scope: !2298)
!2301 = !DILocation(line: 468, column: 2, scope: !2298)
!2302 = distinct !{!2302, !2301}
!2303 = !DILocation(line: 468, column: 53, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !491, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !491, line: 468, column: 10)
!2306 = distinct !DILexicalBlock(scope: !2298, file: !491, line: 468, column: 4)
!2307 = !DILocation(line: 468, column: 28, scope: !2304)
!2308 = !DILocation(line: 468, column: 12, scope: !2304)
!2309 = !DILocation(line: 468, column: 10, scope: !2304)
!2310 = !DILocation(line: 468, column: 11, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2305, file: !491, discriminator: 2)
!2312 = !DILocation(line: 468, column: 10, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2306, file: !491, discriminator: 3)
!2314 = !DILocation(line: 468, column: 54, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2316, file: !491, discriminator: 4)
!2316 = distinct !DILexicalBlock(scope: !2305, file: !491, line: 468, column: 52)
!2317 = !DILocation(line: 468, column: 63, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2319, file: !491, discriminator: 5)
!2319 = distinct !DILexicalBlock(scope: !2305, file: !491, line: 468, column: 61)
!2320 = !DILocation(line: 468, column: 155, scope: !2318)
!2321 = !DILocation(line: 468, column: 166, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2306, file: !491, discriminator: 6)
!2323 = !DILocation(line: 470, column: 23, scope: !2298)
!2324 = !DILocation(line: 470, column: 32, scope: !2298)
!2325 = !DILocation(line: 471, column: 40, scope: !2298)
!2326 = !DILocation(line: 470, column: 2, scope: !2298)
!2327 = !DILocation(line: 472, column: 23, scope: !2298)
!2328 = !DILocation(line: 472, column: 32, scope: !2298)
!2329 = !DILocation(line: 472, column: 2, scope: !2298)
!2330 = !DILocation(line: 473, column: 1, scope: !2298)
!2331 = !DILocation(line: 473, column: 1, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2298, file: !491, discriminator: 1)
!2333 = distinct !DISubprogram(name: "nicklist_deinit", scope: !491, file: !491, line: 593, type: !231, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2334 = !DILocation(line: 595, column: 2, scope: !2333)
!2335 = !DILocation(line: 596, column: 2, scope: !2333)
!2336 = !DILocation(line: 598, column: 2, scope: !2333)
!2337 = !DILocation(line: 599, column: 1, scope: !2333)
!2338 = distinct !DISubprogram(name: "nicklist_remove_hash", scope: !491, file: !491, line: 454, type: !2339, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !494)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !182, !424, !58}
!2341 = !DILocalVariable(name: "key", arg: 1, scope: !2338, file: !491, line: 454, type: !182)
!2342 = !DILocation(line: 454, column: 43, scope: !2338)
!2343 = !DILocalVariable(name: "nick", arg: 2, scope: !2338, file: !491, line: 454, type: !424)
!2344 = !DILocation(line: 454, column: 58, scope: !2338)
!2345 = !DILocalVariable(name: "channel", arg: 3, scope: !2338, file: !491, line: 455, type: !58)
!2346 = !DILocation(line: 455, column: 19, scope: !2338)
!2347 = !DILocalVariable(name: "next", scope: !2338, file: !491, line: 457, type: !424)
!2348 = !DILocation(line: 457, column: 12, scope: !2338)
!2349 = !DILocation(line: 459, column: 2, scope: !2338)
!2350 = !DILocation(line: 459, column: 9, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2338, file: !491, discriminator: 1)
!2352 = !DILocation(line: 459, column: 14, scope: !2351)
!2353 = !DILocation(line: 459, column: 2, scope: !2351)
!2354 = !DILocation(line: 460, column: 24, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2338, file: !491, line: 459, column: 22)
!2356 = !DILocation(line: 460, column: 30, scope: !2355)
!2357 = !DILocation(line: 460, column: 22, scope: !2355)
!2358 = !DILocation(line: 461, column: 20, scope: !2355)
!2359 = !DILocation(line: 461, column: 29, scope: !2355)
!2360 = !DILocation(line: 461, column: 3, scope: !2355)
!2361 = !DILocation(line: 462, column: 24, scope: !2355)
!2362 = !DILocation(line: 462, column: 22, scope: !2355)
!2363 = !DILocation(line: 459, column: 2, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2338, file: !491, discriminator: 2)
!2365 = distinct !{!2365, !2349}
!2366 = !DILocation(line: 464, column: 1, scope: !2338)
