; ModuleID = './line304-fe-irc-queries.o.i'
source_filename = "./line304-fe-irc-queries.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"query_track_nick_changes\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"event privmsg\00", align 1
@__func__.event_privmsg = private unnamed_addr constant [14 x i8] c"event_privmsg\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.query_find_address = private unnamed_addr constant [19 x i8] c"query_find_address\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_irc_queries_init() #0 !dbg !419 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !422
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !423
  ret void, !dbg !424
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_privmsg(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !425 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !428, metadata !429), !dbg !430
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !431, metadata !429), !dbg !432
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !433, metadata !429), !dbg !434
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !435, metadata !429), !dbg !436
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %9, metadata !437, metadata !429), !dbg !438
  br label %10, !dbg !439, !llvm.loop !440

; <label>:10:                                     ; preds = %4
  %11 = load i8*, i8** %6, align 8, !dbg !441
  %12 = icmp ne i8* %11, null, !dbg !445
  br i1 %12, label %13, label %14, !dbg !441

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !446

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_privmsg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !449
  br label %82, !dbg !452

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !453

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %7, align 8, !dbg !455
  %18 = icmp eq i8* %17, null, !dbg !457
  br i1 %18, label %33, label %19, !dbg !458

; <label>:19:                                     ; preds = %16
  %20 = load i8*, i8** %8, align 8, !dbg !459
  %21 = icmp eq i8* %20, null, !dbg !461
  br i1 %21, label %33, label %22, !dbg !462

; <label>:22:                                     ; preds = %19
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !463
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 27, !dbg !465
  %25 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %24, align 8, !dbg !465
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !466
  %27 = load i8*, i8** %6, align 8, !dbg !467
  %28 = call i32 %25(%struct._SERVER_REC* %26, i8* %27), !dbg !468
  %29 = icmp ne i32 %28, 0, !dbg !468
  br i1 %29, label %33, label %30, !dbg !469

; <label>:30:                                     ; preds = %22
  %31 = call i32 @settings_get_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)), !dbg !470
  %32 = icmp ne i32 %31, 0, !dbg !470
  br i1 %32, label %34, label %33, !dbg !471

; <label>:33:                                     ; preds = %30, %22, %19, %16
  br label %82, !dbg !473

; <label>:34:                                     ; preds = %30
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !474
  %36 = load i8*, i8** %7, align 8, !dbg !475
  %37 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %35, i8* %36), !dbg !476
  store %struct._QUERY_REC* %37, %struct._QUERY_REC** %9, align 8, !dbg !477
  %38 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !478
  %39 = icmp eq %struct._QUERY_REC* %38, null, !dbg !480
  br i1 %39, label %40, label %58, !dbg !481

; <label>:40:                                     ; preds = %34
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !482
  %42 = load i8*, i8** %8, align 8, !dbg !484
  %43 = call %struct._QUERY_REC* @query_find_address(%struct._SERVER_REC* %41, i8* %42), !dbg !485
  store %struct._QUERY_REC* %43, %struct._QUERY_REC** %9, align 8, !dbg !486
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !487
  %45 = icmp ne %struct._QUERY_REC* %44, null, !dbg !489
  br i1 %45, label %46, label %57, !dbg !490

; <label>:46:                                     ; preds = %40
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !491
  %48 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !494
  %49 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %48, i32 0, i32 6, !dbg !495
  %50 = load i8*, i8** %49, align 8, !dbg !495
  %51 = call i32 @server_has_nick(%struct._SERVER_REC* %47, i8* %50), !dbg !496
  %52 = icmp ne i32 %51, 0, !dbg !496
  br i1 %52, label %56, label %53, !dbg !497

; <label>:53:                                     ; preds = %46
  %54 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !498
  %55 = load i8*, i8** %7, align 8, !dbg !499
  call void @query_change_nick(%struct._QUERY_REC* %54, i8* %55), !dbg !500
  br label %56, !dbg !500

; <label>:56:                                     ; preds = %53, %46
  br label %57, !dbg !501

; <label>:57:                                     ; preds = %56, %40
  br label %82, !dbg !502

; <label>:58:                                     ; preds = %34
  %59 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !503
  %60 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %59, i32 0, i32 6, !dbg !506
  %61 = load i8*, i8** %60, align 8, !dbg !506
  %62 = load i8*, i8** %7, align 8, !dbg !507
  %63 = call i32 @g_strcmp0(i8* %61, i8* %62), !dbg !508
  %64 = icmp ne i32 %63, 0, !dbg !509
  br i1 %64, label %65, label %68, !dbg !510

; <label>:65:                                     ; preds = %58
  %66 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !511
  %67 = load i8*, i8** %7, align 8, !dbg !512
  call void @query_change_nick(%struct._QUERY_REC* %66, i8* %67), !dbg !513
  br label %68, !dbg !513

; <label>:68:                                     ; preds = %65, %58
  %69 = load i8*, i8** %8, align 8, !dbg !514
  %70 = icmp ne i8* %69, null, !dbg !516
  br i1 %70, label %71, label %81, !dbg !517

