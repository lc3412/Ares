; ModuleID = './line222-fe-exec.o.i'
source_filename = "./line222-fe-exec.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
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
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PROCESS_REC = type { i32, i8*, i8*, i32, %struct._GIOChannel*, %struct._NET_SENDBUF_REC*, %struct._LINEBUF_REC*, i32, i32, i8*, i8*, %struct._WINDOW_REC*, %struct.EXEC_WI_REC*, i8 }
%struct.EXEC_WI_REC = type { i32, i32, %struct._GHashTable*, i8*, i8*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, %struct.PROCESS_REC*, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"!- interactive nosh +name out +msg +notice +in window close +level quiet\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"exec input\00", align 1
@signal_exec_input = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"pidwait\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"window destroyed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"send text\00", align 1
@processes = common global %struct._GSList* null, align 8
@__func__.cmd_exec = private unnamed_addr constant [9 x i8] c"cmd_exec\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Unknown process name: %s\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Error sending signal %d to pid %d: %s\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"nosh\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"exec new\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"hup\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"usr1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"usr2\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"%d (%s): %s\00", align 1
@__func__.process_find = private unnamed_addr constant [13 x i8] c"process_find\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.process_find_id = private unnamed_addr constant [16 x i8] c"process_find_id\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"id != -1\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Unknown process id: %d\00", align 1
@__func__.exec_wi_destroy = private unnamed_addr constant [16 x i8] c"exec_wi_destroy\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.exec_wi_create = private unnamed_addr constant [15 x i8] c"exec_wi_create\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%%%d\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@process_exec.shell_args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null], align 16
@.str.44 = private unnamed_addr constant [9 x i8] c"TERM=tty\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [19 x i8] c"Exec: /bin/sh: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Exec: %s: %s\0A\00", align 1
@__func__.sig_exec_input_reader = private unnamed_addr constant [22 x i8] c"sig_exec_input_reader\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"process %d (%s) terminated with signal %d (%s)\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"process %d (%s) terminated with return code %d\00", align 1
@__func__.process_find_pid = private unnamed_addr constant [17 x i8] c"process_find_pid\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"pid > 0\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"-nick \00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"-channel \00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"command notice\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"command msg\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"exec remove\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_exec_init() #0 !dbg !667 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_exec to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !669
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i32 0, i32 0)), !dbg !670
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)), !dbg !671
  store i32 %1, i32* @signal_exec_input, align 4, !dbg !672
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_pidwait to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !673
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.PROCESS_REC*, i8*)* @sig_exec_input to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !674
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !675
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct.EXEC_WI_REC*)* @event_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !676
  ret void, !dbg !677
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_exec(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !678 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !681, metadata !682), !dbg !683
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !684, metadata !682), !dbg !685
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !686, metadata !682), !dbg !687
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !688, metadata !682), !dbg !689
  call void @llvm.dbg.declare(metadata i8** %8, metadata !690, metadata !682), !dbg !691
  call void @llvm.dbg.declare(metadata i8** %9, metadata !692, metadata !682), !dbg !693
  br label %10, !dbg !694, !llvm.loop !695

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !696
  %12 = icmp ne i8* %11, null, !dbg !700
  br i1 %12, label %13, label %14, !dbg !696

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !701

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_exec, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !704
  br label %26, !dbg !707

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !708

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !710
  %18 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %17, i8** %9, i32 57345, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %7, i8** %8), !dbg !712
  %19 = icmp ne i32 %18, 0, !dbg !712
  br i1 %19, label %20, label %26, !dbg !713

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %8, align 8, !dbg !714
  %22 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !716
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !717
  %24 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !718
  call void @handle_exec(i8* %21, %struct._GHashTable* %22, %struct._SERVER_REC* %23, %struct._WI_ITEM_REC* %24), !dbg !719
  %25 = load i8*, i8** %9, align 8, !dbg !720
  call void @cmd_params_free(i8* %25), !dbg !721
  br label %26, !dbg !722

; <label>:26:                                     ; preds = %14, %20, %16
  ret void, !dbg !723
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

declare i32 @module_get_uniq_id_str(i8*, i8*) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_pidwait(i8*, i8*) #0 !dbg !724 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.PROCESS_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon.0, align 4
  %9 = alloca %union.anon.1, align 4
  %10 = alloca %union.anon.2, align 4
  %11 = alloca %union.anon.3, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !727, metadata !682), !dbg !728
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !729, metadata !682), !dbg !730
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %5, metadata !731, metadata !682), !dbg !732
  call void @llvm.dbg.declare(metadata i8** %6, metadata !733, metadata !682), !dbg !734
  call void @llvm.dbg.declare(metadata i32* %7, metadata !735, metadata !682), !dbg !736
  %12 = load i8*, i8** %4, align 8, !dbg !737
  %13 = ptrtoint i8* %12 to i64, !dbg !738
  %14 = trunc i64 %13 to i32, !dbg !739
  store i32 %14, i32* %7, align 4, !dbg !736
  %15 = load i8*, i8** %3, align 8, !dbg !740
  %16 = ptrtoint i8* %15 to i64, !dbg !741
  %17 = trunc i64 %16 to i32, !dbg !742
  %18 = call %struct.PROCESS_REC* @process_find_pid(i32 %17), !dbg !743
  store %struct.PROCESS_REC* %18, %struct.PROCESS_REC** %5, align 8, !dbg !744
  %19 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !745
  %20 = icmp eq %struct.PROCESS_REC* %19, null, !dbg !747
  br i1 %20, label %21, label %22, !dbg !748

; <label>:21:                                     ; preds = %2
  br label %99, !dbg !749

; <label>:22:                                     ; preds = %2
  %23 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !751
  %24 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %23, i32 0, i32 6, !dbg !753
  %25 = call i32 @line_split(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 1, i8** %6, %struct._LINEBUF_REC** %24), !dbg !754
  %26 = icmp sgt i32 %25, 0, !dbg !755
  br i1 %26, label %27, label %37, !dbg !756

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !757
  %29 = load i8, i8* %28, align 1, !dbg !759
  %30 = sext i8 %29 to i32, !dbg !759
  %31 = icmp ne i32 %30, 0, !dbg !760
  br i1 %31, label %32, label %37, !dbg !761

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* @signal_exec_input, align 4, !dbg !762
  %34 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !763
  %35 = load i8*, i8** %6, align 8, !dbg !764
  %36 = call i32 (i32, i32, ...) @signal_emit_id(i32 %33, i32 2, %struct.PROCESS_REC* %34, i8* %35), !dbg !765
  br label %37, !dbg !765

; <label>:37:                                     ; preds = %32, %27, %22
  %38 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !766
  %39 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %38, i32 0, i32 13, !dbg !768
  %40 = load i8, i8* %39, align 8, !dbg !768
  %41 = lshr i8 %40, 2, !dbg !768
  %42 = and i8 %41, 1, !dbg !768
  %43 = zext i8 %42 to i32, !dbg !768
  %44 = icmp ne i32 %43, 0, !dbg !766
  br i1 %44, label %96, label %45, !dbg !769

; <label>:45:                                     ; preds = %37
  %46 = bitcast %union.anon.0* %8 to i32*, !dbg !770
  %47 = load i32, i32* %7, align 4, !dbg !773
  store i32 %47, i32* %46, align 4, !dbg !770
  %48 = bitcast %union.anon.0* %8 to i32*, !dbg !774
  %49 = load i32, i32* %48, align 4, !dbg !774
  %50 = and i32 %49, 127, !dbg !775
  %51 = add nsw i32 %50, 1, !dbg !770
  %52 = trunc i32 %51 to i8, !dbg !776
  %53 = sext i8 %52 to i32, !dbg !776
  %54 = ashr i32 %53, 1, !dbg !777
  %55 = icmp sgt i32 %54, 0, !dbg !778
  br i1 %55, label %56, label %71, !dbg !779

; <label>:56:                                     ; preds = %45
  %57 = bitcast %union.anon.1* %9 to i32*, !dbg !780
  %58 = load i32, i32* %7, align 4, !dbg !782
  store i32 %58, i32* %57, align 4, !dbg !780
  %59 = bitcast %union.anon.1* %9 to i32*, !dbg !783
  %60 = load i32, i32* %59, align 4, !dbg !783
  %61 = and i32 %60, 127, !dbg !784
  store i32 %61, i32* %7, align 4, !dbg !785
  %62 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !786
  %63 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %62, i32 0, i32 0, !dbg !787
  %64 = load i32, i32* %63, align 8, !dbg !787
  %65 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !788
  %66 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %65, i32 0, i32 2, !dbg !789
  %67 = load i8*, i8** %66, align 8, !dbg !789
  %68 = load i32, i32* %7, align 4, !dbg !790
  %69 = load i32, i32* %7, align 4, !dbg !791
  %70 = call i8* @g_strsignal(i32 %69) #2, !dbg !792
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 262144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i32 %64, i8* %67, i32 %68, i8* %70), !dbg !793
  br label %95, !dbg !794

; <label>:71:                                     ; preds = %45
  %72 = bitcast %union.anon.2* %10 to i32*, !dbg !795
  %73 = load i32, i32* %7, align 4, !dbg !797
  store i32 %73, i32* %72, align 4, !dbg !795
  %74 = bitcast %union.anon.2* %10 to i32*, !dbg !798
  %75 = load i32, i32* %74, align 4, !dbg !798
  %76 = and i32 %75, 127, !dbg !799
  %77 = icmp eq i32 %76, 0, !dbg !795
  br i1 %77, label %78, label %85, !dbg !797

; <label>:78:                                     ; preds = %71
  %79 = bitcast %union.anon.3* %11 to i32*, !dbg !800
  %80 = load i32, i32* %7, align 4, !dbg !802
  store i32 %80, i32* %79, align 4, !dbg !800
  %81 = bitcast %union.anon.3* %11 to i32*, !dbg !803
  %82 = load i32, i32* %81, align 4, !dbg !803
  %83 = and i32 %82, 65280, !dbg !804
  %84 = ashr i32 %83, 8, !dbg !805
  br label %86, !dbg !806

; <label>:85:                                     ; preds = %71
  br label %86, !dbg !807

; <label>:86:                                     ; preds = %85, %78
  %87 = phi i32 [ %84, %78 ], [ -1, %85 ], !dbg !809
  store i32 %87, i32* %7, align 4, !dbg !811
  %88 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !812
  %89 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %88, i32 0, i32 0, !dbg !813
  %90 = load i32, i32* %89, align 8, !dbg !813
  %91 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !814
  %92 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %91, i32 0, i32 2, !dbg !815
  %93 = load i8*, i8** %92, align 8, !dbg !815
  %94 = load i32, i32* %7, align 4, !dbg !816
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 262144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i32 0, i32 0), i32 %90, i8* %93, i32 %94), !dbg !817
  br label %95

; <label>:95:                                     ; preds = %86, %56
  br label %96, !dbg !818

; <label>:96:                                     ; preds = %95, %37
  %97 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !819
  %98 = load i32, i32* %7, align 4, !dbg !820
  call void @process_destroy(%struct.PROCESS_REC* %97, i32 %98), !dbg !821
  br label %99, !dbg !822

; <label>:99:                                     ; preds = %96, %21
  ret void, !dbg !823
}

; Function Attrs: nounwind uwtable
define internal void @sig_exec_input(%struct.PROCESS_REC*, i8*) #0 !dbg !825 {
  %3 = alloca %struct.PROCESS_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._WI_ITEM_REC*, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  store %struct.PROCESS_REC* %0, %struct.PROCESS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %3, metadata !828, metadata !682), !dbg !829
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !830, metadata !682), !dbg !831
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %5, metadata !832, metadata !682), !dbg !833
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !834, metadata !682), !dbg !835
  call void @llvm.dbg.declare(metadata i8** %7, metadata !836, metadata !682), !dbg !837
  %8 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !838
  %9 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %8, i32 0, i32 13, !dbg !840
  %10 = load i8, i8* %9, align 8, !dbg !840
  %11 = lshr i8 %10, 3, !dbg !840
  %12 = and i8 %11, 1, !dbg !840
  %13 = zext i8 %12 to i32, !dbg !840
  %14 = icmp ne i32 %13, 0, !dbg !838
  br i1 %14, label %15, label %16, !dbg !841

; <label>:15:                                     ; preds = %2
  br label %122, !dbg !842

; <label>:16:                                     ; preds = %2
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %5, align 8, !dbg !843
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %6, align 8, !dbg !844
  %17 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !845
  %18 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %17, i32 0, i32 9, !dbg !847
  %19 = load i8*, i8** %18, align 8, !dbg !847
  %20 = icmp ne i8* %19, null, !dbg !848
  br i1 %20, label %21, label %98, !dbg !849

; <label>:21:                                     ; preds = %16
  %22 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !850
  %23 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %22, i32 0, i32 10, !dbg !853
  %24 = load i8*, i8** %23, align 8, !dbg !853
  %25 = icmp ne i8* %24, null, !dbg !854
  br i1 %25, label %26, label %35, !dbg !855

; <label>:26:                                     ; preds = %21
  %27 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !856
  %28 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %27, i32 0, i32 10, !dbg !858
  %29 = load i8*, i8** %28, align 8, !dbg !858
  %30 = call %struct._SERVER_REC* @server_find_tag(i8* %29), !dbg !859
  store %struct._SERVER_REC* %30, %struct._SERVER_REC** %6, align 8, !dbg !860
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !861
  %32 = icmp eq %struct._SERVER_REC* %31, null, !dbg !863
  br i1 %32, label %33, label %34, !dbg !864

; <label>:33:                                     ; preds = %26
  br label %122, !dbg !865

; <label>:34:                                     ; preds = %26
  store %struct._WI_ITEM_REC* null, %struct._WI_ITEM_REC** %5, align 8, !dbg !867
  br label %52, !dbg !868

; <label>:35:                                     ; preds = %21
  %36 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !869
  %37 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %36, i32 0, i32 9, !dbg !871
  %38 = load i8*, i8** %37, align 8, !dbg !871
  %39 = call %struct._WI_ITEM_REC* @window_item_find(i8* null, i8* %38), !dbg !872
  store %struct._WI_ITEM_REC* %39, %struct._WI_ITEM_REC** %5, align 8, !dbg !873
  %40 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !874
  %41 = icmp ne %struct._WI_ITEM_REC* %40, null, !dbg !875
  br i1 %41, label %42, label %46, !dbg !874

; <label>:42:                                     ; preds = %35
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !876
  %44 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %43, i32 0, i32 4, !dbg !878
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %44, align 8, !dbg !878
  br label %50, !dbg !879

; <label>:46:                                     ; preds = %35
  %47 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !880
  %48 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %47, i32 0, i32 6, !dbg !881
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %48, align 8, !dbg !881
  br label %50, !dbg !882

; <label>:50:                                     ; preds = %46, %42
  %51 = phi %struct._SERVER_REC* [ %45, %42 ], [ %49, %46 ], !dbg !884
  store %struct._SERVER_REC* %51, %struct._SERVER_REC** %6, align 8, !dbg !886
  br label %52

; <label>:52:                                     ; preds = %50, %34
  %53 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !887
  %54 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %53, i32 0, i32 13, !dbg !888
  %55 = load i8, i8* %54, align 8, !dbg !888
  %56 = lshr i8 %55, 5, !dbg !888
  %57 = and i8 %56, 1, !dbg !888
  %58 = zext i8 %57 to i32, !dbg !888
  %59 = icmp ne i32 %58, 0, !dbg !887
  br i1 %59, label %60, label %61, !dbg !887

; <label>:60:                                     ; preds = %52
  br label %70, !dbg !889

; <label>:61:                                     ; preds = %52
  %62 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !891
  %63 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %62, i32 0, i32 13, !dbg !892
  %64 = load i8, i8* %63, align 8, !dbg !892
  %65 = lshr i8 %64, 4, !dbg !892
  %66 = and i8 %65, 1, !dbg !892
  %67 = zext i8 %66 to i32, !dbg !892
  %68 = icmp ne i32 %67, 0, !dbg !891
  %69 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), !dbg !891
  br label %70, !dbg !893

; <label>:70:                                     ; preds = %61, %60
  %71 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %60 ], [ %69, %61 ], !dbg !895
  %72 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !897
  %73 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %72, i32 0, i32 9, !dbg !898
  %74 = load i8*, i8** %73, align 8, !dbg !898
  %75 = load i8*, i8** %4, align 8, !dbg !899
  %76 = load i8, i8* %75, align 1, !dbg !900
  %77 = sext i8 %76 to i32, !dbg !900
  %78 = icmp eq i32 %77, 0, !dbg !901
  br i1 %78, label %79, label %80, !dbg !900

; <label>:79:                                     ; preds = %70
  br label %82, !dbg !902

; <label>:80:                                     ; preds = %70
  %81 = load i8*, i8** %4, align 8, !dbg !903
  br label %82, !dbg !904

; <label>:82:                                     ; preds = %80, %79
  %83 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), %79 ], [ %81, %80 ], !dbg !905
  %84 = call noalias i8* (i8*, ...) @g_strconcat(i8* %71, i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* %83, i8* null), !dbg !906
  store i8* %84, i8** %7, align 8, !dbg !908
  %85 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !909
  %86 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %85, i32 0, i32 13, !dbg !910
  %87 = load i8, i8* %86, align 8, !dbg !910
  %88 = lshr i8 %87, 1, !dbg !910
  %89 = and i8 %88, 1, !dbg !910
  %90 = zext i8 %89 to i32, !dbg !910
  %91 = icmp ne i32 %90, 0, !dbg !909
  %92 = select i1 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), !dbg !909
  %93 = load i8*, i8** %7, align 8, !dbg !911
  %94 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !912
  %95 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %5, align 8, !dbg !913
  %96 = call i32 (i8*, i32, ...) @signal_emit(i8* %92, i32 3, i8* %93, %struct._SERVER_REC* %94, %struct._WI_ITEM_REC* %95), !dbg !914
  %97 = load i8*, i8** %7, align 8, !dbg !915
  call void @g_free(i8* %97), !dbg !916
  br label %122, !dbg !917

; <label>:98:                                     ; preds = %16
  %99 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !918
  %100 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %99, i32 0, i32 12, !dbg !921
  %101 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %100, align 8, !dbg !921
  %102 = icmp ne %struct.EXEC_WI_REC* %101, null, !dbg !922
  br i1 %102, label %103, label %113, !dbg !918

; <label>:103:                                    ; preds = %98
  %104 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !923
  %105 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %104, i32 0, i32 12, !dbg !925
  %106 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %105, align 8, !dbg !925
  %107 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %106, i32 0, i32 5, !dbg !926
  %108 = load i8*, i8** %107, align 8, !dbg !926
  %109 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !927
  %110 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %109, i32 0, i32 8, !dbg !928
  %111 = load i32, i32* %110, align 4, !dbg !928
  %112 = load i8*, i8** %4, align 8, !dbg !929
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* %108, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* %112), !dbg !930
  br label %121, !dbg !931

; <label>:113:                                    ; preds = %98
  %114 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !932
  %115 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %114, i32 0, i32 11, !dbg !934
  %116 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %115, align 8, !dbg !934
  %117 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !935
  %118 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %117, i32 0, i32 8, !dbg !936
  %119 = load i32, i32* %118, align 4, !dbg !936
  %120 = load i8*, i8** %4, align 8, !dbg !937
  call void (%struct._WINDOW_REC*, i32, i8*, ...) @printtext_window(%struct._WINDOW_REC* %116, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* %120), !dbg !938
  br label %121

; <label>:121:                                    ; preds = %113, %103
  br label %122

; <label>:122:                                    ; preds = %15, %33, %121, %82
  ret void, !dbg !939
}

; Function Attrs: nounwind uwtable
define internal void @sig_window_destroyed(%struct._WINDOW_REC*) #0 !dbg !940 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.PROCESS_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !943, metadata !682), !dbg !944
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !945, metadata !682), !dbg !946
  %5 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !947
  store %struct._GSList* %5, %struct._GSList** %3, align 8, !dbg !949
  br label %6, !dbg !950

; <label>:6:                                      ; preds = %24, %1
  %7 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !951
  %8 = icmp ne %struct._GSList* %7, null, !dbg !954
  br i1 %8, label %9, label %28, !dbg !955

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %4, metadata !956, metadata !682), !dbg !958
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !959
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !960
  %12 = load i8*, i8** %11, align 8, !dbg !960
  %13 = bitcast i8* %12 to %struct.PROCESS_REC*, !dbg !959
  store %struct.PROCESS_REC* %13, %struct.PROCESS_REC** %4, align 8, !dbg !958
  %14 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %4, align 8, !dbg !961
  %15 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %14, i32 0, i32 11, !dbg !963
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %15, align 8, !dbg !963
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !964
  %18 = icmp eq %struct._WINDOW_REC* %16, %17, !dbg !965
  br i1 %18, label %19, label %23, !dbg !966

; <label>:19:                                     ; preds = %9
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !967
  %21 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %4, align 8, !dbg !968
  %22 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %21, i32 0, i32 11, !dbg !969
  store %struct._WINDOW_REC* %20, %struct._WINDOW_REC** %22, align 8, !dbg !970
  br label %23, !dbg !968

; <label>:23:                                     ; preds = %19, %9
  br label %24, !dbg !971

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !972
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !974
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !974
  store %struct._GSList* %27, %struct._GSList** %3, align 8, !dbg !975
  br label %6, !dbg !976, !llvm.loop !977

; <label>:28:                                     ; preds = %6
  ret void, !dbg !979
}

; Function Attrs: nounwind uwtable
define internal void @event_text(i8*, %struct._SERVER_REC*, %struct.EXEC_WI_REC*) #0 !dbg !980 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct.EXEC_WI_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !983, metadata !682), !dbg !984
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !985, metadata !682), !dbg !986
  store %struct.EXEC_WI_REC* %2, %struct.EXEC_WI_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.EXEC_WI_REC** %6, metadata !987, metadata !682), !dbg !988
  %7 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !989
  %8 = bitcast %struct.EXEC_WI_REC* %7 to i8*, !dbg !989
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)), !dbg !991
  %10 = bitcast i8* %9 to %struct.EXEC_WI_REC*, !dbg !992
  %11 = icmp ne %struct.EXEC_WI_REC* %10, null, !dbg !992
  br i1 %11, label %12, label %13, !dbg !993

; <label>:12:                                     ; preds = %3
  br i1 false, label %14, label %15, !dbg !994

; <label>:13:                                     ; preds = %3
  br i1 false, label %15, label %14, !dbg !996

; <label>:14:                                     ; preds = %13, %12
  br label %32, !dbg !998

; <label>:15:                                     ; preds = %13, %12
  %16 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !999
  %17 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %16, i32 0, i32 12, !dbg !1000
  %18 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %17, align 8, !dbg !1000
  %19 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %18, i32 0, i32 5, !dbg !1001
  %20 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %19, align 8, !dbg !1001
  %21 = load i8*, i8** %4, align 8, !dbg !1002
  %22 = load i8*, i8** %4, align 8, !dbg !1003
  %23 = call i64 @strlen(i8* %22) #8, !dbg !1004
  %24 = trunc i64 %23 to i32, !dbg !1004
  %25 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %20, i8* %21, i32 %24), !dbg !1005
  %26 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1007
  %27 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %26, i32 0, i32 12, !dbg !1008
  %28 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %27, align 8, !dbg !1008
  %29 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %28, i32 0, i32 5, !dbg !1009
  %30 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %29, align 8, !dbg !1009
  %31 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 1), !dbg !1010
  call void @signal_stop(), !dbg !1011
  br label %32, !dbg !1012

; <label>:32:                                     ; preds = %15, %14
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define void @fe_exec_deinit() #0 !dbg !1014 {
  %1 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1015
  %2 = icmp ne %struct._GSList* %1, null, !dbg !1017
  br i1 %2, label %3, label %14, !dbg !1018

; <label>:3:                                      ; preds = %0
  call void @processes_killall(i32 15), !dbg !1019
  %4 = call i32 @sleep(i32 1), !dbg !1021
  call void @processes_killall(i32 9), !dbg !1022
  br label %5, !dbg !1023

; <label>:5:                                      ; preds = %8, %3
  %6 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1024
  %7 = icmp ne %struct._GSList* %6, null, !dbg !1026
  br i1 %7, label %8, label %13, !dbg !1027

; <label>:8:                                      ; preds = %5
  %9 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1028
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1029
  %11 = load i8*, i8** %10, align 8, !dbg !1029
  %12 = bitcast i8* %11 to %struct.PROCESS_REC*, !dbg !1028
  call void @process_destroy(%struct.PROCESS_REC* %12, i32 -1), !dbg !1030
  br label %5, !dbg !1031, !llvm.loop !1033

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !1034

; <label>:14:                                     ; preds = %13, %0
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_exec to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1035
  call void @signal_remove_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_pidwait to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1036
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.PROCESS_REC*, i8*)* @sig_exec_input to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1037
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*)* @sig_window_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1038
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct.EXEC_WI_REC*)* @event_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind uwtable
define internal void @processes_killall(i32) #0 !dbg !1041 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.PROCESS_REC*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1042, metadata !682), !dbg !1043
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1044, metadata !682), !dbg !1045
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1046, metadata !682), !dbg !1047
  %6 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1048
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1050
  br label %7, !dbg !1051

; <label>:7:                                      ; preds = %32, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1052
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1055
  br i1 %9, label %10, label %36, !dbg !1056

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %5, metadata !1057, metadata !682), !dbg !1059
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1060
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1061
  %13 = load i8*, i8** %12, align 8, !dbg !1061
  %14 = bitcast i8* %13 to %struct.PROCESS_REC*, !dbg !1060
  store %struct.PROCESS_REC* %14, %struct.PROCESS_REC** %5, align 8, !dbg !1059
  %15 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1062
  %16 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %15, i32 0, i32 3, !dbg !1063
  %17 = load i32, i32* %16, align 8, !dbg !1063
  %18 = sub nsw i32 0, %17, !dbg !1064
  %19 = load i32, i32* %2, align 4, !dbg !1065
  %20 = call i32 @kill(i32 %18, i32 %19) #9, !dbg !1066
  store i32 %20, i32* %4, align 4, !dbg !1067
  %21 = load i32, i32* %4, align 4, !dbg !1068
  %22 = icmp ne i32 %21, 0, !dbg !1070
  br i1 %22, label %23, label %31, !dbg !1071

; <label>:23:                                     ; preds = %10
  %24 = load i32, i32* %2, align 4, !dbg !1072
  %25 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1073
  %26 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %25, i32 0, i32 3, !dbg !1074
  %27 = load i32, i32* %26, align 8, !dbg !1074
  %28 = call i32* @__errno_location() #2, !dbg !1075
  %29 = load i32, i32* %28, align 4, !dbg !1076
  %30 = call i8* @g_strerror(i32 %29) #2, !dbg !1077
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i32 %24, i32 %27, i8* %30), !dbg !1079
  br label %31, !dbg !1079

; <label>:31:                                     ; preds = %23, %10
  br label %32, !dbg !1080

; <label>:32:                                     ; preds = %31
  %33 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1081
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !1083
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1083
  store %struct._GSList* %35, %struct._GSList** %3, align 8, !dbg !1084
  br label %7, !dbg !1085, !llvm.loop !1086

; <label>:36:                                     ; preds = %7
  ret void, !dbg !1088
}

declare i32 @sleep(i32) #1

; Function Attrs: nounwind uwtable
define internal void @process_destroy(%struct.PROCESS_REC*, i32) #0 !dbg !1089 {
  %3 = alloca %struct.PROCESS_REC*, align 8
  %4 = alloca i32, align 4
  store %struct.PROCESS_REC* %0, %struct.PROCESS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %3, metadata !1092, metadata !682), !dbg !1093
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1094, metadata !682), !dbg !1095
  %5 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1096
  %6 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1097
  %7 = bitcast %struct.PROCESS_REC* %6 to i8*, !dbg !1097
  %8 = call %struct._GSList* @g_slist_remove(%struct._GSList* %5, i8* %7), !dbg !1098
  store %struct._GSList* %8, %struct._GSList** @processes, align 8, !dbg !1099
  %9 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1100
  %10 = load i32, i32* %4, align 4, !dbg !1101
  %11 = sext i32 %10 to i64, !dbg !1102
  %12 = inttoptr i64 %11 to i8*, !dbg !1103
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 2, %struct.PROCESS_REC* %9, i8* %12), !dbg !1104
  %14 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1105
  %15 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %14, i32 0, i32 7, !dbg !1107
  %16 = load i32, i32* %15, align 8, !dbg !1107
  %17 = icmp ne i32 %16, -1, !dbg !1108
  br i1 %17, label %18, label %23, !dbg !1109

; <label>:18:                                     ; preds = %2
  %19 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1110
  %20 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %19, i32 0, i32 7, !dbg !1111
  %21 = load i32, i32* %20, align 8, !dbg !1111
  %22 = call i32 @g_source_remove(i32 %21), !dbg !1112
  br label %23, !dbg !1112

; <label>:23:                                     ; preds = %18, %2
  %24 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1113
  %25 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %24, i32 0, i32 12, !dbg !1115
  %26 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %25, align 8, !dbg !1115
  %27 = icmp ne %struct.EXEC_WI_REC* %26, null, !dbg !1116
  br i1 %27, label %28, label %32, !dbg !1117

; <label>:28:                                     ; preds = %23
  %29 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1118
  %30 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %29, i32 0, i32 12, !dbg !1119
  %31 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %30, align 8, !dbg !1119
  call void @exec_wi_destroy(%struct.EXEC_WI_REC* %31), !dbg !1120
  br label %32, !dbg !1120

