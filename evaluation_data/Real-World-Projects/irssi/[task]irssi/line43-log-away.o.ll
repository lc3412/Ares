; ModuleID = './line43-log-away.o.i'
source_filename = "./line43-log-away.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._LOG_REC = type { i8*, i8*, i32, i64, i32, %struct._GSList*, i64, i8* (i8*)*, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@awaylog = internal global %struct._LOG_REC* null, align 8
@away_filepos = internal global i32 0, align 4
@away_msgs = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/away.log\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"awaylog_file\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"awaylog_level\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"msgs hilight\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"log written\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"away mode changed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"awaylog show\00", align 1

; Function Attrs: nounwind uwtable
define void @log_away_init() #0 !dbg !93 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !97, metadata !98), !dbg !99
  store %struct._LOG_REC* null, %struct._LOG_REC** @awaylog, align 8, !dbg !100
  store i32 0, i32* @away_filepos, align 4, !dbg !101
  store i32 0, i32* @away_msgs, align 4, !dbg !102
  %2 = call i8* @get_irssi_dir(), !dbg !103
  %3 = call noalias i8* (i8*, ...) @g_strconcat(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null), !dbg !104
  store i8* %3, i8** %1, align 8, !dbg !106
  %4 = load i8*, i8** %1, align 8, !dbg !107
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %4), !dbg !108
  %5 = load i8*, i8** %1, align 8, !dbg !109
  call void @g_free(i8* %5), !dbg !110
  call void @settings_add_level_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !111
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_written to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !112
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_away_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i8* @get_irssi_dir() #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @g_free(i8*) #2

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_log_written(%struct._LOG_REC*) #0 !dbg !115 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !118, metadata !98), !dbg !119
  %3 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !120
  %4 = load %struct._LOG_REC*, %struct._LOG_REC** @awaylog, align 8, !dbg !122
  %5 = icmp ne %struct._LOG_REC* %3, %4, !dbg !123
  br i1 %5, label %6, label %7, !dbg !124

; <label>:6:                                      ; preds = %1
  br label %10, !dbg !125

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @away_msgs, align 4, !dbg !127
  %9 = add nsw i32 %8, 1, !dbg !127
  store i32 %9, i32* @away_msgs, align 4, !dbg !127
  br label %10, !dbg !128

; <label>:10:                                     ; preds = %7, %6
  ret void, !dbg !129
}

; Function Attrs: nounwind uwtable
define internal void @sig_away_changed(%struct._SERVER_REC*) #0 !dbg !131 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !453, metadata !98), !dbg !454
  %3 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !455
  %4 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %3, i32 0, i32 19, !dbg !457
  %5 = load i8, i8* %4, align 8, !dbg !457
  %6 = lshr i8 %5, 1, !dbg !457
  %7 = and i8 %6, 1, !dbg !457
  %8 = zext i8 %7 to i32, !dbg !457
  %9 = icmp ne i32 %8, 0, !dbg !455
  br i1 %9, label %10, label %11, !dbg !458

; <label>:10:                                     ; preds = %1
  call void @awaylog_open(), !dbg !459
  br label %12, !dbg !459

; <label>:11:                                     ; preds = %1
  call void @awaylog_close(), !dbg !460
  br label %12

; <label>:12:                                     ; preds = %11, %10
  ret void, !dbg !461
}

