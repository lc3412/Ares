; ModuleID = './line33-expandos.o.i'
source_filename = "./line33-expandos.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct.EXPANDO_REC = type { i8* (%struct._SERVER_REC*, i8*, i32*)*, i32, [10 x i32], [10 x i32] }
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
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@current_expando = global i8* null, align 8
@__func__.expando_create = private unnamed_addr constant [15 x i8] c"expando_create\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"key != NULL && *key != '\5C0'\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@expandos = internal global %struct._GHashTable* null, align 8
@char_expandos = internal global [256 x %struct.EXPANDO_REC*] zeroinitializer, align 16
@__func__.expando_add_signal = private unnamed_addr constant [19 x i8] c"expando_add_signal\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"signal != NULL\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"rec->signals != -1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@__func__.expando_destroy = private unnamed_addr constant [16 x i8] c"expando_destroy\00", align 1
@__func__.expando_bind = private unnamed_addr constant [13 x i8] c"expando_bind\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"funccount >= 1\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"funcs != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"funcs[0] != NULL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"expando timer\00", align 1
@__func__.expando_unbind = private unnamed_addr constant [15 x i8] c"expando_unbind\00", align 1
@__func__.expando_get_signals = private unnamed_addr constant [20 x i8] c"expando_get_signals\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"STATUS_OPER\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"timestamp_format\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"chanmode_expando_strip\00", align 1
@last_sent_msg = internal global i8* null, align 8
@last_sent_msg_body = internal global i8* null, align 8
@last_privmsg_from = internal global i8* null, align 8
@last_public_from = internal global i8* null, align 8
@last_timestamp = internal global i64 0, align 8
@sysarch = internal global i8* null, align 8
@sysrelease = internal global i8* null, align 8
@sysname = internal global i8* null, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"command msg\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"message public\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"away mode changed\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"window item changed\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"channel mode changed\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"window connect changed\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"window server changed\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"server nick changed\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"user mode changed\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"nick mode changed\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"versiontime\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"abiversion\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"time changed\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"sysname\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"sysrelease\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"sysarch\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"channel topic changed\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"query address changed\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"chatnet\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"itemname\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"window item name changed\00", align 1
@timer_tag = internal global i32 0, align 4
@.str.69 = private unnamed_addr constant [20 x i8] c"message own_private\00", align 1
@timestamp_format = internal global i8* null, align 8
@.str.70 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@client_start_time = external global i64, align 8
@.str.73 = private unnamed_addr constant [13 x i8] c"1.2-g90165c0\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"%r\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@timestamp_seconds = internal global i32 0, align 4
@__func__.sig_message_own_private = private unnamed_addr constant [24 x i8] c"sig_message_own_private\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @expando_create(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) #0 !dbg !526 {
  %3 = alloca i8*, align 8
  %4 = alloca i8* (%struct._SERVER_REC*, i8*, i32*)*, align 8
  %5 = alloca %struct.EXPANDO_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !530, metadata !531), !dbg !532
  store i8* (%struct._SERVER_REC*, i8*, i32*)* %1, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct._SERVER_REC*, i8*, i32*)** %4, metadata !533, metadata !531), !dbg !534
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %5, metadata !535, metadata !531), !dbg !536
  call void @llvm.dbg.declare(metadata i8** %6, metadata !537, metadata !531), !dbg !538
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !539, metadata !531), !dbg !554
  br label %8, !dbg !555, !llvm.loop !556

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !557
  %10 = icmp ne i8* %9, null, !dbg !561
  br i1 %10, label %11, label %17, !dbg !562

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %3, align 8, !dbg !563
  %13 = load i8, i8* %12, align 1, !dbg !565
  %14 = sext i8 %13 to i32, !dbg !565
  %15 = icmp ne i32 %14, 0, !dbg !566
  br i1 %15, label %16, label %17, !dbg !567

; <label>:16:                                     ; preds = %11
  br label %18, !dbg !568

; <label>:17:                                     ; preds = %11, %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_create, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)), !dbg !571
  br label %123, !dbg !574

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !575

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !577, !llvm.loop !578

; <label>:20:                                     ; preds = %19
  %21 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8, !dbg !579
  %22 = icmp ne i8* (%struct._SERVER_REC*, i8*, i32*)* %21, null, !dbg !583
  br i1 %22, label %23, label %24, !dbg !579

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !584

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_create, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !587
  br label %123, !dbg !590

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !591

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %3, align 8, !dbg !593
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !593
  %29 = load i8, i8* %28, align 1, !dbg !593
  %30 = sext i8 %29 to i32, !dbg !593
  %31 = icmp ne i32 %30, 0, !dbg !595
  br i1 %31, label %32, label %37, !dbg !596

; <label>:32:                                     ; preds = %26
  %33 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !597
  %34 = load i8*, i8** %3, align 8, !dbg !598
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %33, i8* %34), !dbg !599
  %36 = bitcast i8* %35 to %struct.EXPANDO_REC*, !dbg !599
  store %struct.EXPANDO_REC* %36, %struct.EXPANDO_REC** %5, align 8, !dbg !600
  br label %44, !dbg !601

; <label>:37:                                     ; preds = %26
  %38 = load i8*, i8** %3, align 8, !dbg !602
  %39 = load i8, i8* %38, align 1, !dbg !604
  %40 = zext i8 %39 to i32, !dbg !605
  %41 = sext i32 %40 to i64, !dbg !606
  %42 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %41, !dbg !606
  %43 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %42, align 8, !dbg !606
  store %struct.EXPANDO_REC* %43, %struct.EXPANDO_REC** %5, align 8, !dbg !607
  br label %44

; <label>:44:                                     ; preds = %37, %32
  %45 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %5, align 8, !dbg !608
  %46 = icmp ne %struct.EXPANDO_REC* %45, null, !dbg !610
  br i1 %46, label %47, label %50, !dbg !611

; <label>:47:                                     ; preds = %44
  %48 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %5, align 8, !dbg !612
  %49 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %48, i32 0, i32 1, !dbg !613
  store i32 0, i32* %49, align 8, !dbg !614
  br label %73, !dbg !612

; <label>:50:                                     ; preds = %44
  %51 = call noalias i8* @g_malloc0_n(i64 1, i64 96), !dbg !615
  %52 = bitcast i8* %51 to %struct.EXPANDO_REC*, !dbg !617
  store %struct.EXPANDO_REC* %52, %struct.EXPANDO_REC** %5, align 8, !dbg !618
  %53 = load i8*, i8** %3, align 8, !dbg !619
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !619
  %55 = load i8, i8* %54, align 1, !dbg !619
  %56 = sext i8 %55 to i32, !dbg !619
  %57 = icmp ne i32 %56, 0, !dbg !621
  br i1 %57, label %58, label %65, !dbg !622

; <label>:58:                                     ; preds = %50
  %59 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !623
  %60 = load i8*, i8** %3, align 8, !dbg !624
  %61 = call noalias i8* @g_strdup(i8* %60), !dbg !625
  %62 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %5, align 8, !dbg !626
  %63 = bitcast %struct.EXPANDO_REC* %62 to i8*, !dbg !626
  %64 = call i32 @g_hash_table_insert(%struct._GHashTable* %59, i8* %61, i8* %63), !dbg !627
  br label %72, !dbg !629

; <label>:65:                                     ; preds = %50
  %66 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %5, align 8, !dbg !630
  %67 = load i8*, i8** %3, align 8, !dbg !631
  %68 = load i8, i8* %67, align 1, !dbg !632
  %69 = zext i8 %68 to i32, !dbg !633
  %70 = sext i32 %69 to i64, !dbg !634
  %71 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %70, !dbg !634
  store %struct.EXPANDO_REC* %66, %struct.EXPANDO_REC** %71, align 8, !dbg !635
  br label %72

; <label>:72:                                     ; preds = %65, %58
  br label %73

; <label>:73:                                     ; preds = %72, %47
  %74 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8, !dbg !636
  %75 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %5, align 8, !dbg !637
  %76 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %75, i32 0, i32 0, !dbg !638
  store i8* (%struct._SERVER_REC*, i8*, i32*)* %74, i8* (%struct._SERVER_REC*, i8*, i32*)** %76, align 8, !dbg !639
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !640
  %78 = bitcast %struct.__va_list_tag* %77 to i8*, !dbg !640
  call void @llvm.va_start(i8* %78), !dbg !640
  br label %79, !dbg !641

; <label>:79:                                     ; preds = %117, %73
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !642
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 0, !dbg !642
  %82 = load i32, i32* %81, align 16, !dbg !642
  %83 = icmp ule i32 %82, 40, !dbg !642
  br i1 %83, label %84, label %90, !dbg !642

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 3, !dbg !644
  %86 = load i8*, i8** %85, align 16, !dbg !644
  %87 = getelementptr i8, i8* %86, i32 %82, !dbg !644
  %88 = bitcast i8* %87 to i8**, !dbg !644
  %89 = add i32 %82, 8, !dbg !644
  store i32 %89, i32* %81, align 16, !dbg !644
  br label %95, !dbg !644

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 2, !dbg !646
  %92 = load i8*, i8** %91, align 8, !dbg !646
  %93 = bitcast i8* %92 to i8**, !dbg !646
  %94 = getelementptr i8, i8* %92, i32 8, !dbg !646
  store i8* %94, i8** %91, align 8, !dbg !646
  br label %95, !dbg !646

; <label>:95:                                     ; preds = %90, %84
  %96 = phi i8** [ %88, %84 ], [ %93, %90 ], !dbg !648
  %97 = load i8*, i8** %96, align 8, !dbg !648
  store i8* %97, i8** %6, align 8, !dbg !650
  %98 = icmp ne i8* %97, null, !dbg !651
  br i1 %98, label %99, label %120, !dbg !652

; <label>:99:                                     ; preds = %95
  %100 = load i8*, i8** %3, align 8, !dbg !653
  %101 = load i8*, i8** %6, align 8, !dbg !654
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !655
  %103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %102, i32 0, i32 0, !dbg !655
  %104 = load i32, i32* %103, align 16, !dbg !655
  %105 = icmp ule i32 %104, 40, !dbg !655
  br i1 %105, label %106, label %112, !dbg !655

; <label>:106:                                    ; preds = %99
  %107 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %102, i32 0, i32 3, !dbg !656
  %108 = load i8*, i8** %107, align 16, !dbg !656
  %109 = getelementptr i8, i8* %108, i32 %104, !dbg !656
  %110 = bitcast i8* %109 to i32*, !dbg !656
  %111 = add i32 %104, 8, !dbg !656
  store i32 %111, i32* %103, align 16, !dbg !656
  br label %117, !dbg !656

; <label>:112:                                    ; preds = %99
  %113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %102, i32 0, i32 2, !dbg !657
  %114 = load i8*, i8** %113, align 8, !dbg !657
  %115 = bitcast i8* %114 to i32*, !dbg !657
  %116 = getelementptr i8, i8* %114, i32 8, !dbg !657
  store i8* %116, i8** %113, align 8, !dbg !657
  br label %117, !dbg !657

; <label>:117:                                    ; preds = %112, %106
  %118 = phi i32* [ %110, %106 ], [ %115, %112 ], !dbg !658
  %119 = load i32, i32* %118, align 4, !dbg !658
  call void @expando_add_signal(i8* %100, i8* %101, i32 %119), !dbg !659
  br label %79, !dbg !660, !llvm.loop !662

; <label>:120:                                    ; preds = %95
  %121 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !663
  %122 = bitcast %struct.__va_list_tag* %121 to i8*, !dbg !663
  call void @llvm.va_end(i8* %122), !dbg !663
  br label %123, !dbg !664

; <label>:123:                                    ; preds = %120, %24, %17
  ret void, !dbg !665
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define void @expando_add_signal(i8*, i8*, i32) #0 !dbg !666 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.EXPANDO_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !670, metadata !531), !dbg !671
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !672, metadata !531), !dbg !673
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !674, metadata !531), !dbg !675
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %7, metadata !676, metadata !531), !dbg !677
  br label %8, !dbg !678, !llvm.loop !679

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %4, align 8, !dbg !680
  %10 = icmp ne i8* %9, null, !dbg !684
  br i1 %10, label %11, label %12, !dbg !680

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !685

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.expando_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !688
  br label %73, !dbg !691

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !692

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !694, !llvm.loop !695

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !696
  %17 = icmp ne i8* %16, null, !dbg !700
  br i1 %17, label %18, label %19, !dbg !696

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !701

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.expando_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !704
  br label %73, !dbg !707

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !708

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %4, align 8, !dbg !710
  %23 = call %struct.EXPANDO_REC* @expando_find(i8* %22), !dbg !711
  store %struct.EXPANDO_REC* %23, %struct.EXPANDO_REC** %7, align 8, !dbg !712
  br label %24, !dbg !713, !llvm.loop !714

; <label>:24:                                     ; preds = %21
  %25 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !715
  %26 = icmp ne %struct.EXPANDO_REC* %25, null, !dbg !719
  br i1 %26, label %27, label %28, !dbg !715

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !720

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.expando_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)), !dbg !723
  br label %73, !dbg !726

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !727

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %6, align 4, !dbg !729
  %32 = icmp eq i32 %31, 5, !dbg !731
  br i1 %32, label %33, label %36, !dbg !732

; <label>:33:                                     ; preds = %30
  %34 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !733
  %35 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %34, i32 0, i32 1, !dbg !735
  store i32 -1, i32* %35, align 8, !dbg !736
  br label %73, !dbg !737

; <label>:36:                                     ; preds = %30
  %37 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !738
  %38 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %37, i32 0, i32 1, !dbg !741
  %39 = load i32, i32* %38, align 8, !dbg !741
  %40 = icmp slt i32 %39, 10, !dbg !742
  br i1 %40, label %41, label %72, !dbg !738

; <label>:41:                                     ; preds = %36
  br label %42, !dbg !743, !llvm.loop !745

; <label>:42:                                     ; preds = %41
  %43 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !746
  %44 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %43, i32 0, i32 1, !dbg !750
  %45 = load i32, i32* %44, align 8, !dbg !750
  %46 = icmp ne i32 %45, -1, !dbg !751
  br i1 %46, label %47, label %48, !dbg !746

; <label>:47:                                     ; preds = %42
  br label %49, !dbg !752

; <label>:48:                                     ; preds = %42
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.expando_add_signal, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)), !dbg !755
  br label %73, !dbg !758

; <label>:49:                                     ; preds = %47
  br label %50, !dbg !759

; <label>:50:                                     ; preds = %49
  %51 = load i8*, i8** %5, align 8, !dbg !761
  %52 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %51), !dbg !762
  %53 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !763
  %54 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %53, i32 0, i32 1, !dbg !764
  %55 = load i32, i32* %54, align 8, !dbg !764
  %56 = sext i32 %55 to i64, !dbg !765
  %57 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !765
  %58 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %57, i32 0, i32 2, !dbg !766
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %58, i64 0, i64 %56, !dbg !765
  store i32 %52, i32* %59, align 4, !dbg !767
  %60 = load i32, i32* %6, align 4, !dbg !768
  %61 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !769
  %62 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %61, i32 0, i32 1, !dbg !770
  %63 = load i32, i32* %62, align 8, !dbg !770
  %64 = sext i32 %63 to i64, !dbg !771
  %65 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !771
  %66 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %65, i32 0, i32 3, !dbg !772
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 %64, !dbg !771
  store i32 %60, i32* %67, align 4, !dbg !773
  %68 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !774
  %69 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %68, i32 0, i32 1, !dbg !775
  %70 = load i32, i32* %69, align 8, !dbg !776
  %71 = add nsw i32 %70, 1, !dbg !776
  store i32 %71, i32* %69, align 8, !dbg !776
  br label %72, !dbg !777

; <label>:72:                                     ; preds = %50, %36
  br label %73

; <label>:73:                                     ; preds = %12, %19, %28, %48, %72, %33
  ret void, !dbg !778
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.EXPANDO_REC* @expando_find(i8*) #0 !dbg !779 {
  %2 = alloca %struct.EXPANDO_REC*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !782, metadata !531), !dbg !783
  %4 = load i8*, i8** %3, align 8, !dbg !784
  %5 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !784
  %6 = load i8, i8* %5, align 1, !dbg !784
  %7 = sext i8 %6 to i32, !dbg !784
  %8 = icmp ne i32 %7, 0, !dbg !786
  br i1 %8, label %9, label %14, !dbg !787

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !788
  %11 = load i8*, i8** %3, align 8, !dbg !789
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %10, i8* %11), !dbg !790
  %13 = bitcast i8* %12 to %struct.EXPANDO_REC*, !dbg !790
  store %struct.EXPANDO_REC* %13, %struct.EXPANDO_REC** %2, align 8, !dbg !791
  br label %21, !dbg !791

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %3, align 8, !dbg !792
  %16 = load i8, i8* %15, align 1, !dbg !793
  %17 = zext i8 %16 to i32, !dbg !794
  %18 = sext i32 %17 to i64, !dbg !795
  %19 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %18, !dbg !795
  %20 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %19, align 8, !dbg !795
  store %struct.EXPANDO_REC* %20, %struct.EXPANDO_REC** %2, align 8, !dbg !796
  br label %21, !dbg !796

; <label>:21:                                     ; preds = %14, %9
  %22 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %2, align 8, !dbg !797
  ret %struct.EXPANDO_REC* %22, !dbg !797
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @expando_destroy(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*) #0 !dbg !798 {
  %3 = alloca i8*, align 8
  %4 = alloca i8* (%struct._SERVER_REC*, i8*, i32*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.EXPANDO_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !801, metadata !531), !dbg !802
  store i8* (%struct._SERVER_REC*, i8*, i32*)* %1, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8
  call void @llvm.dbg.declare(metadata i8* (%struct._SERVER_REC*, i8*, i32*)** %4, metadata !803, metadata !531), !dbg !804
  call void @llvm.dbg.declare(metadata i8** %5, metadata !805, metadata !531), !dbg !806
  call void @llvm.dbg.declare(metadata i8** %6, metadata !807, metadata !531), !dbg !808
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %7, metadata !809, metadata !531), !dbg !810
  br label %8, !dbg !811, !llvm.loop !812

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !813
  %10 = icmp ne i8* %9, null, !dbg !817
  br i1 %10, label %11, label %17, !dbg !818

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %3, align 8, !dbg !819
  %13 = load i8, i8* %12, align 1, !dbg !821
  %14 = sext i8 %13 to i32, !dbg !821
  %15 = icmp ne i32 %14, 0, !dbg !822
  br i1 %15, label %16, label %17, !dbg !823

; <label>:16:                                     ; preds = %11
  br label %18, !dbg !824

; <label>:17:                                     ; preds = %11, %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.expando_destroy, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)), !dbg !827
  br label %78, !dbg !830

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !831

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !833, !llvm.loop !834

; <label>:20:                                     ; preds = %19
  %21 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8, !dbg !835
  %22 = icmp ne i8* (%struct._SERVER_REC*, i8*, i32*)* %21, null, !dbg !839
  br i1 %22, label %23, label %24, !dbg !835

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !840

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.expando_destroy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !843
  br label %78, !dbg !846

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !847

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %3, align 8, !dbg !849
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !849
  %29 = load i8, i8* %28, align 1, !dbg !849
  %30 = sext i8 %29 to i32, !dbg !849
  %31 = icmp eq i32 %30, 0, !dbg !851
  br i1 %31, label %32, label %56, !dbg !852

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %3, align 8, !dbg !853
  %34 = load i8, i8* %33, align 1, !dbg !855
  %35 = zext i8 %34 to i32, !dbg !856
  %36 = sext i32 %35 to i64, !dbg !857
  %37 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %36, !dbg !857
  %38 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %37, align 8, !dbg !857
  store %struct.EXPANDO_REC* %38, %struct.EXPANDO_REC** %7, align 8, !dbg !858
  %39 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !859
  %40 = icmp ne %struct.EXPANDO_REC* %39, null, !dbg !861
  br i1 %40, label %41, label %55, !dbg !862

; <label>:41:                                     ; preds = %32
  %42 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !863
  %43 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %42, i32 0, i32 0, !dbg !865
  %44 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %43, align 8, !dbg !865
  %45 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8, !dbg !866
  %46 = icmp eq i8* (%struct._SERVER_REC*, i8*, i32*)* %44, %45, !dbg !867
  br i1 %46, label %47, label %55, !dbg !868

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %3, align 8, !dbg !869
  %49 = load i8, i8* %48, align 1, !dbg !871
  %50 = zext i8 %49 to i32, !dbg !872
  %51 = sext i32 %50 to i64, !dbg !873
  %52 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %51, !dbg !873
  store %struct.EXPANDO_REC* null, %struct.EXPANDO_REC** %52, align 8, !dbg !874
  %53 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !875
  %54 = bitcast %struct.EXPANDO_REC* %53 to i8*, !dbg !875
  call void @g_free(i8* %54), !dbg !876
  br label %55, !dbg !877

; <label>:55:                                     ; preds = %47, %41, %32
  br label %78, !dbg !878

; <label>:56:                                     ; preds = %26
  %57 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !879
  %58 = load i8*, i8** %3, align 8, !dbg !882
  %59 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %57, i8* %58, i8** %5, i8** %6), !dbg !883
  %60 = icmp ne i32 %59, 0, !dbg !883
  br i1 %60, label %61, label %77, !dbg !883

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %6, align 8, !dbg !884
  %63 = bitcast i8* %62 to %struct.EXPANDO_REC*, !dbg !884
  store %struct.EXPANDO_REC* %63, %struct.EXPANDO_REC** %7, align 8, !dbg !886
  %64 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !887
  %65 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %64, i32 0, i32 0, !dbg !889
  %66 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %65, align 8, !dbg !889
  %67 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %4, align 8, !dbg !890
  %68 = icmp eq i8* (%struct._SERVER_REC*, i8*, i32*)* %66, %67, !dbg !891
  br i1 %68, label %69, label %76, !dbg !892

; <label>:69:                                     ; preds = %61
  %70 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !893
  %71 = load i8*, i8** %3, align 8, !dbg !895
  %72 = call i32 @g_hash_table_remove(%struct._GHashTable* %70, i8* %71), !dbg !896
  %73 = load i8*, i8** %5, align 8, !dbg !897
  call void @g_free(i8* %73), !dbg !898
  %74 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %7, align 8, !dbg !899
  %75 = bitcast %struct.EXPANDO_REC* %74 to i8*, !dbg !899
  call void @g_free(i8* %75), !dbg !900
  br label %76, !dbg !901

; <label>:76:                                     ; preds = %69, %61
  br label %77, !dbg !902

; <label>:77:                                     ; preds = %76, %56
  br label %78

; <label>:78:                                     ; preds = %17, %24, %77, %55
  ret void, !dbg !903
}

declare void @g_free(i8*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define void @expando_bind(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #0 !dbg !904 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)**, align 8
  %7 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %8 = alloca %struct.EXPANDO_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !908, metadata !531), !dbg !909
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !910, metadata !531), !dbg !911
  store void (i8*, i8*, i8*, i8*, i8*, i8*)** %2, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, metadata !912, metadata !531), !dbg !913
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, metadata !914, metadata !531), !dbg !915
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %8, metadata !916, metadata !531), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %9, metadata !918, metadata !531), !dbg !919
  call void @llvm.dbg.declare(metadata i32* %10, metadata !920, metadata !531), !dbg !921
  br label %11, !dbg !922, !llvm.loop !923

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %4, align 8, !dbg !924
  %13 = icmp ne i8* %12, null, !dbg !928
  br i1 %13, label %14, label %15, !dbg !924

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !929

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.expando_bind, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !932
  br label %101, !dbg !935

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !936

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !938, !llvm.loop !939

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !940
  %20 = icmp sge i32 %19, 1, !dbg !944
  br i1 %20, label %21, label %22, !dbg !940

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !945

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.expando_bind, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !948
  br label %101, !dbg !951

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !952

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !954, !llvm.loop !955

; <label>:25:                                     ; preds = %24
  %26 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !956
  %27 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)** %26, null, !dbg !960
  br i1 %27, label %28, label %29, !dbg !956

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !961

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.expando_bind, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)), !dbg !964
  br label %101, !dbg !967

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !968

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !970, !llvm.loop !971

; <label>:32:                                     ; preds = %31
  %33 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !972
  %34 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %33, i64 0, !dbg !972
  %35 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %34, align 8, !dbg !972
  %36 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %35, null, !dbg !976
  br i1 %36, label %37, label %38, !dbg !972

; <label>:37:                                     ; preds = %32
  br label %39, !dbg !977

; <label>:38:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.expando_bind, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)), !dbg !980
  br label %101, !dbg !983

; <label>:39:                                     ; preds = %37
  br label %40, !dbg !984

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !986
  %42 = call %struct.EXPANDO_REC* @expando_find(i8* %41), !dbg !987
  store %struct.EXPANDO_REC* %42, %struct.EXPANDO_REC** %8, align 8, !dbg !988
  br label %43, !dbg !989, !llvm.loop !990

; <label>:43:                                     ; preds = %40
  %44 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !991
  %45 = icmp ne %struct.EXPANDO_REC* %44, null, !dbg !995
  br i1 %45, label %46, label %47, !dbg !991

; <label>:46:                                     ; preds = %43
  br label %48, !dbg !996

; <label>:47:                                     ; preds = %43
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.expando_bind, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)), !dbg !999
  br label %101, !dbg !1002

; <label>:48:                                     ; preds = %46
  br label %49, !dbg !1003

; <label>:49:                                     ; preds = %48
  %50 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1005
  %51 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %50, i32 0, i32 1, !dbg !1007
  %52 = load i32, i32* %51, align 8, !dbg !1007
  %53 = icmp eq i32 %52, 0, !dbg !1008
  br i1 %53, label %54, label %58, !dbg !1009

; <label>:54:                                     ; preds = %49
  %55 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1010
  %56 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %55, i64 1, !dbg !1010
  %57 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %56, align 8, !dbg !1010
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* %57, i8* null), !dbg !1012
  br label %58, !dbg !1013

; <label>:58:                                     ; preds = %54, %49
  store i32 0, i32* %9, align 4, !dbg !1014
  br label %59, !dbg !1016

; <label>:59:                                     ; preds = %98, %58
  %60 = load i32, i32* %9, align 4, !dbg !1017
  %61 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1020
  %62 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %61, i32 0, i32 1, !dbg !1021
  %63 = load i32, i32* %62, align 8, !dbg !1021
  %64 = icmp slt i32 %60, %63, !dbg !1022
  br i1 %64, label %65, label %101, !dbg !1023

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* %9, align 4, !dbg !1024
  %67 = sext i32 %66 to i64, !dbg !1026
  %68 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1026
  %69 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %68, i32 0, i32 3, !dbg !1027
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %69, i64 0, i64 %67, !dbg !1026
  %71 = load i32, i32* %70, align 4, !dbg !1026
  store i32 %71, i32* %10, align 4, !dbg !1028
  %72 = load i32, i32* %10, align 4, !dbg !1029
  %73 = load i32, i32* %5, align 4, !dbg !1030
  %74 = icmp slt i32 %72, %73, !dbg !1031
  br i1 %74, label %75, label %81, !dbg !1029

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %10, align 4, !dbg !1032
  %77 = sext i32 %76 to i64, !dbg !1034
  %78 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1034
  %79 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %78, i64 %77, !dbg !1034
  %80 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %79, align 8, !dbg !1034
  br label %82, !dbg !1035

; <label>:81:                                     ; preds = %65
  br label %82, !dbg !1036

; <label>:82:                                     ; preds = %81, %75
  %83 = phi void (i8*, i8*, i8*, i8*, i8*, i8*)* [ %80, %75 ], [ null, %81 ], !dbg !1038
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %83, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1040
  %84 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1041
  %85 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %84, null, !dbg !1043
  br i1 %85, label %86, label %90, !dbg !1044

; <label>:86:                                     ; preds = %82
  %87 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1045
  %88 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %87, i64 1, !dbg !1045
  %89 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %88, align 8, !dbg !1045
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %89, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1047
  br label %90, !dbg !1048