; <label>:32:                                     ; preds = %28, %23
  %33 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1121
  %34 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %33, i32 0, i32 6, !dbg !1122
  %35 = load %struct._LINEBUF_REC*, %struct._LINEBUF_REC** %34, align 8, !dbg !1122
  call void @line_split_free(%struct._LINEBUF_REC* %35), !dbg !1123
  %36 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1124
  %37 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %36, i32 0, i32 4, !dbg !1125
  %38 = load %struct._GIOChannel*, %struct._GIOChannel** %37, align 8, !dbg !1125
  %39 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %38, i32 1, %struct._GError** null), !dbg !1126
  %40 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1127
  %41 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %40, i32 0, i32 4, !dbg !1128
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %41, align 8, !dbg !1128
  call void @g_io_channel_unref(%struct._GIOChannel* %42), !dbg !1129
  %43 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1130
  %44 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %43, i32 0, i32 5, !dbg !1131
  %45 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %44, align 8, !dbg !1131
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %45, i32 1), !dbg !1132
  %46 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1133
  %47 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %46, i32 0, i32 1, !dbg !1134
  %48 = load i8*, i8** %47, align 8, !dbg !1134
  call void @g_free(i8* %48), !dbg !1135
  %49 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1136
  %50 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %49, i32 0, i32 9, !dbg !1137
  %51 = load i8*, i8** %50, align 8, !dbg !1137
  call void @g_free(i8* %51), !dbg !1138
  %52 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1139
  %53 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %52, i32 0, i32 10, !dbg !1140
  %54 = load i8*, i8** %53, align 8, !dbg !1140
  call void @g_free(i8* %54), !dbg !1141
  %55 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1142
  %56 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %55, i32 0, i32 2, !dbg !1143
  %57 = load i8*, i8** %56, align 8, !dbg !1143
  call void @g_free(i8* %57), !dbg !1144
  %58 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1145
  %59 = bitcast %struct.PROCESS_REC* %58 to i8*, !dbg !1145
  call void @g_free(i8* %59), !dbg !1146
  ret void, !dbg !1147
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @handle_exec(i8*, %struct._GHashTable*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1148 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca %struct._WI_ITEM_REC*, align 8
  %9 = alloca %struct.PROCESS_REC*, align 8
  %10 = alloca %struct._SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1151, metadata !682), !dbg !1152
  store %struct._GHashTable* %1, %struct._GHashTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !1153, metadata !682), !dbg !1154
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !1155, metadata !682), !dbg !1156
  store %struct._WI_ITEM_REC* %3, %struct._WI_ITEM_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %8, metadata !1157, metadata !682), !dbg !1158
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %9, metadata !1159, metadata !682), !dbg !1160
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %10, metadata !1161, metadata !682), !dbg !1162
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1163, metadata !682), !dbg !1164
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1165, metadata !682), !dbg !1166
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1167, metadata !682), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1169, metadata !682), !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1171, metadata !682), !dbg !1172
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1173, metadata !682), !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1175, metadata !682), !dbg !1176
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1177, metadata !682), !dbg !1178
  %20 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1179
  %21 = call i32 @cmd_options_get_signal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable* %20), !dbg !1180
  store i32 %21, i32* %14, align 4, !dbg !1181
  %22 = load i32, i32* %14, align 4, !dbg !1182
  %23 = icmp eq i32 %22, -2, !dbg !1184
  br i1 %23, label %24, label %25, !dbg !1185

; <label>:24:                                     ; preds = %4
  br label %438, !dbg !1186

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %5, align 8, !dbg !1187
  %27 = load i8, i8* %26, align 1, !dbg !1189
  %28 = sext i8 %27 to i32, !dbg !1189
  %29 = icmp eq i32 %28, 0, !dbg !1190
  br i1 %29, label %30, label %31, !dbg !1191

; <label>:30:                                     ; preds = %25
  call void @exec_show_list(), !dbg !1192
  br label %438, !dbg !1194

; <label>:31:                                     ; preds = %25
  store i8* null, i8** %11, align 8, !dbg !1195
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %10, align 8, !dbg !1196
  store i32 0, i32* %13, align 4, !dbg !1197
  %32 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1198
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !1200
  %34 = icmp ne i8* %33, null, !dbg !1201
  br i1 %34, label %35, label %55, !dbg !1202

; <label>:35:                                     ; preds = %31
  %36 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1203
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !1205
  %38 = call %struct.PROCESS_REC* @process_find(i8* %37, i32 1), !dbg !1206
  store %struct.PROCESS_REC* %38, %struct.PROCESS_REC** %9, align 8, !dbg !1208
  %39 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1209
  %40 = icmp ne %struct.PROCESS_REC* %39, null, !dbg !1211
  br i1 %40, label %41, label %54, !dbg !1212

; <label>:41:                                     ; preds = %35
  %42 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1213
  %43 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %42, i32 0, i32 5, !dbg !1215
  %44 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %43, align 8, !dbg !1215
  %45 = load i8*, i8** %5, align 8, !dbg !1216
  %46 = load i8*, i8** %5, align 8, !dbg !1217
  %47 = call i64 @strlen(i8* %46) #8, !dbg !1218
  %48 = trunc i64 %47 to i32, !dbg !1218
  %49 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %44, i8* %45, i32 %48), !dbg !1219
  %50 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1221
  %51 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %50, i32 0, i32 5, !dbg !1222
  %52 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %51, align 8, !dbg !1222
  %53 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 1), !dbg !1223
  br label %54, !dbg !1224

; <label>:54:                                     ; preds = %41, %35
  br label %438, !dbg !1225

; <label>:55:                                     ; preds = %31
  %56 = load i8*, i8** %5, align 8, !dbg !1226
  %57 = load i8*, i8** %5, align 8, !dbg !1227
  %58 = load i8, i8* %57, align 1, !dbg !1228
  %59 = sext i8 %58 to i32, !dbg !1228
  %60 = icmp eq i32 %59, 37, !dbg !1229
  %61 = zext i1 %60 to i32, !dbg !1229
  %62 = call %struct.PROCESS_REC* @process_find(i8* %56, i32 %61), !dbg !1230
  store %struct.PROCESS_REC* %62, %struct.PROCESS_REC** %9, align 8, !dbg !1231
  %63 = load i8*, i8** %5, align 8, !dbg !1232
  %64 = load i8, i8* %63, align 1, !dbg !1234
  %65 = sext i8 %64 to i32, !dbg !1234
  %66 = icmp eq i32 %65, 37, !dbg !1235
  br i1 %66, label %67, label %71, !dbg !1236

; <label>:67:                                     ; preds = %55
  %68 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1237
  %69 = icmp eq %struct.PROCESS_REC* %68, null, !dbg !1239
  br i1 %69, label %70, label %71, !dbg !1240

; <label>:70:                                     ; preds = %67
  br label %438, !dbg !1241

; <label>:71:                                     ; preds = %67, %55
  store i32 0, i32* %16, align 4, !dbg !1242
  store i32 0, i32* %17, align 4, !dbg !1243
  %72 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1244
  %73 = call i8* @g_hash_table_lookup(%struct._GHashTable* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1246
  %74 = icmp ne i8* %73, null, !dbg !1247
  br i1 %74, label %75, label %103, !dbg !1248

; <label>:75:                                     ; preds = %71
  %76 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1249
  %77 = icmp eq %struct._WI_ITEM_REC* %76, null, !dbg !1252
  br i1 %77, label %78, label %82, !dbg !1253

; <label>:78:                                     ; preds = %75
  br label %79, !dbg !1254, !llvm.loop !1255

; <label>:79:                                     ; preds = %78
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !1256
  call void @signal_stop(), !dbg !1259
  br label %438, !dbg !1261
                                                  ; No predecessors!
  br label %82, !dbg !1262

; <label>:82:                                     ; preds = %81, %75
  %83 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1264
  %84 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %83, i32 0, i32 11, !dbg !1265
  %85 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %84, align 8, !dbg !1265
  %86 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1266
  %87 = call i8* %85(%struct._WI_ITEM_REC* %86), !dbg !1267
  store i8* %87, i8** %11, align 8, !dbg !1268
  %88 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1269
  %89 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %88, i32 0, i32 4, !dbg !1270
  %90 = load %struct._SERVER_REC*, %struct._SERVER_REC** %89, align 8, !dbg !1270
  store %struct._SERVER_REC* %90, %struct._SERVER_REC** %10, align 8, !dbg !1271
  %91 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1272
  %92 = bitcast %struct._WI_ITEM_REC* %91 to i8*, !dbg !1272
  %93 = call i8* @module_check_cast_module(i8* %92, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)), !dbg !1273
  %94 = bitcast i8* %93 to %struct._CHANNEL_REC*, !dbg !1274
  %95 = icmp ne %struct._CHANNEL_REC* %94, null, !dbg !1275
  %96 = select i1 %95, i32 1, i32 0, !dbg !1275
  store i32 %96, i32* %17, align 4, !dbg !1276
  %97 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1277
  %98 = bitcast %struct._WI_ITEM_REC* %97 to i8*, !dbg !1277
  %99 = call i8* @module_check_cast_module(i8* %98, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)), !dbg !1278
  %100 = bitcast i8* %99 to %struct._QUERY_REC*, !dbg !1279
  %101 = icmp ne %struct._QUERY_REC* %100, null, !dbg !1280
  %102 = select i1 %101, i32 1, i32 0, !dbg !1280
  store i32 %102, i32* %16, align 4, !dbg !1281
  br label %121, !dbg !1282

; <label>:103:                                    ; preds = %71
  %104 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1283
  %105 = call i8* @g_hash_table_lookup(%struct._GHashTable* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !1286
  %106 = icmp ne i8* %105, null, !dbg !1287
  br i1 %106, label %107, label %111, !dbg !1286

; <label>:107:                                    ; preds = %103
  %108 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1288
  %109 = call i8* @g_hash_table_lookup(%struct._GHashTable* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !1290
  store i8* %109, i8** %11, align 8, !dbg !1291
  %110 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1292
  store %struct._SERVER_REC* %110, %struct._SERVER_REC** %10, align 8, !dbg !1293
  br label %120, !dbg !1294

; <label>:111:                                    ; preds = %103
  %112 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1295
  %113 = call i8* @g_hash_table_lookup(%struct._GHashTable* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1298
  %114 = icmp ne i8* %113, null, !dbg !1299
  br i1 %114, label %115, label %119, !dbg !1298

; <label>:115:                                    ; preds = %111
  %116 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1300
  %117 = call i8* @g_hash_table_lookup(%struct._GHashTable* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1302
  store i8* %117, i8** %11, align 8, !dbg !1303
  %118 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1304
  store %struct._SERVER_REC* %118, %struct._SERVER_REC** %10, align 8, !dbg !1305
  store i32 1, i32* %13, align 4, !dbg !1306
  br label %119, !dbg !1307

; <label>:119:                                    ; preds = %115, %111
  br label %120

; <label>:120:                                    ; preds = %119, %107
  br label %121

; <label>:121:                                    ; preds = %120, %82
  %122 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1308
  %123 = icmp eq %struct.PROCESS_REC* %122, null, !dbg !1310
  br i1 %123, label %124, label %133, !dbg !1311

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %14, align 4, !dbg !1312
  %126 = icmp ne i32 %125, -1, !dbg !1313
  br i1 %126, label %131, label %127, !dbg !1314

; <label>:127:                                    ; preds = %124
  %128 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1315
  %129 = call i8* @g_hash_table_lookup(%struct._GHashTable* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)), !dbg !1317
  %130 = icmp ne i8* %129, null, !dbg !1318
  br i1 %130, label %131, label %133, !dbg !1319

; <label>:131:                                    ; preds = %127, %124
  %132 = load i8*, i8** %5, align 8, !dbg !1321
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %132), !dbg !1323
  br label %438, !dbg !1324

; <label>:133:                                    ; preds = %127, %121
  %134 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1325
  %135 = call i8* @g_hash_table_lookup(%struct._GHashTable* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)), !dbg !1327
  %136 = icmp ne i8* %135, null, !dbg !1328
  br i1 %136, label %137, label %139, !dbg !1329

; <label>:137:                                    ; preds = %133
  %138 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1330
  call void @process_destroy(%struct.PROCESS_REC* %138, i32 -1), !dbg !1332
  br label %438, !dbg !1333

; <label>:139:                                    ; preds = %133
  %140 = load i32, i32* %14, align 4, !dbg !1334
  %141 = icmp ne i32 %140, -1, !dbg !1336
  br i1 %141, label %142, label %160, !dbg !1337

; <label>:142:                                    ; preds = %139
  %143 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1338
  %144 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %143, i32 0, i32 3, !dbg !1340
  %145 = load i32, i32* %144, align 8, !dbg !1340
  %146 = sub nsw i32 0, %145, !dbg !1341
  %147 = load i32, i32* %14, align 4, !dbg !1342
  %148 = call i32 @kill(i32 %146, i32 %147) #9, !dbg !1343
  store i32 %148, i32* %18, align 4, !dbg !1344
  %149 = load i32, i32* %18, align 4, !dbg !1345
  %150 = icmp ne i32 %149, 0, !dbg !1347
  br i1 %150, label %151, label %159, !dbg !1348

; <label>:151:                                    ; preds = %142
  %152 = load i32, i32* %14, align 4, !dbg !1349
  %153 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1350
  %154 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %153, i32 0, i32 3, !dbg !1351
  %155 = load i32, i32* %154, align 8, !dbg !1351
  %156 = call i32* @__errno_location() #2, !dbg !1352
  %157 = load i32, i32* %156, align 4, !dbg !1353
  %158 = call i8* @g_strerror(i32 %157) #2, !dbg !1354
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i32 %152, i32 %155, i8* %158), !dbg !1356
  br label %159, !dbg !1356

; <label>:159:                                    ; preds = %151, %142
  br label %438, !dbg !1357

; <label>:160:                                    ; preds = %139
  %161 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1358
  %162 = call i8* @g_hash_table_lookup(%struct._GHashTable* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)), !dbg !1359
  %163 = icmp ne i8* %162, null, !dbg !1360
  %164 = zext i1 %163 to i32, !dbg !1360
  store i32 %164, i32* %15, align 4, !dbg !1361
  %165 = load i8*, i8** %5, align 8, !dbg !1362
  %166 = load i8, i8* %165, align 1, !dbg !1364
  %167 = sext i8 %166 to i32, !dbg !1364
  %168 = icmp eq i32 %167, 37, !dbg !1365
  br i1 %168, label %169, label %281, !dbg !1366

; <label>:169:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1367, metadata !682), !dbg !1369
  %170 = load i8*, i8** %11, align 8, !dbg !1370
  %171 = icmp ne i8* %170, null, !dbg !1372
  br i1 %171, label %172, label %212, !dbg !1373

; <label>:172:                                    ; preds = %169
  br label %173, !dbg !1374, !llvm.loop !1376

; <label>:173:                                    ; preds = %172
  %174 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1377
  %175 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %174, i32 0, i32 9, !dbg !1381
  %176 = load i8*, i8** %175, align 8, !dbg !1381
  %177 = icmp ne i8* %176, null, !dbg !1377
  br i1 %177, label %178, label %184, !dbg !1377

; <label>:178:                                    ; preds = %173
  %179 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1382
  %180 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %179, i32 0, i32 9, !dbg !1385
  %181 = load i8*, i8** %180, align 8, !dbg !1385
  call void @g_free(i8* %181), !dbg !1386
  %182 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1387
  %183 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %182, i32 0, i32 9, !dbg !1388
  store i8* null, i8** %183, align 8, !dbg !1389
  br label %184, !dbg !1390

; <label>:184:                                    ; preds = %178, %173
  br label %185, !dbg !1391

; <label>:185:                                    ; preds = %184
  %186 = load i8*, i8** %11, align 8, !dbg !1393
  %187 = call noalias i8* @g_strdup(i8* %186), !dbg !1394
  %188 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1395
  %189 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %188, i32 0, i32 9, !dbg !1396
  store i8* %187, i8** %189, align 8, !dbg !1397
  %190 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1398
  %191 = icmp eq %struct._SERVER_REC* %190, null, !dbg !1399
  br i1 %191, label %192, label %193, !dbg !1398

; <label>:192:                                    ; preds = %185
  br label %198, !dbg !1400

; <label>:193:                                    ; preds = %185
  %194 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1402
  %195 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %194, i32 0, i32 6, !dbg !1403
  %196 = load i8*, i8** %195, align 8, !dbg !1403
  %197 = call noalias i8* @g_strdup(i8* %196), !dbg !1404
  br label %198, !dbg !1405

; <label>:198:                                    ; preds = %193, %192
  %199 = phi i8* [ null, %192 ], [ %197, %193 ], !dbg !1407
  %200 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1409
  %201 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %200, i32 0, i32 10, !dbg !1410
  store i8* %199, i8** %201, align 8, !dbg !1411
  %202 = load i32, i32* %13, align 4, !dbg !1412
  %203 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1413
  %204 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %203, i32 0, i32 13, !dbg !1414
  %205 = trunc i32 %202 to i8, !dbg !1415
  %206 = load i8, i8* %204, align 8, !dbg !1415
  %207 = and i8 %205, 1, !dbg !1415
  %208 = shl i8 %207, 1, !dbg !1415
  %209 = and i8 %206, -3, !dbg !1415
  %210 = or i8 %209, %208, !dbg !1415
  store i8 %210, i8* %204, align 8, !dbg !1415
  %211 = zext i8 %207 to i32, !dbg !1415
  br label %212, !dbg !1416

; <label>:212:                                    ; preds = %198, %169
  %213 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1417
  %214 = call i8* @g_hash_table_lookup(%struct._GHashTable* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !1418
  store i8* %214, i8** %19, align 8, !dbg !1419
  %215 = load i8*, i8** %19, align 8, !dbg !1420
  %216 = icmp ne i8* %215, null, !dbg !1422
  br i1 %216, label %217, label %233, !dbg !1423

; <label>:217:                                    ; preds = %212
  %218 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1424
  %219 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %218, i32 0, i32 1, !dbg !1426
  %220 = load i8*, i8** %219, align 8, !dbg !1426
  call void @g_free(i8* %220), !dbg !1427
  %221 = load i8*, i8** %19, align 8, !dbg !1428
  %222 = load i8, i8* %221, align 1, !dbg !1429
  %223 = sext i8 %222 to i32, !dbg !1429
  %224 = icmp eq i32 %223, 0, !dbg !1430
  br i1 %224, label %225, label %226, !dbg !1429

; <label>:225:                                    ; preds = %217
  br label %229, !dbg !1431

; <label>:226:                                    ; preds = %217
  %227 = load i8*, i8** %19, align 8, !dbg !1433
  %228 = call noalias i8* @g_strdup(i8* %227), !dbg !1435
  br label %229, !dbg !1436

; <label>:229:                                    ; preds = %226, %225
  %230 = phi i8* [ null, %225 ], [ %228, %226 ], !dbg !1437
  %231 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1439
  %232 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %231, i32 0, i32 1, !dbg !1440
  store i8* %230, i8** %232, align 8, !dbg !1441
  br label %280, !dbg !1442

; <label>:233:                                    ; preds = %212
  %234 = load i8*, i8** %11, align 8, !dbg !1443
  %235 = icmp eq i8* %234, null, !dbg !1446
  br i1 %235, label %236, label %279, !dbg !1447

; <label>:236:                                    ; preds = %233
  %237 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1448
  %238 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %237, i32 0, i32 12, !dbg !1449
  %239 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %238, align 8, !dbg !1449
  %240 = icmp eq %struct.EXEC_WI_REC* %239, null, !dbg !1450
  br i1 %240, label %244, label %241, !dbg !1451

; <label>:241:                                    ; preds = %236
  %242 = load i32, i32* %15, align 4, !dbg !1452
  %243 = icmp ne i32 %242, 0, !dbg !1452
  br i1 %243, label %244, label %279, !dbg !1453

; <label>:244:                                    ; preds = %241, %236
  br label %245, !dbg !1455, !llvm.loop !1457

; <label>:245:                                    ; preds = %244
  %246 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1458
  %247 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %246, i32 0, i32 9, !dbg !1462
  %248 = load i8*, i8** %247, align 8, !dbg !1462
  %249 = icmp ne i8* %248, null, !dbg !1458
  br i1 %249, label %250, label %256, !dbg !1458

; <label>:250:                                    ; preds = %245
  %251 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1463
  %252 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %251, i32 0, i32 9, !dbg !1466
  %253 = load i8*, i8** %252, align 8, !dbg !1466
  call void @g_free(i8* %253), !dbg !1467
  %254 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1468
  %255 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %254, i32 0, i32 9, !dbg !1469
  store i8* null, i8** %255, align 8, !dbg !1470
  br label %256, !dbg !1471

; <label>:256:                                    ; preds = %250, %245
  br label %257, !dbg !1472

; <label>:257:                                    ; preds = %256
  %258 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1474
  %259 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1475
  %260 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %259, i32 0, i32 11, !dbg !1476
  store %struct._WINDOW_REC* %258, %struct._WINDOW_REC** %260, align 8, !dbg !1477
  %261 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1478
  %262 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %261, i32 0, i32 12, !dbg !1480
  %263 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %262, align 8, !dbg !1480
  %264 = icmp ne %struct.EXEC_WI_REC* %263, null, !dbg !1481
  br i1 %264, label %265, label %269, !dbg !1482

; <label>:265:                                    ; preds = %257
  %266 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1483
  %267 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %266, i32 0, i32 12, !dbg !1484
  %268 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %267, align 8, !dbg !1484
  call void @exec_wi_destroy(%struct.EXEC_WI_REC* %268), !dbg !1485
  br label %269, !dbg !1485

; <label>:269:                                    ; preds = %265, %257
  %270 = load i32, i32* %15, align 4, !dbg !1486
  %271 = icmp ne i32 %270, 0, !dbg !1486
  br i1 %271, label %272, label %278, !dbg !1488

; <label>:272:                                    ; preds = %269
  %273 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1489
  %274 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1491
  %275 = call %struct.EXEC_WI_REC* @exec_wi_create(%struct._WINDOW_REC* %273, %struct.PROCESS_REC* %274), !dbg !1492
  %276 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1493
  %277 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %276, i32 0, i32 12, !dbg !1494
  store %struct.EXEC_WI_REC* %275, %struct.EXEC_WI_REC** %277, align 8, !dbg !1495
  br label %278, !dbg !1496

; <label>:278:                                    ; preds = %272, %269
  br label %279, !dbg !1497

; <label>:279:                                    ; preds = %278, %241, %233
  br label %280

; <label>:280:                                    ; preds = %279, %229
  br label %438, !dbg !1498

; <label>:281:                                    ; preds = %160
  %282 = call noalias i8* @g_malloc0_n(i64 1, i64 104), !dbg !1499
  %283 = bitcast i8* %282 to %struct.PROCESS_REC*, !dbg !1500
  store %struct.PROCESS_REC* %283, %struct.PROCESS_REC** %9, align 8, !dbg !1501
  %284 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1502
  %285 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %284, i32 0, i32 3, !dbg !1503
  store i32 -1, i32* %285, align 8, !dbg !1504
  %286 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1505
  %287 = call i8* @g_hash_table_lookup(%struct._GHashTable* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)), !dbg !1506
  %288 = icmp eq i8* %287, null, !dbg !1507
  %289 = zext i1 %288 to i32, !dbg !1507
  %290 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1508
  %291 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %290, i32 0, i32 13, !dbg !1509
  %292 = trunc i32 %289 to i8, !dbg !1510
  %293 = load i8, i8* %291, align 8, !dbg !1510
  %294 = and i8 %292, 1, !dbg !1510
  %295 = and i8 %293, -2, !dbg !1510
  %296 = or i8 %295, %294, !dbg !1510
  store i8 %296, i8* %291, align 8, !dbg !1510
  %297 = zext i8 %294 to i32, !dbg !1510
  %298 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1511
  %299 = load i8*, i8** %5, align 8, !dbg !1512
  call void @process_exec(%struct.PROCESS_REC* %298, i8* %299), !dbg !1513
  %300 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1514
  %301 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %300, i32 0, i32 3, !dbg !1516
  %302 = load i32, i32* %301, align 8, !dbg !1516
  %303 = icmp eq i32 %302, -1, !dbg !1517
  br i1 %303, label %304, label %310, !dbg !1518

; <label>:304:                                    ; preds = %281
  %305 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1519
  %306 = bitcast %struct.PROCESS_REC* %305 to i8*, !dbg !1519
  call void @g_free(i8* %306), !dbg !1521
  br label %307, !dbg !1522, !llvm.loop !1523

; <label>:307:                                    ; preds = %304
  %308 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !1524
  call void @signal_stop(), !dbg !1527
  br label %438, !dbg !1529
                                                  ; No predecessors!
  br label %310, !dbg !1530

; <label>:310:                                    ; preds = %309, %281
  %311 = call i32 @process_get_new_id(), !dbg !1531
  %312 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1532
  %313 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %312, i32 0, i32 0, !dbg !1533
  store i32 %311, i32* %313, align 8, !dbg !1534
  %314 = load i8*, i8** %11, align 8, !dbg !1535
  %315 = call noalias i8* @g_strdup(i8* %314), !dbg !1536
  %316 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1537
  %317 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %316, i32 0, i32 9, !dbg !1538
  store i8* %315, i8** %317, align 8, !dbg !1539
  %318 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1540
  %319 = icmp eq %struct._SERVER_REC* %318, null, !dbg !1541
  br i1 %319, label %320, label %321, !dbg !1540

; <label>:320:                                    ; preds = %310
  br label %326, !dbg !1542

; <label>:321:                                    ; preds = %310
  %322 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1543
  %323 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %322, i32 0, i32 6, !dbg !1544
  %324 = load i8*, i8** %323, align 8, !dbg !1544
  %325 = call noalias i8* @g_strdup(i8* %324), !dbg !1545
  br label %326, !dbg !1546

; <label>:326:                                    ; preds = %321, %320
  %327 = phi i8* [ null, %320 ], [ %325, %321 ], !dbg !1548
  %328 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1550
  %329 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %328, i32 0, i32 10, !dbg !1551
  store i8* %327, i8** %329, align 8, !dbg !1552
  %330 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1553
  %331 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1554
  %332 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %331, i32 0, i32 11, !dbg !1555
  store %struct._WINDOW_REC* %330, %struct._WINDOW_REC** %332, align 8, !dbg !1556
  %333 = load i32, i32* %17, align 4, !dbg !1557
  %334 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1558
  %335 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %334, i32 0, i32 13, !dbg !1559
  %336 = trunc i32 %333 to i8, !dbg !1560
  %337 = load i8, i8* %335, align 8, !dbg !1560
  %338 = and i8 %336, 1, !dbg !1560
  %339 = shl i8 %338, 4, !dbg !1560
  %340 = and i8 %337, -17, !dbg !1560
  %341 = or i8 %340, %339, !dbg !1560
  store i8 %341, i8* %335, align 8, !dbg !1560
  %342 = zext i8 %338 to i32, !dbg !1560
  %343 = load i32, i32* %16, align 4, !dbg !1561
  %344 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1562
  %345 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %344, i32 0, i32 13, !dbg !1563
  %346 = trunc i32 %343 to i8, !dbg !1564
  %347 = load i8, i8* %345, align 8, !dbg !1564
  %348 = and i8 %346, 1, !dbg !1564
  %349 = shl i8 %348, 5, !dbg !1564
  %350 = and i8 %347, -33, !dbg !1564
  %351 = or i8 %350, %349, !dbg !1564
  store i8 %351, i8* %345, align 8, !dbg !1564
  %352 = zext i8 %348 to i32, !dbg !1564
  %353 = load i8*, i8** %5, align 8, !dbg !1565
  %354 = call noalias i8* @g_strdup(i8* %353), !dbg !1566
  %355 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1567
  %356 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %355, i32 0, i32 2, !dbg !1568
  store i8* %354, i8** %356, align 8, !dbg !1569
  %357 = load i32, i32* %13, align 4, !dbg !1570
  %358 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1571
  %359 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %358, i32 0, i32 13, !dbg !1572
  %360 = trunc i32 %357 to i8, !dbg !1573
  %361 = load i8, i8* %359, align 8, !dbg !1573
  %362 = and i8 %360, 1, !dbg !1573
  %363 = shl i8 %362, 1, !dbg !1573
  %364 = and i8 %361, -3, !dbg !1573
  %365 = or i8 %364, %363, !dbg !1573
  store i8 %365, i8* %359, align 8, !dbg !1573
  %366 = zext i8 %362 to i32, !dbg !1573
  %367 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1574
  %368 = call i8* @g_hash_table_lookup(%struct._GHashTable* %367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)), !dbg !1575
  %369 = icmp ne i8* %368, null, !dbg !1576
  %370 = zext i1 %369 to i32, !dbg !1576
  %371 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1577
  %372 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %371, i32 0, i32 13, !dbg !1578
  %373 = trunc i32 %370 to i8, !dbg !1579
  %374 = load i8, i8* %372, align 8, !dbg !1579
  %375 = and i8 %373, 1, !dbg !1579
  %376 = shl i8 %375, 2, !dbg !1579
  %377 = and i8 %374, -5, !dbg !1579
  %378 = or i8 %377, %376, !dbg !1579
  store i8 %378, i8* %372, align 8, !dbg !1579
  %379 = zext i8 %375 to i32, !dbg !1579
  %380 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1580
  %381 = call i8* @g_hash_table_lookup(%struct._GHashTable* %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)), !dbg !1581
  %382 = icmp ne i8* %381, null, !dbg !1582
  %383 = zext i1 %382 to i32, !dbg !1582
  %384 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1583
  %385 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %384, i32 0, i32 13, !dbg !1584
  %386 = trunc i32 %383 to i8, !dbg !1585
  %387 = load i8, i8* %385, align 8, !dbg !1585
  %388 = and i8 %386, 1, !dbg !1585
  %389 = shl i8 %388, 3, !dbg !1585
  %390 = and i8 %387, -9, !dbg !1585
  %391 = or i8 %390, %389, !dbg !1585
  store i8 %391, i8* %385, align 8, !dbg !1585
  %392 = zext i8 %388 to i32, !dbg !1585
  %393 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1586
  %394 = call i8* @g_hash_table_lookup(%struct._GHashTable* %393, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !1587
  %395 = call noalias i8* @g_strdup(i8* %394), !dbg !1588
  %396 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1589
  %397 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %396, i32 0, i32 1, !dbg !1590
  store i8* %395, i8** %397, align 8, !dbg !1591
  %398 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !1592
  %399 = call i8* @g_hash_table_lookup(%struct._GHashTable* %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)), !dbg !1593
  store i8* %399, i8** %12, align 8, !dbg !1594
  %400 = load i8*, i8** %12, align 8, !dbg !1595
  %401 = icmp eq i8* %400, null, !dbg !1596
  br i1 %401, label %402, label %403, !dbg !1595

; <label>:402:                                    ; preds = %326
  br label %406, !dbg !1597

; <label>:403:                                    ; preds = %326
  %404 = load i8*, i8** %12, align 8, !dbg !1598
  %405 = call i32 @level2bits(i8* %404, i32* null), !dbg !1599
  br label %406, !dbg !1600

