; ModuleID = './line242-fe-settings.o.i'
source_filename = "./line242-fe-settings.o.i"
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
%struct.SETTINGS_REC = type { i32, i8*, i8*, i8*, i32, %struct.SettingValue, i8** }
%struct.SettingValue = type { i8*, i32, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type opaque
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unalias\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"clear default\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"settings errors\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_alias = private unnamed_addr constant [10 x i8] c"cmd_alias\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"alias added\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"alias removed\00", align 1
@__func__.cmd_unalias = private unnamed_addr constant [12 x i8] c"cmd_unalias\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"Remove unknown settings from config file (Y/n)?\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_settings_set_print(i8*) #0 !dbg !361 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !366, metadata !367), !dbg !368
  %3 = load i8*, i8** %2, align 8, !dbg !369
  %4 = call %struct.SETTINGS_REC* @settings_get_record(i8* %3), !dbg !370
  call void @set_print(%struct.SETTINGS_REC* %4), !dbg !371
  ret void, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @set_print(%struct.SETTINGS_REC*) #0 !dbg !374 {
  %2 = alloca %struct.SETTINGS_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.SETTINGS_REC* %0, %struct.SETTINGS_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %2, metadata !398, metadata !367), !dbg !399
  call void @llvm.dbg.declare(metadata i8** %3, metadata !400, metadata !367), !dbg !401
  %4 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !402
  %5 = call i8* @settings_get_print(%struct.SETTINGS_REC* %4), !dbg !403
  store i8* %5, i8** %3, align 8, !dbg !404
  %6 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %2, align 8, !dbg !405
  %7 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %6, i32 0, i32 2, !dbg !406
  %8 = load i8*, i8** %7, align 8, !dbg !406
  %9 = load i8*, i8** %3, align 8, !dbg !407
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 218, i8* %8, i8* %9), !dbg !408
  %10 = load i8*, i8** %3, align 8, !dbg !409
  call void @g_free(i8* %10), !dbg !410
  ret void, !dbg !411
}

declare %struct.SETTINGS_REC* @settings_get_record(i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_settings_init() #0 !dbg !412 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_set to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !415
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_toggle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !416
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_alias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !417
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unalias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !418
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_reload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !419
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !420
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !421
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_settings_errors to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !422
  ret void, !dbg !423
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_set(i8*) #0 !dbg !424 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !427, metadata !367), !dbg !428
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !429, metadata !367), !dbg !434
  call void @llvm.dbg.declare(metadata i8** %4, metadata !435, metadata !367), !dbg !436
  call void @llvm.dbg.declare(metadata i8** %5, metadata !437, metadata !367), !dbg !438
  call void @llvm.dbg.declare(metadata i8** %6, metadata !439, metadata !367), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %7, metadata !441, metadata !367), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %8, metadata !443, metadata !367), !dbg !444
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %9, metadata !445, metadata !367), !dbg !446
  %10 = load i8*, i8** %2, align 8, !dbg !447
  %11 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %10, i8** %6, i32 24578, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %3, i8** %4, i8** %5), !dbg !449
  %12 = icmp ne i32 %11, 0, !dbg !449
  br i1 %12, label %14, label %13, !dbg !450

; <label>:13:                                     ; preds = %1
  br label %213, !dbg !451

; <label>:14:                                     ; preds = %1
  %15 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !452
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)), !dbg !453
  %17 = icmp ne i8* %16, null, !dbg !454
  %18 = zext i1 %17 to i32, !dbg !454
  store i32 %18, i32* %7, align 4, !dbg !455
  %19 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !456
  %20 = call i8* @g_hash_table_lookup(%struct._GHashTable* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)), !dbg !457
  %21 = icmp ne i8* %20, null, !dbg !458
  %22 = zext i1 %21 to i32, !dbg !458
  store i32 %22, i32* %8, align 4, !dbg !459
  %23 = load i8*, i8** %4, align 8, !dbg !460
  %24 = load i8, i8* %23, align 1, !dbg !462
  %25 = sext i8 %24 to i32, !dbg !462
  %26 = icmp eq i32 %25, 0, !dbg !463
  br i1 %26, label %27, label %28, !dbg !464

; <label>:27:                                     ; preds = %14
  store i32 0, i32* %8, align 4, !dbg !465
  store i32 0, i32* %7, align 4, !dbg !466
  br label %28, !dbg !467

; <label>:28:                                     ; preds = %27, %14
  %29 = load i32, i32* %7, align 4, !dbg !468
  %30 = icmp ne i32 %29, 0, !dbg !468
  br i1 %30, label %41, label %31, !dbg !470

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %8, align 4, !dbg !471
  %33 = icmp ne i32 %32, 0, !dbg !471
  br i1 %33, label %41, label %34, !dbg !473

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %5, align 8, !dbg !474
  %36 = load i8, i8* %35, align 1, !dbg !476
  %37 = sext i8 %36 to i32, !dbg !476
  %38 = icmp ne i32 %37, 0, !dbg !477
  br i1 %38, label %41, label %39, !dbg !478

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %4, align 8, !dbg !479
  call void @set_print_pattern(i8* %40), !dbg !480
  br label %211, !dbg !480

; <label>:41:                                     ; preds = %34, %31, %28
  %42 = load i8*, i8** %4, align 8, !dbg !481
  %43 = call %struct.SETTINGS_REC* @settings_get_record(i8* %42), !dbg !483
  store %struct.SETTINGS_REC* %43, %struct.SETTINGS_REC** %9, align 8, !dbg !484
  %44 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !485
  %45 = icmp ne %struct.SETTINGS_REC* %44, null, !dbg !487
  br i1 %45, label %46, label %208, !dbg !488

; <label>:46:                                     ; preds = %41
  %47 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !489
  %48 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %47, i32 0, i32 4, !dbg !491
  %49 = load i32, i32* %48, align 8, !dbg !491
  switch i32 %49, label %202 [
    i32 2, label %50
    i32 1, label %71
    i32 6, label %90
    i32 0, label %113
    i32 3, label %132
    i32 4, label %155
    i32 5, label %178
    i32 7, label %201
  ], !dbg !492

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %7, align 4, !dbg !493
  %52 = icmp ne i32 %51, 0, !dbg !493
  br i1 %52, label %53, label %55, !dbg !496

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** %4, align 8, !dbg !497
  call void @settings_set_bool(i8* %54, i32 0), !dbg !498
  br label %70, !dbg !498

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %8, align 4, !dbg !499
  %57 = icmp ne i32 %56, 0, !dbg !499
  br i1 %57, label %58, label %66, !dbg !501

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %4, align 8, !dbg !502
  %60 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !503
  %61 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %60, i32 0, i32 5, !dbg !504
  %62 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %61, i32 0, i32 2, !dbg !505
  %63 = load i8, i8* %62, align 4, !dbg !505
  %64 = and i8 %63, 1, !dbg !505
  %65 = zext i8 %64 to i32, !dbg !505
  call void @settings_set_bool(i8* %59, i32 %65), !dbg !506
  br label %69, !dbg !506

; <label>:66:                                     ; preds = %55
  %67 = load i8*, i8** %4, align 8, !dbg !507
  %68 = load i8*, i8** %5, align 8, !dbg !508
  call void @set_boolean(i8* %67, i8* %68), !dbg !509
  br label %69

; <label>:69:                                     ; preds = %66, %58
  br label %70

; <label>:70:                                     ; preds = %69, %53
  br label %202, !dbg !510

; <label>:71:                                     ; preds = %46
  %72 = load i32, i32* %7, align 4, !dbg !511
  %73 = icmp ne i32 %72, 0, !dbg !511
  br i1 %73, label %74, label %76, !dbg !513

; <label>:74:                                     ; preds = %71
  %75 = load i8*, i8** %4, align 8, !dbg !514
  call void @settings_set_int(i8* %75, i32 0), !dbg !515
  br label %89, !dbg !515

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %8, align 4, !dbg !516
  %78 = icmp ne i32 %77, 0, !dbg !516
  br i1 %78, label %79, label %85, !dbg !518

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %4, align 8, !dbg !519
  %81 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !520
  %82 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %81, i32 0, i32 5, !dbg !521
  %83 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %82, i32 0, i32 1, !dbg !522
  %84 = load i32, i32* %83, align 8, !dbg !522
  call void @settings_set_int(i8* %80, i32 %84), !dbg !523
  br label %88, !dbg !523

; <label>:85:                                     ; preds = %76
  %86 = load i8*, i8** %4, align 8, !dbg !524
  %87 = load i8*, i8** %5, align 8, !dbg !525
  call void @set_int(i8* %86, i8* %87), !dbg !526
  br label %88

; <label>:88:                                     ; preds = %85, %79
  br label %89

; <label>:89:                                     ; preds = %88, %74
  br label %202, !dbg !527

; <label>:90:                                     ; preds = %46
  %91 = load i32, i32* %7, align 4, !dbg !528
  %92 = icmp ne i32 %91, 0, !dbg !528
  br i1 %92, label %96, label %93, !dbg !530

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %8, align 4, !dbg !531
  %95 = icmp ne i32 %94, 0, !dbg !531
  br i1 %95, label %96, label %109, !dbg !533

; <label>:96:                                     ; preds = %93, %90
  %97 = load i8*, i8** %4, align 8, !dbg !534
  %98 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !535
  %99 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %98, i32 0, i32 5, !dbg !536
  %100 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %99, i32 0, i32 1, !dbg !537
  %101 = load i32, i32* %100, align 8, !dbg !537
  %102 = sext i32 %101 to i64, !dbg !538
  %103 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !538
  %104 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %103, i32 0, i32 6, !dbg !539
  %105 = load i8**, i8*** %104, align 8, !dbg !539
  %106 = getelementptr inbounds i8*, i8** %105, i64 %102, !dbg !538
  %107 = load i8*, i8** %106, align 8, !dbg !538
  %108 = call i32 @settings_set_choice(i8* %97, i8* %107), !dbg !540
  br label %112, !dbg !540

; <label>:109:                                    ; preds = %93
  %110 = load i8*, i8** %4, align 8, !dbg !541
  %111 = load i8*, i8** %5, align 8, !dbg !542
  call void @set_choice(i8* %110, i8* %111), !dbg !543
  br label %112

; <label>:112:                                    ; preds = %109, %96
  br label %202, !dbg !544

; <label>:113:                                    ; preds = %46
  %114 = load i8*, i8** %4, align 8, !dbg !545
  %115 = load i32, i32* %7, align 4, !dbg !546
  %116 = icmp ne i32 %115, 0, !dbg !546
  br i1 %116, label %117, label %118, !dbg !546

; <label>:117:                                    ; preds = %113
  br label %130, !dbg !547

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %8, align 4, !dbg !549
  %120 = icmp ne i32 %119, 0, !dbg !549
  br i1 %120, label %121, label %126, !dbg !549

; <label>:121:                                    ; preds = %118
  %122 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !550
  %123 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %122, i32 0, i32 5, !dbg !551
  %124 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %123, i32 0, i32 0, !dbg !552
  %125 = load i8*, i8** %124, align 8, !dbg !552
  br label %128, !dbg !553

; <label>:126:                                    ; preds = %118
  %127 = load i8*, i8** %5, align 8, !dbg !554
  br label %128, !dbg !555

; <label>:128:                                    ; preds = %126, %121
  %129 = phi i8* [ %125, %121 ], [ %127, %126 ], !dbg !557
  br label %130, !dbg !559

; <label>:130:                                    ; preds = %128, %117
  %131 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %117 ], [ %129, %128 ], !dbg !560
  call void @settings_set_str(i8* %114, i8* %131), !dbg !561
  br label %202, !dbg !562

; <label>:132:                                    ; preds = %46
  %133 = load i8*, i8** %4, align 8, !dbg !563
  %134 = load i32, i32* %7, align 4, !dbg !565
  %135 = icmp ne i32 %134, 0, !dbg !565
  br i1 %135, label %136, label %137, !dbg !565

; <label>:136:                                    ; preds = %132
  br label %149, !dbg !566

; <label>:137:                                    ; preds = %132
  %138 = load i32, i32* %8, align 4, !dbg !568
  %139 = icmp ne i32 %138, 0, !dbg !568
  br i1 %139, label %140, label %145, !dbg !568

; <label>:140:                                    ; preds = %137
  %141 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !569
  %142 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %141, i32 0, i32 5, !dbg !570
  %143 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %142, i32 0, i32 0, !dbg !571
  %144 = load i8*, i8** %143, align 8, !dbg !571
  br label %147, !dbg !572

; <label>:145:                                    ; preds = %137
  %146 = load i8*, i8** %5, align 8, !dbg !573
  br label %147, !dbg !575

; <label>:147:                                    ; preds = %145, %140
  %148 = phi i8* [ %144, %140 ], [ %146, %145 ], !dbg !576
  br label %149, !dbg !578

; <label>:149:                                    ; preds = %147, %136
  %150 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), %136 ], [ %148, %147 ], !dbg !579
  %151 = call i32 @settings_set_time(i8* %133, i8* %150), !dbg !580
  %152 = icmp ne i32 %151, 0, !dbg !580
  br i1 %152, label %154, label %153, !dbg !581

; <label>:153:                                    ; preds = %149
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 165), !dbg !582
  br label %154, !dbg !582

; <label>:154:                                    ; preds = %153, %149
  br label %202, !dbg !583

; <label>:155:                                    ; preds = %46
  %156 = load i8*, i8** %4, align 8, !dbg !584
  %157 = load i32, i32* %7, align 4, !dbg !586
  %158 = icmp ne i32 %157, 0, !dbg !586
  br i1 %158, label %159, label %160, !dbg !586

; <label>:159:                                    ; preds = %155
  br label %172, !dbg !587

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* %8, align 4, !dbg !589
  %162 = icmp ne i32 %161, 0, !dbg !589
  br i1 %162, label %163, label %168, !dbg !589

; <label>:163:                                    ; preds = %160
  %164 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !590
  %165 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %164, i32 0, i32 5, !dbg !591
  %166 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %165, i32 0, i32 0, !dbg !592
  %167 = load i8*, i8** %166, align 8, !dbg !592
  br label %170, !dbg !593

; <label>:168:                                    ; preds = %160
  %169 = load i8*, i8** %5, align 8, !dbg !594
  br label %170, !dbg !596

; <label>:170:                                    ; preds = %168, %163
  %171 = phi i8* [ %167, %163 ], [ %169, %168 ], !dbg !597
  br label %172, !dbg !599

; <label>:172:                                    ; preds = %170, %159
  %173 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %159 ], [ %171, %170 ], !dbg !600
  %174 = call i32 @settings_set_level(i8* %156, i8* %173), !dbg !601
  %175 = icmp ne i32 %174, 0, !dbg !601
  br i1 %175, label %177, label %176, !dbg !602

; <label>:176:                                    ; preds = %172
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 166), !dbg !603
  br label %177, !dbg !603

; <label>:177:                                    ; preds = %176, %172
  br label %202, !dbg !604

; <label>:178:                                    ; preds = %46
  %179 = load i8*, i8** %4, align 8, !dbg !605
  %180 = load i32, i32* %7, align 4, !dbg !607
  %181 = icmp ne i32 %180, 0, !dbg !607
  br i1 %181, label %182, label %183, !dbg !607

; <label>:182:                                    ; preds = %178
  br label %195, !dbg !608

; <label>:183:                                    ; preds = %178
  %184 = load i32, i32* %8, align 4, !dbg !610
  %185 = icmp ne i32 %184, 0, !dbg !610
  br i1 %185, label %186, label %191, !dbg !610

