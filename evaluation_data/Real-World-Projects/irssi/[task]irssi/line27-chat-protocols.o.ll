; ModuleID = './line27-chat-protocols.o.i'
source_filename = "./line27-chat-protocols.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._IPADDR = type opaque
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
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
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@__func__.chat_protocol_lookup = private unnamed_addr constant [21 x i8] c"chat_protocol_lookup\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.chat_protocol_find = private unnamed_addr constant [19 x i8] c"chat_protocol_find\00", align 1
@chat_protocols = common global %struct._GSList* null, align 8
@__func__.chat_protocol_find_id = private unnamed_addr constant [22 x i8] c"chat_protocol_find_id\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"id > 0\00", align 1
@__func__.chat_protocol_find_net = private unnamed_addr constant [23 x i8] c"chat_protocol_find_net\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"optlist != NULL\00", align 1
@__func__.chat_protocol_register = private unnamed_addr constant [23 x i8] c"chat_protocol_register\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@default_proto = internal global %struct._CHAT_PROTOCOL_REC* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"chat protocol created\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"chat protocol updated\00", align 1
@__func__.chat_protocol_unregister = private unnamed_addr constant [25 x i8] c"chat_protocol_unregister\00", align 1
@__func__.chat_protocol_get_unknown = private unnamed_addr constant [26 x i8] c"chat_protocol_get_unknown\00", align 1
@__func__.chat_protocol_destroy = private unnamed_addr constant [22 x i8] c"chat_protocol_destroy\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"chat protocol destroyed\00", align 1

; Function Attrs: nounwind uwtable
define i8* @chat_protocol_check_cast(i8*, i32, i8*) #0 !dbg !503 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !507, metadata !508), !dbg !509
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !510, metadata !508), !dbg !511
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !512, metadata !508), !dbg !513
  %7 = load i8*, i8** %4, align 8, !dbg !514
  %8 = icmp eq i8* %7, null, !dbg !515
  br i1 %8, label %19, label %9, !dbg !516

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !517
  %11 = call i32 @chat_protocol_lookup(i8* %10), !dbg !518
  %12 = load i8*, i8** %4, align 8, !dbg !519
  %13 = load i32, i32* %5, align 4, !dbg !520
  %14 = sext i32 %13 to i64, !dbg !521
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !522
  %16 = bitcast i8* %15 to i32*, !dbg !523
  %17 = load i32, i32* %16, align 4, !dbg !524
  %18 = icmp ne i32 %11, %17, !dbg !525
  br i1 %18, label %19, label %20, !dbg !526

; <label>:19:                                     ; preds = %9, %3
  br label %22, !dbg !528

; <label>:20:                                     ; preds = %9
  %21 = load i8*, i8** %4, align 8, !dbg !530
  br label %22, !dbg !531

; <label>:22:                                     ; preds = %20, %19
  %23 = phi i8* [ null, %19 ], [ %21, %20 ], !dbg !533
  ret i8* %23, !dbg !535
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @chat_protocol_lookup(i8*) #0 !dbg !536 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !539, metadata !508), !dbg !540
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %4, metadata !541, metadata !508), !dbg !542
  br label %5, !dbg !543, !llvm.loop !544

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %3, align 8, !dbg !545
  %7 = icmp ne i8* %6, null, !dbg !549
  br i1 %7, label %8, label %9, !dbg !545

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !550

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.chat_protocol_lookup, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !553
  store i32 -1, i32* %2, align 4, !dbg !556
  br label %23, !dbg !556

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !557

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %3, align 8, !dbg !559
  %13 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %12), !dbg !560
  store %struct._CHAT_PROTOCOL_REC* %13, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !561
  %14 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !562
  %15 = icmp eq %struct._CHAT_PROTOCOL_REC* %14, null, !dbg !563
  br i1 %15, label %16, label %17, !dbg !562

; <label>:16:                                     ; preds = %11
  br label %21, !dbg !564

; <label>:17:                                     ; preds = %11
  %18 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !566
  %19 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %18, i32 0, i32 0, !dbg !568
  %20 = load i32, i32* %19, align 8, !dbg !568
  br label %21, !dbg !569

; <label>:21:                                     ; preds = %17, %16
  %22 = phi i32 [ -1, %16 ], [ %20, %17 ], !dbg !570
  store i32 %22, i32* %2, align 4, !dbg !572
  br label %23, !dbg !572

; <label>:23:                                     ; preds = %21, %9
  %24 = load i32, i32* %2, align 4, !dbg !573
  ret i32 %24, !dbg !573
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8*) #0 !dbg !574 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !577, metadata !508), !dbg !578
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !579, metadata !508), !dbg !580
  br label %6, !dbg !581, !llvm.loop !582

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !583
  %8 = icmp ne i8* %7, null, !dbg !587
  br i1 %8, label %9, label %10, !dbg !583

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !588

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.chat_protocol_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !591
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !594
  br label %36, !dbg !594

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !595

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !597
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !599
  br label %14, !dbg !600

; <label>:14:                                     ; preds = %31, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !601
  %16 = icmp ne %struct._GSList* %15, null, !dbg !604
  br i1 %16, label %17, label %35, !dbg !605

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %5, metadata !606, metadata !508), !dbg !608
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !609
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !610
  %20 = load i8*, i8** %19, align 8, !dbg !610
  %21 = bitcast i8* %20 to %struct._CHAT_PROTOCOL_REC*, !dbg !609
  store %struct._CHAT_PROTOCOL_REC* %21, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !608
  %22 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !611
  %23 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %22, i32 0, i32 2, !dbg !613
  %24 = load i8*, i8** %23, align 8, !dbg !613
  %25 = load i8*, i8** %3, align 8, !dbg !614
  %26 = call i32 @g_ascii_strcasecmp(i8* %24, i8* %25), !dbg !615
  %27 = icmp eq i32 %26, 0, !dbg !616
  br i1 %27, label %28, label %30, !dbg !617

; <label>:28:                                     ; preds = %17
  %29 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !618
  store %struct._CHAT_PROTOCOL_REC* %29, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !619
  br label %36, !dbg !619

; <label>:30:                                     ; preds = %17
  br label %31, !dbg !620

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !621
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !623
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !623
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !624
  br label %14, !dbg !625, !llvm.loop !626

; <label>:35:                                     ; preds = %14
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !628
  br label %36, !dbg !628

; <label>:36:                                     ; preds = %35, %28, %10
  %37 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !629
  ret %struct._CHAT_PROTOCOL_REC* %37, !dbg !629
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #0 !dbg !630 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !633, metadata !508), !dbg !634
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !635, metadata !508), !dbg !636
  br label %6, !dbg !637, !llvm.loop !638

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !639
  %8 = icmp sgt i32 %7, 0, !dbg !643
  br i1 %8, label %9, label %10, !dbg !639

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !644

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.chat_protocol_find_id, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)), !dbg !647
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !650
  br label %35, !dbg !650

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !651

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !653
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !655
  br label %14, !dbg !656

; <label>:14:                                     ; preds = %30, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !657
  %16 = icmp ne %struct._GSList* %15, null, !dbg !660
  br i1 %16, label %17, label %34, !dbg !661

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %5, metadata !662, metadata !508), !dbg !664
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !665
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !666
  %20 = load i8*, i8** %19, align 8, !dbg !666
  %21 = bitcast i8* %20 to %struct._CHAT_PROTOCOL_REC*, !dbg !665
  store %struct._CHAT_PROTOCOL_REC* %21, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !664
  %22 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !667
  %23 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %22, i32 0, i32 0, !dbg !669
  %24 = load i32, i32* %23, align 8, !dbg !669
  %25 = load i32, i32* %3, align 4, !dbg !670
  %26 = icmp eq i32 %24, %25, !dbg !671
  br i1 %26, label %27, label %29, !dbg !672

; <label>:27:                                     ; preds = %17
  %28 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !673
  store %struct._CHAT_PROTOCOL_REC* %28, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !674
  br label %35, !dbg !674

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !675

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !676
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !678
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !678
  store %struct._GSList* %33, %struct._GSList** %4, align 8, !dbg !679
  br label %14, !dbg !680, !llvm.loop !681

; <label>:34:                                     ; preds = %14
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !683
  br label %35, !dbg !683

; <label>:35:                                     ; preds = %34, %27, %10
  %36 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !684
  ret %struct._CHAT_PROTOCOL_REC* %36, !dbg !684
}

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_net(%struct._GHashTable*) #0 !dbg !685 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store %struct._GHashTable* %0, %struct._GHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !688, metadata !508), !dbg !689
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !690, metadata !508), !dbg !691
  br label %6, !dbg !692, !llvm.loop !693

; <label>:6:                                      ; preds = %1
  %7 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !694
  %8 = icmp ne %struct._GHashTable* %7, null, !dbg !698
  br i1 %8, label %9, label %10, !dbg !694

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !699

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.chat_protocol_find_net, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !702
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !705
  br label %41, !dbg !705

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !706

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !708
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !710
  br label %14, !dbg !711

; <label>:14:                                     ; preds = %36, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !712
  %16 = icmp ne %struct._GSList* %15, null, !dbg !715
  br i1 %16, label %17, label %40, !dbg !716

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %5, metadata !717, metadata !508), !dbg !719
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !720
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !721
  %20 = load i8*, i8** %19, align 8, !dbg !721
  %21 = bitcast i8* %20 to %struct._CHAT_PROTOCOL_REC*, !dbg !720
  store %struct._CHAT_PROTOCOL_REC* %21, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !719
  %22 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !722
  %23 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %22, i32 0, i32 4, !dbg !724
  %24 = load i8*, i8** %23, align 8, !dbg !724
  %25 = icmp ne i8* %24, null, !dbg !725
  br i1 %25, label %26, label %35, !dbg !726

; <label>:26:                                     ; preds = %17
  %27 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !727
  %28 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !728
  %29 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %28, i32 0, i32 4, !dbg !729
  %30 = load i8*, i8** %29, align 8, !dbg !729
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %27, i8* %30), !dbg !730
  %32 = icmp ne i8* %31, null, !dbg !731
  br i1 %32, label %33, label %35, !dbg !732