; <label>:406:                                    ; preds = %403, %402
  %407 = phi i32 [ 524288, %402 ], [ %405, %403 ], !dbg !1601
  %408 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1602
  %409 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %408, i32 0, i32 8, !dbg !1603
  store i32 %407, i32* %409, align 4, !dbg !1604
  %410 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1605
  %411 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %410, i32 0, i32 4, !dbg !1606
  %412 = load %struct._GIOChannel*, %struct._GIOChannel** %411, align 8, !dbg !1606
  %413 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1607
  %414 = bitcast %struct.PROCESS_REC* %413 to i8*, !dbg !1607
  %415 = call i32 @g_input_add(%struct._GIOChannel* %412, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.PROCESS_REC*)* @sig_exec_input_reader to void (i8*, %struct._GIOChannel*, i32)*), i8* %414), !dbg !1608
  %416 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1609
  %417 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %416, i32 0, i32 7, !dbg !1610
  store i32 %415, i32* %417, align 8, !dbg !1611
  %418 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1612
  %419 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1613
  %420 = bitcast %struct.PROCESS_REC* %419 to i8*, !dbg !1613
  %421 = call %struct._GSList* @g_slist_append(%struct._GSList* %418, i8* %420), !dbg !1614
  store %struct._GSList* %421, %struct._GSList** @processes, align 8, !dbg !1615
  %422 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1616
  %423 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %422, i32 0, i32 9, !dbg !1618
  %424 = load i8*, i8** %423, align 8, !dbg !1618
  %425 = icmp eq i8* %424, null, !dbg !1619
  br i1 %425, label %426, label %435, !dbg !1620

; <label>:426:                                    ; preds = %406
  %427 = load i32, i32* %15, align 4, !dbg !1621
  %428 = icmp ne i32 %427, 0, !dbg !1621
  br i1 %428, label %429, label %435, !dbg !1623

; <label>:429:                                    ; preds = %426
  %430 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1624
  %431 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1625
  %432 = call %struct.EXEC_WI_REC* @exec_wi_create(%struct._WINDOW_REC* %430, %struct.PROCESS_REC* %431), !dbg !1626
  %433 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1627
  %434 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %433, i32 0, i32 12, !dbg !1628
  store %struct.EXEC_WI_REC* %432, %struct.EXEC_WI_REC** %434, align 8, !dbg !1629
  br label %435, !dbg !1627

; <label>:435:                                    ; preds = %429, %426, %406
  %436 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %9, align 8, !dbg !1630
  %437 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 1, %struct.PROCESS_REC* %436), !dbg !1631
  br label %438, !dbg !1632

; <label>:438:                                    ; preds = %435, %307, %280, %159, %137, %131, %79, %70, %54, %30, %24
  ret void, !dbg !1633
}

declare void @cmd_params_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmd_options_get_signal(i8*, %struct._GHashTable*) #0 !dbg !1634 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca %struct._GList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1637, metadata !682), !dbg !1638
  store %struct._GHashTable* %1, %struct._GHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !1639, metadata !682), !dbg !1640
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !1641, metadata !682), !dbg !1642
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1643, metadata !682), !dbg !1644
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1645, metadata !682), !dbg !1646
  %9 = load i8*, i8** %4, align 8, !dbg !1647
  %10 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1648
  %11 = call %struct._GList* @optlist_remove_known(i8* %9, %struct._GHashTable* %10), !dbg !1649
  store %struct._GList* %11, %struct._GList** %6, align 8, !dbg !1650
  %12 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1651
  %13 = icmp eq %struct._GList* %12, null, !dbg !1653
  br i1 %13, label %14, label %15, !dbg !1654

; <label>:14:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1655
  br label %58, !dbg !1655

; <label>:15:                                     ; preds = %2
  %16 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1656
  %17 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0, !dbg !1657
  %18 = load i8*, i8** %17, align 8, !dbg !1657
  store i8* %18, i8** %7, align 8, !dbg !1658
  store i32 -1, i32* %8, align 4, !dbg !1659
  %19 = load i8*, i8** %7, align 8, !dbg !1660
  %20 = call i32 @is_numeric(i8* %19, i8 signext 0), !dbg !1661
  %21 = icmp ne i32 %20, 0, !dbg !1661
  br i1 %21, label %22, label %25, !dbg !1661

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %7, align 8, !dbg !1662
  %24 = call i64 @atol(i8* %23) #8, !dbg !1664
  br label %29, !dbg !1665

; <label>:25:                                     ; preds = %15
  %26 = load i8*, i8** %7, align 8, !dbg !1666
  %27 = call i32 @signal_name_to_id(i8* %26), !dbg !1667
  %28 = sext i32 %27 to i64, !dbg !1667
  br label %29, !dbg !1668

; <label>:29:                                     ; preds = %25, %22
  %30 = phi i64 [ %24, %22 ], [ %28, %25 ], !dbg !1670
  %31 = trunc i64 %30 to i32, !dbg !1670
  store i32 %31, i32* %8, align 4, !dbg !1672
  %32 = load i32, i32* %8, align 4, !dbg !1673
  %33 = icmp eq i32 %32, -1, !dbg !1675
  br i1 %33, label %39, label %34, !dbg !1676

; <label>:34:                                     ; preds = %29
  %35 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1677
  %36 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1, !dbg !1679
  %37 = load %struct._GList*, %struct._GList** %36, align 8, !dbg !1679
  %38 = icmp ne %struct._GList* %37, null, !dbg !1680
  br i1 %38, label %39, label %55, !dbg !1681

; <label>:39:                                     ; preds = %34, %29
  %40 = load i32, i32* %8, align 4, !dbg !1682
  %41 = icmp eq i32 %40, -1, !dbg !1684
  br i1 %41, label %42, label %46, !dbg !1682

; <label>:42:                                     ; preds = %39
  %43 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1685
  %44 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0, !dbg !1687
  %45 = load i8*, i8** %44, align 8, !dbg !1687
  br label %52, !dbg !1688

; <label>:46:                                     ; preds = %39
  %47 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1689
  %48 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 1, !dbg !1691
  %49 = load %struct._GList*, %struct._GList** %48, align 8, !dbg !1691
  %50 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0, !dbg !1692
  %51 = load i8*, i8** %50, align 8, !dbg !1692
  br label %52, !dbg !1693

; <label>:52:                                     ; preds = %46, %42
  %53 = phi i8* [ %45, %42 ], [ %51, %46 ], !dbg !1694
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 2, i8* inttoptr (i64 -3 to i8*), i8* %53), !dbg !1696
  call void @signal_stop(), !dbg !1697
  store i32 -2, i32* %3, align 4, !dbg !1698
  br label %58, !dbg !1698

; <label>:55:                                     ; preds = %34
  %56 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1699
  call void @g_list_free(%struct._GList* %56), !dbg !1700
  %57 = load i32, i32* %8, align 4, !dbg !1701
  store i32 %57, i32* %3, align 4, !dbg !1702
  br label %58, !dbg !1702

; <label>:58:                                     ; preds = %55, %52, %14
  %59 = load i32, i32* %3, align 4, !dbg !1703
  ret i32 %59, !dbg !1703
}

; Function Attrs: nounwind uwtable
define internal void @exec_show_list() #0 !dbg !1704 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct.PROCESS_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1705, metadata !682), !dbg !1706
  %3 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1707
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1709
  br label %4, !dbg !1710

; <label>:4:                                      ; preds = %21, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1711
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1714
  br i1 %6, label %7, label %25, !dbg !1715

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %2, metadata !1716, metadata !682), !dbg !1718
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1719
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1720
  %10 = load i8*, i8** %9, align 8, !dbg !1720
  %11 = bitcast i8* %10 to %struct.PROCESS_REC*, !dbg !1719
  store %struct.PROCESS_REC* %11, %struct.PROCESS_REC** %2, align 8, !dbg !1718
  %12 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !1721
  %13 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %12, i32 0, i32 0, !dbg !1722
  %14 = load i32, i32* %13, align 8, !dbg !1722
  %15 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !1723
  %16 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %15, i32 0, i32 1, !dbg !1724
  %17 = load i8*, i8** %16, align 8, !dbg !1724
  %18 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !1725
  %19 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %18, i32 0, i32 2, !dbg !1726
  %20 = load i8*, i8** %19, align 8, !dbg !1726
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %14, i8* %17, i8* %20), !dbg !1727
  br label %21, !dbg !1728

; <label>:21:                                     ; preds = %7
  %22 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1729
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 1, !dbg !1731
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1731
  store %struct._GSList* %24, %struct._GSList** %1, align 8, !dbg !1732
  br label %4, !dbg !1733, !llvm.loop !1734

; <label>:25:                                     ; preds = %4
  ret void, !dbg !1736
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.PROCESS_REC* @process_find(i8*, i32) #0 !dbg !1737 {
  %3 = alloca %struct.PROCESS_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.PROCESS_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1740, metadata !682), !dbg !1741
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1742, metadata !682), !dbg !1743
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1744, metadata !682), !dbg !1745
  br label %8, !dbg !1746, !llvm.loop !1747

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1748
  %10 = icmp ne i8* %9, null, !dbg !1752
  br i1 %10, label %11, label %12, !dbg !1748

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1753

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.process_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)), !dbg !1756
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %3, align 8, !dbg !1759
  br label %64, !dbg !1759

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1760

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1762
  %16 = load i8, i8* %15, align 1, !dbg !1764
  %17 = sext i8 %16 to i32, !dbg !1764
  %18 = icmp eq i32 %17, 37, !dbg !1765
  br i1 %18, label %19, label %30, !dbg !1766

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %4, align 8, !dbg !1767
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1769
  %22 = call i32 @is_numeric(i8* %21, i8 signext 0), !dbg !1770
  %23 = icmp ne i32 %22, 0, !dbg !1770
  br i1 %23, label %24, label %30, !dbg !1771

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %4, align 8, !dbg !1772
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1773
  %27 = call i32 @atoi(i8* %26) #8, !dbg !1774
  %28 = load i32, i32* %5, align 4, !dbg !1775
  %29 = call %struct.PROCESS_REC* @process_find_id(i32 %27, i32 %28), !dbg !1776
  store %struct.PROCESS_REC* %29, %struct.PROCESS_REC** %3, align 8, !dbg !1777
  br label %64, !dbg !1777

; <label>:30:                                     ; preds = %19, %14
  %31 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !1778
  store %struct._GSList* %31, %struct._GSList** %6, align 8, !dbg !1780
  br label %32, !dbg !1781

; <label>:32:                                     ; preds = %54, %30
  %33 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1782
  %34 = icmp ne %struct._GSList* %33, null, !dbg !1785
  br i1 %34, label %35, label %58, !dbg !1786

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %7, metadata !1787, metadata !682), !dbg !1789
  %36 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1790
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1791
  %38 = load i8*, i8** %37, align 8, !dbg !1791
  %39 = bitcast i8* %38 to %struct.PROCESS_REC*, !dbg !1790
  store %struct.PROCESS_REC* %39, %struct.PROCESS_REC** %7, align 8, !dbg !1789
  %40 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %7, align 8, !dbg !1792
  %41 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %40, i32 0, i32 1, !dbg !1794
  %42 = load i8*, i8** %41, align 8, !dbg !1794
  %43 = icmp ne i8* %42, null, !dbg !1795
  br i1 %43, label %44, label %53, !dbg !1796

; <label>:44:                                     ; preds = %35
  %45 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %7, align 8, !dbg !1797
  %46 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %45, i32 0, i32 1, !dbg !1799
  %47 = load i8*, i8** %46, align 8, !dbg !1799
  %48 = load i8*, i8** %4, align 8, !dbg !1800
  %49 = call i32 @g_strcmp0(i8* %47, i8* %48), !dbg !1801
  %50 = icmp eq i32 %49, 0, !dbg !1802
  br i1 %50, label %51, label %53, !dbg !1803

; <label>:51:                                     ; preds = %44
  %52 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %7, align 8, !dbg !1804
  store %struct.PROCESS_REC* %52, %struct.PROCESS_REC** %3, align 8, !dbg !1805
  br label %64, !dbg !1805

; <label>:53:                                     ; preds = %44, %35
  br label %54, !dbg !1806

; <label>:54:                                     ; preds = %53
  %55 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1807
  %56 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 1, !dbg !1809
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !1809
  store %struct._GSList* %57, %struct._GSList** %6, align 8, !dbg !1810
  br label %32, !dbg !1811, !llvm.loop !1812

; <label>:58:                                     ; preds = %32
  %59 = load i32, i32* %5, align 4, !dbg !1814
  %60 = icmp ne i32 %59, 0, !dbg !1814
  br i1 %60, label %61, label %63, !dbg !1816

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %4, align 8, !dbg !1817
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %62), !dbg !1819
  br label %63, !dbg !1820

; <label>:63:                                     ; preds = %61, %58
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %3, align 8, !dbg !1821
  br label %64, !dbg !1821

; <label>:64:                                     ; preds = %63, %51, %24, %12
  %65 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !1822
  ret %struct.PROCESS_REC* %65, !dbg !1822
}

declare i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @printtext(i8*, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @exec_wi_destroy(%struct.EXEC_WI_REC*) #0 !dbg !1823 {
  %2 = alloca %struct.EXEC_WI_REC*, align 8
  store %struct.EXEC_WI_REC* %0, %struct.EXEC_WI_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.EXEC_WI_REC** %2, metadata !1826, metadata !682), !dbg !1827
  br label %3, !dbg !1828, !llvm.loop !1829

; <label>:3:                                      ; preds = %1
  %4 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1830
  %5 = icmp ne %struct.EXEC_WI_REC* %4, null, !dbg !1834
  br i1 %5, label %6, label %7, !dbg !1830

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1835

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.exec_wi_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !1838
  br label %45, !dbg !1841

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1842

; <label>:9:                                      ; preds = %8
  %10 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1844
  %11 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %10, i32 0, i32 13, !dbg !1846
  %12 = load i8, i8* %11, align 8, !dbg !1846
  %13 = and i8 %12, 1, !dbg !1846
  %14 = zext i8 %13 to i32, !dbg !1846
  %15 = icmp ne i32 %14, 0, !dbg !1844
  br i1 %15, label %16, label %17, !dbg !1847

; <label>:16:                                     ; preds = %9
  br label %45, !dbg !1848

; <label>:17:                                     ; preds = %9
  %18 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1850
  %19 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %18, i32 0, i32 13, !dbg !1851
  %20 = load i8, i8* %19, align 8, !dbg !1852
  %21 = and i8 %20, -2, !dbg !1852
  %22 = or i8 %21, 1, !dbg !1852
  store i8 %22, i8* %19, align 8, !dbg !1852
  %23 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1853
  %24 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %23, i32 0, i32 12, !dbg !1854
  %25 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %24, align 8, !dbg !1854
  %26 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %25, i32 0, i32 12, !dbg !1855
  store %struct.EXEC_WI_REC* null, %struct.EXEC_WI_REC** %26, align 8, !dbg !1856
  %27 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1857
  %28 = bitcast %struct.EXEC_WI_REC* %27 to %struct._WI_ITEM_REC*, !dbg !1859
  %29 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %28, i32 0, i32 3, !dbg !1859
  %30 = load i8*, i8** %29, align 8, !dbg !1859
  %31 = bitcast i8* %30 to %struct._WINDOW_REC*, !dbg !1860
  %32 = icmp ne %struct._WINDOW_REC* %31, null, !dbg !1861
  br i1 %32, label %33, label %36, !dbg !1862

; <label>:33:                                     ; preds = %17
  %34 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1863
  %35 = bitcast %struct.EXEC_WI_REC* %34 to %struct._WI_ITEM_REC*, !dbg !1864
  call void @window_item_destroy(%struct._WI_ITEM_REC* %35), !dbg !1865
  br label %36, !dbg !1865

; <label>:36:                                     ; preds = %33, %17
  %37 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1866
  %38 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %37, i32 0, i32 2, !dbg !1867
  %39 = load %struct._GHashTable*, %struct._GHashTable** %38, align 8, !dbg !1867
  call void @g_hash_table_destroy(%struct._GHashTable* %39), !dbg !1868
  %40 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1869
  %41 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %40, i32 0, i32 5, !dbg !1870
  %42 = load i8*, i8** %41, align 8, !dbg !1870
  call void @g_free(i8* %42), !dbg !1871
  %43 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %2, align 8, !dbg !1872
  %44 = bitcast %struct.EXEC_WI_REC* %43 to i8*, !dbg !1872
  call void @g_free(i8* %44), !dbg !1873
  br label %45, !dbg !1874

; <label>:45:                                     ; preds = %36, %16, %7
  ret void, !dbg !1875
}

; Function Attrs: nounwind uwtable
define internal %struct.EXEC_WI_REC* @exec_wi_create(%struct._WINDOW_REC*, %struct.PROCESS_REC*) #0 !dbg !1877 {
  %3 = alloca %struct.EXEC_WI_REC*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca %struct.PROCESS_REC*, align 8
  %6 = alloca %struct.EXEC_WI_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1880, metadata !682), !dbg !1881
  store %struct.PROCESS_REC* %1, %struct.PROCESS_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %5, metadata !1882, metadata !682), !dbg !1883
  call void @llvm.dbg.declare(metadata %struct.EXEC_WI_REC** %6, metadata !1884, metadata !682), !dbg !1885
  br label %7, !dbg !1886, !llvm.loop !1887

; <label>:7:                                      ; preds = %2
  %8 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1888
  %9 = icmp ne %struct._WINDOW_REC* %8, null, !dbg !1892
  br i1 %9, label %10, label %11, !dbg !1888

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1893

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.exec_wi_create, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0)), !dbg !1896
  store %struct.EXEC_WI_REC* null, %struct.EXEC_WI_REC** %3, align 8, !dbg !1899
  br label %61, !dbg !1899

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1900

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1902, !llvm.loop !1903

; <label>:14:                                     ; preds = %13
  %15 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1904
  %16 = icmp ne %struct.PROCESS_REC* %15, null, !dbg !1908
  br i1 %16, label %17, label %18, !dbg !1904

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1909

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.exec_wi_create, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !1912
  store %struct.EXEC_WI_REC* null, %struct.EXEC_WI_REC** %3, align 8, !dbg !1915
  br label %61, !dbg !1915

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1916

; <label>:20:                                     ; preds = %19
  %21 = call noalias i8* @g_malloc0_n(i64 1, i64 104), !dbg !1918
  %22 = bitcast i8* %21 to %struct.EXEC_WI_REC*, !dbg !1919
  store %struct.EXEC_WI_REC* %22, %struct.EXEC_WI_REC** %6, align 8, !dbg !1920
  %23 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)), !dbg !1921
  %24 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1922
  %25 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %24, i32 0, i32 0, !dbg !1923
  store i32 %23, i32* %25, align 8, !dbg !1924
  %26 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1925
  %27 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %26, i32 0, i32 10, !dbg !1926
  store void (%struct._WI_ITEM_REC*)* bitcast (void (%struct.EXEC_WI_REC*)* @exec_wi_destroy to void (%struct._WI_ITEM_REC*)*), void (%struct._WI_ITEM_REC*)** %27, align 8, !dbg !1927
  %28 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1928
  %29 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %28, i32 0, i32 11, !dbg !1929
  store i8* (%struct._WI_ITEM_REC*)* @exec_get_target, i8* (%struct._WI_ITEM_REC*)** %29, align 8, !dbg !1930
  %30 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1931
  %31 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %30, i32 0, i32 1, !dbg !1932
  %32 = load i8*, i8** %31, align 8, !dbg !1932
  %33 = icmp ne i8* %32, null, !dbg !1933
  br i1 %33, label %34, label %39, !dbg !1931

; <label>:34:                                     ; preds = %20
  %35 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1934
  %36 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %35, i32 0, i32 1, !dbg !1936
  %37 = load i8*, i8** %36, align 8, !dbg !1936
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !1937
  br label %44, !dbg !1938

; <label>:39:                                     ; preds = %20
  %40 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1939
  %41 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %40, i32 0, i32 0, !dbg !1940
  %42 = load i32, i32* %41, align 8, !dbg !1940
  %43 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 %42), !dbg !1941
  br label %44, !dbg !1942

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i8* [ %38, %34 ], [ %43, %39 ], !dbg !1944
  %46 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1946
  %47 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %46, i32 0, i32 5, !dbg !1947
  store i8* %45, i8** %47, align 8, !dbg !1948
  %48 = call i64 @time(i64* null) #9, !dbg !1949
  %49 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1950
  %50 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %49, i32 0, i32 7, !dbg !1951
  store i64 %48, i64* %50, align 8, !dbg !1952
  %51 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !1953
  %52 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1954
  %53 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %52, i32 0, i32 12, !dbg !1955
  store %struct.PROCESS_REC* %51, %struct.PROCESS_REC** %53, align 8, !dbg !1956
  %54 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1957
  %55 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1958
  %56 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %55, i32 0, i32 2, !dbg !1959
  store %struct._GHashTable* %54, %struct._GHashTable** %56, align 8, !dbg !1960
  %57 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1961
  %58 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1962
  %59 = bitcast %struct.EXEC_WI_REC* %58 to %struct._WI_ITEM_REC*, !dbg !1963
  call void @window_item_add(%struct._WINDOW_REC* %57, %struct._WI_ITEM_REC* %59, i32 0), !dbg !1964
  %60 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %6, align 8, !dbg !1965
  store %struct.EXEC_WI_REC* %60, %struct.EXEC_WI_REC** %3, align 8, !dbg !1966
  br label %61, !dbg !1966

; <label>:61:                                     ; preds = %44, %18, %11
  %62 = load %struct.EXEC_WI_REC*, %struct.EXEC_WI_REC** %3, align 8, !dbg !1967
  ret %struct.EXEC_WI_REC* %62, !dbg !1967
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @process_exec(%struct.PROCESS_REC*, i8*) #0 !dbg !1968 {
  %3 = alloca %struct.PROCESS_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca i8**, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._GIOChannel*, align 8
  store %struct.PROCESS_REC* %0, %struct.PROCESS_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %3, metadata !1969, metadata !682), !dbg !1970
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1971, metadata !682), !dbg !1972
  call void @llvm.dbg.declare(metadata [4 x i8*]* %5, metadata !1973, metadata !682), !dbg !1975
  %11 = bitcast [4 x i8*]* %5 to i8*, !dbg !1975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([4 x i8*]* @process_exec.shell_args to i8*), i64 32, i32 16, i1 false), !dbg !1975
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1976, metadata !682), !dbg !1977
  call void @llvm.dbg.declare(metadata [2 x i32]* %7, metadata !1978, metadata !682), !dbg !1980
  call void @llvm.dbg.declare(metadata [2 x i32]* %8, metadata !1981, metadata !682), !dbg !1982
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1983, metadata !682), !dbg !1984
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i32 0, i32 0, !dbg !1985
  %13 = call i32 @pipe(i32* %12) #9, !dbg !1987
  %14 = icmp eq i32 %13, -1, !dbg !1988
  br i1 %14, label %15, label %16, !dbg !1989

; <label>:15:                                     ; preds = %2
  br label %138, !dbg !1990

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0, !dbg !1991
  %18 = call i32 @pipe(i32* %17) #9, !dbg !1993
  %19 = icmp eq i32 %18, -1, !dbg !1994
  br i1 %19, label %20, label %21, !dbg !1995

; <label>:20:                                     ; preds = %16
  br label %138, !dbg !1996

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %4, align 8, !dbg !1997
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 2, !dbg !1998
  store i8* %22, i8** %23, align 16, !dbg !1999
  %24 = call i32 @fork() #9, !dbg !2000
  %25 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2001
  %26 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %25, i32 0, i32 3, !dbg !2002
  store i32 %24, i32* %26, align 8, !dbg !2003
  %27 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2004
  %28 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %27, i32 0, i32 3, !dbg !2006
  %29 = load i32, i32* %28, align 8, !dbg !2006
  %30 = icmp eq i32 %29, -1, !dbg !2007
  br i1 %30, label %31, label %44, !dbg !2008

; <label>:31:                                     ; preds = %21
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !2009
  %33 = load i32, i32* %32, align 4, !dbg !2009
  %34 = call i32 @close(i32 %33), !dbg !2011
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1, !dbg !2012
  %36 = load i32, i32* %35, align 4, !dbg !2012
  %37 = call i32 @close(i32 %36), !dbg !2013
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2015
  %39 = load i32, i32* %38, align 4, !dbg !2015
  %40 = call i32 @close(i32 %39), !dbg !2016
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2017
  %42 = load i32, i32* %41, align 4, !dbg !2017
  %43 = call i32 @close(i32 %42), !dbg !2018
  br label %138, !dbg !2019

; <label>:44:                                     ; preds = %21
  %45 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2020
  %46 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %45, i32 0, i32 3, !dbg !2022
  %47 = load i32, i32* %46, align 8, !dbg !2022
  %48 = icmp ne i32 %47, 0, !dbg !2023
  br i1 %48, label %49, label %71, !dbg !2024

; <label>:49:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %10, metadata !2025, metadata !682), !dbg !2027
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1, !dbg !2028
  %51 = load i32, i32* %50, align 4, !dbg !2028
  %52 = call %struct._GIOChannel* @g_io_channel_new(i32 %51), !dbg !2029
  store %struct._GIOChannel* %52, %struct._GIOChannel** %10, align 8, !dbg !2027
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !2030
  %54 = load i32, i32* %53, align 4, !dbg !2030
  %55 = call %struct._GIOChannel* @g_io_channel_new(i32 %54), !dbg !2031
  %56 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2032
  %57 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %56, i32 0, i32 4, !dbg !2033
  store %struct._GIOChannel* %55, %struct._GIOChannel** %57, align 8, !dbg !2034
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %10, align 8, !dbg !2035
  %59 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %58, i32 0), !dbg !2036
  %60 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2037
  %61 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %60, i32 0, i32 5, !dbg !2038
  store %struct._NET_SENDBUF_REC* %59, %struct._NET_SENDBUF_REC** %61, align 8, !dbg !2039
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2040
  %63 = load i32, i32* %62, align 4, !dbg !2040
  %64 = call i32 @close(i32 %63), !dbg !2041
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !2042
  %66 = load i32, i32* %65, align 4, !dbg !2042
  %67 = call i32 @close(i32 %66), !dbg !2043
  %68 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2044
  %69 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %68, i32 0, i32 3, !dbg !2045
  %70 = load i32, i32* %69, align 8, !dbg !2045
  call void @pidwait_add(i32 %70), !dbg !2046
  br label %138, !dbg !2047

; <label>:71:                                     ; preds = %44
  %72 = call i32 @setsid() #9, !dbg !2048
  %73 = call i32 @getuid() #9, !dbg !2049
  %74 = call i32 @setuid(i32 %73) #9, !dbg !2051
  %75 = icmp ne i32 %74, 0, !dbg !2053
  br i1 %75, label %76, label %77, !dbg !2054

; <label>:76:                                     ; preds = %71
  call void @_exit(i32 1) #10, !dbg !2055
  unreachable, !dbg !2055

; <label>:77:                                     ; preds = %71
  %78 = call i32 @getgid() #9, !dbg !2056
  %79 = call i32 @setgid(i32 %78) #9, !dbg !2058
  %80 = icmp ne i32 %79, 0, !dbg !2060
  br i1 %80, label %81, label %82, !dbg !2061

; <label>:81:                                     ; preds = %77
  call void @_exit(i32 1) #10, !dbg !2062
  unreachable, !dbg !2062

; <label>:82:                                     ; preds = %77
  %83 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #9, !dbg !2063
  %84 = call void (i32)* @signal(i32 3, void (i32)* null) #9, !dbg !2064
  %85 = call i32 @putenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0)) #9, !dbg !2065
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !2066
  %87 = load i32, i32* %86, align 4, !dbg !2066
  %88 = call i32 @dup2(i32 %87, i32 0) #9, !dbg !2067
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2068
  %90 = load i32, i32* %89, align 4, !dbg !2068
  %91 = call i32 @dup2(i32 %90, i32 1) #9, !dbg !2069
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !2070
  %93 = load i32, i32* %92, align 4, !dbg !2070
  %94 = call i32 @dup2(i32 %93, i32 2) #9, !dbg !2071
  store i32 3, i32* %9, align 4, !dbg !2072
  br label %95, !dbg !2074

; <label>:95:                                     ; preds = %101, %82
  %96 = load i32, i32* %9, align 4, !dbg !2075
  %97 = icmp slt i32 %96, 256, !dbg !2078
  br i1 %97, label %98, label %104, !dbg !2079

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* %9, align 4, !dbg !2080
  %100 = call i32 @close(i32 %99), !dbg !2081
  br label %101, !dbg !2081

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %9, align 4, !dbg !2082
  %103 = add nsw i32 %102, 1, !dbg !2082
  store i32 %103, i32* %9, align 4, !dbg !2082
  br label %95, !dbg !2084, !llvm.loop !2085

; <label>:104:                                    ; preds = %95
  %105 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2087
  %106 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %105, i32 0, i32 13, !dbg !2089
  %107 = load i8, i8* %106, align 8, !dbg !2089
  %108 = and i8 %107, 1, !dbg !2089
  %109 = zext i8 %108 to i32, !dbg !2089
  %110 = icmp ne i32 %109, 0, !dbg !2087
  br i1 %110, label %111, label %121, !dbg !2090

; <label>:111:                                    ; preds = %104
  %112 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0, !dbg !2091
  %113 = load i8*, i8** %112, align 16, !dbg !2091
  %114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i32 0, i32 0, !dbg !2093
  %115 = call i32 @execvp(i8* %113, i8** %114) #9, !dbg !2094
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2095
  %117 = call i32* @__errno_location() #2, !dbg !2096
  %118 = load i32, i32* %117, align 4, !dbg !2097
  %119 = call i8* @g_strerror(i32 %118) #2, !dbg !2098
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* %119), !dbg !2100
  br label %137, !dbg !2102

; <label>:121:                                    ; preds = %104
  %122 = load i8*, i8** %4, align 8, !dbg !2103
  %123 = call noalias i8** @g_strsplit(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i32 -1), !dbg !2105
  store i8** %123, i8*** %6, align 8, !dbg !2106
  %124 = load i8**, i8*** %6, align 8, !dbg !2107
  %125 = getelementptr inbounds i8*, i8** %124, i64 0, !dbg !2107
  %126 = load i8*, i8** %125, align 8, !dbg !2107
  %127 = load i8**, i8*** %6, align 8, !dbg !2108
  %128 = call i32 @execvp(i8* %126, i8** %127) #9, !dbg !2109
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2110
  %130 = load i8**, i8*** %6, align 8, !dbg !2111
  %131 = getelementptr inbounds i8*, i8** %130, i64 0, !dbg !2111
  %132 = load i8*, i8** %131, align 8, !dbg !2111
  %133 = call i32* @__errno_location() #2, !dbg !2112
  %134 = load i32, i32* %133, align 4, !dbg !2113
  %135 = call i8* @g_strerror(i32 %134) #2, !dbg !2114
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* %132, i8* %135), !dbg !2116
  br label %137

; <label>:137:                                    ; preds = %121, %111
  call void @_exit(i32 -1) #10, !dbg !2118
  unreachable, !dbg !2118