; <label>:186:                                    ; preds = %183
  %187 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !611
  %188 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %187, i32 0, i32 5, !dbg !612
  %189 = getelementptr inbounds %struct.SettingValue, %struct.SettingValue* %188, i32 0, i32 0, !dbg !613
  %190 = load i8*, i8** %189, align 8, !dbg !613
  br label %193, !dbg !614

; <label>:191:                                    ; preds = %183
  %192 = load i8*, i8** %5, align 8, !dbg !615
  br label %193, !dbg !617

; <label>:193:                                    ; preds = %191, %186
  %194 = phi i8* [ %190, %186 ], [ %192, %191 ], !dbg !618
  br label %195, !dbg !620

; <label>:195:                                    ; preds = %193, %182
  %196 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), %182 ], [ %194, %193 ], !dbg !621
  %197 = call i32 @settings_set_size(i8* %179, i8* %196), !dbg !622
  %198 = icmp ne i32 %197, 0, !dbg !622
  br i1 %198, label %200, label %199, !dbg !623

; <label>:199:                                    ; preds = %195
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 167), !dbg !624
  br label %200, !dbg !624

; <label>:200:                                    ; preds = %199, %195
  br label %202, !dbg !625

; <label>:201:                                    ; preds = %46
  br label %202, !dbg !626

; <label>:202:                                    ; preds = %46, %201, %200, %177, %154, %130, %112, %89, %70
  %203 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !627
  %204 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !628
  %205 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %204, i32 0, i32 3, !dbg !629
  %206 = load i8*, i8** %205, align 8, !dbg !629
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 217, i8* %206), !dbg !630
  %207 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %9, align 8, !dbg !631
  call void @set_print(%struct.SETTINGS_REC* %207), !dbg !632
  br label %210, !dbg !633

; <label>:208:                                    ; preds = %41
  %209 = load i8*, i8** %4, align 8, !dbg !634
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 219, i8* %209), !dbg !635
  br label %210

; <label>:210:                                    ; preds = %208, %202
  br label %211

; <label>:211:                                    ; preds = %210, %39
  %212 = load i8*, i8** %6, align 8, !dbg !636
  call void @cmd_params_free(i8* %212), !dbg !637
  br label %213, !dbg !638

; <label>:213:                                    ; preds = %211, %13
  ret void, !dbg !639
}

; Function Attrs: nounwind uwtable
define internal void @cmd_toggle(i8*) #0 !dbg !641 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !642, metadata !367), !dbg !643
  call void @llvm.dbg.declare(metadata i8** %3, metadata !644, metadata !367), !dbg !645
  call void @llvm.dbg.declare(metadata i8** %4, metadata !646, metadata !367), !dbg !647
  call void @llvm.dbg.declare(metadata i8** %5, metadata !648, metadata !367), !dbg !649
  call void @llvm.dbg.declare(metadata i32* %6, metadata !650, metadata !367), !dbg !651
  %7 = load i8*, i8** %2, align 8, !dbg !652
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %5, i32 270338, i8** %3, i8** %4), !dbg !654
  %9 = icmp ne i32 %8, 0, !dbg !654
  br i1 %9, label %11, label %10, !dbg !655

; <label>:10:                                     ; preds = %1
  br label %52, !dbg !656

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8, !dbg !657
  %13 = load i8, i8* %12, align 1, !dbg !659
  %14 = sext i8 %13 to i32, !dbg !659
  %15 = icmp eq i32 %14, 0, !dbg !660
  br i1 %15, label %16, label %23, !dbg !661

; <label>:16:                                     ; preds = %11
  br label %17, !dbg !662, !llvm.loop !663

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !664
  call void @cmd_params_free(i8* %18), !dbg !667
  br label %19, !dbg !668, !llvm.loop !669

; <label>:19:                                     ; preds = %17
  %20 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !671
  call void @signal_stop(), !dbg !674
  br label %52, !dbg !676
                                                  ; No predecessors!
  br label %22, !dbg !677

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !679

; <label>:23:                                     ; preds = %22, %11
  %24 = load i8*, i8** %3, align 8, !dbg !681
  %25 = call i32 @settings_get_type(i8* %24), !dbg !682
  store i32 %25, i32* %6, align 4, !dbg !683
  %26 = load i32, i32* %6, align 4, !dbg !684
  %27 = icmp eq i32 %26, 7, !dbg !686
  br i1 %27, label %28, label %30, !dbg !687

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8, !dbg !688
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 219, i8* %29), !dbg !689
  br label %50, !dbg !689

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %6, align 4, !dbg !690
  %32 = icmp ne i32 %31, 2, !dbg !692
  br i1 %32, label %33, label %35, !dbg !693

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %3, align 8, !dbg !694
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 220, i8* %34), !dbg !695
  br label %49, !dbg !695

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %3, align 8, !dbg !696
  %37 = load i8*, i8** %4, align 8, !dbg !698
  %38 = load i8, i8* %37, align 1, !dbg !699
  %39 = sext i8 %38 to i32, !dbg !699
  %40 = icmp ne i32 %39, 0, !dbg !700
  br i1 %40, label %41, label %43, !dbg !699

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %4, align 8, !dbg !701
  br label %44, !dbg !703

; <label>:43:                                     ; preds = %35
  br label %44, !dbg !704

; <label>:44:                                     ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %43 ], !dbg !706
  call void @set_boolean(i8* %36, i8* %45), !dbg !708
  %46 = load i8*, i8** %3, align 8, !dbg !709
  %47 = call %struct.SETTINGS_REC* @settings_get_record(i8* %46), !dbg !710
  call void @set_print(%struct.SETTINGS_REC* %47), !dbg !711
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !712
  br label %49

; <label>:49:                                     ; preds = %44, %33
  br label %50

; <label>:50:                                     ; preds = %49, %28
  %51 = load i8*, i8** %5, align 8, !dbg !713
  call void @cmd_params_free(i8* %51), !dbg !714
  br label %52, !dbg !715

; <label>:52:                                     ; preds = %50, %19, %10
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @cmd_alias(i8*) #0 !dbg !718 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !719, metadata !367), !dbg !720
  call void @llvm.dbg.declare(metadata i8** %3, metadata !721, metadata !367), !dbg !722
  call void @llvm.dbg.declare(metadata i8** %4, metadata !723, metadata !367), !dbg !724
  call void @llvm.dbg.declare(metadata i8** %5, metadata !725, metadata !367), !dbg !726
  br label %6, !dbg !727, !llvm.loop !728

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !729
  %8 = icmp ne i8* %7, null, !dbg !733
  br i1 %8, label %9, label %10, !dbg !729

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !734

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_alias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)), !dbg !737
  br label %56, !dbg !740

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !741

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %2, align 8, !dbg !743
  %14 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %13, i8** %5, i32 8194, i8** %3, i8** %4), !dbg !745
  %15 = icmp ne i32 %14, 0, !dbg !745
  br i1 %15, label %17, label %16, !dbg !746

; <label>:16:                                     ; preds = %12
  br label %56, !dbg !747

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %3, align 8, !dbg !748
  %19 = load i8, i8* %18, align 1, !dbg !750
  %20 = sext i8 %19 to i32, !dbg !750
  %21 = icmp eq i32 %20, 45, !dbg !751
  br i1 %21, label %22, label %32, !dbg !752

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8, !dbg !753
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !753
  %25 = load i8, i8* %24, align 1, !dbg !753
  %26 = sext i8 %25 to i32, !dbg !753
  %27 = icmp ne i32 %26, 0, !dbg !756
  br i1 %27, label %28, label %31, !dbg !757

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %3, align 8, !dbg !758
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !760
  call void @alias_remove(i8* %30), !dbg !761
  br label %31, !dbg !761

; <label>:31:                                     ; preds = %28, %22
  br label %54, !dbg !762

; <label>:32:                                     ; preds = %17
  %33 = load i8*, i8** %3, align 8, !dbg !763
  %34 = load i8, i8* %33, align 1, !dbg !766
  %35 = sext i8 %34 to i32, !dbg !766
  %36 = icmp eq i32 %35, 0, !dbg !767
  br i1 %36, label %42, label %37, !dbg !768

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %4, align 8, !dbg !769
  %39 = load i8, i8* %38, align 1, !dbg !771
  %40 = sext i8 %39 to i32, !dbg !771
  %41 = icmp eq i32 %40, 0, !dbg !772
  br i1 %41, label %42, label %44, !dbg !773

; <label>:42:                                     ; preds = %37, %32
  %43 = load i8*, i8** %3, align 8, !dbg !774
  call void @show_aliases(i8* %43), !dbg !775
  br label %53, !dbg !775

; <label>:44:                                     ; preds = %37
  %45 = load i8*, i8** %3, align 8, !dbg !776
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 119, i8* %45), !dbg !778
  %46 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !779
  %47 = load i8*, i8** %3, align 8, !dbg !780
  %48 = load i8*, i8** %4, align 8, !dbg !781
  %49 = call i32 @config_set_str(%struct._CONFIG_REC* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* %47, i8* %48), !dbg !782
  %50 = load i8*, i8** %3, align 8, !dbg !783
  %51 = load i8*, i8** %4, align 8, !dbg !784
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 2, i8* %50, i8* %51), !dbg !785
  br label %53

; <label>:53:                                     ; preds = %44, %42
  br label %54

; <label>:54:                                     ; preds = %53, %31
  %55 = load i8*, i8** %5, align 8, !dbg !786
  call void @cmd_params_free(i8* %55), !dbg !787
  br label %56, !dbg !788

; <label>:56:                                     ; preds = %54, %16, %10
  ret void, !dbg !789
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unalias(i8*) #0 !dbg !791 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !792, metadata !367), !dbg !793
  call void @llvm.dbg.declare(metadata i8** %3, metadata !794, metadata !367), !dbg !795
  call void @llvm.dbg.declare(metadata i8** %4, metadata !796, metadata !367), !dbg !797
  br label %5, !dbg !798, !llvm.loop !799

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !800
  %7 = icmp ne i8* %6, null, !dbg !804
  br i1 %7, label %8, label %9, !dbg !800

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !805

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_unalias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)), !dbg !808
  br label %31, !dbg !811

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !812

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %2, align 8, !dbg !814
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %4, i32 1, i8** %3), !dbg !816
  %14 = icmp ne i32 %13, 0, !dbg !816
  br i1 %14, label %16, label %15, !dbg !817

; <label>:15:                                     ; preds = %11
  br label %31, !dbg !818

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !819
  %18 = load i8, i8* %17, align 1, !dbg !821
  %19 = sext i8 %18 to i32, !dbg !821
  %20 = icmp eq i32 %19, 0, !dbg !822
  br i1 %20, label %21, label %28, !dbg !823

; <label>:21:                                     ; preds = %16
  br label %22, !dbg !824, !llvm.loop !826

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !828
  call void @cmd_params_free(i8* %23), !dbg !831
  br label %24, !dbg !832, !llvm.loop !833

; <label>:24:                                     ; preds = %22
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !835
  call void @signal_stop(), !dbg !838
  br label %31, !dbg !840
                                                  ; No predecessors!
  br label %27, !dbg !841

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !843

; <label>:28:                                     ; preds = %27, %16
  %29 = load i8*, i8** %3, align 8, !dbg !845
  call void @alias_remove(i8* %29), !dbg !846
  %30 = load i8*, i8** %4, align 8, !dbg !847
  call void @cmd_params_free(i8* %30), !dbg !848
  br label %31, !dbg !849

; <label>:31:                                     ; preds = %28, %24, %15, %9
  ret void, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal void @cmd_reload(i8*) #0 !dbg !852 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !853, metadata !367), !dbg !854
  call void @llvm.dbg.declare(metadata i8** %3, metadata !855, metadata !367), !dbg !856
  %4 = load i8*, i8** %2, align 8, !dbg !857
  %5 = load i8, i8* %4, align 1, !dbg !858
  %6 = sext i8 %5 to i32, !dbg !858
  %7 = icmp eq i32 %6, 0, !dbg !859
  br i1 %7, label %8, label %10, !dbg !858

; <label>:8:                                      ; preds = %1
  %9 = call i8* @get_irssi_config(), !dbg !860
  br label %12, !dbg !862

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !863
  br label %12, !dbg !865

; <label>:12:                                     ; preds = %10, %8
  %13 = phi i8* [ %9, %8 ], [ %11, %10 ], !dbg !866
  store i8* %13, i8** %3, align 8, !dbg !868
  %14 = load i8*, i8** %3, align 8, !dbg !869
  %15 = call i32 @settings_reread(i8* %14), !dbg !871
  %16 = icmp ne i32 %15, 0, !dbg !871
  br i1 %16, label %17, label %19, !dbg !872

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %3, align 8, !dbg !873
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 213, i8* %18), !dbg !875
  br label %19, !dbg !876

; <label>:19:                                     ; preds = %17, %12
  ret void, !dbg !877
}

; Function Attrs: nounwind uwtable
define internal void @cmd_save(i8*) #0 !dbg !878 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !879, metadata !367), !dbg !880
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !881, metadata !367), !dbg !882
  call void @llvm.dbg.declare(metadata i8** %4, metadata !883, metadata !367), !dbg !884
  call void @llvm.dbg.declare(metadata i8** %5, metadata !885, metadata !367), !dbg !886
  call void @llvm.dbg.declare(metadata i8** %6, metadata !887, metadata !367), !dbg !888
  %7 = load i8*, i8** %2, align 8, !dbg !889
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %6, i32 16385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._GHashTable** %3, i8** %5), !dbg !891
  %9 = icmp ne i32 %8, 0, !dbg !891
  br i1 %9, label %11, label %10, !dbg !892

; <label>:10:                                     ; preds = %1
  br label %35, !dbg !893

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %5, align 8, !dbg !894
  %13 = load i8, i8* %12, align 1, !dbg !896
  %14 = sext i8 %13 to i32, !dbg !896
  %15 = icmp eq i32 %14, 0, !dbg !897
  br i1 %15, label %16, label %20, !dbg !898

; <label>:16:                                     ; preds = %11
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !899
  %18 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %17, i32 0, i32 0, !dbg !900
  %19 = load i8*, i8** %18, align 8, !dbg !900
  store i8* %19, i8** %5, align 8, !dbg !901
  br label %20, !dbg !902

; <label>:20:                                     ; preds = %16, %11
  %21 = load i8*, i8** %5, align 8, !dbg !903
  %22 = call i32 @irssi_config_is_changed(i8* %21), !dbg !905
  %23 = icmp ne i32 %22, 0, !dbg !905
  br i1 %23, label %26, label %24, !dbg !906

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !907
  call void @settings_save_fe(i8* %25), !dbg !908
  br label %33, !dbg !908

; <label>:26:                                     ; preds = %20
  %27 = load i8*, i8** %5, align 8, !dbg !909
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 214, i8* %27), !dbg !911
  %28 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* null, i8* null, i8* null, i32 216), !dbg !912
  store i8* %28, i8** %4, align 8, !dbg !913
  %29 = load i8*, i8** %4, align 8, !dbg !914
  %30 = load i8*, i8** %5, align 8, !dbg !915
  %31 = call noalias i8* @g_strdup(i8* %30), !dbg !916
  call void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @settings_save_confirm to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* %29, i32 0, i8* %31), !dbg !917
  %32 = load i8*, i8** %4, align 8, !dbg !918
  call void @g_free(i8* %32), !dbg !919
  br label %33

; <label>:33:                                     ; preds = %26, %24
  %34 = load i8*, i8** %6, align 8, !dbg !920
  call void @cmd_params_free(i8* %34), !dbg !921
  br label %35, !dbg !922

; <label>:35:                                     ; preds = %33, %10
  ret void, !dbg !923
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_settings_errors(i8*) #0 !dbg !925 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !926, metadata !367), !dbg !927
  %3 = load i8*, i8** %2, align 8, !dbg !928
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %3), !dbg !929
  call void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @settings_clean_confirm to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i32 0, i32 0), i32 0, i8* null), !dbg !930
  ret void, !dbg !931
}