; <label>:71:                                     ; preds = %68
  %72 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !518
  %73 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %72, i32 0, i32 12, !dbg !520
  %74 = load i8*, i8** %73, align 8, !dbg !520
  %75 = load i8*, i8** %8, align 8, !dbg !521
  %76 = call i32 @g_strcmp0(i8* %74, i8* %75), !dbg !522
  %77 = icmp ne i32 %76, 0, !dbg !523
  br i1 %77, label %78, label %81, !dbg !524

; <label>:78:                                     ; preds = %71
  %79 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !525
  %80 = load i8*, i8** %8, align 8, !dbg !526
  call void @query_change_address(%struct._QUERY_REC* %79, i8* %80), !dbg !527
  br label %81, !dbg !527

; <label>:81:                                     ; preds = %78, %71, %68
  br label %82

; <label>:82:                                     ; preds = %14, %33, %81, %57
  ret void, !dbg !528
}

; Function Attrs: nounwind uwtable
define void @fe_irc_queries_deinit() #0 !dbg !529 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !530
  ret void, !dbg !531
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._QUERY_REC* @query_find_address(%struct._SERVER_REC*, i8*) #0 !dbg !532 {
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !533, metadata !429), !dbg !534
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !535, metadata !429), !dbg !536
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !537, metadata !429), !dbg !538
  br label %8, !dbg !539, !llvm.loop !540

; <label>:8:                                      ; preds = %2
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !541
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !541
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !545
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !546
  %13 = icmp ne %struct._SERVER_REC* %12, null, !dbg !546
  br i1 %13, label %14, label %15, !dbg !547

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !548

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !550

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !552

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.query_find_address, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)), !dbg !555
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !558
  br label %57, !dbg !558

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !559

; <label>:19:                                     ; preds = %18
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !561
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 24, !dbg !563
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !563
  store %struct._GSList* %22, %struct._GSList** %6, align 8, !dbg !564
  br label %23, !dbg !565

; <label>:23:                                     ; preds = %52, %19
  %24 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !566
  %25 = icmp ne %struct._GSList* %24, null, !dbg !569
  br i1 %25, label %26, label %56, !dbg !570

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !571, metadata !429), !dbg !573
  %27 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !574
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !575
  %29 = load i8*, i8** %28, align 8, !dbg !575
  %30 = bitcast i8* %29 to %struct._QUERY_REC*, !dbg !574
  store %struct._QUERY_REC* %30, %struct._QUERY_REC** %7, align 8, !dbg !573
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !576
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 6, !dbg !578
  %33 = load i8*, i8** %32, align 8, !dbg !578
  %34 = load i8, i8* %33, align 1, !dbg !579
  %35 = sext i8 %34 to i32, !dbg !579
  %36 = icmp ne i32 %35, 61, !dbg !580
  br i1 %36, label %37, label %51, !dbg !581

; <label>:37:                                     ; preds = %26
  %38 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !582
  %39 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %38, i32 0, i32 12, !dbg !584
  %40 = load i8*, i8** %39, align 8, !dbg !584
  %41 = icmp ne i8* %40, null, !dbg !585
  br i1 %41, label %42, label %51, !dbg !586

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %5, align 8, !dbg !587
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !588
  %45 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %44, i32 0, i32 12, !dbg !589
  %46 = load i8*, i8** %45, align 8, !dbg !589
  %47 = call i32 @g_ascii_strcasecmp(i8* %43, i8* %46), !dbg !590
  %48 = icmp eq i32 %47, 0, !dbg !591
  br i1 %48, label %49, label %51, !dbg !592

; <label>:49:                                     ; preds = %42
  %50 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !594
  store %struct._QUERY_REC* %50, %struct._QUERY_REC** %3, align 8, !dbg !595
  br label %57, !dbg !595

; <label>:51:                                     ; preds = %42, %37, %26
  br label %52, !dbg !596

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !597
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !599
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !599
  store %struct._GSList* %55, %struct._GSList** %6, align 8, !dbg !600
  br label %23, !dbg !601, !llvm.loop !602

; <label>:56:                                     ; preds = %23
  store %struct._QUERY_REC* null, %struct._QUERY_REC** %3, align 8, !dbg !604
  br label %57, !dbg !604

; <label>:57:                                     ; preds = %56, %49, %17
  %58 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !605
  ret %struct._QUERY_REC* %58, !dbg !605
}

; Function Attrs: nounwind uwtable
define internal i32 @server_has_nick(%struct._SERVER_REC*, i8*) #0 !dbg !606 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !607, metadata !429), !dbg !608
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !609, metadata !429), !dbg !610
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !611, metadata !429), !dbg !612
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !613
  %9 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %8, i32 0, i32 23, !dbg !615
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !615
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !616
  br label %11, !dbg !617

