; ModuleID = './line23-commands.o.i'
source_filename = "./line23-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.COMMAND_REC = type { %struct._GSList*, i8*, i8*, i8** }
%struct.COMMAND_MODULE_REC = type { i8*, i8*, i32, %struct._GSList* }
%struct.COMMAND_CALLBACK_REC = type { void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.CMD_TEMP_REC = type { i8*, %struct._GHashTable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__func__.command_find = private unnamed_addr constant [13 x i8] c"command_find\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"cmd != NULL\00", align 1
@commands = common global %struct._GSList* null, align 8
@__func__.command_have_sub = private unnamed_addr constant [17 x i8] c"command_have_sub\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"command != NULL\00", align 1
@__func__.command_bind_full = private unnamed_addr constant [18 x i8] c"command_bind_full\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"command \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"commandlist new\00", align 1
@__func__.command_unbind_full = private unnamed_addr constant [20 x i8] c"command_unbind_full\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"modrec != NULL\00", align 1
@__func__.command_runsub = private unnamed_addr constant [15 x i8] c"command_runsub\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"list subcommands\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"command %s %s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"default command %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.command_have_option = private unnamed_addr constant [20 x i8] c"command_have_option\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"option != NULL\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.command_set_options_module = private unnamed_addr constant [27 x i8] c"command_set_options_module\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"options != NULL\00", align 1
@__func__.cmd_get_param = private unnamed_addr constant [14 x i8] c"cmd_get_param\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"*data != NULL\00", align 1
@__func__.cmd_get_quoted_param = private unnamed_addr constant [21 x i8] c"cmd_get_quoted_param\00", align 1
@__func__.cmd_get_params = private unnamed_addr constant [15 x i8] c"cmd_get_params\00", align 1
@__func__.commands_remove_module = private unnamed_addr constant [23 x i8] c"commands_remove_module\00", align 1
@current_command = common global i8* null, align 8
@alias_runstack = internal global %struct._GSList* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"default command\00", align 1
@signal_default_command = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@__func__.command_module_get = private unnamed_addr constant [19 x i8] c"command_module_get\00", align 1
@__func__.command_module_find = private unnamed_addr constant [20 x i8] c"command_module_find\00", align 1
@__func__.command_module_find_and_remove = private unnamed_addr constant [31 x i8] c"command_module_find_and_remove\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"commandlist remove\00", align 1
@__func__.command_expand = private unnamed_addr constant [15 x i8] c"command_expand\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@__func__.option_find = private unnamed_addr constant [12 x i8] c"option_find\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"array != NULL\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@__func__.event_command = private unnamed_addr constant [14 x i8] c"event_command\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"send text\00", align 1
@__func__.parse_command = private unnamed_addr constant [14 x i8] c"parse_command\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@__func__.cmd_eval = private unnamed_addr constant [9 x i8] c"cmd_eval\00", align 1
@eval_recursion_depth = internal global i32 0, align 4
@__func__.cmd_cd = private unnamed_addr constant [7 x i8] c"cmd_cd\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Failed to chdir(): %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct.COMMAND_REC* @command_find(i8*) #0 !dbg !535 {
  %2 = alloca %struct.COMMAND_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !539, metadata !540), !dbg !541
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !542, metadata !540), !dbg !543
  br label %6, !dbg !544, !llvm.loop !545

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !546
  %8 = icmp ne i8* %7, null, !dbg !550
  br i1 %8, label %9, label %10, !dbg !546

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !551

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.command_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !554
  store %struct.COMMAND_REC* null, %struct.COMMAND_REC** %2, align 8, !dbg !557
  br label %36, !dbg !557

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !558

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !560
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !562
  br label %14, !dbg !563

; <label>:14:                                     ; preds = %31, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !564
  %16 = icmp ne %struct._GSList* %15, null, !dbg !567
  br i1 %16, label %17, label %35, !dbg !568

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %5, metadata !569, metadata !540), !dbg !571
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !572
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !573
  %20 = load i8*, i8** %19, align 8, !dbg !573
  %21 = bitcast i8* %20 to %struct.COMMAND_REC*, !dbg !572
  store %struct.COMMAND_REC* %21, %struct.COMMAND_REC** %5, align 8, !dbg !571
  %22 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !574
  %23 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %22, i32 0, i32 2, !dbg !576
  %24 = load i8*, i8** %23, align 8, !dbg !576
  %25 = load i8*, i8** %3, align 8, !dbg !577
  %26 = call i32 @g_ascii_strcasecmp(i8* %24, i8* %25), !dbg !578
  %27 = icmp eq i32 %26, 0, !dbg !579
  br i1 %27, label %28, label %30, !dbg !580

; <label>:28:                                     ; preds = %17
  %29 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !581
  store %struct.COMMAND_REC* %29, %struct.COMMAND_REC** %2, align 8, !dbg !582
  br label %36, !dbg !582

; <label>:30:                                     ; preds = %17
  br label %31, !dbg !583

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !584
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !586
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !586
  store %struct._GSList* %34, %struct._GSList** %4, align 8, !dbg !587
  br label %14, !dbg !588, !llvm.loop !589

; <label>:35:                                     ; preds = %14
  store %struct.COMMAND_REC* null, %struct.COMMAND_REC** %2, align 8, !dbg !591
  br label %36, !dbg !591

; <label>:36:                                     ; preds = %35, %28, %10
  %37 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !592
  ret %struct.COMMAND_REC* %37, !dbg !592
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @command_have_sub(i8*) #0 !dbg !593 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !596, metadata !540), !dbg !597
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !598, metadata !540), !dbg !599
  call void @llvm.dbg.declare(metadata i32* %5, metadata !600, metadata !540), !dbg !601
  br label %7, !dbg !602, !llvm.loop !603

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !604
  %9 = icmp ne i8* %8, null, !dbg !608
  br i1 %9, label %10, label %11, !dbg !604

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !609

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.command_have_sub, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !612
  store i32 0, i32* %2, align 4, !dbg !615
  br label %51, !dbg !615

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !616

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %3, align 8, !dbg !618
  %15 = call i64 @strlen(i8* %14) #8, !dbg !619
  %16 = trunc i64 %15 to i32, !dbg !619
  store i32 %16, i32* %5, align 4, !dbg !620
  %17 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !621
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !623
  br label %18, !dbg !624

; <label>:18:                                     ; preds = %46, %13
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !625
  %20 = icmp ne %struct._GSList* %19, null, !dbg !628
  br i1 %20, label %21, label %50, !dbg !629

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %6, metadata !630, metadata !540), !dbg !632
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !633
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !634
  %24 = load i8*, i8** %23, align 8, !dbg !634
  %25 = bitcast i8* %24 to %struct.COMMAND_REC*, !dbg !633
  store %struct.COMMAND_REC* %25, %struct.COMMAND_REC** %6, align 8, !dbg !632
  %26 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !635
  %27 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %26, i32 0, i32 2, !dbg !637
  %28 = load i8*, i8** %27, align 8, !dbg !637
  %29 = load i8*, i8** %3, align 8, !dbg !638
  %30 = load i32, i32* %5, align 4, !dbg !639
  %31 = sext i32 %30 to i64, !dbg !639
  %32 = call i32 @g_ascii_strncasecmp(i8* %28, i8* %29, i64 %31), !dbg !640
  %33 = icmp eq i32 %32, 0, !dbg !641
  br i1 %33, label %34, label %45, !dbg !642

; <label>:34:                                     ; preds = %21
  %35 = load i32, i32* %5, align 4, !dbg !643
  %36 = sext i32 %35 to i64, !dbg !644
  %37 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !644
  %38 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %37, i32 0, i32 2, !dbg !645
  %39 = load i8*, i8** %38, align 8, !dbg !645
  %40 = getelementptr inbounds i8, i8* %39, i64 %36, !dbg !644
  %41 = load i8, i8* %40, align 1, !dbg !644
  %42 = sext i8 %41 to i32, !dbg !644
  %43 = icmp eq i32 %42, 32, !dbg !646
  br i1 %43, label %44, label %45, !dbg !647

; <label>:44:                                     ; preds = %34
  store i32 1, i32* %2, align 4, !dbg !649
  br label %51, !dbg !649

; <label>:45:                                     ; preds = %34, %21
  br label %46, !dbg !650

; <label>:46:                                     ; preds = %45
  %47 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !651
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 1, !dbg !653
  %49 = load %struct._GSList*, %struct._GSList** %48, align 8, !dbg !653
  store %struct._GSList* %49, %struct._GSList** %4, align 8, !dbg !654
  br label %18, !dbg !655, !llvm.loop !656

; <label>:50:                                     ; preds = %18
  store i32 0, i32* %2, align 4, !dbg !658
  br label %51, !dbg !658

; <label>:51:                                     ; preds = %50, %44, %11
  %52 = load i32, i32* %2, align 4, !dbg !659
  ret i32 %52, !dbg !659
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !660 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.COMMAND_REC*, align 8
  %16 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %17 = alloca %struct.COMMAND_CALLBACK_REC*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !663, metadata !540), !dbg !664
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !665, metadata !540), !dbg !666
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !667, metadata !540), !dbg !668
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !669, metadata !540), !dbg !670
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !671, metadata !540), !dbg !672
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %5, void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, metadata !673, metadata !540), !dbg !674
  store i8* %6, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !675, metadata !540), !dbg !676
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %15, metadata !677, metadata !540), !dbg !678
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %16, metadata !679, metadata !540), !dbg !680
  call void @llvm.dbg.declare(metadata %struct.COMMAND_CALLBACK_REC** %17, metadata !681, metadata !540), !dbg !682
  call void @llvm.dbg.declare(metadata i8** %18, metadata !683, metadata !540), !dbg !684
  br label %19, !dbg !685, !llvm.loop !686

; <label>:19:                                     ; preds = %7
  %20 = load i8*, i8** %8, align 8, !dbg !687
  %21 = icmp ne i8* %20, null, !dbg !691
  br i1 %21, label %22, label %23, !dbg !687

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !692

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.command_bind_full, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !695
  br label %93, !dbg !698

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !699

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !701, !llvm.loop !702

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %10, align 8, !dbg !703
  %28 = icmp ne i8* %27, null, !dbg !707
  br i1 %28, label %29, label %30, !dbg !703

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !708

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.command_bind_full, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !711
  br label %93, !dbg !714

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !715

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %10, align 8, !dbg !717
  %34 = call %struct.COMMAND_REC* @command_find(i8* %33), !dbg !718
  store %struct.COMMAND_REC* %34, %struct.COMMAND_REC** %15, align 8, !dbg !719
  %35 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !720
  %36 = icmp eq %struct.COMMAND_REC* %35, null, !dbg !722
  br i1 %36, label %37, label %58, !dbg !723

; <label>:37:                                     ; preds = %32
  %38 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !724
  %39 = bitcast i8* %38 to %struct.COMMAND_REC*, !dbg !726
  store %struct.COMMAND_REC* %39, %struct.COMMAND_REC** %15, align 8, !dbg !727
  %40 = load i8*, i8** %10, align 8, !dbg !728
  %41 = call noalias i8* @g_strdup(i8* %40), !dbg !729
  %42 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !730
  %43 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %42, i32 0, i32 2, !dbg !731
  store i8* %41, i8** %43, align 8, !dbg !732
  %44 = load i8*, i8** %12, align 8, !dbg !733
  %45 = icmp eq i8* %44, null, !dbg !734
  br i1 %45, label %46, label %47, !dbg !733

; <label>:46:                                     ; preds = %37
  br label %50, !dbg !735

; <label>:47:                                     ; preds = %37
  %48 = load i8*, i8** %12, align 8, !dbg !737
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !739
  br label %50, !dbg !740

; <label>:50:                                     ; preds = %47, %46
  %51 = phi i8* [ null, %46 ], [ %49, %47 ], !dbg !741
  %52 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !743
  %53 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %52, i32 0, i32 1, !dbg !744
  store i8* %51, i8** %53, align 8, !dbg !745
  %54 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !746
  %55 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !747
  %56 = bitcast %struct.COMMAND_REC* %55 to i8*, !dbg !747
  %57 = call %struct._GSList* @g_slist_append(%struct._GSList* %54, i8* %56), !dbg !748
  store %struct._GSList* %57, %struct._GSList** @commands, align 8, !dbg !749
  br label %58, !dbg !750

; <label>:58:                                     ; preds = %50, %32
  %59 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !751
  %60 = load i8*, i8** %8, align 8, !dbg !752
  %61 = load i32, i32* %11, align 4, !dbg !753
  %62 = call %struct.COMMAND_MODULE_REC* @command_module_get(%struct.COMMAND_REC* %59, i8* %60, i32 %61), !dbg !754
  store %struct.COMMAND_MODULE_REC* %62, %struct.COMMAND_MODULE_REC** %16, align 8, !dbg !755
  %63 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !756
  %64 = bitcast i8* %63 to %struct.COMMAND_CALLBACK_REC*, !dbg !757
  store %struct.COMMAND_CALLBACK_REC* %64, %struct.COMMAND_CALLBACK_REC** %17, align 8, !dbg !758
  %65 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !759
  %66 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %17, align 8, !dbg !760
  %67 = getelementptr inbounds %struct.COMMAND_CALLBACK_REC, %struct.COMMAND_CALLBACK_REC* %66, i32 0, i32 0, !dbg !761
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %65, void (i8*, i8*, i8*, i8*, i8*, i8*)** %67, align 8, !dbg !762
  %68 = load i8*, i8** %14, align 8, !dbg !763
  %69 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %17, align 8, !dbg !764
  %70 = getelementptr inbounds %struct.COMMAND_CALLBACK_REC, %struct.COMMAND_CALLBACK_REC* %69, i32 0, i32 1, !dbg !765
  store i8* %68, i8** %70, align 8, !dbg !766
  %71 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %16, align 8, !dbg !767
  %72 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %71, i32 0, i32 3, !dbg !768
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !768
  %74 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %17, align 8, !dbg !769
  %75 = bitcast %struct.COMMAND_CALLBACK_REC* %74 to i8*, !dbg !769
  %76 = call %struct._GSList* @g_slist_append(%struct._GSList* %73, i8* %75), !dbg !770
  %77 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %16, align 8, !dbg !771
  %78 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %77, i32 0, i32 3, !dbg !772
  store %struct._GSList* %76, %struct._GSList** %78, align 8, !dbg !773
  %79 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !774
  %80 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %79, null, !dbg !776
  br i1 %80, label %81, label %90, !dbg !777

; <label>:81:                                     ; preds = %58
  %82 = load i8*, i8** %10, align 8, !dbg !778
  %83 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %82, i8* null), !dbg !780
  store i8* %83, i8** %18, align 8, !dbg !781
  %84 = load i8*, i8** %8, align 8, !dbg !782
  %85 = load i32, i32* %9, align 4, !dbg !783
  %86 = load i8*, i8** %18, align 8, !dbg !784
  %87 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %13, align 8, !dbg !785
  %88 = load i8*, i8** %14, align 8, !dbg !786
  call void @signal_add_full(i8* %84, i32 %85, i8* %86, void (i8*, i8*, i8*, i8*, i8*, i8*)* %87, i8* %88), !dbg !787
  %89 = load i8*, i8** %18, align 8, !dbg !788
  call void @g_free(i8* %89), !dbg !789
  br label %90, !dbg !790

; <label>:90:                                     ; preds = %81, %58
  %91 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %15, align 8, !dbg !791
  %92 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.COMMAND_REC* %91), !dbg !792
  br label %93, !dbg !793

; <label>:93:                                     ; preds = %90, %30, %23
  ret void, !dbg !794
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.COMMAND_MODULE_REC* @command_module_get(%struct.COMMAND_REC*, i8*, i32) #0 !dbg !796 {
  %4 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %5 = alloca %struct.COMMAND_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.COMMAND_MODULE_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %5, metadata !799, metadata !540), !dbg !800
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !801, metadata !540), !dbg !802
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !803, metadata !540), !dbg !804
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %8, metadata !805, metadata !540), !dbg !806
  br label %9, !dbg !807, !llvm.loop !808

; <label>:9:                                      ; preds = %3
  %10 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !809
  %11 = icmp ne %struct.COMMAND_REC* %10, null, !dbg !813
  br i1 %11, label %12, label %13, !dbg !809

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !814

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.command_module_get, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)), !dbg !817
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !820
  br label %47, !dbg !820

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !821

; <label>:15:                                     ; preds = %14
  %16 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !823
  %17 = load i8*, i8** %6, align 8, !dbg !824
  %18 = call %struct.COMMAND_MODULE_REC* @command_module_find(%struct.COMMAND_REC* %16, i8* %17), !dbg !825
  store %struct.COMMAND_MODULE_REC* %18, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !826
  %19 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !827
  %20 = icmp eq %struct.COMMAND_MODULE_REC* %19, null, !dbg !829
  br i1 %20, label %21, label %38, !dbg !830

; <label>:21:                                     ; preds = %15
  %22 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !831
  %23 = bitcast i8* %22 to %struct.COMMAND_MODULE_REC*, !dbg !833
  store %struct.COMMAND_MODULE_REC* %23, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !834
  %24 = load i8*, i8** %6, align 8, !dbg !835
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !836
  %26 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !837
  %27 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %26, i32 0, i32 0, !dbg !838
  store i8* %25, i8** %27, align 8, !dbg !839
  %28 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !840
  %29 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %28, i32 0, i32 2, !dbg !841
  store i32 -1, i32* %29, align 8, !dbg !842
  %30 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !843
  %31 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %30, i32 0, i32 0, !dbg !844
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !844
  %33 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !845
  %34 = bitcast %struct.COMMAND_MODULE_REC* %33 to i8*, !dbg !845
  %35 = call %struct._GSList* @g_slist_append(%struct._GSList* %32, i8* %34), !dbg !846
  %36 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %5, align 8, !dbg !847
  %37 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %36, i32 0, i32 0, !dbg !848
  store %struct._GSList* %35, %struct._GSList** %37, align 8, !dbg !849
  br label %38, !dbg !850

; <label>:38:                                     ; preds = %21, %15
  %39 = load i32, i32* %7, align 4, !dbg !851
  %40 = icmp ne i32 %39, -1, !dbg !853
  br i1 %40, label %41, label %45, !dbg !854

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %7, align 4, !dbg !855
  %43 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !856
  %44 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %43, i32 0, i32 2, !dbg !857
  store i32 %42, i32* %44, align 8, !dbg !858
  br label %45, !dbg !856

; <label>:45:                                     ; preds = %41, %38
  %46 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !859
  store %struct.COMMAND_MODULE_REC* %46, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !860
  br label %47, !dbg !860

; <label>:47:                                     ; preds = %45, %13
  %48 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !861
  ret %struct.COMMAND_MODULE_REC* %48, !dbg !861
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #0 !dbg !862 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.COMMAND_REC*, align 8
  %8 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !865, metadata !540), !dbg !866
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !867, metadata !540), !dbg !868
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !869, metadata !540), !dbg !870
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %7, metadata !871, metadata !540), !dbg !872
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %8, metadata !873, metadata !540), !dbg !874
  call void @llvm.dbg.declare(metadata i8** %9, metadata !875, metadata !540), !dbg !876
  br label %10, !dbg !877, !llvm.loop !878

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !879
  %12 = icmp ne i8* %11, null, !dbg !883
  br i1 %12, label %13, label %14, !dbg !879

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !884

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_unbind_full, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !887
  br label %54, !dbg !890

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !891

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !893, !llvm.loop !894

; <label>:17:                                     ; preds = %16
  %18 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !895
  %19 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %18, null, !dbg !899
  br i1 %19, label %20, label %21, !dbg !895

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !900

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_unbind_full, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !903
  br label %54, !dbg !906

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !907

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %4, align 8, !dbg !909
  %25 = call %struct.COMMAND_REC* @command_find(i8* %24), !dbg !910
  store %struct.COMMAND_REC* %25, %struct.COMMAND_REC** %7, align 8, !dbg !911
  %26 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !912
  %27 = icmp ne %struct.COMMAND_REC* %26, null, !dbg !914
  br i1 %27, label %28, label %47, !dbg !915

; <label>:28:                                     ; preds = %23
  %29 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !916
  %30 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !918
  %31 = call %struct.COMMAND_MODULE_REC* @command_module_find_and_remove(%struct.COMMAND_REC* %29, void (i8*, i8*, i8*, i8*, i8*, i8*)* %30), !dbg !919
  store %struct.COMMAND_MODULE_REC* %31, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !920
  br label %32, !dbg !921, !llvm.loop !922

; <label>:32:                                     ; preds = %28
  %33 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !923
  %34 = icmp ne %struct.COMMAND_MODULE_REC* %33, null, !dbg !927
  br i1 %34, label %35, label %36, !dbg !923

; <label>:35:                                     ; preds = %32
  br label %37, !dbg !928

; <label>:36:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_unbind_full, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)), !dbg !931
  br label %54, !dbg !934

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !935

; <label>:38:                                     ; preds = %37
  %39 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !937
  %40 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %39, i32 0, i32 3, !dbg !939
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !939
  %42 = icmp eq %struct._GSList* %41, null, !dbg !940
  br i1 %42, label %43, label %46, !dbg !941

; <label>:43:                                     ; preds = %38
  %44 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !942
  %45 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !943
  call void @command_module_destroy(%struct.COMMAND_REC* %44, %struct.COMMAND_MODULE_REC* %45), !dbg !944
  br label %46, !dbg !944

; <label>:46:                                     ; preds = %43, %38
  br label %47, !dbg !945

; <label>:47:                                     ; preds = %46, %23
  %48 = load i8*, i8** %4, align 8, !dbg !946
  %49 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %48, i8* null), !dbg !947
  store i8* %49, i8** %9, align 8, !dbg !948
  %50 = load i8*, i8** %9, align 8, !dbg !949
  %51 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !950
  %52 = load i8*, i8** %6, align 8, !dbg !951
  call void @signal_remove_full(i8* %50, void (i8*, i8*, i8*, i8*, i8*, i8*)* %51, i8* %52), !dbg !952
  %53 = load i8*, i8** %9, align 8, !dbg !953
  call void @g_free(i8* %53), !dbg !954
  br label %54, !dbg !955

; <label>:54:                                     ; preds = %47, %36, %21, %14
  ret void, !dbg !956
}

; Function Attrs: nounwind uwtable
define internal %struct.COMMAND_MODULE_REC* @command_module_find_and_remove(%struct.COMMAND_REC*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #0 !dbg !958 {
  %3 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %4 = alloca %struct.COMMAND_REC*, align 8
  %5 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %9 = alloca %struct.COMMAND_CALLBACK_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !961, metadata !540), !dbg !962
  store void (i8*, i8*, i8*, i8*, i8*, i8*)* %1, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, metadata !963, metadata !540), !dbg !964
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !965, metadata !540), !dbg !966
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !967, metadata !540), !dbg !968
  br label %10, !dbg !969, !llvm.loop !970

; <label>:10:                                     ; preds = %2
  %11 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !971
  %12 = icmp ne %struct.COMMAND_REC* %11, null, !dbg !975
  br i1 %12, label %13, label %14, !dbg !971

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !976

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.command_module_find_and_remove, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)), !dbg !979
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !982
  br label %74, !dbg !982

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !983

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !985, !llvm.loop !986

; <label>:17:                                     ; preds = %16
  %18 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !987
  %19 = icmp ne void (i8*, i8*, i8*, i8*, i8*, i8*)* %18, null, !dbg !991
  br i1 %19, label %20, label %21, !dbg !987

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !992

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.command_module_find_and_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !995
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !998
  br label %74, !dbg !998

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !999

; <label>:23:                                     ; preds = %22
  %24 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !1001
  %25 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %24, i32 0, i32 0, !dbg !1003
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1003
  store %struct._GSList* %26, %struct._GSList** %6, align 8, !dbg !1004
  br label %27, !dbg !1005

; <label>:27:                                     ; preds = %69, %23
  %28 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1006
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1009
  br i1 %29, label %30, label %73, !dbg !1010

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %8, metadata !1011, metadata !540), !dbg !1013
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1014
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1015
  %33 = load i8*, i8** %32, align 8, !dbg !1015
  %34 = bitcast i8* %33 to %struct.COMMAND_MODULE_REC*, !dbg !1014
  store %struct.COMMAND_MODULE_REC* %34, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1013
  %35 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1016
  %36 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %35, i32 0, i32 3, !dbg !1018
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1018
  store %struct._GSList* %37, %struct._GSList** %7, align 8, !dbg !1019
  br label %38, !dbg !1020

; <label>:38:                                     ; preds = %64, %30
  %39 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1021
  %40 = icmp ne %struct._GSList* %39, null, !dbg !1024
  br i1 %40, label %41, label %68, !dbg !1025

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct.COMMAND_CALLBACK_REC** %9, metadata !1026, metadata !540), !dbg !1028
  %42 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1029
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !1030
  %44 = load i8*, i8** %43, align 8, !dbg !1030
  %45 = bitcast i8* %44 to %struct.COMMAND_CALLBACK_REC*, !dbg !1029
  store %struct.COMMAND_CALLBACK_REC* %45, %struct.COMMAND_CALLBACK_REC** %9, align 8, !dbg !1028
  %46 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %9, align 8, !dbg !1031
  %47 = getelementptr inbounds %struct.COMMAND_CALLBACK_REC, %struct.COMMAND_CALLBACK_REC* %46, i32 0, i32 0, !dbg !1033
  %48 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %47, align 8, !dbg !1033
  %49 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %5, align 8, !dbg !1034
  %50 = icmp eq void (i8*, i8*, i8*, i8*, i8*, i8*)* %48, %49, !dbg !1035
  br i1 %50, label %51, label %63, !dbg !1036

; <label>:51:                                     ; preds = %41
  %52 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1037
  %53 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %52, i32 0, i32 3, !dbg !1039
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1039
  %55 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %9, align 8, !dbg !1040
  %56 = bitcast %struct.COMMAND_CALLBACK_REC* %55 to i8*, !dbg !1040
  %57 = call %struct._GSList* @g_slist_remove(%struct._GSList* %54, i8* %56), !dbg !1041
  %58 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1042
  %59 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %58, i32 0, i32 3, !dbg !1043
  store %struct._GSList* %57, %struct._GSList** %59, align 8, !dbg !1044
  %60 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %9, align 8, !dbg !1045
  %61 = bitcast %struct.COMMAND_CALLBACK_REC* %60 to i8*, !dbg !1045
  call void @g_free(i8* %61), !dbg !1046
  %62 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1047
  store %struct.COMMAND_MODULE_REC* %62, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !1048
  br label %74, !dbg !1048

; <label>:63:                                     ; preds = %41
  br label %64, !dbg !1049

; <label>:64:                                     ; preds = %63
  %65 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1050
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 1, !dbg !1052
  %67 = load %struct._GSList*, %struct._GSList** %66, align 8, !dbg !1052
  store %struct._GSList* %67, %struct._GSList** %7, align 8, !dbg !1053
  br label %38, !dbg !1054, !llvm.loop !1055

; <label>:68:                                     ; preds = %38
  br label %69, !dbg !1057

; <label>:69:                                     ; preds = %68
  %70 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1058
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1, !dbg !1060
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !1060
  store %struct._GSList* %72, %struct._GSList** %6, align 8, !dbg !1061
  br label %27, !dbg !1062, !llvm.loop !1063

; <label>:73:                                     ; preds = %27
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !1065
  br label %74, !dbg !1065

; <label>:74:                                     ; preds = %73, %51, %21, %14
  %75 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !1066
  ret %struct.COMMAND_MODULE_REC* %75, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal void @command_module_destroy(%struct.COMMAND_REC*, %struct.COMMAND_MODULE_REC*) #0 !dbg !1067 {
  %3 = alloca %struct.COMMAND_REC*, align 8
  %4 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.COMMAND_MODULE_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %3, metadata !1070, metadata !540), !dbg !1071
  store %struct.COMMAND_MODULE_REC* %1, %struct.COMMAND_MODULE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %4, metadata !1072, metadata !540), !dbg !1073
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1074, metadata !540), !dbg !1075
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1076, metadata !540), !dbg !1077
  %8 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !1078
  %9 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1079
  call void @command_module_free(%struct.COMMAND_MODULE_REC* %8, %struct.COMMAND_REC* %9), !dbg !1080
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !1081
  %10 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1082
  %11 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %10, i32 0, i32 0, !dbg !1084
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1084
  store %struct._GSList* %12, %struct._GSList** %5, align 8, !dbg !1085
  br label %13, !dbg !1086

; <label>:13:                                     ; preds = %33, %2
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1087
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1090
  br i1 %15, label %16, label %37, !dbg !1091

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %7, metadata !1092, metadata !540), !dbg !1094
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1095
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1096
  %19 = load i8*, i8** %18, align 8, !dbg !1096
  %20 = bitcast i8* %19 to %struct.COMMAND_MODULE_REC*, !dbg !1095
  store %struct.COMMAND_MODULE_REC* %20, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !1094
  %21 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !1097
  %22 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %21, i32 0, i32 3, !dbg !1099
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !1099
  %24 = icmp eq %struct._GSList* %23, null, !dbg !1100
  br i1 %24, label %25, label %30, !dbg !1101

; <label>:25:                                     ; preds = %16
  %26 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1102
  %27 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !1103
  %28 = bitcast %struct.COMMAND_MODULE_REC* %27 to i8*, !dbg !1103
  %29 = call %struct._GSList* @g_slist_append(%struct._GSList* %26, i8* %28), !dbg !1104
  store %struct._GSList* %29, %struct._GSList** %6, align 8, !dbg !1105
  br label %32, !dbg !1106

; <label>:30:                                     ; preds = %16
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1107
  call void @g_slist_free(%struct._GSList* %31), !dbg !1109
  store %struct._GSList* null, %struct._GSList** %6, align 8, !dbg !1110
  br label %37, !dbg !1111

; <label>:32:                                     ; preds = %25
  br label %33, !dbg !1112

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1113
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !1115
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1115
  store %struct._GSList* %36, %struct._GSList** %5, align 8, !dbg !1116
  br label %13, !dbg !1117, !llvm.loop !1118

; <label>:37:                                     ; preds = %30, %13
  %38 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1120
  %39 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1121
  %40 = bitcast %struct.COMMAND_REC* %39 to i8*, !dbg !1121
  call void @g_slist_foreach(%struct._GSList* %38, void (i8*, i8*)* bitcast (void (%struct.COMMAND_MODULE_REC*, %struct.COMMAND_REC*)* @command_module_free to void (i8*, i8*)*), i8* %40), !dbg !1122
  %41 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1123
  call void @g_slist_free(%struct._GSList* %41), !dbg !1124
  %42 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1125
  %43 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %42, i32 0, i32 0, !dbg !1127
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !1127
  %45 = icmp eq %struct._GSList* %44, null, !dbg !1128
  br i1 %45, label %46, label %48, !dbg !1129

; <label>:46:                                     ; preds = %37
  %47 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1130
  call void @command_free(%struct.COMMAND_REC* %47), !dbg !1131
  br label %48, !dbg !1131

; <label>:48:                                     ; preds = %46, %37
  ret void, !dbg !1132
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @command_runsub(i8*, i8*, i8*, i8*) #0 !dbg !1133 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1136, metadata !540), !dbg !1137
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1138, metadata !540), !dbg !1139
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1140, metadata !540), !dbg !1141
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1142, metadata !540), !dbg !1143
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1144, metadata !540), !dbg !1145
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1146, metadata !540), !dbg !1147
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1148, metadata !540), !dbg !1149
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1150, metadata !540), !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1152, metadata !540), !dbg !1153
  br label %14, !dbg !1154, !llvm.loop !1155

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !1156
  %16 = icmp ne i8* %15, null, !dbg !1160
  br i1 %16, label %17, label %18, !dbg !1156

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1161

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.command_runsub, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1164
  br label %100, !dbg !1167

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1168

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1170

; <label>:21:                                     ; preds = %26, %20
  %22 = load i8*, i8** %6, align 8, !dbg !1171
  %23 = load i8, i8* %22, align 1, !dbg !1173
  %24 = sext i8 %23 to i32, !dbg !1173
  %25 = icmp eq i32 %24, 32, !dbg !1174
  br i1 %25, label %26, label %29, !dbg !1175

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %6, align 8, !dbg !1176
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1176
  store i8* %28, i8** %6, align 8, !dbg !1176
  br label %21, !dbg !1178, !llvm.loop !1179

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %6, align 8, !dbg !1180
  %31 = load i8, i8* %30, align 1, !dbg !1182
  %32 = sext i8 %31 to i32, !dbg !1182
  %33 = icmp eq i32 %32, 0, !dbg !1183
  br i1 %33, label %34, label %37, !dbg !1184

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %5, align 8, !dbg !1185
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 2, i8* %35), !dbg !1187
  br label %100, !dbg !1188

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %5, align 8, !dbg !1189
  %39 = load i8*, i8** %6, align 8, !dbg !1190
  %40 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %38, i8* %39), !dbg !1191
  store i8* %40, i8** %11, align 8, !dbg !1192
  store i8* %40, i8** %10, align 8, !dbg !1193
  %41 = load i8*, i8** %11, align 8, !dbg !1194
  %42 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !1195
  %43 = load i8*, i8** %5, align 8, !dbg !1196
  %44 = call i64 @strlen(i8* %43) #8, !dbg !1197
  %45 = getelementptr inbounds i8, i8* %42, i64 %44, !dbg !1198
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !1199
  %47 = call i8* @strchr(i8* %46, i32 32) #8, !dbg !1200
  store i8* %47, i8** %13, align 8, !dbg !1201
  %48 = load i8*, i8** %13, align 8, !dbg !1202
  %49 = icmp ne i8* %48, null, !dbg !1204
  br i1 %49, label %50, label %53, !dbg !1205

; <label>:50:                                     ; preds = %37
  %51 = load i8*, i8** %13, align 8, !dbg !1206
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !1206
  store i8* %52, i8** %13, align 8, !dbg !1206
  store i8 0, i8* %51, align 1, !dbg !1208
  br label %54, !dbg !1209

; <label>:53:                                     ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8** %13, align 8, !dbg !1210
  br label %54

; <label>:54:                                     ; preds = %53, %50
  br label %55, !dbg !1212

; <label>:55:                                     ; preds = %60, %54
  %56 = load i8*, i8** %13, align 8, !dbg !1213
  %57 = load i8, i8* %56, align 1, !dbg !1214
  %58 = sext i8 %57 to i32, !dbg !1214
  %59 = icmp eq i32 %58, 32, !dbg !1215
  br i1 %59, label %60, label %63, !dbg !1216

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %13, align 8, !dbg !1217
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !1217
  store i8* %62, i8** %13, align 8, !dbg !1217
  br label %55, !dbg !1218, !llvm.loop !1219

; <label>:63:                                     ; preds = %55
  %64 = load i8*, i8** %11, align 8, !dbg !1220
  %65 = getelementptr inbounds i8, i8* %64, i64 8, !dbg !1221
  %66 = call i8* @command_expand(i8* %65), !dbg !1222
  store i8* %66, i8** %9, align 8, !dbg !1223
  %67 = load i8*, i8** %9, align 8, !dbg !1224
  %68 = icmp eq i8* %67, null, !dbg !1226
  br i1 %68, label %69, label %71, !dbg !1227

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %10, align 8, !dbg !1228
  call void @g_free(i8* %70), !dbg !1230
  br label %100, !dbg !1231

; <label>:71:                                     ; preds = %63
  %72 = load i8*, i8** %9, align 8, !dbg !1232
  %73 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %72, i8* null), !dbg !1233
  store i8* %73, i8** %11, align 8, !dbg !1234
  %74 = load i8*, i8** %11, align 8, !dbg !1235
  %75 = call i8* @ascii_strdown(i8* %74), !dbg !1236
  %76 = load i8*, i8** %11, align 8, !dbg !1237
  %77 = load i8*, i8** %13, align 8, !dbg !1239
  %78 = load i8*, i8** %7, align 8, !dbg !1240
  %79 = load i8*, i8** %8, align 8, !dbg !1241
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* %76, i32 3, i8* %77, i8* %78, i8* %79), !dbg !1242
  %81 = icmp ne i32 %80, 0, !dbg !1242
  br i1 %81, label %97, label %82, !dbg !1243

; <label>:82:                                     ; preds = %71
  %83 = load i8*, i8** %5, align 8, !dbg !1244
  %84 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* %83), !dbg !1246
  store i8* %84, i8** %12, align 8, !dbg !1247
  %85 = load i8*, i8** %12, align 8, !dbg !1248
  %86 = load i8*, i8** %6, align 8, !dbg !1250
  %87 = load i8*, i8** %7, align 8, !dbg !1251
  %88 = load i8*, i8** %8, align 8, !dbg !1252
  %89 = call i32 (i8*, i32, ...) @signal_emit(i8* %85, i32 3, i8* %86, i8* %87, i8* %88), !dbg !1253
  %90 = icmp ne i32 %89, 0, !dbg !1253
  br i1 %90, label %95, label %91, !dbg !1254

; <label>:91:                                     ; preds = %82
  %92 = load i8*, i8** %11, align 8, !dbg !1255
  %93 = getelementptr inbounds i8, i8* %92, i64 8, !dbg !1257
  %94 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* null, i8* %93), !dbg !1258
  br label %95, !dbg !1259

; <label>:95:                                     ; preds = %91, %82
  %96 = load i8*, i8** %12, align 8, !dbg !1260
  call void @g_free(i8* %96), !dbg !1261
  br label %97, !dbg !1262

; <label>:97:                                     ; preds = %95, %71
  %98 = load i8*, i8** %11, align 8, !dbg !1263
  call void @g_free(i8* %98), !dbg !1264
  %99 = load i8*, i8** %10, align 8, !dbg !1265
  call void @g_free(i8* %99), !dbg !1266
  br label %100, !dbg !1267

; <label>:100:                                    ; preds = %97, %69, %34, %18
  ret void, !dbg !1268
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @command_expand(i8*) #0 !dbg !1269 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1272, metadata !540), !dbg !1273
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1274, metadata !540), !dbg !1275
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1276, metadata !540), !dbg !1277
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1278, metadata !540), !dbg !1279
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1280, metadata !540), !dbg !1281
  br label %9, !dbg !1282, !llvm.loop !1283

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !1284
  %11 = icmp ne i8* %10, null, !dbg !1288
  br i1 %11, label %12, label %13, !dbg !1284

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1289

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.command_expand, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1292
  store i8* null, i8** %2, align 8, !dbg !1295
  br label %87, !dbg !1295

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1296

; <label>:15:                                     ; preds = %14
  store i32 0, i32* %7, align 4, !dbg !1298
  store i8* null, i8** %5, align 8, !dbg !1299
  %16 = load i8*, i8** %3, align 8, !dbg !1300
  %17 = call i64 @strlen(i8* %16) #8, !dbg !1301
  %18 = trunc i64 %17 to i32, !dbg !1301
  store i32 %18, i32* %6, align 4, !dbg !1302
  %19 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !1303
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !1305
  br label %20, !dbg !1306

; <label>:20:                                     ; preds = %68, %15
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1307
  %22 = icmp ne %struct._GSList* %21, null, !dbg !1310
  br i1 %22, label %23, label %72, !dbg !1311

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %8, metadata !1312, metadata !540), !dbg !1314
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1315
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !1316
  %26 = load i8*, i8** %25, align 8, !dbg !1316
  %27 = bitcast i8* %26 to %struct.COMMAND_REC*, !dbg !1315
  store %struct.COMMAND_REC* %27, %struct.COMMAND_REC** %8, align 8, !dbg !1314
  %28 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %8, align 8, !dbg !1317
  %29 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %28, i32 0, i32 2, !dbg !1319
  %30 = load i8*, i8** %29, align 8, !dbg !1319
  %31 = load i8*, i8** %3, align 8, !dbg !1320
  %32 = load i32, i32* %6, align 4, !dbg !1321
  %33 = sext i32 %32 to i64, !dbg !1321
  %34 = call i32 @g_ascii_strncasecmp(i8* %30, i8* %31, i64 %33), !dbg !1322
  %35 = icmp eq i32 %34, 0, !dbg !1323
  br i1 %35, label %36, label %67, !dbg !1324

; <label>:36:                                     ; preds = %23
  %37 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %8, align 8, !dbg !1325
  %38 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %37, i32 0, i32 2, !dbg !1326
  %39 = load i8*, i8** %38, align 8, !dbg !1326
  %40 = load i32, i32* %6, align 4, !dbg !1327
  %41 = sext i32 %40 to i64, !dbg !1328
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !1328
  %43 = call i8* @strchr(i8* %42, i32 32) #8, !dbg !1329
  %44 = icmp eq i8* %43, null, !dbg !1330
  br i1 %44, label %45, label %67, !dbg !1331

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %6, align 4, !dbg !1333
  %47 = sext i32 %46 to i64, !dbg !1336
  %48 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %8, align 8, !dbg !1336
  %49 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %48, i32 0, i32 2, !dbg !1337
  %50 = load i8*, i8** %49, align 8, !dbg !1337
  %51 = getelementptr inbounds i8, i8* %50, i64 %47, !dbg !1336
  %52 = load i8, i8* %51, align 1, !dbg !1336
  %53 = sext i8 %52 to i32, !dbg !1336
  %54 = icmp eq i32 %53, 0, !dbg !1338
  br i1 %54, label %55, label %59, !dbg !1339

; <label>:55:                                     ; preds = %45
  %56 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %8, align 8, !dbg !1340
  %57 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %56, i32 0, i32 2, !dbg !1342
  %58 = load i8*, i8** %57, align 8, !dbg !1342
  store i8* %58, i8** %2, align 8, !dbg !1343
  br label %87, !dbg !1343

; <label>:59:                                     ; preds = %45
  %60 = load i8*, i8** %5, align 8, !dbg !1344
  %61 = icmp ne i8* %60, null, !dbg !1346
  br i1 %61, label %62, label %63, !dbg !1347

; <label>:62:                                     ; preds = %59
  store i32 1, i32* %7, align 4, !dbg !1348
  br label %63, !dbg !1350

; <label>:63:                                     ; preds = %62, %59
  %64 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %8, align 8, !dbg !1351
  %65 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %64, i32 0, i32 2, !dbg !1352
  %66 = load i8*, i8** %65, align 8, !dbg !1352
  store i8* %66, i8** %5, align 8, !dbg !1353
  br label %67, !dbg !1354

; <label>:67:                                     ; preds = %63, %36, %23
  br label %68, !dbg !1355

; <label>:68:                                     ; preds = %67
  %69 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1356
  %70 = getelementptr inbounds %struct._GSList, %struct._GSList* %69, i32 0, i32 1, !dbg !1358
  %71 = load %struct._GSList*, %struct._GSList** %70, align 8, !dbg !1358
  store %struct._GSList* %71, %struct._GSList** %4, align 8, !dbg !1359
  br label %20, !dbg !1360, !llvm.loop !1361

; <label>:72:                                     ; preds = %20
  %73 = load i32, i32* %7, align 4, !dbg !1363
  %74 = icmp ne i32 %73, 0, !dbg !1363
  br i1 %74, label %75, label %78, !dbg !1365

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %3, align 8, !dbg !1366
  %77 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* inttoptr (i64 1 to i8*), i8* %76), !dbg !1368
  store i8* null, i8** %2, align 8, !dbg !1369
  br label %87, !dbg !1369

; <label>:78:                                     ; preds = %72
  %79 = load i8*, i8** %5, align 8, !dbg !1370
  %80 = icmp ne i8* %79, null, !dbg !1371
  br i1 %80, label %81, label %83, !dbg !1370

; <label>:81:                                     ; preds = %78
  %82 = load i8*, i8** %5, align 8, !dbg !1372
  br label %85, !dbg !1374

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %3, align 8, !dbg !1375
  br label %85, !dbg !1377

; <label>:85:                                     ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ], !dbg !1378
  store i8* %86, i8** %2, align 8, !dbg !1380
  br label %87, !dbg !1380

; <label>:87:                                     ; preds = %85, %75, %55, %13
  %88 = load i8*, i8** %2, align 8, !dbg !1381
  ret i8* %88, !dbg !1381
}

declare i8* @ascii_strdown(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @command_have_option(i8*, i8*) #0 !dbg !1382 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.COMMAND_REC*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1383, metadata !540), !dbg !1384
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1385, metadata !540), !dbg !1386
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %6, metadata !1387, metadata !540), !dbg !1388
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1389, metadata !540), !dbg !1390
  br label %9, !dbg !1391, !llvm.loop !1392

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1393
  %11 = icmp ne i8* %10, null, !dbg !1397
  br i1 %11, label %12, label %13, !dbg !1393

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1398

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_have_option, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1401
  store i32 0, i32* %3, align 4, !dbg !1404
  br label %88, !dbg !1404

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1405

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1407, !llvm.loop !1408

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !1409
  %18 = icmp ne i8* %17, null, !dbg !1413
  br i1 %18, label %19, label %20, !dbg !1409

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1414

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_have_option, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)), !dbg !1417
  store i32 0, i32* %3, align 4, !dbg !1420
  br label %88, !dbg !1420

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1421

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !1423
  %24 = call %struct.COMMAND_REC* @command_find(i8* %23), !dbg !1424
  store %struct.COMMAND_REC* %24, %struct.COMMAND_REC** %6, align 8, !dbg !1425
  br label %25, !dbg !1426, !llvm.loop !1427

; <label>:25:                                     ; preds = %22
  %26 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1428
  %27 = icmp ne %struct.COMMAND_REC* %26, null, !dbg !1432
  br i1 %27, label %28, label %29, !dbg !1428

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !1433

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_have_option, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)), !dbg !1436
  store i32 0, i32* %3, align 4, !dbg !1439
  br label %88, !dbg !1439

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1440

; <label>:31:                                     ; preds = %30
  %32 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1442
  %33 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %32, i32 0, i32 3, !dbg !1444
  %34 = load i8**, i8*** %33, align 8, !dbg !1444
  %35 = icmp eq i8** %34, null, !dbg !1445
  br i1 %35, label %36, label %37, !dbg !1446

; <label>:36:                                     ; preds = %31
  store i32 0, i32* %3, align 4, !dbg !1447
  br label %88, !dbg !1447

; <label>:37:                                     ; preds = %31
  %38 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1448
  %39 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %38, i32 0, i32 3, !dbg !1450
  %40 = load i8**, i8*** %39, align 8, !dbg !1450
  store i8** %40, i8*** %7, align 8, !dbg !1451
  br label %41, !dbg !1452

; <label>:41:                                     ; preds = %84, %37
  %42 = load i8**, i8*** %7, align 8, !dbg !1453
  %43 = load i8*, i8** %42, align 8, !dbg !1456
  %44 = icmp ne i8* %43, null, !dbg !1457
  br i1 %44, label %45, label %87, !dbg !1458

; <label>:45:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1459, metadata !540), !dbg !1461
  %46 = load i8**, i8*** %7, align 8, !dbg !1462
  %47 = load i8*, i8** %46, align 8, !dbg !1463
  %48 = load i8, i8* %47, align 1, !dbg !1464
  %49 = sext i8 %48 to i32, !dbg !1465
  %50 = icmp eq i32 %49, 33, !dbg !1466
  br i1 %50, label %69, label %51, !dbg !1467

; <label>:51:                                     ; preds = %45
  %52 = load i8**, i8*** %7, align 8, !dbg !1468
  %53 = load i8*, i8** %52, align 8, !dbg !1470
  %54 = load i8, i8* %53, align 1, !dbg !1471
  %55 = sext i8 %54 to i32, !dbg !1472
  %56 = icmp eq i32 %55, 45, !dbg !1473
  br i1 %56, label %69, label %57, !dbg !1474

; <label>:57:                                     ; preds = %51
  %58 = load i8**, i8*** %7, align 8, !dbg !1475
  %59 = load i8*, i8** %58, align 8, !dbg !1477
  %60 = load i8, i8* %59, align 1, !dbg !1478
  %61 = sext i8 %60 to i32, !dbg !1479
  %62 = icmp eq i32 %61, 43, !dbg !1480
  br i1 %62, label %69, label %63, !dbg !1481

; <label>:63:                                     ; preds = %57
  %64 = load i8**, i8*** %7, align 8, !dbg !1482
  %65 = load i8*, i8** %64, align 8, !dbg !1484
  %66 = load i8, i8* %65, align 1, !dbg !1485
  %67 = sext i8 %66 to i32, !dbg !1486
  %68 = icmp eq i32 %67, 64, !dbg !1487
  br i1 %68, label %69, label %73, !dbg !1488

; <label>:69:                                     ; preds = %63, %57, %51, %45
  %70 = load i8**, i8*** %7, align 8, !dbg !1489
  %71 = load i8*, i8** %70, align 8, !dbg !1491
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1492
  br label %76, !dbg !1493

; <label>:73:                                     ; preds = %63
  %74 = load i8**, i8*** %7, align 8, !dbg !1494
  %75 = load i8*, i8** %74, align 8, !dbg !1496
  br label %76, !dbg !1497

; <label>:76:                                     ; preds = %73, %69
  %77 = phi i8* [ %72, %69 ], [ %75, %73 ], !dbg !1498
  store i8* %77, i8** %8, align 8, !dbg !1500
  %78 = load i8*, i8** %8, align 8, !dbg !1501
  %79 = load i8*, i8** %5, align 8, !dbg !1503
  %80 = call i32 @g_ascii_strcasecmp(i8* %78, i8* %79), !dbg !1504
  %81 = icmp eq i32 %80, 0, !dbg !1505
  br i1 %81, label %82, label %83, !dbg !1506

; <label>:82:                                     ; preds = %76
  store i32 1, i32* %3, align 4, !dbg !1507
  br label %88, !dbg !1507

; <label>:83:                                     ; preds = %76
  br label %84, !dbg !1508

; <label>:84:                                     ; preds = %83
  %85 = load i8**, i8*** %7, align 8, !dbg !1509
  %86 = getelementptr inbounds i8*, i8** %85, i32 1, !dbg !1509
  store i8** %86, i8*** %7, align 8, !dbg !1509
  br label %41, !dbg !1511, !llvm.loop !1512

; <label>:87:                                     ; preds = %41
  store i32 0, i32* %3, align 4, !dbg !1514
  br label %88, !dbg !1514

; <label>:88:                                     ; preds = %87, %82, %36, %29, %20, %13
  %89 = load i32, i32* %3, align 4, !dbg !1515
  ret i32 %89, !dbg !1515
}

; Function Attrs: nounwind uwtable
define void @command_set_options_module(i8*, i8*, i8*) #0 !dbg !1516 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.COMMAND_REC*, align 8
  %8 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1519, metadata !540), !dbg !1520
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1521, metadata !540), !dbg !1522
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1523, metadata !540), !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %7, metadata !1525, metadata !540), !dbg !1526
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %8, metadata !1527, metadata !540), !dbg !1528
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1529, metadata !540), !dbg !1530
  br label %10, !dbg !1531, !llvm.loop !1532

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !1533
  %12 = icmp ne i8* %11, null, !dbg !1537
  br i1 %12, label %13, label %14, !dbg !1533

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1538

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_set_options_module, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !1541
  br label %66, !dbg !1544

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1545

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1547, !llvm.loop !1548

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1549
  %19 = icmp ne i8* %18, null, !dbg !1553
  br i1 %19, label %20, label %21, !dbg !1549

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1554

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_set_options_module, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1557
  br label %66, !dbg !1560

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1561

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !1563, !llvm.loop !1564

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %6, align 8, !dbg !1565
  %26 = icmp ne i8* %25, null, !dbg !1569
  br i1 %26, label %27, label %28, !dbg !1565

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !1570

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_set_options_module, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)), !dbg !1573
  br label %66, !dbg !1576

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !1577

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %5, align 8, !dbg !1579
  %32 = call %struct.COMMAND_REC* @command_find(i8* %31), !dbg !1580
  store %struct.COMMAND_REC* %32, %struct.COMMAND_REC** %7, align 8, !dbg !1581
  br label %33, !dbg !1582, !llvm.loop !1583

; <label>:33:                                     ; preds = %30
  %34 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !1584
  %35 = icmp ne %struct.COMMAND_REC* %34, null, !dbg !1588
  br i1 %35, label %36, label %37, !dbg !1584

; <label>:36:                                     ; preds = %33
  br label %38, !dbg !1589

; <label>:37:                                     ; preds = %33
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.command_set_options_module, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)), !dbg !1592
  br label %66, !dbg !1595

; <label>:38:                                     ; preds = %36
  br label %39, !dbg !1596

; <label>:39:                                     ; preds = %38
  %40 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !1598
  %41 = load i8*, i8** %4, align 8, !dbg !1599
  %42 = call %struct.COMMAND_MODULE_REC* @command_module_get(%struct.COMMAND_REC* %40, i8* %41, i32 -1), !dbg !1600
  store %struct.COMMAND_MODULE_REC* %42, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1601
  %43 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1602
  %44 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %43, i32 0, i32 1, !dbg !1603
  %45 = load i8*, i8** %44, align 8, !dbg !1603
  %46 = icmp ne i8* %45, null, !dbg !1604
  %47 = zext i1 %46 to i32, !dbg !1604
  store i32 %47, i32* %9, align 4, !dbg !1605
  %48 = load i32, i32* %9, align 4, !dbg !1606
  %49 = icmp ne i32 %48, 0, !dbg !1606
  br i1 %49, label %50, label %54, !dbg !1608

; <label>:50:                                     ; preds = %39
  %51 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1609
  %52 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %51, i32 0, i32 1, !dbg !1611
  %53 = load i8*, i8** %52, align 8, !dbg !1611
  call void @g_free(i8* %53), !dbg !1612
  br label %54, !dbg !1613

; <label>:54:                                     ; preds = %50, %39
  %55 = load i8*, i8** %6, align 8, !dbg !1614
  %56 = call noalias i8* @g_strdup(i8* %55), !dbg !1615
  %57 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %8, align 8, !dbg !1616
  %58 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %57, i32 0, i32 1, !dbg !1617
  store i8* %56, i8** %58, align 8, !dbg !1618
  %59 = load i32, i32* %9, align 4, !dbg !1619
  %60 = icmp ne i32 %59, 0, !dbg !1619
  br i1 %60, label %61, label %63, !dbg !1621

; <label>:61:                                     ; preds = %54
  %62 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !1622
  call void @command_update_options(%struct.COMMAND_REC* %62), !dbg !1623
  br label %66, !dbg !1623

; <label>:63:                                     ; preds = %54
  %64 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %7, align 8, !dbg !1624
  %65 = load i8*, i8** %6, align 8, !dbg !1625
  call void @command_calc_options(%struct.COMMAND_REC* %64, i8* %65), !dbg !1626
  br label %66

; <label>:66:                                     ; preds = %14, %21, %28, %37, %63, %61
  ret void, !dbg !1627
}

; Function Attrs: nounwind uwtable
define internal void @command_update_options(%struct.COMMAND_REC*) #0 !dbg !1628 {
  %2 = alloca %struct.COMMAND_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.COMMAND_MODULE_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %2, metadata !1631, metadata !540), !dbg !1632
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1633, metadata !540), !dbg !1634
  %5 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !1635
  %6 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %5, i32 0, i32 3, !dbg !1636
  %7 = load i8**, i8*** %6, align 8, !dbg !1636
  call void @g_strfreev(i8** %7), !dbg !1637
  %8 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !1638
  %9 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %8, i32 0, i32 3, !dbg !1639
  store i8** null, i8*** %9, align 8, !dbg !1640
  %10 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !1641
  %11 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %10, i32 0, i32 0, !dbg !1643
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1643
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !1644
  br label %13, !dbg !1645

; <label>:13:                                     ; preds = %31, %1
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1646
  %15 = icmp ne %struct._GSList* %14, null, !dbg !1649
  br i1 %15, label %16, label %35, !dbg !1650

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %4, metadata !1651, metadata !540), !dbg !1653
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1654
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1655
  %19 = load i8*, i8** %18, align 8, !dbg !1655
  %20 = bitcast i8* %19 to %struct.COMMAND_MODULE_REC*, !dbg !1654
  store %struct.COMMAND_MODULE_REC* %20, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !1653
  %21 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !1656
  %22 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %21, i32 0, i32 1, !dbg !1658
  %23 = load i8*, i8** %22, align 8, !dbg !1658
  %24 = icmp ne i8* %23, null, !dbg !1659
  br i1 %24, label %25, label %30, !dbg !1660

; <label>:25:                                     ; preds = %16
  %26 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !1661
  %27 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !1662
  %28 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %27, i32 0, i32 1, !dbg !1663
  %29 = load i8*, i8** %28, align 8, !dbg !1663
  call void @command_calc_options(%struct.COMMAND_REC* %26, i8* %29), !dbg !1664
  br label %30, !dbg !1664

; <label>:30:                                     ; preds = %25, %16
  br label %31, !dbg !1665

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1666
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !1668
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1668
  store %struct._GSList* %34, %struct._GSList** %3, align 8, !dbg !1669
  br label %13, !dbg !1670, !llvm.loop !1671

; <label>:35:                                     ; preds = %13
  ret void, !dbg !1673
}

; Function Attrs: nounwind uwtable
define internal void @command_calc_options(%struct.COMMAND_REC*, i8*) #0 !dbg !1674 {
  %3 = alloca %struct.COMMAND_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %3, metadata !1677, metadata !540), !dbg !1678
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1679, metadata !540), !dbg !1680
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1681, metadata !540), !dbg !1682
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1683, metadata !540), !dbg !1684
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1685, metadata !540), !dbg !1686
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1687, metadata !540), !dbg !1688
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1689, metadata !540), !dbg !1690
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1691, metadata !540), !dbg !1692
  %11 = load i8*, i8** %4, align 8, !dbg !1693
  %12 = call noalias i8** @g_strsplit(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 -1), !dbg !1694
  store i8** %12, i8*** %5, align 8, !dbg !1695
  %13 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1696
  %14 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %13, i32 0, i32 3, !dbg !1698
  %15 = load i8**, i8*** %14, align 8, !dbg !1698
  %16 = icmp eq i8** %15, null, !dbg !1699
  br i1 %16, label %17, label %21, !dbg !1700

; <label>:17:                                     ; preds = %2
  %18 = load i8**, i8*** %5, align 8, !dbg !1701
  %19 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1703
  %20 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %19, i32 0, i32 3, !dbg !1704
  store i8** %18, i8*** %20, align 8, !dbg !1705
  br label %115, !dbg !1706

; <label>:21:                                     ; preds = %2
  store %struct._GSList* null, %struct._GSList** %9, align 8, !dbg !1707
  %22 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1708
  %23 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %22, i32 0, i32 3, !dbg !1710
  %24 = load i8**, i8*** %23, align 8, !dbg !1710
  store i8** %24, i8*** %6, align 8, !dbg !1711
  br label %25, !dbg !1712

; <label>:25:                                     ; preds = %35, %21
  %26 = load i8**, i8*** %6, align 8, !dbg !1713
  %27 = load i8*, i8** %26, align 8, !dbg !1716
  %28 = icmp ne i8* %27, null, !dbg !1717
  br i1 %28, label %29, label %38, !dbg !1718

; <label>:29:                                     ; preds = %25
  %30 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1719
  %31 = load i8**, i8*** %6, align 8, !dbg !1720
  %32 = load i8*, i8** %31, align 8, !dbg !1721
  %33 = call noalias i8* @g_strdup(i8* %32), !dbg !1722
  %34 = call %struct._GSList* @g_slist_append(%struct._GSList* %30, i8* %33), !dbg !1723
  store %struct._GSList* %34, %struct._GSList** %9, align 8, !dbg !1724
  br label %35, !dbg !1725

; <label>:35:                                     ; preds = %29
  %36 = load i8**, i8*** %6, align 8, !dbg !1726
  %37 = getelementptr inbounds i8*, i8** %36, i32 1, !dbg !1726
  store i8** %37, i8*** %6, align 8, !dbg !1726
  br label %25, !dbg !1728, !llvm.loop !1729

; <label>:38:                                     ; preds = %25
  %39 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1731
  %40 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %39, i32 0, i32 3, !dbg !1732
  %41 = load i8**, i8*** %40, align 8, !dbg !1732
  call void @g_strfreev(i8** %41), !dbg !1733
  %42 = load i8**, i8*** %5, align 8, !dbg !1734
  store i8** %42, i8*** %6, align 8, !dbg !1736
  br label %43, !dbg !1737

; <label>:43:                                     ; preds = %101, %38
  %44 = load i8**, i8*** %6, align 8, !dbg !1738
  %45 = load i8*, i8** %44, align 8, !dbg !1741
  %46 = icmp ne i8* %45, null, !dbg !1742
  br i1 %46, label %47, label %104, !dbg !1743

; <label>:47:                                     ; preds = %43
  %48 = load i8**, i8*** %6, align 8, !dbg !1744
  %49 = load i8*, i8** %48, align 8, !dbg !1746
  %50 = load i8, i8* %49, align 1, !dbg !1747
  %51 = sext i8 %50 to i32, !dbg !1748
  %52 = icmp eq i32 %51, 33, !dbg !1749
  br i1 %52, label %71, label %53, !dbg !1750

; <label>:53:                                     ; preds = %47
  %54 = load i8**, i8*** %6, align 8, !dbg !1751
  %55 = load i8*, i8** %54, align 8, !dbg !1753
  %56 = load i8, i8* %55, align 1, !dbg !1754
  %57 = sext i8 %56 to i32, !dbg !1755
  %58 = icmp eq i32 %57, 45, !dbg !1756
  br i1 %58, label %71, label %59, !dbg !1757

; <label>:59:                                     ; preds = %53
  %60 = load i8**, i8*** %6, align 8, !dbg !1758
  %61 = load i8*, i8** %60, align 8, !dbg !1760
  %62 = load i8, i8* %61, align 1, !dbg !1761
  %63 = sext i8 %62 to i32, !dbg !1762
  %64 = icmp eq i32 %63, 43, !dbg !1763
  br i1 %64, label %71, label %65, !dbg !1764

; <label>:65:                                     ; preds = %59
  %66 = load i8**, i8*** %6, align 8, !dbg !1765
  %67 = load i8*, i8** %66, align 8, !dbg !1767
  %68 = load i8, i8* %67, align 1, !dbg !1768
  %69 = sext i8 %68 to i32, !dbg !1769
  %70 = icmp eq i32 %69, 64, !dbg !1770
  br i1 %70, label %71, label %75, !dbg !1771

; <label>:71:                                     ; preds = %65, %59, %53, %47
  %72 = load i8**, i8*** %6, align 8, !dbg !1772
  %73 = load i8*, i8** %72, align 8, !dbg !1774
  %74 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !1775
  br label %78, !dbg !1776

; <label>:75:                                     ; preds = %65
  %76 = load i8**, i8*** %6, align 8, !dbg !1777
  %77 = load i8*, i8** %76, align 8, !dbg !1779
  br label %78, !dbg !1780

; <label>:78:                                     ; preds = %75, %71
  %79 = phi i8* [ %74, %71 ], [ %77, %75 ], !dbg !1781
  store i8* %79, i8** %7, align 8, !dbg !1783
  %80 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1784
  %81 = load i8*, i8** %7, align 8, !dbg !1785
  %82 = call %struct._GSList* @optlist_find(%struct._GSList* %80, i8* %81), !dbg !1786
  store %struct._GSList* %82, %struct._GSList** %10, align 8, !dbg !1787
  %83 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1788
  %84 = icmp ne %struct._GSList* %83, null, !dbg !1790
  br i1 %84, label %85, label %94, !dbg !1791

; <label>:85:                                     ; preds = %78
  %86 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1792
  %87 = getelementptr inbounds %struct._GSList, %struct._GSList* %86, i32 0, i32 0, !dbg !1794
  %88 = load i8*, i8** %87, align 8, !dbg !1794
  call void @g_free(i8* %88), !dbg !1795
  %89 = load i8**, i8*** %6, align 8, !dbg !1796
  %90 = load i8*, i8** %89, align 8, !dbg !1797
  %91 = call noalias i8* @g_strdup(i8* %90), !dbg !1798
  %92 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1799
  %93 = getelementptr inbounds %struct._GSList, %struct._GSList* %92, i32 0, i32 0, !dbg !1800
  store i8* %91, i8** %93, align 8, !dbg !1801
  br label %100, !dbg !1802

; <label>:94:                                     ; preds = %78
  %95 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1803
  %96 = load i8**, i8*** %6, align 8, !dbg !1805
  %97 = load i8*, i8** %96, align 8, !dbg !1806
  %98 = call noalias i8* @g_strdup(i8* %97), !dbg !1807
  %99 = call %struct._GSList* @g_slist_append(%struct._GSList* %95, i8* %98), !dbg !1808
  store %struct._GSList* %99, %struct._GSList** %9, align 8, !dbg !1810
  br label %100

; <label>:100:                                    ; preds = %94, %85
  br label %101, !dbg !1811

; <label>:101:                                    ; preds = %100
  %102 = load i8**, i8*** %6, align 8, !dbg !1812
  %103 = getelementptr inbounds i8*, i8** %102, i32 1, !dbg !1812
  store i8** %103, i8*** %6, align 8, !dbg !1812
  br label %43, !dbg !1814, !llvm.loop !1815

; <label>:104:                                    ; preds = %43
  %105 = load i8**, i8*** %5, align 8, !dbg !1817
  call void @g_strfreev(i8** %105), !dbg !1818
  %106 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1819
  %107 = call i8* @gslist_to_string(%struct._GSList* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)), !dbg !1820
  store i8* %107, i8** %8, align 8, !dbg !1821
  %108 = load i8*, i8** %8, align 8, !dbg !1822
  %109 = call noalias i8** @g_strsplit(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 -1), !dbg !1823
  %110 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !1824
  %111 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %110, i32 0, i32 3, !dbg !1825
  store i8** %109, i8*** %111, align 8, !dbg !1826
  %112 = load i8*, i8** %8, align 8, !dbg !1827
  call void @g_free(i8* %112), !dbg !1828
  %113 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1829
  call void @g_slist_foreach(%struct._GSList* %113, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1830
  %114 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1831
  call void @g_slist_free(%struct._GSList* %114), !dbg !1832
  br label %115, !dbg !1833

; <label>:115:                                    ; preds = %104, %17
  ret void, !dbg !1834
}

; Function Attrs: nounwind uwtable
define i8* @cmd_get_param(i8**) #0 !dbg !1836 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1839, metadata !540), !dbg !1840
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1841, metadata !540), !dbg !1842
  br label %5, !dbg !1843, !llvm.loop !1844

; <label>:5:                                      ; preds = %1
  %6 = load i8**, i8*** %3, align 8, !dbg !1845
  %7 = icmp ne i8** %6, null, !dbg !1849
  br i1 %7, label %8, label %9, !dbg !1845

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1850

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cmd_get_param, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1853
  store i8* null, i8** %2, align 8, !dbg !1856
  br label %63, !dbg !1856

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1857

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !1859, !llvm.loop !1860

; <label>:12:                                     ; preds = %11
  %13 = load i8**, i8*** %3, align 8, !dbg !1861
  %14 = load i8*, i8** %13, align 8, !dbg !1865
  %15 = icmp ne i8* %14, null, !dbg !1866
  br i1 %15, label %16, label %17, !dbg !1865

; <label>:16:                                     ; preds = %12
  br label %18, !dbg !1867

; <label>:17:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cmd_get_param, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)), !dbg !1870
  store i8* null, i8** %2, align 8, !dbg !1873
  br label %63, !dbg !1873

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1874

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !1876

; <label>:20:                                     ; preds = %26, %19
  %21 = load i8**, i8*** %3, align 8, !dbg !1877
  %22 = load i8*, i8** %21, align 8, !dbg !1879
  %23 = load i8, i8* %22, align 1, !dbg !1880
  %24 = sext i8 %23 to i32, !dbg !1880
  %25 = icmp eq i32 %24, 32, !dbg !1881
  br i1 %25, label %26, label %30, !dbg !1882

; <label>:26:                                     ; preds = %20
  %27 = load i8**, i8*** %3, align 8, !dbg !1883
  %28 = load i8*, i8** %27, align 8, !dbg !1885
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1885
  store i8* %29, i8** %27, align 8, !dbg !1885
  br label %20, !dbg !1886, !llvm.loop !1887

; <label>:30:                                     ; preds = %20
  %31 = load i8**, i8*** %3, align 8, !dbg !1888
  %32 = load i8*, i8** %31, align 8, !dbg !1889
  store i8* %32, i8** %4, align 8, !dbg !1890
  br label %33, !dbg !1891

; <label>:33:                                     ; preds = %47, %30
  %34 = load i8**, i8*** %3, align 8, !dbg !1892
  %35 = load i8*, i8** %34, align 8, !dbg !1893
  %36 = load i8, i8* %35, align 1, !dbg !1894
  %37 = sext i8 %36 to i32, !dbg !1894
  %38 = icmp ne i32 %37, 0, !dbg !1895
  br i1 %38, label %39, label %45, !dbg !1896

; <label>:39:                                     ; preds = %33
  %40 = load i8**, i8*** %3, align 8, !dbg !1897
  %41 = load i8*, i8** %40, align 8, !dbg !1898
  %42 = load i8, i8* %41, align 1, !dbg !1899
  %43 = sext i8 %42 to i32, !dbg !1899
  %44 = icmp ne i32 %43, 32, !dbg !1900
  br label %45

; <label>:45:                                     ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  br i1 %46, label %47, label %51, !dbg !1901

; <label>:47:                                     ; preds = %45
  %48 = load i8**, i8*** %3, align 8, !dbg !1903
  %49 = load i8*, i8** %48, align 8, !dbg !1905
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !1905
  store i8* %50, i8** %48, align 8, !dbg !1905
  br label %33, !dbg !1906, !llvm.loop !1907

; <label>:51:                                     ; preds = %45
  %52 = load i8**, i8*** %3, align 8, !dbg !1908
  %53 = load i8*, i8** %52, align 8, !dbg !1910
  %54 = load i8, i8* %53, align 1, !dbg !1911
  %55 = sext i8 %54 to i32, !dbg !1911
  %56 = icmp eq i32 %55, 32, !dbg !1912
  br i1 %56, label %57, label %61, !dbg !1913

; <label>:57:                                     ; preds = %51
  %58 = load i8**, i8*** %3, align 8, !dbg !1914
  %59 = load i8*, i8** %58, align 8, !dbg !1916
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1916
  store i8* %60, i8** %58, align 8, !dbg !1916
  store i8 0, i8* %59, align 1, !dbg !1917
  br label %61, !dbg !1918

; <label>:61:                                     ; preds = %57, %51
  %62 = load i8*, i8** %4, align 8, !dbg !1919
  store i8* %62, i8** %2, align 8, !dbg !1920
  br label %63, !dbg !1920

; <label>:63:                                     ; preds = %61, %17, %9
  %64 = load i8*, i8** %2, align 8, !dbg !1921
  ret i8* %64, !dbg !1921
}

; Function Attrs: nounwind uwtable
define i8* @cmd_get_quoted_param(i8**) #0 !dbg !1922 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1923, metadata !540), !dbg !1924
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1925, metadata !540), !dbg !1926
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1927, metadata !540), !dbg !1928
  br label %6, !dbg !1929, !llvm.loop !1930

; <label>:6:                                      ; preds = %1
  %7 = load i8**, i8*** %3, align 8, !dbg !1931
  %8 = icmp ne i8** %7, null, !dbg !1935
  br i1 %8, label %9, label %10, !dbg !1931

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1936

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cmd_get_quoted_param, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1939
  store i8* null, i8** %2, align 8, !dbg !1942
  br label %141, !dbg !1942

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1943

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !1945, !llvm.loop !1946

; <label>:13:                                     ; preds = %12
  %14 = load i8**, i8*** %3, align 8, !dbg !1947
  %15 = load i8*, i8** %14, align 8, !dbg !1951
  %16 = icmp ne i8* %15, null, !dbg !1952
  br i1 %16, label %17, label %18, !dbg !1951

; <label>:17:                                     ; preds = %13
  br label %19, !dbg !1953

; <label>:18:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cmd_get_quoted_param, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)), !dbg !1956
  store i8* null, i8** %2, align 8, !dbg !1959
  br label %141, !dbg !1959

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1960

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !1962

; <label>:21:                                     ; preds = %27, %20
  %22 = load i8**, i8*** %3, align 8, !dbg !1963
  %23 = load i8*, i8** %22, align 8, !dbg !1965
  %24 = load i8, i8* %23, align 1, !dbg !1966
  %25 = sext i8 %24 to i32, !dbg !1966
  %26 = icmp eq i32 %25, 32, !dbg !1967
  br i1 %26, label %27, label %31, !dbg !1968

; <label>:27:                                     ; preds = %21
  %28 = load i8**, i8*** %3, align 8, !dbg !1969
  %29 = load i8*, i8** %28, align 8, !dbg !1971
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !1971
  store i8* %30, i8** %28, align 8, !dbg !1971
  br label %21, !dbg !1972, !llvm.loop !1973

; <label>:31:                                     ; preds = %21
  %32 = load i8**, i8*** %3, align 8, !dbg !1974
  %33 = load i8*, i8** %32, align 8, !dbg !1976
  %34 = load i8, i8* %33, align 1, !dbg !1977
  %35 = sext i8 %34 to i32, !dbg !1977
  %36 = icmp ne i32 %35, 39, !dbg !1978
  br i1 %36, label %37, label %46, !dbg !1979

; <label>:37:                                     ; preds = %31
  %38 = load i8**, i8*** %3, align 8, !dbg !1980
  %39 = load i8*, i8** %38, align 8, !dbg !1982
  %40 = load i8, i8* %39, align 1, !dbg !1983
  %41 = sext i8 %40 to i32, !dbg !1983
  %42 = icmp ne i32 %41, 34, !dbg !1984
  br i1 %42, label %43, label %46, !dbg !1985

; <label>:43:                                     ; preds = %37
  %44 = load i8**, i8*** %3, align 8, !dbg !1986
  %45 = call i8* @cmd_get_param(i8** %44), !dbg !1987
  store i8* %45, i8** %2, align 8, !dbg !1988
  br label %141, !dbg !1988

; <label>:46:                                     ; preds = %37, %31
  %47 = load i8**, i8*** %3, align 8, !dbg !1989
  %48 = load i8*, i8** %47, align 8, !dbg !1990
  %49 = load i8, i8* %48, align 1, !dbg !1991
  store i8 %49, i8* %5, align 1, !dbg !1992
  %50 = load i8**, i8*** %3, align 8, !dbg !1993
  %51 = load i8*, i8** %50, align 8, !dbg !1994
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !1994
  store i8* %52, i8** %50, align 8, !dbg !1994
  %53 = load i8**, i8*** %3, align 8, !dbg !1995
  %54 = load i8*, i8** %53, align 8, !dbg !1996
  store i8* %54, i8** %4, align 8, !dbg !1997
  br label %55, !dbg !1998

; <label>:55:                                     ; preds = %113, %46
  %56 = load i8**, i8*** %3, align 8, !dbg !1999
  %57 = load i8*, i8** %56, align 8, !dbg !2000
  %58 = load i8, i8* %57, align 1, !dbg !2001
  %59 = sext i8 %58 to i32, !dbg !2001
  %60 = icmp ne i32 %59, 0, !dbg !2002
  br i1 %60, label %61, label %87, !dbg !2003

; <label>:61:                                     ; preds = %55
  %62 = load i8**, i8*** %3, align 8, !dbg !2004
  %63 = load i8*, i8** %62, align 8, !dbg !2005
  %64 = load i8, i8* %63, align 1, !dbg !2006
  %65 = sext i8 %64 to i32, !dbg !2006
  %66 = load i8, i8* %5, align 1, !dbg !2007
  %67 = sext i8 %66 to i32, !dbg !2007
  %68 = icmp ne i32 %65, %67, !dbg !2008
  br i1 %68, label %85, label %69, !dbg !2009

; <label>:69:                                     ; preds = %61
  %70 = load i8**, i8*** %3, align 8, !dbg !2010
  %71 = load i8*, i8** %70, align 8, !dbg !2011
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !2012
  %73 = load i8, i8* %72, align 1, !dbg !2012
  %74 = sext i8 %73 to i32, !dbg !2012
  %75 = icmp ne i32 %74, 32, !dbg !2013
  br i1 %75, label %76, label %83, !dbg !2014

; <label>:76:                                     ; preds = %69
  %77 = load i8**, i8*** %3, align 8, !dbg !2015
  %78 = load i8*, i8** %77, align 8, !dbg !2016
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !2017
  %80 = load i8, i8* %79, align 1, !dbg !2017
  %81 = sext i8 %80 to i32, !dbg !2017
  %82 = icmp ne i32 %81, 0, !dbg !2018
  br label %83

; <label>:83:                                     ; preds = %76, %69
  %84 = phi i1 [ false, %69 ], [ %82, %76 ]
  br label %85, !dbg !2019

; <label>:85:                                     ; preds = %83, %61
  %86 = phi i1 [ true, %61 ], [ %84, %83 ]
  br label %87

; <label>:87:                                     ; preds = %85, %55
  %88 = phi i1 [ false, %55 ], [ %86, %85 ]
  br i1 %88, label %89, label %117, !dbg !2021

; <label>:89:                                     ; preds = %87
  %90 = load i8**, i8*** %3, align 8, !dbg !2023
  %91 = load i8*, i8** %90, align 8, !dbg !2026
  %92 = load i8, i8* %91, align 1, !dbg !2027
  %93 = sext i8 %92 to i32, !dbg !2027
  %94 = icmp eq i32 %93, 92, !dbg !2028
  br i1 %94, label %95, label %113, !dbg !2029

; <label>:95:                                     ; preds = %89
  %96 = load i8**, i8*** %3, align 8, !dbg !2030
  %97 = load i8*, i8** %96, align 8, !dbg !2032
  %98 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !2033
  %99 = load i8, i8* %98, align 1, !dbg !2033
  %100 = sext i8 %99 to i32, !dbg !2033
  %101 = icmp ne i32 %100, 0, !dbg !2034
  br i1 %101, label %102, label %113, !dbg !2035

; <label>:102:                                    ; preds = %95
  br label %103, !dbg !2036, !llvm.loop !2037

; <label>:103:                                    ; preds = %102
  %104 = load i8**, i8*** %3, align 8, !dbg !2038
  %105 = load i8*, i8** %104, align 8, !dbg !2041
  %106 = load i8**, i8*** %3, align 8, !dbg !2042
  %107 = load i8*, i8** %106, align 8, !dbg !2043
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !2044
  %109 = load i8**, i8*** %3, align 8, !dbg !2045
  %110 = load i8*, i8** %109, align 8, !dbg !2046
  %111 = call i64 @strlen(i8* %110) #8, !dbg !2047
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %105, i8* %108, i64 %111, i32 1, i1 false), !dbg !2048
  br label %112, !dbg !2050

; <label>:112:                                    ; preds = %103
  br label %113, !dbg !2051

; <label>:113:                                    ; preds = %112, %95, %89
  %114 = load i8**, i8*** %3, align 8, !dbg !2053
  %115 = load i8*, i8** %114, align 8, !dbg !2054
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !2054
  store i8* %116, i8** %114, align 8, !dbg !2054
  br label %55, !dbg !2055, !llvm.loop !2057

; <label>:117:                                    ; preds = %87
  %118 = load i8**, i8*** %3, align 8, !dbg !2058
  %119 = load i8*, i8** %118, align 8, !dbg !2060
  %120 = load i8, i8* %119, align 1, !dbg !2061
  %121 = sext i8 %120 to i32, !dbg !2061
  %122 = load i8, i8* %5, align 1, !dbg !2062
  %123 = sext i8 %122 to i32, !dbg !2062
  %124 = icmp eq i32 %121, %123, !dbg !2063
  br i1 %124, label %125, label %139, !dbg !2064

; <label>:125:                                    ; preds = %117
  %126 = load i8**, i8*** %3, align 8, !dbg !2065
  %127 = load i8*, i8** %126, align 8, !dbg !2067
  %128 = getelementptr inbounds i8, i8* %127, i32 1, !dbg !2067
  store i8* %128, i8** %126, align 8, !dbg !2067
  store i8 0, i8* %127, align 1, !dbg !2068
  %129 = load i8**, i8*** %3, align 8, !dbg !2069
  %130 = load i8*, i8** %129, align 8, !dbg !2071
  %131 = load i8, i8* %130, align 1, !dbg !2072
  %132 = sext i8 %131 to i32, !dbg !2072
  %133 = icmp eq i32 %132, 32, !dbg !2073
  br i1 %133, label %134, label %138, !dbg !2074

; <label>:134:                                    ; preds = %125
  %135 = load i8**, i8*** %3, align 8, !dbg !2075
  %136 = load i8*, i8** %135, align 8, !dbg !2076
  %137 = getelementptr inbounds i8, i8* %136, i32 1, !dbg !2076
  store i8* %137, i8** %135, align 8, !dbg !2076
  br label %138, !dbg !2077

; <label>:138:                                    ; preds = %134, %125
  br label %139, !dbg !2078

; <label>:139:                                    ; preds = %138, %117
  %140 = load i8*, i8** %4, align 8, !dbg !2079
  store i8* %140, i8** %2, align 8, !dbg !2080
  br label %141, !dbg !2080

; <label>:141:                                    ; preds = %139, %43, %18, %10
  %142 = load i8*, i8** %2, align 8, !dbg !2081
  ret i8* %142, !dbg !2081
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @cmd_get_params(i8*, i8**, i32, ...) #0 !dbg !2082 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._WI_ITEM_REC*, align 8
  %9 = alloca %struct.CMD_TEMP_REC*, align 8
  %10 = alloca %struct._GHashTable**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2085, metadata !540), !dbg !2086
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2087, metadata !540), !dbg !2088
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2089, metadata !540), !dbg !2090
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %8, metadata !2091, metadata !540), !dbg !2092
  call void @llvm.dbg.declare(metadata %struct.CMD_TEMP_REC** %9, metadata !2093, metadata !540), !dbg !2094
  call void @llvm.dbg.declare(metadata %struct._GHashTable*** %10, metadata !2095, metadata !540), !dbg !2096
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2097, metadata !540), !dbg !2098
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2099, metadata !540), !dbg !2100
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2101, metadata !540), !dbg !2102
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %14, metadata !2103, metadata !540), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2119, metadata !540), !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2121, metadata !540), !dbg !2122
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2123, metadata !540), !dbg !2124
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2125, metadata !540), !dbg !2126
  br label %19, !dbg !2127, !llvm.loop !2128

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %5, align 8, !dbg !2129
  %21 = icmp ne i8* %20, null, !dbg !2133
  br i1 %21, label %22, label %23, !dbg !2129

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2134

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cmd_get_params, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !2137
  store i32 0, i32* %4, align 4, !dbg !2140
  br label %235, !dbg !2140

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2141

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2143
  %27 = bitcast %struct.__va_list_tag* %26 to i8*, !dbg !2143
  call void @llvm.va_start(i8* %27), !dbg !2143
  %28 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !2144
  %29 = bitcast i8* %28 to %struct.CMD_TEMP_REC*, !dbg !2145
  store %struct.CMD_TEMP_REC* %29, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2146
  %30 = load i8*, i8** %5, align 8, !dbg !2147
  %31 = call noalias i8* @g_strdup(i8* %30), !dbg !2148
  %32 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2149
  %33 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %32, i32 0, i32 0, !dbg !2150
  store i8* %31, i8** %33, align 8, !dbg !2151
  %34 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2152
  %35 = bitcast %struct.CMD_TEMP_REC* %34 to i8*, !dbg !2152
  %36 = load i8**, i8*** %6, align 8, !dbg !2153
  store i8* %35, i8** %36, align 8, !dbg !2154
  %37 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2155
  %38 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %37, i32 0, i32 0, !dbg !2156
  %39 = load i8*, i8** %38, align 8, !dbg !2156
  store i8* %39, i8** %13, align 8, !dbg !2157
  store i32 0, i32* %16, align 4, !dbg !2158
  %40 = load i32, i32* %7, align 4, !dbg !2159
  %41 = and i32 %40, 65536, !dbg !2160
  %42 = icmp eq i32 %41, 0, !dbg !2161
  br i1 %42, label %43, label %44, !dbg !2162

; <label>:43:                                     ; preds = %25
  br label %63, !dbg !2163

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2165
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 0, !dbg !2165
  %47 = load i32, i32* %46, align 16, !dbg !2165
  %48 = icmp ule i32 %47, 40, !dbg !2165
  br i1 %48, label %49, label %55, !dbg !2165

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 3, !dbg !2166
  %51 = load i8*, i8** %50, align 16, !dbg !2166
  %52 = getelementptr i8, i8* %51, i32 %47, !dbg !2166
  %53 = bitcast i8* %52 to %struct._WI_ITEM_REC**, !dbg !2166
  %54 = add i32 %47, 8, !dbg !2166
  store i32 %54, i32* %46, align 16, !dbg !2166
  br label %60, !dbg !2166

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 2, !dbg !2167
  %57 = load i8*, i8** %56, align 8, !dbg !2167
  %58 = bitcast i8* %57 to %struct._WI_ITEM_REC**, !dbg !2167
  %59 = getelementptr i8, i8* %57, i32 8, !dbg !2167
  store i8* %59, i8** %56, align 8, !dbg !2167
  br label %60, !dbg !2167

; <label>:60:                                     ; preds = %55, %49
  %61 = phi %struct._WI_ITEM_REC** [ %53, %49 ], [ %58, %55 ], !dbg !2169
  %62 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %61, align 8, !dbg !2169
  br label %63, !dbg !2171

; <label>:63:                                     ; preds = %60, %43
  %64 = phi %struct._WI_ITEM_REC* [ null, %43 ], [ %62, %60 ], !dbg !2172
  store %struct._WI_ITEM_REC* %64, %struct._WI_ITEM_REC** %8, align 8, !dbg !2173
  %65 = load i32, i32* %7, align 4, !dbg !2174
  %66 = and i32 %65, 16384, !dbg !2176
  %67 = icmp ne i32 %66, 0, !dbg !2176
  br i1 %67, label %68, label %116, !dbg !2177

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2178
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0, !dbg !2178
  %71 = load i32, i32* %70, align 16, !dbg !2178
  %72 = icmp ule i32 %71, 40, !dbg !2178
  br i1 %72, label %73, label %79, !dbg !2178

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3, !dbg !2180
  %75 = load i8*, i8** %74, align 16, !dbg !2180
  %76 = getelementptr i8, i8* %75, i32 %71, !dbg !2180
  %77 = bitcast i8* %76 to i8**, !dbg !2180
  %78 = add i32 %71, 8, !dbg !2180
  store i32 %78, i32* %70, align 16, !dbg !2180
  br label %84, !dbg !2180

; <label>:79:                                     ; preds = %68
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2, !dbg !2182
  %81 = load i8*, i8** %80, align 8, !dbg !2182
  %82 = bitcast i8* %81 to i8**, !dbg !2182
  %83 = getelementptr i8, i8* %81, i32 8, !dbg !2182
  store i8* %83, i8** %80, align 8, !dbg !2182
  br label %84, !dbg !2182

; <label>:84:                                     ; preds = %79, %73
  %85 = phi i8** [ %77, %73 ], [ %82, %79 ], !dbg !2184
  %86 = load i8*, i8** %85, align 8, !dbg !2184
  store i8* %86, i8** %12, align 8, !dbg !2186
  %87 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2187
  %88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %87, i32 0, i32 0, !dbg !2187
  %89 = load i32, i32* %88, align 16, !dbg !2187
  %90 = icmp ule i32 %89, 40, !dbg !2187
  br i1 %90, label %91, label %97, !dbg !2187

; <label>:91:                                     ; preds = %84
  %92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %87, i32 0, i32 3, !dbg !2188
  %93 = load i8*, i8** %92, align 16, !dbg !2188
  %94 = getelementptr i8, i8* %93, i32 %89, !dbg !2188
  %95 = bitcast i8* %94 to %struct._GHashTable***, !dbg !2188
  %96 = add i32 %89, 8, !dbg !2188
  store i32 %96, i32* %88, align 16, !dbg !2188
  br label %102, !dbg !2188

; <label>:97:                                     ; preds = %84
  %98 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %87, i32 0, i32 2, !dbg !2189
  %99 = load i8*, i8** %98, align 8, !dbg !2189
  %100 = bitcast i8* %99 to %struct._GHashTable***, !dbg !2189
  %101 = getelementptr i8, i8* %99, i32 8, !dbg !2189
  store i8* %101, i8** %98, align 8, !dbg !2189
  br label %102, !dbg !2189

; <label>:102:                                    ; preds = %97, %91
  %103 = phi %struct._GHashTable*** [ %95, %91 ], [ %100, %97 ], !dbg !2190
  %104 = load %struct._GHashTable**, %struct._GHashTable*** %103, align 8, !dbg !2190
  store %struct._GHashTable** %104, %struct._GHashTable*** %10, align 8, !dbg !2191
  %105 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !2192
  %106 = load %struct._GHashTable**, %struct._GHashTable*** %10, align 8, !dbg !2193
  store %struct._GHashTable* %105, %struct._GHashTable** %106, align 8, !dbg !2194
  %107 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2195
  %108 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %107, i32 0, i32 1, !dbg !2196
  store %struct._GHashTable* %105, %struct._GHashTable** %108, align 8, !dbg !2197
  %109 = load i32, i32* %7, align 4, !dbg !2198
  %110 = and i32 %109, 32768, !dbg !2199
  store i32 %110, i32* %17, align 4, !dbg !2200
  %111 = load i32, i32* %17, align 4, !dbg !2201
  %112 = load i8*, i8** %12, align 8, !dbg !2202
  %113 = load %struct._GHashTable**, %struct._GHashTable*** %10, align 8, !dbg !2203
  %114 = load %struct._GHashTable*, %struct._GHashTable** %113, align 8, !dbg !2204
  %115 = call i32 @get_cmd_options(i8** %13, i32 %111, i8* %112, %struct._GHashTable* %114), !dbg !2205
  store i32 %115, i32* %16, align 4, !dbg !2206
  br label %116, !dbg !2207

; <label>:116:                                    ; preds = %102, %63
  %117 = load i32, i32* %16, align 4, !dbg !2208
  %118 = icmp ne i32 %117, 0, !dbg !2208
  br i1 %118, label %216, label %119, !dbg !2210

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %7, align 4, !dbg !2211
  %121 = and i32 %120, 4095, !dbg !2213
  store i32 %121, i32* %15, align 4, !dbg !2214
  %122 = load i32, i32* %7, align 4, !dbg !2215
  %123 = and i32 %122, 65536, !dbg !2217
  %124 = icmp ne i32 %123, 0, !dbg !2217
  br i1 %124, label %125, label %159, !dbg !2218

; <label>:125:                                    ; preds = %119
  %126 = load i32, i32* %7, align 4, !dbg !2219
  %127 = and i32 %126, 196608, !dbg !2221
  %128 = icmp eq i32 %127, 196608, !dbg !2222
  %129 = zext i1 %128 to i32, !dbg !2222
  store i32 %129, i32* %18, align 4, !dbg !2223
  %130 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !2224
  %131 = load i32, i32* %18, align 4, !dbg !2225
  %132 = call i8* @get_optional_channel(%struct._WI_ITEM_REC* %130, i8** %13, i32 %131), !dbg !2226
  store i8* %132, i8** %12, align 8, !dbg !2227
  %133 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2228
  %134 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 0, !dbg !2228
  %135 = load i32, i32* %134, align 16, !dbg !2228
  %136 = icmp ule i32 %135, 40, !dbg !2228
  br i1 %136, label %137, label %143, !dbg !2228

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 3, !dbg !2229
  %139 = load i8*, i8** %138, align 16, !dbg !2229
  %140 = getelementptr i8, i8* %139, i32 %135, !dbg !2229
  %141 = bitcast i8* %140 to i8***, !dbg !2229
  %142 = add i32 %135, 8, !dbg !2229
  store i32 %142, i32* %134, align 16, !dbg !2229
  br label %148, !dbg !2229

; <label>:143:                                    ; preds = %125
  %144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %133, i32 0, i32 2, !dbg !2231
  %145 = load i8*, i8** %144, align 8, !dbg !2231
  %146 = bitcast i8* %145 to i8***, !dbg !2231
  %147 = getelementptr i8, i8* %145, i32 8, !dbg !2231
  store i8* %147, i8** %144, align 8, !dbg !2231
  br label %148, !dbg !2231

; <label>:148:                                    ; preds = %143, %137
  %149 = phi i8*** [ %141, %137 ], [ %146, %143 ], !dbg !2233
  %150 = load i8**, i8*** %149, align 8, !dbg !2233
  store i8** %150, i8*** %11, align 8, !dbg !2235
  %151 = load i8**, i8*** %11, align 8, !dbg !2236
  %152 = icmp ne i8** %151, null, !dbg !2238
  br i1 %152, label %153, label %156, !dbg !2239

; <label>:153:                                    ; preds = %148
  %154 = load i8*, i8** %12, align 8, !dbg !2240
  %155 = load i8**, i8*** %11, align 8, !dbg !2242
  store i8* %154, i8** %155, align 8, !dbg !2243
  br label %156, !dbg !2244

; <label>:156:                                    ; preds = %153, %148
  %157 = load i32, i32* %15, align 4, !dbg !2245
  %158 = add nsw i32 %157, -1, !dbg !2245
  store i32 %158, i32* %15, align 4, !dbg !2245
  br label %159, !dbg !2246

; <label>:159:                                    ; preds = %156, %119
  br label %160, !dbg !2247

; <label>:160:                                    ; preds = %214, %159
  %161 = load i32, i32* %15, align 4, !dbg !2248
  %162 = add nsw i32 %161, -1, !dbg !2248
  store i32 %162, i32* %15, align 4, !dbg !2248
  %163 = icmp sgt i32 %161, 0, !dbg !2250
  br i1 %163, label %164, label %215, !dbg !2251

; <label>:164:                                    ; preds = %160
  %165 = load i32, i32* %15, align 4, !dbg !2252
  %166 = icmp eq i32 %165, 0, !dbg !2255
  br i1 %166, label %167, label %180, !dbg !2256

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %7, align 4, !dbg !2257
  %169 = and i32 %168, 8192, !dbg !2259
  %170 = icmp ne i32 %169, 0, !dbg !2259
  br i1 %170, label %171, label %180, !dbg !2260

; <label>:171:                                    ; preds = %167
  %172 = load i8*, i8** %13, align 8, !dbg !2261
  store i8* %172, i8** %12, align 8, !dbg !2263
  %173 = load i32, i32* %7, align 4, !dbg !2264
  %174 = and i32 %173, 262144, !dbg !2266
  %175 = icmp ne i32 %174, 0, !dbg !2266
  br i1 %175, label %176, label %179, !dbg !2267

; <label>:176:                                    ; preds = %171
  %177 = load i8*, i8** %12, align 8, !dbg !2268
  %178 = call i8* @g_strchomp(i8* %177), !dbg !2270
  store i8* %178, i8** %12, align 8, !dbg !2271
  br label %179, !dbg !2272

; <label>:179:                                    ; preds = %176, %171
  br label %190, !dbg !2273

; <label>:180:                                    ; preds = %167, %164
  %181 = load i32, i32* %7, align 4, !dbg !2274
  %182 = and i32 %181, 4096, !dbg !2276
  %183 = icmp ne i32 %182, 0, !dbg !2276
  br i1 %183, label %184, label %186, !dbg !2277

; <label>:184:                                    ; preds = %180
  %185 = call i8* @cmd_get_param(i8** %13), !dbg !2278
  br label %188, !dbg !2279

; <label>:186:                                    ; preds = %180
  %187 = call i8* @cmd_get_quoted_param(i8** %13), !dbg !2281
  br label %188, !dbg !2282

; <label>:188:                                    ; preds = %186, %184
  %189 = phi i8* [ %185, %184 ], [ %187, %186 ], !dbg !2284
  store i8* %189, i8** %12, align 8, !dbg !2286
  br label %190

; <label>:190:                                    ; preds = %188, %179
  %191 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2287
  %192 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 0, !dbg !2287
  %193 = load i32, i32* %192, align 16, !dbg !2287
  %194 = icmp ule i32 %193, 40, !dbg !2287
  br i1 %194, label %195, label %201, !dbg !2287

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 3, !dbg !2288
  %197 = load i8*, i8** %196, align 16, !dbg !2288
  %198 = getelementptr i8, i8* %197, i32 %193, !dbg !2288
  %199 = bitcast i8* %198 to i8***, !dbg !2288
  %200 = add i32 %193, 8, !dbg !2288
  store i32 %200, i32* %192, align 16, !dbg !2288
  br label %206, !dbg !2288

; <label>:201:                                    ; preds = %190
  %202 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %191, i32 0, i32 2, !dbg !2290
  %203 = load i8*, i8** %202, align 8, !dbg !2290
  %204 = bitcast i8* %203 to i8***, !dbg !2290
  %205 = getelementptr i8, i8* %203, i32 8, !dbg !2290
  store i8* %205, i8** %202, align 8, !dbg !2290
  br label %206, !dbg !2290

; <label>:206:                                    ; preds = %201, %195
  %207 = phi i8*** [ %199, %195 ], [ %204, %201 ], !dbg !2292
  %208 = load i8**, i8*** %207, align 8, !dbg !2292
  store i8** %208, i8*** %11, align 8, !dbg !2294
  %209 = load i8**, i8*** %11, align 8, !dbg !2295
  %210 = icmp ne i8** %209, null, !dbg !2297
  br i1 %210, label %211, label %214, !dbg !2298

; <label>:211:                                    ; preds = %206
  %212 = load i8*, i8** %12, align 8, !dbg !2299
  %213 = load i8**, i8*** %11, align 8, !dbg !2301
  store i8* %212, i8** %213, align 8, !dbg !2302
  br label %214, !dbg !2303

; <label>:214:                                    ; preds = %211, %206
  br label %160, !dbg !2304, !llvm.loop !2306

; <label>:215:                                    ; preds = %160
  br label %216, !dbg !2307

; <label>:216:                                    ; preds = %215, %116
  %217 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i32 0, i32 0, !dbg !2308
  %218 = bitcast %struct.__va_list_tag* %217 to i8*, !dbg !2308
  call void @llvm.va_end(i8* %218), !dbg !2308
  %219 = load i32, i32* %16, align 4, !dbg !2309
  %220 = icmp ne i32 %219, 0, !dbg !2309
  br i1 %220, label %221, label %230, !dbg !2311

; <label>:221:                                    ; preds = %216
  %222 = load i32, i32* %16, align 4, !dbg !2312
  %223 = sext i32 %222 to i64, !dbg !2314
  %224 = inttoptr i64 %223 to i8*, !dbg !2315
  %225 = load i8*, i8** %13, align 8, !dbg !2316
  %226 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* %224, i8* %225), !dbg !2317
  call void @signal_stop(), !dbg !2318
  %227 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %9, align 8, !dbg !2319
  %228 = bitcast %struct.CMD_TEMP_REC* %227 to i8*, !dbg !2319
  call void @cmd_params_free(i8* %228), !dbg !2320
  %229 = load i8**, i8*** %6, align 8, !dbg !2321
  store i8* null, i8** %229, align 8, !dbg !2322
  br label %230, !dbg !2323

; <label>:230:                                    ; preds = %221, %216
  %231 = load i32, i32* %16, align 4, !dbg !2324
  %232 = icmp ne i32 %231, 0, !dbg !2325
  %233 = xor i1 %232, true, !dbg !2325
  %234 = zext i1 %233 to i32, !dbg !2325
  store i32 %234, i32* %4, align 4, !dbg !2326
  br label %235, !dbg !2326

; <label>:235:                                    ; preds = %230, %23
  %236 = load i32, i32* %4, align 4, !dbg !2327
  ret i32 %236, !dbg !2327
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_istr_hash(i8*) #2

declare i32 @g_istr_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_cmd_options(i8**, i32, i8*, %struct._GHashTable*) #0 !dbg !2328 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GHashTable*, align 8
  %10 = alloca %struct.COMMAND_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2331, metadata !540), !dbg !2332
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2333, metadata !540), !dbg !2334
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2335, metadata !540), !dbg !2336
  store %struct._GHashTable* %3, %struct._GHashTable** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %9, metadata !2337, metadata !540), !dbg !2338
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %10, metadata !2339, metadata !540), !dbg !2340
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2341, metadata !540), !dbg !2342
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2343, metadata !540), !dbg !2344
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !2345, metadata !540), !dbg !2346
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2347, metadata !540), !dbg !2348
  %15 = load i8*, i8** %8, align 8, !dbg !2349
  %16 = icmp eq i8* %15, null, !dbg !2350
  br i1 %16, label %17, label %18, !dbg !2349

; <label>:17:                                     ; preds = %4
  br label %21, !dbg !2351

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %8, align 8, !dbg !2353
  %20 = call %struct.COMMAND_REC* @command_find(i8* %19), !dbg !2355
  br label %21, !dbg !2356

; <label>:21:                                     ; preds = %18, %17
  %22 = phi %struct.COMMAND_REC* [ null, %17 ], [ %20, %18 ], !dbg !2357
  store %struct.COMMAND_REC* %22, %struct.COMMAND_REC** %10, align 8, !dbg !2359
  %23 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2360
  %24 = icmp eq %struct.COMMAND_REC* %23, null, !dbg !2361
  br i1 %24, label %25, label %26, !dbg !2360

; <label>:25:                                     ; preds = %21
  br label %30, !dbg !2362

; <label>:26:                                     ; preds = %21
  %27 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2363
  %28 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %27, i32 0, i32 3, !dbg !2364
  %29 = load i8**, i8*** %28, align 8, !dbg !2364
  br label %30, !dbg !2365

; <label>:30:                                     ; preds = %26, %25
  %31 = phi i8** [ null, %25 ], [ %29, %26 ], !dbg !2366
  store i8** %31, i8*** %13, align 8, !dbg !2367
  store i8* null, i8** %11, align 8, !dbg !2368
  store i32 -1, i32* %14, align 4, !dbg !2369
  br label %32, !dbg !2370

; <label>:32:                                     ; preds = %333, %289, %30
  %33 = load i8**, i8*** %6, align 8, !dbg !2371
  %34 = load i8*, i8** %33, align 8, !dbg !2376
  %35 = load i8, i8* %34, align 1, !dbg !2377
  %36 = sext i8 %35 to i32, !dbg !2377
  %37 = icmp eq i32 %36, 0, !dbg !2378
  br i1 %37, label %44, label %38, !dbg !2379

; <label>:38:                                     ; preds = %32
  %39 = load i8**, i8*** %6, align 8, !dbg !2380
  %40 = load i8*, i8** %39, align 8, !dbg !2382
  %41 = load i8, i8* %40, align 1, !dbg !2383
  %42 = sext i8 %41 to i32, !dbg !2383
  %43 = icmp eq i32 %42, 45, !dbg !2384
  br i1 %43, label %44, label %65, !dbg !2385

; <label>:44:                                     ; preds = %38, %32
  %45 = load i8*, i8** %11, align 8, !dbg !2386
  %46 = icmp ne i8* %45, null, !dbg !2389
  br i1 %46, label %47, label %64, !dbg !2390

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %14, align 4, !dbg !2391
  %49 = sext i32 %48 to i64, !dbg !2393
  %50 = load i8**, i8*** %13, align 8, !dbg !2393
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49, !dbg !2393
  %52 = load i8*, i8** %51, align 8, !dbg !2393
  %53 = load i8, i8* %52, align 1, !dbg !2394
  %54 = sext i8 %53 to i32, !dbg !2394
  %55 = icmp eq i32 %54, 43, !dbg !2395
  br i1 %55, label %56, label %64, !dbg !2396

; <label>:56:                                     ; preds = %47
  %57 = load i32, i32* %14, align 4, !dbg !2397
  %58 = sext i32 %57 to i64, !dbg !2399
  %59 = load i8**, i8*** %13, align 8, !dbg !2399
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58, !dbg !2399
  %61 = load i8*, i8** %60, align 8, !dbg !2399
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2400
  %63 = load i8**, i8*** %6, align 8, !dbg !2401
  store i8* %62, i8** %63, align 8, !dbg !2402
  store i32 -1, i32* %5, align 4, !dbg !2403
  br label %335, !dbg !2403

; <label>:64:                                     ; preds = %47, %44
  br label %65, !dbg !2404

; <label>:65:                                     ; preds = %64, %38
  %66 = load i8**, i8*** %6, align 8, !dbg !2405
  %67 = load i8*, i8** %66, align 8, !dbg !2407
  %68 = load i8, i8* %67, align 1, !dbg !2408
  %69 = sext i8 %68 to i32, !dbg !2408
  %70 = icmp eq i32 %69, 45, !dbg !2409
  br i1 %70, label %71, label %290, !dbg !2410

; <label>:71:                                     ; preds = %65
  %72 = load i8**, i8*** %6, align 8, !dbg !2411
  %73 = load i8*, i8** %72, align 8, !dbg !2413
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !2413
  store i8* %74, i8** %72, align 8, !dbg !2413
  %75 = load i8**, i8*** %6, align 8, !dbg !2414
  %76 = load i8*, i8** %75, align 8, !dbg !2416
  %77 = load i8, i8* %76, align 1, !dbg !2417
  %78 = sext i8 %77 to i32, !dbg !2417
  %79 = icmp eq i32 %78, 45, !dbg !2418
  br i1 %79, label %80, label %102, !dbg !2419

; <label>:80:                                     ; preds = %71
  %81 = load i8**, i8*** %6, align 8, !dbg !2420
  %82 = load i8*, i8** %81, align 8, !dbg !2422
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !2423
  %84 = load i8, i8* %83, align 1, !dbg !2423
  %85 = sext i8 %84 to i32, !dbg !2423
  %86 = icmp eq i32 %85, 32, !dbg !2424
  br i1 %86, label %87, label %102, !dbg !2425

; <label>:87:                                     ; preds = %80
  %88 = load i8**, i8*** %6, align 8, !dbg !2426
  %89 = load i8*, i8** %88, align 8, !dbg !2428
  %90 = getelementptr inbounds i8, i8* %89, i32 1, !dbg !2428
  store i8* %90, i8** %88, align 8, !dbg !2428
  br label %91, !dbg !2429

; <label>:91:                                     ; preds = %97, %87
  %92 = load i8**, i8*** %6, align 8, !dbg !2430
  %93 = load i8*, i8** %92, align 8, !dbg !2432
  %94 = load i8, i8* %93, align 1, !dbg !2433
  %95 = sext i8 %94 to i32, !dbg !2433
  %96 = icmp eq i32 %95, 32, !dbg !2434
  br i1 %96, label %97, label %101, !dbg !2435

; <label>:97:                                     ; preds = %91
  %98 = load i8**, i8*** %6, align 8, !dbg !2436
  %99 = load i8*, i8** %98, align 8, !dbg !2438
  %100 = getelementptr inbounds i8, i8* %99, i32 1, !dbg !2438
  store i8* %100, i8** %98, align 8, !dbg !2438
  br label %91, !dbg !2439, !llvm.loop !2440

; <label>:101:                                    ; preds = %91
  br label %334, !dbg !2441

; <label>:102:                                    ; preds = %80, %71
  %103 = load i8**, i8*** %6, align 8, !dbg !2442
  %104 = load i8*, i8** %103, align 8, !dbg !2444
  %105 = load i8, i8* %104, align 1, !dbg !2445
  %106 = sext i8 %105 to i32, !dbg !2445
  %107 = icmp eq i32 %106, 0, !dbg !2446
  br i1 %107, label %108, label %109, !dbg !2447

; <label>:108:                                    ; preds = %102
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8** %11, align 8, !dbg !2448
  br label %123, !dbg !2449

; <label>:109:                                    ; preds = %102
  %110 = load i8**, i8*** %6, align 8, !dbg !2450
  %111 = load i8*, i8** %110, align 8, !dbg !2452
  %112 = load i8, i8* %111, align 1, !dbg !2453
  %113 = sext i8 %112 to i32, !dbg !2453
  %114 = icmp ne i32 %113, 32, !dbg !2454
  br i1 %114, label %115, label %118, !dbg !2455

; <label>:115:                                    ; preds = %109
  %116 = load i8**, i8*** %6, align 8, !dbg !2456
  %117 = call i8* @cmd_get_param(i8** %116), !dbg !2457
  store i8* %117, i8** %11, align 8, !dbg !2458
  br label %122, !dbg !2459

; <label>:118:                                    ; preds = %109
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8** %11, align 8, !dbg !2460
  %119 = load i8**, i8*** %6, align 8, !dbg !2462
  %120 = load i8*, i8** %119, align 8, !dbg !2463
  %121 = getelementptr inbounds i8, i8* %120, i32 1, !dbg !2463
  store i8* %121, i8** %119, align 8, !dbg !2463
  br label %122

; <label>:122:                                    ; preds = %118, %115
  br label %123

; <label>:123:                                    ; preds = %122, %108
  %124 = load i8**, i8*** %13, align 8, !dbg !2464
  %125 = icmp eq i8** %124, null, !dbg !2465
  br i1 %125, label %126, label %127, !dbg !2464

; <label>:126:                                    ; preds = %123
  br label %131, !dbg !2466

; <label>:127:                                    ; preds = %123
  %128 = load i8**, i8*** %13, align 8, !dbg !2468
  %129 = load i8*, i8** %11, align 8, !dbg !2469
  %130 = call i32 @option_find(i8** %128, i8* %129), !dbg !2470
  br label %131, !dbg !2471

; <label>:131:                                    ; preds = %127, %126
  %132 = phi i32 [ -1, %126 ], [ %130, %127 ], !dbg !2473
  store i32 %132, i32* %14, align 4, !dbg !2475
  %133 = load i32, i32* %14, align 4, !dbg !2476
  %134 = icmp eq i32 %133, -1, !dbg !2478
  br i1 %134, label %135, label %152, !dbg !2479

; <label>:135:                                    ; preds = %131
  %136 = load i8**, i8*** %13, align 8, !dbg !2480
  %137 = icmp ne i8** %136, null, !dbg !2482
  br i1 %137, label %138, label %152, !dbg !2483

; <label>:138:                                    ; preds = %135
  %139 = load i8*, i8** %11, align 8, !dbg !2484
  %140 = call i32 @is_numeric(i8* %139, i8 signext 0), !dbg !2485
  %141 = icmp ne i32 %140, 0, !dbg !2485
  br i1 %141, label %142, label %152, !dbg !2486

; <label>:142:                                    ; preds = %138
  %143 = load i8**, i8*** %13, align 8, !dbg !2487
  %144 = call i32 @option_find(i8** %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !2489
  store i32 %144, i32* %14, align 4, !dbg !2490
  %145 = load i32, i32* %14, align 4, !dbg !2491
  %146 = icmp ne i32 %145, -1, !dbg !2493
  br i1 %146, label %147, label %151, !dbg !2494

; <label>:147:                                    ; preds = %142
  %148 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2495
  %149 = load i8*, i8** %11, align 8, !dbg !2497
  %150 = call i32 @g_hash_table_insert(%struct._GHashTable* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* %149), !dbg !2498
  store i32 -3, i32* %14, align 4, !dbg !2499
  br label %151, !dbg !2500

; <label>:151:                                    ; preds = %147, %142
  br label %152, !dbg !2501

; <label>:152:                                    ; preds = %151, %138, %135, %131
  %153 = load i32, i32* %14, align 4, !dbg !2502
  %154 = icmp eq i32 %153, -1, !dbg !2504
  br i1 %154, label %155, label %161, !dbg !2505

; <label>:155:                                    ; preds = %152
  %156 = load i32, i32* %7, align 4, !dbg !2506
  %157 = icmp ne i32 %156, 0, !dbg !2506
  br i1 %157, label %161, label %158, !dbg !2508

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %11, align 8, !dbg !2509
  %160 = load i8**, i8*** %6, align 8, !dbg !2511
  store i8* %159, i8** %160, align 8, !dbg !2512
  store i32 -3, i32* %5, align 4, !dbg !2513
  br label %335, !dbg !2513

; <label>:161:                                    ; preds = %155, %152
  %162 = load i32, i32* %14, align 4, !dbg !2514
  %163 = icmp eq i32 %162, -2, !dbg !2516
  br i1 %163, label %164, label %170, !dbg !2517

; <label>:164:                                    ; preds = %161
  %165 = load i32, i32* %7, align 4, !dbg !2518
  %166 = icmp ne i32 %165, 0, !dbg !2518
  br i1 %166, label %170, label %167, !dbg !2520

; <label>:167:                                    ; preds = %164
  %168 = load i8*, i8** %11, align 8, !dbg !2521
  %169 = load i8**, i8*** %6, align 8, !dbg !2523
  store i8* %168, i8** %169, align 8, !dbg !2524
  store i32 -2, i32* %5, align 4, !dbg !2525
  br label %335, !dbg !2525

; <label>:170:                                    ; preds = %164, %161
  %171 = load i32, i32* %14, align 4, !dbg !2526
  %172 = icmp sge i32 %171, 0, !dbg !2528
  br i1 %172, label %173, label %219, !dbg !2529

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %14, align 4, !dbg !2530
  %175 = sext i32 %174 to i64, !dbg !2532
  %176 = load i8**, i8*** %13, align 8, !dbg !2532
  %177 = getelementptr inbounds i8*, i8** %176, i64 %175, !dbg !2532
  %178 = load i8*, i8** %177, align 8, !dbg !2532
  %179 = load i32, i32* %14, align 4, !dbg !2533
  %180 = sext i32 %179 to i64, !dbg !2534
  %181 = load i8**, i8*** %13, align 8, !dbg !2534
  %182 = getelementptr inbounds i8*, i8** %181, i64 %180, !dbg !2534
  %183 = load i8*, i8** %182, align 8, !dbg !2534
  %184 = load i8, i8* %183, align 1, !dbg !2535
  %185 = sext i8 %184 to i32, !dbg !2536
  %186 = icmp eq i32 %185, 33, !dbg !2537
  br i1 %186, label %214, label %187, !dbg !2538

; <label>:187:                                    ; preds = %173
  %188 = load i32, i32* %14, align 4, !dbg !2539
  %189 = sext i32 %188 to i64, !dbg !2541
  %190 = load i8**, i8*** %13, align 8, !dbg !2541
  %191 = getelementptr inbounds i8*, i8** %190, i64 %189, !dbg !2541
  %192 = load i8*, i8** %191, align 8, !dbg !2541
  %193 = load i8, i8* %192, align 1, !dbg !2542
  %194 = sext i8 %193 to i32, !dbg !2543
  %195 = icmp eq i32 %194, 45, !dbg !2544
  br i1 %195, label %214, label %196, !dbg !2545

; <label>:196:                                    ; preds = %187
  %197 = load i32, i32* %14, align 4, !dbg !2546
  %198 = sext i32 %197 to i64, !dbg !2548
  %199 = load i8**, i8*** %13, align 8, !dbg !2548
  %200 = getelementptr inbounds i8*, i8** %199, i64 %198, !dbg !2548
  %201 = load i8*, i8** %200, align 8, !dbg !2548
  %202 = load i8, i8* %201, align 1, !dbg !2549
  %203 = sext i8 %202 to i32, !dbg !2550
  %204 = icmp eq i32 %203, 43, !dbg !2551
  br i1 %204, label %214, label %205, !dbg !2552

; <label>:205:                                    ; preds = %196
  %206 = load i32, i32* %14, align 4, !dbg !2553
  %207 = sext i32 %206 to i64, !dbg !2555
  %208 = load i8**, i8*** %13, align 8, !dbg !2555
  %209 = getelementptr inbounds i8*, i8** %208, i64 %207, !dbg !2555
  %210 = load i8*, i8** %209, align 8, !dbg !2555
  %211 = load i8, i8* %210, align 1, !dbg !2556
  %212 = sext i8 %211 to i32, !dbg !2557
  %213 = icmp eq i32 %212, 64, !dbg !2558
  br label %214, !dbg !2559

; <label>:214:                                    ; preds = %205, %196, %187, %173
  %215 = phi i1 [ true, %196 ], [ true, %187 ], [ true, %173 ], [ %213, %205 ]
  %216 = zext i1 %215 to i32, !dbg !2560
  %217 = sext i32 %216 to i64, !dbg !2562
  %218 = getelementptr inbounds i8, i8* %178, i64 %217, !dbg !2562
  store i8* %218, i8** %11, align 8, !dbg !2563
  br label %219, !dbg !2564

; <label>:219:                                    ; preds = %214, %170
  %220 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2565
  %221 = icmp ne %struct._GHashTable* %220, null, !dbg !2567
  br i1 %221, label %222, label %229, !dbg !2568

; <label>:222:                                    ; preds = %219
  %223 = load i32, i32* %14, align 4, !dbg !2569
  %224 = icmp ne i32 %223, -3, !dbg !2571
  br i1 %224, label %225, label %229, !dbg !2572

; <label>:225:                                    ; preds = %222
  %226 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2573
  %227 = load i8*, i8** %11, align 8, !dbg !2574
  %228 = call i32 @g_hash_table_insert(%struct._GHashTable* %226, i8* %227, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0)), !dbg !2575
  br label %229, !dbg !2575

; <label>:229:                                    ; preds = %225, %222, %219
  %230 = load i32, i32* %14, align 4, !dbg !2576
  %231 = icmp slt i32 %230, 0, !dbg !2578
  br i1 %231, label %277, label %232, !dbg !2579

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* %14, align 4, !dbg !2580
  %234 = sext i32 %233 to i64, !dbg !2582
  %235 = load i8**, i8*** %13, align 8, !dbg !2582
  %236 = getelementptr inbounds i8*, i8** %235, i64 %234, !dbg !2582
  %237 = load i8*, i8** %236, align 8, !dbg !2582
  %238 = load i8, i8* %237, align 1, !dbg !2583
  %239 = sext i8 %238 to i32, !dbg !2584
  %240 = icmp eq i32 %239, 33, !dbg !2585
  br i1 %240, label %268, label %241, !dbg !2586

; <label>:241:                                    ; preds = %232
  %242 = load i32, i32* %14, align 4, !dbg !2587
  %243 = sext i32 %242 to i64, !dbg !2589
  %244 = load i8**, i8*** %13, align 8, !dbg !2589
  %245 = getelementptr inbounds i8*, i8** %244, i64 %243, !dbg !2589
  %246 = load i8*, i8** %245, align 8, !dbg !2589
  %247 = load i8, i8* %246, align 1, !dbg !2590
  %248 = sext i8 %247 to i32, !dbg !2591
  %249 = icmp eq i32 %248, 45, !dbg !2592
  br i1 %249, label %268, label %250, !dbg !2593

; <label>:250:                                    ; preds = %241
  %251 = load i32, i32* %14, align 4, !dbg !2594
  %252 = sext i32 %251 to i64, !dbg !2596
  %253 = load i8**, i8*** %13, align 8, !dbg !2596
  %254 = getelementptr inbounds i8*, i8** %253, i64 %252, !dbg !2596
  %255 = load i8*, i8** %254, align 8, !dbg !2596
  %256 = load i8, i8* %255, align 1, !dbg !2597
  %257 = sext i8 %256 to i32, !dbg !2598
  %258 = icmp eq i32 %257, 43, !dbg !2599
  br i1 %258, label %268, label %259, !dbg !2600

; <label>:259:                                    ; preds = %250
  %260 = load i32, i32* %14, align 4, !dbg !2601
  %261 = sext i32 %260 to i64, !dbg !2603
  %262 = load i8**, i8*** %13, align 8, !dbg !2603
  %263 = getelementptr inbounds i8*, i8** %262, i64 %261, !dbg !2603
  %264 = load i8*, i8** %263, align 8, !dbg !2603
  %265 = load i8, i8* %264, align 1, !dbg !2604
  %266 = sext i8 %265 to i32, !dbg !2605
  %267 = icmp eq i32 %266, 64, !dbg !2606
  br i1 %267, label %268, label %277, !dbg !2607

; <label>:268:                                    ; preds = %259, %250, %241, %232
  %269 = load i32, i32* %14, align 4, !dbg !2608
  %270 = sext i32 %269 to i64, !dbg !2609
  %271 = load i8**, i8*** %13, align 8, !dbg !2609
  %272 = getelementptr inbounds i8*, i8** %271, i64 %270, !dbg !2609
  %273 = load i8*, i8** %272, align 8, !dbg !2609
  %274 = load i8, i8* %273, align 1, !dbg !2610
  %275 = sext i8 %274 to i32, !dbg !2610
  %276 = icmp eq i32 %275, 33, !dbg !2611
  br i1 %276, label %277, label %278, !dbg !2612

; <label>:277:                                    ; preds = %268, %259, %229
  store i8* null, i8** %11, align 8, !dbg !2614
  br label %278, !dbg !2615

; <label>:278:                                    ; preds = %277, %268
  br label %279, !dbg !2616

; <label>:279:                                    ; preds = %285, %278
  %280 = load i8**, i8*** %6, align 8, !dbg !2617
  %281 = load i8*, i8** %280, align 8, !dbg !2618
  %282 = load i8, i8* %281, align 1, !dbg !2619
  %283 = sext i8 %282 to i32, !dbg !2619
  %284 = icmp eq i32 %283, 32, !dbg !2620
  br i1 %284, label %285, label %289, !dbg !2621

; <label>:285:                                    ; preds = %279
  %286 = load i8**, i8*** %6, align 8, !dbg !2622
  %287 = load i8*, i8** %286, align 8, !dbg !2623
  %288 = getelementptr inbounds i8, i8* %287, i32 1, !dbg !2623
  store i8* %288, i8** %286, align 8, !dbg !2623
  br label %279, !dbg !2624, !llvm.loop !2625

; <label>:289:                                    ; preds = %279
  br label %32, !dbg !2626, !llvm.loop !2627

; <label>:290:                                    ; preds = %65
  %291 = load i8*, i8** %11, align 8, !dbg !2628
  %292 = icmp eq i8* %291, null, !dbg !2630
  br i1 %292, label %293, label %294, !dbg !2631

; <label>:293:                                    ; preds = %290
  br label %334, !dbg !2632

; <label>:294:                                    ; preds = %290
  %295 = load i32, i32* %14, align 4, !dbg !2633
  %296 = sext i32 %295 to i64, !dbg !2635
  %297 = load i8**, i8*** %13, align 8, !dbg !2635
  %298 = getelementptr inbounds i8*, i8** %297, i64 %296, !dbg !2635
  %299 = load i8*, i8** %298, align 8, !dbg !2635
  %300 = load i8, i8* %299, align 1, !dbg !2636
  %301 = sext i8 %300 to i32, !dbg !2636
  %302 = icmp eq i32 %301, 64, !dbg !2637
  br i1 %302, label %303, label %309, !dbg !2638

; <label>:303:                                    ; preds = %294
  %304 = load i8**, i8*** %6, align 8, !dbg !2639
  %305 = load i8*, i8** %304, align 8, !dbg !2641
  %306 = call i32 @is_numeric(i8* %305, i8 signext 32), !dbg !2642
  %307 = icmp ne i32 %306, 0, !dbg !2642
  br i1 %307, label %309, label %308, !dbg !2643

; <label>:308:                                    ; preds = %303
  br label %334, !dbg !2644

; <label>:309:                                    ; preds = %303, %294
  %310 = load i8**, i8*** %6, align 8, !dbg !2645
  %311 = call i8* @cmd_get_quoted_param(i8** %310), !dbg !2646
  store i8* %311, i8** %12, align 8, !dbg !2647
  %312 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2648
  %313 = icmp ne %struct._GHashTable* %312, null, !dbg !2650
  br i1 %313, label %314, label %322, !dbg !2651

; <label>:314:                                    ; preds = %309
  %315 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2652
  %316 = load i8*, i8** %11, align 8, !dbg !2654
  %317 = call i32 @g_hash_table_remove(%struct._GHashTable* %315, i8* %316), !dbg !2655
  %318 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !2656
  %319 = load i8*, i8** %11, align 8, !dbg !2657
  %320 = load i8*, i8** %12, align 8, !dbg !2658
  %321 = call i32 @g_hash_table_insert(%struct._GHashTable* %318, i8* %319, i8* %320), !dbg !2659
  br label %322, !dbg !2660

; <label>:322:                                    ; preds = %314, %309
  store i8* null, i8** %11, align 8, !dbg !2661
  br label %323, !dbg !2662

; <label>:323:                                    ; preds = %329, %322
  %324 = load i8**, i8*** %6, align 8, !dbg !2663
  %325 = load i8*, i8** %324, align 8, !dbg !2665
  %326 = load i8, i8* %325, align 1, !dbg !2666
  %327 = sext i8 %326 to i32, !dbg !2666
  %328 = icmp eq i32 %327, 32, !dbg !2667
  br i1 %328, label %329, label %333, !dbg !2668

; <label>:329:                                    ; preds = %323
  %330 = load i8**, i8*** %6, align 8, !dbg !2669
  %331 = load i8*, i8** %330, align 8, !dbg !2671
  %332 = getelementptr inbounds i8, i8* %331, i32 1, !dbg !2671
  store i8* %332, i8** %330, align 8, !dbg !2671
  br label %323, !dbg !2672, !llvm.loop !2673

; <label>:333:                                    ; preds = %323
  br label %32, !dbg !2674, !llvm.loop !2627

; <label>:334:                                    ; preds = %308, %293, %101
  store i32 0, i32* %5, align 4, !dbg !2676
  br label %335, !dbg !2676

; <label>:335:                                    ; preds = %334, %167, %158, %56
  %336 = load i32, i32* %5, align 4, !dbg !2677
  ret i32 %336, !dbg !2677
}

; Function Attrs: nounwind uwtable
define internal i8* @get_optional_channel(%struct._WI_ITEM_REC*, i8**, i32) #0 !dbg !2678 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._CHANNEL_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !2681, metadata !540), !dbg !2682
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2683, metadata !540), !dbg !2684
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2685, metadata !540), !dbg !2686
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %8, metadata !2687, metadata !540), !dbg !2688
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2689, metadata !540), !dbg !2690
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2691, metadata !540), !dbg !2692
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2693, metadata !540), !dbg !2694
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2695, metadata !540), !dbg !2696
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2697
  %14 = icmp eq %struct._WI_ITEM_REC* %13, null, !dbg !2699
  br i1 %14, label %20, label %15, !dbg !2700

; <label>:15:                                     ; preds = %3
  %16 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2701
  %17 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %16, i32 0, i32 4, !dbg !2703
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %17, align 8, !dbg !2703
  %19 = icmp eq %struct._SERVER_REC* %18, null, !dbg !2704
  br i1 %19, label %20, label %23, !dbg !2705

; <label>:20:                                     ; preds = %15, %3
  %21 = load i8**, i8*** %6, align 8, !dbg !2706
  %22 = call i8* @cmd_get_param(i8** %21), !dbg !2708
  store i8* %22, i8** %4, align 8, !dbg !2709
  br label %98, !dbg !2709

; <label>:23:                                     ; preds = %15
  %24 = load i8**, i8*** %6, align 8, !dbg !2710
  %25 = load i8*, i8** %24, align 8, !dbg !2711
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !2712
  store i8* %26, i8** %10, align 8, !dbg !2713
  store i8* %26, i8** %11, align 8, !dbg !2714
  %27 = call i8* @cmd_get_param(i8** %10), !dbg !2715
  store i8* %27, i8** %12, align 8, !dbg !2716
  %28 = load i8*, i8** %12, align 8, !dbg !2717
  %29 = call i32 @g_strcmp0(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)), !dbg !2719
  %30 = icmp eq i32 %29, 0, !dbg !2720
  br i1 %30, label %31, label %50, !dbg !2721

; <label>:31:                                     ; preds = %23
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2722
  %33 = bitcast %struct._WI_ITEM_REC* %32 to i8*, !dbg !2722
  %34 = call i8* @module_check_cast_module(i8* %33, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)), !dbg !2724
  %35 = bitcast i8* %34 to %struct._CHANNEL_REC*, !dbg !2725
  %36 = icmp ne %struct._CHANNEL_REC* %35, null, !dbg !2725
  br i1 %36, label %37, label %38, !dbg !2726

; <label>:37:                                     ; preds = %31
  br i1 false, label %50, label %39, !dbg !2727

; <label>:38:                                     ; preds = %31
  br i1 false, label %39, label %50, !dbg !2729

; <label>:39:                                     ; preds = %38, %37
  %40 = load i32, i32* %7, align 4, !dbg !2731
  %41 = icmp ne i32 %40, 0, !dbg !2731
  br i1 %41, label %50, label %42, !dbg !2732

; <label>:42:                                     ; preds = %39
  %43 = load i8**, i8*** %6, align 8, !dbg !2734
  %44 = call i8* @cmd_get_param(i8** %43), !dbg !2736
  %45 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2737
  %46 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %45, i32 0, i32 11, !dbg !2738
  %47 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %46, align 8, !dbg !2738
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2739
  %49 = call i8* %47(%struct._WI_ITEM_REC* %48), !dbg !2740
  store i8* %49, i8** %9, align 8, !dbg !2741
  br label %95, !dbg !2742

; <label>:50:                                     ; preds = %39, %38, %37, %23
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2743
  %52 = bitcast %struct._WI_ITEM_REC* %51 to i8*, !dbg !2743
  %53 = call i8* @module_check_cast_module(i8* %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)), !dbg !2746
  %54 = bitcast i8* %53 to %struct._CHANNEL_REC*, !dbg !2747
  %55 = icmp ne %struct._CHANNEL_REC* %54, null, !dbg !2747
  br i1 %55, label %56, label %57, !dbg !2748

; <label>:56:                                     ; preds = %50
  br i1 false, label %76, label %58, !dbg !2749

; <label>:57:                                     ; preds = %50
  br i1 false, label %58, label %76, !dbg !2751

; <label>:58:                                     ; preds = %57, %56
  %59 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2753
  %60 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %59, i32 0, i32 4, !dbg !2754
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %60, align 8, !dbg !2754
  %62 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %61, i32 0, i32 27, !dbg !2755
  %63 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %62, align 8, !dbg !2755
  %64 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2756
  %65 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %64, i32 0, i32 4, !dbg !2757
  %66 = load %struct._SERVER_REC*, %struct._SERVER_REC** %65, align 8, !dbg !2757
  %67 = load i8*, i8** %12, align 8, !dbg !2758
  %68 = call i32 %63(%struct._SERVER_REC* %66, i8* %67), !dbg !2759
  %69 = icmp ne i32 %68, 0, !dbg !2759
  br i1 %69, label %76, label %70, !dbg !2760

; <label>:70:                                     ; preds = %58
  %71 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2762
  %72 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %71, i32 0, i32 11, !dbg !2764
  %73 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %72, align 8, !dbg !2764
  %74 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2765
  %75 = call i8* %73(%struct._WI_ITEM_REC* %74), !dbg !2766
  store i8* %75, i8** %9, align 8, !dbg !2767
  br label %94, !dbg !2768

; <label>:76:                                     ; preds = %58, %57, %56
  %77 = load i8**, i8*** %6, align 8, !dbg !2769
  %78 = call i8* @cmd_get_param(i8** %77), !dbg !2771
  store i8* %78, i8** %12, align 8, !dbg !2772
  %79 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !2773
  %80 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %79, i32 0, i32 4, !dbg !2774
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %80, align 8, !dbg !2774
  %82 = load i8*, i8** %12, align 8, !dbg !2775
  %83 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %81, i8* %82), !dbg !2776
  store %struct._CHANNEL_REC* %83, %struct._CHANNEL_REC** %8, align 8, !dbg !2777
  %84 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !2778
  %85 = icmp eq %struct._CHANNEL_REC* %84, null, !dbg !2779
  br i1 %85, label %86, label %88, !dbg !2778

; <label>:86:                                     ; preds = %76
  %87 = load i8*, i8** %12, align 8, !dbg !2780
  br label %92, !dbg !2782

; <label>:88:                                     ; preds = %76
  %89 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !2783
  %90 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %89, i32 0, i32 6, !dbg !2785
  %91 = load i8*, i8** %90, align 8, !dbg !2785
  br label %92, !dbg !2786

; <label>:92:                                     ; preds = %88, %86
  %93 = phi i8* [ %87, %86 ], [ %91, %88 ], !dbg !2787
  store i8* %93, i8** %9, align 8, !dbg !2789
  br label %94

; <label>:94:                                     ; preds = %92, %70
  br label %95

; <label>:95:                                     ; preds = %94, %42
  %96 = load i8*, i8** %11, align 8, !dbg !2790
  call void @g_free(i8* %96), !dbg !2791
  %97 = load i8*, i8** %9, align 8, !dbg !2792
  store i8* %97, i8** %4, align 8, !dbg !2793
  br label %98, !dbg !2793

; <label>:98:                                     ; preds = %95, %20
  %99 = load i8*, i8** %4, align 8, !dbg !2794
  ret i8* %99, !dbg !2794
}

declare i8* @g_strchomp(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @signal_stop() #2

; Function Attrs: nounwind uwtable
define void @cmd_params_free(i8*) #0 !dbg !2795 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CMD_TEMP_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2798, metadata !540), !dbg !2799
  call void @llvm.dbg.declare(metadata %struct.CMD_TEMP_REC** %3, metadata !2800, metadata !540), !dbg !2801
  %4 = load i8*, i8** %2, align 8, !dbg !2802
  %5 = bitcast i8* %4 to %struct.CMD_TEMP_REC*, !dbg !2802
  store %struct.CMD_TEMP_REC* %5, %struct.CMD_TEMP_REC** %3, align 8, !dbg !2801
  %6 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %3, align 8, !dbg !2803
  %7 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %6, i32 0, i32 1, !dbg !2805
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !2805
  %9 = icmp ne %struct._GHashTable* %8, null, !dbg !2806
  br i1 %9, label %10, label %14, !dbg !2807

; <label>:10:                                     ; preds = %1
  %11 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %3, align 8, !dbg !2808
  %12 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %11, i32 0, i32 1, !dbg !2810
  %13 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !2810
  call void @g_hash_table_destroy(%struct._GHashTable* %13), !dbg !2811
  br label %14, !dbg !2811

; <label>:14:                                     ; preds = %10, %1
  %15 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %3, align 8, !dbg !2812
  %16 = getelementptr inbounds %struct.CMD_TEMP_REC, %struct.CMD_TEMP_REC* %15, i32 0, i32 0, !dbg !2813
  %17 = load i8*, i8** %16, align 8, !dbg !2813
  call void @g_free(i8* %17), !dbg !2814
  %18 = load %struct.CMD_TEMP_REC*, %struct.CMD_TEMP_REC** %3, align 8, !dbg !2815
  %19 = bitcast %struct.CMD_TEMP_REC* %18 to i8*, !dbg !2815
  call void @g_free(i8* %19), !dbg !2816
  ret void, !dbg !2817
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define void @commands_remove_module(i8*) #0 !dbg !2818 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2821, metadata !540), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2823, metadata !540), !dbg !2824
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2825, metadata !540), !dbg !2826
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2827, metadata !540), !dbg !2828
  br label %7, !dbg !2829, !llvm.loop !2830

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !2831
  %9 = icmp ne i8* %8, null, !dbg !2835
  br i1 %9, label %10, label %11, !dbg !2831

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2836

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.commands_remove_module, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !2839
  br label %42, !dbg !2842

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2843

; <label>:13:                                     ; preds = %12
  %14 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !2845
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !2847
  br label %15, !dbg !2848

; <label>:15:                                     ; preds = %40, %13
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2849
  %17 = icmp ne %struct._GSList* %16, null, !dbg !2852
  br i1 %17, label %18, label %42, !dbg !2853

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %6, metadata !2854, metadata !540), !dbg !2856
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2857
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !2858
  %21 = load i8*, i8** %20, align 8, !dbg !2858
  %22 = bitcast i8* %21 to %struct.COMMAND_REC*, !dbg !2857
  store %struct.COMMAND_REC* %22, %struct.COMMAND_REC** %6, align 8, !dbg !2856
  %23 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2859
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 1, !dbg !2860
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !2860
  store %struct._GSList* %25, %struct._GSList** %4, align 8, !dbg !2861
  %26 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !2862
  %27 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %26, i32 0, i32 0, !dbg !2863
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !2863
  %29 = load i8*, i8** %2, align 8, !dbg !2864
  %30 = call %struct._GSList* @gslist_find_string(%struct._GSList* %28, i8* %29), !dbg !2865
  store %struct._GSList* %30, %struct._GSList** %5, align 8, !dbg !2866
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2867
  %32 = icmp ne %struct._GSList* %31, null, !dbg !2869
  br i1 %32, label %33, label %39, !dbg !2870

; <label>:33:                                     ; preds = %18
  %34 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !2871
  %35 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2872
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !2873
  %37 = load i8*, i8** %36, align 8, !dbg !2873
  %38 = bitcast i8* %37 to %struct.COMMAND_MODULE_REC*, !dbg !2872
  call void @command_module_unbind_all(%struct.COMMAND_REC* %34, %struct.COMMAND_MODULE_REC* %38), !dbg !2874
  br label %39, !dbg !2874

; <label>:39:                                     ; preds = %33, %18
  br label %40, !dbg !2875

; <label>:40:                                     ; preds = %39
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2876
  store %struct._GSList* %41, %struct._GSList** %3, align 8, !dbg !2878
  br label %15, !dbg !2879, !llvm.loop !2880

; <label>:42:                                     ; preds = %11, %15
  ret void, !dbg !2882
}

declare %struct._GSList* @gslist_find_string(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @command_module_unbind_all(%struct.COMMAND_REC*, %struct.COMMAND_MODULE_REC*) #0 !dbg !2883 {
  %3 = alloca %struct.COMMAND_REC*, align 8
  %4 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.COMMAND_CALLBACK_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %3, metadata !2884, metadata !540), !dbg !2885
  store %struct.COMMAND_MODULE_REC* %1, %struct.COMMAND_MODULE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %4, metadata !2886, metadata !540), !dbg !2887
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2888, metadata !540), !dbg !2889
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2890, metadata !540), !dbg !2891
  %8 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %4, align 8, !dbg !2892
  %9 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %8, i32 0, i32 3, !dbg !2894
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2894
  store %struct._GSList* %10, %struct._GSList** %5, align 8, !dbg !2895
  br label %11, !dbg !2896

; <label>:11:                                     ; preds = %31, %2
  %12 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2897
  %13 = icmp ne %struct._GSList* %12, null, !dbg !2900
  br i1 %13, label %14, label %33, !dbg !2901

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.COMMAND_CALLBACK_REC** %7, metadata !2902, metadata !540), !dbg !2904
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2905
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !2906
  %17 = load i8*, i8** %16, align 8, !dbg !2906
  %18 = bitcast i8* %17 to %struct.COMMAND_CALLBACK_REC*, !dbg !2905
  store %struct.COMMAND_CALLBACK_REC* %18, %struct.COMMAND_CALLBACK_REC** %7, align 8, !dbg !2904
  %19 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2907
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !2908
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2908
  store %struct._GSList* %21, %struct._GSList** %6, align 8, !dbg !2909
  %22 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !2910
  %23 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %22, i32 0, i32 2, !dbg !2911
  %24 = load i8*, i8** %23, align 8, !dbg !2911
  %25 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %7, align 8, !dbg !2912
  %26 = getelementptr inbounds %struct.COMMAND_CALLBACK_REC, %struct.COMMAND_CALLBACK_REC* %25, i32 0, i32 0, !dbg !2913
  %27 = load void (i8*, i8*, i8*, i8*, i8*, i8*)*, void (i8*, i8*, i8*, i8*, i8*, i8*)** %26, align 8, !dbg !2913
  %28 = load %struct.COMMAND_CALLBACK_REC*, %struct.COMMAND_CALLBACK_REC** %7, align 8, !dbg !2914
  %29 = getelementptr inbounds %struct.COMMAND_CALLBACK_REC, %struct.COMMAND_CALLBACK_REC* %28, i32 0, i32 1, !dbg !2915
  %30 = load i8*, i8** %29, align 8, !dbg !2915
  call void @command_unbind_full(i8* %24, void (i8*, i8*, i8*, i8*, i8*, i8*)* %27, i8* %30), !dbg !2916
  br label %31, !dbg !2917

; <label>:31:                                     ; preds = %14
  %32 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2918
  store %struct._GSList* %32, %struct._GSList** %5, align 8, !dbg !2920
  br label %11, !dbg !2921, !llvm.loop !2922

; <label>:33:                                     ; preds = %11
  %34 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !2924
  %35 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !2926
  %36 = bitcast %struct.COMMAND_REC* %35 to i8*, !dbg !2926
  %37 = call %struct._GSList* @g_slist_find(%struct._GSList* %34, i8* %36), !dbg !2927
  %38 = icmp ne %struct._GSList* %37, null, !dbg !2928
  br i1 %38, label %39, label %41, !dbg !2929

; <label>:39:                                     ; preds = %33
  %40 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %3, align 8, !dbg !2930
  call void @command_update_options(%struct.COMMAND_REC* %40), !dbg !2932
  br label %41, !dbg !2933

; <label>:41:                                     ; preds = %39, %33
  ret void, !dbg !2934
}

; Function Attrs: nounwind uwtable
define void @commands_init() #0 !dbg !2935 {
  store %struct._GSList* null, %struct._GSList** @commands, align 8, !dbg !2936
  store i8* null, i8** @current_command, align 8, !dbg !2937
  store %struct._GSList* null, %struct._GSList** @alias_runstack, align 8, !dbg !2938
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !2939
  store i32 %1, i32* @signal_default_command, align 4, !dbg !2940
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !2941
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @event_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2942
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_eval to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2943
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_cd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2944
  ret void, !dbg !2945
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_command(i8*, %struct._SERVER_REC*, i8*) #0 !dbg !2946 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2949, metadata !540), !dbg !2950
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2951, metadata !540), !dbg !2952
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2953, metadata !540), !dbg !2954
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2955, metadata !540), !dbg !2956
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2957, metadata !540), !dbg !2958
  store i32 1, i32* %8, align 4, !dbg !2958
  br label %9, !dbg !2959, !llvm.loop !2960

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %4, align 8, !dbg !2961
  %11 = icmp ne i8* %10, null, !dbg !2965
  br i1 %11, label %12, label %13, !dbg !2961

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2966

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !2969
  br label %74, !dbg !2972

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2973

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !2975
  %17 = load i8, i8* %16, align 1, !dbg !2976
  %18 = sext i8 %17 to i32, !dbg !2976
  %19 = icmp eq i32 %18, 0, !dbg !2977
  br i1 %19, label %20, label %21, !dbg !2976

; <label>:20:                                     ; preds = %15
  br label %27, !dbg !2978

; <label>:21:                                     ; preds = %15
  %22 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)), !dbg !2980
  %23 = load i8*, i8** %4, align 8, !dbg !2981
  %24 = load i8, i8* %23, align 1, !dbg !2982
  %25 = sext i8 %24 to i32, !dbg !2982
  %26 = call i8* @strchr(i8* %22, i32 %25) #8, !dbg !2983
  br label %27, !dbg !2984

; <label>:27:                                     ; preds = %21, %20
  %28 = phi i8* [ null, %20 ], [ %26, %21 ], !dbg !2986
  store i8* %28, i8** %7, align 8, !dbg !2988
  %29 = load i8*, i8** %7, align 8, !dbg !2989
  %30 = icmp ne i8* %29, null, !dbg !2991
  br i1 %30, label %31, label %40, !dbg !2992

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !2993
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2993
  %34 = load i8, i8* %33, align 1, !dbg !2993
  %35 = sext i8 %34 to i32, !dbg !2993
  %36 = icmp eq i32 %35, 32, !dbg !2995
  br i1 %36, label %37, label %40, !dbg !2996

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %4, align 8, !dbg !2997
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !2997
  store i8* %39, i8** %4, align 8, !dbg !2997
  store i8* null, i8** %7, align 8, !dbg !2999
  br label %40, !dbg !3000

; <label>:40:                                     ; preds = %37, %31, %27
  %41 = load i8*, i8** %7, align 8, !dbg !3001
  %42 = icmp eq i8* %41, null, !dbg !3003
  br i1 %42, label %43, label %48, !dbg !3004

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %4, align 8, !dbg !3005
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3007
  %46 = load i8*, i8** %6, align 8, !dbg !3008
  %47 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 3, i8* %44, %struct._SERVER_REC* %45, i8* %46), !dbg !3009
  br label %74, !dbg !3010

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** %4, align 8, !dbg !3011
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !3011
  store i8* %50, i8** %4, align 8, !dbg !3011
  %51 = load i8*, i8** %4, align 8, !dbg !3012
  %52 = load i8, i8* %51, align 1, !dbg !3014
  %53 = sext i8 %52 to i32, !dbg !3014
  %54 = load i8*, i8** %7, align 8, !dbg !3015
  %55 = load i8, i8* %54, align 1, !dbg !3016
  %56 = sext i8 %55 to i32, !dbg !3016
  %57 = icmp eq i32 %53, %56, !dbg !3017
  br i1 %57, label %58, label %61, !dbg !3018

; <label>:58:                                     ; preds = %48
  %59 = load i8*, i8** %4, align 8, !dbg !3019
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !3019
  store i8* %60, i8** %4, align 8, !dbg !3019
  store i32 0, i32* %8, align 4, !dbg !3021
  br label %61, !dbg !3022

; <label>:61:                                     ; preds = %58, %48
  %62 = load i8*, i8** %4, align 8, !dbg !3023
  %63 = load i8, i8* %62, align 1, !dbg !3025
  %64 = sext i8 %63 to i32, !dbg !3025
  %65 = icmp eq i32 %64, 94, !dbg !3026
  br i1 %65, label %66, label %69, !dbg !3027

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %4, align 8, !dbg !3028
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !3028
  store i8* %68, i8** %4, align 8, !dbg !3028
  br label %69, !dbg !3030

; <label>:69:                                     ; preds = %66, %61
  %70 = load i8*, i8** %4, align 8, !dbg !3031
  %71 = load i32, i32* %8, align 4, !dbg !3032
  %72 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3033
  %73 = load i8*, i8** %6, align 8, !dbg !3034
  call void @parse_command(i8* %70, i32 %71, %struct._SERVER_REC* %72, i8* %73), !dbg !3035
  br label %74, !dbg !3036

; <label>:74:                                     ; preds = %69, %43, %13
  ret void, !dbg !3037
}

; Function Attrs: nounwind uwtable
define internal void @cmd_eval(i8*, %struct._SERVER_REC*, i8*) #0 !dbg !3038 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3039, metadata !540), !dbg !3040
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3041, metadata !540), !dbg !3042
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3043, metadata !540), !dbg !3044
  br label %7, !dbg !3045, !llvm.loop !3046

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !3047
  %9 = icmp ne i8* %8, null, !dbg !3051
  br i1 %9, label %10, label %11, !dbg !3047

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !3052

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_eval, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !3055
  br label %28, !dbg !3058

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !3059

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* @eval_recursion_depth, align 4, !dbg !3061
  %15 = icmp sgt i32 %14, 100, !dbg !3063
  br i1 %15, label %16, label %20, !dbg !3064

; <label>:16:                                     ; preds = %13
  br label %17, !dbg !3065, !llvm.loop !3066

; <label>:17:                                     ; preds = %16
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* inttoptr (i64 12 to i8*)), !dbg !3067
  call void @signal_stop(), !dbg !3070
  br label %28, !dbg !3072
                                                  ; No predecessors!
  br label %20, !dbg !3073

; <label>:20:                                     ; preds = %19, %13
  %21 = load i32, i32* @eval_recursion_depth, align 4, !dbg !3075
  %22 = add nsw i32 %21, 1, !dbg !3075
  store i32 %22, i32* @eval_recursion_depth, align 4, !dbg !3075
  %23 = load i8*, i8** %4, align 8, !dbg !3076
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3077
  %25 = load i8*, i8** %6, align 8, !dbg !3078
  call void @eval_special_string(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %struct._SERVER_REC* %24, i8* %25), !dbg !3079
  %26 = load i32, i32* @eval_recursion_depth, align 4, !dbg !3080
  %27 = add nsw i32 %26, -1, !dbg !3080
  store i32 %27, i32* @eval_recursion_depth, align 4, !dbg !3080
  br label %28, !dbg !3081

; <label>:28:                                     ; preds = %20, %17, %11
  ret void, !dbg !3082
}

; Function Attrs: nounwind uwtable
define internal void @cmd_cd(i8*) #0 !dbg !3084 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3085, metadata !540), !dbg !3086
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3087, metadata !540), !dbg !3088
  br label %4, !dbg !3089, !llvm.loop !3090

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !3091
  %6 = icmp ne i8* %5, null, !dbg !3095
  br i1 %6, label %7, label %8, !dbg !3091

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !3096

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.cmd_cd, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !3099
  br label %28, !dbg !3102

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !3103

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !3105
  %12 = load i8, i8* %11, align 1, !dbg !3107
  %13 = sext i8 %12 to i32, !dbg !3107
  %14 = icmp eq i32 %13, 0, !dbg !3108
  br i1 %14, label %15, label %16, !dbg !3109

; <label>:15:                                     ; preds = %10
  br label %28, !dbg !3110

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %2, align 8, !dbg !3112
  %18 = call i8* @convert_home(i8* %17), !dbg !3113
  store i8* %18, i8** %3, align 8, !dbg !3114
  %19 = load i8*, i8** %3, align 8, !dbg !3115
  %20 = call i32 @chdir(i8* %19) #5, !dbg !3117
  %21 = icmp ne i32 %20, 0, !dbg !3118
  br i1 %21, label %22, label %26, !dbg !3119

; <label>:22:                                     ; preds = %16
  %23 = call i32* @__errno_location() #1, !dbg !3120
  %24 = load i32, i32* %23, align 4, !dbg !3122
  %25 = call i8* @strerror(i32 %24) #5, !dbg !3123
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i8* %25), !dbg !3125
  br label %26, !dbg !3127

; <label>:26:                                     ; preds = %22, %16
  %27 = load i8*, i8** %3, align 8, !dbg !3128
  call void @g_free(i8* %27), !dbg !3129
  br label %28, !dbg !3130

; <label>:28:                                     ; preds = %26, %15, %8
  ret void, !dbg !3131
}

; Function Attrs: nounwind uwtable
define void @commands_deinit() #0 !dbg !3133 {
  %1 = load i8*, i8** @current_command, align 8, !dbg !3134
  call void @g_free(i8* %1), !dbg !3135
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @event_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3136
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_eval to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3137
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_cd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3138
  ret void, !dbg !3139
}

; Function Attrs: nounwind uwtable
define internal %struct.COMMAND_MODULE_REC* @command_module_find(%struct.COMMAND_REC*, i8*) #0 !dbg !3140 {
  %3 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %4 = alloca %struct.COMMAND_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.COMMAND_MODULE_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !3143, metadata !540), !dbg !3144
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3145, metadata !540), !dbg !3146
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !3147, metadata !540), !dbg !3148
  br label %8, !dbg !3149, !llvm.loop !3150

; <label>:8:                                      ; preds = %2
  %9 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !3151
  %10 = icmp ne %struct.COMMAND_REC* %9, null, !dbg !3155
  br i1 %10, label %11, label %12, !dbg !3151

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !3156

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_module_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)), !dbg !3159
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3162
  br label %47, !dbg !3162

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !3163

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !3165, !llvm.loop !3166

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !3167
  %17 = icmp ne i8* %16, null, !dbg !3171
  br i1 %17, label %18, label %19, !dbg !3167

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !3172

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.command_module_find, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !3175
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3178
  br label %47, !dbg !3178

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !3179

; <label>:21:                                     ; preds = %20
  %22 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !3181
  %23 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %22, i32 0, i32 0, !dbg !3183
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !3183
  store %struct._GSList* %24, %struct._GSList** %6, align 8, !dbg !3184
  br label %25, !dbg !3185

; <label>:25:                                     ; preds = %42, %21
  %26 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3186
  %27 = icmp ne %struct._GSList* %26, null, !dbg !3189
  br i1 %27, label %28, label %46, !dbg !3190

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %7, metadata !3191, metadata !540), !dbg !3193
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3194
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !3195
  %31 = load i8*, i8** %30, align 8, !dbg !3195
  %32 = bitcast i8* %31 to %struct.COMMAND_MODULE_REC*, !dbg !3194
  store %struct.COMMAND_MODULE_REC* %32, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3193
  %33 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3196
  %34 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %33, i32 0, i32 0, !dbg !3198
  %35 = load i8*, i8** %34, align 8, !dbg !3198
  %36 = load i8*, i8** %5, align 8, !dbg !3199
  %37 = call i32 @g_ascii_strcasecmp(i8* %35, i8* %36), !dbg !3200
  %38 = icmp eq i32 %37, 0, !dbg !3201
  br i1 %38, label %39, label %41, !dbg !3202

; <label>:39:                                     ; preds = %28
  %40 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3203
  store %struct.COMMAND_MODULE_REC* %40, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3204
  br label %47, !dbg !3204

; <label>:41:                                     ; preds = %28
  br label %42, !dbg !3205

; <label>:42:                                     ; preds = %41
  %43 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3206
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !3208
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !3208
  store %struct._GSList* %45, %struct._GSList** %6, align 8, !dbg !3209
  br label %25, !dbg !3210, !llvm.loop !3211

; <label>:46:                                     ; preds = %25
  store %struct.COMMAND_MODULE_REC* null, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3213
  br label %47, !dbg !3213

; <label>:47:                                     ; preds = %46, %39, %19, %12
  %48 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3214
  ret %struct.COMMAND_MODULE_REC* %48, !dbg !3214
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @command_module_free(%struct.COMMAND_MODULE_REC*, %struct.COMMAND_REC*) #0 !dbg !3215 {
  %3 = alloca %struct.COMMAND_MODULE_REC*, align 8
  %4 = alloca %struct.COMMAND_REC*, align 8
  store %struct.COMMAND_MODULE_REC* %0, %struct.COMMAND_MODULE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %3, metadata !3218, metadata !540), !dbg !3219
  store %struct.COMMAND_REC* %1, %struct.COMMAND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !3220, metadata !540), !dbg !3221
  %5 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !3222
  %6 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %5, i32 0, i32 0, !dbg !3223
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3223
  %8 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3224
  %9 = bitcast %struct.COMMAND_MODULE_REC* %8 to i8*, !dbg !3224
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !3225
  %11 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !3226
  %12 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %11, i32 0, i32 0, !dbg !3227
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !3228
  %13 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3229
  %14 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %13, i32 0, i32 3, !dbg !3230
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !3230
  call void @g_slist_foreach(%struct._GSList* %15, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !3231
  %16 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3232
  %17 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %16, i32 0, i32 3, !dbg !3233
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !3233
  call void @g_slist_free(%struct._GSList* %18), !dbg !3234
  %19 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3235
  %20 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %19, i32 0, i32 0, !dbg !3236
  %21 = load i8*, i8** %20, align 8, !dbg !3236
  call void @g_free(i8* %21), !dbg !3237
  %22 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3238
  %23 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %22, i32 0, i32 1, !dbg !3239
  %24 = load i8*, i8** %23, align 8, !dbg !3239
  call void @g_free(i8* %24), !dbg !3240
  %25 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %3, align 8, !dbg !3241
  %26 = bitcast %struct.COMMAND_MODULE_REC* %25 to i8*, !dbg !3241
  call void @g_free(i8* %26), !dbg !3242
  ret void, !dbg !3243
}

declare void @g_slist_free(%struct._GSList*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @command_free(%struct.COMMAND_REC*) #0 !dbg !3244 {
  %2 = alloca %struct.COMMAND_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %2, metadata !3245, metadata !540), !dbg !3246
  %3 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !3247
  %4 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3248
  %5 = bitcast %struct.COMMAND_REC* %4 to i8*, !dbg !3248
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !3249
  store %struct._GSList* %6, %struct._GSList** @commands, align 8, !dbg !3250
  %7 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3251
  %8 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.COMMAND_REC* %7), !dbg !3252
  %9 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3253
  %10 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %9, i32 0, i32 1, !dbg !3254
  %11 = load i8*, i8** %10, align 8, !dbg !3254
  call void @g_free(i8* %11), !dbg !3255
  %12 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3256
  %13 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %12, i32 0, i32 3, !dbg !3257
  %14 = load i8**, i8*** %13, align 8, !dbg !3257
  call void @g_strfreev(i8** %14), !dbg !3258
  %15 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3259
  %16 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %15, i32 0, i32 2, !dbg !3260
  %17 = load i8*, i8** %16, align 8, !dbg !3260
  call void @g_free(i8* %17), !dbg !3261
  %18 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %2, align 8, !dbg !3262
  %19 = bitcast %struct.COMMAND_REC* %18 to i8*, !dbg !3262
  call void @g_free(i8* %19), !dbg !3263
  ret void, !dbg !3264
}

declare void @g_strfreev(i8**) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @optlist_find(%struct._GSList*, i8*) #0 !dbg !3265 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !3268, metadata !540), !dbg !3269
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3270, metadata !540), !dbg !3271
  br label %7, !dbg !3272

; <label>:7:                                      ; preds = %43, %2
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3273
  %9 = icmp ne %struct._GSList* %8, null, !dbg !3275
  br i1 %9, label %10, label %47, !dbg !3276

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3277, metadata !540), !dbg !3279
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3280
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !3281
  %13 = load i8*, i8** %12, align 8, !dbg !3281
  store i8* %13, i8** %6, align 8, !dbg !3279
  %14 = load i8*, i8** %6, align 8, !dbg !3282
  %15 = load i8, i8* %14, align 1, !dbg !3284
  %16 = sext i8 %15 to i32, !dbg !3285
  %17 = icmp eq i32 %16, 33, !dbg !3286
  br i1 %17, label %33, label %18, !dbg !3287

; <label>:18:                                     ; preds = %10
  %19 = load i8*, i8** %6, align 8, !dbg !3288
  %20 = load i8, i8* %19, align 1, !dbg !3290
  %21 = sext i8 %20 to i32, !dbg !3291
  %22 = icmp eq i32 %21, 45, !dbg !3292
  br i1 %22, label %33, label %23, !dbg !3293

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %6, align 8, !dbg !3294
  %25 = load i8, i8* %24, align 1, !dbg !3296
  %26 = sext i8 %25 to i32, !dbg !3297
  %27 = icmp eq i32 %26, 43, !dbg !3298
  br i1 %27, label %33, label %28, !dbg !3299

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %6, align 8, !dbg !3300
  %30 = load i8, i8* %29, align 1, !dbg !3302
  %31 = sext i8 %30 to i32, !dbg !3303
  %32 = icmp eq i32 %31, 64, !dbg !3304
  br i1 %32, label %33, label %36, !dbg !3305

; <label>:33:                                     ; preds = %28, %23, %18, %10
  %34 = load i8*, i8** %6, align 8, !dbg !3306
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !3306
  store i8* %35, i8** %6, align 8, !dbg !3306
  br label %36, !dbg !3308

; <label>:36:                                     ; preds = %33, %28
  %37 = load i8*, i8** %6, align 8, !dbg !3309
  %38 = load i8*, i8** %5, align 8, !dbg !3311
  %39 = call i32 @g_ascii_strcasecmp(i8* %37, i8* %38), !dbg !3312
  %40 = icmp eq i32 %39, 0, !dbg !3313
  br i1 %40, label %41, label %43, !dbg !3314

; <label>:41:                                     ; preds = %36
  %42 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3315
  store %struct._GSList* %42, %struct._GSList** %3, align 8, !dbg !3316
  br label %48, !dbg !3316

; <label>:43:                                     ; preds = %36
  %44 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !3317
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !3318
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !3318
  store %struct._GSList* %46, %struct._GSList** %4, align 8, !dbg !3319
  br label %7, !dbg !3320, !llvm.loop !3322

; <label>:47:                                     ; preds = %7
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !3323
  br label %48, !dbg !3323

; <label>:48:                                     ; preds = %47, %41
  %49 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3324
  ret %struct._GSList* %49, !dbg !3324
}

declare i8* @gslist_to_string(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @option_find(i8**, i8*) #0 !dbg !3325 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3328, metadata !540), !dbg !3329
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3330, metadata !540), !dbg !3331
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !3332, metadata !540), !dbg !3333
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3334, metadata !540), !dbg !3335
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3336, metadata !540), !dbg !3337
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3338, metadata !540), !dbg !3339
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3340, metadata !540), !dbg !3341
  br label %12, !dbg !3342, !llvm.loop !3343

; <label>:12:                                     ; preds = %2
  %13 = load i8**, i8*** %4, align 8, !dbg !3344
  %14 = icmp ne i8** %13, null, !dbg !3348
  br i1 %14, label %15, label %16, !dbg !3344

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !3349

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.option_find, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)), !dbg !3352
  store i32 -1, i32* %3, align 4, !dbg !3355
  br label %99, !dbg !3355

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !3356

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !3358, !llvm.loop !3359

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %5, align 8, !dbg !3360
  %21 = icmp ne i8* %20, null, !dbg !3364
  br i1 %21, label %22, label %23, !dbg !3360

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !3365

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.option_find, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)), !dbg !3368
  store i32 -1, i32* %3, align 4, !dbg !3371
  br label %99, !dbg !3371

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !3372

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %5, align 8, !dbg !3374
  %27 = call i64 @strlen(i8* %26) #8, !dbg !3375
  %28 = trunc i64 %27 to i32, !dbg !3375
  store i32 %28, i32* %9, align 4, !dbg !3376
  store i32 -1, i32* %8, align 4, !dbg !3377
  store i32 0, i32* %7, align 4, !dbg !3378
  store i32 0, i32* %10, align 4, !dbg !3379
  %29 = load i8**, i8*** %4, align 8, !dbg !3380
  store i8** %29, i8*** %6, align 8, !dbg !3382
  br label %30, !dbg !3383

; <label>:30:                                     ; preds = %88, %25
  %31 = load i8**, i8*** %6, align 8, !dbg !3384
  %32 = load i8*, i8** %31, align 8, !dbg !3387
  %33 = icmp ne i8* %32, null, !dbg !3388
  br i1 %33, label %34, label %93, !dbg !3389

; <label>:34:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3390, metadata !540), !dbg !3392
  %35 = load i8**, i8*** %6, align 8, !dbg !3393
  %36 = load i8*, i8** %35, align 8, !dbg !3394
  %37 = load i8**, i8*** %6, align 8, !dbg !3395
  %38 = load i8*, i8** %37, align 8, !dbg !3396
  %39 = load i8, i8* %38, align 1, !dbg !3397
  %40 = sext i8 %39 to i32, !dbg !3398
  %41 = icmp eq i32 %40, 33, !dbg !3399
  br i1 %41, label %60, label %42, !dbg !3400

; <label>:42:                                     ; preds = %34
  %43 = load i8**, i8*** %6, align 8, !dbg !3401
  %44 = load i8*, i8** %43, align 8, !dbg !3403
  %45 = load i8, i8* %44, align 1, !dbg !3404
  %46 = sext i8 %45 to i32, !dbg !3405
  %47 = icmp eq i32 %46, 45, !dbg !3406
  br i1 %47, label %60, label %48, !dbg !3407

; <label>:48:                                     ; preds = %42
  %49 = load i8**, i8*** %6, align 8, !dbg !3408
  %50 = load i8*, i8** %49, align 8, !dbg !3410
  %51 = load i8, i8* %50, align 1, !dbg !3411
  %52 = sext i8 %51 to i32, !dbg !3412
  %53 = icmp eq i32 %52, 43, !dbg !3413
  br i1 %53, label %60, label %54, !dbg !3414

; <label>:54:                                     ; preds = %48
  %55 = load i8**, i8*** %6, align 8, !dbg !3415
  %56 = load i8*, i8** %55, align 8, !dbg !3417
  %57 = load i8, i8* %56, align 1, !dbg !3418
  %58 = sext i8 %57 to i32, !dbg !3419
  %59 = icmp eq i32 %58, 64, !dbg !3420
  br label %60, !dbg !3421

; <label>:60:                                     ; preds = %54, %48, %42, %34
  %61 = phi i1 [ true, %48 ], [ true, %42 ], [ true, %34 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32, !dbg !3422
  %63 = sext i32 %62 to i64, !dbg !3424
  %64 = getelementptr inbounds i8, i8* %36, i64 %63, !dbg !3424
  store i8* %64, i8** %11, align 8, !dbg !3425
  %65 = load i8*, i8** %11, align 8, !dbg !3426
  %66 = load i8*, i8** %5, align 8, !dbg !3428
  %67 = load i32, i32* %9, align 4, !dbg !3429
  %68 = sext i32 %67 to i64, !dbg !3429
  %69 = call i32 @g_ascii_strncasecmp(i8* %65, i8* %66, i64 %68), !dbg !3430
  %70 = icmp eq i32 %69, 0, !dbg !3431
  br i1 %70, label %71, label %87, !dbg !3432

; <label>:71:                                     ; preds = %60
  %72 = load i32, i32* %9, align 4, !dbg !3433
  %73 = sext i32 %72 to i64, !dbg !3436
  %74 = load i8*, i8** %11, align 8, !dbg !3436
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !3436
  %76 = load i8, i8* %75, align 1, !dbg !3436
  %77 = sext i8 %76 to i32, !dbg !3436
  %78 = icmp eq i32 %77, 0, !dbg !3437
  br i1 %78, label %79, label %81, !dbg !3438

; <label>:79:                                     ; preds = %71
  %80 = load i32, i32* %7, align 4, !dbg !3439
  store i32 %80, i32* %3, align 4, !dbg !3441
  br label %99, !dbg !3441

; <label>:81:                                     ; preds = %71
  %82 = load i32, i32* %8, align 4, !dbg !3442
  %83 = icmp ne i32 %82, -1, !dbg !3444
  br i1 %83, label %84, label %85, !dbg !3445

; <label>:84:                                     ; preds = %81
  store i32 1, i32* %10, align 4, !dbg !3446
  br label %85, !dbg !3448

; <label>:85:                                     ; preds = %84, %81
  %86 = load i32, i32* %7, align 4, !dbg !3449
  store i32 %86, i32* %8, align 4, !dbg !3450
  br label %87, !dbg !3451

; <label>:87:                                     ; preds = %85, %60
  br label %88, !dbg !3452

; <label>:88:                                     ; preds = %87
  %89 = load i8**, i8*** %6, align 8, !dbg !3453
  %90 = getelementptr inbounds i8*, i8** %89, i32 1, !dbg !3453
  store i8** %90, i8*** %6, align 8, !dbg !3453
  %91 = load i32, i32* %7, align 4, !dbg !3455
  %92 = add nsw i32 %91, 1, !dbg !3455
  store i32 %92, i32* %7, align 4, !dbg !3455
  br label %30, !dbg !3456, !llvm.loop !3457

; <label>:93:                                     ; preds = %30
  %94 = load i32, i32* %10, align 4, !dbg !3459
  %95 = icmp ne i32 %94, 0, !dbg !3459
  br i1 %95, label %96, label %97, !dbg !3461

; <label>:96:                                     ; preds = %93
  store i32 -2, i32* %3, align 4, !dbg !3462
  br label %99, !dbg !3462

; <label>:97:                                     ; preds = %93
  %98 = load i32, i32* %8, align 4, !dbg !3463
  store i32 %98, i32* %3, align 4, !dbg !3464
  br label %99, !dbg !3464

; <label>:99:                                     ; preds = %97, %96, %79, %23, %16
  %100 = load i32, i32* %3, align 4, !dbg !3465
  ret i32 %100, !dbg !3465
}

declare i32 @is_numeric(i8*, i8 signext) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @parse_command(i8*, i32, %struct._SERVER_REC*, i8*) #0 !dbg !3466 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.COMMAND_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3469, metadata !540), !dbg !3470
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3471, metadata !540), !dbg !3472
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !3473, metadata !540), !dbg !3474
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3475, metadata !540), !dbg !3476
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %9, metadata !3477, metadata !540), !dbg !3478
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3479, metadata !540), !dbg !3480
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3481, metadata !540), !dbg !3482
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3483, metadata !540), !dbg !3484
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3485, metadata !540), !dbg !3486
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3487, metadata !540), !dbg !3488
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3489, metadata !540), !dbg !3490
  br label %16, !dbg !3491, !llvm.loop !3492

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %5, align 8, !dbg !3493
  %18 = icmp ne i8* %17, null, !dbg !3497
  br i1 %18, label %19, label %20, !dbg !3493

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !3498

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.parse_command, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !3501
  br label %138, !dbg !3504

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3505

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %5, align 8, !dbg !3507
  %24 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %23, i8* null), !dbg !3508
  store i8* %24, i8** %13, align 8, !dbg !3509
  store i8* %24, i8** %12, align 8, !dbg !3510
  %25 = load i8*, i8** %12, align 8, !dbg !3511
  %26 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !3512
  %27 = call i8* @strchr(i8* %26, i32 32) #8, !dbg !3513
  store i8* %27, i8** %14, align 8, !dbg !3514
  %28 = load i8*, i8** %14, align 8, !dbg !3515
  %29 = icmp ne i8* %28, null, !dbg !3517
  br i1 %29, label %30, label %33, !dbg !3518

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %14, align 8, !dbg !3519
  %32 = getelementptr inbounds i8, i8* %31, i32 1, !dbg !3519
  store i8* %32, i8** %14, align 8, !dbg !3519
  store i8 0, i8* %31, align 1, !dbg !3521
  br label %34, !dbg !3522

; <label>:33:                                     ; preds = %22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8** %14, align 8, !dbg !3523
  br label %34

; <label>:34:                                     ; preds = %33, %30
  %35 = load i32, i32* %6, align 4, !dbg !3525
  %36 = icmp ne i32 %35, 0, !dbg !3525
  br i1 %36, label %37, label %43, !dbg !3526

; <label>:37:                                     ; preds = %34
  %38 = load %struct._GSList*, %struct._GSList** @alias_runstack, align 8, !dbg !3527
  %39 = load i8*, i8** %12, align 8, !dbg !3529
  %40 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !3530
  %41 = call %struct._GSList* @gslist_find_icase_string(%struct._GSList* %38, i8* %40), !dbg !3531
  %42 = icmp ne %struct._GSList* %41, null, !dbg !3532
  br i1 %42, label %43, label %44, !dbg !3533

; <label>:43:                                     ; preds = %37, %34
  br label %49, !dbg !3534

; <label>:44:                                     ; preds = %37
  %45 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !3536
  %46 = load i8*, i8** %12, align 8, !dbg !3537
  %47 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !3538
  %48 = call i8* @config_get_str(%struct._CONFIG_REC* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %47, i8* null), !dbg !3539
  br label %49, !dbg !3540

; <label>:49:                                     ; preds = %44, %43
  %50 = phi i8* [ null, %43 ], [ %48, %44 ], !dbg !3542
  store i8* %50, i8** %10, align 8, !dbg !3544
  %51 = load i8*, i8** %10, align 8, !dbg !3545
  %52 = icmp ne i8* %51, null, !dbg !3547
  br i1 %52, label %53, label %67, !dbg !3548

; <label>:53:                                     ; preds = %49
  %54 = load %struct._GSList*, %struct._GSList** @alias_runstack, align 8, !dbg !3549
  %55 = load i8*, i8** %12, align 8, !dbg !3551
  %56 = getelementptr inbounds i8, i8* %55, i64 8, !dbg !3552
  %57 = call %struct._GSList* @g_slist_append(%struct._GSList* %54, i8* %56), !dbg !3553
  store %struct._GSList* %57, %struct._GSList** @alias_runstack, align 8, !dbg !3554
  %58 = load i8*, i8** %10, align 8, !dbg !3555
  %59 = load i8*, i8** %14, align 8, !dbg !3556
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3557
  %61 = load i8*, i8** %8, align 8, !dbg !3558
  call void @eval_special_string(i8* %58, i8* %59, %struct._SERVER_REC* %60, i8* %61), !dbg !3559
  %62 = load %struct._GSList*, %struct._GSList** @alias_runstack, align 8, !dbg !3560
  %63 = load i8*, i8** %12, align 8, !dbg !3561
  %64 = getelementptr inbounds i8, i8* %63, i64 8, !dbg !3562
  %65 = call %struct._GSList* @g_slist_remove(%struct._GSList* %62, i8* %64), !dbg !3563
  store %struct._GSList* %65, %struct._GSList** @alias_runstack, align 8, !dbg !3564
  %66 = load i8*, i8** %13, align 8, !dbg !3565
  call void @g_free(i8* %66), !dbg !3566
  br label %138, !dbg !3567

; <label>:67:                                     ; preds = %49
  %68 = load i8*, i8** %12, align 8, !dbg !3568
  %69 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !3569
  %70 = call i8* @command_expand(i8* %69), !dbg !3570
  store i8* %70, i8** %11, align 8, !dbg !3571
  %71 = load i8*, i8** %11, align 8, !dbg !3572
  %72 = icmp eq i8* %71, null, !dbg !3574
  br i1 %72, label %73, label %75, !dbg !3575

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %13, align 8, !dbg !3576
  call void @g_free(i8* %74), !dbg !3578
  br label %138, !dbg !3579

; <label>:75:                                     ; preds = %67
  %76 = load i8*, i8** %11, align 8, !dbg !3580
  %77 = call %struct.COMMAND_REC* @command_find(i8* %76), !dbg !3581
  store %struct.COMMAND_REC* %77, %struct.COMMAND_REC** %9, align 8, !dbg !3582
  %78 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3583
  %79 = icmp ne %struct.COMMAND_REC* %78, null, !dbg !3585
  br i1 %79, label %80, label %93, !dbg !3586

; <label>:80:                                     ; preds = %75
  %81 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3587
  %82 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3589
  %83 = call i32 @cmd_protocol_match(%struct.COMMAND_REC* %81, %struct._SERVER_REC* %82), !dbg !3590
  %84 = icmp ne i32 %83, 0, !dbg !3590
  br i1 %84, label %93, label %85, !dbg !3591

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %13, align 8, !dbg !3592
  call void @g_free(i8* %86), !dbg !3594
  %87 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3595
  %88 = icmp eq %struct._SERVER_REC* %87, null, !dbg !3596
  %89 = select i1 %88, i32 4, i32 8, !dbg !3595
  %90 = sext i32 %89 to i64, !dbg !3597
  %91 = inttoptr i64 %90 to i8*, !dbg !3598
  %92 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* %91), !dbg !3599
  br label %138, !dbg !3600

; <label>:93:                                     ; preds = %80, %75
  %94 = load i8*, i8** %11, align 8, !dbg !3601
  %95 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %94, i8* null), !dbg !3602
  store i8* %95, i8** %12, align 8, !dbg !3603
  %96 = load i8*, i8** %12, align 8, !dbg !3604
  %97 = call i8* @ascii_strdown(i8* %96), !dbg !3605
  %98 = load i8*, i8** @current_command, align 8, !dbg !3606
  store i8* %98, i8** %15, align 8, !dbg !3607
  %99 = load i8*, i8** %12, align 8, !dbg !3608
  %100 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !3609
  store i8* %100, i8** @current_command, align 8, !dbg !3610
  %101 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3611
  %102 = icmp ne %struct._SERVER_REC* %101, null, !dbg !3613
  br i1 %102, label %103, label %105, !dbg !3614

; <label>:103:                                    ; preds = %93
  %104 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3615
  call void @server_ref(%struct._SERVER_REC* %104), !dbg !3617
  br label %105, !dbg !3617

; <label>:105:                                    ; preds = %103, %93
  %106 = load i8*, i8** %12, align 8, !dbg !3618
  %107 = load i8*, i8** %14, align 8, !dbg !3620
  %108 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3621
  %109 = load i8*, i8** %8, align 8, !dbg !3622
  %110 = call i32 (i8*, i32, ...) @signal_emit(i8* %106, i32 3, i8* %107, %struct._SERVER_REC* %108, i8* %109), !dbg !3623
  %111 = icmp ne i32 %110, 0, !dbg !3623
  br i1 %111, label %118, label %112, !dbg !3624

; <label>:112:                                    ; preds = %105
  %113 = load i32, i32* @signal_default_command, align 4, !dbg !3625
  %114 = load i8*, i8** %5, align 8, !dbg !3627
  %115 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3628
  %116 = load i8*, i8** %8, align 8, !dbg !3629
  %117 = call i32 (i32, i32, ...) @signal_emit_id(i32 %113, i32 3, i8* %114, %struct._SERVER_REC* %115, i8* %116), !dbg !3630
  br label %118, !dbg !3631

; <label>:118:                                    ; preds = %112, %105
  %119 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3632
  %120 = icmp ne %struct._SERVER_REC* %119, null, !dbg !3634
  br i1 %120, label %121, label %134, !dbg !3635

; <label>:121:                                    ; preds = %118
  %122 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3636
  %123 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %122, i32 0, i32 8, !dbg !3639
  %124 = load i8, i8* %123, align 8, !dbg !3639
  %125 = lshr i8 %124, 2, !dbg !3639
  %126 = and i8 %125, 1, !dbg !3639
  %127 = zext i8 %126 to i32, !dbg !3639
  %128 = icmp ne i32 %127, 0, !dbg !3636
  br i1 %128, label %129, label %131, !dbg !3640

; <label>:129:                                    ; preds = %121
  %130 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3641
  call void @server_disconnect(%struct._SERVER_REC* %130), !dbg !3642
  br label %131, !dbg !3642

; <label>:131:                                    ; preds = %129, %121
  %132 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !3643
  %133 = call i32 @server_unref(%struct._SERVER_REC* %132), !dbg !3644
  br label %134, !dbg !3645

; <label>:134:                                    ; preds = %131, %118
  %135 = load i8*, i8** %15, align 8, !dbg !3646
  store i8* %135, i8** @current_command, align 8, !dbg !3647
  %136 = load i8*, i8** %12, align 8, !dbg !3648
  call void @g_free(i8* %136), !dbg !3649
  %137 = load i8*, i8** %13, align 8, !dbg !3650
  call void @g_free(i8* %137), !dbg !3651
  br label %138, !dbg !3652

; <label>:138:                                    ; preds = %134, %85, %73, %53, %20
  ret void, !dbg !3653
}

declare %struct._GSList* @gslist_find_icase_string(%struct._GSList*, i8*) #2

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare void @eval_special_string(i8*, i8*, %struct._SERVER_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_protocol_match(%struct.COMMAND_REC*, %struct._SERVER_REC*) #0 !dbg !3654 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.COMMAND_REC*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.COMMAND_MODULE_REC*, align 8
  store %struct.COMMAND_REC* %0, %struct.COMMAND_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %4, metadata !3657, metadata !540), !dbg !3658
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3659, metadata !540), !dbg !3660
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !3661, metadata !540), !dbg !3662
  %8 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %4, align 8, !dbg !3663
  %9 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %8, i32 0, i32 0, !dbg !3665
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !3665
  store %struct._GSList* %10, %struct._GSList** %6, align 8, !dbg !3666
  br label %11, !dbg !3667

; <label>:11:                                     ; preds = %37, %2
  %12 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3668
  %13 = icmp ne %struct._GSList* %12, null, !dbg !3671
  br i1 %13, label %14, label %41, !dbg !3672

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.COMMAND_MODULE_REC** %7, metadata !3673, metadata !540), !dbg !3675
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3676
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !3677
  %17 = load i8*, i8** %16, align 8, !dbg !3677
  %18 = bitcast i8* %17 to %struct.COMMAND_MODULE_REC*, !dbg !3676
  store %struct.COMMAND_MODULE_REC* %18, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3675
  %19 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3678
  %20 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %19, i32 0, i32 2, !dbg !3680
  %21 = load i32, i32* %20, align 8, !dbg !3680
  %22 = icmp eq i32 %21, -1, !dbg !3681
  br i1 %22, label %23, label %24, !dbg !3682

; <label>:23:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !3683
  br label %42, !dbg !3683

; <label>:24:                                     ; preds = %14
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3685
  %26 = icmp ne %struct._SERVER_REC* %25, null, !dbg !3687
  br i1 %26, label %27, label %36, !dbg !3688

; <label>:27:                                     ; preds = %24
  %28 = load %struct.COMMAND_MODULE_REC*, %struct.COMMAND_MODULE_REC** %7, align 8, !dbg !3689
  %29 = getelementptr inbounds %struct.COMMAND_MODULE_REC, %struct.COMMAND_MODULE_REC* %28, i32 0, i32 2, !dbg !3691
  %30 = load i32, i32* %29, align 8, !dbg !3691
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3692
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 1, !dbg !3693
  %33 = load i32, i32* %32, align 4, !dbg !3693
  %34 = icmp eq i32 %30, %33, !dbg !3694
  br i1 %34, label %35, label %36, !dbg !3695

; <label>:35:                                     ; preds = %27
  store i32 1, i32* %3, align 4, !dbg !3696
  br label %42, !dbg !3696

; <label>:36:                                     ; preds = %27, %24
  br label %37, !dbg !3698

; <label>:37:                                     ; preds = %36
  %38 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3699
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !3701
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !3701
  store %struct._GSList* %40, %struct._GSList** %6, align 8, !dbg !3702
  br label %11, !dbg !3703, !llvm.loop !3704

; <label>:41:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !3706
  br label %42, !dbg !3706

; <label>:42:                                     ; preds = %41, %35, %23
  %43 = load i32, i32* %3, align 4, !dbg !3707
  ret i32 %43, !dbg !3707
}

declare void @server_ref(%struct._SERVER_REC*) #2

declare i32 @signal_emit_id(i32, i32, ...) #2

declare void @server_disconnect(%struct._SERVER_REC*) #2

declare i32 @server_unref(%struct._SERVER_REC*) #2

declare i8* @convert_home(i8*) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #6

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!532, !533}
!llvm.ident = !{!534}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, globals: !526)
!1 = !DIFile(filename: "line23-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !56}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 25, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!38 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!39 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!40 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!41 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!42 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!43 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!44 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!45 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!46 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!47 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!48 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!49 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!50 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!51 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!52 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!53 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!54 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!55 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 51, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67}
!59 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!60 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!61 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!62 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!63 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!64 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!65 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!66 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!67 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!68 = !{!69, !70, !74, !76, !94, !99, !87, !107, !118, !90, !504, !505, !510, !93, !402, !514, !522, !436}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_REC", file: !36, line: 23, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 18, size: 256, align: 64, elements: !79)
!79 = !{!80, !89, !91, !92}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !78, file: !36, line: 19, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !83, line: 37, baseType: !84)
!83 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !83, line: 39, size: 128, align: 64, elements: !85)
!85 = !{!86, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !84, file: !83, line: 41, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !72, line: 77, baseType: !69)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !83, line: 42, baseType: !81, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !78, file: !36, line: 20, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !78, file: !36, line: 21, baseType: !90, size: 64, align: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !78, file: !36, line: 22, baseType: !93, size: 64, align: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_CALLBACK_REC", file: !36, line: 9, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 6, size: 128, align: 64, elements: !97)
!97 = !{!98, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !96, file: !36, line: 7, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !100, line: 9, baseType: !101)
!100 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !104, !104, !104, !104, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !96, file: !36, line: 8, baseType: !69, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "CMD_TEMP_REC", file: !109, line: 661, baseType: !110)
!109 = !DIFile(filename: "commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 658, size: 128, align: 64, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !110, file: !109, line: 659, baseType: !90, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !110, file: !109, line: 660, baseType: !114, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !116, line: 37, baseType: !117)
!116 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !116, line: 37, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !120, line: 108, baseType: !121)
!120 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !122, line: 5, size: 704, align: 64, elements: !123)
!122 = !DIFile(filename: "window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !{!124, !127, !128, !129, !130, !497, !498, !499, !500, !501, !502, !503}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !125, line: 3, baseType: !126, size: 32, align: 32)
!125 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !121, file: !125, line: 4, baseType: !126, size: 32, align: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !121, file: !125, line: 5, baseType: !114, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !121, file: !125, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !121, file: !125, line: 8, baseType: !131, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !120, line: 107, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !134, line: 30, size: 2240, align: 64, elements: !135)
!134 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !{!136, !138, !139, !140, !361, !366, !367, !368, !369, !370, !371, !372, !373, !374, !378, !379, !383, !384, !385, !389, !390, !391, !392, !393, !394, !395, !396, !397, !404, !405, !406, !407, !408, !412, !416, !420, !424, !428, !432, !485, !492, !496}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !137, line: 3, baseType: !126, size: 32, align: 32)
!137 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !133, file: !137, line: 4, baseType: !126, size: 32, align: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !133, file: !137, line: 6, baseType: !126, size: 32, align: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !133, file: !137, line: 8, baseType: !141, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !120, line: 113, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !134, line: 25, size: 1920, align: 64, elements: !144)
!144 = !{!145, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !146, line: 3, baseType: !126, size: 32, align: 32)
!146 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !143, file: !146, line: 4, baseType: !126, size: 32, align: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !143, file: !146, line: 6, baseType: !126, size: 32, align: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !143, file: !146, line: 9, baseType: !90, size: 64, align: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !143, file: !146, line: 10, baseType: !126, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !143, file: !146, line: 11, baseType: !90, size: 64, align: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !143, file: !146, line: 11, baseType: !90, size: 64, align: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !143, file: !146, line: 11, baseType: !90, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !143, file: !146, line: 13, baseType: !155, size: 16, align: 16, offset: 448)
!155 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !143, file: !146, line: 14, baseType: !90, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !143, file: !146, line: 15, baseType: !90, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !143, file: !146, line: 16, baseType: !126, size: 32, align: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !143, file: !146, line: 17, baseType: !90, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !143, file: !146, line: 19, baseType: !161, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !120, line: 99, baseType: !163)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !120, line: 99, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !143, file: !146, line: 19, baseType: !161, size: 64, align: 64, offset: 832)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !143, file: !146, line: 21, baseType: !90, size: 64, align: 64, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !143, file: !146, line: 22, baseType: !90, size: 64, align: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !143, file: !146, line: 23, baseType: !90, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !143, file: !146, line: 24, baseType: !90, size: 64, align: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !143, file: !146, line: 26, baseType: !90, size: 64, align: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !143, file: !146, line: 27, baseType: !90, size: 64, align: 64, offset: 1216)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !143, file: !146, line: 28, baseType: !90, size: 64, align: 64, offset: 1280)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !143, file: !146, line: 29, baseType: !90, size: 64, align: 64, offset: 1344)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !143, file: !146, line: 30, baseType: !90, size: 64, align: 64, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !143, file: !146, line: 31, baseType: !90, size: 64, align: 64, offset: 1472)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !143, file: !146, line: 32, baseType: !90, size: 64, align: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !143, file: !146, line: 33, baseType: !90, size: 64, align: 64, offset: 1600)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !143, file: !146, line: 35, baseType: !178, size: 64, align: 64, offset: 1664)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !181)
!181 = !{!182, !184, !318, !319, !324, !325, !326, !327, !328, !337, !338, !339, !343, !344, !345, !346, !347, !348, !349, !350}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !180, file: !4, line: 100, baseType: !183, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !72, line: 49, baseType: !126)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !180, file: !4, line: 101, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !188)
!188 = !{!189, !211, !217, !224, !228, !305, !309, !314}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !187, file: !4, line: 133, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !178, !70, !194, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !195, line: 66, baseType: !196)
!195 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!196 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !201, line: 42, baseType: !202)
!201 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !201, line: 44, size: 128, align: 64, elements: !203)
!203 = !{!204, !209, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !202, file: !201, line: 46, baseType: !205, size: 32, align: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !206, line: 36, baseType: !207)
!206 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !195, line: 45, baseType: !208)
!208 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !202, file: !201, line: 47, baseType: !183, size: 32, align: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !202, file: !201, line: 48, baseType: !70, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !187, file: !4, line: 138, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!193, !178, !215, !194, !197, !198}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !187, file: !4, line: 143, baseType: !218, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!193, !178, !221, !223, !198}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !195, line: 51, baseType: !222)
!222 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !187, file: !4, line: 147, baseType: !225, size: 64, align: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!193, !178, !198}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !187, file: !4, line: 149, baseType: !229, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !178, !304}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !235)
!235 = !{!236, !237, !258, !287, !289, !293, !294, !295, !296, !297, !298, !299, !300}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !234, file: !16, line: 174, baseType: !87, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !234, file: !16, line: 175, baseType: !238, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !241)
!241 = !{!242, !246, !247}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !240, file: !16, line: 198, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !87}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !240, file: !16, line: 199, baseType: !243, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !240, file: !16, line: 200, baseType: !248, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !87, !232, !251, !257}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !87}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !72, line: 50, baseType: !183)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !234, file: !16, line: 177, baseType: !259, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !263)
!263 = !{!264, !269, !273, !277, !281, !282}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !262, file: !16, line: 216, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!256, !232, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !262, file: !16, line: 218, baseType: !270, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!256, !232}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !262, file: !16, line: 219, baseType: !274, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!256, !232, !252, !87}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !262, file: !16, line: 222, baseType: !278, size: 64, align: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !232}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !262, file: !16, line: 226, baseType: !252, size: 64, align: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !262, file: !16, line: 227, baseType: !283, size: 64, align: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !234, file: !16, line: 178, baseType: !288, size: 32, align: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !72, line: 55, baseType: !208)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !234, file: !16, line: 180, baseType: !290, size: 64, align: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !292)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !234, file: !16, line: 182, baseType: !183, size: 32, align: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !16, line: 183, baseType: !288, size: 32, align: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !234, file: !16, line: 184, baseType: !288, size: 32, align: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !234, file: !16, line: 186, baseType: !81, size: 64, align: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !234, file: !16, line: 188, baseType: !232, size: 64, align: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !16, line: 189, baseType: !232, size: 64, align: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !16, line: 191, baseType: !90, size: 64, align: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !234, file: !16, line: 193, baseType: !301, size: 64, align: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !303)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !187, file: !4, line: 151, baseType: !306, size: 64, align: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !178}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !187, file: !4, line: 152, baseType: !310, size: 64, align: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!193, !178, !313, !198}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !187, file: !4, line: 155, baseType: !315, size: 64, align: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!313, !178}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !180, file: !4, line: 103, baseType: !70, size: 64, align: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !180, file: !4, line: 104, baseType: !320, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !321, line: 77, baseType: !322)
!321 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !321, line: 77, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !180, file: !4, line: 105, baseType: !320, size: 64, align: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !180, file: !4, line: 106, baseType: !70, size: 64, align: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !180, file: !4, line: 107, baseType: !288, size: 32, align: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !180, file: !4, line: 109, baseType: !194, size: 64, align: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !180, file: !4, line: 110, baseType: !329, size: 64, align: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !331, line: 39, baseType: !332)
!331 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !331, line: 41, size: 192, align: 64, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !332, file: !331, line: 43, baseType: !70, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !332, file: !331, line: 44, baseType: !194, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !332, file: !331, line: 45, baseType: !194, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !180, file: !4, line: 111, baseType: !329, size: 64, align: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !180, file: !4, line: 112, baseType: !329, size: 64, align: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !180, file: !4, line: 113, baseType: !340, size: 48, align: 8, offset: 704)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 48, align: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 6)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !180, file: !4, line: 117, baseType: !288, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !180, file: !4, line: 118, baseType: !288, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !180, file: !4, line: 119, baseType: !288, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !180, file: !4, line: 120, baseType: !288, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !180, file: !4, line: 121, baseType: !288, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !180, file: !4, line: 122, baseType: !288, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !180, file: !4, line: 124, baseType: !87, size: 64, align: 64, offset: 768)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !180, file: !4, line: 125, baseType: !87, size: 64, align: 64, offset: 832)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !143, file: !146, line: 38, baseType: !208, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !143, file: !146, line: 39, baseType: !208, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !143, file: !146, line: 40, baseType: !208, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !143, file: !146, line: 41, baseType: !208, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !143, file: !146, line: 42, baseType: !208, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !143, file: !146, line: 43, baseType: !208, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !143, file: !146, line: 44, baseType: !208, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !143, file: !146, line: 45, baseType: !208, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !143, file: !146, line: 46, baseType: !90, size: 64, align: 64, offset: 1792)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !143, file: !146, line: 47, baseType: !90, size: 64, align: 64, offset: 1856)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !133, file: !137, line: 9, baseType: !362, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !363, line: 75, baseType: !364)
!363 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !365, line: 139, baseType: !222)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !133, file: !137, line: 10, baseType: !362, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !133, file: !137, line: 12, baseType: !90, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !133, file: !137, line: 13, baseType: !90, size: 64, align: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !133, file: !137, line: 15, baseType: !208, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !133, file: !137, line: 16, baseType: !208, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !133, file: !137, line: 17, baseType: !208, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !133, file: !137, line: 18, baseType: !208, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !133, file: !137, line: 19, baseType: !208, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !133, file: !137, line: 21, baseType: !375, size: 64, align: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !120, line: 102, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !120, line: 102, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !133, file: !137, line: 22, baseType: !126, size: 32, align: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !133, file: !137, line: 25, baseType: !380, size: 128, align: 64, offset: 640)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, align: 64, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !133, file: !137, line: 26, baseType: !126, size: 32, align: 32, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !133, file: !137, line: 27, baseType: !126, size: 32, align: 32, offset: 800)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !133, file: !137, line: 29, baseType: !386, size: 64, align: 64, offset: 832)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !120, line: 103, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !120, line: 103, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !133, file: !137, line: 30, baseType: !114, size: 64, align: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !133, file: !137, line: 32, baseType: !90, size: 64, align: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !133, file: !137, line: 33, baseType: !90, size: 64, align: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !133, file: !137, line: 34, baseType: !90, size: 64, align: 64, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !133, file: !137, line: 35, baseType: !208, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !133, file: !137, line: 36, baseType: !208, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !133, file: !137, line: 37, baseType: !208, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !133, file: !137, line: 38, baseType: !208, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !133, file: !137, line: 40, baseType: !398, size: 128, align: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !72, line: 504, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !72, line: 506, size: 128, align: 64, elements: !400)
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !399, file: !72, line: 508, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !72, line: 48, baseType: !222)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !399, file: !72, line: 509, baseType: !402, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !133, file: !137, line: 41, baseType: !362, size: 64, align: 64, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !133, file: !137, line: 42, baseType: !126, size: 32, align: 32, offset: 1408)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !133, file: !137, line: 44, baseType: !81, size: 64, align: 64, offset: 1472)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !133, file: !137, line: 45, baseType: !81, size: 64, align: 64, offset: 1536)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !133, file: !137, line: 53, baseType: !409, size: 64, align: 64, offset: 1600)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !131, !74, !126}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !133, file: !137, line: 55, baseType: !413, size: 64, align: 64, offset: 1664)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!126, !131, !73}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !133, file: !137, line: 57, baseType: !417, size: 64, align: 64, offset: 1728)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!126, !131, !74}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !133, file: !137, line: 60, baseType: !421, size: 64, align: 64, offset: 1792)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!74, !131}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !133, file: !137, line: 62, baseType: !425, size: 64, align: 64, offset: 1856)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !131, !74, !74, !126}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !133, file: !137, line: 65, baseType: !429, size: 64, align: 64, offset: 1920)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!93, !131, !74, !74}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !133, file: !137, line: 69, baseType: !433, size: 64, align: 64, offset: 1984)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !131, !74}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !120, line: 109, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !439, line: 15, size: 1408, align: 64, elements: !440)
!439 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !455, !459, !461, !462, !463, !464, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !125, line: 3, baseType: !126, size: 32, align: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !438, file: !125, line: 4, baseType: !126, size: 32, align: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !438, file: !125, line: 5, baseType: !114, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !438, file: !125, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !438, file: !125, line: 8, baseType: !131, size: 64, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !438, file: !125, line: 9, baseType: !90, size: 64, align: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !125, line: 10, baseType: !90, size: 64, align: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !438, file: !125, line: 11, baseType: !362, size: 64, align: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !438, file: !125, line: 12, baseType: !126, size: 32, align: 32, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !438, file: !125, line: 13, baseType: !90, size: 64, align: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !438, file: !125, line: 15, baseType: !452, size: 64, align: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !118}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !438, file: !125, line: 17, baseType: !456, size: 64, align: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!74, !118}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !438, file: !460, line: 5, baseType: !90, size: 64, align: 64, offset: 704)
!460 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !438, file: !460, line: 6, baseType: !90, size: 64, align: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !438, file: !460, line: 7, baseType: !362, size: 64, align: 64, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !438, file: !460, line: 9, baseType: !114, size: 64, align: 64, offset: 896)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !438, file: !460, line: 10, baseType: !465, size: 64, align: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !120, line: 111, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !120, line: 111, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !438, file: !460, line: 12, baseType: !208, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !438, file: !460, line: 13, baseType: !90, size: 64, align: 64, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !438, file: !460, line: 14, baseType: !126, size: 32, align: 32, offset: 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !438, file: !460, line: 15, baseType: !90, size: 64, align: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !438, file: !460, line: 17, baseType: !208, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !438, file: !460, line: 18, baseType: !208, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !438, file: !460, line: 19, baseType: !208, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !438, file: !460, line: 20, baseType: !208, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !438, file: !460, line: 22, baseType: !208, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !438, file: !460, line: 23, baseType: !208, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !438, file: !460, line: 24, baseType: !208, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !438, file: !460, line: 25, baseType: !208, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !438, file: !460, line: 26, baseType: !208, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !438, file: !460, line: 31, baseType: !482, size: 64, align: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!90, !436}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !133, file: !137, line: 70, baseType: !486, size: 64, align: 64, offset: 2048)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !131, !74}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !120, line: 110, baseType: !491)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !120, line: 110, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !133, file: !137, line: 71, baseType: !493, size: 64, align: 64, offset: 2112)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!126, !74, !74}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !133, file: !137, line: 73, baseType: !493, size: 64, align: 64, offset: 2176)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !121, file: !125, line: 9, baseType: !90, size: 64, align: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !125, line: 10, baseType: !90, size: 64, align: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !121, file: !125, line: 11, baseType: !362, size: 64, align: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !121, file: !125, line: 12, baseType: !126, size: 32, align: 32, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !121, file: !125, line: 13, baseType: !90, size: 64, align: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !121, file: !125, line: 15, baseType: !452, size: 64, align: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !121, file: !125, line: 17, baseType: !456, size: 64, align: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !72, line: 90, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!288, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !72, line: 78, baseType: !104)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !72, line: 80, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!183, !509, !509}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_MODULE_REC", file: !36, line: 16, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 11, size: 256, align: 64, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !36, line: 12, baseType: !90, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !516, file: !36, line: 13, baseType: !90, size: 64, align: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !516, file: !36, line: 14, baseType: !126, size: 32, align: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !516, file: !36, line: 15, baseType: !81, size: 64, align: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !72, line: 88, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !87, !87}
!526 = !{!527, !528, !529, !530, !531}
!527 = distinct !DIGlobalVariable(name: "commands", scope: !0, file: !109, line: 34, type: !81, isLocal: false, isDefinition: true, variable: %struct._GSList** @commands)
!528 = distinct !DIGlobalVariable(name: "current_command", scope: !0, file: !109, line: 35, type: !90, isLocal: false, isDefinition: true, variable: i8** @current_command)
!529 = distinct !DIGlobalVariable(name: "signal_default_command", scope: !0, file: !109, line: 37, type: !126, isLocal: true, isDefinition: true, variable: i32* @signal_default_command)
!530 = distinct !DIGlobalVariable(name: "alias_runstack", scope: !0, file: !109, line: 39, type: !81, isLocal: true, isDefinition: true, variable: %struct._GSList** @alias_runstack)
!531 = distinct !DIGlobalVariable(name: "eval_recursion_depth", scope: !0, file: !109, line: 956, type: !126, isLocal: true, isDefinition: true, variable: i32* @eval_recursion_depth)
!532 = !{i32 2, !"Dwarf Version", i32 4}
!533 = !{i32 2, !"Debug Info Version", i32 3}
!534 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!535 = distinct !DISubprogram(name: "command_find", scope: !109, file: !109, line: 41, type: !536, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{!76, !74}
!538 = !{}
!539 = !DILocalVariable(name: "cmd", arg: 1, scope: !535, file: !109, line: 41, type: !74)
!540 = !DIExpression()
!541 = !DILocation(line: 41, column: 39, scope: !535)
!542 = !DILocalVariable(name: "tmp", scope: !535, file: !109, line: 43, type: !81)
!543 = !DILocation(line: 43, column: 10, scope: !535)
!544 = !DILocation(line: 45, column: 2, scope: !535)
!545 = distinct !{!545, !544}
!546 = !DILocation(line: 45, column: 10, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !109, discriminator: 1)
!548 = distinct !DILexicalBlock(scope: !549, file: !109, line: 45, column: 10)
!549 = distinct !DILexicalBlock(scope: !535, file: !109, line: 45, column: 4)
!550 = !DILocation(line: 45, column: 14, scope: !547)
!551 = !DILocation(line: 45, column: 5, scope: !552)
!552 = !DILexicalBlockFile(scope: !553, file: !109, discriminator: 2)
!553 = distinct !DILexicalBlock(scope: !548, file: !109, line: 45, column: 3)
!554 = !DILocation(line: 45, column: 14, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !109, discriminator: 3)
!556 = distinct !DILexicalBlock(scope: !548, file: !109, line: 45, column: 12)
!557 = !DILocation(line: 45, column: 98, scope: !555)
!558 = !DILocation(line: 45, column: 7, scope: !559)
!559 = !DILexicalBlockFile(scope: !549, file: !109, discriminator: 4)
!560 = !DILocation(line: 47, column: 13, scope: !561)
!561 = distinct !DILexicalBlock(scope: !535, file: !109, line: 47, column: 2)
!562 = !DILocation(line: 47, column: 11, scope: !561)
!563 = !DILocation(line: 47, column: 7, scope: !561)
!564 = !DILocation(line: 47, column: 23, scope: !565)
!565 = !DILexicalBlockFile(scope: !566, file: !109, discriminator: 1)
!566 = distinct !DILexicalBlock(scope: !561, file: !109, line: 47, column: 2)
!567 = !DILocation(line: 47, column: 27, scope: !565)
!568 = !DILocation(line: 47, column: 2, scope: !565)
!569 = !DILocalVariable(name: "rec", scope: !570, file: !109, line: 48, type: !76)
!570 = distinct !DILexicalBlock(scope: !566, file: !109, line: 47, column: 52)
!571 = !DILocation(line: 48, column: 16, scope: !570)
!572 = !DILocation(line: 48, column: 22, scope: !570)
!573 = !DILocation(line: 48, column: 27, scope: !570)
!574 = !DILocation(line: 50, column: 26, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !109, line: 50, column: 7)
!576 = !DILocation(line: 50, column: 31, scope: !575)
!577 = !DILocation(line: 50, column: 36, scope: !575)
!578 = !DILocation(line: 50, column: 7, scope: !575)
!579 = !DILocation(line: 50, column: 41, scope: !575)
!580 = !DILocation(line: 50, column: 7, scope: !570)
!581 = !DILocation(line: 51, column: 11, scope: !575)
!582 = !DILocation(line: 51, column: 4, scope: !575)
!583 = !DILocation(line: 52, column: 2, scope: !570)
!584 = !DILocation(line: 47, column: 41, scope: !585)
!585 = !DILexicalBlockFile(scope: !566, file: !109, discriminator: 2)
!586 = !DILocation(line: 47, column: 46, scope: !585)
!587 = !DILocation(line: 47, column: 39, scope: !585)
!588 = !DILocation(line: 47, column: 2, scope: !585)
!589 = distinct !{!589, !590}
!590 = !DILocation(line: 47, column: 2, scope: !535)
!591 = !DILocation(line: 54, column: 2, scope: !535)
!592 = !DILocation(line: 55, column: 1, scope: !535)
!593 = distinct !DISubprogram(name: "command_have_sub", scope: !109, file: !109, line: 101, type: !594, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!594 = !DISubroutineType(types: !595)
!595 = !{!126, !74}
!596 = !DILocalVariable(name: "command", arg: 1, scope: !593, file: !109, line: 101, type: !74)
!597 = !DILocation(line: 101, column: 34, scope: !593)
!598 = !DILocalVariable(name: "tmp", scope: !593, file: !109, line: 103, type: !81)
!599 = !DILocation(line: 103, column: 10, scope: !593)
!600 = !DILocalVariable(name: "len", scope: !593, file: !109, line: 104, type: !126)
!601 = !DILocation(line: 104, column: 6, scope: !593)
!602 = !DILocation(line: 106, column: 2, scope: !593)
!603 = distinct !{!603, !602}
!604 = !DILocation(line: 106, column: 10, scope: !605)
!605 = !DILexicalBlockFile(scope: !606, file: !109, discriminator: 1)
!606 = distinct !DILexicalBlock(scope: !607, file: !109, line: 106, column: 10)
!607 = distinct !DILexicalBlock(scope: !593, file: !109, line: 106, column: 4)
!608 = !DILocation(line: 106, column: 18, scope: !605)
!609 = !DILocation(line: 106, column: 5, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !109, discriminator: 2)
!611 = distinct !DILexicalBlock(scope: !606, file: !109, line: 106, column: 3)
!612 = !DILocation(line: 106, column: 14, scope: !613)
!613 = !DILexicalBlockFile(scope: !614, file: !109, discriminator: 3)
!614 = distinct !DILexicalBlock(scope: !606, file: !109, line: 106, column: 12)
!615 = !DILocation(line: 106, column: 102, scope: !613)
!616 = !DILocation(line: 106, column: 119, scope: !617)
!617 = !DILexicalBlockFile(scope: !607, file: !109, discriminator: 4)
!618 = !DILocation(line: 109, column: 22, scope: !593)
!619 = !DILocation(line: 109, column: 15, scope: !593)
!620 = !DILocation(line: 109, column: 13, scope: !593)
!621 = !DILocation(line: 110, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !593, file: !109, line: 110, column: 2)
!623 = !DILocation(line: 110, column: 11, scope: !622)
!624 = !DILocation(line: 110, column: 7, scope: !622)
!625 = !DILocation(line: 110, column: 23, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !109, discriminator: 1)
!627 = distinct !DILexicalBlock(scope: !622, file: !109, line: 110, column: 2)
!628 = !DILocation(line: 110, column: 27, scope: !626)
!629 = !DILocation(line: 110, column: 2, scope: !626)
!630 = !DILocalVariable(name: "rec", scope: !631, file: !109, line: 111, type: !76)
!631 = distinct !DILexicalBlock(scope: !627, file: !109, line: 110, column: 52)
!632 = !DILocation(line: 111, column: 16, scope: !631)
!633 = !DILocation(line: 111, column: 22, scope: !631)
!634 = !DILocation(line: 111, column: 27, scope: !631)
!635 = !DILocation(line: 113, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !109, line: 113, column: 7)
!637 = !DILocation(line: 113, column: 32, scope: !636)
!638 = !DILocation(line: 113, column: 37, scope: !636)
!639 = !DILocation(line: 113, column: 46, scope: !636)
!640 = !DILocation(line: 113, column: 7, scope: !636)
!641 = !DILocation(line: 113, column: 51, scope: !636)
!642 = !DILocation(line: 113, column: 56, scope: !636)
!643 = !DILocation(line: 114, column: 16, scope: !636)
!644 = !DILocation(line: 114, column: 7, scope: !636)
!645 = !DILocation(line: 114, column: 12, scope: !636)
!646 = !DILocation(line: 114, column: 21, scope: !636)
!647 = !DILocation(line: 113, column: 7, scope: !648)
!648 = !DILexicalBlockFile(scope: !631, file: !109, discriminator: 1)
!649 = !DILocation(line: 115, column: 4, scope: !636)
!650 = !DILocation(line: 116, column: 2, scope: !631)
!651 = !DILocation(line: 110, column: 41, scope: !652)
!652 = !DILexicalBlockFile(scope: !627, file: !109, discriminator: 2)
!653 = !DILocation(line: 110, column: 46, scope: !652)
!654 = !DILocation(line: 110, column: 39, scope: !652)
!655 = !DILocation(line: 110, column: 2, scope: !652)
!656 = distinct !{!656, !657}
!657 = !DILocation(line: 110, column: 2, scope: !593)
!658 = !DILocation(line: 118, column: 2, scope: !593)
!659 = !DILocation(line: 119, column: 1, scope: !593)
!660 = distinct !DISubprogram(name: "command_bind_full", scope: !109, file: !109, line: 142, type: !661, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !74, !126, !74, !126, !74, !99, !69}
!663 = !DILocalVariable(name: "module", arg: 1, scope: !660, file: !109, line: 142, type: !74)
!664 = !DILocation(line: 142, column: 36, scope: !660)
!665 = !DILocalVariable(name: "priority", arg: 2, scope: !660, file: !109, line: 142, type: !126)
!666 = !DILocation(line: 142, column: 48, scope: !660)
!667 = !DILocalVariable(name: "cmd", arg: 3, scope: !660, file: !109, line: 142, type: !74)
!668 = !DILocation(line: 142, column: 70, scope: !660)
!669 = !DILocalVariable(name: "protocol", arg: 4, scope: !660, file: !109, line: 143, type: !126)
!670 = !DILocation(line: 143, column: 14, scope: !660)
!671 = !DILocalVariable(name: "category", arg: 5, scope: !660, file: !109, line: 143, type: !74)
!672 = !DILocation(line: 143, column: 36, scope: !660)
!673 = !DILocalVariable(name: "func", arg: 6, scope: !660, file: !109, line: 143, type: !99)
!674 = !DILocation(line: 143, column: 58, scope: !660)
!675 = !DILocalVariable(name: "user_data", arg: 7, scope: !660, file: !109, line: 144, type: !69)
!676 = !DILocation(line: 144, column: 16, scope: !660)
!677 = !DILocalVariable(name: "rec", scope: !660, file: !109, line: 146, type: !76)
!678 = !DILocation(line: 146, column: 15, scope: !660)
!679 = !DILocalVariable(name: "modrec", scope: !660, file: !109, line: 147, type: !514)
!680 = !DILocation(line: 147, column: 22, scope: !660)
!681 = !DILocalVariable(name: "cb", scope: !660, file: !109, line: 148, type: !94)
!682 = !DILocation(line: 148, column: 31, scope: !660)
!683 = !DILocalVariable(name: "str", scope: !660, file: !109, line: 149, type: !90)
!684 = !DILocation(line: 149, column: 8, scope: !660)
!685 = !DILocation(line: 151, column: 2, scope: !660)
!686 = distinct !{!686, !685}
!687 = !DILocation(line: 151, column: 10, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !109, discriminator: 1)
!689 = distinct !DILexicalBlock(scope: !690, file: !109, line: 151, column: 10)
!690 = distinct !DILexicalBlock(scope: !660, file: !109, line: 151, column: 4)
!691 = !DILocation(line: 151, column: 17, scope: !688)
!692 = !DILocation(line: 151, column: 5, scope: !693)
!693 = !DILexicalBlockFile(scope: !694, file: !109, discriminator: 2)
!694 = distinct !DILexicalBlock(scope: !689, file: !109, line: 151, column: 3)
!695 = !DILocation(line: 151, column: 14, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !109, discriminator: 3)
!697 = distinct !DILexicalBlock(scope: !689, file: !109, line: 151, column: 12)
!698 = !DILocation(line: 151, column: 101, scope: !696)
!699 = !DILocation(line: 151, column: 112, scope: !700)
!700 = !DILexicalBlockFile(scope: !690, file: !109, discriminator: 4)
!701 = !DILocation(line: 152, column: 2, scope: !660)
!702 = distinct !{!702, !701}
!703 = !DILocation(line: 152, column: 10, scope: !704)
!704 = !DILexicalBlockFile(scope: !705, file: !109, discriminator: 1)
!705 = distinct !DILexicalBlock(scope: !706, file: !109, line: 152, column: 10)
!706 = distinct !DILexicalBlock(scope: !660, file: !109, line: 152, column: 4)
!707 = !DILocation(line: 152, column: 14, scope: !704)
!708 = !DILocation(line: 152, column: 5, scope: !709)
!709 = !DILexicalBlockFile(scope: !710, file: !109, discriminator: 2)
!710 = distinct !DILexicalBlock(scope: !705, file: !109, line: 152, column: 3)
!711 = !DILocation(line: 152, column: 14, scope: !712)
!712 = !DILexicalBlockFile(scope: !713, file: !109, discriminator: 3)
!713 = distinct !DILexicalBlock(scope: !705, file: !109, line: 152, column: 12)
!714 = !DILocation(line: 152, column: 98, scope: !712)
!715 = !DILocation(line: 152, column: 109, scope: !716)
!716 = !DILexicalBlockFile(scope: !706, file: !109, discriminator: 4)
!717 = !DILocation(line: 154, column: 21, scope: !660)
!718 = !DILocation(line: 154, column: 8, scope: !660)
!719 = !DILocation(line: 154, column: 6, scope: !660)
!720 = !DILocation(line: 155, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !660, file: !109, line: 155, column: 6)
!722 = !DILocation(line: 155, column: 10, scope: !721)
!723 = !DILocation(line: 155, column: 6, scope: !660)
!724 = !DILocation(line: 156, column: 26, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !109, line: 155, column: 18)
!726 = !DILocation(line: 156, column: 10, scope: !725)
!727 = !DILocation(line: 156, column: 7, scope: !725)
!728 = !DILocation(line: 157, column: 23, scope: !725)
!729 = !DILocation(line: 157, column: 14, scope: !725)
!730 = !DILocation(line: 157, column: 3, scope: !725)
!731 = !DILocation(line: 157, column: 8, scope: !725)
!732 = !DILocation(line: 157, column: 12, scope: !725)
!733 = !DILocation(line: 158, column: 19, scope: !725)
!734 = !DILocation(line: 158, column: 28, scope: !725)
!735 = !DILocation(line: 158, column: 19, scope: !736)
!736 = !DILexicalBlockFile(scope: !725, file: !109, discriminator: 1)
!737 = !DILocation(line: 158, column: 53, scope: !738)
!738 = !DILexicalBlockFile(scope: !725, file: !109, discriminator: 2)
!739 = !DILocation(line: 158, column: 44, scope: !738)
!740 = !DILocation(line: 158, column: 19, scope: !738)
!741 = !DILocation(line: 158, column: 19, scope: !742)
!742 = !DILexicalBlockFile(scope: !725, file: !109, discriminator: 3)
!743 = !DILocation(line: 158, column: 3, scope: !742)
!744 = !DILocation(line: 158, column: 8, scope: !742)
!745 = !DILocation(line: 158, column: 17, scope: !742)
!746 = !DILocation(line: 159, column: 29, scope: !725)
!747 = !DILocation(line: 159, column: 39, scope: !725)
!748 = !DILocation(line: 159, column: 14, scope: !725)
!749 = !DILocation(line: 159, column: 12, scope: !725)
!750 = !DILocation(line: 160, column: 2, scope: !725)
!751 = !DILocation(line: 161, column: 37, scope: !660)
!752 = !DILocation(line: 161, column: 42, scope: !660)
!753 = !DILocation(line: 161, column: 50, scope: !660)
!754 = !DILocation(line: 161, column: 18, scope: !660)
!755 = !DILocation(line: 161, column: 16, scope: !660)
!756 = !DILocation(line: 163, column: 33, scope: !660)
!757 = !DILocation(line: 163, column: 8, scope: !660)
!758 = !DILocation(line: 163, column: 5, scope: !660)
!759 = !DILocation(line: 164, column: 13, scope: !660)
!760 = !DILocation(line: 164, column: 2, scope: !660)
!761 = !DILocation(line: 164, column: 6, scope: !660)
!762 = !DILocation(line: 164, column: 11, scope: !660)
!763 = !DILocation(line: 165, column: 18, scope: !660)
!764 = !DILocation(line: 165, column: 2, scope: !660)
!765 = !DILocation(line: 165, column: 6, scope: !660)
!766 = !DILocation(line: 165, column: 16, scope: !660)
!767 = !DILocation(line: 166, column: 37, scope: !660)
!768 = !DILocation(line: 166, column: 45, scope: !660)
!769 = !DILocation(line: 166, column: 56, scope: !660)
!770 = !DILocation(line: 166, column: 22, scope: !660)
!771 = !DILocation(line: 166, column: 2, scope: !660)
!772 = !DILocation(line: 166, column: 10, scope: !660)
!773 = !DILocation(line: 166, column: 20, scope: !660)
!774 = !DILocation(line: 168, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !660, file: !109, line: 168, column: 6)
!776 = !DILocation(line: 168, column: 11, scope: !775)
!777 = !DILocation(line: 168, column: 6, scope: !660)
!778 = !DILocation(line: 169, column: 33, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !109, line: 168, column: 19)
!780 = !DILocation(line: 169, column: 9, scope: !779)
!781 = !DILocation(line: 169, column: 7, scope: !779)
!782 = !DILocation(line: 170, column: 19, scope: !779)
!783 = !DILocation(line: 170, column: 27, scope: !779)
!784 = !DILocation(line: 170, column: 37, scope: !779)
!785 = !DILocation(line: 170, column: 42, scope: !779)
!786 = !DILocation(line: 170, column: 48, scope: !779)
!787 = !DILocation(line: 170, column: 3, scope: !779)
!788 = !DILocation(line: 171, column: 10, scope: !779)
!789 = !DILocation(line: 171, column: 3, scope: !779)
!790 = !DILocation(line: 172, column: 2, scope: !779)
!791 = !DILocation(line: 174, column: 36, scope: !660)
!792 = !DILocation(line: 174, column: 2, scope: !660)
!793 = !DILocation(line: 175, column: 1, scope: !660)
!794 = !DILocation(line: 175, column: 1, scope: !795)
!795 = !DILexicalBlockFile(scope: !660, file: !109, discriminator: 1)
!796 = distinct !DISubprogram(name: "command_module_get", scope: !109, file: !109, line: 122, type: !797, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!797 = !DISubroutineType(types: !798)
!798 = !{!514, !76, !74, !126}
!799 = !DILocalVariable(name: "rec", arg: 1, scope: !796, file: !109, line: 122, type: !76)
!800 = !DILocation(line: 122, column: 33, scope: !796)
!801 = !DILocalVariable(name: "module", arg: 2, scope: !796, file: !109, line: 122, type: !74)
!802 = !DILocation(line: 122, column: 50, scope: !796)
!803 = !DILocalVariable(name: "protocol", arg: 3, scope: !796, file: !109, line: 122, type: !126)
!804 = !DILocation(line: 122, column: 62, scope: !796)
!805 = !DILocalVariable(name: "modrec", scope: !796, file: !109, line: 124, type: !514)
!806 = !DILocation(line: 124, column: 29, scope: !796)
!807 = !DILocation(line: 126, column: 2, scope: !796)
!808 = distinct !{!808, !807}
!809 = !DILocation(line: 126, column: 10, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !109, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !812, file: !109, line: 126, column: 10)
!812 = distinct !DILexicalBlock(scope: !796, file: !109, line: 126, column: 4)
!813 = !DILocation(line: 126, column: 14, scope: !810)
!814 = !DILocation(line: 126, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !109, discriminator: 2)
!816 = distinct !DILexicalBlock(scope: !811, file: !109, line: 126, column: 3)
!817 = !DILocation(line: 126, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !109, discriminator: 3)
!819 = distinct !DILexicalBlock(scope: !811, file: !109, line: 126, column: 12)
!820 = !DILocation(line: 126, column: 98, scope: !818)
!821 = !DILocation(line: 126, column: 7, scope: !822)
!822 = !DILexicalBlockFile(scope: !812, file: !109, discriminator: 4)
!823 = !DILocation(line: 128, column: 31, scope: !796)
!824 = !DILocation(line: 128, column: 36, scope: !796)
!825 = !DILocation(line: 128, column: 11, scope: !796)
!826 = !DILocation(line: 128, column: 9, scope: !796)
!827 = !DILocation(line: 129, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !796, file: !109, line: 129, column: 6)
!829 = !DILocation(line: 129, column: 13, scope: !828)
!830 = !DILocation(line: 129, column: 6, scope: !796)
!831 = !DILocation(line: 130, column: 36, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !109, line: 129, column: 21)
!833 = !DILocation(line: 130, column: 13, scope: !832)
!834 = !DILocation(line: 130, column: 10, scope: !832)
!835 = !DILocation(line: 131, column: 27, scope: !832)
!836 = !DILocation(line: 131, column: 18, scope: !832)
!837 = !DILocation(line: 131, column: 3, scope: !832)
!838 = !DILocation(line: 131, column: 11, scope: !832)
!839 = !DILocation(line: 131, column: 16, scope: !832)
!840 = !DILocation(line: 132, column: 17, scope: !832)
!841 = !DILocation(line: 132, column: 25, scope: !832)
!842 = !DILocation(line: 132, column: 34, scope: !832)
!843 = !DILocation(line: 133, column: 33, scope: !832)
!844 = !DILocation(line: 133, column: 38, scope: !832)
!845 = !DILocation(line: 133, column: 47, scope: !832)
!846 = !DILocation(line: 133, column: 18, scope: !832)
!847 = !DILocation(line: 133, column: 3, scope: !832)
!848 = !DILocation(line: 133, column: 8, scope: !832)
!849 = !DILocation(line: 133, column: 16, scope: !832)
!850 = !DILocation(line: 134, column: 2, scope: !832)
!851 = !DILocation(line: 136, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !796, file: !109, line: 136, column: 13)
!853 = !DILocation(line: 136, column: 22, scope: !852)
!854 = !DILocation(line: 136, column: 13, scope: !796)
!855 = !DILocation(line: 137, column: 22, scope: !852)
!856 = !DILocation(line: 137, column: 3, scope: !852)
!857 = !DILocation(line: 137, column: 11, scope: !852)
!858 = !DILocation(line: 137, column: 20, scope: !852)
!859 = !DILocation(line: 139, column: 16, scope: !796)
!860 = !DILocation(line: 139, column: 9, scope: !796)
!861 = !DILocation(line: 140, column: 1, scope: !796)
!862 = distinct !DISubprogram(name: "command_unbind_full", scope: !109, file: !109, line: 229, type: !863, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !74, !99, !69}
!865 = !DILocalVariable(name: "cmd", arg: 1, scope: !862, file: !109, line: 229, type: !74)
!866 = !DILocation(line: 229, column: 38, scope: !862)
!867 = !DILocalVariable(name: "func", arg: 2, scope: !862, file: !109, line: 229, type: !99)
!868 = !DILocation(line: 229, column: 55, scope: !862)
!869 = !DILocalVariable(name: "user_data", arg: 3, scope: !862, file: !109, line: 229, type: !69)
!870 = !DILocation(line: 229, column: 67, scope: !862)
!871 = !DILocalVariable(name: "rec", scope: !862, file: !109, line: 231, type: !76)
!872 = !DILocation(line: 231, column: 15, scope: !862)
!873 = !DILocalVariable(name: "modrec", scope: !862, file: !109, line: 232, type: !514)
!874 = !DILocation(line: 232, column: 22, scope: !862)
!875 = !DILocalVariable(name: "str", scope: !862, file: !109, line: 233, type: !90)
!876 = !DILocation(line: 233, column: 8, scope: !862)
!877 = !DILocation(line: 235, column: 2, scope: !862)
!878 = distinct !{!878, !877}
!879 = !DILocation(line: 235, column: 10, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !109, discriminator: 1)
!881 = distinct !DILexicalBlock(scope: !882, file: !109, line: 235, column: 10)
!882 = distinct !DILexicalBlock(scope: !862, file: !109, line: 235, column: 4)
!883 = !DILocation(line: 235, column: 14, scope: !880)
!884 = !DILocation(line: 235, column: 5, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !109, discriminator: 2)
!886 = distinct !DILexicalBlock(scope: !881, file: !109, line: 235, column: 3)
!887 = !DILocation(line: 235, column: 14, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !109, discriminator: 3)
!889 = distinct !DILexicalBlock(scope: !881, file: !109, line: 235, column: 12)
!890 = !DILocation(line: 235, column: 98, scope: !888)
!891 = !DILocation(line: 235, column: 109, scope: !892)
!892 = !DILexicalBlockFile(scope: !882, file: !109, discriminator: 4)
!893 = !DILocation(line: 236, column: 2, scope: !862)
!894 = distinct !{!894, !893}
!895 = !DILocation(line: 236, column: 10, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !109, discriminator: 1)
!897 = distinct !DILexicalBlock(scope: !898, file: !109, line: 236, column: 10)
!898 = distinct !DILexicalBlock(scope: !862, file: !109, line: 236, column: 4)
!899 = !DILocation(line: 236, column: 15, scope: !896)
!900 = !DILocation(line: 236, column: 5, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !109, discriminator: 2)
!902 = distinct !DILexicalBlock(scope: !897, file: !109, line: 236, column: 3)
!903 = !DILocation(line: 236, column: 14, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !109, discriminator: 3)
!905 = distinct !DILexicalBlock(scope: !897, file: !109, line: 236, column: 12)
!906 = !DILocation(line: 236, column: 99, scope: !904)
!907 = !DILocation(line: 236, column: 110, scope: !908)
!908 = !DILexicalBlockFile(scope: !898, file: !109, discriminator: 4)
!909 = !DILocation(line: 238, column: 21, scope: !862)
!910 = !DILocation(line: 238, column: 8, scope: !862)
!911 = !DILocation(line: 238, column: 6, scope: !862)
!912 = !DILocation(line: 239, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !862, file: !109, line: 239, column: 6)
!914 = !DILocation(line: 239, column: 10, scope: !913)
!915 = !DILocation(line: 239, column: 6, scope: !862)
!916 = !DILocation(line: 240, column: 43, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !109, line: 239, column: 18)
!918 = !DILocation(line: 240, column: 48, scope: !917)
!919 = !DILocation(line: 240, column: 12, scope: !917)
!920 = !DILocation(line: 240, column: 10, scope: !917)
!921 = !DILocation(line: 241, column: 3, scope: !917)
!922 = distinct !{!922, !921}
!923 = !DILocation(line: 241, column: 11, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !109, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !926, file: !109, line: 241, column: 11)
!926 = distinct !DILexicalBlock(scope: !917, file: !109, line: 241, column: 5)
!927 = !DILocation(line: 241, column: 18, scope: !924)
!928 = !DILocation(line: 241, column: 6, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !109, discriminator: 2)
!930 = distinct !DILexicalBlock(scope: !925, file: !109, line: 241, column: 4)
!931 = !DILocation(line: 241, column: 15, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !109, discriminator: 3)
!933 = distinct !DILexicalBlock(scope: !925, file: !109, line: 241, column: 13)
!934 = !DILocation(line: 241, column: 102, scope: !932)
!935 = !DILocation(line: 241, column: 113, scope: !936)
!936 = !DILexicalBlockFile(scope: !926, file: !109, discriminator: 4)
!937 = !DILocation(line: 243, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !917, file: !109, line: 243, column: 7)
!939 = !DILocation(line: 243, column: 15, scope: !938)
!940 = !DILocation(line: 243, column: 25, scope: !938)
!941 = !DILocation(line: 243, column: 7, scope: !917)
!942 = !DILocation(line: 244, column: 27, scope: !938)
!943 = !DILocation(line: 244, column: 32, scope: !938)
!944 = !DILocation(line: 244, column: 4, scope: !938)
!945 = !DILocation(line: 245, column: 2, scope: !917)
!946 = !DILocation(line: 247, column: 32, scope: !862)
!947 = !DILocation(line: 247, column: 8, scope: !862)
!948 = !DILocation(line: 247, column: 6, scope: !862)
!949 = !DILocation(line: 248, column: 22, scope: !862)
!950 = !DILocation(line: 248, column: 43, scope: !862)
!951 = !DILocation(line: 248, column: 50, scope: !862)
!952 = !DILocation(line: 248, column: 2, scope: !862)
!953 = !DILocation(line: 249, column: 9, scope: !862)
!954 = !DILocation(line: 249, column: 2, scope: !862)
!955 = !DILocation(line: 250, column: 1, scope: !862)
!956 = !DILocation(line: 250, column: 1, scope: !957)
!957 = !DILexicalBlockFile(scope: !862, file: !109, discriminator: 1)
!958 = distinct !DISubprogram(name: "command_module_find_and_remove", scope: !109, file: !109, line: 76, type: !959, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!959 = !DISubroutineType(types: !960)
!960 = !{!514, !76, !99}
!961 = !DILocalVariable(name: "rec", arg: 1, scope: !958, file: !109, line: 76, type: !76)
!962 = !DILocation(line: 76, column: 45, scope: !958)
!963 = !DILocalVariable(name: "func", arg: 2, scope: !958, file: !109, line: 76, type: !99)
!964 = !DILocation(line: 76, column: 62, scope: !958)
!965 = !DILocalVariable(name: "tmp", scope: !958, file: !109, line: 78, type: !81)
!966 = !DILocation(line: 78, column: 10, scope: !958)
!967 = !DILocalVariable(name: "tmp2", scope: !958, file: !109, line: 78, type: !81)
!968 = !DILocation(line: 78, column: 16, scope: !958)
!969 = !DILocation(line: 80, column: 2, scope: !958)
!970 = distinct !{!970, !969}
!971 = !DILocation(line: 80, column: 10, scope: !972)
!972 = !DILexicalBlockFile(scope: !973, file: !109, discriminator: 1)
!973 = distinct !DILexicalBlock(scope: !974, file: !109, line: 80, column: 10)
!974 = distinct !DILexicalBlock(scope: !958, file: !109, line: 80, column: 4)
!975 = !DILocation(line: 80, column: 14, scope: !972)
!976 = !DILocation(line: 80, column: 5, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !109, discriminator: 2)
!978 = distinct !DILexicalBlock(scope: !973, file: !109, line: 80, column: 3)
!979 = !DILocation(line: 80, column: 14, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !109, discriminator: 3)
!981 = distinct !DILexicalBlock(scope: !973, file: !109, line: 80, column: 12)
!982 = !DILocation(line: 80, column: 98, scope: !980)
!983 = !DILocation(line: 80, column: 7, scope: !984)
!984 = !DILexicalBlockFile(scope: !974, file: !109, discriminator: 4)
!985 = !DILocation(line: 81, column: 2, scope: !958)
!986 = distinct !{!986, !985}
!987 = !DILocation(line: 81, column: 10, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !109, discriminator: 1)
!989 = distinct !DILexicalBlock(scope: !990, file: !109, line: 81, column: 10)
!990 = distinct !DILexicalBlock(scope: !958, file: !109, line: 81, column: 4)
!991 = !DILocation(line: 81, column: 15, scope: !988)
!992 = !DILocation(line: 81, column: 5, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !109, discriminator: 2)
!994 = distinct !DILexicalBlock(scope: !989, file: !109, line: 81, column: 3)
!995 = !DILocation(line: 81, column: 14, scope: !996)
!996 = !DILexicalBlockFile(scope: !997, file: !109, discriminator: 3)
!997 = distinct !DILexicalBlock(scope: !989, file: !109, line: 81, column: 12)
!998 = !DILocation(line: 81, column: 99, scope: !996)
!999 = !DILocation(line: 81, column: 7, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !990, file: !109, discriminator: 4)
!1001 = !DILocation(line: 83, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !958, file: !109, line: 83, column: 2)
!1003 = !DILocation(line: 83, column: 18, scope: !1002)
!1004 = !DILocation(line: 83, column: 11, scope: !1002)
!1005 = !DILocation(line: 83, column: 7, scope: !1002)
!1006 = !DILocation(line: 83, column: 27, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !109, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !109, line: 83, column: 2)
!1009 = !DILocation(line: 83, column: 31, scope: !1007)
!1010 = !DILocation(line: 83, column: 2, scope: !1007)
!1011 = !DILocalVariable(name: "rec", scope: !1012, file: !109, line: 84, type: !514)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !109, line: 83, column: 56)
!1013 = !DILocation(line: 84, column: 23, scope: !1012)
!1014 = !DILocation(line: 84, column: 29, scope: !1012)
!1015 = !DILocation(line: 84, column: 34, scope: !1012)
!1016 = !DILocation(line: 86, column: 15, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !109, line: 86, column: 3)
!1018 = !DILocation(line: 86, column: 20, scope: !1017)
!1019 = !DILocation(line: 86, column: 13, scope: !1017)
!1020 = !DILocation(line: 86, column: 8, scope: !1017)
!1021 = !DILocation(line: 86, column: 31, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !109, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !109, line: 86, column: 3)
!1024 = !DILocation(line: 86, column: 36, scope: !1022)
!1025 = !DILocation(line: 86, column: 3, scope: !1022)
!1026 = !DILocalVariable(name: "cb", scope: !1027, file: !109, line: 87, type: !94)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !109, line: 86, column: 63)
!1028 = !DILocation(line: 87, column: 26, scope: !1027)
!1029 = !DILocation(line: 87, column: 31, scope: !1027)
!1030 = !DILocation(line: 87, column: 37, scope: !1027)
!1031 = !DILocation(line: 89, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !109, line: 89, column: 8)
!1033 = !DILocation(line: 89, column: 12, scope: !1032)
!1034 = !DILocation(line: 89, column: 20, scope: !1032)
!1035 = !DILocation(line: 89, column: 17, scope: !1032)
!1036 = !DILocation(line: 89, column: 8, scope: !1027)
!1037 = !DILocation(line: 91, column: 21, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !109, line: 89, column: 26)
!1039 = !DILocation(line: 91, column: 26, scope: !1038)
!1040 = !DILocation(line: 91, column: 37, scope: !1038)
!1041 = !DILocation(line: 91, column: 6, scope: !1038)
!1042 = !DILocation(line: 90, column: 5, scope: !1038)
!1043 = !DILocation(line: 90, column: 10, scope: !1038)
!1044 = !DILocation(line: 90, column: 20, scope: !1038)
!1045 = !DILocation(line: 92, column: 12, scope: !1038)
!1046 = !DILocation(line: 92, column: 5, scope: !1038)
!1047 = !DILocation(line: 93, column: 12, scope: !1038)
!1048 = !DILocation(line: 93, column: 5, scope: !1038)
!1049 = !DILocation(line: 95, column: 3, scope: !1027)
!1050 = !DILocation(line: 86, column: 51, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1023, file: !109, discriminator: 2)
!1052 = !DILocation(line: 86, column: 57, scope: !1051)
!1053 = !DILocation(line: 86, column: 49, scope: !1051)
!1054 = !DILocation(line: 86, column: 3, scope: !1051)
!1055 = distinct !{!1055, !1056}
!1056 = !DILocation(line: 86, column: 3, scope: !1012)
!1057 = !DILocation(line: 96, column: 2, scope: !1012)
!1058 = !DILocation(line: 83, column: 45, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1008, file: !109, discriminator: 2)
!1060 = !DILocation(line: 83, column: 50, scope: !1059)
!1061 = !DILocation(line: 83, column: 43, scope: !1059)
!1062 = !DILocation(line: 83, column: 2, scope: !1059)
!1063 = distinct !{!1063, !1064}
!1064 = !DILocation(line: 83, column: 2, scope: !958)
!1065 = !DILocation(line: 98, column: 2, scope: !958)
!1066 = !DILocation(line: 99, column: 1, scope: !958)
!1067 = distinct !DISubprogram(name: "command_module_destroy", scope: !109, file: !109, line: 199, type: !1068, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !76, !514}
!1070 = !DILocalVariable(name: "rec", arg: 1, scope: !1067, file: !109, line: 199, type: !76)
!1071 = !DILocation(line: 199, column: 49, scope: !1067)
!1072 = !DILocalVariable(name: "modrec", arg: 2, scope: !1067, file: !109, line: 200, type: !514)
!1073 = !DILocation(line: 200, column: 28, scope: !1067)
!1074 = !DILocalVariable(name: "tmp", scope: !1067, file: !109, line: 202, type: !81)
!1075 = !DILocation(line: 202, column: 10, scope: !1067)
!1076 = !DILocalVariable(name: "freelist", scope: !1067, file: !109, line: 202, type: !81)
!1077 = !DILocation(line: 202, column: 16, scope: !1067)
!1078 = !DILocation(line: 204, column: 29, scope: !1067)
!1079 = !DILocation(line: 204, column: 37, scope: !1067)
!1080 = !DILocation(line: 204, column: 9, scope: !1067)
!1081 = !DILocation(line: 209, column: 18, scope: !1067)
!1082 = !DILocation(line: 210, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1067, file: !109, line: 210, column: 2)
!1084 = !DILocation(line: 210, column: 18, scope: !1083)
!1085 = !DILocation(line: 210, column: 11, scope: !1083)
!1086 = !DILocation(line: 210, column: 7, scope: !1083)
!1087 = !DILocation(line: 210, column: 27, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !109, discriminator: 1)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !109, line: 210, column: 2)
!1090 = !DILocation(line: 210, column: 31, scope: !1088)
!1091 = !DILocation(line: 210, column: 2, scope: !1088)
!1092 = !DILocalVariable(name: "rec", scope: !1093, file: !109, line: 211, type: !514)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !109, line: 210, column: 56)
!1094 = !DILocation(line: 211, column: 23, scope: !1093)
!1095 = !DILocation(line: 211, column: 29, scope: !1093)
!1096 = !DILocation(line: 211, column: 34, scope: !1093)
!1097 = !DILocation(line: 213, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !109, line: 213, column: 7)
!1099 = !DILocation(line: 213, column: 12, scope: !1098)
!1100 = !DILocation(line: 213, column: 22, scope: !1098)
!1101 = !DILocation(line: 213, column: 7, scope: !1093)
!1102 = !DILocation(line: 214, column: 30, scope: !1098)
!1103 = !DILocation(line: 214, column: 40, scope: !1098)
!1104 = !DILocation(line: 214, column: 15, scope: !1098)
!1105 = !DILocation(line: 214, column: 13, scope: !1098)
!1106 = !DILocation(line: 214, column: 4, scope: !1098)
!1107 = !DILocation(line: 216, column: 38, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1098, file: !109, line: 215, column: 8)
!1109 = !DILocation(line: 216, column: 25, scope: !1108)
!1110 = !DILocation(line: 217, column: 34, scope: !1108)
!1111 = !DILocation(line: 218, column: 4, scope: !1108)
!1112 = !DILocation(line: 220, column: 2, scope: !1093)
!1113 = !DILocation(line: 210, column: 45, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1089, file: !109, discriminator: 2)
!1115 = !DILocation(line: 210, column: 50, scope: !1114)
!1116 = !DILocation(line: 210, column: 43, scope: !1114)
!1117 = !DILocation(line: 210, column: 2, scope: !1114)
!1118 = distinct !{!1118, !1119}
!1119 = !DILocation(line: 210, column: 2, scope: !1067)
!1120 = !DILocation(line: 222, column: 18, scope: !1067)
!1121 = !DILocation(line: 222, column: 57, scope: !1067)
!1122 = !DILocation(line: 222, column: 2, scope: !1067)
!1123 = !DILocation(line: 223, column: 15, scope: !1067)
!1124 = !DILocation(line: 223, column: 2, scope: !1067)
!1125 = !DILocation(line: 225, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1067, file: !109, line: 225, column: 6)
!1127 = !DILocation(line: 225, column: 11, scope: !1126)
!1128 = !DILocation(line: 225, column: 19, scope: !1126)
!1129 = !DILocation(line: 225, column: 6, scope: !1067)
!1130 = !DILocation(line: 226, column: 16, scope: !1126)
!1131 = !DILocation(line: 226, column: 3, scope: !1126)
!1132 = !DILocation(line: 227, column: 1, scope: !1067)
!1133 = distinct !DISubprogram(name: "command_runsub", scope: !109, file: !109, line: 296, type: !1134, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !74, !74, !69, !69}
!1136 = !DILocalVariable(name: "cmd", arg: 1, scope: !1133, file: !109, line: 296, type: !74)
!1137 = !DILocation(line: 296, column: 33, scope: !1133)
!1138 = !DILocalVariable(name: "data", arg: 2, scope: !1133, file: !109, line: 296, type: !74)
!1139 = !DILocation(line: 296, column: 50, scope: !1133)
!1140 = !DILocalVariable(name: "server", arg: 3, scope: !1133, file: !109, line: 297, type: !69)
!1141 = !DILocation(line: 297, column: 13, scope: !1133)
!1142 = !DILocalVariable(name: "item", arg: 4, scope: !1133, file: !109, line: 297, type: !69)
!1143 = !DILocation(line: 297, column: 27, scope: !1133)
!1144 = !DILocalVariable(name: "newcmd", scope: !1133, file: !109, line: 299, type: !74)
!1145 = !DILocation(line: 299, column: 14, scope: !1133)
!1146 = !DILocalVariable(name: "orig", scope: !1133, file: !109, line: 300, type: !90)
!1147 = !DILocation(line: 300, column: 8, scope: !1133)
!1148 = !DILocalVariable(name: "subcmd", scope: !1133, file: !109, line: 300, type: !90)
!1149 = !DILocation(line: 300, column: 15, scope: !1133)
!1150 = !DILocalVariable(name: "defcmd", scope: !1133, file: !109, line: 300, type: !90)
!1151 = !DILocation(line: 300, column: 24, scope: !1133)
!1152 = !DILocalVariable(name: "args", scope: !1133, file: !109, line: 300, type: !90)
!1153 = !DILocation(line: 300, column: 33, scope: !1133)
!1154 = !DILocation(line: 302, column: 2, scope: !1133)
!1155 = distinct !{!1155, !1154}
!1156 = !DILocation(line: 302, column: 10, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !109, discriminator: 1)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !109, line: 302, column: 10)
!1159 = distinct !DILexicalBlock(scope: !1133, file: !109, line: 302, column: 4)
!1160 = !DILocation(line: 302, column: 15, scope: !1157)
!1161 = !DILocation(line: 302, column: 5, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1163, file: !109, discriminator: 2)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !109, line: 302, column: 3)
!1164 = !DILocation(line: 302, column: 14, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !109, discriminator: 3)
!1166 = distinct !DILexicalBlock(scope: !1158, file: !109, line: 302, column: 12)
!1167 = !DILocation(line: 302, column: 99, scope: !1165)
!1168 = !DILocation(line: 302, column: 110, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1159, file: !109, discriminator: 4)
!1170 = !DILocation(line: 304, column: 9, scope: !1133)
!1171 = !DILocation(line: 304, column: 17, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1133, file: !109, discriminator: 1)
!1173 = !DILocation(line: 304, column: 16, scope: !1172)
!1174 = !DILocation(line: 304, column: 22, scope: !1172)
!1175 = !DILocation(line: 304, column: 9, scope: !1172)
!1176 = !DILocation(line: 304, column: 34, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1133, file: !109, discriminator: 2)
!1178 = !DILocation(line: 304, column: 9, scope: !1177)
!1179 = distinct !{!1179, !1170}
!1180 = !DILocation(line: 306, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1133, file: !109, line: 306, column: 6)
!1182 = !DILocation(line: 306, column: 6, scope: !1181)
!1183 = !DILocation(line: 306, column: 12, scope: !1181)
!1184 = !DILocation(line: 306, column: 6, scope: !1133)
!1185 = !DILocation(line: 308, column: 38, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !109, line: 306, column: 21)
!1187 = !DILocation(line: 308, column: 3, scope: !1186)
!1188 = !DILocation(line: 309, column: 3, scope: !1186)
!1189 = !DILocation(line: 313, column: 51, scope: !1133)
!1190 = !DILocation(line: 313, column: 56, scope: !1133)
!1191 = !DILocation(line: 313, column: 18, scope: !1133)
!1192 = !DILocation(line: 313, column: 16, scope: !1133)
!1193 = !DILocation(line: 313, column: 7, scope: !1133)
!1194 = !DILocation(line: 314, column: 16, scope: !1133)
!1195 = !DILocation(line: 314, column: 22, scope: !1133)
!1196 = !DILocation(line: 314, column: 34, scope: !1133)
!1197 = !DILocation(line: 314, column: 27, scope: !1133)
!1198 = !DILocation(line: 314, column: 25, scope: !1133)
!1199 = !DILocation(line: 314, column: 38, scope: !1133)
!1200 = !DILocation(line: 314, column: 9, scope: !1172)
!1201 = !DILocation(line: 314, column: 7, scope: !1133)
!1202 = !DILocation(line: 315, column: 6, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1133, file: !109, line: 315, column: 6)
!1204 = !DILocation(line: 315, column: 11, scope: !1203)
!1205 = !DILocation(line: 315, column: 6, scope: !1133)
!1206 = !DILocation(line: 315, column: 24, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1203, file: !109, discriminator: 1)
!1208 = !DILocation(line: 315, column: 27, scope: !1207)
!1209 = !DILocation(line: 315, column: 19, scope: !1207)
!1210 = !DILocation(line: 315, column: 45, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1203, file: !109, discriminator: 2)
!1212 = !DILocation(line: 316, column: 2, scope: !1133)
!1213 = !DILocation(line: 316, column: 10, scope: !1172)
!1214 = !DILocation(line: 316, column: 9, scope: !1172)
!1215 = !DILocation(line: 316, column: 15, scope: !1172)
!1216 = !DILocation(line: 316, column: 2, scope: !1172)
!1217 = !DILocation(line: 316, column: 27, scope: !1177)
!1218 = !DILocation(line: 316, column: 2, scope: !1177)
!1219 = distinct !{!1219, !1212}
!1220 = !DILocation(line: 319, column: 26, scope: !1133)
!1221 = !DILocation(line: 319, column: 32, scope: !1133)
!1222 = !DILocation(line: 319, column: 11, scope: !1133)
!1223 = !DILocation(line: 319, column: 9, scope: !1133)
!1224 = !DILocation(line: 320, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1133, file: !109, line: 320, column: 6)
!1226 = !DILocation(line: 320, column: 13, scope: !1225)
!1227 = !DILocation(line: 320, column: 6, scope: !1133)
!1228 = !DILocation(line: 322, column: 10, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !109, line: 320, column: 21)
!1230 = !DILocation(line: 322, column: 3, scope: !1229)
!1231 = !DILocation(line: 323, column: 3, scope: !1229)
!1232 = !DILocation(line: 326, column: 35, scope: !1133)
!1233 = !DILocation(line: 326, column: 11, scope: !1133)
!1234 = !DILocation(line: 326, column: 9, scope: !1133)
!1235 = !DILocation(line: 328, column: 16, scope: !1133)
!1236 = !DILocation(line: 328, column: 2, scope: !1133)
!1237 = !DILocation(line: 329, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1133, file: !109, line: 329, column: 6)
!1239 = !DILocation(line: 329, column: 30, scope: !1238)
!1240 = !DILocation(line: 329, column: 36, scope: !1238)
!1241 = !DILocation(line: 329, column: 44, scope: !1238)
!1242 = !DILocation(line: 329, column: 7, scope: !1238)
!1243 = !DILocation(line: 329, column: 6, scope: !1133)
!1244 = !DILocation(line: 330, column: 50, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1238, file: !109, line: 329, column: 51)
!1246 = !DILocation(line: 330, column: 12, scope: !1245)
!1247 = !DILocation(line: 330, column: 10, scope: !1245)
!1248 = !DILocation(line: 331, column: 20, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !109, line: 331, column: 7)
!1250 = !DILocation(line: 331, column: 31, scope: !1249)
!1251 = !DILocation(line: 331, column: 37, scope: !1249)
!1252 = !DILocation(line: 331, column: 45, scope: !1249)
!1253 = !DILocation(line: 331, column: 8, scope: !1249)
!1254 = !DILocation(line: 331, column: 7, scope: !1245)
!1255 = !DILocation(line: 333, column: 48, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !109, line: 331, column: 52)
!1257 = !DILocation(line: 333, column: 54, scope: !1256)
!1258 = !DILocation(line: 332, column: 4, scope: !1256)
!1259 = !DILocation(line: 334, column: 3, scope: !1256)
!1260 = !DILocation(line: 335, column: 24, scope: !1245)
!1261 = !DILocation(line: 335, column: 17, scope: !1245)
!1262 = !DILocation(line: 336, column: 2, scope: !1245)
!1263 = !DILocation(line: 338, column: 9, scope: !1133)
!1264 = !DILocation(line: 338, column: 2, scope: !1133)
!1265 = !DILocation(line: 339, column: 9, scope: !1133)
!1266 = !DILocation(line: 339, column: 2, scope: !1133)
!1267 = !DILocation(line: 340, column: 1, scope: !1133)
!1268 = !DILocation(line: 340, column: 1, scope: !1172)
!1269 = distinct !DISubprogram(name: "command_expand", scope: !109, file: !109, line: 254, type: !1270, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!74, !90}
!1272 = !DILocalVariable(name: "cmd", arg: 1, scope: !1269, file: !109, line: 254, type: !90)
!1273 = !DILocation(line: 254, column: 41, scope: !1269)
!1274 = !DILocalVariable(name: "tmp", scope: !1269, file: !109, line: 256, type: !81)
!1275 = !DILocation(line: 256, column: 10, scope: !1269)
!1276 = !DILocalVariable(name: "match", scope: !1269, file: !109, line: 257, type: !74)
!1277 = !DILocation(line: 257, column: 14, scope: !1269)
!1278 = !DILocalVariable(name: "len", scope: !1269, file: !109, line: 258, type: !126)
!1279 = !DILocation(line: 258, column: 6, scope: !1269)
!1280 = !DILocalVariable(name: "multiple", scope: !1269, file: !109, line: 258, type: !126)
!1281 = !DILocation(line: 258, column: 11, scope: !1269)
!1282 = !DILocation(line: 260, column: 2, scope: !1269)
!1283 = distinct !{!1283, !1282}
!1284 = !DILocation(line: 260, column: 10, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !109, discriminator: 1)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !109, line: 260, column: 10)
!1287 = distinct !DILexicalBlock(scope: !1269, file: !109, line: 260, column: 4)
!1288 = !DILocation(line: 260, column: 14, scope: !1285)
!1289 = !DILocation(line: 260, column: 5, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1291, file: !109, discriminator: 2)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !109, line: 260, column: 3)
!1292 = !DILocation(line: 260, column: 14, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1294, file: !109, discriminator: 3)
!1294 = distinct !DILexicalBlock(scope: !1286, file: !109, line: 260, column: 12)
!1295 = !DILocation(line: 260, column: 98, scope: !1293)
!1296 = !DILocation(line: 260, column: 7, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1287, file: !109, discriminator: 4)
!1298 = !DILocation(line: 262, column: 11, scope: !1269)
!1299 = !DILocation(line: 263, column: 8, scope: !1269)
!1300 = !DILocation(line: 264, column: 15, scope: !1269)
!1301 = !DILocation(line: 264, column: 8, scope: !1269)
!1302 = !DILocation(line: 264, column: 6, scope: !1269)
!1303 = !DILocation(line: 265, column: 13, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1269, file: !109, line: 265, column: 2)
!1305 = !DILocation(line: 265, column: 11, scope: !1304)
!1306 = !DILocation(line: 265, column: 7, scope: !1304)
!1307 = !DILocation(line: 265, column: 23, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !109, discriminator: 1)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !109, line: 265, column: 2)
!1310 = !DILocation(line: 265, column: 27, scope: !1308)
!1311 = !DILocation(line: 265, column: 2, scope: !1308)
!1312 = !DILocalVariable(name: "rec", scope: !1313, file: !109, line: 266, type: !76)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !109, line: 265, column: 52)
!1314 = !DILocation(line: 266, column: 16, scope: !1313)
!1315 = !DILocation(line: 266, column: 22, scope: !1313)
!1316 = !DILocation(line: 266, column: 27, scope: !1313)
!1317 = !DILocation(line: 268, column: 27, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !109, line: 268, column: 7)
!1319 = !DILocation(line: 268, column: 32, scope: !1318)
!1320 = !DILocation(line: 268, column: 37, scope: !1318)
!1321 = !DILocation(line: 268, column: 42, scope: !1318)
!1322 = !DILocation(line: 268, column: 7, scope: !1318)
!1323 = !DILocation(line: 268, column: 47, scope: !1318)
!1324 = !DILocation(line: 268, column: 52, scope: !1318)
!1325 = !DILocation(line: 269, column: 14, scope: !1318)
!1326 = !DILocation(line: 269, column: 19, scope: !1318)
!1327 = !DILocation(line: 269, column: 23, scope: !1318)
!1328 = !DILocation(line: 269, column: 22, scope: !1318)
!1329 = !DILocation(line: 269, column: 7, scope: !1318)
!1330 = !DILocation(line: 269, column: 33, scope: !1318)
!1331 = !DILocation(line: 268, column: 7, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1313, file: !109, discriminator: 1)
!1333 = !DILocation(line: 270, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !109, line: 270, column: 8)
!1335 = distinct !DILexicalBlock(scope: !1318, file: !109, line: 269, column: 41)
!1336 = !DILocation(line: 270, column: 8, scope: !1334)
!1337 = !DILocation(line: 270, column: 13, scope: !1334)
!1338 = !DILocation(line: 270, column: 22, scope: !1334)
!1339 = !DILocation(line: 270, column: 8, scope: !1335)
!1340 = !DILocation(line: 272, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1334, file: !109, line: 270, column: 31)
!1342 = !DILocation(line: 272, column: 17, scope: !1341)
!1343 = !DILocation(line: 272, column: 5, scope: !1341)
!1344 = !DILocation(line: 275, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1335, file: !109, line: 275, column: 8)
!1346 = !DILocation(line: 275, column: 14, scope: !1345)
!1347 = !DILocation(line: 275, column: 8, scope: !1335)
!1348 = !DILocation(line: 279, column: 14, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !109, line: 275, column: 22)
!1350 = !DILocation(line: 280, column: 4, scope: !1349)
!1351 = !DILocation(line: 283, column: 12, scope: !1335)
!1352 = !DILocation(line: 283, column: 17, scope: !1335)
!1353 = !DILocation(line: 283, column: 10, scope: !1335)
!1354 = !DILocation(line: 284, column: 3, scope: !1335)
!1355 = !DILocation(line: 285, column: 2, scope: !1313)
!1356 = !DILocation(line: 265, column: 41, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1309, file: !109, discriminator: 2)
!1358 = !DILocation(line: 265, column: 46, scope: !1357)
!1359 = !DILocation(line: 265, column: 39, scope: !1357)
!1360 = !DILocation(line: 265, column: 2, scope: !1357)
!1361 = distinct !{!1361, !1362}
!1362 = !DILocation(line: 265, column: 2, scope: !1269)
!1363 = !DILocation(line: 287, column: 6, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1269, file: !109, line: 287, column: 6)
!1365 = !DILocation(line: 287, column: 6, scope: !1269)
!1366 = !DILocation(line: 289, column: 49, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !109, line: 287, column: 16)
!1368 = !DILocation(line: 288, column: 3, scope: !1367)
!1369 = !DILocation(line: 290, column: 3, scope: !1367)
!1370 = !DILocation(line: 293, column: 9, scope: !1269)
!1371 = !DILocation(line: 293, column: 15, scope: !1269)
!1372 = !DILocation(line: 293, column: 24, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1269, file: !109, discriminator: 1)
!1374 = !DILocation(line: 293, column: 9, scope: !1373)
!1375 = !DILocation(line: 293, column: 32, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1269, file: !109, discriminator: 2)
!1377 = !DILocation(line: 293, column: 9, scope: !1376)
!1378 = !DILocation(line: 293, column: 9, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1269, file: !109, discriminator: 3)
!1380 = !DILocation(line: 293, column: 2, scope: !1379)
!1381 = !DILocation(line: 294, column: 1, scope: !1269)
!1382 = distinct !DISubprogram(name: "command_have_option", scope: !109, file: !109, line: 357, type: !494, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1383 = !DILocalVariable(name: "cmd", arg: 1, scope: !1382, file: !109, line: 357, type: !74)
!1384 = !DILocation(line: 357, column: 37, scope: !1382)
!1385 = !DILocalVariable(name: "option", arg: 2, scope: !1382, file: !109, line: 357, type: !74)
!1386 = !DILocation(line: 357, column: 54, scope: !1382)
!1387 = !DILocalVariable(name: "rec", scope: !1382, file: !109, line: 359, type: !76)
!1388 = !DILocation(line: 359, column: 15, scope: !1382)
!1389 = !DILocalVariable(name: "tmp", scope: !1382, file: !109, line: 360, type: !93)
!1390 = !DILocation(line: 360, column: 9, scope: !1382)
!1391 = !DILocation(line: 362, column: 2, scope: !1382)
!1392 = distinct !{!1392, !1391}
!1393 = !DILocation(line: 362, column: 10, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !109, discriminator: 1)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !109, line: 362, column: 10)
!1396 = distinct !DILexicalBlock(scope: !1382, file: !109, line: 362, column: 4)
!1397 = !DILocation(line: 362, column: 14, scope: !1394)
!1398 = !DILocation(line: 362, column: 5, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !109, discriminator: 2)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !109, line: 362, column: 3)
!1401 = !DILocation(line: 362, column: 14, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1403, file: !109, discriminator: 3)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !109, line: 362, column: 12)
!1404 = !DILocation(line: 362, column: 98, scope: !1402)
!1405 = !DILocation(line: 362, column: 115, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1396, file: !109, discriminator: 4)
!1407 = !DILocation(line: 363, column: 2, scope: !1382)
!1408 = distinct !{!1408, !1407}
!1409 = !DILocation(line: 363, column: 10, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1411, file: !109, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !109, line: 363, column: 10)
!1412 = distinct !DILexicalBlock(scope: !1382, file: !109, line: 363, column: 4)
!1413 = !DILocation(line: 363, column: 17, scope: !1410)
!1414 = !DILocation(line: 363, column: 5, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1416, file: !109, discriminator: 2)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !109, line: 363, column: 3)
!1417 = !DILocation(line: 363, column: 14, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !109, discriminator: 3)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !109, line: 363, column: 12)
!1420 = !DILocation(line: 363, column: 101, scope: !1418)
!1421 = !DILocation(line: 363, column: 118, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1412, file: !109, discriminator: 4)
!1423 = !DILocation(line: 365, column: 28, scope: !1382)
!1424 = !DILocation(line: 365, column: 15, scope: !1382)
!1425 = !DILocation(line: 365, column: 13, scope: !1382)
!1426 = !DILocation(line: 366, column: 2, scope: !1382)
!1427 = distinct !{!1427, !1426}
!1428 = !DILocation(line: 366, column: 10, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1430, file: !109, discriminator: 1)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !109, line: 366, column: 10)
!1431 = distinct !DILexicalBlock(scope: !1382, file: !109, line: 366, column: 4)
!1432 = !DILocation(line: 366, column: 14, scope: !1429)
!1433 = !DILocation(line: 366, column: 5, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !109, discriminator: 2)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !109, line: 366, column: 3)
!1436 = !DILocation(line: 366, column: 14, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !109, discriminator: 3)
!1438 = distinct !DILexicalBlock(scope: !1430, file: !109, line: 366, column: 12)
!1439 = !DILocation(line: 366, column: 98, scope: !1437)
!1440 = !DILocation(line: 366, column: 115, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1431, file: !109, discriminator: 4)
!1442 = !DILocation(line: 368, column: 6, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1382, file: !109, line: 368, column: 6)
!1444 = !DILocation(line: 368, column: 11, scope: !1443)
!1445 = !DILocation(line: 368, column: 19, scope: !1443)
!1446 = !DILocation(line: 368, column: 6, scope: !1382)
!1447 = !DILocation(line: 369, column: 3, scope: !1443)
!1448 = !DILocation(line: 371, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1382, file: !109, line: 371, column: 2)
!1450 = !DILocation(line: 371, column: 18, scope: !1449)
!1451 = !DILocation(line: 371, column: 11, scope: !1449)
!1452 = !DILocation(line: 371, column: 7, scope: !1449)
!1453 = !DILocation(line: 371, column: 28, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1455, file: !109, discriminator: 1)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !109, line: 371, column: 2)
!1456 = !DILocation(line: 371, column: 27, scope: !1454)
!1457 = !DILocation(line: 371, column: 32, scope: !1454)
!1458 = !DILocation(line: 371, column: 2, scope: !1454)
!1459 = !DILocalVariable(name: "name", scope: !1460, file: !109, line: 372, type: !90)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !109, line: 371, column: 47)
!1461 = !DILocation(line: 372, column: 9, scope: !1460)
!1462 = !DILocation(line: 372, column: 20, scope: !1460)
!1463 = !DILocation(line: 372, column: 19, scope: !1460)
!1464 = !DILocation(line: 372, column: 18, scope: !1460)
!1465 = !DILocation(line: 372, column: 17, scope: !1460)
!1466 = !DILocation(line: 372, column: 25, scope: !1460)
!1467 = !DILocation(line: 372, column: 32, scope: !1460)
!1468 = !DILocation(line: 372, column: 38, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 1)
!1470 = !DILocation(line: 372, column: 37, scope: !1469)
!1471 = !DILocation(line: 372, column: 36, scope: !1469)
!1472 = !DILocation(line: 372, column: 35, scope: !1469)
!1473 = !DILocation(line: 372, column: 43, scope: !1469)
!1474 = !DILocation(line: 372, column: 50, scope: !1469)
!1475 = !DILocation(line: 372, column: 56, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 2)
!1477 = !DILocation(line: 372, column: 55, scope: !1476)
!1478 = !DILocation(line: 372, column: 54, scope: !1476)
!1479 = !DILocation(line: 372, column: 53, scope: !1476)
!1480 = !DILocation(line: 372, column: 61, scope: !1476)
!1481 = !DILocation(line: 372, column: 68, scope: !1476)
!1482 = !DILocation(line: 372, column: 74, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 3)
!1484 = !DILocation(line: 372, column: 73, scope: !1483)
!1485 = !DILocation(line: 372, column: 72, scope: !1483)
!1486 = !DILocation(line: 372, column: 71, scope: !1483)
!1487 = !DILocation(line: 372, column: 79, scope: !1483)
!1488 = !DILocation(line: 372, column: 16, scope: !1483)
!1489 = !DILocation(line: 372, column: 91, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 4)
!1491 = !DILocation(line: 372, column: 90, scope: !1490)
!1492 = !DILocation(line: 372, column: 95, scope: !1490)
!1493 = !DILocation(line: 372, column: 16, scope: !1490)
!1494 = !DILocation(line: 372, column: 101, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 5)
!1496 = !DILocation(line: 372, column: 100, scope: !1495)
!1497 = !DILocation(line: 372, column: 16, scope: !1495)
!1498 = !DILocation(line: 372, column: 16, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1460, file: !109, discriminator: 6)
!1500 = !DILocation(line: 372, column: 9, scope: !1499)
!1501 = !DILocation(line: 374, column: 26, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1460, file: !109, line: 374, column: 7)
!1503 = !DILocation(line: 374, column: 32, scope: !1502)
!1504 = !DILocation(line: 374, column: 7, scope: !1502)
!1505 = !DILocation(line: 374, column: 40, scope: !1502)
!1506 = !DILocation(line: 374, column: 7, scope: !1460)
!1507 = !DILocation(line: 375, column: 4, scope: !1502)
!1508 = !DILocation(line: 376, column: 2, scope: !1460)
!1509 = !DILocation(line: 371, column: 43, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1455, file: !109, discriminator: 2)
!1511 = !DILocation(line: 371, column: 2, scope: !1510)
!1512 = distinct !{!1512, !1513}
!1513 = !DILocation(line: 371, column: 2, scope: !1382)
!1514 = !DILocation(line: 378, column: 2, scope: !1382)
!1515 = !DILocation(line: 379, column: 1, scope: !1382)
!1516 = distinct !DISubprogram(name: "command_set_options_module", scope: !109, file: !109, line: 441, type: !1517, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !74, !74, !74}
!1519 = !DILocalVariable(name: "module", arg: 1, scope: !1516, file: !109, line: 441, type: !74)
!1520 = !DILocation(line: 441, column: 45, scope: !1516)
!1521 = !DILocalVariable(name: "cmd", arg: 2, scope: !1516, file: !109, line: 442, type: !74)
!1522 = !DILocation(line: 442, column: 17, scope: !1516)
!1523 = !DILocalVariable(name: "options", arg: 3, scope: !1516, file: !109, line: 442, type: !74)
!1524 = !DILocation(line: 442, column: 34, scope: !1516)
!1525 = !DILocalVariable(name: "rec", scope: !1516, file: !109, line: 444, type: !76)
!1526 = !DILocation(line: 444, column: 15, scope: !1516)
!1527 = !DILocalVariable(name: "modrec", scope: !1516, file: !109, line: 445, type: !514)
!1528 = !DILocation(line: 445, column: 22, scope: !1516)
!1529 = !DILocalVariable(name: "reload", scope: !1516, file: !109, line: 446, type: !126)
!1530 = !DILocation(line: 446, column: 13, scope: !1516)
!1531 = !DILocation(line: 448, column: 2, scope: !1516)
!1532 = distinct !{!1532, !1531}
!1533 = !DILocation(line: 448, column: 10, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1535, file: !109, discriminator: 1)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !109, line: 448, column: 10)
!1536 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 448, column: 4)
!1537 = !DILocation(line: 448, column: 17, scope: !1534)
!1538 = !DILocation(line: 448, column: 5, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !109, discriminator: 2)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !109, line: 448, column: 3)
!1541 = !DILocation(line: 448, column: 14, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !109, discriminator: 3)
!1543 = distinct !DILexicalBlock(scope: !1535, file: !109, line: 448, column: 12)
!1544 = !DILocation(line: 448, column: 101, scope: !1542)
!1545 = !DILocation(line: 448, column: 112, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1536, file: !109, discriminator: 4)
!1547 = !DILocation(line: 449, column: 2, scope: !1516)
!1548 = distinct !{!1548, !1547}
!1549 = !DILocation(line: 449, column: 10, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !109, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !109, line: 449, column: 10)
!1552 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 449, column: 4)
!1553 = !DILocation(line: 449, column: 14, scope: !1550)
!1554 = !DILocation(line: 449, column: 5, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !109, discriminator: 2)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !109, line: 449, column: 3)
!1557 = !DILocation(line: 449, column: 14, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !109, discriminator: 3)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !109, line: 449, column: 12)
!1560 = !DILocation(line: 449, column: 98, scope: !1558)
!1561 = !DILocation(line: 449, column: 109, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1552, file: !109, discriminator: 4)
!1563 = !DILocation(line: 450, column: 2, scope: !1516)
!1564 = distinct !{!1564, !1563}
!1565 = !DILocation(line: 450, column: 10, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !109, discriminator: 1)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !109, line: 450, column: 10)
!1568 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 450, column: 4)
!1569 = !DILocation(line: 450, column: 18, scope: !1566)
!1570 = !DILocation(line: 450, column: 5, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !109, discriminator: 2)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !109, line: 450, column: 3)
!1573 = !DILocation(line: 450, column: 14, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1575, file: !109, discriminator: 3)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !109, line: 450, column: 12)
!1576 = !DILocation(line: 450, column: 102, scope: !1574)
!1577 = !DILocation(line: 450, column: 113, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1568, file: !109, discriminator: 4)
!1579 = !DILocation(line: 452, column: 28, scope: !1516)
!1580 = !DILocation(line: 452, column: 15, scope: !1516)
!1581 = !DILocation(line: 452, column: 13, scope: !1516)
!1582 = !DILocation(line: 453, column: 2, scope: !1516)
!1583 = distinct !{!1583, !1582}
!1584 = !DILocation(line: 453, column: 10, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !109, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !109, line: 453, column: 10)
!1587 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 453, column: 4)
!1588 = !DILocation(line: 453, column: 14, scope: !1585)
!1589 = !DILocation(line: 453, column: 5, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !109, discriminator: 2)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !109, line: 453, column: 3)
!1592 = !DILocation(line: 453, column: 14, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !109, discriminator: 3)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !109, line: 453, column: 12)
!1595 = !DILocation(line: 453, column: 98, scope: !1593)
!1596 = !DILocation(line: 453, column: 109, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1587, file: !109, discriminator: 4)
!1598 = !DILocation(line: 454, column: 37, scope: !1516)
!1599 = !DILocation(line: 454, column: 42, scope: !1516)
!1600 = !DILocation(line: 454, column: 18, scope: !1516)
!1601 = !DILocation(line: 454, column: 16, scope: !1516)
!1602 = !DILocation(line: 456, column: 11, scope: !1516)
!1603 = !DILocation(line: 456, column: 19, scope: !1516)
!1604 = !DILocation(line: 456, column: 27, scope: !1516)
!1605 = !DILocation(line: 456, column: 9, scope: !1516)
!1606 = !DILocation(line: 457, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 457, column: 13)
!1608 = !DILocation(line: 457, column: 13, scope: !1516)
!1609 = !DILocation(line: 460, column: 10, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !109, line: 457, column: 21)
!1611 = !DILocation(line: 460, column: 18, scope: !1610)
!1612 = !DILocation(line: 460, column: 3, scope: !1610)
!1613 = !DILocation(line: 461, column: 2, scope: !1610)
!1614 = !DILocation(line: 463, column: 29, scope: !1516)
!1615 = !DILocation(line: 463, column: 20, scope: !1516)
!1616 = !DILocation(line: 463, column: 2, scope: !1516)
!1617 = !DILocation(line: 463, column: 10, scope: !1516)
!1618 = !DILocation(line: 463, column: 18, scope: !1516)
!1619 = !DILocation(line: 465, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1516, file: !109, line: 465, column: 13)
!1621 = !DILocation(line: 465, column: 13, scope: !1516)
!1622 = !DILocation(line: 466, column: 26, scope: !1620)
!1623 = !DILocation(line: 466, column: 3, scope: !1620)
!1624 = !DILocation(line: 468, column: 24, scope: !1620)
!1625 = !DILocation(line: 468, column: 29, scope: !1620)
!1626 = !DILocation(line: 468, column: 3, scope: !1620)
!1627 = !DILocation(line: 469, column: 1, scope: !1516)
!1628 = distinct !DISubprogram(name: "command_update_options", scope: !109, file: !109, line: 426, type: !1629, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !76}
!1631 = !DILocalVariable(name: "rec", arg: 1, scope: !1628, file: !109, line: 426, type: !76)
!1632 = !DILocation(line: 426, column: 49, scope: !1628)
!1633 = !DILocalVariable(name: "tmp", scope: !1628, file: !109, line: 428, type: !81)
!1634 = !DILocation(line: 428, column: 10, scope: !1628)
!1635 = !DILocation(line: 430, column: 13, scope: !1628)
!1636 = !DILocation(line: 430, column: 18, scope: !1628)
!1637 = !DILocation(line: 430, column: 2, scope: !1628)
!1638 = !DILocation(line: 431, column: 2, scope: !1628)
!1639 = !DILocation(line: 431, column: 7, scope: !1628)
!1640 = !DILocation(line: 431, column: 15, scope: !1628)
!1641 = !DILocation(line: 433, column: 13, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1628, file: !109, line: 433, column: 2)
!1643 = !DILocation(line: 433, column: 18, scope: !1642)
!1644 = !DILocation(line: 433, column: 11, scope: !1642)
!1645 = !DILocation(line: 433, column: 7, scope: !1642)
!1646 = !DILocation(line: 433, column: 27, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !109, discriminator: 1)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !109, line: 433, column: 2)
!1649 = !DILocation(line: 433, column: 31, scope: !1647)
!1650 = !DILocation(line: 433, column: 2, scope: !1647)
!1651 = !DILocalVariable(name: "modrec", scope: !1652, file: !109, line: 434, type: !514)
!1652 = distinct !DILexicalBlock(scope: !1648, file: !109, line: 433, column: 56)
!1653 = !DILocation(line: 434, column: 23, scope: !1652)
!1654 = !DILocation(line: 434, column: 32, scope: !1652)
!1655 = !DILocation(line: 434, column: 37, scope: !1652)
!1656 = !DILocation(line: 436, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !109, line: 436, column: 7)
!1658 = !DILocation(line: 436, column: 15, scope: !1657)
!1659 = !DILocation(line: 436, column: 23, scope: !1657)
!1660 = !DILocation(line: 436, column: 7, scope: !1652)
!1661 = !DILocation(line: 437, column: 25, scope: !1657)
!1662 = !DILocation(line: 437, column: 30, scope: !1657)
!1663 = !DILocation(line: 437, column: 38, scope: !1657)
!1664 = !DILocation(line: 437, column: 4, scope: !1657)
!1665 = !DILocation(line: 438, column: 2, scope: !1652)
!1666 = !DILocation(line: 433, column: 45, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1648, file: !109, discriminator: 2)
!1668 = !DILocation(line: 433, column: 50, scope: !1667)
!1669 = !DILocation(line: 433, column: 43, scope: !1667)
!1670 = !DILocation(line: 433, column: 2, scope: !1667)
!1671 = distinct !{!1671, !1672}
!1672 = !DILocation(line: 433, column: 2, scope: !1628)
!1673 = !DILocation(line: 439, column: 1, scope: !1628)
!1674 = distinct !DISubprogram(name: "command_calc_options", scope: !109, file: !109, line: 381, type: !1675, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !76, !74}
!1677 = !DILocalVariable(name: "rec", arg: 1, scope: !1674, file: !109, line: 381, type: !76)
!1678 = !DILocation(line: 381, column: 47, scope: !1674)
!1679 = !DILocalVariable(name: "options", arg: 2, scope: !1674, file: !109, line: 381, type: !74)
!1680 = !DILocation(line: 381, column: 64, scope: !1674)
!1681 = !DILocalVariable(name: "optlist", scope: !1674, file: !109, line: 383, type: !93)
!1682 = !DILocation(line: 383, column: 9, scope: !1674)
!1683 = !DILocalVariable(name: "tmp", scope: !1674, file: !109, line: 383, type: !93)
!1684 = !DILocation(line: 383, column: 20, scope: !1674)
!1685 = !DILocalVariable(name: "name", scope: !1674, file: !109, line: 383, type: !90)
!1686 = !DILocation(line: 383, column: 26, scope: !1674)
!1687 = !DILocalVariable(name: "str", scope: !1674, file: !109, line: 383, type: !90)
!1688 = !DILocation(line: 383, column: 33, scope: !1674)
!1689 = !DILocalVariable(name: "list", scope: !1674, file: !109, line: 384, type: !81)
!1690 = !DILocation(line: 384, column: 10, scope: !1674)
!1691 = !DILocalVariable(name: "oldopt", scope: !1674, file: !109, line: 384, type: !81)
!1692 = !DILocation(line: 384, column: 17, scope: !1674)
!1693 = !DILocation(line: 386, column: 23, scope: !1674)
!1694 = !DILocation(line: 386, column: 12, scope: !1674)
!1695 = !DILocation(line: 386, column: 10, scope: !1674)
!1696 = !DILocation(line: 388, column: 6, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1674, file: !109, line: 388, column: 6)
!1698 = !DILocation(line: 388, column: 11, scope: !1697)
!1699 = !DILocation(line: 388, column: 19, scope: !1697)
!1700 = !DILocation(line: 388, column: 6, scope: !1674)
!1701 = !DILocation(line: 390, column: 18, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !109, line: 388, column: 27)
!1703 = !DILocation(line: 390, column: 3, scope: !1702)
!1704 = !DILocation(line: 390, column: 8, scope: !1702)
!1705 = !DILocation(line: 390, column: 16, scope: !1702)
!1706 = !DILocation(line: 391, column: 3, scope: !1702)
!1707 = !DILocation(line: 395, column: 7, scope: !1674)
!1708 = !DILocation(line: 396, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1674, file: !109, line: 396, column: 2)
!1710 = !DILocation(line: 396, column: 18, scope: !1709)
!1711 = !DILocation(line: 396, column: 11, scope: !1709)
!1712 = !DILocation(line: 396, column: 7, scope: !1709)
!1713 = !DILocation(line: 396, column: 28, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !109, discriminator: 1)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !109, line: 396, column: 2)
!1716 = !DILocation(line: 396, column: 27, scope: !1714)
!1717 = !DILocation(line: 396, column: 32, scope: !1714)
!1718 = !DILocation(line: 396, column: 2, scope: !1714)
!1719 = !DILocation(line: 397, column: 39, scope: !1715)
!1720 = !DILocation(line: 397, column: 55, scope: !1715)
!1721 = !DILocation(line: 397, column: 54, scope: !1715)
!1722 = !DILocation(line: 397, column: 45, scope: !1715)
!1723 = !DILocation(line: 397, column: 24, scope: !1714)
!1724 = !DILocation(line: 397, column: 22, scope: !1715)
!1725 = !DILocation(line: 397, column: 17, scope: !1715)
!1726 = !DILocation(line: 396, column: 43, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1715, file: !109, discriminator: 2)
!1728 = !DILocation(line: 396, column: 2, scope: !1727)
!1729 = distinct !{!1729, !1730}
!1730 = !DILocation(line: 396, column: 2, scope: !1674)
!1731 = !DILocation(line: 398, column: 13, scope: !1674)
!1732 = !DILocation(line: 398, column: 18, scope: !1674)
!1733 = !DILocation(line: 398, column: 2, scope: !1674)
!1734 = !DILocation(line: 401, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1674, file: !109, line: 401, column: 2)
!1736 = !DILocation(line: 401, column: 11, scope: !1735)
!1737 = !DILocation(line: 401, column: 7, scope: !1735)
!1738 = !DILocation(line: 401, column: 23, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !109, discriminator: 1)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !109, line: 401, column: 2)
!1741 = !DILocation(line: 401, column: 22, scope: !1739)
!1742 = !DILocation(line: 401, column: 27, scope: !1739)
!1743 = !DILocation(line: 401, column: 2, scope: !1739)
!1744 = !DILocation(line: 402, column: 14, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !109, line: 401, column: 42)
!1746 = !DILocation(line: 402, column: 13, scope: !1745)
!1747 = !DILocation(line: 402, column: 12, scope: !1745)
!1748 = !DILocation(line: 402, column: 11, scope: !1745)
!1749 = !DILocation(line: 402, column: 19, scope: !1745)
!1750 = !DILocation(line: 402, column: 26, scope: !1745)
!1751 = !DILocation(line: 402, column: 32, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 1)
!1753 = !DILocation(line: 402, column: 31, scope: !1752)
!1754 = !DILocation(line: 402, column: 30, scope: !1752)
!1755 = !DILocation(line: 402, column: 29, scope: !1752)
!1756 = !DILocation(line: 402, column: 37, scope: !1752)
!1757 = !DILocation(line: 402, column: 44, scope: !1752)
!1758 = !DILocation(line: 402, column: 50, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 2)
!1760 = !DILocation(line: 402, column: 49, scope: !1759)
!1761 = !DILocation(line: 402, column: 48, scope: !1759)
!1762 = !DILocation(line: 402, column: 47, scope: !1759)
!1763 = !DILocation(line: 402, column: 55, scope: !1759)
!1764 = !DILocation(line: 402, column: 62, scope: !1759)
!1765 = !DILocation(line: 402, column: 68, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 3)
!1767 = !DILocation(line: 402, column: 67, scope: !1766)
!1768 = !DILocation(line: 402, column: 66, scope: !1766)
!1769 = !DILocation(line: 402, column: 65, scope: !1766)
!1770 = !DILocation(line: 402, column: 73, scope: !1766)
!1771 = !DILocation(line: 402, column: 10, scope: !1766)
!1772 = !DILocation(line: 402, column: 85, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 4)
!1774 = !DILocation(line: 402, column: 84, scope: !1773)
!1775 = !DILocation(line: 402, column: 89, scope: !1773)
!1776 = !DILocation(line: 402, column: 10, scope: !1773)
!1777 = !DILocation(line: 402, column: 95, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 5)
!1779 = !DILocation(line: 402, column: 94, scope: !1778)
!1780 = !DILocation(line: 402, column: 10, scope: !1778)
!1781 = !DILocation(line: 402, column: 10, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1745, file: !109, discriminator: 6)
!1783 = !DILocation(line: 402, column: 8, scope: !1782)
!1784 = !DILocation(line: 404, column: 25, scope: !1745)
!1785 = !DILocation(line: 404, column: 31, scope: !1745)
!1786 = !DILocation(line: 404, column: 12, scope: !1745)
!1787 = !DILocation(line: 404, column: 10, scope: !1745)
!1788 = !DILocation(line: 405, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1745, file: !109, line: 405, column: 7)
!1790 = !DILocation(line: 405, column: 14, scope: !1789)
!1791 = !DILocation(line: 405, column: 7, scope: !1745)
!1792 = !DILocation(line: 407, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !109, line: 405, column: 22)
!1794 = !DILocation(line: 407, column: 19, scope: !1793)
!1795 = !DILocation(line: 407, column: 4, scope: !1793)
!1796 = !DILocation(line: 408, column: 29, scope: !1793)
!1797 = !DILocation(line: 408, column: 28, scope: !1793)
!1798 = !DILocation(line: 408, column: 19, scope: !1793)
!1799 = !DILocation(line: 408, column: 4, scope: !1793)
!1800 = !DILocation(line: 408, column: 12, scope: !1793)
!1801 = !DILocation(line: 408, column: 17, scope: !1793)
!1802 = !DILocation(line: 409, column: 3, scope: !1793)
!1803 = !DILocation(line: 411, column: 47, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1789, file: !109, line: 409, column: 10)
!1805 = !DILocation(line: 411, column: 63, scope: !1804)
!1806 = !DILocation(line: 411, column: 62, scope: !1804)
!1807 = !DILocation(line: 411, column: 53, scope: !1804)
!1808 = !DILocation(line: 411, column: 32, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1804, file: !109, discriminator: 1)
!1810 = !DILocation(line: 411, column: 30, scope: !1804)
!1811 = !DILocation(line: 413, column: 2, scope: !1745)
!1812 = !DILocation(line: 401, column: 38, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1740, file: !109, discriminator: 2)
!1814 = !DILocation(line: 401, column: 2, scope: !1813)
!1815 = distinct !{!1815, !1816}
!1816 = !DILocation(line: 401, column: 2, scope: !1674)
!1817 = !DILocation(line: 414, column: 13, scope: !1674)
!1818 = !DILocation(line: 414, column: 2, scope: !1674)
!1819 = !DILocation(line: 417, column: 25, scope: !1674)
!1820 = !DILocation(line: 417, column: 8, scope: !1674)
!1821 = !DILocation(line: 417, column: 6, scope: !1674)
!1822 = !DILocation(line: 418, column: 28, scope: !1674)
!1823 = !DILocation(line: 418, column: 17, scope: !1674)
!1824 = !DILocation(line: 418, column: 2, scope: !1674)
!1825 = !DILocation(line: 418, column: 7, scope: !1674)
!1826 = !DILocation(line: 418, column: 15, scope: !1674)
!1827 = !DILocation(line: 419, column: 16, scope: !1674)
!1828 = !DILocation(line: 419, column: 9, scope: !1674)
!1829 = !DILocation(line: 421, column: 25, scope: !1674)
!1830 = !DILocation(line: 421, column: 9, scope: !1674)
!1831 = !DILocation(line: 422, column: 15, scope: !1674)
!1832 = !DILocation(line: 422, column: 2, scope: !1674)
!1833 = !DILocation(line: 423, column: 1, scope: !1674)
!1834 = !DILocation(line: 423, column: 1, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1674, file: !109, discriminator: 1)
!1836 = distinct !DISubprogram(name: "cmd_get_param", scope: !109, file: !109, line: 471, type: !1837, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!90, !93}
!1839 = !DILocalVariable(name: "data", arg: 1, scope: !1836, file: !109, line: 471, type: !93)
!1840 = !DILocation(line: 471, column: 28, scope: !1836)
!1841 = !DILocalVariable(name: "pos", scope: !1836, file: !109, line: 473, type: !90)
!1842 = !DILocation(line: 473, column: 8, scope: !1836)
!1843 = !DILocation(line: 475, column: 2, scope: !1836)
!1844 = distinct !{!1844, !1843}
!1845 = !DILocation(line: 475, column: 10, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1847, file: !109, discriminator: 1)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !109, line: 475, column: 10)
!1848 = distinct !DILexicalBlock(scope: !1836, file: !109, line: 475, column: 4)
!1849 = !DILocation(line: 475, column: 15, scope: !1846)
!1850 = !DILocation(line: 475, column: 5, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !109, discriminator: 2)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !109, line: 475, column: 3)
!1853 = !DILocation(line: 475, column: 14, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !109, discriminator: 3)
!1855 = distinct !DILexicalBlock(scope: !1847, file: !109, line: 475, column: 12)
!1856 = !DILocation(line: 475, column: 99, scope: !1854)
!1857 = !DILocation(line: 475, column: 7, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1848, file: !109, discriminator: 4)
!1859 = !DILocation(line: 476, column: 2, scope: !1836)
!1860 = distinct !{!1860, !1859}
!1861 = !DILocation(line: 476, column: 11, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !109, discriminator: 1)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !109, line: 476, column: 10)
!1864 = distinct !DILexicalBlock(scope: !1836, file: !109, line: 476, column: 4)
!1865 = !DILocation(line: 476, column: 10, scope: !1862)
!1866 = !DILocation(line: 476, column: 16, scope: !1862)
!1867 = !DILocation(line: 476, column: 5, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1869, file: !109, discriminator: 2)
!1869 = distinct !DILexicalBlock(scope: !1863, file: !109, line: 476, column: 3)
!1870 = !DILocation(line: 476, column: 14, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1872, file: !109, discriminator: 3)
!1872 = distinct !DILexicalBlock(scope: !1863, file: !109, line: 476, column: 12)
!1873 = !DILocation(line: 476, column: 100, scope: !1871)
!1874 = !DILocation(line: 476, column: 7, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1864, file: !109, discriminator: 4)
!1876 = !DILocation(line: 478, column: 2, scope: !1836)
!1877 = !DILocation(line: 478, column: 11, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1836, file: !109, discriminator: 1)
!1879 = !DILocation(line: 478, column: 10, scope: !1878)
!1880 = !DILocation(line: 478, column: 9, scope: !1878)
!1881 = !DILocation(line: 478, column: 16, scope: !1878)
!1882 = !DILocation(line: 478, column: 2, scope: !1878)
!1883 = !DILocation(line: 478, column: 26, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1836, file: !109, discriminator: 2)
!1885 = !DILocation(line: 478, column: 31, scope: !1884)
!1886 = !DILocation(line: 478, column: 2, scope: !1884)
!1887 = distinct !{!1887, !1876}
!1888 = !DILocation(line: 479, column: 9, scope: !1836)
!1889 = !DILocation(line: 479, column: 8, scope: !1836)
!1890 = !DILocation(line: 479, column: 6, scope: !1836)
!1891 = !DILocation(line: 481, column: 2, scope: !1836)
!1892 = !DILocation(line: 481, column: 11, scope: !1878)
!1893 = !DILocation(line: 481, column: 10, scope: !1878)
!1894 = !DILocation(line: 481, column: 9, scope: !1878)
!1895 = !DILocation(line: 481, column: 16, scope: !1878)
!1896 = !DILocation(line: 481, column: 24, scope: !1878)
!1897 = !DILocation(line: 481, column: 29, scope: !1884)
!1898 = !DILocation(line: 481, column: 28, scope: !1884)
!1899 = !DILocation(line: 481, column: 27, scope: !1884)
!1900 = !DILocation(line: 481, column: 34, scope: !1884)
!1901 = !DILocation(line: 481, column: 2, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1836, file: !109, discriminator: 3)
!1903 = !DILocation(line: 481, column: 44, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1836, file: !109, discriminator: 4)
!1905 = !DILocation(line: 481, column: 49, scope: !1904)
!1906 = !DILocation(line: 481, column: 2, scope: !1904)
!1907 = distinct !{!1907, !1891}
!1908 = !DILocation(line: 482, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1836, file: !109, line: 482, column: 6)
!1910 = !DILocation(line: 482, column: 7, scope: !1909)
!1911 = !DILocation(line: 482, column: 6, scope: !1909)
!1912 = !DILocation(line: 482, column: 13, scope: !1909)
!1913 = !DILocation(line: 482, column: 6, scope: !1836)
!1914 = !DILocation(line: 482, column: 24, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1909, file: !109, discriminator: 1)
!1916 = !DILocation(line: 482, column: 29, scope: !1915)
!1917 = !DILocation(line: 482, column: 32, scope: !1915)
!1918 = !DILocation(line: 482, column: 21, scope: !1915)
!1919 = !DILocation(line: 484, column: 9, scope: !1836)
!1920 = !DILocation(line: 484, column: 2, scope: !1836)
!1921 = !DILocation(line: 485, column: 1, scope: !1836)
!1922 = distinct !DISubprogram(name: "cmd_get_quoted_param", scope: !109, file: !109, line: 487, type: !1837, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!1923 = !DILocalVariable(name: "data", arg: 1, scope: !1922, file: !109, line: 487, type: !93)
!1924 = !DILocation(line: 487, column: 35, scope: !1922)
!1925 = !DILocalVariable(name: "pos", scope: !1922, file: !109, line: 489, type: !90)
!1926 = !DILocation(line: 489, column: 8, scope: !1922)
!1927 = !DILocalVariable(name: "quote", scope: !1922, file: !109, line: 489, type: !73)
!1928 = !DILocation(line: 489, column: 13, scope: !1922)
!1929 = !DILocation(line: 491, column: 2, scope: !1922)
!1930 = distinct !{!1930, !1929}
!1931 = !DILocation(line: 491, column: 10, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1933, file: !109, discriminator: 1)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !109, line: 491, column: 10)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !109, line: 491, column: 4)
!1935 = !DILocation(line: 491, column: 15, scope: !1932)
!1936 = !DILocation(line: 491, column: 5, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1938, file: !109, discriminator: 2)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !109, line: 491, column: 3)
!1939 = !DILocation(line: 491, column: 14, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1941, file: !109, discriminator: 3)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !109, line: 491, column: 12)
!1942 = !DILocation(line: 491, column: 99, scope: !1940)
!1943 = !DILocation(line: 491, column: 7, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1934, file: !109, discriminator: 4)
!1945 = !DILocation(line: 492, column: 2, scope: !1922)
!1946 = distinct !{!1946, !1945}
!1947 = !DILocation(line: 492, column: 11, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1949, file: !109, discriminator: 1)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !109, line: 492, column: 10)
!1950 = distinct !DILexicalBlock(scope: !1922, file: !109, line: 492, column: 4)
!1951 = !DILocation(line: 492, column: 10, scope: !1948)
!1952 = !DILocation(line: 492, column: 16, scope: !1948)
!1953 = !DILocation(line: 492, column: 5, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1955, file: !109, discriminator: 2)
!1955 = distinct !DILexicalBlock(scope: !1949, file: !109, line: 492, column: 3)
!1956 = !DILocation(line: 492, column: 14, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1958, file: !109, discriminator: 3)
!1958 = distinct !DILexicalBlock(scope: !1949, file: !109, line: 492, column: 12)
!1959 = !DILocation(line: 492, column: 100, scope: !1957)
!1960 = !DILocation(line: 492, column: 7, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1950, file: !109, discriminator: 4)
!1962 = !DILocation(line: 494, column: 2, scope: !1922)
!1963 = !DILocation(line: 494, column: 11, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1922, file: !109, discriminator: 1)
!1965 = !DILocation(line: 494, column: 10, scope: !1964)
!1966 = !DILocation(line: 494, column: 9, scope: !1964)
!1967 = !DILocation(line: 494, column: 16, scope: !1964)
!1968 = !DILocation(line: 494, column: 2, scope: !1964)
!1969 = !DILocation(line: 494, column: 26, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1922, file: !109, discriminator: 2)
!1971 = !DILocation(line: 494, column: 31, scope: !1970)
!1972 = !DILocation(line: 494, column: 2, scope: !1970)
!1973 = distinct !{!1973, !1962}
!1974 = !DILocation(line: 495, column: 8, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1922, file: !109, line: 495, column: 6)
!1976 = !DILocation(line: 495, column: 7, scope: !1975)
!1977 = !DILocation(line: 495, column: 6, scope: !1975)
!1978 = !DILocation(line: 495, column: 13, scope: !1975)
!1979 = !DILocation(line: 495, column: 21, scope: !1975)
!1980 = !DILocation(line: 495, column: 26, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1975, file: !109, discriminator: 1)
!1982 = !DILocation(line: 495, column: 25, scope: !1981)
!1983 = !DILocation(line: 495, column: 24, scope: !1981)
!1984 = !DILocation(line: 495, column: 31, scope: !1981)
!1985 = !DILocation(line: 495, column: 6, scope: !1981)
!1986 = !DILocation(line: 496, column: 24, scope: !1975)
!1987 = !DILocation(line: 496, column: 10, scope: !1975)
!1988 = !DILocation(line: 496, column: 3, scope: !1975)
!1989 = !DILocation(line: 498, column: 12, scope: !1922)
!1990 = !DILocation(line: 498, column: 11, scope: !1922)
!1991 = !DILocation(line: 498, column: 10, scope: !1922)
!1992 = !DILocation(line: 498, column: 8, scope: !1922)
!1993 = !DILocation(line: 498, column: 20, scope: !1922)
!1994 = !DILocation(line: 498, column: 25, scope: !1922)
!1995 = !DILocation(line: 500, column: 9, scope: !1922)
!1996 = !DILocation(line: 500, column: 8, scope: !1922)
!1997 = !DILocation(line: 500, column: 6, scope: !1922)
!1998 = !DILocation(line: 501, column: 2, scope: !1922)
!1999 = !DILocation(line: 501, column: 11, scope: !1964)
!2000 = !DILocation(line: 501, column: 10, scope: !1964)
!2001 = !DILocation(line: 501, column: 9, scope: !1964)
!2002 = !DILocation(line: 501, column: 16, scope: !1964)
!2003 = !DILocation(line: 501, column: 24, scope: !1964)
!2004 = !DILocation(line: 501, column: 30, scope: !1970)
!2005 = !DILocation(line: 501, column: 29, scope: !1970)
!2006 = !DILocation(line: 501, column: 28, scope: !1970)
!2007 = !DILocation(line: 501, column: 38, scope: !1970)
!2008 = !DILocation(line: 501, column: 35, scope: !1970)
!2009 = !DILocation(line: 501, column: 44, scope: !1970)
!2010 = !DILocation(line: 502, column: 10, scope: !1922)
!2011 = !DILocation(line: 502, column: 9, scope: !1922)
!2012 = !DILocation(line: 502, column: 8, scope: !1922)
!2013 = !DILocation(line: 502, column: 19, scope: !1922)
!2014 = !DILocation(line: 502, column: 26, scope: !1922)
!2015 = !DILocation(line: 502, column: 31, scope: !1964)
!2016 = !DILocation(line: 502, column: 30, scope: !1964)
!2017 = !DILocation(line: 502, column: 29, scope: !1964)
!2018 = !DILocation(line: 502, column: 40, scope: !1964)
!2019 = !DILocation(line: 501, column: 44, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1922, file: !109, discriminator: 3)
!2021 = !DILocation(line: 501, column: 2, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !1922, file: !109, discriminator: 4)
!2023 = !DILocation(line: 503, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !109, line: 503, column: 7)
!2025 = distinct !DILexicalBlock(scope: !1922, file: !109, line: 502, column: 51)
!2026 = !DILocation(line: 503, column: 8, scope: !2024)
!2027 = !DILocation(line: 503, column: 7, scope: !2024)
!2028 = !DILocation(line: 503, column: 14, scope: !2024)
!2029 = !DILocation(line: 503, column: 22, scope: !2024)
!2030 = !DILocation(line: 503, column: 27, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2024, file: !109, discriminator: 1)
!2032 = !DILocation(line: 503, column: 26, scope: !2031)
!2033 = !DILocation(line: 503, column: 25, scope: !2031)
!2034 = !DILocation(line: 503, column: 36, scope: !2031)
!2035 = !DILocation(line: 503, column: 7, scope: !2031)
!2036 = !DILocation(line: 504, column: 25, scope: !2024)
!2037 = distinct !{!2037, !2036}
!2038 = !DILocation(line: 504, column: 41, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2040, file: !109, discriminator: 1)
!2040 = distinct !DILexicalBlock(scope: !2024, file: !109, line: 504, column: 28)
!2041 = !DILocation(line: 504, column: 40, scope: !2039)
!2042 = !DILocation(line: 504, column: 51, scope: !2039)
!2043 = !DILocation(line: 504, column: 50, scope: !2039)
!2044 = !DILocation(line: 504, column: 56, scope: !2039)
!2045 = !DILocation(line: 504, column: 70, scope: !2039)
!2046 = !DILocation(line: 504, column: 69, scope: !2039)
!2047 = !DILocation(line: 504, column: 62, scope: !2039)
!2048 = !DILocation(line: 504, column: 30, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2039, file: !109, discriminator: 3)
!2050 = !DILocation(line: 504, column: 79, scope: !2039)
!2051 = !DILocation(line: 504, column: 79, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2040, file: !109, discriminator: 2)
!2053 = !DILocation(line: 505, column: 5, scope: !2025)
!2054 = !DILocation(line: 505, column: 10, scope: !2025)
!2055 = !DILocation(line: 501, column: 2, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !1922, file: !109, discriminator: 5)
!2057 = distinct !{!2057, !1998}
!2058 = !DILocation(line: 508, column: 8, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1922, file: !109, line: 508, column: 6)
!2060 = !DILocation(line: 508, column: 7, scope: !2059)
!2061 = !DILocation(line: 508, column: 6, scope: !2059)
!2062 = !DILocation(line: 508, column: 16, scope: !2059)
!2063 = !DILocation(line: 508, column: 13, scope: !2059)
!2064 = !DILocation(line: 508, column: 6, scope: !1922)
!2065 = !DILocation(line: 509, column: 6, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2059, file: !109, line: 508, column: 23)
!2067 = !DILocation(line: 509, column: 11, scope: !2066)
!2068 = !DILocation(line: 509, column: 14, scope: !2066)
!2069 = !DILocation(line: 510, column: 9, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !109, line: 510, column: 7)
!2071 = !DILocation(line: 510, column: 8, scope: !2070)
!2072 = !DILocation(line: 510, column: 7, scope: !2070)
!2073 = !DILocation(line: 510, column: 14, scope: !2070)
!2074 = !DILocation(line: 510, column: 7, scope: !2066)
!2075 = !DILocation(line: 511, column: 6, scope: !2070)
!2076 = !DILocation(line: 511, column: 11, scope: !2070)
!2077 = !DILocation(line: 511, column: 4, scope: !2070)
!2078 = !DILocation(line: 512, column: 2, scope: !2066)
!2079 = !DILocation(line: 514, column: 9, scope: !1922)
!2080 = !DILocation(line: 514, column: 2, scope: !1922)
!2081 = !DILocation(line: 515, column: 1, scope: !1922)
!2082 = distinct !DISubprogram(name: "cmd_get_params", scope: !109, file: !109, line: 700, type: !2083, isLocal: false, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!126, !74, !257, !126, null}
!2085 = !DILocalVariable(name: "data", arg: 1, scope: !2082, file: !109, line: 700, type: !74)
!2086 = !DILocation(line: 700, column: 32, scope: !2082)
!2087 = !DILocalVariable(name: "free_me", arg: 2, scope: !2082, file: !109, line: 700, type: !257)
!2088 = !DILocation(line: 700, column: 48, scope: !2082)
!2089 = !DILocalVariable(name: "count", arg: 3, scope: !2082, file: !109, line: 700, type: !126)
!2090 = !DILocation(line: 700, column: 61, scope: !2082)
!2091 = !DILocalVariable(name: "item", scope: !2082, file: !109, line: 702, type: !118)
!2092 = !DILocation(line: 702, column: 22, scope: !2082)
!2093 = !DILocalVariable(name: "rec", scope: !2082, file: !109, line: 703, type: !107)
!2094 = !DILocation(line: 703, column: 16, scope: !2082)
!2095 = !DILocalVariable(name: "opthash", scope: !2082, file: !109, line: 704, type: !504)
!2096 = !DILocation(line: 704, column: 15, scope: !2082)
!2097 = !DILocalVariable(name: "str", scope: !2082, file: !109, line: 705, type: !93)
!2098 = !DILocation(line: 705, column: 9, scope: !2082)
!2099 = !DILocalVariable(name: "arg", scope: !2082, file: !109, line: 705, type: !90)
!2100 = !DILocation(line: 705, column: 15, scope: !2082)
!2101 = !DILocalVariable(name: "datad", scope: !2082, file: !109, line: 705, type: !90)
!2102 = !DILocation(line: 705, column: 21, scope: !2082)
!2103 = !DILocalVariable(name: "args", scope: !2082, file: !109, line: 706, type: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2105, line: 79, baseType: !2106)
!2105 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2107, line: 40, baseType: !2108)
!2107 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 706, baseType: !2109)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2110, size: 192, align: 64, elements: !2116)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 706, size: 192, align: 64, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2110, file: !1, line: 706, baseType: !208, size: 32, align: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2110, file: !1, line: 706, baseType: !208, size: 32, align: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2110, file: !1, line: 706, baseType: !69, size: 64, align: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2110, file: !1, line: 706, baseType: !69, size: 64, align: 64, offset: 128)
!2116 = !{!2117}
!2117 = !DISubrange(count: 1)
!2118 = !DILocation(line: 706, column: 10, scope: !2082)
!2119 = !DILocalVariable(name: "cnt", scope: !2082, file: !109, line: 707, type: !126)
!2120 = !DILocation(line: 707, column: 6, scope: !2082)
!2121 = !DILocalVariable(name: "error", scope: !2082, file: !109, line: 707, type: !126)
!2122 = !DILocation(line: 707, column: 11, scope: !2082)
!2123 = !DILocalVariable(name: "ignore_unknown", scope: !2082, file: !109, line: 707, type: !126)
!2124 = !DILocation(line: 707, column: 18, scope: !2082)
!2125 = !DILocalVariable(name: "require_name", scope: !2082, file: !109, line: 707, type: !126)
!2126 = !DILocation(line: 707, column: 34, scope: !2082)
!2127 = !DILocation(line: 709, column: 2, scope: !2082)
!2128 = distinct !{!2128, !2127}
!2129 = !DILocation(line: 709, column: 10, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !109, discriminator: 1)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !109, line: 709, column: 10)
!2132 = distinct !DILexicalBlock(scope: !2082, file: !109, line: 709, column: 4)
!2133 = !DILocation(line: 709, column: 15, scope: !2130)
!2134 = !DILocation(line: 709, column: 5, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !109, discriminator: 2)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !109, line: 709, column: 3)
!2137 = !DILocation(line: 709, column: 14, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !109, discriminator: 3)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !109, line: 709, column: 12)
!2140 = !DILocation(line: 709, column: 99, scope: !2138)
!2141 = !DILocation(line: 709, column: 116, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2132, file: !109, discriminator: 4)
!2143 = !DILocation(line: 711, column: 1, scope: !2082)
!2144 = !DILocation(line: 713, column: 26, scope: !2082)
!2145 = !DILocation(line: 713, column: 9, scope: !2082)
!2146 = !DILocation(line: 713, column: 6, scope: !2082)
!2147 = !DILocation(line: 714, column: 23, scope: !2082)
!2148 = !DILocation(line: 714, column: 14, scope: !2082)
!2149 = !DILocation(line: 714, column: 2, scope: !2082)
!2150 = !DILocation(line: 714, column: 7, scope: !2082)
!2151 = !DILocation(line: 714, column: 12, scope: !2082)
!2152 = !DILocation(line: 715, column: 13, scope: !2082)
!2153 = !DILocation(line: 715, column: 3, scope: !2082)
!2154 = !DILocation(line: 715, column: 11, scope: !2082)
!2155 = !DILocation(line: 717, column: 17, scope: !2082)
!2156 = !DILocation(line: 717, column: 22, scope: !2082)
!2157 = !DILocation(line: 717, column: 15, scope: !2082)
!2158 = !DILocation(line: 718, column: 8, scope: !2082)
!2159 = !DILocation(line: 720, column: 10, scope: !2082)
!2160 = !DILocation(line: 720, column: 16, scope: !2082)
!2161 = !DILocation(line: 720, column: 30, scope: !2082)
!2162 = !DILocation(line: 720, column: 9, scope: !2082)
!2163 = !DILocation(line: 720, column: 9, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2082, file: !109, discriminator: 1)
!2165 = !DILocation(line: 721, column: 18, scope: !2082)
!2166 = !DILocation(line: 721, column: 18, scope: !2164)
!2167 = !DILocation(line: 721, column: 18, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2082, file: !109, discriminator: 2)
!2169 = !DILocation(line: 721, column: 18, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2082, file: !109, discriminator: 3)
!2171 = !DILocation(line: 720, column: 9, scope: !2168)
!2172 = !DILocation(line: 720, column: 9, scope: !2170)
!2173 = !DILocation(line: 720, column: 7, scope: !2170)
!2174 = !DILocation(line: 723, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2082, file: !109, line: 723, column: 6)
!2176 = !DILocation(line: 723, column: 12, scope: !2175)
!2177 = !DILocation(line: 723, column: 6, scope: !2082)
!2178 = !DILocation(line: 724, column: 17, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !109, line: 723, column: 26)
!2180 = !DILocation(line: 724, column: 17, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2179, file: !109, discriminator: 1)
!2182 = !DILocation(line: 724, column: 17, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2179, file: !109, discriminator: 2)
!2184 = !DILocation(line: 724, column: 17, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2179, file: !109, discriminator: 3)
!2186 = !DILocation(line: 724, column: 7, scope: !2185)
!2187 = !DILocation(line: 725, column: 28, scope: !2179)
!2188 = !DILocation(line: 725, column: 28, scope: !2181)
!2189 = !DILocation(line: 725, column: 28, scope: !2183)
!2190 = !DILocation(line: 725, column: 28, scope: !2185)
!2191 = !DILocation(line: 725, column: 11, scope: !2185)
!2192 = !DILocation(line: 728, column: 4, scope: !2179)
!2193 = !DILocation(line: 727, column: 19, scope: !2179)
!2194 = !DILocation(line: 727, column: 27, scope: !2179)
!2195 = !DILocation(line: 727, column: 3, scope: !2179)
!2196 = !DILocation(line: 727, column: 8, scope: !2179)
!2197 = !DILocation(line: 727, column: 16, scope: !2179)
!2198 = !DILocation(line: 731, column: 20, scope: !2179)
!2199 = !DILocation(line: 731, column: 26, scope: !2179)
!2200 = !DILocation(line: 731, column: 18, scope: !2179)
!2201 = !DILocation(line: 732, column: 35, scope: !2179)
!2202 = !DILocation(line: 733, column: 6, scope: !2179)
!2203 = !DILocation(line: 733, column: 12, scope: !2179)
!2204 = !DILocation(line: 733, column: 11, scope: !2179)
!2205 = !DILocation(line: 732, column: 11, scope: !2179)
!2206 = !DILocation(line: 732, column: 9, scope: !2179)
!2207 = !DILocation(line: 734, column: 2, scope: !2179)
!2208 = !DILocation(line: 736, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2082, file: !109, line: 736, column: 6)
!2210 = !DILocation(line: 736, column: 6, scope: !2082)
!2211 = !DILocation(line: 738, column: 11, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !109, line: 736, column: 14)
!2213 = !DILocation(line: 738, column: 18, scope: !2212)
!2214 = !DILocation(line: 738, column: 7, scope: !2212)
!2215 = !DILocation(line: 739, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !109, line: 739, column: 7)
!2217 = !DILocation(line: 739, column: 13, scope: !2216)
!2218 = !DILocation(line: 739, column: 7, scope: !2212)
!2219 = !DILocation(line: 741, column: 20, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !109, line: 739, column: 27)
!2221 = !DILocation(line: 741, column: 26, scope: !2220)
!2222 = !DILocation(line: 741, column: 53, scope: !2220)
!2223 = !DILocation(line: 741, column: 17, scope: !2220)
!2224 = !DILocation(line: 743, column: 40, scope: !2220)
!2225 = !DILocation(line: 743, column: 54, scope: !2220)
!2226 = !DILocation(line: 743, column: 19, scope: !2220)
!2227 = !DILocation(line: 743, column: 8, scope: !2220)
!2228 = !DILocation(line: 745, column: 19, scope: !2220)
!2229 = !DILocation(line: 745, column: 19, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2220, file: !109, discriminator: 1)
!2231 = !DILocation(line: 745, column: 19, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2220, file: !109, discriminator: 2)
!2233 = !DILocation(line: 745, column: 19, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2220, file: !109, discriminator: 3)
!2235 = !DILocation(line: 745, column: 8, scope: !2234)
!2236 = !DILocation(line: 746, column: 8, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2220, file: !109, line: 746, column: 8)
!2238 = !DILocation(line: 746, column: 12, scope: !2237)
!2239 = !DILocation(line: 746, column: 8, scope: !2220)
!2240 = !DILocation(line: 746, column: 27, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2237, file: !109, discriminator: 1)
!2242 = !DILocation(line: 746, column: 21, scope: !2241)
!2243 = !DILocation(line: 746, column: 25, scope: !2241)
!2244 = !DILocation(line: 746, column: 20, scope: !2241)
!2245 = !DILocation(line: 747, column: 7, scope: !2220)
!2246 = !DILocation(line: 748, column: 3, scope: !2220)
!2247 = !DILocation(line: 750, column: 3, scope: !2212)
!2248 = !DILocation(line: 750, column: 13, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2212, file: !109, discriminator: 1)
!2250 = !DILocation(line: 750, column: 16, scope: !2249)
!2251 = !DILocation(line: 750, column: 3, scope: !2249)
!2252 = !DILocation(line: 751, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !109, line: 751, column: 8)
!2254 = distinct !DILexicalBlock(scope: !2212, file: !109, line: 750, column: 21)
!2255 = !DILocation(line: 751, column: 12, scope: !2253)
!2256 = !DILocation(line: 751, column: 17, scope: !2253)
!2257 = !DILocation(line: 751, column: 20, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2253, file: !109, discriminator: 1)
!2259 = !DILocation(line: 751, column: 26, scope: !2258)
!2260 = !DILocation(line: 751, column: 8, scope: !2258)
!2261 = !DILocation(line: 753, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !109, line: 751, column: 40)
!2263 = !DILocation(line: 753, column: 9, scope: !2262)
!2264 = !DILocation(line: 756, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !109, line: 756, column: 9)
!2266 = !DILocation(line: 756, column: 15, scope: !2265)
!2267 = !DILocation(line: 756, column: 9, scope: !2262)
!2268 = !DILocation(line: 757, column: 23, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !109, line: 756, column: 29)
!2270 = !DILocation(line: 757, column: 12, scope: !2269)
!2271 = !DILocation(line: 757, column: 10, scope: !2269)
!2272 = !DILocation(line: 758, column: 5, scope: !2269)
!2273 = !DILocation(line: 759, column: 4, scope: !2262)
!2274 = !DILocation(line: 760, column: 12, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2253, file: !109, line: 759, column: 11)
!2276 = !DILocation(line: 760, column: 18, scope: !2275)
!2277 = !DILocation(line: 760, column: 11, scope: !2275)
!2278 = !DILocation(line: 761, column: 6, scope: !2275)
!2279 = !DILocation(line: 760, column: 11, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2275, file: !109, discriminator: 1)
!2281 = !DILocation(line: 762, column: 6, scope: !2275)
!2282 = !DILocation(line: 760, column: 11, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2275, file: !109, discriminator: 2)
!2284 = !DILocation(line: 760, column: 11, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2275, file: !109, discriminator: 3)
!2286 = !DILocation(line: 760, column: 9, scope: !2285)
!2287 = !DILocation(line: 765, column: 19, scope: !2254)
!2288 = !DILocation(line: 765, column: 19, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2254, file: !109, discriminator: 1)
!2290 = !DILocation(line: 765, column: 19, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2254, file: !109, discriminator: 2)
!2292 = !DILocation(line: 765, column: 19, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2254, file: !109, discriminator: 3)
!2294 = !DILocation(line: 765, column: 8, scope: !2293)
!2295 = !DILocation(line: 766, column: 8, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2254, file: !109, line: 766, column: 8)
!2297 = !DILocation(line: 766, column: 12, scope: !2296)
!2298 = !DILocation(line: 766, column: 8, scope: !2254)
!2299 = !DILocation(line: 766, column: 27, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2296, file: !109, discriminator: 1)
!2301 = !DILocation(line: 766, column: 21, scope: !2300)
!2302 = !DILocation(line: 766, column: 25, scope: !2300)
!2303 = !DILocation(line: 766, column: 20, scope: !2300)
!2304 = !DILocation(line: 750, column: 3, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2212, file: !109, discriminator: 2)
!2306 = distinct !{!2306, !2247}
!2307 = !DILocation(line: 768, column: 2, scope: !2212)
!2308 = !DILocation(line: 769, column: 1, scope: !2082)
!2309 = !DILocation(line: 771, column: 6, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2082, file: !109, line: 771, column: 6)
!2311 = !DILocation(line: 771, column: 6, scope: !2082)
!2312 = !DILocation(line: 772, column: 70, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !109, line: 771, column: 13)
!2314 = !DILocation(line: 772, column: 61, scope: !2313)
!2315 = !DILocation(line: 772, column: 50, scope: !2313)
!2316 = !DILocation(line: 772, column: 79, scope: !2313)
!2317 = !DILocation(line: 772, column: 17, scope: !2313)
!2318 = !DILocation(line: 773, column: 3, scope: !2313)
!2319 = !DILocation(line: 775, column: 33, scope: !2313)
!2320 = !DILocation(line: 775, column: 17, scope: !2313)
!2321 = !DILocation(line: 776, column: 4, scope: !2313)
!2322 = !DILocation(line: 776, column: 12, scope: !2313)
!2323 = !DILocation(line: 777, column: 2, scope: !2313)
!2324 = !DILocation(line: 779, column: 10, scope: !2082)
!2325 = !DILocation(line: 779, column: 9, scope: !2082)
!2326 = !DILocation(line: 779, column: 2, scope: !2082)
!2327 = !DILocation(line: 780, column: 1, scope: !2082)
!2328 = distinct !DISubprogram(name: "get_cmd_options", scope: !109, file: !109, line: 557, type: !2329, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!126, !93, !126, !74, !114}
!2331 = !DILocalVariable(name: "data", arg: 1, scope: !2328, file: !109, line: 557, type: !93)
!2332 = !DILocation(line: 557, column: 35, scope: !2328)
!2333 = !DILocalVariable(name: "ignore_unknown", arg: 2, scope: !2328, file: !109, line: 557, type: !126)
!2334 = !DILocation(line: 557, column: 45, scope: !2328)
!2335 = !DILocalVariable(name: "cmd", arg: 3, scope: !2328, file: !109, line: 558, type: !74)
!2336 = !DILocation(line: 558, column: 19, scope: !2328)
!2337 = !DILocalVariable(name: "options", arg: 4, scope: !2328, file: !109, line: 558, type: !114)
!2338 = !DILocation(line: 558, column: 36, scope: !2328)
!2339 = !DILocalVariable(name: "rec", scope: !2328, file: !109, line: 560, type: !76)
!2340 = !DILocation(line: 560, column: 15, scope: !2328)
!2341 = !DILocalVariable(name: "option", scope: !2328, file: !109, line: 561, type: !90)
!2342 = !DILocation(line: 561, column: 8, scope: !2328)
!2343 = !DILocalVariable(name: "arg", scope: !2328, file: !109, line: 561, type: !90)
!2344 = !DILocation(line: 561, column: 17, scope: !2328)
!2345 = !DILocalVariable(name: "optlist", scope: !2328, file: !109, line: 561, type: !93)
!2346 = !DILocation(line: 561, column: 24, scope: !2328)
!2347 = !DILocalVariable(name: "pos", scope: !2328, file: !109, line: 562, type: !126)
!2348 = !DILocation(line: 562, column: 6, scope: !2328)
!2349 = !DILocation(line: 565, column: 8, scope: !2328)
!2350 = !DILocation(line: 565, column: 12, scope: !2328)
!2351 = !DILocation(line: 565, column: 8, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2328, file: !109, discriminator: 1)
!2353 = !DILocation(line: 565, column: 41, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2328, file: !109, discriminator: 2)
!2355 = !DILocation(line: 565, column: 28, scope: !2354)
!2356 = !DILocation(line: 565, column: 8, scope: !2354)
!2357 = !DILocation(line: 565, column: 8, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2328, file: !109, discriminator: 3)
!2359 = !DILocation(line: 565, column: 6, scope: !2358)
!2360 = !DILocation(line: 566, column: 12, scope: !2328)
!2361 = !DILocation(line: 566, column: 16, scope: !2328)
!2362 = !DILocation(line: 566, column: 12, scope: !2352)
!2363 = !DILocation(line: 566, column: 32, scope: !2354)
!2364 = !DILocation(line: 566, column: 37, scope: !2354)
!2365 = !DILocation(line: 566, column: 12, scope: !2354)
!2366 = !DILocation(line: 566, column: 12, scope: !2358)
!2367 = !DILocation(line: 566, column: 10, scope: !2358)
!2368 = !DILocation(line: 568, column: 9, scope: !2328)
!2369 = !DILocation(line: 568, column: 20, scope: !2328)
!2370 = !DILocation(line: 569, column: 2, scope: !2328)
!2371 = !DILocation(line: 570, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !109, line: 570, column: 7)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !109, line: 569, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !109, line: 569, column: 2)
!2375 = distinct !DILexicalBlock(scope: !2328, file: !109, line: 569, column: 2)
!2376 = !DILocation(line: 570, column: 8, scope: !2372)
!2377 = !DILocation(line: 570, column: 7, scope: !2372)
!2378 = !DILocation(line: 570, column: 14, scope: !2372)
!2379 = !DILocation(line: 570, column: 22, scope: !2372)
!2380 = !DILocation(line: 570, column: 27, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2372, file: !109, discriminator: 1)
!2382 = !DILocation(line: 570, column: 26, scope: !2381)
!2383 = !DILocation(line: 570, column: 25, scope: !2381)
!2384 = !DILocation(line: 570, column: 32, scope: !2381)
!2385 = !DILocation(line: 570, column: 7, scope: !2381)
!2386 = !DILocation(line: 571, column: 8, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !109, line: 571, column: 8)
!2388 = distinct !DILexicalBlock(scope: !2372, file: !109, line: 570, column: 40)
!2389 = !DILocation(line: 571, column: 15, scope: !2387)
!2390 = !DILocation(line: 571, column: 22, scope: !2387)
!2391 = !DILocation(line: 571, column: 34, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2387, file: !109, discriminator: 1)
!2393 = !DILocation(line: 571, column: 26, scope: !2392)
!2394 = !DILocation(line: 571, column: 25, scope: !2392)
!2395 = !DILocation(line: 571, column: 39, scope: !2392)
!2396 = !DILocation(line: 571, column: 8, scope: !2392)
!2397 = !DILocation(line: 573, column: 49, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2387, file: !109, line: 571, column: 47)
!2399 = !DILocation(line: 573, column: 41, scope: !2398)
!2400 = !DILocation(line: 573, column: 54, scope: !2398)
!2401 = !DILocation(line: 573, column: 34, scope: !2398)
!2402 = !DILocation(line: 573, column: 39, scope: !2398)
!2403 = !DILocation(line: 574, column: 5, scope: !2398)
!2404 = !DILocation(line: 576, column: 3, scope: !2388)
!2405 = !DILocation(line: 577, column: 9, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2373, file: !109, line: 577, column: 7)
!2407 = !DILocation(line: 577, column: 8, scope: !2406)
!2408 = !DILocation(line: 577, column: 7, scope: !2406)
!2409 = !DILocation(line: 577, column: 14, scope: !2406)
!2410 = !DILocation(line: 577, column: 7, scope: !2373)
!2411 = !DILocation(line: 578, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2406, file: !109, line: 577, column: 22)
!2413 = !DILocation(line: 578, column: 11, scope: !2412)
!2414 = !DILocation(line: 579, column: 10, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 579, column: 8)
!2416 = !DILocation(line: 579, column: 9, scope: !2415)
!2417 = !DILocation(line: 579, column: 8, scope: !2415)
!2418 = !DILocation(line: 579, column: 15, scope: !2415)
!2419 = !DILocation(line: 579, column: 22, scope: !2415)
!2420 = !DILocation(line: 579, column: 27, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2415, file: !109, discriminator: 1)
!2422 = !DILocation(line: 579, column: 26, scope: !2421)
!2423 = !DILocation(line: 579, column: 25, scope: !2421)
!2424 = !DILocation(line: 579, column: 36, scope: !2421)
!2425 = !DILocation(line: 579, column: 8, scope: !2421)
!2426 = !DILocation(line: 582, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2415, file: !109, line: 579, column: 44)
!2428 = !DILocation(line: 582, column: 12, scope: !2427)
!2429 = !DILocation(line: 583, column: 5, scope: !2427)
!2430 = !DILocation(line: 583, column: 14, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2427, file: !109, discriminator: 1)
!2432 = !DILocation(line: 583, column: 13, scope: !2431)
!2433 = !DILocation(line: 583, column: 12, scope: !2431)
!2434 = !DILocation(line: 583, column: 19, scope: !2431)
!2435 = !DILocation(line: 583, column: 5, scope: !2431)
!2436 = !DILocation(line: 583, column: 29, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2427, file: !109, discriminator: 2)
!2438 = !DILocation(line: 583, column: 34, scope: !2437)
!2439 = !DILocation(line: 583, column: 5, scope: !2437)
!2440 = distinct !{!2440, !2429}
!2441 = !DILocation(line: 584, column: 5, scope: !2427)
!2442 = !DILocation(line: 587, column: 10, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 587, column: 8)
!2444 = !DILocation(line: 587, column: 9, scope: !2443)
!2445 = !DILocation(line: 587, column: 8, scope: !2443)
!2446 = !DILocation(line: 587, column: 15, scope: !2443)
!2447 = !DILocation(line: 587, column: 8, scope: !2412)
!2448 = !DILocation(line: 588, column: 12, scope: !2443)
!2449 = !DILocation(line: 588, column: 5, scope: !2443)
!2450 = !DILocation(line: 589, column: 15, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2443, file: !109, line: 589, column: 13)
!2452 = !DILocation(line: 589, column: 14, scope: !2451)
!2453 = !DILocation(line: 589, column: 13, scope: !2451)
!2454 = !DILocation(line: 589, column: 20, scope: !2451)
!2455 = !DILocation(line: 589, column: 13, scope: !2443)
!2456 = !DILocation(line: 590, column: 28, scope: !2451)
!2457 = !DILocation(line: 590, column: 14, scope: !2451)
!2458 = !DILocation(line: 590, column: 12, scope: !2451)
!2459 = !DILocation(line: 590, column: 5, scope: !2451)
!2460 = !DILocation(line: 592, column: 12, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2451, file: !109, line: 591, column: 9)
!2462 = !DILocation(line: 593, column: 7, scope: !2461)
!2463 = !DILocation(line: 593, column: 12, scope: !2461)
!2464 = !DILocation(line: 597, column: 10, scope: !2412)
!2465 = !DILocation(line: 597, column: 18, scope: !2412)
!2466 = !DILocation(line: 597, column: 10, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2412, file: !109, discriminator: 1)
!2468 = !DILocation(line: 598, column: 17, scope: !2412)
!2469 = !DILocation(line: 598, column: 26, scope: !2412)
!2470 = !DILocation(line: 598, column: 5, scope: !2412)
!2471 = !DILocation(line: 597, column: 10, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2412, file: !109, discriminator: 2)
!2473 = !DILocation(line: 597, column: 10, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2412, file: !109, discriminator: 3)
!2475 = !DILocation(line: 597, column: 8, scope: !2474)
!2476 = !DILocation(line: 600, column: 8, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 600, column: 8)
!2478 = !DILocation(line: 600, column: 12, scope: !2477)
!2479 = !DILocation(line: 600, column: 18, scope: !2477)
!2480 = !DILocation(line: 600, column: 21, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2477, file: !109, discriminator: 1)
!2482 = !DILocation(line: 600, column: 29, scope: !2481)
!2483 = !DILocation(line: 600, column: 36, scope: !2481)
!2484 = !DILocation(line: 601, column: 19, scope: !2477)
!2485 = !DILocation(line: 601, column: 8, scope: !2477)
!2486 = !DILocation(line: 600, column: 8, scope: !2472)
!2487 = !DILocation(line: 603, column: 23, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2477, file: !109, line: 601, column: 34)
!2489 = !DILocation(line: 603, column: 11, scope: !2488)
!2490 = !DILocation(line: 603, column: 9, scope: !2488)
!2491 = !DILocation(line: 604, column: 9, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !109, line: 604, column: 9)
!2493 = !DILocation(line: 604, column: 13, scope: !2492)
!2494 = !DILocation(line: 604, column: 9, scope: !2488)
!2495 = !DILocation(line: 605, column: 26, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !109, line: 604, column: 20)
!2497 = !DILocation(line: 606, column: 12, scope: !2496)
!2498 = !DILocation(line: 605, column: 6, scope: !2496)
!2499 = !DILocation(line: 607, column: 45, scope: !2496)
!2500 = !DILocation(line: 608, column: 5, scope: !2496)
!2501 = !DILocation(line: 609, column: 4, scope: !2488)
!2502 = !DILocation(line: 611, column: 8, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 611, column: 8)
!2504 = !DILocation(line: 611, column: 12, scope: !2503)
!2505 = !DILocation(line: 611, column: 18, scope: !2503)
!2506 = !DILocation(line: 611, column: 22, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2503, file: !109, discriminator: 1)
!2508 = !DILocation(line: 611, column: 8, scope: !2507)
!2509 = !DILocation(line: 613, column: 41, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2503, file: !109, line: 611, column: 38)
!2511 = !DILocation(line: 613, column: 34, scope: !2510)
!2512 = !DILocation(line: 613, column: 39, scope: !2510)
!2513 = !DILocation(line: 614, column: 5, scope: !2510)
!2514 = !DILocation(line: 616, column: 8, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 616, column: 8)
!2516 = !DILocation(line: 616, column: 12, scope: !2515)
!2517 = !DILocation(line: 616, column: 18, scope: !2515)
!2518 = !DILocation(line: 616, column: 22, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !2515, file: !109, discriminator: 1)
!2520 = !DILocation(line: 616, column: 8, scope: !2519)
!2521 = !DILocation(line: 618, column: 13, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !109, line: 616, column: 38)
!2523 = !DILocation(line: 618, column: 6, scope: !2522)
!2524 = !DILocation(line: 618, column: 11, scope: !2522)
!2525 = !DILocation(line: 619, column: 5, scope: !2522)
!2526 = !DILocation(line: 621, column: 8, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 621, column: 8)
!2528 = !DILocation(line: 621, column: 12, scope: !2527)
!2529 = !DILocation(line: 621, column: 8, scope: !2412)
!2530 = !DILocation(line: 624, column: 22, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !109, line: 621, column: 18)
!2532 = !DILocation(line: 624, column: 14, scope: !2531)
!2533 = !DILocation(line: 625, column: 17, scope: !2531)
!2534 = !DILocation(line: 625, column: 9, scope: !2531)
!2535 = !DILocation(line: 625, column: 8, scope: !2531)
!2536 = !DILocation(line: 625, column: 7, scope: !2531)
!2537 = !DILocation(line: 625, column: 23, scope: !2531)
!2538 = !DILocation(line: 625, column: 30, scope: !2531)
!2539 = !DILocation(line: 625, column: 43, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2531, file: !109, discriminator: 1)
!2541 = !DILocation(line: 625, column: 35, scope: !2540)
!2542 = !DILocation(line: 625, column: 34, scope: !2540)
!2543 = !DILocation(line: 625, column: 33, scope: !2540)
!2544 = !DILocation(line: 625, column: 49, scope: !2540)
!2545 = !DILocation(line: 625, column: 56, scope: !2540)
!2546 = !DILocation(line: 625, column: 69, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2531, file: !109, discriminator: 2)
!2548 = !DILocation(line: 625, column: 61, scope: !2547)
!2549 = !DILocation(line: 625, column: 60, scope: !2547)
!2550 = !DILocation(line: 625, column: 59, scope: !2547)
!2551 = !DILocation(line: 625, column: 75, scope: !2547)
!2552 = !DILocation(line: 625, column: 82, scope: !2547)
!2553 = !DILocation(line: 625, column: 95, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2531, file: !109, discriminator: 3)
!2555 = !DILocation(line: 625, column: 87, scope: !2554)
!2556 = !DILocation(line: 625, column: 86, scope: !2554)
!2557 = !DILocation(line: 625, column: 85, scope: !2554)
!2558 = !DILocation(line: 625, column: 101, scope: !2554)
!2559 = !DILocation(line: 625, column: 82, scope: !2554)
!2560 = !DILocation(line: 625, column: 82, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2531, file: !109, discriminator: 4)
!2562 = !DILocation(line: 624, column: 27, scope: !2540)
!2563 = !DILocation(line: 624, column: 12, scope: !2540)
!2564 = !DILocation(line: 626, column: 4, scope: !2531)
!2565 = !DILocation(line: 627, column: 8, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 627, column: 8)
!2567 = !DILocation(line: 627, column: 16, scope: !2566)
!2568 = !DILocation(line: 627, column: 23, scope: !2566)
!2569 = !DILocation(line: 627, column: 26, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2566, file: !109, discriminator: 1)
!2571 = !DILocation(line: 627, column: 30, scope: !2570)
!2572 = !DILocation(line: 627, column: 8, scope: !2570)
!2573 = !DILocation(line: 628, column: 25, scope: !2566)
!2574 = !DILocation(line: 628, column: 34, scope: !2566)
!2575 = !DILocation(line: 628, column: 5, scope: !2566)
!2576 = !DILocation(line: 630, column: 8, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2412, file: !109, line: 630, column: 8)
!2578 = !DILocation(line: 630, column: 12, scope: !2577)
!2579 = !DILocation(line: 630, column: 16, scope: !2577)
!2580 = !DILocation(line: 630, column: 31, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2577, file: !109, discriminator: 1)
!2582 = !DILocation(line: 630, column: 23, scope: !2581)
!2583 = !DILocation(line: 630, column: 22, scope: !2581)
!2584 = !DILocation(line: 630, column: 21, scope: !2581)
!2585 = !DILocation(line: 630, column: 37, scope: !2581)
!2586 = !DILocation(line: 630, column: 44, scope: !2581)
!2587 = !DILocation(line: 630, column: 57, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2577, file: !109, discriminator: 2)
!2589 = !DILocation(line: 630, column: 49, scope: !2588)
!2590 = !DILocation(line: 630, column: 48, scope: !2588)
!2591 = !DILocation(line: 630, column: 47, scope: !2588)
!2592 = !DILocation(line: 630, column: 63, scope: !2588)
!2593 = !DILocation(line: 630, column: 70, scope: !2588)
!2594 = !DILocation(line: 630, column: 83, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2577, file: !109, discriminator: 3)
!2596 = !DILocation(line: 630, column: 75, scope: !2595)
!2597 = !DILocation(line: 630, column: 74, scope: !2595)
!2598 = !DILocation(line: 630, column: 73, scope: !2595)
!2599 = !DILocation(line: 630, column: 89, scope: !2595)
!2600 = !DILocation(line: 630, column: 96, scope: !2595)
!2601 = !DILocation(line: 630, column: 109, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2577, file: !109, discriminator: 4)
!2603 = !DILocation(line: 630, column: 101, scope: !2602)
!2604 = !DILocation(line: 630, column: 100, scope: !2602)
!2605 = !DILocation(line: 630, column: 99, scope: !2602)
!2606 = !DILocation(line: 630, column: 115, scope: !2602)
!2607 = !DILocation(line: 630, column: 123, scope: !2602)
!2608 = !DILocation(line: 631, column: 17, scope: !2577)
!2609 = !DILocation(line: 631, column: 9, scope: !2577)
!2610 = !DILocation(line: 631, column: 8, scope: !2577)
!2611 = !DILocation(line: 631, column: 22, scope: !2577)
!2612 = !DILocation(line: 630, column: 8, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2412, file: !109, discriminator: 5)
!2614 = !DILocation(line: 632, column: 12, scope: !2577)
!2615 = !DILocation(line: 632, column: 5, scope: !2577)
!2616 = !DILocation(line: 634, column: 4, scope: !2412)
!2617 = !DILocation(line: 634, column: 13, scope: !2467)
!2618 = !DILocation(line: 634, column: 12, scope: !2467)
!2619 = !DILocation(line: 634, column: 11, scope: !2467)
!2620 = !DILocation(line: 634, column: 18, scope: !2467)
!2621 = !DILocation(line: 634, column: 4, scope: !2467)
!2622 = !DILocation(line: 634, column: 28, scope: !2472)
!2623 = !DILocation(line: 634, column: 33, scope: !2472)
!2624 = !DILocation(line: 634, column: 4, scope: !2472)
!2625 = distinct !{!2625, !2616}
!2626 = !DILocation(line: 635, column: 4, scope: !2412)
!2627 = distinct !{!2627, !2370}
!2628 = !DILocation(line: 638, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2373, file: !109, line: 638, column: 7)
!2630 = !DILocation(line: 638, column: 14, scope: !2629)
!2631 = !DILocation(line: 638, column: 7, scope: !2373)
!2632 = !DILocation(line: 639, column: 4, scope: !2629)
!2633 = !DILocation(line: 641, column: 16, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2373, file: !109, line: 641, column: 7)
!2635 = !DILocation(line: 641, column: 8, scope: !2634)
!2636 = !DILocation(line: 641, column: 7, scope: !2634)
!2637 = !DILocation(line: 641, column: 21, scope: !2634)
!2638 = !DILocation(line: 641, column: 28, scope: !2634)
!2639 = !DILocation(line: 641, column: 44, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2634, file: !109, discriminator: 1)
!2641 = !DILocation(line: 641, column: 43, scope: !2640)
!2642 = !DILocation(line: 641, column: 32, scope: !2640)
!2643 = !DILocation(line: 641, column: 7, scope: !2640)
!2644 = !DILocation(line: 642, column: 4, scope: !2634)
!2645 = !DILocation(line: 645, column: 30, scope: !2373)
!2646 = !DILocation(line: 645, column: 9, scope: !2373)
!2647 = !DILocation(line: 645, column: 7, scope: !2373)
!2648 = !DILocation(line: 646, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2373, file: !109, line: 646, column: 7)
!2650 = !DILocation(line: 646, column: 15, scope: !2649)
!2651 = !DILocation(line: 646, column: 7, scope: !2373)
!2652 = !DILocation(line: 647, column: 24, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !109, line: 646, column: 23)
!2654 = !DILocation(line: 647, column: 33, scope: !2653)
!2655 = !DILocation(line: 647, column: 4, scope: !2653)
!2656 = !DILocation(line: 648, column: 24, scope: !2653)
!2657 = !DILocation(line: 648, column: 33, scope: !2653)
!2658 = !DILocation(line: 648, column: 41, scope: !2653)
!2659 = !DILocation(line: 648, column: 4, scope: !2653)
!2660 = !DILocation(line: 649, column: 3, scope: !2653)
!2661 = !DILocation(line: 650, column: 10, scope: !2373)
!2662 = !DILocation(line: 652, column: 3, scope: !2373)
!2663 = !DILocation(line: 652, column: 12, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2373, file: !109, discriminator: 1)
!2665 = !DILocation(line: 652, column: 11, scope: !2664)
!2666 = !DILocation(line: 652, column: 10, scope: !2664)
!2667 = !DILocation(line: 652, column: 17, scope: !2664)
!2668 = !DILocation(line: 652, column: 3, scope: !2664)
!2669 = !DILocation(line: 652, column: 27, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2373, file: !109, discriminator: 2)
!2671 = !DILocation(line: 652, column: 32, scope: !2670)
!2672 = !DILocation(line: 652, column: 3, scope: !2670)
!2673 = distinct !{!2673, !2662}
!2674 = !DILocation(line: 569, column: 2, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2374, file: !109, discriminator: 1)
!2676 = !DILocation(line: 655, column: 2, scope: !2328)
!2677 = !DILocation(line: 656, column: 1, scope: !2328)
!2678 = distinct !DISubprogram(name: "get_optional_channel", scope: !109, file: !109, line: 664, type: !2679, isLocal: true, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!74, !118, !93, !126}
!2681 = !DILocalVariable(name: "active_item", arg: 1, scope: !2678, file: !109, line: 664, type: !118)
!2682 = !DILocation(line: 664, column: 35, scope: !2678)
!2683 = !DILocalVariable(name: "data", arg: 2, scope: !2678, file: !109, line: 664, type: !93)
!2684 = !DILocation(line: 664, column: 55, scope: !2678)
!2685 = !DILocalVariable(name: "require_name", arg: 3, scope: !2678, file: !109, line: 664, type: !126)
!2686 = !DILocation(line: 664, column: 65, scope: !2678)
!2687 = !DILocalVariable(name: "chanrec", scope: !2678, file: !109, line: 666, type: !436)
!2688 = !DILocation(line: 666, column: 22, scope: !2678)
!2689 = !DILocalVariable(name: "ret", scope: !2678, file: !109, line: 667, type: !74)
!2690 = !DILocation(line: 667, column: 14, scope: !2678)
!2691 = !DILocalVariable(name: "tmp", scope: !2678, file: !109, line: 668, type: !90)
!2692 = !DILocation(line: 668, column: 8, scope: !2678)
!2693 = !DILocalVariable(name: "origtmp", scope: !2678, file: !109, line: 668, type: !90)
!2694 = !DILocation(line: 668, column: 14, scope: !2678)
!2695 = !DILocalVariable(name: "channel", scope: !2678, file: !109, line: 668, type: !90)
!2696 = !DILocation(line: 668, column: 24, scope: !2678)
!2697 = !DILocation(line: 670, column: 6, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2678, file: !109, line: 670, column: 6)
!2699 = !DILocation(line: 670, column: 18, scope: !2698)
!2700 = !DILocation(line: 670, column: 25, scope: !2698)
!2701 = !DILocation(line: 670, column: 28, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2698, file: !109, discriminator: 1)
!2703 = !DILocation(line: 670, column: 41, scope: !2702)
!2704 = !DILocation(line: 670, column: 48, scope: !2702)
!2705 = !DILocation(line: 670, column: 6, scope: !2702)
!2706 = !DILocation(line: 672, column: 24, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2698, file: !109, line: 670, column: 57)
!2708 = !DILocation(line: 672, column: 10, scope: !2707)
!2709 = !DILocation(line: 672, column: 3, scope: !2707)
!2710 = !DILocation(line: 675, column: 28, scope: !2678)
!2711 = !DILocation(line: 675, column: 27, scope: !2678)
!2712 = !DILocation(line: 675, column: 18, scope: !2678)
!2713 = !DILocation(line: 675, column: 16, scope: !2678)
!2714 = !DILocation(line: 675, column: 10, scope: !2678)
!2715 = !DILocation(line: 676, column: 12, scope: !2678)
!2716 = !DILocation(line: 676, column: 10, scope: !2678)
!2717 = !DILocation(line: 678, column: 16, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2678, file: !109, line: 678, column: 6)
!2719 = !DILocation(line: 678, column: 6, scope: !2718)
!2720 = !DILocation(line: 678, column: 30, scope: !2718)
!2721 = !DILocation(line: 678, column: 35, scope: !2718)
!2722 = !DILocation(line: 678, column: 81, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2718, file: !109, discriminator: 1)
!2724 = !DILocation(line: 678, column: 56, scope: !2723)
!2725 = !DILocation(line: 678, column: 40, scope: !2723)
!2726 = !DILocation(line: 678, column: 87, scope: !2723)
!2727 = !DILocation(line: 678, column: 39, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2718, file: !109, discriminator: 2)
!2729 = !DILocation(line: 678, column: 87, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2718, file: !109, discriminator: 3)
!2731 = !DILocation(line: 679, column: 7, scope: !2718)
!2732 = !DILocation(line: 678, column: 6, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2678, file: !109, discriminator: 4)
!2734 = !DILocation(line: 681, column: 17, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2718, file: !109, line: 679, column: 21)
!2736 = !DILocation(line: 681, column: 3, scope: !2735)
!2737 = !DILocation(line: 682, column: 11, scope: !2735)
!2738 = !DILocation(line: 682, column: 25, scope: !2735)
!2739 = !DILocation(line: 682, column: 36, scope: !2735)
!2740 = !DILocation(line: 682, column: 10, scope: !2735)
!2741 = !DILocation(line: 682, column: 7, scope: !2735)
!2742 = !DILocation(line: 683, column: 2, scope: !2735)
!2743 = !DILocation(line: 683, column: 56, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2745, file: !109, discriminator: 1)
!2745 = distinct !DILexicalBlock(scope: !2718, file: !109, line: 683, column: 13)
!2746 = !DILocation(line: 683, column: 31, scope: !2744)
!2747 = !DILocation(line: 683, column: 15, scope: !2744)
!2748 = !DILocation(line: 683, column: 62, scope: !2744)
!2749 = !DILocation(line: 683, column: 14, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2745, file: !109, discriminator: 2)
!2751 = !DILocation(line: 683, column: 62, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2745, file: !109, discriminator: 3)
!2753 = !DILocation(line: 684, column: 9, scope: !2745)
!2754 = !DILocation(line: 684, column: 22, scope: !2745)
!2755 = !DILocation(line: 684, column: 31, scope: !2745)
!2756 = !DILocation(line: 684, column: 41, scope: !2745)
!2757 = !DILocation(line: 684, column: 54, scope: !2745)
!2758 = !DILocation(line: 684, column: 62, scope: !2745)
!2759 = !DILocation(line: 684, column: 8, scope: !2745)
!2760 = !DILocation(line: 683, column: 13, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2718, file: !109, discriminator: 4)
!2762 = !DILocation(line: 686, column: 11, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2745, file: !109, line: 684, column: 73)
!2764 = !DILocation(line: 686, column: 25, scope: !2763)
!2765 = !DILocation(line: 686, column: 36, scope: !2763)
!2766 = !DILocation(line: 686, column: 10, scope: !2763)
!2767 = !DILocation(line: 686, column: 7, scope: !2763)
!2768 = !DILocation(line: 687, column: 2, scope: !2763)
!2769 = !DILocation(line: 690, column: 41, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2745, file: !109, line: 687, column: 9)
!2771 = !DILocation(line: 690, column: 27, scope: !2770)
!2772 = !DILocation(line: 690, column: 25, scope: !2770)
!2773 = !DILocation(line: 692, column: 26, scope: !2770)
!2774 = !DILocation(line: 692, column: 39, scope: !2770)
!2775 = !DILocation(line: 692, column: 47, scope: !2770)
!2776 = !DILocation(line: 692, column: 13, scope: !2770)
!2777 = !DILocation(line: 692, column: 11, scope: !2770)
!2778 = !DILocation(line: 693, column: 9, scope: !2770)
!2779 = !DILocation(line: 693, column: 17, scope: !2770)
!2780 = !DILocation(line: 693, column: 26, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2770, file: !109, discriminator: 1)
!2782 = !DILocation(line: 693, column: 9, scope: !2781)
!2783 = !DILocation(line: 693, column: 36, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2770, file: !109, discriminator: 2)
!2785 = !DILocation(line: 693, column: 45, scope: !2784)
!2786 = !DILocation(line: 693, column: 9, scope: !2784)
!2787 = !DILocation(line: 693, column: 9, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2770, file: !109, discriminator: 3)
!2789 = !DILocation(line: 693, column: 7, scope: !2788)
!2790 = !DILocation(line: 696, column: 9, scope: !2678)
!2791 = !DILocation(line: 696, column: 2, scope: !2678)
!2792 = !DILocation(line: 697, column: 16, scope: !2678)
!2793 = !DILocation(line: 697, column: 9, scope: !2678)
!2794 = !DILocation(line: 698, column: 1, scope: !2678)
!2795 = distinct !DISubprogram(name: "cmd_params_free", scope: !109, file: !109, line: 782, type: !2796, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !69}
!2798 = !DILocalVariable(name: "free_me", arg: 1, scope: !2795, file: !109, line: 782, type: !69)
!2799 = !DILocation(line: 782, column: 28, scope: !2795)
!2800 = !DILocalVariable(name: "rec", scope: !2795, file: !109, line: 784, type: !107)
!2801 = !DILocation(line: 784, column: 16, scope: !2795)
!2802 = !DILocation(line: 784, column: 22, scope: !2795)
!2803 = !DILocation(line: 786, column: 6, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2795, file: !109, line: 786, column: 6)
!2805 = !DILocation(line: 786, column: 11, scope: !2804)
!2806 = !DILocation(line: 786, column: 19, scope: !2804)
!2807 = !DILocation(line: 786, column: 6, scope: !2795)
!2808 = !DILocation(line: 786, column: 48, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2804, file: !109, discriminator: 1)
!2810 = !DILocation(line: 786, column: 53, scope: !2809)
!2811 = !DILocation(line: 786, column: 27, scope: !2809)
!2812 = !DILocation(line: 787, column: 9, scope: !2795)
!2813 = !DILocation(line: 787, column: 14, scope: !2795)
!2814 = !DILocation(line: 787, column: 2, scope: !2795)
!2815 = !DILocation(line: 788, column: 9, scope: !2795)
!2816 = !DILocation(line: 788, column: 2, scope: !2795)
!2817 = !DILocation(line: 789, column: 1, scope: !2795)
!2818 = distinct !DISubprogram(name: "commands_remove_module", scope: !109, file: !109, line: 810, type: !2819, isLocal: false, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !74}
!2821 = !DILocalVariable(name: "module", arg: 1, scope: !2818, file: !109, line: 810, type: !74)
!2822 = !DILocation(line: 810, column: 41, scope: !2818)
!2823 = !DILocalVariable(name: "tmp", scope: !2818, file: !109, line: 812, type: !81)
!2824 = !DILocation(line: 812, column: 10, scope: !2818)
!2825 = !DILocalVariable(name: "next", scope: !2818, file: !109, line: 812, type: !81)
!2826 = !DILocation(line: 812, column: 16, scope: !2818)
!2827 = !DILocalVariable(name: "modlist", scope: !2818, file: !109, line: 812, type: !81)
!2828 = !DILocation(line: 812, column: 23, scope: !2818)
!2829 = !DILocation(line: 814, column: 2, scope: !2818)
!2830 = distinct !{!2830, !2829}
!2831 = !DILocation(line: 814, column: 10, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2833, file: !109, discriminator: 1)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !109, line: 814, column: 10)
!2834 = distinct !DILexicalBlock(scope: !2818, file: !109, line: 814, column: 4)
!2835 = !DILocation(line: 814, column: 17, scope: !2832)
!2836 = !DILocation(line: 814, column: 5, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2838, file: !109, discriminator: 2)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !109, line: 814, column: 3)
!2839 = !DILocation(line: 814, column: 14, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2841, file: !109, discriminator: 3)
!2841 = distinct !DILexicalBlock(scope: !2833, file: !109, line: 814, column: 12)
!2842 = !DILocation(line: 814, column: 101, scope: !2840)
!2843 = !DILocation(line: 814, column: 112, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2834, file: !109, discriminator: 4)
!2845 = !DILocation(line: 816, column: 13, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2818, file: !109, line: 816, column: 2)
!2847 = !DILocation(line: 816, column: 11, scope: !2846)
!2848 = !DILocation(line: 816, column: 7, scope: !2846)
!2849 = !DILocation(line: 816, column: 23, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2851, file: !109, discriminator: 1)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !109, line: 816, column: 2)
!2852 = !DILocation(line: 816, column: 27, scope: !2850)
!2853 = !DILocation(line: 816, column: 2, scope: !2850)
!2854 = !DILocalVariable(name: "rec", scope: !2855, file: !109, line: 817, type: !76)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !109, line: 816, column: 47)
!2856 = !DILocation(line: 817, column: 16, scope: !2855)
!2857 = !DILocation(line: 817, column: 22, scope: !2855)
!2858 = !DILocation(line: 817, column: 27, scope: !2855)
!2859 = !DILocation(line: 819, column: 24, scope: !2855)
!2860 = !DILocation(line: 819, column: 29, scope: !2855)
!2861 = !DILocation(line: 819, column: 22, scope: !2855)
!2862 = !DILocation(line: 820, column: 32, scope: !2855)
!2863 = !DILocation(line: 820, column: 37, scope: !2855)
!2864 = !DILocation(line: 820, column: 46, scope: !2855)
!2865 = !DILocation(line: 820, column: 13, scope: !2855)
!2866 = !DILocation(line: 820, column: 11, scope: !2855)
!2867 = !DILocation(line: 821, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2855, file: !109, line: 821, column: 7)
!2869 = !DILocation(line: 821, column: 15, scope: !2868)
!2870 = !DILocation(line: 821, column: 7, scope: !2855)
!2871 = !DILocation(line: 822, column: 30, scope: !2868)
!2872 = !DILocation(line: 822, column: 35, scope: !2868)
!2873 = !DILocation(line: 822, column: 44, scope: !2868)
!2874 = !DILocation(line: 822, column: 4, scope: !2868)
!2875 = !DILocation(line: 823, column: 2, scope: !2855)
!2876 = !DILocation(line: 816, column: 41, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2851, file: !109, discriminator: 2)
!2878 = !DILocation(line: 816, column: 39, scope: !2877)
!2879 = !DILocation(line: 816, column: 2, scope: !2877)
!2880 = distinct !{!2880, !2881}
!2881 = !DILocation(line: 816, column: 2, scope: !2818)
!2882 = !DILocation(line: 824, column: 1, scope: !2818)
!2883 = distinct !DISubprogram(name: "command_module_unbind_all", scope: !109, file: !109, line: 791, type: !1068, isLocal: true, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2884 = !DILocalVariable(name: "rec", arg: 1, scope: !2883, file: !109, line: 791, type: !76)
!2885 = !DILocation(line: 791, column: 52, scope: !2883)
!2886 = !DILocalVariable(name: "modrec", arg: 2, scope: !2883, file: !109, line: 792, type: !514)
!2887 = !DILocation(line: 792, column: 31, scope: !2883)
!2888 = !DILocalVariable(name: "tmp", scope: !2883, file: !109, line: 794, type: !81)
!2889 = !DILocation(line: 794, column: 10, scope: !2883)
!2890 = !DILocalVariable(name: "next", scope: !2883, file: !109, line: 794, type: !81)
!2891 = !DILocation(line: 794, column: 16, scope: !2883)
!2892 = !DILocation(line: 796, column: 13, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2883, file: !109, line: 796, column: 2)
!2894 = !DILocation(line: 796, column: 21, scope: !2893)
!2895 = !DILocation(line: 796, column: 11, scope: !2893)
!2896 = !DILocation(line: 796, column: 7, scope: !2893)
!2897 = !DILocation(line: 796, column: 32, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2899, file: !109, discriminator: 1)
!2899 = distinct !DILexicalBlock(scope: !2893, file: !109, line: 796, column: 2)
!2900 = !DILocation(line: 796, column: 36, scope: !2898)
!2901 = !DILocation(line: 796, column: 2, scope: !2898)
!2902 = !DILocalVariable(name: "cb", scope: !2903, file: !109, line: 797, type: !94)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !109, line: 796, column: 56)
!2904 = !DILocation(line: 797, column: 25, scope: !2903)
!2905 = !DILocation(line: 797, column: 30, scope: !2903)
!2906 = !DILocation(line: 797, column: 35, scope: !2903)
!2907 = !DILocation(line: 798, column: 10, scope: !2903)
!2908 = !DILocation(line: 798, column: 15, scope: !2903)
!2909 = !DILocation(line: 798, column: 8, scope: !2903)
!2910 = !DILocation(line: 800, column: 23, scope: !2903)
!2911 = !DILocation(line: 800, column: 28, scope: !2903)
!2912 = !DILocation(line: 800, column: 33, scope: !2903)
!2913 = !DILocation(line: 800, column: 37, scope: !2903)
!2914 = !DILocation(line: 800, column: 43, scope: !2903)
!2915 = !DILocation(line: 800, column: 47, scope: !2903)
!2916 = !DILocation(line: 800, column: 3, scope: !2903)
!2917 = !DILocation(line: 801, column: 2, scope: !2903)
!2918 = !DILocation(line: 796, column: 50, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2899, file: !109, discriminator: 2)
!2920 = !DILocation(line: 796, column: 48, scope: !2919)
!2921 = !DILocation(line: 796, column: 2, scope: !2919)
!2922 = distinct !{!2922, !2923}
!2923 = !DILocation(line: 796, column: 2, scope: !2883)
!2924 = !DILocation(line: 803, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2883, file: !109, line: 803, column: 6)
!2926 = !DILocation(line: 803, column: 29, scope: !2925)
!2927 = !DILocation(line: 803, column: 6, scope: !2925)
!2928 = !DILocation(line: 803, column: 34, scope: !2925)
!2929 = !DILocation(line: 803, column: 6, scope: !2883)
!2930 = !DILocation(line: 806, column: 26, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2925, file: !109, line: 803, column: 42)
!2932 = !DILocation(line: 806, column: 3, scope: !2931)
!2933 = !DILocation(line: 807, column: 2, scope: !2931)
!2934 = !DILocation(line: 808, column: 1, scope: !2883)
!2935 = distinct !DISubprogram(name: "commands_init", scope: !109, file: !109, line: 985, type: !285, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2936 = !DILocation(line: 987, column: 11, scope: !2935)
!2937 = !DILocation(line: 988, column: 18, scope: !2935)
!2938 = !DILocation(line: 989, column: 17, scope: !2935)
!2939 = !DILocation(line: 991, column: 27, scope: !2935)
!2940 = !DILocation(line: 991, column: 25, scope: !2935)
!2941 = !DILocation(line: 993, column: 2, scope: !2935)
!2942 = !DILocation(line: 994, column: 2, scope: !2935)
!2943 = !DILocation(line: 996, column: 2, scope: !2935)
!2944 = !DILocation(line: 997, column: 2, scope: !2935)
!2945 = !DILocation(line: 998, column: 1, scope: !2935)
!2946 = distinct !DISubprogram(name: "event_command", scope: !109, file: !109, line: 922, type: !2947, isLocal: true, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !74, !131, !69}
!2949 = !DILocalVariable(name: "line", arg: 1, scope: !2946, file: !109, line: 922, type: !74)
!2950 = !DILocation(line: 922, column: 39, scope: !2946)
!2951 = !DILocalVariable(name: "server", arg: 2, scope: !2946, file: !109, line: 922, type: !131)
!2952 = !DILocation(line: 922, column: 57, scope: !2946)
!2953 = !DILocalVariable(name: "item", arg: 3, scope: !2946, file: !109, line: 922, type: !69)
!2954 = !DILocation(line: 922, column: 71, scope: !2946)
!2955 = !DILocalVariable(name: "cmdchar", scope: !2946, file: !109, line: 924, type: !90)
!2956 = !DILocation(line: 924, column: 8, scope: !2946)
!2957 = !DILocalVariable(name: "expand_aliases", scope: !2946, file: !109, line: 925, type: !126)
!2958 = !DILocation(line: 925, column: 6, scope: !2946)
!2959 = !DILocation(line: 927, column: 2, scope: !2946)
!2960 = distinct !{!2960, !2959}
!2961 = !DILocation(line: 927, column: 10, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !109, discriminator: 1)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !109, line: 927, column: 10)
!2964 = distinct !DILexicalBlock(scope: !2946, file: !109, line: 927, column: 4)
!2965 = !DILocation(line: 927, column: 15, scope: !2962)
!2966 = !DILocation(line: 927, column: 5, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !109, discriminator: 2)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !109, line: 927, column: 3)
!2969 = !DILocation(line: 927, column: 14, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2971, file: !109, discriminator: 3)
!2971 = distinct !DILexicalBlock(scope: !2963, file: !109, line: 927, column: 12)
!2972 = !DILocation(line: 927, column: 99, scope: !2970)
!2973 = !DILocation(line: 927, column: 110, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2964, file: !109, discriminator: 4)
!2975 = !DILocation(line: 929, column: 13, scope: !2946)
!2976 = !DILocation(line: 929, column: 12, scope: !2946)
!2977 = !DILocation(line: 929, column: 18, scope: !2946)
!2978 = !DILocation(line: 929, column: 12, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2946, file: !109, discriminator: 1)
!2980 = !DILocation(line: 930, column: 10, scope: !2946)
!2981 = !DILocation(line: 930, column: 41, scope: !2946)
!2982 = !DILocation(line: 930, column: 40, scope: !2946)
!2983 = !DILocation(line: 930, column: 3, scope: !2979)
!2984 = !DILocation(line: 929, column: 12, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2946, file: !109, discriminator: 2)
!2986 = !DILocation(line: 929, column: 12, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2946, file: !109, discriminator: 3)
!2988 = !DILocation(line: 929, column: 10, scope: !2987)
!2989 = !DILocation(line: 931, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2946, file: !109, line: 931, column: 6)
!2991 = !DILocation(line: 931, column: 14, scope: !2990)
!2992 = !DILocation(line: 931, column: 21, scope: !2990)
!2993 = !DILocation(line: 931, column: 24, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2990, file: !109, discriminator: 1)
!2995 = !DILocation(line: 931, column: 32, scope: !2994)
!2996 = !DILocation(line: 931, column: 6, scope: !2994)
!2997 = !DILocation(line: 933, column: 8, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2990, file: !109, line: 931, column: 40)
!2999 = !DILocation(line: 934, column: 11, scope: !2998)
!3000 = !DILocation(line: 935, column: 2, scope: !2998)
!3001 = !DILocation(line: 936, column: 6, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2946, file: !109, line: 936, column: 6)
!3003 = !DILocation(line: 936, column: 14, scope: !3002)
!3004 = !DILocation(line: 936, column: 6, scope: !2946)
!3005 = !DILocation(line: 938, column: 31, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !109, line: 936, column: 22)
!3007 = !DILocation(line: 938, column: 37, scope: !3006)
!3008 = !DILocation(line: 938, column: 45, scope: !3006)
!3009 = !DILocation(line: 938, column: 3, scope: !3006)
!3010 = !DILocation(line: 939, column: 3, scope: !3006)
!3011 = !DILocation(line: 943, column: 6, scope: !2946)
!3012 = !DILocation(line: 944, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2946, file: !109, line: 944, column: 6)
!3014 = !DILocation(line: 944, column: 6, scope: !3013)
!3015 = !DILocation(line: 944, column: 16, scope: !3013)
!3016 = !DILocation(line: 944, column: 15, scope: !3013)
!3017 = !DILocation(line: 944, column: 12, scope: !3013)
!3018 = !DILocation(line: 944, column: 6, scope: !2946)
!3019 = !DILocation(line: 945, column: 7, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3013, file: !109, line: 944, column: 25)
!3021 = !DILocation(line: 946, column: 18, scope: !3020)
!3022 = !DILocation(line: 947, column: 2, scope: !3020)
!3023 = !DILocation(line: 951, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2946, file: !109, line: 951, column: 6)
!3025 = !DILocation(line: 951, column: 6, scope: !3024)
!3026 = !DILocation(line: 951, column: 12, scope: !3024)
!3027 = !DILocation(line: 951, column: 6, scope: !2946)
!3028 = !DILocation(line: 951, column: 24, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3024, file: !109, discriminator: 1)
!3030 = !DILocation(line: 951, column: 20, scope: !3029)
!3031 = !DILocation(line: 953, column: 16, scope: !2946)
!3032 = !DILocation(line: 953, column: 22, scope: !2946)
!3033 = !DILocation(line: 953, column: 38, scope: !2946)
!3034 = !DILocation(line: 953, column: 46, scope: !2946)
!3035 = !DILocation(line: 953, column: 2, scope: !2946)
!3036 = !DILocation(line: 954, column: 1, scope: !2946)
!3037 = !DILocation(line: 954, column: 1, scope: !2979)
!3038 = distinct !DISubprogram(name: "cmd_eval", scope: !109, file: !109, line: 958, type: !2947, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3039 = !DILocalVariable(name: "data", arg: 1, scope: !3038, file: !109, line: 958, type: !74)
!3040 = !DILocation(line: 958, column: 34, scope: !3038)
!3041 = !DILocalVariable(name: "server", arg: 2, scope: !3038, file: !109, line: 958, type: !131)
!3042 = !DILocation(line: 958, column: 52, scope: !3038)
!3043 = !DILocalVariable(name: "item", arg: 3, scope: !3038, file: !109, line: 958, type: !69)
!3044 = !DILocation(line: 958, column: 66, scope: !3038)
!3045 = !DILocation(line: 960, column: 2, scope: !3038)
!3046 = distinct !{!3046, !3045}
!3047 = !DILocation(line: 960, column: 10, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3049, file: !109, discriminator: 1)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !109, line: 960, column: 10)
!3050 = distinct !DILexicalBlock(scope: !3038, file: !109, line: 960, column: 4)
!3051 = !DILocation(line: 960, column: 15, scope: !3048)
!3052 = !DILocation(line: 960, column: 5, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3054, file: !109, discriminator: 2)
!3054 = distinct !DILexicalBlock(scope: !3049, file: !109, line: 960, column: 3)
!3055 = !DILocation(line: 960, column: 14, scope: !3056)
!3056 = !DILexicalBlockFile(scope: !3057, file: !109, discriminator: 3)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !109, line: 960, column: 12)
!3058 = !DILocation(line: 960, column: 99, scope: !3056)
!3059 = !DILocation(line: 960, column: 110, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3050, file: !109, discriminator: 4)
!3061 = !DILocation(line: 961, column: 6, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3038, file: !109, line: 961, column: 6)
!3063 = !DILocation(line: 961, column: 27, scope: !3062)
!3064 = !DILocation(line: 961, column: 6, scope: !3038)
!3065 = !DILocation(line: 962, column: 3, scope: !3062)
!3066 = distinct !{!3066, !3065}
!3067 = !DILocation(line: 962, column: 8, scope: !3068)
!3068 = !DILexicalBlockFile(scope: !3069, file: !109, discriminator: 1)
!3069 = distinct !DILexicalBlock(scope: !3062, file: !109, line: 962, column: 6)
!3070 = !DILocation(line: 962, column: 89, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3068, file: !109, discriminator: 3)
!3072 = !DILocation(line: 962, column: 104, scope: !3068)
!3073 = !DILocation(line: 962, column: 112, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3069, file: !109, discriminator: 2)
!3075 = !DILocation(line: 965, column: 22, scope: !3038)
!3076 = !DILocation(line: 966, column: 22, scope: !3038)
!3077 = !DILocation(line: 966, column: 32, scope: !3038)
!3078 = !DILocation(line: 966, column: 40, scope: !3038)
!3079 = !DILocation(line: 966, column: 2, scope: !3038)
!3080 = !DILocation(line: 967, column: 22, scope: !3038)
!3081 = !DILocation(line: 968, column: 1, scope: !3038)
!3082 = !DILocation(line: 968, column: 1, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3038, file: !109, discriminator: 1)
!3084 = distinct !DISubprogram(name: "cmd_cd", scope: !109, file: !109, line: 971, type: !2819, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3085 = !DILocalVariable(name: "data", arg: 1, scope: !3084, file: !109, line: 971, type: !74)
!3086 = !DILocation(line: 971, column: 32, scope: !3084)
!3087 = !DILocalVariable(name: "str", scope: !3084, file: !109, line: 973, type: !90)
!3088 = !DILocation(line: 973, column: 8, scope: !3084)
!3089 = !DILocation(line: 975, column: 2, scope: !3084)
!3090 = distinct !{!3090, !3089}
!3091 = !DILocation(line: 975, column: 10, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3093, file: !109, discriminator: 1)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !109, line: 975, column: 10)
!3094 = distinct !DILexicalBlock(scope: !3084, file: !109, line: 975, column: 4)
!3095 = !DILocation(line: 975, column: 15, scope: !3092)
!3096 = !DILocation(line: 975, column: 5, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3098, file: !109, discriminator: 2)
!3098 = distinct !DILexicalBlock(scope: !3093, file: !109, line: 975, column: 3)
!3099 = !DILocation(line: 975, column: 14, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3101, file: !109, discriminator: 3)
!3101 = distinct !DILexicalBlock(scope: !3093, file: !109, line: 975, column: 12)
!3102 = !DILocation(line: 975, column: 99, scope: !3100)
!3103 = !DILocation(line: 975, column: 110, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3094, file: !109, discriminator: 4)
!3105 = !DILocation(line: 976, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3084, file: !109, line: 976, column: 6)
!3107 = !DILocation(line: 976, column: 6, scope: !3106)
!3108 = !DILocation(line: 976, column: 12, scope: !3106)
!3109 = !DILocation(line: 976, column: 6, scope: !3084)
!3110 = !DILocation(line: 976, column: 21, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3106, file: !109, discriminator: 1)
!3112 = !DILocation(line: 978, column: 21, scope: !3084)
!3113 = !DILocation(line: 978, column: 8, scope: !3084)
!3114 = !DILocation(line: 978, column: 6, scope: !3084)
!3115 = !DILocation(line: 979, column: 12, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3084, file: !109, line: 979, column: 6)
!3117 = !DILocation(line: 979, column: 6, scope: !3116)
!3118 = !DILocation(line: 979, column: 17, scope: !3116)
!3119 = !DILocation(line: 979, column: 6, scope: !3084)
!3120 = !DILocation(line: 980, column: 4, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3116, file: !109, line: 979, column: 23)
!3122 = !DILocation(line: 980, column: 3, scope: !3121)
!3123 = !DILocation(line: 980, column: 70, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3121, file: !109, discriminator: 1)
!3125 = !DILocation(line: 980, column: 3, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3121, file: !109, discriminator: 2)
!3127 = !DILocation(line: 981, column: 2, scope: !3121)
!3128 = !DILocation(line: 982, column: 9, scope: !3084)
!3129 = !DILocation(line: 982, column: 2, scope: !3084)
!3130 = !DILocation(line: 983, column: 1, scope: !3084)
!3131 = !DILocation(line: 983, column: 1, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3084, file: !109, discriminator: 1)
!3133 = distinct !DISubprogram(name: "commands_deinit", scope: !109, file: !109, line: 1000, type: !285, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3134 = !DILocation(line: 1002, column: 9, scope: !3133)
!3135 = !DILocation(line: 1002, column: 2, scope: !3133)
!3136 = !DILocation(line: 1004, column: 2, scope: !3133)
!3137 = !DILocation(line: 1006, column: 2, scope: !3133)
!3138 = !DILocation(line: 1007, column: 2, scope: !3133)
!3139 = !DILocation(line: 1008, column: 1, scope: !3133)
!3140 = distinct !DISubprogram(name: "command_module_find", scope: !109, file: !109, line: 57, type: !3141, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!514, !76, !74}
!3143 = !DILocalVariable(name: "rec", arg: 1, scope: !3140, file: !109, line: 57, type: !76)
!3144 = !DILocation(line: 57, column: 61, scope: !3140)
!3145 = !DILocalVariable(name: "module", arg: 2, scope: !3140, file: !109, line: 58, type: !74)
!3146 = !DILocation(line: 58, column: 25, scope: !3140)
!3147 = !DILocalVariable(name: "tmp", scope: !3140, file: !109, line: 60, type: !81)
!3148 = !DILocation(line: 60, column: 10, scope: !3140)
!3149 = !DILocation(line: 62, column: 2, scope: !3140)
!3150 = distinct !{!3150, !3149}
!3151 = !DILocation(line: 62, column: 10, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3153, file: !109, discriminator: 1)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !109, line: 62, column: 10)
!3154 = distinct !DILexicalBlock(scope: !3140, file: !109, line: 62, column: 4)
!3155 = !DILocation(line: 62, column: 14, scope: !3152)
!3156 = !DILocation(line: 62, column: 5, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3158, file: !109, discriminator: 2)
!3158 = distinct !DILexicalBlock(scope: !3153, file: !109, line: 62, column: 3)
!3159 = !DILocation(line: 62, column: 14, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3161, file: !109, discriminator: 3)
!3161 = distinct !DILexicalBlock(scope: !3153, file: !109, line: 62, column: 12)
!3162 = !DILocation(line: 62, column: 98, scope: !3160)
!3163 = !DILocation(line: 62, column: 7, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3154, file: !109, discriminator: 4)
!3165 = !DILocation(line: 63, column: 2, scope: !3140)
!3166 = distinct !{!3166, !3165}
!3167 = !DILocation(line: 63, column: 10, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3169, file: !109, discriminator: 1)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !109, line: 63, column: 10)
!3170 = distinct !DILexicalBlock(scope: !3140, file: !109, line: 63, column: 4)
!3171 = !DILocation(line: 63, column: 17, scope: !3168)
!3172 = !DILocation(line: 63, column: 5, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3174, file: !109, discriminator: 2)
!3174 = distinct !DILexicalBlock(scope: !3169, file: !109, line: 63, column: 3)
!3175 = !DILocation(line: 63, column: 14, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3177, file: !109, discriminator: 3)
!3177 = distinct !DILexicalBlock(scope: !3169, file: !109, line: 63, column: 12)
!3178 = !DILocation(line: 63, column: 101, scope: !3176)
!3179 = !DILocation(line: 63, column: 7, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3170, file: !109, discriminator: 4)
!3181 = !DILocation(line: 65, column: 13, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3140, file: !109, line: 65, column: 2)
!3183 = !DILocation(line: 65, column: 18, scope: !3182)
!3184 = !DILocation(line: 65, column: 11, scope: !3182)
!3185 = !DILocation(line: 65, column: 7, scope: !3182)
!3186 = !DILocation(line: 65, column: 27, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3188, file: !109, discriminator: 1)
!3188 = distinct !DILexicalBlock(scope: !3182, file: !109, line: 65, column: 2)
!3189 = !DILocation(line: 65, column: 31, scope: !3187)
!3190 = !DILocation(line: 65, column: 2, scope: !3187)
!3191 = !DILocalVariable(name: "rec", scope: !3192, file: !109, line: 66, type: !514)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !109, line: 65, column: 56)
!3193 = !DILocation(line: 66, column: 23, scope: !3192)
!3194 = !DILocation(line: 66, column: 29, scope: !3192)
!3195 = !DILocation(line: 66, column: 34, scope: !3192)
!3196 = !DILocation(line: 68, column: 26, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3192, file: !109, line: 68, column: 7)
!3198 = !DILocation(line: 68, column: 31, scope: !3197)
!3199 = !DILocation(line: 68, column: 37, scope: !3197)
!3200 = !DILocation(line: 68, column: 7, scope: !3197)
!3201 = !DILocation(line: 68, column: 45, scope: !3197)
!3202 = !DILocation(line: 68, column: 7, scope: !3192)
!3203 = !DILocation(line: 69, column: 11, scope: !3197)
!3204 = !DILocation(line: 69, column: 4, scope: !3197)
!3205 = !DILocation(line: 70, column: 2, scope: !3192)
!3206 = !DILocation(line: 65, column: 45, scope: !3207)
!3207 = !DILexicalBlockFile(scope: !3188, file: !109, discriminator: 2)
!3208 = !DILocation(line: 65, column: 50, scope: !3207)
!3209 = !DILocation(line: 65, column: 43, scope: !3207)
!3210 = !DILocation(line: 65, column: 2, scope: !3207)
!3211 = distinct !{!3211, !3212}
!3212 = !DILocation(line: 65, column: 2, scope: !3140)
!3213 = !DILocation(line: 72, column: 2, scope: !3140)
!3214 = !DILocation(line: 73, column: 1, scope: !3140)
!3215 = distinct !DISubprogram(name: "command_module_free", scope: !109, file: !109, line: 188, type: !3216, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !514, !76}
!3218 = !DILocalVariable(name: "modrec", arg: 1, scope: !3215, file: !109, line: 188, type: !514)
!3219 = !DILocation(line: 188, column: 53, scope: !3215)
!3220 = !DILocalVariable(name: "rec", arg: 2, scope: !3215, file: !109, line: 188, type: !76)
!3221 = !DILocation(line: 188, column: 74, scope: !3215)
!3222 = !DILocation(line: 190, column: 32, scope: !3215)
!3223 = !DILocation(line: 190, column: 37, scope: !3215)
!3224 = !DILocation(line: 190, column: 46, scope: !3215)
!3225 = !DILocation(line: 190, column: 17, scope: !3215)
!3226 = !DILocation(line: 190, column: 2, scope: !3215)
!3227 = !DILocation(line: 190, column: 7, scope: !3215)
!3228 = !DILocation(line: 190, column: 15, scope: !3215)
!3229 = !DILocation(line: 192, column: 18, scope: !3215)
!3230 = !DILocation(line: 192, column: 26, scope: !3215)
!3231 = !DILocation(line: 192, column: 2, scope: !3215)
!3232 = !DILocation(line: 193, column: 15, scope: !3215)
!3233 = !DILocation(line: 193, column: 23, scope: !3215)
!3234 = !DILocation(line: 193, column: 2, scope: !3215)
!3235 = !DILocation(line: 194, column: 16, scope: !3215)
!3236 = !DILocation(line: 194, column: 24, scope: !3215)
!3237 = !DILocation(line: 194, column: 9, scope: !3215)
!3238 = !DILocation(line: 195, column: 16, scope: !3215)
!3239 = !DILocation(line: 195, column: 24, scope: !3215)
!3240 = !DILocation(line: 195, column: 9, scope: !3215)
!3241 = !DILocation(line: 196, column: 16, scope: !3215)
!3242 = !DILocation(line: 196, column: 9, scope: !3215)
!3243 = !DILocation(line: 197, column: 1, scope: !3215)
!3244 = distinct !DISubprogram(name: "command_free", scope: !109, file: !109, line: 177, type: !1629, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3245 = !DILocalVariable(name: "rec", arg: 1, scope: !3244, file: !109, line: 177, type: !76)
!3246 = !DILocation(line: 177, column: 39, scope: !3244)
!3247 = !DILocation(line: 179, column: 28, scope: !3244)
!3248 = !DILocation(line: 179, column: 38, scope: !3244)
!3249 = !DILocation(line: 179, column: 13, scope: !3244)
!3250 = !DILocation(line: 179, column: 11, scope: !3244)
!3251 = !DILocation(line: 180, column: 39, scope: !3244)
!3252 = !DILocation(line: 180, column: 2, scope: !3244)
!3253 = !DILocation(line: 182, column: 9, scope: !3244)
!3254 = !DILocation(line: 182, column: 14, scope: !3244)
!3255 = !DILocation(line: 182, column: 2, scope: !3244)
!3256 = !DILocation(line: 183, column: 13, scope: !3244)
!3257 = !DILocation(line: 183, column: 18, scope: !3244)
!3258 = !DILocation(line: 183, column: 2, scope: !3244)
!3259 = !DILocation(line: 184, column: 9, scope: !3244)
!3260 = !DILocation(line: 184, column: 14, scope: !3244)
!3261 = !DILocation(line: 184, column: 2, scope: !3244)
!3262 = !DILocation(line: 185, column: 9, scope: !3244)
!3263 = !DILocation(line: 185, column: 2, scope: !3244)
!3264 = !DILocation(line: 186, column: 1, scope: !3244)
!3265 = distinct !DISubprogram(name: "optlist_find", scope: !109, file: !109, line: 342, type: !3266, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!81, !81, !74}
!3268 = !DILocalVariable(name: "optlist", arg: 1, scope: !3265, file: !109, line: 342, type: !81)
!3269 = !DILocation(line: 342, column: 37, scope: !3265)
!3270 = !DILocalVariable(name: "option", arg: 2, scope: !3265, file: !109, line: 342, type: !74)
!3271 = !DILocation(line: 342, column: 58, scope: !3265)
!3272 = !DILocation(line: 344, column: 2, scope: !3265)
!3273 = !DILocation(line: 344, column: 9, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3265, file: !109, discriminator: 1)
!3275 = !DILocation(line: 344, column: 17, scope: !3274)
!3276 = !DILocation(line: 344, column: 2, scope: !3274)
!3277 = !DILocalVariable(name: "name", scope: !3278, file: !109, line: 345, type: !90)
!3278 = distinct !DILexicalBlock(scope: !3265, file: !109, line: 344, column: 25)
!3279 = !DILocation(line: 345, column: 9, scope: !3278)
!3280 = !DILocation(line: 345, column: 16, scope: !3278)
!3281 = !DILocation(line: 345, column: 25, scope: !3278)
!3282 = !DILocation(line: 346, column: 10, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !109, line: 346, column: 7)
!3284 = !DILocation(line: 346, column: 9, scope: !3283)
!3285 = !DILocation(line: 346, column: 8, scope: !3283)
!3286 = !DILocation(line: 346, column: 16, scope: !3283)
!3287 = !DILocation(line: 346, column: 23, scope: !3283)
!3288 = !DILocation(line: 346, column: 28, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3283, file: !109, discriminator: 1)
!3290 = !DILocation(line: 346, column: 27, scope: !3289)
!3291 = !DILocation(line: 346, column: 26, scope: !3289)
!3292 = !DILocation(line: 346, column: 34, scope: !3289)
!3293 = !DILocation(line: 346, column: 41, scope: !3289)
!3294 = !DILocation(line: 346, column: 46, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3283, file: !109, discriminator: 2)
!3296 = !DILocation(line: 346, column: 45, scope: !3295)
!3297 = !DILocation(line: 346, column: 44, scope: !3295)
!3298 = !DILocation(line: 346, column: 52, scope: !3295)
!3299 = !DILocation(line: 346, column: 59, scope: !3295)
!3300 = !DILocation(line: 346, column: 64, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3283, file: !109, discriminator: 3)
!3302 = !DILocation(line: 346, column: 63, scope: !3301)
!3303 = !DILocation(line: 346, column: 62, scope: !3301)
!3304 = !DILocation(line: 346, column: 70, scope: !3301)
!3305 = !DILocation(line: 346, column: 7, scope: !3301)
!3306 = !DILocation(line: 346, column: 83, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3283, file: !109, discriminator: 4)
!3308 = !DILocation(line: 346, column: 79, scope: !3307)
!3309 = !DILocation(line: 348, column: 26, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3278, file: !109, line: 348, column: 7)
!3311 = !DILocation(line: 348, column: 32, scope: !3310)
!3312 = !DILocation(line: 348, column: 7, scope: !3310)
!3313 = !DILocation(line: 348, column: 40, scope: !3310)
!3314 = !DILocation(line: 348, column: 7, scope: !3278)
!3315 = !DILocation(line: 349, column: 11, scope: !3310)
!3316 = !DILocation(line: 349, column: 4, scope: !3310)
!3317 = !DILocation(line: 351, column: 13, scope: !3278)
!3318 = !DILocation(line: 351, column: 22, scope: !3278)
!3319 = !DILocation(line: 351, column: 11, scope: !3278)
!3320 = !DILocation(line: 344, column: 2, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3265, file: !109, discriminator: 2)
!3322 = distinct !{!3322, !3272}
!3323 = !DILocation(line: 354, column: 2, scope: !3265)
!3324 = !DILocation(line: 355, column: 1, scope: !3265)
!3325 = distinct !DISubprogram(name: "option_find", scope: !109, file: !109, line: 520, type: !3326, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!126, !93, !74}
!3328 = !DILocalVariable(name: "array", arg: 1, scope: !3325, file: !109, line: 520, type: !93)
!3329 = !DILocation(line: 520, column: 31, scope: !3325)
!3330 = !DILocalVariable(name: "option", arg: 2, scope: !3325, file: !109, line: 520, type: !74)
!3331 = !DILocation(line: 520, column: 50, scope: !3325)
!3332 = !DILocalVariable(name: "tmp", scope: !3325, file: !109, line: 522, type: !93)
!3333 = !DILocation(line: 522, column: 9, scope: !3325)
!3334 = !DILocalVariable(name: "index", scope: !3325, file: !109, line: 523, type: !126)
!3335 = !DILocation(line: 523, column: 6, scope: !3325)
!3336 = !DILocalVariable(name: "found", scope: !3325, file: !109, line: 523, type: !126)
!3337 = !DILocation(line: 523, column: 13, scope: !3325)
!3338 = !DILocalVariable(name: "len", scope: !3325, file: !109, line: 523, type: !126)
!3339 = !DILocation(line: 523, column: 20, scope: !3325)
!3340 = !DILocalVariable(name: "multiple", scope: !3325, file: !109, line: 523, type: !126)
!3341 = !DILocation(line: 523, column: 25, scope: !3325)
!3342 = !DILocation(line: 525, column: 2, scope: !3325)
!3343 = distinct !{!3343, !3342}
!3344 = !DILocation(line: 525, column: 10, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3346, file: !109, discriminator: 1)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !109, line: 525, column: 10)
!3347 = distinct !DILexicalBlock(scope: !3325, file: !109, line: 525, column: 4)
!3348 = !DILocation(line: 525, column: 16, scope: !3345)
!3349 = !DILocation(line: 525, column: 5, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3351, file: !109, discriminator: 2)
!3351 = distinct !DILexicalBlock(scope: !3346, file: !109, line: 525, column: 3)
!3352 = !DILocation(line: 525, column: 14, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !3354, file: !109, discriminator: 3)
!3354 = distinct !DILexicalBlock(scope: !3346, file: !109, line: 525, column: 12)
!3355 = !DILocation(line: 525, column: 100, scope: !3353)
!3356 = !DILocation(line: 525, column: 116, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3347, file: !109, discriminator: 4)
!3358 = !DILocation(line: 526, column: 2, scope: !3325)
!3359 = distinct !{!3359, !3358}
!3360 = !DILocation(line: 526, column: 10, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !3362, file: !109, discriminator: 1)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !109, line: 526, column: 10)
!3363 = distinct !DILexicalBlock(scope: !3325, file: !109, line: 526, column: 4)
!3364 = !DILocation(line: 526, column: 17, scope: !3361)
!3365 = !DILocation(line: 526, column: 5, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3367, file: !109, discriminator: 2)
!3367 = distinct !DILexicalBlock(scope: !3362, file: !109, line: 526, column: 3)
!3368 = !DILocation(line: 526, column: 14, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3370, file: !109, discriminator: 3)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !109, line: 526, column: 12)
!3371 = !DILocation(line: 526, column: 101, scope: !3369)
!3372 = !DILocation(line: 526, column: 117, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3363, file: !109, discriminator: 4)
!3374 = !DILocation(line: 528, column: 15, scope: !3325)
!3375 = !DILocation(line: 528, column: 8, scope: !3325)
!3376 = !DILocation(line: 528, column: 6, scope: !3325)
!3377 = !DILocation(line: 530, column: 8, scope: !3325)
!3378 = !DILocation(line: 530, column: 20, scope: !3325)
!3379 = !DILocation(line: 530, column: 34, scope: !3325)
!3380 = !DILocation(line: 531, column: 13, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3325, file: !109, line: 531, column: 2)
!3382 = !DILocation(line: 531, column: 11, scope: !3381)
!3383 = !DILocation(line: 531, column: 7, scope: !3381)
!3384 = !DILocation(line: 531, column: 21, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !3386, file: !109, discriminator: 1)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !109, line: 531, column: 2)
!3387 = !DILocation(line: 531, column: 20, scope: !3385)
!3388 = !DILocation(line: 531, column: 25, scope: !3385)
!3389 = !DILocation(line: 531, column: 2, scope: !3385)
!3390 = !DILocalVariable(name: "text", scope: !3391, file: !109, line: 532, type: !74)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !109, line: 531, column: 49)
!3392 = !DILocation(line: 532, column: 15, scope: !3391)
!3393 = !DILocation(line: 532, column: 23, scope: !3391)
!3394 = !DILocation(line: 532, column: 22, scope: !3391)
!3395 = !DILocation(line: 532, column: 33, scope: !3391)
!3396 = !DILocation(line: 532, column: 32, scope: !3391)
!3397 = !DILocation(line: 532, column: 31, scope: !3391)
!3398 = !DILocation(line: 532, column: 30, scope: !3391)
!3399 = !DILocation(line: 532, column: 38, scope: !3391)
!3400 = !DILocation(line: 532, column: 45, scope: !3391)
!3401 = !DILocation(line: 532, column: 51, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3391, file: !109, discriminator: 1)
!3403 = !DILocation(line: 532, column: 50, scope: !3402)
!3404 = !DILocation(line: 532, column: 49, scope: !3402)
!3405 = !DILocation(line: 532, column: 48, scope: !3402)
!3406 = !DILocation(line: 532, column: 56, scope: !3402)
!3407 = !DILocation(line: 532, column: 63, scope: !3402)
!3408 = !DILocation(line: 532, column: 69, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3391, file: !109, discriminator: 2)
!3410 = !DILocation(line: 532, column: 68, scope: !3409)
!3411 = !DILocation(line: 532, column: 67, scope: !3409)
!3412 = !DILocation(line: 532, column: 66, scope: !3409)
!3413 = !DILocation(line: 532, column: 74, scope: !3409)
!3414 = !DILocation(line: 532, column: 81, scope: !3409)
!3415 = !DILocation(line: 532, column: 87, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3391, file: !109, discriminator: 3)
!3417 = !DILocation(line: 532, column: 86, scope: !3416)
!3418 = !DILocation(line: 532, column: 85, scope: !3416)
!3419 = !DILocation(line: 532, column: 84, scope: !3416)
!3420 = !DILocation(line: 532, column: 92, scope: !3416)
!3421 = !DILocation(line: 532, column: 81, scope: !3416)
!3422 = !DILocation(line: 532, column: 81, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3391, file: !109, discriminator: 4)
!3424 = !DILocation(line: 532, column: 27, scope: !3423)
!3425 = !DILocation(line: 532, column: 15, scope: !3423)
!3426 = !DILocation(line: 534, column: 27, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3391, file: !109, line: 534, column: 7)
!3428 = !DILocation(line: 534, column: 33, scope: !3427)
!3429 = !DILocation(line: 534, column: 41, scope: !3427)
!3430 = !DILocation(line: 534, column: 7, scope: !3427)
!3431 = !DILocation(line: 534, column: 46, scope: !3427)
!3432 = !DILocation(line: 534, column: 7, scope: !3391)
!3433 = !DILocation(line: 535, column: 13, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !109, line: 535, column: 8)
!3435 = distinct !DILexicalBlock(scope: !3427, file: !109, line: 534, column: 52)
!3436 = !DILocation(line: 535, column: 8, scope: !3434)
!3437 = !DILocation(line: 535, column: 18, scope: !3434)
!3438 = !DILocation(line: 535, column: 8, scope: !3435)
!3439 = !DILocation(line: 537, column: 12, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3434, file: !109, line: 535, column: 27)
!3441 = !DILocation(line: 537, column: 5, scope: !3440)
!3442 = !DILocation(line: 540, column: 8, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3435, file: !109, line: 540, column: 8)
!3444 = !DILocation(line: 540, column: 14, scope: !3443)
!3445 = !DILocation(line: 540, column: 8, scope: !3435)
!3446 = !DILocation(line: 543, column: 14, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !109, line: 540, column: 21)
!3448 = !DILocation(line: 544, column: 4, scope: !3447)
!3449 = !DILocation(line: 547, column: 12, scope: !3435)
!3450 = !DILocation(line: 547, column: 10, scope: !3435)
!3451 = !DILocation(line: 548, column: 3, scope: !3435)
!3452 = !DILocation(line: 549, column: 2, scope: !3391)
!3453 = !DILocation(line: 531, column: 36, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3386, file: !109, discriminator: 2)
!3455 = !DILocation(line: 531, column: 45, scope: !3454)
!3456 = !DILocation(line: 531, column: 2, scope: !3454)
!3457 = distinct !{!3457, !3458}
!3458 = !DILocation(line: 531, column: 2, scope: !3325)
!3459 = !DILocation(line: 551, column: 6, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3325, file: !109, line: 551, column: 6)
!3461 = !DILocation(line: 551, column: 6, scope: !3325)
!3462 = !DILocation(line: 552, column: 3, scope: !3460)
!3463 = !DILocation(line: 554, column: 9, scope: !3325)
!3464 = !DILocation(line: 554, column: 2, scope: !3325)
!3465 = !DILocation(line: 555, column: 1, scope: !3325)
!3466 = distinct !DISubprogram(name: "parse_command", scope: !109, file: !109, line: 857, type: !3467, isLocal: true, isDefinition: true, scopeLine: 859, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !74, !126, !131, !69}
!3469 = !DILocalVariable(name: "command", arg: 1, scope: !3466, file: !109, line: 857, type: !74)
!3470 = !DILocation(line: 857, column: 39, scope: !3466)
!3471 = !DILocalVariable(name: "expand_aliases", arg: 2, scope: !3466, file: !109, line: 857, type: !126)
!3472 = !DILocation(line: 857, column: 52, scope: !3466)
!3473 = !DILocalVariable(name: "server", arg: 3, scope: !3466, file: !109, line: 858, type: !131)
!3474 = !DILocation(line: 858, column: 18, scope: !3466)
!3475 = !DILocalVariable(name: "item", arg: 4, scope: !3466, file: !109, line: 858, type: !69)
!3476 = !DILocation(line: 858, column: 32, scope: !3466)
!3477 = !DILocalVariable(name: "rec", scope: !3466, file: !109, line: 860, type: !76)
!3478 = !DILocation(line: 860, column: 22, scope: !3466)
!3479 = !DILocalVariable(name: "alias", scope: !3466, file: !109, line: 861, type: !74)
!3480 = !DILocation(line: 861, column: 14, scope: !3466)
!3481 = !DILocalVariable(name: "newcmd", scope: !3466, file: !109, line: 861, type: !74)
!3482 = !DILocation(line: 861, column: 22, scope: !3466)
!3483 = !DILocalVariable(name: "cmd", scope: !3466, file: !109, line: 862, type: !90)
!3484 = !DILocation(line: 862, column: 8, scope: !3466)
!3485 = !DILocalVariable(name: "orig", scope: !3466, file: !109, line: 862, type: !90)
!3486 = !DILocation(line: 862, column: 14, scope: !3466)
!3487 = !DILocalVariable(name: "args", scope: !3466, file: !109, line: 862, type: !90)
!3488 = !DILocation(line: 862, column: 21, scope: !3466)
!3489 = !DILocalVariable(name: "oldcmd", scope: !3466, file: !109, line: 862, type: !90)
!3490 = !DILocation(line: 862, column: 28, scope: !3466)
!3491 = !DILocation(line: 864, column: 2, scope: !3466)
!3492 = distinct !{!3492, !3491}
!3493 = !DILocation(line: 864, column: 10, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3495, file: !109, discriminator: 1)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !109, line: 864, column: 10)
!3496 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 864, column: 4)
!3497 = !DILocation(line: 864, column: 18, scope: !3494)
!3498 = !DILocation(line: 864, column: 5, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3500, file: !109, discriminator: 2)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !109, line: 864, column: 3)
!3501 = !DILocation(line: 864, column: 14, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3503, file: !109, discriminator: 3)
!3503 = distinct !DILexicalBlock(scope: !3495, file: !109, line: 864, column: 12)
!3504 = !DILocation(line: 864, column: 102, scope: !3502)
!3505 = !DILocation(line: 864, column: 113, scope: !3506)
!3506 = !DILexicalBlockFile(scope: !3496, file: !109, discriminator: 4)
!3507 = !DILocation(line: 866, column: 39, scope: !3466)
!3508 = !DILocation(line: 866, column: 15, scope: !3466)
!3509 = !DILocation(line: 866, column: 13, scope: !3466)
!3510 = !DILocation(line: 866, column: 6, scope: !3466)
!3511 = !DILocation(line: 867, column: 16, scope: !3466)
!3512 = !DILocation(line: 867, column: 19, scope: !3466)
!3513 = !DILocation(line: 867, column: 9, scope: !3466)
!3514 = !DILocation(line: 867, column: 7, scope: !3466)
!3515 = !DILocation(line: 868, column: 6, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 868, column: 6)
!3517 = !DILocation(line: 868, column: 11, scope: !3516)
!3518 = !DILocation(line: 868, column: 6, scope: !3466)
!3519 = !DILocation(line: 868, column: 24, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3516, file: !109, discriminator: 1)
!3521 = !DILocation(line: 868, column: 27, scope: !3520)
!3522 = !DILocation(line: 868, column: 19, scope: !3520)
!3523 = !DILocation(line: 868, column: 45, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3516, file: !109, discriminator: 2)
!3525 = !DILocation(line: 872, column: 11, scope: !3466)
!3526 = !DILocation(line: 872, column: 26, scope: !3466)
!3527 = !DILocation(line: 872, column: 55, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3466, file: !109, discriminator: 1)
!3529 = !DILocation(line: 872, column: 71, scope: !3528)
!3530 = !DILocation(line: 872, column: 74, scope: !3528)
!3531 = !DILocation(line: 872, column: 30, scope: !3528)
!3532 = !DILocation(line: 872, column: 78, scope: !3528)
!3533 = !DILocation(line: 872, column: 10, scope: !3528)
!3534 = !DILocation(line: 872, column: 10, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3466, file: !109, discriminator: 2)
!3536 = !DILocation(line: 873, column: 18, scope: !3466)
!3537 = !DILocation(line: 873, column: 41, scope: !3466)
!3538 = !DILocation(line: 873, column: 44, scope: !3466)
!3539 = !DILocation(line: 873, column: 3, scope: !3466)
!3540 = !DILocation(line: 872, column: 10, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3466, file: !109, discriminator: 3)
!3542 = !DILocation(line: 872, column: 10, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3466, file: !109, discriminator: 4)
!3544 = !DILocation(line: 872, column: 8, scope: !3543)
!3545 = !DILocation(line: 874, column: 6, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 874, column: 6)
!3547 = !DILocation(line: 874, column: 12, scope: !3546)
!3548 = !DILocation(line: 874, column: 6, scope: !3466)
!3549 = !DILocation(line: 875, column: 49, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !109, line: 874, column: 20)
!3551 = !DILocation(line: 875, column: 65, scope: !3550)
!3552 = !DILocation(line: 875, column: 68, scope: !3550)
!3553 = !DILocation(line: 875, column: 34, scope: !3550)
!3554 = !DILocation(line: 875, column: 32, scope: !3550)
!3555 = !DILocation(line: 876, column: 23, scope: !3550)
!3556 = !DILocation(line: 876, column: 30, scope: !3550)
!3557 = !DILocation(line: 876, column: 36, scope: !3550)
!3558 = !DILocation(line: 876, column: 44, scope: !3550)
!3559 = !DILocation(line: 876, column: 3, scope: !3550)
!3560 = !DILocation(line: 877, column: 49, scope: !3550)
!3561 = !DILocation(line: 877, column: 65, scope: !3550)
!3562 = !DILocation(line: 877, column: 68, scope: !3550)
!3563 = !DILocation(line: 877, column: 34, scope: !3550)
!3564 = !DILocation(line: 877, column: 32, scope: !3550)
!3565 = !DILocation(line: 878, column: 10, scope: !3550)
!3566 = !DILocation(line: 878, column: 3, scope: !3550)
!3567 = !DILocation(line: 879, column: 3, scope: !3550)
!3568 = !DILocation(line: 883, column: 26, scope: !3466)
!3569 = !DILocation(line: 883, column: 29, scope: !3466)
!3570 = !DILocation(line: 883, column: 11, scope: !3466)
!3571 = !DILocation(line: 883, column: 9, scope: !3466)
!3572 = !DILocation(line: 884, column: 6, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 884, column: 6)
!3574 = !DILocation(line: 884, column: 13, scope: !3573)
!3575 = !DILocation(line: 884, column: 6, scope: !3466)
!3576 = !DILocation(line: 886, column: 10, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !109, line: 884, column: 21)
!3578 = !DILocation(line: 886, column: 3, scope: !3577)
!3579 = !DILocation(line: 887, column: 3, scope: !3577)
!3580 = !DILocation(line: 890, column: 21, scope: !3466)
!3581 = !DILocation(line: 890, column: 8, scope: !3466)
!3582 = !DILocation(line: 890, column: 6, scope: !3466)
!3583 = !DILocation(line: 891, column: 6, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 891, column: 6)
!3585 = !DILocation(line: 891, column: 10, scope: !3584)
!3586 = !DILocation(line: 891, column: 17, scope: !3584)
!3587 = !DILocation(line: 891, column: 40, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3584, file: !109, discriminator: 1)
!3589 = !DILocation(line: 891, column: 45, scope: !3588)
!3590 = !DILocation(line: 891, column: 21, scope: !3588)
!3591 = !DILocation(line: 891, column: 6, scope: !3588)
!3592 = !DILocation(line: 892, column: 10, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3584, file: !109, line: 891, column: 54)
!3594 = !DILocation(line: 892, column: 3, scope: !3593)
!3595 = !DILocation(line: 895, column: 29, scope: !3593)
!3596 = !DILocation(line: 895, column: 36, scope: !3593)
!3597 = !DILocation(line: 895, column: 20, scope: !3593)
!3598 = !DILocation(line: 895, column: 9, scope: !3593)
!3599 = !DILocation(line: 894, column: 3, scope: !3593)
!3600 = !DILocation(line: 898, column: 3, scope: !3593)
!3601 = !DILocation(line: 901, column: 32, scope: !3466)
!3602 = !DILocation(line: 901, column: 8, scope: !3466)
!3603 = !DILocation(line: 901, column: 6, scope: !3466)
!3604 = !DILocation(line: 902, column: 16, scope: !3466)
!3605 = !DILocation(line: 902, column: 2, scope: !3466)
!3606 = !DILocation(line: 904, column: 11, scope: !3466)
!3607 = !DILocation(line: 904, column: 9, scope: !3466)
!3608 = !DILocation(line: 905, column: 20, scope: !3466)
!3609 = !DILocation(line: 905, column: 23, scope: !3466)
!3610 = !DILocation(line: 905, column: 18, scope: !3466)
!3611 = !DILocation(line: 906, column: 13, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 906, column: 13)
!3613 = !DILocation(line: 906, column: 20, scope: !3612)
!3614 = !DILocation(line: 906, column: 13, scope: !3466)
!3615 = !DILocation(line: 906, column: 39, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !3612, file: !109, discriminator: 1)
!3617 = !DILocation(line: 906, column: 28, scope: !3616)
!3618 = !DILocation(line: 907, column: 26, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 907, column: 13)
!3620 = !DILocation(line: 907, column: 34, scope: !3619)
!3621 = !DILocation(line: 907, column: 40, scope: !3619)
!3622 = !DILocation(line: 907, column: 48, scope: !3619)
!3623 = !DILocation(line: 907, column: 14, scope: !3619)
!3624 = !DILocation(line: 907, column: 13, scope: !3466)
!3625 = !DILocation(line: 908, column: 18, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3619, file: !109, line: 907, column: 55)
!3627 = !DILocation(line: 909, column: 11, scope: !3626)
!3628 = !DILocation(line: 909, column: 20, scope: !3626)
!3629 = !DILocation(line: 909, column: 28, scope: !3626)
!3630 = !DILocation(line: 908, column: 3, scope: !3626)
!3631 = !DILocation(line: 910, column: 2, scope: !3626)
!3632 = !DILocation(line: 911, column: 6, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3466, file: !109, line: 911, column: 6)
!3634 = !DILocation(line: 911, column: 13, scope: !3633)
!3635 = !DILocation(line: 911, column: 6, scope: !3466)
!3636 = !DILocation(line: 912, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !109, line: 912, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3633, file: !109, line: 911, column: 21)
!3639 = !DILocation(line: 912, column: 15, scope: !3637)
!3640 = !DILocation(line: 912, column: 7, scope: !3638)
!3641 = !DILocation(line: 913, column: 22, scope: !3637)
!3642 = !DILocation(line: 913, column: 4, scope: !3637)
!3643 = !DILocation(line: 914, column: 16, scope: !3638)
!3644 = !DILocation(line: 914, column: 3, scope: !3638)
!3645 = !DILocation(line: 915, column: 2, scope: !3638)
!3646 = !DILocation(line: 916, column: 20, scope: !3466)
!3647 = !DILocation(line: 916, column: 18, scope: !3466)
!3648 = !DILocation(line: 918, column: 9, scope: !3466)
!3649 = !DILocation(line: 918, column: 2, scope: !3466)
!3650 = !DILocation(line: 919, column: 9, scope: !3466)
!3651 = !DILocation(line: 919, column: 2, scope: !3466)
!3652 = !DILocation(line: 920, column: 1, scope: !3466)
!3653 = !DILocation(line: 920, column: 1, scope: !3528)
!3654 = distinct !DISubprogram(name: "cmd_protocol_match", scope: !109, file: !109, line: 826, type: !3655, isLocal: true, isDefinition: true, scopeLine: 827, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !538)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!126, !76, !131}
!3657 = !DILocalVariable(name: "cmd", arg: 1, scope: !3654, file: !109, line: 826, type: !76)
!3658 = !DILocation(line: 826, column: 44, scope: !3654)
!3659 = !DILocalVariable(name: "server", arg: 2, scope: !3654, file: !109, line: 826, type: !131)
!3660 = !DILocation(line: 826, column: 61, scope: !3654)
!3661 = !DILocalVariable(name: "tmp", scope: !3654, file: !109, line: 828, type: !81)
!3662 = !DILocation(line: 828, column: 10, scope: !3654)
!3663 = !DILocation(line: 830, column: 13, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3654, file: !109, line: 830, column: 2)
!3665 = !DILocation(line: 830, column: 18, scope: !3664)
!3666 = !DILocation(line: 830, column: 11, scope: !3664)
!3667 = !DILocation(line: 830, column: 7, scope: !3664)
!3668 = !DILocation(line: 830, column: 27, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3670, file: !109, discriminator: 1)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !109, line: 830, column: 2)
!3671 = !DILocation(line: 830, column: 31, scope: !3669)
!3672 = !DILocation(line: 830, column: 2, scope: !3669)
!3673 = !DILocalVariable(name: "rec", scope: !3674, file: !109, line: 831, type: !514)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !109, line: 830, column: 56)
!3675 = !DILocation(line: 831, column: 23, scope: !3674)
!3676 = !DILocation(line: 831, column: 29, scope: !3674)
!3677 = !DILocation(line: 831, column: 34, scope: !3674)
!3678 = !DILocation(line: 833, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3674, file: !109, line: 833, column: 7)
!3680 = !DILocation(line: 833, column: 12, scope: !3679)
!3681 = !DILocation(line: 833, column: 21, scope: !3679)
!3682 = !DILocation(line: 833, column: 7, scope: !3674)
!3683 = !DILocation(line: 836, column: 4, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3679, file: !109, line: 833, column: 28)
!3685 = !DILocation(line: 839, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3674, file: !109, line: 839, column: 7)
!3687 = !DILocation(line: 839, column: 14, scope: !3686)
!3688 = !DILocation(line: 839, column: 21, scope: !3686)
!3689 = !DILocation(line: 839, column: 24, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3686, file: !109, discriminator: 1)
!3691 = !DILocation(line: 839, column: 29, scope: !3690)
!3692 = !DILocation(line: 839, column: 41, scope: !3690)
!3693 = !DILocation(line: 839, column: 49, scope: !3690)
!3694 = !DILocation(line: 839, column: 38, scope: !3690)
!3695 = !DILocation(line: 839, column: 7, scope: !3690)
!3696 = !DILocation(line: 841, column: 25, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3686, file: !109, line: 839, column: 60)
!3698 = !DILocation(line: 843, column: 2, scope: !3674)
!3699 = !DILocation(line: 830, column: 45, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3670, file: !109, discriminator: 2)
!3701 = !DILocation(line: 830, column: 50, scope: !3700)
!3702 = !DILocation(line: 830, column: 43, scope: !3700)
!3703 = !DILocation(line: 830, column: 2, scope: !3700)
!3704 = distinct !{!3704, !3705}
!3705 = !DILocation(line: 830, column: 2, scope: !3654)
!3706 = !DILocation(line: 845, column: 9, scope: !3654)
!3707 = !DILocation(line: 846, column: 1, scope: !3654)