; <label>:33:                                     ; preds = %26
  %34 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !734
  store %struct._CHAT_PROTOCOL_REC* %34, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !735
  br label %41, !dbg !735

; <label>:35:                                     ; preds = %26, %17
  br label %36, !dbg !736

; <label>:36:                                     ; preds = %35
  %37 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !737
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !739
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !739
  store %struct._GSList* %39, %struct._GSList** %4, align 8, !dbg !740
  br label %14, !dbg !741, !llvm.loop !742

; <label>:40:                                     ; preds = %14
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !744
  br label %41, !dbg !744

; <label>:41:                                     ; preds = %40, %33, %10
  %42 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !745
  ret %struct._CHAT_PROTOCOL_REC* %42, !dbg !745
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_register(%struct._CHAT_PROTOCOL_REC*) #0 !dbg !746 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %4 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %5 = alloca i32, align 4
  store %struct._CHAT_PROTOCOL_REC* %0, %struct._CHAT_PROTOCOL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %3, metadata !749, metadata !508), !dbg !750
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %4, metadata !751, metadata !508), !dbg !752
  call void @llvm.dbg.declare(metadata i32* %5, metadata !753, metadata !508), !dbg !754
  br label %6, !dbg !755, !llvm.loop !756

; <label>:6:                                      ; preds = %1
  %7 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !757
  %8 = icmp ne %struct._CHAT_PROTOCOL_REC* %7, null, !dbg !761
  br i1 %8, label %9, label %10, !dbg !757

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !762

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.chat_protocol_register, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !765
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !768
  br label %65, !dbg !768

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !769

; <label>:12:                                     ; preds = %11
  %13 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !771
  %14 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %13, i32 0, i32 2, !dbg !772
  %15 = load i8*, i8** %14, align 8, !dbg !772
  %16 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %15), !dbg !773
  store %struct._CHAT_PROTOCOL_REC* %16, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !774
  %17 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !775
  %18 = icmp eq %struct._CHAT_PROTOCOL_REC* %17, null, !dbg !776
  %19 = zext i1 %18 to i32, !dbg !776
  store i32 %19, i32* %5, align 4, !dbg !777
  %20 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !778
  %21 = icmp eq %struct._CHAT_PROTOCOL_REC* %20, null, !dbg !780
  br i1 %21, label %22, label %29, !dbg !781

; <label>:22:                                     ; preds = %12
  %23 = call noalias i8* @g_malloc0_n(i64 1, i64 104), !dbg !782
  %24 = bitcast i8* %23 to %struct._CHAT_PROTOCOL_REC*, !dbg !784
  store %struct._CHAT_PROTOCOL_REC* %24, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !785
  %25 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !786
  %26 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !787
  %27 = bitcast %struct._CHAT_PROTOCOL_REC* %26 to i8*, !dbg !787
  %28 = call %struct._GSList* @g_slist_append(%struct._GSList* %25, i8* %27), !dbg !788
  store %struct._GSList* %28, %struct._GSList** @chat_protocols, align 8, !dbg !789
  br label %33, !dbg !790

; <label>:29:                                     ; preds = %12
  %30 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !791
  %31 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %30, i32 0, i32 2, !dbg !793
  %32 = load i8*, i8** %31, align 8, !dbg !793
  call void @g_free(i8* %32), !dbg !794
  br label %33

; <label>:33:                                     ; preds = %29, %22
  %34 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !795
  %35 = bitcast %struct._CHAT_PROTOCOL_REC* %34 to i8*, !dbg !796
  %36 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !797
  %37 = bitcast %struct._CHAT_PROTOCOL_REC* %36 to i8*, !dbg !796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %37, i64 104, i32 8, i1 false), !dbg !796
  %38 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !798
  %39 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %38, i32 0, i32 2, !dbg !799
  %40 = load i8*, i8** %39, align 8, !dbg !799
  %41 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %40), !dbg !800
  %42 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !801
  %43 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %42, i32 0, i32 0, !dbg !802
  store i32 %41, i32* %43, align 8, !dbg !803
  %44 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !804
  %45 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %44, i32 0, i32 2, !dbg !805
  %46 = load i8*, i8** %45, align 8, !dbg !805
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !806
  %48 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !807
  %49 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %48, i32 0, i32 2, !dbg !808
  store i8* %47, i8** %49, align 8, !dbg !809
  %50 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** @default_proto, align 8, !dbg !810
  %51 = icmp eq %struct._CHAT_PROTOCOL_REC* %50, null, !dbg !812
  br i1 %51, label %52, label %54, !dbg !813

; <label>:52:                                     ; preds = %33
  %53 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !814
  call void @chat_protocol_set_default(%struct._CHAT_PROTOCOL_REC* %53), !dbg !815
  br label %54, !dbg !815

; <label>:54:                                     ; preds = %52, %33
  %55 = load i32, i32* %5, align 4, !dbg !816
  %56 = icmp ne i32 %55, 0, !dbg !816
  br i1 %56, label %57, label %60, !dbg !818

; <label>:57:                                     ; preds = %54
  %58 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !819
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct._CHAT_PROTOCOL_REC* %58), !dbg !820
  br label %63, !dbg !820

; <label>:60:                                     ; preds = %54
  %61 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !821
  %62 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._CHAT_PROTOCOL_REC* %61), !dbg !822
  br label %63

; <label>:63:                                     ; preds = %60, %57
  %64 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !823
  store %struct._CHAT_PROTOCOL_REC* %64, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !824
  br label %65, !dbg !824

; <label>:65:                                     ; preds = %63, %10
  %66 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !825
  ret %struct._CHAT_PROTOCOL_REC* %66, !dbg !825
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @chat_protocol_set_default(%struct._CHAT_PROTOCOL_REC*) #0 !dbg !826 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store %struct._CHAT_PROTOCOL_REC* %0, %struct._CHAT_PROTOCOL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %2, metadata !829, metadata !508), !dbg !830
  %3 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !831
  store %struct._CHAT_PROTOCOL_REC* %3, %struct._CHAT_PROTOCOL_REC** @default_proto, align 8, !dbg !832
  ret void, !dbg !833
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @chat_protocol_unregister(i8*) #0 !dbg !834 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !837, metadata !508), !dbg !838
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %3, metadata !839, metadata !508), !dbg !840
  br label %4, !dbg !841, !llvm.loop !842

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !843
  %6 = icmp ne i8* %5, null, !dbg !847
  br i1 %6, label %7, label %8, !dbg !843

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !848

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.chat_protocol_unregister, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !851
  br label %19, !dbg !854

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !855

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !857
  %12 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %11), !dbg !858
  store %struct._CHAT_PROTOCOL_REC* %12, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !859
  %13 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !860
  %14 = icmp ne %struct._CHAT_PROTOCOL_REC* %13, null, !dbg !862
  br i1 %14, label %15, label %19, !dbg !863

; <label>:15:                                     ; preds = %10
  %16 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !864
  call void @chat_protocol_destroy(%struct._CHAT_PROTOCOL_REC* %16), !dbg !866
  %17 = load i8*, i8** %2, align 8, !dbg !867
  %18 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_unknown(i8* %17), !dbg !868
  br label %19, !dbg !869

; <label>:19:                                     ; preds = %8, %15, %10
  ret void, !dbg !870
}

; Function Attrs: nounwind uwtable
define internal void @chat_protocol_destroy(%struct._CHAT_PROTOCOL_REC*) #0 !dbg !871 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store %struct._CHAT_PROTOCOL_REC* %0, %struct._CHAT_PROTOCOL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %2, metadata !872, metadata !508), !dbg !873
  br label %3, !dbg !874, !llvm.loop !875

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !876
  %5 = icmp ne %struct._CHAT_PROTOCOL_REC* %4, null, !dbg !880
  br i1 %5, label %6, label %7, !dbg !876

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !881

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.chat_protocol_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !884
  br label %36, !dbg !887

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !888

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !890
  %11 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !891
  %12 = bitcast %struct._CHAT_PROTOCOL_REC* %11 to i8*, !dbg !891
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !892
  store %struct._GSList* %13, %struct._GSList** @chat_protocols, align 8, !dbg !893
  %14 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** @default_proto, align 8, !dbg !894
  %15 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !896
  %16 = icmp eq %struct._CHAT_PROTOCOL_REC* %14, %15, !dbg !897
  br i1 %16, label %17, label %28, !dbg !898

; <label>:17:                                     ; preds = %9
  %18 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !899
  %19 = icmp eq %struct._GSList* %18, null, !dbg !901
  br i1 %19, label %20, label %21, !dbg !899

; <label>:20:                                     ; preds = %17
  br label %25, !dbg !902

; <label>:21:                                     ; preds = %17
  %22 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !904
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !905
  %24 = load i8*, i8** %23, align 8, !dbg !905
  br label %25, !dbg !906

; <label>:25:                                     ; preds = %21, %20
  %26 = phi i8* [ null, %20 ], [ %24, %21 ], !dbg !908
  %27 = bitcast i8* %26 to %struct._CHAT_PROTOCOL_REC*, !dbg !908
  call void @chat_protocol_set_default(%struct._CHAT_PROTOCOL_REC* %27), !dbg !910
  br label %28, !dbg !911

; <label>:28:                                     ; preds = %25, %9
  %29 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !912
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct._CHAT_PROTOCOL_REC* %29), !dbg !913
  %31 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !914
  %32 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %31, i32 0, i32 2, !dbg !915
  %33 = load i8*, i8** %32, align 8, !dbg !915
  call void @g_free(i8* %33), !dbg !916
  %34 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !917
  %35 = bitcast %struct._CHAT_PROTOCOL_REC* %34 to i8*, !dbg !917
  call void @g_free(i8* %35), !dbg !918
  br label %36, !dbg !919

; <label>:36:                                     ; preds = %28, %7
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_unknown(i8*) #0 !dbg !922 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %5 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !923, metadata !508), !dbg !924
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %4, metadata !925, metadata !508), !dbg !926
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %5, metadata !927, metadata !508), !dbg !928
  br label %6, !dbg !929, !llvm.loop !930

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !931
  %8 = icmp ne i8* %7, null, !dbg !935
  br i1 %8, label %9, label %10, !dbg !931

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !936

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.chat_protocol_get_unknown, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !939
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !942
  br label %45, !dbg !942

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !943

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !945
  %14 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* %13), !dbg !946
  store %struct._CHAT_PROTOCOL_REC* %14, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !947
  %15 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !948
  %16 = icmp ne %struct._CHAT_PROTOCOL_REC* %15, null, !dbg !950
  br i1 %16, label %17, label %19, !dbg !951