; <label>:11:                                     ; preds = %25, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !618
  %13 = icmp ne %struct._GSList* %12, null, !dbg !621
  br i1 %13, label %14, label %29, !dbg !622

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !623, metadata !429), !dbg !625
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !626
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !627
  %17 = load i8*, i8** %16, align 8, !dbg !627
  %18 = bitcast i8* %17 to %struct._CHANNEL_REC*, !dbg !626
  store %struct._CHANNEL_REC* %18, %struct._CHANNEL_REC** %7, align 8, !dbg !625
  %19 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !628
  %20 = load i8*, i8** %5, align 8, !dbg !630
  %21 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %19, i8* %20), !dbg !631
  %22 = icmp ne %struct._NICK_REC* %21, null, !dbg !632
  br i1 %22, label %23, label %24, !dbg !633

; <label>:23:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !634
  br label %30, !dbg !634

; <label>:24:                                     ; preds = %14
  br label %25, !dbg !635

; <label>:25:                                     ; preds = %24
  %26 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !636
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !638
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !638
  store %struct._GSList* %28, %struct._GSList** %6, align 8, !dbg !639
  br label %11, !dbg !640, !llvm.loop !641

; <label>:29:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !643
  br label %30, !dbg !643

; <label>:30:                                     ; preds = %29, %23
  %31 = load i32, i32* %3, align 4, !dbg !644
  ret i32 %31, !dbg !644
}

