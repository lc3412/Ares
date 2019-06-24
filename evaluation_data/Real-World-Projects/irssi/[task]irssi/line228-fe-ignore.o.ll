; ModuleID = './line228-fe-ignore.o.i'
source_filename = "./line228-fe-ignore.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct._QUERY_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._IGNORE_REC = type { i32, i8*, i8*, i8**, i8*, i64, i8, %struct._GRegex* }
%struct._GRegex = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unignore\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ignore destroyed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ignore created\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ignore changed\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"regexp full except replies -network -ircnet -time -pattern -channels\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ircnet\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"replies\00", align 1
@ignores = external global %struct._GSList*, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"-except \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"-regexp \00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"[INVALID! -pattern missing] \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"[INVALID!] \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"-full \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"-replies \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"-network %s \00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"-pattern %s \00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@cmd_unignore.chans = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16

; Function Attrs: nounwind uwtable
define void @fe_ignore_init() #0 !dbg !349 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_ignore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !354
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unignore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !355
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !356
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !357
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !358
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i32 0, i32 0)), !dbg !359
  ret void, !dbg !360
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_ignore(i8*) #0 !dbg !361 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._IGNORE_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !366, metadata !367), !dbg !368
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !369, metadata !367), !dbg !374
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %4, metadata !375, metadata !367), !dbg !376
  call void @llvm.dbg.declare(metadata i8** %5, metadata !377, metadata !367), !dbg !378
  call void @llvm.dbg.declare(metadata i8** %6, metadata !379, metadata !367), !dbg !380
  call void @llvm.dbg.declare(metadata i8** %7, metadata !381, metadata !367), !dbg !382
  call void @llvm.dbg.declare(metadata i8** %8, metadata !383, metadata !367), !dbg !384
  call void @llvm.dbg.declare(metadata i8** %9, metadata !385, metadata !367), !dbg !386
  call void @llvm.dbg.declare(metadata i8** %10, metadata !387, metadata !367), !dbg !388
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !389, metadata !367), !dbg !390
  call void @llvm.dbg.declare(metadata i8** %12, metadata !391, metadata !367), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %13, metadata !393, metadata !367), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %14, metadata !395, metadata !367), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %15, metadata !397, metadata !367), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %16, metadata !399, metadata !367), !dbg !400
  %17 = load i8*, i8** %2, align 8, !dbg !401
  %18 = load i8, i8* %17, align 1, !dbg !403
  %19 = sext i8 %18 to i32, !dbg !403
  %20 = icmp eq i32 %19, 0, !dbg !404
  br i1 %20, label %21, label %22, !dbg !405

; <label>:21:                                     ; preds = %1
  call void @cmd_ignore_show(), !dbg !406
  br label %323, !dbg !408

; <label>:22:                                     ; preds = %1
  %23 = load i8*, i8** %2, align 8, !dbg !409
  %24 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %23, i8** %12, i32 286722, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %3, i8** %7, i8** %8), !dbg !411
  %25 = icmp ne i32 %24, 0, !dbg !411
  br i1 %25, label %27, label %26, !dbg !412

; <label>:26:                                     ; preds = %22
  br label %323, !dbg !413

; <label>:27:                                     ; preds = %22
  %28 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !414
  %29 = call i8* @g_hash_table_lookup(%struct._GHashTable* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !415
  store i8* %29, i8** %5, align 8, !dbg !416
  %30 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !417
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)), !dbg !418
  store i8* %31, i8** %6, align 8, !dbg !419
  %32 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !420
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)), !dbg !421
  store i8* %33, i8** %10, align 8, !dbg !422
  %34 = load i8*, i8** %10, align 8, !dbg !423
  %35 = icmp ne i8* %34, null, !dbg !423
  br i1 %35, label %39, label %36, !dbg !425

; <label>:36:                                     ; preds = %27
  %37 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !426
  %38 = call i8* @g_hash_table_lookup(%struct._GHashTable* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !427
  store i8* %38, i8** %10, align 8, !dbg !428
  br label %39, !dbg !429

; <label>:39:                                     ; preds = %36, %27
  %40 = load i8*, i8** %7, align 8, !dbg !430
  %41 = load i8, i8* %40, align 1, !dbg !432
  %42 = sext i8 %41 to i32, !dbg !432
  %43 = icmp eq i32 %42, 0, !dbg !433
  br i1 %43, label %44, label %51, !dbg !434

; <label>:44:                                     ; preds = %39
  br label %45, !dbg !435, !llvm.loop !437

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %12, align 8, !dbg !439
  call void @cmd_params_free(i8* %46), !dbg !442
  br label %47, !dbg !443, !llvm.loop !444

; <label>:47:                                     ; preds = %45
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !446
  call void @signal_stop(), !dbg !449
  br label %323, !dbg !451
                                                  ; No predecessors!
  br label %50, !dbg !452

; <label>:50:                                     ; preds = %49
  br label %51, !dbg !454

; <label>:51:                                     ; preds = %50, %39
  %52 = load i8*, i8** %8, align 8, !dbg !456
  %53 = load i8, i8* %52, align 1, !dbg !458
  %54 = sext i8 %53 to i32, !dbg !458
  %55 = icmp eq i32 %54, 0, !dbg !459
  br i1 %55, label %56, label %57, !dbg !460

; <label>:56:                                     ; preds = %51
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8** %8, align 8, !dbg !461
  br label %57, !dbg !463

; <label>:57:                                     ; preds = %56, %51
  %58 = load i8*, i8** %8, align 8, !dbg !464
  %59 = call i32 @level2bits(i8* %58, i32* null), !dbg !465
  store i32 %59, i32* %15, align 4, !dbg !466
  store i32 0, i32* %14, align 4, !dbg !467
  %60 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !468
  %61 = call i8* @g_hash_table_lookup(%struct._GHashTable* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)), !dbg !469
  store i8* %61, i8** %9, align 8, !dbg !470
  %62 = load i8*, i8** %9, align 8, !dbg !471
  %63 = icmp ne i8* %62, null, !dbg !473
  br i1 %63, label %64, label %76, !dbg !474

; <label>:64:                                     ; preds = %57
  %65 = load i8*, i8** %9, align 8, !dbg !475
  %66 = call i32 @parse_time_interval(i8* %65, i32* %14), !dbg !478
  %67 = icmp ne i32 %66, 0, !dbg !478
  br i1 %67, label %75, label %68, !dbg !479

; <label>:68:                                     ; preds = %64
  br label %69, !dbg !480, !llvm.loop !481

; <label>:69:                                     ; preds = %68
  %70 = load i8*, i8** %12, align 8, !dbg !482
  call void @cmd_params_free(i8* %70), !dbg !485
  br label %71, !dbg !486, !llvm.loop !487

; <label>:71:                                     ; preds = %69
  %72 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* inttoptr (i64 10 to i8*)), !dbg !489
  call void @signal_stop(), !dbg !492
  br label %323, !dbg !494
                                                  ; No predecessors!
  br label %74, !dbg !495

; <label>:74:                                     ; preds = %73
  br label %75, !dbg !497

; <label>:75:                                     ; preds = %74, %64
  br label %76, !dbg !499

; <label>:76:                                     ; preds = %75, %57
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !500
  %78 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %77, i32 0, i32 6, !dbg !502
  %79 = load %struct._SERVER_REC*, %struct._SERVER_REC** %78, align 8, !dbg !502
  %80 = icmp ne %struct._SERVER_REC* %79, null, !dbg !503
  br i1 %80, label %81, label %95, !dbg !504

; <label>:81:                                     ; preds = %76
  %82 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !505
  %83 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %82, i32 0, i32 6, !dbg !506
  %84 = load %struct._SERVER_REC*, %struct._SERVER_REC** %83, align 8, !dbg !506
  %85 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %84, i32 0, i32 27, !dbg !507
  %86 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %85, align 8, !dbg !507
  %87 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !508
  %88 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %87, i32 0, i32 6, !dbg !509
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %88, align 8, !dbg !509
  %90 = load i8*, i8** %7, align 8, !dbg !510
  %91 = call i32 %86(%struct._SERVER_REC* %89, i8* %90), !dbg !511
  %92 = icmp ne i32 %91, 0, !dbg !511
  br i1 %92, label %93, label %95, !dbg !512

; <label>:93:                                     ; preds = %81
  %94 = load i8*, i8** %7, align 8, !dbg !514
  store i8* %94, i8** %6, align 8, !dbg !516
  store i8* null, i8** %7, align 8, !dbg !517
  br label %95, !dbg !518

; <label>:95:                                     ; preds = %93, %81, %76
  %96 = load i8*, i8** %6, align 8, !dbg !519
  %97 = icmp eq i8* %96, null, !dbg !520
  br i1 %97, label %103, label %98, !dbg !521

; <label>:98:                                     ; preds = %95
  %99 = load i8*, i8** %6, align 8, !dbg !522
  %100 = load i8, i8* %99, align 1, !dbg !523
  %101 = sext i8 %100 to i32, !dbg !523
  %102 = icmp eq i32 %101, 0, !dbg !524
  br i1 %102, label %103, label %104, !dbg !525

; <label>:103:                                    ; preds = %98, %95
  br label %107, !dbg !526

; <label>:104:                                    ; preds = %98
  %105 = load i8*, i8** %6, align 8, !dbg !528
  %106 = call noalias i8** @g_strsplit(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 -1), !dbg !529
  br label %107, !dbg !530

; <label>:107:                                    ; preds = %104, %103
  %108 = phi i8** [ null, %103 ], [ %106, %104 ], !dbg !532
  store i8** %108, i8*** %11, align 8, !dbg !534
  store i32 1, i32* %16, align 4, !dbg !535
  %109 = load i32, i32* %15, align 4, !dbg !536
  %110 = and i32 %109, 33554432, !dbg !538
  %111 = icmp ne i32 %110, 0, !dbg !538
  br i1 %111, label %112, label %115, !dbg !539

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %16, align 4, !dbg !540
  %114 = or i32 %113, 2, !dbg !540
  store i32 %114, i32* %16, align 4, !dbg !540
  br label %115, !dbg !541

; <label>:115:                                    ; preds = %112, %107
  %116 = load i32, i32* %15, align 4, !dbg !542
  %117 = and i32 %116, 268435456, !dbg !544
  %118 = icmp ne i32 %117, 0, !dbg !544
  br i1 %118, label %119, label %122, !dbg !545

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %16, align 4, !dbg !546
  %121 = or i32 %120, 4, !dbg !546
  store i32 %121, i32* %16, align 4, !dbg !546
  br label %122, !dbg !547

; <label>:122:                                    ; preds = %119, %115
  %123 = load i8*, i8** %10, align 8, !dbg !548
  %124 = load i8*, i8** %7, align 8, !dbg !549
  %125 = load i8*, i8** %5, align 8, !dbg !550
  %126 = load i8**, i8*** %11, align 8, !dbg !551
  %127 = load i32, i32* %16, align 4, !dbg !552
  %128 = call %struct._IGNORE_REC* @ignore_find_full(i8* %123, i8* %124, i8* %125, i8** %126, i32 %127), !dbg !553
  store %struct._IGNORE_REC* %128, %struct._IGNORE_REC** %4, align 8, !dbg !554
  %129 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !555
  %130 = icmp eq %struct._IGNORE_REC* %129, null, !dbg !556
  %131 = zext i1 %130 to i32, !dbg !556
  store i32 %131, i32* %13, align 4, !dbg !557
  %132 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !558
  %133 = icmp eq %struct._IGNORE_REC* %132, null, !dbg !560
  br i1 %133, label %134, label %159, !dbg !561

; <label>:134:                                    ; preds = %122
  %135 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !562
  %136 = bitcast i8* %135 to %struct._IGNORE_REC*, !dbg !564
  store %struct._IGNORE_REC* %136, %struct._IGNORE_REC** %4, align 8, !dbg !565
  %137 = load i8*, i8** %7, align 8, !dbg !566
  %138 = icmp eq i8* %137, null, !dbg !567
  br i1 %138, label %148, label %139, !dbg !568

; <label>:139:                                    ; preds = %134
  %140 = load i8*, i8** %7, align 8, !dbg !569
  %141 = load i8, i8* %140, align 1, !dbg !571
  %142 = sext i8 %141 to i32, !dbg !571
  %143 = icmp eq i32 %142, 0, !dbg !572
  br i1 %143, label %148, label %144, !dbg !573

