; ModuleID = './line354-lastlog.o.i'
source_filename = "./line354-lastlog.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct._GString = type { i8*, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lastlog\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"!- # force clear -file -window new away word regexp case count date @a @after @before\00", align 1
@__func__.cmd_lastlog = private unnamed_addr constant [12 x i8] c"cmd_lastlog\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"log_create_mode\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not open lastlog: %s\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not write lastlog: %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"lastlog_last_check\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"away\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"lastlog_last_away\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"timestamps\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%02d:%02d \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8

; Function Attrs: nounwind uwtable
define i32 @cmd_options_get_level(i8*, %struct._GHashTable*) #0 !dbg !341 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca %struct._GList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !346, metadata !347), !dbg !348
  store %struct._GHashTable* %1, %struct._GHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !349, metadata !347), !dbg !350
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !351, metadata !347), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %6, metadata !353, metadata !347), !dbg !354
  call void @llvm.dbg.declare(metadata i32* %7, metadata !355, metadata !347), !dbg !356
  %8 = load i8*, i8** %3, align 8, !dbg !357
  %9 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !358
  %10 = call %struct._GList* @optlist_remove_known(i8* %8, %struct._GHashTable* %9), !dbg !359
  store %struct._GList* %10, %struct._GList** %5, align 8, !dbg !360
  store i32 0, i32* %7, align 4, !dbg !361
  br label %11, !dbg !362

; <label>:11:                                     ; preds = %26, %2
  %12 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !363
  %13 = icmp ne %struct._GList* %12, null, !dbg !365
  br i1 %13, label %14, label %35, !dbg !366

; <label>:14:                                     ; preds = %11
  %15 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !367
  %16 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0, !dbg !369
  %17 = load i8*, i8** %16, align 8, !dbg !369
  %18 = call i32 @level_get(i8* %17), !dbg !370
  store i32 %18, i32* %6, align 4, !dbg !371
  %19 = load i32, i32* %6, align 4, !dbg !372
  %20 = icmp eq i32 %19, 0, !dbg !374
  br i1 %20, label %21, label %26, !dbg !375

; <label>:21:                                     ; preds = %14
  %22 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !376
  %23 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0, !dbg !378
  %24 = load i8*, i8** %23, align 8, !dbg !378
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 2, i8* inttoptr (i64 -3 to i8*), i8* %24), !dbg !379
  store i32 -1, i32* %7, align 4, !dbg !380
  br label %35, !dbg !381

; <label>:26:                                     ; preds = %14
  %27 = load i32, i32* %6, align 4, !dbg !382
  %28 = load i32, i32* %7, align 4, !dbg !383
  %29 = or i32 %28, %27, !dbg !383
  store i32 %29, i32* %7, align 4, !dbg !383
  %30 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !384
  %31 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !385
  %32 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0, !dbg !386
  %33 = load i8*, i8** %32, align 8, !dbg !386
  %34 = call %struct._GList* @g_list_remove(%struct._GList* %30, i8* %33), !dbg !387
  store %struct._GList* %34, %struct._GList** %5, align 8, !dbg !388
  br label %11, !dbg !389, !llvm.loop !391

; <label>:35:                                     ; preds = %21, %11
  %36 = load i32, i32* %7, align 4, !dbg !392
  ret i32 %36, !dbg !393
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GList* @optlist_remove_known(i8*, %struct._GHashTable*) #2

declare i32 @level_get(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @lastlog_init() #0 !dbg !394 {
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_lastlog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !397
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i32 0, i32 0)), !dbg !398
  ret void, !dbg !399
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_lastlog(i8*) #0 !dbg !400 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !403, metadata !347), !dbg !404
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !405, metadata !347), !dbg !406
  call void @llvm.dbg.declare(metadata i8** %4, metadata !407, metadata !347), !dbg !408
  call void @llvm.dbg.declare(metadata i8** %5, metadata !409, metadata !347), !dbg !410
  call void @llvm.dbg.declare(metadata i8** %6, metadata !411, metadata !347), !dbg !412
  call void @llvm.dbg.declare(metadata i8** %7, metadata !413, metadata !347), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %8, metadata !415, metadata !347), !dbg !416
  call void @llvm.dbg.declare(metadata i32* %9, metadata !417, metadata !347), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %10, metadata !419, metadata !347), !dbg !420
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %11, metadata !421, metadata !347), !dbg !479
  br label %12, !dbg !480, !llvm.loop !481

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !482
  %14 = icmp ne i8* %13, null, !dbg !486
  br i1 %14, label %15, label %16, !dbg !482

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !487

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_lastlog, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !490
  br label %113, !dbg !493

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !494

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %2, align 8, !dbg !496
  %20 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %19, i8** %8, i32 49155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._GHashTable** %3, i8** %4, i8** %5, i8** %6), !dbg !498
  %21 = icmp ne i32 %20, 0, !dbg !498
  br i1 %21, label %23, label %22, !dbg !499

; <label>:22:                                     ; preds = %18
  br label %113, !dbg !500

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %6, align 8, !dbg !501
  %25 = load i8, i8* %24, align 1, !dbg !503
  %26 = sext i8 %25 to i32, !dbg !503
  %27 = icmp eq i32 %26, 0, !dbg !504
  br i1 %27, label %28, label %49, !dbg !505

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %4, align 8, !dbg !506
  %30 = call i32 @is_numeric(i8* %29, i8 signext 0), !dbg !508
  %31 = icmp ne i32 %30, 0, !dbg !508
  br i1 %31, label %32, label %49, !dbg !509

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %4, align 8, !dbg !510
  %34 = load i8, i8* %33, align 1, !dbg !512
  %35 = sext i8 %34 to i32, !dbg !512
  %36 = icmp ne i32 %35, 48, !dbg !513
  br i1 %36, label %37, label %49, !dbg !514

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %5, align 8, !dbg !515
  %39 = load i8, i8* %38, align 1, !dbg !516
  %40 = sext i8 %39 to i32, !dbg !516
  %41 = icmp eq i32 %40, 0, !dbg !517
  br i1 %41, label %46, label %42, !dbg !518

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %5, align 8, !dbg !519
  %44 = call i32 @is_numeric(i8* %43, i8 signext 0), !dbg !520
  %45 = icmp ne i32 %44, 0, !dbg !520
  br i1 %45, label %46, label %49, !dbg !521

; <label>:46:                                     ; preds = %42, %37
  %47 = load i8*, i8** %5, align 8, !dbg !523
  store i8* %47, i8** %6, align 8, !dbg !525
  %48 = load i8*, i8** %4, align 8, !dbg !526
  store i8* %48, i8** %5, align 8, !dbg !527
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8** %4, align 8, !dbg !528
  br label %49, !dbg !529

; <label>:49:                                     ; preds = %46, %42, %32, %28, %23
  %50 = load i8*, i8** %5, align 8, !dbg !530
  %51 = call i32 @atoi(i8* %50) #7, !dbg !531
  store i32 %51, i32* %9, align 4, !dbg !532
  %52 = load i32, i32* %9, align 4, !dbg !533
  %53 = icmp eq i32 %52, 0, !dbg !535
  br i1 %53, label %54, label %55, !dbg !536

; <label>:54:                                     ; preds = %49
  store i32 -1, i32* %9, align 4, !dbg !537
  br label %55, !dbg !539

; <label>:55:                                     ; preds = %54, %49
  store %struct._IO_FILE* null, %struct._IO_FILE** %11, align 8, !dbg !540
  %56 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !541
  %57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !542
  store i8* %57, i8** %7, align 8, !dbg !543
  %58 = load i8*, i8** %7, align 8, !dbg !544
  %59 = icmp ne i8* %58, null, !dbg !546
  br i1 %59, label %60, label %80, !dbg !547

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %7, align 8, !dbg !548
  %62 = call i8* @convert_home(i8* %61), !dbg !550
  store i8* %62, i8** %7, align 8, !dbg !551
  %63 = load i8*, i8** %7, align 8, !dbg !552
  %64 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)), !dbg !553
  %65 = call i32 @octal2dec(i32 %64), !dbg !554
  %66 = call i32 (i8*, i32, ...) @open(i8* %63, i32 1089, i32 %65), !dbg !556
  store i32 %66, i32* %10, align 4, !dbg !557
  %67 = load i32, i32* %10, align 4, !dbg !558
  %68 = icmp ne i32 %67, -1, !dbg !560
  br i1 %68, label %69, label %78, !dbg !561

; <label>:69:                                     ; preds = %60
  %70 = load i32, i32* %10, align 4, !dbg !562
  %71 = call %struct._IO_FILE* @fdopen(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !564
  store %struct._IO_FILE* %71, %struct._IO_FILE** %11, align 8, !dbg !565
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !566
  %73 = icmp eq %struct._IO_FILE* %72, null, !dbg !568
  br i1 %73, label %74, label %77, !dbg !569

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %10, align 4, !dbg !570
  %76 = call i32 @close(i32 %75), !dbg !571
  br label %77, !dbg !571

; <label>:77:                                     ; preds = %74, %69
  br label %78, !dbg !572

; <label>:78:                                     ; preds = %77, %60
  %79 = load i8*, i8** %7, align 8, !dbg !573
  call void @g_free(i8* %79), !dbg !574
  br label %80, !dbg !575

; <label>:80:                                     ; preds = %78, %55
  %81 = load i8*, i8** %7, align 8, !dbg !576
  %82 = icmp ne i8* %81, null, !dbg !578
  br i1 %82, label %83, label %90, !dbg !579

; <label>:83:                                     ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !580
  %85 = icmp eq %struct._IO_FILE* %84, null, !dbg !582
  br i1 %85, label %86, label %90, !dbg !583

; <label>:86:                                     ; preds = %83
  %87 = call i32* @__errno_location() #1, !dbg !584
  %88 = load i32, i32* %87, align 4, !dbg !586
  %89 = call i8* @g_strerror(i32 %88) #1, !dbg !587
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8* %89), !dbg !589
  br label %111, !dbg !590

; <label>:90:                                     ; preds = %83, %80
  %91 = load i8*, i8** %4, align 8, !dbg !591
  %92 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !593
  %93 = load i8*, i8** %6, align 8, !dbg !594
  %94 = call i32 @atoi(i8* %93) #7, !dbg !595
  %95 = load i32, i32* %9, align 4, !dbg !596
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !597
  call void @show_lastlog(i8* %91, %struct._GHashTable* %92, i32 %94, i32 %95, %struct._IO_FILE* %96), !dbg !598
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !600
  %98 = icmp ne %struct._IO_FILE* %97, null, !dbg !602
  br i1 %98, label %99, label %110, !dbg !603

; <label>:99:                                     ; preds = %90
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !604
  %101 = call i32 @ferror(%struct._IO_FILE* %100) #8, !dbg !607
  %102 = icmp ne i32 %101, 0, !dbg !607
  br i1 %102, label %103, label %107, !dbg !608

; <label>:103:                                    ; preds = %99
  %104 = call i32* @__errno_location() #1, !dbg !609
  %105 = load i32, i32* %104, align 4, !dbg !610
  %106 = call i8* @g_strerror(i32 %105) #1, !dbg !611
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* %106), !dbg !613
  br label %107, !dbg !613

; <label>:107:                                    ; preds = %103, %99
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8, !dbg !614
  %109 = call i32 @fclose(%struct._IO_FILE* %108), !dbg !615
  br label %110, !dbg !616

; <label>:110:                                    ; preds = %107, %90
  br label %111

; <label>:111:                                    ; preds = %110, %86
  %112 = load i8*, i8** %8, align 8, !dbg !617
  call void @cmd_params_free(i8* %112), !dbg !618
  br label %113, !dbg !619

; <label>:113:                                    ; preds = %111, %22, %16
  ret void, !dbg !620
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @lastlog_deinit() #0 !dbg !622 {
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_lastlog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !623
  ret void, !dbg !624
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i32 @is_numeric(i8*, i8 signext) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i8* @convert_home(i8*) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @octal2dec(i32) #2

declare i32 @settings_get_int(i8*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #4

declare i32 @close(i32) #2

declare void @g_free(i8*) #2

declare void @printtext(i8*, i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define internal void @show_lastlog(i8*, %struct._GHashTable*, i32, i32, %struct._IO_FILE*) #0 !dbg !625 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct._WINDOW_REC*, align 8
  %12 = alloca %struct._LINE_REC*, align 8
  %13 = alloca %struct._GList*, align 8
  %14 = alloca %struct._GList*, align 8
  %15 = alloca %struct._GString*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct._LINE_REC*, align 8
  %24 = alloca %struct.tm*, align 8
  %25 = alloca [10 x i8], align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !628, metadata !347), !dbg !629
  store %struct._GHashTable* %1, %struct._GHashTable** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !630, metadata !347), !dbg !631
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !632, metadata !347), !dbg !633
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !634, metadata !347), !dbg !635
  store %struct._IO_FILE* %4, %struct._IO_FILE** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !636, metadata !347), !dbg !637
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %11, metadata !638, metadata !347), !dbg !639
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %12, metadata !640, metadata !347), !dbg !641
  call void @llvm.dbg.declare(metadata %struct._GList** %13, metadata !642, metadata !347), !dbg !643
  call void @llvm.dbg.declare(metadata %struct._GList** %14, metadata !644, metadata !347), !dbg !645
  call void @llvm.dbg.declare(metadata %struct._GString** %15, metadata !646, metadata !347), !dbg !657
  call void @llvm.dbg.declare(metadata i8** %16, metadata !658, metadata !347), !dbg !659
  call void @llvm.dbg.declare(metadata i32* %17, metadata !660, metadata !347), !dbg !661
  call void @llvm.dbg.declare(metadata i32* %18, metadata !662, metadata !347), !dbg !663
  call void @llvm.dbg.declare(metadata i32* %19, metadata !664, metadata !347), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %20, metadata !666, metadata !347), !dbg !667
  call void @llvm.dbg.declare(metadata i32* %21, metadata !668, metadata !347), !dbg !669
  store i32 0, i32* %21, align 4, !dbg !669
  %26 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !670
  %27 = call i32 @cmd_options_get_level(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._GHashTable* %26), !dbg !671
  store i32 %27, i32* %17, align 4, !dbg !672
  %28 = load i32, i32* %17, align 4, !dbg !673
  %29 = icmp eq i32 %28, -1, !dbg !675
  br i1 %29, label %30, label %31, !dbg !676