; <label>:17:                                     ; preds = %12
  %18 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !952
  store %struct._CHAT_PROTOCOL_REC* %18, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !953
  br label %45, !dbg !953

; <label>:19:                                     ; preds = %12
  %20 = call noalias i8* @g_malloc0_n(i64 1, i64 104), !dbg !954
  %21 = bitcast i8* %20 to %struct._CHAT_PROTOCOL_REC*, !dbg !955
  store %struct._CHAT_PROTOCOL_REC* %21, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !956
  %22 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !957
  %23 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %22, i32 0, i32 1, !dbg !958
  %24 = load i8, i8* %23, align 4, !dbg !959
  %25 = and i8 %24, -2, !dbg !959
  %26 = or i8 %25, 1, !dbg !959
  store i8 %26, i8* %23, align 4, !dbg !959
  %27 = load i8*, i8** %3, align 8, !dbg !960
  %28 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !961
  %29 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %28, i32 0, i32 2, !dbg !962
  store i8* %27, i8** %29, align 8, !dbg !963
  %30 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !964
  %31 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %30, i32 0, i32 5, !dbg !965
  store %struct._CHATNET_REC* ()* @create_chatnet, %struct._CHATNET_REC* ()** %31, align 8, !dbg !966
  %32 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !967
  %33 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %32, i32 0, i32 6, !dbg !968
  store %struct._SERVER_SETUP_REC* ()* @create_server_setup, %struct._SERVER_SETUP_REC* ()** %33, align 8, !dbg !969
  %34 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !970
  %35 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %34, i32 0, i32 7, !dbg !971
  store %struct._CHANNEL_SETUP_REC* ()* @create_channel_setup, %struct._CHANNEL_SETUP_REC* ()** %35, align 8, !dbg !972
  %36 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !973
  %37 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %36, i32 0, i32 8, !dbg !974
  store %struct._SERVER_CONNECT_REC* ()* @create_server_connect, %struct._SERVER_CONNECT_REC* ()** %37, align 8, !dbg !975
  %38 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !976
  %39 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %38, i32 0, i32 9, !dbg !977
  store void (%struct._SERVER_CONNECT_REC*)* @destroy_server_connect, void (%struct._SERVER_CONNECT_REC*)** %39, align 8, !dbg !978
  %40 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !979
  %41 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_register(%struct._CHAT_PROTOCOL_REC* %40), !dbg !980
  store %struct._CHAT_PROTOCOL_REC* %41, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !981
  %42 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !982
  %43 = bitcast %struct._CHAT_PROTOCOL_REC* %42 to i8*, !dbg !982
  call void @g_free(i8* %43), !dbg !983
  %44 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %5, align 8, !dbg !984
  store %struct._CHAT_PROTOCOL_REC* %44, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !985
  br label %45, !dbg !985

; <label>:45:                                     ; preds = %19, %17, %10
  %46 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !986
  ret %struct._CHAT_PROTOCOL_REC* %46, !dbg !986
}

; Function Attrs: nounwind uwtable
define %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #0 !dbg !987 {
  %1 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** @default_proto, align 8, !dbg !990
  ret %struct._CHAT_PROTOCOL_REC* %1, !dbg !991
}

; Function Attrs: nounwind uwtable
define internal %struct._CHATNET_REC* @create_chatnet() #0 !dbg !992 {
  %1 = call noalias i8* @g_malloc0_n(i64 1, i64 72), !dbg !993
  %2 = bitcast i8* %1 to %struct._CHATNET_REC*, !dbg !994
  ret %struct._CHATNET_REC* %2, !dbg !995
}

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_SETUP_REC* @create_server_setup() #0 !dbg !996 {
  %1 = call noalias i8* @g_malloc0_n(i64 1, i64 176), !dbg !997
  %2 = bitcast i8* %1 to %struct._SERVER_SETUP_REC*, !dbg !998
  ret %struct._SERVER_SETUP_REC* %2, !dbg !999
}

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_SETUP_REC* @create_channel_setup() #0 !dbg !1000 {
  %1 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !1001
  %2 = bitcast i8* %1 to %struct._CHANNEL_SETUP_REC*, !dbg !1002
  ret %struct._CHANNEL_SETUP_REC* %2, !dbg !1003
}

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @create_server_connect() #0 !dbg !1004 {
  %1 = call noalias i8* @g_malloc0_n(i64 1, i64 240), !dbg !1005
  %2 = bitcast i8* %1 to %struct._SERVER_CONNECT_REC*, !dbg !1006
  ret %struct._SERVER_CONNECT_REC* %2, !dbg !1007
}

; Function Attrs: nounwind uwtable
define internal void @destroy_server_connect(%struct._SERVER_CONNECT_REC*) #0 !dbg !1008 {
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !1009, metadata !508), !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: nounwind uwtable
define void @chat_protocols_init() #0 !dbg !1012 {
  store %struct._CHAT_PROTOCOL_REC* null, %struct._CHAT_PROTOCOL_REC** @default_proto, align 8, !dbg !1013
  store %struct._GSList* null, %struct._GSList** @chat_protocols, align 8, !dbg !1014
  ret void, !dbg !1015
}

; Function Attrs: nounwind uwtable
define void @chat_protocols_deinit() #0 !dbg !1016 {
  br label %1, !dbg !1017

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !1018
  %3 = icmp ne %struct._GSList* %2, null, !dbg !1020
  br i1 %3, label %4, label %9, !dbg !1021

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @chat_protocols, align 8, !dbg !1022
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !1023
  %7 = load i8*, i8** %6, align 8, !dbg !1023
  %8 = bitcast i8* %7 to %struct._CHAT_PROTOCOL_REC*, !dbg !1022
  call void @chat_protocol_destroy(%struct._CHAT_PROTOCOL_REC* %8), !dbg !1024
  br label %1, !dbg !1025, !llvm.loop !1027