; <label>:144:                                    ; preds = %139
  %145 = load i8*, i8** %7, align 8, !dbg !574
  %146 = call i32 @g_strcmp0(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !575
  %147 = icmp eq i32 %146, 0, !dbg !576
  br i1 %147, label %148, label %149, !dbg !577

; <label>:148:                                    ; preds = %144, %139, %134
  br label %152, !dbg !579

; <label>:149:                                    ; preds = %144
  %150 = load i8*, i8** %7, align 8, !dbg !581
  %151 = call noalias i8* @g_strdup(i8* %150), !dbg !582
  br label %152, !dbg !583

; <label>:152:                                    ; preds = %149, %148
  %153 = phi i8* [ null, %148 ], [ %151, %149 ], !dbg !585
  %154 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !587
  %155 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %154, i32 0, i32 1, !dbg !588
  store i8* %153, i8** %155, align 8, !dbg !589
  %156 = load i8**, i8*** %11, align 8, !dbg !590
  %157 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !591
  %158 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %157, i32 0, i32 3, !dbg !592
  store i8** %156, i8*** %158, align 8, !dbg !593
  br label %174, !dbg !594

; <label>:159:                                    ; preds = %122
  br label %160, !dbg !595, !llvm.loop !597

; <label>:160:                                    ; preds = %159
  %161 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !598
  %162 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %161, i32 0, i32 4, !dbg !602
  %163 = load i8*, i8** %162, align 8, !dbg !602
  %164 = icmp ne i8* %163, null, !dbg !598
  br i1 %164, label %165, label %171, !dbg !598

; <label>:165:                                    ; preds = %160
  %166 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !603
  %167 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %166, i32 0, i32 4, !dbg !606
  %168 = load i8*, i8** %167, align 8, !dbg !606
  call void @g_free(i8* %168), !dbg !607
  %169 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !608
  %170 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %169, i32 0, i32 4, !dbg !609
  store i8* null, i8** %170, align 8, !dbg !610
  br label %171, !dbg !611

; <label>:171:                                    ; preds = %165, %160
  br label %172, !dbg !612

; <label>:172:                                    ; preds = %171
  %173 = load i8**, i8*** %11, align 8, !dbg !614
  call void @g_strfreev(i8** %173), !dbg !615
  br label %174

; <label>:174:                                    ; preds = %172, %152
  %175 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !616
  %176 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %175, i32 0, i32 0, !dbg !617
  %177 = load i32, i32* %176, align 8, !dbg !617
  %178 = load i8*, i8** %8, align 8, !dbg !618
  %179 = call i32 @combine_level(i32 %177, i8* %178), !dbg !619
  %180 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !620
  %181 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %180, i32 0, i32 0, !dbg !621
  store i32 %179, i32* %181, align 8, !dbg !622
  %182 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !623
  %183 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %182, i32 0, i32 0, !dbg !625
  %184 = load i32, i32* %183, align 8, !dbg !625
  %185 = icmp eq i32 %184, 33554432, !dbg !626
  br i1 %185, label %186, label %191, !dbg !627

; <label>:186:                                    ; preds = %174
  %187 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !628
  %188 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %187, i32 0, i32 0, !dbg !630
  %189 = load i32, i32* %188, align 8, !dbg !631
  %190 = or i32 %189, 4194303, !dbg !631
  store i32 %190, i32* %188, align 8, !dbg !631
  br label %191, !dbg !632

; <label>:191:                                    ; preds = %186, %174
  %192 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !633
  %193 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %192, i32 0, i32 0, !dbg !635
  %194 = load i32, i32* %193, align 8, !dbg !635
  %195 = icmp eq i32 %194, 268435456, !dbg !636
  br i1 %195, label %196, label %201, !dbg !637

; <label>:196:                                    ; preds = %191
  %197 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !638
  %198 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %197, i32 0, i32 0, !dbg !640
  %199 = load i32, i32* %198, align 8, !dbg !641
  %200 = or i32 %199, 4194303, !dbg !641
  store i32 %200, i32* %198, align 8, !dbg !641
  br label %201, !dbg !642

; <label>:201:                                    ; preds = %196, %191
  %202 = load i32, i32* %13, align 4, !dbg !643
  %203 = icmp ne i32 %202, 0, !dbg !643
  br i1 %203, label %204, label %222, !dbg !645

; <label>:204:                                    ; preds = %201
  %205 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !646
  %206 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %205, i32 0, i32 0, !dbg !648
  %207 = load i32, i32* %206, align 8, !dbg !648
  %208 = icmp eq i32 %207, 0, !dbg !649
  br i1 %208, label %209, label %222, !dbg !650

; <label>:209:                                    ; preds = %204
  %210 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !651
  %211 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %210, i32 0, i32 1, !dbg !653
  %212 = load i8*, i8** %211, align 8, !dbg !653
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 189, i8* %212), !dbg !654
  %213 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !655
  %214 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %213, i32 0, i32 1, !dbg !656
  %215 = load i8*, i8** %214, align 8, !dbg !656
  call void @g_free(i8* %215), !dbg !657
  %216 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !658
  %217 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %216, i32 0, i32 3, !dbg !659
  %218 = load i8**, i8*** %217, align 8, !dbg !659
  call void @g_strfreev(i8** %218), !dbg !660
  %219 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !661
  %220 = bitcast %struct._IGNORE_REC* %219 to i8*, !dbg !661
  call void @g_free(i8* %220), !dbg !662
  %221 = load i8*, i8** %12, align 8, !dbg !663
  call void @cmd_params_free(i8* %221), !dbg !664
  br label %323, !dbg !665

; <label>:222:                                    ; preds = %204, %201
  %223 = load i8*, i8** %10, align 8, !dbg !666
  %224 = icmp eq i8* %223, null, !dbg !667
  br i1 %224, label %230, label %225, !dbg !668

; <label>:225:                                    ; preds = %222
  %226 = load i8*, i8** %10, align 8, !dbg !669
  %227 = load i8, i8* %226, align 1, !dbg !670
  %228 = sext i8 %227 to i32, !dbg !670
  %229 = icmp eq i32 %228, 0, !dbg !671
  br i1 %229, label %230, label %231, !dbg !672

; <label>:230:                                    ; preds = %225, %222
  br label %234, !dbg !673

; <label>:231:                                    ; preds = %225
  %232 = load i8*, i8** %10, align 8, !dbg !674
  %233 = call noalias i8* @g_strdup(i8* %232), !dbg !675
  br label %234, !dbg !676

; <label>:234:                                    ; preds = %231, %230
  %235 = phi i8* [ null, %230 ], [ %233, %231 ], !dbg !677
  %236 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !678
  %237 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %236, i32 0, i32 2, !dbg !679
  store i8* %235, i8** %237, align 8, !dbg !680
  %238 = load i8*, i8** %5, align 8, !dbg !681
  %239 = icmp eq i8* %238, null, !dbg !682
  br i1 %239, label %245, label %240, !dbg !683

; <label>:240:                                    ; preds = %234
  %241 = load i8*, i8** %5, align 8, !dbg !684
  %242 = load i8, i8* %241, align 1, !dbg !685
  %243 = sext i8 %242 to i32, !dbg !685
  %244 = icmp eq i32 %243, 0, !dbg !686
  br i1 %244, label %245, label %246, !dbg !687

; <label>:245:                                    ; preds = %240, %234
  br label %249, !dbg !688

; <label>:246:                                    ; preds = %240
  %247 = load i8*, i8** %5, align 8, !dbg !689
  %248 = call noalias i8* @g_strdup(i8* %247), !dbg !690
  br label %249, !dbg !691

; <label>:249:                                    ; preds = %246, %245
  %250 = phi i8* [ null, %245 ], [ %248, %246 ], !dbg !692
  %251 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !693
  %252 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %251, i32 0, i32 4, !dbg !694
  store i8* %250, i8** %252, align 8, !dbg !695
  %253 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !696
  %254 = call i8* @g_hash_table_lookup(%struct._GHashTable* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)), !dbg !697
  %255 = icmp ne i8* %254, null, !dbg !698
  %256 = zext i1 %255 to i32, !dbg !698
  %257 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !699
  %258 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %257, i32 0, i32 6, !dbg !700
  %259 = trunc i32 %256 to i8, !dbg !701
  %260 = load i8, i8* %258, align 8, !dbg !701
  %261 = and i8 %259, 1, !dbg !701
  %262 = and i8 %260, -2, !dbg !701
  %263 = or i8 %262, %261, !dbg !701
  store i8 %263, i8* %258, align 8, !dbg !701
  %264 = zext i8 %261 to i32, !dbg !701
  %265 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !702
  %266 = call i8* @g_hash_table_lookup(%struct._GHashTable* %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !703
  %267 = icmp ne i8* %266, null, !dbg !704
  %268 = zext i1 %267 to i32, !dbg !704
  %269 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !705
  %270 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %269, i32 0, i32 6, !dbg !706
  %271 = trunc i32 %268 to i8, !dbg !707
  %272 = load i8, i8* %270, align 8, !dbg !707
  %273 = and i8 %271, 1, !dbg !707
  %274 = shl i8 %273, 1, !dbg !707
  %275 = and i8 %272, -3, !dbg !707
  %276 = or i8 %275, %274, !dbg !707
  store i8 %276, i8* %270, align 8, !dbg !707
  %277 = zext i8 %273 to i32, !dbg !707
  %278 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !708
  %279 = call i8* @g_hash_table_lookup(%struct._GHashTable* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)), !dbg !709
  %280 = icmp ne i8* %279, null, !dbg !710
  %281 = zext i1 %280 to i32, !dbg !710
  %282 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !711
  %283 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %282, i32 0, i32 6, !dbg !712
  %284 = trunc i32 %281 to i8, !dbg !713
  %285 = load i8, i8* %283, align 8, !dbg !713
  %286 = and i8 %284, 1, !dbg !713
  %287 = shl i8 %286, 2, !dbg !713
  %288 = and i8 %285, -5, !dbg !713
  %289 = or i8 %288, %287, !dbg !713
  store i8 %289, i8* %283, align 8, !dbg !713
  %290 = zext i8 %286 to i32, !dbg !713
  %291 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !714
  %292 = call i8* @g_hash_table_lookup(%struct._GHashTable* %291, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)), !dbg !715
  %293 = icmp ne i8* %292, null, !dbg !716
  %294 = zext i1 %293 to i32, !dbg !716
  %295 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !717
  %296 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %295, i32 0, i32 6, !dbg !718
  %297 = trunc i32 %294 to i8, !dbg !719
  %298 = load i8, i8* %296, align 8, !dbg !719
  %299 = and i8 %297, 1, !dbg !719
  %300 = shl i8 %299, 3, !dbg !719
  %301 = and i8 %298, -9, !dbg !719
  %302 = or i8 %301, %300, !dbg !719
  store i8 %302, i8* %296, align 8, !dbg !719
  %303 = zext i8 %299 to i32, !dbg !719
  %304 = load i32, i32* %14, align 4, !dbg !720
  %305 = icmp ne i32 %304, 0, !dbg !722
  br i1 %305, label %306, label %314, !dbg !723

; <label>:306:                                    ; preds = %249
  %307 = call i64 @time(i64* null) #6, !dbg !724
  %308 = load i32, i32* %14, align 4, !dbg !725
  %309 = sdiv i32 %308, 1000, !dbg !726
  %310 = sext i32 %309 to i64, !dbg !725
  %311 = add nsw i64 %307, %310, !dbg !727
  %312 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !728
  %313 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %312, i32 0, i32 5, !dbg !729
  store i64 %311, i64* %313, align 8, !dbg !730
  br label %314, !dbg !728

; <label>:314:                                    ; preds = %306, %249
  %315 = load i32, i32* %13, align 4, !dbg !731
  %316 = icmp ne i32 %315, 0, !dbg !731
  br i1 %316, label %317, label %319, !dbg !733

; <label>:317:                                    ; preds = %314
  %318 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !734
  call void @ignore_add_rec(%struct._IGNORE_REC* %318), !dbg !735
  br label %321, !dbg !735

; <label>:319:                                    ; preds = %314
  %320 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !736
  call void @ignore_update_rec(%struct._IGNORE_REC* %320), !dbg !737
  br label %321

; <label>:321:                                    ; preds = %319, %317
  %322 = load i8*, i8** %12, align 8, !dbg !738
  call void @cmd_params_free(i8* %322), !dbg !739
  br label %323, !dbg !740

; <label>:323:                                    ; preds = %321, %209, %71, %47, %26, %21
  ret void, !dbg !741
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unignore(i8*) #0 !dbg !742 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IGNORE_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !743, metadata !367), !dbg !744
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !745, metadata !367), !dbg !746
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !747, metadata !367), !dbg !755
  call void @llvm.dbg.declare(metadata i8** %5, metadata !756, metadata !367), !dbg !757
  call void @llvm.dbg.declare(metadata i8** %6, metadata !758, metadata !367), !dbg !759
  call void @llvm.dbg.declare(metadata i8** %7, metadata !760, metadata !367), !dbg !761
  %9 = load i8*, i8** %2, align 8, !dbg !762
  %10 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %9, i8** %7, i32 1, i8** %5), !dbg !764
  %11 = icmp ne i32 %10, 0, !dbg !764
  br i1 %11, label %13, label %12, !dbg !765

; <label>:12:                                     ; preds = %1
  br label %89, !dbg !766

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %5, align 8, !dbg !767
  %15 = load i8, i8* %14, align 1, !dbg !769
  %16 = sext i8 %15 to i32, !dbg !769
  %17 = icmp eq i32 %16, 0, !dbg !770
  br i1 %17, label %18, label %25, !dbg !771

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !772, !llvm.loop !773

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %7, align 8, !dbg !774
  call void @cmd_params_free(i8* %20), !dbg !777
  br label %21, !dbg !778, !llvm.loop !779

; <label>:21:                                     ; preds = %19
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !781
  call void @signal_stop(), !dbg !784
  br label %89, !dbg !786
                                                  ; No predecessors!
  br label %24, !dbg !787

; <label>:24:                                     ; preds = %23
  br label %25, !dbg !789

; <label>:25:                                     ; preds = %24, %13
  %26 = load i8*, i8** %5, align 8, !dbg !791
  store i8* %26, i8** %6, align 8, !dbg !792
  %27 = load i8*, i8** %5, align 8, !dbg !793
  %28 = call i32 @is_numeric(i8* %27, i8 signext 32), !dbg !795
  %29 = icmp ne i32 %28, 0, !dbg !795
  br i1 %29, label %30, label %46, !dbg !796