; Function Attrs: nounwind uwtable
define void @fe_settings_deinit() #0 !dbg !932 {
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_set to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !933
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_toggle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !934
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_alias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !935
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unalias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !936
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_reload to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !937
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !938
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_settings_errors to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !939
  ret void, !dbg !940
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @settings_get_print(%struct.SETTINGS_REC*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare void @g_free(i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_print_pattern(i8*) #0 !dbg !941 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !942, metadata !367), !dbg !943
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !944, metadata !367), !dbg !952
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !953, metadata !367), !dbg !954
  call void @llvm.dbg.declare(metadata i8** %5, metadata !955, metadata !367), !dbg !956
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %5, align 8, !dbg !957
  %7 = call %struct._GSList* @settings_get_sorted(), !dbg !958
  store %struct._GSList* %7, %struct._GSList** %3, align 8, !dbg !959
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !960
  store %struct._GSList* %8, %struct._GSList** %4, align 8, !dbg !962
  br label %9, !dbg !963

; <label>:9:                                      ; preds = %40, %1
  %10 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !964
  %11 = icmp ne %struct._GSList* %10, null, !dbg !967
  br i1 %11, label %12, label %44, !dbg !968

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !969, metadata !367), !dbg !971
  %13 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !972
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !973
  %15 = load i8*, i8** %14, align 8, !dbg !973
  %16 = bitcast i8* %15 to %struct.SETTINGS_REC*, !dbg !972
  store %struct.SETTINGS_REC* %16, %struct.SETTINGS_REC** %6, align 8, !dbg !971
  %17 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !974
  %18 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %17, i32 0, i32 2, !dbg !976
  %19 = load i8*, i8** %18, align 8, !dbg !976
  %20 = load i8*, i8** %2, align 8, !dbg !977
  %21 = call i8* @stristr(i8* %19, i8* %20), !dbg !978
  %22 = icmp eq i8* %21, null, !dbg !979
  br i1 %22, label %23, label %24, !dbg !980

; <label>:23:                                     ; preds = %12
  br label %40, !dbg !981

; <label>:24:                                     ; preds = %12
  %25 = load i8*, i8** %5, align 8, !dbg !982
  %26 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !984
  %27 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %26, i32 0, i32 3, !dbg !985
  %28 = load i8*, i8** %27, align 8, !dbg !985
  %29 = call i32 @g_strcmp0(i8* %25, i8* %28), !dbg !986
  %30 = icmp ne i32 %29, 0, !dbg !987
  br i1 %30, label %31, label %38, !dbg !988

; <label>:31:                                     ; preds = %24
  %32 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !989
  %33 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %32, i32 0, i32 3, !dbg !991
  %34 = load i8*, i8** %33, align 8, !dbg !991
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 217, i8* %34), !dbg !992
  %35 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !993
  %36 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %35, i32 0, i32 3, !dbg !994
  %37 = load i8*, i8** %36, align 8, !dbg !994
  store i8* %37, i8** %5, align 8, !dbg !995
  br label %38, !dbg !996

; <label>:38:                                     ; preds = %31, %24
  %39 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !997
  call void @set_print(%struct.SETTINGS_REC* %39), !dbg !998
  br label %40, !dbg !999

; <label>:40:                                     ; preds = %38, %23
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1000
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !1002
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !1002
  store %struct._GSList* %43, %struct._GSList** %4, align 8, !dbg !1003
  br label %9, !dbg !1004, !llvm.loop !1005

; <label>:44:                                     ; preds = %9
  %45 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1007
  call void @g_slist_free(%struct._GSList* %45), !dbg !1008
  ret void, !dbg !1009
}

declare void @settings_set_bool(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_boolean(i8*, i8*) #0 !dbg !1010 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1013, metadata !367), !dbg !1014
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1015, metadata !367), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1017, metadata !367), !dbg !1018
  %6 = load i8*, i8** %4, align 8, !dbg !1019
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !1020
  store i8* %7, i8** %5, align 8, !dbg !1021
  %8 = load i8*, i8** %5, align 8, !dbg !1022
  %9 = call i8* @g_strchug(i8* %8), !dbg !1023
  %10 = call i8* @g_strchomp(i8* %9), !dbg !1024
  %11 = load i8*, i8** %5, align 8, !dbg !1026
  %12 = call i32 @g_ascii_strcasecmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)), !dbg !1028
  %13 = icmp eq i32 %12, 0, !dbg !1029
  br i1 %13, label %14, label %16, !dbg !1030

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %3, align 8, !dbg !1031
  call void @settings_set_bool(i8* %15, i32 1), !dbg !1032
  br label %36, !dbg !1032

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !1033
  %18 = call i32 @g_ascii_strcasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1035
  %19 = icmp eq i32 %18, 0, !dbg !1036
  br i1 %19, label %20, label %22, !dbg !1037

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %3, align 8, !dbg !1038
  call void @settings_set_bool(i8* %21, i32 0), !dbg !1039
  br label %35, !dbg !1039

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %5, align 8, !dbg !1040
  %24 = call i32 @g_ascii_strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)), !dbg !1042
  %25 = icmp eq i32 %24, 0, !dbg !1043
  br i1 %25, label %26, label %33, !dbg !1044

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %3, align 8, !dbg !1045
  %28 = load i8*, i8** %3, align 8, !dbg !1046
  %29 = call i32 @settings_get_bool(i8* %28), !dbg !1047
  %30 = icmp ne i32 %29, 0, !dbg !1048
  %31 = xor i1 %30, true, !dbg !1048
  %32 = zext i1 %31 to i32, !dbg !1048
  call void @settings_set_bool(i8* %27, i32 %32), !dbg !1049
  br label %34, !dbg !1051

; <label>:33:                                     ; preds = %22
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 205), !dbg !1052
  br label %34

; <label>:34:                                     ; preds = %33, %26
  br label %35

; <label>:35:                                     ; preds = %34, %20
  br label %36

; <label>:36:                                     ; preds = %35, %14
  %37 = load i8*, i8** %5, align 8, !dbg !1053
  call void @g_free(i8* %37), !dbg !1054
  ret void, !dbg !1055
}

declare void @settings_set_int(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_int(i8*, i8*) #0 !dbg !1056 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1057, metadata !367), !dbg !1058
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1059, metadata !367), !dbg !1060
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1061, metadata !367), !dbg !1062
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1063, metadata !367), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1065, metadata !367), !dbg !1066
  %8 = call i32* @__errno_location() #1, !dbg !1067
  store i32 0, i32* %8, align 4, !dbg !1068
  %9 = load i8*, i8** %4, align 8, !dbg !1069
  %10 = call i64 @strtol(i8* %9, i8** %5, i32 10) #6, !dbg !1070
  store i64 %10, i64* %6, align 8, !dbg !1071
  %11 = call i32* @__errno_location() #1, !dbg !1072
  %12 = load i32, i32* %11, align 4, !dbg !1073
  store i32 %12, i32* %7, align 4, !dbg !1074
  br label %13, !dbg !1075

; <label>:13:                                     ; preds = %25, %2
  %14 = load i8*, i8** %5, align 8, !dbg !1076
  %15 = load i8, i8* %14, align 1, !dbg !1078
  %16 = zext i8 %15 to i32, !dbg !1079
  %17 = sext i32 %16 to i64, !dbg !1080
  %18 = call i16** @__ctype_b_loc() #1, !dbg !1081
  %19 = load i16*, i16** %18, align 8, !dbg !1082
  %20 = getelementptr inbounds i16, i16* %19, i64 %17, !dbg !1080
  %21 = load i16, i16* %20, align 2, !dbg !1080
  %22 = zext i16 %21 to i32, !dbg !1080
  %23 = and i32 %22, 8192, !dbg !1083
  %24 = icmp ne i32 %23, 0, !dbg !1084
  br i1 %24, label %25, label %28, !dbg !1084

; <label>:25:                                     ; preds = %13
  %26 = load i8*, i8** %5, align 8, !dbg !1085
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !1085
  store i8* %27, i8** %5, align 8, !dbg !1085
  br label %13, !dbg !1086, !llvm.loop !1088

; <label>:28:                                     ; preds = %13
  %29 = load i32, i32* %7, align 4, !dbg !1089
  %30 = icmp ne i32 %29, 0, !dbg !1091
  br i1 %30, label %42, label %31, !dbg !1092

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %5, align 8, !dbg !1093
  %33 = load i8, i8* %32, align 1, !dbg !1095
  %34 = sext i8 %33 to i32, !dbg !1095
  %35 = icmp ne i32 %34, 0, !dbg !1096
  br i1 %35, label %42, label %36, !dbg !1097

; <label>:36:                                     ; preds = %31
  %37 = load i64, i64* %6, align 8, !dbg !1098
  %38 = icmp slt i64 %37, -2147483648, !dbg !1100
  br i1 %38, label %42, label %39, !dbg !1101

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %6, align 8, !dbg !1102
  %41 = icmp sgt i64 %40, 2147483647, !dbg !1104
  br i1 %41, label %42, label %43, !dbg !1105

; <label>:42:                                     ; preds = %39, %36, %31, %28
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 164), !dbg !1106
  br label %47, !dbg !1106

; <label>:43:                                     ; preds = %39
  %44 = load i8*, i8** %3, align 8, !dbg !1107
  %45 = load i64, i64* %6, align 8, !dbg !1108
  %46 = trunc i64 %45 to i32, !dbg !1109
  call void @settings_set_int(i8* %44, i32 %46), !dbg !1110
  br label %47

; <label>:47:                                     ; preds = %43, %42
  ret void, !dbg !1111
}

declare i32 @settings_set_choice(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_choice(i8*, i8*) #0 !dbg !1112 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SETTINGS_REC*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1113, metadata !367), !dbg !1114
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1115, metadata !367), !dbg !1116
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1117, metadata !367), !dbg !1118
  %8 = load i8*, i8** %4, align 8, !dbg !1119
  %9 = call noalias i8* @g_strdup(i8* %8), !dbg !1120
  store i8* %9, i8** %5, align 8, !dbg !1121
  %10 = load i8*, i8** %5, align 8, !dbg !1122
  %11 = call i8* @g_strchug(i8* %10), !dbg !1123
  %12 = call i8* @g_strchomp(i8* %11), !dbg !1124
  %13 = load i8*, i8** %3, align 8, !dbg !1126
  %14 = load i8*, i8** %5, align 8, !dbg !1128
  %15 = call i32 @settings_set_choice(i8* %13, i8* %14), !dbg !1129
  %16 = icmp eq i32 %15, 0, !dbg !1130
  br i1 %16, label %17, label %26, !dbg !1131

; <label>:17:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %6, metadata !1132, metadata !367), !dbg !1134
  %18 = load i8*, i8** %3, align 8, !dbg !1135
  %19 = call %struct.SETTINGS_REC* @settings_get_record(i8* %18), !dbg !1136
  store %struct.SETTINGS_REC* %19, %struct.SETTINGS_REC** %6, align 8, !dbg !1134
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1137, metadata !367), !dbg !1138
  %20 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %6, align 8, !dbg !1139
  %21 = getelementptr inbounds %struct.SETTINGS_REC, %struct.SETTINGS_REC* %20, i32 0, i32 6, !dbg !1140
  %22 = load i8**, i8*** %21, align 8, !dbg !1140
  %23 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8** %22), !dbg !1141
  store i8* %23, i8** %7, align 8, !dbg !1138
  %24 = load i8*, i8** %7, align 8, !dbg !1142
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 169, i8* %24), !dbg !1143
  %25 = load i8*, i8** %7, align 8, !dbg !1144
  call void @g_free(i8* %25), !dbg !1145
  br label %26, !dbg !1146

; <label>:26:                                     ; preds = %17, %2
  %27 = load i8*, i8** %5, align 8, !dbg !1147
  call void @g_free(i8* %27), !dbg !1148
  ret void, !dbg !1149
}

declare void @settings_set_str(i8*, i8*) #2

declare i32 @settings_set_time(i8*, i8*) #2

declare i32 @settings_set_level(i8*, i8*) #2

declare i32 @settings_set_size(i8*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @cmd_params_free(i8*) #2

declare %struct._GSList* @settings_get_sorted() #2

declare i8* @stristr(i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @g_strchomp(i8*) #2

declare i8* @g_strchug(i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare noalias i8* @g_strjoinv(i8*, i8**) #2

declare void @signal_stop() #2

declare i32 @settings_get_type(i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @alias_remove(i8*) #0 !dbg !1150 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1151, metadata !367), !dbg !1152
  %3 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1153
  %4 = load i8*, i8** %2, align 8, !dbg !1155
  %5 = call i8* @config_get_str(%struct._CONFIG_REC* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* %4, i8* null), !dbg !1156
  %6 = icmp eq i8* %5, null, !dbg !1157
  br i1 %6, label %7, label %9, !dbg !1158

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !1159
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 121, i8* %8), !dbg !1160
  br label %16, !dbg !1160

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !1161
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 120, i8* %10), !dbg !1163
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1164
  %12 = load i8*, i8** %2, align 8, !dbg !1165
  %13 = call i32 @config_set_str(%struct._CONFIG_REC* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* %12, i8* null), !dbg !1166
  %14 = load i8*, i8** %2, align 8, !dbg !1167
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* %14), !dbg !1168
  br label %16

; <label>:16:                                     ; preds = %9, %7
  ret void, !dbg !1169
}

; Function Attrs: nounwind uwtable
define internal void @show_aliases(i8*) #0 !dbg !1170 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CONFIG_NODE*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1171, metadata !367), !dbg !1172
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1173, metadata !367), !dbg !1181
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1182, metadata !367), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1184, metadata !367), !dbg !1185
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1186, metadata !367), !dbg !1187
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 122), !dbg !1188
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1189
  %10 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0), !dbg !1190
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %3, align 8, !dbg !1191
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1192
  %12 = icmp eq %struct._CONFIG_NODE* %11, null, !dbg !1193
  br i1 %12, label %13, label %14, !dbg !1192

; <label>:13:                                     ; preds = %1
  br label %20, !dbg !1194

; <label>:14:                                     ; preds = %1
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1196
  %16 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %15, i32 0, i32 2, !dbg !1198
  %17 = load i8*, i8** %16, align 8, !dbg !1198
  %18 = bitcast i8* %17 to %struct._GSList*, !dbg !1196
  %19 = call %struct._GSList* @config_node_first(%struct._GSList* %18), !dbg !1199
  br label %20, !dbg !1200

; <label>:20:                                     ; preds = %14, %13
  %21 = phi %struct._GSList* [ null, %13 ], [ %19, %14 ], !dbg !1201
  store %struct._GSList* %21, %struct._GSList** %4, align 8, !dbg !1203
  store %struct._GSList* null, %struct._GSList** %5, align 8, !dbg !1204
  %22 = load i8*, i8** %2, align 8, !dbg !1205
  %23 = call i64 @strlen(i8* %22) #7, !dbg !1206
  %24 = trunc i64 %23 to i32, !dbg !1206
  store i32 %24, i32* %6, align 4, !dbg !1207
  br label %25, !dbg !1208

; <label>:25:                                     ; preds = %56, %20
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1209
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1213
  br i1 %27, label %28, label %59, !dbg !1214

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1215, metadata !367), !dbg !1217
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1218
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1219
  %31 = load i8*, i8** %30, align 8, !dbg !1219
  %32 = bitcast i8* %31 to %struct._CONFIG_NODE*, !dbg !1218
  store %struct._CONFIG_NODE* %32, %struct._CONFIG_NODE** %7, align 8, !dbg !1217
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1220
  %34 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %33, i32 0, i32 0, !dbg !1222
  %35 = load i32, i32* %34, align 8, !dbg !1222
  %36 = icmp ne i32 %35, 0, !dbg !1223
  br i1 %36, label %37, label %38, !dbg !1224