; <label>:138:                                    ; preds = %49, %31, %20, %15
  ret void, !dbg !2119
}

; Function Attrs: nounwind uwtable
define internal i32 @process_get_new_id() #0 !dbg !2120 {
  %1 = alloca %struct.PROCESS_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %1, metadata !2123, metadata !682), !dbg !2124
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !2125, metadata !682), !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2127, metadata !682), !dbg !2128
  store i32 0, i32* %3, align 4, !dbg !2129
  %4 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !2130
  store %struct._GSList* %4, %struct._GSList** %2, align 8, !dbg !2131
  br label %5, !dbg !2132

; <label>:5:                                      ; preds = %22, %18, %0
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !2133
  %7 = icmp ne %struct._GSList* %6, null, !dbg !2135
  br i1 %7, label %8, label %26, !dbg !2136

; <label>:8:                                      ; preds = %5
  %9 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !2137
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !2139
  %11 = load i8*, i8** %10, align 8, !dbg !2139
  %12 = bitcast i8* %11 to %struct.PROCESS_REC*, !dbg !2137
  store %struct.PROCESS_REC* %12, %struct.PROCESS_REC** %1, align 8, !dbg !2140
  %13 = load i32, i32* %3, align 4, !dbg !2141
  %14 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %1, align 8, !dbg !2143
  %15 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %14, i32 0, i32 0, !dbg !2144
  %16 = load i32, i32* %15, align 8, !dbg !2144
  %17 = icmp ne i32 %13, %16, !dbg !2145
  br i1 %17, label %18, label %22, !dbg !2146

; <label>:18:                                     ; preds = %8
  %19 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !2147
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !2149
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2149
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !2150
  br label %5, !dbg !2151, !llvm.loop !2152

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* %3, align 4, !dbg !2153
  %24 = add nsw i32 %23, 1, !dbg !2153
  store i32 %24, i32* %3, align 4, !dbg !2153
  %25 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !2154
  store %struct._GSList* %25, %struct._GSList** %2, align 8, !dbg !2155
  br label %5, !dbg !2156, !llvm.loop !2152

; <label>:26:                                     ; preds = %5
  %27 = load i32, i32* %3, align 4, !dbg !2158
  ret i32 %27, !dbg !2159
}

declare i32 @level2bits(i8*, i32*) #1

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_exec_input_reader(%struct.PROCESS_REC*) #0 !dbg !2160 {
  %2 = alloca %struct.PROCESS_REC*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.PROCESS_REC* %0, %struct.PROCESS_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %2, metadata !2163, metadata !682), !dbg !2164
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !2165, metadata !682), !dbg !2169
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2170, metadata !682), !dbg !2171
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2172, metadata !682), !dbg !2173
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2174, metadata !682), !dbg !2175
  br label %7, !dbg !2176, !llvm.loop !2177

; <label>:7:                                      ; preds = %1
  %8 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2178
  %9 = icmp ne %struct.PROCESS_REC* %8, null, !dbg !2182
  br i1 %9, label %10, label %11, !dbg !2178

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2183

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_exec_input_reader, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !2186
  br label %50, !dbg !2189

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2190

; <label>:13:                                     ; preds = %12
  %14 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2192
  %15 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %14, i32 0, i32 4, !dbg !2193
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %15, align 8, !dbg !2193
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i32 0, i32 0, !dbg !2194
  %18 = call i32 @net_receive(%struct._GIOChannel* %16, i8* %17, i32 512), !dbg !2195
  store i32 %18, i32* %5, align 4, !dbg !2196
  br label %19, !dbg !2197, !llvm.loop !2198

; <label>:19:                                     ; preds = %47, %13
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i32 0, i32 0, !dbg !2199
  %21 = load i32, i32* %5, align 4, !dbg !2201
  %22 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2202
  %23 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %22, i32 0, i32 6, !dbg !2203
  %24 = call i32 @line_split(i8* %20, i32 %21, i8** %4, %struct._LINEBUF_REC** %23), !dbg !2204
  store i32 %24, i32* %6, align 4, !dbg !2205
  %25 = load i32, i32* %6, align 4, !dbg !2206
  %26 = icmp eq i32 %25, -1, !dbg !2208
  br i1 %26, label %27, label %34, !dbg !2209

; <label>:27:                                     ; preds = %19
  %28 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2210
  %29 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %28, i32 0, i32 7, !dbg !2212
  %30 = load i32, i32* %29, align 8, !dbg !2212
  %31 = call i32 @g_source_remove(i32 %30), !dbg !2213
  %32 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2214
  %33 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %32, i32 0, i32 7, !dbg !2215
  store i32 -1, i32* %33, align 8, !dbg !2216
  br label %50, !dbg !2217

; <label>:34:                                     ; preds = %19
  %35 = load i32, i32* %6, align 4, !dbg !2218
  %36 = icmp sgt i32 %35, 0, !dbg !2220
  br i1 %36, label %37, label %46, !dbg !2221

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* @signal_exec_input, align 4, !dbg !2222
  %39 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2224
  %40 = load i8*, i8** %4, align 8, !dbg !2225
  %41 = call i32 (i32, i32, ...) @signal_emit_id(i32 %38, i32 2, %struct.PROCESS_REC* %39, i8* %40), !dbg !2226
  %42 = load i32, i32* %5, align 4, !dbg !2227
  %43 = icmp sgt i32 %42, 0, !dbg !2229
  br i1 %43, label %44, label %45, !dbg !2230

; <label>:44:                                     ; preds = %37
  store i32 0, i32* %5, align 4, !dbg !2231
  br label %45, !dbg !2233

; <label>:45:                                     ; preds = %44, %37
  br label %46, !dbg !2234

; <label>:46:                                     ; preds = %45, %34
  br label %47, !dbg !2235

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %6, align 4, !dbg !2236
  %49 = icmp sgt i32 %48, 0, !dbg !2238
  br i1 %49, label %19, label %50, !dbg !2239, !llvm.loop !2198

; <label>:50:                                     ; preds = %11, %47, %27
  ret void, !dbg !2240
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare %struct._GList* @optlist_remove_known(i8*, %struct._GHashTable*) #1

declare i32 @is_numeric(i8*, i8 signext) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @signal_name_to_id(i8*) #0 !dbg !2241 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2244, metadata !682), !dbg !2245
  %4 = load i8*, i8** %3, align 8, !dbg !2246
  %5 = call i32 @g_ascii_strcasecmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)), !dbg !2248
  %6 = icmp eq i32 %5, 0, !dbg !2249
  br i1 %6, label %7, label %8, !dbg !2250

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !2251
  br label %34, !dbg !2251

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !2252
  %10 = call i32 @g_ascii_strcasecmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)), !dbg !2254
  %11 = icmp eq i32 %10, 0, !dbg !2255
  br i1 %11, label %12, label %13, !dbg !2256

; <label>:12:                                     ; preds = %8
  store i32 2, i32* %2, align 4, !dbg !2257
  br label %34, !dbg !2257

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !2258
  %15 = call i32 @g_ascii_strcasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)), !dbg !2260
  %16 = icmp eq i32 %15, 0, !dbg !2261
  br i1 %16, label %17, label %18, !dbg !2262

; <label>:17:                                     ; preds = %13
  store i32 15, i32* %2, align 4, !dbg !2263
  br label %34, !dbg !2263

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !2264
  %20 = call i32 @g_ascii_strcasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)), !dbg !2266
  %21 = icmp eq i32 %20, 0, !dbg !2267
  br i1 %21, label %22, label %23, !dbg !2268

; <label>:22:                                     ; preds = %18
  store i32 9, i32* %2, align 4, !dbg !2269
  br label %34, !dbg !2269

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %3, align 8, !dbg !2270
  %25 = call i32 @g_ascii_strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)), !dbg !2272
  %26 = icmp eq i32 %25, 0, !dbg !2273
  br i1 %26, label %27, label %28, !dbg !2274

; <label>:27:                                     ; preds = %23
  store i32 10, i32* %2, align 4, !dbg !2275
  br label %34, !dbg !2275

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8, !dbg !2276
  %30 = call i32 @g_ascii_strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)), !dbg !2278
  %31 = icmp eq i32 %30, 0, !dbg !2279
  br i1 %31, label %32, label %33, !dbg !2280

; <label>:32:                                     ; preds = %28
  store i32 12, i32* %2, align 4, !dbg !2281
  br label %34, !dbg !2281

; <label>:33:                                     ; preds = %28
  store i32 -1, i32* %2, align 4, !dbg !2282
  br label %34, !dbg !2282

; <label>:34:                                     ; preds = %33, %32, %27, %22, %17, %12, %7
  %35 = load i32, i32* %2, align 4, !dbg !2283
  ret i32 %35, !dbg !2283
}

declare void @g_list_free(%struct._GList*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.PROCESS_REC* @process_find_id(i32, i32) #0 !dbg !2284 {
  %3 = alloca %struct.PROCESS_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.PROCESS_REC*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2287, metadata !682), !dbg !2288
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2289, metadata !682), !dbg !2290
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2291, metadata !682), !dbg !2292
  br label %8, !dbg !2293, !llvm.loop !2294

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !2295
  %10 = icmp ne i32 %9, -1, !dbg !2299
  br i1 %10, label %11, label %12, !dbg !2295

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2300

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_find_id, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)), !dbg !2303
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %3, align 8, !dbg !2306
  br label %42, !dbg !2306

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2307

; <label>:14:                                     ; preds = %13
  %15 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !2309
  store %struct._GSList* %15, %struct._GSList** %6, align 8, !dbg !2311
  br label %16, !dbg !2312

; <label>:16:                                     ; preds = %32, %14
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2313
  %18 = icmp ne %struct._GSList* %17, null, !dbg !2316
  br i1 %18, label %19, label %36, !dbg !2317

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %7, metadata !2318, metadata !682), !dbg !2320
  %20 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2321
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !2322
  %22 = load i8*, i8** %21, align 8, !dbg !2322
  %23 = bitcast i8* %22 to %struct.PROCESS_REC*, !dbg !2321
  store %struct.PROCESS_REC* %23, %struct.PROCESS_REC** %7, align 8, !dbg !2320
  %24 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %7, align 8, !dbg !2323
  %25 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %24, i32 0, i32 0, !dbg !2325
  %26 = load i32, i32* %25, align 8, !dbg !2325
  %27 = load i32, i32* %4, align 4, !dbg !2326
  %28 = icmp eq i32 %26, %27, !dbg !2327
  br i1 %28, label %29, label %31, !dbg !2328

; <label>:29:                                     ; preds = %19
  %30 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %7, align 8, !dbg !2329
  store %struct.PROCESS_REC* %30, %struct.PROCESS_REC** %3, align 8, !dbg !2330
  br label %42, !dbg !2330

; <label>:31:                                     ; preds = %19
  br label %32, !dbg !2331

; <label>:32:                                     ; preds = %31
  %33 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2332
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !2334
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !2334
  store %struct._GSList* %35, %struct._GSList** %6, align 8, !dbg !2335
  br label %16, !dbg !2336, !llvm.loop !2337

; <label>:36:                                     ; preds = %16
  %37 = load i32, i32* %5, align 4, !dbg !2339
  %38 = icmp ne i32 %37, 0, !dbg !2339
  br i1 %38, label %39, label %41, !dbg !2341

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %4, align 4, !dbg !2342
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), i32 %40), !dbg !2344
  br label %41, !dbg !2345

; <label>:41:                                     ; preds = %39, %36
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %3, align 8, !dbg !2346
  br label %42, !dbg !2346

; <label>:42:                                     ; preds = %41, %29, %12
  %43 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %3, align 8, !dbg !2347
  ret %struct.PROCESS_REC* %43, !dbg !2347
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @window_item_destroy(%struct._WI_ITEM_REC*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define internal i8* @exec_get_target(%struct._WI_ITEM_REC*) #0 !dbg !2348 {
  %2 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %2, metadata !2349, metadata !682), !dbg !2350
  %3 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %2, align 8, !dbg !2351
  %4 = bitcast %struct._WI_ITEM_REC* %3 to %struct.EXEC_WI_REC*, !dbg !2352
  %5 = getelementptr inbounds %struct.EXEC_WI_REC, %struct.EXEC_WI_REC* %4, i32 0, i32 5, !dbg !2352
  %6 = load i8*, i8** %5, align 8, !dbg !2352
  ret i8* %6, !dbg !2353
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i32 @pipe(i32*) #4

; Function Attrs: nounwind
declare i32 @fork() #4

declare i32 @close(i32) #1

declare %struct._GIOChannel* @g_io_channel_new(i32) #1

declare %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel*, i32) #1

declare void @pidwait_add(i32) #1

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: noreturn
declare void @_exit(i32) #7

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

; Function Attrs: nounwind
declare i32 @getgid() #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: nounwind
declare i32 @putenv(i8*) #4

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #4

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare i32 @net_receive(%struct._GIOChannel*, i8*, i32) #1

declare i32 @line_split(i8*, i32, i8**, %struct._LINEBUF_REC**) #1

declare i32 @g_source_remove(i32) #1

declare i32 @signal_emit_id(i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.PROCESS_REC* @process_find_pid(i32) #0 !dbg !2354 {
  %2 = alloca %struct.PROCESS_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.PROCESS_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2357, metadata !682), !dbg !2358
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2359, metadata !682), !dbg !2360
  br label %6, !dbg !2361, !llvm.loop !2362

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !2363
  %8 = icmp sgt i32 %7, 0, !dbg !2367
  br i1 %8, label %9, label %10, !dbg !2363

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2368

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_find_pid, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)), !dbg !2371
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %2, align 8, !dbg !2374
  br label %35, !dbg !2374

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2375

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @processes, align 8, !dbg !2377
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !2379
  br label %14, !dbg !2380

; <label>:14:                                     ; preds = %30, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2381
  %16 = icmp ne %struct._GSList* %15, null, !dbg !2384
  br i1 %16, label %17, label %34, !dbg !2385

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.PROCESS_REC** %5, metadata !2386, metadata !682), !dbg !2388
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2389
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !2390
  %20 = load i8*, i8** %19, align 8, !dbg !2390
  %21 = bitcast i8* %20 to %struct.PROCESS_REC*, !dbg !2389
  store %struct.PROCESS_REC* %21, %struct.PROCESS_REC** %5, align 8, !dbg !2388
  %22 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !2391
  %23 = getelementptr inbounds %struct.PROCESS_REC, %struct.PROCESS_REC* %22, i32 0, i32 3, !dbg !2393
  %24 = load i32, i32* %23, align 8, !dbg !2393
  %25 = load i32, i32* %3, align 4, !dbg !2394
  %26 = icmp eq i32 %24, %25, !dbg !2395
  br i1 %26, label %27, label %29, !dbg !2396

; <label>:27:                                     ; preds = %17
  %28 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %5, align 8, !dbg !2397
  store %struct.PROCESS_REC* %28, %struct.PROCESS_REC** %2, align 8, !dbg !2398
  br label %35, !dbg !2398

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !2399

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2400
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !2402
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !2402
  store %struct._GSList* %33, %struct._GSList** %4, align 8, !dbg !2403
  br label %14, !dbg !2404, !llvm.loop !2405

; <label>:34:                                     ; preds = %14
  store %struct.PROCESS_REC* null, %struct.PROCESS_REC** %2, align 8, !dbg !2407
  br label %35, !dbg !2407

; <label>:35:                                     ; preds = %34, %27, %10
  %36 = load %struct.PROCESS_REC*, %struct.PROCESS_REC** %2, align 8, !dbg !2408
  ret %struct.PROCESS_REC* %36, !dbg !2408
}

; Function Attrs: nounwind readnone
declare i8* @g_strsignal(i32) #5

declare %struct._SERVER_REC* @server_find_tag(i8*) #1

declare %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @printtext_window(%struct._WINDOW_REC*, i32, i8*, ...) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @line_split_free(%struct._LINEBUF_REC*) #1

declare i32 @g_io_channel_shutdown(%struct._GIOChannel*, i32, %struct._GError**) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