; <label>:30:                                     ; preds = %5
  br label %371, !dbg !677

; <label>:31:                                     ; preds = %5
  %32 = load i32, i32* %17, align 4, !dbg !679
  %33 = icmp eq i32 %32, 0, !dbg !681
  br i1 %33, label %34, label %35, !dbg !682

; <label>:34:                                     ; preds = %31
  store i32 4194303, i32* %17, align 4, !dbg !683
  br label %35, !dbg !685

; <label>:35:                                     ; preds = %34, %31
  %36 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !686
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !688
  %38 = icmp ne i8* %37, null, !dbg !689
  br i1 %38, label %39, label %52, !dbg !690

; <label>:39:                                     ; preds = %35
  %40 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !691
  %41 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %40, i32 0, i32 20, !dbg !693
  %42 = load i8*, i8** %41, align 8, !dbg !693
  %43 = bitcast i8* %42 to %struct.GUI_WINDOW_REC*, !dbg !694
  %44 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %43, i32 0, i32 1, !dbg !695
  %45 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %44, align 8, !dbg !695
  call void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC* %45, i32 134217728), !dbg !696
  %46 = load i8*, i8** %6, align 8, !dbg !697
  %47 = load i8, i8* %46, align 1, !dbg !699
  %48 = sext i8 %47 to i32, !dbg !699
  %49 = icmp eq i32 %48, 0, !dbg !700
  br i1 %49, label %50, label %51, !dbg !701

; <label>:50:                                     ; preds = %39
  br label %371, !dbg !702

; <label>:51:                                     ; preds = %39
  br label %52, !dbg !703

; <label>:52:                                     ; preds = %51, %35
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !704
  store %struct._WINDOW_REC* %53, %struct._WINDOW_REC** %11, align 8, !dbg !705
  %54 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !706
  %55 = call i8* @g_hash_table_lookup(%struct._GHashTable* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !707
  store i8* %55, i8** %16, align 8, !dbg !708
  %56 = load i8*, i8** %16, align 8, !dbg !709
  %57 = icmp ne i8* %56, null, !dbg !711
  br i1 %57, label %58, label %76, !dbg !712

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** %16, align 8, !dbg !713
  %60 = call i32 @is_numeric(i8* %59, i8 signext 0), !dbg !715
  %61 = icmp ne i32 %60, 0, !dbg !715
  br i1 %61, label %62, label %66, !dbg !715

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %16, align 8, !dbg !716
  %64 = call i32 @atoi(i8* %63) #7, !dbg !717
  %65 = call %struct._WINDOW_REC* @window_find_refnum(i32 %64), !dbg !718
  br label %69, !dbg !720

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %16, align 8, !dbg !721
  %68 = call %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC* null, i8* %67), !dbg !722
  br label %69, !dbg !723

; <label>:69:                                     ; preds = %66, %62
  %70 = phi %struct._WINDOW_REC* [ %65, %62 ], [ %68, %66 ], !dbg !725
  store %struct._WINDOW_REC* %70, %struct._WINDOW_REC** %11, align 8, !dbg !727
  %71 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !728
  %72 = icmp eq %struct._WINDOW_REC* %71, null, !dbg !730
  br i1 %72, label %73, label %75, !dbg !731

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %16, align 8, !dbg !732
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 9, i8* %74), !dbg !734
  br label %371, !dbg !735

; <label>:75:                                     ; preds = %69
  br label %76, !dbg !736

; <label>:76:                                     ; preds = %75, %52
  %77 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !737
  %78 = call i8* @g_hash_table_lookup(%struct._GHashTable* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)), !dbg !739
  %79 = icmp ne i8* %78, null, !dbg !740
  br i1 %79, label %80, label %88, !dbg !741

; <label>:80:                                     ; preds = %76
  %81 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !742
  %82 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %81, i32 0, i32 20, !dbg !743
  %83 = load i8*, i8** %82, align 8, !dbg !743
  %84 = bitcast i8* %83 to %struct.GUI_WINDOW_REC*, !dbg !744
  %85 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %84, i32 0, i32 1, !dbg !745
  %86 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %85, align 8, !dbg !745
  %87 = call %struct._LINE_REC* @textbuffer_view_get_bookmark(%struct._TEXT_BUFFER_VIEW_REC* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)), !dbg !746
  store %struct._LINE_REC* %87, %struct._LINE_REC** %12, align 8, !dbg !747
  br label %102, !dbg !748

; <label>:88:                                     ; preds = %76
  %89 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !749
  %90 = call i8* @g_hash_table_lookup(%struct._GHashTable* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !751
  %91 = icmp ne i8* %90, null, !dbg !752
  br i1 %91, label %92, label %100, !dbg !753

; <label>:92:                                     ; preds = %88
  %93 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !754
  %94 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %93, i32 0, i32 20, !dbg !755
  %95 = load i8*, i8** %94, align 8, !dbg !755
  %96 = bitcast i8* %95 to %struct.GUI_WINDOW_REC*, !dbg !756
  %97 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %96, i32 0, i32 1, !dbg !757
  %98 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %97, align 8, !dbg !757
  %99 = call %struct._LINE_REC* @textbuffer_view_get_bookmark(%struct._TEXT_BUFFER_VIEW_REC* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)), !dbg !758
  store %struct._LINE_REC* %99, %struct._LINE_REC** %12, align 8, !dbg !759
  br label %101, !dbg !760

; <label>:100:                                    ; preds = %88
  store %struct._LINE_REC* null, %struct._LINE_REC** %12, align 8, !dbg !761
  br label %101

; <label>:101:                                    ; preds = %100, %92
  br label %102

; <label>:102:                                    ; preds = %101, %80
  %103 = load %struct._LINE_REC*, %struct._LINE_REC** %12, align 8, !dbg !762
  %104 = icmp eq %struct._LINE_REC* %103, null, !dbg !764
  br i1 %104, label %105, label %116, !dbg !765

; <label>:105:                                    ; preds = %102
  %106 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !766
  %107 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %106, i32 0, i32 20, !dbg !767
  %108 = load i8*, i8** %107, align 8, !dbg !767
  %109 = bitcast i8* %108 to %struct.GUI_WINDOW_REC*, !dbg !768
  %110 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %109, i32 0, i32 1, !dbg !769
  %111 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %110, align 8, !dbg !769
  %112 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %111, i32 0, i32 0, !dbg !770
  %113 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %112, align 8, !dbg !770
  %114 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %113, i32 0, i32 1, !dbg !771
  %115 = load %struct._LINE_REC*, %struct._LINE_REC** %114, align 8, !dbg !771
  store %struct._LINE_REC* %115, %struct._LINE_REC** %12, align 8, !dbg !772
  br label %116, !dbg !773

; <label>:116:                                    ; preds = %105, %102
  %117 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !774
  %118 = call i8* @g_hash_table_lookup(%struct._GHashTable* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !775
  store i8* %118, i8** %16, align 8, !dbg !776
  %119 = load i8*, i8** %16, align 8, !dbg !777
  %120 = icmp ne i8* %119, null, !dbg !779
  br i1 %120, label %121, label %124, !dbg !780

; <label>:121:                                    ; preds = %116
  %122 = load i8*, i8** %16, align 8, !dbg !781
  %123 = call i32 @atoi(i8* %122) #7, !dbg !783
  store i32 %123, i32* %19, align 4, !dbg !784
  store i32 %123, i32* %18, align 4, !dbg !785
  br label %167, !dbg !786

; <label>:124:                                    ; preds = %116
  %125 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !787
  %126 = call i8* @g_hash_table_lookup(%struct._GHashTable* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)), !dbg !789
  store i8* %126, i8** %16, align 8, !dbg !790
  %127 = load i8*, i8** %16, align 8, !dbg !791
  %128 = icmp eq i8* %127, null, !dbg !792
  br i1 %128, label %129, label %130, !dbg !791

; <label>:129:                                    ; preds = %124
  br label %141, !dbg !793

; <label>:130:                                    ; preds = %124
  %131 = load i8*, i8** %16, align 8, !dbg !795
  %132 = load i8, i8* %131, align 1, !dbg !797
  %133 = sext i8 %132 to i32, !dbg !797
  %134 = icmp ne i32 %133, 0, !dbg !798
  br i1 %134, label %135, label %138, !dbg !797

; <label>:135:                                    ; preds = %130
  %136 = load i8*, i8** %16, align 8, !dbg !799
  %137 = call i32 @atoi(i8* %136) #7, !dbg !800
  br label %139, !dbg !801

; <label>:138:                                    ; preds = %130
  br label %139, !dbg !803

; <label>:139:                                    ; preds = %138, %135
  %140 = phi i32 [ %137, %135 ], [ 3, %138 ], !dbg !805
  br label %141, !dbg !807

; <label>:141:                                    ; preds = %139, %129
  %142 = phi i32 [ 0, %129 ], [ %140, %139 ], !dbg !808
  store i32 %142, i32* %18, align 4, !dbg !810
  %143 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !811
  %144 = call i8* @g_hash_table_lookup(%struct._GHashTable* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)), !dbg !812
  store i8* %144, i8** %16, align 8, !dbg !813
  %145 = load i8*, i8** %16, align 8, !dbg !814
  %146 = icmp eq i8* %145, null, !dbg !816
  br i1 %146, label %147, label %150, !dbg !817

; <label>:147:                                    ; preds = %141
  %148 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !818
  %149 = call i8* @g_hash_table_lookup(%struct._GHashTable* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !820
  store i8* %149, i8** %16, align 8, !dbg !821
  br label %150, !dbg !822

; <label>:150:                                    ; preds = %147, %141
  %151 = load i8*, i8** %16, align 8, !dbg !823
  %152 = icmp eq i8* %151, null, !dbg !824
  br i1 %152, label %153, label %154, !dbg !823

; <label>:153:                                    ; preds = %150
  br label %165, !dbg !825

; <label>:154:                                    ; preds = %150
  %155 = load i8*, i8** %16, align 8, !dbg !826
  %156 = load i8, i8* %155, align 1, !dbg !827
  %157 = sext i8 %156 to i32, !dbg !827
  %158 = icmp ne i32 %157, 0, !dbg !828
  br i1 %158, label %159, label %162, !dbg !827

; <label>:159:                                    ; preds = %154
  %160 = load i8*, i8** %16, align 8, !dbg !829
  %161 = call i32 @atoi(i8* %160) #7, !dbg !830
  br label %163, !dbg !831

; <label>:162:                                    ; preds = %154
  br label %163, !dbg !832

; <label>:163:                                    ; preds = %162, %159
  %164 = phi i32 [ %161, %159 ], [ 3, %162 ], !dbg !833
  br label %165, !dbg !834

; <label>:165:                                    ; preds = %163, %153
  %166 = phi i32 [ 0, %153 ], [ %164, %163 ], !dbg !835
  store i32 %166, i32* %19, align 4, !dbg !836
  br label %167

; <label>:167:                                    ; preds = %165, %121
  %168 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !837
  %169 = call i8* @g_hash_table_lookup(%struct._GHashTable* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)), !dbg !839
  %170 = icmp ne i8* %169, null, !dbg !840
  br i1 %170, label %171, label %172, !dbg !841

; <label>:171:                                    ; preds = %167
  store i32 1, i32* %21, align 4, !dbg !842
  br label %172, !dbg !843

; <label>:172:                                    ; preds = %171, %167
  %173 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !844
  %174 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %173, i32 0, i32 20, !dbg !845
  %175 = load i8*, i8** %174, align 8, !dbg !845
  %176 = bitcast i8* %175 to %struct.GUI_WINDOW_REC*, !dbg !846
  %177 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %176, i32 0, i32 1, !dbg !847
  %178 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %177, align 8, !dbg !847
  %179 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %178, i32 0, i32 0, !dbg !848
  %180 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %179, align 8, !dbg !848
  %181 = load %struct._LINE_REC*, %struct._LINE_REC** %12, align 8, !dbg !849
  %182 = load i32, i32* %17, align 4, !dbg !850
  %183 = load i8*, i8** %6, align 8, !dbg !851
  %184 = load i32, i32* %18, align 4, !dbg !852
  %185 = load i32, i32* %19, align 4, !dbg !853
  %186 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !854
  %187 = call i8* @g_hash_table_lookup(%struct._GHashTable* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)), !dbg !855
  %188 = icmp ne i8* %187, null, !dbg !856
  %189 = zext i1 %188 to i32, !dbg !856
  %190 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !857
  %191 = call i8* @g_hash_table_lookup(%struct._GHashTable* %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !858
  %192 = icmp ne i8* %191, null, !dbg !859
  %193 = zext i1 %192 to i32, !dbg !859
  %194 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !860
  %195 = call i8* @g_hash_table_lookup(%struct._GHashTable* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !861
  %196 = icmp ne i8* %195, null, !dbg !862
  %197 = zext i1 %196 to i32, !dbg !862
  %198 = call %struct._GList* @textbuffer_find_text(%struct.TEXT_BUFFER_REC* %180, %struct._LINE_REC* %181, i32 %182, i32 134217728, i8* %183, i32 %184, i32 %185, i32 %189, i32 %193, i32 %197), !dbg !863
  store %struct._GList* %198, %struct._GList** %13, align 8, !dbg !864
  %199 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !865
  %200 = call i32 @g_list_length(%struct._GList* %199), !dbg !866
  store i32 %200, i32* %20, align 4, !dbg !867
  %201 = load i32, i32* %9, align 4, !dbg !868
  %202 = icmp sle i32 %201, 0, !dbg !870
  br i1 %202, label %203, label %205, !dbg !871

; <label>:203:                                    ; preds = %172
  %204 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !872
  store %struct._GList* %204, %struct._GList** %14, align 8, !dbg !873
  br label %227, !dbg !874

; <label>:205:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata i32* %22, metadata !875, metadata !347), !dbg !877
  %206 = load i32, i32* %20, align 4, !dbg !878
  %207 = load i32, i32* %9, align 4, !dbg !879
  %208 = sub nsw i32 %206, %207, !dbg !880
  %209 = load i32, i32* %8, align 4, !dbg !881
  %210 = sub nsw i32 %208, %209, !dbg !882
  store i32 %210, i32* %22, align 4, !dbg !877
  %211 = load i32, i32* %22, align 4, !dbg !883
  %212 = icmp slt i32 %211, 0, !dbg !885
  br i1 %212, label %213, label %214, !dbg !886

; <label>:213:                                    ; preds = %205
  store i32 0, i32* %22, align 4, !dbg !887
  br label %214, !dbg !889

; <label>:214:                                    ; preds = %213, %205
  %215 = load i32, i32* %22, align 4, !dbg !890
  %216 = load i32, i32* %20, align 4, !dbg !891
  %217 = icmp sgt i32 %215, %216, !dbg !892
  br i1 %217, label %218, label %219, !dbg !890

; <label>:218:                                    ; preds = %214
  br label %223, !dbg !893

; <label>:219:                                    ; preds = %214
  %220 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !895
  %221 = load i32, i32* %22, align 4, !dbg !897
  %222 = call %struct._GList* @g_list_nth(%struct._GList* %220, i32 %221), !dbg !898
  br label %223, !dbg !899

; <label>:223:                                    ; preds = %219, %218
  %224 = phi %struct._GList* [ null, %218 ], [ %222, %219 ], !dbg !900
  store %struct._GList* %224, %struct._GList** %14, align 8, !dbg !902
  %225 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !903
  %226 = call i32 @g_list_length(%struct._GList* %225), !dbg !904
  store i32 %226, i32* %20, align 4, !dbg !905
  br label %227

; <label>:227:                                    ; preds = %223, %203
  %228 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !906
  %229 = call i8* @g_hash_table_lookup(%struct._GHashTable* %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)), !dbg !908
  %230 = icmp ne i8* %229, null, !dbg !909
  br i1 %230, label %231, label %235, !dbg !910