; <label>:37:                                     ; preds = %28
  br label %56, !dbg !1225

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %6, align 4, !dbg !1226
  %40 = icmp ne i32 %39, 0, !dbg !1228
  br i1 %40, label %41, label %51, !dbg !1229

; <label>:41:                                     ; preds = %38
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1230
  %43 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %42, i32 0, i32 1, !dbg !1232
  %44 = load i8*, i8** %43, align 8, !dbg !1232
  %45 = load i8*, i8** %2, align 8, !dbg !1233
  %46 = load i32, i32* %6, align 4, !dbg !1234
  %47 = sext i32 %46 to i64, !dbg !1234
  %48 = call i32 @g_ascii_strncasecmp(i8* %44, i8* %45, i64 %47), !dbg !1235
  %49 = icmp ne i32 %48, 0, !dbg !1236
  br i1 %49, label %50, label %51, !dbg !1237

; <label>:50:                                     ; preds = %41
  br label %56, !dbg !1238

; <label>:51:                                     ; preds = %41, %38
  %52 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1239
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1240
  %54 = bitcast %struct._CONFIG_NODE* %53 to i8*, !dbg !1240
  %55 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %52, i8* %54, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._CONFIG_NODE*)* @config_key_compare to i32 (i8*, i8*)*)), !dbg !1241
  store %struct._GSList* %55, %struct._GSList** %5, align 8, !dbg !1242
  br label %56, !dbg !1243

; <label>:56:                                     ; preds = %51, %50, %37
  %57 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1244
  %58 = call %struct._GSList* @config_node_next(%struct._GSList* %57), !dbg !1246
  store %struct._GSList* %58, %struct._GSList** %4, align 8, !dbg !1247
  br label %25, !dbg !1248, !llvm.loop !1249

; <label>:59:                                     ; preds = %25
  %60 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1250
  store %struct._GSList* %60, %struct._GSList** %4, align 8, !dbg !1252
  br label %61, !dbg !1253

; <label>:61:                                     ; preds = %75, %59
  %62 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1254
  %63 = icmp ne %struct._GSList* %62, null, !dbg !1257
  br i1 %63, label %64, label %79, !dbg !1258

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !1259, metadata !367), !dbg !1261
  %65 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1262
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0, !dbg !1263
  %67 = load i8*, i8** %66, align 8, !dbg !1263
  %68 = bitcast i8* %67 to %struct._CONFIG_NODE*, !dbg !1262
  store %struct._CONFIG_NODE* %68, %struct._CONFIG_NODE** %8, align 8, !dbg !1261
  %69 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1264
  %70 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %69, i32 0, i32 1, !dbg !1265
  %71 = load i8*, i8** %70, align 8, !dbg !1265
  %72 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1266
  %73 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %72, i32 0, i32 2, !dbg !1267
  %74 = load i8*, i8** %73, align 8, !dbg !1267
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 123, i8* %71, i8* %74), !dbg !1268
  br label %75, !dbg !1269

; <label>:75:                                     ; preds = %64
  %76 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1270
  %77 = getelementptr inbounds %struct._GSList, %struct._GSList* %76, i32 0, i32 1, !dbg !1272
  %78 = load %struct._GSList*, %struct._GSList** %77, align 8, !dbg !1272
  store %struct._GSList* %78, %struct._GSList** %4, align 8, !dbg !1273
  br label %61, !dbg !1274, !llvm.loop !1275

; <label>:79:                                     ; preds = %61
  %80 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1277
  call void @g_slist_free(%struct._GSList* %80), !dbg !1278
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 124), !dbg !1279
  ret void, !dbg !1280
}

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_key_compare(%struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #0 !dbg !1281 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1284, metadata !367), !dbg !1285
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1286, metadata !367), !dbg !1287
  %5 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1288
  %6 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %5, i32 0, i32 1, !dbg !1289
  %7 = load i8*, i8** %6, align 8, !dbg !1289
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1290
  %9 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %8, i32 0, i32 1, !dbg !1291
  %10 = load i8*, i8** %9, align 8, !dbg !1291
  %11 = call i32 @g_ascii_strcasecmp(i8* %7, i8* %10), !dbg !1292
  ret i32 %11, !dbg !1293
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare i8* @get_irssi_config() #2

declare i32 @settings_reread(i8*) #2

declare i32 @irssi_config_is_changed(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_save_fe(i8*) #0 !dbg !1294 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1295, metadata !367), !dbg !1296
  %3 = load i8*, i8** %2, align 8, !dbg !1297
  %4 = call i32 @settings_save(i8* %3, i32 0), !dbg !1299
  %5 = icmp ne i32 %4, 0, !dbg !1299
  br i1 %5, label %6, label %8, !dbg !1300

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !1301
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 212, i8* %7), !dbg !1303
  br label %8, !dbg !1304

; <label>:8:                                      ; preds = %6, %1
  ret void, !dbg !1305
}

declare i8* @format_get_text(i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) #2

declare void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @settings_save_confirm(i8*, i8*) #0 !dbg !1306 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1309, metadata !367), !dbg !1310
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1311, metadata !367), !dbg !1312
  %5 = load i8*, i8** %3, align 8, !dbg !1313
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !1313
  %7 = load i8, i8* %6, align 1, !dbg !1313
  %8 = zext i8 %7 to i32, !dbg !1315
  %9 = call i32 @toupper(i32 %8) #7, !dbg !1316
  %10 = icmp eq i32 %9, 89, !dbg !1317
  br i1 %10, label %11, label %13, !dbg !1318

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1319
  call void @settings_save_fe(i8* %12), !dbg !1320
  br label %13, !dbg !1320

; <label>:13:                                     ; preds = %11, %2
  %14 = load i8*, i8** %4, align 8, !dbg !1321
  call void @g_free(i8* %14), !dbg !1322
  ret void, !dbg !1323
}