; <label>:90:                                     ; preds = %86, %82
  %91 = load i32, i32* %9, align 4, !dbg !1049
  %92 = sext i32 %91 to i64, !dbg !1050
  %93 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1050
  %94 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %93, i32 0, i32 2, !dbg !1051
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* %94, i64 0, i64 %92, !dbg !1050
  %96 = load i32, i32* %95, align 4, !dbg !1050
  %97 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1052
  call void @signal_add_full_id(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 %96, void (i8*, i8*, i8*, i8*, i8*, i8*)* %97, i8* null), !dbg !1053
  br label %98, !dbg !1054

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %9, align 4, !dbg !1055
  %100 = add nsw i32 %99, 1, !dbg !1055
  store i32 %100, i32* %9, align 4, !dbg !1055
  br label %59, !dbg !1057, !llvm.loop !1058

; <label>:101:                                    ; preds = %15, %22, %29, %38, %47, %59
  ret void, !dbg !1060
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_add_full_id(i8*, i32, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @expando_unbind(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #0 !dbg !1061 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)**, align 8
  %7 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %8 = alloca %struct.EXPANDO_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1062, metadata !531), !dbg !1063
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1064, metadata !531), !dbg !1065
  store void (i8*, i8*, i8*, i8*, i8*, i8*)** %2, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, metadata !1066, metadata !531), !dbg !1067
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, metadata !1068, metadata !531), !dbg !1069
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %8, metadata !1070, metadata !531), !dbg !1071
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1072, metadata !531), !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1074, metadata !531), !dbg !1075
  br label %11, !dbg !1076, !llvm.loop !1077

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %4, align 8, !dbg !1078
  %13 = icmp ne i8* %12, null, !dbg !1082
  br i1 %13, label %14, label %15, !dbg !1078

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1083

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_unbind, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !1086
  br label %101, !dbg !1089

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1090

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1092, !llvm.loop !1093

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !1094
  %20 = icmp sge i32 %19, 1, !dbg !1098
  br i1 %20, label %21, label %22, !dbg !1094

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1099

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_unbind, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !1102
  br label %101, !dbg !1105

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1106

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !1108, !llvm.loop !1109

; <label>:25:                                     ; preds = %24
  %26 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1110
  %27 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)** %26, null, !dbg !1114
  br i1 %27, label %28, label %29, !dbg !1110

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !1115

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_unbind, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)), !dbg !1118
  br label %101, !dbg !1121

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1122

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1124, !llvm.loop !1125

; <label>:32:                                     ; preds = %31
  %33 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1126
  %34 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %33, i64 0, !dbg !1126
  %35 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %34, align 8, !dbg !1126
  %36 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %35, null, !dbg !1130
  br i1 %36, label %37, label %38, !dbg !1126

; <label>:37:                                     ; preds = %32
  br label %39, !dbg !1131

; <label>:38:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_unbind, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)), !dbg !1134
  br label %101, !dbg !1137

; <label>:39:                                     ; preds = %37
  br label %40, !dbg !1138

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1140
  %42 = call %struct.EXPANDO_REC* @expando_find(i8* %41), !dbg !1141
  store %struct.EXPANDO_REC* %42, %struct.EXPANDO_REC** %8, align 8, !dbg !1142
  br label %43, !dbg !1143, !llvm.loop !1144

; <label>:43:                                     ; preds = %40
  %44 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1145
  %45 = icmp ne %struct.EXPANDO_REC* %44, null, !dbg !1149
  br i1 %45, label %46, label %47, !dbg !1145

; <label>:46:                                     ; preds = %43
  br label %48, !dbg !1150

; <label>:47:                                     ; preds = %43
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expando_unbind, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)), !dbg !1153
  br label %101, !dbg !1156

; <label>:48:                                     ; preds = %46
  br label %49, !dbg !1157

; <label>:49:                                     ; preds = %48
  %50 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1159
  %51 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %50, i32 0, i32 1, !dbg !1161
  %52 = load i32, i32* %51, align 8, !dbg !1161
  %53 = icmp eq i32 %52, 0, !dbg !1162
  br i1 %53, label %54, label %58, !dbg !1163

; <label>:54:                                     ; preds = %49
  %55 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1164
  %56 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %55, i64 1, !dbg !1164
  %57 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %56, align 8, !dbg !1164
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* %57, i8* null), !dbg !1166
  br label %58, !dbg !1167

; <label>:58:                                     ; preds = %54, %49
  store i32 0, i32* %9, align 4, !dbg !1168
  br label %59, !dbg !1170

; <label>:59:                                     ; preds = %98, %58
  %60 = load i32, i32* %9, align 4, !dbg !1171
  %61 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1174
  %62 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %61, i32 0, i32 1, !dbg !1175
  %63 = load i32, i32* %62, align 8, !dbg !1175
  %64 = icmp slt i32 %60, %63, !dbg !1176
  br i1 %64, label %65, label %101, !dbg !1177

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* %9, align 4, !dbg !1178
  %67 = sext i32 %66 to i64, !dbg !1180
  %68 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1180
  %69 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %68, i32 0, i32 3, !dbg !1181
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %69, i64 0, i64 %67, !dbg !1180
  %71 = load i32, i32* %70, align 4, !dbg !1180
  store i32 %71, i32* %10, align 4, !dbg !1182
  %72 = load i32, i32* %10, align 4, !dbg !1183
  %73 = load i32, i32* %5, align 4, !dbg !1184
  %74 = icmp slt i32 %72, %73, !dbg !1185
  br i1 %74, label %75, label %81, !dbg !1183

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %10, align 4, !dbg !1186
  %77 = sext i32 %76 to i64, !dbg !1188
  %78 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1188
  %79 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %78, i64 %77, !dbg !1188
  %80 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %79, align 8, !dbg !1188
  br label %82, !dbg !1189

; <label>:81:                                     ; preds = %65
  br label %82, !dbg !1190

; <label>:82:                                     ; preds = %81, %75
  %83 = phi void (i8*, i8*, i8*, i8*, i8*, i8*)* [ %80, %75 ], [ null, %81 ], !dbg !1192
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %83, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1194
  %84 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1195
  %85 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %84, null, !dbg !1197
  br i1 %85, label %86, label %90, !dbg !1198

; <label>:86:                                     ; preds = %82
  %87 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1199
  %88 = getelementptr inbounds void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %87, i64 1, !dbg !1199
  %89 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %88, align 8, !dbg !1199
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %89, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1201
  br label %90, !dbg !1202

; <label>:90:                                     ; preds = %86, %82
  %91 = load i32, i32* %9, align 4, !dbg !1203
  %92 = sext i32 %91 to i64, !dbg !1204
  %93 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %8, align 8, !dbg !1204
  %94 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %93, i32 0, i32 2, !dbg !1205
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* %94, i64 0, i64 %92, !dbg !1204
  %96 = load i32, i32* %95, align 4, !dbg !1204
  %97 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %7, align 8, !dbg !1206
  call void @signal_remove_id(i32 %96, void (i8*, i8*, i8*, i8*, i8*, i8*)* %97, i8* null), !dbg !1207
  br label %98, !dbg !1208

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %9, align 4, !dbg !1209
  %100 = add nsw i32 %99, 1, !dbg !1209
  store i32 %100, i32* %9, align 4, !dbg !1209
  br label %59, !dbg !1211, !llvm.loop !1212

; <label>:101:                                    ; preds = %15, %22, %29, %38, %47, %59
  ret void, !dbg !1214
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_id(i32, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define i32* @expando_get_signals(i8*) #0 !dbg !1215 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.EXPANDO_REC*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1218, metadata !531), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %4, metadata !1220, metadata !531), !dbg !1221
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1222, metadata !531), !dbg !1223
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1224, metadata !531), !dbg !1225
  br label %7, !dbg !1226, !llvm.loop !1227

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !1228
  %9 = icmp ne i8* %8, null, !dbg !1232
  br i1 %9, label %10, label %11, !dbg !1228

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1233

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.expando_get_signals, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !1236
  store i32* null, i32** %2, align 8, !dbg !1239
  br label %91, !dbg !1239

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1240

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %3, align 8, !dbg !1242
  %15 = call %struct.EXPANDO_REC* @expando_find(i8* %14), !dbg !1243
  store %struct.EXPANDO_REC* %15, %struct.EXPANDO_REC** %4, align 8, !dbg !1244
  %16 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1245
  %17 = icmp eq %struct.EXPANDO_REC* %16, null, !dbg !1247
  br i1 %17, label %23, label %18, !dbg !1248

; <label>:18:                                     ; preds = %13
  %19 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1249
  %20 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %19, i32 0, i32 1, !dbg !1251
  %21 = load i32, i32* %20, align 8, !dbg !1251
  %22 = icmp slt i32 %21, 0, !dbg !1252
  br i1 %22, label %23, label %24, !dbg !1253

; <label>:23:                                     ; preds = %18, %13
  store i32* null, i32** %2, align 8, !dbg !1254
  br label %91, !dbg !1254

; <label>:24:                                     ; preds = %18
  %25 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1255
  %26 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %25, i32 0, i32 1, !dbg !1257
  %27 = load i32, i32* %26, align 8, !dbg !1257
  %28 = icmp eq i32 %27, 0, !dbg !1258
  br i1 %28, label %29, label %40, !dbg !1259

; <label>:29:                                     ; preds = %24
  %30 = call noalias i8* @g_malloc_n(i64 3, i64 4), !dbg !1260
  %31 = bitcast i8* %30 to i32*, !dbg !1262
  store i32* %31, i32** %5, align 8, !dbg !1263
  %32 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)), !dbg !1264
  %33 = load i32*, i32** %5, align 8, !dbg !1265
  %34 = getelementptr inbounds i32, i32* %33, i64 0, !dbg !1265
  store i32 %32, i32* %34, align 4, !dbg !1266
  %35 = load i32*, i32** %5, align 8, !dbg !1267
  %36 = getelementptr inbounds i32, i32* %35, i64 1, !dbg !1267
  store i32 1, i32* %36, align 4, !dbg !1268
  %37 = load i32*, i32** %5, align 8, !dbg !1269
  %38 = getelementptr inbounds i32, i32* %37, i64 2, !dbg !1269
  store i32 -1, i32* %38, align 4, !dbg !1270
  %39 = load i32*, i32** %5, align 8, !dbg !1271
  store i32* %39, i32** %2, align 8, !dbg !1272
  br label %91, !dbg !1272

; <label>:40:                                     ; preds = %24
  %41 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1273
  %42 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %41, i32 0, i32 1, !dbg !1274
  %43 = load i32, i32* %42, align 8, !dbg !1274
  %44 = mul nsw i32 %43, 2, !dbg !1275
  %45 = add nsw i32 %44, 1, !dbg !1276
  %46 = sext i32 %45 to i64, !dbg !1277
  %47 = call noalias i8* @g_malloc_n(i64 %46, i64 4), !dbg !1278
  %48 = bitcast i8* %47 to i32*, !dbg !1279
  store i32* %48, i32** %5, align 8, !dbg !1280
  store i32 0, i32* %6, align 4, !dbg !1281
  br label %49, !dbg !1283

; <label>:49:                                     ; preds = %79, %40
  %50 = load i32, i32* %6, align 4, !dbg !1284
  %51 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1287
  %52 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %51, i32 0, i32 1, !dbg !1288
  %53 = load i32, i32* %52, align 8, !dbg !1288
  %54 = icmp slt i32 %50, %53, !dbg !1289
  br i1 %54, label %55, label %82, !dbg !1290

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* %6, align 4, !dbg !1291
  %57 = sext i32 %56 to i64, !dbg !1293
  %58 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1293
  %59 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %58, i32 0, i32 2, !dbg !1294
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %59, i64 0, i64 %57, !dbg !1293
  %61 = load i32, i32* %60, align 4, !dbg !1293
  %62 = load i32, i32* %6, align 4, !dbg !1295
  %63 = mul nsw i32 %62, 2, !dbg !1296
  %64 = sext i32 %63 to i64, !dbg !1297
  %65 = load i32*, i32** %5, align 8, !dbg !1297
  %66 = getelementptr inbounds i32, i32* %65, i64 %64, !dbg !1297
  store i32 %61, i32* %66, align 4, !dbg !1298
  %67 = load i32, i32* %6, align 4, !dbg !1299
  %68 = sext i32 %67 to i64, !dbg !1300
  %69 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1300
  %70 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %69, i32 0, i32 3, !dbg !1301
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %70, i64 0, i64 %68, !dbg !1300
  %72 = load i32, i32* %71, align 4, !dbg !1300
  %73 = load i32, i32* %6, align 4, !dbg !1302
  %74 = mul nsw i32 %73, 2, !dbg !1303
  %75 = add nsw i32 %74, 1, !dbg !1304
  %76 = sext i32 %75 to i64, !dbg !1305
  %77 = load i32*, i32** %5, align 8, !dbg !1305
  %78 = getelementptr inbounds i32, i32* %77, i64 %76, !dbg !1305
  store i32 %72, i32* %78, align 4, !dbg !1306
  br label %79, !dbg !1307

; <label>:79:                                     ; preds = %55
  %80 = load i32, i32* %6, align 4, !dbg !1308
  %81 = add nsw i32 %80, 1, !dbg !1308
  store i32 %81, i32* %6, align 4, !dbg !1308
  br label %49, !dbg !1310, !llvm.loop !1311

; <label>:82:                                     ; preds = %49
  %83 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %4, align 8, !dbg !1313
  %84 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %83, i32 0, i32 1, !dbg !1314
  %85 = load i32, i32* %84, align 8, !dbg !1314
  %86 = mul nsw i32 %85, 2, !dbg !1315
  %87 = sext i32 %86 to i64, !dbg !1316
  %88 = load i32*, i32** %5, align 8, !dbg !1316
  %89 = getelementptr inbounds i32, i32* %88, i64 %87, !dbg !1316
  store i32 -1, i32* %89, align 4, !dbg !1317
  %90 = load i32*, i32** %5, align 8, !dbg !1318
  store i32* %90, i32** %2, align 8, !dbg !1319
  br label %91, !dbg !1319

; <label>:91:                                     ; preds = %82, %29, %23, %11
  %92 = load i32*, i32** %2, align 8, !dbg !1320
  ret i32* %92, !dbg !1320
}

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_char(i8 signext) #0 !dbg !1321 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1324, metadata !531), !dbg !1325
  %3 = load i8, i8* %2, align 1, !dbg !1326
  %4 = zext i8 %3 to i32, !dbg !1327
  %5 = sext i32 %4 to i64, !dbg !1328
  %6 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %5, !dbg !1328
  %7 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %6, align 8, !dbg !1328
  %8 = icmp eq %struct.EXPANDO_REC* %7, null, !dbg !1329
  br i1 %8, label %9, label %10, !dbg !1330

; <label>:9:                                      ; preds = %1
  br label %18, !dbg !1331

; <label>:10:                                     ; preds = %1
  %11 = load i8, i8* %2, align 1, !dbg !1333
  %12 = zext i8 %11 to i32, !dbg !1334
  %13 = sext i32 %12 to i64, !dbg !1335
  %14 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %13, !dbg !1335
  %15 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %14, align 8, !dbg !1335
  %16 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %15, i32 0, i32 0, !dbg !1336
  %17 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %16, align 8, !dbg !1336
  br label %18, !dbg !1337

; <label>:18:                                     ; preds = %10, %9
  %19 = phi i8* (%struct._SERVER_REC*, i8*, i32*)* [ null, %9 ], [ %17, %10 ], !dbg !1339
  ret i8* (%struct._SERVER_REC*, i8*, i32*)* %19, !dbg !1341
}

; Function Attrs: nounwind uwtable
define i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_long(i8*) #0 !dbg !1342 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.EXPANDO_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1345, metadata !531), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct.EXPANDO_REC** %3, metadata !1347, metadata !531), !dbg !1348
  %4 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !1349
  %5 = load i8*, i8** %2, align 8, !dbg !1350
  %6 = call i8* @g_hash_table_lookup(%struct._GHashTable* %4, i8* %5), !dbg !1351
  %7 = bitcast i8* %6 to %struct.EXPANDO_REC*, !dbg !1351
  store %struct.EXPANDO_REC* %7, %struct.EXPANDO_REC** %3, align 8, !dbg !1348
  %8 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %3, align 8, !dbg !1352
  %9 = icmp eq %struct.EXPANDO_REC* %8, null, !dbg !1353
  br i1 %9, label %10, label %11, !dbg !1352

; <label>:10:                                     ; preds = %1
  br label %15, !dbg !1354

; <label>:11:                                     ; preds = %1
  %12 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %3, align 8, !dbg !1356
  %13 = getelementptr inbounds %struct.EXPANDO_REC, %struct.EXPANDO_REC* %12, i32 0, i32 0, !dbg !1358
  %14 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %13, align 8, !dbg !1358
  br label %15, !dbg !1359

; <label>:15:                                     ; preds = %11, %10
  %16 = phi i8* (%struct._SERVER_REC*, i8*, i32*)* [ null, %10 ], [ %14, %11 ], !dbg !1360
  ret i8* (%struct._SERVER_REC*, i8*, i32*)* %16, !dbg !1362
}

; Function Attrs: nounwind uwtable
define void @expandos_init() #0 !dbg !1363 {
  %1 = alloca %struct.utsname, align 1
  call void @llvm.dbg.declare(metadata %struct.utsname* %1, metadata !1364, metadata !531), !dbg !1377
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !dbg !1378
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)), !dbg !1379
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 0), !dbg !1380
  store i8* null, i8** @last_sent_msg, align 8, !dbg !1381
  store i8* null, i8** @last_sent_msg_body, align 8, !dbg !1382
  store i8* null, i8** @last_privmsg_from, align 8, !dbg !1383
  store i8* null, i8** @last_public_from, align 8, !dbg !1384
  store i64 0, i64* @last_timestamp, align 8, !dbg !1385
  store i8* null, i8** @sysarch, align 8, !dbg !1386
  store i8* null, i8** @sysrelease, align 8, !dbg !1387
  store i8* null, i8** @sysname, align 8, !dbg !1388
  %2 = call i32 @uname(%struct.utsname* %1) #3, !dbg !1389
  %3 = icmp sge i32 %2, 0, !dbg !1391
  br i1 %3, label %4, label %14, !dbg !1392

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0, !dbg !1393
  %6 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i32 0, i32 0, !dbg !1395
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !1396
  store i8* %7, i8** @sysname, align 8, !dbg !1397
  %8 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 2, !dbg !1398
  %9 = getelementptr inbounds [65 x i8], [65 x i8]* %8, i32 0, i32 0, !dbg !1399
  %10 = call noalias i8* @g_strdup(i8* %9), !dbg !1400
  store i8* %10, i8** @sysrelease, align 8, !dbg !1401
  %11 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 4, !dbg !1402
  %12 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i32 0, i32 0, !dbg !1403
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !1404
  store i8* %13, i8** @sysarch, align 8, !dbg !1405
  br label %14, !dbg !1406

; <label>:14:                                     ; preds = %4, %0
  call void @llvm.memset.p0i8.i64(i8* bitcast ([256 x %struct.EXPANDO_REC*]* @char_expandos to i8*), i8 0, i64 2048, i32 16, i1 false), !dbg !1407
  %15 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1408
  store %struct._GHashTable* %15, %struct._GHashTable** @expandos, align 8, !dbg !1409
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastmsg, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 2, i8* null), !dbg !1410
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastmymsg, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* null), !dbg !1411
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastpublic, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 2, i8* null), !dbg !1412
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_awaymsg, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* null), !dbg !1413
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastmymsg_body, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* null), !dbg !1414
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_channel, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* null), !dbg !1415
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_clientstarted, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1416
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_last_invite, i8* null), !dbg !1417
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_version, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1418
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cmdchars, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* null), !dbg !1419
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cmdchar, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* null), !dbg !1420
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_chanmode, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i32 4, i8* null), !dbg !1421
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_nick, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), i32 2, i8* null), !dbg !1422
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_statusoper, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 3, i8* null), !dbg !1423
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_chanop, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32 4, i8* null), !dbg !1424
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_query, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* null), !dbg !1425
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_serverversion, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* null), !dbg !1426
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_target, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* null), !dbg !1427
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_releasedate, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1428
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_releasetime, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1429
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_abiversion, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1430
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_workdir, i8* null), !dbg !1431
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_realname, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* null), !dbg !1432
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_time, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 1, i8* null), !dbg !1433
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_dollar, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1434
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_sysname, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1435
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_sysrelease, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1436
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_sysarch, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i32 5, i8* null), !dbg !1437
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_topic, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i32 0, i32 0), i32 4, i8* null), !dbg !1438
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_servertag, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* null), !dbg !1439
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_chatnet, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 3, i8* null), !dbg !1440
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_itemname, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0), i32 4, i8* null), !dbg !1441
  call void @read_settings(), !dbg !1442
  %16 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_timer to i32 (i8*)*), i8* null), !dbg !1443
  store i32 %16, i32* @timer_tag, align 4, !dbg !1444
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1445
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1446
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1447
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1448
  ret void, !dbg !1449
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastmsg(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1450 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1451, metadata !531), !dbg !1452
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1453, metadata !531), !dbg !1454
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1455, metadata !531), !dbg !1456
  %7 = load i8*, i8** @last_privmsg_from, align 8, !dbg !1457
  ret i8* %7, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastmymsg(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1459 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1460, metadata !531), !dbg !1461
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1462, metadata !531), !dbg !1463
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1464, metadata !531), !dbg !1465
  %7 = load i8*, i8** @last_sent_msg, align 8, !dbg !1466
  ret i8* %7, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastpublic(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1468 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1469, metadata !531), !dbg !1470
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1471, metadata !531), !dbg !1472
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1473, metadata !531), !dbg !1474
  %7 = load i8*, i8** @last_public_from, align 8, !dbg !1475
  ret i8* %7, !dbg !1476
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_awaymsg(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1477 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1478, metadata !531), !dbg !1479
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1480, metadata !531), !dbg !1481
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1482, metadata !531), !dbg !1483
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1484
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1485
  br i1 %8, label %9, label %10, !dbg !1484

; <label>:9:                                      ; preds = %3
  br label %14, !dbg !1486

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1488
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 17, !dbg !1490
  %13 = load i8*, i8** %12, align 8, !dbg !1490
  br label %14, !dbg !1491

; <label>:14:                                     ; preds = %10, %9
  %15 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %13, %10 ], !dbg !1492
  ret i8* %15, !dbg !1494
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastmymsg_body(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1495 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1496, metadata !531), !dbg !1497
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1498, metadata !531), !dbg !1499
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1500, metadata !531), !dbg !1501
  %7 = load i8*, i8** @last_sent_msg_body, align 8, !dbg !1502
  ret i8* %7, !dbg !1503
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_channel(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1504 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1505, metadata !531), !dbg !1506
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1507, metadata !531), !dbg !1508
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1509, metadata !531), !dbg !1510
  %7 = load i8*, i8** %5, align 8, !dbg !1511
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1512
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !1513
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !1513
  br i1 %10, label %11, label %12, !dbg !1514

; <label>:11:                                     ; preds = %3
  br i1 false, label %13, label %14, !dbg !1515

; <label>:12:                                     ; preds = %3
  br i1 false, label %14, label %13, !dbg !1517

; <label>:13:                                     ; preds = %12, %11
  br label %20, !dbg !1519

; <label>:14:                                     ; preds = %12, %11
  %15 = load i8*, i8** %5, align 8, !dbg !1521
  %16 = call i8* @module_check_cast_module(i8* %15, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1523
  %17 = bitcast i8* %16 to %struct._CHANNEL_REC*, !dbg !1524
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 6, !dbg !1525
  %19 = load i8*, i8** %18, align 8, !dbg !1525
  br label %20, !dbg !1526

; <label>:20:                                     ; preds = %14, %13
  %21 = phi i8* [ null, %13 ], [ %19, %14 ], !dbg !1527
  ret i8* %21, !dbg !1529
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_clientstarted(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1530 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1531, metadata !531), !dbg !1532
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1533, metadata !531), !dbg !1534
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1535, metadata !531), !dbg !1536
  %7 = load i32*, i32** %6, align 8, !dbg !1537
  store i32 1, i32* %7, align 4, !dbg !1538
  %8 = load i64, i64* @client_start_time, align 8, !dbg !1539
  %9 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i64 %8), !dbg !1540
  ret i8* %9, !dbg !1541
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_last_invite(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1542 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1543, metadata !531), !dbg !1544
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1545, metadata !531), !dbg !1546
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1547, metadata !531), !dbg !1548
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1549
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1550
  br i1 %8, label %9, label %10, !dbg !1549

; <label>:9:                                      ; preds = %3
  br label %14, !dbg !1551

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1553
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 18, !dbg !1555
  %13 = load i8*, i8** %12, align 8, !dbg !1555
  br label %14, !dbg !1556

; <label>:14:                                     ; preds = %10, %9
  %15 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %13, %10 ], !dbg !1557
  ret i8* %15, !dbg !1559
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_version(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1560 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1561, metadata !531), !dbg !1562
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1563, metadata !531), !dbg !1564
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1565, metadata !531), !dbg !1566
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), !dbg !1567
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_cmdchars(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1568 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1569, metadata !531), !dbg !1570
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1571, metadata !531), !dbg !1572
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1573, metadata !531), !dbg !1574
  %7 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)), !dbg !1575
  ret i8* %7, !dbg !1576
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_cmdchar(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1577 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i8], align 1
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1578, metadata !531), !dbg !1579
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1580, metadata !531), !dbg !1581
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1582, metadata !531), !dbg !1583
  call void @llvm.dbg.declare(metadata [2 x i8]* %7, metadata !1584, metadata !531), !dbg !1586
  %8 = bitcast [2 x i8]* %7 to i8*, !dbg !1586
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 2, i32 1, i1 false), !dbg !1586
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0)), !dbg !1587
  %10 = load i8, i8* %9, align 1, !dbg !1588
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0, !dbg !1589
  store i8 %10, i8* %11, align 1, !dbg !1590
  %12 = load i32*, i32** %6, align 8, !dbg !1591
  store i32 1, i32* %12, align 4, !dbg !1592
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i32 0, i32 0, !dbg !1593
  %14 = call noalias i8* @g_strdup(i8* %13), !dbg !1594
  ret i8* %14, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_chanmode(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1596 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1597, metadata !531), !dbg !1598
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1599, metadata !531), !dbg !1600
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1601, metadata !531), !dbg !1602
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1603, metadata !531), !dbg !1604
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1605, metadata !531), !dbg !1606
  %10 = load i32*, i32** %7, align 8, !dbg !1607
  store i32 0, i32* %10, align 4, !dbg !1608
  %11 = load i8*, i8** %6, align 8, !dbg !1609
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1611
  %13 = bitcast i8* %12 to %struct._CHANNEL_REC*, !dbg !1612
  %14 = icmp ne %struct._CHANNEL_REC* %13, null, !dbg !1612
  br i1 %14, label %15, label %16, !dbg !1613

; <label>:15:                                     ; preds = %3
  br i1 false, label %17, label %18, !dbg !1614

; <label>:16:                                     ; preds = %3
  br i1 false, label %18, label %17, !dbg !1616

; <label>:17:                                     ; preds = %16, %15
  store i8* null, i8** %4, align 8, !dbg !1618
  br label %43, !dbg !1618