; <label>:9:                                      ; preds = %1
  ret void, !dbg !1028
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!500, !501}
!llvm.ident = !{!502}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !496)
!1 = !DIFile(filename: "line27-chat-protocols.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !39, !41, !45, !47, !50, !52, !63, !70, !93, !141, !160}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !40, line: 77, baseType: !36)
!40 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint8", file: !43, line: 38, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !40, line: 48, baseType: !46)
!46 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !40, line: 46, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !54, line: 105, baseType: !55)
!54 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !56, line: 4, size: 832, align: 64, elements: !57)
!56 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !{!58, !59, !61, !62, !64, !65, !66, !89, !137, !156, !381, !385, !484, !488, !492}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !55, file: !56, line: 5, baseType: !38, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !55, file: !56, line: 7, baseType: !60, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !55, file: !56, line: 8, baseType: !60, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !56, line: 10, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !55, file: !56, line: 11, baseType: !63, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !55, file: !56, line: 12, baseType: !63, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !55, file: !56, line: 14, baseType: !67, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !54, line: 106, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !73, line: 13, size: 576, align: 64, elements: !74)
!73 = !DIFile(filename: "chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !77, !78, !79, !80, !81, !82, !83, !84, !88}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !76, line: 1, baseType: !38, size: 32, align: 32)
!76 = !DIFile(filename: "chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !76, line: 2, baseType: !38, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !76, line: 4, baseType: !63, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !72, file: !76, line: 6, baseType: !63, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !72, file: !76, line: 7, baseType: !63, size: 64, align: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !72, file: !76, line: 8, baseType: !63, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !72, file: !76, line: 10, baseType: !63, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !72, file: !76, line: 11, baseType: !63, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !72, file: !76, line: 12, baseType: !85, size: 64, align: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !54, line: 99, baseType: !87)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !54, line: 99, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !72, file: !76, line: 12, baseType: !85, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !55, file: !56, line: 15, baseType: !90, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !54, line: 114, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !96, line: 13, size: 1408, align: 64, elements: !97)
!96 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !{!98, !100, !101, !102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !125, !126, !127, !128, !129, !130, !131, !132}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !99, line: 1, baseType: !38, size: 32, align: 32)
!99 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !95, file: !99, line: 2, baseType: !38, size: 32, align: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !95, file: !99, line: 4, baseType: !63, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !95, file: !99, line: 6, baseType: !103, size: 16, align: 16, offset: 128)
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !95, file: !99, line: 7, baseType: !63, size: 64, align: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !95, file: !99, line: 8, baseType: !38, size: 32, align: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !95, file: !99, line: 9, baseType: !63, size: 64, align: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !95, file: !99, line: 11, baseType: !38, size: 32, align: 32, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !95, file: !99, line: 12, baseType: !63, size: 64, align: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !95, file: !99, line: 14, baseType: !63, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !95, file: !99, line: 15, baseType: !63, size: 64, align: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !95, file: !99, line: 16, baseType: !63, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !95, file: !99, line: 17, baseType: !63, size: 64, align: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !95, file: !99, line: 18, baseType: !63, size: 64, align: 64, offset: 768)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !95, file: !99, line: 19, baseType: !63, size: 64, align: 64, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !95, file: !99, line: 20, baseType: !63, size: 64, align: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !95, file: !99, line: 21, baseType: !63, size: 64, align: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !95, file: !99, line: 23, baseType: !63, size: 64, align: 64, offset: 1024)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !95, file: !99, line: 24, baseType: !85, size: 64, align: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !95, file: !99, line: 24, baseType: !85, size: 64, align: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !95, file: !99, line: 26, baseType: !121, size: 64, align: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !122, line: 75, baseType: !123)
!122 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !124, line: 139, baseType: !46)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !95, file: !99, line: 28, baseType: !60, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !95, file: !99, line: 29, baseType: !60, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !95, file: !99, line: 30, baseType: !60, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !95, file: !99, line: 31, baseType: !60, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !95, file: !99, line: 32, baseType: !60, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !95, file: !99, line: 33, baseType: !60, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !95, file: !99, line: 34, baseType: !60, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !95, file: !99, line: 36, baseType: !133, size: 64, align: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !135, line: 37, baseType: !136)
!135 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !135, line: 37, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !55, file: !56, line: 16, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !54, line: 115, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !144, line: 12, size: 512, align: 64, elements: !145)
!144 = !DIFile(filename: "channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = !{!146, !148, !149, !150, !151, !152, !153, !154, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !147, line: 1, baseType: !38, size: 32, align: 32)
!147 = !DIFile(filename: "channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !143, file: !147, line: 2, baseType: !38, size: 32, align: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !147, line: 4, baseType: !63, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !143, file: !147, line: 5, baseType: !63, size: 64, align: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !143, file: !147, line: 6, baseType: !63, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !143, file: !147, line: 8, baseType: !63, size: 64, align: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !143, file: !147, line: 9, baseType: !63, size: 64, align: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !143, file: !147, line: 11, baseType: !60, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !143, file: !147, line: 12, baseType: !133, size: 64, align: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !55, file: !56, line: 17, baseType: !157, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !54, line: 113, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !163, line: 25, size: 1920, align: 64, elements: !164)
!163 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !{!165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !166, line: 3, baseType: !38, size: 32, align: 32)
!166 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !162, file: !166, line: 4, baseType: !38, size: 32, align: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !162, file: !166, line: 6, baseType: !38, size: 32, align: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !162, file: !166, line: 9, baseType: !63, size: 64, align: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !162, file: !166, line: 10, baseType: !38, size: 32, align: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !162, file: !166, line: 11, baseType: !63, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !162, file: !166, line: 11, baseType: !63, size: 64, align: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !162, file: !166, line: 11, baseType: !63, size: 64, align: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !162, file: !166, line: 13, baseType: !103, size: 16, align: 16, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !162, file: !166, line: 14, baseType: !63, size: 64, align: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !162, file: !166, line: 15, baseType: !63, size: 64, align: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !162, file: !166, line: 16, baseType: !38, size: 32, align: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !162, file: !166, line: 17, baseType: !63, size: 64, align: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !162, file: !166, line: 19, baseType: !85, size: 64, align: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !162, file: !166, line: 19, baseType: !85, size: 64, align: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !162, file: !166, line: 21, baseType: !63, size: 64, align: 64, offset: 896)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !162, file: !166, line: 22, baseType: !63, size: 64, align: 64, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !162, file: !166, line: 23, baseType: !63, size: 64, align: 64, offset: 1024)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !162, file: !166, line: 24, baseType: !63, size: 64, align: 64, offset: 1088)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !162, file: !166, line: 26, baseType: !63, size: 64, align: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !162, file: !166, line: 27, baseType: !63, size: 64, align: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !162, file: !166, line: 28, baseType: !63, size: 64, align: 64, offset: 1280)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !162, file: !166, line: 29, baseType: !63, size: 64, align: 64, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !162, file: !166, line: 30, baseType: !63, size: 64, align: 64, offset: 1408)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !162, file: !166, line: 31, baseType: !63, size: 64, align: 64, offset: 1472)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !162, file: !166, line: 32, baseType: !63, size: 64, align: 64, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !162, file: !166, line: 33, baseType: !63, size: 64, align: 64, offset: 1600)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !162, file: !166, line: 35, baseType: !194, size: 64, align: 64, offset: 1664)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !197)
!197 = !{!198, !200, !338, !339, !344, !345, !346, !347, !348, !357, !358, !359, !363, !364, !365, !366, !367, !368, !369, !370}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !196, file: !4, line: 100, baseType: !199, size: 32, align: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !40, line: 49, baseType: !38)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !196, file: !4, line: 101, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !204)
!204 = !{!205, !225, !231, !237, !241, !325, !329, !334}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !203, file: !4, line: 133, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !194, !47, !210, !212, !213}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !43, line: 66, baseType: !211)
!211 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !216, line: 42, baseType: !217)
!216 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !216, line: 44, size: 128, align: 64, elements: !218)
!218 = !{!219, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !217, file: !216, line: 46, baseType: !220, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !221, line: 36, baseType: !222)
!221 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !43, line: 45, baseType: !60)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !217, file: !216, line: 47, baseType: !199, size: 32, align: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !217, file: !216, line: 48, baseType: !47, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !203, file: !4, line: 138, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!209, !194, !229, !210, !212, !213}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !203, file: !4, line: 143, baseType: !232, size: 64, align: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!209, !194, !235, !236, !213}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !43, line: 51, baseType: !46)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !203, file: !4, line: 147, baseType: !238, size: 64, align: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!209, !194, !213}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !203, file: !4, line: 149, baseType: !242, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !194, !324}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !248)
!248 = !{!249, !250, !271, !300, !302, !306, !307, !308, !309, !317, !318, !319, !320}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !247, file: !16, line: 174, baseType: !39, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !247, file: !16, line: 175, baseType: !251, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !254)
!254 = !{!255, !259, !260}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !253, file: !16, line: 198, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !39}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !253, file: !16, line: 199, baseType: !256, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !253, file: !16, line: 200, baseType: !261, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !39, !245, !264, !270}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !39}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !40, line: 50, baseType: !199)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !247, file: !16, line: 177, baseType: !272, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !276)
!276 = !{!277, !282, !286, !290, !294, !295}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !275, file: !16, line: 216, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!269, !245, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !275, file: !16, line: 218, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!269, !245}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !275, file: !16, line: 219, baseType: !287, size: 64, align: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!269, !245, !265, !39}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !275, file: !16, line: 222, baseType: !291, size: 64, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !245}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !275, file: !16, line: 226, baseType: !265, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !275, file: !16, line: 227, baseType: !296, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !247, file: !16, line: 178, baseType: !301, size: 32, align: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !40, line: 55, baseType: !60)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !247, file: !16, line: 180, baseType: !303, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !247, file: !16, line: 182, baseType: !199, size: 32, align: 32, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !16, line: 183, baseType: !301, size: 32, align: 32, offset: 352)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !247, file: !16, line: 184, baseType: !301, size: 32, align: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !247, file: !16, line: 186, baseType: !310, size: 64, align: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !312, line: 37, baseType: !313)
!312 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !312, line: 39, size: 128, align: 64, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !313, file: !312, line: 41, baseType: !39, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !312, line: 42, baseType: !310, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !247, file: !16, line: 188, baseType: !245, size: 64, align: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !16, line: 189, baseType: !245, size: 64, align: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !16, line: 191, baseType: !63, size: 64, align: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !247, file: !16, line: 193, baseType: !321, size: 64, align: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !323)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !203, file: !4, line: 151, baseType: !326, size: 64, align: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !194}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !203, file: !4, line: 152, baseType: !330, size: 64, align: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!209, !194, !333, !213}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !203, file: !4, line: 155, baseType: !335, size: 64, align: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!333, !194}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !196, file: !4, line: 103, baseType: !47, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !196, file: !4, line: 104, baseType: !340, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !341, line: 77, baseType: !342)
!341 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !341, line: 77, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !196, file: !4, line: 105, baseType: !340, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !196, file: !4, line: 106, baseType: !47, size: 64, align: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !196, file: !4, line: 107, baseType: !301, size: 32, align: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !196, file: !4, line: 109, baseType: !210, size: 64, align: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !196, file: !4, line: 110, baseType: !349, size: 64, align: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !351, line: 39, baseType: !352)
!351 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !351, line: 41, size: 192, align: 64, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !352, file: !351, line: 43, baseType: !47, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !352, file: !351, line: 44, baseType: !210, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !352, file: !351, line: 45, baseType: !210, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !196, file: !4, line: 111, baseType: !349, size: 64, align: 64, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !196, file: !4, line: 112, baseType: !349, size: 64, align: 64, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !196, file: !4, line: 113, baseType: !360, size: 48, align: 8, offset: 704)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 48, align: 8, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 6)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !196, file: !4, line: 117, baseType: !301, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !196, file: !4, line: 118, baseType: !301, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !196, file: !4, line: 119, baseType: !301, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !196, file: !4, line: 120, baseType: !301, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !196, file: !4, line: 121, baseType: !301, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !196, file: !4, line: 122, baseType: !301, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !196, file: !4, line: 124, baseType: !39, size: 64, align: 64, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !196, file: !4, line: 125, baseType: !39, size: 64, align: 64, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !162, file: !166, line: 38, baseType: !60, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !162, file: !166, line: 39, baseType: !60, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !162, file: !166, line: 40, baseType: !60, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !162, file: !166, line: 41, baseType: !60, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !162, file: !166, line: 42, baseType: !60, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !162, file: !166, line: 43, baseType: !60, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !162, file: !166, line: 44, baseType: !60, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !162, file: !166, line: 45, baseType: !60, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !162, file: !166, line: 46, baseType: !63, size: 64, align: 64, offset: 1792)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !162, file: !166, line: 47, baseType: !63, size: 64, align: 64, offset: 1856)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !55, file: !56, line: 18, baseType: !382, size: 64, align: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !160}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !55, file: !56, line: 20, baseType: !386, size: 64, align: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !160}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !54, line: 107, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !163, line: 30, size: 2240, align: 64, elements: !392)
!392 = !{!393, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !411, !412, !416, !417, !418, !422, !423, !424, !425, !426, !427, !428, !429, !430, !436, !437, !438, !439, !440, !444, !448, !452, !456, !460, !465, !472, !479, !483}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !394, line: 3, baseType: !38, size: 32, align: 32)
!394 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !391, file: !394, line: 4, baseType: !38, size: 32, align: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !391, file: !394, line: 6, baseType: !38, size: 32, align: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !391, file: !394, line: 8, baseType: !160, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !391, file: !394, line: 9, baseType: !121, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !391, file: !394, line: 10, baseType: !121, size: 64, align: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !391, file: !394, line: 12, baseType: !63, size: 64, align: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !391, file: !394, line: 13, baseType: !63, size: 64, align: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !391, file: !394, line: 15, baseType: !60, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !391, file: !394, line: 16, baseType: !60, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !391, file: !394, line: 17, baseType: !60, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !391, file: !394, line: 18, baseType: !60, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !391, file: !394, line: 19, baseType: !60, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !391, file: !394, line: 21, baseType: !408, size: 64, align: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !54, line: 102, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !54, line: 102, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !391, file: !394, line: 22, baseType: !38, size: 32, align: 32, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !391, file: !394, line: 25, baseType: !413, size: 128, align: 64, offset: 640)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, align: 64, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 2)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !391, file: !394, line: 26, baseType: !38, size: 32, align: 32, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !391, file: !394, line: 27, baseType: !38, size: 32, align: 32, offset: 800)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !391, file: !394, line: 29, baseType: !419, size: 64, align: 64, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !54, line: 103, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !54, line: 103, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !391, file: !394, line: 30, baseType: !133, size: 64, align: 64, offset: 896)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !391, file: !394, line: 32, baseType: !63, size: 64, align: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !391, file: !394, line: 33, baseType: !63, size: 64, align: 64, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !391, file: !394, line: 34, baseType: !63, size: 64, align: 64, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !391, file: !394, line: 35, baseType: !60, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !391, file: !394, line: 36, baseType: !60, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !391, file: !394, line: 37, baseType: !60, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !391, file: !394, line: 38, baseType: !60, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !391, file: !394, line: 40, baseType: !431, size: 128, align: 64, offset: 1216)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !40, line: 504, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !40, line: 506, size: 128, align: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !432, file: !40, line: 508, baseType: !45, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !432, file: !40, line: 509, baseType: !45, size: 64, align: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !391, file: !394, line: 41, baseType: !121, size: 64, align: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !391, file: !394, line: 42, baseType: !38, size: 32, align: 32, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !391, file: !394, line: 44, baseType: !310, size: 64, align: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !391, file: !394, line: 45, baseType: !310, size: 64, align: 64, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !391, file: !394, line: 53, baseType: !441, size: 64, align: 64, offset: 1600)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !389, !50, !38}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !391, file: !394, line: 55, baseType: !445, size: 64, align: 64, offset: 1664)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!38, !389, !49}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !391, file: !394, line: 57, baseType: !449, size: 64, align: 64, offset: 1728)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!38, !389, !50}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !391, file: !394, line: 60, baseType: !453, size: 64, align: 64, offset: 1792)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!50, !389}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !391, file: !394, line: 62, baseType: !457, size: 64, align: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !389, !50, !50, !38}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !391, file: !394, line: 65, baseType: !461, size: 64, align: 64, offset: 1920)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !389, !50, !50}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !391, file: !394, line: 69, baseType: !466, size: 64, align: 64, offset: 1984)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !389, !50}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !54, line: 109, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !54, line: 109, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !391, file: !394, line: 70, baseType: !473, size: 64, align: 64, offset: 2048)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !389, !50}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !54, line: 110, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !54, line: 110, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !391, file: !394, line: 71, baseType: !480, size: 64, align: 64, offset: 2112)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!38, !50, !50}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !391, file: !394, line: 73, baseType: !480, size: 64, align: 64, offset: 2176)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !55, file: !56, line: 21, baseType: !485, size: 64, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !389}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !55, file: !56, line: 22, baseType: !489, size: 64, align: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!469, !389, !50, !50, !38}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !55, file: !56, line: 24, baseType: !493, size: 64, align: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!476, !50, !50, !38}
!496 = !{!497, !499}
!497 = distinct !DIGlobalVariable(name: "chat_protocols", scope: !0, file: !498, line: 31, type: !310, isLocal: false, isDefinition: true, variable: %struct._GSList** @chat_protocols)
!498 = !DIFile(filename: "chat-protocols.c", directory: "/home/lichi/Desktop/irssi/task1")
!499 = distinct !DIGlobalVariable(name: "default_proto", scope: !0, file: !498, line: 33, type: !52, isLocal: true, isDefinition: true, variable: %struct._CHAT_PROTOCOL_REC** @default_proto)
!500 = !{i32 2, !"Dwarf Version", i32 4}
!501 = !{i32 2, !"Debug Info Version", i32 3}
!502 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!503 = distinct !DISubprogram(name: "chat_protocol_check_cast", scope: !498, file: !498, line: 35, type: !504, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!36, !36, !38, !50}
!506 = !{}
!507 = !DILocalVariable(name: "object", arg: 1, scope: !503, file: !498, line: 35, type: !36)
!508 = !DIExpression()
!509 = !DILocation(line: 35, column: 38, scope: !503)
!510 = !DILocalVariable(name: "type_pos", arg: 2, scope: !503, file: !498, line: 35, type: !38)
!511 = !DILocation(line: 35, column: 50, scope: !503)
!512 = !DILocalVariable(name: "id", arg: 3, scope: !503, file: !498, line: 35, type: !50)
!513 = !DILocation(line: 35, column: 72, scope: !503)
!514 = !DILocation(line: 37, column: 9, scope: !503)
!515 = !DILocation(line: 37, column: 16, scope: !503)
!516 = !DILocation(line: 37, column: 23, scope: !503)
!517 = !DILocation(line: 38, column: 24, scope: !503)
!518 = !DILocation(line: 38, column: 3, scope: !503)
!519 = !DILocation(line: 39, column: 37, scope: !503)
!520 = !DILocation(line: 39, column: 58, scope: !503)
!521 = !DILocation(line: 39, column: 48, scope: !503)
!522 = !DILocation(line: 39, column: 46, scope: !503)
!523 = !DILocation(line: 39, column: 5, scope: !503)
!524 = !DILocation(line: 39, column: 4, scope: !503)
!525 = !DILocation(line: 38, column: 28, scope: !503)
!526 = !DILocation(line: 37, column: 9, scope: !527)
!527 = !DILexicalBlockFile(scope: !503, file: !498, discriminator: 1)
!528 = !DILocation(line: 37, column: 9, scope: !529)
!529 = !DILexicalBlockFile(scope: !503, file: !498, discriminator: 2)
!530 = !DILocation(line: 39, column: 50, scope: !527)
!531 = !DILocation(line: 37, column: 9, scope: !532)
!532 = !DILexicalBlockFile(scope: !503, file: !498, discriminator: 3)
!533 = !DILocation(line: 37, column: 9, scope: !534)
!534 = !DILexicalBlockFile(scope: !503, file: !498, discriminator: 4)
!535 = !DILocation(line: 37, column: 2, scope: !534)
!536 = distinct !DISubprogram(name: "chat_protocol_lookup", scope: !498, file: !498, line: 43, type: !537, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!537 = !DISubroutineType(types: !538)
!538 = !{!38, !50}
!539 = !DILocalVariable(name: "name", arg: 1, scope: !536, file: !498, line: 43, type: !50)
!540 = !DILocation(line: 43, column: 38, scope: !536)
!541 = !DILocalVariable(name: "rec", scope: !536, file: !498, line: 45, type: !52)
!542 = !DILocation(line: 45, column: 21, scope: !536)
!543 = !DILocation(line: 47, column: 2, scope: !536)
!544 = distinct !{!544, !543}
!545 = !DILocation(line: 47, column: 10, scope: !546)
!546 = !DILexicalBlockFile(scope: !547, file: !498, discriminator: 1)
!547 = distinct !DILexicalBlock(scope: !548, file: !498, line: 47, column: 10)
!548 = distinct !DILexicalBlock(scope: !536, file: !498, line: 47, column: 4)
!549 = !DILocation(line: 47, column: 15, scope: !546)
!550 = !DILocation(line: 47, column: 5, scope: !551)
!551 = !DILexicalBlockFile(scope: !552, file: !498, discriminator: 2)
!552 = distinct !DILexicalBlock(scope: !547, file: !498, line: 47, column: 3)
!553 = !DILocation(line: 47, column: 14, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !498, discriminator: 3)
!555 = distinct !DILexicalBlock(scope: !547, file: !498, line: 47, column: 12)
!556 = !DILocation(line: 47, column: 99, scope: !554)
!557 = !DILocation(line: 47, column: 115, scope: !558)
!558 = !DILexicalBlockFile(scope: !548, file: !498, discriminator: 4)
!559 = !DILocation(line: 49, column: 27, scope: !536)
!560 = !DILocation(line: 49, column: 8, scope: !536)
!561 = !DILocation(line: 49, column: 6, scope: !536)
!562 = !DILocation(line: 50, column: 9, scope: !536)
!563 = !DILocation(line: 50, column: 13, scope: !536)
!564 = !DILocation(line: 50, column: 9, scope: !565)
!565 = !DILexicalBlockFile(scope: !536, file: !498, discriminator: 1)
!566 = !DILocation(line: 50, column: 27, scope: !567)
!567 = !DILexicalBlockFile(scope: !536, file: !498, discriminator: 2)
!568 = !DILocation(line: 50, column: 32, scope: !567)
!569 = !DILocation(line: 50, column: 9, scope: !567)
!570 = !DILocation(line: 50, column: 9, scope: !571)
!571 = !DILexicalBlockFile(scope: !536, file: !498, discriminator: 3)
!572 = !DILocation(line: 50, column: 2, scope: !571)
!573 = !DILocation(line: 51, column: 1, scope: !536)
!574 = distinct !DISubprogram(name: "chat_protocol_find", scope: !498, file: !498, line: 53, type: !575, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!575 = !DISubroutineType(types: !576)
!576 = !{!52, !50}
!577 = !DILocalVariable(name: "name", arg: 1, scope: !574, file: !498, line: 53, type: !50)
!578 = !DILocation(line: 53, column: 51, scope: !574)
!579 = !DILocalVariable(name: "tmp", scope: !574, file: !498, line: 55, type: !310)
!580 = !DILocation(line: 55, column: 10, scope: !574)
!581 = !DILocation(line: 57, column: 2, scope: !574)
!582 = distinct !{!582, !581}
!583 = !DILocation(line: 57, column: 10, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !498, discriminator: 1)
!585 = distinct !DILexicalBlock(scope: !586, file: !498, line: 57, column: 10)
!586 = distinct !DILexicalBlock(scope: !574, file: !498, line: 57, column: 4)
!587 = !DILocation(line: 57, column: 15, scope: !584)
!588 = !DILocation(line: 57, column: 5, scope: !589)
!589 = !DILexicalBlockFile(scope: !590, file: !498, discriminator: 2)
!590 = distinct !DILexicalBlock(scope: !585, file: !498, line: 57, column: 3)
!591 = !DILocation(line: 57, column: 14, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !498, discriminator: 3)
!593 = distinct !DILexicalBlock(scope: !585, file: !498, line: 57, column: 12)
!594 = !DILocation(line: 57, column: 99, scope: !592)
!595 = !DILocation(line: 57, column: 7, scope: !596)
!596 = !DILexicalBlockFile(scope: !586, file: !498, discriminator: 4)
!597 = !DILocation(line: 59, column: 13, scope: !598)
!598 = distinct !DILexicalBlock(scope: !574, file: !498, line: 59, column: 2)
!599 = !DILocation(line: 59, column: 11, scope: !598)
!600 = !DILocation(line: 59, column: 7, scope: !598)
!601 = !DILocation(line: 59, column: 29, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !498, discriminator: 1)
!603 = distinct !DILexicalBlock(scope: !598, file: !498, line: 59, column: 2)
!604 = !DILocation(line: 59, column: 33, scope: !602)
!605 = !DILocation(line: 59, column: 2, scope: !602)
!606 = !DILocalVariable(name: "rec", scope: !607, file: !498, line: 60, type: !52)
!607 = distinct !DILexicalBlock(scope: !603, file: !498, line: 59, column: 58)
!608 = !DILocation(line: 60, column: 22, scope: !607)
!609 = !DILocation(line: 60, column: 28, scope: !607)
!610 = !DILocation(line: 60, column: 33, scope: !607)
!611 = !DILocation(line: 62, column: 26, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !498, line: 62, column: 7)
!613 = !DILocation(line: 62, column: 31, scope: !612)
!614 = !DILocation(line: 62, column: 37, scope: !612)
!615 = !DILocation(line: 62, column: 7, scope: !612)
!616 = !DILocation(line: 62, column: 43, scope: !612)
!617 = !DILocation(line: 62, column: 7, scope: !607)
!618 = !DILocation(line: 63, column: 11, scope: !612)
!619 = !DILocation(line: 63, column: 4, scope: !612)
!620 = !DILocation(line: 64, column: 2, scope: !607)
!621 = !DILocation(line: 59, column: 47, scope: !622)
!622 = !DILexicalBlockFile(scope: !603, file: !498, discriminator: 2)
!623 = !DILocation(line: 59, column: 52, scope: !622)
!624 = !DILocation(line: 59, column: 45, scope: !622)
!625 = !DILocation(line: 59, column: 2, scope: !622)
!626 = distinct !{!626, !627}
!627 = !DILocation(line: 59, column: 2, scope: !574)
!628 = !DILocation(line: 66, column: 2, scope: !574)
!629 = !DILocation(line: 67, column: 1, scope: !574)
!630 = distinct !DISubprogram(name: "chat_protocol_find_id", scope: !498, file: !498, line: 69, type: !631, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!631 = !DISubroutineType(types: !632)
!632 = !{!52, !38}
!633 = !DILocalVariable(name: "id", arg: 1, scope: !630, file: !498, line: 69, type: !38)
!634 = !DILocation(line: 69, column: 46, scope: !630)
!635 = !DILocalVariable(name: "tmp", scope: !630, file: !498, line: 71, type: !310)
!636 = !DILocation(line: 71, column: 10, scope: !630)
!637 = !DILocation(line: 73, column: 2, scope: !630)
!638 = distinct !{!638, !637}
!639 = !DILocation(line: 73, column: 10, scope: !640)
!640 = !DILexicalBlockFile(scope: !641, file: !498, discriminator: 1)
!641 = distinct !DILexicalBlock(scope: !642, file: !498, line: 73, column: 10)
!642 = distinct !DILexicalBlock(scope: !630, file: !498, line: 73, column: 4)
!643 = !DILocation(line: 73, column: 13, scope: !640)
!644 = !DILocation(line: 73, column: 20, scope: !645)
!645 = !DILexicalBlockFile(scope: !646, file: !498, discriminator: 2)
!646 = distinct !DILexicalBlock(scope: !641, file: !498, line: 73, column: 18)
!647 = !DILocation(line: 73, column: 29, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !498, discriminator: 3)
!649 = distinct !DILexicalBlock(scope: !641, file: !498, line: 73, column: 27)
!650 = !DILocation(line: 73, column: 108, scope: !648)
!651 = !DILocation(line: 73, column: 7, scope: !652)
!652 = !DILexicalBlockFile(scope: !642, file: !498, discriminator: 4)
!653 = !DILocation(line: 75, column: 13, scope: !654)
!654 = distinct !DILexicalBlock(scope: !630, file: !498, line: 75, column: 2)
!655 = !DILocation(line: 75, column: 11, scope: !654)
!656 = !DILocation(line: 75, column: 7, scope: !654)
!657 = !DILocation(line: 75, column: 29, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !498, discriminator: 1)
!659 = distinct !DILexicalBlock(scope: !654, file: !498, line: 75, column: 2)
!660 = !DILocation(line: 75, column: 33, scope: !658)
!661 = !DILocation(line: 75, column: 2, scope: !658)
!662 = !DILocalVariable(name: "rec", scope: !663, file: !498, line: 76, type: !52)
!663 = distinct !DILexicalBlock(scope: !659, file: !498, line: 75, column: 58)
!664 = !DILocation(line: 76, column: 22, scope: !663)
!665 = !DILocation(line: 76, column: 28, scope: !663)
!666 = !DILocation(line: 76, column: 33, scope: !663)
!667 = !DILocation(line: 78, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !498, line: 78, column: 7)
!669 = !DILocation(line: 78, column: 12, scope: !668)
!670 = !DILocation(line: 78, column: 18, scope: !668)
!671 = !DILocation(line: 78, column: 15, scope: !668)
!672 = !DILocation(line: 78, column: 7, scope: !663)
!673 = !DILocation(line: 79, column: 11, scope: !668)
!674 = !DILocation(line: 79, column: 4, scope: !668)
!675 = !DILocation(line: 80, column: 2, scope: !663)
!676 = !DILocation(line: 75, column: 47, scope: !677)
!677 = !DILexicalBlockFile(scope: !659, file: !498, discriminator: 2)
!678 = !DILocation(line: 75, column: 52, scope: !677)
!679 = !DILocation(line: 75, column: 45, scope: !677)
!680 = !DILocation(line: 75, column: 2, scope: !677)
!681 = distinct !{!681, !682}
!682 = !DILocation(line: 75, column: 2, scope: !630)
!683 = !DILocation(line: 82, column: 2, scope: !630)
!684 = !DILocation(line: 83, column: 1, scope: !630)
!685 = distinct !DISubprogram(name: "chat_protocol_find_net", scope: !498, file: !498, line: 85, type: !686, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!686 = !DISubroutineType(types: !687)
!687 = !{!52, !133}
!688 = !DILocalVariable(name: "optlist", arg: 1, scope: !685, file: !498, line: 85, type: !133)
!689 = !DILocation(line: 85, column: 55, scope: !685)
!690 = !DILocalVariable(name: "tmp", scope: !685, file: !498, line: 87, type: !310)
!691 = !DILocation(line: 87, column: 10, scope: !685)
!692 = !DILocation(line: 89, column: 2, scope: !685)
!693 = distinct !{!693, !692}
!694 = !DILocation(line: 89, column: 10, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !498, discriminator: 1)
!696 = distinct !DILexicalBlock(scope: !697, file: !498, line: 89, column: 10)
!697 = distinct !DILexicalBlock(scope: !685, file: !498, line: 89, column: 4)
!698 = !DILocation(line: 89, column: 18, scope: !695)
!699 = !DILocation(line: 89, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !498, discriminator: 2)
!701 = distinct !DILexicalBlock(scope: !696, file: !498, line: 89, column: 3)
!702 = !DILocation(line: 89, column: 14, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !498, discriminator: 3)
!704 = distinct !DILexicalBlock(scope: !696, file: !498, line: 89, column: 12)
!705 = !DILocation(line: 89, column: 102, scope: !703)
!706 = !DILocation(line: 89, column: 7, scope: !707)
!707 = !DILexicalBlockFile(scope: !697, file: !498, discriminator: 4)
!708 = !DILocation(line: 91, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !685, file: !498, line: 91, column: 2)
!710 = !DILocation(line: 91, column: 11, scope: !709)
!711 = !DILocation(line: 91, column: 7, scope: !709)
!712 = !DILocation(line: 91, column: 29, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !498, discriminator: 1)
!714 = distinct !DILexicalBlock(scope: !709, file: !498, line: 91, column: 2)
!715 = !DILocation(line: 91, column: 33, scope: !713)
!716 = !DILocation(line: 91, column: 2, scope: !713)
!717 = !DILocalVariable(name: "rec", scope: !718, file: !498, line: 92, type: !52)
!718 = distinct !DILexicalBlock(scope: !714, file: !498, line: 91, column: 58)
!719 = !DILocation(line: 92, column: 22, scope: !718)
!720 = !DILocation(line: 92, column: 28, scope: !718)
!721 = !DILocation(line: 92, column: 33, scope: !718)
!722 = !DILocation(line: 94, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !498, line: 94, column: 7)
!724 = !DILocation(line: 94, column: 12, scope: !723)
!725 = !DILocation(line: 94, column: 20, scope: !723)
!726 = !DILocation(line: 94, column: 27, scope: !723)
!727 = !DILocation(line: 95, column: 27, scope: !723)
!728 = !DILocation(line: 95, column: 36, scope: !723)
!729 = !DILocation(line: 95, column: 41, scope: !723)
!730 = !DILocation(line: 95, column: 7, scope: !723)
!731 = !DILocation(line: 95, column: 50, scope: !723)
!732 = !DILocation(line: 94, column: 7, scope: !733)
!733 = !DILexicalBlockFile(scope: !718, file: !498, discriminator: 1)
!734 = !DILocation(line: 96, column: 32, scope: !723)
!735 = !DILocation(line: 96, column: 25, scope: !723)
!736 = !DILocation(line: 97, column: 2, scope: !718)
!737 = !DILocation(line: 91, column: 47, scope: !738)
!738 = !DILexicalBlockFile(scope: !714, file: !498, discriminator: 2)
!739 = !DILocation(line: 91, column: 52, scope: !738)
!740 = !DILocation(line: 91, column: 45, scope: !738)
!741 = !DILocation(line: 91, column: 2, scope: !738)
!742 = distinct !{!742, !743}
!743 = !DILocation(line: 91, column: 2, scope: !685)
!744 = !DILocation(line: 99, column: 2, scope: !685)
!745 = !DILocation(line: 100, column: 1, scope: !685)
!746 = distinct !DISubprogram(name: "chat_protocol_register", scope: !498, file: !498, line: 103, type: !747, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!747 = !DISubroutineType(types: !748)
!748 = !{!52, !52}
!749 = !DILocalVariable(name: "rec", arg: 1, scope: !746, file: !498, line: 103, type: !52)
!750 = !DILocation(line: 103, column: 62, scope: !746)
!751 = !DILocalVariable(name: "newrec", scope: !746, file: !498, line: 105, type: !52)
!752 = !DILocation(line: 105, column: 21, scope: !746)
!753 = !DILocalVariable(name: "created", scope: !746, file: !498, line: 106, type: !38)
!754 = !DILocation(line: 106, column: 13, scope: !746)
!755 = !DILocation(line: 108, column: 2, scope: !746)
!756 = distinct !{!756, !755}
!757 = !DILocation(line: 108, column: 10, scope: !758)
!758 = !DILexicalBlockFile(scope: !759, file: !498, discriminator: 1)
!759 = distinct !DILexicalBlock(scope: !760, file: !498, line: 108, column: 10)
!760 = distinct !DILexicalBlock(scope: !746, file: !498, line: 108, column: 4)
!761 = !DILocation(line: 108, column: 14, scope: !758)
!762 = !DILocation(line: 108, column: 5, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !498, discriminator: 2)
!764 = distinct !DILexicalBlock(scope: !759, file: !498, line: 108, column: 3)
!765 = !DILocation(line: 108, column: 14, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !498, discriminator: 3)
!767 = distinct !DILexicalBlock(scope: !759, file: !498, line: 108, column: 12)
!768 = !DILocation(line: 108, column: 98, scope: !766)
!769 = !DILocation(line: 108, column: 7, scope: !770)
!770 = !DILexicalBlockFile(scope: !760, file: !498, discriminator: 4)
!771 = !DILocation(line: 110, column: 30, scope: !746)
!772 = !DILocation(line: 110, column: 35, scope: !746)
!773 = !DILocation(line: 110, column: 11, scope: !746)
!774 = !DILocation(line: 110, column: 9, scope: !746)
!775 = !DILocation(line: 111, column: 19, scope: !746)
!776 = !DILocation(line: 111, column: 26, scope: !746)
!777 = !DILocation(line: 111, column: 17, scope: !746)
!778 = !DILocation(line: 112, column: 6, scope: !779)
!779 = distinct !DILexicalBlock(scope: !746, file: !498, line: 112, column: 6)
!780 = !DILocation(line: 112, column: 13, scope: !779)
!781 = !DILocation(line: 112, column: 6, scope: !746)
!782 = !DILocation(line: 113, column: 35, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !498, line: 112, column: 21)
!784 = !DILocation(line: 113, column: 13, scope: !783)
!785 = !DILocation(line: 113, column: 10, scope: !783)
!786 = !DILocation(line: 114, column: 35, scope: !783)
!787 = !DILocation(line: 114, column: 51, scope: !783)
!788 = !DILocation(line: 114, column: 20, scope: !783)
!789 = !DILocation(line: 114, column: 18, scope: !783)
!790 = !DILocation(line: 115, column: 2, scope: !783)
!791 = !DILocation(line: 117, column: 24, scope: !792)
!792 = distinct !DILexicalBlock(scope: !779, file: !498, line: 115, column: 9)
!793 = !DILocation(line: 117, column: 32, scope: !792)
!794 = !DILocation(line: 117, column: 17, scope: !792)
!795 = !DILocation(line: 120, column: 9, scope: !746)
!796 = !DILocation(line: 120, column: 2, scope: !746)
!797 = !DILocation(line: 120, column: 17, scope: !746)
!798 = !DILocation(line: 121, column: 50, scope: !746)
!799 = !DILocation(line: 121, column: 55, scope: !746)
!800 = !DILocation(line: 121, column: 15, scope: !746)
!801 = !DILocation(line: 121, column: 2, scope: !746)
!802 = !DILocation(line: 121, column: 10, scope: !746)
!803 = !DILocation(line: 121, column: 13, scope: !746)
!804 = !DILocation(line: 122, column: 26, scope: !746)
!805 = !DILocation(line: 122, column: 31, scope: !746)
!806 = !DILocation(line: 122, column: 17, scope: !746)
!807 = !DILocation(line: 122, column: 2, scope: !746)
!808 = !DILocation(line: 122, column: 10, scope: !746)
!809 = !DILocation(line: 122, column: 15, scope: !746)
!810 = !DILocation(line: 124, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !746, file: !498, line: 124, column: 6)
!812 = !DILocation(line: 124, column: 20, scope: !811)
!813 = !DILocation(line: 124, column: 6, scope: !746)
!814 = !DILocation(line: 125, column: 43, scope: !811)
!815 = !DILocation(line: 125, column: 17, scope: !811)
!816 = !DILocation(line: 127, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !746, file: !498, line: 127, column: 13)
!818 = !DILocation(line: 127, column: 13, scope: !746)
!819 = !DILocation(line: 128, column: 43, scope: !817)
!820 = !DILocation(line: 128, column: 3, scope: !817)
!821 = !DILocation(line: 130, column: 43, scope: !817)
!822 = !DILocation(line: 130, column: 3, scope: !817)
!823 = !DILocation(line: 131, column: 16, scope: !746)
!824 = !DILocation(line: 131, column: 9, scope: !746)
!825 = !DILocation(line: 132, column: 1, scope: !746)
!826 = distinct !DISubprogram(name: "chat_protocol_set_default", scope: !498, file: !498, line: 169, type: !827, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !52}
!829 = !DILocalVariable(name: "rec", arg: 1, scope: !826, file: !498, line: 169, type: !52)
!830 = !DILocation(line: 169, column: 51, scope: !826)
!831 = !DILocation(line: 171, column: 25, scope: !826)
!832 = !DILocation(line: 171, column: 23, scope: !826)
!833 = !DILocation(line: 172, column: 1, scope: !826)
!834 = distinct !DISubprogram(name: "chat_protocol_unregister", scope: !498, file: !498, line: 152, type: !835, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !50}
!837 = !DILocalVariable(name: "name", arg: 1, scope: !834, file: !498, line: 152, type: !50)
!838 = !DILocation(line: 152, column: 43, scope: !834)
!839 = !DILocalVariable(name: "rec", scope: !834, file: !498, line: 154, type: !52)
!840 = !DILocation(line: 154, column: 21, scope: !834)
!841 = !DILocation(line: 156, column: 2, scope: !834)
!842 = distinct !{!842, !841}
!843 = !DILocation(line: 156, column: 10, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !498, discriminator: 1)
!845 = distinct !DILexicalBlock(scope: !846, file: !498, line: 156, column: 10)
!846 = distinct !DILexicalBlock(scope: !834, file: !498, line: 156, column: 4)
!847 = !DILocation(line: 156, column: 15, scope: !844)
!848 = !DILocation(line: 156, column: 5, scope: !849)
!849 = !DILexicalBlockFile(scope: !850, file: !498, discriminator: 2)
!850 = distinct !DILexicalBlock(scope: !845, file: !498, line: 156, column: 3)
!851 = !DILocation(line: 156, column: 14, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !498, discriminator: 3)
!853 = distinct !DILexicalBlock(scope: !845, file: !498, line: 156, column: 12)
!854 = !DILocation(line: 156, column: 99, scope: !852)
!855 = !DILocation(line: 156, column: 110, scope: !856)
!856 = !DILexicalBlockFile(scope: !846, file: !498, discriminator: 4)
!857 = !DILocation(line: 158, column: 27, scope: !834)
!858 = !DILocation(line: 158, column: 8, scope: !834)
!859 = !DILocation(line: 158, column: 6, scope: !834)
!860 = !DILocation(line: 159, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !834, file: !498, line: 159, column: 6)
!862 = !DILocation(line: 159, column: 10, scope: !861)
!863 = !DILocation(line: 159, column: 6, scope: !834)
!864 = !DILocation(line: 160, column: 25, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !498, line: 159, column: 18)
!866 = !DILocation(line: 160, column: 3, scope: !865)
!867 = !DILocation(line: 164, column: 29, scope: !865)
!868 = !DILocation(line: 164, column: 3, scope: !865)
!869 = !DILocation(line: 165, column: 2, scope: !865)
!870 = !DILocation(line: 166, column: 1, scope: !834)
!871 = distinct !DISubprogram(name: "chat_protocol_destroy", scope: !498, file: !498, line: 134, type: !827, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!872 = !DILocalVariable(name: "rec", arg: 1, scope: !871, file: !498, line: 134, type: !52)
!873 = !DILocation(line: 134, column: 54, scope: !871)
!874 = !DILocation(line: 136, column: 2, scope: !871)
!875 = distinct !{!875, !874}
!876 = !DILocation(line: 136, column: 10, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !498, discriminator: 1)
!878 = distinct !DILexicalBlock(scope: !879, file: !498, line: 136, column: 10)
!879 = distinct !DILexicalBlock(scope: !871, file: !498, line: 136, column: 4)
!880 = !DILocation(line: 136, column: 14, scope: !877)
!881 = !DILocation(line: 136, column: 5, scope: !882)
!882 = !DILexicalBlockFile(scope: !883, file: !498, discriminator: 2)
!883 = distinct !DILexicalBlock(scope: !878, file: !498, line: 136, column: 3)
!884 = !DILocation(line: 136, column: 14, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !498, discriminator: 3)
!886 = distinct !DILexicalBlock(scope: !878, file: !498, line: 136, column: 12)
!887 = !DILocation(line: 136, column: 98, scope: !885)
!888 = !DILocation(line: 136, column: 109, scope: !889)
!889 = !DILexicalBlockFile(scope: !879, file: !498, discriminator: 4)
!890 = !DILocation(line: 138, column: 34, scope: !871)
!891 = !DILocation(line: 138, column: 50, scope: !871)
!892 = !DILocation(line: 138, column: 19, scope: !871)
!893 = !DILocation(line: 138, column: 17, scope: !871)
!894 = !DILocation(line: 140, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !871, file: !498, line: 140, column: 6)
!896 = !DILocation(line: 140, column: 23, scope: !895)
!897 = !DILocation(line: 140, column: 20, scope: !895)
!898 = !DILocation(line: 140, column: 6, scope: !871)
!899 = !DILocation(line: 141, column: 29, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !498, line: 140, column: 28)
!901 = !DILocation(line: 141, column: 44, scope: !900)
!902 = !DILocation(line: 141, column: 29, scope: !903)
!903 = !DILexicalBlockFile(scope: !900, file: !498, discriminator: 1)
!904 = !DILocation(line: 142, column: 8, scope: !900)
!905 = !DILocation(line: 142, column: 24, scope: !900)
!906 = !DILocation(line: 141, column: 29, scope: !907)
!907 = !DILexicalBlockFile(scope: !900, file: !498, discriminator: 2)
!908 = !DILocation(line: 141, column: 29, scope: !909)
!909 = !DILexicalBlockFile(scope: !900, file: !498, discriminator: 3)
!910 = !DILocation(line: 141, column: 3, scope: !909)
!911 = !DILocation(line: 143, column: 2, scope: !900)
!912 = !DILocation(line: 145, column: 44, scope: !871)
!913 = !DILocation(line: 145, column: 2, scope: !871)
!914 = !DILocation(line: 147, column: 9, scope: !871)
!915 = !DILocation(line: 147, column: 14, scope: !871)
!916 = !DILocation(line: 147, column: 2, scope: !871)
!917 = !DILocation(line: 148, column: 9, scope: !871)
!918 = !DILocation(line: 148, column: 2, scope: !871)
!919 = !DILocation(line: 149, column: 1, scope: !871)
!920 = !DILocation(line: 149, column: 1, scope: !921)
!921 = !DILexicalBlockFile(scope: !871, file: !498, discriminator: 1)
!922 = distinct !DISubprogram(name: "chat_protocol_get_unknown", scope: !498, file: !498, line: 205, type: !575, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!923 = !DILocalVariable(name: "name", arg: 1, scope: !922, file: !498, line: 205, type: !50)
!924 = !DILocation(line: 205, column: 58, scope: !922)
!925 = !DILocalVariable(name: "rec", scope: !922, file: !498, line: 207, type: !52)
!926 = !DILocation(line: 207, column: 21, scope: !922)
!927 = !DILocalVariable(name: "newrec", scope: !922, file: !498, line: 207, type: !52)
!928 = !DILocation(line: 207, column: 27, scope: !922)
!929 = !DILocation(line: 209, column: 2, scope: !922)
!930 = distinct !{!930, !929}
!931 = !DILocation(line: 209, column: 10, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !498, discriminator: 1)
!933 = distinct !DILexicalBlock(scope: !934, file: !498, line: 209, column: 10)
!934 = distinct !DILexicalBlock(scope: !922, file: !498, line: 209, column: 4)
!935 = !DILocation(line: 209, column: 15, scope: !932)
!936 = !DILocation(line: 209, column: 5, scope: !937)
!937 = !DILexicalBlockFile(scope: !938, file: !498, discriminator: 2)
!938 = distinct !DILexicalBlock(scope: !933, file: !498, line: 209, column: 3)
!939 = !DILocation(line: 209, column: 14, scope: !940)
!940 = !DILexicalBlockFile(scope: !941, file: !498, discriminator: 3)
!941 = distinct !DILexicalBlock(scope: !933, file: !498, line: 209, column: 12)
!942 = !DILocation(line: 209, column: 99, scope: !940)
!943 = !DILocation(line: 209, column: 7, scope: !944)
!944 = !DILexicalBlockFile(scope: !934, file: !498, discriminator: 4)
!945 = !DILocation(line: 211, column: 34, scope: !922)
!946 = !DILocation(line: 211, column: 15, scope: !922)
!947 = !DILocation(line: 211, column: 13, scope: !922)
!948 = !DILocation(line: 212, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !922, file: !498, line: 212, column: 6)
!950 = !DILocation(line: 212, column: 10, scope: !949)
!951 = !DILocation(line: 212, column: 6, scope: !922)
!952 = !DILocation(line: 213, column: 24, scope: !949)
!953 = !DILocation(line: 213, column: 17, scope: !949)
!954 = !DILocation(line: 215, column: 31, scope: !922)
!955 = !DILocation(line: 215, column: 9, scope: !922)
!956 = !DILocation(line: 215, column: 6, scope: !922)
!957 = !DILocation(line: 216, column: 9, scope: !922)
!958 = !DILocation(line: 216, column: 14, scope: !922)
!959 = !DILocation(line: 216, column: 30, scope: !922)
!960 = !DILocation(line: 217, column: 23, scope: !922)
!961 = !DILocation(line: 217, column: 2, scope: !922)
!962 = !DILocation(line: 217, column: 7, scope: !922)
!963 = !DILocation(line: 217, column: 12, scope: !922)
!964 = !DILocation(line: 218, column: 2, scope: !922)
!965 = !DILocation(line: 218, column: 7, scope: !922)
!966 = !DILocation(line: 218, column: 22, scope: !922)
!967 = !DILocation(line: 219, column: 9, scope: !922)
!968 = !DILocation(line: 219, column: 14, scope: !922)
!969 = !DILocation(line: 219, column: 34, scope: !922)
!970 = !DILocation(line: 220, column: 9, scope: !922)
!971 = !DILocation(line: 220, column: 14, scope: !922)
!972 = !DILocation(line: 220, column: 35, scope: !922)
!973 = !DILocation(line: 221, column: 2, scope: !922)
!974 = !DILocation(line: 221, column: 7, scope: !922)
!975 = !DILocation(line: 221, column: 29, scope: !922)
!976 = !DILocation(line: 222, column: 2, scope: !922)
!977 = !DILocation(line: 222, column: 7, scope: !922)
!978 = !DILocation(line: 222, column: 30, scope: !922)
!979 = !DILocation(line: 224, column: 34, scope: !922)
!980 = !DILocation(line: 224, column: 11, scope: !922)
!981 = !DILocation(line: 224, column: 9, scope: !922)
!982 = !DILocation(line: 225, column: 9, scope: !922)
!983 = !DILocation(line: 225, column: 2, scope: !922)
!984 = !DILocation(line: 226, column: 16, scope: !922)
!985 = !DILocation(line: 226, column: 9, scope: !922)
!986 = !DILocation(line: 227, column: 1, scope: !922)
!987 = distinct !DISubprogram(name: "chat_protocol_get_default", scope: !498, file: !498, line: 174, type: !988, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!988 = !DISubroutineType(types: !989)
!989 = !{!52}
!990 = !DILocation(line: 176, column: 16, scope: !987)
!991 = !DILocation(line: 176, column: 9, scope: !987)
!992 = distinct !DISubprogram(name: "create_chatnet", scope: !498, file: !498, line: 179, type: !68, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!993 = !DILocation(line: 181, column: 33, scope: !992)
!994 = !DILocation(line: 181, column: 17, scope: !992)
!995 = !DILocation(line: 181, column: 9, scope: !992)
!996 = distinct !DISubprogram(name: "create_server_setup", scope: !498, file: !498, line: 184, type: !91, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!997 = !DILocation(line: 186, column: 38, scope: !996)
!998 = !DILocation(line: 186, column: 17, scope: !996)
!999 = !DILocation(line: 186, column: 9, scope: !996)
!1000 = distinct !DISubprogram(name: "create_channel_setup", scope: !498, file: !498, line: 189, type: !139, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!1001 = !DILocation(line: 191, column: 39, scope: !1000)
!1002 = !DILocation(line: 191, column: 17, scope: !1000)
!1003 = !DILocation(line: 191, column: 9, scope: !1000)
!1004 = distinct !DISubprogram(name: "create_server_connect", scope: !498, file: !498, line: 194, type: !158, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!1005 = !DILocation(line: 196, column: 40, scope: !1004)
!1006 = !DILocation(line: 196, column: 17, scope: !1004)
!1007 = !DILocation(line: 196, column: 9, scope: !1004)
!1008 = distinct !DISubprogram(name: "destroy_server_connect", scope: !498, file: !498, line: 199, type: !383, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!1009 = !DILocalVariable(name: "conn", arg: 1, scope: !1008, file: !498, line: 199, type: !160)
!1010 = !DILocation(line: 199, column: 56, scope: !1008)
!1011 = !DILocation(line: 201, column: 1, scope: !1008)
!1012 = distinct !DISubprogram(name: "chat_protocols_init", scope: !498, file: !498, line: 229, type: !298, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!1013 = !DILocation(line: 231, column: 16, scope: !1012)
!1014 = !DILocation(line: 232, column: 17, scope: !1012)
!1015 = !DILocation(line: 233, column: 1, scope: !1012)
!1016 = distinct !DISubprogram(name: "chat_protocols_deinit", scope: !498, file: !498, line: 235, type: !298, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !506)
!1017 = !DILocation(line: 237, column: 2, scope: !1016)
!1018 = !DILocation(line: 237, column: 9, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1016, file: !498, discriminator: 1)
!1020 = !DILocation(line: 237, column: 24, scope: !1019)
!1021 = !DILocation(line: 237, column: 2, scope: !1019)
!1022 = !DILocation(line: 238, column: 39, scope: !1016)
!1023 = !DILocation(line: 238, column: 55, scope: !1016)
!1024 = !DILocation(line: 238, column: 17, scope: !1016)
!1025 = !DILocation(line: 237, column: 2, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1016, file: !498, discriminator: 2)
!1027 = distinct !{!1027, !1017}
!1028 = !DILocation(line: 239, column: 1, scope: !1016)