declare i32 @settings_save(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

declare void @printtext(i8*, i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @settings_clean_confirm(i8*) #0 !dbg !1324 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1325, metadata !367), !dbg !1326
  %3 = load i8*, i8** %2, align 8, !dbg !1327
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1327
  %5 = load i8, i8* %4, align 1, !dbg !1327
  %6 = zext i8 %5 to i32, !dbg !1329
  %7 = call i32 @toupper(i32 %6) #7, !dbg !1330
  %8 = icmp eq i32 %7, 89, !dbg !1331
  br i1 %8, label %9, label %10, !dbg !1332

; <label>:9:                                      ; preds = %1
  call void @settings_clean_invalid(), !dbg !1333
  br label %10, !dbg !1333

; <label>:10:                                     ; preds = %9, %1
  ret void, !dbg !1334
}

declare void @settings_clean_invalid() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!358, !359}
!llvm.ident = !{!360}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !331)
!1 = !DIFile(filename: "line242-fe-settings.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !14, !45, !287, !302, !323}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "SETTING_TYPE_STRING", value: 0)
!7 = !DIEnumerator(name: "SETTING_TYPE_INT", value: 1)
!8 = !DIEnumerator(name: "SETTING_TYPE_BOOLEAN", value: 2)
!9 = !DIEnumerator(name: "SETTING_TYPE_TIME", value: 3)
!10 = !DIEnumerator(name: "SETTING_TYPE_LEVEL", value: 4)
!11 = !DIEnumerator(name: "SETTING_TYPE_SIZE", value: 5)
!12 = !DIEnumerator(name: "SETTING_TYPE_CHOICE", value: 6)
!13 = !DIEnumerator(name: "SETTING_TYPE_ANY", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 10, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!17 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!18 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!19 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!20 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!21 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!22 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!23 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!24 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!25 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!26 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!27 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!28 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!29 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!30 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!31 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!32 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!33 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!34 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!35 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!36 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!37 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!38 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!39 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!40 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!41 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!42 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!43 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!44 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 3, size: 32, align: 32, elements: !47)
!46 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!48 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!49 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!50 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!51 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!52 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!53 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!54 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!55 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!56 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!57 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!58 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!59 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!60 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!61 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!62 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!63 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!64 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!65 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!66 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!67 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!68 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!69 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!77 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!78 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!79 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!80 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!81 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!82 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!83 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!84 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!85 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!86 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!87 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!88 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!89 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!90 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!91 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!92 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!93 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!94 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!95 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!96 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!97 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!98 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!99 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!100 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!101 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!102 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!103 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!104 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!105 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!106 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!107 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!108 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!109 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!110 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!111 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!112 = !DIEnumerator(name: "TXT_PART", value: 64)
!113 = !DIEnumerator(name: "TXT_KICK", value: 65)
!114 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!115 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!116 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!117 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!118 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!119 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!120 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!121 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!122 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!123 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!124 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!125 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!126 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!127 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!128 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!129 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!130 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!131 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!132 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!133 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!134 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!135 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!136 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!137 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!138 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!139 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!140 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!141 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!142 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!143 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!144 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!145 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!146 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!147 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!148 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!149 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!150 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!151 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!152 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!153 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!154 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!155 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!156 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!157 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!158 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!159 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!160 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!161 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!162 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!163 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!164 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!165 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!166 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!167 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!168 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!169 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!170 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!171 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!172 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!173 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!174 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!175 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!176 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!177 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!178 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!179 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!180 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!181 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!182 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!183 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!184 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!185 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!186 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!187 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!188 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!189 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!190 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!191 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!192 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!193 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!194 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!195 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!196 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!197 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!198 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!199 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!200 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!201 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!202 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!203 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!204 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!205 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!206 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!207 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!208 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!209 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!210 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!211 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!212 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!213 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!214 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!215 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!216 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!217 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!218 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!219 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!220 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!221 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!222 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!223 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!224 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!225 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!226 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!227 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!228 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!229 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!230 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!231 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!232 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!233 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!234 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!235 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!236 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!237 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!238 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!239 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!240 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!241 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!242 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!243 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!244 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!245 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!246 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!247 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!248 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!249 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!250 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!251 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!252 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!253 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!254 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!255 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!256 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!257 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!258 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!259 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!260 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!261 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!262 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!263 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!264 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!265 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!266 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!267 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!268 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!269 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!270 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!271 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!272 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!273 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!274 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!275 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!276 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!277 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!278 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!279 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!280 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!281 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!282 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!283 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!284 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!285 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!286 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !288, line: 46, size: 32, align: 32, elements: !289)
!288 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!290 = !DIEnumerator(name: "_ISupper", value: 256)
!291 = !DIEnumerator(name: "_ISlower", value: 512)
!292 = !DIEnumerator(name: "_ISalpha", value: 1024)
!293 = !DIEnumerator(name: "_ISdigit", value: 2048)
!294 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!295 = !DIEnumerator(name: "_ISspace", value: 8192)
!296 = !DIEnumerator(name: "_ISprint", value: 16384)
!297 = !DIEnumerator(name: "_ISgraph", value: 32768)
!298 = !DIEnumerator(name: "_ISblank", value: 1)
!299 = !DIEnumerator(name: "_IScntrl", value: 2)
!300 = !DIEnumerator(name: "_ISpunct", value: 4)
!301 = !DIEnumerator(name: "_ISalnum", value: 8)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !303, line: 25, size: 32, align: 32, elements: !304)
!303 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!305 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!306 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!307 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!308 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!309 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!310 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!311 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!312 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!313 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!314 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!315 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!316 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!317 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!318 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!319 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!320 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!321 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!322 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !324, line: 4, size: 32, align: 32, elements: !325)
!324 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!325 = !{!326, !327, !328, !329, !330}
!326 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!327 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!328 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!329 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!330 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!331 = !{!332, !339, !340, !341, !342, !343, !345, !347, !350, !352}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !333, line: 9, baseType: !334)
!333 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337, !337, !337, !337, !337, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!340 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!341 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!342 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !344, line: 77, baseType: !339)
!344 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !344, line: 48, baseType: !346)
!346 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !344, line: 46, baseType: !349)
!349 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !344, line: 80, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !357, !357}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !344, line: 49, baseType: !340)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !344, line: 78, baseType: !337)
!358 = !{i32 2, !"Dwarf Version", i32 4}
!359 = !{i32 2, !"Debug Info Version", i32 3}
!360 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!361 = distinct !DISubprogram(name: "fe_settings_set_print", scope: !362, file: !362, line: 44, type: !363, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!362 = !DIFile(filename: "fe-settings.c", directory: "/home/lichi/Desktop/irssi/task1")
!363 = !DISubroutineType(types: !364)
!364 = !{null, !350}
!365 = !{}
!366 = !DILocalVariable(name: "key", arg: 1, scope: !361, file: !362, line: 44, type: !350)
!367 = !DIExpression()
!368 = !DILocation(line: 44, column: 40, scope: !361)
!369 = !DILocation(line: 46, column: 32, scope: !361)
!370 = !DILocation(line: 46, column: 12, scope: !361)
!371 = !DILocation(line: 46, column: 2, scope: !372)
!372 = !DILexicalBlockFile(scope: !361, file: !362, discriminator: 1)
!373 = !DILocation(line: 47, column: 1, scope: !361)
!374 = distinct !DISubprogram(name: "set_print", scope: !362, file: !362, line: 34, type: !375, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETTINGS_REC", file: !4, line: 31, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 21, size: 512, align: 64, elements: !380)
!380 = !{!381, !382, !384, !385, !386, !388, !396}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !379, file: !4, line: 22, baseType: !340, size: 32, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !379, file: !4, line: 24, baseType: !383, size: 64, align: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !379, file: !4, line: 25, baseType: !383, size: 64, align: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !379, file: !4, line: 26, baseType: !383, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !379, file: !4, line: 28, baseType: !387, size: 32, align: 32, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingType", file: !4, line: 13, baseType: !3)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !379, file: !4, line: 29, baseType: !389, size: 128, align: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingValue", file: !4, line: 19, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 15, size: 128, align: 64, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !390, file: !4, line: 16, baseType: !383, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !390, file: !4, line: 17, baseType: !340, size: 32, align: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !390, file: !4, line: 18, baseType: !395, size: 1, align: 32, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!395 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "choices", scope: !379, file: !4, line: 30, baseType: !397, size: 64, align: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!398 = !DILocalVariable(name: "rec", arg: 1, scope: !374, file: !362, line: 34, type: !377)
!399 = !DILocation(line: 34, column: 37, scope: !374)
!400 = !DILocalVariable(name: "value", scope: !374, file: !362, line: 36, type: !383)
!401 = !DILocation(line: 36, column: 8, scope: !374)
!402 = !DILocation(line: 38, column: 29, scope: !374)
!403 = !DILocation(line: 38, column: 10, scope: !374)
!404 = !DILocation(line: 38, column: 8, scope: !374)
!405 = !DILocation(line: 39, column: 38, scope: !374)
!406 = !DILocation(line: 39, column: 43, scope: !374)
!407 = !DILocation(line: 39, column: 48, scope: !374)
!408 = !DILocation(line: 39, column: 2, scope: !374)
!409 = !DILocation(line: 41, column: 9, scope: !374)
!410 = !DILocation(line: 41, column: 2, scope: !374)
!411 = !DILocation(line: 42, column: 1, scope: !374)
!412 = distinct !DISubprogram(name: "fe_settings_init", scope: !362, file: !362, line: 403, type: !413, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!413 = !DISubroutineType(types: !414)
!414 = !{null}
!415 = !DILocation(line: 405, column: 2, scope: !412)
!416 = !DILocation(line: 406, column: 2, scope: !412)
!417 = !DILocation(line: 407, column: 2, scope: !412)
!418 = !DILocation(line: 408, column: 2, scope: !412)
!419 = !DILocation(line: 409, column: 2, scope: !412)
!420 = !DILocation(line: 410, column: 2, scope: !412)
!421 = !DILocation(line: 411, column: 2, scope: !412)
!422 = !DILocation(line: 413, column: 9, scope: !412)
!423 = !DILocation(line: 414, column: 1, scope: !412)
!424 = distinct !DISubprogram(name: "cmd_set", scope: !362, file: !362, line: 127, type: !425, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !383}
!427 = !DILocalVariable(name: "data", arg: 1, scope: !424, file: !362, line: 127, type: !383)
!428 = !DILocation(line: 127, column: 27, scope: !424)
!429 = !DILocalVariable(name: "optlist", scope: !424, file: !362, line: 129, type: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !432, line: 37, baseType: !433)
!432 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !432, line: 37, flags: DIFlagFwdDecl)
!434 = !DILocation(line: 129, column: 21, scope: !424)
!435 = !DILocalVariable(name: "key", scope: !424, file: !362, line: 130, type: !383)
!436 = !DILocation(line: 130, column: 8, scope: !424)
!437 = !DILocalVariable(name: "value", scope: !424, file: !362, line: 130, type: !383)
!438 = !DILocation(line: 130, column: 14, scope: !424)
!439 = !DILocalVariable(name: "free_arg", scope: !424, file: !362, line: 131, type: !339)
!440 = !DILocation(line: 131, column: 8, scope: !424)
!441 = !DILocalVariable(name: "clear", scope: !424, file: !362, line: 132, type: !340)
!442 = !DILocation(line: 132, column: 6, scope: !424)
!443 = !DILocalVariable(name: "set_default", scope: !424, file: !362, line: 132, type: !340)
!444 = !DILocation(line: 132, column: 13, scope: !424)
!445 = !DILocalVariable(name: "rec", scope: !424, file: !362, line: 133, type: !377)
!446 = !DILocation(line: 133, column: 16, scope: !424)
!447 = !DILocation(line: 135, column: 22, scope: !448)
!448 = distinct !DILexicalBlock(scope: !424, file: !362, line: 135, column: 6)
!449 = !DILocation(line: 135, column: 7, scope: !448)
!450 = !DILocation(line: 135, column: 6, scope: !424)
!451 = !DILocation(line: 138, column: 3, scope: !448)
!452 = !DILocation(line: 140, column: 30, scope: !424)
!453 = !DILocation(line: 140, column: 10, scope: !424)
!454 = !DILocation(line: 140, column: 48, scope: !424)
!455 = !DILocation(line: 140, column: 8, scope: !424)
!456 = !DILocation(line: 141, column: 36, scope: !424)
!457 = !DILocation(line: 141, column: 16, scope: !424)
!458 = !DILocation(line: 141, column: 56, scope: !424)
!459 = !DILocation(line: 141, column: 14, scope: !424)
!460 = !DILocation(line: 143, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !424, file: !362, line: 143, column: 6)
!462 = !DILocation(line: 143, column: 6, scope: !461)
!463 = !DILocation(line: 143, column: 11, scope: !461)
!464 = !DILocation(line: 143, column: 6, scope: !424)
!465 = !DILocation(line: 144, column: 23, scope: !461)
!466 = !DILocation(line: 144, column: 9, scope: !461)
!467 = !DILocation(line: 144, column: 3, scope: !461)
!468 = !DILocation(line: 146, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !424, file: !362, line: 146, column: 6)
!470 = !DILocation(line: 146, column: 14, scope: !469)
!471 = !DILocation(line: 146, column: 17, scope: !472)
!472 = !DILexicalBlockFile(scope: !469, file: !362, discriminator: 1)
!473 = !DILocation(line: 146, column: 29, scope: !472)
!474 = !DILocation(line: 146, column: 33, scope: !475)
!475 = !DILexicalBlockFile(scope: !469, file: !362, discriminator: 2)
!476 = !DILocation(line: 146, column: 32, scope: !475)
!477 = !DILocation(line: 146, column: 39, scope: !475)
!478 = !DILocation(line: 146, column: 6, scope: !475)
!479 = !DILocation(line: 147, column: 21, scope: !469)
!480 = !DILocation(line: 147, column: 3, scope: !469)
!481 = !DILocation(line: 149, column: 29, scope: !482)
!482 = distinct !DILexicalBlock(scope: !469, file: !362, line: 148, column: 7)
!483 = !DILocation(line: 149, column: 9, scope: !482)
!484 = !DILocation(line: 149, column: 7, scope: !482)
!485 = !DILocation(line: 150, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !362, line: 150, column: 7)
!487 = !DILocation(line: 150, column: 11, scope: !486)
!488 = !DILocation(line: 150, column: 7, scope: !482)
!489 = !DILocation(line: 152, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !362, line: 150, column: 19)
!491 = !DILocation(line: 152, column: 17, scope: !490)
!492 = !DILocation(line: 152, column: 4, scope: !490)
!493 = !DILocation(line: 154, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !362, line: 154, column: 9)
!495 = distinct !DILexicalBlock(scope: !490, file: !362, line: 152, column: 23)
!496 = !DILocation(line: 154, column: 9, scope: !495)
!497 = !DILocation(line: 155, column: 24, scope: !494)
!498 = !DILocation(line: 155, column: 6, scope: !494)
!499 = !DILocation(line: 156, column: 14, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !362, line: 156, column: 14)
!501 = !DILocation(line: 156, column: 14, scope: !494)
!502 = !DILocation(line: 157, column: 24, scope: !500)
!503 = !DILocation(line: 157, column: 29, scope: !500)
!504 = !DILocation(line: 157, column: 34, scope: !500)
!505 = !DILocation(line: 157, column: 48, scope: !500)
!506 = !DILocation(line: 157, column: 6, scope: !500)
!507 = !DILocation(line: 159, column: 18, scope: !500)
!508 = !DILocation(line: 159, column: 23, scope: !500)
!509 = !DILocation(line: 159, column: 6, scope: !500)
!510 = !DILocation(line: 160, column: 5, scope: !495)
!511 = !DILocation(line: 162, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !495, file: !362, line: 162, column: 9)
!513 = !DILocation(line: 162, column: 9, scope: !495)
!514 = !DILocation(line: 163, column: 23, scope: !512)
!515 = !DILocation(line: 163, column: 6, scope: !512)
!516 = !DILocation(line: 164, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !512, file: !362, line: 164, column: 14)
!518 = !DILocation(line: 164, column: 14, scope: !512)
!519 = !DILocation(line: 165, column: 23, scope: !517)
!520 = !DILocation(line: 165, column: 28, scope: !517)
!521 = !DILocation(line: 165, column: 33, scope: !517)
!522 = !DILocation(line: 165, column: 47, scope: !517)
!523 = !DILocation(line: 165, column: 6, scope: !517)
!524 = !DILocation(line: 167, column: 14, scope: !517)
!525 = !DILocation(line: 167, column: 19, scope: !517)
!526 = !DILocation(line: 167, column: 6, scope: !517)
!527 = !DILocation(line: 168, column: 5, scope: !495)
!528 = !DILocation(line: 170, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !495, file: !362, line: 170, column: 9)
!530 = !DILocation(line: 170, column: 15, scope: !529)
!531 = !DILocation(line: 170, column: 18, scope: !532)
!532 = !DILexicalBlockFile(scope: !529, file: !362, discriminator: 1)
!533 = !DILocation(line: 170, column: 9, scope: !532)
!534 = !DILocation(line: 171, column: 26, scope: !529)
!535 = !DILocation(line: 171, column: 44, scope: !529)
!536 = !DILocation(line: 171, column: 49, scope: !529)
!537 = !DILocation(line: 171, column: 63, scope: !529)
!538 = !DILocation(line: 171, column: 31, scope: !529)
!539 = !DILocation(line: 171, column: 36, scope: !529)
!540 = !DILocation(line: 171, column: 6, scope: !529)
!541 = !DILocation(line: 173, column: 17, scope: !529)
!542 = !DILocation(line: 173, column: 22, scope: !529)
!543 = !DILocation(line: 173, column: 6, scope: !529)
!544 = !DILocation(line: 174, column: 5, scope: !495)
!545 = !DILocation(line: 176, column: 22, scope: !495)
!546 = !DILocation(line: 176, column: 27, scope: !495)
!547 = !DILocation(line: 176, column: 27, scope: !548)
!548 = !DILexicalBlockFile(scope: !495, file: !362, discriminator: 1)
!549 = !DILocation(line: 177, column: 8, scope: !495)
!550 = !DILocation(line: 177, column: 22, scope: !548)
!551 = !DILocation(line: 177, column: 27, scope: !548)
!552 = !DILocation(line: 177, column: 41, scope: !548)
!553 = !DILocation(line: 177, column: 8, scope: !548)
!554 = !DILocation(line: 178, column: 8, scope: !495)
!555 = !DILocation(line: 177, column: 8, scope: !556)
!556 = !DILexicalBlockFile(scope: !495, file: !362, discriminator: 2)
!557 = !DILocation(line: 177, column: 8, scope: !558)
!558 = !DILexicalBlockFile(scope: !495, file: !362, discriminator: 3)
!559 = !DILocation(line: 176, column: 27, scope: !556)
!560 = !DILocation(line: 176, column: 27, scope: !558)
!561 = !DILocation(line: 176, column: 5, scope: !558)
!562 = !DILocation(line: 179, column: 5, scope: !495)
!563 = !DILocation(line: 181, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !495, file: !362, line: 181, column: 9)
!565 = !DILocation(line: 181, column: 33, scope: !564)
!566 = !DILocation(line: 181, column: 33, scope: !567)
!567 = !DILexicalBlockFile(scope: !564, file: !362, discriminator: 1)
!568 = !DILocation(line: 182, column: 14, scope: !564)
!569 = !DILocation(line: 182, column: 28, scope: !567)
!570 = !DILocation(line: 182, column: 33, scope: !567)
!571 = !DILocation(line: 182, column: 47, scope: !567)
!572 = !DILocation(line: 182, column: 14, scope: !567)
!573 = !DILocation(line: 182, column: 58, scope: !574)
!574 = !DILexicalBlockFile(scope: !564, file: !362, discriminator: 2)
!575 = !DILocation(line: 182, column: 14, scope: !574)
!576 = !DILocation(line: 182, column: 14, scope: !577)
!577 = !DILexicalBlockFile(scope: !564, file: !362, discriminator: 3)
!578 = !DILocation(line: 181, column: 33, scope: !574)
!579 = !DILocation(line: 181, column: 33, scope: !577)
!580 = !DILocation(line: 181, column: 10, scope: !577)
!581 = !DILocation(line: 181, column: 9, scope: !577)
!582 = !DILocation(line: 183, column: 6, scope: !564)
!583 = !DILocation(line: 184, column: 5, scope: !495)
!584 = !DILocation(line: 186, column: 29, scope: !585)
!585 = distinct !DILexicalBlock(scope: !495, file: !362, line: 186, column: 9)
!586 = !DILocation(line: 186, column: 34, scope: !585)
!587 = !DILocation(line: 186, column: 34, scope: !588)
!588 = !DILexicalBlockFile(scope: !585, file: !362, discriminator: 1)
!589 = !DILocation(line: 187, column: 8, scope: !585)
!590 = !DILocation(line: 187, column: 22, scope: !588)
!591 = !DILocation(line: 187, column: 27, scope: !588)
!592 = !DILocation(line: 187, column: 41, scope: !588)
!593 = !DILocation(line: 187, column: 8, scope: !588)
!594 = !DILocation(line: 187, column: 52, scope: !595)
!595 = !DILexicalBlockFile(scope: !585, file: !362, discriminator: 2)
!596 = !DILocation(line: 187, column: 8, scope: !595)
!597 = !DILocation(line: 187, column: 8, scope: !598)
!598 = !DILexicalBlockFile(scope: !585, file: !362, discriminator: 3)
!599 = !DILocation(line: 186, column: 34, scope: !595)
!600 = !DILocation(line: 186, column: 34, scope: !598)
!601 = !DILocation(line: 186, column: 10, scope: !598)
!602 = !DILocation(line: 186, column: 9, scope: !598)
!603 = !DILocation(line: 188, column: 6, scope: !585)
!604 = !DILocation(line: 189, column: 5, scope: !495)
!605 = !DILocation(line: 191, column: 28, scope: !606)
!606 = distinct !DILexicalBlock(scope: !495, file: !362, line: 191, column: 9)
!607 = !DILocation(line: 191, column: 33, scope: !606)
!608 = !DILocation(line: 191, column: 33, scope: !609)
!609 = !DILexicalBlockFile(scope: !606, file: !362, discriminator: 1)
!610 = !DILocation(line: 192, column: 14, scope: !606)
!611 = !DILocation(line: 192, column: 28, scope: !609)
!612 = !DILocation(line: 192, column: 33, scope: !609)
!613 = !DILocation(line: 192, column: 47, scope: !609)
!614 = !DILocation(line: 192, column: 14, scope: !609)
!615 = !DILocation(line: 192, column: 58, scope: !616)
!616 = !DILexicalBlockFile(scope: !606, file: !362, discriminator: 2)
!617 = !DILocation(line: 192, column: 14, scope: !616)
!618 = !DILocation(line: 192, column: 14, scope: !619)
!619 = !DILexicalBlockFile(scope: !606, file: !362, discriminator: 3)
!620 = !DILocation(line: 191, column: 33, scope: !616)
!621 = !DILocation(line: 191, column: 33, scope: !619)
!622 = !DILocation(line: 191, column: 10, scope: !619)
!623 = !DILocation(line: 191, column: 9, scope: !619)
!624 = !DILocation(line: 193, column: 6, scope: !606)
!625 = !DILocation(line: 194, column: 5, scope: !495)
!626 = !DILocation(line: 197, column: 5, scope: !495)
!627 = !DILocation(line: 199, column: 4, scope: !490)
!628 = !DILocation(line: 200, column: 41, scope: !490)
!629 = !DILocation(line: 200, column: 46, scope: !490)
!630 = !DILocation(line: 200, column: 4, scope: !490)
!631 = !DILocation(line: 201, column: 14, scope: !490)
!632 = !DILocation(line: 201, column: 4, scope: !490)
!633 = !DILocation(line: 202, column: 3, scope: !490)
!634 = !DILocation(line: 203, column: 44, scope: !486)
!635 = !DILocation(line: 203, column: 4, scope: !486)
!636 = !DILocation(line: 206, column: 18, scope: !424)
!637 = !DILocation(line: 206, column: 2, scope: !424)
!638 = !DILocation(line: 207, column: 1, scope: !424)
!639 = !DILocation(line: 207, column: 1, scope: !640)
!640 = !DILexicalBlockFile(scope: !424, file: !362, discriminator: 1)
!641 = distinct !DISubprogram(name: "cmd_toggle", scope: !362, file: !362, line: 210, type: !363, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!642 = !DILocalVariable(name: "data", arg: 1, scope: !641, file: !362, line: 210, type: !350)
!643 = !DILocation(line: 210, column: 36, scope: !641)
!644 = !DILocalVariable(name: "key", scope: !641, file: !362, line: 212, type: !383)
!645 = !DILocation(line: 212, column: 8, scope: !641)
!646 = !DILocalVariable(name: "value", scope: !641, file: !362, line: 212, type: !383)
!647 = !DILocation(line: 212, column: 14, scope: !641)
!648 = !DILocalVariable(name: "free_arg", scope: !641, file: !362, line: 213, type: !339)
!649 = !DILocation(line: 213, column: 8, scope: !641)
!650 = !DILocalVariable(name: "type", scope: !641, file: !362, line: 214, type: !340)
!651 = !DILocation(line: 214, column: 6, scope: !641)
!652 = !DILocation(line: 216, column: 22, scope: !653)
!653 = distinct !DILexicalBlock(scope: !641, file: !362, line: 216, column: 6)
!654 = !DILocation(line: 216, column: 7, scope: !653)
!655 = !DILocation(line: 216, column: 6, scope: !641)
!656 = !DILocation(line: 217, column: 3, scope: !653)
!657 = !DILocation(line: 219, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !641, file: !362, line: 219, column: 6)
!659 = !DILocation(line: 219, column: 6, scope: !658)
!660 = !DILocation(line: 219, column: 11, scope: !658)
!661 = !DILocation(line: 219, column: 6, scope: !641)
!662 = !DILocation(line: 220, column: 3, scope: !658)
!663 = distinct !{!663, !662}
!664 = !DILocation(line: 220, column: 24, scope: !665)
!665 = !DILexicalBlockFile(scope: !666, file: !362, discriminator: 1)
!666 = distinct !DILexicalBlock(scope: !658, file: !362, line: 220, column: 6)
!667 = !DILocation(line: 220, column: 8, scope: !665)
!668 = !DILocation(line: 220, column: 35, scope: !665)
!669 = distinct !{!669, !670}
!670 = !DILocation(line: 220, column: 35, scope: !666)
!671 = !DILocation(line: 220, column: 40, scope: !672)
!672 = !DILexicalBlockFile(scope: !673, file: !362, discriminator: 2)
!673 = distinct !DILexicalBlock(scope: !666, file: !362, line: 220, column: 38)
!674 = !DILocation(line: 220, column: 122, scope: !675)
!675 = !DILexicalBlockFile(scope: !672, file: !362, discriminator: 5)
!676 = !DILocation(line: 220, column: 137, scope: !672)
!677 = !DILocation(line: 220, column: 158, scope: !678)
!678 = !DILexicalBlockFile(scope: !666, file: !362, discriminator: 3)
!679 = !DILocation(line: 220, column: 158, scope: !680)
!680 = !DILexicalBlockFile(scope: !666, file: !362, discriminator: 4)
!681 = !DILocation(line: 222, column: 27, scope: !641)
!682 = !DILocation(line: 222, column: 9, scope: !641)
!683 = !DILocation(line: 222, column: 7, scope: !641)
!684 = !DILocation(line: 223, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !641, file: !362, line: 223, column: 6)
!686 = !DILocation(line: 223, column: 11, scope: !685)
!687 = !DILocation(line: 223, column: 6, scope: !641)
!688 = !DILocation(line: 224, column: 43, scope: !685)
!689 = !DILocation(line: 224, column: 3, scope: !685)
!690 = !DILocation(line: 225, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !362, line: 225, column: 11)
!692 = !DILocation(line: 225, column: 16, scope: !691)
!693 = !DILocation(line: 225, column: 11, scope: !685)
!694 = !DILocation(line: 226, column: 47, scope: !691)
!695 = !DILocation(line: 226, column: 3, scope: !691)
!696 = !DILocation(line: 228, column: 15, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !362, line: 227, column: 7)
!698 = !DILocation(line: 228, column: 21, scope: !697)
!699 = !DILocation(line: 228, column: 20, scope: !697)
!700 = !DILocation(line: 228, column: 27, scope: !697)
!701 = !DILocation(line: 228, column: 37, scope: !702)
!702 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 1)
!703 = !DILocation(line: 228, column: 20, scope: !702)
!704 = !DILocation(line: 228, column: 20, scope: !705)
!705 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 2)
!706 = !DILocation(line: 228, column: 20, scope: !707)
!707 = !DILexicalBlockFile(scope: !697, file: !362, discriminator: 3)
!708 = !DILocation(line: 228, column: 3, scope: !707)
!709 = !DILocation(line: 229, column: 33, scope: !697)
!710 = !DILocation(line: 229, column: 13, scope: !697)
!711 = !DILocation(line: 229, column: 3, scope: !702)
!712 = !DILocation(line: 230, column: 3, scope: !697)
!713 = !DILocation(line: 233, column: 18, scope: !641)
!714 = !DILocation(line: 233, column: 2, scope: !641)
!715 = !DILocation(line: 234, column: 1, scope: !641)
!716 = !DILocation(line: 234, column: 1, scope: !717)
!717 = !DILexicalBlockFile(scope: !641, file: !362, discriminator: 1)
!718 = distinct !DISubprogram(name: "cmd_alias", scope: !362, file: !362, line: 292, type: !363, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!719 = !DILocalVariable(name: "data", arg: 1, scope: !718, file: !362, line: 292, type: !350)
!720 = !DILocation(line: 292, column: 35, scope: !718)
!721 = !DILocalVariable(name: "alias", scope: !718, file: !362, line: 294, type: !383)
!722 = !DILocation(line: 294, column: 8, scope: !718)
!723 = !DILocalVariable(name: "value", scope: !718, file: !362, line: 294, type: !383)
!724 = !DILocation(line: 294, column: 16, scope: !718)
!725 = !DILocalVariable(name: "free_arg", scope: !718, file: !362, line: 295, type: !339)
!726 = !DILocation(line: 295, column: 8, scope: !718)
!727 = !DILocation(line: 297, column: 2, scope: !718)
!728 = distinct !{!728, !727}
!729 = !DILocation(line: 297, column: 10, scope: !730)
!730 = !DILexicalBlockFile(scope: !731, file: !362, discriminator: 1)
!731 = distinct !DILexicalBlock(scope: !732, file: !362, line: 297, column: 10)
!732 = distinct !DILexicalBlock(scope: !718, file: !362, line: 297, column: 4)
!733 = !DILocation(line: 297, column: 15, scope: !730)
!734 = !DILocation(line: 297, column: 5, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !362, discriminator: 2)
!736 = distinct !DILexicalBlock(scope: !731, file: !362, line: 297, column: 3)
!737 = !DILocation(line: 297, column: 14, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !362, discriminator: 3)
!739 = distinct !DILexicalBlock(scope: !731, file: !362, line: 297, column: 12)
!740 = !DILocation(line: 297, column: 99, scope: !738)
!741 = !DILocation(line: 297, column: 110, scope: !742)
!742 = !DILexicalBlockFile(scope: !732, file: !362, discriminator: 4)
!743 = !DILocation(line: 299, column: 22, scope: !744)
!744 = distinct !DILexicalBlock(scope: !718, file: !362, line: 299, column: 6)
!745 = !DILocation(line: 299, column: 7, scope: !744)
!746 = !DILocation(line: 299, column: 6, scope: !718)
!747 = !DILocation(line: 300, column: 3, scope: !744)
!748 = !DILocation(line: 302, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !718, file: !362, line: 302, column: 6)
!750 = !DILocation(line: 302, column: 6, scope: !749)
!751 = !DILocation(line: 302, column: 13, scope: !749)
!752 = !DILocation(line: 302, column: 6, scope: !718)
!753 = !DILocation(line: 303, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !362, line: 303, column: 7)
!755 = distinct !DILexicalBlock(scope: !749, file: !362, line: 302, column: 21)
!756 = !DILocation(line: 303, column: 16, scope: !754)
!757 = !DILocation(line: 303, column: 7, scope: !755)
!758 = !DILocation(line: 303, column: 38, scope: !759)
!759 = !DILexicalBlockFile(scope: !754, file: !362, discriminator: 1)
!760 = !DILocation(line: 303, column: 43, scope: !759)
!761 = !DILocation(line: 303, column: 25, scope: !759)
!762 = !DILocation(line: 304, column: 2, scope: !755)
!763 = !DILocation(line: 304, column: 14, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !362, discriminator: 1)
!765 = distinct !DILexicalBlock(scope: !749, file: !362, line: 304, column: 13)
!766 = !DILocation(line: 304, column: 13, scope: !764)
!767 = !DILocation(line: 304, column: 20, scope: !764)
!768 = !DILocation(line: 304, column: 28, scope: !764)
!769 = !DILocation(line: 304, column: 32, scope: !770)
!770 = !DILexicalBlockFile(scope: !765, file: !362, discriminator: 2)
!771 = !DILocation(line: 304, column: 31, scope: !770)
!772 = !DILocation(line: 304, column: 38, scope: !770)
!773 = !DILocation(line: 304, column: 13, scope: !770)
!774 = !DILocation(line: 305, column: 16, scope: !765)
!775 = !DILocation(line: 305, column: 3, scope: !765)
!776 = !DILocation(line: 307, column: 44, scope: !777)
!777 = distinct !DILexicalBlock(scope: !765, file: !362, line: 306, column: 7)
!778 = !DILocation(line: 307, column: 3, scope: !777)
!779 = !DILocation(line: 308, column: 18, scope: !777)
!780 = !DILocation(line: 308, column: 41, scope: !777)
!781 = !DILocation(line: 308, column: 48, scope: !777)
!782 = !DILocation(line: 308, column: 3, scope: !777)
!783 = !DILocation(line: 309, column: 33, scope: !777)
!784 = !DILocation(line: 309, column: 40, scope: !777)
!785 = !DILocation(line: 309, column: 3, scope: !777)
!786 = !DILocation(line: 311, column: 25, scope: !718)
!787 = !DILocation(line: 311, column: 9, scope: !718)
!788 = !DILocation(line: 312, column: 1, scope: !718)
!789 = !DILocation(line: 312, column: 1, scope: !790)
!790 = !DILexicalBlockFile(scope: !718, file: !362, discriminator: 1)
!791 = distinct !DISubprogram(name: "cmd_unalias", scope: !362, file: !362, line: 315, type: !363, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!792 = !DILocalVariable(name: "data", arg: 1, scope: !791, file: !362, line: 315, type: !350)
!793 = !DILocation(line: 315, column: 37, scope: !791)
!794 = !DILocalVariable(name: "alias", scope: !791, file: !362, line: 317, type: !383)
!795 = !DILocation(line: 317, column: 8, scope: !791)
!796 = !DILocalVariable(name: "free_arg", scope: !791, file: !362, line: 318, type: !339)
!797 = !DILocation(line: 318, column: 8, scope: !791)
!798 = !DILocation(line: 320, column: 2, scope: !791)
!799 = distinct !{!799, !798}
!800 = !DILocation(line: 320, column: 10, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !362, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !803, file: !362, line: 320, column: 10)
!803 = distinct !DILexicalBlock(scope: !791, file: !362, line: 320, column: 4)
!804 = !DILocation(line: 320, column: 15, scope: !801)
!805 = !DILocation(line: 320, column: 5, scope: !806)
!806 = !DILexicalBlockFile(scope: !807, file: !362, discriminator: 2)
!807 = distinct !DILexicalBlock(scope: !802, file: !362, line: 320, column: 3)
!808 = !DILocation(line: 320, column: 14, scope: !809)
!809 = !DILexicalBlockFile(scope: !810, file: !362, discriminator: 3)
!810 = distinct !DILexicalBlock(scope: !802, file: !362, line: 320, column: 12)
!811 = !DILocation(line: 320, column: 99, scope: !809)
!812 = !DILocation(line: 320, column: 110, scope: !813)
!813 = !DILexicalBlockFile(scope: !803, file: !362, discriminator: 4)
!814 = !DILocation(line: 322, column: 22, scope: !815)
!815 = distinct !DILexicalBlock(scope: !791, file: !362, line: 322, column: 6)
!816 = !DILocation(line: 322, column: 7, scope: !815)
!817 = !DILocation(line: 322, column: 6, scope: !791)
!818 = !DILocation(line: 323, column: 3, scope: !815)
!819 = !DILocation(line: 324, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !791, file: !362, line: 324, column: 6)
!821 = !DILocation(line: 324, column: 6, scope: !820)
!822 = !DILocation(line: 324, column: 13, scope: !820)
!823 = !DILocation(line: 324, column: 6, scope: !791)
!824 = !DILocation(line: 324, column: 22, scope: !825)
!825 = !DILexicalBlockFile(scope: !820, file: !362, discriminator: 1)
!826 = distinct !{!826, !827}
!827 = !DILocation(line: 324, column: 22, scope: !820)
!828 = !DILocation(line: 324, column: 43, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !362, discriminator: 2)
!830 = distinct !DILexicalBlock(scope: !820, file: !362, line: 324, column: 25)
!831 = !DILocation(line: 324, column: 27, scope: !829)
!832 = !DILocation(line: 324, column: 54, scope: !829)
!833 = distinct !{!833, !834}
!834 = !DILocation(line: 324, column: 54, scope: !830)
!835 = !DILocation(line: 324, column: 59, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 3)
!837 = distinct !DILexicalBlock(scope: !830, file: !362, line: 324, column: 57)
!838 = !DILocation(line: 324, column: 141, scope: !839)
!839 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 6)
!840 = !DILocation(line: 324, column: 156, scope: !836)
!841 = !DILocation(line: 324, column: 177, scope: !842)
!842 = !DILexicalBlockFile(scope: !830, file: !362, discriminator: 4)
!843 = !DILocation(line: 324, column: 177, scope: !844)
!844 = !DILexicalBlockFile(scope: !830, file: !362, discriminator: 5)
!845 = !DILocation(line: 326, column: 15, scope: !791)
!846 = !DILocation(line: 326, column: 2, scope: !791)
!847 = !DILocation(line: 327, column: 25, scope: !791)
!848 = !DILocation(line: 327, column: 9, scope: !791)
!849 = !DILocation(line: 328, column: 1, scope: !791)
!850 = !DILocation(line: 328, column: 1, scope: !851)
!851 = !DILexicalBlockFile(scope: !791, file: !362, discriminator: 1)
!852 = distinct !DISubprogram(name: "cmd_reload", scope: !362, file: !362, line: 331, type: !363, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!853 = !DILocalVariable(name: "data", arg: 1, scope: !852, file: !362, line: 331, type: !350)
!854 = !DILocation(line: 331, column: 36, scope: !852)
!855 = !DILocalVariable(name: "fname", scope: !852, file: !362, line: 333, type: !350)
!856 = !DILocation(line: 333, column: 14, scope: !852)
!857 = !DILocation(line: 335, column: 11, scope: !852)
!858 = !DILocation(line: 335, column: 10, scope: !852)
!859 = !DILocation(line: 335, column: 16, scope: !852)
!860 = !DILocation(line: 335, column: 26, scope: !861)
!861 = !DILexicalBlockFile(scope: !852, file: !362, discriminator: 1)
!862 = !DILocation(line: 335, column: 10, scope: !861)
!863 = !DILocation(line: 335, column: 47, scope: !864)
!864 = !DILexicalBlockFile(scope: !852, file: !362, discriminator: 2)
!865 = !DILocation(line: 335, column: 10, scope: !864)
!866 = !DILocation(line: 335, column: 10, scope: !867)
!867 = !DILexicalBlockFile(scope: !852, file: !362, discriminator: 3)
!868 = !DILocation(line: 335, column: 8, scope: !867)
!869 = !DILocation(line: 337, column: 22, scope: !870)
!870 = distinct !DILexicalBlock(scope: !852, file: !362, line: 337, column: 6)
!871 = !DILocation(line: 337, column: 6, scope: !870)
!872 = !DILocation(line: 337, column: 6, scope: !852)
!873 = !DILocation(line: 338, column: 48, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !362, line: 337, column: 30)
!875 = !DILocation(line: 338, column: 3, scope: !874)
!876 = !DILocation(line: 340, column: 2, scope: !874)
!877 = !DILocation(line: 341, column: 1, scope: !852)
!878 = distinct !DISubprogram(name: "cmd_save", scope: !362, file: !362, line: 359, type: !363, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!879 = !DILocalVariable(name: "data", arg: 1, scope: !878, file: !362, line: 359, type: !350)
!880 = !DILocation(line: 359, column: 34, scope: !878)
!881 = !DILocalVariable(name: "optlist", scope: !878, file: !362, line: 361, type: !430)
!882 = !DILocation(line: 361, column: 21, scope: !878)
!883 = !DILocalVariable(name: "format", scope: !878, file: !362, line: 362, type: !383)
!884 = !DILocation(line: 362, column: 8, scope: !878)
!885 = !DILocalVariable(name: "fname", scope: !878, file: !362, line: 362, type: !383)
!886 = !DILocation(line: 362, column: 17, scope: !878)
!887 = !DILocalVariable(name: "free_arg", scope: !878, file: !362, line: 363, type: !339)
!888 = !DILocation(line: 363, column: 15, scope: !878)
!889 = !DILocation(line: 365, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !362, line: 365, column: 6)
!891 = !DILocation(line: 365, column: 7, scope: !890)
!892 = !DILocation(line: 365, column: 6, scope: !878)
!893 = !DILocation(line: 367, column: 3, scope: !890)
!894 = !DILocation(line: 369, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !878, file: !362, line: 369, column: 6)
!896 = !DILocation(line: 369, column: 6, scope: !895)
!897 = !DILocation(line: 369, column: 13, scope: !895)
!898 = !DILocation(line: 369, column: 6, scope: !878)
!899 = !DILocation(line: 370, column: 11, scope: !895)
!900 = !DILocation(line: 370, column: 23, scope: !895)
!901 = !DILocation(line: 370, column: 9, scope: !895)
!902 = !DILocation(line: 370, column: 3, scope: !895)
!903 = !DILocation(line: 372, column: 31, scope: !904)
!904 = distinct !DILexicalBlock(scope: !878, file: !362, line: 372, column: 6)
!905 = !DILocation(line: 372, column: 7, scope: !904)
!906 = !DILocation(line: 372, column: 6, scope: !878)
!907 = !DILocation(line: 373, column: 20, scope: !904)
!908 = !DILocation(line: 373, column: 3, scope: !904)
!909 = !DILocation(line: 376, column: 48, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !362, line: 374, column: 7)
!911 = !DILocation(line: 376, column: 3, scope: !910)
!912 = !DILocation(line: 379, column: 12, scope: !910)
!913 = !DILocation(line: 379, column: 10, scope: !910)
!914 = !DILocation(line: 382, column: 6, scope: !910)
!915 = !DILocation(line: 382, column: 26, scope: !910)
!916 = !DILocation(line: 382, column: 17, scope: !910)
!917 = !DILocation(line: 381, column: 3, scope: !910)
!918 = !DILocation(line: 383, column: 10, scope: !910)
!919 = !DILocation(line: 383, column: 3, scope: !910)
!920 = !DILocation(line: 386, column: 18, scope: !878)
!921 = !DILocation(line: 386, column: 2, scope: !878)
!922 = !DILocation(line: 387, column: 1, scope: !878)
!923 = !DILocation(line: 387, column: 1, scope: !924)
!924 = !DILexicalBlockFile(scope: !878, file: !362, discriminator: 1)
!925 = distinct !DISubprogram(name: "sig_settings_errors", scope: !362, file: !362, line: 395, type: !363, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!926 = !DILocalVariable(name: "msg", arg: 1, scope: !925, file: !362, line: 395, type: !350)
!927 = !DILocation(line: 395, column: 45, scope: !925)
!928 = !DILocation(line: 397, column: 58, scope: !925)
!929 = !DILocation(line: 397, column: 9, scope: !925)
!930 = !DILocation(line: 398, column: 2, scope: !925)
!931 = !DILocation(line: 401, column: 1, scope: !925)
!932 = distinct !DISubprogram(name: "fe_settings_deinit", scope: !362, file: !362, line: 416, type: !413, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!933 = !DILocation(line: 418, column: 2, scope: !932)
!934 = !DILocation(line: 419, column: 2, scope: !932)
!935 = !DILocation(line: 420, column: 2, scope: !932)
!936 = !DILocation(line: 421, column: 2, scope: !932)
!937 = !DILocation(line: 422, column: 2, scope: !932)
!938 = !DILocation(line: 423, column: 2, scope: !932)
!939 = !DILocation(line: 425, column: 2, scope: !932)
!940 = !DILocation(line: 426, column: 1, scope: !932)
!941 = distinct !DISubprogram(name: "set_print_pattern", scope: !362, file: !362, line: 49, type: !363, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!942 = !DILocalVariable(name: "pattern", arg: 1, scope: !941, file: !362, line: 49, type: !350)
!943 = !DILocation(line: 49, column: 43, scope: !941)
!944 = !DILocalVariable(name: "sets", scope: !941, file: !362, line: 51, type: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64, align: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !947, line: 37, baseType: !948)
!947 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !947, line: 39, size: 128, align: 64, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !948, file: !947, line: 41, baseType: !343, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !947, line: 42, baseType: !945, size: 64, align: 64, offset: 64)
!952 = !DILocation(line: 51, column: 10, scope: !941)
!953 = !DILocalVariable(name: "tmp", scope: !941, file: !362, line: 51, type: !945)
!954 = !DILocation(line: 51, column: 17, scope: !941)
!955 = !DILocalVariable(name: "last_section", scope: !941, file: !362, line: 52, type: !350)
!956 = !DILocation(line: 52, column: 14, scope: !941)
!957 = !DILocation(line: 54, column: 15, scope: !941)
!958 = !DILocation(line: 55, column: 9, scope: !941)
!959 = !DILocation(line: 55, column: 7, scope: !941)
!960 = !DILocation(line: 56, column: 13, scope: !961)
!961 = distinct !DILexicalBlock(scope: !941, file: !362, line: 56, column: 2)
!962 = !DILocation(line: 56, column: 11, scope: !961)
!963 = !DILocation(line: 56, column: 7, scope: !961)
!964 = !DILocation(line: 56, column: 19, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !362, discriminator: 1)
!966 = distinct !DILexicalBlock(scope: !961, file: !362, line: 56, column: 2)
!967 = !DILocation(line: 56, column: 23, scope: !965)
!968 = !DILocation(line: 56, column: 2, scope: !965)
!969 = !DILocalVariable(name: "rec", scope: !970, file: !362, line: 57, type: !377)
!970 = distinct !DILexicalBlock(scope: !966, file: !362, line: 56, column: 48)
!971 = !DILocation(line: 57, column: 17, scope: !970)
!972 = !DILocation(line: 57, column: 23, scope: !970)
!973 = !DILocation(line: 57, column: 28, scope: !970)
!974 = !DILocation(line: 59, column: 15, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !362, line: 59, column: 7)
!976 = !DILocation(line: 59, column: 20, scope: !975)
!977 = !DILocation(line: 59, column: 25, scope: !975)
!978 = !DILocation(line: 59, column: 7, scope: !975)
!979 = !DILocation(line: 59, column: 34, scope: !975)
!980 = !DILocation(line: 59, column: 7, scope: !970)
!981 = !DILocation(line: 60, column: 4, scope: !975)
!982 = !DILocation(line: 61, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !970, file: !362, line: 61, column: 7)
!984 = !DILocation(line: 61, column: 31, scope: !983)
!985 = !DILocation(line: 61, column: 36, scope: !983)
!986 = !DILocation(line: 61, column: 7, scope: !983)
!987 = !DILocation(line: 61, column: 45, scope: !983)
!988 = !DILocation(line: 61, column: 7, scope: !970)
!989 = !DILocation(line: 63, column: 41, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !362, line: 61, column: 51)
!991 = !DILocation(line: 63, column: 46, scope: !990)
!992 = !DILocation(line: 63, column: 4, scope: !990)
!993 = !DILocation(line: 65, column: 19, scope: !990)
!994 = !DILocation(line: 65, column: 24, scope: !990)
!995 = !DILocation(line: 65, column: 17, scope: !990)
!996 = !DILocation(line: 66, column: 3, scope: !990)
!997 = !DILocation(line: 67, column: 13, scope: !970)
!998 = !DILocation(line: 67, column: 3, scope: !970)
!999 = !DILocation(line: 68, column: 2, scope: !970)
!1000 = !DILocation(line: 56, column: 37, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !966, file: !362, discriminator: 2)
!1002 = !DILocation(line: 56, column: 42, scope: !1001)
!1003 = !DILocation(line: 56, column: 35, scope: !1001)
!1004 = !DILocation(line: 56, column: 2, scope: !1001)
!1005 = distinct !{!1005, !1006}
!1006 = !DILocation(line: 56, column: 2, scope: !941)
!1007 = !DILocation(line: 69, column: 15, scope: !941)
!1008 = !DILocation(line: 69, column: 2, scope: !941)
!1009 = !DILocation(line: 70, column: 1, scope: !941)
!1010 = distinct !DISubprogram(name: "set_boolean", scope: !362, file: !362, line: 72, type: !1011, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !350, !350}
!1013 = !DILocalVariable(name: "key", arg: 1, scope: !1010, file: !362, line: 72, type: !350)
!1014 = !DILocation(line: 72, column: 37, scope: !1010)
!1015 = !DILocalVariable(name: "value", arg: 2, scope: !1010, file: !362, line: 72, type: !350)
!1016 = !DILocation(line: 72, column: 54, scope: !1010)
!1017 = !DILocalVariable(name: "stripped_value", scope: !1010, file: !362, line: 74, type: !383)
!1018 = !DILocation(line: 74, column: 8, scope: !1010)
!1019 = !DILocation(line: 76, column: 28, scope: !1010)
!1020 = !DILocation(line: 76, column: 19, scope: !1010)
!1021 = !DILocation(line: 76, column: 17, scope: !1010)
!1022 = !DILocation(line: 77, column: 25, scope: !1010)
!1023 = !DILocation(line: 77, column: 14, scope: !1010)
!1024 = !DILocation(line: 77, column: 2, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1010, file: !362, discriminator: 1)
!1026 = !DILocation(line: 79, column: 25, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1010, file: !362, line: 79, column: 6)
!1028 = !DILocation(line: 79, column: 6, scope: !1027)
!1029 = !DILocation(line: 79, column: 47, scope: !1027)
!1030 = !DILocation(line: 79, column: 6, scope: !1010)
!1031 = !DILocation(line: 80, column: 21, scope: !1027)
!1032 = !DILocation(line: 80, column: 3, scope: !1027)
!1033 = !DILocation(line: 81, column: 30, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1027, file: !362, line: 81, column: 11)
!1035 = !DILocation(line: 81, column: 11, scope: !1034)
!1036 = !DILocation(line: 81, column: 53, scope: !1034)
!1037 = !DILocation(line: 81, column: 11, scope: !1027)
!1038 = !DILocation(line: 82, column: 21, scope: !1034)
!1039 = !DILocation(line: 82, column: 3, scope: !1034)
!1040 = !DILocation(line: 83, column: 30, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1034, file: !362, line: 83, column: 11)
!1042 = !DILocation(line: 83, column: 11, scope: !1041)
!1043 = !DILocation(line: 83, column: 56, scope: !1041)
!1044 = !DILocation(line: 83, column: 11, scope: !1034)
!1045 = !DILocation(line: 84, column: 21, scope: !1041)
!1046 = !DILocation(line: 84, column: 45, scope: !1041)
!1047 = !DILocation(line: 84, column: 27, scope: !1041)
!1048 = !DILocation(line: 84, column: 26, scope: !1041)
!1049 = !DILocation(line: 84, column: 3, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1041, file: !362, discriminator: 1)
!1051 = !DILocation(line: 84, column: 3, scope: !1041)
!1052 = !DILocation(line: 86, column: 3, scope: !1041)
!1053 = !DILocation(line: 88, column: 9, scope: !1010)
!1054 = !DILocation(line: 88, column: 2, scope: !1010)
!1055 = !DILocation(line: 89, column: 1, scope: !1010)
!1056 = distinct !DISubprogram(name: "set_int", scope: !362, file: !362, line: 91, type: !1011, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1057 = !DILocalVariable(name: "key", arg: 1, scope: !1056, file: !362, line: 91, type: !350)
!1058 = !DILocation(line: 91, column: 33, scope: !1056)
!1059 = !DILocalVariable(name: "value", arg: 2, scope: !1056, file: !362, line: 91, type: !350)
!1060 = !DILocation(line: 91, column: 50, scope: !1056)
!1061 = !DILocalVariable(name: "endp", scope: !1056, file: !362, line: 93, type: !383)
!1062 = !DILocation(line: 93, column: 8, scope: !1056)
!1063 = !DILocalVariable(name: "longval", scope: !1056, file: !362, line: 94, type: !346)
!1064 = !DILocation(line: 94, column: 7, scope: !1056)
!1065 = !DILocalVariable(name: "error", scope: !1056, file: !362, line: 95, type: !340)
!1066 = !DILocation(line: 95, column: 6, scope: !1056)
!1067 = !DILocation(line: 97, column: 3, scope: !1056)
!1068 = !DILocation(line: 97, column: 7, scope: !1056)
!1069 = !DILocation(line: 98, column: 19, scope: !1056)
!1070 = !DILocation(line: 98, column: 12, scope: !1056)
!1071 = !DILocation(line: 98, column: 10, scope: !1056)
!1072 = !DILocation(line: 99, column: 11, scope: !1056)
!1073 = !DILocation(line: 99, column: 10, scope: !1056)
!1074 = !DILocation(line: 99, column: 8, scope: !1056)
!1075 = !DILocation(line: 100, column: 2, scope: !1056)
!1076 = !DILocation(line: 100, column: 32, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1056, file: !362, discriminator: 1)
!1078 = !DILocation(line: 100, column: 31, scope: !1077)
!1079 = !DILocation(line: 100, column: 8, scope: !1077)
!1080 = !DILocation(line: 100, column: 9, scope: !1077)
!1081 = !DILocation(line: 100, column: 11, scope: !1077)
!1082 = !DILocation(line: 100, column: 10, scope: !1077)
!1083 = !DILocation(line: 100, column: 12, scope: !1077)
!1084 = !DILocation(line: 100, column: 2, scope: !1077)
!1085 = !DILocation(line: 101, column: 7, scope: !1056)
!1086 = !DILocation(line: 100, column: 2, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1056, file: !362, discriminator: 2)
!1088 = distinct !{!1088, !1075}
!1089 = !DILocation(line: 102, column: 6, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1056, file: !362, line: 102, column: 6)
!1091 = !DILocation(line: 102, column: 12, scope: !1090)
!1092 = !DILocation(line: 102, column: 17, scope: !1090)
!1093 = !DILocation(line: 102, column: 21, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1090, file: !362, discriminator: 1)
!1095 = !DILocation(line: 102, column: 20, scope: !1094)
!1096 = !DILocation(line: 102, column: 26, scope: !1094)
!1097 = !DILocation(line: 102, column: 34, scope: !1094)
!1098 = !DILocation(line: 102, column: 37, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1090, file: !362, discriminator: 2)
!1100 = !DILocation(line: 102, column: 45, scope: !1099)
!1101 = !DILocation(line: 102, column: 54, scope: !1099)
!1102 = !DILocation(line: 102, column: 57, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1090, file: !362, discriminator: 3)
!1104 = !DILocation(line: 102, column: 65, scope: !1103)
!1105 = !DILocation(line: 102, column: 6, scope: !1103)
!1106 = !DILocation(line: 103, column: 3, scope: !1090)
!1107 = !DILocation(line: 105, column: 20, scope: !1090)
!1108 = !DILocation(line: 105, column: 30, scope: !1090)
!1109 = !DILocation(line: 105, column: 25, scope: !1090)
!1110 = !DILocation(line: 105, column: 3, scope: !1090)
!1111 = !DILocation(line: 106, column: 1, scope: !1056)
!1112 = distinct !DISubprogram(name: "set_choice", scope: !362, file: !362, line: 108, type: !1011, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1113 = !DILocalVariable(name: "key", arg: 1, scope: !1112, file: !362, line: 108, type: !350)
!1114 = !DILocation(line: 108, column: 36, scope: !1112)
!1115 = !DILocalVariable(name: "value", arg: 2, scope: !1112, file: !362, line: 108, type: !350)
!1116 = !DILocation(line: 108, column: 53, scope: !1112)
!1117 = !DILocalVariable(name: "stripped_value", scope: !1112, file: !362, line: 110, type: !383)
!1118 = !DILocation(line: 110, column: 8, scope: !1112)
!1119 = !DILocation(line: 112, column: 28, scope: !1112)
!1120 = !DILocation(line: 112, column: 19, scope: !1112)
!1121 = !DILocation(line: 112, column: 17, scope: !1112)
!1122 = !DILocation(line: 113, column: 25, scope: !1112)
!1123 = !DILocation(line: 113, column: 14, scope: !1112)
!1124 = !DILocation(line: 113, column: 2, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1112, file: !362, discriminator: 1)
!1126 = !DILocation(line: 115, column: 26, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1112, file: !362, line: 115, column: 6)
!1128 = !DILocation(line: 115, column: 31, scope: !1127)
!1129 = !DILocation(line: 115, column: 6, scope: !1127)
!1130 = !DILocation(line: 115, column: 47, scope: !1127)
!1131 = !DILocation(line: 115, column: 6, scope: !1112)
!1132 = !DILocalVariable(name: "rec", scope: !1133, file: !362, line: 116, type: !377)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !362, line: 115, column: 55)
!1134 = !DILocation(line: 116, column: 17, scope: !1133)
!1135 = !DILocation(line: 116, column: 43, scope: !1133)
!1136 = !DILocation(line: 116, column: 23, scope: !1133)
!1137 = !DILocalVariable(name: "msg", scope: !1133, file: !362, line: 117, type: !383)
!1138 = !DILocation(line: 117, column: 9, scope: !1133)
!1139 = !DILocation(line: 117, column: 32, scope: !1133)
!1140 = !DILocation(line: 117, column: 37, scope: !1133)
!1141 = !DILocation(line: 117, column: 15, scope: !1133)
!1142 = !DILocation(line: 119, column: 46, scope: !1133)
!1143 = !DILocation(line: 119, column: 3, scope: !1133)
!1144 = !DILocation(line: 120, column: 10, scope: !1133)
!1145 = !DILocation(line: 120, column: 3, scope: !1133)
!1146 = !DILocation(line: 121, column: 2, scope: !1133)
!1147 = !DILocation(line: 123, column: 9, scope: !1112)
!1148 = !DILocation(line: 123, column: 2, scope: !1112)
!1149 = !DILocation(line: 124, column: 1, scope: !1112)
!1150 = distinct !DISubprogram(name: "alias_remove", scope: !362, file: !362, line: 279, type: !363, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1151 = !DILocalVariable(name: "alias", arg: 1, scope: !1150, file: !362, line: 279, type: !350)
!1152 = !DILocation(line: 279, column: 38, scope: !1150)
!1153 = !DILocation(line: 281, column: 21, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !362, line: 281, column: 6)
!1155 = !DILocation(line: 281, column: 44, scope: !1154)
!1156 = !DILocation(line: 281, column: 6, scope: !1154)
!1157 = !DILocation(line: 281, column: 7, scope: !1154)
!1158 = !DILocation(line: 281, column: 6, scope: !1150)
!1159 = !DILocation(line: 282, column: 48, scope: !1154)
!1160 = !DILocation(line: 282, column: 3, scope: !1154)
!1161 = !DILocation(line: 284, column: 46, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1154, file: !362, line: 283, column: 7)
!1163 = !DILocation(line: 284, column: 3, scope: !1162)
!1164 = !DILocation(line: 285, column: 18, scope: !1162)
!1165 = !DILocation(line: 285, column: 41, scope: !1162)
!1166 = !DILocation(line: 285, column: 3, scope: !1162)
!1167 = !DILocation(line: 287, column: 35, scope: !1162)
!1168 = !DILocation(line: 287, column: 3, scope: !1162)
!1169 = !DILocation(line: 289, column: 1, scope: !1150)
!1170 = distinct !DISubprogram(name: "show_aliases", scope: !362, file: !362, line: 241, type: !363, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1171 = !DILocalVariable(name: "alias", arg: 1, scope: !1170, file: !362, line: 241, type: !350)
!1172 = !DILocation(line: 241, column: 38, scope: !1170)
!1173 = !DILocalVariable(name: "node", scope: !1170, file: !362, line: 243, type: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64, align: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !324, line: 17, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !324, line: 20, size: 192, align: 64, elements: !1177)
!1177 = !{!1178, !1179, !1180}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1176, file: !324, line: 21, baseType: !340, size: 32, align: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1176, file: !324, line: 22, baseType: !383, size: 64, align: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1176, file: !324, line: 23, baseType: !339, size: 64, align: 64, offset: 128)
!1181 = !DILocation(line: 243, column: 15, scope: !1170)
!1182 = !DILocalVariable(name: "tmp", scope: !1170, file: !362, line: 244, type: !945)
!1183 = !DILocation(line: 244, column: 10, scope: !1170)
!1184 = !DILocalVariable(name: "list", scope: !1170, file: !362, line: 244, type: !945)
!1185 = !DILocation(line: 244, column: 16, scope: !1170)
!1186 = !DILocalVariable(name: "aliaslen", scope: !1170, file: !362, line: 245, type: !340)
!1187 = !DILocation(line: 245, column: 6, scope: !1170)
!1188 = !DILocation(line: 247, column: 2, scope: !1170)
!1189 = !DILocation(line: 249, column: 30, scope: !1170)
!1190 = !DILocation(line: 249, column: 9, scope: !1170)
!1191 = !DILocation(line: 249, column: 7, scope: !1170)
!1192 = !DILocation(line: 250, column: 8, scope: !1170)
!1193 = !DILocation(line: 250, column: 13, scope: !1170)
!1194 = !DILocation(line: 250, column: 8, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1170, file: !362, discriminator: 1)
!1196 = !DILocation(line: 250, column: 47, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1170, file: !362, discriminator: 2)
!1198 = !DILocation(line: 250, column: 53, scope: !1197)
!1199 = !DILocation(line: 250, column: 29, scope: !1197)
!1200 = !DILocation(line: 250, column: 8, scope: !1197)
!1201 = !DILocation(line: 250, column: 8, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1170, file: !362, discriminator: 3)
!1203 = !DILocation(line: 250, column: 6, scope: !1202)
!1204 = !DILocation(line: 253, column: 7, scope: !1170)
!1205 = !DILocation(line: 254, column: 20, scope: !1170)
!1206 = !DILocation(line: 254, column: 13, scope: !1170)
!1207 = !DILocation(line: 254, column: 11, scope: !1170)
!1208 = !DILocation(line: 255, column: 2, scope: !1170)
!1209 = !DILocation(line: 255, column: 9, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1211, file: !362, discriminator: 1)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !362, line: 255, column: 2)
!1212 = distinct !DILexicalBlock(scope: !1170, file: !362, line: 255, column: 2)
!1213 = !DILocation(line: 255, column: 13, scope: !1210)
!1214 = !DILocation(line: 255, column: 2, scope: !1210)
!1215 = !DILocalVariable(name: "node", scope: !1216, file: !362, line: 256, type: !1174)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !362, line: 255, column: 50)
!1217 = !DILocation(line: 256, column: 16, scope: !1216)
!1218 = !DILocation(line: 256, column: 23, scope: !1216)
!1219 = !DILocation(line: 256, column: 28, scope: !1216)
!1220 = !DILocation(line: 258, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !362, line: 258, column: 7)
!1222 = !DILocation(line: 258, column: 13, scope: !1221)
!1223 = !DILocation(line: 258, column: 18, scope: !1221)
!1224 = !DILocation(line: 258, column: 7, scope: !1216)
!1225 = !DILocation(line: 259, column: 4, scope: !1221)
!1226 = !DILocation(line: 261, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1216, file: !362, line: 261, column: 7)
!1228 = !DILocation(line: 261, column: 16, scope: !1227)
!1229 = !DILocation(line: 261, column: 21, scope: !1227)
!1230 = !DILocation(line: 261, column: 44, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1227, file: !362, discriminator: 1)
!1232 = !DILocation(line: 261, column: 50, scope: !1231)
!1233 = !DILocation(line: 261, column: 55, scope: !1231)
!1234 = !DILocation(line: 261, column: 62, scope: !1231)
!1235 = !DILocation(line: 261, column: 24, scope: !1231)
!1236 = !DILocation(line: 261, column: 72, scope: !1231)
!1237 = !DILocation(line: 261, column: 7, scope: !1231)
!1238 = !DILocation(line: 262, column: 4, scope: !1227)
!1239 = !DILocation(line: 264, column: 32, scope: !1216)
!1240 = !DILocation(line: 264, column: 38, scope: !1216)
!1241 = !DILocation(line: 264, column: 10, scope: !1216)
!1242 = !DILocation(line: 264, column: 8, scope: !1216)
!1243 = !DILocation(line: 265, column: 2, scope: !1216)
!1244 = !DILocation(line: 255, column: 44, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1211, file: !362, discriminator: 2)
!1246 = !DILocation(line: 255, column: 27, scope: !1245)
!1247 = !DILocation(line: 255, column: 25, scope: !1245)
!1248 = !DILocation(line: 255, column: 2, scope: !1245)
!1249 = distinct !{!1249, !1208}
!1250 = !DILocation(line: 268, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1170, file: !362, line: 268, column: 2)
!1252 = !DILocation(line: 268, column: 11, scope: !1251)
!1253 = !DILocation(line: 268, column: 7, scope: !1251)
!1254 = !DILocation(line: 268, column: 19, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !362, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !362, line: 268, column: 2)
!1257 = !DILocation(line: 268, column: 23, scope: !1255)
!1258 = !DILocation(line: 268, column: 2, scope: !1255)
!1259 = !DILocalVariable(name: "node", scope: !1260, file: !362, line: 269, type: !1174)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !362, line: 268, column: 48)
!1261 = !DILocation(line: 269, column: 16, scope: !1260)
!1262 = !DILocation(line: 269, column: 23, scope: !1260)
!1263 = !DILocation(line: 269, column: 28, scope: !1260)
!1264 = !DILocation(line: 271, column: 45, scope: !1260)
!1265 = !DILocation(line: 271, column: 51, scope: !1260)
!1266 = !DILocation(line: 271, column: 56, scope: !1260)
!1267 = !DILocation(line: 271, column: 62, scope: !1260)
!1268 = !DILocation(line: 271, column: 3, scope: !1260)
!1269 = !DILocation(line: 273, column: 2, scope: !1260)
!1270 = !DILocation(line: 268, column: 37, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1256, file: !362, discriminator: 2)
!1272 = !DILocation(line: 268, column: 42, scope: !1271)
!1273 = !DILocation(line: 268, column: 35, scope: !1271)
!1274 = !DILocation(line: 268, column: 2, scope: !1271)
!1275 = distinct !{!1275, !1276}
!1276 = !DILocation(line: 268, column: 2, scope: !1170)
!1277 = !DILocation(line: 274, column: 15, scope: !1170)
!1278 = !DILocation(line: 274, column: 2, scope: !1170)
!1279 = !DILocation(line: 276, column: 2, scope: !1170)
!1280 = !DILocation(line: 277, column: 1, scope: !1170)
!1281 = distinct !DISubprogram(name: "config_key_compare", scope: !362, file: !362, line: 236, type: !1282, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!340, !1174, !1174}
!1284 = !DILocalVariable(name: "node1", arg: 1, scope: !1281, file: !362, line: 236, type: !1174)
!1285 = !DILocation(line: 236, column: 44, scope: !1281)
!1286 = !DILocalVariable(name: "node2", arg: 2, scope: !1281, file: !362, line: 236, type: !1174)
!1287 = !DILocation(line: 236, column: 64, scope: !1281)
!1288 = !DILocation(line: 238, column: 28, scope: !1281)
!1289 = !DILocation(line: 238, column: 35, scope: !1281)
!1290 = !DILocation(line: 238, column: 40, scope: !1281)
!1291 = !DILocation(line: 238, column: 47, scope: !1281)
!1292 = !DILocation(line: 238, column: 9, scope: !1281)
!1293 = !DILocation(line: 238, column: 2, scope: !1281)
!1294 = distinct !DISubprogram(name: "settings_save_fe", scope: !362, file: !362, line: 343, type: !363, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1295 = !DILocalVariable(name: "fname", arg: 1, scope: !1294, file: !362, line: 343, type: !350)
!1296 = !DILocation(line: 343, column: 42, scope: !1294)
!1297 = !DILocation(line: 345, column: 20, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !362, line: 345, column: 6)
!1299 = !DILocation(line: 345, column: 6, scope: !1298)
!1300 = !DILocation(line: 345, column: 6, scope: !1294)
!1301 = !DILocation(line: 346, column: 45, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1298, file: !362, line: 345, column: 34)
!1303 = !DILocation(line: 346, column: 3, scope: !1302)
!1304 = !DILocation(line: 348, column: 2, scope: !1302)
!1305 = !DILocation(line: 349, column: 1, scope: !1294)
!1306 = distinct !DISubprogram(name: "settings_save_confirm", scope: !362, file: !362, line: 351, type: !1307, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !350, !383}
!1309 = !DILocalVariable(name: "line", arg: 1, scope: !1306, file: !362, line: 351, type: !350)
!1310 = !DILocation(line: 351, column: 47, scope: !1306)
!1311 = !DILocalVariable(name: "fname", arg: 2, scope: !1306, file: !362, line: 351, type: !383)
!1312 = !DILocation(line: 351, column: 59, scope: !1306)
!1313 = !DILocation(line: 353, column: 37, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !362, line: 353, column: 6)
!1315 = !DILocation(line: 353, column: 14, scope: !1314)
!1316 = !DILocation(line: 353, column: 6, scope: !1314)
!1317 = !DILocation(line: 353, column: 47, scope: !1314)
!1318 = !DILocation(line: 353, column: 6, scope: !1306)
!1319 = !DILocation(line: 354, column: 20, scope: !1314)
!1320 = !DILocation(line: 354, column: 3, scope: !1314)
!1321 = !DILocation(line: 355, column: 9, scope: !1306)
!1322 = !DILocation(line: 355, column: 2, scope: !1306)
!1323 = !DILocation(line: 356, column: 1, scope: !1306)
!1324 = distinct !DISubprogram(name: "settings_clean_confirm", scope: !362, file: !362, line: 389, type: !363, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !365)
!1325 = !DILocalVariable(name: "line", arg: 1, scope: !1324, file: !362, line: 389, type: !350)
!1326 = !DILocation(line: 389, column: 48, scope: !1324)
!1327 = !DILocation(line: 391, column: 37, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !362, line: 391, column: 6)
!1329 = !DILocation(line: 391, column: 14, scope: !1328)
!1330 = !DILocation(line: 391, column: 6, scope: !1328)
!1331 = !DILocation(line: 391, column: 47, scope: !1328)
!1332 = !DILocation(line: 391, column: 6, scope: !1324)
!1333 = !DILocation(line: 392, column: 17, scope: !1328)
!1334 = !DILocation(line: 393, column: 1, scope: !1324)
