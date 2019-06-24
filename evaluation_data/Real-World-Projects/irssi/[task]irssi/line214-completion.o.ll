; ModuleID = './line214-completion.o.i'
source_filename = "./line214-completion.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.SETTINGS_REC = type { i32, i8*, i8*, i8*, i32, %struct.SettingValue, i8** }
%struct.SettingValue = type { i8*, i32, i8 }
%struct.COMMAND_REC = type { %struct._GSList*, i8*, i8*, i8** }

@__func__.auto_word_complete = private unnamed_addr constant [19 x i8] c"auto_word_complete\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pos != NULL\00", align 1
@word_complete.startpos = internal global i32 0, align 4
@word_complete.wordlen = internal global i32 0, align 4
@__func__.word_complete = private unnamed_addr constant [14 x i8] c"word_complete\00", align 1
@complist = internal global %struct._GList* null, align 8
@last_line_pos = internal global i32 0, align 4
@last_line = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"complete erase\00", align 1
@last_want_space = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"complete word\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"expand_escapes\00", align 1
@__func__.filename_complete = private unnamed_addr constant [18 x i8] c"filename_complete\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"complete command set\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"complete command toggle\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"complete command load\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"complete command cat\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"complete command save\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"complete command reload\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"complete command rawlog open\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"complete command rawlog save\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"complete command help\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"auto delete\00", align 1
@__func__.get_word_at = private unnamed_addr constant [12 x i8] c"get_word_at\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"pos >= 0\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"completions\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@__func__.list_add_file = private unnamed_addr constant [14 x i8] c"list_add_file\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"completion removed\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"completion added\00", align 1
@__func__.sig_complete_word = private unnamed_addr constant [18 x i8] c"sig_complete_word\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"linestart != NULL\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"complete command \00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.completion_get_commands = private unnamed_addr constant [24 x i8] c"completion_get_commands\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"cmd != NULL\00", align 1
@commands = external global %struct._GSList*, align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@__func__.completion_get_aliases = private unnamed_addr constant [23 x i8] c"completion_get_aliases\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"alias != NULL\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@__func__.expand_aliases = private unnamed_addr constant [15 x i8] c"expand_aliases\00", align 1
@__func__.line_get_command = private unnamed_addr constant [17 x i8] c"line_get_command\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"args != NULL\00", align 1
@__func__.completion_get_options = private unnamed_addr constant [23 x i8] c"completion_get_options\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"option != NULL\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__func__.completion_get_subcommands = private unnamed_addr constant [27 x i8] c"completion_get_subcommands\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"complete erase command \00", align 1
@__func__.sig_complete_set = private unnamed_addr constant [17 x i8] c"sig_complete_set\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"-clear\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"-default\00", align 1
@__func__.completion_get_settings = private unnamed_addr constant [24 x i8] c"completion_get_settings\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@__func__.sig_complete_toggle = private unnamed_addr constant [20 x i8] c"sig_complete_toggle\00", align 1
@__func__.sig_complete_filename = private unnamed_addr constant [22 x i8] c"sig_complete_filename\00", align 1
@__func__.sig_complete_command = private unnamed_addr constant [21 x i8] c"sig_complete_command\00", align 1

; Function Attrs: nounwind uwtable
define i8* @auto_word_complete(i8*, i32*) #0 !dbg !430 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !433, metadata !434), !dbg !435
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !436, metadata !434), !dbg !437
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !438, metadata !434), !dbg !450
  call void @llvm.dbg.declare(metadata i8** %7, metadata !451, metadata !434), !dbg !452
  call void @llvm.dbg.declare(metadata i8** %8, metadata !453, metadata !434), !dbg !454
  call void @llvm.dbg.declare(metadata i8** %9, metadata !455, metadata !434), !dbg !456
  call void @llvm.dbg.declare(metadata i8** %10, metadata !457, metadata !434), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %11, metadata !459, metadata !434), !dbg !460
  br label %12, !dbg !461, !llvm.loop !462

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !463
  %14 = icmp ne i8* %13, null, !dbg !467
  br i1 %14, label %15, label %16, !dbg !463

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !468

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.auto_word_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !471
  store i8* null, i8** %3, align 8, !dbg !474
  br label %72, !dbg !474

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !475

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !477, !llvm.loop !478

; <label>:19:                                     ; preds = %18
  %20 = load i32*, i32** %5, align 8, !dbg !479
  %21 = icmp ne i32* %20, null, !dbg !483
  br i1 %21, label %22, label %23, !dbg !479

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !484

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.auto_word_complete, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !487
  store i8* null, i8** %3, align 8, !dbg !490
  br label %72, !dbg !490

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !491

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !493
  %27 = load i32*, i32** %5, align 8, !dbg !494
  %28 = load i32, i32* %27, align 4, !dbg !495
  %29 = call i8* @get_word_at(i8* %26, i32 %28, i8** %9), !dbg !496
  store i8* %29, i8** %8, align 8, !dbg !497
  %30 = load i8*, i8** %9, align 8, !dbg !498
  %31 = load i8*, i8** %4, align 8, !dbg !499
  %32 = ptrtoint i8* %30 to i64, !dbg !500
  %33 = ptrtoint i8* %31 to i64, !dbg !500
  %34 = sub i64 %32, %33, !dbg !500
  %35 = trunc i64 %34 to i32, !dbg !501
  store i32 %35, i32* %11, align 4, !dbg !502
  %36 = load i8*, i8** %4, align 8, !dbg !503
  %37 = call %struct._GString* @g_string_new(i8* %36), !dbg !504
  store %struct._GString* %37, %struct._GString** %6, align 8, !dbg !505
  %38 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !506
  %39 = load i32, i32* %11, align 4, !dbg !507
  %40 = sext i32 %39 to i64, !dbg !507
  %41 = load i8*, i8** %8, align 8, !dbg !508
  %42 = call i64 @strlen(i8* %41) #6, !dbg !509
  %43 = call %struct._GString* @g_string_erase(%struct._GString* %38, i64 %40, i64 %42), !dbg !510
  %44 = load i8*, i8** %8, align 8, !dbg !512
  %45 = call i8* @completion_find(i8* %44, i32 1), !dbg !513
  store i8* %45, i8** %7, align 8, !dbg !514
  %46 = load i8*, i8** %7, align 8, !dbg !515
  %47 = icmp eq i8* %46, null, !dbg !517
  br i1 %47, label %48, label %51, !dbg !518

; <label>:48:                                     ; preds = %25
  store i8* null, i8** %10, align 8, !dbg !519
  %49 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !521
  %50 = call i8* @g_string_free(%struct._GString* %49, i32 1), !dbg !522
  br label %69, !dbg !523

; <label>:51:                                     ; preds = %25
  %52 = load i32, i32* %11, align 4, !dbg !524
  %53 = sext i32 %52 to i64, !dbg !524
  %54 = load i8*, i8** %7, align 8, !dbg !526
  %55 = call i64 @strlen(i8* %54) #6, !dbg !527
  %56 = add i64 %53, %55, !dbg !528
  %57 = trunc i64 %56 to i32, !dbg !524
  %58 = load i32*, i32** %5, align 8, !dbg !529
  store i32 %57, i32* %58, align 4, !dbg !530
  %59 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !531
  %60 = load i32, i32* %11, align 4, !dbg !532
  %61 = sext i32 %60 to i64, !dbg !532
  %62 = load i8*, i8** %7, align 8, !dbg !533
  %63 = call %struct._GString* @g_string_insert(%struct._GString* %59, i64 %61, i8* %62), !dbg !534
  %64 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !535
  %65 = getelementptr inbounds %struct._GString, %struct._GString* %64, i32 0, i32 0, !dbg !536
  %66 = load i8*, i8** %65, align 8, !dbg !536
  store i8* %66, i8** %10, align 8, !dbg !537
  %67 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !538
  %68 = call i8* @g_string_free(%struct._GString* %67, i32 0), !dbg !539
  br label %69

; <label>:69:                                     ; preds = %51, %48
  %70 = load i8*, i8** %8, align 8, !dbg !540
  call void @g_free(i8* %70), !dbg !541
  %71 = load i8*, i8** %10, align 8, !dbg !542
  store i8* %71, i8** %3, align 8, !dbg !543
  br label %72, !dbg !543

; <label>:72:                                     ; preds = %69, %23, %16
  %73 = load i8*, i8** %3, align 8, !dbg !544
  ret i8* %73, !dbg !544
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_word_at(i8*, i32, i8**) #0 !dbg !545 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !549, metadata !434), !dbg !550
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !551, metadata !434), !dbg !552
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !553, metadata !434), !dbg !554
  call void @llvm.dbg.declare(metadata i8** %8, metadata !555, metadata !434), !dbg !556
  call void @llvm.dbg.declare(metadata i8** %9, metadata !557, metadata !434), !dbg !558
  br label %10, !dbg !559, !llvm.loop !560

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !561
  %12 = icmp ne i8* %11, null, !dbg !565
  br i1 %12, label %13, label %14, !dbg !561

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !566

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.get_word_at, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)), !dbg !569
  store i8* null, i8** %4, align 8, !dbg !572
  br label %129, !dbg !572

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !573

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !575, !llvm.loop !576

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %6, align 4, !dbg !577
  %19 = icmp sge i32 %18, 0, !dbg !581
  br i1 %19, label %20, label %21, !dbg !577

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !582

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.get_word_at, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)), !dbg !585
  store i8* null, i8** %4, align 8, !dbg !588
  br label %129, !dbg !588

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !589

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %5, align 8, !dbg !591
  %25 = load i32, i32* %6, align 4, !dbg !592
  %26 = sext i32 %25 to i64, !dbg !593
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !593
  store i8* %27, i8** %8, align 8, !dbg !594
  br label %28, !dbg !595

; <label>:28:                                     ; preds = %48, %23
  %29 = load i8*, i8** %8, align 8, !dbg !596
  %30 = load i8*, i8** %5, align 8, !dbg !598
  %31 = icmp ugt i8* %29, %30, !dbg !599
  br i1 %31, label %32, label %46, !dbg !600

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %8, align 8, !dbg !601
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !601
  %35 = load i8, i8* %34, align 1, !dbg !601
  %36 = sext i8 %35 to i32, !dbg !603
  %37 = icmp eq i32 %36, 32, !dbg !604
  br i1 %37, label %44, label %38, !dbg !605

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %8, align 8, !dbg !606
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !606
  %41 = load i8, i8* %40, align 1, !dbg !606
  %42 = sext i8 %41 to i32, !dbg !608
  %43 = icmp eq i32 %42, 44, !dbg !609
  br label %44, !dbg !610

; <label>:44:                                     ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  br label %46

; <label>:46:                                     ; preds = %44, %28
  %47 = phi i1 [ false, %28 ], [ %45, %44 ]
  br i1 %47, label %48, label %51, !dbg !611

; <label>:48:                                     ; preds = %46
  %49 = load i8*, i8** %8, align 8, !dbg !613
  %50 = getelementptr inbounds i8, i8* %49, i32 -1, !dbg !613
  store i8* %50, i8** %8, align 8, !dbg !613
  br label %28, !dbg !615, !llvm.loop !616

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %8, align 8, !dbg !617
  store i8* %52, i8** %9, align 8, !dbg !618
  br label %53, !dbg !619

; <label>:53:                                     ; preds = %74, %51
  %54 = load i8*, i8** %8, align 8, !dbg !620
  %55 = load i8*, i8** %5, align 8, !dbg !621
  %56 = icmp ugt i8* %54, %55, !dbg !622
  br i1 %56, label %57, label %72, !dbg !623

; <label>:57:                                     ; preds = %53
  %58 = load i8*, i8** %8, align 8, !dbg !624
  %59 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !624
  %60 = load i8, i8* %59, align 1, !dbg !624
  %61 = sext i8 %60 to i32, !dbg !625
  %62 = icmp eq i32 %61, 32, !dbg !626
  br i1 %62, label %69, label %63, !dbg !627

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %8, align 8, !dbg !628
  %65 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !628
  %66 = load i8, i8* %65, align 1, !dbg !628
  %67 = sext i8 %66 to i32, !dbg !629
  %68 = icmp eq i32 %67, 44, !dbg !630
  br label %69, !dbg !631

; <label>:69:                                     ; preds = %63, %57
  %70 = phi i1 [ true, %57 ], [ %68, %63 ]
  %71 = xor i1 %70, true, !dbg !632
  br label %72

; <label>:72:                                     ; preds = %69, %53
  %73 = phi i1 [ false, %53 ], [ %71, %69 ]
  br i1 %73, label %74, label %77, !dbg !633

; <label>:74:                                     ; preds = %72
  %75 = load i8*, i8** %8, align 8, !dbg !634
  %76 = getelementptr inbounds i8, i8* %75, i32 -1, !dbg !634
  store i8* %76, i8** %8, align 8, !dbg !634
  br label %53, !dbg !636, !llvm.loop !637

; <label>:77:                                     ; preds = %72
  br label %78, !dbg !638

; <label>:78:                                     ; preds = %98, %77
  %79 = load i8*, i8** %9, align 8, !dbg !639
  %80 = load i8, i8* %79, align 1, !dbg !640
  %81 = sext i8 %80 to i32, !dbg !640
  %82 = icmp ne i32 %81, 0, !dbg !641
  br i1 %82, label %83, label %96, !dbg !642

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %9, align 8, !dbg !643
  %85 = load i8, i8* %84, align 1, !dbg !644
  %86 = sext i8 %85 to i32, !dbg !645
  %87 = icmp eq i32 %86, 32, !dbg !646
  br i1 %87, label %93, label %88, !dbg !647

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %9, align 8, !dbg !648
  %90 = load i8, i8* %89, align 1, !dbg !649
  %91 = sext i8 %90 to i32, !dbg !650
  %92 = icmp eq i32 %91, 44, !dbg !651
  br label %93, !dbg !652

; <label>:93:                                     ; preds = %88, %83
  %94 = phi i1 [ true, %83 ], [ %92, %88 ]
  %95 = xor i1 %94, true, !dbg !653
  br label %96

; <label>:96:                                     ; preds = %93, %78
  %97 = phi i1 [ false, %78 ], [ %95, %93 ]
  br i1 %97, label %98, label %101, !dbg !654

; <label>:98:                                     ; preds = %96
  %99 = load i8*, i8** %9, align 8, !dbg !655
  %100 = getelementptr inbounds i8, i8* %99, i32 1, !dbg !655
  store i8* %100, i8** %9, align 8, !dbg !655
  br label %78, !dbg !656, !llvm.loop !657

; <label>:101:                                    ; preds = %96
  br label %102, !dbg !658

; <label>:102:                                    ; preds = %114, %101
  %103 = load i8*, i8** %9, align 8, !dbg !659
  %104 = load i8, i8* %103, align 1, !dbg !660
  %105 = sext i8 %104 to i32, !dbg !660
  %106 = icmp ne i32 %105, 0, !dbg !661
  br i1 %106, label %107, label %112, !dbg !662

; <label>:107:                                    ; preds = %102
  %108 = load i8*, i8** %9, align 8, !dbg !663
  %109 = load i8, i8* %108, align 1, !dbg !664
  %110 = sext i8 %109 to i32, !dbg !665
  %111 = icmp eq i32 %110, 44, !dbg !666
  br label %112

; <label>:112:                                    ; preds = %107, %102
  %113 = phi i1 [ false, %102 ], [ %111, %107 ]
  br i1 %113, label %114, label %117, !dbg !667

; <label>:114:                                    ; preds = %112
  %115 = load i8*, i8** %9, align 8, !dbg !668
  %116 = getelementptr inbounds i8, i8* %115, i32 1, !dbg !668
  store i8* %116, i8** %9, align 8, !dbg !668
  br label %102, !dbg !669, !llvm.loop !670

; <label>:117:                                    ; preds = %112
  %118 = load i8*, i8** %8, align 8, !dbg !671
  %119 = load i8**, i8*** %7, align 8, !dbg !672
  store i8* %118, i8** %119, align 8, !dbg !673
  %120 = load i8*, i8** %8, align 8, !dbg !674
  %121 = load i8*, i8** %9, align 8, !dbg !675
  %122 = load i8*, i8** %8, align 8, !dbg !676
  %123 = ptrtoint i8* %121 to i64, !dbg !677
  %124 = ptrtoint i8* %122 to i64, !dbg !677
  %125 = sub i64 %123, %124, !dbg !677
  %126 = trunc i64 %125 to i32, !dbg !678
  %127 = sext i32 %126 to i64, !dbg !678
  %128 = call noalias i8* @g_strndup(i8* %120, i64 %127), !dbg !679
  store i8* %128, i8** %4, align 8, !dbg !680
  br label %129, !dbg !680

; <label>:129:                                    ; preds = %117, %21, %14
  %130 = load i8*, i8** %4, align 8, !dbg !681
  ret i8* %130, !dbg !681
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_erase(%struct._GString*, i64, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @completion_find(i8*, i32) #0 !dbg !682 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !685, metadata !434), !dbg !686
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !687, metadata !434), !dbg !688
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !689, metadata !434), !dbg !697
  %7 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !698
  %8 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 0), !dbg !699
  store %struct._CONFIG_NODE* %8, %struct._CONFIG_NODE** %6, align 8, !dbg !700
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !701
  %10 = icmp eq %struct._CONFIG_NODE* %9, null, !dbg !703
  br i1 %10, label %16, label %11, !dbg !704

; <label>:11:                                     ; preds = %2
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !705
  %13 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %12, i32 0, i32 0, !dbg !707
  %14 = load i32, i32* %13, align 8, !dbg !707
  %15 = icmp ne i32 %14, 2, !dbg !708
  br i1 %15, label %16, label %17, !dbg !709

; <label>:16:                                     ; preds = %11, %2
  store i8* null, i8** %3, align 8, !dbg !710
  br label %36, !dbg !710

; <label>:17:                                     ; preds = %11
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !711
  %19 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !712
  %20 = load i8*, i8** %4, align 8, !dbg !713
  %21 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %18, %struct._CONFIG_NODE* %19, i8* %20, i32 -1), !dbg !714
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %6, align 8, !dbg !715
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !716
  %23 = icmp eq %struct._CONFIG_NODE* %22, null, !dbg !718
  br i1 %23, label %24, label %25, !dbg !719

; <label>:24:                                     ; preds = %17
  store i8* null, i8** %3, align 8, !dbg !720
  br label %36, !dbg !720

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %5, align 4, !dbg !721
  %27 = icmp ne i32 %26, 0, !dbg !721
  br i1 %27, label %28, label %33, !dbg !723

; <label>:28:                                     ; preds = %25
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !724
  %30 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0), !dbg !726
  %31 = icmp ne i32 %30, 0, !dbg !726
  br i1 %31, label %33, label %32, !dbg !727

; <label>:32:                                     ; preds = %28
  store i8* null, i8** %3, align 8, !dbg !728
  br label %36, !dbg !728

; <label>:33:                                     ; preds = %28, %25
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !729
  %35 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* null), !dbg !730
  store i8* %35, i8** %3, align 8, !dbg !731
  br label %36, !dbg !731

; <label>:36:                                     ; preds = %33, %32, %24, %16
  %37 = load i8*, i8** %3, align 8, !dbg !732
  ret i8* %37, !dbg !732
}

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GString* @g_string_insert(%struct._GString*, i64, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @word_complete(%struct._WINDOW_REC*, i8*, i32*, i32, i32) #0 !dbg !325 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._GString*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct._GString*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !733, metadata !434), !dbg !734
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !735, metadata !434), !dbg !736
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !737, metadata !434), !dbg !738
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !739, metadata !434), !dbg !740
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !741, metadata !434), !dbg !742
  call void @llvm.dbg.declare(metadata i32* %12, metadata !743, metadata !434), !dbg !744
  call void @llvm.dbg.declare(metadata i32* %13, metadata !745, metadata !434), !dbg !746
  call void @llvm.dbg.declare(metadata %struct._GString** %14, metadata !747, metadata !434), !dbg !748
  call void @llvm.dbg.declare(metadata i8** %15, metadata !749, metadata !434), !dbg !750
  call void @llvm.dbg.declare(metadata i8** %16, metadata !751, metadata !434), !dbg !752
  call void @llvm.dbg.declare(metadata i8** %17, metadata !753, metadata !434), !dbg !754
  call void @llvm.dbg.declare(metadata i8** %18, metadata !755, metadata !434), !dbg !756
  call void @llvm.dbg.declare(metadata i8** %19, metadata !757, metadata !434), !dbg !758
  call void @llvm.dbg.declare(metadata i8** %20, metadata !759, metadata !434), !dbg !760
  call void @llvm.dbg.declare(metadata i32* %21, metadata !761, metadata !434), !dbg !762
  call void @llvm.dbg.declare(metadata i32* %22, metadata !763, metadata !434), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %23, metadata !765, metadata !434), !dbg !766
  br label %27, !dbg !767, !llvm.loop !768

; <label>:27:                                     ; preds = %5
  %28 = load i8*, i8** %8, align 8, !dbg !769
  %29 = icmp ne i8* %28, null, !dbg !773
  br i1 %29, label %30, label %31, !dbg !769

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !774

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.word_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !777
  store i8* null, i8** %6, align 8, !dbg !780
  br label %366, !dbg !780

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !781

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !783, !llvm.loop !784

; <label>:34:                                     ; preds = %33
  %35 = load i32*, i32** %9, align 8, !dbg !785
  %36 = icmp ne i32* %35, null, !dbg !789
  br i1 %36, label %37, label %38, !dbg !785

; <label>:37:                                     ; preds = %34
  br label %39, !dbg !790

; <label>:38:                                     ; preds = %34
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.word_complete, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !793
  store i8* null, i8** %6, align 8, !dbg !796
  br label %366, !dbg !796

; <label>:39:                                     ; preds = %37
  br label %40, !dbg !797

; <label>:40:                                     ; preds = %39
  %41 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !799
  %42 = icmp ne %struct._GList* %41, null, !dbg !800
  br i1 %42, label %43, label %53, !dbg !801

; <label>:43:                                     ; preds = %40
  %44 = load i32*, i32** %9, align 8, !dbg !802
  %45 = load i32, i32* %44, align 4, !dbg !804
  %46 = load i32, i32* @last_line_pos, align 4, !dbg !805
  %47 = icmp eq i32 %45, %46, !dbg !806
  br i1 %47, label %48, label %53, !dbg !807

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %8, align 8, !dbg !808
  %50 = load i8*, i8** @last_line, align 8, !dbg !809
  %51 = call i32 @g_strcmp0(i8* %49, i8* %50), !dbg !810
  %52 = icmp eq i32 %51, 0, !dbg !811
  br label %53

; <label>:53:                                     ; preds = %48, %43, %40
  %54 = phi i1 [ false, %43 ], [ false, %40 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32, !dbg !812
  store i32 %55, i32* %21, align 4, !dbg !814
  %56 = load i32, i32* %10, align 4, !dbg !815
  %57 = icmp ne i32 %56, 0, !dbg !815
  br i1 %57, label %58, label %62, !dbg !817

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %21, align 4, !dbg !818
  %60 = icmp ne i32 %59, 0, !dbg !818
  br i1 %60, label %62, label %61, !dbg !820

; <label>:61:                                     ; preds = %58
  store i8* null, i8** %6, align 8, !dbg !821
  br label %366, !dbg !821

; <label>:62:                                     ; preds = %58, %53
  %63 = load i32, i32* @word_complete.startpos, align 4, !dbg !822
  store i32 %63, i32* %12, align 4, !dbg !823
  %64 = load i32, i32* @word_complete.wordlen, align 4, !dbg !824
  store i32 %64, i32* %13, align 4, !dbg !825
  %65 = load i32, i32* %10, align 4, !dbg !826
  %66 = icmp ne i32 %65, 0, !dbg !826
  br i1 %66, label %71, label %67, !dbg !828

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %21, align 4, !dbg !829
  %69 = icmp ne i32 %68, 0, !dbg !829
  br i1 %69, label %70, label %71, !dbg !831

; <label>:70:                                     ; preds = %67
  store i8* null, i8** %16, align 8, !dbg !832
  store i8* null, i8** %18, align 8, !dbg !834
  br label %205, !dbg !835

; <label>:71:                                     ; preds = %67, %62
  call void @llvm.dbg.declare(metadata i8** %24, metadata !836, metadata !434), !dbg !838
  %72 = load i8*, i8** %8, align 8, !dbg !839
  %73 = load i32*, i32** %9, align 8, !dbg !840
  %74 = load i32, i32* %73, align 4, !dbg !841
  %75 = call i8* @get_word_at(i8* %72, i32 %74, i8** %17), !dbg !842
  store i8* %75, i8** %16, align 8, !dbg !843
  %76 = load i8*, i8** %17, align 8, !dbg !844
  store i8* %76, i8** %24, align 8, !dbg !845
  %77 = load i8*, i8** %17, align 8, !dbg !846
  %78 = load i8*, i8** %8, align 8, !dbg !847
  %79 = ptrtoint i8* %77 to i64, !dbg !848
  %80 = ptrtoint i8* %78 to i64, !dbg !848
  %81 = sub i64 %79, %80, !dbg !848
  %82 = trunc i64 %81 to i32, !dbg !849
  store i32 %82, i32* @word_complete.startpos, align 4, !dbg !850
  %83 = load i8*, i8** %16, align 8, !dbg !851
  %84 = call i64 @strlen(i8* %83) #6, !dbg !852
  %85 = trunc i64 %84 to i32, !dbg !852
  store i32 %85, i32* @word_complete.wordlen, align 4, !dbg !853
  br label %86, !dbg !854

; <label>:86:                                     ; preds = %98, %71
  %87 = load i8*, i8** %17, align 8, !dbg !855
  %88 = load i8*, i8** %8, align 8, !dbg !857
  %89 = icmp ugt i8* %87, %88, !dbg !858
  br i1 %89, label %90, label %96, !dbg !859

; <label>:90:                                     ; preds = %86
  %91 = load i8*, i8** %17, align 8, !dbg !860
  %92 = getelementptr inbounds i8, i8* %91, i64 -1, !dbg !860
  %93 = load i8, i8* %92, align 1, !dbg !860
  %94 = sext i8 %93 to i32, !dbg !862
  %95 = icmp eq i32 %94, 32, !dbg !863
  br label %96

; <label>:96:                                     ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %98, label %101, !dbg !864

; <label>:98:                                     ; preds = %96
  %99 = load i8*, i8** %17, align 8, !dbg !866
  %100 = getelementptr inbounds i8, i8* %99, i32 -1, !dbg !866
  store i8* %100, i8** %17, align 8, !dbg !866
  br label %86, !dbg !867, !llvm.loop !869

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %24, align 8, !dbg !870
  %103 = load i8*, i8** %8, align 8, !dbg !872
  %104 = icmp ugt i8* %102, %103, !dbg !873
  br i1 %104, label %105, label %112, !dbg !874

; <label>:105:                                    ; preds = %101
  %106 = load i8*, i8** %17, align 8, !dbg !875
  %107 = load i8*, i8** %8, align 8, !dbg !877
  %108 = icmp eq i8* %106, %107, !dbg !878
  br i1 %108, label %109, label %112, !dbg !879

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** %24, align 8, !dbg !880
  %111 = getelementptr inbounds i8, i8* %110, i64 -1, !dbg !881
  store i8* %111, i8** %17, align 8, !dbg !882
  br label %112, !dbg !883

; <label>:112:                                    ; preds = %109, %105, %101
  %113 = load i8*, i8** %8, align 8, !dbg !884
  %114 = load i8*, i8** %17, align 8, !dbg !885
  %115 = load i8*, i8** %8, align 8, !dbg !886
  %116 = ptrtoint i8* %114 to i64, !dbg !887
  %117 = ptrtoint i8* %115 to i64, !dbg !887
  %118 = sub i64 %116, %117, !dbg !887
  %119 = trunc i64 %118 to i32, !dbg !888
  %120 = sext i32 %119 to i64, !dbg !888
  %121 = call noalias i8* @g_strndup(i8* %113, i64 %120), !dbg !889
  store i8* %121, i8** %18, align 8, !dbg !890
  %122 = load i32, i32* %10, align 4, !dbg !891
  %123 = icmp ne i32 %122, 0, !dbg !891
  br i1 %123, label %204, label %124, !dbg !893

; <label>:124:                                    ; preds = %112
  %125 = load i32*, i32** %9, align 8, !dbg !894
  %126 = load i32, i32* %125, align 4, !dbg !896
  %127 = icmp sgt i32 %126, 0, !dbg !897
  br i1 %127, label %128, label %204, !dbg !898

; <label>:128:                                    ; preds = %124
  %129 = load i32*, i32** %9, align 8, !dbg !899
  %130 = load i32, i32* %129, align 4, !dbg !901
  %131 = sub nsw i32 %130, 1, !dbg !902
  %132 = sext i32 %131 to i64, !dbg !903
  %133 = load i8*, i8** %8, align 8, !dbg !903
  %134 = getelementptr inbounds i8, i8* %133, i64 %132, !dbg !903
  %135 = load i8, i8* %134, align 1, !dbg !903
  %136 = sext i8 %135 to i32, !dbg !904
  %137 = icmp eq i32 %136, 32, !dbg !905
  br i1 %137, label %138, label %204, !dbg !906

; <label>:138:                                    ; preds = %128
  %139 = load i8*, i8** %18, align 8, !dbg !907
  %140 = load i8, i8* %139, align 1, !dbg !908
  %141 = sext i8 %140 to i32, !dbg !908
  %142 = icmp eq i32 %141, 0, !dbg !909
  br i1 %142, label %149, label %143, !dbg !910

; <label>:143:                                    ; preds = %138
  %144 = load i8*, i8** %17, align 8, !dbg !911
  %145 = getelementptr inbounds i8, i8* %144, i64 -1, !dbg !911
  %146 = load i8, i8* %145, align 1, !dbg !911
  %147 = sext i8 %146 to i32, !dbg !912
  %148 = icmp eq i32 %147, 32, !dbg !913
  br i1 %148, label %204, label %149, !dbg !914

; <label>:149:                                    ; preds = %143, %138
  call void @llvm.dbg.declare(metadata i8** %25, metadata !915, metadata !434), !dbg !917
  %150 = load i8*, i8** %18, align 8, !dbg !918
  store i8* %150, i8** %25, align 8, !dbg !919
  %151 = load i8*, i8** %18, align 8, !dbg !920
  %152 = load i8, i8* %151, align 1, !dbg !922
  %153 = sext i8 %152 to i32, !dbg !922
  %154 = icmp eq i32 %153, 0, !dbg !923
  br i1 %154, label %155, label %158, !dbg !924

; <label>:155:                                    ; preds = %149
  %156 = load i8*, i8** %16, align 8, !dbg !925
  %157 = call noalias i8* @g_strdup(i8* %156), !dbg !927
  store i8* %157, i8** %18, align 8, !dbg !928
  br label %188, !dbg !929

; <label>:158:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata %struct._GString** %26, metadata !930, metadata !434), !dbg !932
  %159 = load i8*, i8** %18, align 8, !dbg !933
  %160 = call %struct._GString* @g_string_new(i8* %159), !dbg !934
  store %struct._GString* %160, %struct._GString** %26, align 8, !dbg !932
  %161 = load i8*, i8** %24, align 8, !dbg !935
  %162 = getelementptr inbounds i8, i8* %161, i64 -1, !dbg !935
  %163 = load i8, i8* %162, align 1, !dbg !935
  %164 = sext i8 %163 to i32, !dbg !935
  %165 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !937
  %166 = getelementptr inbounds %struct._GString, %struct._GString* %165, i32 0, i32 1, !dbg !938
  %167 = load i64, i64* %166, align 8, !dbg !938
  %168 = sub i64 %167, 1, !dbg !939
  %169 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !940
  %170 = getelementptr inbounds %struct._GString, %struct._GString* %169, i32 0, i32 0, !dbg !941
  %171 = load i8*, i8** %170, align 8, !dbg !941
  %172 = getelementptr inbounds i8, i8* %171, i64 %168, !dbg !940
  %173 = load i8, i8* %172, align 1, !dbg !940
  %174 = sext i8 %173 to i32, !dbg !940
  %175 = icmp ne i32 %164, %174, !dbg !942
  br i1 %175, label %176, label %182, !dbg !943

; <label>:176:                                    ; preds = %158
  %177 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !944
  %178 = load i8*, i8** %24, align 8, !dbg !946
  %179 = getelementptr inbounds i8, i8* %178, i64 -1, !dbg !946
  %180 = load i8, i8* %179, align 1, !dbg !946
  %181 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %177, i8 signext %180), !dbg !947
  br label %182, !dbg !948

; <label>:182:                                    ; preds = %176, %158
  %183 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !949
  %184 = load i8*, i8** %16, align 8, !dbg !950
  %185 = call %struct._GString* @g_string_append(%struct._GString* %183, i8* %184), !dbg !951
  %186 = load %struct._GString*, %struct._GString** %26, align 8, !dbg !952
  %187 = call i8* @g_string_free(%struct._GString* %186, i32 0), !dbg !953
  store i8* %187, i8** %18, align 8, !dbg !954
  br label %188

; <label>:188:                                    ; preds = %182, %155
  %189 = load i8*, i8** %25, align 8, !dbg !955
  call void @g_free(i8* %189), !dbg !956
  %190 = load i8*, i8** %16, align 8, !dbg !957
  call void @g_free(i8* %190), !dbg !958
  %191 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)), !dbg !959
  store i8* %191, i8** %16, align 8, !dbg !960
  %192 = load i8*, i8** %18, align 8, !dbg !961
  %193 = load i8, i8* %192, align 1, !dbg !962
  %194 = sext i8 %193 to i32, !dbg !962
  %195 = icmp eq i32 %194, 0, !dbg !963
  br i1 %195, label %196, label %197, !dbg !962

; <label>:196:                                    ; preds = %188
  br label %201, !dbg !964

; <label>:197:                                    ; preds = %188
  %198 = load i8*, i8** %18, align 8, !dbg !966
  %199 = call i64 @strlen(i8* %198) #6, !dbg !967
  %200 = add i64 %199, 1, !dbg !968
  br label %201, !dbg !969

; <label>:201:                                    ; preds = %197, %196
  %202 = phi i64 [ 0, %196 ], [ %200, %197 ], !dbg !971
  %203 = trunc i64 %202 to i32, !dbg !971
  store i32 %203, i32* @word_complete.startpos, align 4, !dbg !973
  store i32 0, i32* @word_complete.wordlen, align 4, !dbg !974
  br label %204, !dbg !975

; <label>:204:                                    ; preds = %201, %143, %128, %124, %112
  br label %205

; <label>:205:                                    ; preds = %204, %70
  %206 = load i32, i32* %10, align 4, !dbg !976
  %207 = icmp ne i32 %206, 0, !dbg !976
  br i1 %207, label %208, label %215, !dbg !978

; <label>:208:                                    ; preds = %205
  %209 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !979
  %210 = load i8*, i8** %16, align 8, !dbg !981
  %211 = load i8*, i8** %18, align 8, !dbg !982
  %212 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 3, %struct._WINDOW_REC* %209, i8* %210, i8* %211), !dbg !983
  %213 = load i32, i32* %12, align 4, !dbg !984
  store i32 %213, i32* @word_complete.startpos, align 4, !dbg !985
  %214 = load i32, i32* %13, align 4, !dbg !986
  store i32 %214, i32* @word_complete.wordlen, align 4, !dbg !987
  br label %215, !dbg !988

; <label>:215:                                    ; preds = %208, %205
  %216 = load i32, i32* %21, align 4, !dbg !989
  %217 = icmp ne i32 %216, 0, !dbg !989
  br i1 %217, label %218, label %251, !dbg !991

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %11, align 4, !dbg !992
  %220 = icmp ne i32 %219, 0, !dbg !992
  br i1 %220, label %221, label %235, !dbg !995

; <label>:221:                                    ; preds = %218
  %222 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !996
  %223 = getelementptr inbounds %struct._GList, %struct._GList* %222, i32 0, i32 2, !dbg !997
  %224 = load %struct._GList*, %struct._GList** %223, align 8, !dbg !997
  %225 = icmp ne %struct._GList* %224, null, !dbg !998
  br i1 %225, label %226, label %230, !dbg !996

; <label>:226:                                    ; preds = %221
  %227 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !999
  %228 = getelementptr inbounds %struct._GList, %struct._GList* %227, i32 0, i32 2, !dbg !1001
  %229 = load %struct._GList*, %struct._GList** %228, align 8, !dbg !1001
  br label %233, !dbg !1002

; <label>:230:                                    ; preds = %221
  %231 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1003
  %232 = call %struct._GList* @g_list_last(%struct._GList* %231), !dbg !1004
  br label %233, !dbg !1005

; <label>:233:                                    ; preds = %230, %226
  %234 = phi %struct._GList* [ %229, %226 ], [ %232, %230 ], !dbg !1007
  store %struct._GList* %234, %struct._GList** @complist, align 8, !dbg !1009
  br label %249, !dbg !1010

; <label>:235:                                    ; preds = %218
  %236 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1011
  %237 = getelementptr inbounds %struct._GList, %struct._GList* %236, i32 0, i32 1, !dbg !1012
  %238 = load %struct._GList*, %struct._GList** %237, align 8, !dbg !1012
  %239 = icmp ne %struct._GList* %238, null, !dbg !1013
  br i1 %239, label %240, label %244, !dbg !1011

; <label>:240:                                    ; preds = %235
  %241 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1014
  %242 = getelementptr inbounds %struct._GList, %struct._GList* %241, i32 0, i32 1, !dbg !1015
  %243 = load %struct._GList*, %struct._GList** %242, align 8, !dbg !1015
  br label %247, !dbg !1016

; <label>:244:                                    ; preds = %235
  %245 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1017
  %246 = call %struct._GList* @g_list_first(%struct._GList* %245), !dbg !1018
  br label %247, !dbg !1019

; <label>:247:                                    ; preds = %244, %240
  %248 = phi %struct._GList* [ %243, %240 ], [ %246, %244 ], !dbg !1020
  store %struct._GList* %248, %struct._GList** @complist, align 8, !dbg !1021
  br label %249

; <label>:249:                                    ; preds = %247, %233
  %250 = load i32, i32* @last_want_space, align 4, !dbg !1022
  store i32 %250, i32* %22, align 4, !dbg !1023
  br label %264, !dbg !1024

; <label>:251:                                    ; preds = %215
  call void @free_completions(), !dbg !1025
  store i32 1, i32* %22, align 4, !dbg !1027
  %252 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1028
  %253 = load i8*, i8** %16, align 8, !dbg !1029
  %254 = load i8*, i8** %18, align 8, !dbg !1030
  %255 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 5, %struct._GList** @complist, %struct._WINDOW_REC* %252, i8* %253, i8* %254, i32* %22), !dbg !1031
  %256 = load i32, i32* %22, align 4, !dbg !1032
  store i32 %256, i32* @last_want_space, align 4, !dbg !1033
  %257 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1034
  %258 = icmp ne %struct._GList* %257, null, !dbg !1036
  br i1 %258, label %259, label %263, !dbg !1037

; <label>:259:                                    ; preds = %251
  %260 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1038
  %261 = call %struct._GList* @g_list_first(%struct._GList* %260), !dbg !1040
  %262 = call %struct._GList* @g_list_remove_all(%struct._GList* %261, i8* null), !dbg !1041
  store %struct._GList* %262, %struct._GList** @complist, align 8, !dbg !1043
  br label %263, !dbg !1044

; <label>:263:                                    ; preds = %259, %251
  br label %264

; <label>:264:                                    ; preds = %263, %249
  %265 = load i8*, i8** %18, align 8, !dbg !1045
  call void @g_free(i8* %265), !dbg !1046
  %266 = load i8*, i8** %16, align 8, !dbg !1047
  call void @g_free(i8* %266), !dbg !1048
  %267 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1049
  %268 = icmp eq %struct._GList* %267, null, !dbg !1051
  br i1 %268, label %269, label %270, !dbg !1052

; <label>:269:                                    ; preds = %264
  store i8* null, i8** %6, align 8, !dbg !1053
  br label %366, !dbg !1053

; <label>:270:                                    ; preds = %264
  %271 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !1054
  store i8* %271, i8** %15, align 8, !dbg !1055
  %272 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)), !dbg !1056
  store i32 %272, i32* %23, align 4, !dbg !1057
  %273 = load i8*, i8** %15, align 8, !dbg !1058
  %274 = load i8*, i8** %8, align 8, !dbg !1059
  %275 = load i8, i8* %274, align 1, !dbg !1060
  %276 = sext i8 %275 to i32, !dbg !1060
  %277 = call i8* @strchr(i8* %273, i32 %276) #6, !dbg !1061
  %278 = icmp eq i8* %277, null, !dbg !1062
  br i1 %278, label %279, label %287, !dbg !1063

; <label>:279:                                    ; preds = %270
  %280 = load i32, i32* %23, align 4, !dbg !1064
  %281 = icmp ne i32 %280, 0, !dbg !1064
  br i1 %281, label %282, label %287, !dbg !1065

; <label>:282:                                    ; preds = %279
  %283 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1066
  %284 = getelementptr inbounds %struct._GList, %struct._GList* %283, i32 0, i32 0, !dbg !1067
  %285 = load i8*, i8** %284, align 8, !dbg !1067
  %286 = call i8* @escape_string(i8* %285), !dbg !1068
  br label %292, !dbg !1069

; <label>:287:                                    ; preds = %279, %270
  %288 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1070
  %289 = getelementptr inbounds %struct._GList, %struct._GList* %288, i32 0, i32 0, !dbg !1071
  %290 = load i8*, i8** %289, align 8, !dbg !1071
  %291 = call noalias i8* @g_strdup(i8* %290), !dbg !1072
  br label %292, !dbg !1073

; <label>:292:                                    ; preds = %287, %282
  %293 = phi i8* [ %286, %282 ], [ %291, %287 ], !dbg !1075
  store i8* %293, i8** %20, align 8, !dbg !1077
  %294 = load i32, i32* @word_complete.startpos, align 4, !dbg !1078
  %295 = sext i32 %294 to i64, !dbg !1078
  %296 = load i8*, i8** %20, align 8, !dbg !1079
  %297 = call i64 @strlen(i8* %296) #6, !dbg !1080
  %298 = add i64 %295, %297, !dbg !1081
  %299 = trunc i64 %298 to i32, !dbg !1078
  %300 = load i32*, i32** %9, align 8, !dbg !1082
  store i32 %299, i32* %300, align 4, !dbg !1083
  %301 = load i8*, i8** %8, align 8, !dbg !1084
  %302 = call %struct._GString* @g_string_new(i8* %301), !dbg !1085
  store %struct._GString* %302, %struct._GString** %14, align 8, !dbg !1086
  %303 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1087
  %304 = load i32, i32* @word_complete.startpos, align 4, !dbg !1088
  %305 = sext i32 %304 to i64, !dbg !1088
  %306 = load i32, i32* @word_complete.wordlen, align 4, !dbg !1089
  %307 = sext i32 %306 to i64, !dbg !1089
  %308 = call %struct._GString* @g_string_erase(%struct._GString* %303, i64 %305, i64 %307), !dbg !1090
  %309 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1091
  %310 = load i32, i32* @word_complete.startpos, align 4, !dbg !1092
  %311 = sext i32 %310 to i64, !dbg !1092
  %312 = load i8*, i8** %20, align 8, !dbg !1093
  %313 = call %struct._GString* @g_string_insert(%struct._GString* %309, i64 %311, i8* %312), !dbg !1094
  %314 = load i32, i32* %22, align 4, !dbg !1095
  %315 = icmp ne i32 %314, 0, !dbg !1095
  br i1 %315, label %316, label %348, !dbg !1097

; <label>:316:                                    ; preds = %292
  %317 = load i32*, i32** %9, align 8, !dbg !1098
  %318 = load i32, i32* %317, align 4, !dbg !1101
  %319 = sext i32 %318 to i64, !dbg !1102
  %320 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1102
  %321 = getelementptr inbounds %struct._GString, %struct._GString* %320, i32 0, i32 0, !dbg !1103
  %322 = load i8*, i8** %321, align 8, !dbg !1103
  %323 = getelementptr inbounds i8, i8* %322, i64 %319, !dbg !1102
  %324 = load i8, i8* %323, align 1, !dbg !1102
  %325 = sext i8 %324 to i32, !dbg !1104
  %326 = icmp eq i32 %325, 32, !dbg !1105
  br i1 %326, label %344, label %327, !dbg !1106

; <label>:327:                                    ; preds = %316
  %328 = load i32*, i32** %9, align 8, !dbg !1107
  %329 = load i32, i32* %328, align 4, !dbg !1109
  %330 = sext i32 %329 to i64, !dbg !1110
  %331 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1110
  %332 = getelementptr inbounds %struct._GString, %struct._GString* %331, i32 0, i32 0, !dbg !1111
  %333 = load i8*, i8** %332, align 8, !dbg !1111
  %334 = getelementptr inbounds i8, i8* %333, i64 %330, !dbg !1110
  %335 = load i8, i8* %334, align 1, !dbg !1110
  %336 = sext i8 %335 to i32, !dbg !1112
  %337 = icmp eq i32 %336, 44, !dbg !1113
  br i1 %337, label %344, label %338, !dbg !1114

; <label>:338:                                    ; preds = %327
  %339 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1115
  %340 = load i32*, i32** %9, align 8, !dbg !1116
  %341 = load i32, i32* %340, align 4, !dbg !1117
  %342 = sext i32 %341 to i64, !dbg !1117
  %343 = call %struct._GString* @g_string_insert_c(%struct._GString* %339, i64 %342, i8 signext 32), !dbg !1118
  br label %344, !dbg !1118

; <label>:344:                                    ; preds = %338, %327, %316
  %345 = load i32*, i32** %9, align 8, !dbg !1119
  %346 = load i32, i32* %345, align 4, !dbg !1120
  %347 = add nsw i32 %346, 1, !dbg !1120
  store i32 %347, i32* %345, align 4, !dbg !1120
  br label %348, !dbg !1121

; <label>:348:                                    ; preds = %344, %292
  %349 = load i8*, i8** %20, align 8, !dbg !1122
  %350 = call i64 @strlen(i8* %349) #6, !dbg !1123
  %351 = trunc i64 %350 to i32, !dbg !1123
  store i32 %351, i32* @word_complete.wordlen, align 4, !dbg !1124
  %352 = load i32*, i32** %9, align 8, !dbg !1125
  %353 = load i32, i32* %352, align 4, !dbg !1126
  store i32 %353, i32* @last_line_pos, align 4, !dbg !1127
  %354 = load i8*, i8** @last_line, align 8, !dbg !1128
  call void @g_free(i8* %354), !dbg !1129
  %355 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1130
  %356 = getelementptr inbounds %struct._GString, %struct._GString* %355, i32 0, i32 0, !dbg !1131
  %357 = load i8*, i8** %356, align 8, !dbg !1131
  %358 = call noalias i8* @g_strdup(i8* %357), !dbg !1132
  store i8* %358, i8** @last_line, align 8, !dbg !1133
  %359 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1134
  %360 = getelementptr inbounds %struct._GString, %struct._GString* %359, i32 0, i32 0, !dbg !1135
  %361 = load i8*, i8** %360, align 8, !dbg !1135
  store i8* %361, i8** %19, align 8, !dbg !1136
  %362 = load %struct._GString*, %struct._GString** %14, align 8, !dbg !1137
  %363 = call i8* @g_string_free(%struct._GString* %362, i32 0), !dbg !1138
  %364 = load i8*, i8** %20, align 8, !dbg !1139
  call void @g_free(i8* %364), !dbg !1140
  %365 = load i8*, i8** %19, align 8, !dbg !1141
  store i8* %365, i8** %6, align 8, !dbg !1142
  br label %366, !dbg !1142

; <label>:366:                                    ; preds = %348, %269, %61, %38, %31
  %367 = load i8*, i8** %6, align 8, !dbg !1143
  ret i8* %367, !dbg !1143
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare noalias i8* @g_strndup(i8*, i64) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1144 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1147, metadata !434), !dbg !1148
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1149, metadata !434), !dbg !1150
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1151
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1153
  %7 = load i64, i64* %6, align 8, !dbg !1153
  %8 = add i64 %7, 1, !dbg !1154
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1155
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1156
  %11 = load i64, i64* %10, align 8, !dbg !1156
  %12 = icmp ult i64 %8, %11, !dbg !1157
  br i1 %12, label %13, label %30, !dbg !1158

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1159
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1161
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1162
  %17 = load i64, i64* %16, align 8, !dbg !1163
  %18 = add i64 %17, 1, !dbg !1163
  store i64 %18, i64* %16, align 8, !dbg !1163
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1164
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1165
  %21 = load i8*, i8** %20, align 8, !dbg !1165
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1164
  store i8 %14, i8* %22, align 1, !dbg !1166
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1167
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1168
  %25 = load i64, i64* %24, align 8, !dbg !1168
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1169
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1170
  %28 = load i8*, i8** %27, align 8, !dbg !1170
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1169
  store i8 0, i8* %29, align 1, !dbg !1171
  br label %34, !dbg !1172

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1173
  %32 = load i8, i8* %4, align 1, !dbg !1174
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1175
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1176
  ret %struct._GString* %35, !dbg !1177
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._GList* @g_list_last(%struct._GList*) #2

declare %struct._GList* @g_list_first(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define internal void @free_completions() #0 !dbg !1178 {
  %1 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1181
  %2 = call %struct._GList* @g_list_first(%struct._GList* %1), !dbg !1182
  store %struct._GList* %2, %struct._GList** @complist, align 8, !dbg !1183
  %3 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1184
  call void @g_list_foreach(%struct._GList* %3, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1185
  %4 = load %struct._GList*, %struct._GList** @complist, align 8, !dbg !1186
  call void @g_list_free(%struct._GList* %4), !dbg !1187
  store %struct._GList* null, %struct._GList** @complist, align 8, !dbg !1188
  br label %5, !dbg !1189, !llvm.loop !1190

; <label>:5:                                      ; preds = %0
  %6 = load i8*, i8** @last_line, align 8, !dbg !1191
  %7 = icmp ne i8* %6, null, !dbg !1191
  br i1 %7, label %8, label %10, !dbg !1191

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @last_line, align 8, !dbg !1195
  call void @g_free(i8* %9), !dbg !1198
  store i8* null, i8** @last_line, align 8, !dbg !1199
  br label %10, !dbg !1200

; <label>:10:                                     ; preds = %8, %5
  br label %11, !dbg !1201

; <label>:11:                                     ; preds = %10
  ret void, !dbg !1203
}

declare %struct._GList* @g_list_remove_all(%struct._GList*, i8*) #2

declare i8* @settings_get_str(i8*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @escape_string(i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @filename_complete(i8*, i8*) #0 !dbg !1204 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GList*, align 8
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1207, metadata !434), !dbg !1208
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1209, metadata !434), !dbg !1210
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !1211, metadata !434), !dbg !1212
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %7, metadata !1213, metadata !434), !dbg !1218
  call void @llvm.dbg.declare(metadata %struct.dirent** %8, metadata !1219, metadata !434), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1237, metadata !434), !dbg !1238
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1239, metadata !434), !dbg !1240
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1241, metadata !434), !dbg !1242
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1243, metadata !434), !dbg !1244
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1245, metadata !434), !dbg !1248
  br label %14, !dbg !1249, !llvm.loop !1250

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !1251
  %16 = icmp ne i8* %15, null, !dbg !1255
  br i1 %16, label %17, label %18, !dbg !1251

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1256

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.filename_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !1259
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !1262
  br label %236, !dbg !1262

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1263

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1265
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !1265
  %23 = load i8, i8* %22, align 1, !dbg !1265
  %24 = sext i8 %23 to i32, !dbg !1265
  %25 = icmp eq i32 %24, 0, !dbg !1267
  br i1 %25, label %26, label %27, !dbg !1268

; <label>:26:                                     ; preds = %20
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !1269
  br label %236, !dbg !1269

; <label>:27:                                     ; preds = %20
  store %struct._GList* null, %struct._GList** %6, align 8, !dbg !1271
  %28 = load i8*, i8** %4, align 8, !dbg !1272
  %29 = call i8* @convert_home(i8* %28), !dbg !1273
  store i8* %29, i8** %10, align 8, !dbg !1274
  %30 = load i8*, i8** %10, align 8, !dbg !1275
  %31 = call i32 @g_path_is_absolute(i8* %30), !dbg !1277
  %32 = icmp ne i32 %31, 0, !dbg !1277
  br i1 %32, label %33, label %51, !dbg !1278

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %10, align 8, !dbg !1279
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !1281
  %36 = load i8, i8* %35, align 1, !dbg !1281
  %37 = sext i8 %36 to i32, !dbg !1281
  %38 = icmp eq i32 %37, 46, !dbg !1282
  br i1 %38, label %39, label %59, !dbg !1283

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %10, align 8, !dbg !1284
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1286
  %42 = load i8, i8* %41, align 1, !dbg !1286
  %43 = sext i8 %42 to i32, !dbg !1286
  %44 = icmp eq i32 %43, 0, !dbg !1287
  br i1 %44, label %51, label %45, !dbg !1288

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %10, align 8, !dbg !1289
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1291
  %48 = load i8, i8* %47, align 1, !dbg !1291
  %49 = sext i8 %48 to i32, !dbg !1291
  %50 = icmp eq i32 %49, 47, !dbg !1292
  br i1 %50, label %51, label %59, !dbg !1293

; <label>:51:                                     ; preds = %45, %39, %27
  %52 = load i8*, i8** %5, align 8, !dbg !1294
  %53 = icmp ne i8* %52, null, !dbg !1296
  br i1 %53, label %54, label %59, !dbg !1297

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %10, align 8, !dbg !1298
  call void @g_free(i8* %55), !dbg !1300
  %56 = load i8*, i8** %5, align 8, !dbg !1301
  %57 = load i8*, i8** %4, align 8, !dbg !1302
  %58 = call noalias i8* (i8*, ...) @g_strconcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* %57, i8* null), !dbg !1303
  store i8* %58, i8** %10, align 8, !dbg !1304
  br label %59, !dbg !1305

; <label>:59:                                     ; preds = %54, %51, %45, %33
  %60 = load i8*, i8** %10, align 8, !dbg !1306
  %61 = call noalias i8* @g_path_get_dirname(i8* %60), !dbg !1307
  store i8* %61, i8** %11, align 8, !dbg !1308
  %62 = load i8*, i8** %11, align 8, !dbg !1309
  %63 = call %struct.__dirstream* @opendir(i8* %62), !dbg !1310
  store %struct.__dirstream* %63, %struct.__dirstream** %7, align 8, !dbg !1311
  %64 = load i8*, i8** %11, align 8, !dbg !1312
  call void @g_free(i8* %64), !dbg !1313
  %65 = load i8*, i8** %10, align 8, !dbg !1314
  call void @g_free(i8* %65), !dbg !1315
  %66 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !1316
  %67 = icmp eq %struct.__dirstream* %66, null, !dbg !1318
  br i1 %67, label %68, label %69, !dbg !1319

; <label>:68:                                     ; preds = %59
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !1320
  br label %236, !dbg !1320

; <label>:69:                                     ; preds = %59
  %70 = load i8*, i8** %4, align 8, !dbg !1321
  %71 = call noalias i8* @g_path_get_dirname(i8* %70), !dbg !1322
  store i8* %71, i8** %11, align 8, !dbg !1323
  %72 = load i8*, i8** %11, align 8, !dbg !1324
  %73 = load i8, i8* %72, align 1, !dbg !1326
  %74 = sext i8 %73 to i32, !dbg !1326
  %75 = icmp eq i32 %74, 47, !dbg !1327
  br i1 %75, label %76, label %84, !dbg !1328

; <label>:76:                                     ; preds = %69
  %77 = load i8*, i8** %11, align 8, !dbg !1329
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1329
  %79 = load i8, i8* %78, align 1, !dbg !1329
  %80 = sext i8 %79 to i32, !dbg !1329
  %81 = icmp eq i32 %80, 0, !dbg !1331
  br i1 %81, label %82, label %84, !dbg !1332

; <label>:82:                                     ; preds = %76
  %83 = load i8*, i8** %11, align 8, !dbg !1333
  store i8 0, i8* %83, align 1, !dbg !1335
  br label %129, !dbg !1336

; <label>:84:                                     ; preds = %76, %69
  %85 = load i8*, i8** %11, align 8, !dbg !1337
  %86 = getelementptr inbounds i8, i8* %85, i64 0, !dbg !1340
  %87 = load i8, i8* %86, align 1, !dbg !1340
  %88 = sext i8 %87 to i32, !dbg !1340
  %89 = icmp eq i32 %88, 46, !dbg !1341
  br i1 %89, label %90, label %128, !dbg !1342

; <label>:90:                                     ; preds = %84
  %91 = load i8*, i8** %11, align 8, !dbg !1343
  %92 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1345
  %93 = load i8, i8* %92, align 1, !dbg !1345
  %94 = sext i8 %93 to i32, !dbg !1345
  %95 = icmp eq i32 %94, 0, !dbg !1346
  br i1 %95, label %102, label %96, !dbg !1347

; <label>:96:                                     ; preds = %90
  %97 = load i8*, i8** %11, align 8, !dbg !1348
  %98 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1350
  %99 = load i8, i8* %98, align 1, !dbg !1350
  %100 = sext i8 %99 to i32, !dbg !1350
  %101 = icmp eq i32 %100, 47, !dbg !1351
  br i1 %101, label %102, label %128, !dbg !1352

; <label>:102:                                    ; preds = %96, %90
  %103 = load i8*, i8** %4, align 8, !dbg !1353
  %104 = getelementptr inbounds i8, i8* %103, i64 0, !dbg !1355
  %105 = load i8, i8* %104, align 1, !dbg !1355
  %106 = sext i8 %105 to i32, !dbg !1355
  %107 = icmp eq i32 %106, 46, !dbg !1356
  br i1 %107, label %108, label %120, !dbg !1357

; <label>:108:                                    ; preds = %102
  %109 = load i8*, i8** %4, align 8, !dbg !1358
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1360
  %111 = load i8, i8* %110, align 1, !dbg !1360
  %112 = sext i8 %111 to i32, !dbg !1360
  %113 = icmp eq i32 %112, 0, !dbg !1361
  br i1 %113, label %128, label %114, !dbg !1362

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %4, align 8, !dbg !1363
  %116 = getelementptr inbounds i8, i8* %115, i64 1, !dbg !1365
  %117 = load i8, i8* %116, align 1, !dbg !1365
  %118 = sext i8 %117 to i32, !dbg !1365
  %119 = icmp eq i32 %118, 47, !dbg !1366
  br i1 %119, label %128, label %120, !dbg !1367

; <label>:120:                                    ; preds = %114, %102
  br label %121, !dbg !1368, !llvm.loop !1370

; <label>:121:                                    ; preds = %120
  %122 = load i8*, i8** %11, align 8, !dbg !1371
  %123 = icmp ne i8* %122, null, !dbg !1371
  br i1 %123, label %124, label %126, !dbg !1371

; <label>:124:                                    ; preds = %121
  %125 = load i8*, i8** %11, align 8, !dbg !1375
  call void @g_free(i8* %125), !dbg !1378
  store i8* null, i8** %11, align 8, !dbg !1379
  br label %126, !dbg !1380

; <label>:126:                                    ; preds = %124, %121
  br label %127, !dbg !1381

; <label>:127:                                    ; preds = %126
  br label %128, !dbg !1383

; <label>:128:                                    ; preds = %127, %114, %108, %96, %84
  br label %129

; <label>:129:                                    ; preds = %128, %82
  %130 = load i8*, i8** %4, align 8, !dbg !1384
  %131 = call i64 @strlen(i8* %130) #6, !dbg !1385
  store i64 %131, i64* %13, align 8, !dbg !1386
  %132 = load i64, i64* %13, align 8, !dbg !1387
  %133 = icmp ugt i64 %132, 0, !dbg !1389
  br i1 %133, label %134, label %144, !dbg !1390

; <label>:134:                                    ; preds = %129
  %135 = load i64, i64* %13, align 8, !dbg !1391
  %136 = sub i64 %135, 1, !dbg !1393
  %137 = load i8*, i8** %4, align 8, !dbg !1394
  %138 = getelementptr inbounds i8, i8* %137, i64 %136, !dbg !1394
  %139 = load i8, i8* %138, align 1, !dbg !1394
  %140 = sext i8 %139 to i32, !dbg !1394
  %141 = icmp eq i32 %140, 47, !dbg !1395
  br i1 %141, label %142, label %144, !dbg !1396

; <label>:142:                                    ; preds = %134
  %143 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)), !dbg !1397
  store i8* %143, i8** %9, align 8, !dbg !1399
  br label %147, !dbg !1400

; <label>:144:                                    ; preds = %134, %129
  %145 = load i8*, i8** %4, align 8, !dbg !1401
  %146 = call noalias i8* @g_path_get_basename(i8* %145), !dbg !1403
  store i8* %146, i8** %9, align 8, !dbg !1404
  br label %147

; <label>:147:                                    ; preds = %144, %142
  %148 = load i8*, i8** %9, align 8, !dbg !1405
  %149 = call i64 @strlen(i8* %148) #6, !dbg !1406
  store i64 %149, i64* %13, align 8, !dbg !1407
  br label %150, !dbg !1408

; <label>:150:                                    ; preds = %229, %195, %182, %147
  %151 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !1409
  %152 = call %struct.dirent* @readdir(%struct.__dirstream* %151), !dbg !1411
  store %struct.dirent* %152, %struct.dirent** %8, align 8, !dbg !1412
  %153 = icmp ne %struct.dirent* %152, null, !dbg !1413
  br i1 %153, label %154, label %230, !dbg !1414

; <label>:154:                                    ; preds = %150
  %155 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1415
  %156 = getelementptr inbounds %struct.dirent, %struct.dirent* %155, i32 0, i32 4, !dbg !1418
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %156, i64 0, i64 0, !dbg !1415
  %158 = load i8, i8* %157, align 1, !dbg !1415
  %159 = sext i8 %158 to i32, !dbg !1415
  %160 = icmp eq i32 %159, 46, !dbg !1419
  br i1 %160, label %161, label %197, !dbg !1420

; <label>:161:                                    ; preds = %154
  %162 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1421
  %163 = getelementptr inbounds %struct.dirent, %struct.dirent* %162, i32 0, i32 4, !dbg !1424
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %163, i64 0, i64 1, !dbg !1421
  %165 = load i8, i8* %164, align 1, !dbg !1421
  %166 = sext i8 %165 to i32, !dbg !1421
  %167 = icmp eq i32 %166, 0, !dbg !1425
  br i1 %167, label %182, label %168, !dbg !1426

; <label>:168:                                    ; preds = %161
  %169 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1427
  %170 = getelementptr inbounds %struct.dirent, %struct.dirent* %169, i32 0, i32 4, !dbg !1428
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %170, i64 0, i64 1, !dbg !1427
  %172 = load i8, i8* %171, align 1, !dbg !1427
  %173 = sext i8 %172 to i32, !dbg !1427
  %174 = icmp eq i32 %173, 46, !dbg !1429
  br i1 %174, label %175, label %183, !dbg !1430

; <label>:175:                                    ; preds = %168
  %176 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1431
  %177 = getelementptr inbounds %struct.dirent, %struct.dirent* %176, i32 0, i32 4, !dbg !1433
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %177, i64 0, i64 2, !dbg !1431
  %179 = load i8, i8* %178, align 1, !dbg !1431
  %180 = sext i8 %179 to i32, !dbg !1431
  %181 = icmp eq i32 %180, 0, !dbg !1434
  br i1 %181, label %182, label %183, !dbg !1435

; <label>:182:                                    ; preds = %175, %161
  br label %150, !dbg !1437, !llvm.loop !1438

; <label>:183:                                    ; preds = %175, %168
  %184 = load i8*, i8** %9, align 8, !dbg !1439
  %185 = getelementptr inbounds i8, i8* %184, i64 0, !dbg !1439
  %186 = load i8, i8* %185, align 1, !dbg !1439
  %187 = sext i8 %186 to i32, !dbg !1439
  %188 = icmp ne i32 %187, 46, !dbg !1441
  br i1 %188, label %195, label %189, !dbg !1442

; <label>:189:                                    ; preds = %183
  %190 = load i8*, i8** %9, align 8, !dbg !1443
  %191 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1443
  %192 = load i8, i8* %191, align 1, !dbg !1443
  %193 = sext i8 %192 to i32, !dbg !1443
  %194 = icmp eq i32 %193, 0, !dbg !1445
  br i1 %194, label %195, label %196, !dbg !1446

; <label>:195:                                    ; preds = %189, %183
  br label %150, !dbg !1447, !llvm.loop !1438

; <label>:196:                                    ; preds = %189
  br label %197, !dbg !1448

; <label>:197:                                    ; preds = %196, %154
  %198 = load i64, i64* %13, align 8, !dbg !1449
  %199 = icmp eq i64 %198, 0, !dbg !1451
  br i1 %199, label %208, label %200, !dbg !1452

; <label>:200:                                    ; preds = %197
  %201 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1453
  %202 = getelementptr inbounds %struct.dirent, %struct.dirent* %201, i32 0, i32 4, !dbg !1455
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %202, i32 0, i32 0, !dbg !1453
  %204 = load i8*, i8** %9, align 8, !dbg !1456
  %205 = load i64, i64* %13, align 8, !dbg !1457
  %206 = call i32 @strncmp(i8* %203, i8* %204, i64 %205) #6, !dbg !1458
  %207 = icmp eq i32 %206, 0, !dbg !1459
  br i1 %207, label %208, label %229, !dbg !1460

; <label>:208:                                    ; preds = %200, %197
  %209 = load i8*, i8** %11, align 8, !dbg !1461
  %210 = icmp eq i8* %209, null, !dbg !1463
  br i1 %210, label %211, label %216, !dbg !1461

; <label>:211:                                    ; preds = %208
  %212 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1464
  %213 = getelementptr inbounds %struct.dirent, %struct.dirent* %212, i32 0, i32 4, !dbg !1466
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %213, i32 0, i32 0, !dbg !1464
  %215 = call noalias i8* @g_strdup(i8* %214), !dbg !1467
  br label %222, !dbg !1468

; <label>:216:                                    ; preds = %208
  %217 = load i8*, i8** %11, align 8, !dbg !1469
  %218 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !1470
  %219 = getelementptr inbounds %struct.dirent, %struct.dirent* %218, i32 0, i32 4, !dbg !1471
  %220 = getelementptr inbounds [256 x i8], [256 x i8]* %219, i32 0, i32 0, !dbg !1470
  %221 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %217, i8* %220), !dbg !1472
  br label %222, !dbg !1473

; <label>:222:                                    ; preds = %216, %211
  %223 = phi i8* [ %215, %211 ], [ %221, %216 ], !dbg !1475
  store i8* %223, i8** %12, align 8, !dbg !1477
  %224 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1478
  %225 = load i8*, i8** %12, align 8, !dbg !1479
  %226 = load i8*, i8** %5, align 8, !dbg !1480
  %227 = call %struct._GList* @list_add_file(%struct._GList* %224, i8* %225, i8* %226), !dbg !1481
  store %struct._GList* %227, %struct._GList** %6, align 8, !dbg !1482
  %228 = load i8*, i8** %12, align 8, !dbg !1483
  call void @g_free(i8* %228), !dbg !1484
  br label %229, !dbg !1485

; <label>:229:                                    ; preds = %222, %200
  br label %150, !dbg !1486, !llvm.loop !1438

; <label>:230:                                    ; preds = %150
  %231 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !1488
  %232 = call i32 @closedir(%struct.__dirstream* %231), !dbg !1489
  %233 = load i8*, i8** %9, align 8, !dbg !1490
  call void @g_free(i8* %233), !dbg !1491
  %234 = load i8*, i8** %11, align 8, !dbg !1492
  call void @g_free(i8* %234), !dbg !1493
  %235 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1494
  store %struct._GList* %235, %struct._GList** %3, align 8, !dbg !1495
  br label %236, !dbg !1495

; <label>:236:                                    ; preds = %230, %68, %26, %18
  %237 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1496
  ret %struct._GList* %237, !dbg !1496
}

declare i8* @convert_home(i8*) #2

declare i32 @g_path_is_absolute(i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare noalias i8* @g_path_get_dirname(i8*) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare noalias i8* @g_path_get_basename(i8*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @list_add_file(%struct._GList*, i8*, i8*) #0 !dbg !1497 {
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i8*, align 8
  store %struct._GList* %0, %struct._GList** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !1500, metadata !434), !dbg !1501
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1502, metadata !434), !dbg !1503
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1504, metadata !434), !dbg !1505
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1506, metadata !434), !dbg !1540
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1541, metadata !434), !dbg !1542
  br label %10, !dbg !1543, !llvm.loop !1544

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %6, align 8, !dbg !1545
  %12 = icmp ne i8* %11, null, !dbg !1549
  br i1 %12, label %13, label %14, !dbg !1545

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1550

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.list_add_file, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)), !dbg !1553
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !1556
  br label %70, !dbg !1556

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1557

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1559
  %18 = call i8* @convert_home(i8* %17), !dbg !1560
  store i8* %18, i8** %9, align 8, !dbg !1561
  %19 = load i8*, i8** %9, align 8, !dbg !1562
  %20 = call i32 @g_path_is_absolute(i8* %19), !dbg !1564
  %21 = icmp ne i32 %20, 0, !dbg !1564
  br i1 %21, label %22, label %40, !dbg !1565

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %9, align 8, !dbg !1566
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !1568
  %25 = load i8, i8* %24, align 1, !dbg !1568
  %26 = sext i8 %25 to i32, !dbg !1568
  %27 = icmp eq i32 %26, 46, !dbg !1569
  br i1 %27, label %28, label %48, !dbg !1570

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %9, align 8, !dbg !1571
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1573
  %31 = load i8, i8* %30, align 1, !dbg !1573
  %32 = sext i8 %31 to i32, !dbg !1573
  %33 = icmp eq i32 %32, 0, !dbg !1574
  br i1 %33, label %40, label %34, !dbg !1575

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %9, align 8, !dbg !1576
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1578
  %37 = load i8, i8* %36, align 1, !dbg !1578
  %38 = sext i8 %37 to i32, !dbg !1578
  %39 = icmp eq i32 %38, 47, !dbg !1579
  br i1 %39, label %40, label %48, !dbg !1580

; <label>:40:                                     ; preds = %34, %28, %16
  %41 = load i8*, i8** %7, align 8, !dbg !1581
  %42 = icmp ne i8* %41, null, !dbg !1583
  br i1 %42, label %43, label %48, !dbg !1584

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %9, align 8, !dbg !1585
  call void @g_free(i8* %44), !dbg !1587
  %45 = load i8*, i8** %7, align 8, !dbg !1588
  %46 = load i8*, i8** %6, align 8, !dbg !1589
  %47 = call noalias i8* (i8*, ...) @g_strconcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* %46, i8* null), !dbg !1590
  store i8* %47, i8** %9, align 8, !dbg !1591
  br label %48, !dbg !1592

; <label>:48:                                     ; preds = %43, %40, %34, %22
  %49 = load i8*, i8** %9, align 8, !dbg !1593
  %50 = call i32 @stat(i8* %49, %struct.stat* %8) #7, !dbg !1595
  %51 = icmp eq i32 %50, 0, !dbg !1596
  br i1 %51, label %52, label %67, !dbg !1597

; <label>:52:                                     ; preds = %48
  %53 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1598
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !1600
  %55 = load i32, i32* %54, align 8, !dbg !1600
  %56 = and i32 %55, 61440, !dbg !1601
  %57 = icmp eq i32 %56, 16384, !dbg !1602
  br i1 %57, label %61, label %58, !dbg !1603

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** %6, align 8, !dbg !1604
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !1606
  br label %64, !dbg !1607

; <label>:61:                                     ; preds = %52
  %62 = load i8*, i8** %6, align 8, !dbg !1608
  %63 = call noalias i8* (i8*, ...) @g_strconcat(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !1609
  br label %64, !dbg !1610

; <label>:64:                                     ; preds = %61, %58
  %65 = phi i8* [ %60, %58 ], [ %63, %61 ], !dbg !1612
  %66 = call %struct._GList* @g_list_append(%struct._GList* %53, i8* %65), !dbg !1614
  store %struct._GList* %66, %struct._GList** %5, align 8, !dbg !1615
  br label %67, !dbg !1616

; <label>:67:                                     ; preds = %64, %48
  %68 = load i8*, i8** %9, align 8, !dbg !1617
  call void @g_free(i8* %68), !dbg !1618
  %69 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1619
  store %struct._GList* %69, %struct._GList** %4, align 8, !dbg !1620
  br label %70, !dbg !1620

; <label>:70:                                     ; preds = %67, %14
  %71 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1621
  ret %struct._GList* %71, !dbg !1621
}

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: nounwind uwtable
define void @completion_init() #0 !dbg !1622 {
  store %struct._GList* null, %struct._GList** @complist, align 8, !dbg !1623
  store i8* null, i8** @last_line, align 8, !dbg !1624
  store i32 -1, i32* @last_line_pos, align 4, !dbg !1625
  call void @chat_completion_init(), !dbg !1626
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1627
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1628
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_complete_erase to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1629
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_set to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1630
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_toggle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1631
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1632
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1633
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1634
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1635
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1636
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1637
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1638
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)), !dbg !1639
  ret void, !dbg !1640
}

declare void @chat_completion_init() #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_completion(i8*) #0 !dbg !1641 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1644, metadata !434), !dbg !1645
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !1646, metadata !434), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1648, metadata !434), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1650, metadata !434), !dbg !1651
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1652, metadata !434), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1654, metadata !434), !dbg !1655
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1656, metadata !434), !dbg !1657
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1658, metadata !434), !dbg !1659
  %11 = load i8*, i8** %2, align 8, !dbg !1660
  %12 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %11, i8** %8, i32 24578, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %struct._GHashTable** %3, i8** %6, i8** %7), !dbg !1662
  %13 = icmp ne i32 %12, 0, !dbg !1662
  br i1 %13, label %15, label %14, !dbg !1663

; <label>:14:                                     ; preds = %1
  br label %158, !dbg !1664

; <label>:15:                                     ; preds = %1
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1665
  %17 = load i8*, i8** %7, align 8, !dbg !1666
  %18 = load i8, i8* %17, align 1, !dbg !1667
  %19 = sext i8 %18 to i32, !dbg !1667
  %20 = icmp ne i32 %19, 0, !dbg !1668
  %21 = zext i1 %20 to i32, !dbg !1668
  %22 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %21), !dbg !1669
  store %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE** %4, align 8, !dbg !1670
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1671
  %24 = icmp ne %struct._CONFIG_NODE* %23, null, !dbg !1673
  br i1 %24, label %25, label %43, !dbg !1674

; <label>:25:                                     ; preds = %15
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1675
  %27 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %26, i32 0, i32 0, !dbg !1677
  %28 = load i32, i32* %27, align 8, !dbg !1677
  %29 = icmp ne i32 %28, 2, !dbg !1678
  br i1 %29, label %30, label %43, !dbg !1679

; <label>:30:                                     ; preds = %25
  %31 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1680
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1682
  %33 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %32, i32 0, i32 4, !dbg !1683
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %33, align 8, !dbg !1683
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1684
  call void @config_node_remove(%struct._CONFIG_REC* %31, %struct._CONFIG_NODE* %34, %struct._CONFIG_NODE* %35), !dbg !1685
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1686
  %37 = load i8*, i8** %7, align 8, !dbg !1687
  %38 = load i8, i8* %37, align 1, !dbg !1688
  %39 = sext i8 %38 to i32, !dbg !1688
  %40 = icmp ne i32 %39, 0, !dbg !1689
  %41 = zext i1 %40 to i32, !dbg !1689
  %42 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %41), !dbg !1690
  store %struct._CONFIG_NODE* %42, %struct._CONFIG_NODE** %4, align 8, !dbg !1691
  br label %43, !dbg !1692

; <label>:43:                                     ; preds = %30, %25, %15
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1693
  %45 = icmp eq %struct._CONFIG_NODE* %44, null, !dbg !1695
  br i1 %45, label %56, label %46, !dbg !1696

; <label>:46:                                     ; preds = %43
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1697
  %48 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %47, i32 0, i32 2, !dbg !1699
  %49 = load i8*, i8** %48, align 8, !dbg !1699
  %50 = icmp eq i8* %49, null, !dbg !1700
  br i1 %50, label %51, label %58, !dbg !1701

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %7, align 8, !dbg !1702
  %53 = load i8, i8* %52, align 1, !dbg !1704
  %54 = sext i8 %53 to i32, !dbg !1704
  %55 = icmp eq i32 %54, 0, !dbg !1705
  br i1 %55, label %56, label %58, !dbg !1706

; <label>:56:                                     ; preds = %51, %43
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 221), !dbg !1707
  %57 = load i8*, i8** %8, align 8, !dbg !1709
  call void @cmd_params_free(i8* %57), !dbg !1710
  br label %158, !dbg !1711

; <label>:58:                                     ; preds = %51, %46
  %59 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1712
  %60 = call i8* @g_hash_table_lookup(%struct._GHashTable* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)), !dbg !1714
  %61 = icmp ne i8* %60, null, !dbg !1715
  br i1 %61, label %62, label %74, !dbg !1716

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %6, align 8, !dbg !1717
  %64 = load i8, i8* %63, align 1, !dbg !1719
  %65 = sext i8 %64 to i32, !dbg !1719
  %66 = icmp ne i32 %65, 0, !dbg !1720
  br i1 %66, label %67, label %74, !dbg !1721

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %6, align 8, !dbg !1722
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 222, i8* %68), !dbg !1724
  %69 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1725
  %70 = load i8*, i8** %6, align 8, !dbg !1726
  %71 = call i32 @config_set_str(%struct._CONFIG_REC* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %70, i8* null), !dbg !1727
  %72 = load i8*, i8** %6, align 8, !dbg !1728
  %73 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* %72), !dbg !1729
  br label %156, !dbg !1730

; <label>:74:                                     ; preds = %62, %58
  %75 = load i8*, i8** %6, align 8, !dbg !1731
  %76 = load i8, i8* %75, align 1, !dbg !1734
  %77 = sext i8 %76 to i32, !dbg !1734
  %78 = icmp ne i32 %77, 0, !dbg !1735
  br i1 %78, label %79, label %112, !dbg !1736

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %7, align 8, !dbg !1737
  %81 = load i8, i8* %80, align 1, !dbg !1739
  %82 = sext i8 %81 to i32, !dbg !1739
  %83 = icmp ne i32 %82, 0, !dbg !1740
  br i1 %83, label %84, label %112, !dbg !1741

; <label>:84:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1742, metadata !434), !dbg !1744
  %85 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !1745
  %86 = call i8* @g_hash_table_lookup(%struct._GHashTable* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1746
  %87 = icmp ne i8* %86, null, !dbg !1747
  %88 = zext i1 %87 to i32, !dbg !1747
  store i32 %88, i32* %10, align 4, !dbg !1744
  %89 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1748
  %90 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1749
  %91 = load i8*, i8** %6, align 8, !dbg !1750
  %92 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %89, %struct._CONFIG_NODE* %90, i8* %91, i32 2), !dbg !1751
  store %struct._CONFIG_NODE* %92, %struct._CONFIG_NODE** %4, align 8, !dbg !1752
  %93 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1753
  %94 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1754
  %95 = load i8*, i8** %7, align 8, !dbg !1755
  call void @config_node_set_str(%struct._CONFIG_REC* %93, %struct._CONFIG_NODE* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %95), !dbg !1756
  %96 = load i32, i32* %10, align 4, !dbg !1757
  %97 = icmp ne i32 %96, 0, !dbg !1757
  br i1 %97, label %98, label %101, !dbg !1759

; <label>:98:                                     ; preds = %84
  %99 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1760
  %100 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1761
  call void @config_node_set_bool(%struct._CONFIG_REC* %99, %struct._CONFIG_NODE* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 1), !dbg !1762
  br label %104, !dbg !1762

; <label>:101:                                    ; preds = %84
  %102 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1763
  %103 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1764
  call void @config_node_set_str(%struct._CONFIG_REC* %102, %struct._CONFIG_NODE* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* null), !dbg !1765
  br label %104

; <label>:104:                                    ; preds = %101, %98
  %105 = load i8*, i8** %6, align 8, !dbg !1766
  %106 = load i8*, i8** %7, align 8, !dbg !1767
  %107 = load i32, i32* %10, align 4, !dbg !1768
  %108 = icmp ne i32 %107, 0, !dbg !1768
  %109 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), !dbg !1768
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 224, i8* %105, i8* %106, i8* %109), !dbg !1769
  %110 = load i8*, i8** %6, align 8, !dbg !1770
  %111 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 1, i8* %110), !dbg !1771
  br label %155, !dbg !1772

; <label>:112:                                    ; preds = %79, %74
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 223), !dbg !1773
  %113 = load i8*, i8** %6, align 8, !dbg !1775
  %114 = call i64 @strlen(i8* %113) #6, !dbg !1776
  %115 = trunc i64 %114 to i32, !dbg !1776
  store i32 %115, i32* %9, align 4, !dbg !1777
  %116 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1778
  %117 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %116, i32 0, i32 2, !dbg !1780
  %118 = load i8*, i8** %117, align 8, !dbg !1780
  %119 = bitcast i8* %118 to %struct._GSList*, !dbg !1778
  store %struct._GSList* %119, %struct._GSList** %5, align 8, !dbg !1781
  br label %120, !dbg !1782

; <label>:120:                                    ; preds = %150, %112
  %121 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1783
  %122 = icmp ne %struct._GSList* %121, null, !dbg !1786
  br i1 %122, label %123, label %154, !dbg !1787

; <label>:123:                                    ; preds = %120
  %124 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1788
  %125 = getelementptr inbounds %struct._GSList, %struct._GSList* %124, i32 0, i32 0, !dbg !1790
  %126 = load i8*, i8** %125, align 8, !dbg !1790
  %127 = bitcast i8* %126 to %struct._CONFIG_NODE*, !dbg !1788
  store %struct._CONFIG_NODE* %127, %struct._CONFIG_NODE** %4, align 8, !dbg !1791
  %128 = load i32, i32* %9, align 4, !dbg !1792
  %129 = icmp eq i32 %128, 0, !dbg !1794
  br i1 %129, label %139, label %130, !dbg !1795

; <label>:130:                                    ; preds = %123
  %131 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1796
  %132 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %131, i32 0, i32 1, !dbg !1797
  %133 = load i8*, i8** %132, align 8, !dbg !1797
  %134 = load i8*, i8** %6, align 8, !dbg !1798
  %135 = load i32, i32* %9, align 4, !dbg !1799
  %136 = sext i32 %135 to i64, !dbg !1799
  %137 = call i32 @g_ascii_strncasecmp(i8* %133, i8* %134, i64 %136), !dbg !1800
  %138 = icmp eq i32 %137, 0, !dbg !1801
  br i1 %138, label %139, label %149, !dbg !1802

; <label>:139:                                    ; preds = %130, %123
  %140 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1804
  %141 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %140, i32 0, i32 1, !dbg !1806
  %142 = load i8*, i8** %141, align 8, !dbg !1806
  %143 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1807
  %144 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)), !dbg !1808
  %145 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1809
  %146 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0), !dbg !1810
  %147 = icmp ne i32 %146, 0, !dbg !1812
  %148 = select i1 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), !dbg !1812
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 224, i8* %142, i8* %144, i8* %148), !dbg !1813
  br label %149, !dbg !1815

; <label>:149:                                    ; preds = %139, %130
  br label %150, !dbg !1816

; <label>:150:                                    ; preds = %149
  %151 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1817
  %152 = getelementptr inbounds %struct._GSList, %struct._GSList* %151, i32 0, i32 1, !dbg !1819
  %153 = load %struct._GSList*, %struct._GSList** %152, align 8, !dbg !1819
  store %struct._GSList* %153, %struct._GSList** %5, align 8, !dbg !1820
  br label %120, !dbg !1821, !llvm.loop !1822

; <label>:154:                                    ; preds = %120
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 225), !dbg !1824
  br label %155

; <label>:155:                                    ; preds = %154, %104
  br label %156

; <label>:156:                                    ; preds = %155, %67
  %157 = load i8*, i8** %8, align 8, !dbg !1825
  call void @cmd_params_free(i8* %157), !dbg !1826
  br label %158, !dbg !1827

; <label>:158:                                    ; preds = %156, %56, %14
  ret void, !dbg !1828
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_complete_word(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !1830 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !1834, metadata !434), !dbg !1835
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1836, metadata !434), !dbg !1837
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1838, metadata !434), !dbg !1839
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1840, metadata !434), !dbg !1841
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1842, metadata !434), !dbg !1843
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1844, metadata !434), !dbg !1845
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1846, metadata !434), !dbg !1847
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1848, metadata !434), !dbg !1849
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1850, metadata !434), !dbg !1851
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1852, metadata !434), !dbg !1853
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1854, metadata !434), !dbg !1855
  br label %18, !dbg !1856, !llvm.loop !1857

; <label>:18:                                     ; preds = %5
  %19 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1858
  %20 = icmp ne %struct._GList** %19, null, !dbg !1862
  br i1 %20, label %21, label %22, !dbg !1858

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1863

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !1866
  br label %255, !dbg !1869

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1870

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !1872, !llvm.loop !1873

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %8, align 8, !dbg !1874
  %27 = icmp ne i8* %26, null, !dbg !1878
  br i1 %27, label %28, label %29, !dbg !1874

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !1879

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !1882
  br label %255, !dbg !1885

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1886

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1888, !llvm.loop !1889

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !1890
  %34 = icmp ne i8* %33, null, !dbg !1894
  br i1 %34, label %35, label %36, !dbg !1890

; <label>:35:                                     ; preds = %32
  br label %37, !dbg !1895

; <label>:36:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0)), !dbg !1898
  br label %255, !dbg !1901

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !1902

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %8, align 8, !dbg !1904
  %40 = call i8* @completion_find(i8* %39, i32 0), !dbg !1905
  store i8* %40, i8** %11, align 8, !dbg !1906
  %41 = load i8*, i8** %11, align 8, !dbg !1907
  %42 = icmp ne i8* %41, null, !dbg !1909
  br i1 %42, label %43, label %50, !dbg !1910

; <label>:43:                                     ; preds = %38
  %44 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1911
  %45 = load %struct._GList*, %struct._GList** %44, align 8, !dbg !1913
  %46 = load i8*, i8** %11, align 8, !dbg !1914
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1915
  %48 = call %struct._GList* @g_list_append(%struct._GList* %45, i8* %47), !dbg !1916
  %49 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1918
  store %struct._GList* %48, %struct._GList** %49, align 8, !dbg !1919
  call void @signal_stop(), !dbg !1920
  br label %255, !dbg !1921

; <label>:50:                                     ; preds = %38
  %51 = load i8*, i8** %9, align 8, !dbg !1922
  %52 = load i8, i8* %51, align 1, !dbg !1924
  %53 = sext i8 %52 to i32, !dbg !1924
  %54 = icmp ne i32 %53, 0, !dbg !1925
  br i1 %54, label %55, label %78, !dbg !1926

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %8, align 8, !dbg !1927
  %57 = load i8, i8* %56, align 1, !dbg !1929
  %58 = sext i8 %57 to i32, !dbg !1929
  %59 = icmp eq i32 %58, 47, !dbg !1930
  br i1 %59, label %65, label %60, !dbg !1931

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %8, align 8, !dbg !1932
  %62 = load i8, i8* %61, align 1, !dbg !1934
  %63 = sext i8 %62 to i32, !dbg !1934
  %64 = icmp eq i32 %63, 126, !dbg !1935
  br i1 %64, label %65, label %78, !dbg !1936

; <label>:65:                                     ; preds = %60, %55
  %66 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1937
  %67 = load %struct._GList*, %struct._GList** %66, align 8, !dbg !1939
  %68 = load i8*, i8** %8, align 8, !dbg !1940
  %69 = call %struct._GList* @filename_complete(i8* %68, i8* null), !dbg !1941
  %70 = call %struct._GList* @g_list_concat(%struct._GList* %67, %struct._GList* %69), !dbg !1942
  %71 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1944
  store %struct._GList* %70, %struct._GList** %71, align 8, !dbg !1945
  %72 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1946
  %73 = load %struct._GList*, %struct._GList** %72, align 8, !dbg !1948
  %74 = icmp ne %struct._GList* %73, null, !dbg !1949
  br i1 %74, label %75, label %77, !dbg !1950

; <label>:75:                                     ; preds = %65
  %76 = load i32*, i32** %10, align 8, !dbg !1951
  store i32 0, i32* %76, align 4, !dbg !1953
  call void @signal_stop(), !dbg !1954
  br label %255, !dbg !1955

; <label>:77:                                     ; preds = %65
  br label %78, !dbg !1956

; <label>:78:                                     ; preds = %77, %60, %50
  %79 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !1957
  store i8* %79, i8** %12, align 8, !dbg !1958
  %80 = load i8*, i8** %8, align 8, !dbg !1959
  %81 = load i8, i8* %80, align 1, !dbg !1961
  %82 = sext i8 %81 to i32, !dbg !1961
  %83 = icmp ne i32 %82, 0, !dbg !1962
  br i1 %83, label %84, label %164, !dbg !1963

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %9, align 8, !dbg !1964
  %86 = load i8, i8* %85, align 1, !dbg !1966
  %87 = sext i8 %86 to i32, !dbg !1966
  %88 = icmp eq i32 %87, 0, !dbg !1967
  br i1 %88, label %89, label %96, !dbg !1968

; <label>:89:                                     ; preds = %84
  %90 = load i8*, i8** %12, align 8, !dbg !1969
  %91 = load i8*, i8** %8, align 8, !dbg !1971
  %92 = load i8, i8* %91, align 1, !dbg !1972
  %93 = sext i8 %92 to i32, !dbg !1972
  %94 = call i8* @strchr(i8* %90, i32 %93) #6, !dbg !1973
  %95 = icmp ne i8* %94, null, !dbg !1973
  br i1 %95, label %114, label %96, !dbg !1974

; <label>:96:                                     ; preds = %89, %84
  %97 = load i8*, i8** %9, align 8, !dbg !1975
  %98 = load i8, i8* %97, align 1, !dbg !1976
  %99 = sext i8 %98 to i32, !dbg !1976
  %100 = icmp ne i32 %99, 0, !dbg !1977
  br i1 %100, label %101, label %164, !dbg !1978

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %9, align 8, !dbg !1979
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1979
  %104 = load i8, i8* %103, align 1, !dbg !1979
  %105 = sext i8 %104 to i32, !dbg !1979
  %106 = icmp eq i32 %105, 0, !dbg !1980
  br i1 %106, label %107, label %164, !dbg !1981

; <label>:107:                                    ; preds = %101
  %108 = load i8*, i8** %12, align 8, !dbg !1982
  %109 = load i8*, i8** %9, align 8, !dbg !1983
  %110 = load i8, i8* %109, align 1, !dbg !1984
  %111 = sext i8 %110 to i32, !dbg !1984
  %112 = call i8* @strchr(i8* %108, i32 %111) #6, !dbg !1985
  %113 = icmp ne i8* %112, null, !dbg !1985
  br i1 %113, label %114, label %164, !dbg !1986

; <label>:114:                                    ; preds = %107, %89
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1988, metadata !434), !dbg !1991
  %115 = load i8*, i8** %9, align 8, !dbg !1992
  %116 = load i8, i8* %115, align 1, !dbg !1993
  %117 = sext i8 %116 to i32, !dbg !1993
  %118 = icmp eq i32 %117, 0, !dbg !1994
  %119 = select i1 %118, i32 1, i32 0, !dbg !1993
  store i32 %119, i32* %17, align 4, !dbg !1991
  %120 = load i8*, i8** %8, align 8, !dbg !1995
  %121 = load i32, i32* %17, align 4, !dbg !1996
  %122 = icmp ne i32 %121, 0, !dbg !1996
  %123 = select i1 %122, i32 1, i32 0, !dbg !1996
  %124 = sext i32 %123 to i64, !dbg !1997
  %125 = getelementptr inbounds i8, i8* %120, i64 %124, !dbg !1997
  %126 = load i32, i32* %17, align 4, !dbg !1998
  %127 = icmp ne i32 %126, 0, !dbg !1998
  br i1 %127, label %128, label %132, !dbg !1998

; <label>:128:                                    ; preds = %114
  %129 = load i8*, i8** %8, align 8, !dbg !1999
  %130 = load i8, i8* %129, align 1, !dbg !2001
  %131 = sext i8 %130 to i32, !dbg !2001
  br label %133, !dbg !2002

; <label>:132:                                    ; preds = %114
  br label %133, !dbg !2003

; <label>:133:                                    ; preds = %132, %128
  %134 = phi i32 [ %131, %128 ], [ 0, %132 ], !dbg !2005
  %135 = trunc i32 %134 to i8, !dbg !2005
  %136 = call %struct._GList* @completion_get_commands(i8* %125, i8 signext %135), !dbg !2007
  %137 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2008
  store %struct._GList* %136, %struct._GList** %137, align 8, !dbg !2009
  %138 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2010
  %139 = load %struct._GList*, %struct._GList** %138, align 8, !dbg !2011
  %140 = load i8*, i8** %8, align 8, !dbg !2012
  %141 = load i32, i32* %17, align 4, !dbg !2013
  %142 = icmp ne i32 %141, 0, !dbg !2013
  %143 = select i1 %142, i32 1, i32 0, !dbg !2013
  %144 = sext i32 %143 to i64, !dbg !2014
  %145 = getelementptr inbounds i8, i8* %140, i64 %144, !dbg !2014
  %146 = load i32, i32* %17, align 4, !dbg !2015
  %147 = icmp ne i32 %146, 0, !dbg !2015
  br i1 %147, label %148, label %152, !dbg !2015

; <label>:148:                                    ; preds = %133
  %149 = load i8*, i8** %8, align 8, !dbg !2016
  %150 = load i8, i8* %149, align 1, !dbg !2017
  %151 = sext i8 %150 to i32, !dbg !2017
  br label %153, !dbg !2018

; <label>:152:                                    ; preds = %133
  br label %153, !dbg !2019

; <label>:153:                                    ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ], !dbg !2020
  %155 = trunc i32 %154 to i8, !dbg !2020
  %156 = call %struct._GList* @completion_get_aliases(i8* %145, i8 signext %155), !dbg !2021
  %157 = call %struct._GList* @g_list_concat(%struct._GList* %139, %struct._GList* %156), !dbg !2022
  %158 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2023
  store %struct._GList* %157, %struct._GList** %158, align 8, !dbg !2024
  %159 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2025
  %160 = load %struct._GList*, %struct._GList** %159, align 8, !dbg !2027
  %161 = icmp ne %struct._GList* %160, null, !dbg !2028
  br i1 %161, label %162, label %163, !dbg !2029

; <label>:162:                                    ; preds = %153
  call void @signal_stop(), !dbg !2030
  br label %163, !dbg !2030

; <label>:163:                                    ; preds = %162, %153
  br label %255, !dbg !2032

; <label>:164:                                    ; preds = %107, %101, %96, %78
  %165 = load i8*, i8** %9, align 8, !dbg !2033
  %166 = load i8, i8* %165, align 1, !dbg !2035
  %167 = sext i8 %166 to i32, !dbg !2035
  %168 = icmp eq i32 %167, 0, !dbg !2036
  br i1 %168, label %169, label %170, !dbg !2037

; <label>:169:                                    ; preds = %164
  br label %255, !dbg !2038

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** %12, align 8, !dbg !2039
  %172 = load i8*, i8** %9, align 8, !dbg !2040
  %173 = load i8, i8* %172, align 1, !dbg !2041
  %174 = sext i8 %173 to i32, !dbg !2041
  %175 = call i8* @strchr(i8* %171, i32 %174) #6, !dbg !2042
  store i8* %175, i8** %12, align 8, !dbg !2043
  %176 = load i8*, i8** %12, align 8, !dbg !2044
  %177 = icmp eq i8* %176, null, !dbg !2046
  br i1 %177, label %178, label %179, !dbg !2047

; <label>:178:                                    ; preds = %170
  br label %255, !dbg !2048

; <label>:179:                                    ; preds = %170
  %180 = load i8*, i8** %9, align 8, !dbg !2050
  %181 = getelementptr inbounds i8, i8* %180, i64 1, !dbg !2050
  %182 = load i8, i8* %181, align 1, !dbg !2050
  %183 = sext i8 %182 to i32, !dbg !2050
  %184 = load i8*, i8** %12, align 8, !dbg !2051
  %185 = load i8, i8* %184, align 1, !dbg !2052
  %186 = sext i8 %185 to i32, !dbg !2052
  %187 = icmp eq i32 %183, %186, !dbg !2053
  br i1 %187, label %188, label %192, !dbg !2050

; <label>:188:                                    ; preds = %179
  %189 = load i8*, i8** %9, align 8, !dbg !2054
  %190 = getelementptr inbounds i8, i8* %189, i64 2, !dbg !2056
  %191 = call noalias i8* @g_strdup(i8* %190), !dbg !2057
  br label %196, !dbg !2058

; <label>:192:                                    ; preds = %179
  %193 = load i8*, i8** %9, align 8, !dbg !2059
  %194 = getelementptr inbounds i8, i8* %193, i64 1, !dbg !2060
  %195 = call i8* @expand_aliases(i8* %194), !dbg !2061
  br label %196, !dbg !2062

; <label>:196:                                    ; preds = %192, %188
  %197 = phi i8* [ %191, %188 ], [ %195, %192 ], !dbg !2064
  store i8* %197, i8** %16, align 8, !dbg !2065
  %198 = load i8*, i8** %16, align 8, !dbg !2066
  %199 = call i8* @line_get_command(i8* %198, i8** %15, i32 0), !dbg !2067
  store i8* %199, i8** %14, align 8, !dbg !2068
  %200 = load i8*, i8** %14, align 8, !dbg !2069
  %201 = icmp eq i8* %200, null, !dbg !2071
  br i1 %201, label %202, label %204, !dbg !2072

; <label>:202:                                    ; preds = %196
  %203 = load i8*, i8** %16, align 8, !dbg !2073
  call void @g_free(i8* %203), !dbg !2075
  br label %255, !dbg !2076

; <label>:204:                                    ; preds = %196
  %205 = load i8*, i8** %8, align 8, !dbg !2077
  %206 = load i8, i8* %205, align 1, !dbg !2079
  %207 = sext i8 %206 to i32, !dbg !2079
  %208 = icmp eq i32 %207, 45, !dbg !2080
  br i1 %208, label %209, label %222, !dbg !2081

; <label>:209:                                    ; preds = %204
  %210 = load i8*, i8** %14, align 8, !dbg !2082
  %211 = load i8*, i8** %8, align 8, !dbg !2084
  %212 = getelementptr inbounds i8, i8* %211, i64 1, !dbg !2085
  %213 = call %struct._GList* @completion_get_options(i8* %210, i8* %212), !dbg !2086
  %214 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2087
  store %struct._GList* %213, %struct._GList** %214, align 8, !dbg !2088
  %215 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2089
  %216 = load %struct._GList*, %struct._GList** %215, align 8, !dbg !2091
  %217 = icmp ne %struct._GList* %216, null, !dbg !2092
  br i1 %217, label %218, label %219, !dbg !2093

; <label>:218:                                    ; preds = %209
  call void @signal_stop(), !dbg !2094
  br label %219, !dbg !2094

; <label>:219:                                    ; preds = %218, %209
  %220 = load i8*, i8** %14, align 8, !dbg !2096
  call void @g_free(i8* %220), !dbg !2097
  %221 = load i8*, i8** %16, align 8, !dbg !2098
  call void @g_free(i8* %221), !dbg !2099
  br label %255, !dbg !2100

; <label>:222:                                    ; preds = %204
  %223 = load i8*, i8** %14, align 8, !dbg !2101
  %224 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* %223, i8* null), !dbg !2102
  store i8* %224, i8** %13, align 8, !dbg !2103
  %225 = load i8*, i8** %13, align 8, !dbg !2104
  %226 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2105
  %227 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2106
  %228 = load i8*, i8** %8, align 8, !dbg !2107
  %229 = load i8*, i8** %15, align 8, !dbg !2108
  %230 = load i32*, i32** %10, align 8, !dbg !2109
  %231 = call i32 (i8*, i32, ...) @signal_emit(i8* %225, i32 5, %struct._GList** %226, %struct._WINDOW_REC* %227, i8* %228, i8* %229, i32* %230), !dbg !2110
  %232 = load i8*, i8** %16, align 8, !dbg !2111
  %233 = call i32 @command_have_sub(i8* %232), !dbg !2113
  %234 = icmp ne i32 %233, 0, !dbg !2113
  br i1 %234, label %235, label %246, !dbg !2114

; <label>:235:                                    ; preds = %222
  %236 = load i8*, i8** %14, align 8, !dbg !2115
  call void @g_free(i8* %236), !dbg !2117
  %237 = load i8*, i8** %16, align 8, !dbg !2118
  %238 = load i8*, i8** %8, align 8, !dbg !2119
  %239 = call noalias i8* (i8*, ...) @g_strconcat(i8* %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* %238, i8* null), !dbg !2120
  store i8* %239, i8** %14, align 8, !dbg !2121
  %240 = load i8*, i8** %14, align 8, !dbg !2122
  %241 = call %struct._GList* @completion_get_subcommands(i8* %240), !dbg !2123
  %242 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2124
  %243 = load %struct._GList*, %struct._GList** %242, align 8, !dbg !2125
  %244 = call %struct._GList* @g_list_concat(%struct._GList* %241, %struct._GList* %243), !dbg !2126
  %245 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2128
  store %struct._GList* %244, %struct._GList** %245, align 8, !dbg !2129
  br label %246, !dbg !2130

; <label>:246:                                    ; preds = %235, %222
  %247 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2131
  %248 = load %struct._GList*, %struct._GList** %247, align 8, !dbg !2133
  %249 = icmp ne %struct._GList* %248, null, !dbg !2134
  br i1 %249, label %250, label %251, !dbg !2135

; <label>:250:                                    ; preds = %246
  call void @signal_stop(), !dbg !2136
  br label %251, !dbg !2136

; <label>:251:                                    ; preds = %250, %246
  %252 = load i8*, i8** %13, align 8, !dbg !2138
  call void @g_free(i8* %252), !dbg !2139
  %253 = load i8*, i8** %14, align 8, !dbg !2140
  call void @g_free(i8* %253), !dbg !2141
  %254 = load i8*, i8** %16, align 8, !dbg !2142
  call void @g_free(i8* %254), !dbg !2143
  br label %255, !dbg !2144

; <label>:255:                                    ; preds = %251, %219, %202, %178, %169, %163, %75, %43, %36, %29, %22
  ret void, !dbg !2145
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_erase(%struct._WINDOW_REC*, i8*, i8*) #0 !dbg !2146 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2149, metadata !434), !dbg !2150
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2151, metadata !434), !dbg !2152
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2153, metadata !434), !dbg !2154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2155, metadata !434), !dbg !2156
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2157, metadata !434), !dbg !2158
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2159, metadata !434), !dbg !2160
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2161, metadata !434), !dbg !2162
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2163, metadata !434), !dbg !2164
  %12 = load i8*, i8** %6, align 8, !dbg !2165
  %13 = load i8, i8* %12, align 1, !dbg !2167
  %14 = sext i8 %13 to i32, !dbg !2167
  %15 = icmp eq i32 %14, 0, !dbg !2168
  br i1 %15, label %16, label %17, !dbg !2169

; <label>:16:                                     ; preds = %3
  br label %63, !dbg !2170

; <label>:17:                                     ; preds = %3
  %18 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !2171
  store i8* %18, i8** %7, align 8, !dbg !2172
  %19 = load i8*, i8** %7, align 8, !dbg !2173
  %20 = load i8*, i8** %6, align 8, !dbg !2174
  %21 = load i8, i8* %20, align 1, !dbg !2175
  %22 = sext i8 %21 to i32, !dbg !2175
  %23 = call i8* @strchr(i8* %19, i32 %22) #6, !dbg !2176
  store i8* %23, i8** %7, align 8, !dbg !2177
  %24 = load i8*, i8** %7, align 8, !dbg !2178
  %25 = icmp eq i8* %24, null, !dbg !2180
  br i1 %25, label %26, label %27, !dbg !2181

; <label>:26:                                     ; preds = %17
  br label %63, !dbg !2182

; <label>:27:                                     ; preds = %17
  %28 = load i8*, i8** %6, align 8, !dbg !2183
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2183
  %30 = load i8, i8* %29, align 1, !dbg !2183
  %31 = sext i8 %30 to i32, !dbg !2183
  %32 = load i8*, i8** %7, align 8, !dbg !2184
  %33 = load i8, i8* %32, align 1, !dbg !2185
  %34 = sext i8 %33 to i32, !dbg !2185
  %35 = icmp eq i32 %31, %34, !dbg !2186
  br i1 %35, label %36, label %40, !dbg !2183

; <label>:36:                                     ; preds = %27
  %37 = load i8*, i8** %6, align 8, !dbg !2187
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !2189
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !2190
  br label %44, !dbg !2191

; <label>:40:                                     ; preds = %27
  %41 = load i8*, i8** %6, align 8, !dbg !2192
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !2193
  %43 = call i8* @expand_aliases(i8* %42), !dbg !2194
  br label %44, !dbg !2195

; <label>:44:                                     ; preds = %40, %36
  %45 = phi i8* [ %39, %36 ], [ %43, %40 ], !dbg !2197
  store i8* %45, i8** %8, align 8, !dbg !2199
  %46 = load i8*, i8** %8, align 8, !dbg !2200
  %47 = call i8* @line_get_command(i8* %46, i8** %10, i32 0), !dbg !2201
  store i8* %47, i8** %9, align 8, !dbg !2202
  %48 = load i8*, i8** %9, align 8, !dbg !2203
  %49 = icmp eq i8* %48, null, !dbg !2205
  br i1 %49, label %50, label %52, !dbg !2206

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %8, align 8, !dbg !2207
  call void @g_free(i8* %51), !dbg !2209
  br label %63, !dbg !2210

; <label>:52:                                     ; preds = %44
  %53 = load i8*, i8** %9, align 8, !dbg !2211
  %54 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i32 0, i32 0), i8* %53, i8* null), !dbg !2212
  store i8* %54, i8** %11, align 8, !dbg !2213
  %55 = load i8*, i8** %11, align 8, !dbg !2214
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2215
  %57 = load i8*, i8** %5, align 8, !dbg !2216
  %58 = load i8*, i8** %10, align 8, !dbg !2217
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* %55, i32 3, %struct._WINDOW_REC* %56, i8* %57, i8* %58), !dbg !2218
  %60 = load i8*, i8** %11, align 8, !dbg !2219
  call void @g_free(i8* %60), !dbg !2220
  %61 = load i8*, i8** %9, align 8, !dbg !2221
  call void @g_free(i8* %61), !dbg !2222
  %62 = load i8*, i8** %8, align 8, !dbg !2223
  call void @g_free(i8* %62), !dbg !2224
  br label %63, !dbg !2225

; <label>:63:                                     ; preds = %52, %50, %26, %16
  ret void, !dbg !2226
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_set(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2227 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.SETTINGS_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2228, metadata !434), !dbg !2229
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2230, metadata !434), !dbg !2231
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2232, metadata !434), !dbg !2233
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2234, metadata !434), !dbg !2235
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2236, metadata !434), !dbg !2237
  br label %14, !dbg !2238, !llvm.loop !2239

; <label>:14:                                     ; preds = %5
  %15 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2240
  %16 = icmp ne %struct._GList** %15, null, !dbg !2244
  br i1 %16, label %17, label %18, !dbg !2240

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !2245

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !2248
  br label %117, !dbg !2251

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !2252

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !2254, !llvm.loop !2255

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %8, align 8, !dbg !2256
  %23 = icmp ne i8* %22, null, !dbg !2260
  br i1 %23, label %24, label %25, !dbg !2256

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !2261

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !2264
  br label %117, !dbg !2267

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !2268

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !2270, !llvm.loop !2271

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %9, align 8, !dbg !2272
  %30 = icmp ne i8* %29, null, !dbg !2276
  br i1 %30, label %31, label %32, !dbg !2272

; <label>:31:                                     ; preds = %28
  br label %33, !dbg !2277

; <label>:32:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2280
  br label %117, !dbg !2283

; <label>:33:                                     ; preds = %31
  br label %34, !dbg !2284

; <label>:34:                                     ; preds = %33
  %35 = load i8*, i8** %9, align 8, !dbg !2286
  %36 = load i8, i8* %35, align 1, !dbg !2288
  %37 = sext i8 %36 to i32, !dbg !2288
  %38 = icmp eq i32 %37, 0, !dbg !2289
  br i1 %38, label %47, label %39, !dbg !2290

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %9, align 8, !dbg !2291
  %41 = call i32 @g_strcmp0(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* %40), !dbg !2292
  %42 = icmp ne i32 %41, 0, !dbg !2292
  br i1 %42, label %43, label %47, !dbg !2293

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %9, align 8, !dbg !2294
  %45 = call i32 @g_strcmp0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* %44), !dbg !2296
  %46 = icmp ne i32 %45, 0, !dbg !2296
  br i1 %46, label %51, label %47, !dbg !2297

; <label>:47:                                     ; preds = %43, %39, %34
  %48 = load i8*, i8** %8, align 8, !dbg !2299
  %49 = call %struct._GList* @completion_get_settings(i8* %48, i32 7), !dbg !2300
  %50 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2301
  store %struct._GList* %49, %struct._GList** %50, align 8, !dbg !2302
  br label %112, !dbg !2303

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %9, align 8, !dbg !2304
  %53 = load i8, i8* %52, align 1, !dbg !2306
  %54 = sext i8 %53 to i32, !dbg !2306
  %55 = icmp ne i32 %54, 0, !dbg !2307
  br i1 %55, label %56, label %111, !dbg !2308

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %8, align 8, !dbg !2309
  %58 = load i8, i8* %57, align 1, !dbg !2311
  %59 = sext i8 %58 to i32, !dbg !2311
  %60 = icmp eq i32 %59, 0, !dbg !2312
  br i1 %60, label %61, label %111, !dbg !2313

; <label>:61:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %11, metadata !2314, metadata !434), !dbg !2334
  %62 = load i8*, i8** %9, align 8, !dbg !2335
  %63 = call %struct.SETTINGS_REC* @settings_get_record(i8* %62), !dbg !2336
  store %struct.SETTINGS_REC* %63, %struct.SETTINGS_REC** %11, align 8, !dbg !2334
  %64 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %11, align 8, !dbg !2337
  %65 = icmp ne %struct.SETTINGS_REC* %64, null, !dbg !2339
  br i1 %65, label %66, label %110, !dbg !2340

; <label>:66:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2341, metadata !434), !dbg !2343
  %67 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %11, align 8, !dbg !2344
  %68 = call i8* @settings_get_print(%struct.SETTINGS_REC* %67), !dbg !2345
  store i8* %68, i8** %12, align 8, !dbg !2343
  %69 = load i8*, i8** %12, align 8, !dbg !2346
  %70 = icmp ne i8* %69, null, !dbg !2348
  br i1 %70, label %71, label %77, !dbg !2349

; <label>:71:                                     ; preds = %66
  %72 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2350
  %73 = load %struct._GList*, %struct._GList** %72, align 8, !dbg !2351
  %74 = load i8*, i8** %12, align 8, !dbg !2352
  %75 = call %struct._GList* @g_list_append(%struct._GList* %73, i8* %74), !dbg !2353
  %76 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2354
  store %struct._GList* %75, %struct._GList** %76, align 8, !dbg !2355
  br label %77, !dbg !2356

; <label>:77:                                     ; preds = %71, %66
  %78 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %11, align 8, !dbg !2357
  %79 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %78, i32 0, i32 4, !dbg !2359
  %80 = load i32, i32* %79, align 8, !dbg !2359
  %81 = icmp eq i32 %80, 6, !dbg !2360
  br i1 %81, label %82, label %109, !dbg !2361

; <label>:82:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !2362, metadata !434), !dbg !2364
  %83 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %11, align 8, !dbg !2365
  %84 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %83, i32 0, i32 6, !dbg !2367
  %85 = load i8**, i8*** %84, align 8, !dbg !2367
  store i8** %85, i8*** %13, align 8, !dbg !2368
  br label %86, !dbg !2369

; <label>:86:                                     ; preds = %105, %82
  %87 = load i8**, i8*** %13, align 8, !dbg !2370
  %88 = load i8*, i8** %87, align 8, !dbg !2373
  %89 = icmp ne i8* %88, null, !dbg !2374
  br i1 %89, label %90, label %108, !dbg !2374

; <label>:90:                                     ; preds = %86
  %91 = load i8**, i8*** %13, align 8, !dbg !2375
  %92 = load i8*, i8** %91, align 8, !dbg !2378
  %93 = load i8*, i8** %12, align 8, !dbg !2379
  %94 = call i32 @g_ascii_strcasecmp(i8* %92, i8* %93), !dbg !2380
  %95 = icmp ne i32 %94, 0, !dbg !2381
  br i1 %95, label %96, label %104, !dbg !2382

; <label>:96:                                     ; preds = %90
  %97 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2383
  %98 = load %struct._GList*, %struct._GList** %97, align 8, !dbg !2384
  %99 = load i8**, i8*** %13, align 8, !dbg !2385
  %100 = load i8*, i8** %99, align 8, !dbg !2386
  %101 = call noalias i8* @g_strdup(i8* %100), !dbg !2387
  %102 = call %struct._GList* @g_list_append(%struct._GList* %98, i8* %101), !dbg !2388
  %103 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2390
  store %struct._GList* %102, %struct._GList** %103, align 8, !dbg !2391
  br label %104, !dbg !2392

; <label>:104:                                    ; preds = %96, %90
  br label %105, !dbg !2393

; <label>:105:                                    ; preds = %104
  %106 = load i8**, i8*** %13, align 8, !dbg !2394
  %107 = getelementptr inbounds i8*, i8** %106, i32 1, !dbg !2394
  store i8** %107, i8*** %13, align 8, !dbg !2394
  br label %86, !dbg !2396, !llvm.loop !2397

; <label>:108:                                    ; preds = %86
  br label %109, !dbg !2399

; <label>:109:                                    ; preds = %108, %77
  br label %110, !dbg !2400

; <label>:110:                                    ; preds = %109, %61
  br label %111, !dbg !2401

; <label>:111:                                    ; preds = %110, %56, %51
  br label %112

; <label>:112:                                    ; preds = %111, %47
  %113 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2402
  %114 = load %struct._GList*, %struct._GList** %113, align 8, !dbg !2404
  %115 = icmp ne %struct._GList* %114, null, !dbg !2405
  br i1 %115, label %116, label %117, !dbg !2406

; <label>:116:                                    ; preds = %112
  call void @signal_stop(), !dbg !2407
  br label %117, !dbg !2407

; <label>:117:                                    ; preds = %18, %25, %32, %116, %112
  ret void, !dbg !2409
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_toggle(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2410 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2411, metadata !434), !dbg !2412
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2413, metadata !434), !dbg !2414
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2415, metadata !434), !dbg !2416
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2417, metadata !434), !dbg !2418
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2419, metadata !434), !dbg !2420
  br label %11, !dbg !2421, !llvm.loop !2422

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2423
  %13 = icmp ne %struct._GList** %12, null, !dbg !2427
  br i1 %13, label %14, label %15, !dbg !2423

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2428

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_toggle, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !2431
  br label %45, !dbg !2434

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2435

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2437, !llvm.loop !2438

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2439
  %20 = icmp ne i8* %19, null, !dbg !2443
  br i1 %20, label %21, label %22, !dbg !2439

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2444

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_toggle, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !2447
  br label %45, !dbg !2450

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2451

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !2453, !llvm.loop !2454

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %9, align 8, !dbg !2455
  %27 = icmp ne i8* %26, null, !dbg !2459
  br i1 %27, label %28, label %29, !dbg !2455

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !2460

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_toggle, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2463
  br label %45, !dbg !2466

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !2467

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %9, align 8, !dbg !2469
  %33 = load i8, i8* %32, align 1, !dbg !2471
  %34 = sext i8 %33 to i32, !dbg !2471
  %35 = icmp ne i32 %34, 0, !dbg !2472
  br i1 %35, label %36, label %37, !dbg !2473

; <label>:36:                                     ; preds = %31
  br label %45, !dbg !2474

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %8, align 8, !dbg !2476
  %39 = call %struct._GList* @completion_get_settings(i8* %38, i32 2), !dbg !2477
  %40 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2478
  store %struct._GList* %39, %struct._GList** %40, align 8, !dbg !2479
  %41 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2480
  %42 = load %struct._GList*, %struct._GList** %41, align 8, !dbg !2482
  %43 = icmp ne %struct._GList* %42, null, !dbg !2483
  br i1 %43, label %44, label %45, !dbg !2484

; <label>:44:                                     ; preds = %37
  call void @signal_stop(), !dbg !2485
  br label %45, !dbg !2485

; <label>:45:                                     ; preds = %15, %22, %29, %36, %44, %37
  ret void, !dbg !2487
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_filename(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2488 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2489, metadata !434), !dbg !2490
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2491, metadata !434), !dbg !2492
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2493, metadata !434), !dbg !2494
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2495, metadata !434), !dbg !2496
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2497, metadata !434), !dbg !2498
  br label %11, !dbg !2499, !llvm.loop !2500

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2501
  %13 = icmp ne %struct._GList** %12, null, !dbg !2505
  br i1 %13, label %14, label %15, !dbg !2501

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2506

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_complete_filename, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !2509
  br label %46, !dbg !2512

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2513

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2515, !llvm.loop !2516

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2517
  %20 = icmp ne i8* %19, null, !dbg !2521
  br i1 %20, label %21, label %22, !dbg !2517

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2522

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_complete_filename, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !2525
  br label %46, !dbg !2528

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2529

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !2531, !llvm.loop !2532

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %9, align 8, !dbg !2533
  %27 = icmp ne i8* %26, null, !dbg !2537
  br i1 %27, label %28, label %29, !dbg !2533

; <label>:28:                                     ; preds = %25
  br label %30, !dbg !2538

; <label>:29:                                     ; preds = %25
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_complete_filename, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2541
  br label %46, !dbg !2544

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !2545

; <label>:31:                                     ; preds = %30
  %32 = load i8*, i8** %9, align 8, !dbg !2547
  %33 = load i8, i8* %32, align 1, !dbg !2549
  %34 = sext i8 %33 to i32, !dbg !2549
  %35 = icmp ne i32 %34, 0, !dbg !2550
  br i1 %35, label %36, label %37, !dbg !2551

; <label>:36:                                     ; preds = %31
  br label %46, !dbg !2552

; <label>:37:                                     ; preds = %31
  %38 = load i8*, i8** %8, align 8, !dbg !2554
  %39 = call %struct._GList* @filename_complete(i8* %38, i8* null), !dbg !2555
  %40 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2556
  store %struct._GList* %39, %struct._GList** %40, align 8, !dbg !2557
  %41 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2558
  %42 = load %struct._GList*, %struct._GList** %41, align 8, !dbg !2560
  %43 = icmp ne %struct._GList* %42, null, !dbg !2561
  br i1 %43, label %44, label %46, !dbg !2562

; <label>:44:                                     ; preds = %37
  %45 = load i32*, i32** %10, align 8, !dbg !2563
  store i32 0, i32* %45, align 4, !dbg !2565
  call void @signal_stop(), !dbg !2566
  br label %46, !dbg !2567

; <label>:46:                                     ; preds = %15, %22, %29, %36, %44, %37
  ret void, !dbg !2568
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_command(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2569 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2570, metadata !434), !dbg !2571
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2572, metadata !434), !dbg !2573
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2574, metadata !434), !dbg !2575
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2576, metadata !434), !dbg !2577
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2578, metadata !434), !dbg !2579
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2580, metadata !434), !dbg !2581
  br label %12, !dbg !2582, !llvm.loop !2583

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2584
  %14 = icmp ne %struct._GList** %13, null, !dbg !2588
  br i1 %14, label %15, label %16, !dbg !2584

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2589

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)), !dbg !2592
  br label %59, !dbg !2595

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2596

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !2598, !llvm.loop !2599

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !2600
  %21 = icmp ne i8* %20, null, !dbg !2604
  br i1 %21, label %22, label %23, !dbg !2600

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2605

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !2608
  br label %59, !dbg !2611

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2612

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !2614, !llvm.loop !2615

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8, !dbg !2616
  %28 = icmp ne i8* %27, null, !dbg !2620
  br i1 %28, label %29, label %30, !dbg !2616

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !2621

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2624
  br label %59, !dbg !2627

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !2628

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !2630
  %34 = load i8, i8* %33, align 1, !dbg !2632
  %35 = sext i8 %34 to i32, !dbg !2632
  %36 = icmp eq i32 %35, 0, !dbg !2633
  br i1 %36, label %37, label %41, !dbg !2634

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %8, align 8, !dbg !2635
  %39 = call %struct._GList* @completion_get_commands(i8* %38, i8 signext 0), !dbg !2637
  %40 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2638
  store %struct._GList* %39, %struct._GList** %40, align 8, !dbg !2639
  br label %54, !dbg !2640

; <label>:41:                                     ; preds = %32
  %42 = load i8*, i8** %9, align 8, !dbg !2641
  %43 = call i32 @command_have_sub(i8* %42), !dbg !2644
  %44 = icmp ne i32 %43, 0, !dbg !2644
  br i1 %44, label %45, label %53, !dbg !2644

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %9, align 8, !dbg !2645
  %47 = load i8*, i8** %8, align 8, !dbg !2647
  %48 = call noalias i8* (i8*, ...) @g_strconcat(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* %47, i8* null), !dbg !2648
  store i8* %48, i8** %11, align 8, !dbg !2649
  %49 = load i8*, i8** %11, align 8, !dbg !2650
  %50 = call %struct._GList* @completion_get_subcommands(i8* %49), !dbg !2651
  %51 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2652
  store %struct._GList* %50, %struct._GList** %51, align 8, !dbg !2653
  %52 = load i8*, i8** %11, align 8, !dbg !2654
  call void @g_free(i8* %52), !dbg !2655
  br label %53, !dbg !2656

; <label>:53:                                     ; preds = %45, %41
  br label %54

; <label>:54:                                     ; preds = %53, %37
  %55 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2657
  %56 = load %struct._GList*, %struct._GList** %55, align 8, !dbg !2659
  %57 = icmp ne %struct._GList* %56, null, !dbg !2660
  br i1 %57, label %58, label %59, !dbg !2661

; <label>:58:                                     ; preds = %54
  call void @signal_stop(), !dbg !2662
  br label %59, !dbg !2662

; <label>:59:                                     ; preds = %16, %23, %30, %58, %54
  ret void, !dbg !2664
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @completion_deinit() #0 !dbg !2665 {
  call void @free_completions(), !dbg !2666
  call void @chat_completion_deinit(), !dbg !2667
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_completion to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2668
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2669
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_complete_erase to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2670
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_set to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2671
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_toggle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2672
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2673
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2674
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2675
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2676
  call void @signal_remove_full(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2677
  call void @signal_remove_full(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_filename to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2678
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2679
  ret void, !dbg !2680
}

declare void @chat_completion_deinit() #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #2

declare void @g_list_free(%struct._GList*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare void @cmd_params_free(i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare void @signal_stop() #2

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_commands(i8*, i8 signext) #0 !dbg !2681 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct._GList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2684, metadata !434), !dbg !2685
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2686, metadata !434), !dbg !2687
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !2688, metadata !434), !dbg !2689
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !2690, metadata !434), !dbg !2691
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2692, metadata !434), !dbg !2693
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2694, metadata !434), !dbg !2695
  br label %11, !dbg !2696, !llvm.loop !2697

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !2698
  %13 = icmp ne i8* %12, null, !dbg !2702
  br i1 %13, label %14, label %15, !dbg !2698

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2703

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.completion_get_commands, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !2706
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !2709
  br label %81, !dbg !2709

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2710

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !2712
  %19 = call i64 @strlen(i8* %18) #6, !dbg !2713
  %20 = trunc i64 %19 to i32, !dbg !2713
  store i32 %20, i32* %9, align 4, !dbg !2714
  store %struct._GList* null, %struct._GList** %6, align 8, !dbg !2715
  %21 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !2716
  store %struct._GSList* %21, %struct._GSList** %7, align 8, !dbg !2718
  br label %22, !dbg !2719

; <label>:22:                                     ; preds = %75, %17
  %23 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2720
  %24 = icmp ne %struct._GSList* %23, null, !dbg !2723
  br i1 %24, label %25, label %79, !dbg !2724

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %10, metadata !2725, metadata !434), !dbg !2736
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2737
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !2738
  %28 = load i8*, i8** %27, align 8, !dbg !2738
  %29 = bitcast i8* %28 to %struct.COMMAND_REC*, !dbg !2737
  store %struct.COMMAND_REC* %29, %struct.COMMAND_REC** %10, align 8, !dbg !2736
  %30 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2739
  %31 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %30, i32 0, i32 2, !dbg !2741
  %32 = load i8*, i8** %31, align 8, !dbg !2741
  %33 = call i8* @strchr(i8* %32, i32 32) #6, !dbg !2742
  %34 = icmp ne i8* %33, null, !dbg !2743
  br i1 %34, label %35, label %36, !dbg !2744

; <label>:35:                                     ; preds = %25
  br label %75, !dbg !2745

; <label>:36:                                     ; preds = %25
  %37 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2746
  %38 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %37, i32 0, i32 2, !dbg !2748
  %39 = load i8*, i8** %38, align 8, !dbg !2748
  %40 = load i8*, i8** %4, align 8, !dbg !2749
  %41 = load i32, i32* %9, align 4, !dbg !2750
  %42 = sext i32 %41 to i64, !dbg !2750
  %43 = call i32 @g_ascii_strncasecmp(i8* %39, i8* %40, i64 %42), !dbg !2751
  %44 = icmp eq i32 %43, 0, !dbg !2752
  br i1 %44, label %45, label %74, !dbg !2753

; <label>:45:                                     ; preds = %36
  %46 = load i8, i8* %5, align 1, !dbg !2754
  %47 = sext i8 %46 to i32, !dbg !2754
  %48 = icmp eq i32 %47, 0, !dbg !2756
  br i1 %48, label %49, label %54, !dbg !2754

; <label>:49:                                     ; preds = %45
  %50 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2757
  %51 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %50, i32 0, i32 2, !dbg !2759
  %52 = load i8*, i8** %51, align 8, !dbg !2759
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !2760
  br label %61, !dbg !2761

; <label>:54:                                     ; preds = %45
  %55 = load i8, i8* %5, align 1, !dbg !2762
  %56 = sext i8 %55 to i32, !dbg !2762
  %57 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %10, align 8, !dbg !2763
  %58 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %57, i32 0, i32 2, !dbg !2764
  %59 = load i8*, i8** %58, align 8, !dbg !2764
  %60 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 %56, i8* %59), !dbg !2765
  br label %61, !dbg !2766

; <label>:61:                                     ; preds = %54, %49
  %62 = phi i8* [ %53, %49 ], [ %60, %54 ], !dbg !2768
  store i8* %62, i8** %8, align 8, !dbg !2770
  %63 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !2771
  %64 = load i8*, i8** %8, align 8, !dbg !2773
  %65 = call %struct._GList* @glist_find_icase_string(%struct._GList* %63, i8* %64), !dbg !2774
  %66 = icmp eq %struct._GList* %65, null, !dbg !2775
  br i1 %66, label %67, label %71, !dbg !2776

; <label>:67:                                     ; preds = %61
  %68 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !2777
  %69 = load i8*, i8** %8, align 8, !dbg !2778
  %70 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %68, i8* %69, i32 (i8*, i8*)* @g_istr_cmp), !dbg !2779
  store %struct._GList* %70, %struct._GList** %6, align 8, !dbg !2780
  br label %73, !dbg !2781

; <label>:71:                                     ; preds = %61
  %72 = load i8*, i8** %8, align 8, !dbg !2782
  call void @g_free(i8* %72), !dbg !2783
  br label %73

; <label>:73:                                     ; preds = %71, %67
  br label %74, !dbg !2784

; <label>:74:                                     ; preds = %73, %36
  br label %75, !dbg !2785

; <label>:75:                                     ; preds = %74, %35
  %76 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2786
  %77 = getelementptr inbounds %struct._GSList, %struct._GSList* %76, i32 0, i32 1, !dbg !2788
  %78 = load %struct._GSList*, %struct._GSList** %77, align 8, !dbg !2788
  store %struct._GSList* %78, %struct._GSList** %7, align 8, !dbg !2789
  br label %22, !dbg !2790, !llvm.loop !2791

; <label>:79:                                     ; preds = %22
  %80 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !2793
  store %struct._GList* %80, %struct._GList** %3, align 8, !dbg !2794
  br label %81, !dbg !2794

; <label>:81:                                     ; preds = %79, %15
  %82 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !2795
  ret %struct._GList* %82, !dbg !2795
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_aliases(i8*, i8 signext) #0 !dbg !2796 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._GList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2797, metadata !434), !dbg !2798
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2799, metadata !434), !dbg !2800
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !2801, metadata !434), !dbg !2802
  call void @llvm.dbg.declare(metadata %struct._GList** %7, metadata !2803, metadata !434), !dbg !2804
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2805, metadata !434), !dbg !2806
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2807, metadata !434), !dbg !2808
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2809, metadata !434), !dbg !2810
  br label %12, !dbg !2811, !llvm.loop !2812

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !2813
  %14 = icmp ne i8* %13, null, !dbg !2817
  br i1 %14, label %15, label %16, !dbg !2813

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2818

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_aliases, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0)), !dbg !2821
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !2824
  br label %92, !dbg !2824

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2825

; <label>:18:                                     ; preds = %17
  %19 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2827
  %20 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0), !dbg !2828
  store %struct._CONFIG_NODE* %20, %struct._CONFIG_NODE** %6, align 8, !dbg !2829
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !2830
  %22 = icmp eq %struct._CONFIG_NODE* %21, null, !dbg !2831
  br i1 %22, label %23, label %24, !dbg !2830

; <label>:23:                                     ; preds = %18
  br label %30, !dbg !2832

; <label>:24:                                     ; preds = %18
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !2834
  %26 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %25, i32 0, i32 2, !dbg !2836
  %27 = load i8*, i8** %26, align 8, !dbg !2836
  %28 = bitcast i8* %27 to %struct._GSList*, !dbg !2834
  %29 = call %struct._GSList* @config_node_first(%struct._GSList* %28), !dbg !2837
  br label %30, !dbg !2838

; <label>:30:                                     ; preds = %24, %23
  %31 = phi %struct._GSList* [ null, %23 ], [ %29, %24 ], !dbg !2839
  store %struct._GSList* %31, %struct._GSList** %8, align 8, !dbg !2841
  %32 = load i8*, i8** %4, align 8, !dbg !2842
  %33 = call i64 @strlen(i8* %32) #6, !dbg !2843
  %34 = trunc i64 %33 to i32, !dbg !2843
  store i32 %34, i32* %10, align 4, !dbg !2844
  store %struct._GList* null, %struct._GList** %7, align 8, !dbg !2845
  br label %35, !dbg !2846

; <label>:35:                                     ; preds = %87, %30
  %36 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2847
  %37 = icmp ne %struct._GSList* %36, null, !dbg !2851
  br i1 %37, label %38, label %90, !dbg !2852

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %11, metadata !2853, metadata !434), !dbg !2855
  %39 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2856
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !2857
  %41 = load i8*, i8** %40, align 8, !dbg !2857
  %42 = bitcast i8* %41 to %struct._CONFIG_NODE*, !dbg !2856
  store %struct._CONFIG_NODE* %42, %struct._CONFIG_NODE** %11, align 8, !dbg !2855
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2858
  %44 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %43, i32 0, i32 0, !dbg !2860
  %45 = load i32, i32* %44, align 8, !dbg !2860
  %46 = icmp ne i32 %45, 0, !dbg !2861
  br i1 %46, label %47, label %48, !dbg !2862

; <label>:47:                                     ; preds = %38
  br label %87, !dbg !2863

; <label>:48:                                     ; preds = %38
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2864
  %50 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %49, i32 0, i32 1, !dbg !2866
  %51 = load i8*, i8** %50, align 8, !dbg !2866
  %52 = load i8*, i8** %4, align 8, !dbg !2867
  %53 = load i32, i32* %10, align 4, !dbg !2868
  %54 = sext i32 %53 to i64, !dbg !2868
  %55 = call i32 @g_ascii_strncasecmp(i8* %51, i8* %52, i64 %54), !dbg !2869
  %56 = icmp eq i32 %55, 0, !dbg !2870
  br i1 %56, label %57, label %86, !dbg !2871

; <label>:57:                                     ; preds = %48
  %58 = load i8, i8* %5, align 1, !dbg !2872
  %59 = sext i8 %58 to i32, !dbg !2872
  %60 = icmp eq i32 %59, 0, !dbg !2874
  br i1 %60, label %61, label %66, !dbg !2872

; <label>:61:                                     ; preds = %57
  %62 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2875
  %63 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %62, i32 0, i32 1, !dbg !2877
  %64 = load i8*, i8** %63, align 8, !dbg !2877
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !2878
  br label %73, !dbg !2879

; <label>:66:                                     ; preds = %57
  %67 = load i8, i8* %5, align 1, !dbg !2880
  %68 = sext i8 %67 to i32, !dbg !2880
  %69 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !2881
  %70 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %69, i32 0, i32 1, !dbg !2882
  %71 = load i8*, i8** %70, align 8, !dbg !2882
  %72 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 %68, i8* %71), !dbg !2883
  br label %73, !dbg !2884

; <label>:73:                                     ; preds = %66, %61
  %74 = phi i8* [ %65, %61 ], [ %72, %66 ], !dbg !2886
  store i8* %74, i8** %9, align 8, !dbg !2888
  %75 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !2889
  %76 = load i8*, i8** %9, align 8, !dbg !2891
  %77 = call %struct._GList* @glist_find_icase_string(%struct._GList* %75, i8* %76), !dbg !2892
  %78 = icmp eq %struct._GList* %77, null, !dbg !2893
  br i1 %78, label %79, label %83, !dbg !2894

; <label>:79:                                     ; preds = %73
  %80 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !2895
  %81 = load i8*, i8** %9, align 8, !dbg !2896
  %82 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %80, i8* %81, i32 (i8*, i8*)* @g_istr_cmp), !dbg !2897
  store %struct._GList* %82, %struct._GList** %7, align 8, !dbg !2898
  br label %85, !dbg !2899

; <label>:83:                                     ; preds = %73
  %84 = load i8*, i8** %9, align 8, !dbg !2900
  call void @g_free(i8* %84), !dbg !2901
  br label %85

; <label>:85:                                     ; preds = %83, %79
  br label %86, !dbg !2902

; <label>:86:                                     ; preds = %85, %48
  br label %87, !dbg !2903

; <label>:87:                                     ; preds = %86, %47
  %88 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2904
  %89 = call %struct._GSList* @config_node_next(%struct._GSList* %88), !dbg !2906
  store %struct._GSList* %89, %struct._GSList** %8, align 8, !dbg !2907
  br label %35, !dbg !2908, !llvm.loop !2909

; <label>:90:                                     ; preds = %35
  %91 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !2910
  store %struct._GList* %91, %struct._GList** %3, align 8, !dbg !2911
  br label %92, !dbg !2911

; <label>:92:                                     ; preds = %90, %16
  %93 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !2912
  ret %struct._GList* %93, !dbg !2912
}

; Function Attrs: nounwind uwtable
define internal i8* @expand_aliases(i8*) #0 !dbg !2913 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2916, metadata !434), !dbg !2917
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2918, metadata !434), !dbg !2919
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2920, metadata !434), !dbg !2921
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2922, metadata !434), !dbg !2923
  br label %7, !dbg !2924, !llvm.loop !2925

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !2926
  %9 = icmp ne i8* %8, null, !dbg !2930
  br i1 %9, label %10, label %11, !dbg !2926

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2931

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.expand_aliases, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2934
  store i8* null, i8** %2, align 8, !dbg !2937
  br label %34, !dbg !2937

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2938

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %3, align 8, !dbg !2940
  %15 = call i8* @line_get_command(i8* %14, i8** %5, i32 1), !dbg !2941
  store i8* %15, i8** %4, align 8, !dbg !2942
  %16 = load i8*, i8** %4, align 8, !dbg !2943
  %17 = icmp eq i8* %16, null, !dbg !2945
  br i1 %17, label %18, label %21, !dbg !2946

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !2947
  %20 = call noalias i8* @g_strdup(i8* %19), !dbg !2949
  store i8* %20, i8** %2, align 8, !dbg !2950
  br label %34, !dbg !2950

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %5, align 8, !dbg !2951
  %23 = load i8, i8* %22, align 1, !dbg !2953
  %24 = sext i8 %23 to i32, !dbg !2953
  %25 = icmp eq i32 %24, 0, !dbg !2954
  br i1 %25, label %26, label %28, !dbg !2955

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8, !dbg !2956
  store i8* %27, i8** %2, align 8, !dbg !2958
  br label %34, !dbg !2958

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %4, align 8, !dbg !2959
  %30 = load i8*, i8** %5, align 8, !dbg !2960
  %31 = call noalias i8* (i8*, ...) @g_strconcat(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* %30, i8* null), !dbg !2961
  store i8* %31, i8** %6, align 8, !dbg !2962
  %32 = load i8*, i8** %4, align 8, !dbg !2963
  call void @g_free(i8* %32), !dbg !2964
  %33 = load i8*, i8** %6, align 8, !dbg !2965
  store i8* %33, i8** %2, align 8, !dbg !2966
  br label %34, !dbg !2966

; <label>:34:                                     ; preds = %28, %26, %18, %11
  %35 = load i8*, i8** %2, align 8, !dbg !2967
  ret i8* %35, !dbg !2967
}

; Function Attrs: nounwind uwtable
define internal i8* @line_get_command(i8*, i8**, i32) #0 !dbg !2968 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2971, metadata !434), !dbg !2972
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2973, metadata !434), !dbg !2974
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2975, metadata !434), !dbg !2976
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2977, metadata !434), !dbg !2978
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2979, metadata !434), !dbg !2980
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2981, metadata !434), !dbg !2982
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2983, metadata !434), !dbg !2984
  br label %12, !dbg !2985, !llvm.loop !2986

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !2987
  %14 = icmp ne i8* %13, null, !dbg !2991
  br i1 %14, label %15, label %16, !dbg !2987

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2992

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.line_get_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !2995
  store i8* null, i8** %4, align 8, !dbg !2998
  br label %96, !dbg !2998

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2999

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !3001, !llvm.loop !3002

; <label>:19:                                     ; preds = %18
  %20 = load i8**, i8*** %6, align 8, !dbg !3003
  %21 = icmp ne i8** %20, null, !dbg !3007
  br i1 %21, label %22, label %23, !dbg !3003

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !3008

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.line_get_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)), !dbg !3011
  store i8* null, i8** %4, align 8, !dbg !3014
  br label %96, !dbg !3014

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !3015

; <label>:25:                                     ; preds = %24
  store i8* null, i8** %11, align 8, !dbg !3017
  store i8* null, i8** %10, align 8, !dbg !3018
  %26 = load i8**, i8*** %6, align 8, !dbg !3019
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %26, align 8, !dbg !3020
  store i8* null, i8** %9, align 8, !dbg !3021
  %27 = load i8*, i8** %5, align 8, !dbg !3022
  store i8* %27, i8** %8, align 8, !dbg !3023
  br label %28, !dbg !3024, !llvm.loop !3025

; <label>:28:                                     ; preds = %85, %25
  %29 = load i8*, i8** %8, align 8, !dbg !3026
  %30 = call i8* @strchr(i8* %29, i32 32) #6, !dbg !3028
  store i8* %30, i8** %8, align 8, !dbg !3029
  %31 = load i8*, i8** %8, align 8, !dbg !3030
  %32 = icmp eq i8* %31, null, !dbg !3032
  br i1 %32, label %33, label %36, !dbg !3033

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %5, align 8, !dbg !3034
  %35 = call noalias i8* @g_strdup(i8* %34), !dbg !3036
  store i8* %35, i8** %11, align 8, !dbg !3037
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 8, !dbg !3038
  br label %56, !dbg !3039

; <label>:36:                                     ; preds = %28
  %37 = load i8*, i8** %5, align 8, !dbg !3040
  %38 = load i8*, i8** %8, align 8, !dbg !3042
  %39 = load i8*, i8** %5, align 8, !dbg !3043
  %40 = ptrtoint i8* %38 to i64, !dbg !3044
  %41 = ptrtoint i8* %39 to i64, !dbg !3044
  %42 = sub i64 %40, %41, !dbg !3044
  %43 = trunc i64 %42 to i32, !dbg !3045
  %44 = sext i32 %43 to i64, !dbg !3045
  %45 = call noalias i8* @g_strndup(i8* %37, i64 %44), !dbg !3046
  store i8* %45, i8** %11, align 8, !dbg !3047
  br label %46, !dbg !3048

; <label>:46:                                     ; preds = %51, %36
  %47 = load i8*, i8** %8, align 8, !dbg !3049
  %48 = load i8, i8* %47, align 1, !dbg !3051
  %49 = sext i8 %48 to i32, !dbg !3051
  %50 = icmp eq i32 %49, 32, !dbg !3052
  br i1 %50, label %51, label %54, !dbg !3053

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %8, align 8, !dbg !3054
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !3054
  store i8* %53, i8** %8, align 8, !dbg !3054
  br label %46, !dbg !3056, !llvm.loop !3057

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %8, align 8, !dbg !3058
  store i8* %55, i8** %9, align 8, !dbg !3059
  br label %56

; <label>:56:                                     ; preds = %54, %33
  %57 = load i32, i32* %7, align 4, !dbg !3060
  %58 = icmp ne i32 %57, 0, !dbg !3060
  br i1 %58, label %59, label %64, !dbg !3062

; <label>:59:                                     ; preds = %56
  %60 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !3063
  %61 = load i8*, i8** %11, align 8, !dbg !3065
  %62 = call i8* @config_get_str(%struct._CONFIG_REC* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* %61, i8* null), !dbg !3066
  %63 = icmp ne i8* %62, null, !dbg !3066
  br i1 %63, label %70, label %68, !dbg !3067

; <label>:64:                                     ; preds = %56
  %65 = load i8*, i8** %11, align 8, !dbg !3068
  %66 = call %struct.COMMAND_REC* @command_find(i8* %65), !dbg !3069
  %67 = icmp ne %struct.COMMAND_REC* %66, null, !dbg !3069
  br i1 %67, label %70, label %68, !dbg !3070

; <label>:68:                                     ; preds = %64, %59
  %69 = load i8*, i8** %11, align 8, !dbg !3072
  call void @g_free(i8* %69), !dbg !3074
  br label %88, !dbg !3075

; <label>:70:                                     ; preds = %64, %59
  %71 = load i8*, i8** %10, align 8, !dbg !3076
  call void @g_free(i8* %71), !dbg !3077
  %72 = load i32, i32* %7, align 4, !dbg !3078
  %73 = icmp ne i32 %72, 0, !dbg !3078
  br i1 %73, label %76, label %74, !dbg !3080

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %11, align 8, !dbg !3081
  store i8* %75, i8** %10, align 8, !dbg !3082
  br label %82, !dbg !3083

; <label>:76:                                     ; preds = %70
  %77 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !3084
  %78 = load i8*, i8** %11, align 8, !dbg !3086
  %79 = call i8* @config_get_str(%struct._CONFIG_REC* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* %78, i8* null), !dbg !3087
  %80 = call noalias i8* @g_strdup(i8* %79), !dbg !3088
  store i8* %80, i8** %10, align 8, !dbg !3090
  %81 = load i8*, i8** %11, align 8, !dbg !3091
  call void @g_free(i8* %81), !dbg !3092
  br label %82

; <label>:82:                                     ; preds = %76, %74
  %83 = load i8*, i8** %9, align 8, !dbg !3093
  %84 = load i8**, i8*** %6, align 8, !dbg !3094
  store i8* %83, i8** %84, align 8, !dbg !3095
  br label %85, !dbg !3096

; <label>:85:                                     ; preds = %82
  %86 = load i8*, i8** %8, align 8, !dbg !3097
  %87 = icmp ne i8* %86, null, !dbg !3099
  br i1 %87, label %28, label %88, !dbg !3100, !llvm.loop !3025

; <label>:88:                                     ; preds = %85, %68
  %89 = load i8*, i8** %10, align 8, !dbg !3101
  %90 = icmp ne i8* %89, null, !dbg !3103
  br i1 %90, label %91, label %94, !dbg !3104

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %10, align 8, !dbg !3105
  %93 = call i8* @ascii_strdown(i8* %92), !dbg !3106
  br label %94, !dbg !3106

; <label>:94:                                     ; preds = %91, %88
  %95 = load i8*, i8** %10, align 8, !dbg !3107
  store i8* %95, i8** %4, align 8, !dbg !3108
  br label %96, !dbg !3108

; <label>:96:                                     ; preds = %94, %23, %16
  %97 = load i8*, i8** %4, align 8, !dbg !3109
  ret i8* %97, !dbg !3109
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_options(i8*, i8*) #0 !dbg !3110 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.COMMAND_REC*, align 8
  %7 = alloca %struct._GList*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3111, metadata !434), !dbg !3112
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3113, metadata !434), !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %6, metadata !3115, metadata !434), !dbg !3116
  call void @llvm.dbg.declare(metadata %struct._GList** %7, metadata !3117, metadata !434), !dbg !3118
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !3119, metadata !434), !dbg !3120
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3121, metadata !434), !dbg !3122
  br label %11, !dbg !3123, !llvm.loop !3124

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !3125
  %13 = icmp ne i8* %12, null, !dbg !3129
  br i1 %13, label %14, label %15, !dbg !3125

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !3130

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_options, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !3133
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !3136
  br label %97, !dbg !3136

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !3137

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !3139, !llvm.loop !3140

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %5, align 8, !dbg !3141
  %20 = icmp ne i8* %19, null, !dbg !3145
  br i1 %20, label %21, label %22, !dbg !3141

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !3146

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_options, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0)), !dbg !3149
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !3152
  br label %97, !dbg !3152

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !3153

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %4, align 8, !dbg !3155
  %26 = call %struct.COMMAND_REC* @command_find(i8* %25), !dbg !3156
  store %struct.COMMAND_REC* %26, %struct.COMMAND_REC** %6, align 8, !dbg !3157
  %27 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !3158
  %28 = icmp eq %struct.COMMAND_REC* %27, null, !dbg !3160
  br i1 %28, label %34, label %29, !dbg !3161

; <label>:29:                                     ; preds = %24
  %30 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !3162
  %31 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %30, i32 0, i32 3, !dbg !3164
  %32 = load i8**, i8*** %31, align 8, !dbg !3164
  %33 = icmp eq i8** %32, null, !dbg !3165
  br i1 %33, label %34, label %35, !dbg !3166

; <label>:34:                                     ; preds = %29, %24
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !3167
  br label %97, !dbg !3167

; <label>:35:                                     ; preds = %29
  store %struct._GList* null, %struct._GList** %7, align 8, !dbg !3169
  %36 = load i8*, i8** %5, align 8, !dbg !3170
  %37 = call i64 @strlen(i8* %36) #6, !dbg !3171
  %38 = trunc i64 %37 to i32, !dbg !3171
  store i32 %38, i32* %9, align 4, !dbg !3172
  %39 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !3173
  %40 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %39, i32 0, i32 3, !dbg !3175
  %41 = load i8**, i8*** %40, align 8, !dbg !3175
  store i8** %41, i8*** %8, align 8, !dbg !3176
  br label %42, !dbg !3177

; <label>:42:                                     ; preds = %92, %35
  %43 = load i8**, i8*** %8, align 8, !dbg !3178
  %44 = load i8*, i8** %43, align 8, !dbg !3181
  %45 = icmp ne i8* %44, null, !dbg !3182
  br i1 %45, label %46, label %95, !dbg !3183

; <label>:46:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3184, metadata !434), !dbg !3186
  %47 = load i8**, i8*** %8, align 8, !dbg !3187
  %48 = load i8*, i8** %47, align 8, !dbg !3188
  %49 = load i8**, i8*** %8, align 8, !dbg !3189
  %50 = load i8*, i8** %49, align 8, !dbg !3190
  %51 = load i8, i8* %50, align 1, !dbg !3191
  %52 = sext i8 %51 to i32, !dbg !3192
  %53 = icmp eq i32 %52, 33, !dbg !3193
  br i1 %53, label %72, label %54, !dbg !3194

; <label>:54:                                     ; preds = %46
  %55 = load i8**, i8*** %8, align 8, !dbg !3195
  %56 = load i8*, i8** %55, align 8, !dbg !3197
  %57 = load i8, i8* %56, align 1, !dbg !3198
  %58 = sext i8 %57 to i32, !dbg !3199
  %59 = icmp eq i32 %58, 45, !dbg !3200
  br i1 %59, label %72, label %60, !dbg !3201

; <label>:60:                                     ; preds = %54
  %61 = load i8**, i8*** %8, align 8, !dbg !3202
  %62 = load i8*, i8** %61, align 8, !dbg !3204
  %63 = load i8, i8* %62, align 1, !dbg !3205
  %64 = sext i8 %63 to i32, !dbg !3206
  %65 = icmp eq i32 %64, 43, !dbg !3207
  br i1 %65, label %72, label %66, !dbg !3208

; <label>:66:                                     ; preds = %60
  %67 = load i8**, i8*** %8, align 8, !dbg !3209
  %68 = load i8*, i8** %67, align 8, !dbg !3211
  %69 = load i8, i8* %68, align 1, !dbg !3212
  %70 = sext i8 %69 to i32, !dbg !3213
  %71 = icmp eq i32 %70, 64, !dbg !3214
  br label %72, !dbg !3215

; <label>:72:                                     ; preds = %66, %60, %54, %46
  %73 = phi i1 [ true, %60 ], [ true, %54 ], [ true, %46 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32, !dbg !3216
  %75 = sext i32 %74 to i64, !dbg !3218
  %76 = getelementptr inbounds i8, i8* %48, i64 %75, !dbg !3218
  store i8* %76, i8** %10, align 8, !dbg !3219
  %77 = load i32, i32* %9, align 4, !dbg !3220
  %78 = icmp eq i32 %77, 0, !dbg !3222
  br i1 %78, label %86, label %79, !dbg !3223

; <label>:79:                                     ; preds = %72
  %80 = load i8*, i8** %10, align 8, !dbg !3224
  %81 = load i8*, i8** %5, align 8, !dbg !3226
  %82 = load i32, i32* %9, align 4, !dbg !3227
  %83 = sext i32 %82 to i64, !dbg !3227
  %84 = call i32 @g_ascii_strncasecmp(i8* %80, i8* %81, i64 %83), !dbg !3228
  %85 = icmp eq i32 %84, 0, !dbg !3229
  br i1 %85, label %86, label %91, !dbg !3230

; <label>:86:                                     ; preds = %79, %72
  %87 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !3231
  %88 = load i8*, i8** %10, align 8, !dbg !3232
  %89 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* %88, i8* null), !dbg !3233
  %90 = call %struct._GList* @g_list_append(%struct._GList* %87, i8* %89), !dbg !3234
  store %struct._GList* %90, %struct._GList** %7, align 8, !dbg !3235
  br label %91, !dbg !3236

; <label>:91:                                     ; preds = %86, %79
  br label %92, !dbg !3237

; <label>:92:                                     ; preds = %91
  %93 = load i8**, i8*** %8, align 8, !dbg !3238
  %94 = getelementptr inbounds i8*, i8** %93, i32 1, !dbg !3238
  store i8** %94, i8*** %8, align 8, !dbg !3238
  br label %42, !dbg !3240, !llvm.loop !3241

; <label>:95:                                     ; preds = %42
  %96 = load %struct._GList*, %struct._GList** %7, align 8, !dbg !3243
  store %struct._GList* %96, %struct._GList** %3, align 8, !dbg !3244
  br label %97, !dbg !3244

; <label>:97:                                     ; preds = %95, %34, %22, %15
  %98 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !3245
  ret %struct._GList* %98, !dbg !3245
}

declare i32 @command_have_sub(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_subcommands(i8*) #0 !dbg !3246 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3249, metadata !434), !dbg !3250
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !3251, metadata !434), !dbg !3252
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !3253, metadata !434), !dbg !3254
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3255, metadata !434), !dbg !3256
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3257, metadata !434), !dbg !3258
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3259, metadata !434), !dbg !3260
  br label %10, !dbg !3261, !llvm.loop !3262

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !3263
  %12 = icmp ne i8* %11, null, !dbg !3267
  br i1 %12, label %13, label %14, !dbg !3263

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !3268

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.completion_get_subcommands, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !3271
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !3274
  br label %93, !dbg !3274

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !3275

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %3, align 8, !dbg !3277
  %18 = call i8* @strrchr(i8* %17, i32 32) #6, !dbg !3278
  store i8* %18, i8** %6, align 8, !dbg !3279
  %19 = load i8*, i8** %6, align 8, !dbg !3280
  %20 = icmp eq i8* %19, null, !dbg !3281
  br i1 %20, label %21, label %25, !dbg !3280

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %3, align 8, !dbg !3282
  %23 = call i64 @strlen(i8* %22) #6, !dbg !3284
  %24 = add i64 %23, 1, !dbg !3285
  br label %34, !dbg !3286

; <label>:25:                                     ; preds = %16
  %26 = load i8*, i8** %6, align 8, !dbg !3287
  %27 = load i8*, i8** %3, align 8, !dbg !3288
  %28 = ptrtoint i8* %26 to i64, !dbg !3289
  %29 = ptrtoint i8* %27 to i64, !dbg !3289
  %30 = sub i64 %28, %29, !dbg !3289
  %31 = trunc i64 %30 to i32, !dbg !3290
  %32 = add nsw i32 %31, 1, !dbg !3291
  %33 = sext i32 %32 to i64, !dbg !3292
  br label %34, !dbg !3293

; <label>:34:                                     ; preds = %25, %21
  %35 = phi i64 [ %24, %21 ], [ %33, %25 ], !dbg !3295
  %36 = trunc i64 %35 to i32, !dbg !3295
  store i32 %36, i32* %8, align 4, !dbg !3297
  %37 = load i8*, i8** %3, align 8, !dbg !3298
  %38 = call i64 @strlen(i8* %37) #6, !dbg !3299
  %39 = trunc i64 %38 to i32, !dbg !3299
  store i32 %39, i32* %7, align 4, !dbg !3300
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !3301
  %40 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !3302
  store %struct._GSList* %40, %struct._GSList** %5, align 8, !dbg !3304
  br label %41, !dbg !3305

; <label>:41:                                     ; preds = %87, %34
  %42 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3306
  %43 = icmp ne %struct._GSList* %42, null, !dbg !3309
  br i1 %43, label %44, label %91, !dbg !3310

; <label>:44:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %9, metadata !3311, metadata !434), !dbg !3313
  %45 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3314
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0, !dbg !3315
  %47 = load i8*, i8** %46, align 8, !dbg !3315
  %48 = bitcast i8* %47 to %struct.COMMAND_REC*, !dbg !3314
  store %struct.COMMAND_REC* %48, %struct.COMMAND_REC** %9, align 8, !dbg !3313
  %49 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3316
  %50 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %49, i32 0, i32 2, !dbg !3318
  %51 = load i8*, i8** %50, align 8, !dbg !3318
  %52 = call i64 @strlen(i8* %51) #6, !dbg !3319
  %53 = trunc i64 %52 to i32, !dbg !3320
  %54 = load i32, i32* %7, align 4, !dbg !3321
  %55 = icmp slt i32 %53, %54, !dbg !3322
  br i1 %55, label %56, label %57, !dbg !3323

; <label>:56:                                     ; preds = %44
  br label %87, !dbg !3324

; <label>:57:                                     ; preds = %44
  %58 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3325
  %59 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %58, i32 0, i32 2, !dbg !3327
  %60 = load i8*, i8** %59, align 8, !dbg !3327
  %61 = load i32, i32* %7, align 4, !dbg !3328
  %62 = sext i32 %61 to i64, !dbg !3329
  %63 = getelementptr inbounds i8, i8* %60, i64 %62, !dbg !3329
  %64 = call i8* @strchr(i8* %63, i32 32) #6, !dbg !3330
  %65 = icmp ne i8* %64, null, !dbg !3331
  br i1 %65, label %66, label %67, !dbg !3332

; <label>:66:                                     ; preds = %57
  br label %87, !dbg !3333

; <label>:67:                                     ; preds = %57
  %68 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3334
  %69 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %68, i32 0, i32 2, !dbg !3336
  %70 = load i8*, i8** %69, align 8, !dbg !3336
  %71 = load i8*, i8** %3, align 8, !dbg !3337
  %72 = load i32, i32* %7, align 4, !dbg !3338
  %73 = sext i32 %72 to i64, !dbg !3338
  %74 = call i32 @g_ascii_strncasecmp(i8* %70, i8* %71, i64 %73), !dbg !3339
  %75 = icmp eq i32 %74, 0, !dbg !3340
  br i1 %75, label %76, label %86, !dbg !3341

; <label>:76:                                     ; preds = %67
  %77 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !3342
  %78 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %9, align 8, !dbg !3343
  %79 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %78, i32 0, i32 2, !dbg !3344
  %80 = load i8*, i8** %79, align 8, !dbg !3344
  %81 = load i32, i32* %8, align 4, !dbg !3345
  %82 = sext i32 %81 to i64, !dbg !3346
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !3346
  %84 = call noalias i8* @g_strdup(i8* %83), !dbg !3347
  %85 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %77, i8* %84, i32 (i8*, i8*)* @g_istr_cmp), !dbg !3348
  store %struct._GList* %85, %struct._GList** %4, align 8, !dbg !3350
  br label %86, !dbg !3351

; <label>:86:                                     ; preds = %76, %67
  br label %87, !dbg !3352

; <label>:87:                                     ; preds = %86, %66, %56
  %88 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !3353
  %89 = getelementptr inbounds %struct._GSList, %struct._GSList* %88, i32 0, i32 1, !dbg !3355
  %90 = load %struct._GSList*, %struct._GSList** %89, align 8, !dbg !3355
  store %struct._GSList* %90, %struct._GSList** %5, align 8, !dbg !3356
  br label %41, !dbg !3357, !llvm.loop !3358

; <label>:91:                                     ; preds = %41
  %92 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !3360
  store %struct._GList* %92, %struct._GList** %2, align 8, !dbg !3361
  br label %93, !dbg !3361

; <label>:93:                                     ; preds = %91, %14
  %94 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !3362
  ret %struct._GList* %94, !dbg !3362
}

declare %struct._GList* @glist_find_icase_string(%struct._GList*, i8*) #2

declare %struct._GList* @g_list_insert_sorted(%struct._GList*, i8*, i32 (i8*, i8*)*) #2

declare i32 @g_istr_cmp(i8*, i8*) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare %struct.COMMAND_REC* @command_find(i8*) #2

declare i8* @ascii_strdown(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_get_settings(i8*, i32) #0 !dbg !3363 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3366, metadata !434), !dbg !3367
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3368, metadata !434), !dbg !3369
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !3370, metadata !434), !dbg !3371
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !3372, metadata !434), !dbg !3373
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !3374, metadata !434), !dbg !3375
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3376, metadata !434), !dbg !3377
  br label %11, !dbg !3378, !llvm.loop !3379

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !3380
  %13 = icmp ne i8* %12, null, !dbg !3384
  br i1 %13, label %14, label %15, !dbg !3380

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !3385

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.completion_get_settings, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)), !dbg !3388
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !3391
  br label %63, !dbg !3391

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !3392

; <label>:17:                                     ; preds = %16
  %18 = call %struct._GSList* @settings_get_sorted(), !dbg !3394
  store %struct._GSList* %18, %struct._GSList** %8, align 8, !dbg !3395
  %19 = load i8*, i8** %4, align 8, !dbg !3396
  %20 = call i64 @strlen(i8* %19) #6, !dbg !3397
  %21 = trunc i64 %20 to i32, !dbg !3397
  store i32 %21, i32* %9, align 4, !dbg !3398
  store %struct._GList* null, %struct._GList** %6, align 8, !dbg !3399
  %22 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !3400
  store %struct._GSList* %22, %struct._GSList** %7, align 8, !dbg !3402
  br label %23, !dbg !3403

; <label>:23:                                     ; preds = %56, %17
  %24 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3404
  %25 = icmp ne %struct._GSList* %24, null, !dbg !3407
  br i1 %25, label %26, label %60, !dbg !3408

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %10, metadata !3409, metadata !434), !dbg !3411
  %27 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3412
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !3413
  %29 = load i8*, i8** %28, align 8, !dbg !3413
  %30 = bitcast i8* %29 to %struct.SETTINGS_REC*, !dbg !3412
  store %struct.SETTINGS_REC* %30, %struct.SETTINGS_REC** %10, align 8, !dbg !3411
  %31 = load i32, i32* %5, align 4, !dbg !3414
  %32 = icmp eq i32 %31, 7, !dbg !3416
  br i1 %32, label %39, label %33, !dbg !3417

; <label>:33:                                     ; preds = %26
  %34 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %10, align 8, !dbg !3418
  %35 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %34, i32 0, i32 4, !dbg !3420
  %36 = load i32, i32* %35, align 8, !dbg !3420
  %37 = load i32, i32* %5, align 4, !dbg !3421
  %38 = icmp eq i32 %36, %37, !dbg !3422
  br i1 %38, label %39, label %55, !dbg !3423

; <label>:39:                                     ; preds = %33, %26
  %40 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %10, align 8, !dbg !3424
  %41 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %40, i32 0, i32 2, !dbg !3426
  %42 = load i8*, i8** %41, align 8, !dbg !3426
  %43 = load i8*, i8** %4, align 8, !dbg !3427
  %44 = load i32, i32* %9, align 4, !dbg !3428
  %45 = sext i32 %44 to i64, !dbg !3428
  %46 = call i32 @g_ascii_strncasecmp(i8* %42, i8* %43, i64 %45), !dbg !3429
  %47 = icmp eq i32 %46, 0, !dbg !3430
  br i1 %47, label %48, label %55, !dbg !3431

; <label>:48:                                     ; preds = %39
  %49 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !3432
  %50 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %10, align 8, !dbg !3433
  %51 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %50, i32 0, i32 2, !dbg !3434
  %52 = load i8*, i8** %51, align 8, !dbg !3434
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !3435
  %54 = call %struct._GList* @g_list_insert_sorted(%struct._GList* %49, i8* %53, i32 (i8*, i8*)* @g_istr_cmp), !dbg !3436
  store %struct._GList* %54, %struct._GList** %6, align 8, !dbg !3437
  br label %55, !dbg !3438

; <label>:55:                                     ; preds = %48, %39, %33
  br label %56, !dbg !3439

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3440
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !3442
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !3442
  store %struct._GSList* %59, %struct._GSList** %7, align 8, !dbg !3443
  br label %23, !dbg !3444, !llvm.loop !3445

; <label>:60:                                     ; preds = %23
  %61 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !3447
  call void @g_slist_free(%struct._GSList* %61), !dbg !3448
  %62 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !3449
  store %struct._GList* %62, %struct._GList** %3, align 8, !dbg !3450
  br label %63, !dbg !3450

; <label>:63:                                     ; preds = %60, %15
  %64 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !3451
  ret %struct._GList* %64, !dbg !3451
}

declare %struct.SETTINGS_REC* @settings_get_record(i8*) #2

declare i8* @settings_get_print(%struct.SETTINGS_REC*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare %struct._GSList* @settings_get_sorted() #2

declare void @g_slist_free(%struct._GSList*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!427, !428}
!llvm.ident = !{!429}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !295, globals: !323)
!1 = !DIFile(filename: "line214-completion.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 4, size: 32, align: 32, elements: !286)
!285 = !DIFile(filename: "../../../src/core/settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294}
!287 = !DIEnumerator(name: "SETTING_TYPE_STRING", value: 0)
!288 = !DIEnumerator(name: "SETTING_TYPE_INT", value: 1)
!289 = !DIEnumerator(name: "SETTING_TYPE_BOOLEAN", value: 2)
!290 = !DIEnumerator(name: "SETTING_TYPE_TIME", value: 3)
!291 = !DIEnumerator(name: "SETTING_TYPE_LEVEL", value: 4)
!292 = !DIEnumerator(name: "SETTING_TYPE_SIZE", value: 5)
!293 = !DIEnumerator(name: "SETTING_TYPE_CHOICE", value: 6)
!294 = !DIEnumerator(name: "SETTING_TYPE_ANY", value: 7)
!295 = !{!296, !297, !301, !303, !304, !311, !312, !317}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !299, line: 46, baseType: !300)
!299 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!303 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !305, line: 9, baseType: !306)
!305 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309, !309, !309, !309, !309, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !299, line: 88, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !299, line: 77, baseType: !296)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !299, line: 80, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !322, !322}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !299, line: 49, baseType: !303)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !299, line: 78, baseType: !309)
!323 = !{!324, !422, !423, !424, !425, !426}
!324 = distinct !DIGlobalVariable(name: "startpos", scope: !325, file: !326, line: 136, type: !303, isLocal: true, isDefinition: true, variable: i32* @word_complete.startpos)
!325 = distinct !DISubprogram(name: "word_complete", scope: !326, file: !326, line: 134, type: !327, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!326 = !DIFile(filename: "completion.c", directory: "/home/lichi/Desktop/irssi/task1")
!327 = !DISubroutineType(types: !328)
!328 = !{!311, !329, !301, !420, !303, !303}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !331, line: 117, baseType: !332)
!331 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !333, line: 28, size: 1280, align: 64, elements: !334)
!333 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = !{!335, !336, !337, !338, !339, !347, !384, !385, !386, !387, !388, !389, !391, !392, !393, !412, !413, !414, !415, !416, !417, !418, !419}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !332, file: !333, line: 29, baseType: !303, size: 32, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !333, line: 30, baseType: !311, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !332, file: !333, line: 32, baseType: !303, size: 32, align: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !332, file: !333, line: 32, baseType: !303, size: 32, align: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !332, file: !333, line: 34, baseType: !340, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !342, line: 37, baseType: !343)
!342 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !342, line: 39, size: 128, align: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !343, file: !342, line: 41, baseType: !316, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !342, line: 42, baseType: !340, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !332, file: !333, line: 35, baseType: !348, size: 64, align: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !331, line: 108, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !351, line: 5, size: 704, align: 64, elements: !352)
!351 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !{!353, !355, !356, !361, !362, !366, !367, !368, !374, !375, !376, !380}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !354, line: 3, baseType: !303, size: 32, align: 32)
!354 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !350, file: !354, line: 4, baseType: !303, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !350, file: !354, line: 5, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !359, line: 37, baseType: !360)
!359 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !359, line: 37, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !350, file: !354, line: 7, baseType: !296, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !350, file: !354, line: 8, baseType: !363, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !331, line: 107, baseType: !365)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !331, line: 107, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !350, file: !354, line: 9, baseType: !311, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !354, line: 10, baseType: !311, size: 64, align: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !350, file: !354, line: 11, baseType: !369, size: 64, align: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !370, line: 75, baseType: !371)
!370 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !372, line: 139, baseType: !373)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !350, file: !354, line: 12, baseType: !303, size: 32, align: 32, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !350, file: !354, line: 13, baseType: !311, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !350, file: !354, line: 15, baseType: !377, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !348}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !350, file: !354, line: 17, baseType: !381, size: 64, align: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!301, !348}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !332, file: !333, line: 36, baseType: !363, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !332, file: !333, line: 37, baseType: !363, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !332, file: !333, line: 38, baseType: !311, size: 64, align: 64, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !332, file: !333, line: 40, baseType: !303, size: 32, align: 32, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !332, file: !333, line: 41, baseType: !340, size: 64, align: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !332, file: !333, line: 43, baseType: !390, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!390 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !332, file: !333, line: 44, baseType: !390, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !332, file: !333, line: 45, baseType: !390, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !332, file: !333, line: 48, baseType: !394, size: 64, align: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !396, line: 14, baseType: !397)
!396 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 6, size: 256, align: 64, elements: !398)
!398 = !{!399, !400, !409, !410, !411}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !396, line: 7, baseType: !311, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !397, file: !396, line: 9, baseType: !401, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !403, line: 37, baseType: !404)
!403 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !403, line: 39, size: 192, align: 64, elements: !405)
!405 = !{!406, !407, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !404, file: !403, line: 41, baseType: !316, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !403, line: 42, baseType: !401, size: 64, align: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !404, file: !403, line: 43, baseType: !401, size: 64, align: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !397, file: !396, line: 10, baseType: !303, size: 32, align: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !397, file: !396, line: 12, baseType: !303, size: 32, align: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !397, file: !396, line: 13, baseType: !303, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !332, file: !333, line: 49, baseType: !311, size: 64, align: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !332, file: !333, line: 51, baseType: !303, size: 32, align: 32, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !332, file: !333, line: 52, baseType: !311, size: 64, align: 64, offset: 896)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !332, file: !333, line: 54, baseType: !369, size: 64, align: 64, offset: 960)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !332, file: !333, line: 55, baseType: !369, size: 64, align: 64, offset: 1024)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !332, file: !333, line: 57, baseType: !311, size: 64, align: 64, offset: 1088)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !332, file: !333, line: 58, baseType: !296, size: 64, align: 64, offset: 1152)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !332, file: !333, line: 60, baseType: !296, size: 64, align: 64, offset: 1216)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!421 = !{}
!422 = distinct !DIGlobalVariable(name: "wordlen", scope: !325, file: !326, line: 136, type: !303, isLocal: true, isDefinition: true, variable: i32* @word_complete.wordlen)
!423 = distinct !DIGlobalVariable(name: "complist", scope: !0, file: !326, line: 33, type: !401, isLocal: true, isDefinition: true, variable: %struct._GList** @complist)
!424 = distinct !DIGlobalVariable(name: "last_line", scope: !0, file: !326, line: 34, type: !311, isLocal: true, isDefinition: true, variable: i8** @last_line)
!425 = distinct !DIGlobalVariable(name: "last_want_space", scope: !0, file: !326, line: 35, type: !303, isLocal: true, isDefinition: true, variable: i32* @last_want_space)
!426 = distinct !DIGlobalVariable(name: "last_line_pos", scope: !0, file: !326, line: 35, type: !303, isLocal: true, isDefinition: true, variable: i32* @last_line_pos)
!427 = !{i32 2, !"Dwarf Version", i32 4}
!428 = !{i32 2, !"Debug Info Version", i32 3}
!429 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!430 = distinct !DISubprogram(name: "auto_word_complete", scope: !326, file: !326, line: 89, type: !431, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!431 = !DISubroutineType(types: !432)
!432 = !{!311, !301, !420}
!433 = !DILocalVariable(name: "line", arg: 1, scope: !430, file: !326, line: 89, type: !301)
!434 = !DIExpression()
!435 = !DILocation(line: 89, column: 38, scope: !430)
!436 = !DILocalVariable(name: "pos", arg: 2, scope: !430, file: !326, line: 89, type: !420)
!437 = !DILocation(line: 89, column: 49, scope: !430)
!438 = !DILocalVariable(name: "result", scope: !430, file: !326, line: 91, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !441, line: 39, baseType: !442)
!441 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !441, line: 41, size: 192, align: 64, elements: !443)
!443 = !{!444, !445, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !442, file: !441, line: 43, baseType: !297, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !442, file: !441, line: 44, baseType: !446, size: 64, align: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !447, line: 66, baseType: !448)
!447 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!448 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !442, file: !441, line: 45, baseType: !446, size: 64, align: 64, offset: 128)
!450 = !DILocation(line: 91, column: 11, scope: !430)
!451 = !DILocalVariable(name: "replace", scope: !430, file: !326, line: 92, type: !301)
!452 = !DILocation(line: 92, column: 14, scope: !430)
!453 = !DILocalVariable(name: "word", scope: !430, file: !326, line: 93, type: !311)
!454 = !DILocation(line: 93, column: 8, scope: !430)
!455 = !DILocalVariable(name: "wordstart", scope: !430, file: !326, line: 93, type: !311)
!456 = !DILocation(line: 93, column: 15, scope: !430)
!457 = !DILocalVariable(name: "ret", scope: !430, file: !326, line: 93, type: !311)
!458 = !DILocation(line: 93, column: 27, scope: !430)
!459 = !DILocalVariable(name: "startpos", scope: !430, file: !326, line: 94, type: !303)
!460 = !DILocation(line: 94, column: 6, scope: !430)
!461 = !DILocation(line: 96, column: 2, scope: !430)
!462 = distinct !{!462, !461}
!463 = !DILocation(line: 96, column: 10, scope: !464)
!464 = !DILexicalBlockFile(scope: !465, file: !326, discriminator: 1)
!465 = distinct !DILexicalBlock(scope: !466, file: !326, line: 96, column: 10)
!466 = distinct !DILexicalBlock(scope: !430, file: !326, line: 96, column: 4)
!467 = !DILocation(line: 96, column: 15, scope: !464)
!468 = !DILocation(line: 96, column: 5, scope: !469)
!469 = !DILexicalBlockFile(scope: !470, file: !326, discriminator: 2)
!470 = distinct !DILexicalBlock(scope: !465, file: !326, line: 96, column: 3)
!471 = !DILocation(line: 96, column: 14, scope: !472)
!472 = !DILexicalBlockFile(scope: !473, file: !326, discriminator: 3)
!473 = distinct !DILexicalBlock(scope: !465, file: !326, line: 96, column: 12)
!474 = !DILocation(line: 96, column: 99, scope: !472)
!475 = !DILocation(line: 96, column: 7, scope: !476)
!476 = !DILexicalBlockFile(scope: !466, file: !326, discriminator: 4)
!477 = !DILocation(line: 97, column: 2, scope: !430)
!478 = distinct !{!478, !477}
!479 = !DILocation(line: 97, column: 10, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !326, discriminator: 1)
!481 = distinct !DILexicalBlock(scope: !482, file: !326, line: 97, column: 10)
!482 = distinct !DILexicalBlock(scope: !430, file: !326, line: 97, column: 4)
!483 = !DILocation(line: 97, column: 14, scope: !480)
!484 = !DILocation(line: 97, column: 5, scope: !485)
!485 = !DILexicalBlockFile(scope: !486, file: !326, discriminator: 2)
!486 = distinct !DILexicalBlock(scope: !481, file: !326, line: 97, column: 3)
!487 = !DILocation(line: 97, column: 14, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !326, discriminator: 3)
!489 = distinct !DILexicalBlock(scope: !481, file: !326, line: 97, column: 12)
!490 = !DILocation(line: 97, column: 98, scope: !488)
!491 = !DILocation(line: 97, column: 7, scope: !492)
!492 = !DILexicalBlockFile(scope: !482, file: !326, discriminator: 4)
!493 = !DILocation(line: 99, column: 21, scope: !430)
!494 = !DILocation(line: 99, column: 28, scope: !430)
!495 = !DILocation(line: 99, column: 27, scope: !430)
!496 = !DILocation(line: 99, column: 9, scope: !430)
!497 = !DILocation(line: 99, column: 7, scope: !430)
!498 = !DILocation(line: 100, column: 20, scope: !430)
!499 = !DILocation(line: 100, column: 30, scope: !430)
!500 = !DILocation(line: 100, column: 29, scope: !430)
!501 = !DILocation(line: 100, column: 13, scope: !430)
!502 = !DILocation(line: 100, column: 11, scope: !430)
!503 = !DILocation(line: 102, column: 24, scope: !430)
!504 = !DILocation(line: 102, column: 11, scope: !430)
!505 = !DILocation(line: 102, column: 9, scope: !430)
!506 = !DILocation(line: 103, column: 17, scope: !430)
!507 = !DILocation(line: 103, column: 25, scope: !430)
!508 = !DILocation(line: 103, column: 42, scope: !430)
!509 = !DILocation(line: 103, column: 35, scope: !430)
!510 = !DILocation(line: 103, column: 2, scope: !511)
!511 = !DILexicalBlockFile(scope: !430, file: !326, discriminator: 1)
!512 = !DILocation(line: 106, column: 28, scope: !430)
!513 = !DILocation(line: 106, column: 12, scope: !430)
!514 = !DILocation(line: 106, column: 10, scope: !430)
!515 = !DILocation(line: 107, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !430, file: !326, line: 107, column: 6)
!517 = !DILocation(line: 107, column: 14, scope: !516)
!518 = !DILocation(line: 107, column: 6, scope: !430)
!519 = !DILocation(line: 108, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !326, line: 107, column: 22)
!521 = !DILocation(line: 109, column: 17, scope: !520)
!522 = !DILocation(line: 109, column: 3, scope: !520)
!523 = !DILocation(line: 110, column: 2, scope: !520)
!524 = !DILocation(line: 111, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !516, file: !326, line: 110, column: 9)
!526 = !DILocation(line: 111, column: 26, scope: !525)
!527 = !DILocation(line: 111, column: 19, scope: !525)
!528 = !DILocation(line: 111, column: 18, scope: !525)
!529 = !DILocation(line: 111, column: 4, scope: !525)
!530 = !DILocation(line: 111, column: 8, scope: !525)
!531 = !DILocation(line: 113, column: 19, scope: !525)
!532 = !DILocation(line: 113, column: 27, scope: !525)
!533 = !DILocation(line: 113, column: 37, scope: !525)
!534 = !DILocation(line: 113, column: 3, scope: !525)
!535 = !DILocation(line: 114, column: 9, scope: !525)
!536 = !DILocation(line: 114, column: 17, scope: !525)
!537 = !DILocation(line: 114, column: 7, scope: !525)
!538 = !DILocation(line: 115, column: 17, scope: !525)
!539 = !DILocation(line: 115, column: 3, scope: !525)
!540 = !DILocation(line: 118, column: 9, scope: !430)
!541 = !DILocation(line: 118, column: 2, scope: !430)
!542 = !DILocation(line: 119, column: 9, scope: !430)
!543 = !DILocation(line: 119, column: 2, scope: !430)
!544 = !DILocation(line: 120, column: 1, scope: !430)
!545 = distinct !DISubprogram(name: "get_word_at", scope: !326, file: !326, line: 68, type: !546, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!546 = !DISubroutineType(types: !547)
!547 = !{!311, !301, !303, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!549 = !DILocalVariable(name: "str", arg: 1, scope: !545, file: !326, line: 68, type: !301)
!550 = !DILocation(line: 68, column: 38, scope: !545)
!551 = !DILocalVariable(name: "pos", arg: 2, scope: !545, file: !326, line: 68, type: !303)
!552 = !DILocation(line: 68, column: 47, scope: !545)
!553 = !DILocalVariable(name: "startpos", arg: 3, scope: !545, file: !326, line: 68, type: !548)
!554 = !DILocation(line: 68, column: 59, scope: !545)
!555 = !DILocalVariable(name: "start", scope: !545, file: !326, line: 70, type: !301)
!556 = !DILocation(line: 70, column: 14, scope: !545)
!557 = !DILocalVariable(name: "end", scope: !545, file: !326, line: 70, type: !301)
!558 = !DILocation(line: 70, column: 22, scope: !545)
!559 = !DILocation(line: 72, column: 2, scope: !545)
!560 = distinct !{!560, !559}
!561 = !DILocation(line: 72, column: 10, scope: !562)
!562 = !DILexicalBlockFile(scope: !563, file: !326, discriminator: 1)
!563 = distinct !DILexicalBlock(scope: !564, file: !326, line: 72, column: 10)
!564 = distinct !DILexicalBlock(scope: !545, file: !326, line: 72, column: 4)
!565 = !DILocation(line: 72, column: 14, scope: !562)
!566 = !DILocation(line: 72, column: 5, scope: !567)
!567 = !DILexicalBlockFile(scope: !568, file: !326, discriminator: 2)
!568 = distinct !DILexicalBlock(scope: !563, file: !326, line: 72, column: 3)
!569 = !DILocation(line: 72, column: 14, scope: !570)
!570 = !DILexicalBlockFile(scope: !571, file: !326, discriminator: 3)
!571 = distinct !DILexicalBlock(scope: !563, file: !326, line: 72, column: 12)
!572 = !DILocation(line: 72, column: 98, scope: !570)
!573 = !DILocation(line: 72, column: 7, scope: !574)
!574 = !DILexicalBlockFile(scope: !564, file: !326, discriminator: 4)
!575 = !DILocation(line: 73, column: 2, scope: !545)
!576 = distinct !{!576, !575}
!577 = !DILocation(line: 73, column: 10, scope: !578)
!578 = !DILexicalBlockFile(scope: !579, file: !326, discriminator: 1)
!579 = distinct !DILexicalBlock(scope: !580, file: !326, line: 73, column: 10)
!580 = distinct !DILexicalBlock(scope: !545, file: !326, line: 73, column: 4)
!581 = !DILocation(line: 73, column: 14, scope: !578)
!582 = !DILocation(line: 73, column: 22, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !326, discriminator: 2)
!584 = distinct !DILexicalBlock(scope: !579, file: !326, line: 73, column: 20)
!585 = !DILocation(line: 73, column: 31, scope: !586)
!586 = !DILexicalBlockFile(scope: !587, file: !326, discriminator: 3)
!587 = distinct !DILexicalBlock(scope: !579, file: !326, line: 73, column: 29)
!588 = !DILocation(line: 73, column: 112, scope: !586)
!589 = !DILocation(line: 73, column: 7, scope: !590)
!590 = !DILexicalBlockFile(scope: !580, file: !326, discriminator: 4)
!591 = !DILocation(line: 76, column: 10, scope: !545)
!592 = !DILocation(line: 76, column: 14, scope: !545)
!593 = !DILocation(line: 76, column: 13, scope: !545)
!594 = !DILocation(line: 76, column: 8, scope: !545)
!595 = !DILocation(line: 77, column: 2, scope: !545)
!596 = !DILocation(line: 77, column: 9, scope: !597)
!597 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 1)
!598 = !DILocation(line: 77, column: 17, scope: !597)
!599 = !DILocation(line: 77, column: 15, scope: !597)
!600 = !DILocation(line: 77, column: 21, scope: !597)
!601 = !DILocation(line: 77, column: 27, scope: !602)
!602 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 2)
!603 = !DILocation(line: 77, column: 26, scope: !602)
!604 = !DILocation(line: 77, column: 38, scope: !602)
!605 = !DILocation(line: 77, column: 46, scope: !602)
!606 = !DILocation(line: 77, column: 51, scope: !607)
!607 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 3)
!608 = !DILocation(line: 77, column: 50, scope: !607)
!609 = !DILocation(line: 77, column: 62, scope: !607)
!610 = !DILocation(line: 77, column: 46, scope: !607)
!611 = !DILocation(line: 77, column: 2, scope: !612)
!612 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 4)
!613 = !DILocation(line: 77, column: 77, scope: !614)
!614 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 5)
!615 = !DILocation(line: 77, column: 2, scope: !614)
!616 = distinct !{!616, !595}
!617 = !DILocation(line: 79, column: 8, scope: !545)
!618 = !DILocation(line: 79, column: 6, scope: !545)
!619 = !DILocation(line: 80, column: 2, scope: !545)
!620 = !DILocation(line: 80, column: 9, scope: !597)
!621 = !DILocation(line: 80, column: 17, scope: !597)
!622 = !DILocation(line: 80, column: 15, scope: !597)
!623 = !DILocation(line: 80, column: 21, scope: !597)
!624 = !DILocation(line: 80, column: 28, scope: !602)
!625 = !DILocation(line: 80, column: 27, scope: !602)
!626 = !DILocation(line: 80, column: 39, scope: !602)
!627 = !DILocation(line: 80, column: 47, scope: !602)
!628 = !DILocation(line: 80, column: 52, scope: !607)
!629 = !DILocation(line: 80, column: 51, scope: !607)
!630 = !DILocation(line: 80, column: 63, scope: !607)
!631 = !DILocation(line: 80, column: 47, scope: !607)
!632 = !DILocation(line: 80, column: 24, scope: !612)
!633 = !DILocation(line: 80, column: 2, scope: !614)
!634 = !DILocation(line: 80, column: 78, scope: !635)
!635 = !DILexicalBlockFile(scope: !545, file: !326, discriminator: 6)
!636 = !DILocation(line: 80, column: 2, scope: !635)
!637 = distinct !{!637, !619}
!638 = !DILocation(line: 81, column: 2, scope: !545)
!639 = !DILocation(line: 81, column: 10, scope: !597)
!640 = !DILocation(line: 81, column: 9, scope: !597)
!641 = !DILocation(line: 81, column: 14, scope: !597)
!642 = !DILocation(line: 81, column: 22, scope: !597)
!643 = !DILocation(line: 81, column: 30, scope: !602)
!644 = !DILocation(line: 81, column: 29, scope: !602)
!645 = !DILocation(line: 81, column: 28, scope: !602)
!646 = !DILocation(line: 81, column: 35, scope: !602)
!647 = !DILocation(line: 81, column: 43, scope: !602)
!648 = !DILocation(line: 81, column: 49, scope: !607)
!649 = !DILocation(line: 81, column: 48, scope: !607)
!650 = !DILocation(line: 81, column: 47, scope: !607)
!651 = !DILocation(line: 81, column: 54, scope: !607)
!652 = !DILocation(line: 81, column: 43, scope: !607)
!653 = !DILocation(line: 81, column: 25, scope: !612)
!654 = !DILocation(line: 81, column: 2, scope: !614)
!655 = !DILocation(line: 81, column: 67, scope: !635)
!656 = !DILocation(line: 81, column: 2, scope: !635)
!657 = distinct !{!657, !638}
!658 = !DILocation(line: 82, column: 2, scope: !545)
!659 = !DILocation(line: 82, column: 10, scope: !597)
!660 = !DILocation(line: 82, column: 9, scope: !597)
!661 = !DILocation(line: 82, column: 14, scope: !597)
!662 = !DILocation(line: 82, column: 22, scope: !597)
!663 = !DILocation(line: 82, column: 28, scope: !602)
!664 = !DILocation(line: 82, column: 27, scope: !602)
!665 = !DILocation(line: 82, column: 26, scope: !602)
!666 = !DILocation(line: 82, column: 33, scope: !602)
!667 = !DILocation(line: 82, column: 2, scope: !607)
!668 = !DILocation(line: 82, column: 45, scope: !612)
!669 = !DILocation(line: 82, column: 2, scope: !612)
!670 = distinct !{!670, !658}
!671 = !DILocation(line: 84, column: 23, scope: !545)
!672 = !DILocation(line: 84, column: 3, scope: !545)
!673 = !DILocation(line: 84, column: 12, scope: !545)
!674 = !DILocation(line: 85, column: 19, scope: !545)
!675 = !DILocation(line: 85, column: 33, scope: !545)
!676 = !DILocation(line: 85, column: 37, scope: !545)
!677 = !DILocation(line: 85, column: 36, scope: !545)
!678 = !DILocation(line: 85, column: 26, scope: !545)
!679 = !DILocation(line: 85, column: 9, scope: !545)
!680 = !DILocation(line: 85, column: 2, scope: !545)
!681 = !DILocation(line: 86, column: 1, scope: !545)
!682 = distinct !DISubprogram(name: "completion_find", scope: !326, file: !326, line: 49, type: !683, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!683 = !DISubroutineType(types: !684)
!684 = !{!301, !301, !303}
!685 = !DILocalVariable(name: "key", arg: 1, scope: !682, file: !326, line: 49, type: !301)
!686 = !DILocation(line: 49, column: 48, scope: !682)
!687 = !DILocalVariable(name: "automatic", arg: 2, scope: !682, file: !326, line: 49, type: !303)
!688 = !DILocation(line: 49, column: 57, scope: !682)
!689 = !DILocalVariable(name: "node", scope: !682, file: !326, line: 51, type: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !4, line: 17, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !4, line: 20, size: 192, align: 64, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !4, line: 21, baseType: !303, size: 32, align: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !692, file: !4, line: 22, baseType: !311, size: 64, align: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !4, line: 23, baseType: !296, size: 64, align: 64, offset: 128)
!697 = !DILocation(line: 51, column: 15, scope: !682)
!698 = !DILocation(line: 53, column: 30, scope: !682)
!699 = !DILocation(line: 53, column: 9, scope: !682)
!700 = !DILocation(line: 53, column: 7, scope: !682)
!701 = !DILocation(line: 54, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !682, file: !326, line: 54, column: 6)
!703 = !DILocation(line: 54, column: 11, scope: !702)
!704 = !DILocation(line: 54, column: 18, scope: !702)
!705 = !DILocation(line: 54, column: 21, scope: !706)
!706 = !DILexicalBlockFile(scope: !702, file: !326, discriminator: 1)
!707 = !DILocation(line: 54, column: 27, scope: !706)
!708 = !DILocation(line: 54, column: 32, scope: !706)
!709 = !DILocation(line: 54, column: 6, scope: !706)
!710 = !DILocation(line: 55, column: 3, scope: !702)
!711 = !DILocation(line: 57, column: 29, scope: !682)
!712 = !DILocation(line: 57, column: 41, scope: !682)
!713 = !DILocation(line: 57, column: 47, scope: !682)
!714 = !DILocation(line: 57, column: 9, scope: !682)
!715 = !DILocation(line: 57, column: 7, scope: !682)
!716 = !DILocation(line: 58, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !682, file: !326, line: 58, column: 6)
!718 = !DILocation(line: 58, column: 11, scope: !717)
!719 = !DILocation(line: 58, column: 6, scope: !682)
!720 = !DILocation(line: 59, column: 3, scope: !717)
!721 = !DILocation(line: 61, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !682, file: !326, line: 61, column: 6)
!723 = !DILocation(line: 61, column: 16, scope: !722)
!724 = !DILocation(line: 61, column: 41, scope: !725)
!725 = !DILexicalBlockFile(scope: !722, file: !326, discriminator: 1)
!726 = !DILocation(line: 61, column: 20, scope: !725)
!727 = !DILocation(line: 61, column: 6, scope: !725)
!728 = !DILocation(line: 62, column: 3, scope: !722)
!729 = !DILocation(line: 64, column: 29, scope: !682)
!730 = !DILocation(line: 64, column: 9, scope: !682)
!731 = !DILocation(line: 64, column: 2, scope: !682)
!732 = !DILocation(line: 65, column: 1, scope: !682)
!733 = !DILocalVariable(name: "window", arg: 1, scope: !325, file: !326, line: 134, type: !329)
!734 = !DILocation(line: 134, column: 33, scope: !325)
!735 = !DILocalVariable(name: "line", arg: 2, scope: !325, file: !326, line: 134, type: !301)
!736 = !DILocation(line: 134, column: 53, scope: !325)
!737 = !DILocalVariable(name: "pos", arg: 3, scope: !325, file: !326, line: 134, type: !420)
!738 = !DILocation(line: 134, column: 64, scope: !325)
!739 = !DILocalVariable(name: "erase", arg: 4, scope: !325, file: !326, line: 134, type: !303)
!740 = !DILocation(line: 134, column: 73, scope: !325)
!741 = !DILocalVariable(name: "backward", arg: 5, scope: !325, file: !326, line: 134, type: !303)
!742 = !DILocation(line: 134, column: 84, scope: !325)
!743 = !DILocalVariable(name: "old_startpos", scope: !325, file: !326, line: 137, type: !303)
!744 = !DILocation(line: 137, column: 13, scope: !325)
!745 = !DILocalVariable(name: "old_wordlen", scope: !325, file: !326, line: 137, type: !303)
!746 = !DILocation(line: 137, column: 27, scope: !325)
!747 = !DILocalVariable(name: "result", scope: !325, file: !326, line: 139, type: !439)
!748 = !DILocation(line: 139, column: 11, scope: !325)
!749 = !DILocalVariable(name: "cmdchars", scope: !325, file: !326, line: 140, type: !301)
!750 = !DILocation(line: 140, column: 14, scope: !325)
!751 = !DILocalVariable(name: "word", scope: !325, file: !326, line: 141, type: !311)
!752 = !DILocation(line: 141, column: 8, scope: !325)
!753 = !DILocalVariable(name: "wordstart", scope: !325, file: !326, line: 141, type: !311)
!754 = !DILocation(line: 141, column: 15, scope: !325)
!755 = !DILocalVariable(name: "linestart", scope: !325, file: !326, line: 141, type: !311)
!756 = !DILocation(line: 141, column: 27, scope: !325)
!757 = !DILocalVariable(name: "ret", scope: !325, file: !326, line: 141, type: !311)
!758 = !DILocation(line: 141, column: 39, scope: !325)
!759 = !DILocalVariable(name: "data", scope: !325, file: !326, line: 141, type: !311)
!760 = !DILocation(line: 141, column: 45, scope: !325)
!761 = !DILocalVariable(name: "continue_complete", scope: !325, file: !326, line: 142, type: !303)
!762 = !DILocation(line: 142, column: 6, scope: !325)
!763 = !DILocalVariable(name: "want_space", scope: !325, file: !326, line: 142, type: !303)
!764 = !DILocation(line: 142, column: 25, scope: !325)
!765 = !DILocalVariable(name: "expand_escapes", scope: !325, file: !326, line: 142, type: !303)
!766 = !DILocation(line: 142, column: 37, scope: !325)
!767 = !DILocation(line: 144, column: 2, scope: !325)
!768 = distinct !{!768, !767}
!769 = !DILocation(line: 144, column: 10, scope: !770)
!770 = !DILexicalBlockFile(scope: !771, file: !326, discriminator: 1)
!771 = distinct !DILexicalBlock(scope: !772, file: !326, line: 144, column: 10)
!772 = distinct !DILexicalBlock(scope: !325, file: !326, line: 144, column: 4)
!773 = !DILocation(line: 144, column: 15, scope: !770)
!774 = !DILocation(line: 144, column: 5, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !326, discriminator: 2)
!776 = distinct !DILexicalBlock(scope: !771, file: !326, line: 144, column: 3)
!777 = !DILocation(line: 144, column: 14, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !326, discriminator: 3)
!779 = distinct !DILexicalBlock(scope: !771, file: !326, line: 144, column: 12)
!780 = !DILocation(line: 144, column: 99, scope: !778)
!781 = !DILocation(line: 144, column: 7, scope: !782)
!782 = !DILexicalBlockFile(scope: !772, file: !326, discriminator: 4)
!783 = !DILocation(line: 145, column: 2, scope: !325)
!784 = distinct !{!784, !783}
!785 = !DILocation(line: 145, column: 10, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !326, discriminator: 1)
!787 = distinct !DILexicalBlock(scope: !788, file: !326, line: 145, column: 10)
!788 = distinct !DILexicalBlock(scope: !325, file: !326, line: 145, column: 4)
!789 = !DILocation(line: 145, column: 14, scope: !786)
!790 = !DILocation(line: 145, column: 5, scope: !791)
!791 = !DILexicalBlockFile(scope: !792, file: !326, discriminator: 2)
!792 = distinct !DILexicalBlock(scope: !787, file: !326, line: 145, column: 3)
!793 = !DILocation(line: 145, column: 14, scope: !794)
!794 = !DILexicalBlockFile(scope: !795, file: !326, discriminator: 3)
!795 = distinct !DILexicalBlock(scope: !787, file: !326, line: 145, column: 12)
!796 = !DILocation(line: 145, column: 98, scope: !794)
!797 = !DILocation(line: 145, column: 7, scope: !798)
!798 = !DILexicalBlockFile(scope: !788, file: !326, discriminator: 4)
!799 = !DILocation(line: 147, column: 22, scope: !325)
!800 = !DILocation(line: 147, column: 31, scope: !325)
!801 = !DILocation(line: 147, column: 38, scope: !325)
!802 = !DILocation(line: 147, column: 42, scope: !803)
!803 = !DILexicalBlockFile(scope: !325, file: !326, discriminator: 1)
!804 = !DILocation(line: 147, column: 41, scope: !803)
!805 = !DILocation(line: 147, column: 49, scope: !803)
!806 = !DILocation(line: 147, column: 46, scope: !803)
!807 = !DILocation(line: 147, column: 63, scope: !803)
!808 = !DILocation(line: 148, column: 13, scope: !325)
!809 = !DILocation(line: 148, column: 19, scope: !325)
!810 = !DILocation(line: 148, column: 3, scope: !325)
!811 = !DILocation(line: 148, column: 30, scope: !325)
!812 = !DILocation(line: 147, column: 63, scope: !813)
!813 = !DILexicalBlockFile(scope: !325, file: !326, discriminator: 2)
!814 = !DILocation(line: 147, column: 20, scope: !813)
!815 = !DILocation(line: 150, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !325, file: !326, line: 150, column: 6)
!817 = !DILocation(line: 150, column: 12, scope: !816)
!818 = !DILocation(line: 150, column: 16, scope: !819)
!819 = !DILexicalBlockFile(scope: !816, file: !326, discriminator: 1)
!820 = !DILocation(line: 150, column: 6, scope: !819)
!821 = !DILocation(line: 151, column: 3, scope: !816)
!822 = !DILocation(line: 153, column: 17, scope: !325)
!823 = !DILocation(line: 153, column: 15, scope: !325)
!824 = !DILocation(line: 154, column: 16, scope: !325)
!825 = !DILocation(line: 154, column: 14, scope: !325)
!826 = !DILocation(line: 156, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !325, file: !326, line: 156, column: 6)
!828 = !DILocation(line: 156, column: 13, scope: !827)
!829 = !DILocation(line: 156, column: 16, scope: !830)
!830 = !DILexicalBlockFile(scope: !827, file: !326, discriminator: 1)
!831 = !DILocation(line: 156, column: 6, scope: !830)
!832 = !DILocation(line: 157, column: 8, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !326, line: 156, column: 35)
!834 = !DILocation(line: 158, column: 27, scope: !833)
!835 = !DILocation(line: 159, column: 2, scope: !833)
!836 = !DILocalVariable(name: "old_wordstart", scope: !837, file: !326, line: 160, type: !311)
!837 = distinct !DILexicalBlock(scope: !827, file: !326, line: 159, column: 9)
!838 = !DILocation(line: 160, column: 9, scope: !837)
!839 = !DILocation(line: 163, column: 22, scope: !837)
!840 = !DILocation(line: 163, column: 29, scope: !837)
!841 = !DILocation(line: 163, column: 28, scope: !837)
!842 = !DILocation(line: 163, column: 10, scope: !837)
!843 = !DILocation(line: 163, column: 8, scope: !837)
!844 = !DILocation(line: 164, column: 19, scope: !837)
!845 = !DILocation(line: 164, column: 17, scope: !837)
!846 = !DILocation(line: 166, column: 21, scope: !837)
!847 = !DILocation(line: 166, column: 31, scope: !837)
!848 = !DILocation(line: 166, column: 30, scope: !837)
!849 = !DILocation(line: 166, column: 14, scope: !837)
!850 = !DILocation(line: 166, column: 12, scope: !837)
!851 = !DILocation(line: 167, column: 20, scope: !837)
!852 = !DILocation(line: 167, column: 13, scope: !837)
!853 = !DILocation(line: 167, column: 11, scope: !837)
!854 = !DILocation(line: 170, column: 3, scope: !837)
!855 = !DILocation(line: 170, column: 10, scope: !856)
!856 = !DILexicalBlockFile(scope: !837, file: !326, discriminator: 1)
!857 = !DILocation(line: 170, column: 22, scope: !856)
!858 = !DILocation(line: 170, column: 20, scope: !856)
!859 = !DILocation(line: 170, column: 27, scope: !856)
!860 = !DILocation(line: 170, column: 32, scope: !861)
!861 = !DILexicalBlockFile(scope: !837, file: !326, discriminator: 2)
!862 = !DILocation(line: 170, column: 31, scope: !861)
!863 = !DILocation(line: 170, column: 47, scope: !861)
!864 = !DILocation(line: 170, column: 3, scope: !865)
!865 = !DILexicalBlockFile(scope: !837, file: !326, discriminator: 3)
!866 = !DILocation(line: 171, column: 13, scope: !837)
!867 = !DILocation(line: 170, column: 3, scope: !868)
!868 = !DILexicalBlockFile(scope: !837, file: !326, discriminator: 4)
!869 = distinct !{!869, !854}
!870 = !DILocation(line: 174, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !837, file: !326, line: 174, column: 7)
!872 = !DILocation(line: 174, column: 23, scope: !871)
!873 = !DILocation(line: 174, column: 21, scope: !871)
!874 = !DILocation(line: 174, column: 28, scope: !871)
!875 = !DILocation(line: 174, column: 31, scope: !876)
!876 = !DILexicalBlockFile(scope: !871, file: !326, discriminator: 1)
!877 = !DILocation(line: 174, column: 44, scope: !876)
!878 = !DILocation(line: 174, column: 41, scope: !876)
!879 = !DILocation(line: 174, column: 7, scope: !876)
!880 = !DILocation(line: 175, column: 16, scope: !871)
!881 = !DILocation(line: 175, column: 30, scope: !871)
!882 = !DILocation(line: 175, column: 14, scope: !871)
!883 = !DILocation(line: 175, column: 4, scope: !871)
!884 = !DILocation(line: 177, column: 25, scope: !837)
!885 = !DILocation(line: 177, column: 38, scope: !837)
!886 = !DILocation(line: 177, column: 48, scope: !837)
!887 = !DILocation(line: 177, column: 47, scope: !837)
!888 = !DILocation(line: 177, column: 31, scope: !837)
!889 = !DILocation(line: 177, column: 15, scope: !837)
!890 = !DILocation(line: 177, column: 13, scope: !837)
!891 = !DILocation(line: 185, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !837, file: !326, line: 185, column: 7)
!893 = !DILocation(line: 185, column: 14, scope: !892)
!894 = !DILocation(line: 185, column: 18, scope: !895)
!895 = !DILexicalBlockFile(scope: !892, file: !326, discriminator: 1)
!896 = !DILocation(line: 185, column: 17, scope: !895)
!897 = !DILocation(line: 185, column: 22, scope: !895)
!898 = !DILocation(line: 185, column: 26, scope: !895)
!899 = !DILocation(line: 185, column: 37, scope: !900)
!900 = !DILexicalBlockFile(scope: !892, file: !326, discriminator: 2)
!901 = !DILocation(line: 185, column: 36, scope: !900)
!902 = !DILocation(line: 185, column: 40, scope: !900)
!903 = !DILocation(line: 185, column: 31, scope: !900)
!904 = !DILocation(line: 185, column: 30, scope: !900)
!905 = !DILocation(line: 185, column: 45, scope: !900)
!906 = !DILocation(line: 185, column: 53, scope: !900)
!907 = !DILocation(line: 186, column: 9, scope: !892)
!908 = !DILocation(line: 186, column: 8, scope: !892)
!909 = !DILocation(line: 186, column: 19, scope: !892)
!910 = !DILocation(line: 186, column: 27, scope: !892)
!911 = !DILocation(line: 186, column: 33, scope: !895)
!912 = !DILocation(line: 186, column: 32, scope: !895)
!913 = !DILocation(line: 186, column: 48, scope: !895)
!914 = !DILocation(line: 185, column: 7, scope: !865)
!915 = !DILocalVariable(name: "old", scope: !916, file: !326, line: 187, type: !311)
!916 = distinct !DILexicalBlock(scope: !892, file: !326, line: 186, column: 58)
!917 = !DILocation(line: 187, column: 10, scope: !916)
!918 = !DILocation(line: 189, column: 10, scope: !916)
!919 = !DILocation(line: 189, column: 8, scope: !916)
!920 = !DILocation(line: 191, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !326, line: 191, column: 8)
!922 = !DILocation(line: 191, column: 8, scope: !921)
!923 = !DILocation(line: 191, column: 19, scope: !921)
!924 = !DILocation(line: 191, column: 8, scope: !916)
!925 = !DILocation(line: 192, column: 26, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !326, line: 191, column: 28)
!927 = !DILocation(line: 192, column: 17, scope: !926)
!928 = !DILocation(line: 192, column: 15, scope: !926)
!929 = !DILocation(line: 193, column: 4, scope: !926)
!930 = !DILocalVariable(name: "str", scope: !931, file: !326, line: 194, type: !439)
!931 = distinct !DILexicalBlock(scope: !921, file: !326, line: 193, column: 11)
!932 = !DILocation(line: 194, column: 14, scope: !931)
!933 = !DILocation(line: 194, column: 33, scope: !931)
!934 = !DILocation(line: 194, column: 20, scope: !931)
!935 = !DILocation(line: 195, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !931, file: !326, line: 195, column: 9)
!937 = !DILocation(line: 195, column: 39, scope: !936)
!938 = !DILocation(line: 195, column: 44, scope: !936)
!939 = !DILocation(line: 195, column: 48, scope: !936)
!940 = !DILocation(line: 195, column: 30, scope: !936)
!941 = !DILocation(line: 195, column: 35, scope: !936)
!942 = !DILocation(line: 195, column: 27, scope: !936)
!943 = !DILocation(line: 195, column: 9, scope: !931)
!944 = !DILocation(line: 197, column: 32, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !326, line: 195, column: 54)
!946 = !DILocation(line: 197, column: 37, scope: !945)
!947 = !DILocation(line: 197, column: 6, scope: !945)
!948 = !DILocation(line: 198, column: 5, scope: !945)
!949 = !DILocation(line: 199, column: 21, scope: !931)
!950 = !DILocation(line: 199, column: 26, scope: !931)
!951 = !DILocation(line: 199, column: 5, scope: !931)
!952 = !DILocation(line: 200, column: 31, scope: !931)
!953 = !DILocation(line: 200, column: 17, scope: !931)
!954 = !DILocation(line: 200, column: 15, scope: !931)
!955 = !DILocation(line: 202, column: 11, scope: !916)
!956 = !DILocation(line: 202, column: 4, scope: !916)
!957 = !DILocation(line: 204, column: 11, scope: !916)
!958 = !DILocation(line: 204, column: 4, scope: !916)
!959 = !DILocation(line: 205, column: 11, scope: !916)
!960 = !DILocation(line: 205, column: 9, scope: !916)
!961 = !DILocation(line: 207, column: 16, scope: !916)
!962 = !DILocation(line: 207, column: 15, scope: !916)
!963 = !DILocation(line: 207, column: 26, scope: !916)
!964 = !DILocation(line: 207, column: 15, scope: !965)
!965 = !DILexicalBlockFile(scope: !916, file: !326, discriminator: 1)
!966 = !DILocation(line: 208, column: 12, scope: !916)
!967 = !DILocation(line: 208, column: 5, scope: !916)
!968 = !DILocation(line: 208, column: 22, scope: !916)
!969 = !DILocation(line: 207, column: 15, scope: !970)
!970 = !DILexicalBlockFile(scope: !916, file: !326, discriminator: 2)
!971 = !DILocation(line: 207, column: 15, scope: !972)
!972 = !DILexicalBlockFile(scope: !916, file: !326, discriminator: 3)
!973 = !DILocation(line: 207, column: 13, scope: !972)
!974 = !DILocation(line: 209, column: 12, scope: !916)
!975 = !DILocation(line: 210, column: 3, scope: !916)
!976 = !DILocation(line: 214, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !325, file: !326, line: 214, column: 6)
!978 = !DILocation(line: 214, column: 6, scope: !325)
!979 = !DILocation(line: 215, column: 36, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !326, line: 214, column: 13)
!981 = !DILocation(line: 215, column: 44, scope: !980)
!982 = !DILocation(line: 215, column: 50, scope: !980)
!983 = !DILocation(line: 215, column: 3, scope: !980)
!984 = !DILocation(line: 218, column: 28, scope: !980)
!985 = !DILocation(line: 218, column: 26, scope: !980)
!986 = !DILocation(line: 219, column: 13, scope: !980)
!987 = !DILocation(line: 219, column: 11, scope: !980)
!988 = !DILocation(line: 220, column: 2, scope: !980)
!989 = !DILocation(line: 222, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !325, file: !326, line: 222, column: 6)
!991 = !DILocation(line: 222, column: 6, scope: !325)
!992 = !DILocation(line: 224, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !326, line: 224, column: 7)
!994 = distinct !DILexicalBlock(scope: !990, file: !326, line: 222, column: 25)
!995 = !DILocation(line: 224, column: 7, scope: !994)
!996 = !DILocation(line: 225, column: 15, scope: !993)
!997 = !DILocation(line: 225, column: 25, scope: !993)
!998 = !DILocation(line: 225, column: 30, scope: !993)
!999 = !DILocation(line: 225, column: 39, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !993, file: !326, discriminator: 1)
!1001 = !DILocation(line: 225, column: 49, scope: !1000)
!1002 = !DILocation(line: 225, column: 15, scope: !1000)
!1003 = !DILocation(line: 226, column: 17, scope: !993)
!1004 = !DILocation(line: 226, column: 5, scope: !993)
!1005 = !DILocation(line: 225, column: 15, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !993, file: !326, discriminator: 2)
!1007 = !DILocation(line: 225, column: 15, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !993, file: !326, discriminator: 3)
!1009 = !DILocation(line: 225, column: 13, scope: !1008)
!1010 = !DILocation(line: 225, column: 4, scope: !1008)
!1011 = !DILocation(line: 228, column: 15, scope: !993)
!1012 = !DILocation(line: 228, column: 25, scope: !993)
!1013 = !DILocation(line: 228, column: 30, scope: !993)
!1014 = !DILocation(line: 228, column: 39, scope: !1000)
!1015 = !DILocation(line: 228, column: 49, scope: !1000)
!1016 = !DILocation(line: 228, column: 15, scope: !1000)
!1017 = !DILocation(line: 229, column: 18, scope: !993)
!1018 = !DILocation(line: 229, column: 5, scope: !993)
!1019 = !DILocation(line: 228, column: 15, scope: !1006)
!1020 = !DILocation(line: 228, column: 15, scope: !1008)
!1021 = !DILocation(line: 228, column: 13, scope: !1008)
!1022 = !DILocation(line: 230, column: 16, scope: !994)
!1023 = !DILocation(line: 230, column: 14, scope: !994)
!1024 = !DILocation(line: 231, column: 2, scope: !994)
!1025 = !DILocation(line: 233, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !990, file: !326, line: 231, column: 9)
!1027 = !DILocation(line: 235, column: 14, scope: !1026)
!1028 = !DILocation(line: 236, column: 46, scope: !1026)
!1029 = !DILocation(line: 236, column: 54, scope: !1026)
!1030 = !DILocation(line: 236, column: 60, scope: !1026)
!1031 = !DILocation(line: 236, column: 3, scope: !1026)
!1032 = !DILocation(line: 237, column: 21, scope: !1026)
!1033 = !DILocation(line: 237, column: 19, scope: !1026)
!1034 = !DILocation(line: 239, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !326, line: 239, column: 7)
!1036 = !DILocation(line: 239, column: 16, scope: !1035)
!1037 = !DILocation(line: 239, column: 7, scope: !1026)
!1038 = !DILocation(line: 241, column: 46, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !326, line: 239, column: 24)
!1040 = !DILocation(line: 241, column: 33, scope: !1039)
!1041 = !DILocation(line: 241, column: 15, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1039, file: !326, discriminator: 1)
!1043 = !DILocation(line: 241, column: 13, scope: !1039)
!1044 = !DILocation(line: 242, column: 3, scope: !1039)
!1045 = !DILocation(line: 245, column: 9, scope: !325)
!1046 = !DILocation(line: 245, column: 2, scope: !325)
!1047 = !DILocation(line: 246, column: 9, scope: !325)
!1048 = !DILocation(line: 246, column: 2, scope: !325)
!1049 = !DILocation(line: 248, column: 6, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !325, file: !326, line: 248, column: 6)
!1051 = !DILocation(line: 248, column: 15, scope: !1050)
!1052 = !DILocation(line: 248, column: 6, scope: !325)
!1053 = !DILocation(line: 249, column: 3, scope: !1050)
!1054 = !DILocation(line: 252, column: 13, scope: !325)
!1055 = !DILocation(line: 252, column: 11, scope: !325)
!1056 = !DILocation(line: 255, column: 19, scope: !325)
!1057 = !DILocation(line: 255, column: 17, scope: !325)
!1058 = !DILocation(line: 258, column: 16, scope: !325)
!1059 = !DILocation(line: 258, column: 27, scope: !325)
!1060 = !DILocation(line: 258, column: 26, scope: !325)
!1061 = !DILocation(line: 258, column: 9, scope: !325)
!1062 = !DILocation(line: 258, column: 33, scope: !325)
!1063 = !DILocation(line: 258, column: 40, scope: !325)
!1064 = !DILocation(line: 258, column: 43, scope: !803)
!1065 = !DILocation(line: 258, column: 9, scope: !803)
!1066 = !DILocation(line: 259, column: 17, scope: !325)
!1067 = !DILocation(line: 259, column: 27, scope: !325)
!1068 = !DILocation(line: 259, column: 3, scope: !325)
!1069 = !DILocation(line: 258, column: 9, scope: !813)
!1070 = !DILocation(line: 259, column: 44, scope: !803)
!1071 = !DILocation(line: 259, column: 54, scope: !803)
!1072 = !DILocation(line: 259, column: 35, scope: !803)
!1073 = !DILocation(line: 258, column: 9, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !325, file: !326, discriminator: 3)
!1075 = !DILocation(line: 258, column: 9, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !325, file: !326, discriminator: 4)
!1077 = !DILocation(line: 258, column: 7, scope: !1076)
!1078 = !DILocation(line: 262, column: 9, scope: !325)
!1079 = !DILocation(line: 262, column: 27, scope: !325)
!1080 = !DILocation(line: 262, column: 20, scope: !325)
!1081 = !DILocation(line: 262, column: 18, scope: !325)
!1082 = !DILocation(line: 262, column: 3, scope: !325)
!1083 = !DILocation(line: 262, column: 7, scope: !325)
!1084 = !DILocation(line: 266, column: 24, scope: !325)
!1085 = !DILocation(line: 266, column: 11, scope: !325)
!1086 = !DILocation(line: 266, column: 9, scope: !325)
!1087 = !DILocation(line: 267, column: 17, scope: !325)
!1088 = !DILocation(line: 267, column: 25, scope: !325)
!1089 = !DILocation(line: 267, column: 35, scope: !325)
!1090 = !DILocation(line: 267, column: 2, scope: !325)
!1091 = !DILocation(line: 268, column: 18, scope: !325)
!1092 = !DILocation(line: 268, column: 26, scope: !325)
!1093 = !DILocation(line: 268, column: 36, scope: !325)
!1094 = !DILocation(line: 268, column: 2, scope: !325)
!1095 = !DILocation(line: 270, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !325, file: !326, line: 270, column: 6)
!1097 = !DILocation(line: 270, column: 6, scope: !325)
!1098 = !DILocation(line: 271, column: 24, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !326, line: 271, column: 7)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !326, line: 270, column: 18)
!1101 = !DILocation(line: 271, column: 23, scope: !1099)
!1102 = !DILocation(line: 271, column: 11, scope: !1099)
!1103 = !DILocation(line: 271, column: 19, scope: !1099)
!1104 = !DILocation(line: 271, column: 10, scope: !1099)
!1105 = !DILocation(line: 271, column: 30, scope: !1099)
!1106 = !DILocation(line: 271, column: 38, scope: !1099)
!1107 = !DILocation(line: 271, column: 56, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1099, file: !326, discriminator: 1)
!1109 = !DILocation(line: 271, column: 55, scope: !1108)
!1110 = !DILocation(line: 271, column: 43, scope: !1108)
!1111 = !DILocation(line: 271, column: 51, scope: !1108)
!1112 = !DILocation(line: 271, column: 42, scope: !1108)
!1113 = !DILocation(line: 271, column: 62, scope: !1108)
!1114 = !DILocation(line: 271, column: 7, scope: !1108)
!1115 = !DILocation(line: 272, column: 22, scope: !1099)
!1116 = !DILocation(line: 272, column: 31, scope: !1099)
!1117 = !DILocation(line: 272, column: 30, scope: !1099)
!1118 = !DILocation(line: 272, column: 4, scope: !1099)
!1119 = !DILocation(line: 273, column: 5, scope: !1100)
!1120 = !DILocation(line: 273, column: 9, scope: !1100)
!1121 = !DILocation(line: 274, column: 2, scope: !1100)
!1122 = !DILocation(line: 276, column: 19, scope: !325)
!1123 = !DILocation(line: 276, column: 12, scope: !325)
!1124 = !DILocation(line: 276, column: 10, scope: !325)
!1125 = !DILocation(line: 277, column: 19, scope: !325)
!1126 = !DILocation(line: 277, column: 18, scope: !325)
!1127 = !DILocation(line: 277, column: 16, scope: !325)
!1128 = !DILocation(line: 278, column: 9, scope: !325)
!1129 = !DILocation(line: 278, column: 2, scope: !325)
!1130 = !DILocation(line: 279, column: 23, scope: !325)
!1131 = !DILocation(line: 279, column: 31, scope: !325)
!1132 = !DILocation(line: 279, column: 14, scope: !325)
!1133 = !DILocation(line: 279, column: 12, scope: !325)
!1134 = !DILocation(line: 281, column: 8, scope: !325)
!1135 = !DILocation(line: 281, column: 16, scope: !325)
!1136 = !DILocation(line: 281, column: 6, scope: !325)
!1137 = !DILocation(line: 282, column: 16, scope: !325)
!1138 = !DILocation(line: 282, column: 2, scope: !325)
!1139 = !DILocation(line: 285, column: 9, scope: !325)
!1140 = !DILocation(line: 285, column: 2, scope: !325)
!1141 = !DILocation(line: 287, column: 9, scope: !325)
!1142 = !DILocation(line: 287, column: 2, scope: !325)
!1143 = !DILocation(line: 288, column: 1, scope: !325)
!1144 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !441, file: !441, line: 161, type: !1145, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!439, !439, !298}
!1147 = !DILocalVariable(name: "gstring", arg: 1, scope: !1144, file: !441, line: 161, type: !439)
!1148 = !DILocation(line: 161, column: 36, scope: !1144)
!1149 = !DILocalVariable(name: "c", arg: 2, scope: !1144, file: !441, line: 162, type: !298)
!1150 = !DILocation(line: 162, column: 33, scope: !1144)
!1151 = !DILocation(line: 164, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !441, line: 164, column: 7)
!1153 = !DILocation(line: 164, column: 16, scope: !1152)
!1154 = !DILocation(line: 164, column: 20, scope: !1152)
!1155 = !DILocation(line: 164, column: 26, scope: !1152)
!1156 = !DILocation(line: 164, column: 35, scope: !1152)
!1157 = !DILocation(line: 164, column: 24, scope: !1152)
!1158 = !DILocation(line: 164, column: 7, scope: !1144)
!1159 = !DILocation(line: 166, column: 38, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !441, line: 165, column: 5)
!1161 = !DILocation(line: 166, column: 20, scope: !1160)
!1162 = !DILocation(line: 166, column: 29, scope: !1160)
!1163 = !DILocation(line: 166, column: 32, scope: !1160)
!1164 = !DILocation(line: 166, column: 7, scope: !1160)
!1165 = !DILocation(line: 166, column: 16, scope: !1160)
!1166 = !DILocation(line: 166, column: 36, scope: !1160)
!1167 = !DILocation(line: 167, column: 20, scope: !1160)
!1168 = !DILocation(line: 167, column: 29, scope: !1160)
!1169 = !DILocation(line: 167, column: 7, scope: !1160)
!1170 = !DILocation(line: 167, column: 16, scope: !1160)
!1171 = !DILocation(line: 167, column: 34, scope: !1160)
!1172 = !DILocation(line: 168, column: 5, scope: !1160)
!1173 = !DILocation(line: 170, column: 24, scope: !1152)
!1174 = !DILocation(line: 170, column: 37, scope: !1152)
!1175 = !DILocation(line: 170, column: 5, scope: !1152)
!1176 = !DILocation(line: 171, column: 10, scope: !1144)
!1177 = !DILocation(line: 171, column: 3, scope: !1144)
!1178 = distinct !DISubprogram(name: "free_completions", scope: !326, file: !326, line: 122, type: !1179, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null}
!1181 = !DILocation(line: 124, column: 26, scope: !1178)
!1182 = !DILocation(line: 124, column: 13, scope: !1178)
!1183 = !DILocation(line: 124, column: 11, scope: !1178)
!1184 = !DILocation(line: 126, column: 17, scope: !1178)
!1185 = !DILocation(line: 126, column: 2, scope: !1178)
!1186 = !DILocation(line: 127, column: 14, scope: !1178)
!1187 = !DILocation(line: 127, column: 2, scope: !1178)
!1188 = !DILocation(line: 128, column: 18, scope: !1178)
!1189 = !DILocation(line: 130, column: 2, scope: !1178)
!1190 = distinct !{!1190, !1189}
!1191 = !DILocation(line: 130, column: 11, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1193, file: !326, discriminator: 1)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !326, line: 130, column: 11)
!1194 = distinct !DILexicalBlock(scope: !1178, file: !326, line: 130, column: 5)
!1195 = !DILocation(line: 130, column: 31, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !326, discriminator: 2)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !326, line: 130, column: 22)
!1198 = !DILocation(line: 130, column: 24, scope: !1196)
!1199 = !DILocation(line: 130, column: 55, scope: !1196)
!1200 = !DILocation(line: 130, column: 3, scope: !1196)
!1201 = !DILocation(line: 130, column: 5, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1194, file: !326, discriminator: 3)
!1203 = !DILocation(line: 131, column: 1, scope: !1178)
!1204 = distinct !DISubprogram(name: "filename_complete", scope: !326, file: !326, line: 319, type: !1205, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!401, !301, !301}
!1207 = !DILocalVariable(name: "path", arg: 1, scope: !1204, file: !326, line: 319, type: !301)
!1208 = !DILocation(line: 319, column: 38, scope: !1204)
!1209 = !DILocalVariable(name: "default_path", arg: 2, scope: !1204, file: !326, line: 319, type: !301)
!1210 = !DILocation(line: 319, column: 56, scope: !1204)
!1211 = !DILocalVariable(name: "list", scope: !1204, file: !326, line: 321, type: !401)
!1212 = !DILocation(line: 321, column: 16, scope: !1204)
!1213 = !DILocalVariable(name: "dirp", scope: !1204, file: !326, line: 322, type: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1216, line: 127, baseType: !1217)
!1216 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/irssi/task1")
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1216, line: 127, flags: DIFlagFwdDecl)
!1218 = !DILocation(line: 322, column: 7, scope: !1204)
!1219 = !DILocalVariable(name: "dp", scope: !1204, file: !326, line: 323, type: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64, align: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1222, line: 22, size: 2240, align: 64, elements: !1223)
!1222 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/irssi/task1")
!1223 = !{!1224, !1226, !1228, !1230, !1232}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1221, file: !1222, line: 25, baseType: !1225, size: 64, align: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !372, line: 127, baseType: !448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1221, file: !1222, line: 26, baseType: !1227, size: 64, align: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !372, line: 131, baseType: !373)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1221, file: !1222, line: 31, baseType: !1229, size: 16, align: 16, offset: 128)
!1229 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1221, file: !1222, line: 32, baseType: !1231, size: 8, align: 8, offset: 144)
!1231 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1221, file: !1222, line: 33, baseType: !1233, size: 2048, align: 8, offset: 152)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2048, align: 8, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 256)
!1236 = !DILocation(line: 323, column: 17, scope: !1204)
!1237 = !DILocalVariable(name: "basename", scope: !1204, file: !326, line: 324, type: !311)
!1238 = !DILocation(line: 324, column: 8, scope: !1204)
!1239 = !DILocalVariable(name: "realpath", scope: !1204, file: !326, line: 325, type: !311)
!1240 = !DILocation(line: 325, column: 8, scope: !1204)
!1241 = !DILocalVariable(name: "dir", scope: !1204, file: !326, line: 325, type: !311)
!1242 = !DILocation(line: 325, column: 19, scope: !1204)
!1243 = !DILocalVariable(name: "name", scope: !1204, file: !326, line: 325, type: !311)
!1244 = !DILocation(line: 325, column: 25, scope: !1204)
!1245 = !DILocalVariable(name: "len", scope: !1204, file: !326, line: 326, type: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1247, line: 216, baseType: !448)
!1247 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!1248 = !DILocation(line: 326, column: 9, scope: !1204)
!1249 = !DILocation(line: 328, column: 2, scope: !1204)
!1250 = distinct !{!1250, !1249}
!1251 = !DILocation(line: 328, column: 10, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !326, discriminator: 1)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !326, line: 328, column: 10)
!1254 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 328, column: 4)
!1255 = !DILocation(line: 328, column: 15, scope: !1252)
!1256 = !DILocation(line: 328, column: 5, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1258, file: !326, discriminator: 2)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !326, line: 328, column: 3)
!1259 = !DILocation(line: 328, column: 14, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !326, discriminator: 3)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !326, line: 328, column: 12)
!1262 = !DILocation(line: 328, column: 99, scope: !1260)
!1263 = !DILocation(line: 328, column: 7, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1254, file: !326, discriminator: 4)
!1265 = !DILocation(line: 330, column: 6, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 330, column: 6)
!1267 = !DILocation(line: 330, column: 14, scope: !1266)
!1268 = !DILocation(line: 330, column: 6, scope: !1204)
!1269 = !DILocation(line: 331, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !326, line: 330, column: 23)
!1271 = !DILocation(line: 334, column: 7, scope: !1204)
!1272 = !DILocation(line: 337, column: 26, scope: !1204)
!1273 = !DILocation(line: 337, column: 13, scope: !1204)
!1274 = !DILocation(line: 337, column: 11, scope: !1204)
!1275 = !DILocation(line: 338, column: 28, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 338, column: 6)
!1277 = !DILocation(line: 338, column: 9, scope: !1276)
!1278 = !DILocation(line: 338, column: 38, scope: !1276)
!1279 = !DILocation(line: 338, column: 43, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1276, file: !326, discriminator: 1)
!1281 = !DILocation(line: 338, column: 42, scope: !1280)
!1282 = !DILocation(line: 338, column: 56, scope: !1280)
!1283 = !DILocation(line: 338, column: 63, scope: !1280)
!1284 = !DILocation(line: 338, column: 68, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1276, file: !326, discriminator: 2)
!1286 = !DILocation(line: 338, column: 67, scope: !1285)
!1287 = !DILocation(line: 338, column: 81, scope: !1285)
!1288 = !DILocation(line: 338, column: 89, scope: !1285)
!1289 = !DILocation(line: 338, column: 93, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1276, file: !326, discriminator: 3)
!1291 = !DILocation(line: 338, column: 92, scope: !1290)
!1292 = !DILocation(line: 338, column: 106, scope: !1290)
!1293 = !DILocation(line: 338, column: 116, scope: !1290)
!1294 = !DILocation(line: 338, column: 119, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1276, file: !326, discriminator: 4)
!1296 = !DILocation(line: 338, column: 132, scope: !1295)
!1297 = !DILocation(line: 338, column: 6, scope: !1295)
!1298 = !DILocation(line: 339, column: 24, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1276, file: !326, line: 338, column: 8)
!1300 = !DILocation(line: 339, column: 17, scope: !1299)
!1301 = !DILocation(line: 340, column: 26, scope: !1299)
!1302 = !DILocation(line: 341, column: 12, scope: !1299)
!1303 = !DILocation(line: 340, column: 14, scope: !1299)
!1304 = !DILocation(line: 340, column: 12, scope: !1299)
!1305 = !DILocation(line: 342, column: 2, scope: !1299)
!1306 = !DILocation(line: 345, column: 27, scope: !1204)
!1307 = !DILocation(line: 345, column: 8, scope: !1204)
!1308 = !DILocation(line: 345, column: 6, scope: !1204)
!1309 = !DILocation(line: 346, column: 17, scope: !1204)
!1310 = !DILocation(line: 346, column: 9, scope: !1204)
!1311 = !DILocation(line: 346, column: 7, scope: !1204)
!1312 = !DILocation(line: 347, column: 9, scope: !1204)
!1313 = !DILocation(line: 347, column: 2, scope: !1204)
!1314 = !DILocation(line: 348, column: 16, scope: !1204)
!1315 = !DILocation(line: 348, column: 9, scope: !1204)
!1316 = !DILocation(line: 350, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 350, column: 6)
!1318 = !DILocation(line: 350, column: 11, scope: !1317)
!1319 = !DILocation(line: 350, column: 6, scope: !1204)
!1320 = !DILocation(line: 351, column: 3, scope: !1317)
!1321 = !DILocation(line: 353, column: 27, scope: !1204)
!1322 = !DILocation(line: 353, column: 8, scope: !1204)
!1323 = !DILocation(line: 353, column: 6, scope: !1204)
!1324 = !DILocation(line: 354, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 354, column: 6)
!1326 = !DILocation(line: 354, column: 6, scope: !1325)
!1327 = !DILocation(line: 354, column: 11, scope: !1325)
!1328 = !DILocation(line: 354, column: 18, scope: !1325)
!1329 = !DILocation(line: 354, column: 21, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1325, file: !326, discriminator: 1)
!1331 = !DILocation(line: 354, column: 28, scope: !1330)
!1332 = !DILocation(line: 354, column: 6, scope: !1330)
!1333 = !DILocation(line: 356, column: 4, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !326, line: 354, column: 37)
!1335 = !DILocation(line: 356, column: 8, scope: !1334)
!1336 = !DILocation(line: 357, column: 2, scope: !1334)
!1337 = !DILocation(line: 357, column: 15, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 1)
!1339 = distinct !DILexicalBlock(scope: !1325, file: !326, line: 357, column: 13)
!1340 = !DILocation(line: 357, column: 14, scope: !1338)
!1341 = !DILocation(line: 357, column: 23, scope: !1338)
!1342 = !DILocation(line: 357, column: 30, scope: !1338)
!1343 = !DILocation(line: 357, column: 35, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 2)
!1345 = !DILocation(line: 357, column: 34, scope: !1344)
!1346 = !DILocation(line: 357, column: 43, scope: !1344)
!1347 = !DILocation(line: 357, column: 51, scope: !1344)
!1348 = !DILocation(line: 357, column: 55, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 3)
!1350 = !DILocation(line: 357, column: 54, scope: !1349)
!1351 = !DILocation(line: 357, column: 63, scope: !1349)
!1352 = !DILocation(line: 357, column: 72, scope: !1349)
!1353 = !DILocation(line: 357, column: 78, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 4)
!1355 = !DILocation(line: 357, column: 77, scope: !1354)
!1356 = !DILocation(line: 357, column: 87, scope: !1354)
!1357 = !DILocation(line: 357, column: 94, scope: !1354)
!1358 = !DILocation(line: 357, column: 99, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 5)
!1360 = !DILocation(line: 357, column: 98, scope: !1359)
!1361 = !DILocation(line: 357, column: 108, scope: !1359)
!1362 = !DILocation(line: 357, column: 116, scope: !1359)
!1363 = !DILocation(line: 357, column: 120, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1339, file: !326, discriminator: 6)
!1365 = !DILocation(line: 357, column: 119, scope: !1364)
!1366 = !DILocation(line: 357, column: 129, scope: !1364)
!1367 = !DILocation(line: 357, column: 13, scope: !1364)
!1368 = !DILocation(line: 360, column: 3, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1339, file: !326, line: 357, column: 139)
!1370 = distinct !{!1370, !1368}
!1371 = !DILocation(line: 360, column: 12, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1373, file: !326, discriminator: 1)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !326, line: 360, column: 12)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !326, line: 360, column: 6)
!1375 = !DILocation(line: 360, column: 26, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !326, discriminator: 2)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !326, line: 360, column: 17)
!1378 = !DILocation(line: 360, column: 19, scope: !1376)
!1379 = !DILocation(line: 360, column: 38, scope: !1376)
!1380 = !DILocation(line: 360, column: 4, scope: !1376)
!1381 = !DILocation(line: 360, column: 6, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1374, file: !326, discriminator: 3)
!1383 = !DILocation(line: 361, column: 2, scope: !1369)
!1384 = !DILocation(line: 363, column: 15, scope: !1204)
!1385 = !DILocation(line: 363, column: 8, scope: !1204)
!1386 = !DILocation(line: 363, column: 6, scope: !1204)
!1387 = !DILocation(line: 366, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 366, column: 6)
!1389 = !DILocation(line: 366, column: 10, scope: !1388)
!1390 = !DILocation(line: 366, column: 14, scope: !1388)
!1391 = !DILocation(line: 366, column: 22, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1388, file: !326, discriminator: 1)
!1393 = !DILocation(line: 366, column: 26, scope: !1392)
!1394 = !DILocation(line: 366, column: 17, scope: !1392)
!1395 = !DILocation(line: 366, column: 31, scope: !1392)
!1396 = !DILocation(line: 366, column: 6, scope: !1392)
!1397 = !DILocation(line: 367, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1388, file: !326, line: 366, column: 39)
!1399 = !DILocation(line: 367, column: 15, scope: !1398)
!1400 = !DILocation(line: 368, column: 2, scope: !1398)
!1401 = !DILocation(line: 369, column: 37, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !326, line: 368, column: 9)
!1403 = !DILocation(line: 369, column: 17, scope: !1402)
!1404 = !DILocation(line: 369, column: 15, scope: !1402)
!1405 = !DILocation(line: 371, column: 15, scope: !1204)
!1406 = !DILocation(line: 371, column: 8, scope: !1204)
!1407 = !DILocation(line: 371, column: 6, scope: !1204)
!1408 = !DILocation(line: 374, column: 2, scope: !1204)
!1409 = !DILocation(line: 374, column: 23, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1204, file: !326, discriminator: 1)
!1411 = !DILocation(line: 374, column: 15, scope: !1410)
!1412 = !DILocation(line: 374, column: 13, scope: !1410)
!1413 = !DILocation(line: 374, column: 30, scope: !1410)
!1414 = !DILocation(line: 374, column: 2, scope: !1410)
!1415 = !DILocation(line: 375, column: 7, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !326, line: 375, column: 7)
!1417 = distinct !DILexicalBlock(scope: !1204, file: !326, line: 374, column: 38)
!1418 = !DILocation(line: 375, column: 11, scope: !1416)
!1419 = !DILocation(line: 375, column: 21, scope: !1416)
!1420 = !DILocation(line: 375, column: 7, scope: !1417)
!1421 = !DILocation(line: 376, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !326, line: 376, column: 8)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !326, line: 375, column: 29)
!1424 = !DILocation(line: 376, column: 12, scope: !1422)
!1425 = !DILocation(line: 376, column: 22, scope: !1422)
!1426 = !DILocation(line: 376, column: 30, scope: !1422)
!1427 = !DILocation(line: 377, column: 9, scope: !1422)
!1428 = !DILocation(line: 377, column: 13, scope: !1422)
!1429 = !DILocation(line: 377, column: 23, scope: !1422)
!1430 = !DILocation(line: 377, column: 30, scope: !1422)
!1431 = !DILocation(line: 377, column: 33, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1422, file: !326, discriminator: 1)
!1433 = !DILocation(line: 377, column: 37, scope: !1432)
!1434 = !DILocation(line: 377, column: 47, scope: !1432)
!1435 = !DILocation(line: 376, column: 8, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1423, file: !326, discriminator: 1)
!1437 = !DILocation(line: 378, column: 5, scope: !1422)
!1438 = distinct !{!1438, !1408}
!1439 = !DILocation(line: 382, column: 8, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1423, file: !326, line: 382, column: 8)
!1441 = !DILocation(line: 382, column: 20, scope: !1440)
!1442 = !DILocation(line: 382, column: 27, scope: !1440)
!1443 = !DILocation(line: 382, column: 30, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1440, file: !326, discriminator: 1)
!1445 = !DILocation(line: 382, column: 42, scope: !1444)
!1446 = !DILocation(line: 382, column: 8, scope: !1444)
!1447 = !DILocation(line: 383, column: 5, scope: !1440)
!1448 = !DILocation(line: 384, column: 3, scope: !1423)
!1449 = !DILocation(line: 386, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1417, file: !326, line: 386, column: 7)
!1451 = !DILocation(line: 386, column: 11, scope: !1450)
!1452 = !DILocation(line: 386, column: 16, scope: !1450)
!1453 = !DILocation(line: 386, column: 27, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1450, file: !326, discriminator: 1)
!1455 = !DILocation(line: 386, column: 31, scope: !1454)
!1456 = !DILocation(line: 386, column: 39, scope: !1454)
!1457 = !DILocation(line: 386, column: 49, scope: !1454)
!1458 = !DILocation(line: 386, column: 19, scope: !1454)
!1459 = !DILocation(line: 386, column: 54, scope: !1454)
!1460 = !DILocation(line: 386, column: 7, scope: !1454)
!1461 = !DILocation(line: 387, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !326, line: 386, column: 60)
!1463 = !DILocation(line: 387, column: 15, scope: !1462)
!1464 = !DILocation(line: 387, column: 33, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1462, file: !326, discriminator: 1)
!1466 = !DILocation(line: 387, column: 37, scope: !1465)
!1467 = !DILocation(line: 387, column: 24, scope: !1465)
!1468 = !DILocation(line: 387, column: 11, scope: !1465)
!1469 = !DILocation(line: 388, column: 34, scope: !1462)
!1470 = !DILocation(line: 388, column: 39, scope: !1462)
!1471 = !DILocation(line: 388, column: 43, scope: !1462)
!1472 = !DILocation(line: 388, column: 5, scope: !1462)
!1473 = !DILocation(line: 387, column: 11, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1462, file: !326, discriminator: 2)
!1475 = !DILocation(line: 387, column: 11, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1462, file: !326, discriminator: 3)
!1477 = !DILocation(line: 387, column: 9, scope: !1476)
!1478 = !DILocation(line: 389, column: 25, scope: !1462)
!1479 = !DILocation(line: 389, column: 31, scope: !1462)
!1480 = !DILocation(line: 389, column: 37, scope: !1462)
!1481 = !DILocation(line: 389, column: 11, scope: !1462)
!1482 = !DILocation(line: 389, column: 9, scope: !1462)
!1483 = !DILocation(line: 390, column: 11, scope: !1462)
!1484 = !DILocation(line: 390, column: 4, scope: !1462)
!1485 = !DILocation(line: 391, column: 3, scope: !1462)
!1486 = !DILocation(line: 374, column: 2, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1204, file: !326, discriminator: 2)
!1488 = !DILocation(line: 393, column: 11, scope: !1204)
!1489 = !DILocation(line: 393, column: 2, scope: !1204)
!1490 = !DILocation(line: 394, column: 9, scope: !1204)
!1491 = !DILocation(line: 394, column: 2, scope: !1204)
!1492 = !DILocation(line: 396, column: 9, scope: !1204)
!1493 = !DILocation(line: 396, column: 2, scope: !1204)
!1494 = !DILocation(line: 397, column: 16, scope: !1204)
!1495 = !DILocation(line: 397, column: 9, scope: !1204)
!1496 = !DILocation(line: 398, column: 1, scope: !1204)
!1497 = distinct !DISubprogram(name: "list_add_file", scope: !326, file: !326, line: 297, type: !1498, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!401, !401, !301, !301}
!1500 = !DILocalVariable(name: "list", arg: 1, scope: !1497, file: !326, line: 297, type: !401)
!1501 = !DILocation(line: 297, column: 36, scope: !1497)
!1502 = !DILocalVariable(name: "name", arg: 2, scope: !1497, file: !326, line: 297, type: !301)
!1503 = !DILocation(line: 297, column: 54, scope: !1497)
!1504 = !DILocalVariable(name: "default_path", arg: 3, scope: !1497, file: !326, line: 297, type: !301)
!1505 = !DILocation(line: 297, column: 72, scope: !1497)
!1506 = !DILocalVariable(name: "statbuf", scope: !1497, file: !326, line: 299, type: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1508, line: 46, size: 1152, align: 64, elements: !1509)
!1508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1509 = !{!1510, !1512, !1513, !1515, !1517, !1519, !1521, !1522, !1523, !1524, !1526, !1528, !1534, !1535, !1536}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1507, file: !1508, line: 48, baseType: !1511, size: 64, align: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !372, line: 124, baseType: !448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1507, file: !1508, line: 53, baseType: !1225, size: 64, align: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1507, file: !1508, line: 61, baseType: !1514, size: 64, align: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !372, line: 130, baseType: !448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1507, file: !1508, line: 62, baseType: !1516, size: 32, align: 32, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !372, line: 129, baseType: !390)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1507, file: !1508, line: 64, baseType: !1518, size: 32, align: 32, offset: 224)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !372, line: 125, baseType: !390)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1507, file: !1508, line: 65, baseType: !1520, size: 32, align: 32, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !372, line: 126, baseType: !390)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1507, file: !1508, line: 67, baseType: !303, size: 32, align: 32, offset: 288)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1507, file: !1508, line: 69, baseType: !1511, size: 64, align: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1507, file: !1508, line: 74, baseType: !1227, size: 64, align: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1507, file: !1508, line: 78, baseType: !1525, size: 64, align: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !372, line: 153, baseType: !373)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1507, file: !1508, line: 80, baseType: !1527, size: 64, align: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !372, line: 158, baseType: !373)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1507, file: !1508, line: 91, baseType: !1529, size: 128, align: 64, offset: 576)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !370, line: 120, size: 128, align: 64, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1529, file: !370, line: 122, baseType: !371, size: 64, align: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1529, file: !370, line: 123, baseType: !1533, size: 64, align: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !372, line: 175, baseType: !373)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1507, file: !1508, line: 92, baseType: !1529, size: 128, align: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1507, file: !1508, line: 93, baseType: !1529, size: 128, align: 64, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1507, file: !1508, line: 106, baseType: !1537, size: 192, align: 64, offset: 960)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 192, align: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 3)
!1540 = !DILocation(line: 299, column: 14, scope: !1497)
!1541 = !DILocalVariable(name: "fname", scope: !1497, file: !326, line: 300, type: !311)
!1542 = !DILocation(line: 300, column: 8, scope: !1497)
!1543 = !DILocation(line: 302, column: 2, scope: !1497)
!1544 = distinct !{!1544, !1543}
!1545 = !DILocation(line: 302, column: 10, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !326, discriminator: 1)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !326, line: 302, column: 10)
!1548 = distinct !DILexicalBlock(scope: !1497, file: !326, line: 302, column: 4)
!1549 = !DILocation(line: 302, column: 15, scope: !1546)
!1550 = !DILocation(line: 302, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !326, discriminator: 2)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !326, line: 302, column: 3)
!1553 = !DILocation(line: 302, column: 14, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !326, discriminator: 3)
!1555 = distinct !DILexicalBlock(scope: !1547, file: !326, line: 302, column: 12)
!1556 = !DILocation(line: 302, column: 99, scope: !1554)
!1557 = !DILocation(line: 302, column: 7, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1548, file: !326, discriminator: 4)
!1559 = !DILocation(line: 304, column: 23, scope: !1497)
!1560 = !DILocation(line: 304, column: 10, scope: !1497)
!1561 = !DILocation(line: 304, column: 8, scope: !1497)
!1562 = !DILocation(line: 305, column: 28, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1497, file: !326, line: 305, column: 6)
!1564 = !DILocation(line: 305, column: 9, scope: !1563)
!1565 = !DILocation(line: 305, column: 35, scope: !1563)
!1566 = !DILocation(line: 305, column: 40, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1563, file: !326, discriminator: 1)
!1568 = !DILocation(line: 305, column: 39, scope: !1567)
!1569 = !DILocation(line: 305, column: 50, scope: !1567)
!1570 = !DILocation(line: 305, column: 57, scope: !1567)
!1571 = !DILocation(line: 305, column: 62, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1563, file: !326, discriminator: 2)
!1573 = !DILocation(line: 305, column: 61, scope: !1572)
!1574 = !DILocation(line: 305, column: 72, scope: !1572)
!1575 = !DILocation(line: 305, column: 80, scope: !1572)
!1576 = !DILocation(line: 305, column: 84, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1563, file: !326, discriminator: 3)
!1578 = !DILocation(line: 305, column: 83, scope: !1577)
!1579 = !DILocation(line: 305, column: 94, scope: !1577)
!1580 = !DILocation(line: 305, column: 104, scope: !1577)
!1581 = !DILocation(line: 305, column: 107, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1563, file: !326, discriminator: 4)
!1583 = !DILocation(line: 305, column: 120, scope: !1582)
!1584 = !DILocation(line: 305, column: 6, scope: !1582)
!1585 = !DILocation(line: 306, column: 24, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1563, file: !326, line: 305, column: 8)
!1587 = !DILocation(line: 306, column: 17, scope: !1586)
!1588 = !DILocation(line: 307, column: 23, scope: !1586)
!1589 = !DILocation(line: 308, column: 9, scope: !1586)
!1590 = !DILocation(line: 307, column: 11, scope: !1586)
!1591 = !DILocation(line: 307, column: 9, scope: !1586)
!1592 = !DILocation(line: 309, column: 2, scope: !1586)
!1593 = !DILocation(line: 310, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1497, file: !326, line: 310, column: 6)
!1595 = !DILocation(line: 310, column: 6, scope: !1594)
!1596 = !DILocation(line: 310, column: 28, scope: !1594)
!1597 = !DILocation(line: 310, column: 6, scope: !1497)
!1598 = !DILocation(line: 311, column: 24, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !326, line: 310, column: 34)
!1600 = !DILocation(line: 311, column: 38, scope: !1599)
!1601 = !DILocation(line: 311, column: 33, scope: !1599)
!1602 = !DILocation(line: 311, column: 44, scope: !1599)
!1603 = !DILocation(line: 311, column: 30, scope: !1599)
!1604 = !DILocation(line: 311, column: 66, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !326, discriminator: 1)
!1606 = !DILocation(line: 311, column: 57, scope: !1605)
!1607 = !DILocation(line: 311, column: 30, scope: !1605)
!1608 = !DILocation(line: 312, column: 22, scope: !1599)
!1609 = !DILocation(line: 312, column: 10, scope: !1599)
!1610 = !DILocation(line: 311, column: 30, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1599, file: !326, discriminator: 2)
!1612 = !DILocation(line: 311, column: 30, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1599, file: !326, discriminator: 3)
!1614 = !DILocation(line: 311, column: 10, scope: !1613)
!1615 = !DILocation(line: 311, column: 8, scope: !1613)
!1616 = !DILocation(line: 313, column: 2, scope: !1599)
!1617 = !DILocation(line: 315, column: 16, scope: !1497)
!1618 = !DILocation(line: 315, column: 9, scope: !1497)
!1619 = !DILocation(line: 316, column: 9, scope: !1497)
!1620 = !DILocation(line: 316, column: 2, scope: !1497)
!1621 = !DILocation(line: 317, column: 1, scope: !1497)
!1622 = distinct !DISubprogram(name: "completion_init", scope: !326, file: !326, line: 893, type: !1179, isLocal: false, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1623 = !DILocation(line: 895, column: 11, scope: !1622)
!1624 = !DILocation(line: 896, column: 12, scope: !1622)
!1625 = !DILocation(line: 896, column: 33, scope: !1622)
!1626 = !DILocation(line: 898, column: 2, scope: !1622)
!1627 = !DILocation(line: 900, column: 2, scope: !1622)
!1628 = !DILocation(line: 902, column: 2, scope: !1622)
!1629 = !DILocation(line: 903, column: 2, scope: !1622)
!1630 = !DILocation(line: 904, column: 2, scope: !1622)
!1631 = !DILocation(line: 905, column: 2, scope: !1622)
!1632 = !DILocation(line: 906, column: 2, scope: !1622)
!1633 = !DILocation(line: 907, column: 2, scope: !1622)
!1634 = !DILocation(line: 908, column: 2, scope: !1622)
!1635 = !DILocation(line: 909, column: 2, scope: !1622)
!1636 = !DILocation(line: 910, column: 2, scope: !1622)
!1637 = !DILocation(line: 911, column: 2, scope: !1622)
!1638 = !DILocation(line: 912, column: 2, scope: !1622)
!1639 = !DILocation(line: 914, column: 2, scope: !1622)
!1640 = !DILocation(line: 915, column: 1, scope: !1622)
!1641 = distinct !DISubprogram(name: "cmd_completion", scope: !326, file: !326, line: 820, type: !1642, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !301}
!1644 = !DILocalVariable(name: "data", arg: 1, scope: !1641, file: !326, line: 820, type: !301)
!1645 = !DILocation(line: 820, column: 40, scope: !1641)
!1646 = !DILocalVariable(name: "optlist", scope: !1641, file: !326, line: 822, type: !357)
!1647 = !DILocation(line: 822, column: 14, scope: !1641)
!1648 = !DILocalVariable(name: "node", scope: !1641, file: !326, line: 823, type: !690)
!1649 = !DILocation(line: 823, column: 15, scope: !1641)
!1650 = !DILocalVariable(name: "tmp", scope: !1641, file: !326, line: 824, type: !340)
!1651 = !DILocation(line: 824, column: 10, scope: !1641)
!1652 = !DILocalVariable(name: "key", scope: !1641, file: !326, line: 825, type: !311)
!1653 = !DILocation(line: 825, column: 8, scope: !1641)
!1654 = !DILocalVariable(name: "value", scope: !1641, file: !326, line: 825, type: !311)
!1655 = !DILocation(line: 825, column: 14, scope: !1641)
!1656 = !DILocalVariable(name: "free_arg", scope: !1641, file: !326, line: 826, type: !296)
!1657 = !DILocation(line: 826, column: 8, scope: !1641)
!1658 = !DILocalVariable(name: "len", scope: !1641, file: !326, line: 827, type: !303)
!1659 = !DILocation(line: 827, column: 6, scope: !1641)
!1660 = !DILocation(line: 829, column: 22, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !326, line: 829, column: 6)
!1662 = !DILocation(line: 829, column: 7, scope: !1661)
!1663 = !DILocation(line: 829, column: 6, scope: !1641)
!1664 = !DILocation(line: 832, column: 3, scope: !1661)
!1665 = !DILocation(line: 834, column: 30, scope: !1641)
!1666 = !DILocation(line: 834, column: 58, scope: !1641)
!1667 = !DILocation(line: 834, column: 57, scope: !1641)
!1668 = !DILocation(line: 834, column: 64, scope: !1641)
!1669 = !DILocation(line: 834, column: 9, scope: !1641)
!1670 = !DILocation(line: 834, column: 7, scope: !1641)
!1671 = !DILocation(line: 835, column: 6, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1641, file: !326, line: 835, column: 6)
!1673 = !DILocation(line: 835, column: 11, scope: !1672)
!1674 = !DILocation(line: 835, column: 18, scope: !1672)
!1675 = !DILocation(line: 835, column: 21, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1672, file: !326, discriminator: 1)
!1677 = !DILocation(line: 835, column: 27, scope: !1676)
!1678 = !DILocation(line: 835, column: 32, scope: !1676)
!1679 = !DILocation(line: 835, column: 6, scope: !1676)
!1680 = !DILocation(line: 837, column: 22, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !326, line: 835, column: 52)
!1682 = !DILocation(line: 837, column: 34, scope: !1681)
!1683 = !DILocation(line: 837, column: 46, scope: !1681)
!1684 = !DILocation(line: 837, column: 56, scope: !1681)
!1685 = !DILocation(line: 837, column: 3, scope: !1681)
!1686 = !DILocation(line: 838, column: 31, scope: !1681)
!1687 = !DILocation(line: 838, column: 59, scope: !1681)
!1688 = !DILocation(line: 838, column: 58, scope: !1681)
!1689 = !DILocation(line: 838, column: 65, scope: !1681)
!1690 = !DILocation(line: 838, column: 10, scope: !1681)
!1691 = !DILocation(line: 838, column: 8, scope: !1681)
!1692 = !DILocation(line: 839, column: 2, scope: !1681)
!1693 = !DILocation(line: 841, column: 6, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1641, file: !326, line: 841, column: 6)
!1695 = !DILocation(line: 841, column: 11, scope: !1694)
!1696 = !DILocation(line: 841, column: 18, scope: !1694)
!1697 = !DILocation(line: 841, column: 22, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1694, file: !326, discriminator: 1)
!1699 = !DILocation(line: 841, column: 28, scope: !1698)
!1700 = !DILocation(line: 841, column: 34, scope: !1698)
!1701 = !DILocation(line: 841, column: 42, scope: !1698)
!1702 = !DILocation(line: 841, column: 46, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1694, file: !326, discriminator: 2)
!1704 = !DILocation(line: 841, column: 45, scope: !1703)
!1705 = !DILocation(line: 841, column: 52, scope: !1703)
!1706 = !DILocation(line: 841, column: 6, scope: !1703)
!1707 = !DILocation(line: 842, column: 3, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1694, file: !326, line: 841, column: 62)
!1709 = !DILocation(line: 844, column: 19, scope: !1708)
!1710 = !DILocation(line: 844, column: 3, scope: !1708)
!1711 = !DILocation(line: 845, column: 3, scope: !1708)
!1712 = !DILocation(line: 848, column: 26, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1641, file: !326, line: 848, column: 6)
!1714 = !DILocation(line: 848, column: 6, scope: !1713)
!1715 = !DILocation(line: 848, column: 45, scope: !1713)
!1716 = !DILocation(line: 848, column: 52, scope: !1713)
!1717 = !DILocation(line: 848, column: 56, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1713, file: !326, discriminator: 1)
!1719 = !DILocation(line: 848, column: 55, scope: !1718)
!1720 = !DILocation(line: 848, column: 60, scope: !1718)
!1721 = !DILocation(line: 848, column: 6, scope: !1718)
!1722 = !DILocation(line: 849, column: 51, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1713, file: !326, line: 848, column: 69)
!1724 = !DILocation(line: 849, column: 3, scope: !1723)
!1725 = !DILocation(line: 852, column: 18, scope: !1723)
!1726 = !DILocation(line: 852, column: 45, scope: !1723)
!1727 = !DILocation(line: 852, column: 3, scope: !1723)
!1728 = !DILocation(line: 853, column: 40, scope: !1723)
!1729 = !DILocation(line: 853, column: 3, scope: !1723)
!1730 = !DILocation(line: 854, column: 2, scope: !1723)
!1731 = !DILocation(line: 854, column: 14, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1733, file: !326, discriminator: 1)
!1733 = distinct !DILexicalBlock(scope: !1713, file: !326, line: 854, column: 13)
!1734 = !DILocation(line: 854, column: 13, scope: !1732)
!1735 = !DILocation(line: 854, column: 18, scope: !1732)
!1736 = !DILocation(line: 854, column: 26, scope: !1732)
!1737 = !DILocation(line: 854, column: 30, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1733, file: !326, discriminator: 2)
!1739 = !DILocation(line: 854, column: 29, scope: !1738)
!1740 = !DILocation(line: 854, column: 36, scope: !1738)
!1741 = !DILocation(line: 854, column: 13, scope: !1738)
!1742 = !DILocalVariable(name: "automatic", scope: !1743, file: !326, line: 855, type: !303)
!1743 = distinct !DILexicalBlock(scope: !1733, file: !326, line: 854, column: 45)
!1744 = !DILocation(line: 855, column: 7, scope: !1743)
!1745 = !DILocation(line: 855, column: 39, scope: !1743)
!1746 = !DILocation(line: 855, column: 19, scope: !1743)
!1747 = !DILocation(line: 855, column: 56, scope: !1743)
!1748 = !DILocation(line: 857, column: 30, scope: !1743)
!1749 = !DILocation(line: 857, column: 42, scope: !1743)
!1750 = !DILocation(line: 857, column: 48, scope: !1743)
!1751 = !DILocation(line: 857, column: 10, scope: !1743)
!1752 = !DILocation(line: 857, column: 8, scope: !1743)
!1753 = !DILocation(line: 858, column: 23, scope: !1743)
!1754 = !DILocation(line: 858, column: 35, scope: !1743)
!1755 = !DILocation(line: 858, column: 50, scope: !1743)
!1756 = !DILocation(line: 858, column: 3, scope: !1743)
!1757 = !DILocation(line: 859, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1743, file: !326, line: 859, column: 7)
!1759 = !DILocation(line: 859, column: 7, scope: !1743)
!1760 = !DILocation(line: 860, column: 25, scope: !1758)
!1761 = !DILocation(line: 860, column: 37, scope: !1758)
!1762 = !DILocation(line: 860, column: 4, scope: !1758)
!1763 = !DILocation(line: 862, column: 24, scope: !1758)
!1764 = !DILocation(line: 862, column: 36, scope: !1758)
!1765 = !DILocation(line: 862, column: 4, scope: !1758)
!1766 = !DILocation(line: 864, column: 46, scope: !1743)
!1767 = !DILocation(line: 864, column: 51, scope: !1743)
!1768 = !DILocation(line: 864, column: 58, scope: !1743)
!1769 = !DILocation(line: 864, column: 3, scope: !1743)
!1770 = !DILocation(line: 868, column: 38, scope: !1743)
!1771 = !DILocation(line: 868, column: 3, scope: !1743)
!1772 = !DILocation(line: 869, column: 2, scope: !1743)
!1773 = !DILocation(line: 870, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1733, file: !326, line: 869, column: 9)
!1775 = !DILocation(line: 873, column: 16, scope: !1774)
!1776 = !DILocation(line: 873, column: 9, scope: !1774)
!1777 = !DILocation(line: 873, column: 7, scope: !1774)
!1778 = !DILocation(line: 874, column: 14, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !326, line: 874, column: 3)
!1780 = !DILocation(line: 874, column: 20, scope: !1779)
!1781 = !DILocation(line: 874, column: 12, scope: !1779)
!1782 = !DILocation(line: 874, column: 8, scope: !1779)
!1783 = !DILocation(line: 874, column: 27, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !326, discriminator: 1)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !326, line: 874, column: 3)
!1786 = !DILocation(line: 874, column: 31, scope: !1784)
!1787 = !DILocation(line: 874, column: 3, scope: !1784)
!1788 = !DILocation(line: 875, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !326, line: 874, column: 56)
!1790 = !DILocation(line: 875, column: 16, scope: !1789)
!1791 = !DILocation(line: 875, column: 9, scope: !1789)
!1792 = !DILocation(line: 877, column: 8, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !326, line: 877, column: 8)
!1794 = !DILocation(line: 877, column: 12, scope: !1793)
!1795 = !DILocation(line: 877, column: 17, scope: !1793)
!1796 = !DILocation(line: 878, column: 28, scope: !1793)
!1797 = !DILocation(line: 878, column: 34, scope: !1793)
!1798 = !DILocation(line: 878, column: 39, scope: !1793)
!1799 = !DILocation(line: 878, column: 44, scope: !1793)
!1800 = !DILocation(line: 878, column: 8, scope: !1793)
!1801 = !DILocation(line: 878, column: 49, scope: !1793)
!1802 = !DILocation(line: 877, column: 8, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1789, file: !326, discriminator: 1)
!1804 = !DILocation(line: 879, column: 48, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !326, line: 878, column: 55)
!1806 = !DILocation(line: 879, column: 54, scope: !1805)
!1807 = !DILocation(line: 879, column: 79, scope: !1805)
!1808 = !DILocation(line: 879, column: 59, scope: !1805)
!1809 = !DILocation(line: 879, column: 120, scope: !1805)
!1810 = !DILocation(line: 879, column: 99, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1805, file: !326, discriminator: 1)
!1812 = !DILocation(line: 879, column: 99, scope: !1805)
!1813 = !DILocation(line: 879, column: 5, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1805, file: !326, discriminator: 2)
!1815 = !DILocation(line: 883, column: 4, scope: !1805)
!1816 = !DILocation(line: 884, column: 3, scope: !1789)
!1817 = !DILocation(line: 874, column: 45, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1785, file: !326, discriminator: 2)
!1819 = !DILocation(line: 874, column: 50, scope: !1818)
!1820 = !DILocation(line: 874, column: 43, scope: !1818)
!1821 = !DILocation(line: 874, column: 3, scope: !1818)
!1822 = distinct !{!1822, !1823}
!1823 = !DILocation(line: 874, column: 3, scope: !1774)
!1824 = !DILocation(line: 886, column: 3, scope: !1774)
!1825 = !DILocation(line: 890, column: 18, scope: !1641)
!1826 = !DILocation(line: 890, column: 2, scope: !1641)
!1827 = !DILocation(line: 891, column: 1, scope: !1641)
!1828 = !DILocation(line: 891, column: 1, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1641, file: !326, discriminator: 1)
!1830 = distinct !DISubprogram(name: "sig_complete_word", scope: !326, file: !326, line: 606, type: !1831, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833, !329, !301, !301, !420}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!1834 = !DILocalVariable(name: "list", arg: 1, scope: !1830, file: !326, line: 606, type: !1833)
!1835 = !DILocation(line: 606, column: 39, scope: !1830)
!1836 = !DILocalVariable(name: "window", arg: 2, scope: !1830, file: !326, line: 606, type: !329)
!1837 = !DILocation(line: 606, column: 57, scope: !1830)
!1838 = !DILocalVariable(name: "word", arg: 3, scope: !1830, file: !326, line: 607, type: !301)
!1839 = !DILocation(line: 607, column: 22, scope: !1830)
!1840 = !DILocalVariable(name: "linestart", arg: 4, scope: !1830, file: !326, line: 607, type: !301)
!1841 = !DILocation(line: 607, column: 40, scope: !1830)
!1842 = !DILocalVariable(name: "want_space", arg: 5, scope: !1830, file: !326, line: 608, type: !420)
!1843 = !DILocation(line: 608, column: 15, scope: !1830)
!1844 = !DILocalVariable(name: "newword", scope: !1830, file: !326, line: 610, type: !301)
!1845 = !DILocation(line: 610, column: 14, scope: !1830)
!1846 = !DILocalVariable(name: "cmdchars", scope: !1830, file: !326, line: 610, type: !301)
!1847 = !DILocation(line: 610, column: 24, scope: !1830)
!1848 = !DILocalVariable(name: "signal", scope: !1830, file: !326, line: 611, type: !311)
!1849 = !DILocation(line: 611, column: 8, scope: !1830)
!1850 = !DILocalVariable(name: "cmd", scope: !1830, file: !326, line: 611, type: !311)
!1851 = !DILocation(line: 611, column: 17, scope: !1830)
!1852 = !DILocalVariable(name: "args", scope: !1830, file: !326, line: 611, type: !311)
!1853 = !DILocation(line: 611, column: 23, scope: !1830)
!1854 = !DILocalVariable(name: "line", scope: !1830, file: !326, line: 611, type: !311)
!1855 = !DILocation(line: 611, column: 30, scope: !1830)
!1856 = !DILocation(line: 613, column: 2, scope: !1830)
!1857 = distinct !{!1857, !1856}
!1858 = !DILocation(line: 613, column: 10, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1860, file: !326, discriminator: 1)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !326, line: 613, column: 10)
!1861 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 613, column: 4)
!1862 = !DILocation(line: 613, column: 15, scope: !1859)
!1863 = !DILocation(line: 613, column: 5, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !326, discriminator: 2)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !326, line: 613, column: 3)
!1866 = !DILocation(line: 613, column: 14, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1868, file: !326, discriminator: 3)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !326, line: 613, column: 12)
!1869 = !DILocation(line: 613, column: 99, scope: !1867)
!1870 = !DILocation(line: 613, column: 110, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1861, file: !326, discriminator: 4)
!1872 = !DILocation(line: 614, column: 2, scope: !1830)
!1873 = distinct !{!1873, !1872}
!1874 = !DILocation(line: 614, column: 10, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1876, file: !326, discriminator: 1)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !326, line: 614, column: 10)
!1877 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 614, column: 4)
!1878 = !DILocation(line: 614, column: 15, scope: !1875)
!1879 = !DILocation(line: 614, column: 5, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1881, file: !326, discriminator: 2)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !326, line: 614, column: 3)
!1882 = !DILocation(line: 614, column: 14, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1884, file: !326, discriminator: 3)
!1884 = distinct !DILexicalBlock(scope: !1876, file: !326, line: 614, column: 12)
!1885 = !DILocation(line: 614, column: 99, scope: !1883)
!1886 = !DILocation(line: 614, column: 110, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1877, file: !326, discriminator: 4)
!1888 = !DILocation(line: 615, column: 2, scope: !1830)
!1889 = distinct !{!1889, !1888}
!1890 = !DILocation(line: 615, column: 10, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1892, file: !326, discriminator: 1)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !326, line: 615, column: 10)
!1893 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 615, column: 4)
!1894 = !DILocation(line: 615, column: 20, scope: !1891)
!1895 = !DILocation(line: 615, column: 5, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !326, discriminator: 2)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !326, line: 615, column: 3)
!1898 = !DILocation(line: 615, column: 14, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !326, discriminator: 3)
!1900 = distinct !DILexicalBlock(scope: !1892, file: !326, line: 615, column: 12)
!1901 = !DILocation(line: 615, column: 104, scope: !1899)
!1902 = !DILocation(line: 615, column: 115, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1893, file: !326, discriminator: 4)
!1904 = !DILocation(line: 618, column: 28, scope: !1830)
!1905 = !DILocation(line: 618, column: 12, scope: !1830)
!1906 = !DILocation(line: 618, column: 10, scope: !1830)
!1907 = !DILocation(line: 619, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 619, column: 6)
!1909 = !DILocation(line: 619, column: 14, scope: !1908)
!1910 = !DILocation(line: 619, column: 6, scope: !1830)
!1911 = !DILocation(line: 620, column: 26, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !326, line: 619, column: 22)
!1913 = !DILocation(line: 620, column: 25, scope: !1912)
!1914 = !DILocation(line: 620, column: 41, scope: !1912)
!1915 = !DILocation(line: 620, column: 32, scope: !1912)
!1916 = !DILocation(line: 620, column: 11, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1912, file: !326, discriminator: 1)
!1918 = !DILocation(line: 620, column: 4, scope: !1912)
!1919 = !DILocation(line: 620, column: 9, scope: !1912)
!1920 = !DILocation(line: 622, column: 3, scope: !1912)
!1921 = !DILocation(line: 623, column: 3, scope: !1912)
!1922 = !DILocation(line: 626, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 626, column: 6)
!1924 = !DILocation(line: 626, column: 6, scope: !1923)
!1925 = !DILocation(line: 626, column: 17, scope: !1923)
!1926 = !DILocation(line: 626, column: 25, scope: !1923)
!1927 = !DILocation(line: 626, column: 30, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1923, file: !326, discriminator: 1)
!1929 = !DILocation(line: 626, column: 29, scope: !1928)
!1930 = !DILocation(line: 626, column: 35, scope: !1928)
!1931 = !DILocation(line: 626, column: 42, scope: !1928)
!1932 = !DILocation(line: 626, column: 46, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1923, file: !326, discriminator: 2)
!1934 = !DILocation(line: 626, column: 45, scope: !1933)
!1935 = !DILocation(line: 626, column: 51, scope: !1933)
!1936 = !DILocation(line: 626, column: 6, scope: !1933)
!1937 = !DILocation(line: 628, column: 26, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1923, file: !326, line: 626, column: 60)
!1939 = !DILocation(line: 628, column: 25, scope: !1938)
!1940 = !DILocation(line: 628, column: 50, scope: !1938)
!1941 = !DILocation(line: 628, column: 32, scope: !1938)
!1942 = !DILocation(line: 628, column: 11, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1938, file: !326, discriminator: 1)
!1944 = !DILocation(line: 628, column: 4, scope: !1938)
!1945 = !DILocation(line: 628, column: 9, scope: !1938)
!1946 = !DILocation(line: 629, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !326, line: 629, column: 7)
!1948 = !DILocation(line: 629, column: 7, scope: !1947)
!1949 = !DILocation(line: 629, column: 13, scope: !1947)
!1950 = !DILocation(line: 629, column: 7, scope: !1938)
!1951 = !DILocation(line: 630, column: 5, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !326, line: 629, column: 21)
!1953 = !DILocation(line: 630, column: 16, scope: !1952)
!1954 = !DILocation(line: 631, column: 4, scope: !1952)
!1955 = !DILocation(line: 632, column: 4, scope: !1952)
!1956 = !DILocation(line: 634, column: 2, scope: !1938)
!1957 = !DILocation(line: 637, column: 13, scope: !1830)
!1958 = !DILocation(line: 637, column: 11, scope: !1830)
!1959 = !DILocation(line: 638, column: 7, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 638, column: 6)
!1961 = !DILocation(line: 638, column: 6, scope: !1960)
!1962 = !DILocation(line: 638, column: 12, scope: !1960)
!1963 = !DILocation(line: 638, column: 20, scope: !1960)
!1964 = !DILocation(line: 638, column: 26, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1960, file: !326, discriminator: 1)
!1966 = !DILocation(line: 638, column: 25, scope: !1965)
!1967 = !DILocation(line: 638, column: 36, scope: !1965)
!1968 = !DILocation(line: 638, column: 44, scope: !1965)
!1969 = !DILocation(line: 638, column: 54, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1960, file: !326, discriminator: 2)
!1971 = !DILocation(line: 638, column: 65, scope: !1970)
!1972 = !DILocation(line: 638, column: 64, scope: !1970)
!1973 = !DILocation(line: 638, column: 47, scope: !1970)
!1974 = !DILocation(line: 638, column: 72, scope: !1970)
!1975 = !DILocation(line: 639, column: 12, scope: !1960)
!1976 = !DILocation(line: 639, column: 11, scope: !1960)
!1977 = !DILocation(line: 639, column: 22, scope: !1960)
!1978 = !DILocation(line: 639, column: 30, scope: !1960)
!1979 = !DILocation(line: 639, column: 33, scope: !1965)
!1980 = !DILocation(line: 639, column: 46, scope: !1965)
!1981 = !DILocation(line: 639, column: 54, scope: !1965)
!1982 = !DILocation(line: 640, column: 18, scope: !1960)
!1983 = !DILocation(line: 640, column: 29, scope: !1960)
!1984 = !DILocation(line: 640, column: 28, scope: !1960)
!1985 = !DILocation(line: 640, column: 11, scope: !1960)
!1986 = !DILocation(line: 638, column: 6, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1830, file: !326, discriminator: 3)
!1988 = !DILocalVariable(name: "skip", scope: !1989, file: !326, line: 641, type: !1990)
!1989 = distinct !DILexicalBlock(scope: !1960, file: !326, line: 640, column: 43)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !299, line: 50, baseType: !321)
!1991 = !DILocation(line: 641, column: 12, scope: !1989)
!1992 = !DILocation(line: 641, column: 20, scope: !1989)
!1993 = !DILocation(line: 641, column: 19, scope: !1989)
!1994 = !DILocation(line: 641, column: 30, scope: !1989)
!1995 = !DILocation(line: 644, column: 35, scope: !1989)
!1996 = !DILocation(line: 644, column: 43, scope: !1989)
!1997 = !DILocation(line: 644, column: 40, scope: !1989)
!1998 = !DILocation(line: 645, column: 7, scope: !1989)
!1999 = !DILocation(line: 645, column: 15, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1989, file: !326, discriminator: 1)
!2001 = !DILocation(line: 645, column: 14, scope: !2000)
!2002 = !DILocation(line: 645, column: 7, scope: !2000)
!2003 = !DILocation(line: 645, column: 7, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1989, file: !326, discriminator: 2)
!2005 = !DILocation(line: 645, column: 7, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !1989, file: !326, discriminator: 3)
!2007 = !DILocation(line: 644, column: 11, scope: !2000)
!2008 = !DILocation(line: 644, column: 4, scope: !2000)
!2009 = !DILocation(line: 644, column: 9, scope: !2000)
!2010 = !DILocation(line: 648, column: 26, scope: !1989)
!2011 = !DILocation(line: 648, column: 25, scope: !1989)
!2012 = !DILocation(line: 649, column: 34, scope: !1989)
!2013 = !DILocation(line: 649, column: 42, scope: !1989)
!2014 = !DILocation(line: 649, column: 39, scope: !1989)
!2015 = !DILocation(line: 650, column: 13, scope: !1989)
!2016 = !DILocation(line: 650, column: 21, scope: !2000)
!2017 = !DILocation(line: 650, column: 20, scope: !2000)
!2018 = !DILocation(line: 650, column: 13, scope: !2000)
!2019 = !DILocation(line: 650, column: 13, scope: !2004)
!2020 = !DILocation(line: 650, column: 13, scope: !2006)
!2021 = !DILocation(line: 649, column: 11, scope: !2000)
!2022 = !DILocation(line: 648, column: 11, scope: !2000)
!2023 = !DILocation(line: 648, column: 4, scope: !2000)
!2024 = !DILocation(line: 648, column: 9, scope: !2000)
!2025 = !DILocation(line: 652, column: 8, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1989, file: !326, line: 652, column: 7)
!2027 = !DILocation(line: 652, column: 7, scope: !2026)
!2028 = !DILocation(line: 652, column: 13, scope: !2026)
!2029 = !DILocation(line: 652, column: 7, scope: !1989)
!2030 = !DILocation(line: 652, column: 21, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !326, discriminator: 1)
!2032 = !DILocation(line: 653, column: 3, scope: !1989)
!2033 = !DILocation(line: 657, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 657, column: 6)
!2035 = !DILocation(line: 657, column: 6, scope: !2034)
!2036 = !DILocation(line: 657, column: 17, scope: !2034)
!2037 = !DILocation(line: 657, column: 6, scope: !1830)
!2038 = !DILocation(line: 658, column: 3, scope: !2034)
!2039 = !DILocation(line: 660, column: 27, scope: !1830)
!2040 = !DILocation(line: 660, column: 38, scope: !1830)
!2041 = !DILocation(line: 660, column: 37, scope: !1830)
!2042 = !DILocation(line: 660, column: 20, scope: !1830)
!2043 = !DILocation(line: 660, column: 18, scope: !1830)
!2044 = !DILocation(line: 661, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 661, column: 6)
!2046 = !DILocation(line: 661, column: 15, scope: !2045)
!2047 = !DILocation(line: 661, column: 6, scope: !1830)
!2048 = !DILocation(line: 661, column: 23, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2045, file: !326, discriminator: 1)
!2050 = !DILocation(line: 664, column: 9, scope: !1830)
!2051 = !DILocation(line: 664, column: 26, scope: !1830)
!2052 = !DILocation(line: 664, column: 25, scope: !1830)
!2053 = !DILocation(line: 664, column: 22, scope: !1830)
!2054 = !DILocation(line: 664, column: 46, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !1830, file: !326, discriminator: 1)
!2056 = !DILocation(line: 664, column: 55, scope: !2055)
!2057 = !DILocation(line: 664, column: 37, scope: !2055)
!2058 = !DILocation(line: 664, column: 9, scope: !2055)
!2059 = !DILocation(line: 665, column: 18, scope: !1830)
!2060 = !DILocation(line: 665, column: 27, scope: !1830)
!2061 = !DILocation(line: 665, column: 3, scope: !1830)
!2062 = !DILocation(line: 664, column: 9, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !1830, file: !326, discriminator: 2)
!2064 = !DILocation(line: 664, column: 9, scope: !1987)
!2065 = !DILocation(line: 664, column: 7, scope: !1987)
!2066 = !DILocation(line: 667, column: 25, scope: !1830)
!2067 = !DILocation(line: 667, column: 8, scope: !1830)
!2068 = !DILocation(line: 667, column: 6, scope: !1830)
!2069 = !DILocation(line: 668, column: 6, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 668, column: 6)
!2071 = !DILocation(line: 668, column: 10, scope: !2070)
!2072 = !DILocation(line: 668, column: 6, scope: !1830)
!2073 = !DILocation(line: 669, column: 10, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !326, line: 668, column: 18)
!2075 = !DILocation(line: 669, column: 3, scope: !2074)
!2076 = !DILocation(line: 670, column: 3, scope: !2074)
!2077 = !DILocation(line: 674, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 674, column: 6)
!2079 = !DILocation(line: 674, column: 6, scope: !2078)
!2080 = !DILocation(line: 674, column: 12, scope: !2078)
!2081 = !DILocation(line: 674, column: 6, scope: !1830)
!2082 = !DILocation(line: 675, column: 34, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !326, line: 674, column: 20)
!2084 = !DILocation(line: 675, column: 39, scope: !2083)
!2085 = !DILocation(line: 675, column: 43, scope: !2083)
!2086 = !DILocation(line: 675, column: 11, scope: !2083)
!2087 = !DILocation(line: 675, column: 4, scope: !2083)
!2088 = !DILocation(line: 675, column: 9, scope: !2083)
!2089 = !DILocation(line: 676, column: 8, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2083, file: !326, line: 676, column: 7)
!2091 = !DILocation(line: 676, column: 7, scope: !2090)
!2092 = !DILocation(line: 676, column: 13, scope: !2090)
!2093 = !DILocation(line: 676, column: 7, scope: !2083)
!2094 = !DILocation(line: 676, column: 21, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2090, file: !326, discriminator: 1)
!2096 = !DILocation(line: 677, column: 10, scope: !2083)
!2097 = !DILocation(line: 677, column: 3, scope: !2083)
!2098 = !DILocation(line: 678, column: 10, scope: !2083)
!2099 = !DILocation(line: 678, column: 3, scope: !2083)
!2100 = !DILocation(line: 679, column: 3, scope: !2083)
!2101 = !DILocation(line: 683, column: 44, scope: !1830)
!2102 = !DILocation(line: 683, column: 11, scope: !1830)
!2103 = !DILocation(line: 683, column: 9, scope: !1830)
!2104 = !DILocation(line: 684, column: 14, scope: !1830)
!2105 = !DILocation(line: 684, column: 25, scope: !1830)
!2106 = !DILocation(line: 684, column: 31, scope: !1830)
!2107 = !DILocation(line: 684, column: 39, scope: !1830)
!2108 = !DILocation(line: 684, column: 45, scope: !1830)
!2109 = !DILocation(line: 684, column: 51, scope: !1830)
!2110 = !DILocation(line: 684, column: 2, scope: !1830)
!2111 = !DILocation(line: 686, column: 23, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 686, column: 6)
!2113 = !DILocation(line: 686, column: 6, scope: !2112)
!2114 = !DILocation(line: 686, column: 6, scope: !1830)
!2115 = !DILocation(line: 688, column: 10, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !326, line: 686, column: 30)
!2117 = !DILocation(line: 688, column: 3, scope: !2116)
!2118 = !DILocation(line: 689, column: 21, scope: !2116)
!2119 = !DILocation(line: 689, column: 32, scope: !2116)
!2120 = !DILocation(line: 689, column: 9, scope: !2116)
!2121 = !DILocation(line: 689, column: 7, scope: !2116)
!2122 = !DILocation(line: 690, column: 52, scope: !2116)
!2123 = !DILocation(line: 690, column: 25, scope: !2116)
!2124 = !DILocation(line: 690, column: 59, scope: !2116)
!2125 = !DILocation(line: 690, column: 58, scope: !2116)
!2126 = !DILocation(line: 690, column: 11, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2116, file: !326, discriminator: 1)
!2128 = !DILocation(line: 690, column: 4, scope: !2116)
!2129 = !DILocation(line: 690, column: 9, scope: !2116)
!2130 = !DILocation(line: 691, column: 2, scope: !2116)
!2131 = !DILocation(line: 693, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1830, file: !326, line: 693, column: 6)
!2133 = !DILocation(line: 693, column: 6, scope: !2132)
!2134 = !DILocation(line: 693, column: 12, scope: !2132)
!2135 = !DILocation(line: 693, column: 6, scope: !1830)
!2136 = !DILocation(line: 693, column: 20, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2132, file: !326, discriminator: 1)
!2138 = !DILocation(line: 694, column: 9, scope: !1830)
!2139 = !DILocation(line: 694, column: 2, scope: !1830)
!2140 = !DILocation(line: 695, column: 9, scope: !1830)
!2141 = !DILocation(line: 695, column: 2, scope: !1830)
!2142 = !DILocation(line: 696, column: 9, scope: !1830)
!2143 = !DILocation(line: 696, column: 2, scope: !1830)
!2144 = !DILocation(line: 697, column: 1, scope: !1830)
!2145 = !DILocation(line: 697, column: 1, scope: !2055)
!2146 = distinct !DISubprogram(name: "sig_complete_erase", scope: !326, file: !326, line: 699, type: !2147, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !329, !301, !301}
!2149 = !DILocalVariable(name: "window", arg: 1, scope: !2146, file: !326, line: 699, type: !329)
!2150 = !DILocation(line: 699, column: 44, scope: !2146)
!2151 = !DILocalVariable(name: "word", arg: 2, scope: !2146, file: !326, line: 699, type: !301)
!2152 = !DILocation(line: 699, column: 64, scope: !2146)
!2153 = !DILocalVariable(name: "linestart", arg: 3, scope: !2146, file: !326, line: 700, type: !301)
!2154 = !DILocation(line: 700, column: 23, scope: !2146)
!2155 = !DILocalVariable(name: "cmdchars", scope: !2146, file: !326, line: 702, type: !301)
!2156 = !DILocation(line: 702, column: 14, scope: !2146)
!2157 = !DILocalVariable(name: "line", scope: !2146, file: !326, line: 703, type: !311)
!2158 = !DILocation(line: 703, column: 15, scope: !2146)
!2159 = !DILocalVariable(name: "cmd", scope: !2146, file: !326, line: 703, type: !311)
!2160 = !DILocation(line: 703, column: 22, scope: !2146)
!2161 = !DILocalVariable(name: "args", scope: !2146, file: !326, line: 703, type: !311)
!2162 = !DILocation(line: 703, column: 28, scope: !2146)
!2163 = !DILocalVariable(name: "signal", scope: !2146, file: !326, line: 703, type: !311)
!2164 = !DILocation(line: 703, column: 35, scope: !2146)
!2165 = !DILocation(line: 705, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2146, file: !326, line: 705, column: 6)
!2167 = !DILocation(line: 705, column: 6, scope: !2166)
!2168 = !DILocation(line: 705, column: 17, scope: !2166)
!2169 = !DILocation(line: 705, column: 6, scope: !2146)
!2170 = !DILocation(line: 706, column: 3, scope: !2166)
!2171 = !DILocation(line: 709, column: 13, scope: !2146)
!2172 = !DILocation(line: 709, column: 11, scope: !2146)
!2173 = !DILocation(line: 710, column: 27, scope: !2146)
!2174 = !DILocation(line: 710, column: 38, scope: !2146)
!2175 = !DILocation(line: 710, column: 37, scope: !2146)
!2176 = !DILocation(line: 710, column: 20, scope: !2146)
!2177 = !DILocation(line: 710, column: 18, scope: !2146)
!2178 = !DILocation(line: 711, column: 6, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2146, file: !326, line: 711, column: 6)
!2180 = !DILocation(line: 711, column: 15, scope: !2179)
!2181 = !DILocation(line: 711, column: 6, scope: !2146)
!2182 = !DILocation(line: 712, column: 3, scope: !2179)
!2183 = !DILocation(line: 715, column: 9, scope: !2146)
!2184 = !DILocation(line: 715, column: 26, scope: !2146)
!2185 = !DILocation(line: 715, column: 25, scope: !2146)
!2186 = !DILocation(line: 715, column: 22, scope: !2146)
!2187 = !DILocation(line: 715, column: 46, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2146, file: !326, discriminator: 1)
!2189 = !DILocation(line: 715, column: 55, scope: !2188)
!2190 = !DILocation(line: 715, column: 37, scope: !2188)
!2191 = !DILocation(line: 715, column: 9, scope: !2188)
!2192 = !DILocation(line: 716, column: 18, scope: !2146)
!2193 = !DILocation(line: 716, column: 27, scope: !2146)
!2194 = !DILocation(line: 716, column: 3, scope: !2146)
!2195 = !DILocation(line: 715, column: 9, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2146, file: !326, discriminator: 2)
!2197 = !DILocation(line: 715, column: 9, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2146, file: !326, discriminator: 3)
!2199 = !DILocation(line: 715, column: 7, scope: !2198)
!2200 = !DILocation(line: 718, column: 25, scope: !2146)
!2201 = !DILocation(line: 718, column: 8, scope: !2146)
!2202 = !DILocation(line: 718, column: 6, scope: !2146)
!2203 = !DILocation(line: 719, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2146, file: !326, line: 719, column: 6)
!2205 = !DILocation(line: 719, column: 10, scope: !2204)
!2206 = !DILocation(line: 719, column: 6, scope: !2146)
!2207 = !DILocation(line: 720, column: 10, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !326, line: 719, column: 18)
!2209 = !DILocation(line: 720, column: 3, scope: !2208)
!2210 = !DILocation(line: 721, column: 3, scope: !2208)
!2211 = !DILocation(line: 724, column: 50, scope: !2146)
!2212 = !DILocation(line: 724, column: 11, scope: !2146)
!2213 = !DILocation(line: 724, column: 9, scope: !2146)
!2214 = !DILocation(line: 725, column: 14, scope: !2146)
!2215 = !DILocation(line: 725, column: 25, scope: !2146)
!2216 = !DILocation(line: 725, column: 33, scope: !2146)
!2217 = !DILocation(line: 725, column: 39, scope: !2146)
!2218 = !DILocation(line: 725, column: 2, scope: !2146)
!2219 = !DILocation(line: 727, column: 16, scope: !2146)
!2220 = !DILocation(line: 727, column: 9, scope: !2146)
!2221 = !DILocation(line: 728, column: 9, scope: !2146)
!2222 = !DILocation(line: 728, column: 2, scope: !2146)
!2223 = !DILocation(line: 729, column: 9, scope: !2146)
!2224 = !DILocation(line: 729, column: 2, scope: !2146)
!2225 = !DILocation(line: 730, column: 1, scope: !2146)
!2226 = !DILocation(line: 730, column: 1, scope: !2188)
!2227 = distinct !DISubprogram(name: "sig_complete_set", scope: !326, file: !326, line: 732, type: !1831, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2228 = !DILocalVariable(name: "list", arg: 1, scope: !2227, file: !326, line: 732, type: !1833)
!2229 = !DILocation(line: 732, column: 38, scope: !2227)
!2230 = !DILocalVariable(name: "window", arg: 2, scope: !2227, file: !326, line: 732, type: !329)
!2231 = !DILocation(line: 732, column: 56, scope: !2227)
!2232 = !DILocalVariable(name: "word", arg: 3, scope: !2227, file: !326, line: 733, type: !301)
!2233 = !DILocation(line: 733, column: 21, scope: !2227)
!2234 = !DILocalVariable(name: "line", arg: 4, scope: !2227, file: !326, line: 733, type: !301)
!2235 = !DILocation(line: 733, column: 39, scope: !2227)
!2236 = !DILocalVariable(name: "want_space", arg: 5, scope: !2227, file: !326, line: 733, type: !420)
!2237 = !DILocation(line: 733, column: 50, scope: !2227)
!2238 = !DILocation(line: 735, column: 2, scope: !2227)
!2239 = distinct !{!2239, !2238}
!2240 = !DILocation(line: 735, column: 10, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2242, file: !326, discriminator: 1)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !326, line: 735, column: 10)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !326, line: 735, column: 4)
!2244 = !DILocation(line: 735, column: 15, scope: !2241)
!2245 = !DILocation(line: 735, column: 5, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !326, discriminator: 2)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !326, line: 735, column: 3)
!2248 = !DILocation(line: 735, column: 14, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !326, discriminator: 3)
!2250 = distinct !DILexicalBlock(scope: !2242, file: !326, line: 735, column: 12)
!2251 = !DILocation(line: 735, column: 99, scope: !2249)
!2252 = !DILocation(line: 735, column: 110, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2243, file: !326, discriminator: 4)
!2254 = !DILocation(line: 736, column: 2, scope: !2227)
!2255 = distinct !{!2255, !2254}
!2256 = !DILocation(line: 736, column: 10, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !326, discriminator: 1)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !326, line: 736, column: 10)
!2259 = distinct !DILexicalBlock(scope: !2227, file: !326, line: 736, column: 4)
!2260 = !DILocation(line: 736, column: 15, scope: !2257)
!2261 = !DILocation(line: 736, column: 5, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2263, file: !326, discriminator: 2)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !326, line: 736, column: 3)
!2264 = !DILocation(line: 736, column: 14, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !326, discriminator: 3)
!2266 = distinct !DILexicalBlock(scope: !2258, file: !326, line: 736, column: 12)
!2267 = !DILocation(line: 736, column: 99, scope: !2265)
!2268 = !DILocation(line: 736, column: 110, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2259, file: !326, discriminator: 4)
!2270 = !DILocation(line: 737, column: 2, scope: !2227)
!2271 = distinct !{!2271, !2270}
!2272 = !DILocation(line: 737, column: 10, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !326, discriminator: 1)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !326, line: 737, column: 10)
!2275 = distinct !DILexicalBlock(scope: !2227, file: !326, line: 737, column: 4)
!2276 = !DILocation(line: 737, column: 15, scope: !2273)
!2277 = !DILocation(line: 737, column: 5, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !326, discriminator: 2)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !326, line: 737, column: 3)
!2280 = !DILocation(line: 737, column: 14, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !326, discriminator: 3)
!2282 = distinct !DILexicalBlock(scope: !2274, file: !326, line: 737, column: 12)
!2283 = !DILocation(line: 737, column: 99, scope: !2281)
!2284 = !DILocation(line: 737, column: 110, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2275, file: !326, discriminator: 4)
!2286 = !DILocation(line: 739, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2227, file: !326, line: 739, column: 6)
!2288 = !DILocation(line: 739, column: 6, scope: !2287)
!2289 = !DILocation(line: 739, column: 12, scope: !2287)
!2290 = !DILocation(line: 739, column: 20, scope: !2287)
!2291 = !DILocation(line: 740, column: 27, scope: !2287)
!2292 = !DILocation(line: 740, column: 7, scope: !2287)
!2293 = !DILocation(line: 740, column: 33, scope: !2287)
!2294 = !DILocation(line: 740, column: 59, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2287, file: !326, discriminator: 1)
!2296 = !DILocation(line: 740, column: 37, scope: !2295)
!2297 = !DILocation(line: 739, column: 6, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2227, file: !326, discriminator: 1)
!2299 = !DILocation(line: 741, column: 35, scope: !2287)
!2300 = !DILocation(line: 741, column: 11, scope: !2287)
!2301 = !DILocation(line: 741, column: 4, scope: !2287)
!2302 = !DILocation(line: 741, column: 9, scope: !2287)
!2303 = !DILocation(line: 741, column: 3, scope: !2287)
!2304 = !DILocation(line: 742, column: 12, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2287, file: !326, line: 742, column: 11)
!2306 = !DILocation(line: 742, column: 11, scope: !2305)
!2307 = !DILocation(line: 742, column: 17, scope: !2305)
!2308 = !DILocation(line: 742, column: 25, scope: !2305)
!2309 = !DILocation(line: 742, column: 29, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2305, file: !326, discriminator: 1)
!2311 = !DILocation(line: 742, column: 28, scope: !2310)
!2312 = !DILocation(line: 742, column: 34, scope: !2310)
!2313 = !DILocation(line: 742, column: 11, scope: !2310)
!2314 = !DILocalVariable(name: "rec", scope: !2315, file: !326, line: 743, type: !2316)
!2315 = distinct !DILexicalBlock(scope: !2305, file: !326, line: 742, column: 43)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64, align: 64)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETTINGS_REC", file: !285, line: 31, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 21, size: 512, align: 64, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2326, !2333}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2318, file: !285, line: 22, baseType: !303, size: 32, align: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2318, file: !285, line: 24, baseType: !311, size: 64, align: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2318, file: !285, line: 25, baseType: !311, size: 64, align: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !2318, file: !285, line: 26, baseType: !311, size: 64, align: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2318, file: !285, line: 28, baseType: !2325, size: 32, align: 32, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingType", file: !285, line: 13, baseType: !284)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2318, file: !285, line: 29, baseType: !2327, size: 128, align: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingValue", file: !285, line: 19, baseType: !2328)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !285, line: 15, size: 128, align: 64, elements: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !2328, file: !285, line: 16, baseType: !311, size: 64, align: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !2328, file: !285, line: 17, baseType: !303, size: 32, align: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !2328, file: !285, line: 18, baseType: !390, size: 1, align: 32, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "choices", scope: !2318, file: !285, line: 30, baseType: !548, size: 64, align: 64, offset: 448)
!2334 = !DILocation(line: 743, column: 17, scope: !2315)
!2335 = !DILocation(line: 743, column: 43, scope: !2315)
!2336 = !DILocation(line: 743, column: 23, scope: !2315)
!2337 = !DILocation(line: 744, column: 7, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2315, file: !326, line: 744, column: 7)
!2339 = !DILocation(line: 744, column: 11, scope: !2338)
!2340 = !DILocation(line: 744, column: 7, scope: !2315)
!2341 = !DILocalVariable(name: "value", scope: !2342, file: !326, line: 745, type: !311)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !326, line: 744, column: 19)
!2343 = !DILocation(line: 745, column: 10, scope: !2342)
!2344 = !DILocation(line: 745, column: 37, scope: !2342)
!2345 = !DILocation(line: 745, column: 18, scope: !2342)
!2346 = !DILocation(line: 748, column: 8, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !326, line: 748, column: 8)
!2348 = !DILocation(line: 748, column: 14, scope: !2347)
!2349 = !DILocation(line: 748, column: 8, scope: !2342)
!2350 = !DILocation(line: 749, column: 28, scope: !2347)
!2351 = !DILocation(line: 749, column: 27, scope: !2347)
!2352 = !DILocation(line: 749, column: 34, scope: !2347)
!2353 = !DILocation(line: 749, column: 13, scope: !2347)
!2354 = !DILocation(line: 749, column: 6, scope: !2347)
!2355 = !DILocation(line: 749, column: 11, scope: !2347)
!2356 = !DILocation(line: 749, column: 5, scope: !2347)
!2357 = !DILocation(line: 752, column: 8, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2342, file: !326, line: 752, column: 8)
!2359 = !DILocation(line: 752, column: 13, scope: !2358)
!2360 = !DILocation(line: 752, column: 18, scope: !2358)
!2361 = !DILocation(line: 752, column: 8, scope: !2342)
!2362 = !DILocalVariable(name: "tmp", scope: !2363, file: !326, line: 753, type: !548)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !326, line: 752, column: 42)
!2364 = !DILocation(line: 753, column: 12, scope: !2363)
!2365 = !DILocation(line: 755, column: 16, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !326, line: 755, column: 5)
!2367 = !DILocation(line: 755, column: 21, scope: !2366)
!2368 = !DILocation(line: 755, column: 14, scope: !2366)
!2369 = !DILocation(line: 755, column: 10, scope: !2366)
!2370 = !DILocation(line: 755, column: 31, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2372, file: !326, discriminator: 1)
!2372 = distinct !DILexicalBlock(scope: !2366, file: !326, line: 755, column: 5)
!2373 = !DILocation(line: 755, column: 30, scope: !2371)
!2374 = !DILocation(line: 755, column: 5, scope: !2371)
!2375 = !DILocation(line: 756, column: 30, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !326, line: 756, column: 10)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !326, line: 755, column: 43)
!2378 = !DILocation(line: 756, column: 29, scope: !2376)
!2379 = !DILocation(line: 756, column: 35, scope: !2376)
!2380 = !DILocation(line: 756, column: 10, scope: !2376)
!2381 = !DILocation(line: 756, column: 42, scope: !2376)
!2382 = !DILocation(line: 756, column: 10, scope: !2377)
!2383 = !DILocation(line: 757, column: 30, scope: !2376)
!2384 = !DILocation(line: 757, column: 29, scope: !2376)
!2385 = !DILocation(line: 757, column: 46, scope: !2376)
!2386 = !DILocation(line: 757, column: 45, scope: !2376)
!2387 = !DILocation(line: 757, column: 36, scope: !2376)
!2388 = !DILocation(line: 757, column: 15, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2376, file: !326, discriminator: 1)
!2390 = !DILocation(line: 757, column: 8, scope: !2376)
!2391 = !DILocation(line: 757, column: 13, scope: !2376)
!2392 = !DILocation(line: 757, column: 7, scope: !2376)
!2393 = !DILocation(line: 758, column: 5, scope: !2377)
!2394 = !DILocation(line: 755, column: 39, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2372, file: !326, discriminator: 2)
!2396 = !DILocation(line: 755, column: 5, scope: !2395)
!2397 = distinct !{!2397, !2398}
!2398 = !DILocation(line: 755, column: 5, scope: !2363)
!2399 = !DILocation(line: 759, column: 4, scope: !2363)
!2400 = !DILocation(line: 760, column: 3, scope: !2342)
!2401 = !DILocation(line: 761, column: 2, scope: !2315)
!2402 = !DILocation(line: 763, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2227, file: !326, line: 763, column: 6)
!2404 = !DILocation(line: 763, column: 6, scope: !2403)
!2405 = !DILocation(line: 763, column: 12, scope: !2403)
!2406 = !DILocation(line: 763, column: 6, scope: !2227)
!2407 = !DILocation(line: 763, column: 20, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2403, file: !326, discriminator: 1)
!2409 = !DILocation(line: 764, column: 1, scope: !2227)
!2410 = distinct !DISubprogram(name: "sig_complete_toggle", scope: !326, file: !326, line: 766, type: !1831, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2411 = !DILocalVariable(name: "list", arg: 1, scope: !2410, file: !326, line: 766, type: !1833)
!2412 = !DILocation(line: 766, column: 41, scope: !2410)
!2413 = !DILocalVariable(name: "window", arg: 2, scope: !2410, file: !326, line: 766, type: !329)
!2414 = !DILocation(line: 766, column: 59, scope: !2410)
!2415 = !DILocalVariable(name: "word", arg: 3, scope: !2410, file: !326, line: 767, type: !301)
!2416 = !DILocation(line: 767, column: 17, scope: !2410)
!2417 = !DILocalVariable(name: "line", arg: 4, scope: !2410, file: !326, line: 767, type: !301)
!2418 = !DILocation(line: 767, column: 35, scope: !2410)
!2419 = !DILocalVariable(name: "want_space", arg: 5, scope: !2410, file: !326, line: 767, type: !420)
!2420 = !DILocation(line: 767, column: 46, scope: !2410)
!2421 = !DILocation(line: 769, column: 2, scope: !2410)
!2422 = distinct !{!2422, !2421}
!2423 = !DILocation(line: 769, column: 10, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2425, file: !326, discriminator: 1)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !326, line: 769, column: 10)
!2426 = distinct !DILexicalBlock(scope: !2410, file: !326, line: 769, column: 4)
!2427 = !DILocation(line: 769, column: 15, scope: !2424)
!2428 = !DILocation(line: 769, column: 5, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2430, file: !326, discriminator: 2)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !326, line: 769, column: 3)
!2431 = !DILocation(line: 769, column: 14, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2433, file: !326, discriminator: 3)
!2433 = distinct !DILexicalBlock(scope: !2425, file: !326, line: 769, column: 12)
!2434 = !DILocation(line: 769, column: 99, scope: !2432)
!2435 = !DILocation(line: 769, column: 110, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2426, file: !326, discriminator: 4)
!2437 = !DILocation(line: 770, column: 2, scope: !2410)
!2438 = distinct !{!2438, !2437}
!2439 = !DILocation(line: 770, column: 10, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2441, file: !326, discriminator: 1)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !326, line: 770, column: 10)
!2442 = distinct !DILexicalBlock(scope: !2410, file: !326, line: 770, column: 4)
!2443 = !DILocation(line: 770, column: 15, scope: !2440)
!2444 = !DILocation(line: 770, column: 5, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !326, discriminator: 2)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !326, line: 770, column: 3)
!2447 = !DILocation(line: 770, column: 14, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2449, file: !326, discriminator: 3)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !326, line: 770, column: 12)
!2450 = !DILocation(line: 770, column: 99, scope: !2448)
!2451 = !DILocation(line: 770, column: 110, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2442, file: !326, discriminator: 4)
!2453 = !DILocation(line: 771, column: 2, scope: !2410)
!2454 = distinct !{!2454, !2453}
!2455 = !DILocation(line: 771, column: 10, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2457, file: !326, discriminator: 1)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !326, line: 771, column: 10)
!2458 = distinct !DILexicalBlock(scope: !2410, file: !326, line: 771, column: 4)
!2459 = !DILocation(line: 771, column: 15, scope: !2456)
!2460 = !DILocation(line: 771, column: 5, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2462, file: !326, discriminator: 2)
!2462 = distinct !DILexicalBlock(scope: !2457, file: !326, line: 771, column: 3)
!2463 = !DILocation(line: 771, column: 14, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !326, discriminator: 3)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !326, line: 771, column: 12)
!2466 = !DILocation(line: 771, column: 99, scope: !2464)
!2467 = !DILocation(line: 771, column: 110, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2458, file: !326, discriminator: 4)
!2469 = !DILocation(line: 773, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2410, file: !326, line: 773, column: 6)
!2471 = !DILocation(line: 773, column: 6, scope: !2470)
!2472 = !DILocation(line: 773, column: 12, scope: !2470)
!2473 = !DILocation(line: 773, column: 6, scope: !2410)
!2474 = !DILocation(line: 773, column: 21, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2470, file: !326, discriminator: 1)
!2476 = !DILocation(line: 775, column: 34, scope: !2410)
!2477 = !DILocation(line: 775, column: 10, scope: !2410)
!2478 = !DILocation(line: 775, column: 3, scope: !2410)
!2479 = !DILocation(line: 775, column: 8, scope: !2410)
!2480 = !DILocation(line: 776, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2410, file: !326, line: 776, column: 6)
!2482 = !DILocation(line: 776, column: 6, scope: !2481)
!2483 = !DILocation(line: 776, column: 12, scope: !2481)
!2484 = !DILocation(line: 776, column: 6, scope: !2410)
!2485 = !DILocation(line: 776, column: 20, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2481, file: !326, discriminator: 1)
!2487 = !DILocation(line: 777, column: 1, scope: !2410)
!2488 = distinct !DISubprogram(name: "sig_complete_filename", scope: !326, file: !326, line: 780, type: !1831, isLocal: true, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2489 = !DILocalVariable(name: "list", arg: 1, scope: !2488, file: !326, line: 780, type: !1833)
!2490 = !DILocation(line: 780, column: 43, scope: !2488)
!2491 = !DILocalVariable(name: "window", arg: 2, scope: !2488, file: !326, line: 780, type: !329)
!2492 = !DILocation(line: 780, column: 61, scope: !2488)
!2493 = !DILocalVariable(name: "word", arg: 3, scope: !2488, file: !326, line: 781, type: !301)
!2494 = !DILocation(line: 781, column: 19, scope: !2488)
!2495 = !DILocalVariable(name: "line", arg: 4, scope: !2488, file: !326, line: 781, type: !301)
!2496 = !DILocation(line: 781, column: 37, scope: !2488)
!2497 = !DILocalVariable(name: "want_space", arg: 5, scope: !2488, file: !326, line: 781, type: !420)
!2498 = !DILocation(line: 781, column: 48, scope: !2488)
!2499 = !DILocation(line: 783, column: 2, scope: !2488)
!2500 = distinct !{!2500, !2499}
!2501 = !DILocation(line: 783, column: 10, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2503, file: !326, discriminator: 1)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !326, line: 783, column: 10)
!2504 = distinct !DILexicalBlock(scope: !2488, file: !326, line: 783, column: 4)
!2505 = !DILocation(line: 783, column: 15, scope: !2502)
!2506 = !DILocation(line: 783, column: 5, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !326, discriminator: 2)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !326, line: 783, column: 3)
!2509 = !DILocation(line: 783, column: 14, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2511, file: !326, discriminator: 3)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !326, line: 783, column: 12)
!2512 = !DILocation(line: 783, column: 99, scope: !2510)
!2513 = !DILocation(line: 783, column: 110, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2504, file: !326, discriminator: 4)
!2515 = !DILocation(line: 784, column: 2, scope: !2488)
!2516 = distinct !{!2516, !2515}
!2517 = !DILocation(line: 784, column: 10, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !326, discriminator: 1)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !326, line: 784, column: 10)
!2520 = distinct !DILexicalBlock(scope: !2488, file: !326, line: 784, column: 4)
!2521 = !DILocation(line: 784, column: 15, scope: !2518)
!2522 = !DILocation(line: 784, column: 5, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2524, file: !326, discriminator: 2)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !326, line: 784, column: 3)
!2525 = !DILocation(line: 784, column: 14, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !326, discriminator: 3)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !326, line: 784, column: 12)
!2528 = !DILocation(line: 784, column: 99, scope: !2526)
!2529 = !DILocation(line: 784, column: 110, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2520, file: !326, discriminator: 4)
!2531 = !DILocation(line: 785, column: 2, scope: !2488)
!2532 = distinct !{!2532, !2531}
!2533 = !DILocation(line: 785, column: 10, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !326, discriminator: 1)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !326, line: 785, column: 10)
!2536 = distinct !DILexicalBlock(scope: !2488, file: !326, line: 785, column: 4)
!2537 = !DILocation(line: 785, column: 15, scope: !2534)
!2538 = !DILocation(line: 785, column: 5, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2540, file: !326, discriminator: 2)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !326, line: 785, column: 3)
!2541 = !DILocation(line: 785, column: 14, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2543, file: !326, discriminator: 3)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !326, line: 785, column: 12)
!2544 = !DILocation(line: 785, column: 99, scope: !2542)
!2545 = !DILocation(line: 785, column: 110, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2536, file: !326, discriminator: 4)
!2547 = !DILocation(line: 787, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2488, file: !326, line: 787, column: 6)
!2549 = !DILocation(line: 787, column: 6, scope: !2548)
!2550 = !DILocation(line: 787, column: 12, scope: !2548)
!2551 = !DILocation(line: 787, column: 6, scope: !2488)
!2552 = !DILocation(line: 787, column: 21, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2548, file: !326, discriminator: 1)
!2554 = !DILocation(line: 789, column: 28, scope: !2488)
!2555 = !DILocation(line: 789, column: 10, scope: !2488)
!2556 = !DILocation(line: 789, column: 3, scope: !2488)
!2557 = !DILocation(line: 789, column: 8, scope: !2488)
!2558 = !DILocation(line: 790, column: 7, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2488, file: !326, line: 790, column: 6)
!2560 = !DILocation(line: 790, column: 6, scope: !2559)
!2561 = !DILocation(line: 790, column: 12, scope: !2559)
!2562 = !DILocation(line: 790, column: 6, scope: !2488)
!2563 = !DILocation(line: 791, column: 4, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !326, line: 790, column: 20)
!2565 = !DILocation(line: 791, column: 15, scope: !2564)
!2566 = !DILocation(line: 792, column: 3, scope: !2564)
!2567 = !DILocation(line: 793, column: 2, scope: !2564)
!2568 = !DILocation(line: 794, column: 1, scope: !2488)
!2569 = distinct !DISubprogram(name: "sig_complete_command", scope: !326, file: !326, line: 797, type: !1831, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2570 = !DILocalVariable(name: "list", arg: 1, scope: !2569, file: !326, line: 797, type: !1833)
!2571 = !DILocation(line: 797, column: 42, scope: !2569)
!2572 = !DILocalVariable(name: "window", arg: 2, scope: !2569, file: !326, line: 797, type: !329)
!2573 = !DILocation(line: 797, column: 60, scope: !2569)
!2574 = !DILocalVariable(name: "word", arg: 3, scope: !2569, file: !326, line: 798, type: !301)
!2575 = !DILocation(line: 798, column: 19, scope: !2569)
!2576 = !DILocalVariable(name: "line", arg: 4, scope: !2569, file: !326, line: 798, type: !301)
!2577 = !DILocation(line: 798, column: 37, scope: !2569)
!2578 = !DILocalVariable(name: "want_space", arg: 5, scope: !2569, file: !326, line: 798, type: !420)
!2579 = !DILocation(line: 798, column: 48, scope: !2569)
!2580 = !DILocalVariable(name: "cmd", scope: !2569, file: !326, line: 800, type: !311)
!2581 = !DILocation(line: 800, column: 8, scope: !2569)
!2582 = !DILocation(line: 802, column: 2, scope: !2569)
!2583 = distinct !{!2583, !2582}
!2584 = !DILocation(line: 802, column: 10, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2586, file: !326, discriminator: 1)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !326, line: 802, column: 10)
!2587 = distinct !DILexicalBlock(scope: !2569, file: !326, line: 802, column: 4)
!2588 = !DILocation(line: 802, column: 15, scope: !2585)
!2589 = !DILocation(line: 802, column: 5, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2591, file: !326, discriminator: 2)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !326, line: 802, column: 3)
!2592 = !DILocation(line: 802, column: 14, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2594, file: !326, discriminator: 3)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !326, line: 802, column: 12)
!2595 = !DILocation(line: 802, column: 99, scope: !2593)
!2596 = !DILocation(line: 802, column: 110, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2587, file: !326, discriminator: 4)
!2598 = !DILocation(line: 803, column: 2, scope: !2569)
!2599 = distinct !{!2599, !2598}
!2600 = !DILocation(line: 803, column: 10, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2602, file: !326, discriminator: 1)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !326, line: 803, column: 10)
!2603 = distinct !DILexicalBlock(scope: !2569, file: !326, line: 803, column: 4)
!2604 = !DILocation(line: 803, column: 15, scope: !2601)
!2605 = !DILocation(line: 803, column: 5, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !326, discriminator: 2)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !326, line: 803, column: 3)
!2608 = !DILocation(line: 803, column: 14, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2610, file: !326, discriminator: 3)
!2610 = distinct !DILexicalBlock(scope: !2602, file: !326, line: 803, column: 12)
!2611 = !DILocation(line: 803, column: 99, scope: !2609)
!2612 = !DILocation(line: 803, column: 110, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2603, file: !326, discriminator: 4)
!2614 = !DILocation(line: 804, column: 2, scope: !2569)
!2615 = distinct !{!2615, !2614}
!2616 = !DILocation(line: 804, column: 10, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2618, file: !326, discriminator: 1)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !326, line: 804, column: 10)
!2619 = distinct !DILexicalBlock(scope: !2569, file: !326, line: 804, column: 4)
!2620 = !DILocation(line: 804, column: 15, scope: !2617)
!2621 = !DILocation(line: 804, column: 5, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2623, file: !326, discriminator: 2)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !326, line: 804, column: 3)
!2624 = !DILocation(line: 804, column: 14, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2626, file: !326, discriminator: 3)
!2626 = distinct !DILexicalBlock(scope: !2618, file: !326, line: 804, column: 12)
!2627 = !DILocation(line: 804, column: 99, scope: !2625)
!2628 = !DILocation(line: 804, column: 110, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2619, file: !326, discriminator: 4)
!2630 = !DILocation(line: 806, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2569, file: !326, line: 806, column: 6)
!2632 = !DILocation(line: 806, column: 6, scope: !2631)
!2633 = !DILocation(line: 806, column: 12, scope: !2631)
!2634 = !DILocation(line: 806, column: 6, scope: !2569)
!2635 = !DILocation(line: 808, column: 35, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2631, file: !326, line: 806, column: 21)
!2637 = !DILocation(line: 808, column: 11, scope: !2636)
!2638 = !DILocation(line: 808, column: 4, scope: !2636)
!2639 = !DILocation(line: 808, column: 9, scope: !2636)
!2640 = !DILocation(line: 809, column: 2, scope: !2636)
!2641 = !DILocation(line: 809, column: 30, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !326, discriminator: 1)
!2643 = distinct !DILexicalBlock(scope: !2631, file: !326, line: 809, column: 13)
!2644 = !DILocation(line: 809, column: 13, scope: !2642)
!2645 = !DILocation(line: 811, column: 35, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !326, line: 809, column: 37)
!2647 = !DILocation(line: 811, column: 46, scope: !2646)
!2648 = !DILocation(line: 811, column: 23, scope: !2646)
!2649 = !DILocation(line: 811, column: 21, scope: !2646)
!2650 = !DILocation(line: 812, column: 38, scope: !2646)
!2651 = !DILocation(line: 812, column: 11, scope: !2646)
!2652 = !DILocation(line: 812, column: 4, scope: !2646)
!2653 = !DILocation(line: 812, column: 9, scope: !2646)
!2654 = !DILocation(line: 813, column: 10, scope: !2646)
!2655 = !DILocation(line: 813, column: 3, scope: !2646)
!2656 = !DILocation(line: 814, column: 2, scope: !2646)
!2657 = !DILocation(line: 816, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2569, file: !326, line: 816, column: 6)
!2659 = !DILocation(line: 816, column: 6, scope: !2658)
!2660 = !DILocation(line: 816, column: 12, scope: !2658)
!2661 = !DILocation(line: 816, column: 6, scope: !2569)
!2662 = !DILocation(line: 816, column: 20, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2658, file: !326, discriminator: 1)
!2664 = !DILocation(line: 817, column: 1, scope: !2569)
!2665 = distinct !DISubprogram(name: "completion_deinit", scope: !326, file: !326, line: 917, type: !1179, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2666 = !DILocation(line: 919, column: 9, scope: !2665)
!2667 = !DILocation(line: 921, column: 2, scope: !2665)
!2668 = !DILocation(line: 923, column: 2, scope: !2665)
!2669 = !DILocation(line: 925, column: 2, scope: !2665)
!2670 = !DILocation(line: 926, column: 2, scope: !2665)
!2671 = !DILocation(line: 927, column: 2, scope: !2665)
!2672 = !DILocation(line: 928, column: 2, scope: !2665)
!2673 = !DILocation(line: 929, column: 2, scope: !2665)
!2674 = !DILocation(line: 930, column: 2, scope: !2665)
!2675 = !DILocation(line: 931, column: 2, scope: !2665)
!2676 = !DILocation(line: 932, column: 2, scope: !2665)
!2677 = !DILocation(line: 933, column: 2, scope: !2665)
!2678 = !DILocation(line: 934, column: 2, scope: !2665)
!2679 = !DILocation(line: 935, column: 2, scope: !2665)
!2680 = !DILocation(line: 936, column: 1, scope: !2665)
!2681 = distinct !DISubprogram(name: "completion_get_commands", scope: !326, file: !326, line: 459, type: !2682, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!401, !301, !300}
!2684 = !DILocalVariable(name: "cmd", arg: 1, scope: !2681, file: !326, line: 459, type: !301)
!2685 = !DILocation(line: 459, column: 51, scope: !2681)
!2686 = !DILocalVariable(name: "cmdchar", arg: 2, scope: !2681, file: !326, line: 459, type: !300)
!2687 = !DILocation(line: 459, column: 61, scope: !2681)
!2688 = !DILocalVariable(name: "complist", scope: !2681, file: !326, line: 461, type: !401)
!2689 = !DILocation(line: 461, column: 9, scope: !2681)
!2690 = !DILocalVariable(name: "tmp", scope: !2681, file: !326, line: 462, type: !340)
!2691 = !DILocation(line: 462, column: 10, scope: !2681)
!2692 = !DILocalVariable(name: "word", scope: !2681, file: !326, line: 463, type: !311)
!2693 = !DILocation(line: 463, column: 8, scope: !2681)
!2694 = !DILocalVariable(name: "len", scope: !2681, file: !326, line: 464, type: !303)
!2695 = !DILocation(line: 464, column: 6, scope: !2681)
!2696 = !DILocation(line: 466, column: 2, scope: !2681)
!2697 = distinct !{!2697, !2696}
!2698 = !DILocation(line: 466, column: 10, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2700, file: !326, discriminator: 1)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !326, line: 466, column: 10)
!2701 = distinct !DILexicalBlock(scope: !2681, file: !326, line: 466, column: 4)
!2702 = !DILocation(line: 466, column: 14, scope: !2699)
!2703 = !DILocation(line: 466, column: 5, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2705, file: !326, discriminator: 2)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !326, line: 466, column: 3)
!2706 = !DILocation(line: 466, column: 14, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2708, file: !326, discriminator: 3)
!2708 = distinct !DILexicalBlock(scope: !2700, file: !326, line: 466, column: 12)
!2709 = !DILocation(line: 466, column: 98, scope: !2707)
!2710 = !DILocation(line: 466, column: 7, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2701, file: !326, discriminator: 4)
!2712 = !DILocation(line: 468, column: 15, scope: !2681)
!2713 = !DILocation(line: 468, column: 8, scope: !2681)
!2714 = !DILocation(line: 468, column: 6, scope: !2681)
!2715 = !DILocation(line: 469, column: 11, scope: !2681)
!2716 = !DILocation(line: 470, column: 13, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2681, file: !326, line: 470, column: 2)
!2718 = !DILocation(line: 470, column: 11, scope: !2717)
!2719 = !DILocation(line: 470, column: 7, scope: !2717)
!2720 = !DILocation(line: 470, column: 23, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !326, discriminator: 1)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !326, line: 470, column: 2)
!2723 = !DILocation(line: 470, column: 27, scope: !2721)
!2724 = !DILocation(line: 470, column: 2, scope: !2721)
!2725 = !DILocalVariable(name: "rec", scope: !2726, file: !326, line: 471, type: !2727)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !326, line: 470, column: 52)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64, align: 64)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_REC", file: !2729, line: 23, baseType: !2730)
!2729 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 18, size: 256, align: 64, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !2730, file: !2729, line: 19, baseType: !340, size: 64, align: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !2730, file: !2729, line: 20, baseType: !311, size: 64, align: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2730, file: !2729, line: 21, baseType: !311, size: 64, align: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2730, file: !2729, line: 22, baseType: !548, size: 64, align: 64, offset: 192)
!2736 = !DILocation(line: 471, column: 16, scope: !2726)
!2737 = !DILocation(line: 471, column: 22, scope: !2726)
!2738 = !DILocation(line: 471, column: 27, scope: !2726)
!2739 = !DILocation(line: 473, column: 14, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2726, file: !326, line: 473, column: 7)
!2741 = !DILocation(line: 473, column: 19, scope: !2740)
!2742 = !DILocation(line: 473, column: 7, scope: !2740)
!2743 = !DILocation(line: 473, column: 29, scope: !2740)
!2744 = !DILocation(line: 473, column: 7, scope: !2726)
!2745 = !DILocation(line: 474, column: 4, scope: !2740)
!2746 = !DILocation(line: 476, column: 27, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2726, file: !326, line: 476, column: 7)
!2748 = !DILocation(line: 476, column: 32, scope: !2747)
!2749 = !DILocation(line: 476, column: 37, scope: !2747)
!2750 = !DILocation(line: 476, column: 42, scope: !2747)
!2751 = !DILocation(line: 476, column: 7, scope: !2747)
!2752 = !DILocation(line: 476, column: 47, scope: !2747)
!2753 = !DILocation(line: 476, column: 7, scope: !2726)
!2754 = !DILocation(line: 477, column: 11, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2747, file: !326, line: 476, column: 53)
!2756 = !DILocation(line: 477, column: 19, scope: !2755)
!2757 = !DILocation(line: 477, column: 38, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2755, file: !326, discriminator: 1)
!2759 = !DILocation(line: 477, column: 43, scope: !2758)
!2760 = !DILocation(line: 477, column: 29, scope: !2758)
!2761 = !DILocation(line: 477, column: 11, scope: !2758)
!2762 = !DILocation(line: 478, column: 29, scope: !2755)
!2763 = !DILocation(line: 478, column: 38, scope: !2755)
!2764 = !DILocation(line: 478, column: 43, scope: !2755)
!2765 = !DILocation(line: 478, column: 5, scope: !2755)
!2766 = !DILocation(line: 477, column: 11, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2755, file: !326, discriminator: 2)
!2768 = !DILocation(line: 477, column: 11, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2755, file: !326, discriminator: 3)
!2770 = !DILocation(line: 477, column: 9, scope: !2769)
!2771 = !DILocation(line: 479, column: 32, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2755, file: !326, line: 479, column: 8)
!2773 = !DILocation(line: 479, column: 42, scope: !2772)
!2774 = !DILocation(line: 479, column: 8, scope: !2772)
!2775 = !DILocation(line: 479, column: 48, scope: !2772)
!2776 = !DILocation(line: 479, column: 8, scope: !2755)
!2777 = !DILocation(line: 480, column: 37, scope: !2772)
!2778 = !DILocation(line: 480, column: 47, scope: !2772)
!2779 = !DILocation(line: 480, column: 16, scope: !2772)
!2780 = !DILocation(line: 480, column: 14, scope: !2772)
!2781 = !DILocation(line: 480, column: 5, scope: !2772)
!2782 = !DILocation(line: 482, column: 12, scope: !2772)
!2783 = !DILocation(line: 482, column: 5, scope: !2772)
!2784 = !DILocation(line: 483, column: 3, scope: !2755)
!2785 = !DILocation(line: 484, column: 2, scope: !2726)
!2786 = !DILocation(line: 470, column: 41, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2722, file: !326, discriminator: 2)
!2788 = !DILocation(line: 470, column: 46, scope: !2787)
!2789 = !DILocation(line: 470, column: 39, scope: !2787)
!2790 = !DILocation(line: 470, column: 2, scope: !2787)
!2791 = distinct !{!2791, !2792}
!2792 = !DILocation(line: 470, column: 2, scope: !2681)
!2793 = !DILocation(line: 485, column: 9, scope: !2681)
!2794 = !DILocation(line: 485, column: 2, scope: !2681)
!2795 = !DILocation(line: 486, column: 1, scope: !2681)
!2796 = distinct !DISubprogram(name: "completion_get_aliases", scope: !326, file: !326, line: 422, type: !2682, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2797 = !DILocalVariable(name: "alias", arg: 1, scope: !2796, file: !326, line: 422, type: !301)
!2798 = !DILocation(line: 422, column: 50, scope: !2796)
!2799 = !DILocalVariable(name: "cmdchar", arg: 2, scope: !2796, file: !326, line: 422, type: !300)
!2800 = !DILocation(line: 422, column: 62, scope: !2796)
!2801 = !DILocalVariable(name: "node", scope: !2796, file: !326, line: 424, type: !690)
!2802 = !DILocation(line: 424, column: 15, scope: !2796)
!2803 = !DILocalVariable(name: "complist", scope: !2796, file: !326, line: 425, type: !401)
!2804 = !DILocation(line: 425, column: 9, scope: !2796)
!2805 = !DILocalVariable(name: "tmp", scope: !2796, file: !326, line: 426, type: !340)
!2806 = !DILocation(line: 426, column: 10, scope: !2796)
!2807 = !DILocalVariable(name: "word", scope: !2796, file: !326, line: 427, type: !311)
!2808 = !DILocation(line: 427, column: 8, scope: !2796)
!2809 = !DILocalVariable(name: "len", scope: !2796, file: !326, line: 428, type: !303)
!2810 = !DILocation(line: 428, column: 6, scope: !2796)
!2811 = !DILocation(line: 430, column: 2, scope: !2796)
!2812 = distinct !{!2812, !2811}
!2813 = !DILocation(line: 430, column: 10, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2815, file: !326, discriminator: 1)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !326, line: 430, column: 10)
!2816 = distinct !DILexicalBlock(scope: !2796, file: !326, line: 430, column: 4)
!2817 = !DILocation(line: 430, column: 16, scope: !2814)
!2818 = !DILocation(line: 430, column: 5, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2820, file: !326, discriminator: 2)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !326, line: 430, column: 3)
!2821 = !DILocation(line: 430, column: 14, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2823, file: !326, discriminator: 3)
!2823 = distinct !DILexicalBlock(scope: !2815, file: !326, line: 430, column: 12)
!2824 = !DILocation(line: 430, column: 100, scope: !2822)
!2825 = !DILocation(line: 430, column: 7, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2816, file: !326, discriminator: 4)
!2827 = !DILocation(line: 433, column: 30, scope: !2796)
!2828 = !DILocation(line: 433, column: 9, scope: !2796)
!2829 = !DILocation(line: 433, column: 7, scope: !2796)
!2830 = !DILocation(line: 434, column: 8, scope: !2796)
!2831 = !DILocation(line: 434, column: 13, scope: !2796)
!2832 = !DILocation(line: 434, column: 8, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2796, file: !326, discriminator: 1)
!2834 = !DILocation(line: 434, column: 47, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !2796, file: !326, discriminator: 2)
!2836 = !DILocation(line: 434, column: 53, scope: !2835)
!2837 = !DILocation(line: 434, column: 29, scope: !2835)
!2838 = !DILocation(line: 434, column: 8, scope: !2835)
!2839 = !DILocation(line: 434, column: 8, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2796, file: !326, discriminator: 3)
!2841 = !DILocation(line: 434, column: 6, scope: !2840)
!2842 = !DILocation(line: 436, column: 15, scope: !2796)
!2843 = !DILocation(line: 436, column: 8, scope: !2796)
!2844 = !DILocation(line: 436, column: 6, scope: !2796)
!2845 = !DILocation(line: 437, column: 11, scope: !2796)
!2846 = !DILocation(line: 438, column: 2, scope: !2796)
!2847 = !DILocation(line: 438, column: 9, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2849, file: !326, discriminator: 1)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !326, line: 438, column: 2)
!2850 = distinct !DILexicalBlock(scope: !2796, file: !326, line: 438, column: 2)
!2851 = !DILocation(line: 438, column: 13, scope: !2848)
!2852 = !DILocation(line: 438, column: 2, scope: !2848)
!2853 = !DILocalVariable(name: "node", scope: !2854, file: !326, line: 439, type: !690)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !326, line: 438, column: 50)
!2855 = !DILocation(line: 439, column: 16, scope: !2854)
!2856 = !DILocation(line: 439, column: 23, scope: !2854)
!2857 = !DILocation(line: 439, column: 28, scope: !2854)
!2858 = !DILocation(line: 441, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !326, line: 441, column: 7)
!2860 = !DILocation(line: 441, column: 13, scope: !2859)
!2861 = !DILocation(line: 441, column: 18, scope: !2859)
!2862 = !DILocation(line: 441, column: 7, scope: !2854)
!2863 = !DILocation(line: 442, column: 4, scope: !2859)
!2864 = !DILocation(line: 444, column: 27, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2854, file: !326, line: 444, column: 7)
!2866 = !DILocation(line: 444, column: 33, scope: !2865)
!2867 = !DILocation(line: 444, column: 38, scope: !2865)
!2868 = !DILocation(line: 444, column: 45, scope: !2865)
!2869 = !DILocation(line: 444, column: 7, scope: !2865)
!2870 = !DILocation(line: 444, column: 50, scope: !2865)
!2871 = !DILocation(line: 444, column: 7, scope: !2854)
!2872 = !DILocation(line: 445, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !326, line: 444, column: 56)
!2874 = !DILocation(line: 445, column: 19, scope: !2873)
!2875 = !DILocation(line: 445, column: 38, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2873, file: !326, discriminator: 1)
!2877 = !DILocation(line: 445, column: 44, scope: !2876)
!2878 = !DILocation(line: 445, column: 29, scope: !2876)
!2879 = !DILocation(line: 445, column: 11, scope: !2876)
!2880 = !DILocation(line: 446, column: 29, scope: !2873)
!2881 = !DILocation(line: 446, column: 38, scope: !2873)
!2882 = !DILocation(line: 446, column: 44, scope: !2873)
!2883 = !DILocation(line: 446, column: 5, scope: !2873)
!2884 = !DILocation(line: 445, column: 11, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2873, file: !326, discriminator: 2)
!2886 = !DILocation(line: 445, column: 11, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2873, file: !326, discriminator: 3)
!2888 = !DILocation(line: 445, column: 9, scope: !2887)
!2889 = !DILocation(line: 450, column: 32, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2873, file: !326, line: 450, column: 8)
!2891 = !DILocation(line: 450, column: 42, scope: !2890)
!2892 = !DILocation(line: 450, column: 8, scope: !2890)
!2893 = !DILocation(line: 450, column: 48, scope: !2890)
!2894 = !DILocation(line: 450, column: 8, scope: !2873)
!2895 = !DILocation(line: 451, column: 37, scope: !2890)
!2896 = !DILocation(line: 451, column: 47, scope: !2890)
!2897 = !DILocation(line: 451, column: 16, scope: !2890)
!2898 = !DILocation(line: 451, column: 14, scope: !2890)
!2899 = !DILocation(line: 451, column: 5, scope: !2890)
!2900 = !DILocation(line: 453, column: 12, scope: !2890)
!2901 = !DILocation(line: 453, column: 5, scope: !2890)
!2902 = !DILocation(line: 454, column: 3, scope: !2873)
!2903 = !DILocation(line: 455, column: 2, scope: !2854)
!2904 = !DILocation(line: 438, column: 44, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2849, file: !326, discriminator: 2)
!2906 = !DILocation(line: 438, column: 27, scope: !2905)
!2907 = !DILocation(line: 438, column: 25, scope: !2905)
!2908 = !DILocation(line: 438, column: 2, scope: !2905)
!2909 = distinct !{!2909, !2846}
!2910 = !DILocation(line: 456, column: 9, scope: !2796)
!2911 = !DILocation(line: 456, column: 2, scope: !2796)
!2912 = !DILocation(line: 457, column: 1, scope: !2796)
!2913 = distinct !DISubprogram(name: "expand_aliases", scope: !326, file: !326, line: 591, type: !2914, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!311, !301}
!2916 = !DILocalVariable(name: "line", arg: 1, scope: !2913, file: !326, line: 591, type: !301)
!2917 = !DILocation(line: 591, column: 41, scope: !2913)
!2918 = !DILocalVariable(name: "cmd", scope: !2913, file: !326, line: 593, type: !311)
!2919 = !DILocation(line: 593, column: 15, scope: !2913)
!2920 = !DILocalVariable(name: "args", scope: !2913, file: !326, line: 593, type: !311)
!2921 = !DILocation(line: 593, column: 21, scope: !2913)
!2922 = !DILocalVariable(name: "ret", scope: !2913, file: !326, line: 593, type: !311)
!2923 = !DILocation(line: 593, column: 28, scope: !2913)
!2924 = !DILocation(line: 595, column: 2, scope: !2913)
!2925 = distinct !{!2925, !2924}
!2926 = !DILocation(line: 595, column: 10, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !326, discriminator: 1)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !326, line: 595, column: 10)
!2929 = distinct !DILexicalBlock(scope: !2913, file: !326, line: 595, column: 4)
!2930 = !DILocation(line: 595, column: 15, scope: !2927)
!2931 = !DILocation(line: 595, column: 5, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !2933, file: !326, discriminator: 2)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !326, line: 595, column: 3)
!2934 = !DILocation(line: 595, column: 14, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2936, file: !326, discriminator: 3)
!2936 = distinct !DILexicalBlock(scope: !2928, file: !326, line: 595, column: 12)
!2937 = !DILocation(line: 595, column: 99, scope: !2935)
!2938 = !DILocation(line: 595, column: 7, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2929, file: !326, discriminator: 4)
!2940 = !DILocation(line: 597, column: 25, scope: !2913)
!2941 = !DILocation(line: 597, column: 8, scope: !2913)
!2942 = !DILocation(line: 597, column: 6, scope: !2913)
!2943 = !DILocation(line: 598, column: 6, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2913, file: !326, line: 598, column: 6)
!2945 = !DILocation(line: 598, column: 10, scope: !2944)
!2946 = !DILocation(line: 598, column: 6, scope: !2913)
!2947 = !DILocation(line: 598, column: 34, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2944, file: !326, discriminator: 1)
!2949 = !DILocation(line: 598, column: 25, scope: !2948)
!2950 = !DILocation(line: 598, column: 18, scope: !2948)
!2951 = !DILocation(line: 599, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2913, file: !326, line: 599, column: 6)
!2953 = !DILocation(line: 599, column: 6, scope: !2952)
!2954 = !DILocation(line: 599, column: 12, scope: !2952)
!2955 = !DILocation(line: 599, column: 6, scope: !2913)
!2956 = !DILocation(line: 599, column: 28, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2952, file: !326, discriminator: 1)
!2958 = !DILocation(line: 599, column: 21, scope: !2957)
!2959 = !DILocation(line: 601, column: 20, scope: !2913)
!2960 = !DILocation(line: 601, column: 30, scope: !2913)
!2961 = !DILocation(line: 601, column: 8, scope: !2913)
!2962 = !DILocation(line: 601, column: 6, scope: !2913)
!2963 = !DILocation(line: 602, column: 9, scope: !2913)
!2964 = !DILocation(line: 602, column: 2, scope: !2913)
!2965 = !DILocation(line: 603, column: 9, scope: !2913)
!2966 = !DILocation(line: 603, column: 2, scope: !2913)
!2967 = !DILocation(line: 604, column: 1, scope: !2913)
!2968 = distinct !DISubprogram(name: "line_get_command", scope: !326, file: !326, line: 545, type: !2969, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!311, !301, !548, !303}
!2971 = !DILocalVariable(name: "line", arg: 1, scope: !2968, file: !326, line: 545, type: !301)
!2972 = !DILocation(line: 545, column: 43, scope: !2968)
!2973 = !DILocalVariable(name: "args", arg: 2, scope: !2968, file: !326, line: 545, type: !548)
!2974 = !DILocation(line: 545, column: 56, scope: !2968)
!2975 = !DILocalVariable(name: "aliases", arg: 3, scope: !2968, file: !326, line: 545, type: !303)
!2976 = !DILocation(line: 545, column: 66, scope: !2968)
!2977 = !DILocalVariable(name: "ptr", scope: !2968, file: !326, line: 547, type: !301)
!2978 = !DILocation(line: 547, column: 14, scope: !2968)
!2979 = !DILocalVariable(name: "cmdargs", scope: !2968, file: !326, line: 547, type: !301)
!2980 = !DILocation(line: 547, column: 20, scope: !2968)
!2981 = !DILocalVariable(name: "cmd", scope: !2968, file: !326, line: 548, type: !311)
!2982 = !DILocation(line: 548, column: 8, scope: !2968)
!2983 = !DILocalVariable(name: "checkcmd", scope: !2968, file: !326, line: 548, type: !311)
!2984 = !DILocation(line: 548, column: 14, scope: !2968)
!2985 = !DILocation(line: 550, column: 2, scope: !2968)
!2986 = distinct !{!2986, !2985}
!2987 = !DILocation(line: 550, column: 10, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2989, file: !326, discriminator: 1)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !326, line: 550, column: 10)
!2990 = distinct !DILexicalBlock(scope: !2968, file: !326, line: 550, column: 4)
!2991 = !DILocation(line: 550, column: 15, scope: !2988)
!2992 = !DILocation(line: 550, column: 5, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !2994, file: !326, discriminator: 2)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !326, line: 550, column: 3)
!2995 = !DILocation(line: 550, column: 14, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2997, file: !326, discriminator: 3)
!2997 = distinct !DILexicalBlock(scope: !2989, file: !326, line: 550, column: 12)
!2998 = !DILocation(line: 550, column: 99, scope: !2996)
!2999 = !DILocation(line: 550, column: 7, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2990, file: !326, discriminator: 4)
!3001 = !DILocation(line: 551, column: 2, scope: !2968)
!3002 = distinct !{!3002, !3001}
!3003 = !DILocation(line: 551, column: 10, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3005, file: !326, discriminator: 1)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !326, line: 551, column: 10)
!3006 = distinct !DILexicalBlock(scope: !2968, file: !326, line: 551, column: 4)
!3007 = !DILocation(line: 551, column: 15, scope: !3004)
!3008 = !DILocation(line: 551, column: 5, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !3010, file: !326, discriminator: 2)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !326, line: 551, column: 3)
!3011 = !DILocation(line: 551, column: 14, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3013, file: !326, discriminator: 3)
!3013 = distinct !DILexicalBlock(scope: !3005, file: !326, line: 551, column: 12)
!3014 = !DILocation(line: 551, column: 99, scope: !3012)
!3015 = !DILocation(line: 551, column: 7, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3006, file: !326, discriminator: 4)
!3017 = !DILocation(line: 553, column: 17, scope: !2968)
!3018 = !DILocation(line: 553, column: 6, scope: !2968)
!3019 = !DILocation(line: 553, column: 25, scope: !2968)
!3020 = !DILocation(line: 553, column: 30, scope: !2968)
!3021 = !DILocation(line: 554, column: 10, scope: !2968)
!3022 = !DILocation(line: 554, column: 23, scope: !2968)
!3023 = !DILocation(line: 554, column: 21, scope: !2968)
!3024 = !DILocation(line: 556, column: 2, scope: !2968)
!3025 = distinct !{!3025, !3024}
!3026 = !DILocation(line: 557, column: 16, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2968, file: !326, line: 556, column: 5)
!3028 = !DILocation(line: 557, column: 9, scope: !3027)
!3029 = !DILocation(line: 557, column: 7, scope: !3027)
!3030 = !DILocation(line: 558, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !326, line: 558, column: 7)
!3032 = !DILocation(line: 558, column: 11, scope: !3031)
!3033 = !DILocation(line: 558, column: 7, scope: !3027)
!3034 = !DILocation(line: 559, column: 24, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !326, line: 558, column: 19)
!3036 = !DILocation(line: 559, column: 15, scope: !3035)
!3037 = !DILocation(line: 559, column: 13, scope: !3035)
!3038 = !DILocation(line: 560, column: 12, scope: !3035)
!3039 = !DILocation(line: 561, column: 3, scope: !3035)
!3040 = !DILocation(line: 562, column: 25, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3031, file: !326, line: 561, column: 10)
!3042 = !DILocation(line: 562, column: 38, scope: !3041)
!3043 = !DILocation(line: 562, column: 42, scope: !3041)
!3044 = !DILocation(line: 562, column: 41, scope: !3041)
!3045 = !DILocation(line: 562, column: 31, scope: !3041)
!3046 = !DILocation(line: 562, column: 15, scope: !3041)
!3047 = !DILocation(line: 562, column: 13, scope: !3041)
!3048 = !DILocation(line: 564, column: 4, scope: !3041)
!3049 = !DILocation(line: 564, column: 12, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3041, file: !326, discriminator: 1)
!3051 = !DILocation(line: 564, column: 11, scope: !3050)
!3052 = !DILocation(line: 564, column: 16, scope: !3050)
!3053 = !DILocation(line: 564, column: 4, scope: !3050)
!3054 = !DILocation(line: 564, column: 27, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3041, file: !326, discriminator: 2)
!3056 = !DILocation(line: 564, column: 4, scope: !3055)
!3057 = distinct !{!3057, !3048}
!3058 = !DILocation(line: 565, column: 14, scope: !3041)
!3059 = !DILocation(line: 565, column: 12, scope: !3041)
!3060 = !DILocation(line: 568, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3027, file: !326, line: 568, column: 7)
!3062 = !DILocation(line: 568, column: 7, scope: !3027)
!3063 = !DILocation(line: 568, column: 33, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3061, file: !326, discriminator: 1)
!3065 = !DILocation(line: 568, column: 56, scope: !3064)
!3066 = !DILocation(line: 568, column: 18, scope: !3064)
!3067 = !DILocation(line: 568, column: 7, scope: !3064)
!3068 = !DILocation(line: 569, column: 21, scope: !3061)
!3069 = !DILocation(line: 569, column: 8, scope: !3061)
!3070 = !DILocation(line: 568, column: 7, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3027, file: !326, discriminator: 2)
!3072 = !DILocation(line: 571, column: 11, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3061, file: !326, line: 569, column: 32)
!3074 = !DILocation(line: 571, column: 4, scope: !3073)
!3075 = !DILocation(line: 572, column: 4, scope: !3073)
!3076 = !DILocation(line: 576, column: 10, scope: !3027)
!3077 = !DILocation(line: 576, column: 3, scope: !3027)
!3078 = !DILocation(line: 577, column: 8, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3027, file: !326, line: 577, column: 7)
!3080 = !DILocation(line: 577, column: 7, scope: !3027)
!3081 = !DILocation(line: 578, column: 10, scope: !3079)
!3082 = !DILocation(line: 578, column: 8, scope: !3079)
!3083 = !DILocation(line: 578, column: 4, scope: !3079)
!3084 = !DILocation(line: 580, column: 55, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3079, file: !326, line: 579, column: 8)
!3086 = !DILocation(line: 580, column: 78, scope: !3085)
!3087 = !DILocation(line: 580, column: 40, scope: !3085)
!3088 = !DILocation(line: 580, column: 31, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3085, file: !326, discriminator: 1)
!3090 = !DILocation(line: 580, column: 29, scope: !3085)
!3091 = !DILocation(line: 581, column: 11, scope: !3085)
!3092 = !DILocation(line: 581, column: 4, scope: !3085)
!3093 = !DILocation(line: 583, column: 20, scope: !3027)
!3094 = !DILocation(line: 583, column: 4, scope: !3027)
!3095 = !DILocation(line: 583, column: 9, scope: !3027)
!3096 = !DILocation(line: 584, column: 2, scope: !3027)
!3097 = !DILocation(line: 584, column: 11, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !2968, file: !326, discriminator: 1)
!3099 = !DILocation(line: 584, column: 15, scope: !3098)
!3100 = !DILocation(line: 584, column: 2, scope: !3098)
!3101 = !DILocation(line: 586, column: 13, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2968, file: !326, line: 586, column: 13)
!3103 = !DILocation(line: 586, column: 17, scope: !3102)
!3104 = !DILocation(line: 586, column: 13, scope: !2968)
!3105 = !DILocation(line: 587, column: 17, scope: !3102)
!3106 = !DILocation(line: 587, column: 3, scope: !3102)
!3107 = !DILocation(line: 588, column: 9, scope: !2968)
!3108 = !DILocation(line: 588, column: 2, scope: !2968)
!3109 = !DILocation(line: 589, column: 1, scope: !2968)
!3110 = distinct !DISubprogram(name: "completion_get_options", scope: !326, file: !326, line: 519, type: !1205, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!3111 = !DILocalVariable(name: "cmd", arg: 1, scope: !3110, file: !326, line: 519, type: !301)
!3112 = !DILocation(line: 519, column: 50, scope: !3110)
!3113 = !DILocalVariable(name: "option", arg: 2, scope: !3110, file: !326, line: 519, type: !301)
!3114 = !DILocation(line: 519, column: 67, scope: !3110)
!3115 = !DILocalVariable(name: "rec", scope: !3110, file: !326, line: 521, type: !2727)
!3116 = !DILocation(line: 521, column: 15, scope: !3110)
!3117 = !DILocalVariable(name: "list", scope: !3110, file: !326, line: 522, type: !401)
!3118 = !DILocation(line: 522, column: 9, scope: !3110)
!3119 = !DILocalVariable(name: "tmp", scope: !3110, file: !326, line: 523, type: !548)
!3120 = !DILocation(line: 523, column: 9, scope: !3110)
!3121 = !DILocalVariable(name: "len", scope: !3110, file: !326, line: 524, type: !303)
!3122 = !DILocation(line: 524, column: 6, scope: !3110)
!3123 = !DILocation(line: 526, column: 2, scope: !3110)
!3124 = distinct !{!3124, !3123}
!3125 = !DILocation(line: 526, column: 10, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3127, file: !326, discriminator: 1)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !326, line: 526, column: 10)
!3128 = distinct !DILexicalBlock(scope: !3110, file: !326, line: 526, column: 4)
!3129 = !DILocation(line: 526, column: 14, scope: !3126)
!3130 = !DILocation(line: 526, column: 5, scope: !3131)
!3131 = !DILexicalBlockFile(scope: !3132, file: !326, discriminator: 2)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !326, line: 526, column: 3)
!3133 = !DILocation(line: 526, column: 14, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3135, file: !326, discriminator: 3)
!3135 = distinct !DILexicalBlock(scope: !3127, file: !326, line: 526, column: 12)
!3136 = !DILocation(line: 526, column: 98, scope: !3134)
!3137 = !DILocation(line: 526, column: 7, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3128, file: !326, discriminator: 4)
!3139 = !DILocation(line: 527, column: 2, scope: !3110)
!3140 = distinct !{!3140, !3139}
!3141 = !DILocation(line: 527, column: 10, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3143, file: !326, discriminator: 1)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !326, line: 527, column: 10)
!3144 = distinct !DILexicalBlock(scope: !3110, file: !326, line: 527, column: 4)
!3145 = !DILocation(line: 527, column: 17, scope: !3142)
!3146 = !DILocation(line: 527, column: 5, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3148, file: !326, discriminator: 2)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !326, line: 527, column: 3)
!3149 = !DILocation(line: 527, column: 14, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3151, file: !326, discriminator: 3)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !326, line: 527, column: 12)
!3152 = !DILocation(line: 527, column: 101, scope: !3150)
!3153 = !DILocation(line: 527, column: 7, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3144, file: !326, discriminator: 4)
!3155 = !DILocation(line: 529, column: 21, scope: !3110)
!3156 = !DILocation(line: 529, column: 8, scope: !3110)
!3157 = !DILocation(line: 529, column: 6, scope: !3110)
!3158 = !DILocation(line: 530, column: 6, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3110, file: !326, line: 530, column: 6)
!3160 = !DILocation(line: 530, column: 10, scope: !3159)
!3161 = !DILocation(line: 530, column: 17, scope: !3159)
!3162 = !DILocation(line: 530, column: 20, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3159, file: !326, discriminator: 1)
!3164 = !DILocation(line: 530, column: 25, scope: !3163)
!3165 = !DILocation(line: 530, column: 33, scope: !3163)
!3166 = !DILocation(line: 530, column: 6, scope: !3163)
!3167 = !DILocation(line: 530, column: 42, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3159, file: !326, discriminator: 2)
!3169 = !DILocation(line: 532, column: 7, scope: !3110)
!3170 = !DILocation(line: 533, column: 15, scope: !3110)
!3171 = !DILocation(line: 533, column: 8, scope: !3110)
!3172 = !DILocation(line: 533, column: 6, scope: !3110)
!3173 = !DILocation(line: 534, column: 13, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3110, file: !326, line: 534, column: 2)
!3175 = !DILocation(line: 534, column: 18, scope: !3174)
!3176 = !DILocation(line: 534, column: 11, scope: !3174)
!3177 = !DILocation(line: 534, column: 7, scope: !3174)
!3178 = !DILocation(line: 534, column: 28, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3180, file: !326, discriminator: 1)
!3180 = distinct !DILexicalBlock(scope: !3174, file: !326, line: 534, column: 2)
!3181 = !DILocation(line: 534, column: 27, scope: !3179)
!3182 = !DILocation(line: 534, column: 32, scope: !3179)
!3183 = !DILocation(line: 534, column: 2, scope: !3179)
!3184 = !DILocalVariable(name: "optname", scope: !3185, file: !326, line: 535, type: !301)
!3185 = distinct !DILexicalBlock(scope: !3180, file: !326, line: 534, column: 47)
!3186 = !DILocation(line: 535, column: 15, scope: !3185)
!3187 = !DILocation(line: 535, column: 26, scope: !3185)
!3188 = !DILocation(line: 535, column: 25, scope: !3185)
!3189 = !DILocation(line: 535, column: 36, scope: !3185)
!3190 = !DILocation(line: 535, column: 35, scope: !3185)
!3191 = !DILocation(line: 535, column: 34, scope: !3185)
!3192 = !DILocation(line: 535, column: 33, scope: !3185)
!3193 = !DILocation(line: 535, column: 41, scope: !3185)
!3194 = !DILocation(line: 535, column: 48, scope: !3185)
!3195 = !DILocation(line: 535, column: 54, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3185, file: !326, discriminator: 1)
!3197 = !DILocation(line: 535, column: 53, scope: !3196)
!3198 = !DILocation(line: 535, column: 52, scope: !3196)
!3199 = !DILocation(line: 535, column: 51, scope: !3196)
!3200 = !DILocation(line: 535, column: 59, scope: !3196)
!3201 = !DILocation(line: 535, column: 66, scope: !3196)
!3202 = !DILocation(line: 535, column: 72, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3185, file: !326, discriminator: 2)
!3204 = !DILocation(line: 535, column: 71, scope: !3203)
!3205 = !DILocation(line: 535, column: 70, scope: !3203)
!3206 = !DILocation(line: 535, column: 69, scope: !3203)
!3207 = !DILocation(line: 535, column: 77, scope: !3203)
!3208 = !DILocation(line: 535, column: 84, scope: !3203)
!3209 = !DILocation(line: 535, column: 90, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3185, file: !326, discriminator: 3)
!3211 = !DILocation(line: 535, column: 89, scope: !3210)
!3212 = !DILocation(line: 535, column: 88, scope: !3210)
!3213 = !DILocation(line: 535, column: 87, scope: !3210)
!3214 = !DILocation(line: 535, column: 95, scope: !3210)
!3215 = !DILocation(line: 535, column: 84, scope: !3210)
!3216 = !DILocation(line: 535, column: 84, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3185, file: !326, discriminator: 4)
!3218 = !DILocation(line: 535, column: 30, scope: !3217)
!3219 = !DILocation(line: 535, column: 15, scope: !3217)
!3220 = !DILocation(line: 537, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3185, file: !326, line: 537, column: 7)
!3222 = !DILocation(line: 537, column: 11, scope: !3221)
!3223 = !DILocation(line: 537, column: 16, scope: !3221)
!3224 = !DILocation(line: 537, column: 39, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3221, file: !326, discriminator: 1)
!3226 = !DILocation(line: 537, column: 48, scope: !3225)
!3227 = !DILocation(line: 537, column: 56, scope: !3225)
!3228 = !DILocation(line: 537, column: 19, scope: !3225)
!3229 = !DILocation(line: 537, column: 61, scope: !3225)
!3230 = !DILocation(line: 537, column: 7, scope: !3225)
!3231 = !DILocation(line: 538, column: 46, scope: !3221)
!3232 = !DILocation(line: 538, column: 69, scope: !3221)
!3233 = !DILocation(line: 538, column: 52, scope: !3221)
!3234 = !DILocation(line: 538, column: 32, scope: !3225)
!3235 = !DILocation(line: 538, column: 30, scope: !3221)
!3236 = !DILocation(line: 538, column: 25, scope: !3221)
!3237 = !DILocation(line: 539, column: 2, scope: !3185)
!3238 = !DILocation(line: 534, column: 43, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3180, file: !326, discriminator: 2)
!3240 = !DILocation(line: 534, column: 2, scope: !3239)
!3241 = distinct !{!3241, !3242}
!3242 = !DILocation(line: 534, column: 2, scope: !3110)
!3243 = !DILocation(line: 541, column: 9, scope: !3110)
!3244 = !DILocation(line: 541, column: 2, scope: !3110)
!3245 = !DILocation(line: 542, column: 1, scope: !3110)
!3246 = distinct !DISubprogram(name: "completion_get_subcommands", scope: !326, file: !326, line: 488, type: !3247, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!401, !301}
!3249 = !DILocalVariable(name: "cmd", arg: 1, scope: !3246, file: !326, line: 488, type: !301)
!3250 = !DILocation(line: 488, column: 54, scope: !3246)
!3251 = !DILocalVariable(name: "complist", scope: !3246, file: !326, line: 490, type: !401)
!3252 = !DILocation(line: 490, column: 9, scope: !3246)
!3253 = !DILocalVariable(name: "tmp", scope: !3246, file: !326, line: 491, type: !340)
!3254 = !DILocation(line: 491, column: 10, scope: !3246)
!3255 = !DILocalVariable(name: "spacepos", scope: !3246, file: !326, line: 492, type: !311)
!3256 = !DILocation(line: 492, column: 8, scope: !3246)
!3257 = !DILocalVariable(name: "len", scope: !3246, file: !326, line: 493, type: !303)
!3258 = !DILocation(line: 493, column: 6, scope: !3246)
!3259 = !DILocalVariable(name: "skip", scope: !3246, file: !326, line: 493, type: !303)
!3260 = !DILocation(line: 493, column: 11, scope: !3246)
!3261 = !DILocation(line: 495, column: 2, scope: !3246)
!3262 = distinct !{!3262, !3261}
!3263 = !DILocation(line: 495, column: 10, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3265, file: !326, discriminator: 1)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !326, line: 495, column: 10)
!3266 = distinct !DILexicalBlock(scope: !3246, file: !326, line: 495, column: 4)
!3267 = !DILocation(line: 495, column: 14, scope: !3264)
!3268 = !DILocation(line: 495, column: 5, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3270, file: !326, discriminator: 2)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !326, line: 495, column: 3)
!3271 = !DILocation(line: 495, column: 14, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !326, discriminator: 3)
!3273 = distinct !DILexicalBlock(scope: !3265, file: !326, line: 495, column: 12)
!3274 = !DILocation(line: 495, column: 98, scope: !3272)
!3275 = !DILocation(line: 495, column: 7, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3266, file: !326, discriminator: 4)
!3277 = !DILocation(line: 498, column: 21, scope: !3246)
!3278 = !DILocation(line: 498, column: 13, scope: !3246)
!3279 = !DILocation(line: 498, column: 11, scope: !3246)
!3280 = !DILocation(line: 499, column: 9, scope: !3246)
!3281 = !DILocation(line: 499, column: 18, scope: !3246)
!3282 = !DILocation(line: 499, column: 34, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3246, file: !326, discriminator: 1)
!3284 = !DILocation(line: 499, column: 27, scope: !3283)
!3285 = !DILocation(line: 499, column: 38, scope: !3283)
!3286 = !DILocation(line: 499, column: 9, scope: !3283)
!3287 = !DILocation(line: 500, column: 11, scope: !3246)
!3288 = !DILocation(line: 500, column: 20, scope: !3246)
!3289 = !DILocation(line: 500, column: 19, scope: !3246)
!3290 = !DILocation(line: 500, column: 4, scope: !3246)
!3291 = !DILocation(line: 500, column: 25, scope: !3246)
!3292 = !DILocation(line: 500, column: 3, scope: !3246)
!3293 = !DILocation(line: 499, column: 9, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3246, file: !326, discriminator: 2)
!3295 = !DILocation(line: 499, column: 9, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3246, file: !326, discriminator: 3)
!3297 = !DILocation(line: 499, column: 7, scope: !3296)
!3298 = !DILocation(line: 502, column: 15, scope: !3246)
!3299 = !DILocation(line: 502, column: 8, scope: !3246)
!3300 = !DILocation(line: 502, column: 6, scope: !3246)
!3301 = !DILocation(line: 503, column: 11, scope: !3246)
!3302 = !DILocation(line: 504, column: 13, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3246, file: !326, line: 504, column: 2)
!3304 = !DILocation(line: 504, column: 11, scope: !3303)
!3305 = !DILocation(line: 504, column: 7, scope: !3303)
!3306 = !DILocation(line: 504, column: 23, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3308, file: !326, discriminator: 1)
!3308 = distinct !DILexicalBlock(scope: !3303, file: !326, line: 504, column: 2)
!3309 = !DILocation(line: 504, column: 27, scope: !3307)
!3310 = !DILocation(line: 504, column: 2, scope: !3307)
!3311 = !DILocalVariable(name: "rec", scope: !3312, file: !326, line: 505, type: !2727)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !326, line: 504, column: 52)
!3313 = !DILocation(line: 505, column: 16, scope: !3312)
!3314 = !DILocation(line: 505, column: 22, scope: !3312)
!3315 = !DILocation(line: 505, column: 27, scope: !3312)
!3316 = !DILocation(line: 507, column: 19, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3312, file: !326, line: 507, column: 7)
!3318 = !DILocation(line: 507, column: 24, scope: !3317)
!3319 = !DILocation(line: 507, column: 12, scope: !3317)
!3320 = !DILocation(line: 507, column: 7, scope: !3317)
!3321 = !DILocation(line: 507, column: 31, scope: !3317)
!3322 = !DILocation(line: 507, column: 29, scope: !3317)
!3323 = !DILocation(line: 507, column: 7, scope: !3312)
!3324 = !DILocation(line: 508, column: 4, scope: !3317)
!3325 = !DILocation(line: 510, column: 14, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3312, file: !326, line: 510, column: 7)
!3327 = !DILocation(line: 510, column: 19, scope: !3326)
!3328 = !DILocation(line: 510, column: 23, scope: !3326)
!3329 = !DILocation(line: 510, column: 22, scope: !3326)
!3330 = !DILocation(line: 510, column: 7, scope: !3326)
!3331 = !DILocation(line: 510, column: 33, scope: !3326)
!3332 = !DILocation(line: 510, column: 7, scope: !3312)
!3333 = !DILocation(line: 511, column: 4, scope: !3326)
!3334 = !DILocation(line: 513, column: 27, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3312, file: !326, line: 513, column: 7)
!3336 = !DILocation(line: 513, column: 32, scope: !3335)
!3337 = !DILocation(line: 513, column: 37, scope: !3335)
!3338 = !DILocation(line: 513, column: 42, scope: !3335)
!3339 = !DILocation(line: 513, column: 7, scope: !3335)
!3340 = !DILocation(line: 513, column: 47, scope: !3335)
!3341 = !DILocation(line: 513, column: 7, scope: !3312)
!3342 = !DILocation(line: 514, column: 36, scope: !3335)
!3343 = !DILocation(line: 514, column: 55, scope: !3335)
!3344 = !DILocation(line: 514, column: 60, scope: !3335)
!3345 = !DILocation(line: 514, column: 64, scope: !3335)
!3346 = !DILocation(line: 514, column: 63, scope: !3335)
!3347 = !DILocation(line: 514, column: 46, scope: !3335)
!3348 = !DILocation(line: 514, column: 15, scope: !3349)
!3349 = !DILexicalBlockFile(scope: !3335, file: !326, discriminator: 1)
!3350 = !DILocation(line: 514, column: 13, scope: !3335)
!3351 = !DILocation(line: 514, column: 4, scope: !3335)
!3352 = !DILocation(line: 515, column: 2, scope: !3312)
!3353 = !DILocation(line: 504, column: 41, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3308, file: !326, discriminator: 2)
!3355 = !DILocation(line: 504, column: 46, scope: !3354)
!3356 = !DILocation(line: 504, column: 39, scope: !3354)
!3357 = !DILocation(line: 504, column: 2, scope: !3354)
!3358 = distinct !{!3358, !3359}
!3359 = !DILocation(line: 504, column: 2, scope: !3246)
!3360 = !DILocation(line: 516, column: 9, scope: !3246)
!3361 = !DILocation(line: 516, column: 2, scope: !3246)
!3362 = !DILocation(line: 517, column: 1, scope: !3246)
!3363 = distinct !DISubprogram(name: "completion_get_settings", scope: !326, file: !326, line: 400, type: !3364, isLocal: true, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !421)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!401, !301, !2325}
!3366 = !DILocalVariable(name: "key", arg: 1, scope: !3363, file: !326, line: 400, type: !301)
!3367 = !DILocation(line: 400, column: 51, scope: !3363)
!3368 = !DILocalVariable(name: "type", arg: 2, scope: !3363, file: !326, line: 400, type: !2325)
!3369 = !DILocation(line: 400, column: 68, scope: !3363)
!3370 = !DILocalVariable(name: "complist", scope: !3363, file: !326, line: 402, type: !401)
!3371 = !DILocation(line: 402, column: 9, scope: !3363)
!3372 = !DILocalVariable(name: "tmp", scope: !3363, file: !326, line: 403, type: !340)
!3373 = !DILocation(line: 403, column: 10, scope: !3363)
!3374 = !DILocalVariable(name: "sets", scope: !3363, file: !326, line: 403, type: !340)
!3375 = !DILocation(line: 403, column: 16, scope: !3363)
!3376 = !DILocalVariable(name: "len", scope: !3363, file: !326, line: 404, type: !303)
!3377 = !DILocation(line: 404, column: 6, scope: !3363)
!3378 = !DILocation(line: 406, column: 2, scope: !3363)
!3379 = distinct !{!3379, !3378}
!3380 = !DILocation(line: 406, column: 10, scope: !3381)
!3381 = !DILexicalBlockFile(scope: !3382, file: !326, discriminator: 1)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !326, line: 406, column: 10)
!3383 = distinct !DILexicalBlock(scope: !3363, file: !326, line: 406, column: 4)
!3384 = !DILocation(line: 406, column: 14, scope: !3381)
!3385 = !DILocation(line: 406, column: 5, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3387, file: !326, discriminator: 2)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !326, line: 406, column: 3)
!3388 = !DILocation(line: 406, column: 14, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3390, file: !326, discriminator: 3)
!3390 = distinct !DILexicalBlock(scope: !3382, file: !326, line: 406, column: 12)
!3391 = !DILocation(line: 406, column: 98, scope: !3389)
!3392 = !DILocation(line: 406, column: 7, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3383, file: !326, discriminator: 4)
!3394 = !DILocation(line: 408, column: 9, scope: !3363)
!3395 = !DILocation(line: 408, column: 7, scope: !3363)
!3396 = !DILocation(line: 410, column: 15, scope: !3363)
!3397 = !DILocation(line: 410, column: 8, scope: !3363)
!3398 = !DILocation(line: 410, column: 6, scope: !3363)
!3399 = !DILocation(line: 411, column: 11, scope: !3363)
!3400 = !DILocation(line: 412, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3363, file: !326, line: 412, column: 2)
!3402 = !DILocation(line: 412, column: 11, scope: !3401)
!3403 = !DILocation(line: 412, column: 7, scope: !3401)
!3404 = !DILocation(line: 412, column: 19, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3406, file: !326, discriminator: 1)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !326, line: 412, column: 2)
!3407 = !DILocation(line: 412, column: 23, scope: !3405)
!3408 = !DILocation(line: 412, column: 2, scope: !3405)
!3409 = !DILocalVariable(name: "rec", scope: !3410, file: !326, line: 413, type: !2316)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !326, line: 412, column: 48)
!3411 = !DILocation(line: 413, column: 17, scope: !3410)
!3412 = !DILocation(line: 413, column: 23, scope: !3410)
!3413 = !DILocation(line: 413, column: 28, scope: !3410)
!3414 = !DILocation(line: 415, column: 8, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3410, file: !326, line: 415, column: 7)
!3416 = !DILocation(line: 415, column: 13, scope: !3415)
!3417 = !DILocation(line: 415, column: 33, scope: !3415)
!3418 = !DILocation(line: 415, column: 36, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3415, file: !326, discriminator: 1)
!3420 = !DILocation(line: 415, column: 41, scope: !3419)
!3421 = !DILocation(line: 415, column: 49, scope: !3419)
!3422 = !DILocation(line: 415, column: 46, scope: !3419)
!3423 = !DILocation(line: 415, column: 55, scope: !3419)
!3424 = !DILocation(line: 415, column: 78, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3415, file: !326, discriminator: 2)
!3426 = !DILocation(line: 415, column: 83, scope: !3425)
!3427 = !DILocation(line: 415, column: 88, scope: !3425)
!3428 = !DILocation(line: 415, column: 93, scope: !3425)
!3429 = !DILocation(line: 415, column: 58, scope: !3425)
!3430 = !DILocation(line: 415, column: 98, scope: !3425)
!3431 = !DILocation(line: 415, column: 7, scope: !3425)
!3432 = !DILocation(line: 416, column: 36, scope: !3415)
!3433 = !DILocation(line: 416, column: 55, scope: !3415)
!3434 = !DILocation(line: 416, column: 60, scope: !3415)
!3435 = !DILocation(line: 416, column: 46, scope: !3415)
!3436 = !DILocation(line: 416, column: 15, scope: !3419)
!3437 = !DILocation(line: 416, column: 13, scope: !3415)
!3438 = !DILocation(line: 416, column: 4, scope: !3415)
!3439 = !DILocation(line: 417, column: 2, scope: !3410)
!3440 = !DILocation(line: 412, column: 37, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3406, file: !326, discriminator: 2)
!3442 = !DILocation(line: 412, column: 42, scope: !3441)
!3443 = !DILocation(line: 412, column: 35, scope: !3441)
!3444 = !DILocation(line: 412, column: 2, scope: !3441)
!3445 = distinct !{!3445, !3446}
!3446 = !DILocation(line: 412, column: 2, scope: !3363)
!3447 = !DILocation(line: 418, column: 15, scope: !3363)
!3448 = !DILocation(line: 418, column: 2, scope: !3363)
!3449 = !DILocation(line: 419, column: 9, scope: !3363)
!3450 = !DILocation(line: 419, column: 2, scope: !3363)
!3451 = !DILocation(line: 420, column: 1, scope: !3363)