; Function Attrs: nounwind uwtable
define void @log_away_deinit() #0 !dbg !462 {
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @sig_log_written to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !463
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_away_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !464
  ret void, !dbg !465
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @awaylog_open() #0 !dbg !466 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !467, metadata !98), !dbg !468
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !469, metadata !98), !dbg !470
  call void @llvm.dbg.declare(metadata i32* %3, metadata !471, metadata !98), !dbg !472
  %4 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !473
  store i8* %4, i8** %1, align 8, !dbg !474
  %5 = call i32 @settings_get_level(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !475
  store i32 %5, i32* %3, align 4, !dbg !476
  %6 = load i8*, i8** %1, align 8, !dbg !477
  %7 = load i8, i8* %6, align 1, !dbg !479
  %8 = sext i8 %7 to i32, !dbg !479
  %9 = icmp eq i32 %8, 0, !dbg !480
  br i1 %9, label %13, label %10, !dbg !481

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !482
  %12 = icmp eq i32 %11, 0, !dbg !484
  br i1 %12, label %13, label %14, !dbg !485

; <label>:13:                                     ; preds = %10, %0
  br label %51, !dbg !486

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %1, align 8, !dbg !488
  %16 = call %struct._LOG_REC* @log_find(i8* %15), !dbg !489
  store %struct._LOG_REC* %16, %struct._LOG_REC** %2, align 8, !dbg !490
  %17 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !491
  %18 = icmp ne %struct._LOG_REC* %17, null, !dbg !493
  br i1 %18, label %19, label %25, !dbg !494

; <label>:19:                                     ; preds = %14
  %20 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !495
  %21 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %20, i32 0, i32 2, !dbg !497
  %22 = load i32, i32* %21, align 8, !dbg !497
  %23 = icmp ne i32 %22, -1, !dbg !498
  br i1 %23, label %24, label %25, !dbg !499

; <label>:24:                                     ; preds = %19
  br label %51, !dbg !500

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !501
  %27 = icmp eq %struct._LOG_REC* %26, null, !dbg !503
  br i1 %27, label %28, label %38, !dbg !504

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %1, align 8, !dbg !505
  %30 = load i32, i32* %3, align 4, !dbg !507
  %31 = call %struct._LOG_REC* @log_create_rec(i8* %29, i32 %30), !dbg !508
  store %struct._LOG_REC* %31, %struct._LOG_REC** %2, align 8, !dbg !509
  %32 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !510
  %33 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %32, i32 0, i32 8, !dbg !511
  %34 = load i8, i8* %33, align 8, !dbg !512
  %35 = and i8 %34, -5, !dbg !512
  %36 = or i8 %35, 4, !dbg !512
  store i8 %36, i8* %33, align 8, !dbg !512
  %37 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !513
  call void @log_update(%struct._LOG_REC* %37), !dbg !514
  br label %38, !dbg !515

; <label>:38:                                     ; preds = %28, %25
  %39 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !516
  %40 = call i32 @log_start_logging(%struct._LOG_REC* %39), !dbg !518
  %41 = icmp ne i32 %40, 0, !dbg !518
  br i1 %41, label %44, label %42, !dbg !519

; <label>:42:                                     ; preds = %38
  %43 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !520
  call void @log_close(%struct._LOG_REC* %43), !dbg !522
  br label %51, !dbg !523

; <label>:44:                                     ; preds = %38
  call void @write_buffer_flush(), !dbg !524
  %45 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !525
  store %struct._LOG_REC* %45, %struct._LOG_REC** @awaylog, align 8, !dbg !526
  %46 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !527
  %47 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %46, i32 0, i32 2, !dbg !528
  %48 = load i32, i32* %47, align 8, !dbg !528
  %49 = call i64 @lseek(i32 %48, i64 0, i32 1) #4, !dbg !529
  %50 = trunc i64 %49 to i32, !dbg !529
  store i32 %50, i32* @away_filepos, align 4, !dbg !530
  store i32 0, i32* @away_msgs, align 4, !dbg !531
  br label %51, !dbg !532

; <label>:51:                                     ; preds = %44, %42, %24, %13
  ret void, !dbg !533
}

; Function Attrs: nounwind uwtable
define internal void @awaylog_close() #0 !dbg !535 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._LOG_REC*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !536, metadata !98), !dbg !537
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !538, metadata !98), !dbg !539
  %3 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !540
  store i8* %3, i8** %1, align 8, !dbg !541
  %4 = load i8*, i8** %1, align 8, !dbg !542
  %5 = load i8, i8* %4, align 1, !dbg !544
  %6 = sext i8 %5 to i32, !dbg !544
  %7 = icmp eq i32 %6, 0, !dbg !545
  br i1 %7, label %8, label %9, !dbg !546

; <label>:8:                                      ; preds = %0
  br label %35, !dbg !547

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** %1, align 8, !dbg !549
  %11 = call %struct._LOG_REC* @log_find(i8* %10), !dbg !550
  store %struct._LOG_REC* %11, %struct._LOG_REC** %2, align 8, !dbg !551
  %12 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !552
  %13 = icmp eq %struct._LOG_REC* %12, null, !dbg !554
  br i1 %13, label %19, label %14, !dbg !555

; <label>:14:                                     ; preds = %9
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !556
  %16 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %15, i32 0, i32 2, !dbg !558
  %17 = load i32, i32* %16, align 8, !dbg !558
  %18 = icmp eq i32 %17, -1, !dbg !559
  br i1 %18, label %19, label %20, !dbg !560

; <label>:19:                                     ; preds = %14, %9
  br label %35, !dbg !561

; <label>:20:                                     ; preds = %14
  %21 = load %struct._LOG_REC*, %struct._LOG_REC** @awaylog, align 8, !dbg !563
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !565
  %23 = icmp eq %struct._LOG_REC* %21, %22, !dbg !566
  br i1 %23, label %24, label %25, !dbg !567