; <label>:231:                                    ; preds = %227
  %232 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !911
  %233 = load i32, i32* %20, align 4, !dbg !913
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._WINDOW_REC* %232, i32 262144, i32 3, i32 %233), !dbg !914
  %234 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !915
  call void @g_list_free(%struct._GList* %234), !dbg !916
  br label %371, !dbg !917

; <label>:235:                                    ; preds = %227
  %236 = load i32, i32* %20, align 4, !dbg !918
  %237 = icmp sgt i32 %236, 1000, !dbg !920
  br i1 %237, label %238, label %249, !dbg !921

; <label>:238:                                    ; preds = %235
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !922
  %240 = icmp eq %struct._IO_FILE* %239, null, !dbg !924
  br i1 %240, label %241, label %249, !dbg !925

; <label>:241:                                    ; preds = %238
  %242 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !926
  %243 = call i8* @g_hash_table_lookup(%struct._GHashTable* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)), !dbg !927
  %244 = icmp eq i8* %243, null, !dbg !928
  br i1 %244, label %245, label %249, !dbg !929

; <label>:245:                                    ; preds = %241
  %246 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !931
  %247 = load i32, i32* %20, align 4, !dbg !933
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._WINDOW_REC* %246, i32 134479872, i32 2, i32 %247), !dbg !934
  %248 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !935
  call void @g_list_free(%struct._GList* %248), !dbg !936
  br label %371, !dbg !937

; <label>:249:                                    ; preds = %241, %238, %235
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !938
  %251 = icmp eq %struct._IO_FILE* %250, null, !dbg !940
  br i1 %251, label %252, label %257, !dbg !941

; <label>:252:                                    ; preds = %249
  %253 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !942
  %254 = call i8* @g_hash_table_lookup(%struct._GHashTable* %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !944
  %255 = icmp eq i8* %254, null, !dbg !945
  br i1 %255, label %256, label %257, !dbg !946

; <label>:256:                                    ; preds = %252
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 134217728, i32 4), !dbg !947
  br label %257, !dbg !947

; <label>:257:                                    ; preds = %256, %252, %249
  %258 = call %struct._GString* @g_string_new(i8* null), !dbg !948
  store %struct._GString* %258, %struct._GString** %15, align 8, !dbg !949
  br label %259, !dbg !950

; <label>:259:                                    ; preds = %347, %293, %257
  %260 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !951
  %261 = icmp ne %struct._GList* %260, null, !dbg !953
  br i1 %261, label %262, label %270, !dbg !954

; <label>:262:                                    ; preds = %259
  %263 = load i32, i32* %9, align 4, !dbg !955
  %264 = icmp slt i32 %263, 0, !dbg !956
  br i1 %264, label %268, label %265, !dbg !957

; <label>:265:                                    ; preds = %262
  %266 = load i32, i32* %9, align 4, !dbg !958
  %267 = icmp sgt i32 %266, 0, !dbg !960
  br label %268, !dbg !961

; <label>:268:                                    ; preds = %265, %262
  %269 = phi i1 [ true, %262 ], [ %267, %265 ]
  br label %270

; <label>:270:                                    ; preds = %268, %259
  %271 = phi i1 [ false, %259 ], [ %269, %268 ]
  br i1 %271, label %272, label %353, !dbg !962

; <label>:272:                                    ; preds = %270
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %23, metadata !964, metadata !347), !dbg !966
  %273 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !967
  %274 = getelementptr inbounds %struct._GList, %struct._GList* %273, i32 0, i32 0, !dbg !968
  %275 = load i8*, i8** %274, align 8, !dbg !968
  %276 = bitcast i8* %275 to %struct._LINE_REC*, !dbg !967
  store %struct._LINE_REC* %276, %struct._LINE_REC** %23, align 8, !dbg !966
  %277 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !969
  %278 = icmp eq %struct._LINE_REC* %277, null, !dbg !971
  br i1 %278, label %279, label %297, !dbg !972

; <label>:279:                                    ; preds = %272
  %280 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !973
  %281 = getelementptr inbounds %struct._GList, %struct._GList* %280, i32 0, i32 1, !dbg !976
  %282 = load %struct._GList*, %struct._GList** %281, align 8, !dbg !976
  %283 = icmp eq %struct._GList* %282, null, !dbg !977
  br i1 %283, label %284, label %285, !dbg !978

; <label>:284:                                    ; preds = %279
  br label %353, !dbg !979

; <label>:285:                                    ; preds = %279
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !980
  %287 = icmp ne %struct._IO_FILE* %286, null, !dbg !982
  br i1 %287, label %288, label %291, !dbg !983

; <label>:288:                                    ; preds = %285
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !984
  %290 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i64 3, i64 1, %struct._IO_FILE* %289), !dbg !986
  br label %293, !dbg !987

; <label>:291:                                    ; preds = %285
  %292 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !988
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._WINDOW_REC* %292, i32 134217728, i32 6), !dbg !990
  br label %293

; <label>:293:                                    ; preds = %291, %288
  %294 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !991
  %295 = getelementptr inbounds %struct._GList, %struct._GList* %294, i32 0, i32 1, !dbg !992
  %296 = load %struct._GList*, %struct._GList** %295, align 8, !dbg !992
  store %struct._GList* %296, %struct._GList** %14, align 8, !dbg !993
  br label %259, !dbg !994, !llvm.loop !995

; <label>:297:                                    ; preds = %272
  %298 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !996
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !997
  %300 = icmp eq %struct._IO_FILE* %299, null, !dbg !998
  %301 = zext i1 %300 to i32, !dbg !998
  %302 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !999
  call void @textbuffer_line2text(%struct._LINE_REC* %298, i32 %301, %struct._GString* %302), !dbg !1000
  %303 = call i32 @settings_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !1001
  %304 = icmp ne i32 %303, 0, !dbg !1001
  br i1 %304, label %321, label %305, !dbg !1003

; <label>:305:                                    ; preds = %297
  call void @llvm.dbg.declare(metadata %struct.tm** %24, metadata !1004, metadata !347), !dbg !1020
  %306 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1021
  %307 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %306, i32 0, i32 3, !dbg !1022
  %308 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %307, i32 0, i32 1, !dbg !1023
  %309 = call %struct.tm* @localtime(i64* %308) #8, !dbg !1024
  store %struct.tm* %309, %struct.tm** %24, align 8, !dbg !1020
  call void @llvm.dbg.declare(metadata [10 x i8]* %25, metadata !1025, metadata !347), !dbg !1029
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i32 0, i32 0, !dbg !1030
  %311 = load %struct.tm*, %struct.tm** %24, align 8, !dbg !1031
  %312 = getelementptr inbounds %struct.tm, %struct.tm* %311, i32 0, i32 2, !dbg !1032
  %313 = load i32, i32* %312, align 8, !dbg !1032
  %314 = load %struct.tm*, %struct.tm** %24, align 8, !dbg !1033
  %315 = getelementptr inbounds %struct.tm, %struct.tm* %314, i32 0, i32 1, !dbg !1034
  %316 = load i32, i32* %315, align 4, !dbg !1034
  %317 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %310, i64 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %313, i32 %316), !dbg !1035
  %318 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1036
  %319 = getelementptr inbounds [10 x i8], [10 x i8]* %25, i32 0, i32 0, !dbg !1037
  %320 = call %struct._GString* @g_string_prepend(%struct._GString* %318, i8* %319), !dbg !1038
  br label %321, !dbg !1039

; <label>:321:                                    ; preds = %305, %297
  %322 = load i32, i32* %21, align 4, !dbg !1040
  %323 = icmp eq i32 %322, 1, !dbg !1042
  br i1 %323, label %324, label %328, !dbg !1043

; <label>:324:                                    ; preds = %321
  %325 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1044
  %326 = load %struct._LINE_REC*, %struct._LINE_REC** %23, align 8, !dbg !1045
  %327 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1046
  call void @prepend_date(%struct._WINDOW_REC* %325, %struct._LINE_REC* %326, %struct._GString* %327), !dbg !1047
  br label %328, !dbg !1047

; <label>:328:                                    ; preds = %324, %321
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1048
  %330 = icmp ne %struct._IO_FILE* %329, null, !dbg !1050
  br i1 %330, label %331, label %342, !dbg !1051

; <label>:331:                                    ; preds = %328
  %332 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1052
  %333 = getelementptr inbounds %struct._GString, %struct._GString* %332, i32 0, i32 0, !dbg !1054
  %334 = load i8*, i8** %333, align 8, !dbg !1054
  %335 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1055
  %336 = getelementptr inbounds %struct._GString, %struct._GString* %335, i32 0, i32 1, !dbg !1056
  %337 = load i64, i64* %336, align 8, !dbg !1056
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1057
  %339 = call i64 @fwrite(i8* %334, i64 %337, i64 1, %struct._IO_FILE* %338), !dbg !1058
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1059
  %341 = call i32 @fputc(i32 10, %struct._IO_FILE* %340), !dbg !1060
  br label %347, !dbg !1061

; <label>:342:                                    ; preds = %328
  %343 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1062
  %344 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1064
  %345 = getelementptr inbounds %struct._GString, %struct._GString* %344, i32 0, i32 0, !dbg !1065
  %346 = load i8*, i8** %345, align 8, !dbg !1065
  call void (%struct._WINDOW_REC*, i32, i8*, ...) @printtext_window(%struct._WINDOW_REC* %343, i32 134217728, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %346), !dbg !1066
  br label %347

; <label>:347:                                    ; preds = %342, %331
  %348 = load i32, i32* %9, align 4, !dbg !1067
  %349 = add nsw i32 %348, -1, !dbg !1067
  store i32 %349, i32* %9, align 4, !dbg !1067
  %350 = load %struct._GList*, %struct._GList** %14, align 8, !dbg !1068
  %351 = getelementptr inbounds %struct._GList, %struct._GList* %350, i32 0, i32 1, !dbg !1069
  %352 = load %struct._GList*, %struct._GList** %351, align 8, !dbg !1069
  store %struct._GList* %352, %struct._GList** %14, align 8, !dbg !1070
  br label %259, !dbg !1071, !llvm.loop !995

; <label>:353:                                    ; preds = %284, %270
  %354 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1073
  %355 = call i8* @g_string_free(%struct._GString* %354, i32 1), !dbg !1074
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !1075
  %357 = icmp eq %struct._IO_FILE* %356, null, !dbg !1077
  br i1 %357, label %358, label %363, !dbg !1078

; <label>:358:                                    ; preds = %353
  %359 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1079
  %360 = call i8* @g_hash_table_lookup(%struct._GHashTable* %359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1081
  %361 = icmp eq i8* %360, null, !dbg !1082
  br i1 %361, label %362, label %363, !dbg !1083

; <label>:362:                                    ; preds = %358
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 134217728, i32 5), !dbg !1084
  br label %363, !dbg !1084

; <label>:363:                                    ; preds = %362, %358, %353
  %364 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !1085
  %365 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %364, i32 0, i32 20, !dbg !1086
  %366 = load i8*, i8** %365, align 8, !dbg !1086
  %367 = bitcast i8* %366 to %struct.GUI_WINDOW_REC*, !dbg !1087
  %368 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %367, i32 0, i32 1, !dbg !1088
  %369 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %368, align 8, !dbg !1088
  call void @textbuffer_view_set_bookmark_bottom(%struct._TEXT_BUFFER_VIEW_REC* %369, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)), !dbg !1089
  %370 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !1090
  call void @g_list_free(%struct._GList* %370), !dbg !1091
  br label %371, !dbg !1092

; <label>:371:                                    ; preds = %363, %245, %231, %73, %50, %30
  ret void, !dbg !1093
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #4

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @cmd_params_free(i8*) #2

declare void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #2

declare %struct._WINDOW_REC* @window_find_refnum(i32) #2

declare %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare %struct._LINE_REC* @textbuffer_view_get_bookmark(%struct._TEXT_BUFFER_VIEW_REC*, i8*) #2

declare %struct._GList* @textbuffer_find_text(%struct.TEXT_BUFFER_REC*, %struct._LINE_REC*, i32, i32, i8*, i32, i32, i32, i32, i32) #2

declare i32 @g_list_length(%struct._GList*) #2

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #2

declare void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #2