; <label>:18:                                     ; preds = %16, %15
  %19 = call i32 @settings_get_bool(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)), !dbg !1619
  %20 = icmp ne i32 %19, 0, !dbg !1619
  br i1 %20, label %27, label %21, !dbg !1621

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %6, align 8, !dbg !1622
  %23 = call i8* @module_check_cast_module(i8* %22, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1623
  %24 = bitcast i8* %23 to %struct._CHANNEL_REC*, !dbg !1624
  %25 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %24, i32 0, i32 18, !dbg !1625
  %26 = load i8*, i8** %25, align 8, !dbg !1625
  store i8* %26, i8** %4, align 8, !dbg !1626
  br label %43, !dbg !1626

; <label>:27:                                     ; preds = %18
  %28 = load i32*, i32** %7, align 8, !dbg !1627
  store i32 1, i32* %28, align 4, !dbg !1628
  %29 = load i8*, i8** %6, align 8, !dbg !1629
  %30 = call i8* @module_check_cast_module(i8* %29, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1630
  %31 = bitcast i8* %30 to %struct._CHANNEL_REC*, !dbg !1631
  %32 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %31, i32 0, i32 18, !dbg !1632
  %33 = load i8*, i8** %32, align 8, !dbg !1632
  %34 = call noalias i8* @g_strdup(i8* %33), !dbg !1633
  store i8* %34, i8** %8, align 8, !dbg !1635
  %35 = load i8*, i8** %8, align 8, !dbg !1636
  %36 = call i8* @strchr(i8* %35, i32 32) #7, !dbg !1637
  store i8* %36, i8** %9, align 8, !dbg !1638
  %37 = load i8*, i8** %9, align 8, !dbg !1639
  %38 = icmp ne i8* %37, null, !dbg !1641
  br i1 %38, label %39, label %41, !dbg !1642

; <label>:39:                                     ; preds = %27
  %40 = load i8*, i8** %9, align 8, !dbg !1643
  store i8 0, i8* %40, align 1, !dbg !1644
  br label %41, !dbg !1645

; <label>:41:                                     ; preds = %39, %27
  %42 = load i8*, i8** %8, align 8, !dbg !1646
  store i8* %42, i8** %4, align 8, !dbg !1647
  br label %43, !dbg !1647

; <label>:43:                                     ; preds = %41, %21, %17
  %44 = load i8*, i8** %4, align 8, !dbg !1648
  ret i8* %44, !dbg !1648
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_nick(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1649 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1650, metadata !531), !dbg !1651
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1652, metadata !531), !dbg !1653
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1654, metadata !531), !dbg !1655
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1656
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1657
  br i1 %8, label %9, label %10, !dbg !1656

; <label>:9:                                      ; preds = %3
  br label %14, !dbg !1658

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1660
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 7, !dbg !1662
  %13 = load i8*, i8** %12, align 8, !dbg !1662
  br label %14, !dbg !1663

; <label>:14:                                     ; preds = %10, %9
  %15 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %13, %10 ], !dbg !1664
  ret i8* %15, !dbg !1666
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_statusoper(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1667 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1668, metadata !531), !dbg !1669
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1670, metadata !531), !dbg !1671
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1672, metadata !531), !dbg !1673
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1674
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1675
  br i1 %8, label %16, label %9, !dbg !1676

; <label>:9:                                      ; preds = %3
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1677
  %11 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %10, i32 0, i32 19, !dbg !1679
  %12 = load i8, i8* %11, align 8, !dbg !1679
  %13 = and i8 %12, 1, !dbg !1679
  %14 = zext i8 %13 to i32, !dbg !1679
  %15 = icmp ne i32 %14, 0, !dbg !1677
  br i1 %15, label %17, label %16, !dbg !1680

; <label>:16:                                     ; preds = %9, %3
  br label %19, !dbg !1681

; <label>:17:                                     ; preds = %9
  %18 = call i8* @settings_get_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)), !dbg !1683
  br label %19, !dbg !1684

; <label>:19:                                     ; preds = %17, %16
  %20 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %16 ], [ %18, %17 ], !dbg !1686
  ret i8* %20, !dbg !1688
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_chanop(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1689 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1690, metadata !531), !dbg !1691
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1692, metadata !531), !dbg !1693
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1694, metadata !531), !dbg !1695
  %7 = load i8*, i8** %5, align 8, !dbg !1696
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1697
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !1698
  %10 = icmp ne %struct._CHANNEL_REC* %9, null, !dbg !1698
  br i1 %10, label %11, label %12, !dbg !1699

; <label>:11:                                     ; preds = %3
  br i1 false, label %22, label %13, !dbg !1700

; <label>:12:                                     ; preds = %3
  br i1 false, label %13, label %22, !dbg !1702

; <label>:13:                                     ; preds = %12, %11
  %14 = load i8*, i8** %5, align 8, !dbg !1704
  %15 = call i8* @module_check_cast_module(i8* %14, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1706
  %16 = bitcast i8* %15 to %struct._CHANNEL_REC*, !dbg !1707
  %17 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %16, i32 0, i32 21, !dbg !1708
  %18 = load i16, i16* %17, align 8, !dbg !1708
  %19 = and i16 %18, 1, !dbg !1708
  %20 = zext i16 %19 to i32, !dbg !1708
  %21 = icmp ne i32 %20, 0, !dbg !1709
  br label %22

; <label>:22:                                     ; preds = %13, %12, %11
  %23 = phi i1 [ false, %12 ], [ false, %11 ], [ %21, %13 ]
  %24 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), !dbg !1710
  ret i8* %24, !dbg !1712
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_query(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1713 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1714, metadata !531), !dbg !1715
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1716, metadata !531), !dbg !1717
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1718, metadata !531), !dbg !1719
  %7 = load i8*, i8** %5, align 8, !dbg !1720
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)), !dbg !1721
  %9 = bitcast i8* %8 to %struct._QUERY_REC*, !dbg !1722
  %10 = icmp ne %struct._QUERY_REC* %9, null, !dbg !1722
  br i1 %10, label %11, label %12, !dbg !1723

; <label>:11:                                     ; preds = %3
  br i1 false, label %13, label %14, !dbg !1724

; <label>:12:                                     ; preds = %3
  br i1 false, label %14, label %13, !dbg !1726

; <label>:13:                                     ; preds = %12, %11
  br label %20, !dbg !1728

; <label>:14:                                     ; preds = %12, %11
  %15 = load i8*, i8** %5, align 8, !dbg !1730
  %16 = call i8* @module_check_cast_module(i8* %15, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)), !dbg !1732
  %17 = bitcast i8* %16 to %struct._QUERY_REC*, !dbg !1733
  %18 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %17, i32 0, i32 6, !dbg !1734
  %19 = load i8*, i8** %18, align 8, !dbg !1734
  br label %20, !dbg !1735

; <label>:20:                                     ; preds = %14, %13
  %21 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %13 ], [ %19, %14 ], !dbg !1736
  ret i8* %21, !dbg !1738
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_serverversion(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1739 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1740, metadata !531), !dbg !1741
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1742, metadata !531), !dbg !1743
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1744, metadata !531), !dbg !1745
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1746
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1747
  br i1 %8, label %9, label %10, !dbg !1746

; <label>:9:                                      ; preds = %3
  br label %14, !dbg !1748

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1750
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 16, !dbg !1752
  %13 = load i8*, i8** %12, align 8, !dbg !1752
  br label %14, !dbg !1753

; <label>:14:                                     ; preds = %10, %9
  %15 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %13, %10 ], !dbg !1754
  ret i8* %15, !dbg !1756
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_target(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1757 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1758, metadata !531), !dbg !1759
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1760, metadata !531), !dbg !1761
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1762, metadata !531), !dbg !1763
  %7 = load i8*, i8** %5, align 8, !dbg !1764
  %8 = icmp eq i8* %7, null, !dbg !1765
  br i1 %8, label %9, label %10, !dbg !1764

; <label>:9:                                      ; preds = %3
  br label %18, !dbg !1766

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !1768
  %12 = bitcast i8* %11 to %struct._WI_ITEM_REC*, !dbg !1769
  %13 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %12, i32 0, i32 11, !dbg !1770
  %14 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %13, align 8, !dbg !1770
  %15 = load i8*, i8** %5, align 8, !dbg !1771
  %16 = bitcast i8* %15 to %struct._WI_ITEM_REC*, !dbg !1772
  %17 = call i8* %14(%struct._WI_ITEM_REC* %16), !dbg !1773
  br label %18, !dbg !1774

; <label>:18:                                     ; preds = %10, %9
  %19 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %17, %10 ], !dbg !1776
  ret i8* %19, !dbg !1778
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_releasedate(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1779 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1780, metadata !531), !dbg !1781
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1782, metadata !531), !dbg !1783
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1784, metadata !531), !dbg !1785
  %7 = load i32*, i32** %6, align 8, !dbg !1786
  store i32 1, i32* %7, align 4, !dbg !1787
  %8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i32 20180907), !dbg !1788
  ret i8* %8, !dbg !1789
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_releasetime(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1790 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1791, metadata !531), !dbg !1792
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1793, metadata !531), !dbg !1794
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1795, metadata !531), !dbg !1796
  %7 = load i32*, i32** %6, align 8, !dbg !1797
  store i32 1, i32* %7, align 4, !dbg !1798
  %8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 2305), !dbg !1799
  ret i8* %8, !dbg !1800
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_abiversion(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1801 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1802, metadata !531), !dbg !1803
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1804, metadata !531), !dbg !1805
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1806, metadata !531), !dbg !1807
  %7 = load i32*, i32** %6, align 8, !dbg !1808
  store i32 1, i32* %7, align 4, !dbg !1809
  %8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i32 17), !dbg !1810
  ret i8* %8, !dbg !1811
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_workdir(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1812 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1813, metadata !531), !dbg !1814
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1815, metadata !531), !dbg !1816
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1817, metadata !531), !dbg !1818
  %7 = load i32*, i32** %6, align 8, !dbg !1819
  store i32 1, i32* %7, align 4, !dbg !1820
  %8 = call i8* @g_get_current_dir(), !dbg !1821
  ret i8* %8, !dbg !1822
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_realname(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1823 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1824, metadata !531), !dbg !1825
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1826, metadata !531), !dbg !1827
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1828, metadata !531), !dbg !1829
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1830
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1831
  br i1 %8, label %9, label %10, !dbg !1830

; <label>:9:                                      ; preds = %3
  br label %16, !dbg !1832

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1834
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 3, !dbg !1836
  %13 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %12, align 8, !dbg !1836
  %14 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %13, i32 0, i32 18, !dbg !1837
  %15 = load i8*, i8** %14, align 8, !dbg !1837
  br label %16, !dbg !1838

; <label>:16:                                     ; preds = %10, %9
  %17 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %15, %10 ], !dbg !1839
  ret i8* %17, !dbg !1841
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_time(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1842 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [256 x i8], align 16
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1843, metadata !531), !dbg !1844
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1845, metadata !531), !dbg !1846
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1847, metadata !531), !dbg !1848
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1849, metadata !531), !dbg !1850
  call void @llvm.dbg.declare(metadata %struct.tm** %9, metadata !1851, metadata !531), !dbg !1866
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !1867, metadata !531), !dbg !1869
  %11 = call i64 @time(i64* null) #3, !dbg !1870
  store i64 %11, i64* %8, align 8, !dbg !1871
  %12 = call %struct.tm* @localtime(i64* %8) #3, !dbg !1872
  store %struct.tm* %12, %struct.tm** %9, align 8, !dbg !1873
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !1874
  %14 = load i8*, i8** @timestamp_format, align 8, !dbg !1876
  %15 = load %struct.tm*, %struct.tm** %9, align 8, !dbg !1877
  %16 = call i64 @strftime(i8* %13, i64 256, i8* %14, %struct.tm* %15) #3, !dbg !1878
  %17 = icmp eq i64 %16, 0, !dbg !1879
  br i1 %17, label %18, label %19, !dbg !1880

; <label>:18:                                     ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8** %4, align 8, !dbg !1881
  br label %23, !dbg !1881

; <label>:19:                                     ; preds = %3
  %20 = load i32*, i32** %7, align 8, !dbg !1882
  store i32 1, i32* %20, align 4, !dbg !1883
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !1884
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !1885
  store i8* %22, i8** %4, align 8, !dbg !1886
  br label %23, !dbg !1886

; <label>:23:                                     ; preds = %19, %18
  %24 = load i8*, i8** %4, align 8, !dbg !1887
  ret i8* %24, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_dollar(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1888 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1889, metadata !531), !dbg !1890
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1891, metadata !531), !dbg !1892
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1893, metadata !531), !dbg !1894
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), !dbg !1895
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_sysname(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1896 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1897, metadata !531), !dbg !1898
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1899, metadata !531), !dbg !1900
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1901, metadata !531), !dbg !1902
  %7 = load i8*, i8** @sysname, align 8, !dbg !1903
  ret i8* %7, !dbg !1904
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_sysrelease(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1905 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1906, metadata !531), !dbg !1907
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1908, metadata !531), !dbg !1909
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1910, metadata !531), !dbg !1911
  %7 = load i8*, i8** @sysrelease, align 8, !dbg !1912
  ret i8* %7, !dbg !1913
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_sysarch(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1914 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1915, metadata !531), !dbg !1916
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1917, metadata !531), !dbg !1918
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1919, metadata !531), !dbg !1920
  %7 = load i8*, i8** @sysarch, align 8, !dbg !1921
  ret i8* %7, !dbg !1922
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_topic(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1923 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1924, metadata !531), !dbg !1925
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1926, metadata !531), !dbg !1927
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1928, metadata !531), !dbg !1929
  %9 = load i8*, i8** %6, align 8, !dbg !1930
  %10 = call i8* @module_check_cast_module(i8* %9, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1932
  %11 = bitcast i8* %10 to %struct._CHANNEL_REC*, !dbg !1933
  %12 = icmp ne %struct._CHANNEL_REC* %11, null, !dbg !1933
  br i1 %12, label %13, label %14, !dbg !1934

; <label>:13:                                     ; preds = %3
  br i1 false, label %21, label %15, !dbg !1935

; <label>:14:                                     ; preds = %3
  br i1 false, label %15, label %21, !dbg !1937

; <label>:15:                                     ; preds = %14, %13
  %16 = load i8*, i8** %6, align 8, !dbg !1939
  %17 = call i8* @module_check_cast_module(i8* %16, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0)), !dbg !1940
  %18 = bitcast i8* %17 to %struct._CHANNEL_REC*, !dbg !1941
  %19 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %18, i32 0, i32 12, !dbg !1942
  %20 = load i8*, i8** %19, align 8, !dbg !1942
  store i8* %20, i8** %4, align 8, !dbg !1943
  br label %59, !dbg !1943

; <label>:21:                                     ; preds = %14, %13
  %22 = load i8*, i8** %6, align 8, !dbg !1944
  %23 = call i8* @module_check_cast_module(i8* %22, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)), !dbg !1946
  %24 = bitcast i8* %23 to %struct._QUERY_REC*, !dbg !1947
  %25 = icmp ne %struct._QUERY_REC* %24, null, !dbg !1947
  br i1 %25, label %26, label %27, !dbg !1948

; <label>:26:                                     ; preds = %21
  br i1 false, label %58, label %28, !dbg !1949

; <label>:27:                                     ; preds = %21
  br i1 false, label %28, label %58, !dbg !1951

; <label>:28:                                     ; preds = %27, %26
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %8, metadata !1952, metadata !531), !dbg !1954
  %29 = load i8*, i8** %6, align 8, !dbg !1955
  %30 = call i8* @module_check_cast_module(i8* %29, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)), !dbg !1956
  %31 = bitcast i8* %30 to %struct._QUERY_REC*, !dbg !1957
  store %struct._QUERY_REC* %31, %struct._QUERY_REC** %8, align 8, !dbg !1954
  %32 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1958
  %33 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %32, i32 0, i32 13, !dbg !1960
  %34 = load i8*, i8** %33, align 8, !dbg !1960
  %35 = icmp eq i8* %34, null, !dbg !1961
  br i1 %35, label %36, label %37, !dbg !1962

; <label>:36:                                     ; preds = %28
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8** %4, align 8, !dbg !1963
  br label %59, !dbg !1963

; <label>:37:                                     ; preds = %28
  %38 = load i32*, i32** %7, align 8, !dbg !1964
  store i32 1, i32* %38, align 4, !dbg !1965
  %39 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1966
  %40 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %39, i32 0, i32 12, !dbg !1967
  %41 = load i8*, i8** %40, align 8, !dbg !1967
  %42 = icmp eq i8* %41, null, !dbg !1968
  br i1 %42, label %43, label %48, !dbg !1966

; <label>:43:                                     ; preds = %37
  %44 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1969
  %45 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %44, i32 0, i32 13, !dbg !1970
  %46 = load i8*, i8** %45, align 8, !dbg !1970
  %47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* %46), !dbg !1971
  br label %56, !dbg !1972

; <label>:48:                                     ; preds = %37
  %49 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1974
  %50 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %49, i32 0, i32 12, !dbg !1975
  %51 = load i8*, i8** %50, align 8, !dbg !1975
  %52 = load %struct._QUERY_REC*, %struct._QUERY_REC** %8, align 8, !dbg !1976
  %53 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %52, i32 0, i32 13, !dbg !1977
  %54 = load i8*, i8** %53, align 8, !dbg !1977
  %55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* %51, i8* %54), !dbg !1978
  br label %56, !dbg !1979

; <label>:56:                                     ; preds = %48, %43
  %57 = phi i8* [ %47, %43 ], [ %55, %48 ], !dbg !1981
  store i8* %57, i8** %4, align 8, !dbg !1983
  br label %59, !dbg !1983

; <label>:58:                                     ; preds = %27, %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), i8** %4, align 8, !dbg !1984
  br label %59, !dbg !1984

; <label>:59:                                     ; preds = %58, %56, %36, %15
  %60 = load i8*, i8** %4, align 8, !dbg !1985
  ret i8* %60, !dbg !1985
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_servertag(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1986 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1987, metadata !531), !dbg !1988
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1989, metadata !531), !dbg !1990
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1991, metadata !531), !dbg !1992
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1993
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1994
  br i1 %8, label %9, label %10, !dbg !1993

; <label>:9:                                      ; preds = %3
  br label %14, !dbg !1995

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1997
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 6, !dbg !1999
  %13 = load i8*, i8** %12, align 8, !dbg !1999
  br label %14, !dbg !2000

; <label>:14:                                     ; preds = %10, %9
  %15 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %13, %10 ], !dbg !2001
  ret i8* %15, !dbg !2003
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_chatnet(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !2004 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !2005, metadata !531), !dbg !2006
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2007, metadata !531), !dbg !2008
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2009, metadata !531), !dbg !2010
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2011
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !2012
  br i1 %8, label %9, label %10, !dbg !2011

; <label>:9:                                      ; preds = %3
  br label %16, !dbg !2013

; <label>:10:                                     ; preds = %3
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2015
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 3, !dbg !2017
  %13 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %12, align 8, !dbg !2017
  %14 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %13, i32 0, i32 12, !dbg !2018
  %15 = load i8*, i8** %14, align 8, !dbg !2018
  br label %16, !dbg !2019

; <label>:16:                                     ; preds = %10, %9
  %17 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %15, %10 ], !dbg !2020
  ret i8* %17, !dbg !2022
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_itemname(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !2023 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !2024, metadata !531), !dbg !2025
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2026, metadata !531), !dbg !2027
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !2028, metadata !531), !dbg !2029
  %7 = load i8*, i8** %5, align 8, !dbg !2030
  %8 = icmp eq i8* %7, null, !dbg !2031
  br i1 %8, label %9, label %10, !dbg !2030

; <label>:9:                                      ; preds = %3
  br label %15, !dbg !2032

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !2034
  %12 = bitcast i8* %11 to %struct._WI_ITEM_REC*, !dbg !2036
  %13 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %12, i32 0, i32 5, !dbg !2037
  %14 = load i8*, i8** %13, align 8, !dbg !2037
  br label %15, !dbg !2038

; <label>:15:                                     ; preds = %10, %9
  %16 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %9 ], [ %14, %10 ], !dbg !2039
  ret i8* %16, !dbg !2041
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !2042 {
  %1 = load i8*, i8** @timestamp_format, align 8, !dbg !2043
  call void @g_free(i8* %1), !dbg !2044
  %2 = call i8* @settings_get_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)), !dbg !2045
  %3 = call noalias i8* @g_strdup(i8* %2), !dbg !2046
  store i8* %3, i8** @timestamp_format, align 8, !dbg !2048
  %4 = load i8*, i8** @timestamp_format, align 8, !dbg !2049
  %5 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0)) #7, !dbg !2050
  %6 = icmp ne i8* %5, null, !dbg !2051
  br i1 %6, label %23, label %7, !dbg !2052

; <label>:7:                                      ; preds = %0
  %8 = load i8*, i8** @timestamp_format, align 8, !dbg !2053
  %9 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)) #7, !dbg !2054
  %10 = icmp ne i8* %9, null, !dbg !2055
  br i1 %10, label %23, label %11, !dbg !2056

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** @timestamp_format, align 8, !dbg !2057
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0)) #7, !dbg !2058
  %14 = icmp ne i8* %13, null, !dbg !2059
  br i1 %14, label %23, label %15, !dbg !2060

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** @timestamp_format, align 8, !dbg !2061
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0)) #7, !dbg !2062
  %18 = icmp ne i8* %17, null, !dbg !2063
  br i1 %18, label %23, label %19, !dbg !2064

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** @timestamp_format, align 8, !dbg !2065
  %21 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0)) #7, !dbg !2066
  %22 = icmp ne i8* %21, null, !dbg !2067
  br label %23, !dbg !2068

; <label>:23:                                     ; preds = %19, %15, %11, %7, %0
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %7 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !2069
  store i32 %25, i32* @timestamp_seconds, align 4, !dbg !2071
  ret void, !dbg !2072
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_timer() #0 !dbg !2073 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2076, metadata !531), !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.tm** %3, metadata !2078, metadata !531), !dbg !2079
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2080, metadata !531), !dbg !2081
  %5 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !2082
  %6 = call i64 @time(i64* null) #3, !dbg !2083
  store i64 %6, i64* %2, align 8, !dbg !2084
  %7 = load i64, i64* @last_timestamp, align 8, !dbg !2085
  %8 = load i64, i64* %2, align 8, !dbg !2087
  %9 = icmp ne i64 %7, %8, !dbg !2088
  br i1 %9, label %10, label %32, !dbg !2089

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* @timestamp_seconds, align 4, !dbg !2090
  %12 = icmp ne i32 %11, 0, !dbg !2090
  br i1 %12, label %29, label %13, !dbg !2093

; <label>:13:                                     ; preds = %10
  %14 = load i64, i64* @last_timestamp, align 8, !dbg !2094
  %15 = icmp ne i64 %14, 0, !dbg !2096
  br i1 %15, label %16, label %29, !dbg !2097

; <label>:16:                                     ; preds = %13
  %17 = call %struct.tm* @localtime(i64* @last_timestamp) #3, !dbg !2098
  store %struct.tm* %17, %struct.tm** %3, align 8, !dbg !2100
  %18 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2101
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 1, !dbg !2102
  %20 = load i32, i32* %19, align 4, !dbg !2102
  store i32 %20, i32* %4, align 4, !dbg !2103
  %21 = call %struct.tm* @localtime(i64* %2) #3, !dbg !2104
  store %struct.tm* %21, %struct.tm** %3, align 8, !dbg !2105
  %22 = load %struct.tm*, %struct.tm** %3, align 8, !dbg !2106
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 1, !dbg !2108
  %24 = load i32, i32* %23, align 4, !dbg !2108
  %25 = load i32, i32* %4, align 4, !dbg !2109
  %26 = icmp eq i32 %24, %25, !dbg !2110
  br i1 %26, label %27, label %28, !dbg !2111

; <label>:27:                                     ; preds = %16
  store i32 1, i32* %1, align 4, !dbg !2112
  br label %33, !dbg !2112

; <label>:28:                                     ; preds = %16
  br label %29, !dbg !2113

; <label>:29:                                     ; preds = %28, %13, %10
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 0), !dbg !2114
  %31 = load i64, i64* %2, align 8, !dbg !2115
  store i64 %31, i64* @last_timestamp, align 8, !dbg !2116
  br label %32, !dbg !2117

; <label>:32:                                     ; preds = %29, %0
  store i32 1, i32* %1, align 4, !dbg !2118
  br label %33, !dbg !2118

; <label>:33:                                     ; preds = %32, %27
  %34 = load i32, i32* %1, align 4, !dbg !2119
  ret i32 %34, !dbg !2119
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_public(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !2120 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !2123, metadata !531), !dbg !2124
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2125, metadata !531), !dbg !2126
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2127, metadata !531), !dbg !2128
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2129, metadata !531), !dbg !2130
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2131, metadata !531), !dbg !2132
  %11 = load i8*, i8** @last_public_from, align 8, !dbg !2133
  call void @g_free(i8* %11), !dbg !2134
  %12 = load i8*, i8** %8, align 8, !dbg !2135
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !2136
  store i8* %13, i8** @last_public_from, align 8, !dbg !2137
  ret void, !dbg !2138
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2139 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2142, metadata !531), !dbg !2143
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2144, metadata !531), !dbg !2145
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2146, metadata !531), !dbg !2147
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2148, metadata !531), !dbg !2149
  %9 = load i8*, i8** @last_privmsg_from, align 8, !dbg !2150
  call void @g_free(i8* %9), !dbg !2151
  %10 = load i8*, i8** %7, align 8, !dbg !2152
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !2153
  store i8* %11, i8** @last_privmsg_from, align 8, !dbg !2154
  ret void, !dbg !2155
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2156 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2157, metadata !531), !dbg !2158
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2159, metadata !531), !dbg !2160
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2161, metadata !531), !dbg !2162
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2163, metadata !531), !dbg !2164
  br label %9, !dbg !2165, !llvm.loop !2166

; <label>:9:                                      ; preds = %4
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2167
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !2171
  br i1 %11, label %12, label %13, !dbg !2167

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2172

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0)), !dbg !2175
  br label %37, !dbg !2178

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2179

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2181, !llvm.loop !2182

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !2183
  %18 = icmp ne i8* %17, null, !dbg !2187
  br i1 %18, label %19, label %20, !dbg !2183

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !2188

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0)), !dbg !2191
  br label %37, !dbg !2194

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !2195

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %7, align 8, !dbg !2197
  %24 = icmp ne i8* %23, null, !dbg !2199
  br i1 %24, label %25, label %37, !dbg !2200

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %7, align 8, !dbg !2201
  %27 = load i8*, i8** @last_sent_msg, align 8, !dbg !2204
  %28 = icmp ne i8* %26, %27, !dbg !2205
  br i1 %28, label %29, label %33, !dbg !2206

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** @last_sent_msg, align 8, !dbg !2207
  call void @g_free(i8* %30), !dbg !2209
  %31 = load i8*, i8** %7, align 8, !dbg !2210
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !2211
  store i8* %32, i8** @last_sent_msg, align 8, !dbg !2212
  br label %33, !dbg !2213

; <label>:33:                                     ; preds = %29, %25
  %34 = load i8*, i8** @last_sent_msg_body, align 8, !dbg !2214
  call void @g_free(i8* %34), !dbg !2215
  %35 = load i8*, i8** %6, align 8, !dbg !2216
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !2217
  store i8* %36, i8** @last_sent_msg_body, align 8, !dbg !2218
  br label %37, !dbg !2219

; <label>:37:                                     ; preds = %13, %20, %33, %22
  ret void, !dbg !2220
}

; Function Attrs: nounwind uwtable
define void @expandos_deinit() #0 !dbg !2221 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2222, metadata !531), !dbg !2223
  store i32 0, i32* %1, align 4, !dbg !2224
  br label %2, !dbg !2226

; <label>:2:                                      ; preds = %12, %0
  %3 = load i32, i32* %1, align 4, !dbg !2227
  %4 = sext i32 %3 to i64, !dbg !2227
  %5 = icmp ult i64 %4, 256, !dbg !2230
  br i1 %5, label %6, label %15, !dbg !2231

; <label>:6:                                      ; preds = %2
  %7 = load i32, i32* %1, align 4, !dbg !2232
  %8 = sext i32 %7 to i64, !dbg !2233
  %9 = getelementptr inbounds [256 x %struct.EXPANDO_REC*], [256 x %struct.EXPANDO_REC*]* @char_expandos, i64 0, i64 %8, !dbg !2233
  %10 = load %struct.EXPANDO_REC*, %struct.EXPANDO_REC** %9, align 8, !dbg !2233
  %11 = bitcast %struct.EXPANDO_REC* %10 to i8*, !dbg !2233
  call void @g_free(i8* %11), !dbg !2234
  br label %12, !dbg !2234

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %1, align 4, !dbg !2235
  %14 = add nsw i32 %13, 1, !dbg !2235
  store i32 %14, i32* %1, align 4, !dbg !2235
  br label %2, !dbg !2237, !llvm.loop !2238