; <label>:30:                                     ; preds = %25
  %31 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !797
  %32 = load i8*, i8** %5, align 8, !dbg !799
  %33 = call i32 @atoi(i8* %32) #7, !dbg !800
  %34 = sub nsw i32 %33, 1, !dbg !801
  %35 = call %struct._GSList* @g_slist_nth(%struct._GSList* %31, i32 %34), !dbg !802
  store %struct._GSList* %35, %struct._GSList** %4, align 8, !dbg !804
  %36 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !805
  %37 = icmp eq %struct._GSList* %36, null, !dbg !806
  br i1 %37, label %38, label %39, !dbg !805

; <label>:38:                                     ; preds = %30
  br label %43, !dbg !807

; <label>:39:                                     ; preds = %30
  %40 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !808
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0, !dbg !810
  %42 = load i8*, i8** %41, align 8, !dbg !810
  br label %43, !dbg !811

; <label>:43:                                     ; preds = %39, %38
  %44 = phi i8* [ null, %38 ], [ %42, %39 ], !dbg !812
  %45 = bitcast i8* %44 to %struct._IGNORE_REC*, !dbg !812
  store %struct._IGNORE_REC* %45, %struct._IGNORE_REC** %3, align 8, !dbg !814
  br label %78, !dbg !815

; <label>:46:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata [2 x i8*]* %8, metadata !816, metadata !367), !dbg !821
  %47 = bitcast [2 x i8*]* %8 to i8*, !dbg !821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([2 x i8*]* @cmd_unignore.chans to i8*), i64 16, i32 16, i1 false), !dbg !821
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !822
  %49 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %48, i32 0, i32 6, !dbg !824
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %49, align 8, !dbg !824
  %51 = icmp ne %struct._SERVER_REC* %50, null, !dbg !825
  br i1 %51, label %52, label %67, !dbg !826

; <label>:52:                                     ; preds = %46
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !827
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 6, !dbg !828
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %54, align 8, !dbg !828
  %56 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %55, i32 0, i32 27, !dbg !829
  %57 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %56, align 8, !dbg !829
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !830
  %59 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %58, i32 0, i32 6, !dbg !831
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %59, align 8, !dbg !831
  %61 = load i8*, i8** %5, align 8, !dbg !832
  %62 = call i32 %57(%struct._SERVER_REC* %60, i8* %61), !dbg !833
  %63 = icmp ne i32 %62, 0, !dbg !833
  br i1 %63, label %64, label %67, !dbg !834

; <label>:64:                                     ; preds = %52
  %65 = load i8*, i8** %5, align 8, !dbg !836
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0, !dbg !838
  store i8* %65, i8** %66, align 16, !dbg !839
  store i8* null, i8** %5, align 8, !dbg !840
  br label %67, !dbg !841

; <label>:67:                                     ; preds = %64, %52, %46
  %68 = load i8*, i8** %5, align 8, !dbg !842
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i32 0, i32 0, !dbg !843
  %70 = call %struct._IGNORE_REC* @ignore_find_full(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* %68, i8* null, i8** %69, i32 0), !dbg !844
  store %struct._IGNORE_REC* %70, %struct._IGNORE_REC** %3, align 8, !dbg !845
  %71 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !846
  %72 = icmp eq %struct._IGNORE_REC* %71, null, !dbg !848
  br i1 %72, label %73, label %77, !dbg !849

; <label>:73:                                     ; preds = %67
  %74 = load i8*, i8** %5, align 8, !dbg !850
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i32 0, i32 0, !dbg !852
  %76 = call %struct._IGNORE_REC* @ignore_find_full(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* %74, i8* null, i8** %75, i32 2), !dbg !853
  store %struct._IGNORE_REC* %76, %struct._IGNORE_REC** %3, align 8, !dbg !854
  br label %77, !dbg !855

; <label>:77:                                     ; preds = %73, %67
  br label %78

; <label>:78:                                     ; preds = %77, %43
  %79 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !856
  %80 = icmp ne %struct._IGNORE_REC* %79, null, !dbg !858
  br i1 %80, label %81, label %85, !dbg !859

; <label>:81:                                     ; preds = %78
  %82 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !860
  %83 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %82, i32 0, i32 0, !dbg !862
  store i32 0, i32* %83, align 8, !dbg !863
  %84 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !864
  call void @ignore_update_rec(%struct._IGNORE_REC* %84), !dbg !865
  br label %87, !dbg !866

; <label>:85:                                     ; preds = %78
  %86 = load i8*, i8** %6, align 8, !dbg !867
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 189, i8* %86), !dbg !869
  br label %87

; <label>:87:                                     ; preds = %85, %81
  %88 = load i8*, i8** %7, align 8, !dbg !870
  call void @cmd_params_free(i8* %88), !dbg !871
  br label %89, !dbg !872

; <label>:89:                                     ; preds = %87, %21, %12
  ret void, !dbg !873
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_ignore_destroyed(%struct._IGNORE_REC*) #0 !dbg !875 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !878, metadata !367), !dbg !879
  call void @llvm.dbg.declare(metadata i8** %3, metadata !880, metadata !367), !dbg !881
  %4 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !882
  %5 = call i8* @ignore_get_key(%struct._IGNORE_REC* %4), !dbg !883
  store i8* %5, i8** %3, align 8, !dbg !884
  %6 = load i8*, i8** %3, align 8, !dbg !885
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 188, i8* %6), !dbg !886
  %7 = load i8*, i8** %3, align 8, !dbg !887
  call void @g_free(i8* %7), !dbg !888
  ret void, !dbg !889
}

; Function Attrs: nounwind uwtable
define internal void @sig_ignore_created(%struct._IGNORE_REC*) #0 !dbg !890 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !891, metadata !367), !dbg !892
  %3 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !893
  call void @ignore_print(i32 -1, %struct._IGNORE_REC* %3), !dbg !894
  ret void, !dbg !895
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @fe_ignore_deinit() #0 !dbg !896 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_ignore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !897
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_unignore to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !898
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !899
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !900
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IGNORE_REC*)* @sig_ignore_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !901
  ret void, !dbg !902
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_ignore_show() #0 !dbg !903 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct._IGNORE_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !904, metadata !367), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %2, metadata !906, metadata !367), !dbg !907
  %4 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !908
  %5 = icmp eq %struct._GSList* %4, null, !dbg !910
  br i1 %5, label %6, label %7, !dbg !911

; <label>:6:                                      ; preds = %0
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 190), !dbg !912
  br label %26, !dbg !914

; <label>:7:                                      ; preds = %0
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 191), !dbg !915
  store i32 1, i32* %2, align 4, !dbg !916
  %8 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !917
  store %struct._GSList* %8, %struct._GSList** %1, align 8, !dbg !919
  br label %9, !dbg !920

; <label>:9:                                      ; preds = %19, %7
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !921
  %11 = icmp ne %struct._GSList* %10, null, !dbg !924
  br i1 %11, label %12, label %25, !dbg !925

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !926, metadata !367), !dbg !928
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !929
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !930
  %15 = load i8*, i8** %14, align 8, !dbg !930
  %16 = bitcast i8* %15 to %struct._IGNORE_REC*, !dbg !929
  store %struct._IGNORE_REC* %16, %struct._IGNORE_REC** %3, align 8, !dbg !928
  %17 = load i32, i32* %2, align 4, !dbg !931
  %18 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !932
  call void @ignore_print(i32 %17, %struct._IGNORE_REC* %18), !dbg !933
  br label %19, !dbg !934

; <label>:19:                                     ; preds = %12
  %20 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !935
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 1, !dbg !937
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !937
  store %struct._GSList* %22, %struct._GSList** %1, align 8, !dbg !938
  %23 = load i32, i32* %2, align 4, !dbg !939
  %24 = add nsw i32 %23, 1, !dbg !939
  store i32 %24, i32* %2, align 4, !dbg !939
  br label %9, !dbg !940, !llvm.loop !941

; <label>:25:                                     ; preds = %9
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 193), !dbg !943
  br label %26, !dbg !944

; <label>:26:                                     ; preds = %25, %6
  ret void, !dbg !945
}

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare i32 @level2bits(i8*, i32*) #1

declare i32 @parse_time_interval(i8*, i32*) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare %struct._IGNORE_REC* @ignore_find_full(i8*, i8*, i8*, i8**, i32) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare void @g_strfreev(i8**) #1

declare i32 @combine_level(i32, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @ignore_add_rec(%struct._IGNORE_REC*) #1

declare void @ignore_update_rec(%struct._IGNORE_REC*) #1

; Function Attrs: nounwind uwtable
define internal void @ignore_print(i32, %struct._IGNORE_REC*) #0 !dbg !947 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IGNORE_REC*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !950, metadata !367), !dbg !951
  store %struct._IGNORE_REC* %1, %struct._IGNORE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %4, metadata !952, metadata !367), !dbg !953
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !954, metadata !367), !dbg !968
  call void @llvm.dbg.declare(metadata i8** %6, metadata !969, metadata !367), !dbg !970
  call void @llvm.dbg.declare(metadata i8** %7, metadata !971, metadata !367), !dbg !972
  %8 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !973
  %9 = call i8* @ignore_get_key(%struct._IGNORE_REC* %8), !dbg !974
  store i8* %9, i8** %6, align 8, !dbg !975
  %10 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !976
  %11 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %10, i32 0, i32 0, !dbg !977
  %12 = load i32, i32* %11, align 8, !dbg !977
  %13 = call i8* @bits2level(i32 %12), !dbg !978
  store i8* %13, i8** %7, align 8, !dbg !979
  %14 = call %struct._GString* @g_string_new(i8* null), !dbg !980
  store %struct._GString* %14, %struct._GString** %5, align 8, !dbg !981
  %15 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !982
  %16 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %15, i32 0, i32 6, !dbg !984
  %17 = load i8, i8* %16, align 8, !dbg !984
  %18 = and i8 %17, 1, !dbg !984
  %19 = zext i8 %18 to i32, !dbg !984
  %20 = icmp ne i32 %19, 0, !dbg !982
  br i1 %20, label %21, label %24, !dbg !985

; <label>:21:                                     ; preds = %2
  %22 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !986
  %23 = call %struct._GString* @g_string_append(%struct._GString* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !988
  br label %24, !dbg !988

; <label>:24:                                     ; preds = %21, %2
  %25 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !989
  %26 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %25, i32 0, i32 6, !dbg !991
  %27 = load i8, i8* %26, align 8, !dbg !991
  %28 = lshr i8 %27, 1, !dbg !991
  %29 = and i8 %28, 1, !dbg !991
  %30 = zext i8 %29 to i32, !dbg !991
  %31 = icmp ne i32 %30, 0, !dbg !989
  br i1 %31, label %32, label %52, !dbg !992

; <label>:32:                                     ; preds = %24
  %33 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !993
  %34 = call %struct._GString* @g_string_append(%struct._GString* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)), !dbg !995
  %35 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !996
  %36 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %35, i32 0, i32 4, !dbg !998
  %37 = load i8*, i8** %36, align 8, !dbg !998
  %38 = icmp eq i8* %37, null, !dbg !999
  br i1 %38, label %39, label %42, !dbg !1000

; <label>:39:                                     ; preds = %32
  %40 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1001
  %41 = call %struct._GString* @g_string_append(%struct._GString* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0)), !dbg !1002
  br label %51, !dbg !1002

; <label>:42:                                     ; preds = %32
  %43 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1003
  %44 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %43, i32 0, i32 7, !dbg !1005
  %45 = load %struct._GRegex*, %struct._GRegex** %44, align 8, !dbg !1005
  %46 = icmp eq %struct._GRegex* %45, null, !dbg !1006
  br i1 %46, label %47, label %50, !dbg !1007

; <label>:47:                                     ; preds = %42
  %48 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1008
  %49 = call %struct._GString* @g_string_append(%struct._GString* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)), !dbg !1009
  br label %50, !dbg !1009

; <label>:50:                                     ; preds = %47, %42
  br label %51

; <label>:51:                                     ; preds = %50, %39
  br label %52, !dbg !1010

; <label>:52:                                     ; preds = %51, %24
  %53 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1011
  %54 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %53, i32 0, i32 6, !dbg !1013
  %55 = load i8, i8* %54, align 8, !dbg !1013
  %56 = lshr i8 %55, 2, !dbg !1013
  %57 = and i8 %56, 1, !dbg !1013
  %58 = zext i8 %57 to i32, !dbg !1013
  %59 = icmp ne i32 %58, 0, !dbg !1011
  br i1 %59, label %60, label %63, !dbg !1014

; <label>:60:                                     ; preds = %52
  %61 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1015
  %62 = call %struct._GString* @g_string_append(%struct._GString* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)), !dbg !1017
  br label %63, !dbg !1017

; <label>:63:                                     ; preds = %60, %52
  %64 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1018
  %65 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %64, i32 0, i32 6, !dbg !1020
  %66 = load i8, i8* %65, align 8, !dbg !1020
  %67 = lshr i8 %66, 3, !dbg !1020
  %68 = and i8 %67, 1, !dbg !1020
  %69 = zext i8 %68 to i32, !dbg !1020
  %70 = icmp ne i32 %69, 0, !dbg !1018
  br i1 %70, label %71, label %74, !dbg !1021