; <label>:24:                                     ; preds = %20
  store %struct._LOG_REC* null, %struct._LOG_REC** @awaylog, align 8, !dbg !568
  br label %25, !dbg !570

; <label>:25:                                     ; preds = %24, %20
  call void @write_buffer_flush(), !dbg !571
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !572
  %27 = load i32, i32* @away_msgs, align 4, !dbg !573
  %28 = sext i32 %27 to i64, !dbg !574
  %29 = inttoptr i64 %28 to i8*, !dbg !575
  %30 = load i32, i32* @away_filepos, align 4, !dbg !576
  %31 = sext i32 %30 to i64, !dbg !577
  %32 = inttoptr i64 %31 to i8*, !dbg !578
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 3, %struct._LOG_REC* %26, i8* %29, i8* %32), !dbg !579
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !580
  call void @log_close(%struct._LOG_REC* %34), !dbg !581
  br label %35, !dbg !582

; <label>:35:                                     ; preds = %25, %19, %8
  ret void, !dbg !583
}

declare i8* @settings_get_str(i8*) #2

declare i32 @settings_get_level(i8*) #2

declare %struct._LOG_REC* @log_find(i8*) #2

declare %struct._LOG_REC* @log_create_rec(i8*, i32) #2

declare void @log_update(%struct._LOG_REC*) #2

declare i32 @log_start_logging(%struct._LOG_REC*) #2

declare void @log_close(%struct._LOG_REC*) #2