declare void @g_list_free(%struct._GList*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare void @textbuffer_line2text(%struct._LINE_REC*, i32, %struct._GString*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

declare %struct._GString* @g_string_prepend(%struct._GString*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @prepend_date(%struct._WINDOW_REC*, %struct._LINE_REC*, %struct._GString*) #0 !dbg !1094 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca %struct.THEME_REC*, align 8
  %8 = alloca %struct._TEXT_DEST_REC, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i32, align 4
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1097, metadata !347), !dbg !1098
  store %struct._LINE_REC* %1, %struct._LINE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !1099, metadata !347), !dbg !1100
  store %struct._GString* %2, %struct._GString** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1101, metadata !347), !dbg !1102
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %7, metadata !1103, metadata !347), !dbg !1123
  store %struct.THEME_REC* null, %struct.THEME_REC** %7, align 8, !dbg !1123
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %8, metadata !1124, metadata !347), !dbg !1139
  %13 = bitcast %struct._TEXT_DEST_REC* %8 to i8*, !dbg !1139
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 72, i32 8, i1 false), !dbg !1139
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1140, metadata !347), !dbg !1141
  store i8* null, i8** %9, align 8, !dbg !1141
  call void @llvm.dbg.declare(metadata [20 x i8]* %10, metadata !1142, metadata !347), !dbg !1143
  %14 = bitcast [20 x i8]* %10 to i8*, !dbg !1143
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 20, i32 16, i1 false), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.tm** %11, metadata !1144, metadata !347), !dbg !1145
  %15 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1146
  %16 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %15, i32 0, i32 3, !dbg !1147
  %17 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %16, i32 0, i32 1, !dbg !1148
  %18 = call %struct.tm* @localtime(i64* %17) #8, !dbg !1149
  store %struct.tm* %18, %struct.tm** %11, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1150, metadata !347), !dbg !1151
  store i32 0, i32* %12, align 4, !dbg !1151
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1152
  %20 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %19, i32 0, i32 19, !dbg !1153
  %21 = load i8*, i8** %20, align 8, !dbg !1153
  %22 = icmp ne i8* %21, null, !dbg !1154
  br i1 %22, label %23, label %27, !dbg !1152

; <label>:23:                                     ; preds = %3
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1155
  %25 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %24, i32 0, i32 19, !dbg !1157
  %26 = load i8*, i8** %25, align 8, !dbg !1157
  br label %30, !dbg !1158

; <label>:27:                                     ; preds = %3
  %28 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1159
  %29 = bitcast %struct.THEME_REC* %28 to i8*, !dbg !1159
  br label %30, !dbg !1161

; <label>:30:                                     ; preds = %27, %23
  %31 = phi i8* [ %26, %23 ], [ %29, %27 ], !dbg !1162
  %32 = bitcast i8* %31 to %struct.THEME_REC*, !dbg !1162
  store %struct.THEME_REC* %32, %struct.THEME_REC** %7, align 8, !dbg !1164
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1165
  call void @format_create_dest(%struct._TEXT_DEST_REC* %8, i8* null, i8* null, i32 134217728, %struct._WINDOW_REC* %33), !dbg !1166
  %34 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !1167
  %35 = call i8* (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) @format_get_text_theme(%struct.THEME_REC* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct._TEXT_DEST_REC* %8, i32 7), !dbg !1168
  store i8* %35, i8** %9, align 8, !dbg !1169
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !1170
  %37 = load i8*, i8** %9, align 8, !dbg !1171
  %38 = load %struct.tm*, %struct.tm** %11, align 8, !dbg !1172
  %39 = call i64 @strftime(i8* %36, i64 20, i8* %37, %struct.tm* %38) #8, !dbg !1173
  %40 = trunc i64 %39 to i32, !dbg !1173
  store i32 %40, i32* %12, align 4, !dbg !1174
  %41 = load i8*, i8** %9, align 8, !dbg !1175
  call void @g_free(i8* %41), !dbg !1176
  %42 = load i32, i32* %12, align 4, !dbg !1177
  %43 = icmp sle i32 %42, 0, !dbg !1179
  br i1 %43, label %44, label %45, !dbg !1180

; <label>:44:                                     ; preds = %30
  br label %49, !dbg !1181

; <label>:45:                                     ; preds = %30
  %46 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1183
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0, !dbg !1184
  %48 = call %struct._GString* @g_string_prepend(%struct._GString* %46, i8* %47), !dbg !1185
  br label %49, !dbg !1186