; <label>:71:                                     ; preds = %63
  %72 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1022
  %73 = call %struct._GString* @g_string_append(%struct._GString* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)), !dbg !1024
  br label %74, !dbg !1024

; <label>:74:                                     ; preds = %71, %63
  %75 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1025
  %76 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %75, i32 0, i32 2, !dbg !1027
  %77 = load i8*, i8** %76, align 8, !dbg !1027
  %78 = icmp ne i8* %77, null, !dbg !1028
  br i1 %78, label %79, label %84, !dbg !1029

; <label>:79:                                     ; preds = %74
  %80 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1030
  %81 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1031
  %82 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %81, i32 0, i32 2, !dbg !1032
  %83 = load i8*, i8** %82, align 8, !dbg !1032
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* %83), !dbg !1033
  br label %84, !dbg !1033

; <label>:84:                                     ; preds = %79, %74
  %85 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1034
  %86 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %85, i32 0, i32 4, !dbg !1036
  %87 = load i8*, i8** %86, align 8, !dbg !1036
  %88 = icmp ne i8* %87, null, !dbg !1037
  br i1 %88, label %89, label %94, !dbg !1038

; <label>:89:                                     ; preds = %84
  %90 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1039
  %91 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1040
  %92 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %91, i32 0, i32 4, !dbg !1041
  %93 = load i8*, i8** %92, align 8, !dbg !1041
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* %93), !dbg !1042
  br label %94, !dbg !1042

; <label>:94:                                     ; preds = %89, %84
  %95 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1043
  %96 = getelementptr inbounds %struct._GString, %struct._GString* %95, i32 0, i32 1, !dbg !1045
  %97 = load i64, i64* %96, align 8, !dbg !1045
  %98 = icmp ugt i64 %97, 1, !dbg !1046
  br i1 %98, label %99, label %106, !dbg !1047

; <label>:99:                                     ; preds = %94
  %100 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1048
  %101 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1050
  %102 = getelementptr inbounds %struct._GString, %struct._GString* %101, i32 0, i32 1, !dbg !1051
  %103 = load i64, i64* %102, align 8, !dbg !1051
  %104 = sub i64 %103, 1, !dbg !1052
  %105 = call %struct._GString* @g_string_truncate(%struct._GString* %100, i64 %104), !dbg !1053
  br label %106, !dbg !1053

; <label>:106:                                    ; preds = %99, %94
  %107 = load i32, i32* %3, align 4, !dbg !1054
  %108 = icmp sge i32 %107, 0, !dbg !1056
  br i1 %108, label %109, label %128, !dbg !1057

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %3, align 4, !dbg !1058
  %111 = load i8*, i8** %6, align 8, !dbg !1060
  %112 = icmp ne i8* %111, null, !dbg !1061
  br i1 %112, label %113, label %115, !dbg !1060

; <label>:113:                                    ; preds = %109
  %114 = load i8*, i8** %6, align 8, !dbg !1062
  br label %116, !dbg !1064

; <label>:115:                                    ; preds = %109
  br label %116, !dbg !1065

; <label>:116:                                    ; preds = %115, %113
  %117 = phi i8* [ %114, %113 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %115 ], !dbg !1067
  %118 = load i8*, i8** %7, align 8, !dbg !1069
  %119 = icmp ne i8* %118, null, !dbg !1070
  br i1 %119, label %120, label %122, !dbg !1069

; <label>:120:                                    ; preds = %116
  %121 = load i8*, i8** %7, align 8, !dbg !1071
  br label %123, !dbg !1073

; <label>:122:                                    ; preds = %116
  br label %123, !dbg !1074

; <label>:123:                                    ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %122 ], !dbg !1076
  %125 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1078
  %126 = getelementptr inbounds %struct._GString, %struct._GString* %125, i32 0, i32 0, !dbg !1079
  %127 = load i8*, i8** %126, align 8, !dbg !1079
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 192, i32 %110, i8* %117, i8* %124, i8* %127), !dbg !1080
  br label %151, !dbg !1081

; <label>:128:                                    ; preds = %106
  %129 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1082
  %130 = getelementptr inbounds %struct._GString, %struct._GString* %129, i32 0, i32 1, !dbg !1084
  %131 = load i64, i64* %130, align 8, !dbg !1084
  %132 = icmp ugt i64 %131, 0, !dbg !1085
  %133 = select i1 %132, i32 187, i32 186, !dbg !1082
  %134 = load i8*, i8** %6, align 8, !dbg !1086
  %135 = icmp ne i8* %134, null, !dbg !1087
  br i1 %135, label %136, label %138, !dbg !1086

; <label>:136:                                    ; preds = %128
  %137 = load i8*, i8** %6, align 8, !dbg !1088
  br label %139, !dbg !1090

; <label>:138:                                    ; preds = %128
  br label %139, !dbg !1091

; <label>:139:                                    ; preds = %138, %136
  %140 = phi i8* [ %137, %136 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %138 ], !dbg !1093
  %141 = load i8*, i8** %7, align 8, !dbg !1095
  %142 = icmp ne i8* %141, null, !dbg !1096
  br i1 %142, label %143, label %145, !dbg !1095

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %7, align 8, !dbg !1097
  br label %146, !dbg !1099

; <label>:145:                                    ; preds = %139
  br label %146, !dbg !1100

; <label>:146:                                    ; preds = %145, %143
  %147 = phi i8* [ %144, %143 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), %145 ], !dbg !1102
  %148 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1104
  %149 = getelementptr inbounds %struct._GString, %struct._GString* %148, i32 0, i32 0, !dbg !1105
  %150 = load i8*, i8** %149, align 8, !dbg !1105
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 %133, i8* %140, i8* %147, i8* %150), !dbg !1106
  br label %151

; <label>:151:                                    ; preds = %146, %123
  %152 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1107
  %153 = call i8* @g_string_free(%struct._GString* %152, i32 1), !dbg !1108
  %154 = load i8*, i8** %6, align 8, !dbg !1109
  call void @g_free(i8* %154), !dbg !1110
  %155 = load i8*, i8** %7, align 8, !dbg !1111
  call void @g_free(i8* %155), !dbg !1112
  ret void, !dbg !1113
}

; Function Attrs: nounwind uwtable
define internal i8* @ignore_get_key(%struct._IGNORE_REC*) #0 !dbg !1114 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IGNORE_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !1117, metadata !367), !dbg !1118
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1119, metadata !367), !dbg !1120
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1121, metadata !367), !dbg !1122
  %6 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1123
  %7 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %6, i32 0, i32 3, !dbg !1125
  %8 = load i8**, i8*** %7, align 8, !dbg !1125
  %9 = icmp eq i8** %8, null, !dbg !1126
  br i1 %9, label %10, label %23, !dbg !1127

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1128
  %12 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %11, i32 0, i32 1, !dbg !1129
  %13 = load i8*, i8** %12, align 8, !dbg !1129
  %14 = icmp ne i8* %13, null, !dbg !1130
  br i1 %14, label %15, label %19, !dbg !1128

; <label>:15:                                     ; preds = %10
  %16 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1131
  %17 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %16, i32 0, i32 1, !dbg !1133
  %18 = load i8*, i8** %17, align 8, !dbg !1133
  br label %20, !dbg !1134

; <label>:19:                                     ; preds = %10
  br label %20, !dbg !1135

; <label>:20:                                     ; preds = %19, %15
  %21 = phi i8* [ %18, %15 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %19 ], !dbg !1137
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !1139
  store i8* %22, i8** %2, align 8, !dbg !1140
  br label %42, !dbg !1140

; <label>:23:                                     ; preds = %1
  %24 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1141
  %25 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %24, i32 0, i32 3, !dbg !1142
  %26 = load i8**, i8*** %25, align 8, !dbg !1142
  %27 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %26), !dbg !1143
  store i8* %27, i8** %4, align 8, !dbg !1144
  %28 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1145
  %29 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %28, i32 0, i32 1, !dbg !1147
  %30 = load i8*, i8** %29, align 8, !dbg !1147
  %31 = icmp eq i8* %30, null, !dbg !1148
  br i1 %31, label %32, label %34, !dbg !1149

; <label>:32:                                     ; preds = %23
  %33 = load i8*, i8** %4, align 8, !dbg !1150
  store i8* %33, i8** %2, align 8, !dbg !1152
  br label %42, !dbg !1152

; <label>:34:                                     ; preds = %23
  %35 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1153
  %36 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %35, i32 0, i32 1, !dbg !1154
  %37 = load i8*, i8** %36, align 8, !dbg !1154
  %38 = load i8*, i8** %4, align 8, !dbg !1155
  %39 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* %37, i8* %38), !dbg !1156
  store i8* %39, i8** %5, align 8, !dbg !1157
  %40 = load i8*, i8** %4, align 8, !dbg !1158
  call void @g_free(i8* %40), !dbg !1159
  %41 = load i8*, i8** %5, align 8, !dbg !1160
  store i8* %41, i8** %2, align 8, !dbg !1161
  br label %42, !dbg !1161

; <label>:42:                                     ; preds = %34, %32, %20
  %43 = load i8*, i8** %2, align 8, !dbg !1162
  ret i8* %43, !dbg !1162
}