; <label>:15:                                     ; preds = %2
  %16 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !2240
  %17 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %16, i32 (i8*, i8*, i8*)* @free_expando, i8* null), !dbg !2241
  %18 = load %struct._GHashTable*, %struct._GHashTable** @expandos, align 8, !dbg !2242
  call void @g_hash_table_destroy(%struct._GHashTable* %18), !dbg !2243
  %19 = load i8*, i8** @last_sent_msg, align 8, !dbg !2244
  call void @g_free(i8* %19), !dbg !2245
  %20 = load i8*, i8** @last_sent_msg_body, align 8, !dbg !2246
  call void @g_free(i8* %20), !dbg !2247
  %21 = load i8*, i8** @last_privmsg_from, align 8, !dbg !2248
  call void @g_free(i8* %21), !dbg !2249
  %22 = load i8*, i8** @last_public_from, align 8, !dbg !2250
  call void @g_free(i8* %22), !dbg !2251
  %23 = load i8*, i8** @sysname, align 8, !dbg !2252
  call void @g_free(i8* %23), !dbg !2253
  %24 = load i8*, i8** @sysrelease, align 8, !dbg !2254
  call void @g_free(i8* %24), !dbg !2255
  %25 = load i8*, i8** @sysarch, align 8, !dbg !2256
  call void @g_free(i8* %25), !dbg !2257
  %26 = load i8*, i8** @timestamp_format, align 8, !dbg !2258
  call void @g_free(i8* %26), !dbg !2259
  %27 = load i32, i32* @timer_tag, align 4, !dbg !2260
  %28 = call i32 @g_source_remove(i32 %27), !dbg !2261
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2262
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2263
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2264
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2265
  ret void, !dbg !2266
}

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @free_expando(i8*, i8*, i8*) #0 !dbg !2267 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2270, metadata !531), !dbg !2271
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2272, metadata !531), !dbg !2273
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2274, metadata !531), !dbg !2275
  %7 = load i8*, i8** %4, align 8, !dbg !2276
  call void @g_free(i8* %7), !dbg !2277
  %8 = load i8*, i8** %5, align 8, !dbg !2278
  call void @g_free(i8* %8), !dbg !2279
  ret i32 1, !dbg !2280
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare i32 @g_source_remove(i32) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @settings_get_str(i8*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

declare i8* @g_get_current_dir() #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #6

declare i32 @signal_emit(i8*, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!523, !524}
!llvm.ident = !{!525}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43, globals: !505)
!1 = !DIFile(filename: "line33-expandos.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 7, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "expandos.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "EXPANDO_ARG_NONE", value: 1)
!39 = !DIEnumerator(name: "EXPANDO_ARG_SERVER", value: 2)
!40 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW", value: 3)
!41 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW_ITEM", value: 4)
!42 = !DIEnumerator(name: "EXPANDO_NEVER", value: 5)
!43 = !{!44, !45, !49, !51, !52, !53, !489, !482, !496, !501, !187, !383, !156, !63, !454, !403}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXPANDO_REC", file: !55, line: 48, baseType: !56)
!55 = !DIFile(filename: "expandos.c", directory: "/home/lichi/Desktop/irssi/task1")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 42, size: 768, align: 64, elements: !57)
!57 = !{!58, !483, !484, !488}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !56, file: !55, line: 43, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXPANDO_FUNC", file: !36, line: 16, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64, !44, !482}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !66, line: 107, baseType: !67)
!66 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !68, line: 30, size: 2240, align: 64, elements: !69)
!68 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !{!70, !72, !73, !74, !303, !308, !309, !310, !311, !312, !313, !314, !315, !316, !320, !321, !325, !326, !327, !331, !336, !337, !338, !339, !340, !341, !342, !343, !350, !351, !352, !353, !354, !358, !362, !366, !370, !374, !379, !450, !477, !481}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !71, line: 3, baseType: !51, size: 32, align: 32)
!71 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !67, file: !71, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !67, file: !71, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !67, file: !71, line: 8, baseType: !75, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !66, line: 113, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !68, line: 25, size: 1920, align: 64, elements: !78)
!78 = !{!79, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !80, line: 3, baseType: !51, size: 32, align: 32)
!80 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !80, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !80, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !77, file: !80, line: 9, baseType: !63, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !77, file: !80, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !77, file: !80, line: 11, baseType: !63, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !77, file: !80, line: 11, baseType: !63, size: 64, align: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !77, file: !80, line: 11, baseType: !63, size: 64, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !77, file: !80, line: 13, baseType: !89, size: 16, align: 16, offset: 448)
!89 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !80, line: 14, baseType: !63, size: 64, align: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !77, file: !80, line: 15, baseType: !63, size: 64, align: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !77, file: !80, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !77, file: !80, line: 17, baseType: !63, size: 64, align: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !77, file: !80, line: 19, baseType: !95, size: 64, align: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !66, line: 99, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !66, line: 99, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !77, file: !80, line: 19, baseType: !95, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !77, file: !80, line: 21, baseType: !63, size: 64, align: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !80, line: 22, baseType: !63, size: 64, align: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !77, file: !80, line: 23, baseType: !63, size: 64, align: 64, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !77, file: !80, line: 24, baseType: !63, size: 64, align: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !77, file: !80, line: 26, baseType: !63, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !77, file: !80, line: 27, baseType: !63, size: 64, align: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !77, file: !80, line: 28, baseType: !63, size: 64, align: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !77, file: !80, line: 29, baseType: !63, size: 64, align: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !77, file: !80, line: 30, baseType: !63, size: 64, align: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !77, file: !80, line: 31, baseType: !63, size: 64, align: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !77, file: !80, line: 32, baseType: !63, size: 64, align: 64, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !77, file: !80, line: 33, baseType: !63, size: 64, align: 64, offset: 1600)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !77, file: !80, line: 35, baseType: !112, size: 64, align: 64, offset: 1664)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !115)
!115 = !{!116, !118, !260, !261, !266, !267, !268, !269, !270, !279, !280, !281, !285, !286, !287, !288, !289, !290, !291, !292}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !114, file: !4, line: 100, baseType: !117, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !47, line: 49, baseType: !51)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !114, file: !4, line: 101, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !122)
!122 = !{!123, !145, !151, !158, !162, !247, !251, !256}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !121, file: !4, line: 133, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !112, !45, !128, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !129, line: 66, baseType: !130)
!129 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !135, line: 42, baseType: !136)
!135 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !135, line: 44, size: 128, align: 64, elements: !137)
!137 = !{!138, !143, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !136, file: !135, line: 46, baseType: !139, size: 32, align: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !140, line: 36, baseType: !141)
!140 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !129, line: 45, baseType: !142)
!142 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !136, file: !135, line: 47, baseType: !117, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !136, file: !135, line: 48, baseType: !45, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !121, file: !4, line: 138, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!127, !112, !149, !128, !131, !132}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !121, file: !4, line: 143, baseType: !152, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!127, !112, !155, !157, !132}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !129, line: 51, baseType: !156)
!156 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !121, file: !4, line: 147, baseType: !159, size: 64, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!127, !112, !132}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !121, file: !4, line: 149, baseType: !163, size: 64, align: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !112, !246}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !169)
!169 = !{!170, !172, !193, !222, !224, !228, !229, !230, !231, !239, !240, !241, !242}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !168, file: !16, line: 174, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !47, line: 77, baseType: !44)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !168, file: !16, line: 175, baseType: !173, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !176)
!176 = !{!177, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !175, file: !16, line: 198, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !171}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !175, file: !16, line: 199, baseType: !178, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !175, file: !16, line: 200, baseType: !183, size: 64, align: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !171, !166, !186, !192}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !171}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !47, line: 50, baseType: !117)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !168, file: !16, line: 177, baseType: !194, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !198)
!198 = !{!199, !204, !208, !212, !216, !217}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !197, file: !16, line: 216, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!191, !166, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !197, file: !16, line: 218, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!191, !166}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !197, file: !16, line: 219, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!191, !166, !187, !171}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !197, file: !16, line: 222, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !166}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !197, file: !16, line: 226, baseType: !187, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !197, file: !16, line: 227, baseType: !218, size: 64, align: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !168, file: !16, line: 178, baseType: !223, size: 32, align: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !47, line: 55, baseType: !142)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !168, file: !16, line: 180, baseType: !225, size: 64, align: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !227)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !168, file: !16, line: 182, baseType: !117, size: 32, align: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !16, line: 183, baseType: !223, size: 32, align: 32, offset: 352)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !168, file: !16, line: 184, baseType: !223, size: 32, align: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !168, file: !16, line: 186, baseType: !232, size: 64, align: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !234, line: 37, baseType: !235)
!234 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !234, line: 39, size: 128, align: 64, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !234, line: 41, baseType: !171, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !234, line: 42, baseType: !232, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !16, line: 188, baseType: !166, size: 64, align: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !16, line: 189, baseType: !166, size: 64, align: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !16, line: 191, baseType: !63, size: 64, align: 64, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !168, file: !16, line: 193, baseType: !243, size: 64, align: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !121, file: !4, line: 151, baseType: !248, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !112}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !121, file: !4, line: 152, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!127, !112, !255, !132}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !121, file: !4, line: 155, baseType: !257, size: 64, align: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!255, !112}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !114, file: !4, line: 103, baseType: !45, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !114, file: !4, line: 104, baseType: !262, size: 64, align: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !263, line: 77, baseType: !264)
!263 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !263, line: 77, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !114, file: !4, line: 105, baseType: !262, size: 64, align: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !114, file: !4, line: 106, baseType: !45, size: 64, align: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !114, file: !4, line: 107, baseType: !223, size: 32, align: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !114, file: !4, line: 109, baseType: !128, size: 64, align: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !114, file: !4, line: 110, baseType: !271, size: 64, align: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !273, line: 39, baseType: !274)
!273 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !273, line: 41, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !274, file: !273, line: 43, baseType: !45, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !274, file: !273, line: 44, baseType: !128, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !274, file: !273, line: 45, baseType: !128, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !114, file: !4, line: 111, baseType: !271, size: 64, align: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !114, file: !4, line: 112, baseType: !271, size: 64, align: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !114, file: !4, line: 113, baseType: !282, size: 48, align: 8, offset: 704)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, align: 8, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 6)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !114, file: !4, line: 117, baseType: !223, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !114, file: !4, line: 118, baseType: !223, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !114, file: !4, line: 119, baseType: !223, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !114, file: !4, line: 120, baseType: !223, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !114, file: !4, line: 121, baseType: !223, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !114, file: !4, line: 122, baseType: !223, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !114, file: !4, line: 124, baseType: !171, size: 64, align: 64, offset: 768)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !114, file: !4, line: 125, baseType: !171, size: 64, align: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !77, file: !80, line: 38, baseType: !142, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !77, file: !80, line: 39, baseType: !142, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !77, file: !80, line: 40, baseType: !142, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !77, file: !80, line: 41, baseType: !142, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !77, file: !80, line: 42, baseType: !142, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !77, file: !80, line: 43, baseType: !142, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !77, file: !80, line: 44, baseType: !142, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !77, file: !80, line: 45, baseType: !142, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !80, line: 46, baseType: !63, size: 64, align: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !80, line: 47, baseType: !63, size: 64, align: 64, offset: 1856)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !67, file: !71, line: 9, baseType: !304, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !305, line: 75, baseType: !306)
!305 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !307, line: 139, baseType: !156)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !67, file: !71, line: 10, baseType: !304, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !67, file: !71, line: 12, baseType: !63, size: 64, align: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !67, file: !71, line: 13, baseType: !63, size: 64, align: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !67, file: !71, line: 15, baseType: !142, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !67, file: !71, line: 16, baseType: !142, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !67, file: !71, line: 17, baseType: !142, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !67, file: !71, line: 18, baseType: !142, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !67, file: !71, line: 19, baseType: !142, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !67, file: !71, line: 21, baseType: !317, size: 64, align: 64, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !66, line: 102, baseType: !319)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !66, line: 102, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !67, file: !71, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !67, file: !71, line: 25, baseType: !322, size: 128, align: 64, offset: 640)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, align: 64, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 2)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !67, file: !71, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !67, file: !71, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !67, file: !71, line: 29, baseType: !328, size: 64, align: 64, offset: 832)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !66, line: 103, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !66, line: 103, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !67, file: !71, line: 30, baseType: !332, size: 64, align: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !334, line: 37, baseType: !335)
!334 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !334, line: 37, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !67, file: !71, line: 32, baseType: !63, size: 64, align: 64, offset: 960)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !67, file: !71, line: 33, baseType: !63, size: 64, align: 64, offset: 1024)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !67, file: !71, line: 34, baseType: !63, size: 64, align: 64, offset: 1088)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !67, file: !71, line: 35, baseType: !142, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !67, file: !71, line: 36, baseType: !142, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !67, file: !71, line: 37, baseType: !142, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !67, file: !71, line: 38, baseType: !142, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !67, file: !71, line: 40, baseType: !344, size: 128, align: 64, offset: 1216)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !47, line: 504, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !47, line: 506, size: 128, align: 64, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !345, file: !47, line: 508, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !47, line: 48, baseType: !156)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !345, file: !47, line: 509, baseType: !348, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !67, file: !71, line: 41, baseType: !304, size: 64, align: 64, offset: 1344)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !67, file: !71, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !67, file: !71, line: 44, baseType: !232, size: 64, align: 64, offset: 1472)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !67, file: !71, line: 45, baseType: !232, size: 64, align: 64, offset: 1536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !67, file: !71, line: 53, baseType: !355, size: 64, align: 64, offset: 1600)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !64, !49, !51}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !67, file: !71, line: 55, baseType: !359, size: 64, align: 64, offset: 1664)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!51, !64, !48}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !67, file: !71, line: 57, baseType: !363, size: 64, align: 64, offset: 1728)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!51, !64, !49}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !67, file: !71, line: 60, baseType: !367, size: 64, align: 64, offset: 1792)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!49, !64}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !67, file: !71, line: 62, baseType: !371, size: 64, align: 64, offset: 1856)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !64, !49, !49, !51}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !67, file: !71, line: 65, baseType: !375, size: 64, align: 64, offset: 1920)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !64, !49, !49}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !67, file: !71, line: 69, baseType: !380, size: 64, align: 64, offset: 1984)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !64, !49}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !66, line: 109, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !386, line: 15, size: 1408, align: 64, elements: !387)
!386 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!387 = !{!388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !423, !424, !426, !427, !428, !429, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !389, line: 3, baseType: !51, size: 32, align: 32)
!389 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!390 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !385, file: !389, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !385, file: !389, line: 5, baseType: !332, size: 64, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !385, file: !389, line: 7, baseType: !44, size: 64, align: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !385, file: !389, line: 8, baseType: !64, size: 64, align: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !385, file: !389, line: 9, baseType: !63, size: 64, align: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !389, line: 10, baseType: !63, size: 64, align: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !385, file: !389, line: 11, baseType: !304, size: 64, align: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !385, file: !389, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !385, file: !389, line: 13, baseType: !63, size: 64, align: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !385, file: !389, line: 15, baseType: !400, size: 64, align: 64, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !66, line: 108, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !406, line: 5, size: 704, align: 64, elements: !407)
!406 = !DIFile(filename: "window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !389, line: 3, baseType: !51, size: 32, align: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !405, file: !389, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !405, file: !389, line: 5, baseType: !332, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !405, file: !389, line: 7, baseType: !44, size: 64, align: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !405, file: !389, line: 8, baseType: !64, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !405, file: !389, line: 9, baseType: !63, size: 64, align: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !389, line: 10, baseType: !63, size: 64, align: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !405, file: !389, line: 11, baseType: !304, size: 64, align: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !405, file: !389, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !405, file: !389, line: 13, baseType: !63, size: 64, align: 64, offset: 512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !405, file: !389, line: 15, baseType: !400, size: 64, align: 64, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !405, file: !389, line: 17, baseType: !420, size: 64, align: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!49, !403}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !385, file: !389, line: 17, baseType: !420, size: 64, align: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !385, file: !425, line: 5, baseType: !63, size: 64, align: 64, offset: 704)
!425 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !385, file: !425, line: 6, baseType: !63, size: 64, align: 64, offset: 768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !385, file: !425, line: 7, baseType: !304, size: 64, align: 64, offset: 832)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !385, file: !425, line: 9, baseType: !332, size: 64, align: 64, offset: 896)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !385, file: !425, line: 10, baseType: !430, size: 64, align: 64, offset: 960)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !66, line: 111, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !66, line: 111, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !385, file: !425, line: 12, baseType: !142, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !385, file: !425, line: 13, baseType: !63, size: 64, align: 64, offset: 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !385, file: !425, line: 14, baseType: !51, size: 32, align: 32, offset: 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !385, file: !425, line: 15, baseType: !63, size: 64, align: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !385, file: !425, line: 17, baseType: !142, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !385, file: !425, line: 18, baseType: !142, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !385, file: !425, line: 19, baseType: !142, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !385, file: !425, line: 20, baseType: !142, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !385, file: !425, line: 22, baseType: !142, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !385, file: !425, line: 23, baseType: !142, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !385, file: !425, line: 24, baseType: !142, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !385, file: !425, line: 25, baseType: !142, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !385, file: !425, line: 26, baseType: !142, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !385, file: !425, line: 31, baseType: !447, size: 64, align: 64, offset: 1344)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!63, !383}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !67, file: !71, line: 70, baseType: !451, size: 64, align: 64, offset: 2048)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !64, !49}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !66, line: 110, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !457, line: 15, size: 960, align: 64, elements: !458)
!457 = !DIFile(filename: "queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !473, !474, !475, !476}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !389, line: 3, baseType: !51, size: 32, align: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !456, file: !389, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !456, file: !389, line: 5, baseType: !332, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !456, file: !389, line: 7, baseType: !44, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !456, file: !389, line: 8, baseType: !64, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !456, file: !389, line: 9, baseType: !63, size: 64, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !389, line: 10, baseType: !63, size: 64, align: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !456, file: !389, line: 11, baseType: !304, size: 64, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !456, file: !389, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !456, file: !389, line: 13, baseType: !63, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !456, file: !389, line: 15, baseType: !400, size: 64, align: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !456, file: !389, line: 17, baseType: !420, size: 64, align: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !472, line: 5, baseType: !63, size: 64, align: 64, offset: 704)
!472 = !DIFile(filename: "query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !456, file: !472, line: 6, baseType: !63, size: 64, align: 64, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !456, file: !472, line: 7, baseType: !304, size: 64, align: 64, offset: 832)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !456, file: !472, line: 9, baseType: !142, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !456, file: !472, line: 11, baseType: !142, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !67, file: !71, line: 71, baseType: !478, size: 64, align: 64, offset: 2112)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!51, !49, !49}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !67, file: !71, line: 73, baseType: !478, size: 64, align: 64, offset: 2176)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "signals", scope: !56, file: !55, line: 45, baseType: !51, size: 32, align: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "signal_ids", scope: !56, file: !55, line: 46, baseType: !485, size: 320, align: 32, offset: 96)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, align: 32, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 10)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "signal_args", scope: !56, file: !55, line: 47, baseType: !485, size: 320, align: 32, offset: 416)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !490, line: 9, baseType: !491)
!490 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494, !494, !494, !494, !494, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !47, line: 90, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!223, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !47, line: 78, baseType: !494)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !47, line: 80, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!117, !500, !500}
!505 = !{!506, !507, !508, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!506 = distinct !DIGlobalVariable(name: "current_expando", scope: !0, file: !55, line: 50, type: !49, isLocal: false, isDefinition: true, variable: i8** @current_expando)
!507 = distinct !DIGlobalVariable(name: "timer_tag", scope: !0, file: !55, line: 52, type: !51, isLocal: true, isDefinition: true, variable: i32* @timer_tag)
!508 = distinct !DIGlobalVariable(name: "char_expandos", scope: !0, file: !55, line: 54, type: !509, isLocal: true, isDefinition: true, variable: [256 x %struct.EXPANDO_REC*]* @char_expandos)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16384, align: 64, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 256)
!512 = distinct !DIGlobalVariable(name: "expandos", scope: !0, file: !55, line: 55, type: !332, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @expandos)
!513 = distinct !DIGlobalVariable(name: "last_sent_msg", scope: !0, file: !55, line: 56, type: !63, isLocal: true, isDefinition: true, variable: i8** @last_sent_msg)
!514 = distinct !DIGlobalVariable(name: "last_sent_msg_body", scope: !0, file: !55, line: 56, type: !63, isLocal: true, isDefinition: true, variable: i8** @last_sent_msg_body)
!515 = distinct !DIGlobalVariable(name: "last_privmsg_from", scope: !0, file: !55, line: 57, type: !63, isLocal: true, isDefinition: true, variable: i8** @last_privmsg_from)
!516 = distinct !DIGlobalVariable(name: "last_public_from", scope: !0, file: !55, line: 57, type: !63, isLocal: true, isDefinition: true, variable: i8** @last_public_from)
!517 = distinct !DIGlobalVariable(name: "sysname", scope: !0, file: !55, line: 58, type: !63, isLocal: true, isDefinition: true, variable: i8** @sysname)
!518 = distinct !DIGlobalVariable(name: "sysrelease", scope: !0, file: !55, line: 58, type: !63, isLocal: true, isDefinition: true, variable: i8** @sysrelease)
!519 = distinct !DIGlobalVariable(name: "sysarch", scope: !0, file: !55, line: 58, type: !63, isLocal: true, isDefinition: true, variable: i8** @sysarch)
!520 = distinct !DIGlobalVariable(name: "timestamp_format", scope: !0, file: !55, line: 60, type: !63, isLocal: true, isDefinition: true, variable: i8** @timestamp_format)
!521 = distinct !DIGlobalVariable(name: "last_timestamp", scope: !0, file: !55, line: 62, type: !304, isLocal: true, isDefinition: true, variable: i64* @last_timestamp)
!522 = distinct !DIGlobalVariable(name: "timestamp_seconds", scope: !0, file: !55, line: 61, type: !51, isLocal: true, isDefinition: true, variable: i32* @timestamp_seconds)
!523 = !{i32 2, !"Dwarf Version", i32 4}
!524 = !{i32 2, !"Debug Info Version", i32 3}
!525 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!526 = distinct !DISubprogram(name: "expando_create", scope: !55, file: !55, line: 68, type: !527, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !49, !59, null}
!529 = !{}
!530 = !DILocalVariable(name: "key", arg: 1, scope: !526, file: !55, line: 68, type: !49)
!531 = !DIExpression()
!532 = !DILocation(line: 68, column: 33, scope: !526)
!533 = !DILocalVariable(name: "func", arg: 2, scope: !526, file: !55, line: 68, type: !59)
!534 = !DILocation(line: 68, column: 51, scope: !526)
!535 = !DILocalVariable(name: "rec", scope: !526, file: !55, line: 70, type: !53)
!536 = !DILocation(line: 70, column: 22, scope: !526)
!537 = !DILocalVariable(name: "signal", scope: !526, file: !55, line: 71, type: !49)
!538 = !DILocation(line: 71, column: 21, scope: !526)
!539 = !DILocalVariable(name: "va", scope: !526, file: !55, line: 72, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !541, line: 79, baseType: !542)
!541 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !543, line: 40, baseType: !544)
!543 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 72, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 192, align: 64, elements: !552)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 72, size: 192, align: 64, elements: !547)
!547 = !{!548, !549, !550, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !546, file: !1, line: 72, baseType: !142, size: 32, align: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !546, file: !1, line: 72, baseType: !142, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !546, file: !1, line: 72, baseType: !44, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !546, file: !1, line: 72, baseType: !44, size: 64, align: 64, offset: 128)
!552 = !{!553}
!553 = !DISubrange(count: 1)
!554 = !DILocation(line: 72, column: 10, scope: !526)
!555 = !DILocation(line: 74, column: 2, scope: !526)
!556 = distinct !{!556, !555}
!557 = !DILocation(line: 74, column: 10, scope: !558)
!558 = !DILexicalBlockFile(scope: !559, file: !55, discriminator: 1)
!559 = distinct !DILexicalBlock(scope: !560, file: !55, line: 74, column: 10)
!560 = distinct !DILexicalBlock(scope: !526, file: !55, line: 74, column: 4)
!561 = !DILocation(line: 74, column: 14, scope: !558)
!562 = !DILocation(line: 74, column: 1, scope: !558)
!563 = !DILocation(line: 74, column: 5, scope: !564)
!564 = !DILexicalBlockFile(scope: !559, file: !55, discriminator: 2)
!565 = !DILocation(line: 74, column: 4, scope: !564)
!566 = !DILocation(line: 74, column: 9, scope: !564)
!567 = !DILocation(line: 74, column: 10, scope: !564)
!568 = !DILocation(line: 74, column: 20, scope: !569)
!569 = !DILexicalBlockFile(scope: !570, file: !55, discriminator: 3)
!570 = distinct !DILexicalBlock(scope: !559, file: !55, line: 74, column: 18)
!571 = !DILocation(line: 74, column: 29, scope: !572)
!572 = !DILexicalBlockFile(scope: !573, file: !55, discriminator: 4)
!573 = distinct !DILexicalBlock(scope: !559, file: !55, line: 74, column: 27)
!574 = !DILocation(line: 74, column: 130, scope: !572)
!575 = !DILocation(line: 74, column: 141, scope: !576)
!576 = !DILexicalBlockFile(scope: !560, file: !55, discriminator: 5)
!577 = !DILocation(line: 75, column: 2, scope: !526)
!578 = distinct !{!578, !577}
!579 = !DILocation(line: 75, column: 10, scope: !580)
!580 = !DILexicalBlockFile(scope: !581, file: !55, discriminator: 1)
!581 = distinct !DILexicalBlock(scope: !582, file: !55, line: 75, column: 10)
!582 = distinct !DILexicalBlock(scope: !526, file: !55, line: 75, column: 4)
!583 = !DILocation(line: 75, column: 15, scope: !580)
!584 = !DILocation(line: 75, column: 5, scope: !585)
!585 = !DILexicalBlockFile(scope: !586, file: !55, discriminator: 2)
!586 = distinct !DILexicalBlock(scope: !581, file: !55, line: 75, column: 3)
!587 = !DILocation(line: 75, column: 14, scope: !588)
!588 = !DILexicalBlockFile(scope: !589, file: !55, discriminator: 3)
!589 = distinct !DILexicalBlock(scope: !581, file: !55, line: 75, column: 12)
!590 = !DILocation(line: 75, column: 99, scope: !588)
!591 = !DILocation(line: 75, column: 110, scope: !592)
!592 = !DILexicalBlockFile(scope: !582, file: !55, discriminator: 4)
!593 = !DILocation(line: 77, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !526, file: !55, line: 77, column: 6)
!595 = !DILocation(line: 77, column: 13, scope: !594)
!596 = !DILocation(line: 77, column: 6, scope: !526)
!597 = !DILocation(line: 78, column: 29, scope: !594)
!598 = !DILocation(line: 78, column: 39, scope: !594)
!599 = !DILocation(line: 78, column: 9, scope: !594)
!600 = !DILocation(line: 78, column: 7, scope: !594)
!601 = !DILocation(line: 78, column: 3, scope: !594)
!602 = !DILocation(line: 81, column: 47, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !55, line: 79, column: 7)
!604 = !DILocation(line: 81, column: 46, scope: !603)
!605 = !DILocation(line: 81, column: 24, scope: !603)
!606 = !DILocation(line: 81, column: 10, scope: !603)
!607 = !DILocation(line: 81, column: 7, scope: !603)
!608 = !DILocation(line: 84, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !526, file: !55, line: 84, column: 6)
!610 = !DILocation(line: 84, column: 10, scope: !609)
!611 = !DILocation(line: 84, column: 6, scope: !526)
!612 = !DILocation(line: 85, column: 3, scope: !609)
!613 = !DILocation(line: 85, column: 8, scope: !609)
!614 = !DILocation(line: 85, column: 16, scope: !609)
!615 = !DILocation(line: 87, column: 26, scope: !616)
!616 = distinct !DILexicalBlock(scope: !609, file: !55, line: 86, column: 7)
!617 = !DILocation(line: 87, column: 10, scope: !616)
!618 = !DILocation(line: 87, column: 7, scope: !616)
!619 = !DILocation(line: 88, column: 21, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !55, line: 88, column: 21)
!621 = !DILocation(line: 88, column: 28, scope: !620)
!622 = !DILocation(line: 88, column: 21, scope: !616)
!623 = !DILocation(line: 89, column: 24, scope: !620)
!624 = !DILocation(line: 89, column: 43, scope: !620)
!625 = !DILocation(line: 89, column: 34, scope: !620)
!626 = !DILocation(line: 89, column: 49, scope: !620)
!627 = !DILocation(line: 89, column: 4, scope: !628)
!628 = !DILexicalBlockFile(scope: !620, file: !55, discriminator: 1)
!629 = !DILocation(line: 89, column: 4, scope: !620)
!630 = !DILocation(line: 91, column: 48, scope: !620)
!631 = !DILocation(line: 91, column: 41, scope: !620)
!632 = !DILocation(line: 91, column: 40, scope: !620)
!633 = !DILocation(line: 91, column: 18, scope: !620)
!634 = !DILocation(line: 91, column: 4, scope: !620)
!635 = !DILocation(line: 91, column: 46, scope: !620)
!636 = !DILocation(line: 94, column: 14, scope: !526)
!637 = !DILocation(line: 94, column: 2, scope: !526)
!638 = !DILocation(line: 94, column: 7, scope: !526)
!639 = !DILocation(line: 94, column: 12, scope: !526)
!640 = !DILocation(line: 96, column: 1, scope: !526)
!641 = !DILocation(line: 97, column: 2, scope: !526)
!642 = !DILocation(line: 97, column: 33, scope: !643)
!643 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 1)
!644 = !DILocation(line: 97, column: 33, scope: !645)
!645 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 2)
!646 = !DILocation(line: 97, column: 33, scope: !647)
!647 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 3)
!648 = !DILocation(line: 97, column: 33, scope: !649)
!649 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 4)
!650 = !DILocation(line: 97, column: 17, scope: !649)
!651 = !DILocation(line: 97, column: 59, scope: !649)
!652 = !DILocation(line: 97, column: 2, scope: !649)
!653 = !DILocation(line: 98, column: 35, scope: !526)
!654 = !DILocation(line: 98, column: 40, scope: !526)
!655 = !DILocation(line: 98, column: 53, scope: !526)
!656 = !DILocation(line: 98, column: 53, scope: !643)
!657 = !DILocation(line: 98, column: 53, scope: !645)
!658 = !DILocation(line: 98, column: 53, scope: !647)
!659 = !DILocation(line: 98, column: 16, scope: !647)
!660 = !DILocation(line: 97, column: 2, scope: !661)
!661 = !DILexicalBlockFile(scope: !526, file: !55, discriminator: 5)
!662 = distinct !{!662, !641}
!663 = !DILocation(line: 99, column: 8, scope: !526)
!664 = !DILocation(line: 100, column: 1, scope: !526)
!665 = !DILocation(line: 100, column: 1, scope: !643)
!666 = distinct !DISubprogram(name: "expando_add_signal", scope: !55, file: !55, line: 111, type: !667, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !49, !49, !669}
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExpandoArg", file: !36, line: 14, baseType: !35)
!670 = !DILocalVariable(name: "key", arg: 1, scope: !666, file: !55, line: 111, type: !49)
!671 = !DILocation(line: 111, column: 37, scope: !666)
!672 = !DILocalVariable(name: "signal", arg: 2, scope: !666, file: !55, line: 111, type: !49)
!673 = !DILocation(line: 111, column: 54, scope: !666)
!674 = !DILocalVariable(name: "arg", arg: 3, scope: !666, file: !55, line: 111, type: !669)
!675 = !DILocation(line: 111, column: 73, scope: !666)
!676 = !DILocalVariable(name: "rec", scope: !666, file: !55, line: 113, type: !53)
!677 = !DILocation(line: 113, column: 15, scope: !666)
!678 = !DILocation(line: 115, column: 2, scope: !666)
!679 = distinct !{!679, !678}
!680 = !DILocation(line: 115, column: 10, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !55, discriminator: 1)
!682 = distinct !DILexicalBlock(scope: !683, file: !55, line: 115, column: 10)
!683 = distinct !DILexicalBlock(scope: !666, file: !55, line: 115, column: 4)
!684 = !DILocation(line: 115, column: 14, scope: !681)
!685 = !DILocation(line: 115, column: 5, scope: !686)
!686 = !DILexicalBlockFile(scope: !687, file: !55, discriminator: 2)
!687 = distinct !DILexicalBlock(scope: !682, file: !55, line: 115, column: 3)
!688 = !DILocation(line: 115, column: 14, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !55, discriminator: 3)
!690 = distinct !DILexicalBlock(scope: !682, file: !55, line: 115, column: 12)
!691 = !DILocation(line: 115, column: 98, scope: !689)
!692 = !DILocation(line: 115, column: 109, scope: !693)
!693 = !DILexicalBlockFile(scope: !683, file: !55, discriminator: 4)
!694 = !DILocation(line: 116, column: 2, scope: !666)
!695 = distinct !{!695, !694}
!696 = !DILocation(line: 116, column: 10, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !55, discriminator: 1)
!698 = distinct !DILexicalBlock(scope: !699, file: !55, line: 116, column: 10)
!699 = distinct !DILexicalBlock(scope: !666, file: !55, line: 116, column: 4)
!700 = !DILocation(line: 116, column: 17, scope: !697)
!701 = !DILocation(line: 116, column: 5, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !55, discriminator: 2)
!703 = distinct !DILexicalBlock(scope: !698, file: !55, line: 116, column: 3)
!704 = !DILocation(line: 116, column: 14, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !55, discriminator: 3)
!706 = distinct !DILexicalBlock(scope: !698, file: !55, line: 116, column: 12)
!707 = !DILocation(line: 116, column: 101, scope: !705)
!708 = !DILocation(line: 116, column: 112, scope: !709)
!709 = !DILexicalBlockFile(scope: !699, file: !55, discriminator: 4)
!710 = !DILocation(line: 118, column: 28, scope: !666)
!711 = !DILocation(line: 118, column: 15, scope: !666)
!712 = !DILocation(line: 118, column: 13, scope: !666)
!713 = !DILocation(line: 119, column: 9, scope: !666)
!714 = distinct !{!714, !713}
!715 = !DILocation(line: 119, column: 17, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !55, discriminator: 1)
!717 = distinct !DILexicalBlock(scope: !718, file: !55, line: 119, column: 17)
!718 = distinct !DILexicalBlock(scope: !666, file: !55, line: 119, column: 11)
!719 = !DILocation(line: 119, column: 21, scope: !716)
!720 = !DILocation(line: 119, column: 12, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !55, discriminator: 2)
!722 = distinct !DILexicalBlock(scope: !717, file: !55, line: 119, column: 10)
!723 = !DILocation(line: 119, column: 21, scope: !724)
!724 = !DILexicalBlockFile(scope: !725, file: !55, discriminator: 3)
!725 = distinct !DILexicalBlock(scope: !717, file: !55, line: 119, column: 19)
!726 = !DILocation(line: 119, column: 105, scope: !724)
!727 = !DILocation(line: 119, column: 116, scope: !728)
!728 = !DILexicalBlockFile(scope: !718, file: !55, discriminator: 4)
!729 = !DILocation(line: 121, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !666, file: !55, line: 121, column: 6)
!731 = !DILocation(line: 121, column: 10, scope: !730)
!732 = !DILocation(line: 121, column: 6, scope: !666)
!733 = !DILocation(line: 123, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !55, line: 121, column: 28)
!735 = !DILocation(line: 123, column: 8, scope: !734)
!736 = !DILocation(line: 123, column: 16, scope: !734)
!737 = !DILocation(line: 124, column: 2, scope: !734)
!738 = !DILocation(line: 124, column: 13, scope: !739)
!739 = !DILexicalBlockFile(scope: !740, file: !55, discriminator: 1)
!740 = distinct !DILexicalBlock(scope: !730, file: !55, line: 124, column: 13)
!741 = !DILocation(line: 124, column: 18, scope: !739)
!742 = !DILocation(line: 124, column: 26, scope: !739)
!743 = !DILocation(line: 125, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !55, line: 124, column: 32)
!745 = distinct !{!745, !743}
!746 = !DILocation(line: 125, column: 11, scope: !747)
!747 = !DILexicalBlockFile(scope: !748, file: !55, discriminator: 1)
!748 = distinct !DILexicalBlock(scope: !749, file: !55, line: 125, column: 11)
!749 = distinct !DILexicalBlock(scope: !744, file: !55, line: 125, column: 5)
!750 = !DILocation(line: 125, column: 16, scope: !747)
!751 = !DILocation(line: 125, column: 24, scope: !747)
!752 = !DILocation(line: 125, column: 33, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !55, discriminator: 2)
!754 = distinct !DILexicalBlock(scope: !748, file: !55, line: 125, column: 31)
!755 = !DILocation(line: 125, column: 42, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !55, discriminator: 3)
!757 = distinct !DILexicalBlock(scope: !748, file: !55, line: 125, column: 40)
!758 = !DILocation(line: 125, column: 133, scope: !756)
!759 = !DILocation(line: 125, column: 144, scope: !760)
!760 = !DILexicalBlockFile(scope: !749, file: !55, discriminator: 4)
!761 = !DILocation(line: 127, column: 69, scope: !744)
!762 = !DILocation(line: 127, column: 35, scope: !744)
!763 = !DILocation(line: 127, column: 19, scope: !744)
!764 = !DILocation(line: 127, column: 24, scope: !744)
!765 = !DILocation(line: 127, column: 3, scope: !744)
!766 = !DILocation(line: 127, column: 8, scope: !744)
!767 = !DILocation(line: 127, column: 33, scope: !744)
!768 = !DILocation(line: 128, column: 36, scope: !744)
!769 = !DILocation(line: 128, column: 20, scope: !744)
!770 = !DILocation(line: 128, column: 25, scope: !744)
!771 = !DILocation(line: 128, column: 3, scope: !744)
!772 = !DILocation(line: 128, column: 8, scope: !744)
!773 = !DILocation(line: 128, column: 34, scope: !744)
!774 = !DILocation(line: 129, column: 17, scope: !744)
!775 = !DILocation(line: 129, column: 22, scope: !744)
!776 = !DILocation(line: 129, column: 29, scope: !744)
!777 = !DILocation(line: 130, column: 2, scope: !744)
!778 = !DILocation(line: 131, column: 1, scope: !666)
!779 = distinct !DISubprogram(name: "expando_find", scope: !55, file: !55, line: 102, type: !780, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!780 = !DISubroutineType(types: !781)
!781 = !{!53, !49}
!782 = !DILocalVariable(name: "key", arg: 1, scope: !779, file: !55, line: 102, type: !49)
!783 = !DILocation(line: 102, column: 46, scope: !779)
!784 = !DILocation(line: 104, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !55, line: 104, column: 6)
!786 = !DILocation(line: 104, column: 13, scope: !785)
!787 = !DILocation(line: 104, column: 6, scope: !779)
!788 = !DILocation(line: 105, column: 30, scope: !785)
!789 = !DILocation(line: 105, column: 40, scope: !785)
!790 = !DILocation(line: 105, column: 10, scope: !785)
!791 = !DILocation(line: 105, column: 3, scope: !785)
!792 = !DILocation(line: 107, column: 48, scope: !785)
!793 = !DILocation(line: 107, column: 47, scope: !785)
!794 = !DILocation(line: 107, column: 25, scope: !785)
!795 = !DILocation(line: 107, column: 11, scope: !785)
!796 = !DILocation(line: 107, column: 3, scope: !785)
!797 = !DILocation(line: 108, column: 1, scope: !779)
!798 = distinct !DISubprogram(name: "expando_destroy", scope: !55, file: !55, line: 134, type: !799, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !49, !59}
!801 = !DILocalVariable(name: "key", arg: 1, scope: !798, file: !55, line: 134, type: !49)
!802 = !DILocation(line: 134, column: 34, scope: !798)
!803 = !DILocalVariable(name: "func", arg: 2, scope: !798, file: !55, line: 134, type: !59)
!804 = !DILocation(line: 134, column: 52, scope: !798)
!805 = !DILocalVariable(name: "origkey", scope: !798, file: !55, line: 136, type: !171)
!806 = !DILocation(line: 136, column: 11, scope: !798)
!807 = !DILocalVariable(name: "value", scope: !798, file: !55, line: 136, type: !171)
!808 = !DILocation(line: 136, column: 20, scope: !798)
!809 = !DILocalVariable(name: "rec", scope: !798, file: !55, line: 137, type: !53)
!810 = !DILocation(line: 137, column: 22, scope: !798)
!811 = !DILocation(line: 139, column: 2, scope: !798)
!812 = distinct !{!812, !811}
!813 = !DILocation(line: 139, column: 10, scope: !814)
!814 = !DILexicalBlockFile(scope: !815, file: !55, discriminator: 1)
!815 = distinct !DILexicalBlock(scope: !816, file: !55, line: 139, column: 10)
!816 = distinct !DILexicalBlock(scope: !798, file: !55, line: 139, column: 4)
!817 = !DILocation(line: 139, column: 14, scope: !814)
!818 = !DILocation(line: 139, column: 1, scope: !814)
!819 = !DILocation(line: 139, column: 5, scope: !820)
!820 = !DILexicalBlockFile(scope: !815, file: !55, discriminator: 2)
!821 = !DILocation(line: 139, column: 4, scope: !820)
!822 = !DILocation(line: 139, column: 9, scope: !820)
!823 = !DILocation(line: 139, column: 10, scope: !820)
!824 = !DILocation(line: 139, column: 20, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !55, discriminator: 3)
!826 = distinct !DILexicalBlock(scope: !815, file: !55, line: 139, column: 18)
!827 = !DILocation(line: 139, column: 29, scope: !828)
!828 = !DILexicalBlockFile(scope: !829, file: !55, discriminator: 4)
!829 = distinct !DILexicalBlock(scope: !815, file: !55, line: 139, column: 27)
!830 = !DILocation(line: 139, column: 130, scope: !828)
!831 = !DILocation(line: 139, column: 141, scope: !832)
!832 = !DILexicalBlockFile(scope: !816, file: !55, discriminator: 5)
!833 = !DILocation(line: 140, column: 2, scope: !798)
!834 = distinct !{!834, !833}
!835 = !DILocation(line: 140, column: 10, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !55, discriminator: 1)
!837 = distinct !DILexicalBlock(scope: !838, file: !55, line: 140, column: 10)
!838 = distinct !DILexicalBlock(scope: !798, file: !55, line: 140, column: 4)
!839 = !DILocation(line: 140, column: 15, scope: !836)
!840 = !DILocation(line: 140, column: 5, scope: !841)
!841 = !DILexicalBlockFile(scope: !842, file: !55, discriminator: 2)
!842 = distinct !DILexicalBlock(scope: !837, file: !55, line: 140, column: 3)
!843 = !DILocation(line: 140, column: 14, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !55, discriminator: 3)
!845 = distinct !DILexicalBlock(scope: !837, file: !55, line: 140, column: 12)
!846 = !DILocation(line: 140, column: 99, scope: !844)
!847 = !DILocation(line: 140, column: 110, scope: !848)
!848 = !DILexicalBlockFile(scope: !838, file: !55, discriminator: 4)
!849 = !DILocation(line: 142, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !798, file: !55, line: 142, column: 6)
!851 = !DILocation(line: 142, column: 13, scope: !850)
!852 = !DILocation(line: 142, column: 6, scope: !798)
!853 = !DILocation(line: 144, column: 47, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !55, line: 142, column: 22)
!855 = !DILocation(line: 144, column: 46, scope: !854)
!856 = !DILocation(line: 144, column: 24, scope: !854)
!857 = !DILocation(line: 144, column: 10, scope: !854)
!858 = !DILocation(line: 144, column: 7, scope: !854)
!859 = !DILocation(line: 145, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !55, line: 145, column: 7)
!861 = !DILocation(line: 145, column: 11, scope: !860)
!862 = !DILocation(line: 145, column: 18, scope: !860)
!863 = !DILocation(line: 145, column: 21, scope: !864)
!864 = !DILexicalBlockFile(scope: !860, file: !55, discriminator: 1)
!865 = !DILocation(line: 145, column: 26, scope: !864)
!866 = !DILocation(line: 145, column: 34, scope: !864)
!867 = !DILocation(line: 145, column: 31, scope: !864)
!868 = !DILocation(line: 145, column: 7, scope: !864)
!869 = !DILocation(line: 146, column: 41, scope: !870)
!870 = distinct !DILexicalBlock(scope: !860, file: !55, line: 145, column: 40)
!871 = !DILocation(line: 146, column: 40, scope: !870)
!872 = !DILocation(line: 146, column: 18, scope: !870)
!873 = !DILocation(line: 146, column: 4, scope: !870)
!874 = !DILocation(line: 146, column: 46, scope: !870)
!875 = !DILocation(line: 147, column: 11, scope: !870)
!876 = !DILocation(line: 147, column: 4, scope: !870)
!877 = !DILocation(line: 148, column: 3, scope: !870)
!878 = !DILocation(line: 149, column: 2, scope: !854)
!879 = !DILocation(line: 149, column: 42, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !55, discriminator: 1)
!881 = distinct !DILexicalBlock(scope: !850, file: !55, line: 149, column: 13)
!882 = !DILocation(line: 149, column: 52, scope: !880)
!883 = !DILocation(line: 149, column: 13, scope: !880)
!884 = !DILocation(line: 151, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !55, line: 150, column: 26)
!886 = !DILocation(line: 151, column: 7, scope: !885)
!887 = !DILocation(line: 152, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !55, line: 152, column: 7)
!889 = !DILocation(line: 152, column: 12, scope: !888)
!890 = !DILocation(line: 152, column: 20, scope: !888)
!891 = !DILocation(line: 152, column: 17, scope: !888)
!892 = !DILocation(line: 152, column: 7, scope: !885)
!893 = !DILocation(line: 153, column: 24, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !55, line: 152, column: 26)
!895 = !DILocation(line: 153, column: 34, scope: !894)
!896 = !DILocation(line: 153, column: 4, scope: !894)
!897 = !DILocation(line: 154, column: 11, scope: !894)
!898 = !DILocation(line: 154, column: 4, scope: !894)
!899 = !DILocation(line: 155, column: 11, scope: !894)
!900 = !DILocation(line: 155, column: 4, scope: !894)
!901 = !DILocation(line: 156, column: 3, scope: !894)
!902 = !DILocation(line: 157, column: 2, scope: !885)
!903 = !DILocation(line: 158, column: 1, scope: !798)
!904 = distinct !DISubprogram(name: "expando_bind", scope: !55, file: !55, line: 160, type: !905, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !49, !51, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!908 = !DILocalVariable(name: "key", arg: 1, scope: !904, file: !55, line: 160, type: !49)
!909 = !DILocation(line: 160, column: 31, scope: !904)
!910 = !DILocalVariable(name: "funccount", arg: 2, scope: !904, file: !55, line: 160, type: !51)
!911 = !DILocation(line: 160, column: 40, scope: !904)
!912 = !DILocalVariable(name: "funcs", arg: 3, scope: !904, file: !55, line: 160, type: !907)
!913 = !DILocation(line: 160, column: 64, scope: !904)
!914 = !DILocalVariable(name: "func", scope: !904, file: !55, line: 162, type: !489)
!915 = !DILocation(line: 162, column: 14, scope: !904)
!916 = !DILocalVariable(name: "rec", scope: !904, file: !55, line: 163, type: !53)
!917 = !DILocation(line: 163, column: 15, scope: !904)
!918 = !DILocalVariable(name: "n", scope: !904, file: !55, line: 164, type: !51)
!919 = !DILocation(line: 164, column: 13, scope: !904)
!920 = !DILocalVariable(name: "arg", scope: !904, file: !55, line: 164, type: !51)
!921 = !DILocation(line: 164, column: 16, scope: !904)
!922 = !DILocation(line: 166, column: 2, scope: !904)
!923 = distinct !{!923, !922}
!924 = !DILocation(line: 166, column: 10, scope: !925)
!925 = !DILexicalBlockFile(scope: !926, file: !55, discriminator: 1)
!926 = distinct !DILexicalBlock(scope: !927, file: !55, line: 166, column: 10)
!927 = distinct !DILexicalBlock(scope: !904, file: !55, line: 166, column: 4)
!928 = !DILocation(line: 166, column: 14, scope: !925)
!929 = !DILocation(line: 166, column: 5, scope: !930)
!930 = !DILexicalBlockFile(scope: !931, file: !55, discriminator: 2)
!931 = distinct !DILexicalBlock(scope: !926, file: !55, line: 166, column: 3)
!932 = !DILocation(line: 166, column: 14, scope: !933)
!933 = !DILexicalBlockFile(scope: !934, file: !55, discriminator: 3)
!934 = distinct !DILexicalBlock(scope: !926, file: !55, line: 166, column: 12)
!935 = !DILocation(line: 166, column: 98, scope: !933)
!936 = !DILocation(line: 166, column: 109, scope: !937)
!937 = !DILexicalBlockFile(scope: !927, file: !55, discriminator: 4)
!938 = !DILocation(line: 167, column: 2, scope: !904)
!939 = distinct !{!939, !938}
!940 = !DILocation(line: 167, column: 10, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !55, discriminator: 1)
!942 = distinct !DILexicalBlock(scope: !943, file: !55, line: 167, column: 10)
!943 = distinct !DILexicalBlock(scope: !904, file: !55, line: 167, column: 4)
!944 = !DILocation(line: 167, column: 20, scope: !941)
!945 = !DILocation(line: 167, column: 28, scope: !946)
!946 = !DILexicalBlockFile(scope: !947, file: !55, discriminator: 2)
!947 = distinct !DILexicalBlock(scope: !942, file: !55, line: 167, column: 26)
!948 = !DILocation(line: 167, column: 37, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !55, discriminator: 3)
!950 = distinct !DILexicalBlock(scope: !942, file: !55, line: 167, column: 35)
!951 = !DILocation(line: 167, column: 124, scope: !949)
!952 = !DILocation(line: 167, column: 135, scope: !953)
!953 = !DILexicalBlockFile(scope: !943, file: !55, discriminator: 4)
!954 = !DILocation(line: 168, column: 2, scope: !904)
!955 = distinct !{!955, !954}
!956 = !DILocation(line: 168, column: 10, scope: !957)
!957 = !DILexicalBlockFile(scope: !958, file: !55, discriminator: 1)
!958 = distinct !DILexicalBlock(scope: !959, file: !55, line: 168, column: 10)
!959 = distinct !DILexicalBlock(scope: !904, file: !55, line: 168, column: 4)
!960 = !DILocation(line: 168, column: 16, scope: !957)
!961 = !DILocation(line: 168, column: 5, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !55, discriminator: 2)
!963 = distinct !DILexicalBlock(scope: !958, file: !55, line: 168, column: 3)
!964 = !DILocation(line: 168, column: 14, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !55, discriminator: 3)
!966 = distinct !DILexicalBlock(scope: !958, file: !55, line: 168, column: 12)
!967 = !DILocation(line: 168, column: 100, scope: !965)
!968 = !DILocation(line: 168, column: 111, scope: !969)
!969 = !DILexicalBlockFile(scope: !959, file: !55, discriminator: 4)
!970 = !DILocation(line: 169, column: 2, scope: !904)
!971 = distinct !{!971, !970}
!972 = !DILocation(line: 169, column: 10, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !55, discriminator: 1)
!974 = distinct !DILexicalBlock(scope: !975, file: !55, line: 169, column: 10)
!975 = distinct !DILexicalBlock(scope: !904, file: !55, line: 169, column: 4)
!976 = !DILocation(line: 169, column: 19, scope: !973)
!977 = !DILocation(line: 169, column: 5, scope: !978)
!978 = !DILexicalBlockFile(scope: !979, file: !55, discriminator: 2)
!979 = distinct !DILexicalBlock(scope: !974, file: !55, line: 169, column: 3)
!980 = !DILocation(line: 169, column: 14, scope: !981)
!981 = !DILexicalBlockFile(scope: !982, file: !55, discriminator: 3)
!982 = distinct !DILexicalBlock(scope: !974, file: !55, line: 169, column: 12)
!983 = !DILocation(line: 169, column: 103, scope: !981)
!984 = !DILocation(line: 169, column: 114, scope: !985)
!985 = !DILexicalBlockFile(scope: !975, file: !55, discriminator: 4)
!986 = !DILocation(line: 171, column: 28, scope: !904)
!987 = !DILocation(line: 171, column: 15, scope: !904)
!988 = !DILocation(line: 171, column: 13, scope: !904)
!989 = !DILocation(line: 172, column: 2, scope: !904)
!990 = distinct !{!990, !989}
!991 = !DILocation(line: 172, column: 10, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !55, discriminator: 1)
!993 = distinct !DILexicalBlock(scope: !994, file: !55, line: 172, column: 10)
!994 = distinct !DILexicalBlock(scope: !904, file: !55, line: 172, column: 4)
!995 = !DILocation(line: 172, column: 14, scope: !992)
!996 = !DILocation(line: 172, column: 5, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !55, discriminator: 2)
!998 = distinct !DILexicalBlock(scope: !993, file: !55, line: 172, column: 3)
!999 = !DILocation(line: 172, column: 14, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !55, discriminator: 3)
!1001 = distinct !DILexicalBlock(scope: !993, file: !55, line: 172, column: 12)
!1002 = !DILocation(line: 172, column: 98, scope: !1000)
!1003 = !DILocation(line: 172, column: 109, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !994, file: !55, discriminator: 4)
!1005 = !DILocation(line: 174, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !904, file: !55, line: 174, column: 6)
!1007 = !DILocation(line: 174, column: 11, scope: !1006)
!1008 = !DILocation(line: 174, column: 19, scope: !1006)
!1009 = !DILocation(line: 174, column: 6, scope: !904)
!1010 = !DILocation(line: 177, column: 78, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !55, line: 174, column: 25)
!1012 = !DILocation(line: 177, column: 17, scope: !1011)
!1013 = !DILocation(line: 178, column: 2, scope: !1011)
!1014 = !DILocation(line: 180, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !904, file: !55, line: 180, column: 2)
!1016 = !DILocation(line: 180, column: 7, scope: !1015)
!1017 = !DILocation(line: 180, column: 14, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !55, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !55, line: 180, column: 2)
!1020 = !DILocation(line: 180, column: 18, scope: !1018)
!1021 = !DILocation(line: 180, column: 23, scope: !1018)
!1022 = !DILocation(line: 180, column: 16, scope: !1018)
!1023 = !DILocation(line: 180, column: 2, scope: !1018)
!1024 = !DILocation(line: 181, column: 26, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1019, file: !55, line: 180, column: 37)
!1026 = !DILocation(line: 181, column: 9, scope: !1025)
!1027 = !DILocation(line: 181, column: 14, scope: !1025)
!1028 = !DILocation(line: 181, column: 7, scope: !1025)
!1029 = !DILocation(line: 182, column: 10, scope: !1025)
!1030 = !DILocation(line: 182, column: 16, scope: !1025)
!1031 = !DILocation(line: 182, column: 14, scope: !1025)
!1032 = !DILocation(line: 182, column: 34, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1025, file: !55, discriminator: 1)
!1034 = !DILocation(line: 182, column: 28, scope: !1033)
!1035 = !DILocation(line: 182, column: 10, scope: !1033)
!1036 = !DILocation(line: 182, column: 10, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1025, file: !55, discriminator: 2)
!1038 = !DILocation(line: 182, column: 10, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1025, file: !55, discriminator: 3)
!1040 = !DILocation(line: 182, column: 8, scope: !1039)
!1041 = !DILocation(line: 183, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1025, file: !55, line: 183, column: 7)
!1043 = !DILocation(line: 183, column: 12, scope: !1042)
!1044 = !DILocation(line: 183, column: 7, scope: !1025)
!1045 = !DILocation(line: 183, column: 27, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1042, file: !55, discriminator: 1)
!1047 = !DILocation(line: 183, column: 25, scope: !1046)
!1048 = !DILocation(line: 183, column: 20, scope: !1046)
!1049 = !DILocation(line: 186, column: 24, scope: !1025)
!1050 = !DILocation(line: 186, column: 8, scope: !1025)
!1051 = !DILocation(line: 186, column: 13, scope: !1025)
!1052 = !DILocation(line: 186, column: 28, scope: !1025)
!1053 = !DILocation(line: 185, column: 3, scope: !1025)
!1054 = !DILocation(line: 187, column: 2, scope: !1025)
!1055 = !DILocation(line: 180, column: 33, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1019, file: !55, discriminator: 2)
!1057 = !DILocation(line: 180, column: 2, scope: !1056)
!1058 = distinct !{!1058, !1059}
!1059 = !DILocation(line: 180, column: 2, scope: !904)
!1060 = !DILocation(line: 188, column: 1, scope: !904)
!1061 = distinct !DISubprogram(name: "expando_unbind", scope: !55, file: !55, line: 190, type: !905, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1062 = !DILocalVariable(name: "key", arg: 1, scope: !1061, file: !55, line: 190, type: !49)
!1063 = !DILocation(line: 190, column: 33, scope: !1061)
!1064 = !DILocalVariable(name: "funccount", arg: 2, scope: !1061, file: !55, line: 190, type: !51)
!1065 = !DILocation(line: 190, column: 42, scope: !1061)
!1066 = !DILocalVariable(name: "funcs", arg: 3, scope: !1061, file: !55, line: 190, type: !907)
!1067 = !DILocation(line: 190, column: 66, scope: !1061)
!1068 = !DILocalVariable(name: "func", scope: !1061, file: !55, line: 192, type: !489)
!1069 = !DILocation(line: 192, column: 14, scope: !1061)
!1070 = !DILocalVariable(name: "rec", scope: !1061, file: !55, line: 193, type: !53)
!1071 = !DILocation(line: 193, column: 15, scope: !1061)
!1072 = !DILocalVariable(name: "n", scope: !1061, file: !55, line: 194, type: !51)
!1073 = !DILocation(line: 194, column: 13, scope: !1061)
!1074 = !DILocalVariable(name: "arg", scope: !1061, file: !55, line: 194, type: !51)
!1075 = !DILocation(line: 194, column: 16, scope: !1061)
!1076 = !DILocation(line: 196, column: 2, scope: !1061)
!1077 = distinct !{!1077, !1076}
!1078 = !DILocation(line: 196, column: 10, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1080, file: !55, discriminator: 1)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !55, line: 196, column: 10)
!1081 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 196, column: 4)
!1082 = !DILocation(line: 196, column: 14, scope: !1079)
!1083 = !DILocation(line: 196, column: 5, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !55, discriminator: 2)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !55, line: 196, column: 3)
!1086 = !DILocation(line: 196, column: 14, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1088, file: !55, discriminator: 3)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !55, line: 196, column: 12)
!1089 = !DILocation(line: 196, column: 98, scope: !1087)
!1090 = !DILocation(line: 196, column: 109, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1081, file: !55, discriminator: 4)
!1092 = !DILocation(line: 197, column: 2, scope: !1061)
!1093 = distinct !{!1093, !1092}
!1094 = !DILocation(line: 197, column: 10, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1096, file: !55, discriminator: 1)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !55, line: 197, column: 10)
!1097 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 197, column: 4)
!1098 = !DILocation(line: 197, column: 20, scope: !1095)
!1099 = !DILocation(line: 197, column: 28, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1101, file: !55, discriminator: 2)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !55, line: 197, column: 26)
!1102 = !DILocation(line: 197, column: 37, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !55, discriminator: 3)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !55, line: 197, column: 35)
!1105 = !DILocation(line: 197, column: 124, scope: !1103)
!1106 = !DILocation(line: 197, column: 135, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1097, file: !55, discriminator: 4)
!1108 = !DILocation(line: 198, column: 2, scope: !1061)
!1109 = distinct !{!1109, !1108}
!1110 = !DILocation(line: 198, column: 10, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !55, discriminator: 1)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !55, line: 198, column: 10)
!1113 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 198, column: 4)
!1114 = !DILocation(line: 198, column: 16, scope: !1111)
!1115 = !DILocation(line: 198, column: 5, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !55, discriminator: 2)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !55, line: 198, column: 3)
!1118 = !DILocation(line: 198, column: 14, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1120, file: !55, discriminator: 3)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !55, line: 198, column: 12)
!1121 = !DILocation(line: 198, column: 100, scope: !1119)
!1122 = !DILocation(line: 198, column: 111, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1113, file: !55, discriminator: 4)
!1124 = !DILocation(line: 199, column: 2, scope: !1061)
!1125 = distinct !{!1125, !1124}
!1126 = !DILocation(line: 199, column: 10, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !55, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !55, line: 199, column: 10)
!1129 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 199, column: 4)
!1130 = !DILocation(line: 199, column: 19, scope: !1127)
!1131 = !DILocation(line: 199, column: 5, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !55, discriminator: 2)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !55, line: 199, column: 3)
!1134 = !DILocation(line: 199, column: 14, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1136, file: !55, discriminator: 3)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !55, line: 199, column: 12)
!1137 = !DILocation(line: 199, column: 103, scope: !1135)
!1138 = !DILocation(line: 199, column: 114, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1129, file: !55, discriminator: 4)
!1140 = !DILocation(line: 201, column: 28, scope: !1061)
!1141 = !DILocation(line: 201, column: 15, scope: !1061)
!1142 = !DILocation(line: 201, column: 13, scope: !1061)
!1143 = !DILocation(line: 202, column: 2, scope: !1061)
!1144 = distinct !{!1144, !1143}
!1145 = !DILocation(line: 202, column: 10, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !55, discriminator: 1)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !55, line: 202, column: 10)
!1148 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 202, column: 4)
!1149 = !DILocation(line: 202, column: 14, scope: !1146)
!1150 = !DILocation(line: 202, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !55, discriminator: 2)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !55, line: 202, column: 3)
!1153 = !DILocation(line: 202, column: 14, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !55, discriminator: 3)
!1155 = distinct !DILexicalBlock(scope: !1147, file: !55, line: 202, column: 12)
!1156 = !DILocation(line: 202, column: 98, scope: !1154)
!1157 = !DILocation(line: 202, column: 109, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1148, file: !55, discriminator: 4)
!1159 = !DILocation(line: 204, column: 6, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 204, column: 6)
!1161 = !DILocation(line: 204, column: 11, scope: !1160)
!1162 = !DILocation(line: 204, column: 19, scope: !1160)
!1163 = !DILocation(line: 204, column: 6, scope: !1061)
!1164 = !DILocation(line: 207, column: 70, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !55, line: 204, column: 25)
!1166 = !DILocation(line: 207, column: 17, scope: !1165)
!1167 = !DILocation(line: 208, column: 2, scope: !1165)
!1168 = !DILocation(line: 210, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1061, file: !55, line: 210, column: 2)
!1170 = !DILocation(line: 210, column: 7, scope: !1169)
!1171 = !DILocation(line: 210, column: 14, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1173, file: !55, discriminator: 1)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !55, line: 210, column: 2)
!1174 = !DILocation(line: 210, column: 18, scope: !1172)
!1175 = !DILocation(line: 210, column: 23, scope: !1172)
!1176 = !DILocation(line: 210, column: 16, scope: !1172)
!1177 = !DILocation(line: 210, column: 2, scope: !1172)
!1178 = !DILocation(line: 211, column: 26, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !55, line: 210, column: 37)
!1180 = !DILocation(line: 211, column: 9, scope: !1179)
!1181 = !DILocation(line: 211, column: 14, scope: !1179)
!1182 = !DILocation(line: 211, column: 7, scope: !1179)
!1183 = !DILocation(line: 212, column: 10, scope: !1179)
!1184 = !DILocation(line: 212, column: 16, scope: !1179)
!1185 = !DILocation(line: 212, column: 14, scope: !1179)
!1186 = !DILocation(line: 212, column: 34, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1179, file: !55, discriminator: 1)
!1188 = !DILocation(line: 212, column: 28, scope: !1187)
!1189 = !DILocation(line: 212, column: 10, scope: !1187)
!1190 = !DILocation(line: 212, column: 10, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1179, file: !55, discriminator: 2)
!1192 = !DILocation(line: 212, column: 10, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1179, file: !55, discriminator: 3)
!1194 = !DILocation(line: 212, column: 8, scope: !1193)
!1195 = !DILocation(line: 213, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1179, file: !55, line: 213, column: 7)
!1197 = !DILocation(line: 213, column: 12, scope: !1196)
!1198 = !DILocation(line: 213, column: 7, scope: !1179)
!1199 = !DILocation(line: 213, column: 27, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1196, file: !55, discriminator: 1)
!1201 = !DILocation(line: 213, column: 25, scope: !1200)
!1202 = !DILocation(line: 213, column: 20, scope: !1200)
!1203 = !DILocation(line: 215, column: 36, scope: !1179)
!1204 = !DILocation(line: 215, column: 20, scope: !1179)
!1205 = !DILocation(line: 215, column: 25, scope: !1179)
!1206 = !DILocation(line: 215, column: 40, scope: !1179)
!1207 = !DILocation(line: 215, column: 3, scope: !1179)
!1208 = !DILocation(line: 216, column: 2, scope: !1179)
!1209 = !DILocation(line: 210, column: 33, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1173, file: !55, discriminator: 2)
!1211 = !DILocation(line: 210, column: 2, scope: !1210)
!1212 = distinct !{!1212, !1213}
!1213 = !DILocation(line: 210, column: 2, scope: !1061)
!1214 = !DILocation(line: 217, column: 1, scope: !1061)
!1215 = distinct !DISubprogram(name: "expando_get_signals", scope: !55, file: !55, line: 220, type: !1216, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!482, !49}
!1218 = !DILocalVariable(name: "key", arg: 1, scope: !1215, file: !55, line: 220, type: !49)
!1219 = !DILocation(line: 220, column: 38, scope: !1215)
!1220 = !DILocalVariable(name: "rec", scope: !1215, file: !55, line: 222, type: !53)
!1221 = !DILocation(line: 222, column: 15, scope: !1215)
!1222 = !DILocalVariable(name: "signals", scope: !1215, file: !55, line: 223, type: !482)
!1223 = !DILocation(line: 223, column: 7, scope: !1215)
!1224 = !DILocalVariable(name: "n", scope: !1215, file: !55, line: 224, type: !51)
!1225 = !DILocation(line: 224, column: 13, scope: !1215)
!1226 = !DILocation(line: 226, column: 2, scope: !1215)
!1227 = distinct !{!1227, !1226}
!1228 = !DILocation(line: 226, column: 10, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !55, discriminator: 1)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !55, line: 226, column: 10)
!1231 = distinct !DILexicalBlock(scope: !1215, file: !55, line: 226, column: 4)
!1232 = !DILocation(line: 226, column: 14, scope: !1229)
!1233 = !DILocation(line: 226, column: 5, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !55, discriminator: 2)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !55, line: 226, column: 3)
!1236 = !DILocation(line: 226, column: 14, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !55, discriminator: 3)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !55, line: 226, column: 12)
!1239 = !DILocation(line: 226, column: 98, scope: !1237)
!1240 = !DILocation(line: 226, column: 7, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1231, file: !55, discriminator: 4)
!1242 = !DILocation(line: 228, column: 21, scope: !1215)
!1243 = !DILocation(line: 228, column: 8, scope: !1215)
!1244 = !DILocation(line: 228, column: 6, scope: !1215)
!1245 = !DILocation(line: 229, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1215, file: !55, line: 229, column: 6)
!1247 = !DILocation(line: 229, column: 10, scope: !1246)
!1248 = !DILocation(line: 229, column: 17, scope: !1246)
!1249 = !DILocation(line: 229, column: 20, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1246, file: !55, discriminator: 1)
!1251 = !DILocation(line: 229, column: 25, scope: !1250)
!1252 = !DILocation(line: 229, column: 33, scope: !1250)
!1253 = !DILocation(line: 229, column: 6, scope: !1250)
!1254 = !DILocation(line: 230, column: 17, scope: !1246)
!1255 = !DILocation(line: 232, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1215, file: !55, line: 232, column: 6)
!1257 = !DILocation(line: 232, column: 11, scope: !1256)
!1258 = !DILocation(line: 232, column: 19, scope: !1256)
!1259 = !DILocation(line: 232, column: 6, scope: !1215)
!1260 = !DILocation(line: 235, column: 22, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !55, line: 232, column: 25)
!1262 = !DILocation(line: 235, column: 14, scope: !1261)
!1263 = !DILocation(line: 235, column: 11, scope: !1261)
!1264 = !DILocation(line: 236, column: 16, scope: !1261)
!1265 = !DILocation(line: 236, column: 3, scope: !1261)
!1266 = !DILocation(line: 236, column: 14, scope: !1261)
!1267 = !DILocation(line: 237, column: 3, scope: !1261)
!1268 = !DILocation(line: 237, column: 14, scope: !1261)
!1269 = !DILocation(line: 238, column: 3, scope: !1261)
!1270 = !DILocation(line: 238, column: 14, scope: !1261)
!1271 = !DILocation(line: 239, column: 24, scope: !1261)
!1272 = !DILocation(line: 239, column: 17, scope: !1261)
!1273 = !DILocation(line: 242, column: 41, scope: !1215)
!1274 = !DILocation(line: 242, column: 46, scope: !1215)
!1275 = !DILocation(line: 242, column: 53, scope: !1215)
!1276 = !DILocation(line: 242, column: 55, scope: !1215)
!1277 = !DILocation(line: 242, column: 40, scope: !1215)
!1278 = !DILocation(line: 242, column: 28, scope: !1215)
!1279 = !DILocation(line: 242, column: 20, scope: !1215)
!1280 = !DILocation(line: 242, column: 17, scope: !1215)
!1281 = !DILocation(line: 243, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1215, file: !55, line: 243, column: 2)
!1283 = !DILocation(line: 243, column: 7, scope: !1282)
!1284 = !DILocation(line: 243, column: 14, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !55, discriminator: 1)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !55, line: 243, column: 2)
!1287 = !DILocation(line: 243, column: 18, scope: !1285)
!1288 = !DILocation(line: 243, column: 23, scope: !1285)
!1289 = !DILocation(line: 243, column: 16, scope: !1285)
!1290 = !DILocation(line: 243, column: 2, scope: !1285)
!1291 = !DILocation(line: 244, column: 48, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !55, line: 243, column: 37)
!1293 = !DILocation(line: 244, column: 32, scope: !1292)
!1294 = !DILocation(line: 244, column: 37, scope: !1292)
!1295 = !DILocation(line: 244, column: 25, scope: !1292)
!1296 = !DILocation(line: 244, column: 26, scope: !1292)
!1297 = !DILocation(line: 244, column: 17, scope: !1292)
!1298 = !DILocation(line: 244, column: 30, scope: !1292)
!1299 = !DILocation(line: 245, column: 51, scope: !1292)
!1300 = !DILocation(line: 245, column: 34, scope: !1292)
!1301 = !DILocation(line: 245, column: 39, scope: !1292)
!1302 = !DILocation(line: 245, column: 25, scope: !1292)
!1303 = !DILocation(line: 245, column: 26, scope: !1292)
!1304 = !DILocation(line: 245, column: 28, scope: !1292)
!1305 = !DILocation(line: 245, column: 17, scope: !1292)
!1306 = !DILocation(line: 245, column: 32, scope: !1292)
!1307 = !DILocation(line: 246, column: 2, scope: !1292)
!1308 = !DILocation(line: 243, column: 33, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1286, file: !55, discriminator: 2)
!1310 = !DILocation(line: 243, column: 2, scope: !1309)
!1311 = distinct !{!1311, !1312}
!1312 = !DILocation(line: 243, column: 2, scope: !1215)
!1313 = !DILocation(line: 247, column: 10, scope: !1215)
!1314 = !DILocation(line: 247, column: 15, scope: !1215)
!1315 = !DILocation(line: 247, column: 22, scope: !1215)
!1316 = !DILocation(line: 247, column: 2, scope: !1215)
!1317 = !DILocation(line: 247, column: 26, scope: !1215)
!1318 = !DILocation(line: 248, column: 16, scope: !1215)
!1319 = !DILocation(line: 248, column: 9, scope: !1215)
!1320 = !DILocation(line: 249, column: 1, scope: !1215)
!1321 = distinct !DISubprogram(name: "expando_find_char", scope: !55, file: !55, line: 251, type: !1322, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!59, !48}
!1324 = !DILocalVariable(name: "chr", arg: 1, scope: !1321, file: !55, line: 251, type: !48)
!1325 = !DILocation(line: 251, column: 37, scope: !1321)
!1326 = !DILocation(line: 253, column: 46, scope: !1321)
!1327 = !DILocation(line: 253, column: 24, scope: !1321)
!1328 = !DILocation(line: 253, column: 10, scope: !1321)
!1329 = !DILocation(line: 253, column: 52, scope: !1321)
!1330 = !DILocation(line: 253, column: 9, scope: !1321)
!1331 = !DILocation(line: 253, column: 9, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1321, file: !55, discriminator: 1)
!1333 = !DILocation(line: 254, column: 40, scope: !1321)
!1334 = !DILocation(line: 254, column: 18, scope: !1321)
!1335 = !DILocation(line: 254, column: 4, scope: !1321)
!1336 = !DILocation(line: 254, column: 47, scope: !1321)
!1337 = !DILocation(line: 253, column: 9, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1321, file: !55, discriminator: 2)
!1339 = !DILocation(line: 253, column: 9, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1321, file: !55, discriminator: 3)
!1341 = !DILocation(line: 253, column: 2, scope: !1340)
!1342 = distinct !DISubprogram(name: "expando_find_long", scope: !55, file: !55, line: 257, type: !1343, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!59, !49}
!1345 = !DILocalVariable(name: "key", arg: 1, scope: !1342, file: !55, line: 257, type: !49)
!1346 = !DILocation(line: 257, column: 44, scope: !1342)
!1347 = !DILocalVariable(name: "rec", scope: !1342, file: !55, line: 259, type: !53)
!1348 = !DILocation(line: 259, column: 15, scope: !1342)
!1349 = !DILocation(line: 259, column: 41, scope: !1342)
!1350 = !DILocation(line: 259, column: 51, scope: !1342)
!1351 = !DILocation(line: 259, column: 21, scope: !1342)
!1352 = !DILocation(line: 260, column: 9, scope: !1342)
!1353 = !DILocation(line: 260, column: 13, scope: !1342)
!1354 = !DILocation(line: 260, column: 9, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1342, file: !55, discriminator: 1)
!1356 = !DILocation(line: 260, column: 29, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1342, file: !55, discriminator: 2)
!1358 = !DILocation(line: 260, column: 34, scope: !1357)
!1359 = !DILocation(line: 260, column: 9, scope: !1357)
!1360 = !DILocation(line: 260, column: 9, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1342, file: !55, discriminator: 3)
!1362 = !DILocation(line: 260, column: 2, scope: !1361)
!1363 = distinct !DISubprogram(name: "expandos_init", scope: !55, file: !55, line: 589, type: !220, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1364 = !DILocalVariable(name: "un", scope: !1363, file: !55, line: 592, type: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !1366, line: 48, size: 3120, align: 8, elements: !1367)
!1366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/irssi/task1")
!1367 = !{!1368, !1372, !1373, !1374, !1375, !1376}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !1365, file: !1366, line: 51, baseType: !1369, size: 520, align: 8)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 520, align: 8, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 65)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !1365, file: !1366, line: 54, baseType: !1369, size: 520, align: 8, offset: 520)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1365, file: !1366, line: 57, baseType: !1369, size: 520, align: 8, offset: 1040)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1365, file: !1366, line: 59, baseType: !1369, size: 520, align: 8, offset: 1560)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1365, file: !1366, line: 62, baseType: !1369, size: 520, align: 8, offset: 2080)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__domainname", scope: !1365, file: !1366, line: 69, baseType: !1369, size: 520, align: 8, offset: 2600)
!1377 = !DILocation(line: 592, column: 17, scope: !1363)
!1378 = !DILocation(line: 594, column: 2, scope: !1363)
!1379 = !DILocation(line: 595, column: 2, scope: !1363)
!1380 = !DILocation(line: 596, column: 2, scope: !1363)
!1381 = !DILocation(line: 598, column: 16, scope: !1363)
!1382 = !DILocation(line: 598, column: 42, scope: !1363)
!1383 = !DILocation(line: 599, column: 20, scope: !1363)
!1384 = !DILocation(line: 599, column: 44, scope: !1363)
!1385 = !DILocation(line: 600, column: 24, scope: !1363)
!1386 = !DILocation(line: 602, column: 40, scope: !1363)
!1387 = !DILocation(line: 602, column: 30, scope: !1363)
!1388 = !DILocation(line: 602, column: 17, scope: !1363)
!1389 = !DILocation(line: 604, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1363, file: !55, line: 604, column: 6)
!1391 = !DILocation(line: 604, column: 17, scope: !1390)
!1392 = !DILocation(line: 604, column: 6, scope: !1363)
!1393 = !DILocation(line: 605, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !55, line: 604, column: 23)
!1395 = !DILocation(line: 605, column: 22, scope: !1394)
!1396 = !DILocation(line: 605, column: 13, scope: !1394)
!1397 = !DILocation(line: 605, column: 11, scope: !1394)
!1398 = !DILocation(line: 606, column: 28, scope: !1394)
!1399 = !DILocation(line: 606, column: 25, scope: !1394)
!1400 = !DILocation(line: 606, column: 16, scope: !1394)
!1401 = !DILocation(line: 606, column: 14, scope: !1394)
!1402 = !DILocation(line: 607, column: 25, scope: !1394)
!1403 = !DILocation(line: 607, column: 22, scope: !1394)
!1404 = !DILocation(line: 607, column: 13, scope: !1394)
!1405 = !DILocation(line: 607, column: 11, scope: !1394)
!1406 = !DILocation(line: 608, column: 2, scope: !1394)
!1407 = !DILocation(line: 611, column: 2, scope: !1363)
!1408 = !DILocation(line: 612, column: 13, scope: !1363)
!1409 = !DILocation(line: 612, column: 11, scope: !1363)
!1410 = !DILocation(line: 615, column: 2, scope: !1363)
!1411 = !DILocation(line: 617, column: 2, scope: !1363)
!1412 = !DILocation(line: 619, column: 2, scope: !1363)
!1413 = !DILocation(line: 621, column: 2, scope: !1363)
!1414 = !DILocation(line: 623, column: 2, scope: !1363)
!1415 = !DILocation(line: 625, column: 2, scope: !1363)
!1416 = !DILocation(line: 628, column: 2, scope: !1363)
!1417 = !DILocation(line: 630, column: 2, scope: !1363)
!1418 = !DILocation(line: 631, column: 2, scope: !1363)
!1419 = !DILocation(line: 633, column: 2, scope: !1363)
!1420 = !DILocation(line: 635, column: 2, scope: !1363)
!1421 = !DILocation(line: 637, column: 2, scope: !1363)
!1422 = !DILocation(line: 641, column: 2, scope: !1363)
!1423 = !DILocation(line: 646, column: 2, scope: !1363)
!1424 = !DILocation(line: 651, column: 2, scope: !1363)
!1425 = !DILocation(line: 655, column: 2, scope: !1363)
!1426 = !DILocation(line: 658, column: 2, scope: !1363)
!1427 = !DILocation(line: 661, column: 2, scope: !1363)
!1428 = !DILocation(line: 664, column: 2, scope: !1363)
!1429 = !DILocation(line: 666, column: 2, scope: !1363)
!1430 = !DILocation(line: 668, column: 2, scope: !1363)
!1431 = !DILocation(line: 670, column: 2, scope: !1363)
!1432 = !DILocation(line: 671, column: 2, scope: !1363)
!1433 = !DILocation(line: 675, column: 2, scope: !1363)
!1434 = !DILocation(line: 677, column: 2, scope: !1363)
!1435 = !DILocation(line: 680, column: 2, scope: !1363)
!1436 = !DILocation(line: 682, column: 2, scope: !1363)
!1437 = !DILocation(line: 684, column: 2, scope: !1363)
!1438 = !DILocation(line: 686, column: 2, scope: !1363)
!1439 = !DILocation(line: 691, column: 2, scope: !1363)
!1440 = !DILocation(line: 695, column: 2, scope: !1363)
!1441 = !DILocation(line: 699, column: 2, scope: !1363)
!1442 = !DILocation(line: 705, column: 2, scope: !1363)
!1443 = !DILocation(line: 707, column: 21, scope: !1363)
!1444 = !DILocation(line: 707, column: 19, scope: !1363)
!1445 = !DILocation(line: 708, column: 2, scope: !1363)
!1446 = !DILocation(line: 709, column: 2, scope: !1363)
!1447 = !DILocation(line: 710, column: 2, scope: !1363)
!1448 = !DILocation(line: 711, column: 2, scope: !1363)
!1449 = !DILocation(line: 712, column: 1, scope: !1363)
!1450 = distinct !DISubprogram(name: "expando_lastmsg", scope: !55, file: !55, line: 271, type: !61, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1451 = !DILocalVariable(name: "server", arg: 1, scope: !1450, file: !55, line: 271, type: !64)
!1452 = !DILocation(line: 271, column: 42, scope: !1450)
!1453 = !DILocalVariable(name: "item", arg: 2, scope: !1450, file: !55, line: 271, type: !44)
!1454 = !DILocation(line: 271, column: 56, scope: !1450)
!1455 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1450, file: !55, line: 271, type: !482)
!1456 = !DILocation(line: 271, column: 67, scope: !1450)
!1457 = !DILocation(line: 273, column: 9, scope: !1450)
!1458 = !DILocation(line: 273, column: 2, scope: !1450)
!1459 = distinct !DISubprogram(name: "expando_lastmymsg", scope: !55, file: !55, line: 277, type: !61, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1460 = !DILocalVariable(name: "server", arg: 1, scope: !1459, file: !55, line: 277, type: !64)
!1461 = !DILocation(line: 277, column: 44, scope: !1459)
!1462 = !DILocalVariable(name: "item", arg: 2, scope: !1459, file: !55, line: 277, type: !44)
!1463 = !DILocation(line: 277, column: 58, scope: !1459)
!1464 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1459, file: !55, line: 277, type: !482)
!1465 = !DILocation(line: 277, column: 69, scope: !1459)
!1466 = !DILocation(line: 279, column: 9, scope: !1459)
!1467 = !DILocation(line: 279, column: 2, scope: !1459)
!1468 = distinct !DISubprogram(name: "expando_lastpublic", scope: !55, file: !55, line: 283, type: !61, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1469 = !DILocalVariable(name: "server", arg: 1, scope: !1468, file: !55, line: 283, type: !64)
!1470 = !DILocation(line: 283, column: 45, scope: !1468)
!1471 = !DILocalVariable(name: "item", arg: 2, scope: !1468, file: !55, line: 283, type: !44)
!1472 = !DILocation(line: 283, column: 59, scope: !1468)
!1473 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1468, file: !55, line: 283, type: !482)
!1474 = !DILocation(line: 283, column: 70, scope: !1468)
!1475 = !DILocation(line: 285, column: 9, scope: !1468)
!1476 = !DILocation(line: 285, column: 2, scope: !1468)
!1477 = distinct !DISubprogram(name: "expando_awaymsg", scope: !55, file: !55, line: 289, type: !61, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1478 = !DILocalVariable(name: "server", arg: 1, scope: !1477, file: !55, line: 289, type: !64)
!1479 = !DILocation(line: 289, column: 42, scope: !1477)
!1480 = !DILocalVariable(name: "item", arg: 2, scope: !1477, file: !55, line: 289, type: !44)
!1481 = !DILocation(line: 289, column: 56, scope: !1477)
!1482 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1477, file: !55, line: 289, type: !482)
!1483 = !DILocation(line: 289, column: 67, scope: !1477)
!1484 = !DILocation(line: 291, column: 9, scope: !1477)
!1485 = !DILocation(line: 291, column: 16, scope: !1477)
!1486 = !DILocation(line: 291, column: 9, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1477, file: !55, discriminator: 1)
!1488 = !DILocation(line: 291, column: 30, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1477, file: !55, discriminator: 2)
!1490 = !DILocation(line: 291, column: 38, scope: !1489)
!1491 = !DILocation(line: 291, column: 9, scope: !1489)
!1492 = !DILocation(line: 291, column: 9, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1477, file: !55, discriminator: 3)
!1494 = !DILocation(line: 291, column: 2, scope: !1493)
!1495 = distinct !DISubprogram(name: "expando_lastmymsg_body", scope: !55, file: !55, line: 295, type: !61, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1496 = !DILocalVariable(name: "server", arg: 1, scope: !1495, file: !55, line: 295, type: !64)
!1497 = !DILocation(line: 295, column: 49, scope: !1495)
!1498 = !DILocalVariable(name: "item", arg: 2, scope: !1495, file: !55, line: 295, type: !44)
!1499 = !DILocation(line: 295, column: 63, scope: !1495)
!1500 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1495, file: !55, line: 295, type: !482)
!1501 = !DILocation(line: 295, column: 74, scope: !1495)
!1502 = !DILocation(line: 297, column: 9, scope: !1495)
!1503 = !DILocation(line: 297, column: 2, scope: !1495)
!1504 = distinct !DISubprogram(name: "expando_channel", scope: !55, file: !55, line: 301, type: !61, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1505 = !DILocalVariable(name: "server", arg: 1, scope: !1504, file: !55, line: 301, type: !64)
!1506 = !DILocation(line: 301, column: 42, scope: !1504)
!1507 = !DILocalVariable(name: "item", arg: 2, scope: !1504, file: !55, line: 301, type: !44)
!1508 = !DILocation(line: 301, column: 56, scope: !1504)
!1509 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1504, file: !55, line: 301, type: !482)
!1510 = !DILocation(line: 301, column: 67, scope: !1504)
!1511 = !DILocation(line: 303, column: 53, scope: !1504)
!1512 = !DILocation(line: 303, column: 28, scope: !1504)
!1513 = !DILocation(line: 303, column: 12, scope: !1504)
!1514 = !DILocation(line: 303, column: 9, scope: !1504)
!1515 = !DILocation(line: 303, column: 11, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1504, file: !55, discriminator: 1)
!1517 = !DILocation(line: 303, column: 9, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1504, file: !55, discriminator: 2)
!1519 = !DILocation(line: 303, column: 9, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1504, file: !55, discriminator: 3)
!1521 = !DILocation(line: 303, column: 77, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1504, file: !55, discriminator: 4)
!1523 = !DILocation(line: 303, column: 52, scope: !1522)
!1524 = !DILocation(line: 303, column: 36, scope: !1522)
!1525 = !DILocation(line: 303, column: 70, scope: !1522)
!1526 = !DILocation(line: 303, column: 9, scope: !1522)
!1527 = !DILocation(line: 303, column: 9, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1504, file: !55, discriminator: 5)
!1529 = !DILocation(line: 303, column: 2, scope: !1528)
!1530 = distinct !DISubprogram(name: "expando_clientstarted", scope: !55, file: !55, line: 307, type: !61, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1531 = !DILocalVariable(name: "server", arg: 1, scope: !1530, file: !55, line: 307, type: !64)
!1532 = !DILocation(line: 307, column: 48, scope: !1530)
!1533 = !DILocalVariable(name: "item", arg: 2, scope: !1530, file: !55, line: 307, type: !44)
!1534 = !DILocation(line: 307, column: 62, scope: !1530)
!1535 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1530, file: !55, line: 307, type: !482)
!1536 = !DILocation(line: 307, column: 73, scope: !1530)
!1537 = !DILocation(line: 309, column: 10, scope: !1530)
!1538 = !DILocation(line: 309, column: 19, scope: !1530)
!1539 = !DILocation(line: 310, column: 39, scope: !1530)
!1540 = !DILocation(line: 310, column: 9, scope: !1530)
!1541 = !DILocation(line: 310, column: 2, scope: !1530)
!1542 = distinct !DISubprogram(name: "expando_last_invite", scope: !55, file: !55, line: 314, type: !61, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1543 = !DILocalVariable(name: "server", arg: 1, scope: !1542, file: !55, line: 314, type: !64)
!1544 = !DILocation(line: 314, column: 46, scope: !1542)
!1545 = !DILocalVariable(name: "item", arg: 2, scope: !1542, file: !55, line: 314, type: !44)
!1546 = !DILocation(line: 314, column: 60, scope: !1542)
!1547 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1542, file: !55, line: 314, type: !482)
!1548 = !DILocation(line: 314, column: 71, scope: !1542)
!1549 = !DILocation(line: 316, column: 9, scope: !1542)
!1550 = !DILocation(line: 316, column: 16, scope: !1542)
!1551 = !DILocation(line: 316, column: 9, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1542, file: !55, discriminator: 1)
!1553 = !DILocation(line: 316, column: 30, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1542, file: !55, discriminator: 2)
!1555 = !DILocation(line: 316, column: 38, scope: !1554)
!1556 = !DILocation(line: 316, column: 9, scope: !1554)
!1557 = !DILocation(line: 316, column: 9, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1542, file: !55, discriminator: 3)
!1559 = !DILocation(line: 316, column: 2, scope: !1558)
!1560 = distinct !DISubprogram(name: "expando_version", scope: !55, file: !55, line: 320, type: !61, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1561 = !DILocalVariable(name: "server", arg: 1, scope: !1560, file: !55, line: 320, type: !64)
!1562 = !DILocation(line: 320, column: 42, scope: !1560)
!1563 = !DILocalVariable(name: "item", arg: 2, scope: !1560, file: !55, line: 320, type: !44)
!1564 = !DILocation(line: 320, column: 56, scope: !1560)
!1565 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1560, file: !55, line: 320, type: !482)
!1566 = !DILocation(line: 320, column: 67, scope: !1560)
!1567 = !DILocation(line: 322, column: 2, scope: !1560)
!1568 = distinct !DISubprogram(name: "expando_cmdchars", scope: !55, file: !55, line: 326, type: !61, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1569 = !DILocalVariable(name: "server", arg: 1, scope: !1568, file: !55, line: 326, type: !64)
!1570 = !DILocation(line: 326, column: 43, scope: !1568)
!1571 = !DILocalVariable(name: "item", arg: 2, scope: !1568, file: !55, line: 326, type: !44)
!1572 = !DILocation(line: 326, column: 57, scope: !1568)
!1573 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1568, file: !55, line: 326, type: !482)
!1574 = !DILocation(line: 326, column: 68, scope: !1568)
!1575 = !DILocation(line: 328, column: 18, scope: !1568)
!1576 = !DILocation(line: 328, column: 2, scope: !1568)
!1577 = distinct !DISubprogram(name: "expando_cmdchar", scope: !55, file: !55, line: 332, type: !61, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1578 = !DILocalVariable(name: "server", arg: 1, scope: !1577, file: !55, line: 332, type: !64)
!1579 = !DILocation(line: 332, column: 42, scope: !1577)
!1580 = !DILocalVariable(name: "item", arg: 2, scope: !1577, file: !55, line: 332, type: !44)
!1581 = !DILocation(line: 332, column: 56, scope: !1577)
!1582 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1577, file: !55, line: 332, type: !482)
!1583 = !DILocation(line: 332, column: 67, scope: !1577)
!1584 = !DILocalVariable(name: "str", scope: !1577, file: !55, line: 334, type: !1585)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, align: 8, elements: !323)
!1586 = !DILocation(line: 334, column: 7, scope: !1577)
!1587 = !DILocation(line: 336, column: 12, scope: !1577)
!1588 = !DILocation(line: 336, column: 11, scope: !1577)
!1589 = !DILocation(line: 336, column: 2, scope: !1577)
!1590 = !DILocation(line: 336, column: 9, scope: !1577)
!1591 = !DILocation(line: 338, column: 3, scope: !1577)
!1592 = !DILocation(line: 338, column: 12, scope: !1577)
!1593 = !DILocation(line: 339, column: 18, scope: !1577)
!1594 = !DILocation(line: 339, column: 9, scope: !1577)
!1595 = !DILocation(line: 339, column: 2, scope: !1577)
!1596 = distinct !DISubprogram(name: "expando_chanmode", scope: !55, file: !55, line: 343, type: !61, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1597 = !DILocalVariable(name: "server", arg: 1, scope: !1596, file: !55, line: 343, type: !64)
!1598 = !DILocation(line: 343, column: 43, scope: !1596)
!1599 = !DILocalVariable(name: "item", arg: 2, scope: !1596, file: !55, line: 343, type: !44)
!1600 = !DILocation(line: 343, column: 57, scope: !1596)
!1601 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1596, file: !55, line: 343, type: !482)
!1602 = !DILocation(line: 343, column: 68, scope: !1596)
!1603 = !DILocalVariable(name: "cmode", scope: !1596, file: !55, line: 345, type: !63)
!1604 = !DILocation(line: 345, column: 8, scope: !1596)
!1605 = !DILocalVariable(name: "args", scope: !1596, file: !55, line: 346, type: !63)
!1606 = !DILocation(line: 346, column: 8, scope: !1596)
!1607 = !DILocation(line: 348, column: 3, scope: !1596)
!1608 = !DILocation(line: 348, column: 12, scope: !1596)
!1609 = !DILocation(line: 350, column: 50, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1596, file: !55, line: 350, column: 6)
!1611 = !DILocation(line: 350, column: 25, scope: !1610)
!1612 = !DILocation(line: 350, column: 9, scope: !1610)
!1613 = !DILocation(line: 350, column: 6, scope: !1596)
!1614 = !DILocation(line: 350, column: 8, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1610, file: !55, discriminator: 1)
!1616 = !DILocation(line: 350, column: 6, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1596, file: !55, discriminator: 2)
!1618 = !DILocation(line: 351, column: 3, scope: !1610)
!1619 = !DILocation(line: 353, column: 14, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1596, file: !55, line: 353, column: 13)
!1621 = !DILocation(line: 353, column: 13, scope: !1596)
!1622 = !DILocation(line: 354, column: 52, scope: !1620)
!1623 = !DILocation(line: 354, column: 27, scope: !1620)
!1624 = !DILocation(line: 354, column: 11, scope: !1620)
!1625 = !DILocation(line: 354, column: 44, scope: !1620)
!1626 = !DILocation(line: 354, column: 3, scope: !1620)
!1627 = !DILocation(line: 356, column: 3, scope: !1596)
!1628 = !DILocation(line: 356, column: 12, scope: !1596)
!1629 = !DILocation(line: 357, column: 61, scope: !1596)
!1630 = !DILocation(line: 357, column: 36, scope: !1596)
!1631 = !DILocation(line: 357, column: 20, scope: !1596)
!1632 = !DILocation(line: 357, column: 53, scope: !1596)
!1633 = !DILocation(line: 357, column: 10, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1596, file: !55, discriminator: 1)
!1635 = !DILocation(line: 357, column: 8, scope: !1596)
!1636 = !DILocation(line: 358, column: 16, scope: !1596)
!1637 = !DILocation(line: 358, column: 9, scope: !1596)
!1638 = !DILocation(line: 358, column: 7, scope: !1596)
!1639 = !DILocation(line: 359, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1596, file: !55, line: 359, column: 6)
!1641 = !DILocation(line: 359, column: 11, scope: !1640)
!1642 = !DILocation(line: 359, column: 6, scope: !1596)
!1643 = !DILocation(line: 360, column: 4, scope: !1640)
!1644 = !DILocation(line: 360, column: 9, scope: !1640)
!1645 = !DILocation(line: 360, column: 3, scope: !1640)
!1646 = !DILocation(line: 362, column: 9, scope: !1596)
!1647 = !DILocation(line: 362, column: 2, scope: !1596)
!1648 = !DILocation(line: 363, column: 1, scope: !1596)
!1649 = distinct !DISubprogram(name: "expando_nick", scope: !55, file: !55, line: 366, type: !61, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1650 = !DILocalVariable(name: "server", arg: 1, scope: !1649, file: !55, line: 366, type: !64)
!1651 = !DILocation(line: 366, column: 39, scope: !1649)
!1652 = !DILocalVariable(name: "item", arg: 2, scope: !1649, file: !55, line: 366, type: !44)
!1653 = !DILocation(line: 366, column: 53, scope: !1649)
!1654 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1649, file: !55, line: 366, type: !482)
!1655 = !DILocation(line: 366, column: 64, scope: !1649)
!1656 = !DILocation(line: 368, column: 9, scope: !1649)
!1657 = !DILocation(line: 368, column: 16, scope: !1649)
!1658 = !DILocation(line: 368, column: 9, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1649, file: !55, discriminator: 1)
!1660 = !DILocation(line: 368, column: 30, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1649, file: !55, discriminator: 2)
!1662 = !DILocation(line: 368, column: 38, scope: !1661)
!1663 = !DILocation(line: 368, column: 9, scope: !1661)
!1664 = !DILocation(line: 368, column: 9, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1649, file: !55, discriminator: 3)
!1666 = !DILocation(line: 368, column: 2, scope: !1665)
!1667 = distinct !DISubprogram(name: "expando_statusoper", scope: !55, file: !55, line: 372, type: !61, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1668 = !DILocalVariable(name: "server", arg: 1, scope: !1667, file: !55, line: 372, type: !64)
!1669 = !DILocation(line: 372, column: 45, scope: !1667)
!1670 = !DILocalVariable(name: "item", arg: 2, scope: !1667, file: !55, line: 372, type: !44)
!1671 = !DILocation(line: 372, column: 59, scope: !1667)
!1672 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1667, file: !55, line: 372, type: !482)
!1673 = !DILocation(line: 372, column: 70, scope: !1667)
!1674 = !DILocation(line: 374, column: 9, scope: !1667)
!1675 = !DILocation(line: 374, column: 16, scope: !1667)
!1676 = !DILocation(line: 374, column: 23, scope: !1667)
!1677 = !DILocation(line: 374, column: 27, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1667, file: !55, discriminator: 1)
!1679 = !DILocation(line: 374, column: 35, scope: !1678)
!1680 = !DILocation(line: 374, column: 9, scope: !1678)
!1681 = !DILocation(line: 374, column: 9, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1667, file: !55, discriminator: 2)
!1683 = !DILocation(line: 375, column: 12, scope: !1667)
!1684 = !DILocation(line: 374, column: 9, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1667, file: !55, discriminator: 3)
!1686 = !DILocation(line: 374, column: 9, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1667, file: !55, discriminator: 4)
!1688 = !DILocation(line: 374, column: 2, scope: !1687)
!1689 = distinct !DISubprogram(name: "expando_chanop", scope: !55, file: !55, line: 379, type: !61, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1690 = !DILocalVariable(name: "server", arg: 1, scope: !1689, file: !55, line: 379, type: !64)
!1691 = !DILocation(line: 379, column: 41, scope: !1689)
!1692 = !DILocalVariable(name: "item", arg: 2, scope: !1689, file: !55, line: 379, type: !44)
!1693 = !DILocation(line: 379, column: 55, scope: !1689)
!1694 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1689, file: !55, line: 379, type: !482)
!1695 = !DILocation(line: 379, column: 66, scope: !1689)
!1696 = !DILocation(line: 381, column: 52, scope: !1689)
!1697 = !DILocation(line: 381, column: 27, scope: !1689)
!1698 = !DILocation(line: 381, column: 11, scope: !1689)
!1699 = !DILocation(line: 381, column: 58, scope: !1689)
!1700 = !DILocation(line: 381, column: 10, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1689, file: !55, discriminator: 1)
!1702 = !DILocation(line: 381, column: 58, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1689, file: !55, discriminator: 2)
!1704 = !DILocation(line: 381, column: 103, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1689, file: !55, discriminator: 3)
!1706 = !DILocation(line: 381, column: 78, scope: !1705)
!1707 = !DILocation(line: 381, column: 62, scope: !1705)
!1708 = !DILocation(line: 381, column: 63, scope: !1705)
!1709 = !DILocation(line: 381, column: 58, scope: !1705)
!1710 = !DILocation(line: 381, column: 9, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1689, file: !55, discriminator: 4)
!1712 = !DILocation(line: 381, column: 2, scope: !1711)
!1713 = distinct !DISubprogram(name: "expando_query", scope: !55, file: !55, line: 385, type: !61, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1714 = !DILocalVariable(name: "server", arg: 1, scope: !1713, file: !55, line: 385, type: !64)
!1715 = !DILocation(line: 385, column: 40, scope: !1713)
!1716 = !DILocalVariable(name: "item", arg: 2, scope: !1713, file: !55, line: 385, type: !44)
!1717 = !DILocation(line: 385, column: 54, scope: !1713)
!1718 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1713, file: !55, line: 385, type: !482)
!1719 = !DILocation(line: 385, column: 65, scope: !1713)
!1720 = !DILocation(line: 387, column: 51, scope: !1713)
!1721 = !DILocation(line: 387, column: 26, scope: !1713)
!1722 = !DILocation(line: 387, column: 12, scope: !1713)
!1723 = !DILocation(line: 387, column: 9, scope: !1713)
!1724 = !DILocation(line: 387, column: 11, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1713, file: !55, discriminator: 1)
!1726 = !DILocation(line: 387, column: 9, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1713, file: !55, discriminator: 2)
!1728 = !DILocation(line: 387, column: 9, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1713, file: !55, discriminator: 3)
!1730 = !DILocation(line: 387, column: 104, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1713, file: !55, discriminator: 4)
!1732 = !DILocation(line: 387, column: 79, scope: !1731)
!1733 = !DILocation(line: 387, column: 65, scope: !1731)
!1734 = !DILocation(line: 387, column: 64, scope: !1731)
!1735 = !DILocation(line: 387, column: 9, scope: !1731)
!1736 = !DILocation(line: 387, column: 9, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1713, file: !55, discriminator: 5)
!1738 = !DILocation(line: 387, column: 2, scope: !1737)
!1739 = distinct !DISubprogram(name: "expando_serverversion", scope: !55, file: !55, line: 391, type: !61, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1740 = !DILocalVariable(name: "server", arg: 1, scope: !1739, file: !55, line: 391, type: !64)
!1741 = !DILocation(line: 391, column: 48, scope: !1739)
!1742 = !DILocalVariable(name: "item", arg: 2, scope: !1739, file: !55, line: 391, type: !44)
!1743 = !DILocation(line: 391, column: 62, scope: !1739)
!1744 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1739, file: !55, line: 391, type: !482)
!1745 = !DILocation(line: 391, column: 73, scope: !1739)
!1746 = !DILocation(line: 393, column: 9, scope: !1739)
!1747 = !DILocation(line: 393, column: 16, scope: !1739)
!1748 = !DILocation(line: 393, column: 9, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1739, file: !55, discriminator: 1)
!1750 = !DILocation(line: 393, column: 30, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1739, file: !55, discriminator: 2)
!1752 = !DILocation(line: 393, column: 38, scope: !1751)
!1753 = !DILocation(line: 393, column: 9, scope: !1751)
!1754 = !DILocation(line: 393, column: 9, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1739, file: !55, discriminator: 3)
!1756 = !DILocation(line: 393, column: 2, scope: !1755)
!1757 = distinct !DISubprogram(name: "expando_target", scope: !55, file: !55, line: 397, type: !61, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1758 = !DILocalVariable(name: "server", arg: 1, scope: !1757, file: !55, line: 397, type: !64)
!1759 = !DILocation(line: 397, column: 41, scope: !1757)
!1760 = !DILocalVariable(name: "item", arg: 2, scope: !1757, file: !55, line: 397, type: !44)
!1761 = !DILocation(line: 397, column: 55, scope: !1757)
!1762 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1757, file: !55, line: 397, type: !482)
!1763 = !DILocation(line: 397, column: 66, scope: !1757)
!1764 = !DILocation(line: 399, column: 9, scope: !1757)
!1765 = !DILocation(line: 399, column: 14, scope: !1757)
!1766 = !DILocation(line: 399, column: 9, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1757, file: !55, discriminator: 1)
!1768 = !DILocation(line: 400, column: 30, scope: !1757)
!1769 = !DILocation(line: 400, column: 14, scope: !1757)
!1770 = !DILocation(line: 400, column: 37, scope: !1757)
!1771 = !DILocation(line: 400, column: 64, scope: !1757)
!1772 = !DILocation(line: 400, column: 48, scope: !1757)
!1773 = !DILocation(line: 400, column: 13, scope: !1757)
!1774 = !DILocation(line: 399, column: 9, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1757, file: !55, discriminator: 2)
!1776 = !DILocation(line: 399, column: 9, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1757, file: !55, discriminator: 3)
!1778 = !DILocation(line: 399, column: 2, scope: !1777)
!1779 = distinct !DISubprogram(name: "expando_releasedate", scope: !55, file: !55, line: 404, type: !61, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1780 = !DILocalVariable(name: "server", arg: 1, scope: !1779, file: !55, line: 404, type: !64)
!1781 = !DILocation(line: 404, column: 46, scope: !1779)
!1782 = !DILocalVariable(name: "item", arg: 2, scope: !1779, file: !55, line: 404, type: !44)
!1783 = !DILocation(line: 404, column: 60, scope: !1779)
!1784 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1779, file: !55, line: 404, type: !482)
!1785 = !DILocation(line: 404, column: 71, scope: !1779)
!1786 = !DILocation(line: 406, column: 10, scope: !1779)
!1787 = !DILocation(line: 406, column: 19, scope: !1779)
!1788 = !DILocation(line: 407, column: 9, scope: !1779)
!1789 = !DILocation(line: 407, column: 2, scope: !1779)
!1790 = distinct !DISubprogram(name: "expando_releasetime", scope: !55, file: !55, line: 411, type: !61, isLocal: true, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1791 = !DILocalVariable(name: "server", arg: 1, scope: !1790, file: !55, line: 411, type: !64)
!1792 = !DILocation(line: 411, column: 46, scope: !1790)
!1793 = !DILocalVariable(name: "item", arg: 2, scope: !1790, file: !55, line: 411, type: !44)
!1794 = !DILocation(line: 411, column: 60, scope: !1790)
!1795 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1790, file: !55, line: 411, type: !482)
!1796 = !DILocation(line: 411, column: 71, scope: !1790)
!1797 = !DILocation(line: 413, column: 10, scope: !1790)
!1798 = !DILocation(line: 413, column: 19, scope: !1790)
!1799 = !DILocation(line: 414, column: 9, scope: !1790)
!1800 = !DILocation(line: 414, column: 2, scope: !1790)
!1801 = distinct !DISubprogram(name: "expando_abiversion", scope: !55, file: !55, line: 418, type: !61, isLocal: true, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1802 = !DILocalVariable(name: "server", arg: 1, scope: !1801, file: !55, line: 418, type: !64)
!1803 = !DILocation(line: 418, column: 45, scope: !1801)
!1804 = !DILocalVariable(name: "item", arg: 2, scope: !1801, file: !55, line: 418, type: !44)
!1805 = !DILocation(line: 418, column: 59, scope: !1801)
!1806 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1801, file: !55, line: 418, type: !482)
!1807 = !DILocation(line: 418, column: 70, scope: !1801)
!1808 = !DILocation(line: 420, column: 10, scope: !1801)
!1809 = !DILocation(line: 420, column: 19, scope: !1801)
!1810 = !DILocation(line: 421, column: 9, scope: !1801)
!1811 = !DILocation(line: 421, column: 2, scope: !1801)
!1812 = distinct !DISubprogram(name: "expando_workdir", scope: !55, file: !55, line: 425, type: !61, isLocal: true, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1813 = !DILocalVariable(name: "server", arg: 1, scope: !1812, file: !55, line: 425, type: !64)
!1814 = !DILocation(line: 425, column: 42, scope: !1812)
!1815 = !DILocalVariable(name: "item", arg: 2, scope: !1812, file: !55, line: 425, type: !44)
!1816 = !DILocation(line: 425, column: 56, scope: !1812)
!1817 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1812, file: !55, line: 425, type: !482)
!1818 = !DILocation(line: 425, column: 67, scope: !1812)
!1819 = !DILocation(line: 427, column: 3, scope: !1812)
!1820 = !DILocation(line: 427, column: 12, scope: !1812)
!1821 = !DILocation(line: 428, column: 9, scope: !1812)
!1822 = !DILocation(line: 428, column: 2, scope: !1812)
!1823 = distinct !DISubprogram(name: "expando_realname", scope: !55, file: !55, line: 432, type: !61, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1824 = !DILocalVariable(name: "server", arg: 1, scope: !1823, file: !55, line: 432, type: !64)
!1825 = !DILocation(line: 432, column: 43, scope: !1823)
!1826 = !DILocalVariable(name: "item", arg: 2, scope: !1823, file: !55, line: 432, type: !44)
!1827 = !DILocation(line: 432, column: 57, scope: !1823)
!1828 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1823, file: !55, line: 432, type: !482)
!1829 = !DILocation(line: 432, column: 68, scope: !1823)
!1830 = !DILocation(line: 434, column: 9, scope: !1823)
!1831 = !DILocation(line: 434, column: 16, scope: !1823)
!1832 = !DILocation(line: 434, column: 9, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1823, file: !55, discriminator: 1)
!1834 = !DILocation(line: 434, column: 30, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1823, file: !55, discriminator: 2)
!1836 = !DILocation(line: 434, column: 38, scope: !1835)
!1837 = !DILocation(line: 434, column: 47, scope: !1835)
!1838 = !DILocation(line: 434, column: 9, scope: !1835)
!1839 = !DILocation(line: 434, column: 9, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1823, file: !55, discriminator: 3)
!1841 = !DILocation(line: 434, column: 2, scope: !1840)
!1842 = distinct !DISubprogram(name: "expando_time", scope: !55, file: !55, line: 438, type: !61, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1843 = !DILocalVariable(name: "server", arg: 1, scope: !1842, file: !55, line: 438, type: !64)
!1844 = !DILocation(line: 438, column: 39, scope: !1842)
!1845 = !DILocalVariable(name: "item", arg: 2, scope: !1842, file: !55, line: 438, type: !44)
!1846 = !DILocation(line: 438, column: 53, scope: !1842)
!1847 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1842, file: !55, line: 438, type: !482)
!1848 = !DILocation(line: 438, column: 64, scope: !1842)
!1849 = !DILocalVariable(name: "now", scope: !1842, file: !55, line: 440, type: !304)
!1850 = !DILocation(line: 440, column: 9, scope: !1842)
!1851 = !DILocalVariable(name: "tm", scope: !1842, file: !55, line: 441, type: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64, align: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !305, line: 133, size: 448, align: 64, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1853, file: !305, line: 135, baseType: !51, size: 32, align: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1853, file: !305, line: 136, baseType: !51, size: 32, align: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1853, file: !305, line: 137, baseType: !51, size: 32, align: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1853, file: !305, line: 138, baseType: !51, size: 32, align: 32, offset: 96)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1853, file: !305, line: 139, baseType: !51, size: 32, align: 32, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1853, file: !305, line: 140, baseType: !51, size: 32, align: 32, offset: 160)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1853, file: !305, line: 141, baseType: !51, size: 32, align: 32, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1853, file: !305, line: 142, baseType: !51, size: 32, align: 32, offset: 224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1853, file: !305, line: 143, baseType: !51, size: 32, align: 32, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1853, file: !305, line: 146, baseType: !156, size: 64, align: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1853, file: !305, line: 147, baseType: !49, size: 64, align: 64, offset: 384)
!1866 = !DILocation(line: 441, column: 13, scope: !1842)
!1867 = !DILocalVariable(name: "str", scope: !1842, file: !55, line: 442, type: !1868)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, align: 8, elements: !510)
!1869 = !DILocation(line: 442, column: 14, scope: !1842)
!1870 = !DILocation(line: 444, column: 15, scope: !1842)
!1871 = !DILocation(line: 444, column: 13, scope: !1842)
!1872 = !DILocation(line: 445, column: 7, scope: !1842)
!1873 = !DILocation(line: 445, column: 5, scope: !1842)
!1874 = !DILocation(line: 447, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1842, file: !55, line: 447, column: 6)
!1876 = !DILocation(line: 447, column: 33, scope: !1875)
!1877 = !DILocation(line: 447, column: 51, scope: !1875)
!1878 = !DILocation(line: 447, column: 6, scope: !1875)
!1879 = !DILocation(line: 447, column: 55, scope: !1875)
!1880 = !DILocation(line: 447, column: 6, scope: !1842)
!1881 = !DILocation(line: 448, column: 17, scope: !1875)
!1882 = !DILocation(line: 450, column: 3, scope: !1842)
!1883 = !DILocation(line: 450, column: 12, scope: !1842)
!1884 = !DILocation(line: 451, column: 25, scope: !1842)
!1885 = !DILocation(line: 451, column: 16, scope: !1842)
!1886 = !DILocation(line: 451, column: 9, scope: !1842)
!1887 = !DILocation(line: 452, column: 1, scope: !1842)
!1888 = distinct !DISubprogram(name: "expando_dollar", scope: !55, file: !55, line: 455, type: !61, isLocal: true, isDefinition: true, scopeLine: 456, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1889 = !DILocalVariable(name: "server", arg: 1, scope: !1888, file: !55, line: 455, type: !64)
!1890 = !DILocation(line: 455, column: 41, scope: !1888)
!1891 = !DILocalVariable(name: "item", arg: 2, scope: !1888, file: !55, line: 455, type: !44)
!1892 = !DILocation(line: 455, column: 55, scope: !1888)
!1893 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1888, file: !55, line: 455, type: !482)
!1894 = !DILocation(line: 455, column: 66, scope: !1888)
!1895 = !DILocation(line: 457, column: 2, scope: !1888)
!1896 = distinct !DISubprogram(name: "expando_sysname", scope: !55, file: !55, line: 461, type: !61, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1897 = !DILocalVariable(name: "server", arg: 1, scope: !1896, file: !55, line: 461, type: !64)
!1898 = !DILocation(line: 461, column: 42, scope: !1896)
!1899 = !DILocalVariable(name: "item", arg: 2, scope: !1896, file: !55, line: 461, type: !44)
!1900 = !DILocation(line: 461, column: 56, scope: !1896)
!1901 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1896, file: !55, line: 461, type: !482)
!1902 = !DILocation(line: 461, column: 67, scope: !1896)
!1903 = !DILocation(line: 463, column: 9, scope: !1896)
!1904 = !DILocation(line: 463, column: 2, scope: !1896)
!1905 = distinct !DISubprogram(name: "expando_sysrelease", scope: !55, file: !55, line: 467, type: !61, isLocal: true, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1906 = !DILocalVariable(name: "server", arg: 1, scope: !1905, file: !55, line: 467, type: !64)
!1907 = !DILocation(line: 467, column: 45, scope: !1905)
!1908 = !DILocalVariable(name: "item", arg: 2, scope: !1905, file: !55, line: 467, type: !44)
!1909 = !DILocation(line: 467, column: 59, scope: !1905)
!1910 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1905, file: !55, line: 467, type: !482)
!1911 = !DILocation(line: 467, column: 70, scope: !1905)
!1912 = !DILocation(line: 469, column: 16, scope: !1905)
!1913 = !DILocation(line: 469, column: 9, scope: !1905)
!1914 = distinct !DISubprogram(name: "expando_sysarch", scope: !55, file: !55, line: 473, type: !61, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1915 = !DILocalVariable(name: "server", arg: 1, scope: !1914, file: !55, line: 473, type: !64)
!1916 = !DILocation(line: 473, column: 42, scope: !1914)
!1917 = !DILocalVariable(name: "item", arg: 2, scope: !1914, file: !55, line: 473, type: !44)
!1918 = !DILocation(line: 473, column: 56, scope: !1914)
!1919 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1914, file: !55, line: 473, type: !482)
!1920 = !DILocation(line: 473, column: 67, scope: !1914)
!1921 = !DILocation(line: 475, column: 16, scope: !1914)
!1922 = !DILocation(line: 475, column: 9, scope: !1914)
!1923 = distinct !DISubprogram(name: "expando_topic", scope: !55, file: !55, line: 479, type: !61, isLocal: true, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1924 = !DILocalVariable(name: "server", arg: 1, scope: !1923, file: !55, line: 479, type: !64)
!1925 = !DILocation(line: 479, column: 40, scope: !1923)
!1926 = !DILocalVariable(name: "item", arg: 2, scope: !1923, file: !55, line: 479, type: !44)
!1927 = !DILocation(line: 479, column: 54, scope: !1923)
!1928 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1923, file: !55, line: 479, type: !482)
!1929 = !DILocation(line: 479, column: 65, scope: !1923)
!1930 = !DILocation(line: 481, column: 49, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1923, file: !55, line: 481, column: 6)
!1932 = !DILocation(line: 481, column: 24, scope: !1931)
!1933 = !DILocation(line: 481, column: 8, scope: !1931)
!1934 = !DILocation(line: 481, column: 6, scope: !1923)
!1935 = !DILocation(line: 481, column: 7, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1931, file: !55, discriminator: 1)
!1937 = !DILocation(line: 481, column: 6, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1923, file: !55, discriminator: 2)
!1939 = !DILocation(line: 482, column: 52, scope: !1931)
!1940 = !DILocation(line: 482, column: 27, scope: !1931)
!1941 = !DILocation(line: 482, column: 11, scope: !1931)
!1942 = !DILocation(line: 482, column: 44, scope: !1931)
!1943 = !DILocation(line: 482, column: 3, scope: !1931)
!1944 = !DILocation(line: 483, column: 47, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1923, file: !55, line: 483, column: 6)
!1946 = !DILocation(line: 483, column: 22, scope: !1945)
!1947 = !DILocation(line: 483, column: 8, scope: !1945)
!1948 = !DILocation(line: 483, column: 6, scope: !1923)
!1949 = !DILocation(line: 483, column: 7, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1945, file: !55, discriminator: 1)
!1951 = !DILocation(line: 483, column: 6, scope: !1938)
!1952 = !DILocalVariable(name: "query", scope: !1953, file: !55, line: 484, type: !454)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !55, line: 483, column: 54)
!1954 = !DILocation(line: 484, column: 14, scope: !1953)
!1955 = !DILocation(line: 484, column: 62, scope: !1953)
!1956 = !DILocation(line: 484, column: 37, scope: !1953)
!1957 = !DILocation(line: 484, column: 23, scope: !1953)
!1958 = !DILocation(line: 486, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !55, line: 486, column: 7)
!1960 = !DILocation(line: 486, column: 14, scope: !1959)
!1961 = !DILocation(line: 486, column: 25, scope: !1959)
!1962 = !DILocation(line: 486, column: 7, scope: !1953)
!1963 = !DILocation(line: 487, column: 4, scope: !1959)
!1964 = !DILocation(line: 489, column: 18, scope: !1953)
!1965 = !DILocation(line: 489, column: 27, scope: !1953)
!1966 = !DILocation(line: 490, column: 10, scope: !1953)
!1967 = !DILocation(line: 490, column: 17, scope: !1953)
!1968 = !DILocation(line: 490, column: 25, scope: !1953)
!1969 = !DILocation(line: 491, column: 28, scope: !1953)
!1970 = !DILocation(line: 491, column: 35, scope: !1953)
!1971 = !DILocation(line: 491, column: 4, scope: !1953)
!1972 = !DILocation(line: 490, column: 10, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1953, file: !55, discriminator: 1)
!1974 = !DILocation(line: 492, column: 31, scope: !1953)
!1975 = !DILocation(line: 492, column: 38, scope: !1953)
!1976 = !DILocation(line: 493, column: 6, scope: !1953)
!1977 = !DILocation(line: 493, column: 13, scope: !1953)
!1978 = !DILocation(line: 492, column: 4, scope: !1953)
!1979 = !DILocation(line: 490, column: 10, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1953, file: !55, discriminator: 2)
!1981 = !DILocation(line: 490, column: 10, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1953, file: !55, discriminator: 3)
!1983 = !DILocation(line: 490, column: 3, scope: !1982)
!1984 = !DILocation(line: 495, column: 9, scope: !1923)
!1985 = !DILocation(line: 496, column: 1, scope: !1923)
!1986 = distinct !DISubprogram(name: "expando_servertag", scope: !55, file: !55, line: 499, type: !61, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1987 = !DILocalVariable(name: "server", arg: 1, scope: !1986, file: !55, line: 499, type: !64)
!1988 = !DILocation(line: 499, column: 44, scope: !1986)
!1989 = !DILocalVariable(name: "item", arg: 2, scope: !1986, file: !55, line: 499, type: !44)
!1990 = !DILocation(line: 499, column: 58, scope: !1986)
!1991 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1986, file: !55, line: 499, type: !482)
!1992 = !DILocation(line: 499, column: 69, scope: !1986)
!1993 = !DILocation(line: 501, column: 9, scope: !1986)
!1994 = !DILocation(line: 501, column: 16, scope: !1986)
!1995 = !DILocation(line: 501, column: 9, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1986, file: !55, discriminator: 1)
!1997 = !DILocation(line: 501, column: 30, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1986, file: !55, discriminator: 2)
!1999 = !DILocation(line: 501, column: 38, scope: !1998)
!2000 = !DILocation(line: 501, column: 9, scope: !1998)
!2001 = !DILocation(line: 501, column: 9, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1986, file: !55, discriminator: 3)
!2003 = !DILocation(line: 501, column: 2, scope: !2002)
!2004 = distinct !DISubprogram(name: "expando_chatnet", scope: !55, file: !55, line: 505, type: !61, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2005 = !DILocalVariable(name: "server", arg: 1, scope: !2004, file: !55, line: 505, type: !64)
!2006 = !DILocation(line: 505, column: 42, scope: !2004)
!2007 = !DILocalVariable(name: "item", arg: 2, scope: !2004, file: !55, line: 505, type: !44)
!2008 = !DILocation(line: 505, column: 56, scope: !2004)
!2009 = !DILocalVariable(name: "free_ret", arg: 3, scope: !2004, file: !55, line: 505, type: !482)
!2010 = !DILocation(line: 505, column: 67, scope: !2004)
!2011 = !DILocation(line: 507, column: 9, scope: !2004)
!2012 = !DILocation(line: 507, column: 16, scope: !2004)
!2013 = !DILocation(line: 507, column: 9, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2004, file: !55, discriminator: 1)
!2015 = !DILocation(line: 507, column: 30, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2004, file: !55, discriminator: 2)
!2017 = !DILocation(line: 507, column: 38, scope: !2016)
!2018 = !DILocation(line: 507, column: 47, scope: !2016)
!2019 = !DILocation(line: 507, column: 9, scope: !2016)
!2020 = !DILocation(line: 507, column: 9, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2004, file: !55, discriminator: 3)
!2022 = !DILocation(line: 507, column: 2, scope: !2021)
!2023 = distinct !DISubprogram(name: "expando_itemname", scope: !55, file: !55, line: 511, type: !61, isLocal: true, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2024 = !DILocalVariable(name: "server", arg: 1, scope: !2023, file: !55, line: 511, type: !64)
!2025 = !DILocation(line: 511, column: 43, scope: !2023)
!2026 = !DILocalVariable(name: "item", arg: 2, scope: !2023, file: !55, line: 511, type: !44)
!2027 = !DILocation(line: 511, column: 57, scope: !2023)
!2028 = !DILocalVariable(name: "free_ret", arg: 3, scope: !2023, file: !55, line: 511, type: !482)
!2029 = !DILocation(line: 511, column: 68, scope: !2023)
!2030 = !DILocation(line: 513, column: 9, scope: !2023)
!2031 = !DILocation(line: 513, column: 14, scope: !2023)
!2032 = !DILocation(line: 513, column: 9, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2023, file: !55, discriminator: 1)
!2034 = !DILocation(line: 513, column: 45, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2023, file: !55, discriminator: 2)
!2036 = !DILocation(line: 513, column: 29, scope: !2035)
!2037 = !DILocation(line: 513, column: 52, scope: !2035)
!2038 = !DILocation(line: 513, column: 9, scope: !2035)
!2039 = !DILocation(line: 513, column: 9, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2023, file: !55, discriminator: 3)
!2041 = !DILocation(line: 513, column: 2, scope: !2040)
!2042 = distinct !DISubprogram(name: "read_settings", scope: !55, file: !55, line: 575, type: !220, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2043 = !DILocation(line: 577, column: 9, scope: !2042)
!2044 = !DILocation(line: 577, column: 2, scope: !2042)
!2045 = !DILocation(line: 578, column: 30, scope: !2042)
!2046 = !DILocation(line: 578, column: 21, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2042, file: !55, discriminator: 1)
!2048 = !DILocation(line: 578, column: 19, scope: !2042)
!2049 = !DILocation(line: 581, column: 10, scope: !2042)
!2050 = !DILocation(line: 581, column: 3, scope: !2042)
!2051 = !DILocation(line: 581, column: 34, scope: !2042)
!2052 = !DILocation(line: 581, column: 41, scope: !2042)
!2053 = !DILocation(line: 582, column: 10, scope: !2042)
!2054 = !DILocation(line: 582, column: 3, scope: !2042)
!2055 = !DILocation(line: 582, column: 34, scope: !2042)
!2056 = !DILocation(line: 582, column: 41, scope: !2042)
!2057 = !DILocation(line: 583, column: 10, scope: !2042)
!2058 = !DILocation(line: 583, column: 3, scope: !2042)
!2059 = !DILocation(line: 583, column: 34, scope: !2042)
!2060 = !DILocation(line: 583, column: 41, scope: !2042)
!2061 = !DILocation(line: 584, column: 10, scope: !2042)
!2062 = !DILocation(line: 584, column: 3, scope: !2042)
!2063 = !DILocation(line: 584, column: 34, scope: !2042)
!2064 = !DILocation(line: 584, column: 41, scope: !2042)
!2065 = !DILocation(line: 585, column: 10, scope: !2042)
!2066 = !DILocation(line: 585, column: 3, scope: !2042)
!2067 = !DILocation(line: 585, column: 34, scope: !2042)
!2068 = !DILocation(line: 584, column: 41, scope: !2047)
!2069 = !DILocation(line: 584, column: 41, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2042, file: !55, discriminator: 2)
!2071 = !DILocation(line: 580, column: 20, scope: !2042)
!2072 = !DILocation(line: 587, column: 1, scope: !2042)
!2073 = distinct !DISubprogram(name: "sig_timer", scope: !55, file: !55, line: 547, type: !2074, isLocal: true, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!51}
!2076 = !DILocalVariable(name: "now", scope: !2073, file: !55, line: 549, type: !304)
!2077 = !DILocation(line: 549, column: 9, scope: !2073)
!2078 = !DILocalVariable(name: "tm", scope: !2073, file: !55, line: 550, type: !1852)
!2079 = !DILocation(line: 550, column: 13, scope: !2073)
!2080 = !DILocalVariable(name: "last_min", scope: !2073, file: !55, line: 551, type: !51)
!2081 = !DILocation(line: 551, column: 13, scope: !2073)
!2082 = !DILocation(line: 553, column: 9, scope: !2073)
!2083 = !DILocation(line: 556, column: 8, scope: !2073)
!2084 = !DILocation(line: 556, column: 6, scope: !2073)
!2085 = !DILocation(line: 557, column: 6, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2073, file: !55, line: 557, column: 6)
!2087 = !DILocation(line: 557, column: 24, scope: !2086)
!2088 = !DILocation(line: 557, column: 21, scope: !2086)
!2089 = !DILocation(line: 557, column: 6, scope: !2073)
!2090 = !DILocation(line: 558, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !55, line: 558, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !55, line: 557, column: 29)
!2093 = !DILocation(line: 558, column: 26, scope: !2091)
!2094 = !DILocation(line: 558, column: 29, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2091, file: !55, discriminator: 1)
!2096 = !DILocation(line: 558, column: 44, scope: !2095)
!2097 = !DILocation(line: 558, column: 7, scope: !2095)
!2098 = !DILocation(line: 560, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2091, file: !55, line: 558, column: 50)
!2100 = !DILocation(line: 560, column: 7, scope: !2099)
!2101 = !DILocation(line: 561, column: 15, scope: !2099)
!2102 = !DILocation(line: 561, column: 19, scope: !2099)
!2103 = !DILocation(line: 561, column: 13, scope: !2099)
!2104 = !DILocation(line: 563, column: 9, scope: !2099)
!2105 = !DILocation(line: 563, column: 7, scope: !2099)
!2106 = !DILocation(line: 564, column: 8, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !55, line: 564, column: 8)
!2108 = !DILocation(line: 564, column: 12, scope: !2107)
!2109 = !DILocation(line: 564, column: 22, scope: !2107)
!2110 = !DILocation(line: 564, column: 19, scope: !2107)
!2111 = !DILocation(line: 564, column: 8, scope: !2099)
!2112 = !DILocation(line: 565, column: 33, scope: !2107)
!2113 = !DILocation(line: 566, column: 3, scope: !2099)
!2114 = !DILocation(line: 568, column: 17, scope: !2092)
!2115 = !DILocation(line: 569, column: 20, scope: !2092)
!2116 = !DILocation(line: 569, column: 18, scope: !2092)
!2117 = !DILocation(line: 570, column: 2, scope: !2092)
!2118 = !DILocation(line: 572, column: 9, scope: !2073)
!2119 = !DILocation(line: 573, column: 1, scope: !2073)
!2120 = distinct !DISubprogram(name: "sig_message_public", scope: !55, file: !55, line: 516, type: !2121, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !64, !49, !49, !49, !49}
!2123 = !DILocalVariable(name: "server", arg: 1, scope: !2120, file: !55, line: 516, type: !64)
!2124 = !DILocation(line: 516, column: 44, scope: !2120)
!2125 = !DILocalVariable(name: "msg", arg: 2, scope: !2120, file: !55, line: 516, type: !49)
!2126 = !DILocation(line: 516, column: 64, scope: !2120)
!2127 = !DILocalVariable(name: "nick", arg: 3, scope: !2120, file: !55, line: 517, type: !49)
!2128 = !DILocation(line: 517, column: 23, scope: !2120)
!2129 = !DILocalVariable(name: "address", arg: 4, scope: !2120, file: !55, line: 517, type: !49)
!2130 = !DILocation(line: 517, column: 41, scope: !2120)
!2131 = !DILocalVariable(name: "target", arg: 5, scope: !2120, file: !55, line: 518, type: !49)
!2132 = !DILocation(line: 518, column: 23, scope: !2120)
!2133 = !DILocation(line: 520, column: 9, scope: !2120)
!2134 = !DILocation(line: 520, column: 2, scope: !2120)
!2135 = !DILocation(line: 521, column: 30, scope: !2120)
!2136 = !DILocation(line: 521, column: 21, scope: !2120)
!2137 = !DILocation(line: 521, column: 19, scope: !2120)
!2138 = !DILocation(line: 522, column: 1, scope: !2120)
!2139 = distinct !DISubprogram(name: "sig_message_private", scope: !55, file: !55, line: 524, type: !2140, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !64, !49, !49, !49}
!2142 = !DILocalVariable(name: "server", arg: 1, scope: !2139, file: !55, line: 524, type: !64)
!2143 = !DILocation(line: 524, column: 45, scope: !2139)
!2144 = !DILocalVariable(name: "msg", arg: 2, scope: !2139, file: !55, line: 524, type: !49)
!2145 = !DILocation(line: 524, column: 65, scope: !2139)
!2146 = !DILocalVariable(name: "nick", arg: 3, scope: !2139, file: !55, line: 525, type: !49)
!2147 = !DILocation(line: 525, column: 17, scope: !2139)
!2148 = !DILocalVariable(name: "address", arg: 4, scope: !2139, file: !55, line: 525, type: !49)
!2149 = !DILocation(line: 525, column: 35, scope: !2139)
!2150 = !DILocation(line: 527, column: 9, scope: !2139)
!2151 = !DILocation(line: 527, column: 2, scope: !2139)
!2152 = !DILocation(line: 528, column: 31, scope: !2139)
!2153 = !DILocation(line: 528, column: 22, scope: !2139)
!2154 = !DILocation(line: 528, column: 20, scope: !2139)
!2155 = !DILocation(line: 529, column: 1, scope: !2139)
!2156 = distinct !DISubprogram(name: "sig_message_own_private", scope: !55, file: !55, line: 531, type: !2140, isLocal: true, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2157 = !DILocalVariable(name: "server", arg: 1, scope: !2156, file: !55, line: 531, type: !64)
!2158 = !DILocation(line: 531, column: 49, scope: !2156)
!2159 = !DILocalVariable(name: "msg", arg: 2, scope: !2156, file: !55, line: 531, type: !49)
!2160 = !DILocation(line: 531, column: 69, scope: !2156)
!2161 = !DILocalVariable(name: "target", arg: 3, scope: !2156, file: !55, line: 532, type: !49)
!2162 = !DILocation(line: 532, column: 21, scope: !2156)
!2163 = !DILocalVariable(name: "origtarget", arg: 4, scope: !2156, file: !55, line: 532, type: !49)
!2164 = !DILocation(line: 532, column: 41, scope: !2156)
!2165 = !DILocation(line: 534, column: 2, scope: !2156)
!2166 = distinct !{!2166, !2165}
!2167 = !DILocation(line: 534, column: 10, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !55, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !55, line: 534, column: 10)
!2170 = distinct !DILexicalBlock(scope: !2156, file: !55, line: 534, column: 4)
!2171 = !DILocation(line: 534, column: 17, scope: !2168)
!2172 = !DILocation(line: 534, column: 5, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2174, file: !55, discriminator: 2)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !55, line: 534, column: 3)
!2175 = !DILocation(line: 534, column: 14, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2177, file: !55, discriminator: 3)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !55, line: 534, column: 12)
!2178 = !DILocation(line: 534, column: 101, scope: !2176)
!2179 = !DILocation(line: 534, column: 112, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2170, file: !55, discriminator: 4)
!2181 = !DILocation(line: 535, column: 2, scope: !2156)
!2182 = distinct !{!2182, !2181}
!2183 = !DILocation(line: 535, column: 10, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2185, file: !55, discriminator: 1)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !55, line: 535, column: 10)
!2186 = distinct !DILexicalBlock(scope: !2156, file: !55, line: 535, column: 4)
!2187 = !DILocation(line: 535, column: 14, scope: !2184)
!2188 = !DILocation(line: 535, column: 5, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2190, file: !55, discriminator: 2)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !55, line: 535, column: 3)
!2191 = !DILocation(line: 535, column: 14, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2193, file: !55, discriminator: 3)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !55, line: 535, column: 12)
!2194 = !DILocation(line: 535, column: 98, scope: !2192)
!2195 = !DILocation(line: 535, column: 109, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2186, file: !55, discriminator: 4)
!2197 = !DILocation(line: 537, column: 6, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2156, file: !55, line: 537, column: 6)
!2199 = !DILocation(line: 537, column: 13, scope: !2198)
!2200 = !DILocation(line: 537, column: 6, scope: !2156)
!2201 = !DILocation(line: 538, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !55, line: 538, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !55, line: 537, column: 21)
!2204 = !DILocation(line: 538, column: 17, scope: !2202)
!2205 = !DILocation(line: 538, column: 14, scope: !2202)
!2206 = !DILocation(line: 538, column: 7, scope: !2203)
!2207 = !DILocation(line: 539, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !55, line: 538, column: 32)
!2209 = !DILocation(line: 539, column: 4, scope: !2208)
!2210 = !DILocation(line: 540, column: 29, scope: !2208)
!2211 = !DILocation(line: 540, column: 20, scope: !2208)
!2212 = !DILocation(line: 540, column: 18, scope: !2208)
!2213 = !DILocation(line: 541, column: 3, scope: !2208)
!2214 = !DILocation(line: 542, column: 10, scope: !2203)
!2215 = !DILocation(line: 542, column: 3, scope: !2203)
!2216 = !DILocation(line: 543, column: 33, scope: !2203)
!2217 = !DILocation(line: 543, column: 24, scope: !2203)
!2218 = !DILocation(line: 543, column: 22, scope: !2203)
!2219 = !DILocation(line: 544, column: 2, scope: !2203)
!2220 = !DILocation(line: 545, column: 1, scope: !2156)
!2221 = distinct !DISubprogram(name: "expandos_deinit", scope: !55, file: !55, line: 714, type: !220, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2222 = !DILocalVariable(name: "n", scope: !2221, file: !55, line: 716, type: !51)
!2223 = !DILocation(line: 716, column: 6, scope: !2221)
!2224 = !DILocation(line: 718, column: 9, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !55, line: 718, column: 2)
!2226 = !DILocation(line: 718, column: 7, scope: !2225)
!2227 = !DILocation(line: 718, column: 14, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !55, discriminator: 1)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !55, line: 718, column: 2)
!2230 = !DILocation(line: 718, column: 16, scope: !2228)
!2231 = !DILocation(line: 718, column: 2, scope: !2228)
!2232 = !DILocation(line: 719, column: 24, scope: !2229)
!2233 = !DILocation(line: 719, column: 10, scope: !2229)
!2234 = !DILocation(line: 719, column: 3, scope: !2229)
!2235 = !DILocation(line: 718, column: 67, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2229, file: !55, discriminator: 2)
!2237 = !DILocation(line: 718, column: 2, scope: !2236)
!2238 = distinct !{!2238, !2239}
!2239 = !DILocation(line: 718, column: 2, scope: !2221)
!2240 = !DILocation(line: 721, column: 30, scope: !2221)
!2241 = !DILocation(line: 721, column: 2, scope: !2221)
!2242 = !DILocation(line: 722, column: 23, scope: !2221)
!2243 = !DILocation(line: 722, column: 2, scope: !2221)
!2244 = !DILocation(line: 724, column: 9, scope: !2221)
!2245 = !DILocation(line: 724, column: 2, scope: !2221)
!2246 = !DILocation(line: 725, column: 9, scope: !2221)
!2247 = !DILocation(line: 725, column: 2, scope: !2221)
!2248 = !DILocation(line: 726, column: 9, scope: !2221)
!2249 = !DILocation(line: 726, column: 2, scope: !2221)
!2250 = !DILocation(line: 727, column: 9, scope: !2221)
!2251 = !DILocation(line: 727, column: 2, scope: !2221)
!2252 = !DILocation(line: 728, column: 9, scope: !2221)
!2253 = !DILocation(line: 728, column: 2, scope: !2221)
!2254 = !DILocation(line: 729, column: 9, scope: !2221)
!2255 = !DILocation(line: 729, column: 2, scope: !2221)
!2256 = !DILocation(line: 730, column: 9, scope: !2221)
!2257 = !DILocation(line: 730, column: 2, scope: !2221)
!2258 = !DILocation(line: 731, column: 9, scope: !2221)
!2259 = !DILocation(line: 731, column: 2, scope: !2221)
!2260 = !DILocation(line: 733, column: 18, scope: !2221)
!2261 = !DILocation(line: 733, column: 2, scope: !2221)
!2262 = !DILocation(line: 734, column: 2, scope: !2221)
!2263 = !DILocation(line: 735, column: 2, scope: !2221)
!2264 = !DILocation(line: 736, column: 2, scope: !2221)
!2265 = !DILocation(line: 737, column: 2, scope: !2221)
!2266 = !DILocation(line: 738, column: 1, scope: !2221)
!2267 = distinct !DISubprogram(name: "free_expando", scope: !55, file: !55, line: 263, type: !2268, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!191, !171, !171, !171}
!2270 = !DILocalVariable(name: "key", arg: 1, scope: !2267, file: !55, line: 263, type: !171)
!2271 = !DILocation(line: 263, column: 39, scope: !2267)
!2272 = !DILocalVariable(name: "value", arg: 2, scope: !2267, file: !55, line: 263, type: !171)
!2273 = !DILocation(line: 263, column: 53, scope: !2267)
!2274 = !DILocalVariable(name: "user_data", arg: 3, scope: !2267, file: !55, line: 263, type: !171)
!2275 = !DILocation(line: 263, column: 69, scope: !2267)
!2276 = !DILocation(line: 265, column: 9, scope: !2267)
!2277 = !DILocation(line: 265, column: 2, scope: !2267)
!2278 = !DILocation(line: 266, column: 9, scope: !2267)
!2279 = !DILocation(line: 266, column: 2, scope: !2267)
!2280 = !DILocation(line: 267, column: 2, scope: !2267)