; <label>:49:                                     ; preds = %45, %44
  ret void, !dbg !1187
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare void @printtext_window(%struct._WINDOW_REC*, i32, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare void @textbuffer_view_set_bookmark_bottom(%struct._TEXT_BUFFER_VIEW_REC*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

declare i8* @format_get_text_theme(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!338, !339}
!llvm.ident = !{!340}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !107)
!1 = !DIFile(filename: "line354-lastlog.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !24, !55}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!27 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!28 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!29 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!30 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!31 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!32 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!33 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!34 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!35 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!36 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!37 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!38 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!39 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!40 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!41 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!42 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!43 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!44 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!45 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!46 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!47 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!48 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!49 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!50 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!51 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!52 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!53 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!54 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 3, size: 32, align: 32, elements: !57)
!56 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!58 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!59 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!60 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!61 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!62 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!63 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!64 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!65 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!66 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!67 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!68 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!69 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!70 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!71 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!72 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!73 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!74 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!77 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!78 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!79 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!80 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!81 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!82 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!83 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!84 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!85 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!86 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!87 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!88 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!89 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!90 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!91 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!92 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!93 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!94 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!95 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!96 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!97 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!98 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!99 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!100 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!101 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!102 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!103 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!104 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!105 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!106 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!107 = !{!108, !109, !111, !113, !120, !123, !125}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !110, line: 77, baseType: !108)
!110 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !110, line: 48, baseType: !112)
!112 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !114, line: 9, baseType: !115)
!114 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118, !118, !118, !118, !118, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !110, line: 46, baseType: !122)
!122 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !127, line: 24, baseType: !128)
!127 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 13, size: 320, align: 64, elements: !129)
!129 = !{!130, !250, !332, !333, !334, !335, !336, !337}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !128, file: !127, line: 14, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !133, line: 34, baseType: !134)
!133 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 16, size: 704, align: 64, elements: !135)
!135 = !{!136, !229, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !134, file: !133, line: 17, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !139, line: 117, baseType: !140)
!139 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !141, line: 28, size: 1280, align: 64, elements: !142)
!141 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = !{!143, !145, !147, !148, !149, !157, !193, !194, !195, !196, !197, !198, !200, !201, !202, !221, !222, !223, !224, !225, !226, !227, !228}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !140, file: !141, line: 29, baseType: !144, size: 32, align: 32)
!144 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 30, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !140, file: !141, line: 32, baseType: !144, size: 32, align: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !140, file: !141, line: 32, baseType: !144, size: 32, align: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !140, file: !141, line: 34, baseType: !150, size: 64, align: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !152, line: 37, baseType: !153)
!152 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !152, line: 39, size: 128, align: 64, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !153, file: !152, line: 41, baseType: !109, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !152, line: 42, baseType: !150, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !140, file: !141, line: 35, baseType: !158, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !139, line: 108, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !161, line: 5, size: 704, align: 64, elements: !162)
!161 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!162 = !{!163, !165, !166, !171, !172, !176, !177, !178, !183, !184, !185, !189}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !164, line: 3, baseType: !144, size: 32, align: 32)
!164 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !160, file: !164, line: 4, baseType: !144, size: 32, align: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !160, file: !164, line: 5, baseType: !167, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !169, line: 37, baseType: !170)
!169 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !169, line: 37, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !160, file: !164, line: 7, baseType: !108, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !160, file: !164, line: 8, baseType: !173, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !139, line: 107, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !139, line: 107, flags: DIFlagFwdDecl)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !160, file: !164, line: 9, baseType: !146, size: 64, align: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !164, line: 10, baseType: !146, size: 64, align: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !160, file: !164, line: 11, baseType: !179, size: 64, align: 64, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !180, line: 75, baseType: !181)
!180 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !182, line: 139, baseType: !112)
!182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !160, file: !164, line: 12, baseType: !144, size: 32, align: 32, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !160, file: !164, line: 13, baseType: !146, size: 64, align: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !160, file: !164, line: 15, baseType: !186, size: 64, align: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !158}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !160, file: !164, line: 17, baseType: !190, size: 64, align: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!123, !158}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !140, file: !141, line: 36, baseType: !173, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !140, file: !141, line: 37, baseType: !173, size: 64, align: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !140, file: !141, line: 38, baseType: !146, size: 64, align: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !140, file: !141, line: 40, baseType: !144, size: 32, align: 32, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !140, file: !141, line: 41, baseType: !150, size: 64, align: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !140, file: !141, line: 43, baseType: !199, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!199 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !140, file: !141, line: 44, baseType: !199, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !140, file: !141, line: 45, baseType: !199, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !140, file: !141, line: 48, baseType: !203, size: 64, align: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !205, line: 14, baseType: !206)
!205 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 6, size: 256, align: 64, elements: !207)
!207 = !{!208, !209, !218, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !205, line: 7, baseType: !146, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !206, file: !205, line: 9, baseType: !210, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !212, line: 37, baseType: !213)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !212, line: 39, size: 192, align: 64, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !212, line: 41, baseType: !109, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !212, line: 42, baseType: !210, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !213, file: !212, line: 43, baseType: !210, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !206, file: !205, line: 10, baseType: !144, size: 32, align: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !206, file: !205, line: 12, baseType: !144, size: 32, align: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !206, file: !205, line: 13, baseType: !144, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !140, file: !141, line: 49, baseType: !146, size: 64, align: 64, offset: 768)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !140, file: !141, line: 51, baseType: !144, size: 32, align: 32, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !140, file: !141, line: 52, baseType: !146, size: 64, align: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !140, file: !141, line: 54, baseType: !179, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !140, file: !141, line: 55, baseType: !179, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !140, file: !141, line: 57, baseType: !146, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !140, file: !141, line: 58, baseType: !108, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !140, file: !141, line: 60, baseType: !108, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !134, file: !133, line: 19, baseType: !230, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !232, line: 4, baseType: !233)
!232 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !232, line: 4, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !134, file: !133, line: 20, baseType: !144, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !134, file: !133, line: 22, baseType: !144, size: 32, align: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !134, file: !133, line: 22, baseType: !144, size: 32, align: 32, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !134, file: !133, line: 23, baseType: !144, size: 32, align: 32, offset: 224)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !134, file: !133, line: 23, baseType: !144, size: 32, align: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !134, file: !133, line: 24, baseType: !144, size: 32, align: 32, offset: 288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !134, file: !133, line: 24, baseType: !144, size: 32, align: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !134, file: !133, line: 26, baseType: !150, size: 64, align: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !134, file: !133, line: 27, baseType: !144, size: 32, align: 32, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !134, file: !133, line: 27, baseType: !144, size: 32, align: 32, offset: 480)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !134, file: !133, line: 28, baseType: !144, size: 32, align: 32, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !134, file: !133, line: 29, baseType: !144, size: 32, align: 32, offset: 544)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !134, file: !133, line: 29, baseType: !144, size: 32, align: 32, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !134, file: !133, line: 30, baseType: !144, size: 32, align: 32, offset: 608)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !134, file: !133, line: 32, baseType: !199, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !134, file: !133, line: 33, baseType: !199, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !128, file: !127, line: 15, baseType: !251, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !253, line: 7, baseType: !254)
!253 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !253, line: 50, size: 960, align: 64, elements: !255)
!255 = !{!256, !297, !298, !299, !300, !301, !302, !307, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !254, file: !253, line: 51, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !259, line: 72, baseType: !260)
!259 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 60, size: 448, align: 64, elements: !261)
!261 = !{!262, !263, !280, !281, !282, !293, !294, !295, !296}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !260, file: !259, line: 61, baseType: !150, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !260, file: !259, line: 62, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !259, line: 52, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !259, line: 34, size: 320, align: 64, elements: !267)
!267 = !{!268, !270, !271, !274}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !266, file: !259, line: 48, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !259, line: 48, baseType: !269, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !266, file: !259, line: 50, baseType: !272, size: 64, align: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !266, file: !259, line: 51, baseType: !275, size: 128, align: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !259, line: 32, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 29, size: 128, align: 64, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !276, file: !259, line: 30, baseType: !144, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !276, file: !259, line: 31, baseType: !179, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !260, file: !259, line: 63, baseType: !144, size: 32, align: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !260, file: !259, line: 65, baseType: !264, size: 64, align: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !260, file: !259, line: 66, baseType: !283, size: 64, align: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !259, line: 58, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 54, size: 131008, align: 32, elements: !286)
!286 = !{!287, !291, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !285, file: !259, line: 55, baseType: !288, size: 130944, align: 8)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 130944, align: 8, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 16368)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !285, file: !259, line: 56, baseType: !144, size: 32, align: 32, offset: 130944)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !285, file: !259, line: 57, baseType: !144, size: 32, align: 32, offset: 130976)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !260, file: !259, line: 68, baseType: !144, size: 32, align: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !260, file: !259, line: 69, baseType: !144, size: 32, align: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !260, file: !259, line: 70, baseType: !144, size: 32, align: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !260, file: !259, line: 71, baseType: !199, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !254, file: !253, line: 53, baseType: !150, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !254, file: !253, line: 55, baseType: !230, size: 64, align: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !254, file: !253, line: 56, baseType: !144, size: 32, align: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !254, file: !253, line: 56, baseType: !144, size: 32, align: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !254, file: !253, line: 58, baseType: !144, size: 32, align: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !254, file: !253, line: 59, baseType: !303, size: 64, align: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !253, line: 10, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!144, !251, !264, !144}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !254, file: !253, line: 61, baseType: !308, size: 64, align: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !253, line: 48, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 37, size: 192, align: 64, elements: !311)
!311 = !{!312, !313, !314, !315, !316}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !310, file: !253, line: 38, baseType: !144, size: 32, align: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !310, file: !253, line: 39, baseType: !144, size: 32, align: 32, offset: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !310, file: !253, line: 41, baseType: !167, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !310, file: !253, line: 45, baseType: !273, size: 8, align: 8, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !310, file: !253, line: 47, baseType: !144, size: 32, align: 32, offset: 160)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !254, file: !253, line: 63, baseType: !144, size: 32, align: 32, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !254, file: !253, line: 66, baseType: !264, size: 64, align: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !254, file: !253, line: 68, baseType: !144, size: 32, align: 32, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !254, file: !253, line: 71, baseType: !264, size: 64, align: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !254, file: !253, line: 72, baseType: !144, size: 32, align: 32, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !254, file: !253, line: 76, baseType: !167, size: 64, align: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !254, file: !253, line: 79, baseType: !144, size: 32, align: 32, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !254, file: !253, line: 82, baseType: !144, size: 32, align: 32, offset: 864)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !254, file: !253, line: 84, baseType: !199, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !254, file: !253, line: 86, baseType: !199, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !254, file: !253, line: 88, baseType: !199, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !254, file: !253, line: 90, baseType: !199, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !254, file: !253, line: 92, baseType: !199, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !254, file: !253, line: 94, baseType: !199, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !254, file: !253, line: 96, baseType: !199, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !128, file: !127, line: 17, baseType: !199, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !128, file: !127, line: 18, baseType: !199, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !128, file: !127, line: 20, baseType: !199, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !128, file: !127, line: 21, baseType: !199, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !128, file: !127, line: 22, baseType: !264, size: 64, align: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !128, file: !127, line: 23, baseType: !179, size: 64, align: 64, offset: 256)
!338 = !{i32 2, !"Dwarf Version", i32 4}
!339 = !{i32 2, !"Debug Info Version", i32 3}
!340 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!341 = distinct !DISubprogram(name: "cmd_options_get_level", scope: !342, file: !342, line: 40, type: !343, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!342 = !DIFile(filename: "lastlog.c", directory: "/home/lichi/Desktop/irssi/task1")
!343 = !DISubroutineType(types: !344)
!344 = !{!144, !123, !167}
!345 = !{}
!346 = !DILocalVariable(name: "cmd", arg: 1, scope: !341, file: !342, line: 40, type: !123)
!347 = !DIExpression()
!348 = !DILocation(line: 40, column: 39, scope: !341)
!349 = !DILocalVariable(name: "optlist", arg: 2, scope: !341, file: !342, line: 40, type: !167)
!350 = !DILocation(line: 40, column: 56, scope: !341)
!351 = !DILocalVariable(name: "list", scope: !341, file: !342, line: 42, type: !210)
!352 = !DILocation(line: 42, column: 9, scope: !341)
!353 = !DILocalVariable(name: "level", scope: !341, file: !342, line: 43, type: !144)
!354 = !DILocation(line: 43, column: 13, scope: !341)
!355 = !DILocalVariable(name: "retlevel", scope: !341, file: !342, line: 43, type: !144)
!356 = !DILocation(line: 43, column: 20, scope: !341)
!357 = !DILocation(line: 45, column: 30, scope: !341)
!358 = !DILocation(line: 45, column: 35, scope: !341)
!359 = !DILocation(line: 45, column: 9, scope: !341)
!360 = !DILocation(line: 45, column: 7, scope: !341)
!361 = !DILocation(line: 47, column: 18, scope: !341)
!362 = !DILocation(line: 48, column: 2, scope: !341)
!363 = !DILocation(line: 48, column: 9, scope: !364)
!364 = !DILexicalBlockFile(scope: !341, file: !342, discriminator: 1)
!365 = !DILocation(line: 48, column: 14, scope: !364)
!366 = !DILocation(line: 48, column: 2, scope: !364)
!367 = !DILocation(line: 49, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !341, file: !342, line: 48, column: 22)
!369 = !DILocation(line: 49, column: 27, scope: !368)
!370 = !DILocation(line: 49, column: 11, scope: !368)
!371 = !DILocation(line: 49, column: 9, scope: !368)
!372 = !DILocation(line: 50, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !368, file: !342, line: 50, column: 7)
!374 = !DILocation(line: 50, column: 13, scope: !373)
!375 = !DILocation(line: 50, column: 7, scope: !368)
!376 = !DILocation(line: 54, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !342, line: 50, column: 19)
!378 = !DILocation(line: 54, column: 15, scope: !377)
!379 = !DILocation(line: 52, column: 4, scope: !377)
!380 = !DILocation(line: 55, column: 13, scope: !377)
!381 = !DILocation(line: 56, column: 25, scope: !377)
!382 = !DILocation(line: 59, column: 15, scope: !368)
!383 = !DILocation(line: 59, column: 12, scope: !368)
!384 = !DILocation(line: 60, column: 38, scope: !368)
!385 = !DILocation(line: 60, column: 44, scope: !368)
!386 = !DILocation(line: 60, column: 50, scope: !368)
!387 = !DILocation(line: 60, column: 24, scope: !368)
!388 = !DILocation(line: 60, column: 22, scope: !368)
!389 = !DILocation(line: 48, column: 2, scope: !390)
!390 = !DILexicalBlockFile(scope: !341, file: !342, discriminator: 2)
!391 = distinct !{!391, !362}
!392 = !DILocation(line: 63, column: 9, scope: !341)
!393 = !DILocation(line: 63, column: 2, scope: !341)
!394 = distinct !DISubprogram(name: "lastlog_init", scope: !342, file: !342, line: 298, type: !395, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!395 = !DISubroutineType(types: !396)
!396 = !{null}
!397 = !DILocation(line: 300, column: 2, scope: !394)
!398 = !DILocation(line: 302, column: 2, scope: !394)
!399 = !DILocation(line: 303, column: 1, scope: !394)
!400 = distinct !DISubprogram(name: "cmd_lastlog", scope: !342, file: !342, line: 243, type: !401, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !123}
!403 = !DILocalVariable(name: "data", arg: 1, scope: !400, file: !342, line: 243, type: !123)
!404 = !DILocation(line: 243, column: 37, scope: !400)
!405 = !DILocalVariable(name: "optlist", scope: !400, file: !342, line: 245, type: !167)
!406 = !DILocation(line: 245, column: 14, scope: !400)
!407 = !DILocalVariable(name: "text", scope: !400, file: !342, line: 246, type: !146)
!408 = !DILocation(line: 246, column: 8, scope: !400)
!409 = !DILocalVariable(name: "countstr", scope: !400, file: !342, line: 246, type: !146)
!410 = !DILocation(line: 246, column: 15, scope: !400)
!411 = !DILocalVariable(name: "start", scope: !400, file: !342, line: 246, type: !146)
!412 = !DILocation(line: 246, column: 26, scope: !400)
!413 = !DILocalVariable(name: "fname", scope: !400, file: !342, line: 246, type: !146)
!414 = !DILocation(line: 246, column: 34, scope: !400)
!415 = !DILocalVariable(name: "free_arg", scope: !400, file: !342, line: 247, type: !108)
!416 = !DILocation(line: 247, column: 8, scope: !400)
!417 = !DILocalVariable(name: "count", scope: !400, file: !342, line: 248, type: !144)
!418 = !DILocation(line: 248, column: 13, scope: !400)
!419 = !DILocalVariable(name: "fd", scope: !400, file: !342, line: 248, type: !144)
!420 = !DILocation(line: 248, column: 20, scope: !400)
!421 = !DILocalVariable(name: "fhandle", scope: !400, file: !342, line: 249, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !424, line: 48, baseType: !425)
!424 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !426, line: 241, size: 1728, align: 64, elements: !427)
!426 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/irssi/task1")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !448, !449, !450, !451, !453, !455, !457, !461, !464, !466, !467, !468, !469, !470, !474, !475}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !425, file: !426, line: 242, baseType: !144, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !425, file: !426, line: 247, baseType: !146, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !425, file: !426, line: 248, baseType: !146, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !425, file: !426, line: 249, baseType: !146, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !425, file: !426, line: 250, baseType: !146, size: 64, align: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !425, file: !426, line: 251, baseType: !146, size: 64, align: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !425, file: !426, line: 252, baseType: !146, size: 64, align: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !425, file: !426, line: 253, baseType: !146, size: 64, align: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !425, file: !426, line: 254, baseType: !146, size: 64, align: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !425, file: !426, line: 256, baseType: !146, size: 64, align: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !425, file: !426, line: 257, baseType: !146, size: 64, align: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !425, file: !426, line: 258, baseType: !146, size: 64, align: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !425, file: !426, line: 260, baseType: !441, size: 64, align: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !426, line: 156, size: 192, align: 64, elements: !443)
!443 = !{!444, !445, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !442, file: !426, line: 157, baseType: !441, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !442, file: !426, line: 158, baseType: !446, size: 64, align: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !442, file: !426, line: 162, baseType: !144, size: 32, align: 32, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !425, file: !426, line: 262, baseType: !446, size: 64, align: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !425, file: !426, line: 264, baseType: !144, size: 32, align: 32, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !425, file: !426, line: 268, baseType: !144, size: 32, align: 32, offset: 928)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !425, file: !426, line: 270, baseType: !452, size: 64, align: 64, offset: 960)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !182, line: 131, baseType: !112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !425, file: !426, line: 274, baseType: !454, size: 16, align: 16, offset: 1024)
!454 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !425, file: !426, line: 275, baseType: !456, size: 8, align: 8, offset: 1040)
!456 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !425, file: !426, line: 276, baseType: !458, size: 8, align: 8, offset: 1048)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 8, align: 8, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 1)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !425, file: !426, line: 280, baseType: !462, size: 64, align: 64, offset: 1088)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !426, line: 150, baseType: null)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !425, file: !426, line: 289, baseType: !465, size: 64, align: 64, offset: 1152)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !182, line: 132, baseType: !112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !425, file: !426, line: 297, baseType: !108, size: 64, align: 64, offset: 1216)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !425, file: !426, line: 298, baseType: !108, size: 64, align: 64, offset: 1280)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !425, file: !426, line: 299, baseType: !108, size: 64, align: 64, offset: 1344)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !425, file: !426, line: 300, baseType: !108, size: 64, align: 64, offset: 1408)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !425, file: !426, line: 302, baseType: !471, size: 64, align: 64, offset: 1472)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !472, line: 216, baseType: !473)
!472 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !425, file: !426, line: 303, baseType: !144, size: 32, align: 32, offset: 1536)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !425, file: !426, line: 305, baseType: !476, size: 160, align: 8, offset: 1568)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 160, align: 8, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 20)
!479 = !DILocation(line: 249, column: 8, scope: !400)
!480 = !DILocation(line: 251, column: 2, scope: !400)
!481 = distinct !{!481, !480}
!482 = !DILocation(line: 251, column: 10, scope: !483)
!483 = !DILexicalBlockFile(scope: !484, file: !342, discriminator: 1)
!484 = distinct !DILexicalBlock(scope: !485, file: !342, line: 251, column: 10)
!485 = distinct !DILexicalBlock(scope: !400, file: !342, line: 251, column: 4)
!486 = !DILocation(line: 251, column: 15, scope: !483)
!487 = !DILocation(line: 251, column: 5, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !342, discriminator: 2)
!489 = distinct !DILexicalBlock(scope: !484, file: !342, line: 251, column: 3)
!490 = !DILocation(line: 251, column: 14, scope: !491)
!491 = !DILexicalBlockFile(scope: !492, file: !342, discriminator: 3)
!492 = distinct !DILexicalBlock(scope: !484, file: !342, line: 251, column: 12)
!493 = !DILocation(line: 251, column: 99, scope: !491)
!494 = !DILocation(line: 251, column: 110, scope: !495)
!495 = !DILexicalBlockFile(scope: !485, file: !342, discriminator: 4)
!496 = !DILocation(line: 253, column: 22, scope: !497)
!497 = distinct !DILexicalBlock(scope: !400, file: !342, line: 253, column: 6)
!498 = !DILocation(line: 253, column: 7, scope: !497)
!499 = !DILocation(line: 253, column: 6, scope: !400)
!500 = !DILocation(line: 256, column: 3, scope: !497)
!501 = !DILocation(line: 258, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !400, file: !342, line: 258, column: 6)
!503 = !DILocation(line: 258, column: 6, scope: !502)
!504 = !DILocation(line: 258, column: 13, scope: !502)
!505 = !DILocation(line: 258, column: 21, scope: !502)
!506 = !DILocation(line: 258, column: 35, scope: !507)
!507 = !DILexicalBlockFile(scope: !502, file: !342, discriminator: 1)
!508 = !DILocation(line: 258, column: 24, scope: !507)
!509 = !DILocation(line: 258, column: 44, scope: !507)
!510 = !DILocation(line: 258, column: 48, scope: !511)
!511 = !DILexicalBlockFile(scope: !502, file: !342, discriminator: 2)
!512 = !DILocation(line: 258, column: 47, scope: !511)
!513 = !DILocation(line: 258, column: 53, scope: !511)
!514 = !DILocation(line: 258, column: 60, scope: !511)
!515 = !DILocation(line: 259, column: 8, scope: !502)
!516 = !DILocation(line: 259, column: 7, scope: !502)
!517 = !DILocation(line: 259, column: 17, scope: !502)
!518 = !DILocation(line: 259, column: 25, scope: !502)
!519 = !DILocation(line: 259, column: 39, scope: !507)
!520 = !DILocation(line: 259, column: 28, scope: !507)
!521 = !DILocation(line: 258, column: 6, scope: !522)
!522 = !DILexicalBlockFile(scope: !400, file: !342, discriminator: 3)
!523 = !DILocation(line: 260, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !502, file: !342, line: 259, column: 54)
!525 = !DILocation(line: 260, column: 9, scope: !524)
!526 = !DILocation(line: 261, column: 14, scope: !524)
!527 = !DILocation(line: 261, column: 12, scope: !524)
!528 = !DILocation(line: 262, column: 8, scope: !524)
!529 = !DILocation(line: 263, column: 2, scope: !524)
!530 = !DILocation(line: 264, column: 15, scope: !400)
!531 = !DILocation(line: 264, column: 10, scope: !400)
!532 = !DILocation(line: 264, column: 8, scope: !400)
!533 = !DILocation(line: 265, column: 6, scope: !534)
!534 = distinct !DILexicalBlock(scope: !400, file: !342, line: 265, column: 6)
!535 = !DILocation(line: 265, column: 12, scope: !534)
!536 = !DILocation(line: 265, column: 6, scope: !400)
!537 = !DILocation(line: 265, column: 24, scope: !538)
!538 = !DILexicalBlockFile(scope: !534, file: !342, discriminator: 1)
!539 = !DILocation(line: 265, column: 18, scope: !538)
!540 = !DILocation(line: 268, column: 17, scope: !400)
!541 = !DILocation(line: 269, column: 30, scope: !400)
!542 = !DILocation(line: 269, column: 10, scope: !400)
!543 = !DILocation(line: 269, column: 8, scope: !400)
!544 = !DILocation(line: 270, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !400, file: !342, line: 270, column: 6)
!546 = !DILocation(line: 270, column: 12, scope: !545)
!547 = !DILocation(line: 270, column: 6, scope: !400)
!548 = !DILocation(line: 271, column: 38, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !342, line: 270, column: 20)
!550 = !DILocation(line: 271, column: 25, scope: !549)
!551 = !DILocation(line: 271, column: 23, scope: !549)
!552 = !DILocation(line: 272, column: 13, scope: !549)
!553 = !DILocation(line: 273, column: 16, scope: !549)
!554 = !DILocation(line: 273, column: 6, scope: !555)
!555 = !DILexicalBlockFile(scope: !549, file: !342, discriminator: 1)
!556 = !DILocation(line: 272, column: 8, scope: !549)
!557 = !DILocation(line: 272, column: 6, scope: !549)
!558 = !DILocation(line: 274, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !549, file: !342, line: 274, column: 7)
!560 = !DILocation(line: 274, column: 10, scope: !559)
!561 = !DILocation(line: 274, column: 7, scope: !549)
!562 = !DILocation(line: 275, column: 21, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !342, line: 274, column: 17)
!564 = !DILocation(line: 275, column: 14, scope: !563)
!565 = !DILocation(line: 275, column: 12, scope: !563)
!566 = !DILocation(line: 276, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !342, line: 276, column: 8)
!568 = !DILocation(line: 276, column: 16, scope: !567)
!569 = !DILocation(line: 276, column: 8, scope: !563)
!570 = !DILocation(line: 277, column: 11, scope: !567)
!571 = !DILocation(line: 277, column: 5, scope: !567)
!572 = !DILocation(line: 278, column: 3, scope: !563)
!573 = !DILocation(line: 279, column: 24, scope: !549)
!574 = !DILocation(line: 279, column: 17, scope: !549)
!575 = !DILocation(line: 280, column: 2, scope: !549)
!576 = !DILocation(line: 282, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !400, file: !342, line: 282, column: 6)
!578 = !DILocation(line: 282, column: 12, scope: !577)
!579 = !DILocation(line: 282, column: 19, scope: !577)
!580 = !DILocation(line: 282, column: 22, scope: !581)
!581 = !DILexicalBlockFile(scope: !577, file: !342, discriminator: 1)
!582 = !DILocation(line: 282, column: 30, scope: !581)
!583 = !DILocation(line: 282, column: 6, scope: !581)
!584 = !DILocation(line: 284, column: 48, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !342, line: 282, column: 39)
!586 = !DILocation(line: 284, column: 47, scope: !585)
!587 = !DILocation(line: 284, column: 36, scope: !588)
!588 = !DILexicalBlockFile(scope: !585, file: !342, discriminator: 1)
!589 = !DILocation(line: 283, column: 3, scope: !585)
!590 = !DILocation(line: 285, column: 2, scope: !585)
!591 = !DILocation(line: 286, column: 16, scope: !592)
!592 = distinct !DILexicalBlock(scope: !577, file: !342, line: 285, column: 9)
!593 = !DILocation(line: 286, column: 22, scope: !592)
!594 = !DILocation(line: 286, column: 36, scope: !592)
!595 = !DILocation(line: 286, column: 31, scope: !592)
!596 = !DILocation(line: 286, column: 44, scope: !592)
!597 = !DILocation(line: 286, column: 51, scope: !592)
!598 = !DILocation(line: 286, column: 3, scope: !599)
!599 = !DILexicalBlockFile(scope: !592, file: !342, discriminator: 1)
!600 = !DILocation(line: 287, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !592, file: !342, line: 287, column: 7)
!602 = !DILocation(line: 287, column: 15, scope: !601)
!603 = !DILocation(line: 287, column: 7, scope: !592)
!604 = !DILocation(line: 288, column: 15, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !342, line: 288, column: 8)
!606 = distinct !DILexicalBlock(scope: !601, file: !342, line: 287, column: 23)
!607 = !DILocation(line: 288, column: 8, scope: !605)
!608 = !DILocation(line: 288, column: 8, scope: !606)
!609 = !DILocation(line: 290, column: 53, scope: !605)
!610 = !DILocation(line: 290, column: 52, scope: !605)
!611 = !DILocation(line: 290, column: 41, scope: !612)
!612 = !DILexicalBlockFile(scope: !605, file: !342, discriminator: 1)
!613 = !DILocation(line: 289, column: 5, scope: !605)
!614 = !DILocation(line: 291, column: 11, scope: !606)
!615 = !DILocation(line: 291, column: 4, scope: !606)
!616 = !DILocation(line: 292, column: 3, scope: !606)
!617 = !DILocation(line: 295, column: 18, scope: !400)
!618 = !DILocation(line: 295, column: 2, scope: !400)
!619 = !DILocation(line: 296, column: 1, scope: !400)
!620 = !DILocation(line: 296, column: 1, scope: !621)
!621 = !DILexicalBlockFile(scope: !400, file: !342, discriminator: 1)
!622 = distinct !DISubprogram(name: "lastlog_deinit", scope: !342, file: !342, line: 305, type: !395, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!623 = !DILocation(line: 307, column: 2, scope: !622)
!624 = !DILocation(line: 308, column: 1, scope: !622)
!625 = distinct !DISubprogram(name: "show_lastlog", scope: !342, file: !342, line: 85, type: !626, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !123, !167, !144, !144, !422}
!628 = !DILocalVariable(name: "searchtext", arg: 1, scope: !625, file: !342, line: 85, type: !123)
!629 = !DILocation(line: 85, column: 38, scope: !625)
!630 = !DILocalVariable(name: "optlist", arg: 2, scope: !625, file: !342, line: 85, type: !167)
!631 = !DILocation(line: 85, column: 62, scope: !625)
!632 = !DILocalVariable(name: "start", arg: 3, scope: !625, file: !342, line: 86, type: !144)
!633 = !DILocation(line: 86, column: 9, scope: !625)
!634 = !DILocalVariable(name: "count", arg: 4, scope: !625, file: !342, line: 86, type: !144)
!635 = !DILocation(line: 86, column: 20, scope: !625)
!636 = !DILocalVariable(name: "fhandle", arg: 5, scope: !625, file: !342, line: 86, type: !422)
!637 = !DILocation(line: 86, column: 33, scope: !625)
!638 = !DILocalVariable(name: "window", scope: !625, file: !342, line: 88, type: !137)
!639 = !DILocation(line: 88, column: 14, scope: !625)
!640 = !DILocalVariable(name: "startline", scope: !625, file: !342, line: 89, type: !264)
!641 = !DILocation(line: 89, column: 19, scope: !625)
!642 = !DILocalVariable(name: "list", scope: !625, file: !342, line: 90, type: !210)
!643 = !DILocation(line: 90, column: 9, scope: !625)
!644 = !DILocalVariable(name: "tmp", scope: !625, file: !342, line: 90, type: !210)
!645 = !DILocation(line: 90, column: 16, scope: !625)
!646 = !DILocalVariable(name: "line", scope: !625, file: !342, line: 91, type: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !649, line: 39, baseType: !650)
!649 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !649, line: 41, size: 192, align: 64, elements: !651)
!651 = !{!652, !653, !656}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !650, file: !649, line: 43, baseType: !120, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !650, file: !649, line: 44, baseType: !654, size: 64, align: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !655, line: 66, baseType: !473)
!655 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !650, file: !649, line: 45, baseType: !654, size: 64, align: 64, offset: 128)
!657 = !DILocation(line: 91, column: 11, scope: !625)
!658 = !DILocalVariable(name: "str", scope: !625, file: !342, line: 92, type: !146)
!659 = !DILocation(line: 92, column: 15, scope: !625)
!660 = !DILocalVariable(name: "level", scope: !625, file: !342, line: 93, type: !144)
!661 = !DILocation(line: 93, column: 6, scope: !625)
!662 = !DILocalVariable(name: "before", scope: !625, file: !342, line: 93, type: !144)
!663 = !DILocation(line: 93, column: 13, scope: !625)
!664 = !DILocalVariable(name: "after", scope: !625, file: !342, line: 93, type: !144)
!665 = !DILocation(line: 93, column: 21, scope: !625)
!666 = !DILocalVariable(name: "len", scope: !625, file: !342, line: 93, type: !144)
!667 = !DILocation(line: 93, column: 28, scope: !625)
!668 = !DILocalVariable(name: "date", scope: !625, file: !342, line: 93, type: !144)
!669 = !DILocation(line: 93, column: 33, scope: !625)
!670 = !DILocation(line: 95, column: 50, scope: !625)
!671 = !DILocation(line: 95, column: 17, scope: !625)
!672 = !DILocation(line: 95, column: 15, scope: !625)
!673 = !DILocation(line: 96, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !625, file: !342, line: 96, column: 6)
!675 = !DILocation(line: 96, column: 12, scope: !674)
!676 = !DILocation(line: 96, column: 6, scope: !625)
!677 = !DILocation(line: 96, column: 19, scope: !678)
!678 = !DILexicalBlockFile(scope: !674, file: !342, discriminator: 1)
!679 = !DILocation(line: 97, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !625, file: !342, line: 97, column: 13)
!681 = !DILocation(line: 97, column: 19, scope: !680)
!682 = !DILocation(line: 97, column: 13, scope: !625)
!683 = !DILocation(line: 97, column: 31, scope: !684)
!684 = !DILexicalBlockFile(scope: !680, file: !342, discriminator: 1)
!685 = !DILocation(line: 97, column: 25, scope: !684)
!686 = !DILocation(line: 99, column: 26, scope: !687)
!687 = distinct !DILexicalBlock(scope: !625, file: !342, line: 99, column: 6)
!688 = !DILocation(line: 99, column: 6, scope: !687)
!689 = !DILocation(line: 99, column: 44, scope: !687)
!690 = !DILocation(line: 99, column: 6, scope: !625)
!691 = !DILocation(line: 100, column: 63, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !342, line: 99, column: 52)
!693 = !DILocation(line: 100, column: 76, scope: !692)
!694 = !DILocation(line: 100, column: 42, scope: !692)
!695 = !DILocation(line: 100, column: 88, scope: !692)
!696 = !DILocation(line: 100, column: 3, scope: !692)
!697 = !DILocation(line: 101, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !692, file: !342, line: 101, column: 7)
!699 = !DILocation(line: 101, column: 7, scope: !698)
!700 = !DILocation(line: 101, column: 19, scope: !698)
!701 = !DILocation(line: 101, column: 7, scope: !692)
!702 = !DILocation(line: 102, column: 25, scope: !698)
!703 = !DILocation(line: 103, column: 2, scope: !692)
!704 = !DILocation(line: 106, column: 18, scope: !625)
!705 = !DILocation(line: 106, column: 16, scope: !625)
!706 = !DILocation(line: 107, column: 35, scope: !625)
!707 = !DILocation(line: 107, column: 15, scope: !625)
!708 = !DILocation(line: 107, column: 13, scope: !625)
!709 = !DILocation(line: 108, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !625, file: !342, line: 108, column: 6)
!711 = !DILocation(line: 108, column: 10, scope: !710)
!712 = !DILocation(line: 108, column: 6, scope: !625)
!713 = !DILocation(line: 109, column: 23, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !342, line: 108, column: 18)
!715 = !DILocation(line: 109, column: 12, scope: !714)
!716 = !DILocation(line: 110, column: 28, scope: !714)
!717 = !DILocation(line: 110, column: 23, scope: !714)
!718 = !DILocation(line: 110, column: 4, scope: !719)
!719 = !DILexicalBlockFile(scope: !714, file: !342, discriminator: 1)
!720 = !DILocation(line: 109, column: 12, scope: !719)
!721 = !DILocation(line: 111, column: 26, scope: !714)
!722 = !DILocation(line: 111, column: 4, scope: !714)
!723 = !DILocation(line: 109, column: 12, scope: !724)
!724 = !DILexicalBlockFile(scope: !714, file: !342, discriminator: 2)
!725 = !DILocation(line: 109, column: 12, scope: !726)
!726 = !DILexicalBlockFile(scope: !714, file: !342, discriminator: 3)
!727 = !DILocation(line: 109, column: 10, scope: !726)
!728 = !DILocation(line: 112, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !714, file: !342, line: 112, column: 7)
!730 = !DILocation(line: 112, column: 14, scope: !729)
!731 = !DILocation(line: 112, column: 7, scope: !714)
!732 = !DILocation(line: 113, column: 49, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !342, line: 112, column: 22)
!734 = !DILocation(line: 113, column: 4, scope: !733)
!735 = !DILocation(line: 115, column: 4, scope: !733)
!736 = !DILocation(line: 117, column: 2, scope: !714)
!737 = !DILocation(line: 119, column: 26, scope: !738)
!738 = distinct !DILexicalBlock(scope: !625, file: !342, line: 119, column: 6)
!739 = !DILocation(line: 119, column: 6, scope: !738)
!740 = !DILocation(line: 119, column: 42, scope: !738)
!741 = !DILocation(line: 119, column: 6, scope: !625)
!742 = !DILocation(line: 120, column: 66, scope: !738)
!743 = !DILocation(line: 120, column: 75, scope: !738)
!744 = !DILocation(line: 120, column: 45, scope: !738)
!745 = !DILocation(line: 120, column: 87, scope: !738)
!746 = !DILocation(line: 120, column: 15, scope: !738)
!747 = !DILocation(line: 120, column: 13, scope: !738)
!748 = !DILocation(line: 120, column: 3, scope: !738)
!749 = !DILocation(line: 121, column: 31, scope: !750)
!750 = distinct !DILexicalBlock(scope: !738, file: !342, line: 121, column: 11)
!751 = !DILocation(line: 121, column: 11, scope: !750)
!752 = !DILocation(line: 121, column: 48, scope: !750)
!753 = !DILocation(line: 121, column: 11, scope: !738)
!754 = !DILocation(line: 122, column: 66, scope: !750)
!755 = !DILocation(line: 122, column: 75, scope: !750)
!756 = !DILocation(line: 122, column: 45, scope: !750)
!757 = !DILocation(line: 122, column: 87, scope: !750)
!758 = !DILocation(line: 122, column: 15, scope: !750)
!759 = !DILocation(line: 122, column: 13, scope: !750)
!760 = !DILocation(line: 122, column: 3, scope: !750)
!761 = !DILocation(line: 124, column: 13, scope: !750)
!762 = !DILocation(line: 126, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !625, file: !342, line: 126, column: 6)
!764 = !DILocation(line: 126, column: 16, scope: !763)
!765 = !DILocation(line: 126, column: 6, scope: !625)
!766 = !DILocation(line: 127, column: 53, scope: !763)
!767 = !DILocation(line: 127, column: 62, scope: !763)
!768 = !DILocation(line: 127, column: 32, scope: !763)
!769 = !DILocation(line: 127, column: 74, scope: !763)
!770 = !DILocation(line: 127, column: 81, scope: !763)
!771 = !DILocation(line: 127, column: 89, scope: !763)
!772 = !DILocation(line: 127, column: 27, scope: !763)
!773 = !DILocation(line: 127, column: 17, scope: !763)
!774 = !DILocation(line: 129, column: 28, scope: !625)
!775 = !DILocation(line: 129, column: 8, scope: !625)
!776 = !DILocation(line: 129, column: 6, scope: !625)
!777 = !DILocation(line: 130, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !625, file: !342, line: 130, column: 6)
!779 = !DILocation(line: 130, column: 10, scope: !778)
!780 = !DILocation(line: 130, column: 6, scope: !625)
!781 = !DILocation(line: 131, column: 25, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !342, line: 130, column: 18)
!783 = !DILocation(line: 131, column: 20, scope: !782)
!784 = !DILocation(line: 131, column: 18, scope: !782)
!785 = !DILocation(line: 131, column: 10, scope: !782)
!786 = !DILocation(line: 132, column: 2, scope: !782)
!787 = !DILocation(line: 133, column: 29, scope: !788)
!788 = distinct !DILexicalBlock(scope: !778, file: !342, line: 132, column: 9)
!789 = !DILocation(line: 133, column: 9, scope: !788)
!790 = !DILocation(line: 133, column: 7, scope: !788)
!791 = !DILocation(line: 134, column: 12, scope: !788)
!792 = !DILocation(line: 134, column: 16, scope: !788)
!793 = !DILocation(line: 134, column: 12, scope: !794)
!794 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 1)
!795 = !DILocation(line: 134, column: 30, scope: !796)
!796 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 2)
!797 = !DILocation(line: 134, column: 29, scope: !796)
!798 = !DILocation(line: 134, column: 34, scope: !796)
!799 = !DILocation(line: 135, column: 9, scope: !788)
!800 = !DILocation(line: 135, column: 4, scope: !788)
!801 = !DILocation(line: 134, column: 29, scope: !802)
!802 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 3)
!803 = !DILocation(line: 134, column: 29, scope: !804)
!804 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 4)
!805 = !DILocation(line: 134, column: 29, scope: !806)
!806 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 5)
!807 = !DILocation(line: 134, column: 12, scope: !806)
!808 = !DILocation(line: 134, column: 12, scope: !809)
!809 = !DILexicalBlockFile(scope: !788, file: !342, discriminator: 6)
!810 = !DILocation(line: 134, column: 10, scope: !809)
!811 = !DILocation(line: 137, column: 29, scope: !788)
!812 = !DILocation(line: 137, column: 9, scope: !788)
!813 = !DILocation(line: 137, column: 7, scope: !788)
!814 = !DILocation(line: 138, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !788, file: !342, line: 138, column: 7)
!816 = !DILocation(line: 138, column: 11, scope: !815)
!817 = !DILocation(line: 138, column: 7, scope: !788)
!818 = !DILocation(line: 138, column: 45, scope: !819)
!819 = !DILexicalBlockFile(scope: !815, file: !342, discriminator: 1)
!820 = !DILocation(line: 138, column: 25, scope: !819)
!821 = !DILocation(line: 138, column: 23, scope: !819)
!822 = !DILocation(line: 138, column: 19, scope: !819)
!823 = !DILocation(line: 139, column: 11, scope: !788)
!824 = !DILocation(line: 139, column: 15, scope: !788)
!825 = !DILocation(line: 139, column: 11, scope: !794)
!826 = !DILocation(line: 139, column: 29, scope: !796)
!827 = !DILocation(line: 139, column: 28, scope: !796)
!828 = !DILocation(line: 139, column: 33, scope: !796)
!829 = !DILocation(line: 140, column: 9, scope: !788)
!830 = !DILocation(line: 140, column: 4, scope: !788)
!831 = !DILocation(line: 139, column: 28, scope: !802)
!832 = !DILocation(line: 139, column: 28, scope: !804)
!833 = !DILocation(line: 139, column: 28, scope: !806)
!834 = !DILocation(line: 139, column: 11, scope: !806)
!835 = !DILocation(line: 139, column: 11, scope: !809)
!836 = !DILocation(line: 139, column: 9, scope: !809)
!837 = !DILocation(line: 143, column: 26, scope: !838)
!838 = distinct !DILexicalBlock(scope: !625, file: !342, line: 143, column: 6)
!839 = !DILocation(line: 143, column: 6, scope: !838)
!840 = !DILocation(line: 143, column: 43, scope: !838)
!841 = !DILocation(line: 143, column: 6, scope: !625)
!842 = !DILocation(line: 144, column: 8, scope: !838)
!843 = !DILocation(line: 144, column: 3, scope: !838)
!844 = !DILocation(line: 146, column: 52, scope: !625)
!845 = !DILocation(line: 146, column: 61, scope: !625)
!846 = !DILocation(line: 146, column: 31, scope: !625)
!847 = !DILocation(line: 146, column: 73, scope: !625)
!848 = !DILocation(line: 146, column: 79, scope: !625)
!849 = !DILocation(line: 146, column: 87, scope: !625)
!850 = !DILocation(line: 147, column: 9, scope: !625)
!851 = !DILocation(line: 148, column: 9, scope: !625)
!852 = !DILocation(line: 148, column: 21, scope: !625)
!853 = !DILocation(line: 148, column: 29, scope: !625)
!854 = !DILocation(line: 149, column: 29, scope: !625)
!855 = !DILocation(line: 149, column: 9, scope: !625)
!856 = !DILocation(line: 149, column: 48, scope: !625)
!857 = !DILocation(line: 150, column: 29, scope: !625)
!858 = !DILocation(line: 150, column: 9, scope: !625)
!859 = !DILocation(line: 150, column: 46, scope: !625)
!860 = !DILocation(line: 151, column: 29, scope: !625)
!861 = !DILocation(line: 151, column: 9, scope: !625)
!862 = !DILocation(line: 151, column: 46, scope: !625)
!863 = !DILocation(line: 146, column: 9, scope: !625)
!864 = !DILocation(line: 146, column: 7, scope: !625)
!865 = !DILocation(line: 153, column: 29, scope: !625)
!866 = !DILocation(line: 153, column: 15, scope: !625)
!867 = !DILocation(line: 153, column: 13, scope: !625)
!868 = !DILocation(line: 154, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !625, file: !342, line: 154, column: 6)
!870 = !DILocation(line: 154, column: 12, scope: !869)
!871 = !DILocation(line: 154, column: 6, scope: !625)
!872 = !DILocation(line: 155, column: 9, scope: !869)
!873 = !DILocation(line: 155, column: 7, scope: !869)
!874 = !DILocation(line: 155, column: 3, scope: !869)
!875 = !DILocalVariable(name: "pos", scope: !876, file: !342, line: 157, type: !144)
!876 = distinct !DILexicalBlock(scope: !869, file: !342, line: 156, column: 7)
!877 = !DILocation(line: 157, column: 7, scope: !876)
!878 = !DILocation(line: 157, column: 13, scope: !876)
!879 = !DILocation(line: 157, column: 17, scope: !876)
!880 = !DILocation(line: 157, column: 16, scope: !876)
!881 = !DILocation(line: 157, column: 23, scope: !876)
!882 = !DILocation(line: 157, column: 22, scope: !876)
!883 = !DILocation(line: 158, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !342, line: 158, column: 7)
!885 = !DILocation(line: 158, column: 11, scope: !884)
!886 = !DILocation(line: 158, column: 7, scope: !876)
!887 = !DILocation(line: 158, column: 20, scope: !888)
!888 = !DILexicalBlockFile(scope: !884, file: !342, discriminator: 1)
!889 = !DILocation(line: 158, column: 16, scope: !888)
!890 = !DILocation(line: 160, column: 9, scope: !876)
!891 = !DILocation(line: 160, column: 15, scope: !876)
!892 = !DILocation(line: 160, column: 13, scope: !876)
!893 = !DILocation(line: 160, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !876, file: !342, discriminator: 1)
!895 = !DILocation(line: 160, column: 38, scope: !896)
!896 = !DILexicalBlockFile(scope: !876, file: !342, discriminator: 2)
!897 = !DILocation(line: 160, column: 44, scope: !896)
!898 = !DILocation(line: 160, column: 27, scope: !896)
!899 = !DILocation(line: 160, column: 9, scope: !896)
!900 = !DILocation(line: 160, column: 9, scope: !901)
!901 = !DILexicalBlockFile(scope: !876, file: !342, discriminator: 3)
!902 = !DILocation(line: 160, column: 7, scope: !901)
!903 = !DILocation(line: 161, column: 23, scope: !876)
!904 = !DILocation(line: 161, column: 9, scope: !876)
!905 = !DILocation(line: 161, column: 7, scope: !876)
!906 = !DILocation(line: 164, column: 26, scope: !907)
!907 = distinct !DILexicalBlock(scope: !625, file: !342, line: 164, column: 6)
!908 = !DILocation(line: 164, column: 6, scope: !907)
!909 = !DILocation(line: 164, column: 44, scope: !907)
!910 = !DILocation(line: 164, column: 6, scope: !625)
!911 = !DILocation(line: 165, column: 40, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !342, line: 164, column: 52)
!913 = !DILocation(line: 165, column: 94, scope: !912)
!914 = !DILocation(line: 165, column: 3, scope: !912)
!915 = !DILocation(line: 167, column: 15, scope: !912)
!916 = !DILocation(line: 167, column: 3, scope: !912)
!917 = !DILocation(line: 168, column: 3, scope: !912)
!918 = !DILocation(line: 171, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !625, file: !342, line: 171, column: 6)
!920 = !DILocation(line: 171, column: 10, scope: !919)
!921 = !DILocation(line: 171, column: 17, scope: !919)
!922 = !DILocation(line: 171, column: 20, scope: !923)
!923 = !DILexicalBlockFile(scope: !919, file: !342, discriminator: 1)
!924 = !DILocation(line: 171, column: 28, scope: !923)
!925 = !DILocation(line: 171, column: 54, scope: !923)
!926 = !DILocation(line: 172, column: 26, scope: !919)
!927 = !DILocation(line: 172, column: 6, scope: !919)
!928 = !DILocation(line: 172, column: 44, scope: !919)
!929 = !DILocation(line: 171, column: 6, scope: !930)
!930 = !DILexicalBlockFile(scope: !625, file: !342, discriminator: 2)
!931 = !DILocation(line: 173, column: 40, scope: !932)
!932 = distinct !DILexicalBlock(scope: !919, file: !342, line: 172, column: 52)
!933 = !DILocation(line: 173, column: 114, scope: !932)
!934 = !DILocation(line: 173, column: 3, scope: !932)
!935 = !DILocation(line: 176, column: 15, scope: !932)
!936 = !DILocation(line: 176, column: 3, scope: !932)
!937 = !DILocation(line: 177, column: 3, scope: !932)
!938 = !DILocation(line: 180, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !625, file: !342, line: 180, column: 6)
!940 = !DILocation(line: 180, column: 14, scope: !939)
!941 = !DILocation(line: 180, column: 21, scope: !939)
!942 = !DILocation(line: 180, column: 44, scope: !943)
!943 = !DILexicalBlockFile(scope: !939, file: !342, discriminator: 1)
!944 = !DILocation(line: 180, column: 24, scope: !943)
!945 = !DILocation(line: 180, column: 58, scope: !943)
!946 = !DILocation(line: 180, column: 6, scope: !943)
!947 = !DILocation(line: 181, column: 3, scope: !939)
!948 = !DILocation(line: 183, column: 9, scope: !625)
!949 = !DILocation(line: 183, column: 7, scope: !625)
!950 = !DILocation(line: 184, column: 9, scope: !625)
!951 = !DILocation(line: 184, column: 16, scope: !952)
!952 = !DILexicalBlockFile(scope: !625, file: !342, discriminator: 1)
!953 = !DILocation(line: 184, column: 20, scope: !952)
!954 = !DILocation(line: 184, column: 27, scope: !952)
!955 = !DILocation(line: 184, column: 31, scope: !930)
!956 = !DILocation(line: 184, column: 37, scope: !930)
!957 = !DILocation(line: 184, column: 41, scope: !930)
!958 = !DILocation(line: 184, column: 44, scope: !959)
!959 = !DILexicalBlockFile(scope: !625, file: !342, discriminator: 3)
!960 = !DILocation(line: 184, column: 50, scope: !959)
!961 = !DILocation(line: 184, column: 41, scope: !959)
!962 = !DILocation(line: 184, column: 9, scope: !963)
!963 = !DILexicalBlockFile(scope: !625, file: !342, discriminator: 4)
!964 = !DILocalVariable(name: "rec", scope: !965, file: !342, line: 185, type: !264)
!965 = distinct !DILexicalBlock(scope: !625, file: !342, line: 184, column: 56)
!966 = !DILocation(line: 185, column: 13, scope: !965)
!967 = !DILocation(line: 185, column: 19, scope: !965)
!968 = !DILocation(line: 185, column: 24, scope: !965)
!969 = !DILocation(line: 187, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !965, file: !342, line: 187, column: 7)
!971 = !DILocation(line: 187, column: 11, scope: !970)
!972 = !DILocation(line: 187, column: 7, scope: !965)
!973 = !DILocation(line: 188, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !342, line: 188, column: 8)
!975 = distinct !DILexicalBlock(scope: !970, file: !342, line: 187, column: 19)
!976 = !DILocation(line: 188, column: 13, scope: !974)
!977 = !DILocation(line: 188, column: 18, scope: !974)
!978 = !DILocation(line: 188, column: 8, scope: !975)
!979 = !DILocation(line: 189, column: 33, scope: !974)
!980 = !DILocation(line: 190, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !342, line: 190, column: 8)
!982 = !DILocation(line: 190, column: 16, scope: !981)
!983 = !DILocation(line: 190, column: 8, scope: !975)
!984 = !DILocation(line: 191, column: 26, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !342, line: 190, column: 24)
!986 = !DILocation(line: 191, column: 5, scope: !985)
!987 = !DILocation(line: 192, column: 4, scope: !985)
!988 = !DILocation(line: 193, column: 42, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !342, line: 192, column: 11)
!990 = !DILocation(line: 193, column: 5, scope: !989)
!991 = !DILocation(line: 197, column: 31, scope: !975)
!992 = !DILocation(line: 197, column: 36, scope: !975)
!993 = !DILocation(line: 197, column: 29, scope: !975)
!994 = !DILocation(line: 198, column: 4, scope: !975)
!995 = distinct !{!995, !950}
!996 = !DILocation(line: 202, column: 24, scope: !965)
!997 = !DILocation(line: 202, column: 29, scope: !965)
!998 = !DILocation(line: 202, column: 37, scope: !965)
!999 = !DILocation(line: 202, column: 45, scope: !965)
!1000 = !DILocation(line: 202, column: 3, scope: !965)
!1001 = !DILocation(line: 203, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !965, file: !342, line: 203, column: 7)
!1003 = !DILocation(line: 203, column: 7, scope: !965)
!1004 = !DILocalVariable(name: "tm", scope: !1005, file: !342, line: 204, type: !1006)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !342, line: 203, column: 41)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64, align: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !180, line: 133, size: 448, align: 64, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1007, file: !180, line: 135, baseType: !144, size: 32, align: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1007, file: !180, line: 136, baseType: !144, size: 32, align: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1007, file: !180, line: 137, baseType: !144, size: 32, align: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1007, file: !180, line: 138, baseType: !144, size: 32, align: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1007, file: !180, line: 139, baseType: !144, size: 32, align: 32, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1007, file: !180, line: 140, baseType: !144, size: 32, align: 32, offset: 160)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1007, file: !180, line: 141, baseType: !144, size: 32, align: 32, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1007, file: !180, line: 142, baseType: !144, size: 32, align: 32, offset: 224)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1007, file: !180, line: 143, baseType: !144, size: 32, align: 32, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1007, file: !180, line: 146, baseType: !112, size: 64, align: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1007, file: !180, line: 147, baseType: !123, size: 64, align: 64, offset: 384)
!1020 = !DILocation(line: 204, column: 15, scope: !1005)
!1021 = !DILocation(line: 204, column: 31, scope: !1005)
!1022 = !DILocation(line: 204, column: 36, scope: !1005)
!1023 = !DILocation(line: 204, column: 41, scope: !1005)
!1024 = !DILocation(line: 204, column: 20, scope: !1005)
!1025 = !DILocalVariable(name: "timestamp", scope: !1005, file: !342, line: 205, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 80, align: 8, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 10)
!1029 = !DILocation(line: 205, column: 30, scope: !1005)
!1030 = !DILocation(line: 207, column: 15, scope: !1005)
!1031 = !DILocation(line: 209, column: 8, scope: !1005)
!1032 = !DILocation(line: 209, column: 12, scope: !1005)
!1033 = !DILocation(line: 209, column: 21, scope: !1005)
!1034 = !DILocation(line: 209, column: 25, scope: !1005)
!1035 = !DILocation(line: 207, column: 4, scope: !1005)
!1036 = !DILocation(line: 210, column: 42, scope: !1005)
!1037 = !DILocation(line: 210, column: 48, scope: !1005)
!1038 = !DILocation(line: 210, column: 25, scope: !1005)
!1039 = !DILocation(line: 211, column: 3, scope: !1005)
!1040 = !DILocation(line: 213, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !965, file: !342, line: 213, column: 7)
!1042 = !DILocation(line: 213, column: 12, scope: !1041)
!1043 = !DILocation(line: 213, column: 7, scope: !965)
!1044 = !DILocation(line: 214, column: 17, scope: !1041)
!1045 = !DILocation(line: 214, column: 25, scope: !1041)
!1046 = !DILocation(line: 214, column: 30, scope: !1041)
!1047 = !DILocation(line: 214, column: 4, scope: !1041)
!1048 = !DILocation(line: 217, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !965, file: !342, line: 217, column: 7)
!1050 = !DILocation(line: 217, column: 15, scope: !1049)
!1051 = !DILocation(line: 217, column: 7, scope: !965)
!1052 = !DILocation(line: 218, column: 11, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !342, line: 217, column: 23)
!1054 = !DILocation(line: 218, column: 17, scope: !1053)
!1055 = !DILocation(line: 218, column: 22, scope: !1053)
!1056 = !DILocation(line: 218, column: 28, scope: !1053)
!1057 = !DILocation(line: 218, column: 36, scope: !1053)
!1058 = !DILocation(line: 218, column: 4, scope: !1053)
!1059 = !DILocation(line: 219, column: 16, scope: !1053)
!1060 = !DILocation(line: 219, column: 4, scope: !1053)
!1061 = !DILocation(line: 220, column: 3, scope: !1053)
!1062 = !DILocation(line: 221, column: 21, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1049, file: !342, line: 220, column: 10)
!1064 = !DILocation(line: 222, column: 13, scope: !1063)
!1065 = !DILocation(line: 222, column: 19, scope: !1063)
!1066 = !DILocation(line: 221, column: 4, scope: !1063)
!1067 = !DILocation(line: 225, column: 8, scope: !965)
!1068 = !DILocation(line: 226, column: 9, scope: !965)
!1069 = !DILocation(line: 226, column: 14, scope: !965)
!1070 = !DILocation(line: 226, column: 7, scope: !965)
!1071 = !DILocation(line: 184, column: 9, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !625, file: !342, discriminator: 5)
!1073 = !DILocation(line: 228, column: 23, scope: !625)
!1074 = !DILocation(line: 228, column: 9, scope: !625)
!1075 = !DILocation(line: 230, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !625, file: !342, line: 230, column: 6)
!1077 = !DILocation(line: 230, column: 14, scope: !1076)
!1078 = !DILocation(line: 230, column: 21, scope: !1076)
!1079 = !DILocation(line: 230, column: 44, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1076, file: !342, discriminator: 1)
!1081 = !DILocation(line: 230, column: 24, scope: !1080)
!1082 = !DILocation(line: 230, column: 58, scope: !1080)
!1083 = !DILocation(line: 230, column: 6, scope: !1080)
!1084 = !DILocation(line: 231, column: 3, scope: !1076)
!1085 = !DILocation(line: 233, column: 60, scope: !625)
!1086 = !DILocation(line: 233, column: 69, scope: !625)
!1087 = !DILocation(line: 233, column: 39, scope: !625)
!1088 = !DILocation(line: 233, column: 81, scope: !625)
!1089 = !DILocation(line: 233, column: 2, scope: !625)
!1090 = !DILocation(line: 236, column: 14, scope: !625)
!1091 = !DILocation(line: 236, column: 2, scope: !625)
!1092 = !DILocation(line: 237, column: 1, scope: !625)
!1093 = !DILocation(line: 237, column: 1, scope: !952)
!1094 = distinct !DISubprogram(name: "prepend_date", scope: !342, file: !342, line: 66, type: !1095, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !345)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !137, !264, !647}
!1097 = !DILocalVariable(name: "window", arg: 1, scope: !1094, file: !342, line: 66, type: !137)
!1098 = !DILocation(line: 66, column: 38, scope: !1094)
!1099 = !DILocalVariable(name: "rec", arg: 2, scope: !1094, file: !342, line: 66, type: !264)
!1100 = !DILocation(line: 66, column: 56, scope: !1094)
!1101 = !DILocalVariable(name: "line", arg: 3, scope: !1094, file: !342, line: 66, type: !647)
!1102 = !DILocation(line: 66, column: 70, scope: !1094)
!1103 = !DILocalVariable(name: "theme", scope: !1094, file: !342, line: 68, type: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !1106, line: 33, baseType: !1107)
!1106 = !DIFile(filename: "../../src/fe-common/core/themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1106, line: 13, size: 8768, align: 64, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1120, !1121, !1122}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1107, file: !1106, line: 14, baseType: !144, size: 32, align: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1107, file: !1106, line: 16, baseType: !146, size: 64, align: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1107, file: !1106, line: 17, baseType: !146, size: 64, align: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !1107, file: !1106, line: 18, baseType: !179, size: 64, align: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !1107, file: !1106, line: 20, baseType: !144, size: 32, align: 32, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !1107, file: !1106, line: 23, baseType: !199, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !1107, file: !1106, line: 26, baseType: !167, size: 64, align: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !1107, file: !1106, line: 28, baseType: !1117, size: 8192, align: 32, offset: 384)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 8192, align: 32, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !1107, file: !1106, line: 29, baseType: !150, size: 64, align: 64, offset: 8576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !1107, file: !1106, line: 30, baseType: !167, size: 64, align: 64, offset: 8640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1107, file: !1106, line: 32, baseType: !108, size: 64, align: 64, offset: 8704)
!1123 = !DILocation(line: 68, column: 13, scope: !1094)
!1124 = !DILocalVariable(name: "dest", scope: !1094, file: !342, line: 69, type: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1126, line: 62, baseType: !1127)
!1126 = !DIFile(filename: "../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1126, line: 50, size: 576, align: 64, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1127, file: !1126, line: 51, baseType: !137, size: 64, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1127, file: !1126, line: 52, baseType: !173, size: 64, align: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1127, file: !1126, line: 53, baseType: !123, size: 64, align: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1127, file: !1126, line: 54, baseType: !123, size: 64, align: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1127, file: !1126, line: 55, baseType: !123, size: 64, align: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1127, file: !1126, line: 56, baseType: !123, size: 64, align: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1127, file: !1126, line: 57, baseType: !144, size: 32, align: 32, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1127, file: !1126, line: 59, baseType: !144, size: 32, align: 32, offset: 416)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1127, file: !1126, line: 60, baseType: !146, size: 64, align: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !1126, line: 61, baseType: !144, size: 32, align: 32, offset: 512)
!1139 = !DILocation(line: 69, column: 16, scope: !1094)
!1140 = !DILocalVariable(name: "format", scope: !1094, file: !342, line: 70, type: !146)
!1141 = !DILocation(line: 70, column: 8, scope: !1094)
!1142 = !DILocalVariable(name: "datestamp", scope: !1094, file: !342, line: 70, type: !476)
!1143 = !DILocation(line: 70, column: 22, scope: !1094)
!1144 = !DILocalVariable(name: "tm", scope: !1094, file: !342, line: 71, type: !1006)
!1145 = !DILocation(line: 71, column: 13, scope: !1094)
!1146 = !DILocation(line: 71, column: 29, scope: !1094)
!1147 = !DILocation(line: 71, column: 34, scope: !1094)
!1148 = !DILocation(line: 71, column: 39, scope: !1094)
!1149 = !DILocation(line: 71, column: 18, scope: !1094)
!1150 = !DILocalVariable(name: "ret", scope: !1094, file: !342, line: 72, type: !144)
!1151 = !DILocation(line: 72, column: 6, scope: !1094)
!1152 = !DILocation(line: 74, column: 10, scope: !1094)
!1153 = !DILocation(line: 74, column: 18, scope: !1094)
!1154 = !DILocation(line: 74, column: 24, scope: !1094)
!1155 = !DILocation(line: 74, column: 33, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1094, file: !342, discriminator: 1)
!1157 = !DILocation(line: 74, column: 41, scope: !1156)
!1158 = !DILocation(line: 74, column: 10, scope: !1156)
!1159 = !DILocation(line: 74, column: 49, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1094, file: !342, discriminator: 2)
!1161 = !DILocation(line: 74, column: 10, scope: !1160)
!1162 = !DILocation(line: 74, column: 10, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1094, file: !342, discriminator: 3)
!1164 = !DILocation(line: 74, column: 8, scope: !1163)
!1165 = !DILocation(line: 75, column: 57, scope: !1094)
!1166 = !DILocation(line: 75, column: 2, scope: !1094)
!1167 = !DILocation(line: 76, column: 33, scope: !1094)
!1168 = !DILocation(line: 76, column: 11, scope: !1094)
!1169 = !DILocation(line: 76, column: 9, scope: !1094)
!1170 = !DILocation(line: 78, column: 17, scope: !1094)
!1171 = !DILocation(line: 78, column: 47, scope: !1094)
!1172 = !DILocation(line: 78, column: 55, scope: !1094)
!1173 = !DILocation(line: 78, column: 8, scope: !1094)
!1174 = !DILocation(line: 78, column: 6, scope: !1094)
!1175 = !DILocation(line: 79, column: 9, scope: !1094)
!1176 = !DILocation(line: 79, column: 2, scope: !1094)
!1177 = !DILocation(line: 80, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1094, file: !342, line: 80, column: 6)
!1179 = !DILocation(line: 80, column: 10, scope: !1178)
!1180 = !DILocation(line: 80, column: 6, scope: !1094)
!1181 = !DILocation(line: 80, column: 16, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1178, file: !342, discriminator: 1)
!1183 = !DILocation(line: 82, column: 19, scope: !1094)
!1184 = !DILocation(line: 82, column: 25, scope: !1094)
!1185 = !DILocation(line: 82, column: 2, scope: !1094)
!1186 = !DILocation(line: 83, column: 1, scope: !1094)
!1187 = !DILocation(line: 83, column: 1, scope: !1156)