declare i8* @bits2level(i32) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare noalias i8* @g_strjoinv(i8*, i8**) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @is_numeric(i8*, i8 signext) #1

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!346, !347}
!llvm.ident = !{!348}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !303)
!1 = !DIFile(filename: "line228-fe-ignore.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !24, !30, !61}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!7 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!8 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!9 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!11 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!12 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!13 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!14 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!15 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!16 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!17 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!18 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!19 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!20 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!21 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!22 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!23 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 29, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "../../../src/core/ignore.h", directory: "/home/lichi/Desktop/irssi/task1")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "IGNORE_FIND_PATTERN", value: 1)
!28 = !DIEnumerator(name: "IGNORE_FIND_NOACT", value: 2)
!29 = !DIEnumerator(name: "IGNORE_FIND_HIDDEN", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 10, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!33 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!34 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!35 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!36 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!37 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!38 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!39 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!40 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!41 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!42 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!43 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!44 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!45 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!46 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!47 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!48 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!49 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!50 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!51 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!52 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!53 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!54 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!55 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!56 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!57 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!58 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!59 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!60 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 3, size: 32, align: 32, elements: !63)
!62 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!64 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!65 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!66 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!67 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!68 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!69 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!70 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!71 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!72 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!73 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!74 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!75 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!76 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!77 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!78 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!79 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!80 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!81 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!82 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!83 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!84 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!85 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!86 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!87 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!88 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!89 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!90 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!93 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!104 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!105 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!106 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!107 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!108 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!109 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!110 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!111 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!112 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!113 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!114 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!115 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!116 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!117 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!118 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!119 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!120 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!121 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!122 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!123 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!124 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!125 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!126 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!127 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!128 = !DIEnumerator(name: "TXT_PART", value: 64)
!129 = !DIEnumerator(name: "TXT_KICK", value: 65)
!130 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!131 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!132 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!133 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!134 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!135 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!136 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!137 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!138 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!139 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!140 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!141 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!142 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!143 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!144 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!145 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!146 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!147 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!148 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!149 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!150 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!151 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!152 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!153 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!154 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!155 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!156 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!157 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!158 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!159 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!160 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!161 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!162 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!163 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!164 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!165 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!166 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!167 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!168 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!169 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!170 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!171 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!172 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!173 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!174 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!175 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!176 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!177 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!178 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!179 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!180 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!181 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!182 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!183 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!184 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!185 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!186 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!187 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!188 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!189 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!190 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!191 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!192 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!193 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!194 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!195 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!196 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!197 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!198 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!199 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!200 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!201 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!202 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!203 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!204 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!205 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!206 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!207 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!208 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!209 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!210 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!211 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!212 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!213 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!214 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!215 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!216 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!217 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!218 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!219 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!220 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!221 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!222 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!223 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!224 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!225 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!226 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!227 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!228 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!229 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!230 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!231 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!232 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!233 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!234 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!235 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!236 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!237 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!238 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!239 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!240 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!241 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!242 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!243 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!244 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!245 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!246 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!247 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!248 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!249 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!250 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!251 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!252 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!253 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!254 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!255 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!256 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!257 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!258 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!259 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!260 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!261 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!262 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!263 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!264 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!265 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!266 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!267 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!268 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!269 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!270 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!271 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!272 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!273 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!274 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!275 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!276 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!277 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!278 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!279 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!280 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!281 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!282 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!283 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!284 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!285 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!286 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!287 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!288 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!289 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!290 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!291 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!292 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!293 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!294 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!295 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!296 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!297 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!298 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!299 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!300 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!301 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!302 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!303 = !{!304, !311, !312, !314, !316, !327}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !305, line: 9, baseType: !306)
!305 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309, !309, !309, !309, !309, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !313, line: 77, baseType: !311)
!313 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !313, line: 48, baseType: !315)
!315 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "IGNORE_REC", file: !25, line: 6, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IGNORE_REC", file: !25, line: 8, size: 512, align: 64, elements: !319)
!319 = !{!320, !322, !325, !326, !328, !329, !334, !336, !337, !338, !339}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !318, file: !25, line: 9, baseType: !321, size: 32, align: 32)
!321 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !318, file: !25, line: 10, baseType: !323, size: 64, align: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !318, file: !25, line: 11, baseType: !323, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !318, file: !25, line: 12, baseType: !327, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !318, file: !25, line: 13, baseType: !323, size: 64, align: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "unignore_time", scope: !318, file: !25, line: 15, baseType: !330, size: 64, align: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !331, line: 75, baseType: !332)
!331 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !333, line: 139, baseType: !315)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !318, file: !25, line: 17, baseType: !335, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!335 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !318, file: !25, line: 18, baseType: !335, size: 1, align: 32, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "fullword", scope: !318, file: !25, line: 19, baseType: !335, size: 1, align: 32, offset: 386, flags: DIFlagBitField, extraData: i64 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "replies", scope: !318, file: !25, line: 20, baseType: !335, size: 1, align: 32, offset: 387, flags: DIFlagBitField, extraData: i64 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "preg", scope: !318, file: !25, line: 21, baseType: !340, size: 64, align: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !342, line: 9, baseType: !343)
!342 = !DIFile(filename: "../../../src/core/iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !344, line: 414, baseType: !345)
!344 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !344, line: 414, flags: DIFlagFwdDecl)
!346 = !{i32 2, !"Dwarf Version", i32 4}
!347 = !{i32 2, !"Debug Info Version", i32 3}
!348 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!349 = distinct !DISubprogram(name: "fe_ignore_init", scope: !350, file: !350, line: 283, type: !351, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!350 = !DIFile(filename: "fe-ignore.c", directory: "/home/lichi/Desktop/irssi/task1")
!351 = !DISubroutineType(types: !352)
!352 = !{null}
!353 = !{}
!354 = !DILocation(line: 285, column: 2, scope: !349)
!355 = !DILocation(line: 286, column: 2, scope: !349)
!356 = !DILocation(line: 288, column: 2, scope: !349)
!357 = !DILocation(line: 289, column: 2, scope: !349)
!358 = !DILocation(line: 290, column: 2, scope: !349)
!359 = !DILocation(line: 292, column: 2, scope: !349)
!360 = !DILocation(line: 293, column: 1, scope: !349)
!361 = distinct !DISubprogram(name: "cmd_ignore", scope: !350, file: !350, line: 114, type: !362, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!366 = !DILocalVariable(name: "data", arg: 1, scope: !361, file: !350, line: 114, type: !364)
!367 = !DIExpression()
!368 = !DILocation(line: 114, column: 36, scope: !361)
!369 = !DILocalVariable(name: "optlist", scope: !361, file: !350, line: 116, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !372, line: 37, baseType: !373)
!372 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !372, line: 37, flags: DIFlagFwdDecl)
!374 = !DILocation(line: 116, column: 14, scope: !361)
!375 = !DILocalVariable(name: "rec", scope: !361, file: !350, line: 117, type: !316)
!376 = !DILocation(line: 117, column: 14, scope: !361)
!377 = !DILocalVariable(name: "patternarg", scope: !361, file: !350, line: 118, type: !323)
!378 = !DILocation(line: 118, column: 8, scope: !361)
!379 = !DILocalVariable(name: "chanarg", scope: !361, file: !350, line: 118, type: !323)
!380 = !DILocation(line: 118, column: 21, scope: !361)
!381 = !DILocalVariable(name: "mask", scope: !361, file: !350, line: 118, type: !323)
!382 = !DILocation(line: 118, column: 31, scope: !361)
!383 = !DILocalVariable(name: "levels", scope: !361, file: !350, line: 118, type: !323)
!384 = !DILocation(line: 118, column: 38, scope: !361)
!385 = !DILocalVariable(name: "timestr", scope: !361, file: !350, line: 118, type: !323)
!386 = !DILocation(line: 118, column: 47, scope: !361)
!387 = !DILocalVariable(name: "servertag", scope: !361, file: !350, line: 118, type: !323)
!388 = !DILocation(line: 118, column: 57, scope: !361)
!389 = !DILocalVariable(name: "channels", scope: !361, file: !350, line: 119, type: !327)
!390 = !DILocation(line: 119, column: 9, scope: !361)
!391 = !DILocalVariable(name: "free_arg", scope: !361, file: !350, line: 120, type: !311)
!392 = !DILocation(line: 120, column: 8, scope: !361)
!393 = !DILocalVariable(name: "new_ignore", scope: !361, file: !350, line: 121, type: !321)
!394 = !DILocation(line: 121, column: 6, scope: !361)
!395 = !DILocalVariable(name: "msecs", scope: !361, file: !350, line: 121, type: !321)
!396 = !DILocation(line: 121, column: 18, scope: !361)
!397 = !DILocalVariable(name: "level", scope: !361, file: !350, line: 121, type: !321)
!398 = !DILocation(line: 121, column: 25, scope: !361)
!399 = !DILocalVariable(name: "flags", scope: !361, file: !350, line: 121, type: !321)
!400 = !DILocation(line: 121, column: 32, scope: !361)
!401 = !DILocation(line: 123, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !361, file: !350, line: 123, column: 6)
!403 = !DILocation(line: 123, column: 6, scope: !402)
!404 = !DILocation(line: 123, column: 12, scope: !402)
!405 = !DILocation(line: 123, column: 6, scope: !361)
!406 = !DILocation(line: 124, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !350, line: 123, column: 21)
!408 = !DILocation(line: 125, column: 3, scope: !407)
!409 = !DILocation(line: 128, column: 22, scope: !410)
!410 = distinct !DILexicalBlock(scope: !361, file: !350, line: 128, column: 6)
!411 = !DILocation(line: 128, column: 7, scope: !410)
!412 = !DILocation(line: 128, column: 6, scope: !361)
!413 = !DILocation(line: 131, column: 3, scope: !410)
!414 = !DILocation(line: 133, column: 35, scope: !361)
!415 = !DILocation(line: 133, column: 15, scope: !361)
!416 = !DILocation(line: 133, column: 13, scope: !361)
!417 = !DILocation(line: 134, column: 39, scope: !361)
!418 = !DILocation(line: 134, column: 19, scope: !361)
!419 = !DILocation(line: 134, column: 17, scope: !361)
!420 = !DILocation(line: 135, column: 34, scope: !361)
!421 = !DILocation(line: 135, column: 14, scope: !361)
!422 = !DILocation(line: 135, column: 12, scope: !361)
!423 = !DILocation(line: 137, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !361, file: !350, line: 137, column: 6)
!425 = !DILocation(line: 137, column: 6, scope: !361)
!426 = !DILocation(line: 138, column: 35, scope: !424)
!427 = !DILocation(line: 138, column: 15, scope: !424)
!428 = !DILocation(line: 138, column: 13, scope: !424)
!429 = !DILocation(line: 138, column: 3, scope: !424)
!430 = !DILocation(line: 140, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !361, file: !350, line: 140, column: 6)
!432 = !DILocation(line: 140, column: 6, scope: !431)
!433 = !DILocation(line: 140, column: 12, scope: !431)
!434 = !DILocation(line: 140, column: 6, scope: !361)
!435 = !DILocation(line: 140, column: 21, scope: !436)
!436 = !DILexicalBlockFile(scope: !431, file: !350, discriminator: 1)
!437 = distinct !{!437, !438}
!438 = !DILocation(line: 140, column: 21, scope: !431)
!439 = !DILocation(line: 140, column: 42, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !350, discriminator: 2)
!441 = distinct !DILexicalBlock(scope: !431, file: !350, line: 140, column: 24)
!442 = !DILocation(line: 140, column: 26, scope: !440)
!443 = !DILocation(line: 140, column: 53, scope: !440)
!444 = distinct !{!444, !445}
!445 = !DILocation(line: 140, column: 53, scope: !441)
!446 = !DILocation(line: 140, column: 58, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !350, discriminator: 3)
!448 = distinct !DILexicalBlock(scope: !441, file: !350, line: 140, column: 56)
!449 = !DILocation(line: 140, column: 140, scope: !450)
!450 = !DILexicalBlockFile(scope: !447, file: !350, discriminator: 6)
!451 = !DILocation(line: 140, column: 155, scope: !447)
!452 = !DILocation(line: 140, column: 176, scope: !453)
!453 = !DILexicalBlockFile(scope: !441, file: !350, discriminator: 4)
!454 = !DILocation(line: 140, column: 176, scope: !455)
!455 = !DILexicalBlockFile(scope: !441, file: !350, discriminator: 5)
!456 = !DILocation(line: 141, column: 14, scope: !457)
!457 = distinct !DILexicalBlock(scope: !361, file: !350, line: 141, column: 13)
!458 = !DILocation(line: 141, column: 13, scope: !457)
!459 = !DILocation(line: 141, column: 21, scope: !457)
!460 = !DILocation(line: 141, column: 13, scope: !361)
!461 = !DILocation(line: 141, column: 37, scope: !462)
!462 = !DILexicalBlockFile(scope: !457, file: !350, discriminator: 1)
!463 = !DILocation(line: 141, column: 30, scope: !462)
!464 = !DILocation(line: 142, column: 21, scope: !361)
!465 = !DILocation(line: 142, column: 10, scope: !361)
!466 = !DILocation(line: 142, column: 8, scope: !361)
!467 = !DILocation(line: 144, column: 8, scope: !361)
!468 = !DILocation(line: 145, column: 32, scope: !361)
!469 = !DILocation(line: 145, column: 12, scope: !361)
!470 = !DILocation(line: 145, column: 10, scope: !361)
!471 = !DILocation(line: 146, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !361, file: !350, line: 146, column: 6)
!473 = !DILocation(line: 146, column: 14, scope: !472)
!474 = !DILocation(line: 146, column: 6, scope: !361)
!475 = !DILocation(line: 147, column: 28, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !350, line: 147, column: 7)
!477 = distinct !DILexicalBlock(scope: !472, file: !350, line: 146, column: 22)
!478 = !DILocation(line: 147, column: 8, scope: !476)
!479 = !DILocation(line: 147, column: 7, scope: !477)
!480 = !DILocation(line: 148, column: 4, scope: !476)
!481 = distinct !{!481, !480}
!482 = !DILocation(line: 148, column: 25, scope: !483)
!483 = !DILexicalBlockFile(scope: !484, file: !350, discriminator: 1)
!484 = distinct !DILexicalBlock(scope: !476, file: !350, line: 148, column: 7)
!485 = !DILocation(line: 148, column: 9, scope: !483)
!486 = !DILocation(line: 148, column: 36, scope: !483)
!487 = distinct !{!487, !488}
!488 = !DILocation(line: 148, column: 36, scope: !484)
!489 = !DILocation(line: 148, column: 41, scope: !490)
!490 = !DILexicalBlockFile(scope: !491, file: !350, discriminator: 2)
!491 = distinct !DILexicalBlock(scope: !484, file: !350, line: 148, column: 39)
!492 = !DILocation(line: 148, column: 118, scope: !493)
!493 = !DILexicalBlockFile(scope: !490, file: !350, discriminator: 5)
!494 = !DILocation(line: 148, column: 133, scope: !490)
!495 = !DILocation(line: 148, column: 154, scope: !496)
!496 = !DILexicalBlockFile(scope: !484, file: !350, discriminator: 3)
!497 = !DILocation(line: 148, column: 154, scope: !498)
!498 = !DILexicalBlockFile(scope: !484, file: !350, discriminator: 4)
!499 = !DILocation(line: 149, column: 2, scope: !477)
!500 = !DILocation(line: 151, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !361, file: !350, line: 151, column: 6)
!502 = !DILocation(line: 151, column: 18, scope: !501)
!503 = !DILocation(line: 151, column: 32, scope: !501)
!504 = !DILocation(line: 151, column: 39, scope: !501)
!505 = !DILocation(line: 152, column: 8, scope: !501)
!506 = !DILocation(line: 152, column: 20, scope: !501)
!507 = !DILocation(line: 152, column: 36, scope: !501)
!508 = !DILocation(line: 152, column: 46, scope: !501)
!509 = !DILocation(line: 152, column: 58, scope: !501)
!510 = !DILocation(line: 152, column: 73, scope: !501)
!511 = !DILocation(line: 152, column: 7, scope: !501)
!512 = !DILocation(line: 151, column: 6, scope: !513)
!513 = !DILexicalBlockFile(scope: !361, file: !350, discriminator: 1)
!514 = !DILocation(line: 153, column: 13, scope: !515)
!515 = distinct !DILexicalBlock(scope: !501, file: !350, line: 152, column: 81)
!516 = !DILocation(line: 153, column: 11, scope: !515)
!517 = !DILocation(line: 154, column: 8, scope: !515)
!518 = !DILocation(line: 155, column: 2, scope: !515)
!519 = !DILocation(line: 156, column: 14, scope: !361)
!520 = !DILocation(line: 156, column: 22, scope: !361)
!521 = !DILocation(line: 156, column: 29, scope: !361)
!522 = !DILocation(line: 156, column: 33, scope: !513)
!523 = !DILocation(line: 156, column: 32, scope: !513)
!524 = !DILocation(line: 156, column: 41, scope: !513)
!525 = !DILocation(line: 156, column: 13, scope: !513)
!526 = !DILocation(line: 156, column: 13, scope: !527)
!527 = !DILexicalBlockFile(scope: !361, file: !350, discriminator: 2)
!528 = !DILocation(line: 157, column: 14, scope: !361)
!529 = !DILocation(line: 157, column: 3, scope: !361)
!530 = !DILocation(line: 156, column: 13, scope: !531)
!531 = !DILexicalBlockFile(scope: !361, file: !350, discriminator: 3)
!532 = !DILocation(line: 156, column: 13, scope: !533)
!533 = !DILexicalBlockFile(scope: !361, file: !350, discriminator: 4)
!534 = !DILocation(line: 156, column: 11, scope: !533)
!535 = !DILocation(line: 159, column: 8, scope: !361)
!536 = !DILocation(line: 160, column: 6, scope: !537)
!537 = distinct !DILexicalBlock(scope: !361, file: !350, line: 160, column: 6)
!538 = !DILocation(line: 160, column: 12, scope: !537)
!539 = !DILocation(line: 160, column: 6, scope: !361)
!540 = !DILocation(line: 161, column: 9, scope: !537)
!541 = !DILocation(line: 161, column: 3, scope: !537)
!542 = !DILocation(line: 162, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !361, file: !350, line: 162, column: 6)
!544 = !DILocation(line: 162, column: 12, scope: !543)
!545 = !DILocation(line: 162, column: 6, scope: !361)
!546 = !DILocation(line: 163, column: 9, scope: !543)
!547 = !DILocation(line: 163, column: 3, scope: !543)
!548 = !DILocation(line: 165, column: 25, scope: !361)
!549 = !DILocation(line: 165, column: 36, scope: !361)
!550 = !DILocation(line: 165, column: 42, scope: !361)
!551 = !DILocation(line: 165, column: 54, scope: !361)
!552 = !DILocation(line: 165, column: 64, scope: !361)
!553 = !DILocation(line: 165, column: 8, scope: !361)
!554 = !DILocation(line: 165, column: 6, scope: !361)
!555 = !DILocation(line: 166, column: 15, scope: !361)
!556 = !DILocation(line: 166, column: 19, scope: !361)
!557 = !DILocation(line: 166, column: 13, scope: !361)
!558 = !DILocation(line: 168, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !361, file: !350, line: 168, column: 6)
!560 = !DILocation(line: 168, column: 10, scope: !559)
!561 = !DILocation(line: 168, column: 6, scope: !361)
!562 = !DILocation(line: 169, column: 25, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !350, line: 168, column: 18)
!564 = !DILocation(line: 169, column: 10, scope: !563)
!565 = !DILocation(line: 169, column: 7, scope: !563)
!566 = !DILocation(line: 171, column: 15, scope: !563)
!567 = !DILocation(line: 171, column: 20, scope: !563)
!568 = !DILocation(line: 171, column: 27, scope: !563)
!569 = !DILocation(line: 171, column: 31, scope: !570)
!570 = !DILexicalBlockFile(scope: !563, file: !350, discriminator: 1)
!571 = !DILocation(line: 171, column: 30, scope: !570)
!572 = !DILocation(line: 171, column: 36, scope: !570)
!573 = !DILocation(line: 171, column: 44, scope: !570)
!574 = !DILocation(line: 172, column: 14, scope: !563)
!575 = !DILocation(line: 172, column: 4, scope: !563)
!576 = !DILocation(line: 172, column: 25, scope: !563)
!577 = !DILocation(line: 171, column: 15, scope: !578)
!578 = !DILexicalBlockFile(scope: !563, file: !350, discriminator: 2)
!579 = !DILocation(line: 171, column: 15, scope: !580)
!580 = !DILexicalBlockFile(scope: !563, file: !350, discriminator: 3)
!581 = !DILocation(line: 172, column: 47, scope: !570)
!582 = !DILocation(line: 172, column: 38, scope: !570)
!583 = !DILocation(line: 171, column: 15, scope: !584)
!584 = !DILexicalBlockFile(scope: !563, file: !350, discriminator: 4)
!585 = !DILocation(line: 171, column: 15, scope: !586)
!586 = !DILexicalBlockFile(scope: !563, file: !350, discriminator: 5)
!587 = !DILocation(line: 171, column: 3, scope: !586)
!588 = !DILocation(line: 171, column: 8, scope: !586)
!589 = !DILocation(line: 171, column: 13, scope: !586)
!590 = !DILocation(line: 173, column: 19, scope: !563)
!591 = !DILocation(line: 173, column: 3, scope: !563)
!592 = !DILocation(line: 173, column: 8, scope: !563)
!593 = !DILocation(line: 173, column: 17, scope: !563)
!594 = !DILocation(line: 174, column: 2, scope: !563)
!595 = !DILocation(line: 175, column: 17, scope: !596)
!596 = distinct !DILexicalBlock(scope: !559, file: !350, line: 174, column: 9)
!597 = distinct !{!597, !595}
!598 = !DILocation(line: 175, column: 26, scope: !599)
!599 = !DILexicalBlockFile(scope: !600, file: !350, discriminator: 1)
!600 = distinct !DILexicalBlock(scope: !601, file: !350, line: 175, column: 26)
!601 = distinct !DILexicalBlock(scope: !596, file: !350, line: 175, column: 20)
!602 = !DILocation(line: 175, column: 31, scope: !599)
!603 = !DILocation(line: 175, column: 49, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !350, discriminator: 2)
!605 = distinct !DILexicalBlock(scope: !600, file: !350, line: 175, column: 40)
!606 = !DILocation(line: 175, column: 54, scope: !604)
!607 = !DILocation(line: 175, column: 42, scope: !604)
!608 = !DILocation(line: 175, column: 65, scope: !604)
!609 = !DILocation(line: 175, column: 70, scope: !604)
!610 = !DILocation(line: 175, column: 79, scope: !604)
!611 = !DILocation(line: 175, column: 18, scope: !604)
!612 = !DILocation(line: 175, column: 20, scope: !613)
!613 = !DILexicalBlockFile(scope: !601, file: !350, discriminator: 3)
!614 = !DILocation(line: 176, column: 14, scope: !596)
!615 = !DILocation(line: 176, column: 3, scope: !596)
!616 = !DILocation(line: 179, column: 29, scope: !361)
!617 = !DILocation(line: 179, column: 34, scope: !361)
!618 = !DILocation(line: 179, column: 41, scope: !361)
!619 = !DILocation(line: 179, column: 15, scope: !361)
!620 = !DILocation(line: 179, column: 2, scope: !361)
!621 = !DILocation(line: 179, column: 7, scope: !361)
!622 = !DILocation(line: 179, column: 13, scope: !361)
!623 = !DILocation(line: 181, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !361, file: !350, line: 181, column: 6)
!625 = !DILocation(line: 181, column: 11, scope: !624)
!626 = !DILocation(line: 181, column: 17, scope: !624)
!627 = !DILocation(line: 181, column: 6, scope: !361)
!628 = !DILocation(line: 184, column: 3, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !350, line: 181, column: 37)
!630 = !DILocation(line: 184, column: 8, scope: !629)
!631 = !DILocation(line: 184, column: 14, scope: !629)
!632 = !DILocation(line: 185, column: 2, scope: !629)
!633 = !DILocation(line: 187, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !361, file: !350, line: 187, column: 6)
!635 = !DILocation(line: 187, column: 11, scope: !634)
!636 = !DILocation(line: 187, column: 17, scope: !634)
!637 = !DILocation(line: 187, column: 6, scope: !361)
!638 = !DILocation(line: 190, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !350, line: 187, column: 37)
!640 = !DILocation(line: 190, column: 8, scope: !639)
!641 = !DILocation(line: 190, column: 14, scope: !639)
!642 = !DILocation(line: 191, column: 2, scope: !639)
!643 = !DILocation(line: 193, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !361, file: !350, line: 193, column: 6)
!645 = !DILocation(line: 193, column: 17, scope: !644)
!646 = !DILocation(line: 193, column: 20, scope: !647)
!647 = !DILexicalBlockFile(scope: !644, file: !350, discriminator: 1)
!648 = !DILocation(line: 193, column: 25, scope: !647)
!649 = !DILocation(line: 193, column: 31, scope: !647)
!650 = !DILocation(line: 193, column: 6, scope: !647)
!651 = !DILocation(line: 195, column: 49, scope: !652)
!652 = distinct !DILexicalBlock(scope: !644, file: !350, line: 193, column: 37)
!653 = !DILocation(line: 195, column: 54, scope: !652)
!654 = !DILocation(line: 195, column: 3, scope: !652)
!655 = !DILocation(line: 197, column: 10, scope: !652)
!656 = !DILocation(line: 197, column: 15, scope: !652)
!657 = !DILocation(line: 197, column: 3, scope: !652)
!658 = !DILocation(line: 198, column: 14, scope: !652)
!659 = !DILocation(line: 198, column: 19, scope: !652)
!660 = !DILocation(line: 198, column: 3, scope: !652)
!661 = !DILocation(line: 199, column: 10, scope: !652)
!662 = !DILocation(line: 199, column: 3, scope: !652)
!663 = !DILocation(line: 200, column: 19, scope: !652)
!664 = !DILocation(line: 200, column: 3, scope: !652)
!665 = !DILocation(line: 201, column: 17, scope: !652)
!666 = !DILocation(line: 203, column: 20, scope: !361)
!667 = !DILocation(line: 203, column: 30, scope: !361)
!668 = !DILocation(line: 203, column: 37, scope: !361)
!669 = !DILocation(line: 203, column: 41, scope: !513)
!670 = !DILocation(line: 203, column: 40, scope: !513)
!671 = !DILocation(line: 203, column: 51, scope: !513)
!672 = !DILocation(line: 203, column: 19, scope: !513)
!673 = !DILocation(line: 203, column: 19, scope: !527)
!674 = !DILocation(line: 204, column: 18, scope: !361)
!675 = !DILocation(line: 204, column: 9, scope: !361)
!676 = !DILocation(line: 203, column: 19, scope: !531)
!677 = !DILocation(line: 203, column: 19, scope: !533)
!678 = !DILocation(line: 203, column: 2, scope: !533)
!679 = !DILocation(line: 203, column: 7, scope: !533)
!680 = !DILocation(line: 203, column: 17, scope: !533)
!681 = !DILocation(line: 205, column: 18, scope: !361)
!682 = !DILocation(line: 205, column: 29, scope: !361)
!683 = !DILocation(line: 205, column: 36, scope: !361)
!684 = !DILocation(line: 205, column: 40, scope: !513)
!685 = !DILocation(line: 205, column: 39, scope: !513)
!686 = !DILocation(line: 205, column: 51, scope: !513)
!687 = !DILocation(line: 205, column: 17, scope: !513)
!688 = !DILocation(line: 205, column: 17, scope: !527)
!689 = !DILocation(line: 206, column: 18, scope: !361)
!690 = !DILocation(line: 206, column: 9, scope: !361)
!691 = !DILocation(line: 205, column: 17, scope: !531)
!692 = !DILocation(line: 205, column: 17, scope: !533)
!693 = !DILocation(line: 205, column: 2, scope: !533)
!694 = !DILocation(line: 205, column: 7, scope: !533)
!695 = !DILocation(line: 205, column: 15, scope: !533)
!696 = !DILocation(line: 207, column: 39, scope: !361)
!697 = !DILocation(line: 207, column: 19, scope: !361)
!698 = !DILocation(line: 207, column: 58, scope: !361)
!699 = !DILocation(line: 207, column: 2, scope: !361)
!700 = !DILocation(line: 207, column: 7, scope: !361)
!701 = !DILocation(line: 207, column: 17, scope: !361)
!702 = !DILocation(line: 208, column: 36, scope: !361)
!703 = !DILocation(line: 208, column: 16, scope: !361)
!704 = !DILocation(line: 208, column: 55, scope: !361)
!705 = !DILocation(line: 208, column: 2, scope: !361)
!706 = !DILocation(line: 208, column: 7, scope: !361)
!707 = !DILocation(line: 208, column: 14, scope: !361)
!708 = !DILocation(line: 209, column: 38, scope: !361)
!709 = !DILocation(line: 209, column: 18, scope: !361)
!710 = !DILocation(line: 209, column: 55, scope: !361)
!711 = !DILocation(line: 209, column: 2, scope: !361)
!712 = !DILocation(line: 209, column: 7, scope: !361)
!713 = !DILocation(line: 209, column: 16, scope: !361)
!714 = !DILocation(line: 210, column: 37, scope: !361)
!715 = !DILocation(line: 210, column: 17, scope: !361)
!716 = !DILocation(line: 210, column: 57, scope: !361)
!717 = !DILocation(line: 210, column: 2, scope: !361)
!718 = !DILocation(line: 210, column: 7, scope: !361)
!719 = !DILocation(line: 210, column: 15, scope: !361)
!720 = !DILocation(line: 211, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !361, file: !350, line: 211, column: 6)
!722 = !DILocation(line: 211, column: 12, scope: !721)
!723 = !DILocation(line: 211, column: 6, scope: !361)
!724 = !DILocation(line: 212, column: 24, scope: !721)
!725 = !DILocation(line: 212, column: 34, scope: !721)
!726 = !DILocation(line: 212, column: 39, scope: !721)
!727 = !DILocation(line: 212, column: 33, scope: !721)
!728 = !DILocation(line: 212, column: 3, scope: !721)
!729 = !DILocation(line: 212, column: 8, scope: !721)
!730 = !DILocation(line: 212, column: 22, scope: !721)
!731 = !DILocation(line: 214, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !361, file: !350, line: 214, column: 6)
!733 = !DILocation(line: 214, column: 6, scope: !361)
!734 = !DILocation(line: 215, column: 18, scope: !732)
!735 = !DILocation(line: 215, column: 3, scope: !732)
!736 = !DILocation(line: 217, column: 21, scope: !732)
!737 = !DILocation(line: 217, column: 3, scope: !732)
!738 = !DILocation(line: 219, column: 18, scope: !361)
!739 = !DILocation(line: 219, column: 2, scope: !361)
!740 = !DILocation(line: 220, column: 1, scope: !361)
!741 = !DILocation(line: 220, column: 1, scope: !513)
!742 = distinct !DISubprogram(name: "cmd_unignore", scope: !350, file: !350, line: 223, type: !362, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!743 = !DILocalVariable(name: "data", arg: 1, scope: !742, file: !350, line: 223, type: !364)
!744 = !DILocation(line: 223, column: 38, scope: !742)
!745 = !DILocalVariable(name: "rec", scope: !742, file: !350, line: 225, type: !316)
!746 = !DILocation(line: 225, column: 14, scope: !742)
!747 = !DILocalVariable(name: "tmp", scope: !742, file: !350, line: 226, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !750, line: 37, baseType: !751)
!750 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !750, line: 39, size: 128, align: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !751, file: !750, line: 41, baseType: !312, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !750, line: 42, baseType: !748, size: 64, align: 64, offset: 64)
!755 = !DILocation(line: 226, column: 10, scope: !742)
!756 = !DILocalVariable(name: "mask", scope: !742, file: !350, line: 227, type: !323)
!757 = !DILocation(line: 227, column: 15, scope: !742)
!758 = !DILocalVariable(name: "mask_orig", scope: !742, file: !350, line: 227, type: !323)
!759 = !DILocation(line: 227, column: 22, scope: !742)
!760 = !DILocalVariable(name: "free_arg", scope: !742, file: !350, line: 228, type: !311)
!761 = !DILocation(line: 228, column: 8, scope: !742)
!762 = !DILocation(line: 230, column: 22, scope: !763)
!763 = distinct !DILexicalBlock(scope: !742, file: !350, line: 230, column: 6)
!764 = !DILocation(line: 230, column: 7, scope: !763)
!765 = !DILocation(line: 230, column: 6, scope: !742)
!766 = !DILocation(line: 231, column: 3, scope: !763)
!767 = !DILocation(line: 233, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !742, file: !350, line: 233, column: 6)
!769 = !DILocation(line: 233, column: 6, scope: !768)
!770 = !DILocation(line: 233, column: 12, scope: !768)
!771 = !DILocation(line: 233, column: 6, scope: !742)
!772 = !DILocation(line: 234, column: 17, scope: !768)
!773 = distinct !{!773, !772}
!774 = !DILocation(line: 234, column: 38, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !350, discriminator: 1)
!776 = distinct !DILexicalBlock(scope: !768, file: !350, line: 234, column: 20)
!777 = !DILocation(line: 234, column: 22, scope: !775)
!778 = !DILocation(line: 234, column: 49, scope: !775)
!779 = distinct !{!779, !780}
!780 = !DILocation(line: 234, column: 49, scope: !776)
!781 = !DILocation(line: 234, column: 54, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !350, discriminator: 2)
!783 = distinct !DILexicalBlock(scope: !776, file: !350, line: 234, column: 52)
!784 = !DILocation(line: 234, column: 136, scope: !785)
!785 = !DILexicalBlockFile(scope: !782, file: !350, discriminator: 5)
!786 = !DILocation(line: 234, column: 151, scope: !782)
!787 = !DILocation(line: 234, column: 172, scope: !788)
!788 = !DILexicalBlockFile(scope: !776, file: !350, discriminator: 3)
!789 = !DILocation(line: 234, column: 172, scope: !790)
!790 = !DILexicalBlockFile(scope: !776, file: !350, discriminator: 4)
!791 = !DILocation(line: 238, column: 14, scope: !742)
!792 = !DILocation(line: 238, column: 12, scope: !742)
!793 = !DILocation(line: 240, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !742, file: !350, line: 240, column: 6)
!795 = !DILocation(line: 240, column: 6, scope: !794)
!796 = !DILocation(line: 240, column: 6, scope: !742)
!797 = !DILocation(line: 242, column: 21, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !350, line: 240, column: 29)
!799 = !DILocation(line: 242, column: 35, scope: !798)
!800 = !DILocation(line: 242, column: 30, scope: !798)
!801 = !DILocation(line: 242, column: 40, scope: !798)
!802 = !DILocation(line: 242, column: 9, scope: !803)
!803 = !DILexicalBlockFile(scope: !798, file: !350, discriminator: 1)
!804 = !DILocation(line: 242, column: 7, scope: !798)
!805 = !DILocation(line: 243, column: 9, scope: !798)
!806 = !DILocation(line: 243, column: 13, scope: !798)
!807 = !DILocation(line: 243, column: 9, scope: !803)
!808 = !DILocation(line: 243, column: 29, scope: !809)
!809 = !DILexicalBlockFile(scope: !798, file: !350, discriminator: 2)
!810 = !DILocation(line: 243, column: 34, scope: !809)
!811 = !DILocation(line: 243, column: 9, scope: !809)
!812 = !DILocation(line: 243, column: 9, scope: !813)
!813 = !DILexicalBlockFile(scope: !798, file: !350, discriminator: 3)
!814 = !DILocation(line: 243, column: 7, scope: !813)
!815 = !DILocation(line: 244, column: 2, scope: !798)
!816 = !DILocalVariable(name: "chans", scope: !817, file: !350, line: 246, type: !818)
!817 = distinct !DILexicalBlock(scope: !794, file: !350, line: 244, column: 9)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 128, align: 64, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 2)
!821 = !DILocation(line: 246, column: 15, scope: !817)
!822 = !DILocation(line: 248, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !817, file: !350, line: 248, column: 7)
!824 = !DILocation(line: 248, column: 19, scope: !823)
!825 = !DILocation(line: 248, column: 33, scope: !823)
!826 = !DILocation(line: 248, column: 40, scope: !823)
!827 = !DILocation(line: 249, column: 9, scope: !823)
!828 = !DILocation(line: 249, column: 21, scope: !823)
!829 = !DILocation(line: 249, column: 37, scope: !823)
!830 = !DILocation(line: 249, column: 47, scope: !823)
!831 = !DILocation(line: 249, column: 59, scope: !823)
!832 = !DILocation(line: 249, column: 74, scope: !823)
!833 = !DILocation(line: 249, column: 8, scope: !823)
!834 = !DILocation(line: 248, column: 7, scope: !835)
!835 = !DILexicalBlockFile(scope: !817, file: !350, discriminator: 1)
!836 = !DILocation(line: 250, column: 15, scope: !837)
!837 = distinct !DILexicalBlock(scope: !823, file: !350, line: 249, column: 82)
!838 = !DILocation(line: 250, column: 4, scope: !837)
!839 = !DILocation(line: 250, column: 13, scope: !837)
!840 = !DILocation(line: 251, column: 9, scope: !837)
!841 = !DILocation(line: 252, column: 3, scope: !837)
!842 = !DILocation(line: 253, column: 31, scope: !817)
!843 = !DILocation(line: 253, column: 52, scope: !817)
!844 = !DILocation(line: 253, column: 9, scope: !817)
!845 = !DILocation(line: 253, column: 7, scope: !817)
!846 = !DILocation(line: 254, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !817, file: !350, line: 254, column: 7)
!848 = !DILocation(line: 254, column: 11, scope: !847)
!849 = !DILocation(line: 254, column: 7, scope: !817)
!850 = !DILocation(line: 255, column: 32, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !350, line: 254, column: 19)
!852 = !DILocation(line: 255, column: 53, scope: !851)
!853 = !DILocation(line: 255, column: 10, scope: !851)
!854 = !DILocation(line: 255, column: 8, scope: !851)
!855 = !DILocation(line: 256, column: 3, scope: !851)
!856 = !DILocation(line: 259, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !742, file: !350, line: 259, column: 6)
!858 = !DILocation(line: 259, column: 10, scope: !857)
!859 = !DILocation(line: 259, column: 6, scope: !742)
!860 = !DILocation(line: 260, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !350, line: 259, column: 18)
!862 = !DILocation(line: 260, column: 8, scope: !861)
!863 = !DILocation(line: 260, column: 14, scope: !861)
!864 = !DILocation(line: 261, column: 21, scope: !861)
!865 = !DILocation(line: 261, column: 3, scope: !861)
!866 = !DILocation(line: 262, column: 2, scope: !861)
!867 = !DILocation(line: 263, column: 49, scope: !868)
!868 = distinct !DILexicalBlock(scope: !857, file: !350, line: 262, column: 9)
!869 = !DILocation(line: 263, column: 3, scope: !868)
!870 = !DILocation(line: 266, column: 18, scope: !742)
!871 = !DILocation(line: 266, column: 2, scope: !742)
!872 = !DILocation(line: 267, column: 1, scope: !742)
!873 = !DILocation(line: 267, column: 1, scope: !874)
!874 = !DILexicalBlockFile(scope: !742, file: !350, discriminator: 1)
!875 = distinct !DISubprogram(name: "sig_ignore_destroyed", scope: !350, file: !350, line: 274, type: !876, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !316}
!878 = !DILocalVariable(name: "rec", arg: 1, scope: !875, file: !350, line: 274, type: !316)
!879 = !DILocation(line: 274, column: 46, scope: !875)
!880 = !DILocalVariable(name: "key", scope: !875, file: !350, line: 276, type: !323)
!881 = !DILocation(line: 276, column: 8, scope: !875)
!882 = !DILocation(line: 278, column: 23, scope: !875)
!883 = !DILocation(line: 278, column: 8, scope: !875)
!884 = !DILocation(line: 278, column: 6, scope: !875)
!885 = !DILocation(line: 279, column: 41, scope: !875)
!886 = !DILocation(line: 279, column: 2, scope: !875)
!887 = !DILocation(line: 280, column: 9, scope: !875)
!888 = !DILocation(line: 280, column: 2, scope: !875)
!889 = !DILocation(line: 281, column: 1, scope: !875)
!890 = distinct !DISubprogram(name: "sig_ignore_created", scope: !350, file: !350, line: 269, type: !876, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!891 = !DILocalVariable(name: "rec", arg: 1, scope: !890, file: !350, line: 269, type: !316)
!892 = !DILocation(line: 269, column: 44, scope: !890)
!893 = !DILocation(line: 271, column: 26, scope: !890)
!894 = !DILocation(line: 271, column: 9, scope: !890)
!895 = !DILocation(line: 272, column: 1, scope: !890)
!896 = distinct !DISubprogram(name: "fe_ignore_deinit", scope: !350, file: !350, line: 295, type: !351, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!897 = !DILocation(line: 297, column: 2, scope: !896)
!898 = !DILocation(line: 298, column: 2, scope: !896)
!899 = !DILocation(line: 300, column: 2, scope: !896)
!900 = !DILocation(line: 301, column: 2, scope: !896)
!901 = !DILocation(line: 302, column: 2, scope: !896)
!902 = !DILocation(line: 303, column: 1, scope: !896)
!903 = distinct !DISubprogram(name: "cmd_ignore_show", scope: !350, file: !350, line: 88, type: !351, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!904 = !DILocalVariable(name: "tmp", scope: !903, file: !350, line: 90, type: !748)
!905 = !DILocation(line: 90, column: 10, scope: !903)
!906 = !DILocalVariable(name: "index", scope: !903, file: !350, line: 91, type: !321)
!907 = !DILocation(line: 91, column: 6, scope: !903)
!908 = !DILocation(line: 93, column: 6, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !350, line: 93, column: 6)
!910 = !DILocation(line: 93, column: 14, scope: !909)
!911 = !DILocation(line: 93, column: 6, scope: !903)
!912 = !DILocation(line: 94, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !350, line: 93, column: 22)
!914 = !DILocation(line: 96, column: 17, scope: !913)
!915 = !DILocation(line: 99, column: 2, scope: !903)
!916 = !DILocation(line: 100, column: 8, scope: !903)
!917 = !DILocation(line: 101, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !903, file: !350, line: 101, column: 2)
!919 = !DILocation(line: 101, column: 11, scope: !918)
!920 = !DILocation(line: 101, column: 7, scope: !918)
!921 = !DILocation(line: 101, column: 22, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !350, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !918, file: !350, line: 101, column: 2)
!924 = !DILocation(line: 101, column: 26, scope: !922)
!925 = !DILocation(line: 101, column: 2, scope: !922)
!926 = !DILocalVariable(name: "rec", scope: !927, file: !350, line: 102, type: !316)
!927 = distinct !DILexicalBlock(scope: !923, file: !350, line: 101, column: 60)
!928 = !DILocation(line: 102, column: 15, scope: !927)
!929 = !DILocation(line: 102, column: 21, scope: !927)
!930 = !DILocation(line: 102, column: 26, scope: !927)
!931 = !DILocation(line: 104, column: 16, scope: !927)
!932 = !DILocation(line: 104, column: 23, scope: !927)
!933 = !DILocation(line: 104, column: 3, scope: !927)
!934 = !DILocation(line: 105, column: 2, scope: !927)
!935 = !DILocation(line: 101, column: 40, scope: !936)
!936 = !DILexicalBlockFile(scope: !923, file: !350, discriminator: 2)
!937 = !DILocation(line: 101, column: 45, scope: !936)
!938 = !DILocation(line: 101, column: 38, scope: !936)
!939 = !DILocation(line: 101, column: 56, scope: !936)
!940 = !DILocation(line: 101, column: 2, scope: !936)
!941 = distinct !{!941, !942}
!942 = !DILocation(line: 101, column: 2, scope: !903)
!943 = !DILocation(line: 106, column: 2, scope: !903)
!944 = !DILocation(line: 107, column: 1, scope: !903)
!945 = !DILocation(line: 107, column: 1, scope: !946)
!946 = !DILexicalBlockFile(scope: !903, file: !350, discriminator: 1)
!947 = distinct !DISubprogram(name: "ignore_print", scope: !350, file: !350, line: 47, type: !948, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !321, !316}
!950 = !DILocalVariable(name: "index", arg: 1, scope: !947, file: !350, line: 47, type: !321)
!951 = !DILocation(line: 47, column: 30, scope: !947)
!952 = !DILocalVariable(name: "rec", arg: 2, scope: !947, file: !350, line: 47, type: !316)
!953 = !DILocation(line: 47, column: 49, scope: !947)
!954 = !DILocalVariable(name: "options", scope: !947, file: !350, line: 49, type: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !957, line: 39, baseType: !958)
!957 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !957, line: 41, size: 192, align: 64, elements: !959)
!959 = !{!960, !963, !967}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !958, file: !957, line: 43, baseType: !961, size: 64, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !313, line: 46, baseType: !324)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !958, file: !957, line: 44, baseType: !964, size: 64, align: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !965, line: 66, baseType: !966)
!965 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!966 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !958, file: !957, line: 45, baseType: !964, size: 64, align: 64, offset: 128)
!968 = !DILocation(line: 49, column: 11, scope: !947)
!969 = !DILocalVariable(name: "key", scope: !947, file: !350, line: 50, type: !323)
!970 = !DILocation(line: 50, column: 8, scope: !947)
!971 = !DILocalVariable(name: "levels", scope: !947, file: !350, line: 50, type: !323)
!972 = !DILocation(line: 50, column: 14, scope: !947)
!973 = !DILocation(line: 52, column: 23, scope: !947)
!974 = !DILocation(line: 52, column: 8, scope: !947)
!975 = !DILocation(line: 52, column: 6, scope: !947)
!976 = !DILocation(line: 53, column: 22, scope: !947)
!977 = !DILocation(line: 53, column: 27, scope: !947)
!978 = !DILocation(line: 53, column: 11, scope: !947)
!979 = !DILocation(line: 53, column: 9, scope: !947)
!980 = !DILocation(line: 55, column: 12, scope: !947)
!981 = !DILocation(line: 55, column: 10, scope: !947)
!982 = !DILocation(line: 56, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !947, file: !350, line: 56, column: 6)
!984 = !DILocation(line: 56, column: 11, scope: !983)
!985 = !DILocation(line: 56, column: 6, scope: !947)
!986 = !DILocation(line: 56, column: 38, scope: !987)
!987 = !DILexicalBlockFile(scope: !983, file: !350, discriminator: 1)
!988 = !DILocation(line: 56, column: 22, scope: !987)
!989 = !DILocation(line: 57, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !947, file: !350, line: 57, column: 6)
!991 = !DILocation(line: 57, column: 11, scope: !990)
!992 = !DILocation(line: 57, column: 6, scope: !947)
!993 = !DILocation(line: 58, column: 19, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !350, line: 57, column: 19)
!995 = !DILocation(line: 58, column: 3, scope: !994)
!996 = !DILocation(line: 59, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !350, line: 59, column: 7)
!998 = !DILocation(line: 59, column: 12, scope: !997)
!999 = !DILocation(line: 59, column: 20, scope: !997)
!1000 = !DILocation(line: 59, column: 7, scope: !994)
!1001 = !DILocation(line: 60, column: 20, scope: !997)
!1002 = !DILocation(line: 60, column: 4, scope: !997)
!1003 = !DILocation(line: 61, column: 12, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !997, file: !350, line: 61, column: 12)
!1005 = !DILocation(line: 61, column: 17, scope: !1004)
!1006 = !DILocation(line: 61, column: 22, scope: !1004)
!1007 = !DILocation(line: 61, column: 12, scope: !997)
!1008 = !DILocation(line: 62, column: 20, scope: !1004)
!1009 = !DILocation(line: 62, column: 4, scope: !1004)
!1010 = !DILocation(line: 63, column: 2, scope: !994)
!1011 = !DILocation(line: 64, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !947, file: !350, line: 64, column: 6)
!1013 = !DILocation(line: 64, column: 11, scope: !1012)
!1014 = !DILocation(line: 64, column: 6, scope: !947)
!1015 = !DILocation(line: 64, column: 37, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1012, file: !350, discriminator: 1)
!1017 = !DILocation(line: 64, column: 21, scope: !1016)
!1018 = !DILocation(line: 65, column: 6, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !947, file: !350, line: 65, column: 6)
!1020 = !DILocation(line: 65, column: 11, scope: !1019)
!1021 = !DILocation(line: 65, column: 6, scope: !947)
!1022 = !DILocation(line: 65, column: 36, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1019, file: !350, discriminator: 1)
!1024 = !DILocation(line: 65, column: 20, scope: !1023)
!1025 = !DILocation(line: 66, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !947, file: !350, line: 66, column: 6)
!1027 = !DILocation(line: 66, column: 11, scope: !1026)
!1028 = !DILocation(line: 66, column: 21, scope: !1026)
!1029 = !DILocation(line: 66, column: 6, scope: !947)
!1030 = !DILocation(line: 67, column: 26, scope: !1026)
!1031 = !DILocation(line: 67, column: 51, scope: !1026)
!1032 = !DILocation(line: 67, column: 56, scope: !1026)
!1033 = !DILocation(line: 67, column: 3, scope: !1026)
!1034 = !DILocation(line: 68, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !947, file: !350, line: 68, column: 6)
!1036 = !DILocation(line: 68, column: 11, scope: !1035)
!1037 = !DILocation(line: 68, column: 19, scope: !1035)
!1038 = !DILocation(line: 68, column: 6, scope: !947)
!1039 = !DILocation(line: 69, column: 26, scope: !1035)
!1040 = !DILocation(line: 69, column: 51, scope: !1035)
!1041 = !DILocation(line: 69, column: 56, scope: !1035)
!1042 = !DILocation(line: 69, column: 3, scope: !1035)
!1043 = !DILocation(line: 71, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !947, file: !350, line: 71, column: 6)
!1045 = !DILocation(line: 71, column: 15, scope: !1044)
!1046 = !DILocation(line: 71, column: 19, scope: !1044)
!1047 = !DILocation(line: 71, column: 6, scope: !947)
!1048 = !DILocation(line: 71, column: 42, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1044, file: !350, discriminator: 1)
!1050 = !DILocation(line: 71, column: 51, scope: !1049)
!1051 = !DILocation(line: 71, column: 60, scope: !1049)
!1052 = !DILocation(line: 71, column: 63, scope: !1049)
!1053 = !DILocation(line: 71, column: 24, scope: !1049)
!1054 = !DILocation(line: 73, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !947, file: !350, line: 73, column: 6)
!1056 = !DILocation(line: 73, column: 12, scope: !1055)
!1057 = !DILocation(line: 73, column: 6, scope: !947)
!1058 = !DILocation(line: 74, column: 42, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !350, line: 73, column: 18)
!1060 = !DILocation(line: 74, column: 49, scope: !1059)
!1061 = !DILocation(line: 74, column: 53, scope: !1059)
!1062 = !DILocation(line: 74, column: 4, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 1)
!1064 = !DILocation(line: 74, column: 49, scope: !1063)
!1065 = !DILocation(line: 74, column: 49, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 2)
!1067 = !DILocation(line: 74, column: 49, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 3)
!1069 = !DILocation(line: 74, column: 14, scope: !1068)
!1070 = !DILocation(line: 74, column: 21, scope: !1068)
!1071 = !DILocation(line: 74, column: 4, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 4)
!1073 = !DILocation(line: 74, column: 14, scope: !1072)
!1074 = !DILocation(line: 74, column: 14, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 5)
!1076 = !DILocation(line: 74, column: 14, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1059, file: !350, discriminator: 6)
!1078 = !DILocation(line: 74, column: 17, scope: !1077)
!1079 = !DILocation(line: 74, column: 26, scope: !1077)
!1080 = !DILocation(line: 74, column: 3, scope: !1077)
!1081 = !DILocation(line: 77, column: 2, scope: !1059)
!1082 = !DILocation(line: 78, column: 25, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1055, file: !350, line: 77, column: 9)
!1084 = !DILocation(line: 78, column: 34, scope: !1083)
!1085 = !DILocation(line: 78, column: 38, scope: !1083)
!1086 = !DILocation(line: 78, column: 79, scope: !1083)
!1087 = !DILocation(line: 78, column: 83, scope: !1083)
!1088 = !DILocation(line: 78, column: 4, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 1)
!1090 = !DILocation(line: 78, column: 79, scope: !1089)
!1091 = !DILocation(line: 78, column: 79, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 2)
!1093 = !DILocation(line: 78, column: 79, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 3)
!1095 = !DILocation(line: 78, column: 14, scope: !1094)
!1096 = !DILocation(line: 78, column: 21, scope: !1094)
!1097 = !DILocation(line: 78, column: 4, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 4)
!1099 = !DILocation(line: 78, column: 14, scope: !1098)
!1100 = !DILocation(line: 78, column: 14, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 5)
!1102 = !DILocation(line: 78, column: 14, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1083, file: !350, discriminator: 6)
!1104 = !DILocation(line: 78, column: 17, scope: !1103)
!1105 = !DILocation(line: 78, column: 26, scope: !1103)
!1106 = !DILocation(line: 78, column: 3, scope: !1103)
!1107 = !DILocation(line: 83, column: 16, scope: !947)
!1108 = !DILocation(line: 83, column: 2, scope: !947)
!1109 = !DILocation(line: 84, column: 16, scope: !947)
!1110 = !DILocation(line: 84, column: 9, scope: !947)
!1111 = !DILocation(line: 85, column: 9, scope: !947)
!1112 = !DILocation(line: 85, column: 2, scope: !947)
!1113 = !DILocation(line: 86, column: 1, scope: !947)
!1114 = distinct !DISubprogram(name: "ignore_get_key", scope: !350, file: !350, line: 32, type: !1115, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !353)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!323, !316}
!1117 = !DILocalVariable(name: "rec", arg: 1, scope: !1114, file: !350, line: 32, type: !316)
!1118 = !DILocation(line: 32, column: 41, scope: !1114)
!1119 = !DILocalVariable(name: "chans", scope: !1114, file: !350, line: 34, type: !323)
!1120 = !DILocation(line: 34, column: 8, scope: !1114)
!1121 = !DILocalVariable(name: "ret", scope: !1114, file: !350, line: 34, type: !323)
!1122 = !DILocation(line: 34, column: 16, scope: !1114)
!1123 = !DILocation(line: 36, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1114, file: !350, line: 36, column: 6)
!1125 = !DILocation(line: 36, column: 11, scope: !1124)
!1126 = !DILocation(line: 36, column: 20, scope: !1124)
!1127 = !DILocation(line: 36, column: 6, scope: !1114)
!1128 = !DILocation(line: 37, column: 19, scope: !1124)
!1129 = !DILocation(line: 37, column: 24, scope: !1124)
!1130 = !DILocation(line: 37, column: 29, scope: !1124)
!1131 = !DILocation(line: 37, column: 38, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1124, file: !350, discriminator: 1)
!1133 = !DILocation(line: 37, column: 43, scope: !1132)
!1134 = !DILocation(line: 37, column: 19, scope: !1132)
!1135 = !DILocation(line: 37, column: 19, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1124, file: !350, discriminator: 2)
!1137 = !DILocation(line: 37, column: 19, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1124, file: !350, discriminator: 3)
!1139 = !DILocation(line: 37, column: 10, scope: !1138)
!1140 = !DILocation(line: 37, column: 3, scope: !1138)
!1141 = !DILocation(line: 39, column: 26, scope: !1114)
!1142 = !DILocation(line: 39, column: 31, scope: !1114)
!1143 = !DILocation(line: 39, column: 10, scope: !1114)
!1144 = !DILocation(line: 39, column: 8, scope: !1114)
!1145 = !DILocation(line: 40, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1114, file: !350, line: 40, column: 6)
!1147 = !DILocation(line: 40, column: 11, scope: !1146)
!1148 = !DILocation(line: 40, column: 16, scope: !1146)
!1149 = !DILocation(line: 40, column: 6, scope: !1114)
!1150 = !DILocation(line: 40, column: 31, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1146, file: !350, discriminator: 1)
!1152 = !DILocation(line: 40, column: 24, scope: !1151)
!1153 = !DILocation(line: 42, column: 33, scope: !1114)
!1154 = !DILocation(line: 42, column: 38, scope: !1114)
!1155 = !DILocation(line: 42, column: 44, scope: !1114)
!1156 = !DILocation(line: 42, column: 8, scope: !1114)
!1157 = !DILocation(line: 42, column: 6, scope: !1114)
!1158 = !DILocation(line: 43, column: 9, scope: !1114)
!1159 = !DILocation(line: 43, column: 2, scope: !1114)
!1160 = !DILocation(line: 44, column: 9, scope: !1114)
!1161 = !DILocation(line: 44, column: 2, scope: !1114)
!1162 = !DILocation(line: 45, column: 1, scope: !1114)