declare void @write_buffer_flush() #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @signal_emit(i8*, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !48)
!1 = !DIFile(filename: "line43-log-away.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !44, !46}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !38, line: 9, baseType: !39)
!38 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !42, !42, !42, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !45, line: 77, baseType: !36)
!45 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !45, line: 48, baseType: !47)
!47 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!48 = !{!49, !88, !89}
!49 = distinct !DIGlobalVariable(name: "awaylog", scope: !0, file: !50, line: 29, type: !51, isLocal: true, isDefinition: true, variable: %struct._LOG_REC** @awaylog)
!50 = !DIFile(filename: "log-away.c", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOG_REC", file: !53, line: 11, baseType: !54)
!53 = !DIFile(filename: "log.h", directory: "/home/lichi/Desktop/irssi/task1")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LOG_REC", file: !53, line: 20, size: 576, align: 64, elements: !55)
!55 = !{!56, !59, !60, !62, !67, !68, !76, !77, !84, !86, !87}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !54, file: !53, line: 21, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "real_fname", scope: !54, file: !53, line: 22, baseType: !57, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !54, file: !53, line: 23, baseType: !61, size: 32, align: 32, offset: 128)
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !54, file: !53, line: 24, baseType: !63, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !64, line: 75, baseType: !65)
!64 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !66, line: 139, baseType: !47)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !54, file: !53, line: 26, baseType: !61, size: 32, align: 32, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !54, file: !53, line: 27, baseType: !69, size: 64, align: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !71, line: 37, baseType: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !71, line: 39, size: 128, align: 64, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !71, line: 41, baseType: !44, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !71, line: 42, baseType: !69, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !54, file: !53, line: 29, baseType: !63, size: 64, align: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "colorizer", scope: !54, file: !53, line: 30, baseType: !78, size: 64, align: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLORIZE_FUNC", file: !53, line: 9, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!57, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "autoopen", scope: !54, file: !53, line: 32, baseType: !85, size: 1, align: 32, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!85 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !54, file: !53, line: 33, baseType: !85, size: 1, align: 32, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !54, file: !53, line: 34, baseType: !85, size: 1, align: 32, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!88 = distinct !DIGlobalVariable(name: "away_filepos", scope: !0, file: !50, line: 30, type: !61, isLocal: true, isDefinition: true, variable: i32* @away_filepos)
!89 = distinct !DIGlobalVariable(name: "away_msgs", scope: !0, file: !50, line: 31, type: !61, isLocal: true, isDefinition: true, variable: i32* @away_msgs)
!90 = !{i32 2, !"Dwarf Version", i32 4}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!93 = distinct !DISubprogram(name: "log_away_init", scope: !50, file: !50, line: 106, type: !94, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null}
!96 = !{}
!97 = !DILocalVariable(name: "awaylog_file", scope: !93, file: !50, line: 108, type: !57)
!98 = !DIExpression()
!99 = !DILocation(line: 108, column: 8, scope: !93)
!100 = !DILocation(line: 110, column: 10, scope: !93)
!101 = !DILocation(line: 111, column: 15, scope: !93)
!102 = !DILocation(line: 112, column: 12, scope: !93)
!103 = !DILocation(line: 114, column: 29, scope: !93)
!104 = !DILocation(line: 114, column: 17, scope: !105)
!105 = !DILexicalBlockFile(scope: !93, file: !50, discriminator: 1)
!106 = !DILocation(line: 114, column: 15, scope: !93)
!107 = !DILocation(line: 115, column: 57, scope: !93)
!108 = !DILocation(line: 115, column: 2, scope: !93)
!109 = !DILocation(line: 116, column: 9, scope: !93)
!110 = !DILocation(line: 116, column: 2, scope: !93)
!111 = !DILocation(line: 117, column: 2, scope: !93)
!112 = !DILocation(line: 119, column: 2, scope: !93)
!113 = !DILocation(line: 120, column: 2, scope: !93)
!114 = !DILocation(line: 121, column: 1, scope: !93)
!115 = distinct !DISubprogram(name: "sig_log_written", scope: !50, file: !50, line: 33, type: !116, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !51}
!118 = !DILocalVariable(name: "log", arg: 1, scope: !115, file: !50, line: 33, type: !51)
!119 = !DILocation(line: 33, column: 38, scope: !115)
!120 = !DILocation(line: 35, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !50, line: 35, column: 6)
!122 = !DILocation(line: 35, column: 13, scope: !121)
!123 = !DILocation(line: 35, column: 10, scope: !121)
!124 = !DILocation(line: 35, column: 6, scope: !115)
!125 = !DILocation(line: 35, column: 22, scope: !126)
!126 = !DILexicalBlockFile(scope: !121, file: !50, discriminator: 1)
!127 = !DILocation(line: 37, column: 18, scope: !115)
!128 = !DILocation(line: 38, column: 1, scope: !115)
!129 = !DILocation(line: 38, column: 1, scope: !130)
!130 = !DILexicalBlockFile(scope: !115, file: !50, discriminator: 1)
!131 = distinct !DISubprogram(name: "sig_away_changed", scope: !50, file: !50, line: 98, type: !132, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !136, line: 107, baseType: !137)
!136 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !138, line: 30, size: 2240, align: 64, elements: !139)
!138 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !{!140, !142, !143, !144, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !376, !377, !381, !382, !383, !387, !392, !393, !394, !395, !396, !397, !398, !399, !405, !406, !407, !408, !409, !413, !417, !421, !425, !429, !434, !441, !448, !452}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !141, line: 3, baseType: !61, size: 32, align: 32)
!141 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !137, file: !141, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !137, file: !141, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !137, file: !141, line: 8, baseType: !145, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !136, line: 113, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !138, line: 25, size: 1920, align: 64, elements: !148)
!148 = !{!149, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !150, line: 3, baseType: !61, size: 32, align: 32)
!150 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !147, file: !150, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !147, file: !150, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !147, file: !150, line: 9, baseType: !57, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !147, file: !150, line: 10, baseType: !61, size: 32, align: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !147, file: !150, line: 11, baseType: !57, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !147, file: !150, line: 11, baseType: !57, size: 64, align: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !147, file: !150, line: 11, baseType: !57, size: 64, align: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !147, file: !150, line: 13, baseType: !159, size: 16, align: 16, offset: 448)
!159 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !147, file: !150, line: 14, baseType: !57, size: 64, align: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !147, file: !150, line: 15, baseType: !57, size: 64, align: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !147, file: !150, line: 16, baseType: !61, size: 32, align: 32, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !147, file: !150, line: 17, baseType: !57, size: 64, align: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !147, file: !150, line: 19, baseType: !165, size: 64, align: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !136, line: 99, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !136, line: 99, flags: DIFlagFwdDecl)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !147, file: !150, line: 19, baseType: !165, size: 64, align: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !147, file: !150, line: 21, baseType: !57, size: 64, align: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !147, file: !150, line: 22, baseType: !57, size: 64, align: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !147, file: !150, line: 23, baseType: !57, size: 64, align: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !147, file: !150, line: 24, baseType: !57, size: 64, align: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !147, file: !150, line: 26, baseType: !57, size: 64, align: 64, offset: 1152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !147, file: !150, line: 27, baseType: !57, size: 64, align: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !147, file: !150, line: 28, baseType: !57, size: 64, align: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !147, file: !150, line: 29, baseType: !57, size: 64, align: 64, offset: 1344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !147, file: !150, line: 30, baseType: !57, size: 64, align: 64, offset: 1408)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !147, file: !150, line: 31, baseType: !57, size: 64, align: 64, offset: 1472)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !147, file: !150, line: 32, baseType: !57, size: 64, align: 64, offset: 1536)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !147, file: !150, line: 33, baseType: !57, size: 64, align: 64, offset: 1600)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !147, file: !150, line: 35, baseType: !182, size: 64, align: 64, offset: 1664)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !185)
!185 = !{!186, !188, !320, !321, !326, !327, !328, !329, !330, !339, !340, !341, !345, !346, !347, !348, !349, !350, !351, !352}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !184, file: !4, line: 100, baseType: !187, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !45, line: 49, baseType: !61)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !184, file: !4, line: 101, baseType: !189, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !192)
!192 = !{!193, !216, !222, !228, !232, !307, !311, !316}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !191, file: !4, line: 133, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !182, !198, !200, !203, !204}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !45, line: 46, baseType: !58)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !201, line: 66, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !207, line: 42, baseType: !208)
!207 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !207, line: 44, size: 128, align: 64, elements: !209)
!209 = !{!210, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !208, file: !207, line: 46, baseType: !211, size: 32, align: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !212, line: 36, baseType: !213)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !201, line: 45, baseType: !85)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !208, file: !207, line: 47, baseType: !187, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !208, file: !207, line: 48, baseType: !198, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !191, file: !4, line: 138, baseType: !217, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!197, !182, !220, !200, !203, !204}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !191, file: !4, line: 143, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!197, !182, !226, !227, !204}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !201, line: 51, baseType: !47)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !191, file: !4, line: 147, baseType: !229, size: 64, align: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!197, !182, !204}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !191, file: !4, line: 149, baseType: !233, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !182, !306}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !239)
!239 = !{!240, !241, !262, !289, !291, !295, !296, !297, !298, !299, !300, !301, !302}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !238, file: !16, line: 174, baseType: !44, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !238, file: !16, line: 175, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !245)
!245 = !{!246, !250, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !244, file: !16, line: 198, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !44}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !244, file: !16, line: 199, baseType: !247, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !244, file: !16, line: 200, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !44, !236, !255, !261}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !44}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !45, line: 50, baseType: !187)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !238, file: !16, line: 177, baseType: !263, size: 64, align: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !267)
!267 = !{!268, !273, !277, !281, !285, !286}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !266, file: !16, line: 216, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!260, !236, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !266, file: !16, line: 218, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!260, !236}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !266, file: !16, line: 219, baseType: !278, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!260, !236, !256, !44}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !266, file: !16, line: 222, baseType: !282, size: 64, align: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !236}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !266, file: !16, line: 226, baseType: !256, size: 64, align: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !266, file: !16, line: 227, baseType: !287, size: 64, align: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !238, file: !16, line: 178, baseType: !290, size: 32, align: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !45, line: 55, baseType: !85)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !238, file: !16, line: 180, baseType: !292, size: 64, align: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !294)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !238, file: !16, line: 182, baseType: !187, size: 32, align: 32, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !16, line: 183, baseType: !290, size: 32, align: 32, offset: 352)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !238, file: !16, line: 184, baseType: !290, size: 32, align: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !238, file: !16, line: 186, baseType: !69, size: 64, align: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !16, line: 188, baseType: !236, size: 64, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !16, line: 189, baseType: !236, size: 64, align: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !16, line: 191, baseType: !57, size: 64, align: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !238, file: !16, line: 193, baseType: !303, size: 64, align: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !191, file: !4, line: 151, baseType: !308, size: 64, align: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !182}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !191, file: !4, line: 152, baseType: !312, size: 64, align: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!197, !182, !315, !204}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !191, file: !4, line: 155, baseType: !317, size: 64, align: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!315, !182}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !184, file: !4, line: 103, baseType: !198, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !184, file: !4, line: 104, baseType: !322, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !323, line: 77, baseType: !324)
!323 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !323, line: 77, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !184, file: !4, line: 105, baseType: !322, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !184, file: !4, line: 106, baseType: !198, size: 64, align: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !184, file: !4, line: 107, baseType: !290, size: 32, align: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !184, file: !4, line: 109, baseType: !200, size: 64, align: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !184, file: !4, line: 110, baseType: !331, size: 64, align: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !333, line: 39, baseType: !334)
!333 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !333, line: 41, size: 192, align: 64, elements: !335)
!335 = !{!336, !337, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !334, file: !333, line: 43, baseType: !198, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !334, file: !333, line: 44, baseType: !200, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !334, file: !333, line: 45, baseType: !200, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !184, file: !4, line: 111, baseType: !331, size: 64, align: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !184, file: !4, line: 112, baseType: !331, size: 64, align: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !184, file: !4, line: 113, baseType: !342, size: 48, align: 8, offset: 704)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 48, align: 8, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 6)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !184, file: !4, line: 117, baseType: !290, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !184, file: !4, line: 118, baseType: !290, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !184, file: !4, line: 119, baseType: !290, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !184, file: !4, line: 120, baseType: !290, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !184, file: !4, line: 121, baseType: !290, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !184, file: !4, line: 122, baseType: !290, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !184, file: !4, line: 124, baseType: !44, size: 64, align: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !184, file: !4, line: 125, baseType: !44, size: 64, align: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !147, file: !150, line: 38, baseType: !85, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !147, file: !150, line: 39, baseType: !85, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !147, file: !150, line: 40, baseType: !85, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !147, file: !150, line: 41, baseType: !85, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !147, file: !150, line: 42, baseType: !85, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !147, file: !150, line: 43, baseType: !85, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !147, file: !150, line: 44, baseType: !85, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !147, file: !150, line: 45, baseType: !85, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !147, file: !150, line: 46, baseType: !57, size: 64, align: 64, offset: 1792)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !147, file: !150, line: 47, baseType: !57, size: 64, align: 64, offset: 1856)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !137, file: !141, line: 9, baseType: !63, size: 64, align: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !137, file: !141, line: 10, baseType: !63, size: 64, align: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !137, file: !141, line: 12, baseType: !57, size: 64, align: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !137, file: !141, line: 13, baseType: !57, size: 64, align: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !137, file: !141, line: 15, baseType: !85, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !137, file: !141, line: 16, baseType: !85, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !137, file: !141, line: 17, baseType: !85, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !137, file: !141, line: 18, baseType: !85, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !137, file: !141, line: 19, baseType: !85, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !137, file: !141, line: 21, baseType: !373, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !136, line: 102, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !136, line: 102, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !137, file: !141, line: 22, baseType: !61, size: 32, align: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !137, file: !141, line: 25, baseType: !378, size: 128, align: 64, offset: 640)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, align: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 2)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !137, file: !141, line: 26, baseType: !61, size: 32, align: 32, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !137, file: !141, line: 27, baseType: !61, size: 32, align: 32, offset: 800)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !137, file: !141, line: 29, baseType: !384, size: 64, align: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !136, line: 103, baseType: !386)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !136, line: 103, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !137, file: !141, line: 30, baseType: !388, size: 64, align: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !390, line: 37, baseType: !391)
!390 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !390, line: 37, flags: DIFlagFwdDecl)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !141, line: 32, baseType: !57, size: 64, align: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !137, file: !141, line: 33, baseType: !57, size: 64, align: 64, offset: 1024)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !137, file: !141, line: 34, baseType: !57, size: 64, align: 64, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !137, file: !141, line: 35, baseType: !85, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !137, file: !141, line: 36, baseType: !85, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !137, file: !141, line: 37, baseType: !85, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !137, file: !141, line: 38, baseType: !85, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !137, file: !141, line: 40, baseType: !400, size: 128, align: 64, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !45, line: 504, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !45, line: 506, size: 128, align: 64, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !401, file: !45, line: 508, baseType: !46, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !401, file: !45, line: 509, baseType: !46, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !137, file: !141, line: 41, baseType: !63, size: 64, align: 64, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !137, file: !141, line: 42, baseType: !61, size: 32, align: 32, offset: 1408)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !137, file: !141, line: 44, baseType: !69, size: 64, align: 64, offset: 1472)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !137, file: !141, line: 45, baseType: !69, size: 64, align: 64, offset: 1536)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !137, file: !141, line: 53, baseType: !410, size: 64, align: 64, offset: 1600)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !134, !82, !61}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !137, file: !141, line: 55, baseType: !414, size: 64, align: 64, offset: 1664)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!61, !134, !58}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !137, file: !141, line: 57, baseType: !418, size: 64, align: 64, offset: 1728)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!61, !134, !82}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !137, file: !141, line: 60, baseType: !422, size: 64, align: 64, offset: 1792)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!82, !134}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !137, file: !141, line: 62, baseType: !426, size: 64, align: 64, offset: 1856)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !134, !82, !82, !61}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !137, file: !141, line: 65, baseType: !430, size: 64, align: 64, offset: 1920)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !134, !82, !82}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !137, file: !141, line: 69, baseType: !435, size: 64, align: 64, offset: 1984)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !134, !82}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !136, line: 109, baseType: !440)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !136, line: 109, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !137, file: !141, line: 70, baseType: !442, size: 64, align: 64, offset: 2048)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !134, !82}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !136, line: 110, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !136, line: 110, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !137, file: !141, line: 71, baseType: !449, size: 64, align: 64, offset: 2112)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!61, !82, !82}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !137, file: !141, line: 73, baseType: !449, size: 64, align: 64, offset: 2176)
!453 = !DILocalVariable(name: "server", arg: 1, scope: !131, file: !50, line: 98, type: !134)
!454 = !DILocation(line: 98, column: 42, scope: !131)
!455 = !DILocation(line: 100, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !131, file: !50, line: 100, column: 6)
!457 = !DILocation(line: 100, column: 14, scope: !456)
!458 = !DILocation(line: 100, column: 6, scope: !131)
!459 = !DILocation(line: 101, column: 3, scope: !456)
!460 = !DILocation(line: 103, column: 17, scope: !456)
!461 = !DILocation(line: 104, column: 1, scope: !131)
!462 = distinct !DISubprogram(name: "log_away_deinit", scope: !50, file: !50, line: 123, type: !94, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!463 = !DILocation(line: 125, column: 2, scope: !462)
!464 = !DILocation(line: 126, column: 2, scope: !462)
!465 = !DILocation(line: 127, column: 1, scope: !462)
!466 = distinct !DISubprogram(name: "awaylog_open", scope: !50, file: !50, line: 40, type: !94, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!467 = !DILocalVariable(name: "fname", scope: !466, file: !50, line: 42, type: !82)
!468 = !DILocation(line: 42, column: 14, scope: !466)
!469 = !DILocalVariable(name: "log", scope: !466, file: !50, line: 43, type: !51)
!470 = !DILocation(line: 43, column: 11, scope: !466)
!471 = !DILocalVariable(name: "level", scope: !466, file: !50, line: 44, type: !61)
!472 = !DILocation(line: 44, column: 6, scope: !466)
!473 = !DILocation(line: 46, column: 10, scope: !466)
!474 = !DILocation(line: 46, column: 8, scope: !466)
!475 = !DILocation(line: 47, column: 10, scope: !466)
!476 = !DILocation(line: 47, column: 8, scope: !466)
!477 = !DILocation(line: 48, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !466, file: !50, line: 48, column: 6)
!479 = !DILocation(line: 48, column: 6, scope: !478)
!480 = !DILocation(line: 48, column: 13, scope: !478)
!481 = !DILocation(line: 48, column: 21, scope: !478)
!482 = !DILocation(line: 48, column: 24, scope: !483)
!483 = !DILexicalBlockFile(scope: !478, file: !50, discriminator: 1)
!484 = !DILocation(line: 48, column: 30, scope: !483)
!485 = !DILocation(line: 48, column: 6, scope: !483)
!486 = !DILocation(line: 48, column: 36, scope: !487)
!487 = !DILexicalBlockFile(scope: !478, file: !50, discriminator: 2)
!488 = !DILocation(line: 50, column: 17, scope: !466)
!489 = !DILocation(line: 50, column: 8, scope: !466)
!490 = !DILocation(line: 50, column: 6, scope: !466)
!491 = !DILocation(line: 51, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !466, file: !50, line: 51, column: 6)
!493 = !DILocation(line: 51, column: 10, scope: !492)
!494 = !DILocation(line: 51, column: 17, scope: !492)
!495 = !DILocation(line: 51, column: 20, scope: !496)
!496 = !DILexicalBlockFile(scope: !492, file: !50, discriminator: 1)
!497 = !DILocation(line: 51, column: 25, scope: !496)
!498 = !DILocation(line: 51, column: 32, scope: !496)
!499 = !DILocation(line: 51, column: 6, scope: !496)
!500 = !DILocation(line: 52, column: 3, scope: !492)
!501 = !DILocation(line: 54, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !466, file: !50, line: 54, column: 6)
!503 = !DILocation(line: 54, column: 10, scope: !502)
!504 = !DILocation(line: 54, column: 6, scope: !466)
!505 = !DILocation(line: 55, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !50, line: 54, column: 18)
!507 = !DILocation(line: 55, column: 31, scope: !506)
!508 = !DILocation(line: 55, column: 9, scope: !506)
!509 = !DILocation(line: 55, column: 7, scope: !506)
!510 = !DILocation(line: 56, column: 3, scope: !506)
!511 = !DILocation(line: 56, column: 8, scope: !506)
!512 = !DILocation(line: 56, column: 13, scope: !506)
!513 = !DILocation(line: 57, column: 14, scope: !506)
!514 = !DILocation(line: 57, column: 3, scope: !506)
!515 = !DILocation(line: 58, column: 2, scope: !506)
!516 = !DILocation(line: 60, column: 25, scope: !517)
!517 = distinct !DILexicalBlock(scope: !466, file: !50, line: 60, column: 6)
!518 = !DILocation(line: 60, column: 7, scope: !517)
!519 = !DILocation(line: 60, column: 6, scope: !466)
!520 = !DILocation(line: 62, column: 13, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !50, line: 60, column: 31)
!522 = !DILocation(line: 62, column: 3, scope: !521)
!523 = !DILocation(line: 63, column: 3, scope: !521)
!524 = !DILocation(line: 67, column: 2, scope: !466)
!525 = !DILocation(line: 69, column: 12, scope: !466)
!526 = !DILocation(line: 69, column: 10, scope: !466)
!527 = !DILocation(line: 70, column: 23, scope: !466)
!528 = !DILocation(line: 70, column: 28, scope: !466)
!529 = !DILocation(line: 70, column: 17, scope: !466)
!530 = !DILocation(line: 70, column: 15, scope: !466)
!531 = !DILocation(line: 71, column: 12, scope: !466)
!532 = !DILocation(line: 72, column: 1, scope: !466)
!533 = !DILocation(line: 72, column: 1, scope: !534)
!534 = !DILexicalBlockFile(scope: !466, file: !50, discriminator: 1)
!535 = distinct !DISubprogram(name: "awaylog_close", scope: !50, file: !50, line: 74, type: !94, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!536 = !DILocalVariable(name: "fname", scope: !535, file: !50, line: 76, type: !82)
!537 = !DILocation(line: 76, column: 14, scope: !535)
!538 = !DILocalVariable(name: "log", scope: !535, file: !50, line: 77, type: !51)
!539 = !DILocation(line: 77, column: 11, scope: !535)
!540 = !DILocation(line: 79, column: 10, scope: !535)
!541 = !DILocation(line: 79, column: 8, scope: !535)
!542 = !DILocation(line: 80, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !535, file: !50, line: 80, column: 6)
!544 = !DILocation(line: 80, column: 6, scope: !543)
!545 = !DILocation(line: 80, column: 13, scope: !543)
!546 = !DILocation(line: 80, column: 6, scope: !535)
!547 = !DILocation(line: 80, column: 22, scope: !548)
!548 = !DILexicalBlockFile(scope: !543, file: !50, discriminator: 1)
!549 = !DILocation(line: 82, column: 17, scope: !535)
!550 = !DILocation(line: 82, column: 8, scope: !535)
!551 = !DILocation(line: 82, column: 6, scope: !535)
!552 = !DILocation(line: 83, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !535, file: !50, line: 83, column: 6)
!554 = !DILocation(line: 83, column: 10, scope: !553)
!555 = !DILocation(line: 83, column: 17, scope: !553)
!556 = !DILocation(line: 83, column: 20, scope: !557)
!557 = !DILexicalBlockFile(scope: !553, file: !50, discriminator: 1)
!558 = !DILocation(line: 83, column: 25, scope: !557)
!559 = !DILocation(line: 83, column: 32, scope: !557)
!560 = !DILocation(line: 83, column: 6, scope: !557)
!561 = !DILocation(line: 85, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !553, file: !50, line: 83, column: 39)
!563 = !DILocation(line: 88, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !535, file: !50, line: 88, column: 6)
!565 = !DILocation(line: 88, column: 17, scope: !564)
!566 = !DILocation(line: 88, column: 14, scope: !564)
!567 = !DILocation(line: 88, column: 6, scope: !535)
!568 = !DILocation(line: 88, column: 30, scope: !569)
!569 = !DILexicalBlockFile(scope: !564, file: !50, discriminator: 1)
!570 = !DILocation(line: 88, column: 22, scope: !569)
!571 = !DILocation(line: 91, column: 2, scope: !535)
!572 = !DILocation(line: 93, column: 33, scope: !535)
!573 = !DILocation(line: 93, column: 59, scope: !535)
!574 = !DILocation(line: 93, column: 50, scope: !535)
!575 = !DILocation(line: 93, column: 39, scope: !535)
!576 = !DILocation(line: 94, column: 28, scope: !535)
!577 = !DILocation(line: 94, column: 19, scope: !535)
!578 = !DILocation(line: 94, column: 8, scope: !535)
!579 = !DILocation(line: 93, column: 2, scope: !535)
!580 = !DILocation(line: 95, column: 12, scope: !535)
!581 = !DILocation(line: 95, column: 2, scope: !535)
!582 = !DILocation(line: 96, column: 1, scope: !535)
!583 = !DILocation(line: 96, column: 1, scope: !584)
!584 = !DILexicalBlockFile(scope: !535, file: !50, discriminator: 1)