declare void @query_change_nick(%struct._QUERY_REC*, i8*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @query_change_address(%struct._QUERY_REC*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!416, !417}
!llvm.ident = !{!418}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line304-fe-irc-queries.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !43, !44, !48, !50}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !37, line: 9, baseType: !38)
!37 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !41, !41, !41, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !52, line: 107, baseType: !53)
!52 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !54, line: 30, size: 2240, align: 64, elements: !55)
!54 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !{!56, !59, !60, !61, !291, !296, !297, !298, !299, !300, !301, !302, !303, !304, !308, !309, !313, !314, !315, !319, !324, !325, !326, !327, !328, !329, !330, !331, !338, !339, !340, !341, !342, !346, !350, !354, !358, !362, !367, !374, !411, !415}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !57, line: 3, baseType: !58, size: 32, align: 32)
!57 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !53, file: !57, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !53, file: !57, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !53, file: !57, line: 8, baseType: !62, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !52, line: 113, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !54, line: 25, size: 1920, align: 64, elements: !65)
!65 = !{!66, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !67, line: 3, baseType: !58, size: 32, align: 32)
!67 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !64, file: !67, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !64, file: !67, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !64, file: !67, line: 9, baseType: !71, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !64, file: !67, line: 10, baseType: !58, size: 32, align: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !64, file: !67, line: 11, baseType: !71, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !64, file: !67, line: 11, baseType: !71, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !64, file: !67, line: 11, baseType: !71, size: 64, align: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !64, file: !67, line: 13, baseType: !77, size: 16, align: 16, offset: 448)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !64, file: !67, line: 14, baseType: !71, size: 64, align: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !64, file: !67, line: 15, baseType: !71, size: 64, align: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !64, file: !67, line: 16, baseType: !58, size: 32, align: 32, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !64, file: !67, line: 17, baseType: !71, size: 64, align: 64, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !64, file: !67, line: 19, baseType: !83, size: 64, align: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !52, line: 99, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !52, line: 99, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !64, file: !67, line: 19, baseType: !83, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !64, file: !67, line: 21, baseType: !71, size: 64, align: 64, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !64, file: !67, line: 22, baseType: !71, size: 64, align: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !64, file: !67, line: 23, baseType: !71, size: 64, align: 64, offset: 1024)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !64, file: !67, line: 24, baseType: !71, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !64, file: !67, line: 26, baseType: !71, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !64, file: !67, line: 27, baseType: !71, size: 64, align: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !64, file: !67, line: 28, baseType: !71, size: 64, align: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !64, file: !67, line: 29, baseType: !71, size: 64, align: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !64, file: !67, line: 30, baseType: !71, size: 64, align: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !64, file: !67, line: 31, baseType: !71, size: 64, align: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !64, file: !67, line: 32, baseType: !71, size: 64, align: 64, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !64, file: !67, line: 33, baseType: !71, size: 64, align: 64, offset: 1600)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !64, file: !67, line: 35, baseType: !100, size: 64, align: 64, offset: 1664)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !103)
!103 = !{!104, !106, !248, !249, !254, !255, !256, !257, !258, !267, !268, !269, !273, !274, !275, !276, !277, !278, !279, !280}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !102, file: !4, line: 100, baseType: !105, size: 32, align: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !46, line: 49, baseType: !58)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !102, file: !4, line: 101, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !110)
!110 = !{!111, !133, !139, !146, !150, !235, !239, !244}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !109, file: !4, line: 133, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !100, !44, !116, !119, !120}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !117, line: 66, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !123, line: 42, baseType: !124)
!123 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !123, line: 44, size: 128, align: 64, elements: !125)
!125 = !{!126, !131, !132}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !124, file: !123, line: 46, baseType: !127, size: 32, align: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !128, line: 36, baseType: !129)
!128 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !117, line: 45, baseType: !130)
!130 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !124, file: !123, line: 47, baseType: !105, size: 32, align: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !124, file: !123, line: 48, baseType: !44, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !109, file: !4, line: 138, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!115, !100, !137, !116, !119, !120}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !109, file: !4, line: 143, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!115, !100, !143, !145, !120}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !117, line: 51, baseType: !144)
!144 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !109, file: !4, line: 147, baseType: !147, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!115, !100, !120}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !109, file: !4, line: 149, baseType: !151, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !100, !234}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !157)
!157 = !{!158, !160, !181, !210, !212, !216, !217, !218, !219, !227, !228, !229, !230}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !156, file: !16, line: 174, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !46, line: 77, baseType: !43)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !156, file: !16, line: 175, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !164)
!164 = !{!165, !169, !170}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !163, file: !16, line: 198, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !159}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !163, file: !16, line: 199, baseType: !166, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !163, file: !16, line: 200, baseType: !171, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !159, !154, !174, !180}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !159}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !46, line: 50, baseType: !105)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !156, file: !16, line: 177, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !186)
!186 = !{!187, !192, !196, !200, !204, !205}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !185, file: !16, line: 216, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!179, !154, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !185, file: !16, line: 218, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!179, !154}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !185, file: !16, line: 219, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!179, !154, !175, !159}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !185, file: !16, line: 222, baseType: !201, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !154}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !185, file: !16, line: 226, baseType: !175, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !185, file: !16, line: 227, baseType: !206, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !156, file: !16, line: 178, baseType: !211, size: 32, align: 32, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !46, line: 55, baseType: !130)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !156, file: !16, line: 180, baseType: !213, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !156, file: !16, line: 182, baseType: !105, size: 32, align: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !16, line: 183, baseType: !211, size: 32, align: 32, offset: 352)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !156, file: !16, line: 184, baseType: !211, size: 32, align: 32, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !156, file: !16, line: 186, baseType: !220, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !222, line: 37, baseType: !223)
!222 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !222, line: 39, size: 128, align: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !223, file: !222, line: 41, baseType: !159, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !222, line: 42, baseType: !220, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !16, line: 188, baseType: !154, size: 64, align: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !16, line: 189, baseType: !154, size: 64, align: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !16, line: 191, baseType: !71, size: 64, align: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !156, file: !16, line: 193, baseType: !231, size: 64, align: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !109, file: !4, line: 151, baseType: !236, size: 64, align: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !100}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !109, file: !4, line: 152, baseType: !240, size: 64, align: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!115, !100, !243, !120}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !109, file: !4, line: 155, baseType: !245, size: 64, align: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!243, !100}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !102, file: !4, line: 103, baseType: !44, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !102, file: !4, line: 104, baseType: !250, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !251, line: 77, baseType: !252)
!251 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !251, line: 77, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !102, file: !4, line: 105, baseType: !250, size: 64, align: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !102, file: !4, line: 106, baseType: !44, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !102, file: !4, line: 107, baseType: !211, size: 32, align: 32, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !102, file: !4, line: 109, baseType: !116, size: 64, align: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !102, file: !4, line: 110, baseType: !259, size: 64, align: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !261, line: 39, baseType: !262)
!261 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !261, line: 41, size: 192, align: 64, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !262, file: !261, line: 43, baseType: !44, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !262, file: !261, line: 44, baseType: !116, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !262, file: !261, line: 45, baseType: !116, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !102, file: !4, line: 111, baseType: !259, size: 64, align: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !102, file: !4, line: 112, baseType: !259, size: 64, align: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !102, file: !4, line: 113, baseType: !270, size: 48, align: 8, offset: 704)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 6)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !102, file: !4, line: 117, baseType: !211, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !102, file: !4, line: 118, baseType: !211, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !102, file: !4, line: 119, baseType: !211, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !102, file: !4, line: 120, baseType: !211, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !102, file: !4, line: 121, baseType: !211, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !102, file: !4, line: 122, baseType: !211, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !102, file: !4, line: 124, baseType: !159, size: 64, align: 64, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !102, file: !4, line: 125, baseType: !159, size: 64, align: 64, offset: 832)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !64, file: !67, line: 38, baseType: !130, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !64, file: !67, line: 39, baseType: !130, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !64, file: !67, line: 40, baseType: !130, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !64, file: !67, line: 41, baseType: !130, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !64, file: !67, line: 42, baseType: !130, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !64, file: !67, line: 43, baseType: !130, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !64, file: !67, line: 44, baseType: !130, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !64, file: !67, line: 45, baseType: !130, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !64, file: !67, line: 46, baseType: !71, size: 64, align: 64, offset: 1792)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !64, file: !67, line: 47, baseType: !71, size: 64, align: 64, offset: 1856)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !53, file: !57, line: 9, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !293, line: 75, baseType: !294)
!293 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !295, line: 139, baseType: !144)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !53, file: !57, line: 10, baseType: !292, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !53, file: !57, line: 12, baseType: !71, size: 64, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !53, file: !57, line: 13, baseType: !71, size: 64, align: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !53, file: !57, line: 15, baseType: !130, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !53, file: !57, line: 16, baseType: !130, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !53, file: !57, line: 17, baseType: !130, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !53, file: !57, line: 18, baseType: !130, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !53, file: !57, line: 19, baseType: !130, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !53, file: !57, line: 21, baseType: !305, size: 64, align: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !52, line: 102, baseType: !307)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !52, line: 102, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !53, file: !57, line: 22, baseType: !58, size: 32, align: 32, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !53, file: !57, line: 25, baseType: !310, size: 128, align: 64, offset: 640)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, align: 64, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 2)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !53, file: !57, line: 26, baseType: !58, size: 32, align: 32, offset: 768)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !53, file: !57, line: 27, baseType: !58, size: 32, align: 32, offset: 800)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !53, file: !57, line: 29, baseType: !316, size: 64, align: 64, offset: 832)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !52, line: 103, baseType: !318)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !52, line: 103, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !53, file: !57, line: 30, baseType: !320, size: 64, align: 64, offset: 896)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !322, line: 37, baseType: !323)
!322 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !322, line: 37, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !53, file: !57, line: 32, baseType: !71, size: 64, align: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !53, file: !57, line: 33, baseType: !71, size: 64, align: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !53, file: !57, line: 34, baseType: !71, size: 64, align: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !53, file: !57, line: 35, baseType: !130, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !53, file: !57, line: 36, baseType: !130, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !53, file: !57, line: 37, baseType: !130, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !53, file: !57, line: 38, baseType: !130, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !53, file: !57, line: 40, baseType: !332, size: 128, align: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !46, line: 504, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !46, line: 506, size: 128, align: 64, elements: !334)
!334 = !{!335, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !333, file: !46, line: 508, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !46, line: 48, baseType: !144)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !333, file: !46, line: 509, baseType: !336, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !53, file: !57, line: 41, baseType: !292, size: 64, align: 64, offset: 1344)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !53, file: !57, line: 42, baseType: !58, size: 32, align: 32, offset: 1408)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !53, file: !57, line: 44, baseType: !220, size: 64, align: 64, offset: 1472)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !53, file: !57, line: 45, baseType: !220, size: 64, align: 64, offset: 1536)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !53, file: !57, line: 53, baseType: !343, size: 64, align: 64, offset: 1600)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !50, !48, !58}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !53, file: !57, line: 55, baseType: !347, size: 64, align: 64, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!58, !50, !47}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !53, file: !57, line: 57, baseType: !351, size: 64, align: 64, offset: 1728)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!58, !50, !48}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !53, file: !57, line: 60, baseType: !355, size: 64, align: 64, offset: 1792)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!48, !50}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !53, file: !57, line: 62, baseType: !359, size: 64, align: 64, offset: 1856)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !50, !48, !48, !58}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !53, file: !57, line: 65, baseType: !363, size: 64, align: 64, offset: 1920)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !50, !48, !48}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !53, file: !57, line: 69, baseType: !368, size: 64, align: 64, offset: 1984)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !50, !48}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !52, line: 109, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !52, line: 109, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !53, file: !57, line: 70, baseType: !375, size: 64, align: 64, offset: 2048)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !50, !48}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !52, line: 110, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !381, line: 15, size: 960, align: 64, elements: !382)
!381 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!382 = !{!383, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !401, !405, !407, !408, !409, !410}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !384, line: 3, baseType: !58, size: 32, align: 32)
!384 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !380, file: !384, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !380, file: !384, line: 5, baseType: !320, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !380, file: !384, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !380, file: !384, line: 8, baseType: !50, size: 64, align: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !380, file: !384, line: 9, baseType: !71, size: 64, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !384, line: 10, baseType: !71, size: 64, align: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !380, file: !384, line: 11, baseType: !292, size: 64, align: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !380, file: !384, line: 12, baseType: !58, size: 32, align: 32, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !380, file: !384, line: 13, baseType: !71, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !380, file: !384, line: 15, baseType: !395, size: 64, align: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !52, line: 108, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !52, line: 108, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !380, file: !384, line: 17, baseType: !402, size: 64, align: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!48, !398}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !380, file: !406, line: 5, baseType: !71, size: 64, align: 64, offset: 704)
!406 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !380, file: !406, line: 6, baseType: !71, size: 64, align: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !380, file: !406, line: 7, baseType: !292, size: 64, align: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !380, file: !406, line: 9, baseType: !130, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !380, file: !406, line: 11, baseType: !130, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !53, file: !57, line: 71, baseType: !412, size: 64, align: 64, offset: 2112)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!58, !48, !48}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !53, file: !57, line: 73, baseType: !412, size: 64, align: 64, offset: 2176)
!416 = !{i32 2, !"Dwarf Version", i32 4}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!419 = distinct !DISubprogram(name: "fe_irc_queries_init", scope: !420, file: !420, line: 91, type: !208, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!420 = !DIFile(filename: "fe-irc-queries.c", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !{}
!422 = !DILocation(line: 93, column: 9, scope: !419)
!423 = !DILocation(line: 95, column: 2, scope: !419)
!424 = !DILocation(line: 96, column: 1, scope: !419)
!425 = distinct !DISubprogram(name: "event_privmsg", scope: !420, file: !420, line: 59, type: !426, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !50, !48, !48, !48}
!428 = !DILocalVariable(name: "server", arg: 1, scope: !425, file: !420, line: 59, type: !50)
!429 = !DIExpression()
!430 = !DILocation(line: 59, column: 39, scope: !425)
!431 = !DILocalVariable(name: "data", arg: 2, scope: !425, file: !420, line: 59, type: !48)
!432 = !DILocation(line: 59, column: 59, scope: !425)
!433 = !DILocalVariable(name: "nick", arg: 3, scope: !425, file: !420, line: 60, type: !48)
!434 = !DILocation(line: 60, column: 18, scope: !425)
!435 = !DILocalVariable(name: "address", arg: 4, scope: !425, file: !420, line: 60, type: !48)
!436 = !DILocation(line: 60, column: 36, scope: !425)
!437 = !DILocalVariable(name: "query", scope: !425, file: !420, line: 62, type: !378)
!438 = !DILocation(line: 62, column: 13, scope: !425)
!439 = !DILocation(line: 64, column: 2, scope: !425)
!440 = distinct !{!440, !439}
!441 = !DILocation(line: 64, column: 10, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !420, discriminator: 1)
!443 = distinct !DILexicalBlock(scope: !444, file: !420, line: 64, column: 10)
!444 = distinct !DILexicalBlock(scope: !425, file: !420, line: 64, column: 4)
!445 = !DILocation(line: 64, column: 15, scope: !442)
!446 = !DILocation(line: 64, column: 5, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !420, discriminator: 2)
!448 = distinct !DILexicalBlock(scope: !443, file: !420, line: 64, column: 3)
!449 = !DILocation(line: 64, column: 14, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !420, discriminator: 3)
!451 = distinct !DILexicalBlock(scope: !443, file: !420, line: 64, column: 12)
!452 = !DILocation(line: 64, column: 99, scope: !450)
!453 = !DILocation(line: 64, column: 110, scope: !454)
!454 = !DILexicalBlockFile(scope: !444, file: !420, discriminator: 4)
!455 = !DILocation(line: 66, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !425, file: !420, line: 66, column: 6)
!457 = !DILocation(line: 66, column: 11, scope: !456)
!458 = !DILocation(line: 66, column: 18, scope: !456)
!459 = !DILocation(line: 66, column: 21, scope: !460)
!460 = !DILexicalBlockFile(scope: !456, file: !420, discriminator: 1)
!461 = !DILocation(line: 66, column: 29, scope: !460)
!462 = !DILocation(line: 66, column: 37, scope: !460)
!463 = !DILocation(line: 66, column: 42, scope: !464)
!464 = !DILexicalBlockFile(scope: !456, file: !420, discriminator: 2)
!465 = !DILocation(line: 66, column: 51, scope: !464)
!466 = !DILocation(line: 66, column: 61, scope: !464)
!467 = !DILocation(line: 66, column: 69, scope: !464)
!468 = !DILocation(line: 66, column: 41, scope: !464)
!469 = !DILocation(line: 66, column: 76, scope: !464)
!470 = !DILocation(line: 67, column: 7, scope: !456)
!471 = !DILocation(line: 66, column: 6, scope: !472)
!472 = !DILexicalBlockFile(scope: !425, file: !420, discriminator: 3)
!473 = !DILocation(line: 68, column: 17, scope: !456)
!474 = !DILocation(line: 70, column: 21, scope: !425)
!475 = !DILocation(line: 70, column: 29, scope: !425)
!476 = !DILocation(line: 70, column: 10, scope: !425)
!477 = !DILocation(line: 70, column: 8, scope: !425)
!478 = !DILocation(line: 71, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !425, file: !420, line: 71, column: 6)
!480 = !DILocation(line: 71, column: 12, scope: !479)
!481 = !DILocation(line: 71, column: 6, scope: !425)
!482 = !DILocation(line: 75, column: 30, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !420, line: 71, column: 20)
!484 = !DILocation(line: 75, column: 38, scope: !483)
!485 = !DILocation(line: 75, column: 11, scope: !483)
!486 = !DILocation(line: 75, column: 9, scope: !483)
!487 = !DILocation(line: 76, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !420, line: 76, column: 7)
!489 = !DILocation(line: 76, column: 13, scope: !488)
!490 = !DILocation(line: 76, column: 7, scope: !483)
!491 = !DILocation(line: 78, column: 25, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !420, line: 78, column: 8)
!493 = distinct !DILexicalBlock(scope: !488, file: !420, line: 76, column: 21)
!494 = !DILocation(line: 78, column: 33, scope: !492)
!495 = !DILocation(line: 78, column: 40, scope: !492)
!496 = !DILocation(line: 78, column: 9, scope: !492)
!497 = !DILocation(line: 78, column: 8, scope: !493)
!498 = !DILocation(line: 79, column: 23, scope: !492)
!499 = !DILocation(line: 79, column: 30, scope: !492)
!500 = !DILocation(line: 79, column: 5, scope: !492)
!501 = !DILocation(line: 80, column: 3, scope: !493)
!502 = !DILocation(line: 81, column: 2, scope: !483)
!503 = !DILocation(line: 84, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !420, line: 84, column: 7)
!505 = distinct !DILexicalBlock(scope: !479, file: !420, line: 81, column: 9)
!506 = !DILocation(line: 84, column: 24, scope: !504)
!507 = !DILocation(line: 84, column: 30, scope: !504)
!508 = !DILocation(line: 84, column: 7, scope: !504)
!509 = !DILocation(line: 84, column: 36, scope: !504)
!510 = !DILocation(line: 84, column: 7, scope: !505)
!511 = !DILocation(line: 85, column: 22, scope: !504)
!512 = !DILocation(line: 85, column: 29, scope: !504)
!513 = !DILocation(line: 85, column: 4, scope: !504)
!514 = !DILocation(line: 86, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !505, file: !420, line: 86, column: 7)
!516 = !DILocation(line: 86, column: 15, scope: !515)
!517 = !DILocation(line: 86, column: 22, scope: !515)
!518 = !DILocation(line: 86, column: 35, scope: !519)
!519 = !DILexicalBlockFile(scope: !515, file: !420, discriminator: 1)
!520 = !DILocation(line: 86, column: 42, scope: !519)
!521 = !DILocation(line: 86, column: 51, scope: !519)
!522 = !DILocation(line: 86, column: 25, scope: !519)
!523 = !DILocation(line: 86, column: 60, scope: !519)
!524 = !DILocation(line: 86, column: 7, scope: !519)
!525 = !DILocation(line: 87, column: 25, scope: !515)
!526 = !DILocation(line: 87, column: 32, scope: !515)
!527 = !DILocation(line: 87, column: 4, scope: !515)
!528 = !DILocation(line: 89, column: 1, scope: !425)
!529 = distinct !DISubprogram(name: "fe_irc_queries_deinit", scope: !420, file: !420, line: 98, type: !208, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!530 = !DILocation(line: 100, column: 2, scope: !529)
!531 = !DILocation(line: 101, column: 1, scope: !529)
!532 = distinct !DISubprogram(name: "query_find_address", scope: !420, file: !420, line: 28, type: !376, isLocal: true, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!533 = !DILocalVariable(name: "server", arg: 1, scope: !532, file: !420, line: 28, type: !50)
!534 = !DILocation(line: 28, column: 50, scope: !532)
!535 = !DILocalVariable(name: "address", arg: 2, scope: !532, file: !420, line: 28, type: !48)
!536 = !DILocation(line: 28, column: 70, scope: !532)
!537 = !DILocalVariable(name: "tmp", scope: !532, file: !420, line: 30, type: !220)
!538 = !DILocation(line: 30, column: 10, scope: !532)
!539 = !DILocation(line: 32, column: 2, scope: !532)
!540 = distinct !{!540, !539}
!541 = !DILocation(line: 32, column: 45, scope: !542)
!542 = !DILexicalBlockFile(scope: !543, file: !420, discriminator: 1)
!543 = distinct !DILexicalBlock(scope: !544, file: !420, line: 32, column: 10)
!544 = distinct !DILexicalBlock(scope: !532, file: !420, line: 32, column: 4)
!545 = !DILocation(line: 32, column: 27, scope: !542)
!546 = !DILocation(line: 32, column: 12, scope: !542)
!547 = !DILocation(line: 32, column: 10, scope: !542)
!548 = !DILocation(line: 32, column: 11, scope: !549)
!549 = !DILexicalBlockFile(scope: !543, file: !420, discriminator: 2)
!550 = !DILocation(line: 32, column: 10, scope: !551)
!551 = !DILexicalBlockFile(scope: !544, file: !420, discriminator: 3)
!552 = !DILocation(line: 32, column: 33, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !420, discriminator: 4)
!554 = distinct !DILexicalBlock(scope: !543, file: !420, line: 32, column: 31)
!555 = !DILocation(line: 32, column: 42, scope: !556)
!556 = !DILexicalBlockFile(scope: !557, file: !420, discriminator: 5)
!557 = distinct !DILexicalBlock(scope: !543, file: !420, line: 32, column: 40)
!558 = !DILocation(line: 32, column: 132, scope: !556)
!559 = !DILocation(line: 32, column: 7, scope: !560)
!560 = !DILexicalBlockFile(scope: !544, file: !420, discriminator: 6)
!561 = !DILocation(line: 34, column: 13, scope: !562)
!562 = distinct !DILexicalBlock(scope: !532, file: !420, line: 34, column: 2)
!563 = !DILocation(line: 34, column: 21, scope: !562)
!564 = !DILocation(line: 34, column: 11, scope: !562)
!565 = !DILocation(line: 34, column: 7, scope: !562)
!566 = !DILocation(line: 34, column: 30, scope: !567)
!567 = !DILexicalBlockFile(scope: !568, file: !420, discriminator: 1)
!568 = distinct !DILexicalBlock(scope: !562, file: !420, line: 34, column: 2)
!569 = !DILocation(line: 34, column: 34, scope: !567)
!570 = !DILocation(line: 34, column: 2, scope: !567)
!571 = !DILocalVariable(name: "rec", scope: !572, file: !420, line: 35, type: !378)
!572 = distinct !DILexicalBlock(scope: !568, file: !420, line: 34, column: 59)
!573 = !DILocation(line: 35, column: 14, scope: !572)
!574 = !DILocation(line: 35, column: 20, scope: !572)
!575 = !DILocation(line: 35, column: 25, scope: !572)
!576 = !DILocation(line: 37, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !420, line: 37, column: 7)
!578 = !DILocation(line: 37, column: 13, scope: !577)
!579 = !DILocation(line: 37, column: 7, scope: !577)
!580 = !DILocation(line: 37, column: 18, scope: !577)
!581 = !DILocation(line: 37, column: 25, scope: !577)
!582 = !DILocation(line: 37, column: 28, scope: !583)
!583 = !DILexicalBlockFile(scope: !577, file: !420, discriminator: 1)
!584 = !DILocation(line: 37, column: 33, scope: !583)
!585 = !DILocation(line: 37, column: 41, scope: !583)
!586 = !DILocation(line: 37, column: 48, scope: !583)
!587 = !DILocation(line: 38, column: 26, scope: !577)
!588 = !DILocation(line: 38, column: 35, scope: !577)
!589 = !DILocation(line: 38, column: 40, scope: !577)
!590 = !DILocation(line: 38, column: 7, scope: !577)
!591 = !DILocation(line: 38, column: 49, scope: !577)
!592 = !DILocation(line: 37, column: 7, scope: !593)
!593 = !DILexicalBlockFile(scope: !572, file: !420, discriminator: 2)
!594 = !DILocation(line: 39, column: 11, scope: !577)
!595 = !DILocation(line: 39, column: 4, scope: !577)
!596 = !DILocation(line: 40, column: 2, scope: !572)
!597 = !DILocation(line: 34, column: 48, scope: !598)
!598 = !DILexicalBlockFile(scope: !568, file: !420, discriminator: 2)
!599 = !DILocation(line: 34, column: 53, scope: !598)
!600 = !DILocation(line: 34, column: 46, scope: !598)
!601 = !DILocation(line: 34, column: 2, scope: !598)
!602 = distinct !{!602, !603}
!603 = !DILocation(line: 34, column: 2, scope: !532)
!604 = !DILocation(line: 42, column: 2, scope: !532)
!605 = !DILocation(line: 43, column: 1, scope: !532)
!606 = distinct !DISubprogram(name: "server_has_nick", scope: !420, file: !420, line: 45, type: !352, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!607 = !DILocalVariable(name: "server", arg: 1, scope: !606, file: !420, line: 45, type: !50)
!608 = !DILocation(line: 45, column: 40, scope: !606)
!609 = !DILocalVariable(name: "nick", arg: 2, scope: !606, file: !420, line: 45, type: !48)
!610 = !DILocation(line: 45, column: 60, scope: !606)
!611 = !DILocalVariable(name: "tmp", scope: !606, file: !420, line: 47, type: !220)
!612 = !DILocation(line: 47, column: 10, scope: !606)
!613 = !DILocation(line: 49, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !606, file: !420, line: 49, column: 2)
!615 = !DILocation(line: 49, column: 21, scope: !614)
!616 = !DILocation(line: 49, column: 11, scope: !614)
!617 = !DILocation(line: 49, column: 7, scope: !614)
!618 = !DILocation(line: 49, column: 31, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !420, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !614, file: !420, line: 49, column: 2)
!621 = !DILocation(line: 49, column: 35, scope: !619)
!622 = !DILocation(line: 49, column: 2, scope: !619)
!623 = !DILocalVariable(name: "channel", scope: !624, file: !420, line: 50, type: !371)
!624 = distinct !DILexicalBlock(scope: !620, file: !420, line: 49, column: 60)
!625 = !DILocation(line: 50, column: 16, scope: !624)
!626 = !DILocation(line: 50, column: 26, scope: !624)
!627 = !DILocation(line: 50, column: 31, scope: !624)
!628 = !DILocation(line: 52, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !420, line: 52, column: 7)
!630 = !DILocation(line: 52, column: 30, scope: !629)
!631 = !DILocation(line: 52, column: 7, scope: !629)
!632 = !DILocation(line: 52, column: 36, scope: !629)
!633 = !DILocation(line: 52, column: 7, scope: !624)
!634 = !DILocation(line: 53, column: 4, scope: !629)
!635 = !DILocation(line: 54, column: 2, scope: !624)
!636 = !DILocation(line: 49, column: 49, scope: !637)
!637 = !DILexicalBlockFile(scope: !620, file: !420, discriminator: 2)
!638 = !DILocation(line: 49, column: 54, scope: !637)
!639 = !DILocation(line: 49, column: 47, scope: !637)
!640 = !DILocation(line: 49, column: 2, scope: !637)
!641 = distinct !{!641, !642}
!642 = !DILocation(line: 49, column: 2, scope: !606)
!643 = !DILocation(line: 56, column: 2, scope: !606)
!644 = !DILocation(line: 57, column: 1, scope: !606)