declare void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!664, !665}
!llvm.ident = !{!666}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !87, globals: !660)
!1 = !DIFile(filename: "line222-fe-exec.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!36 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 10, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!59 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!60 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!61 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!62 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!63 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!64 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!65 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!66 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!67 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!68 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!69 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!70 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!71 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!72 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!73 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!74 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!75 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!76 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!77 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!78 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!79 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!80 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!81 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!82 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!83 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!84 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!85 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!86 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!87 = !{!88, !95, !96, !100, !102, !103, !105, !106, !478, !562, !650, !579, !497, !626, !494, !654, !469, !203, !659}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !89, line: 9, baseType: !90)
!89 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !93, !93, !93, !93, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !98, line: 77, baseType: !95)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !98, line: 48, baseType: !104)
!104 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !108, line: 109, baseType: !109)
!108 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !110, line: 15, size: 1408, align: 64, elements: !111)
!110 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !{!112, !115, !116, !121, !122, !529, !530, !531, !532, !533, !534, !535, !536, !538, !539, !540, !541, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !113, line: 3, baseType: !114, size: 32, align: 32)
!113 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!114 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !109, file: !113, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !109, file: !113, line: 5, baseType: !117, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !119, line: 37, baseType: !120)
!119 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !119, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !109, file: !113, line: 7, baseType: !95, size: 64, align: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !109, file: !113, line: 8, baseType: !123, size: 64, align: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !108, line: 107, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !126, line: 30, size: 2240, align: 64, elements: !127)
!126 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !{!128, !130, !131, !132, !386, !391, !392, !393, !394, !395, !396, !397, !398, !399, !416, !417, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !441, !442, !443, !444, !445, !449, !453, !457, !461, !465, !470, !474, !524, !528}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !129, line: 3, baseType: !114, size: 32, align: 32)
!129 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !125, file: !129, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !125, file: !129, line: 6, baseType: !114, size: 32, align: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !125, file: !129, line: 8, baseType: !133, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !108, line: 113, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !126, line: 25, size: 1920, align: 64, elements: !136)
!136 = !{!137, !139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !138, line: 3, baseType: !114, size: 32, align: 32)
!138 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !135, file: !138, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !135, file: !138, line: 6, baseType: !114, size: 32, align: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !135, file: !138, line: 9, baseType: !105, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !135, file: !138, line: 10, baseType: !114, size: 32, align: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !135, file: !138, line: 11, baseType: !105, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !135, file: !138, line: 11, baseType: !105, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !135, file: !138, line: 11, baseType: !105, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !135, file: !138, line: 13, baseType: !147, size: 16, align: 16, offset: 448)
!147 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !135, file: !138, line: 14, baseType: !105, size: 64, align: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !135, file: !138, line: 15, baseType: !105, size: 64, align: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !135, file: !138, line: 16, baseType: !114, size: 32, align: 32, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !135, file: !138, line: 17, baseType: !105, size: 64, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !135, file: !138, line: 19, baseType: !153, size: 64, align: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !108, line: 99, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !156, line: 22, size: 160, align: 32, elements: !157)
!156 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !155, file: !156, line: 23, baseType: !147, size: 16, align: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !155, file: !156, line: 24, baseType: !160, size: 128, align: 32, offset: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !161, line: 211, size: 128, align: 32, elements: !162)
!161 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !160, file: !161, line: 220, baseType: !164, size: 128, align: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !161, line: 213, size: 128, align: 32, elements: !165)
!165 = !{!166, !173, !178}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !164, file: !161, line: 215, baseType: !167, size: 128, align: 8)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, align: 8, elements: !171)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !169, line: 48, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !164, file: !161, line: 217, baseType: !174, size: 128, align: 16)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, align: 16, elements: !176)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !169, line: 49, baseType: !147)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !164, file: !161, line: 218, baseType: !179, size: 128, align: 32)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, align: 32, elements: !182)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 51, baseType: !181)
!181 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!182 = !{!183}
!183 = !DISubrange(count: 4)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !135, file: !138, line: 19, baseType: !153, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !135, file: !138, line: 21, baseType: !105, size: 64, align: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !135, file: !138, line: 22, baseType: !105, size: 64, align: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !135, file: !138, line: 23, baseType: !105, size: 64, align: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !135, file: !138, line: 24, baseType: !105, size: 64, align: 64, offset: 1088)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !135, file: !138, line: 26, baseType: !105, size: 64, align: 64, offset: 1152)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !135, file: !138, line: 27, baseType: !105, size: 64, align: 64, offset: 1216)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !135, file: !138, line: 28, baseType: !105, size: 64, align: 64, offset: 1280)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !135, file: !138, line: 29, baseType: !105, size: 64, align: 64, offset: 1344)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !135, file: !138, line: 30, baseType: !105, size: 64, align: 64, offset: 1408)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !135, file: !138, line: 31, baseType: !105, size: 64, align: 64, offset: 1472)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !135, file: !138, line: 32, baseType: !105, size: 64, align: 64, offset: 1536)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !135, file: !138, line: 33, baseType: !105, size: 64, align: 64, offset: 1600)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !135, file: !138, line: 35, baseType: !198, size: 64, align: 64, offset: 1664)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !201)
!201 = !{!202, !204, !343, !344, !349, !350, !351, !352, !353, !362, !363, !364, !368, !369, !370, !371, !372, !373, !374, !375}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !200, file: !4, line: 100, baseType: !203, size: 32, align: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !98, line: 49, baseType: !114)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !200, file: !4, line: 101, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !208)
!208 = !{!209, !230, !236, !242, !246, !330, !334, !339}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !207, file: !4, line: 133, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !198, !96, !214, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !215, line: 66, baseType: !216)
!215 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !221, line: 42, baseType: !222)
!221 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !221, line: 44, size: 128, align: 64, elements: !223)
!223 = !{!224, !228, !229}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !222, file: !221, line: 46, baseType: !225, size: 32, align: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !226, line: 36, baseType: !227)
!226 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !215, line: 45, baseType: !181)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !222, file: !221, line: 47, baseType: !203, size: 32, align: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !222, file: !221, line: 48, baseType: !96, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !207, file: !4, line: 138, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!213, !198, !234, !214, !217, !218}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !207, file: !4, line: 143, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!213, !198, !240, !241, !218}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !215, line: 51, baseType: !104)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !207, file: !4, line: 147, baseType: !243, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!213, !198, !218}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !207, file: !4, line: 149, baseType: !247, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !198, !329}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !253)
!253 = !{!254, !255, !276, !305, !307, !311, !312, !313, !314, !322, !323, !324, !325}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !252, file: !16, line: 174, baseType: !102, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !252, file: !16, line: 175, baseType: !256, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !259)
!259 = !{!260, !264, !265}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !258, file: !16, line: 198, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !102}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !258, file: !16, line: 199, baseType: !261, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !258, file: !16, line: 200, baseType: !266, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !102, !250, !269, !275}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !102}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !98, line: 50, baseType: !203)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !252, file: !16, line: 177, baseType: !277, size: 64, align: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !281)
!281 = !{!282, !287, !291, !295, !299, !300}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !280, file: !16, line: 216, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!274, !250, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !280, file: !16, line: 218, baseType: !288, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!274, !250}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !280, file: !16, line: 219, baseType: !292, size: 64, align: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!274, !250, !270, !102}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !280, file: !16, line: 222, baseType: !296, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !250}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !280, file: !16, line: 226, baseType: !270, size: 64, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !280, file: !16, line: 227, baseType: !301, size: 64, align: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !252, file: !16, line: 178, baseType: !306, size: 32, align: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !98, line: 55, baseType: !181)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !252, file: !16, line: 180, baseType: !308, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !310)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !252, file: !16, line: 182, baseType: !203, size: 32, align: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !16, line: 183, baseType: !306, size: 32, align: 32, offset: 352)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !252, file: !16, line: 184, baseType: !306, size: 32, align: 32, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !252, file: !16, line: 186, baseType: !315, size: 64, align: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !317, line: 37, baseType: !318)
!317 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !317, line: 39, size: 128, align: 64, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !318, file: !317, line: 41, baseType: !102, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !317, line: 42, baseType: !315, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !252, file: !16, line: 188, baseType: !250, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !16, line: 189, baseType: !250, size: 64, align: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !16, line: 191, baseType: !105, size: 64, align: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !252, file: !16, line: 193, baseType: !326, size: 64, align: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !207, file: !4, line: 151, baseType: !331, size: 64, align: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !198}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !207, file: !4, line: 152, baseType: !335, size: 64, align: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!213, !198, !338, !218}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !207, file: !4, line: 155, baseType: !340, size: 64, align: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!338, !198}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !200, file: !4, line: 103, baseType: !96, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !200, file: !4, line: 104, baseType: !345, size: 64, align: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !346, line: 77, baseType: !347)
!346 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !346, line: 77, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !200, file: !4, line: 105, baseType: !345, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !200, file: !4, line: 106, baseType: !96, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !200, file: !4, line: 107, baseType: !306, size: 32, align: 32, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !200, file: !4, line: 109, baseType: !214, size: 64, align: 64, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !200, file: !4, line: 110, baseType: !354, size: 64, align: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !356, line: 39, baseType: !357)
!356 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !356, line: 41, size: 192, align: 64, elements: !358)
!358 = !{!359, !360, !361}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !357, file: !356, line: 43, baseType: !96, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !357, file: !356, line: 44, baseType: !214, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !357, file: !356, line: 45, baseType: !214, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !200, file: !4, line: 111, baseType: !354, size: 64, align: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !200, file: !4, line: 112, baseType: !354, size: 64, align: 64, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !200, file: !4, line: 113, baseType: !365, size: 48, align: 8, offset: 704)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 48, align: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 6)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !200, file: !4, line: 117, baseType: !306, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !200, file: !4, line: 118, baseType: !306, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !200, file: !4, line: 119, baseType: !306, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !200, file: !4, line: 120, baseType: !306, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !200, file: !4, line: 121, baseType: !306, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !200, file: !4, line: 122, baseType: !306, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !200, file: !4, line: 124, baseType: !102, size: 64, align: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !200, file: !4, line: 125, baseType: !102, size: 64, align: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !135, file: !138, line: 38, baseType: !181, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !135, file: !138, line: 39, baseType: !181, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !135, file: !138, line: 40, baseType: !181, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !135, file: !138, line: 41, baseType: !181, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !135, file: !138, line: 42, baseType: !181, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !135, file: !138, line: 43, baseType: !181, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !135, file: !138, line: 44, baseType: !181, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !135, file: !138, line: 45, baseType: !181, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !135, file: !138, line: 46, baseType: !105, size: 64, align: 64, offset: 1792)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !135, file: !138, line: 47, baseType: !105, size: 64, align: 64, offset: 1856)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !125, file: !129, line: 9, baseType: !387, size: 64, align: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !388, line: 75, baseType: !389)
!388 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !390, line: 139, baseType: !104)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !125, file: !129, line: 10, baseType: !387, size: 64, align: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !125, file: !129, line: 12, baseType: !105, size: 64, align: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !125, file: !129, line: 13, baseType: !105, size: 64, align: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !125, file: !129, line: 15, baseType: !181, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !125, file: !129, line: 16, baseType: !181, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !125, file: !129, line: 17, baseType: !181, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !125, file: !129, line: 18, baseType: !181, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !125, file: !129, line: 19, baseType: !181, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !125, file: !129, line: 21, baseType: !400, size: 64, align: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !108, line: 102, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !403, line: 7, size: 384, align: 64, elements: !404)
!403 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!404 = !{!405, !406, !410, !411, !412, !413, !414, !415}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !402, file: !403, line: 8, baseType: !198, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !402, file: !403, line: 9, baseType: !407, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !108, line: 101, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !108, line: 101, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !402, file: !403, line: 11, baseType: !114, size: 32, align: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !402, file: !403, line: 12, baseType: !114, size: 32, align: 32, offset: 160)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !402, file: !403, line: 13, baseType: !114, size: 32, align: 32, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !402, file: !403, line: 14, baseType: !105, size: 64, align: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !402, file: !403, line: 15, baseType: !114, size: 32, align: 32, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !402, file: !403, line: 16, baseType: !181, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !125, file: !129, line: 22, baseType: !114, size: 32, align: 32, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !125, file: !129, line: 25, baseType: !418, size: 128, align: 64, offset: 640)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, align: 64, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 2)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !125, file: !129, line: 26, baseType: !114, size: 32, align: 32, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !125, file: !129, line: 27, baseType: !114, size: 32, align: 32, offset: 800)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !125, file: !129, line: 29, baseType: !424, size: 64, align: 64, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !108, line: 103, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !108, line: 103, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !125, file: !129, line: 30, baseType: !117, size: 64, align: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !129, line: 32, baseType: !105, size: 64, align: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !125, file: !129, line: 33, baseType: !105, size: 64, align: 64, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !125, file: !129, line: 34, baseType: !105, size: 64, align: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !125, file: !129, line: 35, baseType: !181, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !125, file: !129, line: 36, baseType: !181, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !125, file: !129, line: 37, baseType: !181, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !125, file: !129, line: 38, baseType: !181, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !125, file: !129, line: 40, baseType: !436, size: 128, align: 64, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !98, line: 504, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !98, line: 506, size: 128, align: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !437, file: !98, line: 508, baseType: !103, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !437, file: !98, line: 509, baseType: !103, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !125, file: !129, line: 41, baseType: !387, size: 64, align: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !125, file: !129, line: 42, baseType: !114, size: 32, align: 32, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !125, file: !129, line: 44, baseType: !315, size: 64, align: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !125, file: !129, line: 45, baseType: !315, size: 64, align: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !125, file: !129, line: 53, baseType: !446, size: 64, align: 64, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !123, !100, !114}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !125, file: !129, line: 55, baseType: !450, size: 64, align: 64, offset: 1664)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!114, !123, !99}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !125, file: !129, line: 57, baseType: !454, size: 64, align: 64, offset: 1728)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!114, !123, !100}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !125, file: !129, line: 60, baseType: !458, size: 64, align: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!100, !123}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !125, file: !129, line: 62, baseType: !462, size: 64, align: 64, offset: 1856)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !123, !100, !100, !114}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !125, file: !129, line: 65, baseType: !466, size: 64, align: 64, offset: 1920)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !123, !100, !100}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !125, file: !129, line: 69, baseType: !471, size: 64, align: 64, offset: 1984)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!106, !123, !100}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !125, file: !129, line: 70, baseType: !475, size: 64, align: 64, offset: 2048)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !123, !100}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !108, line: 110, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !481, line: 15, size: 960, align: 64, elements: !482)
!481 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !517, !518, !520, !521, !522, !523}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !113, line: 3, baseType: !114, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !480, file: !113, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !480, file: !113, line: 5, baseType: !117, size: 64, align: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !480, file: !113, line: 7, baseType: !95, size: 64, align: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !480, file: !113, line: 8, baseType: !123, size: 64, align: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !480, file: !113, line: 9, baseType: !105, size: 64, align: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !113, line: 10, baseType: !105, size: 64, align: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !480, file: !113, line: 11, baseType: !387, size: 64, align: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !480, file: !113, line: 12, baseType: !114, size: 32, align: 32, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !480, file: !113, line: 13, baseType: !105, size: 64, align: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !480, file: !113, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !108, line: 108, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !500, line: 5, size: 704, align: 64, elements: !501)
!500 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !113, line: 3, baseType: !114, size: 32, align: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !499, file: !113, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !499, file: !113, line: 5, baseType: !117, size: 64, align: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !499, file: !113, line: 7, baseType: !95, size: 64, align: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !499, file: !113, line: 8, baseType: !123, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !499, file: !113, line: 9, baseType: !105, size: 64, align: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !113, line: 10, baseType: !105, size: 64, align: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !499, file: !113, line: 11, baseType: !387, size: 64, align: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !499, file: !113, line: 12, baseType: !114, size: 32, align: 32, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !499, file: !113, line: 13, baseType: !105, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !499, file: !113, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !499, file: !113, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!100, !497}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !480, file: !113, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !519, line: 5, baseType: !105, size: 64, align: 64, offset: 704)
!519 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !480, file: !519, line: 6, baseType: !105, size: 64, align: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !480, file: !519, line: 7, baseType: !387, size: 64, align: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !480, file: !519, line: 9, baseType: !181, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !480, file: !519, line: 11, baseType: !181, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !125, file: !129, line: 71, baseType: !525, size: 64, align: 64, offset: 2112)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!114, !100, !100}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !125, file: !129, line: 73, baseType: !525, size: 64, align: 64, offset: 2176)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !109, file: !113, line: 9, baseType: !105, size: 64, align: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !113, line: 10, baseType: !105, size: 64, align: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !109, file: !113, line: 11, baseType: !387, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !109, file: !113, line: 12, baseType: !114, size: 32, align: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !109, file: !113, line: 13, baseType: !105, size: 64, align: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !109, file: !113, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !109, file: !113, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !109, file: !537, line: 5, baseType: !105, size: 64, align: 64, offset: 704)
!537 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !109, file: !537, line: 6, baseType: !105, size: 64, align: 64, offset: 768)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !109, file: !537, line: 7, baseType: !387, size: 64, align: 64, offset: 832)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !109, file: !537, line: 9, baseType: !117, size: 64, align: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !109, file: !537, line: 10, baseType: !542, size: 64, align: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !108, line: 111, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !108, line: 111, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !109, file: !537, line: 12, baseType: !181, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !109, file: !537, line: 13, baseType: !105, size: 64, align: 64, offset: 1088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !109, file: !537, line: 14, baseType: !114, size: 32, align: 32, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !109, file: !537, line: 15, baseType: !105, size: 64, align: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !109, file: !537, line: 17, baseType: !181, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !109, file: !537, line: 18, baseType: !181, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !109, file: !537, line: 19, baseType: !181, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !109, file: !537, line: 20, baseType: !181, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !109, file: !537, line: 22, baseType: !181, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !109, file: !537, line: 23, baseType: !181, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !109, file: !537, line: 24, baseType: !181, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !109, file: !537, line: 25, baseType: !181, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !109, file: !537, line: 26, baseType: !181, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !109, file: !537, line: 31, baseType: !559, size: 64, align: 64, offset: 1344)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!105, !106}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "PROCESS_REC", file: !564, line: 13, baseType: !565)
!564 = !DIFile(filename: "fe-exec.h", directory: "/home/lichi/Desktop/irssi/task1")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PROCESS_REC", file: !564, line: 22, size: 832, align: 64, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !625, !644, !645, !646, !647, !648, !649}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !565, file: !564, line: 23, baseType: !114, size: 32, align: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !564, line: 24, baseType: !105, size: 64, align: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !565, file: !564, line: 25, baseType: !105, size: 64, align: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !565, file: !564, line: 27, baseType: !114, size: 32, align: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !565, file: !564, line: 28, baseType: !198, size: 64, align: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !565, file: !564, line: 29, baseType: !400, size: 64, align: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !565, file: !564, line: 30, baseType: !407, size: 64, align: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "read_tag", scope: !565, file: !564, line: 31, baseType: !114, size: 32, align: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !565, file: !564, line: 33, baseType: !114, size: 32, align: 32, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !565, file: !564, line: 34, baseType: !105, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "target_server", scope: !565, file: !564, line: 35, baseType: !105, size: 64, align: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "target_win", scope: !565, file: !564, line: 36, baseType: !579, size: 64, align: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !108, line: 117, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !582, line: 28, size: 1280, align: 64, elements: !583)
!582 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !617, !618, !619, !620, !621, !622, !623, !624}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !581, file: !582, line: 29, baseType: !114, size: 32, align: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !581, file: !582, line: 30, baseType: !105, size: 64, align: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !581, file: !582, line: 32, baseType: !114, size: 32, align: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !581, file: !582, line: 32, baseType: !114, size: 32, align: 32, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !581, file: !582, line: 34, baseType: !315, size: 64, align: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !581, file: !582, line: 35, baseType: !497, size: 64, align: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !581, file: !582, line: 36, baseType: !123, size: 64, align: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !581, file: !582, line: 37, baseType: !123, size: 64, align: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !581, file: !582, line: 38, baseType: !105, size: 64, align: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !581, file: !582, line: 40, baseType: !114, size: 32, align: 32, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !581, file: !582, line: 41, baseType: !315, size: 64, align: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !581, file: !582, line: 43, baseType: !181, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !581, file: !582, line: 44, baseType: !181, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !581, file: !582, line: 45, baseType: !181, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !581, file: !582, line: 48, baseType: !599, size: 64, align: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !601, line: 14, baseType: !602)
!601 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 6, size: 256, align: 64, elements: !603)
!603 = !{!604, !605, !614, !615, !616}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !602, file: !601, line: 7, baseType: !105, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !602, file: !601, line: 9, baseType: !606, size: 64, align: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !608, line: 37, baseType: !609)
!608 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !608, line: 39, size: 192, align: 64, elements: !610)
!610 = !{!611, !612, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !609, file: !608, line: 41, baseType: !102, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !609, file: !608, line: 42, baseType: !606, size: 64, align: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !609, file: !608, line: 43, baseType: !606, size: 64, align: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !602, file: !601, line: 10, baseType: !114, size: 32, align: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !602, file: !601, line: 12, baseType: !114, size: 32, align: 32, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !602, file: !601, line: 13, baseType: !114, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !581, file: !582, line: 49, baseType: !105, size: 64, align: 64, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !581, file: !582, line: 51, baseType: !114, size: 32, align: 32, offset: 832)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !581, file: !582, line: 52, baseType: !105, size: 64, align: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !581, file: !582, line: 54, baseType: !387, size: 64, align: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !581, file: !582, line: 55, baseType: !387, size: 64, align: 64, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !581, file: !582, line: 57, baseType: !105, size: 64, align: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !581, file: !582, line: 58, baseType: !95, size: 64, align: 64, offset: 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !581, file: !582, line: 60, baseType: !95, size: 64, align: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "target_item", scope: !565, file: !564, line: 37, baseType: !626, size: 64, align: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXEC_WI_REC", file: !564, line: 20, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 16, size: 832, align: 64, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !113, line: 3, baseType: !114, size: 32, align: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !628, file: !113, line: 4, baseType: !114, size: 32, align: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !628, file: !113, line: 5, baseType: !117, size: 64, align: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !628, file: !113, line: 7, baseType: !95, size: 64, align: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !628, file: !113, line: 8, baseType: !95, size: 64, align: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !628, file: !113, line: 9, baseType: !105, size: 64, align: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !628, file: !113, line: 10, baseType: !105, size: 64, align: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !628, file: !113, line: 11, baseType: !387, size: 64, align: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !628, file: !113, line: 12, baseType: !114, size: 32, align: 32, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !628, file: !113, line: 13, baseType: !105, size: 64, align: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !628, file: !113, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !628, file: !113, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !628, file: !564, line: 18, baseType: !562, size: 64, align: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !628, file: !564, line: 19, baseType: !181, size: 1, align: 32, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "shell", scope: !565, file: !564, line: 39, baseType: !181, size: 1, align: 32, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "notice", scope: !565, file: !564, line: 40, baseType: !181, size: 1, align: 32, offset: 769, flags: DIFlagBitField, extraData: i64 768)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "silent", scope: !565, file: !564, line: 41, baseType: !181, size: 1, align: 32, offset: 770, flags: DIFlagBitField, extraData: i64 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !565, file: !564, line: 42, baseType: !181, size: 1, align: 32, offset: 771, flags: DIFlagBitField, extraData: i64 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "target_channel", scope: !565, file: !564, line: 43, baseType: !181, size: 1, align: 32, offset: 772, flags: DIFlagBitField, extraData: i64 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "target_nick", scope: !565, file: !564, line: 44, baseType: !181, size: 1, align: 32, offset: 773, flags: DIFlagBitField, extraData: i64 768)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !108, line: 60, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !95, !198, !114}
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !655, line: 85, baseType: !656)
!655 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/irssi/task1")
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !114}
!659 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!660 = !{!661, !663}
!661 = distinct !DIGlobalVariable(name: "processes", scope: !0, file: !662, line: 46, type: !315, isLocal: false, isDefinition: true, variable: %struct._GSList** @processes)
!662 = !DIFile(filename: "fe-exec.c", directory: "/home/lichi/Desktop/irssi/task1")
!663 = distinct !DIGlobalVariable(name: "signal_exec_input", scope: !0, file: !662, line: 47, type: !114, isLocal: true, isDefinition: true, variable: i32* @signal_exec_input)
!664 = !{i32 2, !"Dwarf Version", i32 4}
!665 = !{i32 2, !"Debug Info Version", i32 3}
!666 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!667 = distinct !DISubprogram(name: "fe_exec_init", scope: !662, file: !662, line: 652, type: !303, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!668 = !{}
!669 = !DILocation(line: 654, column: 2, scope: !667)
!670 = !DILocation(line: 655, column: 2, scope: !667)
!671 = !DILocation(line: 657, column: 29, scope: !667)
!672 = !DILocation(line: 657, column: 27, scope: !667)
!673 = !DILocation(line: 658, column: 9, scope: !667)
!674 = !DILocation(line: 659, column: 9, scope: !667)
!675 = !DILocation(line: 660, column: 9, scope: !667)
!676 = !DILocation(line: 661, column: 2, scope: !667)
!677 = !DILocation(line: 662, column: 1, scope: !667)
!678 = distinct !DISubprogram(name: "cmd_exec", scope: !662, file: !662, line: 541, type: !679, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !100, !123, !497}
!681 = !DILocalVariable(name: "data", arg: 1, scope: !678, file: !662, line: 541, type: !100)
!682 = !DIExpression()
!683 = !DILocation(line: 541, column: 34, scope: !678)
!684 = !DILocalVariable(name: "server", arg: 2, scope: !678, file: !662, line: 541, type: !123)
!685 = !DILocation(line: 541, column: 52, scope: !678)
!686 = !DILocalVariable(name: "item", arg: 3, scope: !678, file: !662, line: 541, type: !497)
!687 = !DILocation(line: 541, column: 73, scope: !678)
!688 = !DILocalVariable(name: "optlist", scope: !678, file: !662, line: 543, type: !117)
!689 = !DILocation(line: 543, column: 14, scope: !678)
!690 = !DILocalVariable(name: "args", scope: !678, file: !662, line: 544, type: !105)
!691 = !DILocation(line: 544, column: 15, scope: !678)
!692 = !DILocalVariable(name: "free_arg", scope: !678, file: !662, line: 545, type: !95)
!693 = !DILocation(line: 545, column: 8, scope: !678)
!694 = !DILocation(line: 547, column: 2, scope: !678)
!695 = distinct !{!695, !694}
!696 = !DILocation(line: 547, column: 10, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !662, discriminator: 1)
!698 = distinct !DILexicalBlock(scope: !699, file: !662, line: 547, column: 10)
!699 = distinct !DILexicalBlock(scope: !678, file: !662, line: 547, column: 4)
!700 = !DILocation(line: 547, column: 15, scope: !697)
!701 = !DILocation(line: 547, column: 5, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !662, discriminator: 2)
!703 = distinct !DILexicalBlock(scope: !698, file: !662, line: 547, column: 3)
!704 = !DILocation(line: 547, column: 14, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !662, discriminator: 3)
!706 = distinct !DILexicalBlock(scope: !698, file: !662, line: 547, column: 12)
!707 = !DILocation(line: 547, column: 99, scope: !705)
!708 = !DILocation(line: 547, column: 110, scope: !709)
!709 = !DILexicalBlockFile(scope: !699, file: !662, discriminator: 4)
!710 = !DILocation(line: 549, column: 21, scope: !711)
!711 = distinct !DILexicalBlock(scope: !678, file: !662, line: 549, column: 6)
!712 = !DILocation(line: 549, column: 6, scope: !711)
!713 = !DILocation(line: 549, column: 6, scope: !678)
!714 = !DILocation(line: 552, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !662, line: 551, column: 33)
!716 = !DILocation(line: 552, column: 21, scope: !715)
!717 = !DILocation(line: 552, column: 30, scope: !715)
!718 = !DILocation(line: 552, column: 38, scope: !715)
!719 = !DILocation(line: 552, column: 3, scope: !715)
!720 = !DILocation(line: 553, column: 19, scope: !715)
!721 = !DILocation(line: 553, column: 3, scope: !715)
!722 = !DILocation(line: 554, column: 2, scope: !715)
!723 = !DILocation(line: 555, column: 1, scope: !678)
!724 = distinct !DISubprogram(name: "sig_pidwait", scope: !662, file: !662, line: 557, type: !725, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !95, !95}
!727 = !DILocalVariable(name: "pid", arg: 1, scope: !724, file: !662, line: 557, type: !95)
!728 = !DILocation(line: 557, column: 31, scope: !724)
!729 = !DILocalVariable(name: "statusp", arg: 2, scope: !724, file: !662, line: 557, type: !95)
!730 = !DILocation(line: 557, column: 42, scope: !724)
!731 = !DILocalVariable(name: "rec", scope: !724, file: !662, line: 559, type: !562)
!732 = !DILocation(line: 559, column: 15, scope: !724)
!733 = !DILocalVariable(name: "str", scope: !724, file: !662, line: 560, type: !105)
!734 = !DILocation(line: 560, column: 15, scope: !724)
!735 = !DILocalVariable(name: "status", scope: !724, file: !662, line: 561, type: !114)
!736 = !DILocation(line: 561, column: 6, scope: !724)
!737 = !DILocation(line: 561, column: 32, scope: !724)
!738 = !DILocation(line: 561, column: 23, scope: !724)
!739 = !DILocation(line: 561, column: 16, scope: !724)
!740 = !DILocation(line: 563, column: 49, scope: !724)
!741 = !DILocation(line: 563, column: 40, scope: !724)
!742 = !DILocation(line: 563, column: 33, scope: !724)
!743 = !DILocation(line: 563, column: 15, scope: !724)
!744 = !DILocation(line: 563, column: 13, scope: !724)
!745 = !DILocation(line: 564, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !724, file: !662, line: 564, column: 6)
!747 = !DILocation(line: 564, column: 10, scope: !746)
!748 = !DILocation(line: 564, column: 6, scope: !724)
!749 = !DILocation(line: 564, column: 18, scope: !750)
!750 = !DILexicalBlockFile(scope: !746, file: !662, discriminator: 1)
!751 = !DILocation(line: 568, column: 33, scope: !752)
!752 = distinct !DILexicalBlock(scope: !724, file: !662, line: 568, column: 6)
!753 = !DILocation(line: 568, column: 38, scope: !752)
!754 = !DILocation(line: 568, column: 6, scope: !752)
!755 = !DILocation(line: 568, column: 47, scope: !752)
!756 = !DILocation(line: 568, column: 51, scope: !752)
!757 = !DILocation(line: 568, column: 55, scope: !758)
!758 = !DILexicalBlockFile(scope: !752, file: !662, discriminator: 1)
!759 = !DILocation(line: 568, column: 54, scope: !758)
!760 = !DILocation(line: 568, column: 59, scope: !758)
!761 = !DILocation(line: 568, column: 6, scope: !758)
!762 = !DILocation(line: 569, column: 18, scope: !752)
!763 = !DILocation(line: 569, column: 40, scope: !752)
!764 = !DILocation(line: 569, column: 45, scope: !752)
!765 = !DILocation(line: 569, column: 3, scope: !752)
!766 = !DILocation(line: 571, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !724, file: !662, line: 571, column: 6)
!768 = !DILocation(line: 571, column: 12, scope: !767)
!769 = !DILocation(line: 571, column: 6, scope: !724)
!770 = !DILocation(line: 572, column: 26, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !662, line: 572, column: 6)
!772 = distinct !DILexicalBlock(scope: !767, file: !662, line: 571, column: 20)
!773 = !DILocation(line: 572, column: 6, scope: !771)
!774 = !DILocation(line: 572, column: 11, scope: !771)
!775 = !DILocation(line: 572, column: 18, scope: !771)
!776 = !DILocation(line: 572, column: 8, scope: !771)
!777 = !DILocation(line: 572, column: 31, scope: !771)
!778 = !DILocation(line: 572, column: 37, scope: !771)
!779 = !DILocation(line: 572, column: 6, scope: !772)
!780 = !DILocation(line: 573, column: 32, scope: !781)
!781 = distinct !DILexicalBlock(scope: !771, file: !662, line: 572, column: 27)
!782 = !DILocation(line: 573, column: 12, scope: !781)
!783 = !DILocation(line: 573, column: 17, scope: !781)
!784 = !DILocation(line: 573, column: 24, scope: !781)
!785 = !DILocation(line: 573, column: 11, scope: !781)
!786 = !DILocation(line: 576, column: 7, scope: !781)
!787 = !DILocation(line: 576, column: 12, scope: !781)
!788 = !DILocation(line: 576, column: 16, scope: !781)
!789 = !DILocation(line: 576, column: 21, scope: !781)
!790 = !DILocation(line: 577, column: 7, scope: !781)
!791 = !DILocation(line: 577, column: 27, scope: !781)
!792 = !DILocation(line: 577, column: 15, scope: !781)
!793 = !DILocation(line: 574, column: 4, scope: !781)
!794 = !DILocation(line: 578, column: 3, scope: !781)
!795 = !DILocation(line: 579, column: 53, scope: !796)
!796 = distinct !DILexicalBlock(scope: !771, file: !662, line: 578, column: 10)
!797 = !DILocation(line: 579, column: 33, scope: !796)
!798 = !DILocation(line: 579, column: 38, scope: !796)
!799 = !DILocation(line: 579, column: 45, scope: !796)
!800 = !DILocation(line: 579, column: 73, scope: !801)
!801 = !DILexicalBlockFile(scope: !796, file: !662, discriminator: 1)
!802 = !DILocation(line: 579, column: 53, scope: !801)
!803 = !DILocation(line: 579, column: 58, scope: !801)
!804 = !DILocation(line: 579, column: 65, scope: !801)
!805 = !DILocation(line: 579, column: 75, scope: !801)
!806 = !DILocation(line: 579, column: 33, scope: !801)
!807 = !DILocation(line: 579, column: 33, scope: !808)
!808 = !DILexicalBlockFile(scope: !796, file: !662, discriminator: 2)
!809 = !DILocation(line: 579, column: 33, scope: !810)
!810 = !DILexicalBlockFile(scope: !796, file: !662, discriminator: 3)
!811 = !DILocation(line: 579, column: 32, scope: !810)
!812 = !DILocation(line: 582, column: 7, scope: !796)
!813 = !DILocation(line: 582, column: 12, scope: !796)
!814 = !DILocation(line: 582, column: 16, scope: !796)
!815 = !DILocation(line: 582, column: 21, scope: !796)
!816 = !DILocation(line: 582, column: 27, scope: !796)
!817 = !DILocation(line: 580, column: 4, scope: !796)
!818 = !DILocation(line: 584, column: 2, scope: !772)
!819 = !DILocation(line: 585, column: 18, scope: !724)
!820 = !DILocation(line: 585, column: 23, scope: !724)
!821 = !DILocation(line: 585, column: 2, scope: !724)
!822 = !DILocation(line: 586, column: 1, scope: !724)
!823 = !DILocation(line: 586, column: 1, scope: !824)
!824 = !DILexicalBlockFile(scope: !724, file: !662, discriminator: 1)
!825 = distinct !DISubprogram(name: "sig_exec_input", scope: !662, file: !662, line: 588, type: !826, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !562, !100}
!828 = !DILocalVariable(name: "rec", arg: 1, scope: !825, file: !662, line: 588, type: !562)
!829 = !DILocation(line: 588, column: 41, scope: !825)
!830 = !DILocalVariable(name: "text", arg: 2, scope: !825, file: !662, line: 588, type: !100)
!831 = !DILocation(line: 588, column: 58, scope: !825)
!832 = !DILocalVariable(name: "item", scope: !825, file: !662, line: 590, type: !497)
!833 = !DILocation(line: 590, column: 15, scope: !825)
!834 = !DILocalVariable(name: "server", scope: !825, file: !662, line: 591, type: !123)
!835 = !DILocation(line: 591, column: 14, scope: !825)
!836 = !DILocalVariable(name: "str", scope: !825, file: !662, line: 592, type: !105)
!837 = !DILocation(line: 592, column: 15, scope: !825)
!838 = !DILocation(line: 594, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !825, file: !662, line: 594, column: 6)
!840 = !DILocation(line: 594, column: 11, scope: !839)
!841 = !DILocation(line: 594, column: 6, scope: !825)
!842 = !DILocation(line: 595, column: 3, scope: !839)
!843 = !DILocation(line: 597, column: 14, scope: !825)
!844 = !DILocation(line: 598, column: 9, scope: !825)
!845 = !DILocation(line: 600, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !825, file: !662, line: 600, column: 6)
!847 = !DILocation(line: 600, column: 11, scope: !846)
!848 = !DILocation(line: 600, column: 18, scope: !846)
!849 = !DILocation(line: 600, column: 6, scope: !825)
!850 = !DILocation(line: 601, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !662, line: 601, column: 7)
!852 = distinct !DILexicalBlock(scope: !846, file: !662, line: 600, column: 26)
!853 = !DILocation(line: 601, column: 12, scope: !851)
!854 = !DILocation(line: 601, column: 26, scope: !851)
!855 = !DILocation(line: 601, column: 7, scope: !852)
!856 = !DILocation(line: 602, column: 29, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !662, line: 601, column: 34)
!858 = !DILocation(line: 602, column: 34, scope: !857)
!859 = !DILocation(line: 602, column: 13, scope: !857)
!860 = !DILocation(line: 602, column: 11, scope: !857)
!861 = !DILocation(line: 603, column: 8, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !662, line: 603, column: 8)
!863 = !DILocation(line: 603, column: 15, scope: !862)
!864 = !DILocation(line: 603, column: 8, scope: !857)
!865 = !DILocation(line: 605, column: 5, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !662, line: 603, column: 23)
!867 = !DILocation(line: 607, column: 9, scope: !857)
!868 = !DILocation(line: 608, column: 3, scope: !857)
!869 = !DILocation(line: 609, column: 33, scope: !870)
!870 = distinct !DILexicalBlock(scope: !851, file: !662, line: 608, column: 10)
!871 = !DILocation(line: 609, column: 38, scope: !870)
!872 = !DILocation(line: 609, column: 11, scope: !870)
!873 = !DILocation(line: 609, column: 9, scope: !870)
!874 = !DILocation(line: 610, column: 13, scope: !870)
!875 = !DILocation(line: 610, column: 18, scope: !870)
!876 = !DILocation(line: 610, column: 27, scope: !877)
!877 = !DILexicalBlockFile(scope: !870, file: !662, discriminator: 1)
!878 = !DILocation(line: 610, column: 33, scope: !877)
!879 = !DILocation(line: 610, column: 13, scope: !877)
!880 = !DILocation(line: 611, column: 5, scope: !870)
!881 = !DILocation(line: 611, column: 17, scope: !870)
!882 = !DILocation(line: 610, column: 13, scope: !883)
!883 = !DILexicalBlockFile(scope: !870, file: !662, discriminator: 2)
!884 = !DILocation(line: 610, column: 13, scope: !885)
!885 = !DILexicalBlockFile(scope: !870, file: !662, discriminator: 3)
!886 = !DILocation(line: 610, column: 11, scope: !885)
!887 = !DILocation(line: 614, column: 21, scope: !852)
!888 = !DILocation(line: 614, column: 26, scope: !852)
!889 = !DILocation(line: 614, column: 21, scope: !890)
!890 = !DILexicalBlockFile(scope: !852, file: !662, discriminator: 1)
!891 = !DILocation(line: 615, column: 7, scope: !852)
!892 = !DILocation(line: 615, column: 12, scope: !852)
!893 = !DILocation(line: 614, column: 21, scope: !894)
!894 = !DILexicalBlockFile(scope: !852, file: !662, discriminator: 2)
!895 = !DILocation(line: 614, column: 21, scope: !896)
!896 = !DILexicalBlockFile(scope: !852, file: !662, discriminator: 3)
!897 = !DILocation(line: 616, column: 7, scope: !852)
!898 = !DILocation(line: 616, column: 12, scope: !852)
!899 = !DILocation(line: 616, column: 26, scope: !852)
!900 = !DILocation(line: 616, column: 25, scope: !852)
!901 = !DILocation(line: 616, column: 31, scope: !852)
!902 = !DILocation(line: 616, column: 25, scope: !890)
!903 = !DILocation(line: 616, column: 47, scope: !894)
!904 = !DILocation(line: 616, column: 25, scope: !894)
!905 = !DILocation(line: 616, column: 25, scope: !896)
!906 = !DILocation(line: 614, column: 9, scope: !907)
!907 = !DILexicalBlockFile(scope: !852, file: !662, discriminator: 4)
!908 = !DILocation(line: 614, column: 7, scope: !907)
!909 = !DILocation(line: 617, column: 15, scope: !852)
!910 = !DILocation(line: 617, column: 20, scope: !852)
!911 = !DILocation(line: 618, column: 11, scope: !852)
!912 = !DILocation(line: 618, column: 16, scope: !852)
!913 = !DILocation(line: 618, column: 24, scope: !852)
!914 = !DILocation(line: 617, column: 3, scope: !852)
!915 = !DILocation(line: 619, column: 24, scope: !852)
!916 = !DILocation(line: 619, column: 17, scope: !852)
!917 = !DILocation(line: 620, column: 2, scope: !852)
!918 = !DILocation(line: 620, column: 13, scope: !919)
!919 = !DILexicalBlockFile(scope: !920, file: !662, discriminator: 1)
!920 = distinct !DILexicalBlock(scope: !846, file: !662, line: 620, column: 13)
!921 = !DILocation(line: 620, column: 18, scope: !919)
!922 = !DILocation(line: 620, column: 30, scope: !919)
!923 = !DILocation(line: 621, column: 18, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !662, line: 620, column: 38)
!925 = !DILocation(line: 621, column: 23, scope: !924)
!926 = !DILocation(line: 621, column: 36, scope: !924)
!927 = !DILocation(line: 622, column: 6, scope: !924)
!928 = !DILocation(line: 622, column: 11, scope: !924)
!929 = !DILocation(line: 622, column: 24, scope: !924)
!930 = !DILocation(line: 621, column: 3, scope: !924)
!931 = !DILocation(line: 623, column: 2, scope: !924)
!932 = !DILocation(line: 624, column: 20, scope: !933)
!933 = distinct !DILexicalBlock(scope: !920, file: !662, line: 623, column: 9)
!934 = !DILocation(line: 624, column: 25, scope: !933)
!935 = !DILocation(line: 624, column: 37, scope: !933)
!936 = !DILocation(line: 624, column: 42, scope: !933)
!937 = !DILocation(line: 624, column: 55, scope: !933)
!938 = !DILocation(line: 624, column: 3, scope: !933)
!939 = !DILocation(line: 626, column: 1, scope: !825)
!940 = distinct !DISubprogram(name: "sig_window_destroyed", scope: !662, file: !662, line: 628, type: !941, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !579}
!943 = !DILocalVariable(name: "window", arg: 1, scope: !940, file: !662, line: 628, type: !579)
!944 = !DILocation(line: 628, column: 46, scope: !940)
!945 = !DILocalVariable(name: "tmp", scope: !940, file: !662, line: 630, type: !315)
!946 = !DILocation(line: 630, column: 10, scope: !940)
!947 = !DILocation(line: 634, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !662, line: 634, column: 2)
!949 = !DILocation(line: 634, column: 11, scope: !948)
!950 = !DILocation(line: 634, column: 7, scope: !948)
!951 = !DILocation(line: 634, column: 24, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !662, discriminator: 1)
!953 = distinct !DILexicalBlock(scope: !948, file: !662, line: 634, column: 2)
!954 = !DILocation(line: 634, column: 28, scope: !952)
!955 = !DILocation(line: 634, column: 2, scope: !952)
!956 = !DILocalVariable(name: "rec", scope: !957, file: !662, line: 635, type: !562)
!957 = distinct !DILexicalBlock(scope: !953, file: !662, line: 634, column: 53)
!958 = !DILocation(line: 635, column: 16, scope: !957)
!959 = !DILocation(line: 635, column: 22, scope: !957)
!960 = !DILocation(line: 635, column: 27, scope: !957)
!961 = !DILocation(line: 637, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !662, line: 637, column: 7)
!963 = !DILocation(line: 637, column: 12, scope: !962)
!964 = !DILocation(line: 637, column: 26, scope: !962)
!965 = !DILocation(line: 637, column: 23, scope: !962)
!966 = !DILocation(line: 637, column: 7, scope: !957)
!967 = !DILocation(line: 638, column: 22, scope: !962)
!968 = !DILocation(line: 638, column: 4, scope: !962)
!969 = !DILocation(line: 638, column: 9, scope: !962)
!970 = !DILocation(line: 638, column: 20, scope: !962)
!971 = !DILocation(line: 639, column: 2, scope: !957)
!972 = !DILocation(line: 634, column: 42, scope: !973)
!973 = !DILexicalBlockFile(scope: !953, file: !662, discriminator: 2)
!974 = !DILocation(line: 634, column: 47, scope: !973)
!975 = !DILocation(line: 634, column: 40, scope: !973)
!976 = !DILocation(line: 634, column: 2, scope: !973)
!977 = distinct !{!977, !978}
!978 = !DILocation(line: 634, column: 2, scope: !940)
!979 = !DILocation(line: 640, column: 1, scope: !940)
!980 = distinct !DISubprogram(name: "event_text", scope: !662, file: !662, line: 642, type: !981, isLocal: true, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !100, !123, !626}
!983 = !DILocalVariable(name: "data", arg: 1, scope: !980, file: !662, line: 642, type: !100)
!984 = !DILocation(line: 642, column: 36, scope: !980)
!985 = !DILocalVariable(name: "server", arg: 2, scope: !980, file: !662, line: 642, type: !123)
!986 = !DILocation(line: 642, column: 54, scope: !980)
!987 = !DILocalVariable(name: "item", arg: 3, scope: !980, file: !662, line: 642, type: !626)
!988 = !DILocation(line: 642, column: 75, scope: !980)
!989 = !DILocation(line: 644, column: 50, scope: !990)
!990 = distinct !DILexicalBlock(scope: !980, file: !662, line: 644, column: 6)
!991 = !DILocation(line: 644, column: 25, scope: !990)
!992 = !DILocation(line: 644, column: 9, scope: !990)
!993 = !DILocation(line: 644, column: 6, scope: !980)
!994 = !DILocation(line: 644, column: 8, scope: !995)
!995 = !DILexicalBlockFile(scope: !990, file: !662, discriminator: 1)
!996 = !DILocation(line: 644, column: 6, scope: !997)
!997 = !DILexicalBlockFile(scope: !980, file: !662, discriminator: 2)
!998 = !DILocation(line: 645, column: 3, scope: !990)
!999 = !DILocation(line: 647, column: 22, scope: !980)
!1000 = !DILocation(line: 647, column: 28, scope: !980)
!1001 = !DILocation(line: 647, column: 37, scope: !980)
!1002 = !DILocation(line: 647, column: 42, scope: !980)
!1003 = !DILocation(line: 647, column: 55, scope: !980)
!1004 = !DILocation(line: 647, column: 48, scope: !980)
!1005 = !DILocation(line: 647, column: 2, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !980, file: !662, discriminator: 1)
!1007 = !DILocation(line: 648, column: 22, scope: !980)
!1008 = !DILocation(line: 648, column: 28, scope: !980)
!1009 = !DILocation(line: 648, column: 37, scope: !980)
!1010 = !DILocation(line: 648, column: 2, scope: !980)
!1011 = !DILocation(line: 649, column: 9, scope: !980)
!1012 = !DILocation(line: 650, column: 1, scope: !980)
!1013 = !DILocation(line: 650, column: 1, scope: !1006)
!1014 = distinct !DISubprogram(name: "fe_exec_deinit", scope: !662, file: !662, line: 664, type: !303, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1015 = !DILocation(line: 666, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1014, file: !662, line: 666, column: 6)
!1017 = !DILocation(line: 666, column: 16, scope: !1016)
!1018 = !DILocation(line: 666, column: 6, scope: !1014)
!1019 = !DILocation(line: 667, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !662, line: 666, column: 24)
!1021 = !DILocation(line: 668, column: 3, scope: !1020)
!1022 = !DILocation(line: 669, column: 3, scope: !1020)
!1023 = !DILocation(line: 671, column: 3, scope: !1020)
!1024 = !DILocation(line: 671, column: 10, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1020, file: !662, discriminator: 1)
!1026 = !DILocation(line: 671, column: 20, scope: !1025)
!1027 = !DILocation(line: 671, column: 3, scope: !1025)
!1028 = !DILocation(line: 672, column: 20, scope: !1020)
!1029 = !DILocation(line: 672, column: 31, scope: !1020)
!1030 = !DILocation(line: 672, column: 4, scope: !1020)
!1031 = !DILocation(line: 671, column: 3, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1020, file: !662, discriminator: 2)
!1033 = distinct !{!1033, !1023}
!1034 = !DILocation(line: 673, column: 2, scope: !1020)
!1035 = !DILocation(line: 675, column: 2, scope: !1014)
!1036 = !DILocation(line: 677, column: 9, scope: !1014)
!1037 = !DILocation(line: 678, column: 9, scope: !1014)
!1038 = !DILocation(line: 679, column: 9, scope: !1014)
!1039 = !DILocation(line: 680, column: 2, scope: !1014)
!1040 = !DILocation(line: 681, column: 1, scope: !1014)
!1041 = distinct !DISubprogram(name: "processes_killall", scope: !662, file: !662, line: 199, type: !657, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1042 = !DILocalVariable(name: "signum", arg: 1, scope: !1041, file: !662, line: 199, type: !114)
!1043 = !DILocation(line: 199, column: 35, scope: !1041)
!1044 = !DILocalVariable(name: "tmp", scope: !1041, file: !662, line: 201, type: !315)
!1045 = !DILocation(line: 201, column: 10, scope: !1041)
!1046 = !DILocalVariable(name: "kill_ret", scope: !1041, file: !662, line: 202, type: !114)
!1047 = !DILocation(line: 202, column: 6, scope: !1041)
!1048 = !DILocation(line: 204, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !662, line: 204, column: 2)
!1050 = !DILocation(line: 204, column: 11, scope: !1049)
!1051 = !DILocation(line: 204, column: 7, scope: !1049)
!1052 = !DILocation(line: 204, column: 24, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !662, discriminator: 1)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !662, line: 204, column: 2)
!1055 = !DILocation(line: 204, column: 28, scope: !1053)
!1056 = !DILocation(line: 204, column: 2, scope: !1053)
!1057 = !DILocalVariable(name: "rec", scope: !1058, file: !662, line: 205, type: !562)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !662, line: 204, column: 53)
!1059 = !DILocation(line: 205, column: 16, scope: !1058)
!1060 = !DILocation(line: 205, column: 22, scope: !1058)
!1061 = !DILocation(line: 205, column: 27, scope: !1058)
!1062 = !DILocation(line: 207, column: 20, scope: !1058)
!1063 = !DILocation(line: 207, column: 25, scope: !1058)
!1064 = !DILocation(line: 207, column: 19, scope: !1058)
!1065 = !DILocation(line: 207, column: 30, scope: !1058)
!1066 = !DILocation(line: 207, column: 14, scope: !1058)
!1067 = !DILocation(line: 207, column: 12, scope: !1058)
!1068 = !DILocation(line: 208, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1058, file: !662, line: 208, column: 7)
!1070 = !DILocation(line: 208, column: 16, scope: !1069)
!1071 = !DILocation(line: 208, column: 7, scope: !1058)
!1072 = !DILocation(line: 211, column: 21, scope: !1069)
!1073 = !DILocation(line: 211, column: 29, scope: !1069)
!1074 = !DILocation(line: 211, column: 34, scope: !1069)
!1075 = !DILocation(line: 211, column: 51, scope: !1069)
!1076 = !DILocation(line: 211, column: 50, scope: !1069)
!1077 = !DILocation(line: 211, column: 39, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1069, file: !662, discriminator: 1)
!1079 = !DILocation(line: 209, column: 11, scope: !1069)
!1080 = !DILocation(line: 212, column: 2, scope: !1058)
!1081 = !DILocation(line: 204, column: 42, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1054, file: !662, discriminator: 2)
!1083 = !DILocation(line: 204, column: 47, scope: !1082)
!1084 = !DILocation(line: 204, column: 40, scope: !1082)
!1085 = !DILocation(line: 204, column: 2, scope: !1082)
!1086 = distinct !{!1086, !1087}
!1087 = !DILocation(line: 204, column: 2, scope: !1041)
!1088 = !DILocation(line: 213, column: 1, scope: !1041)
!1089 = distinct !DISubprogram(name: "process_destroy", scope: !662, file: !662, line: 176, type: !1090, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !562, !114}
!1092 = !DILocalVariable(name: "rec", arg: 1, scope: !1089, file: !662, line: 176, type: !562)
!1093 = !DILocation(line: 176, column: 42, scope: !1089)
!1094 = !DILocalVariable(name: "status", arg: 2, scope: !1089, file: !662, line: 176, type: !114)
!1095 = !DILocation(line: 176, column: 51, scope: !1089)
!1096 = !DILocation(line: 178, column: 29, scope: !1089)
!1097 = !DILocation(line: 178, column: 40, scope: !1089)
!1098 = !DILocation(line: 178, column: 14, scope: !1089)
!1099 = !DILocation(line: 178, column: 12, scope: !1089)
!1100 = !DILocation(line: 180, column: 32, scope: !1089)
!1101 = !DILocation(line: 180, column: 58, scope: !1089)
!1102 = !DILocation(line: 180, column: 49, scope: !1089)
!1103 = !DILocation(line: 180, column: 38, scope: !1089)
!1104 = !DILocation(line: 180, column: 2, scope: !1089)
!1105 = !DILocation(line: 182, column: 6, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1089, file: !662, line: 182, column: 6)
!1107 = !DILocation(line: 182, column: 11, scope: !1106)
!1108 = !DILocation(line: 182, column: 20, scope: !1106)
!1109 = !DILocation(line: 182, column: 6, scope: !1089)
!1110 = !DILocation(line: 183, column: 19, scope: !1106)
!1111 = !DILocation(line: 183, column: 24, scope: !1106)
!1112 = !DILocation(line: 183, column: 3, scope: !1106)
!1113 = !DILocation(line: 184, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1089, file: !662, line: 184, column: 6)
!1115 = !DILocation(line: 184, column: 11, scope: !1114)
!1116 = !DILocation(line: 184, column: 23, scope: !1114)
!1117 = !DILocation(line: 184, column: 6, scope: !1089)
!1118 = !DILocation(line: 185, column: 33, scope: !1114)
!1119 = !DILocation(line: 185, column: 38, scope: !1114)
!1120 = !DILocation(line: 185, column: 17, scope: !1114)
!1121 = !DILocation(line: 187, column: 18, scope: !1089)
!1122 = !DILocation(line: 187, column: 23, scope: !1089)
!1123 = !DILocation(line: 187, column: 2, scope: !1089)
!1124 = !DILocation(line: 188, column: 31, scope: !1089)
!1125 = !DILocation(line: 188, column: 36, scope: !1089)
!1126 = !DILocation(line: 188, column: 9, scope: !1089)
!1127 = !DILocation(line: 189, column: 28, scope: !1089)
!1128 = !DILocation(line: 189, column: 33, scope: !1089)
!1129 = !DILocation(line: 189, column: 9, scope: !1089)
!1130 = !DILocation(line: 190, column: 32, scope: !1089)
!1131 = !DILocation(line: 190, column: 37, scope: !1089)
!1132 = !DILocation(line: 190, column: 9, scope: !1089)
!1133 = !DILocation(line: 192, column: 9, scope: !1089)
!1134 = !DILocation(line: 192, column: 14, scope: !1089)
!1135 = !DILocation(line: 192, column: 2, scope: !1089)
!1136 = !DILocation(line: 193, column: 9, scope: !1089)
!1137 = !DILocation(line: 193, column: 14, scope: !1089)
!1138 = !DILocation(line: 193, column: 2, scope: !1089)
!1139 = !DILocation(line: 194, column: 9, scope: !1089)
!1140 = !DILocation(line: 194, column: 14, scope: !1089)
!1141 = !DILocation(line: 194, column: 2, scope: !1089)
!1142 = !DILocation(line: 195, column: 16, scope: !1089)
!1143 = !DILocation(line: 195, column: 21, scope: !1089)
!1144 = !DILocation(line: 195, column: 9, scope: !1089)
!1145 = !DILocation(line: 196, column: 16, scope: !1089)
!1146 = !DILocation(line: 196, column: 9, scope: !1089)
!1147 = !DILocation(line: 197, column: 1, scope: !1089)
!1148 = distinct !DISubprogram(name: "handle_exec", scope: !662, file: !662, line: 378, type: !1149, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !100, !117, !123, !497}
!1151 = !DILocalVariable(name: "args", arg: 1, scope: !1148, file: !662, line: 378, type: !100)
!1152 = !DILocation(line: 378, column: 37, scope: !1148)
!1153 = !DILocalVariable(name: "optlist", arg: 2, scope: !1148, file: !662, line: 378, type: !117)
!1154 = !DILocation(line: 378, column: 55, scope: !1148)
!1155 = !DILocalVariable(name: "server", arg: 3, scope: !1148, file: !662, line: 379, type: !123)
!1156 = !DILocation(line: 379, column: 37, scope: !1148)
!1157 = !DILocalVariable(name: "item", arg: 4, scope: !1148, file: !662, line: 379, type: !497)
!1158 = !DILocation(line: 379, column: 58, scope: !1148)
!1159 = !DILocalVariable(name: "rec", scope: !1148, file: !662, line: 381, type: !562)
!1160 = !DILocation(line: 381, column: 15, scope: !1148)
!1161 = !DILocalVariable(name: "target_server", scope: !1148, file: !662, line: 382, type: !123)
!1162 = !DILocation(line: 382, column: 14, scope: !1148)
!1163 = !DILocalVariable(name: "target", scope: !1148, file: !662, line: 383, type: !105)
!1164 = !DILocation(line: 383, column: 15, scope: !1148)
!1165 = !DILocalVariable(name: "level", scope: !1148, file: !662, line: 383, type: !105)
!1166 = !DILocation(line: 383, column: 24, scope: !1148)
!1167 = !DILocalVariable(name: "notice", scope: !1148, file: !662, line: 384, type: !114)
!1168 = !DILocation(line: 384, column: 6, scope: !1148)
!1169 = !DILocalVariable(name: "signum", scope: !1148, file: !662, line: 384, type: !114)
!1170 = !DILocation(line: 384, column: 14, scope: !1148)
!1171 = !DILocalVariable(name: "interactive", scope: !1148, file: !662, line: 384, type: !114)
!1172 = !DILocation(line: 384, column: 22, scope: !1148)
!1173 = !DILocalVariable(name: "target_nick", scope: !1148, file: !662, line: 384, type: !114)
!1174 = !DILocation(line: 384, column: 35, scope: !1148)
!1175 = !DILocalVariable(name: "target_channel", scope: !1148, file: !662, line: 384, type: !114)
!1176 = !DILocation(line: 384, column: 48, scope: !1148)
!1177 = !DILocalVariable(name: "kill_ret", scope: !1148, file: !662, line: 384, type: !114)
!1178 = !DILocation(line: 384, column: 64, scope: !1148)
!1179 = !DILocation(line: 389, column: 42, scope: !1148)
!1180 = !DILocation(line: 389, column: 11, scope: !1148)
!1181 = !DILocation(line: 389, column: 9, scope: !1148)
!1182 = !DILocation(line: 390, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 390, column: 6)
!1184 = !DILocation(line: 390, column: 13, scope: !1183)
!1185 = !DILocation(line: 390, column: 6, scope: !1148)
!1186 = !DILocation(line: 391, column: 17, scope: !1183)
!1187 = !DILocation(line: 393, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 393, column: 6)
!1189 = !DILocation(line: 393, column: 6, scope: !1188)
!1190 = !DILocation(line: 393, column: 12, scope: !1188)
!1191 = !DILocation(line: 393, column: 6, scope: !1148)
!1192 = !DILocation(line: 394, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !662, line: 393, column: 21)
!1194 = !DILocation(line: 395, column: 17, scope: !1193)
!1195 = !DILocation(line: 398, column: 9, scope: !1148)
!1196 = !DILocation(line: 399, column: 16, scope: !1148)
!1197 = !DILocation(line: 400, column: 9, scope: !1148)
!1198 = !DILocation(line: 402, column: 26, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 402, column: 6)
!1200 = !DILocation(line: 402, column: 6, scope: !1199)
!1201 = !DILocation(line: 402, column: 41, scope: !1199)
!1202 = !DILocation(line: 402, column: 6, scope: !1148)
!1203 = !DILocation(line: 403, column: 42, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !662, line: 402, column: 49)
!1205 = !DILocation(line: 403, column: 22, scope: !1204)
!1206 = !DILocation(line: 403, column: 9, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1204, file: !662, discriminator: 1)
!1208 = !DILocation(line: 403, column: 7, scope: !1204)
!1209 = !DILocation(line: 404, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !662, line: 404, column: 7)
!1211 = !DILocation(line: 404, column: 11, scope: !1210)
!1212 = !DILocation(line: 404, column: 7, scope: !1204)
!1213 = !DILocation(line: 405, column: 24, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !662, line: 404, column: 19)
!1215 = !DILocation(line: 405, column: 29, scope: !1214)
!1216 = !DILocation(line: 405, column: 34, scope: !1214)
!1217 = !DILocation(line: 405, column: 47, scope: !1214)
!1218 = !DILocation(line: 405, column: 40, scope: !1214)
!1219 = !DILocation(line: 405, column: 4, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1214, file: !662, discriminator: 1)
!1221 = !DILocation(line: 406, column: 24, scope: !1214)
!1222 = !DILocation(line: 406, column: 29, scope: !1214)
!1223 = !DILocation(line: 406, column: 4, scope: !1214)
!1224 = !DILocation(line: 407, column: 3, scope: !1214)
!1225 = !DILocation(line: 408, column: 3, scope: !1204)
!1226 = !DILocation(line: 413, column: 21, scope: !1148)
!1227 = !DILocation(line: 413, column: 28, scope: !1148)
!1228 = !DILocation(line: 413, column: 27, scope: !1148)
!1229 = !DILocation(line: 413, column: 33, scope: !1148)
!1230 = !DILocation(line: 413, column: 8, scope: !1148)
!1231 = !DILocation(line: 413, column: 6, scope: !1148)
!1232 = !DILocation(line: 414, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 414, column: 6)
!1234 = !DILocation(line: 414, column: 6, scope: !1233)
!1235 = !DILocation(line: 414, column: 12, scope: !1233)
!1236 = !DILocation(line: 414, column: 19, scope: !1233)
!1237 = !DILocation(line: 414, column: 22, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1233, file: !662, discriminator: 1)
!1239 = !DILocation(line: 414, column: 26, scope: !1238)
!1240 = !DILocation(line: 414, column: 6, scope: !1238)
!1241 = !DILocation(line: 415, column: 3, scope: !1233)
!1242 = !DILocation(line: 418, column: 38, scope: !1148)
!1243 = !DILocation(line: 418, column: 24, scope: !1148)
!1244 = !DILocation(line: 419, column: 26, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 419, column: 6)
!1246 = !DILocation(line: 419, column: 6, scope: !1245)
!1247 = !DILocation(line: 419, column: 42, scope: !1245)
!1248 = !DILocation(line: 419, column: 6, scope: !1148)
!1249 = !DILocation(line: 421, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !662, line: 421, column: 7)
!1251 = distinct !DILexicalBlock(scope: !1245, file: !662, line: 419, column: 50)
!1252 = !DILocation(line: 421, column: 12, scope: !1250)
!1253 = !DILocation(line: 421, column: 7, scope: !1251)
!1254 = !DILocation(line: 422, column: 4, scope: !1250)
!1255 = distinct !{!1255, !1254}
!1256 = !DILocation(line: 422, column: 9, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1258, file: !662, discriminator: 1)
!1258 = distinct !DILexicalBlock(scope: !1250, file: !662, line: 422, column: 7)
!1259 = !DILocation(line: 422, column: 84, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1257, file: !662, discriminator: 3)
!1261 = !DILocation(line: 422, column: 99, scope: !1257)
!1262 = !DILocation(line: 422, column: 107, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1258, file: !662, discriminator: 2)
!1264 = !DILocation(line: 423, column: 23, scope: !1251)
!1265 = !DILocation(line: 423, column: 30, scope: !1251)
!1266 = !DILocation(line: 423, column: 41, scope: !1251)
!1267 = !DILocation(line: 423, column: 22, scope: !1251)
!1268 = !DILocation(line: 423, column: 10, scope: !1251)
!1269 = !DILocation(line: 424, column: 19, scope: !1251)
!1270 = !DILocation(line: 424, column: 25, scope: !1251)
!1271 = !DILocation(line: 424, column: 17, scope: !1251)
!1272 = !DILocation(line: 425, column: 63, scope: !1251)
!1273 = !DILocation(line: 425, column: 38, scope: !1251)
!1274 = !DILocation(line: 425, column: 22, scope: !1251)
!1275 = !DILocation(line: 425, column: 21, scope: !1251)
!1276 = !DILocation(line: 425, column: 18, scope: !1251)
!1277 = !DILocation(line: 426, column: 58, scope: !1251)
!1278 = !DILocation(line: 426, column: 33, scope: !1251)
!1279 = !DILocation(line: 426, column: 19, scope: !1251)
!1280 = !DILocation(line: 426, column: 18, scope: !1251)
!1281 = !DILocation(line: 426, column: 15, scope: !1251)
!1282 = !DILocation(line: 427, column: 2, scope: !1251)
!1283 = !DILocation(line: 427, column: 33, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !662, discriminator: 1)
!1285 = distinct !DILexicalBlock(scope: !1245, file: !662, line: 427, column: 13)
!1286 = !DILocation(line: 427, column: 13, scope: !1284)
!1287 = !DILocation(line: 427, column: 49, scope: !1284)
!1288 = !DILocation(line: 429, column: 32, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !662, line: 427, column: 57)
!1290 = !DILocation(line: 429, column: 12, scope: !1289)
!1291 = !DILocation(line: 429, column: 10, scope: !1289)
!1292 = !DILocation(line: 430, column: 19, scope: !1289)
!1293 = !DILocation(line: 430, column: 17, scope: !1289)
!1294 = !DILocation(line: 431, column: 2, scope: !1289)
!1295 = !DILocation(line: 431, column: 33, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !662, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !662, line: 431, column: 13)
!1298 = !DILocation(line: 431, column: 13, scope: !1296)
!1299 = !DILocation(line: 431, column: 52, scope: !1296)
!1300 = !DILocation(line: 432, column: 32, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !662, line: 431, column: 60)
!1302 = !DILocation(line: 432, column: 12, scope: !1301)
!1303 = !DILocation(line: 432, column: 10, scope: !1301)
!1304 = !DILocation(line: 433, column: 19, scope: !1301)
!1305 = !DILocation(line: 433, column: 17, scope: !1301)
!1306 = !DILocation(line: 434, column: 24, scope: !1301)
!1307 = !DILocation(line: 435, column: 2, scope: !1301)
!1308 = !DILocation(line: 438, column: 6, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 438, column: 6)
!1310 = !DILocation(line: 438, column: 10, scope: !1309)
!1311 = !DILocation(line: 438, column: 17, scope: !1309)
!1312 = !DILocation(line: 439, column: 7, scope: !1309)
!1313 = !DILocation(line: 439, column: 14, scope: !1309)
!1314 = !DILocation(line: 439, column: 20, scope: !1309)
!1315 = !DILocation(line: 439, column: 43, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1309, file: !662, discriminator: 1)
!1317 = !DILocation(line: 439, column: 23, scope: !1316)
!1318 = !DILocation(line: 439, column: 61, scope: !1316)
!1319 = !DILocation(line: 438, column: 6, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1148, file: !662, discriminator: 1)
!1321 = !DILocation(line: 441, column: 34, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1309, file: !662, line: 439, column: 70)
!1323 = !DILocation(line: 440, column: 3, scope: !1322)
!1324 = !DILocation(line: 442, column: 3, scope: !1322)
!1325 = !DILocation(line: 444, column: 26, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 444, column: 6)
!1327 = !DILocation(line: 444, column: 6, scope: !1326)
!1328 = !DILocation(line: 444, column: 44, scope: !1326)
!1329 = !DILocation(line: 444, column: 6, scope: !1148)
!1330 = !DILocation(line: 446, column: 33, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !662, line: 444, column: 52)
!1332 = !DILocation(line: 446, column: 17, scope: !1331)
!1333 = !DILocation(line: 447, column: 17, scope: !1331)
!1334 = !DILocation(line: 450, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 450, column: 6)
!1336 = !DILocation(line: 450, column: 13, scope: !1335)
!1337 = !DILocation(line: 450, column: 6, scope: !1148)
!1338 = !DILocation(line: 452, column: 34, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !662, line: 450, column: 20)
!1340 = !DILocation(line: 452, column: 39, scope: !1339)
!1341 = !DILocation(line: 452, column: 33, scope: !1339)
!1342 = !DILocation(line: 452, column: 44, scope: !1339)
!1343 = !DILocation(line: 452, column: 28, scope: !1339)
!1344 = !DILocation(line: 452, column: 26, scope: !1339)
!1345 = !DILocation(line: 453, column: 21, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !662, line: 453, column: 21)
!1347 = !DILocation(line: 453, column: 30, scope: !1346)
!1348 = !DILocation(line: 453, column: 21, scope: !1339)
!1349 = !DILocation(line: 456, column: 35, scope: !1346)
!1350 = !DILocation(line: 456, column: 43, scope: !1346)
!1351 = !DILocation(line: 456, column: 48, scope: !1346)
!1352 = !DILocation(line: 456, column: 65, scope: !1346)
!1353 = !DILocation(line: 456, column: 64, scope: !1346)
!1354 = !DILocation(line: 456, column: 53, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1346, file: !662, discriminator: 1)
!1356 = !DILocation(line: 454, column: 25, scope: !1346)
!1357 = !DILocation(line: 457, column: 17, scope: !1339)
!1358 = !DILocation(line: 460, column: 43, scope: !1148)
!1359 = !DILocation(line: 460, column: 23, scope: !1148)
!1360 = !DILocation(line: 460, column: 67, scope: !1148)
!1361 = !DILocation(line: 460, column: 21, scope: !1148)
!1362 = !DILocation(line: 461, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 461, column: 6)
!1364 = !DILocation(line: 461, column: 6, scope: !1363)
!1365 = !DILocation(line: 461, column: 12, scope: !1363)
!1366 = !DILocation(line: 461, column: 6, scope: !1148)
!1367 = !DILocalVariable(name: "name", scope: !1368, file: !662, line: 463, type: !105)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !662, line: 461, column: 20)
!1369 = !DILocation(line: 463, column: 9, scope: !1368)
!1370 = !DILocation(line: 465, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !662, line: 465, column: 7)
!1372 = !DILocation(line: 465, column: 14, scope: !1371)
!1373 = !DILocation(line: 465, column: 7, scope: !1368)
!1374 = !DILocation(line: 467, column: 4, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !662, line: 465, column: 22)
!1376 = distinct !{!1376, !1374}
!1377 = !DILocation(line: 467, column: 13, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1379, file: !662, discriminator: 1)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !662, line: 467, column: 13)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !662, line: 467, column: 7)
!1381 = !DILocation(line: 467, column: 18, scope: !1378)
!1382 = !DILocation(line: 467, column: 35, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !662, discriminator: 2)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !662, line: 467, column: 26)
!1385 = !DILocation(line: 467, column: 40, scope: !1383)
!1386 = !DILocation(line: 467, column: 28, scope: !1383)
!1387 = !DILocation(line: 467, column: 50, scope: !1383)
!1388 = !DILocation(line: 467, column: 55, scope: !1383)
!1389 = !DILocation(line: 467, column: 63, scope: !1383)
!1390 = !DILocation(line: 467, column: 5, scope: !1383)
!1391 = !DILocation(line: 467, column: 7, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1380, file: !662, discriminator: 3)
!1393 = !DILocation(line: 468, column: 27, scope: !1375)
!1394 = !DILocation(line: 468, column: 18, scope: !1375)
!1395 = !DILocation(line: 468, column: 4, scope: !1375)
!1396 = !DILocation(line: 468, column: 9, scope: !1375)
!1397 = !DILocation(line: 468, column: 16, scope: !1375)
!1398 = !DILocation(line: 469, column: 25, scope: !1375)
!1399 = !DILocation(line: 469, column: 39, scope: !1375)
!1400 = !DILocation(line: 469, column: 25, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1375, file: !662, discriminator: 1)
!1402 = !DILocation(line: 470, column: 14, scope: !1375)
!1403 = !DILocation(line: 470, column: 29, scope: !1375)
!1404 = !DILocation(line: 470, column: 5, scope: !1375)
!1405 = !DILocation(line: 469, column: 25, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1375, file: !662, discriminator: 2)
!1407 = !DILocation(line: 469, column: 25, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1375, file: !662, discriminator: 3)
!1409 = !DILocation(line: 469, column: 4, scope: !1408)
!1410 = !DILocation(line: 469, column: 9, scope: !1408)
!1411 = !DILocation(line: 469, column: 23, scope: !1408)
!1412 = !DILocation(line: 471, column: 39, scope: !1375)
!1413 = !DILocation(line: 471, column: 25, scope: !1375)
!1414 = !DILocation(line: 471, column: 30, scope: !1375)
!1415 = !DILocation(line: 471, column: 37, scope: !1375)
!1416 = !DILocation(line: 472, column: 3, scope: !1375)
!1417 = !DILocation(line: 474, column: 44, scope: !1368)
!1418 = !DILocation(line: 474, column: 24, scope: !1368)
!1419 = !DILocation(line: 474, column: 22, scope: !1368)
!1420 = !DILocation(line: 475, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1368, file: !662, line: 475, column: 7)
!1422 = !DILocation(line: 475, column: 12, scope: !1421)
!1423 = !DILocation(line: 475, column: 7, scope: !1368)
!1424 = !DILocation(line: 477, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1421, file: !662, line: 475, column: 20)
!1426 = !DILocation(line: 477, column: 16, scope: !1425)
!1427 = !DILocation(line: 477, column: 4, scope: !1425)
!1428 = !DILocation(line: 478, column: 17, scope: !1425)
!1429 = !DILocation(line: 478, column: 16, scope: !1425)
!1430 = !DILocation(line: 478, column: 22, scope: !1425)
!1431 = !DILocation(line: 478, column: 16, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1425, file: !662, discriminator: 1)
!1433 = !DILocation(line: 478, column: 47, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1425, file: !662, discriminator: 2)
!1435 = !DILocation(line: 478, column: 38, scope: !1434)
!1436 = !DILocation(line: 478, column: 16, scope: !1434)
!1437 = !DILocation(line: 478, column: 16, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1425, file: !662, discriminator: 3)
!1439 = !DILocation(line: 478, column: 4, scope: !1438)
!1440 = !DILocation(line: 478, column: 9, scope: !1438)
!1441 = !DILocation(line: 478, column: 14, scope: !1438)
!1442 = !DILocation(line: 479, column: 3, scope: !1425)
!1443 = !DILocation(line: 479, column: 14, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1445, file: !662, discriminator: 1)
!1445 = distinct !DILexicalBlock(scope: !1421, file: !662, line: 479, column: 14)
!1446 = !DILocation(line: 479, column: 21, scope: !1444)
!1447 = !DILocation(line: 479, column: 28, scope: !1444)
!1448 = !DILocation(line: 480, column: 8, scope: !1445)
!1449 = !DILocation(line: 480, column: 13, scope: !1445)
!1450 = !DILocation(line: 480, column: 25, scope: !1445)
!1451 = !DILocation(line: 480, column: 32, scope: !1445)
!1452 = !DILocation(line: 480, column: 35, scope: !1444)
!1453 = !DILocation(line: 479, column: 14, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1421, file: !662, discriminator: 2)
!1455 = !DILocation(line: 483, column: 4, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1445, file: !662, line: 480, column: 49)
!1457 = distinct !{!1457, !1455}
!1458 = !DILocation(line: 483, column: 13, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !662, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !662, line: 483, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !662, line: 483, column: 7)
!1462 = !DILocation(line: 483, column: 18, scope: !1459)
!1463 = !DILocation(line: 483, column: 35, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1465, file: !662, discriminator: 2)
!1465 = distinct !DILexicalBlock(scope: !1460, file: !662, line: 483, column: 26)
!1466 = !DILocation(line: 483, column: 40, scope: !1464)
!1467 = !DILocation(line: 483, column: 28, scope: !1464)
!1468 = !DILocation(line: 483, column: 50, scope: !1464)
!1469 = !DILocation(line: 483, column: 55, scope: !1464)
!1470 = !DILocation(line: 483, column: 63, scope: !1464)
!1471 = !DILocation(line: 483, column: 5, scope: !1464)
!1472 = !DILocation(line: 483, column: 7, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1461, file: !662, discriminator: 3)
!1474 = !DILocation(line: 484, column: 22, scope: !1456)
!1475 = !DILocation(line: 484, column: 4, scope: !1456)
!1476 = !DILocation(line: 484, column: 9, scope: !1456)
!1477 = !DILocation(line: 484, column: 20, scope: !1456)
!1478 = !DILocation(line: 486, column: 8, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1456, file: !662, line: 486, column: 8)
!1480 = !DILocation(line: 486, column: 13, scope: !1479)
!1481 = !DILocation(line: 486, column: 25, scope: !1479)
!1482 = !DILocation(line: 486, column: 8, scope: !1456)
!1483 = !DILocation(line: 487, column: 21, scope: !1479)
!1484 = !DILocation(line: 487, column: 26, scope: !1479)
!1485 = !DILocation(line: 487, column: 5, scope: !1479)
!1486 = !DILocation(line: 489, column: 8, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1456, file: !662, line: 489, column: 8)
!1488 = !DILocation(line: 489, column: 8, scope: !1456)
!1489 = !DILocation(line: 491, column: 21, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !662, line: 489, column: 21)
!1491 = !DILocation(line: 491, column: 33, scope: !1490)
!1492 = !DILocation(line: 491, column: 6, scope: !1490)
!1493 = !DILocation(line: 490, column: 5, scope: !1490)
!1494 = !DILocation(line: 490, column: 10, scope: !1490)
!1495 = !DILocation(line: 490, column: 22, scope: !1490)
!1496 = !DILocation(line: 492, column: 4, scope: !1490)
!1497 = !DILocation(line: 493, column: 3, scope: !1456)
!1498 = !DILocation(line: 494, column: 17, scope: !1368)
!1499 = !DILocation(line: 498, column: 25, scope: !1148)
!1500 = !DILocation(line: 498, column: 9, scope: !1148)
!1501 = !DILocation(line: 498, column: 6, scope: !1148)
!1502 = !DILocation(line: 499, column: 2, scope: !1148)
!1503 = !DILocation(line: 499, column: 7, scope: !1148)
!1504 = !DILocation(line: 499, column: 11, scope: !1148)
!1505 = !DILocation(line: 500, column: 42, scope: !1148)
!1506 = !DILocation(line: 500, column: 22, scope: !1148)
!1507 = !DILocation(line: 500, column: 59, scope: !1148)
!1508 = !DILocation(line: 500, column: 9, scope: !1148)
!1509 = !DILocation(line: 500, column: 14, scope: !1148)
!1510 = !DILocation(line: 500, column: 20, scope: !1148)
!1511 = !DILocation(line: 502, column: 15, scope: !1148)
!1512 = !DILocation(line: 502, column: 20, scope: !1148)
!1513 = !DILocation(line: 502, column: 2, scope: !1148)
!1514 = !DILocation(line: 503, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 503, column: 6)
!1516 = !DILocation(line: 503, column: 11, scope: !1515)
!1517 = !DILocation(line: 503, column: 15, scope: !1515)
!1518 = !DILocation(line: 503, column: 6, scope: !1148)
!1519 = !DILocation(line: 505, column: 10, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !662, line: 503, column: 22)
!1521 = !DILocation(line: 505, column: 3, scope: !1520)
!1522 = !DILocation(line: 506, column: 3, scope: !1520)
!1523 = distinct !{!1523, !1522}
!1524 = !DILocation(line: 506, column: 8, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !662, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !662, line: 506, column: 6)
!1527 = !DILocation(line: 506, column: 78, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1525, file: !662, discriminator: 2)
!1529 = !DILocation(line: 506, column: 93, scope: !1525)
!1530 = !DILocation(line: 507, column: 2, scope: !1520)
!1531 = !DILocation(line: 509, column: 19, scope: !1148)
!1532 = !DILocation(line: 509, column: 9, scope: !1148)
!1533 = !DILocation(line: 509, column: 14, scope: !1148)
!1534 = !DILocation(line: 509, column: 17, scope: !1148)
!1535 = !DILocation(line: 510, column: 25, scope: !1148)
!1536 = !DILocation(line: 510, column: 16, scope: !1148)
!1537 = !DILocation(line: 510, column: 2, scope: !1148)
!1538 = !DILocation(line: 510, column: 7, scope: !1148)
!1539 = !DILocation(line: 510, column: 14, scope: !1148)
!1540 = !DILocation(line: 511, column: 23, scope: !1148)
!1541 = !DILocation(line: 511, column: 37, scope: !1148)
!1542 = !DILocation(line: 511, column: 23, scope: !1320)
!1543 = !DILocation(line: 512, column: 12, scope: !1148)
!1544 = !DILocation(line: 512, column: 27, scope: !1148)
!1545 = !DILocation(line: 512, column: 3, scope: !1148)
!1546 = !DILocation(line: 511, column: 23, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1148, file: !662, discriminator: 2)
!1548 = !DILocation(line: 511, column: 23, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1148, file: !662, discriminator: 3)
!1550 = !DILocation(line: 511, column: 2, scope: !1549)
!1551 = !DILocation(line: 511, column: 7, scope: !1549)
!1552 = !DILocation(line: 511, column: 21, scope: !1549)
!1553 = !DILocation(line: 513, column: 20, scope: !1148)
!1554 = !DILocation(line: 513, column: 2, scope: !1148)
!1555 = !DILocation(line: 513, column: 7, scope: !1148)
!1556 = !DILocation(line: 513, column: 18, scope: !1148)
!1557 = !DILocation(line: 514, column: 24, scope: !1148)
!1558 = !DILocation(line: 514, column: 2, scope: !1148)
!1559 = !DILocation(line: 514, column: 7, scope: !1148)
!1560 = !DILocation(line: 514, column: 22, scope: !1148)
!1561 = !DILocation(line: 515, column: 21, scope: !1148)
!1562 = !DILocation(line: 515, column: 2, scope: !1148)
!1563 = !DILocation(line: 515, column: 7, scope: !1148)
!1564 = !DILocation(line: 515, column: 19, scope: !1148)
!1565 = !DILocation(line: 516, column: 30, scope: !1148)
!1566 = !DILocation(line: 516, column: 21, scope: !1148)
!1567 = !DILocation(line: 516, column: 9, scope: !1148)
!1568 = !DILocation(line: 516, column: 14, scope: !1148)
!1569 = !DILocation(line: 516, column: 19, scope: !1148)
!1570 = !DILocation(line: 517, column: 16, scope: !1148)
!1571 = !DILocation(line: 517, column: 2, scope: !1148)
!1572 = !DILocation(line: 517, column: 7, scope: !1148)
!1573 = !DILocation(line: 517, column: 14, scope: !1148)
!1574 = !DILocation(line: 518, column: 43, scope: !1148)
!1575 = !DILocation(line: 518, column: 23, scope: !1148)
!1576 = !DILocation(line: 518, column: 57, scope: !1148)
!1577 = !DILocation(line: 518, column: 9, scope: !1148)
!1578 = !DILocation(line: 518, column: 14, scope: !1148)
!1579 = !DILocation(line: 518, column: 21, scope: !1148)
!1580 = !DILocation(line: 519, column: 42, scope: !1148)
!1581 = !DILocation(line: 519, column: 22, scope: !1148)
!1582 = !DILocation(line: 519, column: 60, scope: !1148)
!1583 = !DILocation(line: 519, column: 9, scope: !1148)
!1584 = !DILocation(line: 519, column: 14, scope: !1148)
!1585 = !DILocation(line: 519, column: 20, scope: !1148)
!1586 = !DILocation(line: 520, column: 43, scope: !1148)
!1587 = !DILocation(line: 520, column: 23, scope: !1148)
!1588 = !DILocation(line: 520, column: 14, scope: !1320)
!1589 = !DILocation(line: 520, column: 2, scope: !1148)
!1590 = !DILocation(line: 520, column: 7, scope: !1148)
!1591 = !DILocation(line: 520, column: 12, scope: !1148)
!1592 = !DILocation(line: 522, column: 30, scope: !1148)
!1593 = !DILocation(line: 522, column: 10, scope: !1148)
!1594 = !DILocation(line: 522, column: 8, scope: !1148)
!1595 = !DILocation(line: 523, column: 15, scope: !1148)
!1596 = !DILocation(line: 523, column: 21, scope: !1148)
!1597 = !DILocation(line: 523, column: 15, scope: !1320)
!1598 = !DILocation(line: 523, column: 63, scope: !1547)
!1599 = !DILocation(line: 523, column: 52, scope: !1547)
!1600 = !DILocation(line: 523, column: 15, scope: !1547)
!1601 = !DILocation(line: 523, column: 15, scope: !1549)
!1602 = !DILocation(line: 523, column: 2, scope: !1549)
!1603 = !DILocation(line: 523, column: 7, scope: !1549)
!1604 = !DILocation(line: 523, column: 13, scope: !1549)
!1605 = !DILocation(line: 525, column: 30, scope: !1148)
!1606 = !DILocation(line: 525, column: 35, scope: !1148)
!1607 = !DILocation(line: 527, column: 9, scope: !1148)
!1608 = !DILocation(line: 525, column: 18, scope: !1148)
!1609 = !DILocation(line: 525, column: 2, scope: !1148)
!1610 = !DILocation(line: 525, column: 7, scope: !1148)
!1611 = !DILocation(line: 525, column: 16, scope: !1148)
!1612 = !DILocation(line: 528, column: 29, scope: !1148)
!1613 = !DILocation(line: 528, column: 40, scope: !1148)
!1614 = !DILocation(line: 528, column: 14, scope: !1148)
!1615 = !DILocation(line: 528, column: 12, scope: !1148)
!1616 = !DILocation(line: 530, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1148, file: !662, line: 530, column: 6)
!1618 = !DILocation(line: 530, column: 11, scope: !1617)
!1619 = !DILocation(line: 530, column: 18, scope: !1617)
!1620 = !DILocation(line: 530, column: 25, scope: !1617)
!1621 = !DILocation(line: 530, column: 28, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1617, file: !662, discriminator: 1)
!1623 = !DILocation(line: 530, column: 6, scope: !1622)
!1624 = !DILocation(line: 531, column: 37, scope: !1617)
!1625 = !DILocation(line: 531, column: 49, scope: !1617)
!1626 = !DILocation(line: 531, column: 22, scope: !1617)
!1627 = !DILocation(line: 531, column: 3, scope: !1617)
!1628 = !DILocation(line: 531, column: 8, scope: !1617)
!1629 = !DILocation(line: 531, column: 20, scope: !1617)
!1630 = !DILocation(line: 533, column: 29, scope: !1148)
!1631 = !DILocation(line: 533, column: 2, scope: !1148)
!1632 = !DILocation(line: 534, column: 1, scope: !1148)
!1633 = !DILocation(line: 534, column: 1, scope: !1320)
!1634 = distinct !DISubprogram(name: "cmd_options_get_signal", scope: !662, file: !662, line: 237, type: !1635, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!114, !100, !117}
!1637 = !DILocalVariable(name: "cmd", arg: 1, scope: !1634, file: !662, line: 237, type: !100)
!1638 = !DILocation(line: 237, column: 47, scope: !1634)
!1639 = !DILocalVariable(name: "optlist", arg: 2, scope: !1634, file: !662, line: 238, type: !117)
!1640 = !DILocation(line: 238, column: 19, scope: !1634)
!1641 = !DILocalVariable(name: "list", scope: !1634, file: !662, line: 240, type: !606)
!1642 = !DILocation(line: 240, column: 9, scope: !1634)
!1643 = !DILocalVariable(name: "signame", scope: !1634, file: !662, line: 241, type: !105)
!1644 = !DILocation(line: 241, column: 8, scope: !1634)
!1645 = !DILocalVariable(name: "signum", scope: !1634, file: !662, line: 242, type: !114)
!1646 = !DILocation(line: 242, column: 13, scope: !1634)
!1647 = !DILocation(line: 246, column: 30, scope: !1634)
!1648 = !DILocation(line: 246, column: 35, scope: !1634)
!1649 = !DILocation(line: 246, column: 9, scope: !1634)
!1650 = !DILocation(line: 246, column: 7, scope: !1634)
!1651 = !DILocation(line: 248, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1634, file: !662, line: 248, column: 6)
!1653 = !DILocation(line: 248, column: 11, scope: !1652)
!1654 = !DILocation(line: 248, column: 6, scope: !1634)
!1655 = !DILocation(line: 249, column: 3, scope: !1652)
!1656 = !DILocation(line: 251, column: 12, scope: !1634)
!1657 = !DILocation(line: 251, column: 18, scope: !1634)
!1658 = !DILocation(line: 251, column: 10, scope: !1634)
!1659 = !DILocation(line: 252, column: 9, scope: !1634)
!1660 = !DILocation(line: 254, column: 22, scope: !1634)
!1661 = !DILocation(line: 254, column: 11, scope: !1634)
!1662 = !DILocation(line: 254, column: 41, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1634, file: !662, discriminator: 1)
!1664 = !DILocation(line: 254, column: 36, scope: !1663)
!1665 = !DILocation(line: 254, column: 11, scope: !1663)
!1666 = !DILocation(line: 255, column: 21, scope: !1634)
!1667 = !DILocation(line: 255, column: 3, scope: !1634)
!1668 = !DILocation(line: 254, column: 11, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1634, file: !662, discriminator: 2)
!1670 = !DILocation(line: 254, column: 11, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1634, file: !662, discriminator: 3)
!1672 = !DILocation(line: 254, column: 9, scope: !1671)
!1673 = !DILocation(line: 257, column: 6, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1634, file: !662, line: 257, column: 6)
!1675 = !DILocation(line: 257, column: 13, scope: !1674)
!1676 = !DILocation(line: 257, column: 19, scope: !1674)
!1677 = !DILocation(line: 257, column: 22, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1674, file: !662, discriminator: 1)
!1679 = !DILocation(line: 257, column: 28, scope: !1678)
!1680 = !DILocation(line: 257, column: 33, scope: !1678)
!1681 = !DILocation(line: 257, column: 6, scope: !1678)
!1682 = !DILocation(line: 261, column: 8, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1674, file: !662, line: 257, column: 41)
!1684 = !DILocation(line: 261, column: 15, scope: !1683)
!1685 = !DILocation(line: 261, column: 23, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1683, file: !662, discriminator: 1)
!1687 = !DILocation(line: 261, column: 29, scope: !1686)
!1688 = !DILocation(line: 261, column: 8, scope: !1686)
!1689 = !DILocation(line: 261, column: 36, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1683, file: !662, discriminator: 2)
!1691 = !DILocation(line: 261, column: 42, scope: !1690)
!1692 = !DILocation(line: 261, column: 48, scope: !1690)
!1693 = !DILocation(line: 261, column: 8, scope: !1690)
!1694 = !DILocation(line: 261, column: 8, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1683, file: !662, discriminator: 3)
!1696 = !DILocation(line: 259, column: 3, scope: !1683)
!1697 = !DILocation(line: 262, column: 3, scope: !1683)
!1698 = !DILocation(line: 263, column: 17, scope: !1683)
!1699 = !DILocation(line: 266, column: 14, scope: !1634)
!1700 = !DILocation(line: 266, column: 2, scope: !1634)
!1701 = !DILocation(line: 267, column: 9, scope: !1634)
!1702 = !DILocation(line: 267, column: 2, scope: !1634)
!1703 = !DILocation(line: 268, column: 1, scope: !1634)
!1704 = distinct !DISubprogram(name: "exec_show_list", scope: !662, file: !662, line: 270, type: !303, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1705 = !DILocalVariable(name: "tmp", scope: !1704, file: !662, line: 272, type: !315)
!1706 = !DILocation(line: 272, column: 10, scope: !1704)
!1707 = !DILocation(line: 274, column: 13, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !662, line: 274, column: 2)
!1709 = !DILocation(line: 274, column: 11, scope: !1708)
!1710 = !DILocation(line: 274, column: 7, scope: !1708)
!1711 = !DILocation(line: 274, column: 24, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !662, discriminator: 1)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !662, line: 274, column: 2)
!1714 = !DILocation(line: 274, column: 28, scope: !1712)
!1715 = !DILocation(line: 274, column: 2, scope: !1712)
!1716 = !DILocalVariable(name: "rec", scope: !1717, file: !662, line: 275, type: !562)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !662, line: 274, column: 53)
!1718 = !DILocation(line: 275, column: 16, scope: !1717)
!1719 = !DILocation(line: 275, column: 22, scope: !1717)
!1720 = !DILocation(line: 275, column: 27, scope: !1717)
!1721 = !DILocation(line: 278, column: 21, scope: !1717)
!1722 = !DILocation(line: 278, column: 26, scope: !1717)
!1723 = !DILocation(line: 278, column: 30, scope: !1717)
!1724 = !DILocation(line: 278, column: 35, scope: !1717)
!1725 = !DILocation(line: 278, column: 41, scope: !1717)
!1726 = !DILocation(line: 278, column: 46, scope: !1717)
!1727 = !DILocation(line: 277, column: 3, scope: !1717)
!1728 = !DILocation(line: 279, column: 2, scope: !1717)
!1729 = !DILocation(line: 274, column: 42, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1713, file: !662, discriminator: 2)
!1731 = !DILocation(line: 274, column: 47, scope: !1730)
!1732 = !DILocation(line: 274, column: 40, scope: !1730)
!1733 = !DILocation(line: 274, column: 2, scope: !1730)
!1734 = distinct !{!1734, !1735}
!1735 = !DILocation(line: 274, column: 2, scope: !1704)
!1736 = !DILocation(line: 280, column: 1, scope: !1704)
!1737 = distinct !DISubprogram(name: "process_find", scope: !662, file: !662, line: 152, type: !1738, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!562, !100, !114}
!1740 = !DILocalVariable(name: "name", arg: 1, scope: !1737, file: !662, line: 152, type: !100)
!1741 = !DILocation(line: 152, column: 46, scope: !1737)
!1742 = !DILocalVariable(name: "verbose", arg: 2, scope: !1737, file: !662, line: 152, type: !114)
!1743 = !DILocation(line: 152, column: 56, scope: !1737)
!1744 = !DILocalVariable(name: "tmp", scope: !1737, file: !662, line: 154, type: !315)
!1745 = !DILocation(line: 154, column: 10, scope: !1737)
!1746 = !DILocation(line: 156, column: 9, scope: !1737)
!1747 = distinct !{!1747, !1746}
!1748 = !DILocation(line: 156, column: 17, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !662, discriminator: 1)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !662, line: 156, column: 17)
!1751 = distinct !DILexicalBlock(scope: !1737, file: !662, line: 156, column: 11)
!1752 = !DILocation(line: 156, column: 22, scope: !1749)
!1753 = !DILocation(line: 156, column: 12, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1755, file: !662, discriminator: 2)
!1755 = distinct !DILexicalBlock(scope: !1750, file: !662, line: 156, column: 10)
!1756 = !DILocation(line: 156, column: 21, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !662, discriminator: 3)
!1758 = distinct !DILexicalBlock(scope: !1750, file: !662, line: 156, column: 19)
!1759 = !DILocation(line: 156, column: 106, scope: !1757)
!1760 = !DILocation(line: 156, column: 14, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1751, file: !662, discriminator: 4)
!1762 = !DILocation(line: 158, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1737, file: !662, line: 158, column: 6)
!1764 = !DILocation(line: 158, column: 6, scope: !1763)
!1765 = !DILocation(line: 158, column: 12, scope: !1763)
!1766 = !DILocation(line: 158, column: 19, scope: !1763)
!1767 = !DILocation(line: 158, column: 33, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1763, file: !662, discriminator: 1)
!1769 = !DILocation(line: 158, column: 37, scope: !1768)
!1770 = !DILocation(line: 158, column: 22, scope: !1768)
!1771 = !DILocation(line: 158, column: 6, scope: !1768)
!1772 = !DILocation(line: 159, column: 45, scope: !1763)
!1773 = !DILocation(line: 159, column: 49, scope: !1763)
!1774 = !DILocation(line: 159, column: 40, scope: !1763)
!1775 = !DILocation(line: 159, column: 54, scope: !1763)
!1776 = !DILocation(line: 159, column: 24, scope: !1768)
!1777 = !DILocation(line: 159, column: 17, scope: !1763)
!1778 = !DILocation(line: 161, column: 13, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1737, file: !662, line: 161, column: 2)
!1780 = !DILocation(line: 161, column: 11, scope: !1779)
!1781 = !DILocation(line: 161, column: 7, scope: !1779)
!1782 = !DILocation(line: 161, column: 24, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1784, file: !662, discriminator: 1)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !662, line: 161, column: 2)
!1785 = !DILocation(line: 161, column: 28, scope: !1783)
!1786 = !DILocation(line: 161, column: 2, scope: !1783)
!1787 = !DILocalVariable(name: "rec", scope: !1788, file: !662, line: 162, type: !562)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !662, line: 161, column: 53)
!1789 = !DILocation(line: 162, column: 16, scope: !1788)
!1790 = !DILocation(line: 162, column: 22, scope: !1788)
!1791 = !DILocation(line: 162, column: 27, scope: !1788)
!1792 = !DILocation(line: 164, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1788, file: !662, line: 164, column: 7)
!1794 = !DILocation(line: 164, column: 12, scope: !1793)
!1795 = !DILocation(line: 164, column: 17, scope: !1793)
!1796 = !DILocation(line: 164, column: 24, scope: !1793)
!1797 = !DILocation(line: 164, column: 37, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1793, file: !662, discriminator: 1)
!1799 = !DILocation(line: 164, column: 42, scope: !1798)
!1800 = !DILocation(line: 164, column: 48, scope: !1798)
!1801 = !DILocation(line: 164, column: 27, scope: !1798)
!1802 = !DILocation(line: 164, column: 54, scope: !1798)
!1803 = !DILocation(line: 164, column: 7, scope: !1798)
!1804 = !DILocation(line: 165, column: 11, scope: !1793)
!1805 = !DILocation(line: 165, column: 4, scope: !1793)
!1806 = !DILocation(line: 166, column: 2, scope: !1788)
!1807 = !DILocation(line: 161, column: 42, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1784, file: !662, discriminator: 2)
!1809 = !DILocation(line: 161, column: 47, scope: !1808)
!1810 = !DILocation(line: 161, column: 40, scope: !1808)
!1811 = !DILocation(line: 161, column: 2, scope: !1808)
!1812 = distinct !{!1812, !1813}
!1813 = !DILocation(line: 161, column: 2, scope: !1737)
!1814 = !DILocation(line: 168, column: 6, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1737, file: !662, line: 168, column: 6)
!1816 = !DILocation(line: 168, column: 6, scope: !1737)
!1817 = !DILocation(line: 170, column: 34, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1815, file: !662, line: 168, column: 15)
!1819 = !DILocation(line: 169, column: 3, scope: !1818)
!1820 = !DILocation(line: 171, column: 2, scope: !1818)
!1821 = !DILocation(line: 173, column: 2, scope: !1737)
!1822 = !DILocation(line: 174, column: 1, scope: !1737)
!1823 = distinct !DISubprogram(name: "exec_wi_destroy", scope: !662, file: !662, line: 49, type: !1824, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !626}
!1826 = !DILocalVariable(name: "rec", arg: 1, scope: !1823, file: !662, line: 49, type: !626)
!1827 = !DILocation(line: 49, column: 42, scope: !1823)
!1828 = !DILocation(line: 51, column: 9, scope: !1823)
!1829 = distinct !{!1829, !1828}
!1830 = !DILocation(line: 51, column: 17, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !662, discriminator: 1)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !662, line: 51, column: 17)
!1833 = distinct !DILexicalBlock(scope: !1823, file: !662, line: 51, column: 11)
!1834 = !DILocation(line: 51, column: 21, scope: !1831)
!1835 = !DILocation(line: 51, column: 12, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1837, file: !662, discriminator: 2)
!1837 = distinct !DILexicalBlock(scope: !1832, file: !662, line: 51, column: 10)
!1838 = !DILocation(line: 51, column: 21, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1840, file: !662, discriminator: 3)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !662, line: 51, column: 19)
!1841 = !DILocation(line: 51, column: 105, scope: !1839)
!1842 = !DILocation(line: 51, column: 116, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1833, file: !662, discriminator: 4)
!1844 = !DILocation(line: 53, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1823, file: !662, line: 53, column: 6)
!1846 = !DILocation(line: 53, column: 11, scope: !1845)
!1847 = !DILocation(line: 53, column: 6, scope: !1823)
!1848 = !DILocation(line: 53, column: 23, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1845, file: !662, discriminator: 1)
!1850 = !DILocation(line: 54, column: 2, scope: !1823)
!1851 = !DILocation(line: 54, column: 7, scope: !1823)
!1852 = !DILocation(line: 54, column: 18, scope: !1823)
!1853 = !DILocation(line: 56, column: 2, scope: !1823)
!1854 = !DILocation(line: 56, column: 7, scope: !1823)
!1855 = !DILocation(line: 56, column: 16, scope: !1823)
!1856 = !DILocation(line: 56, column: 28, scope: !1823)
!1857 = !DILocation(line: 57, column: 56, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1823, file: !662, line: 57, column: 6)
!1859 = !DILocation(line: 57, column: 63, scope: !1858)
!1860 = !DILocation(line: 57, column: 7, scope: !1858)
!1861 = !DILocation(line: 57, column: 71, scope: !1858)
!1862 = !DILocation(line: 57, column: 6, scope: !1823)
!1863 = !DILocation(line: 58, column: 39, scope: !1858)
!1864 = !DILocation(line: 58, column: 23, scope: !1858)
!1865 = !DILocation(line: 58, column: 3, scope: !1858)
!1866 = !DILocation(line: 60, column: 24, scope: !1823)
!1867 = !DILocation(line: 60, column: 30, scope: !1823)
!1868 = !DILocation(line: 60, column: 2, scope: !1823)
!1869 = !DILocation(line: 61, column: 9, scope: !1823)
!1870 = !DILocation(line: 61, column: 14, scope: !1823)
!1871 = !DILocation(line: 61, column: 2, scope: !1823)
!1872 = !DILocation(line: 62, column: 16, scope: !1823)
!1873 = !DILocation(line: 62, column: 9, scope: !1823)
!1874 = !DILocation(line: 63, column: 1, scope: !1823)
!1875 = !DILocation(line: 63, column: 1, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1823, file: !662, discriminator: 1)
!1877 = distinct !DISubprogram(name: "exec_wi_create", scope: !662, file: !662, line: 70, type: !1878, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!626, !579, !562}
!1880 = !DILocalVariable(name: "window", arg: 1, scope: !1877, file: !662, line: 70, type: !579)
!1881 = !DILocation(line: 70, column: 48, scope: !1877)
!1882 = !DILocalVariable(name: "rec", arg: 2, scope: !1877, file: !662, line: 70, type: !562)
!1883 = !DILocation(line: 70, column: 69, scope: !1877)
!1884 = !DILocalVariable(name: "item", scope: !1877, file: !662, line: 72, type: !626)
!1885 = !DILocation(line: 72, column: 15, scope: !1877)
!1886 = !DILocation(line: 74, column: 9, scope: !1877)
!1887 = distinct !{!1887, !1886}
!1888 = !DILocation(line: 74, column: 17, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1890, file: !662, discriminator: 1)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !662, line: 74, column: 17)
!1891 = distinct !DILexicalBlock(scope: !1877, file: !662, line: 74, column: 11)
!1892 = !DILocation(line: 74, column: 24, scope: !1889)
!1893 = !DILocation(line: 74, column: 12, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !662, discriminator: 2)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !662, line: 74, column: 10)
!1896 = !DILocation(line: 74, column: 21, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1898, file: !662, discriminator: 3)
!1898 = distinct !DILexicalBlock(scope: !1890, file: !662, line: 74, column: 19)
!1899 = !DILocation(line: 74, column: 108, scope: !1897)
!1900 = !DILocation(line: 74, column: 14, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1891, file: !662, discriminator: 4)
!1902 = !DILocation(line: 75, column: 9, scope: !1877)
!1903 = distinct !{!1903, !1902}
!1904 = !DILocation(line: 75, column: 17, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1906, file: !662, discriminator: 1)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !662, line: 75, column: 17)
!1907 = distinct !DILexicalBlock(scope: !1877, file: !662, line: 75, column: 11)
!1908 = !DILocation(line: 75, column: 21, scope: !1905)
!1909 = !DILocation(line: 75, column: 12, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1911, file: !662, discriminator: 2)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !662, line: 75, column: 10)
!1912 = !DILocation(line: 75, column: 21, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1914, file: !662, discriminator: 3)
!1914 = distinct !DILexicalBlock(scope: !1906, file: !662, line: 75, column: 19)
!1915 = !DILocation(line: 75, column: 105, scope: !1913)
!1916 = !DILocation(line: 75, column: 14, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1907, file: !662, discriminator: 4)
!1918 = !DILocation(line: 77, column: 26, scope: !1877)
!1919 = !DILocation(line: 77, column: 10, scope: !1877)
!1920 = !DILocation(line: 77, column: 7, scope: !1877)
!1921 = !DILocation(line: 78, column: 15, scope: !1877)
!1922 = !DILocation(line: 78, column: 2, scope: !1877)
!1923 = !DILocation(line: 78, column: 8, scope: !1877)
!1924 = !DILocation(line: 78, column: 13, scope: !1877)
!1925 = !DILocation(line: 79, column: 9, scope: !1877)
!1926 = !DILocation(line: 79, column: 15, scope: !1877)
!1927 = !DILocation(line: 79, column: 23, scope: !1877)
!1928 = !DILocation(line: 80, column: 2, scope: !1877)
!1929 = !DILocation(line: 80, column: 8, scope: !1877)
!1930 = !DILocation(line: 80, column: 19, scope: !1877)
!1931 = !DILocation(line: 81, column: 23, scope: !1877)
!1932 = !DILocation(line: 81, column: 28, scope: !1877)
!1933 = !DILocation(line: 81, column: 33, scope: !1877)
!1934 = !DILocation(line: 81, column: 51, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1877, file: !662, discriminator: 1)
!1936 = !DILocation(line: 81, column: 56, scope: !1935)
!1937 = !DILocation(line: 81, column: 42, scope: !1935)
!1938 = !DILocation(line: 81, column: 23, scope: !1935)
!1939 = !DILocation(line: 82, column: 27, scope: !1877)
!1940 = !DILocation(line: 82, column: 32, scope: !1877)
!1941 = !DILocation(line: 82, column: 3, scope: !1877)
!1942 = !DILocation(line: 81, column: 23, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1877, file: !662, discriminator: 2)
!1944 = !DILocation(line: 81, column: 23, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1877, file: !662, discriminator: 3)
!1946 = !DILocation(line: 81, column: 2, scope: !1945)
!1947 = !DILocation(line: 81, column: 8, scope: !1945)
!1948 = !DILocation(line: 81, column: 21, scope: !1945)
!1949 = !DILocation(line: 84, column: 21, scope: !1877)
!1950 = !DILocation(line: 84, column: 2, scope: !1877)
!1951 = !DILocation(line: 84, column: 8, scope: !1877)
!1952 = !DILocation(line: 84, column: 19, scope: !1877)
!1953 = !DILocation(line: 85, column: 25, scope: !1877)
!1954 = !DILocation(line: 85, column: 9, scope: !1877)
!1955 = !DILocation(line: 85, column: 15, scope: !1877)
!1956 = !DILocation(line: 85, column: 23, scope: !1877)
!1957 = !DILocation(line: 87, column: 24, scope: !1877)
!1958 = !DILocation(line: 87, column: 3, scope: !1877)
!1959 = !DILocation(line: 87, column: 10, scope: !1877)
!1960 = !DILocation(line: 87, column: 22, scope: !1877)
!1961 = !DILocation(line: 88, column: 18, scope: !1877)
!1962 = !DILocation(line: 88, column: 42, scope: !1877)
!1963 = !DILocation(line: 88, column: 26, scope: !1877)
!1964 = !DILocation(line: 88, column: 2, scope: !1877)
!1965 = !DILocation(line: 89, column: 16, scope: !1877)
!1966 = !DILocation(line: 89, column: 9, scope: !1877)
!1967 = !DILocation(line: 90, column: 1, scope: !1877)
!1968 = distinct !DISubprogram(name: "process_exec", scope: !662, file: !662, line: 282, type: !826, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!1969 = !DILocalVariable(name: "rec", arg: 1, scope: !1968, file: !662, line: 282, type: !562)
!1970 = !DILocation(line: 282, column: 39, scope: !1968)
!1971 = !DILocalVariable(name: "cmd", arg: 2, scope: !1968, file: !662, line: 282, type: !100)
!1972 = !DILocation(line: 282, column: 56, scope: !1968)
!1973 = !DILocalVariable(name: "shell_args", scope: !1968, file: !662, line: 284, type: !1974)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, align: 64, elements: !182)
!1975 = !DILocation(line: 284, column: 14, scope: !1968)
!1976 = !DILocalVariable(name: "args", scope: !1968, file: !662, line: 285, type: !469)
!1977 = !DILocation(line: 285, column: 16, scope: !1968)
!1978 = !DILocalVariable(name: "in", scope: !1968, file: !662, line: 286, type: !1979)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, align: 32, elements: !419)
!1980 = !DILocation(line: 286, column: 6, scope: !1968)
!1981 = !DILocalVariable(name: "out", scope: !1968, file: !662, line: 286, type: !1979)
!1982 = !DILocation(line: 286, column: 13, scope: !1968)
!1983 = !DILocalVariable(name: "n", scope: !1968, file: !662, line: 287, type: !114)
!1984 = !DILocation(line: 287, column: 13, scope: !1968)
!1985 = !DILocation(line: 289, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 289, column: 6)
!1987 = !DILocation(line: 289, column: 6, scope: !1986)
!1988 = !DILocation(line: 289, column: 15, scope: !1986)
!1989 = !DILocation(line: 289, column: 6, scope: !1968)
!1990 = !DILocation(line: 290, column: 17, scope: !1986)
!1991 = !DILocation(line: 291, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 291, column: 6)
!1993 = !DILocation(line: 291, column: 6, scope: !1992)
!1994 = !DILocation(line: 291, column: 16, scope: !1992)
!1995 = !DILocation(line: 291, column: 6, scope: !1968)
!1996 = !DILocation(line: 292, column: 3, scope: !1992)
!1997 = !DILocation(line: 294, column: 18, scope: !1968)
!1998 = !DILocation(line: 294, column: 2, scope: !1968)
!1999 = !DILocation(line: 294, column: 16, scope: !1968)
!2000 = !DILocation(line: 295, column: 13, scope: !1968)
!2001 = !DILocation(line: 295, column: 2, scope: !1968)
!2002 = !DILocation(line: 295, column: 7, scope: !1968)
!2003 = !DILocation(line: 295, column: 11, scope: !1968)
!2004 = !DILocation(line: 296, column: 6, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 296, column: 6)
!2006 = !DILocation(line: 296, column: 11, scope: !2005)
!2007 = !DILocation(line: 296, column: 15, scope: !2005)
!2008 = !DILocation(line: 296, column: 6, scope: !1968)
!2009 = !DILocation(line: 298, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !662, line: 296, column: 22)
!2011 = !DILocation(line: 298, column: 3, scope: !2010)
!2012 = !DILocation(line: 298, column: 23, scope: !2010)
!2013 = !DILocation(line: 298, column: 17, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2010, file: !662, discriminator: 1)
!2015 = !DILocation(line: 299, column: 23, scope: !2010)
!2016 = !DILocation(line: 299, column: 17, scope: !2010)
!2017 = !DILocation(line: 299, column: 38, scope: !2010)
!2018 = !DILocation(line: 299, column: 32, scope: !2014)
!2019 = !DILocation(line: 300, column: 3, scope: !2010)
!2020 = !DILocation(line: 303, column: 6, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 303, column: 6)
!2022 = !DILocation(line: 303, column: 11, scope: !2021)
!2023 = !DILocation(line: 303, column: 15, scope: !2021)
!2024 = !DILocation(line: 303, column: 6, scope: !1968)
!2025 = !DILocalVariable(name: "outio", scope: !2026, file: !662, line: 305, type: !198)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !662, line: 303, column: 21)
!2027 = !DILocation(line: 305, column: 29, scope: !2026)
!2028 = !DILocation(line: 305, column: 54, scope: !2026)
!2029 = !DILocation(line: 305, column: 37, scope: !2026)
!2030 = !DILocation(line: 307, column: 30, scope: !2026)
!2031 = !DILocation(line: 307, column: 13, scope: !2026)
!2032 = !DILocation(line: 307, column: 3, scope: !2026)
!2033 = !DILocation(line: 307, column: 8, scope: !2026)
!2034 = !DILocation(line: 307, column: 11, scope: !2026)
!2035 = !DILocation(line: 308, column: 36, scope: !2026)
!2036 = !DILocation(line: 308, column: 14, scope: !2026)
!2037 = !DILocation(line: 308, column: 3, scope: !2026)
!2038 = !DILocation(line: 308, column: 8, scope: !2026)
!2039 = !DILocation(line: 308, column: 12, scope: !2026)
!2040 = !DILocation(line: 310, column: 23, scope: !2026)
!2041 = !DILocation(line: 310, column: 17, scope: !2026)
!2042 = !DILocation(line: 311, column: 9, scope: !2026)
!2043 = !DILocation(line: 311, column: 3, scope: !2026)
!2044 = !DILocation(line: 312, column: 15, scope: !2026)
!2045 = !DILocation(line: 312, column: 20, scope: !2026)
!2046 = !DILocation(line: 312, column: 3, scope: !2026)
!2047 = !DILocation(line: 313, column: 17, scope: !2026)
!2048 = !DILocation(line: 317, column: 2, scope: !1968)
!2049 = !DILocation(line: 319, column: 13, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 319, column: 6)
!2051 = !DILocation(line: 319, column: 6, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2050, file: !662, discriminator: 1)
!2053 = !DILocation(line: 319, column: 23, scope: !2050)
!2054 = !DILocation(line: 319, column: 6, scope: !1968)
!2055 = !DILocation(line: 320, column: 3, scope: !2050)
!2056 = !DILocation(line: 322, column: 13, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 322, column: 6)
!2058 = !DILocation(line: 322, column: 6, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2057, file: !662, discriminator: 1)
!2060 = !DILocation(line: 322, column: 23, scope: !2057)
!2061 = !DILocation(line: 322, column: 6, scope: !1968)
!2062 = !DILocation(line: 323, column: 3, scope: !2057)
!2063 = !DILocation(line: 325, column: 2, scope: !1968)
!2064 = !DILocation(line: 326, column: 2, scope: !1968)
!2065 = !DILocation(line: 328, column: 2, scope: !1968)
!2066 = !DILocation(line: 331, column: 14, scope: !1968)
!2067 = !DILocation(line: 331, column: 9, scope: !1968)
!2068 = !DILocation(line: 332, column: 14, scope: !1968)
!2069 = !DILocation(line: 332, column: 9, scope: !1968)
!2070 = !DILocation(line: 333, column: 7, scope: !1968)
!2071 = !DILocation(line: 333, column: 2, scope: !1968)
!2072 = !DILocation(line: 336, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 336, column: 2)
!2074 = !DILocation(line: 336, column: 7, scope: !2073)
!2075 = !DILocation(line: 336, column: 14, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2077, file: !662, discriminator: 1)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !662, line: 336, column: 2)
!2078 = !DILocation(line: 336, column: 16, scope: !2076)
!2079 = !DILocation(line: 336, column: 2, scope: !2076)
!2080 = !DILocation(line: 337, column: 23, scope: !2077)
!2081 = !DILocation(line: 337, column: 17, scope: !2077)
!2082 = !DILocation(line: 336, column: 24, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2077, file: !662, discriminator: 2)
!2084 = !DILocation(line: 336, column: 2, scope: !2083)
!2085 = distinct !{!2085, !2086}
!2086 = !DILocation(line: 336, column: 2, scope: !1968)
!2087 = !DILocation(line: 339, column: 6, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1968, file: !662, line: 339, column: 6)
!2089 = !DILocation(line: 339, column: 11, scope: !2088)
!2090 = !DILocation(line: 339, column: 6, scope: !1968)
!2091 = !DILocation(line: 340, column: 10, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !662, line: 339, column: 18)
!2093 = !DILocation(line: 340, column: 35, scope: !2092)
!2094 = !DILocation(line: 340, column: 3, scope: !2092)
!2095 = !DILocation(line: 342, column: 10, scope: !2092)
!2096 = !DILocation(line: 342, column: 54, scope: !2092)
!2097 = !DILocation(line: 342, column: 53, scope: !2092)
!2098 = !DILocation(line: 342, column: 41, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2092, file: !662, discriminator: 1)
!2100 = !DILocation(line: 342, column: 3, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2092, file: !662, discriminator: 2)
!2102 = !DILocation(line: 343, column: 2, scope: !2092)
!2103 = !DILocation(line: 344, column: 21, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2088, file: !662, line: 343, column: 9)
!2105 = !DILocation(line: 344, column: 10, scope: !2104)
!2106 = !DILocation(line: 344, column: 8, scope: !2104)
!2107 = !DILocation(line: 345, column: 24, scope: !2104)
!2108 = !DILocation(line: 345, column: 33, scope: !2104)
!2109 = !DILocation(line: 345, column: 17, scope: !2104)
!2110 = !DILocation(line: 347, column: 10, scope: !2104)
!2111 = !DILocation(line: 347, column: 36, scope: !2104)
!2112 = !DILocation(line: 347, column: 58, scope: !2104)
!2113 = !DILocation(line: 347, column: 57, scope: !2104)
!2114 = !DILocation(line: 347, column: 45, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2104, file: !662, discriminator: 1)
!2116 = !DILocation(line: 347, column: 3, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2104, file: !662, discriminator: 2)
!2118 = !DILocation(line: 350, column: 2, scope: !1968)
!2119 = !DILocation(line: 351, column: 1, scope: !1968)
!2120 = distinct !DISubprogram(name: "process_get_new_id", scope: !662, file: !662, line: 92, type: !2121, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!114}
!2123 = !DILocalVariable(name: "rec", scope: !2120, file: !662, line: 94, type: !562)
!2124 = !DILocation(line: 94, column: 22, scope: !2120)
!2125 = !DILocalVariable(name: "tmp", scope: !2120, file: !662, line: 95, type: !315)
!2126 = !DILocation(line: 95, column: 10, scope: !2120)
!2127 = !DILocalVariable(name: "id", scope: !2120, file: !662, line: 96, type: !114)
!2128 = !DILocation(line: 96, column: 6, scope: !2120)
!2129 = !DILocation(line: 98, column: 5, scope: !2120)
!2130 = !DILocation(line: 99, column: 8, scope: !2120)
!2131 = !DILocation(line: 99, column: 6, scope: !2120)
!2132 = !DILocation(line: 100, column: 2, scope: !2120)
!2133 = !DILocation(line: 100, column: 9, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2120, file: !662, discriminator: 1)
!2135 = !DILocation(line: 100, column: 13, scope: !2134)
!2136 = !DILocation(line: 100, column: 2, scope: !2134)
!2137 = !DILocation(line: 101, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2120, file: !662, line: 100, column: 21)
!2139 = !DILocation(line: 101, column: 14, scope: !2138)
!2140 = !DILocation(line: 101, column: 7, scope: !2138)
!2141 = !DILocation(line: 103, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !662, line: 103, column: 7)
!2143 = !DILocation(line: 103, column: 13, scope: !2142)
!2144 = !DILocation(line: 103, column: 18, scope: !2142)
!2145 = !DILocation(line: 103, column: 10, scope: !2142)
!2146 = !DILocation(line: 103, column: 7, scope: !2138)
!2147 = !DILocation(line: 104, column: 10, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !662, line: 103, column: 22)
!2149 = !DILocation(line: 104, column: 15, scope: !2148)
!2150 = !DILocation(line: 104, column: 8, scope: !2148)
!2151 = !DILocation(line: 105, column: 4, scope: !2148)
!2152 = distinct !{!2152, !2132}
!2153 = !DILocation(line: 108, column: 5, scope: !2138)
!2154 = !DILocation(line: 109, column: 9, scope: !2138)
!2155 = !DILocation(line: 109, column: 7, scope: !2138)
!2156 = !DILocation(line: 100, column: 2, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2120, file: !662, discriminator: 2)
!2158 = !DILocation(line: 112, column: 9, scope: !2120)
!2159 = !DILocation(line: 112, column: 2, scope: !2120)
!2160 = distinct !DISubprogram(name: "sig_exec_input_reader", scope: !662, file: !662, line: 353, type: !2161, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !562}
!2163 = !DILocalVariable(name: "rec", arg: 1, scope: !2160, file: !662, line: 353, type: !562)
!2164 = !DILocation(line: 353, column: 48, scope: !2160)
!2165 = !DILocalVariable(name: "tmpbuf", scope: !2160, file: !662, line: 355, type: !2166)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 4096, align: 8, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 512)
!2169 = !DILocation(line: 355, column: 14, scope: !2160)
!2170 = !DILocalVariable(name: "str", scope: !2160, file: !662, line: 355, type: !105)
!2171 = !DILocation(line: 355, column: 28, scope: !2160)
!2172 = !DILocalVariable(name: "recvlen", scope: !2160, file: !662, line: 356, type: !114)
!2173 = !DILocation(line: 356, column: 13, scope: !2160)
!2174 = !DILocalVariable(name: "ret", scope: !2160, file: !662, line: 357, type: !114)
!2175 = !DILocation(line: 357, column: 6, scope: !2160)
!2176 = !DILocation(line: 359, column: 2, scope: !2160)
!2177 = distinct !{!2177, !2176}
!2178 = !DILocation(line: 359, column: 10, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2180, file: !662, discriminator: 1)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !662, line: 359, column: 10)
!2181 = distinct !DILexicalBlock(scope: !2160, file: !662, line: 359, column: 4)
!2182 = !DILocation(line: 359, column: 14, scope: !2179)
!2183 = !DILocation(line: 359, column: 5, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2185, file: !662, discriminator: 2)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !662, line: 359, column: 3)
!2186 = !DILocation(line: 359, column: 14, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2188, file: !662, discriminator: 3)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !662, line: 359, column: 12)
!2189 = !DILocation(line: 359, column: 98, scope: !2187)
!2190 = !DILocation(line: 359, column: 109, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2181, file: !662, discriminator: 4)
!2192 = !DILocation(line: 361, column: 24, scope: !2160)
!2193 = !DILocation(line: 361, column: 29, scope: !2160)
!2194 = !DILocation(line: 361, column: 33, scope: !2160)
!2195 = !DILocation(line: 361, column: 12, scope: !2160)
!2196 = !DILocation(line: 361, column: 10, scope: !2160)
!2197 = !DILocation(line: 362, column: 2, scope: !2160)
!2198 = distinct !{!2198, !2197}
!2199 = !DILocation(line: 363, column: 20, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2160, file: !662, line: 362, column: 5)
!2201 = !DILocation(line: 363, column: 28, scope: !2200)
!2202 = !DILocation(line: 363, column: 44, scope: !2200)
!2203 = !DILocation(line: 363, column: 49, scope: !2200)
!2204 = !DILocation(line: 363, column: 9, scope: !2200)
!2205 = !DILocation(line: 363, column: 7, scope: !2200)
!2206 = !DILocation(line: 364, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !662, line: 364, column: 7)
!2208 = !DILocation(line: 364, column: 11, scope: !2207)
!2209 = !DILocation(line: 364, column: 7, scope: !2200)
!2210 = !DILocation(line: 366, column: 20, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !662, line: 364, column: 18)
!2212 = !DILocation(line: 366, column: 25, scope: !2211)
!2213 = !DILocation(line: 366, column: 4, scope: !2211)
!2214 = !DILocation(line: 367, column: 25, scope: !2211)
!2215 = !DILocation(line: 367, column: 30, scope: !2211)
!2216 = !DILocation(line: 367, column: 39, scope: !2211)
!2217 = !DILocation(line: 368, column: 4, scope: !2211)
!2218 = !DILocation(line: 371, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2200, file: !662, line: 371, column: 7)
!2220 = !DILocation(line: 371, column: 11, scope: !2219)
!2221 = !DILocation(line: 371, column: 7, scope: !2200)
!2222 = !DILocation(line: 372, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !662, line: 371, column: 16)
!2224 = !DILocation(line: 372, column: 41, scope: !2223)
!2225 = !DILocation(line: 372, column: 46, scope: !2223)
!2226 = !DILocation(line: 372, column: 4, scope: !2223)
!2227 = !DILocation(line: 373, column: 29, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !662, line: 373, column: 29)
!2229 = !DILocation(line: 373, column: 37, scope: !2228)
!2230 = !DILocation(line: 373, column: 29, scope: !2223)
!2231 = !DILocation(line: 373, column: 50, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2228, file: !662, discriminator: 1)
!2233 = !DILocation(line: 373, column: 42, scope: !2232)
!2234 = !DILocation(line: 374, column: 3, scope: !2223)
!2235 = !DILocation(line: 375, column: 2, scope: !2200)
!2236 = !DILocation(line: 375, column: 11, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2160, file: !662, discriminator: 1)
!2238 = !DILocation(line: 375, column: 15, scope: !2237)
!2239 = !DILocation(line: 375, column: 2, scope: !2237)
!2240 = !DILocation(line: 376, column: 1, scope: !2160)
!2241 = distinct !DISubprogram(name: "signal_name_to_id", scope: !662, file: !662, line: 215, type: !2242, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!114, !100}
!2244 = !DILocalVariable(name: "name", arg: 1, scope: !2241, file: !662, line: 215, type: !100)
!2245 = !DILocation(line: 215, column: 42, scope: !2241)
!2246 = !DILocation(line: 220, column: 25, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 220, column: 6)
!2248 = !DILocation(line: 220, column: 6, scope: !2247)
!2249 = !DILocation(line: 220, column: 38, scope: !2247)
!2250 = !DILocation(line: 220, column: 6, scope: !2241)
!2251 = !DILocation(line: 221, column: 17, scope: !2247)
!2252 = !DILocation(line: 222, column: 25, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 222, column: 6)
!2254 = !DILocation(line: 222, column: 6, scope: !2253)
!2255 = !DILocation(line: 222, column: 38, scope: !2253)
!2256 = !DILocation(line: 222, column: 6, scope: !2241)
!2257 = !DILocation(line: 223, column: 17, scope: !2253)
!2258 = !DILocation(line: 224, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 224, column: 6)
!2260 = !DILocation(line: 224, column: 6, scope: !2259)
!2261 = !DILocation(line: 224, column: 39, scope: !2259)
!2262 = !DILocation(line: 224, column: 6, scope: !2241)
!2263 = !DILocation(line: 225, column: 17, scope: !2259)
!2264 = !DILocation(line: 226, column: 25, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 226, column: 6)
!2266 = !DILocation(line: 226, column: 6, scope: !2265)
!2267 = !DILocation(line: 226, column: 39, scope: !2265)
!2268 = !DILocation(line: 226, column: 6, scope: !2241)
!2269 = !DILocation(line: 227, column: 17, scope: !2265)
!2270 = !DILocation(line: 228, column: 25, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 228, column: 6)
!2272 = !DILocation(line: 228, column: 6, scope: !2271)
!2273 = !DILocation(line: 228, column: 39, scope: !2271)
!2274 = !DILocation(line: 228, column: 6, scope: !2241)
!2275 = !DILocation(line: 229, column: 17, scope: !2271)
!2276 = !DILocation(line: 230, column: 25, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2241, file: !662, line: 230, column: 6)
!2278 = !DILocation(line: 230, column: 6, scope: !2277)
!2279 = !DILocation(line: 230, column: 39, scope: !2277)
!2280 = !DILocation(line: 230, column: 6, scope: !2241)
!2281 = !DILocation(line: 231, column: 17, scope: !2277)
!2282 = !DILocation(line: 232, column: 9, scope: !2241)
!2283 = !DILocation(line: 233, column: 1, scope: !2241)
!2284 = distinct !DISubprogram(name: "process_find_id", scope: !662, file: !662, line: 131, type: !2285, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!562, !114, !114}
!2287 = !DILocalVariable(name: "id", arg: 1, scope: !2284, file: !662, line: 131, type: !114)
!2288 = !DILocation(line: 131, column: 41, scope: !2284)
!2289 = !DILocalVariable(name: "verbose", arg: 2, scope: !2284, file: !662, line: 131, type: !114)
!2290 = !DILocation(line: 131, column: 49, scope: !2284)
!2291 = !DILocalVariable(name: "tmp", scope: !2284, file: !662, line: 133, type: !315)
!2292 = !DILocation(line: 133, column: 10, scope: !2284)
!2293 = !DILocation(line: 135, column: 9, scope: !2284)
!2294 = distinct !{!2294, !2293}
!2295 = !DILocation(line: 135, column: 17, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2297, file: !662, discriminator: 1)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !662, line: 135, column: 17)
!2298 = distinct !DILexicalBlock(scope: !2284, file: !662, line: 135, column: 11)
!2299 = !DILocation(line: 135, column: 20, scope: !2296)
!2300 = !DILocation(line: 135, column: 29, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2302, file: !662, discriminator: 2)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !662, line: 135, column: 27)
!2303 = !DILocation(line: 135, column: 38, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !662, discriminator: 3)
!2305 = distinct !DILexicalBlock(scope: !2297, file: !662, line: 135, column: 36)
!2306 = !DILocation(line: 135, column: 119, scope: !2304)
!2307 = !DILocation(line: 135, column: 14, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2298, file: !662, discriminator: 4)
!2309 = !DILocation(line: 137, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2284, file: !662, line: 137, column: 2)
!2311 = !DILocation(line: 137, column: 11, scope: !2310)
!2312 = !DILocation(line: 137, column: 7, scope: !2310)
!2313 = !DILocation(line: 137, column: 24, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2315, file: !662, discriminator: 1)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !662, line: 137, column: 2)
!2316 = !DILocation(line: 137, column: 28, scope: !2314)
!2317 = !DILocation(line: 137, column: 2, scope: !2314)
!2318 = !DILocalVariable(name: "rec", scope: !2319, file: !662, line: 138, type: !562)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !662, line: 137, column: 53)
!2320 = !DILocation(line: 138, column: 16, scope: !2319)
!2321 = !DILocation(line: 138, column: 22, scope: !2319)
!2322 = !DILocation(line: 138, column: 27, scope: !2319)
!2323 = !DILocation(line: 140, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !662, line: 140, column: 7)
!2325 = !DILocation(line: 140, column: 12, scope: !2324)
!2326 = !DILocation(line: 140, column: 18, scope: !2324)
!2327 = !DILocation(line: 140, column: 15, scope: !2324)
!2328 = !DILocation(line: 140, column: 7, scope: !2319)
!2329 = !DILocation(line: 141, column: 11, scope: !2324)
!2330 = !DILocation(line: 141, column: 4, scope: !2324)
!2331 = !DILocation(line: 142, column: 2, scope: !2319)
!2332 = !DILocation(line: 137, column: 42, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2315, file: !662, discriminator: 2)
!2334 = !DILocation(line: 137, column: 47, scope: !2333)
!2335 = !DILocation(line: 137, column: 40, scope: !2333)
!2336 = !DILocation(line: 137, column: 2, scope: !2333)
!2337 = distinct !{!2337, !2338}
!2338 = !DILocation(line: 137, column: 2, scope: !2284)
!2339 = !DILocation(line: 144, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2284, file: !662, line: 144, column: 6)
!2341 = !DILocation(line: 144, column: 6, scope: !2284)
!2342 = !DILocation(line: 146, column: 32, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !662, line: 144, column: 15)
!2344 = !DILocation(line: 145, column: 3, scope: !2343)
!2345 = !DILocation(line: 147, column: 2, scope: !2343)
!2346 = !DILocation(line: 149, column: 2, scope: !2284)
!2347 = !DILocation(line: 150, column: 1, scope: !2284)
!2348 = distinct !DISubprogram(name: "exec_get_target", scope: !662, file: !662, line: 65, type: !515, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2349 = !DILocalVariable(name: "item", arg: 1, scope: !2348, file: !662, line: 65, type: !497)
!2350 = !DILocation(line: 65, column: 49, scope: !2348)
!2351 = !DILocation(line: 67, column: 26, scope: !2348)
!2352 = !DILocation(line: 67, column: 33, scope: !2348)
!2353 = !DILocation(line: 67, column: 2, scope: !2348)
!2354 = distinct !DISubprogram(name: "process_find_pid", scope: !662, file: !662, line: 115, type: !2355, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !668)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!562, !114}
!2357 = !DILocalVariable(name: "pid", arg: 1, scope: !2354, file: !662, line: 115, type: !114)
!2358 = !DILocation(line: 115, column: 42, scope: !2354)
!2359 = !DILocalVariable(name: "tmp", scope: !2354, file: !662, line: 117, type: !315)
!2360 = !DILocation(line: 117, column: 10, scope: !2354)
!2361 = !DILocation(line: 119, column: 9, scope: !2354)
!2362 = distinct !{!2362, !2361}
!2363 = !DILocation(line: 119, column: 17, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2365, file: !662, discriminator: 1)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !662, line: 119, column: 17)
!2366 = distinct !DILexicalBlock(scope: !2354, file: !662, line: 119, column: 11)
!2367 = !DILocation(line: 119, column: 21, scope: !2364)
!2368 = !DILocation(line: 119, column: 28, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !662, discriminator: 2)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !662, line: 119, column: 26)
!2371 = !DILocation(line: 119, column: 37, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2373, file: !662, discriminator: 3)
!2373 = distinct !DILexicalBlock(scope: !2365, file: !662, line: 119, column: 35)
!2374 = !DILocation(line: 119, column: 117, scope: !2372)
!2375 = !DILocation(line: 119, column: 14, scope: !2376)
!2376 = !DILexicalBlockFile(scope: !2366, file: !662, discriminator: 4)
!2377 = !DILocation(line: 121, column: 13, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2354, file: !662, line: 121, column: 2)
!2379 = !DILocation(line: 121, column: 11, scope: !2378)
!2380 = !DILocation(line: 121, column: 7, scope: !2378)
!2381 = !DILocation(line: 121, column: 24, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2383, file: !662, discriminator: 1)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !662, line: 121, column: 2)
!2384 = !DILocation(line: 121, column: 28, scope: !2382)
!2385 = !DILocation(line: 121, column: 2, scope: !2382)
!2386 = !DILocalVariable(name: "rec", scope: !2387, file: !662, line: 122, type: !562)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !662, line: 121, column: 53)
!2388 = !DILocation(line: 122, column: 16, scope: !2387)
!2389 = !DILocation(line: 122, column: 22, scope: !2387)
!2390 = !DILocation(line: 122, column: 27, scope: !2387)
!2391 = !DILocation(line: 124, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !662, line: 124, column: 7)
!2393 = !DILocation(line: 124, column: 12, scope: !2392)
!2394 = !DILocation(line: 124, column: 19, scope: !2392)
!2395 = !DILocation(line: 124, column: 16, scope: !2392)
!2396 = !DILocation(line: 124, column: 7, scope: !2387)
!2397 = !DILocation(line: 125, column: 11, scope: !2392)
!2398 = !DILocation(line: 125, column: 4, scope: !2392)
!2399 = !DILocation(line: 126, column: 2, scope: !2387)
!2400 = !DILocation(line: 121, column: 42, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2383, file: !662, discriminator: 2)
!2402 = !DILocation(line: 121, column: 47, scope: !2401)
!2403 = !DILocation(line: 121, column: 40, scope: !2401)
!2404 = !DILocation(line: 121, column: 2, scope: !2401)
!2405 = distinct !{!2405, !2406}
!2406 = !DILocation(line: 121, column: 2, scope: !2354)
!2407 = !DILocation(line: 128, column: 2, scope: !2354)
!2408 = !DILocation(line: 129, column: 1, scope: !2354)
