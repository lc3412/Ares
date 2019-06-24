; ModuleID = './line220-fe-core-commands.o.i'
source_filename = "./line220-fe-core-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GTimeVal = type { i64, i64 }
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
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.COMMAND_REC = type { %struct._GSList*, i8*, i8*, i8** }

@command_hide_output = common global i32 0, align 4
@command_cmd = internal global i32 0, align 4
@time_command_now = internal global %struct._GTimeVal zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"default command\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"list subcommands\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"current +level +window\00", align 1
@__func__.cmd_echo = private unnamed_addr constant [9 x i8] c"cmd_echo\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.cmd_version = private unnamed_addr constant [12 x i8] c"cmd_version\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Client: irssi 1.2-g90165c0 (%d %s)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.cmd_uptime = private unnamed_addr constant [11 x i8] c"cmd_uptime\00", align 1
@client_start_time = external global i64, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"Uptime: %ldd %ldh %ldm %lds\00", align 1
@__func__.cmd_nick = private unnamed_addr constant [9 x i8] c"cmd_nick\00", align 1
@current_cmdline = internal global i8* null, align 8
@time_command_last = internal global %struct._GTimeVal zeroinitializer, align 8
@last_command_cmd = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"print starting\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"print format\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"send text\00", align 1
@ret_texts = internal global [18 x i32] [i32 154, i32 155, i32 156, i32 152, i32 153, i32 -1, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 165, i32 168, i32 170, i32 171, i32 172], align 16
@commands = external global %struct._GSList*, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: nounwind uwtable
define void @fe_core_commands_init() #0 !dbg !369 {
  store i32 0, i32* @command_hide_output, align 4, !dbg !373
  store i32 0, i32* @command_cmd, align 4, !dbg !374
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct._GTimeVal* @time_command_now to i8*), i8 0, i64 16, i32 8, i1 false), !dbg !375
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_echo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !376
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_version to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !377
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_cat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !378
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_beep to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !379
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_uptime to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !380
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !381
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !382
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_command_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !383
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @event_default_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !384
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @event_cmderror to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !385
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_list_subcommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !386
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_echo(i8*, i8*, %struct._WI_ITEM_REC*) #0 !dbg !389 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca %struct._GHashTable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !740, metadata !741), !dbg !742
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !743, metadata !741), !dbg !744
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !745, metadata !741), !dbg !746
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !747, metadata !741), !dbg !794
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %8, metadata !795, metadata !741), !dbg !796
  call void @llvm.dbg.declare(metadata i8** %9, metadata !797, metadata !741), !dbg !798
  call void @llvm.dbg.declare(metadata i8** %10, metadata !799, metadata !741), !dbg !800
  call void @llvm.dbg.declare(metadata i8** %11, metadata !801, metadata !741), !dbg !802
  call void @llvm.dbg.declare(metadata i8** %12, metadata !803, metadata !741), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %13, metadata !805, metadata !741), !dbg !806
  br label %14, !dbg !807, !llvm.loop !808

; <label>:14:                                     ; preds = %3
  %15 = load i8*, i8** %4, align 8, !dbg !809
  %16 = icmp ne i8* %15, null, !dbg !813
  br i1 %16, label %17, label %18, !dbg !809

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !814

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_echo, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !817
  br label %70, !dbg !820

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !821

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !823
  %22 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %21, i8** %12, i32 24577, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %8, i8** %9), !dbg !825
  %23 = icmp ne i32 %22, 0, !dbg !825
  br i1 %23, label %25, label %24, !dbg !826

; <label>:24:                                     ; preds = %20
  br label %70, !dbg !827

; <label>:25:                                     ; preds = %20
  %26 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !828
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)), !dbg !829
  store i8* %27, i8** %10, align 8, !dbg !830
  %28 = load i8*, i8** %10, align 8, !dbg !831
  %29 = icmp eq i8* %28, null, !dbg !832
  br i1 %29, label %30, label %31, !dbg !831

; <label>:30:                                     ; preds = %25
  br label %35, !dbg !833

; <label>:31:                                     ; preds = %25
  %32 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !835
  %33 = call i8* @g_hash_table_lookup(%struct._GHashTable* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)), !dbg !836
  %34 = call i32 @level2bits(i8* %33, i32* null), !dbg !837
  br label %35, !dbg !838

; <label>:35:                                     ; preds = %31, %30
  %36 = phi i32 [ 0, %30 ], [ %34, %31 ], !dbg !840
  store i32 %36, i32* %13, align 4, !dbg !842
  %37 = load i32, i32* %13, align 4, !dbg !843
  %38 = icmp eq i32 %37, 0, !dbg !845
  br i1 %38, label %39, label %40, !dbg !846

; <label>:39:                                     ; preds = %35
  store i32 1, i32* %13, align 4, !dbg !847
  br label %40, !dbg !849

; <label>:40:                                     ; preds = %39, %35
  %41 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !850
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !851
  store i8* %42, i8** %11, align 8, !dbg !852
  %43 = load i8*, i8** %11, align 8, !dbg !853
  %44 = icmp eq i8* %43, null, !dbg !854
  br i1 %44, label %45, label %46, !dbg !853

; <label>:45:                                     ; preds = %40
  br label %59, !dbg !855

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %11, align 8, !dbg !856
  %48 = call i32 @is_numeric(i8* %47, i8 signext 0), !dbg !857
  %49 = icmp ne i32 %48, 0, !dbg !857
  br i1 %49, label %50, label %54, !dbg !857

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** %11, align 8, !dbg !858
  %52 = call i32 @atoi(i8* %51) #7, !dbg !859
  %53 = call %struct._WINDOW_REC* @window_find_refnum(i32 %52), !dbg !860
  br label %57, !dbg !861

; <label>:54:                                     ; preds = %46
  %55 = load i8*, i8** %11, align 8, !dbg !862
  %56 = call %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC* null, i8* %55), !dbg !863
  br label %57, !dbg !864

; <label>:57:                                     ; preds = %54, %50
  %58 = phi %struct._WINDOW_REC* [ %53, %50 ], [ %56, %54 ], !dbg !865
  br label %59, !dbg !866

; <label>:59:                                     ; preds = %57, %45
  %60 = phi %struct._WINDOW_REC* [ null, %45 ], [ %58, %57 ], !dbg !867
  store %struct._WINDOW_REC* %60, %struct._WINDOW_REC** %7, align 8, !dbg !868
  %61 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !869
  %62 = icmp eq %struct._WINDOW_REC* %61, null, !dbg !871
  br i1 %62, label %63, label %65, !dbg !872

; <label>:63:                                     ; preds = %59
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !873
  store %struct._WINDOW_REC* %64, %struct._WINDOW_REC** %7, align 8, !dbg !875
  br label %65, !dbg !876

; <label>:65:                                     ; preds = %63, %59
  %66 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !877
  %67 = load i32, i32* %13, align 4, !dbg !878
  %68 = load i8*, i8** %9, align 8, !dbg !879
  call void (%struct._WINDOW_REC*, i32, i8*, ...) @printtext_window(%struct._WINDOW_REC* %66, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %68), !dbg !880
  %69 = load i8*, i8** %12, align 8, !dbg !881
  call void @cmd_params_free(i8* %69), !dbg !882
  br label %70, !dbg !883

; <label>:70:                                     ; preds = %65, %24, %18
  ret void, !dbg !884
}

; Function Attrs: nounwind uwtable
define internal void @cmd_version(i8*) #0 !dbg !885 {
  %2 = alloca i8*, align 8
  %3 = alloca [10 x i8], align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !888, metadata !741), !dbg !889
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !890, metadata !741), !dbg !894
  br label %4, !dbg !895, !llvm.loop !896

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !897
  %6 = icmp ne i8* %5, null, !dbg !901
  br i1 %6, label %7, label %8, !dbg !897

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !902

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_version, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !905
  br label %19, !dbg !908

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !909

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !911
  %12 = load i8, i8* %11, align 1, !dbg !913
  %13 = sext i8 %12 to i32, !dbg !913
  %14 = icmp eq i32 %13, 0, !dbg !914
  br i1 %14, label %15, label %19, !dbg !915

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !916
  %17 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %16, i64 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 2305), !dbg !918
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i32 0, i32 0, !dbg !919
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 262144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i32 20180907, i8* %18), !dbg !920
  br label %19, !dbg !921

; <label>:19:                                     ; preds = %8, %15, %10
  ret void, !dbg !922
}

; Function Attrs: nounwind uwtable
define internal void @cmd_cat(i8*) #0 !dbg !923 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !926, metadata !741), !dbg !927
  call void @llvm.dbg.declare(metadata i8** %3, metadata !928, metadata !741), !dbg !929
  call void @llvm.dbg.declare(metadata i8** %4, metadata !930, metadata !741), !dbg !931
  call void @llvm.dbg.declare(metadata i8** %5, metadata !932, metadata !741), !dbg !933
  call void @llvm.dbg.declare(metadata i32* %6, metadata !934, metadata !741), !dbg !935
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !936, metadata !741), !dbg !937
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !938, metadata !741), !dbg !939
  call void @llvm.dbg.declare(metadata i64* %9, metadata !940, metadata !741), !dbg !941
  %10 = load i8*, i8** %2, align 8, !dbg !942
  %11 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %10, i8** %5, i32 2, i8** %3, i8** %4), !dbg !944
  %12 = icmp ne i32 %11, 0, !dbg !944
  br i1 %12, label %14, label %13, !dbg !945

; <label>:13:                                     ; preds = %1
  br label %55, !dbg !946

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %3, align 8, !dbg !947
  %16 = call i8* @convert_home(i8* %15), !dbg !948
  store i8* %16, i8** %3, align 8, !dbg !949
  %17 = load i8*, i8** %4, align 8, !dbg !950
  %18 = call i32 @atoi(i8* %17) #7, !dbg !951
  store i32 %18, i32* %6, align 4, !dbg !952
  %19 = load i8*, i8** %5, align 8, !dbg !953
  call void @cmd_params_free(i8* %19), !dbg !954
  %20 = load i8*, i8** %3, align 8, !dbg !955
  %21 = call %struct._GIOChannel* @g_io_channel_new_file(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct._GError** null), !dbg !956
  store %struct._GIOChannel* %21, %struct._GIOChannel** %7, align 8, !dbg !957
  %22 = load i8*, i8** %3, align 8, !dbg !958
  call void @g_free(i8* %22), !dbg !959
  %23 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !960
  %24 = icmp eq %struct._GIOChannel* %23, null, !dbg !962
  br i1 %24, label %25, label %29, !dbg !963

; <label>:25:                                     ; preds = %14
  %26 = call i32* @__errno_location() #3, !dbg !964
  %27 = load i32, i32* %26, align 4, !dbg !966
  %28 = call i8* @g_strerror(i32 %27) #3, !dbg !967
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %28), !dbg !969
  br label %55, !dbg !970

; <label>:29:                                     ; preds = %14
  %30 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !971
  %31 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %30, i8* null, %struct._GError** null), !dbg !972
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !973
  %33 = load i32, i32* %6, align 4, !dbg !974
  %34 = sext i32 %33 to i64, !dbg !974
  %35 = call i32 @g_io_channel_seek_position(%struct._GIOChannel* %32, i64 %34, i32 1, %struct._GError** null), !dbg !975
  %36 = call %struct._GString* @g_string_sized_new(i64 512), !dbg !976
  store %struct._GString* %36, %struct._GString** %8, align 8, !dbg !977
  br label %37, !dbg !978

; <label>:37:                                     ; preds = %42, %29
  %38 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !979
  %39 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !981
  %40 = call i32 @g_io_channel_read_line_string(%struct._GIOChannel* %38, %struct._GString* %39, i64* %9, %struct._GError** null), !dbg !982
  %41 = icmp eq i32 %40, 1, !dbg !983
  br i1 %41, label %42, label %51, !dbg !984

; <label>:42:                                     ; preds = %37
  %43 = load i64, i64* %9, align 8, !dbg !985
  %44 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !987
  %45 = getelementptr inbounds %struct._GString, %struct._GString* %44, i32 0, i32 0, !dbg !988
  %46 = load i8*, i8** %45, align 8, !dbg !988
  %47 = getelementptr inbounds i8, i8* %46, i64 %43, !dbg !987
  store i8 0, i8* %47, align 1, !dbg !989
  %48 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !990
  %49 = getelementptr inbounds %struct._GString, %struct._GString* %48, i32 0, i32 0, !dbg !991
  %50 = load i8*, i8** %49, align 8, !dbg !991
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 67633152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %50), !dbg !992
  br label %37, !dbg !993, !llvm.loop !995

; <label>:51:                                     ; preds = %37
  %52 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !996
  %53 = call i8* @g_string_free(%struct._GString* %52, i32 1), !dbg !997
  %54 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !998
  call void @g_io_channel_unref(%struct._GIOChannel* %54), !dbg !999
  br label %55, !dbg !1000

; <label>:55:                                     ; preds = %51, %25, %13
  ret void, !dbg !1001
}

; Function Attrs: nounwind uwtable
define internal void @cmd_beep() #0 !dbg !1002 {
  %1 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !1003
  ret void, !dbg !1004
}

; Function Attrs: nounwind uwtable
define internal void @cmd_uptime(i8*) #0 !dbg !1005 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1006, metadata !741), !dbg !1007
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1008, metadata !741), !dbg !1009
  br label %4, !dbg !1010, !llvm.loop !1011

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !1012
  %6 = icmp ne i8* %5, null, !dbg !1016
  br i1 %6, label %7, label %8, !dbg !1012

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1017

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cmd_uptime, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !1020
  br label %31, !dbg !1023

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1024

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !1026
  %12 = load i8, i8* %11, align 1, !dbg !1028
  %13 = sext i8 %12 to i32, !dbg !1028
  %14 = icmp eq i32 %13, 0, !dbg !1029
  br i1 %14, label %15, label %31, !dbg !1030

; <label>:15:                                     ; preds = %10
  %16 = call i64 @time(i64* null) #8, !dbg !1031
  %17 = load i64, i64* @client_start_time, align 8, !dbg !1033
  %18 = call double @difftime(i64 %16, i64 %17) #3, !dbg !1034
  %19 = fptosi double %18 to i64, !dbg !1036
  store i64 %19, i64* %3, align 8, !dbg !1037
  %20 = load i64, i64* %3, align 8, !dbg !1038
  %21 = sdiv i64 %20, 3600, !dbg !1039
  %22 = sdiv i64 %21, 24, !dbg !1040
  %23 = load i64, i64* %3, align 8, !dbg !1041
  %24 = sdiv i64 %23, 3600, !dbg !1042
  %25 = srem i64 %24, 24, !dbg !1043
  %26 = load i64, i64* %3, align 8, !dbg !1044
  %27 = sdiv i64 %26, 60, !dbg !1045
  %28 = srem i64 %27, 60, !dbg !1046
  %29 = load i64, i64* %3, align 8, !dbg !1047
  %30 = srem i64 %29, 60, !dbg !1048
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 262144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i64 %22, i64 %25, i64 %28, i64 %30), !dbg !1049
  br label %31, !dbg !1050

; <label>:31:                                     ; preds = %8, %15, %10
  ret void, !dbg !1051
}

; Function Attrs: nounwind uwtable
define internal void @cmd_nick(i8*, %struct._SERVER_REC*) #0 !dbg !1052 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1055, metadata !741), !dbg !1056
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1057, metadata !741), !dbg !1058
  br label %5, !dbg !1059, !llvm.loop !1060

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !1061
  %7 = icmp ne i8* %6, null, !dbg !1065
  br i1 %7, label %8, label %9, !dbg !1061

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1066

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !1069
  br label %35, !dbg !1072

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1073

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %3, align 8, !dbg !1075
  %13 = load i8, i8* %12, align 1, !dbg !1077
  %14 = sext i8 %13 to i32, !dbg !1077
  %15 = icmp ne i32 %14, 0, !dbg !1078
  br i1 %15, label %16, label %17, !dbg !1079

; <label>:16:                                     ; preds = %11
  br label %35, !dbg !1080

; <label>:17:                                     ; preds = %11
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1082
  %19 = icmp eq %struct._SERVER_REC* %18, null, !dbg !1084
  br i1 %19, label %27, label %20, !dbg !1085

; <label>:20:                                     ; preds = %17
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1086
  %22 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %21, i32 0, i32 8, !dbg !1088
  %23 = load i8, i8* %22, align 8, !dbg !1088
  %24 = and i8 %23, 1, !dbg !1088
  %25 = zext i8 %24 to i32, !dbg !1088
  %26 = icmp ne i32 %25, 0, !dbg !1086
  br i1 %26, label %31, label %27, !dbg !1089

; <label>:27:                                     ; preds = %20, %17
  br label %28, !dbg !1090, !llvm.loop !1091

; <label>:28:                                     ; preds = %27
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1092
  call void @signal_stop(), !dbg !1095
  br label %35, !dbg !1097
                                                  ; No predecessors!
  br label %31, !dbg !1098

; <label>:31:                                     ; preds = %30, %20
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1100
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 7, !dbg !1101
  %34 = load i8*, i8** %33, align 8, !dbg !1101
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 61, i8* %34), !dbg !1102
  call void @signal_stop(), !dbg !1103
  br label %35, !dbg !1104

; <label>:35:                                     ; preds = %31, %28, %16, %9
  ret void, !dbg !1105
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_command(i8*) #0 !dbg !1107 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1108, metadata !741), !dbg !1109
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1110, metadata !741), !dbg !1111
  %4 = load i8*, i8** %2, align 8, !dbg !1112
  store i8* %4, i8** @current_cmdline, align 8, !dbg !1113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GTimeVal* @time_command_last to i8*), i8* bitcast (%struct._GTimeVal* @time_command_now to i8*), i64 16, i32 8, i1 false), !dbg !1114
  %5 = load i32, i32* @command_cmd, align 4, !dbg !1115
  store i32 %5, i32* @last_command_cmd, align 4, !dbg !1116
  call void @g_get_current_time(%struct._GTimeVal* @time_command_now), !dbg !1117
  %6 = load i8*, i8** %2, align 8, !dbg !1118
  %7 = load i8, i8* %6, align 1, !dbg !1119
  %8 = sext i8 %7 to i32, !dbg !1119
  %9 = icmp ne i32 %8, 0, !dbg !1120
  br i1 %9, label %10, label %17, !dbg !1121

; <label>:10:                                     ; preds = %1
  %11 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !1122
  %12 = load i8*, i8** %2, align 8, !dbg !1123
  %13 = load i8, i8* %12, align 1, !dbg !1124
  %14 = sext i8 %13 to i32, !dbg !1124
  %15 = call i8* @strchr(i8* %11, i32 %14) #7, !dbg !1125
  %16 = icmp ne i8* %15, null, !dbg !1127
  br label %17

; <label>:17:                                     ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32, !dbg !1128
  store i32 %19, i32* @command_cmd, align 4, !dbg !1129
  %20 = load i8*, i8** %2, align 8, !dbg !1130
  %21 = load i8, i8* %20, align 1, !dbg !1131
  %22 = sext i8 %21 to i32, !dbg !1131
  %23 = icmp eq i32 %22, 0, !dbg !1132
  br i1 %23, label %24, label %25, !dbg !1131

; <label>:24:                                     ; preds = %17
  br label %31, !dbg !1133

; <label>:25:                                     ; preds = %17
  %26 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !1134
  %27 = load i8*, i8** %2, align 8, !dbg !1135
  %28 = load i8, i8* %27, align 1, !dbg !1136
  %29 = sext i8 %28 to i32, !dbg !1136
  %30 = call i8* @strchr(i8* %26, i32 %29) #7, !dbg !1137
  br label %31, !dbg !1138

; <label>:31:                                     ; preds = %25, %24
  %32 = phi i8* [ null, %24 ], [ %30, %25 ], !dbg !1140
  store i8* %32, i8** %3, align 8, !dbg !1142
  %33 = load i8*, i8** %3, align 8, !dbg !1143
  %34 = icmp ne i8* %33, null, !dbg !1145
  br i1 %34, label %35, label %61, !dbg !1146

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %2, align 8, !dbg !1147
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1147
  %38 = load i8, i8* %37, align 1, !dbg !1147
  %39 = sext i8 %38 to i32, !dbg !1147
  %40 = icmp eq i32 %39, 94, !dbg !1149
  br i1 %40, label %56, label %41, !dbg !1150

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %2, align 8, !dbg !1151
  %43 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1151
  %44 = load i8, i8* %43, align 1, !dbg !1151
  %45 = sext i8 %44 to i32, !dbg !1151
  %46 = load i8*, i8** %3, align 8, !dbg !1152
  %47 = load i8, i8* %46, align 1, !dbg !1153
  %48 = sext i8 %47 to i32, !dbg !1153
  %49 = icmp eq i32 %45, %48, !dbg !1154
  br i1 %49, label %50, label %61, !dbg !1155

; <label>:50:                                     ; preds = %41
  %51 = load i8*, i8** %2, align 8, !dbg !1156
  %52 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !1156
  %53 = load i8, i8* %52, align 1, !dbg !1156
  %54 = sext i8 %53 to i32, !dbg !1156
  %55 = icmp eq i32 %54, 94, !dbg !1157
  br i1 %55, label %56, label %61, !dbg !1158

; <label>:56:                                     ; preds = %50, %35
  %57 = load i32, i32* @command_hide_output, align 4, !dbg !1159
  %58 = add nsw i32 %57, 1, !dbg !1159
  store i32 %58, i32* @command_hide_output, align 4, !dbg !1159
  %59 = icmp ne i32 %57, 0, !dbg !1159
  br i1 %59, label %61, label %60, !dbg !1160

; <label>:60:                                     ; preds = %56
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1161
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1163
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1164
  br label %61, !dbg !1165

; <label>:61:                                     ; preds = %60, %56, %50, %41, %31
  ret void, !dbg !1166
}

; Function Attrs: nounwind uwtable
define internal void @event_command_last(i8*) #0 !dbg !1167 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1168, metadata !741), !dbg !1169
  %3 = load i32, i32* @command_hide_output, align 4, !dbg !1170
  %4 = icmp ne i32 %3, 0, !dbg !1170
  br i1 %4, label %5, label %10, !dbg !1172

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* @command_hide_output, align 4, !dbg !1173
  %7 = add nsw i32 %6, -1, !dbg !1173
  store i32 %7, i32* @command_hide_output, align 4, !dbg !1173
  %8 = icmp ne i32 %7, 0, !dbg !1173
  br i1 %8, label %10, label %9, !dbg !1175

; <label>:9:                                      ; preds = %5
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1176
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1178
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_stop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1179
  br label %10, !dbg !1180

; <label>:10:                                     ; preds = %9, %5, %1
  ret void, !dbg !1181
}

; Function Attrs: nounwind uwtable
define internal void @event_default_command(i8*, i8*, %struct._WI_ITEM_REC*) #0 !dbg !1182 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1183, metadata !741), !dbg !1184
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1185, metadata !741), !dbg !1186
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1187, metadata !741), !dbg !1188
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1189, metadata !741), !dbg !1190
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1191, metadata !741), !dbg !1192
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1193, metadata !741), !dbg !1194
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1195, metadata !741), !dbg !1196
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1197, metadata !741), !dbg !1198
  %12 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !1199
  store i8* %12, i8** %7, align 8, !dbg !1200
  %13 = load i8*, i8** %4, align 8, !dbg !1201
  store i8* %13, i8** %8, align 8, !dbg !1202
  br label %14, !dbg !1203

; <label>:14:                                     ; preds = %38, %3
  %15 = load i8*, i8** %8, align 8, !dbg !1204
  %16 = load i8, i8* %15, align 1, !dbg !1206
  %17 = sext i8 %16 to i32, !dbg !1206
  %18 = icmp ne i32 %17, 0, !dbg !1207
  br i1 %18, label %19, label %24, !dbg !1208

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %8, align 8, !dbg !1209
  %21 = load i8, i8* %20, align 1, !dbg !1211
  %22 = sext i8 %21 to i32, !dbg !1211
  %23 = icmp ne i32 %22, 32, !dbg !1212
  br label %24

; <label>:24:                                     ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %41, !dbg !1213

; <label>:26:                                     ; preds = %24
  %27 = load i8*, i8** %7, align 8, !dbg !1215
  %28 = load i8*, i8** %8, align 8, !dbg !1218
  %29 = load i8, i8* %28, align 1, !dbg !1219
  %30 = sext i8 %29 to i32, !dbg !1219
  %31 = call i8* @strchr(i8* %27, i32 %30) #7, !dbg !1220
  %32 = icmp ne i8* %31, null, !dbg !1220
  br i1 %32, label %33, label %38, !dbg !1221

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** @current_cmdline, align 8, !dbg !1222
  %35 = load i8*, i8** %5, align 8, !dbg !1224
  %36 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1225
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 3, i8* %34, i8* %35, %struct._WI_ITEM_REC* %36), !dbg !1226
  br label %73, !dbg !1227

; <label>:38:                                     ; preds = %26
  %39 = load i8*, i8** %8, align 8, !dbg !1228
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !1228
  store i8* %40, i8** %8, align 8, !dbg !1228
  br label %14, !dbg !1229, !llvm.loop !1231

; <label>:41:                                     ; preds = %24
  %42 = call i64 @get_timeval_diff(%struct._GTimeVal* @time_command_now, %struct._GTimeVal* @time_command_last), !dbg !1232
  store i64 %42, i64* %11, align 8, !dbg !1233
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1234
  %44 = icmp ne %struct._WI_ITEM_REC* %43, null, !dbg !1236
  br i1 %44, label %45, label %60, !dbg !1237

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* @last_command_cmd, align 4, !dbg !1238
  %47 = icmp ne i32 %46, 0, !dbg !1238
  br i1 %47, label %60, label %48, !dbg !1240

; <label>:48:                                     ; preds = %45
  %49 = load i64, i64* %11, align 8, !dbg !1241
  %50 = icmp slt i64 %49, 200, !dbg !1243
  br i1 %50, label %51, label %60, !dbg !1244

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** @current_cmdline, align 8, !dbg !1245
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1247
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 6, !dbg !1248
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %54, align 8, !dbg !1248
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1249
  %57 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %56, i32 0, i32 5, !dbg !1250
  %58 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %57, align 8, !dbg !1250
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 3, i8* %52, %struct._SERVER_REC* %55, %struct._WI_ITEM_REC* %58), !dbg !1251
  store i32 0, i32* @command_cmd, align 4, !dbg !1252
  br label %73, !dbg !1253

; <label>:60:                                     ; preds = %48, %45, %41
  %61 = load i8*, i8** %4, align 8, !dbg !1254
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !1255
  store i8* %62, i8** %9, align 8, !dbg !1256
  %63 = load i8*, i8** %9, align 8, !dbg !1257
  %64 = call i8* @strchr(i8* %63, i32 32) #7, !dbg !1258
  store i8* %64, i8** %10, align 8, !dbg !1259
  %65 = load i8*, i8** %10, align 8, !dbg !1260
  %66 = icmp ne i8* %65, null, !dbg !1262
  br i1 %66, label %67, label %69, !dbg !1263

; <label>:67:                                     ; preds = %60
  %68 = load i8*, i8** %10, align 8, !dbg !1264
  store i8 0, i8* %68, align 1, !dbg !1266
  br label %69, !dbg !1267

; <label>:69:                                     ; preds = %67, %60
  %70 = load i8*, i8** %9, align 8, !dbg !1268
  %71 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 2, i8* null, i8* %70), !dbg !1269
  %72 = load i8*, i8** %9, align 8, !dbg !1270
  call void @g_free(i8* %72), !dbg !1271
  br label %73, !dbg !1272

; <label>:73:                                     ; preds = %69, %51, %33
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal void @event_cmderror(i8*, i8*) #0 !dbg !1274 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1277, metadata !741), !dbg !1278
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1279, metadata !741), !dbg !1280
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1281, metadata !741), !dbg !1282
  %6 = load i8*, i8** %3, align 8, !dbg !1283
  %7 = ptrtoint i8* %6 to i64, !dbg !1284
  %8 = trunc i64 %7 to i32, !dbg !1285
  store i32 %8, i32* %5, align 4, !dbg !1286
  %9 = load i32, i32* %5, align 4, !dbg !1287
  %10 = icmp eq i32 %9, 2, !dbg !1289
  br i1 %10, label %11, label %15, !dbg !1290

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #3, !dbg !1291
  %13 = load i32, i32* %12, align 4, !dbg !1293
  %14 = call i8* @g_strerror(i32 %13) #3, !dbg !1294
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %14), !dbg !1296
  br label %22, !dbg !1298

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4, !dbg !1299
  %17 = add nsw i32 %16, 3, !dbg !1301
  %18 = sext i32 %17 to i64, !dbg !1302
  %19 = getelementptr inbounds [18 x i32], [18 x i32]* @ret_texts, i64 0, i64 %18, !dbg !1302
  %20 = load i32, i32* %19, align 4, !dbg !1302
  %21 = load i8*, i8** %4, align 8, !dbg !1303
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 %20, i8* %21), !dbg !1304
  br label %22

; <label>:22:                                     ; preds = %15, %11
  ret void, !dbg !1305
}

; Function Attrs: nounwind uwtable
define internal void @event_list_subcommands(i8*) #0 !dbg !1306 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.COMMAND_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1307, metadata !741), !dbg !1308
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1309, metadata !741), !dbg !1310
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1311, metadata !741), !dbg !1312
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1313, metadata !741), !dbg !1314
  %7 = call %struct._GString* @g_string_new(i8* null), !dbg !1315
  store %struct._GString* %7, %struct._GString** %4, align 8, !dbg !1316
  %8 = load i8*, i8** %2, align 8, !dbg !1317
  %9 = call i64 @strlen(i8* %8) #7, !dbg !1318
  %10 = trunc i64 %9 to i32, !dbg !1318
  store i32 %10, i32* %5, align 4, !dbg !1319
  %11 = load %struct._GSList*, %struct._GSList** @commands, align 8, !dbg !1320
  store %struct._GSList* %11, %struct._GSList** %3, align 8, !dbg !1322
  br label %12, !dbg !1323

; <label>:12:                                     ; preds = %58, %1
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1324
  %14 = icmp ne %struct._GSList* %13, null, !dbg !1327
  br i1 %14, label %15, label %62, !dbg !1328

; <label>:15:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata %struct.COMMAND_REC** %6, metadata !1329, metadata !741), !dbg !1339
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1340
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !1341
  %18 = load i8*, i8** %17, align 8, !dbg !1341
  %19 = bitcast i8* %18 to %struct.COMMAND_REC*, !dbg !1340
  store %struct.COMMAND_REC* %19, %struct.COMMAND_REC** %6, align 8, !dbg !1339
  %20 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1342
  %21 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %20, i32 0, i32 2, !dbg !1344
  %22 = load i8*, i8** %21, align 8, !dbg !1344
  %23 = load i8*, i8** %2, align 8, !dbg !1345
  %24 = load i32, i32* %5, align 4, !dbg !1346
  %25 = sext i32 %24 to i64, !dbg !1346
  %26 = call i32 @g_ascii_strncasecmp(i8* %22, i8* %23, i64 %25), !dbg !1347
  %27 = icmp eq i32 %26, 0, !dbg !1348
  br i1 %27, label %28, label %57, !dbg !1349

; <label>:28:                                     ; preds = %15
  %29 = load i32, i32* %5, align 4, !dbg !1350
  %30 = sext i32 %29 to i64, !dbg !1351
  %31 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1351
  %32 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %31, i32 0, i32 2, !dbg !1352
  %33 = load i8*, i8** %32, align 8, !dbg !1352
  %34 = getelementptr inbounds i8, i8* %33, i64 %30, !dbg !1351
  %35 = load i8, i8* %34, align 1, !dbg !1351
  %36 = sext i8 %35 to i32, !dbg !1351
  %37 = icmp eq i32 %36, 32, !dbg !1353
  br i1 %37, label %38, label %57, !dbg !1354

; <label>:38:                                     ; preds = %28
  %39 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1355
  %40 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %39, i32 0, i32 2, !dbg !1356
  %41 = load i8*, i8** %40, align 8, !dbg !1356
  %42 = load i32, i32* %5, align 4, !dbg !1357
  %43 = sext i32 %42 to i64, !dbg !1358
  %44 = getelementptr inbounds i8, i8* %41, i64 %43, !dbg !1358
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1359
  %46 = call i8* @strchr(i8* %45, i32 32) #7, !dbg !1360
  %47 = icmp eq i8* %46, null, !dbg !1361
  br i1 %47, label %48, label %57, !dbg !1362

; <label>:48:                                     ; preds = %38
  %49 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1364
  %50 = load %struct.COMMAND_REC*, %struct.COMMAND_REC** %6, align 8, !dbg !1366
  %51 = getelementptr inbounds %struct.COMMAND_REC, %struct.COMMAND_REC* %50, i32 0, i32 2, !dbg !1367
  %52 = load i8*, i8** %51, align 8, !dbg !1367
  %53 = load i32, i32* %5, align 4, !dbg !1368
  %54 = sext i32 %53 to i64, !dbg !1369
  %55 = getelementptr inbounds i8, i8* %52, i64 %54, !dbg !1369
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1370
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* %56), !dbg !1371
  br label %57, !dbg !1372

; <label>:57:                                     ; preds = %48, %38, %28, %15
  br label %58, !dbg !1373

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1374
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !1376
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1376
  store %struct._GSList* %61, %struct._GSList** %3, align 8, !dbg !1377
  br label %12, !dbg !1378, !llvm.loop !1379

; <label>:62:                                     ; preds = %12
  %63 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1381
  %64 = getelementptr inbounds %struct._GString, %struct._GString* %63, i32 0, i32 1, !dbg !1383
  %65 = load i64, i64* %64, align 8, !dbg !1383
  %66 = icmp ne i64 %65, 0, !dbg !1384
  br i1 %66, label %67, label %77, !dbg !1385

; <label>:67:                                     ; preds = %62
  %68 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1386
  %69 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1388
  %70 = getelementptr inbounds %struct._GString, %struct._GString* %69, i32 0, i32 1, !dbg !1389
  %71 = load i64, i64* %70, align 8, !dbg !1389
  %72 = sub i64 %71, 1, !dbg !1390
  %73 = call %struct._GString* @g_string_truncate(%struct._GString* %68, i64 %72), !dbg !1391
  %74 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1392
  %75 = getelementptr inbounds %struct._GString, %struct._GString* %74, i32 0, i32 0, !dbg !1393
  %76 = load i8*, i8** %75, align 8, !dbg !1393
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 1048576, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* %76), !dbg !1394
  br label %77, !dbg !1395

; <label>:77:                                     ; preds = %67, %62
  %78 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1396
  %79 = call i8* @g_string_free(%struct._GString* %78, i32 1), !dbg !1397
  ret void, !dbg !1398
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_core_commands_deinit() #0 !dbg !1399 {
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @cmd_echo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1400
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_version to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1401
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_cat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1402
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_beep to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1403
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_uptime to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1404
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1405
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1406
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_command_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1407
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._WI_ITEM_REC*)* @event_default_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1408
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @event_cmderror to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1409
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_list_subcommands to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1410
  ret void, !dbg !1411
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @level2bits(i8*, i32*) #2

declare i32 @is_numeric(i8*, i8 signext) #2

declare %struct._WINDOW_REC* @window_find_refnum(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %struct._WINDOW_REC* @window_find_item(%struct._SERVER_REC*, i8*) #2

declare void @printtext_window(%struct._WINDOW_REC*, i32, i8*, ...) #2

declare void @cmd_params_free(i8*) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

declare void @printtext(i8*, i8*, i32, i8*, ...) #2

declare i8* @convert_home(i8*) #2

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #2

declare i32 @g_io_channel_seek_position(%struct._GIOChannel*, i64, i32, %struct._GError**) #2

declare %struct._GString* @g_string_sized_new(i64) #2

declare i32 @g_io_channel_read_line_string(%struct._GIOChannel*, %struct._GString*, i64*, %struct._GError**) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #6

declare void @signal_stop() #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare void @g_get_current_time(%struct._GTimeVal*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_stop() #0 !dbg !1412 {
  call void @signal_stop(), !dbg !1413
  ret void, !dbg !1414
}

declare i64 @get_timeval_diff(%struct._GTimeVal*, %struct._GTimeVal*) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!366, !367}
!llvm.ident = !{!368}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !329, globals: !349)
!1 = !DIFile(filename: "line220-fe-core-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !87}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!39 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!40 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!41 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!42 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!43 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!44 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!45 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!46 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!47 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!48 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!49 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!50 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!51 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!52 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!53 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!54 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!55 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!56 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!57 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!58 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!59 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!60 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!61 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!62 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!63 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!64 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!65 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 25, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!69 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!70 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!71 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!72 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!73 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!74 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!75 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!76 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!77 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!78 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!79 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!80 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!81 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!82 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!83 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!84 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!85 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!86 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 3, size: 32, align: 32, elements: !89)
!88 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!90 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!91 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!92 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!93 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!94 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!95 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!96 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!97 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!98 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!99 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!100 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!101 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!102 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!103 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!104 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!105 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!106 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!107 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!108 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!109 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!110 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!111 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!112 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!113 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!114 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!115 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!116 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!117 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!118 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!119 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!120 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!121 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!122 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!123 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!124 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!125 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!126 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!127 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!128 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!129 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!130 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!131 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!132 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!133 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!134 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!135 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!136 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!137 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!138 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!139 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!140 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!141 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!142 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!143 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!144 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!145 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!146 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!147 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!148 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!149 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!150 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!151 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!152 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!153 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!154 = !DIEnumerator(name: "TXT_PART", value: 64)
!155 = !DIEnumerator(name: "TXT_KICK", value: 65)
!156 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!157 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!158 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!159 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!160 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!161 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!162 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!163 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!164 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!165 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!166 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!167 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!168 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!169 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!170 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!171 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!172 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!173 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!174 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!175 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!176 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!177 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!178 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!179 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!180 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!181 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!182 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!183 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!184 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!185 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!186 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!187 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!188 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!189 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!190 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!191 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!192 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!193 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!194 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!195 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!196 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!197 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!198 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!199 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!200 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!201 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!202 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!203 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!204 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!205 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!206 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!207 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!208 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!209 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!210 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!211 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!212 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!213 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!214 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!215 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!216 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!217 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!218 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!219 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!220 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!221 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!222 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!223 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!224 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!225 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!226 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!227 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!228 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!229 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!230 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!231 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!232 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!233 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!234 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!235 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!236 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!237 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!238 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!239 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!240 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!241 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!242 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!243 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!244 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!245 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!246 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!247 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!248 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!249 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!250 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!251 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!252 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!253 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!254 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!255 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!256 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!257 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!258 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!259 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!260 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!261 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!262 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!263 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!264 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!265 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!266 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!267 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!268 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!269 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!270 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!271 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!272 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!273 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!274 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!275 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!276 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!277 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!278 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!279 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!280 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!281 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!282 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!283 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!284 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!285 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!286 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!287 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!288 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!289 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!290 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!291 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!292 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!293 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!294 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!295 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!296 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!297 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!298 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!299 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!300 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!301 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!302 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!303 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!304 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!305 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!306 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!307 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!308 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!309 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!310 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!311 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!312 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!313 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!314 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!315 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!316 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!317 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!318 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!319 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!320 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!321 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!322 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!323 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!324 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!325 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!326 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!327 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!328 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!329 = !{!330, !337, !338, !342, !344, !345, !346, !347}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !331, line: 9, baseType: !332)
!331 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !335, !335, !335, !335, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !340, line: 46, baseType: !341)
!340 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!344 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !340, line: 77, baseType: !337)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !340, line: 48, baseType: !344)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !340, line: 49, baseType: !348)
!348 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!349 = !{!350, !352, !358, !359, !360, !361, !362}
!350 = distinct !DIGlobalVariable(name: "command_hide_output", scope: !0, file: !351, line: 61, type: !348, isLocal: false, isDefinition: true, variable: i32* @command_hide_output)
!351 = !DIFile(filename: "fe-core-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!352 = distinct !DIGlobalVariable(name: "time_command_now", scope: !0, file: !351, line: 68, type: !353, isLocal: true, isDefinition: true, variable: %struct._GTimeVal* @time_command_now)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !340, line: 504, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !340, line: 506, size: 128, align: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !354, file: !340, line: 508, baseType: !346, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !354, file: !340, line: 509, baseType: !346, size: 64, align: 64, offset: 64)
!358 = distinct !DIGlobalVariable(name: "command_cmd", scope: !0, file: !351, line: 69, type: !348, isLocal: true, isDefinition: true, variable: i32* @command_cmd)
!359 = distinct !DIGlobalVariable(name: "current_cmdline", scope: !0, file: !351, line: 66, type: !342, isLocal: true, isDefinition: true, variable: i8** @current_cmdline)
!360 = distinct !DIGlobalVariable(name: "time_command_last", scope: !0, file: !351, line: 68, type: !353, isLocal: true, isDefinition: true, variable: %struct._GTimeVal* @time_command_last)
!361 = distinct !DIGlobalVariable(name: "last_command_cmd", scope: !0, file: !351, line: 69, type: !348, isLocal: true, isDefinition: true, variable: i32* @last_command_cmd)
!362 = distinct !DIGlobalVariable(name: "ret_texts", scope: !0, file: !351, line: 40, type: !363, isLocal: true, isDefinition: true, variable: [18 x i32]* @ret_texts)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 576, align: 32, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 18)
!366 = !{i32 2, !"Dwarf Version", i32 4}
!367 = !{i32 2, !"Debug Info Version", i32 3}
!368 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!369 = distinct !DISubprogram(name: "fe_core_commands_init", scope: !351, file: !351, line: 325, type: !370, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null}
!372 = !{}
!373 = !DILocation(line: 327, column: 22, scope: !369)
!374 = !DILocation(line: 329, column: 14, scope: !369)
!375 = !DILocation(line: 330, column: 2, scope: !369)
!376 = !DILocation(line: 332, column: 2, scope: !369)
!377 = !DILocation(line: 333, column: 2, scope: !369)
!378 = !DILocation(line: 334, column: 2, scope: !369)
!379 = !DILocation(line: 335, column: 2, scope: !369)
!380 = !DILocation(line: 336, column: 2, scope: !369)
!381 = !DILocation(line: 337, column: 2, scope: !369)
!382 = !DILocation(line: 339, column: 2, scope: !369)
!383 = !DILocation(line: 340, column: 2, scope: !369)
!384 = !DILocation(line: 341, column: 2, scope: !369)
!385 = !DILocation(line: 342, column: 2, scope: !369)
!386 = !DILocation(line: 343, column: 2, scope: !369)
!387 = !DILocation(line: 345, column: 2, scope: !369)
!388 = !DILocation(line: 346, column: 1, scope: !369)
!389 = distinct !DISubprogram(name: "cmd_echo", scope: !351, file: !351, line: 72, type: !390, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !342, !337, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !394, line: 108, baseType: !395)
!394 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !396, line: 5, size: 704, align: 64, elements: !397)
!396 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!397 = !{!398, !400, !401, !406, !407, !727, !728, !729, !730, !731, !732, !736}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !395, file: !399, line: 3, baseType: !348, size: 32, align: 32)
!399 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !395, file: !399, line: 4, baseType: !348, size: 32, align: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !395, file: !399, line: 5, baseType: !402, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !404, line: 37, baseType: !405)
!404 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !404, line: 37, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !395, file: !399, line: 7, baseType: !337, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !395, file: !399, line: 8, baseType: !408, size: 64, align: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !394, line: 107, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !411, line: 30, size: 2240, align: 64, elements: !412)
!411 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !{!413, !415, !416, !417, !642, !647, !648, !649, !650, !651, !652, !653, !654, !655, !659, !660, !664, !665, !666, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !687, !691, !695, !699, !703, !708, !715, !722, !726}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !414, line: 3, baseType: !348, size: 32, align: 32)
!414 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !410, file: !414, line: 4, baseType: !348, size: 32, align: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !410, file: !414, line: 6, baseType: !348, size: 32, align: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !410, file: !414, line: 8, baseType: !418, size: 64, align: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !394, line: 113, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !411, line: 25, size: 1920, align: 64, elements: !421)
!421 = !{!422, !424, !425, !426, !428, !429, !430, !431, !432, !434, !435, !436, !437, !438, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !423, line: 3, baseType: !348, size: 32, align: 32)
!423 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !420, file: !423, line: 4, baseType: !348, size: 32, align: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !420, file: !423, line: 6, baseType: !348, size: 32, align: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !420, file: !423, line: 9, baseType: !427, size: 64, align: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !420, file: !423, line: 10, baseType: !348, size: 32, align: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !420, file: !423, line: 11, baseType: !427, size: 64, align: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !420, file: !423, line: 11, baseType: !427, size: 64, align: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !420, file: !423, line: 11, baseType: !427, size: 64, align: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !420, file: !423, line: 13, baseType: !433, size: 16, align: 16, offset: 448)
!433 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !420, file: !423, line: 14, baseType: !427, size: 64, align: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !420, file: !423, line: 15, baseType: !427, size: 64, align: 64, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !420, file: !423, line: 16, baseType: !348, size: 32, align: 32, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !420, file: !423, line: 17, baseType: !427, size: 64, align: 64, offset: 704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !420, file: !423, line: 19, baseType: !439, size: 64, align: 64, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !394, line: 99, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !394, line: 99, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !420, file: !423, line: 19, baseType: !439, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !420, file: !423, line: 21, baseType: !427, size: 64, align: 64, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !420, file: !423, line: 22, baseType: !427, size: 64, align: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !420, file: !423, line: 23, baseType: !427, size: 64, align: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !420, file: !423, line: 24, baseType: !427, size: 64, align: 64, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !420, file: !423, line: 26, baseType: !427, size: 64, align: 64, offset: 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !420, file: !423, line: 27, baseType: !427, size: 64, align: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !420, file: !423, line: 28, baseType: !427, size: 64, align: 64, offset: 1280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !420, file: !423, line: 29, baseType: !427, size: 64, align: 64, offset: 1344)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !420, file: !423, line: 30, baseType: !427, size: 64, align: 64, offset: 1408)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !420, file: !423, line: 31, baseType: !427, size: 64, align: 64, offset: 1472)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !420, file: !423, line: 32, baseType: !427, size: 64, align: 64, offset: 1536)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !420, file: !423, line: 33, baseType: !427, size: 64, align: 64, offset: 1600)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !420, file: !423, line: 35, baseType: !456, size: 64, align: 64, offset: 1664)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !459)
!459 = !{!460, !461, !599, !600, !605, !606, !607, !608, !609, !618, !619, !620, !624, !625, !626, !627, !628, !629, !630, !631}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !458, file: !4, line: 100, baseType: !347, size: 32, align: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !458, file: !4, line: 101, baseType: !462, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !465)
!465 = !{!466, !488, !494, !500, !504, !586, !590, !595}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !464, file: !4, line: 133, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !456, !338, !471, !474, !475}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !472, line: 66, baseType: !473)
!472 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !478, line: 42, baseType: !479)
!478 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !478, line: 44, size: 128, align: 64, elements: !480)
!480 = !{!481, !486, !487}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !479, file: !478, line: 46, baseType: !482, size: 32, align: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !483, line: 36, baseType: !484)
!483 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !472, line: 45, baseType: !485)
!485 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !479, file: !478, line: 47, baseType: !347, size: 32, align: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !479, file: !478, line: 48, baseType: !338, size: 64, align: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !464, file: !4, line: 138, baseType: !489, size: 64, align: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!470, !456, !492, !471, !474, !475}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !464, file: !4, line: 143, baseType: !495, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!470, !456, !498, !499, !475}
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !472, line: 51, baseType: !344)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !464, file: !4, line: 147, baseType: !501, size: 64, align: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!470, !456, !475}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !464, file: !4, line: 149, baseType: !505, size: 64, align: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!508, !456, !585}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !511)
!511 = !{!512, !513, !534, !561, !563, !567, !568, !569, !570, !578, !579, !580, !581}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !510, file: !16, line: 174, baseType: !345, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !510, file: !16, line: 175, baseType: !514, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !517)
!517 = !{!518, !522, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !516, file: !16, line: 198, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !345}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !516, file: !16, line: 199, baseType: !519, size: 64, align: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !516, file: !16, line: 200, baseType: !524, size: 64, align: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !345, !508, !527, !533}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !345}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !340, line: 50, baseType: !347)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !510, file: !16, line: 177, baseType: !535, size: 64, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !539)
!539 = !{!540, !545, !549, !553, !557, !558}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !538, file: !16, line: 216, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!532, !508, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !538, file: !16, line: 218, baseType: !546, size: 64, align: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!532, !508}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !16, line: 219, baseType: !550, size: 64, align: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!532, !508, !528, !345}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !538, file: !16, line: 222, baseType: !554, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !508}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !538, file: !16, line: 226, baseType: !528, size: 64, align: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !538, file: !16, line: 227, baseType: !559, size: 64, align: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !510, file: !16, line: 178, baseType: !562, size: 32, align: 32, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !340, line: 55, baseType: !485)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !16, line: 180, baseType: !564, size: 64, align: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !566)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !510, file: !16, line: 182, baseType: !347, size: 32, align: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !16, line: 183, baseType: !562, size: 32, align: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !510, file: !16, line: 184, baseType: !562, size: 32, align: 32, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !510, file: !16, line: 186, baseType: !571, size: 64, align: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !573, line: 37, baseType: !574)
!573 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !573, line: 39, size: 128, align: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !574, file: !573, line: 41, baseType: !345, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !573, line: 42, baseType: !571, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !510, file: !16, line: 188, baseType: !508, size: 64, align: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !16, line: 189, baseType: !508, size: 64, align: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !16, line: 191, baseType: !427, size: 64, align: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !510, file: !16, line: 193, baseType: !582, size: 64, align: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !464, file: !4, line: 151, baseType: !587, size: 64, align: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !456}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !464, file: !4, line: 152, baseType: !591, size: 64, align: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!470, !456, !594, !475}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !464, file: !4, line: 155, baseType: !596, size: 64, align: 64, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!594, !456}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !458, file: !4, line: 103, baseType: !338, size: 64, align: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !458, file: !4, line: 104, baseType: !601, size: 64, align: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !602, line: 77, baseType: !603)
!602 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !602, line: 77, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !458, file: !4, line: 105, baseType: !601, size: 64, align: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !458, file: !4, line: 106, baseType: !338, size: 64, align: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !458, file: !4, line: 107, baseType: !562, size: 32, align: 32, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !458, file: !4, line: 109, baseType: !471, size: 64, align: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !458, file: !4, line: 110, baseType: !610, size: 64, align: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !612, line: 39, baseType: !613)
!612 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !612, line: 41, size: 192, align: 64, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !613, file: !612, line: 43, baseType: !338, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !613, file: !612, line: 44, baseType: !471, size: 64, align: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !613, file: !612, line: 45, baseType: !471, size: 64, align: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !458, file: !4, line: 111, baseType: !610, size: 64, align: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !458, file: !4, line: 112, baseType: !610, size: 64, align: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !458, file: !4, line: 113, baseType: !621, size: 48, align: 8, offset: 704)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 48, align: 8, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 6)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !458, file: !4, line: 117, baseType: !562, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !458, file: !4, line: 118, baseType: !562, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !458, file: !4, line: 119, baseType: !562, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !458, file: !4, line: 120, baseType: !562, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !458, file: !4, line: 121, baseType: !562, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !458, file: !4, line: 122, baseType: !562, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !458, file: !4, line: 124, baseType: !345, size: 64, align: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !458, file: !4, line: 125, baseType: !345, size: 64, align: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !420, file: !423, line: 38, baseType: !485, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !420, file: !423, line: 39, baseType: !485, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !420, file: !423, line: 40, baseType: !485, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !420, file: !423, line: 41, baseType: !485, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !420, file: !423, line: 42, baseType: !485, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !420, file: !423, line: 43, baseType: !485, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !420, file: !423, line: 44, baseType: !485, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !420, file: !423, line: 45, baseType: !485, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !420, file: !423, line: 46, baseType: !427, size: 64, align: 64, offset: 1792)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !420, file: !423, line: 47, baseType: !427, size: 64, align: 64, offset: 1856)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !410, file: !414, line: 9, baseType: !643, size: 64, align: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !644, line: 75, baseType: !645)
!644 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !646, line: 139, baseType: !344)
!646 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !410, file: !414, line: 10, baseType: !643, size: 64, align: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !410, file: !414, line: 12, baseType: !427, size: 64, align: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !410, file: !414, line: 13, baseType: !427, size: 64, align: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !410, file: !414, line: 15, baseType: !485, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !410, file: !414, line: 16, baseType: !485, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !410, file: !414, line: 17, baseType: !485, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !410, file: !414, line: 18, baseType: !485, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !410, file: !414, line: 19, baseType: !485, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !410, file: !414, line: 21, baseType: !656, size: 64, align: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !394, line: 102, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !394, line: 102, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !410, file: !414, line: 22, baseType: !348, size: 32, align: 32, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !410, file: !414, line: 25, baseType: !661, size: 128, align: 64, offset: 640)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 128, align: 64, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 2)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !410, file: !414, line: 26, baseType: !348, size: 32, align: 32, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !410, file: !414, line: 27, baseType: !348, size: 32, align: 32, offset: 800)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !410, file: !414, line: 29, baseType: !667, size: 64, align: 64, offset: 832)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !394, line: 103, baseType: !669)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !394, line: 103, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !410, file: !414, line: 30, baseType: !402, size: 64, align: 64, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !410, file: !414, line: 32, baseType: !427, size: 64, align: 64, offset: 960)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !410, file: !414, line: 33, baseType: !427, size: 64, align: 64, offset: 1024)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !410, file: !414, line: 34, baseType: !427, size: 64, align: 64, offset: 1088)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !410, file: !414, line: 35, baseType: !485, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !410, file: !414, line: 36, baseType: !485, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !410, file: !414, line: 37, baseType: !485, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !410, file: !414, line: 38, baseType: !485, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !410, file: !414, line: 40, baseType: !353, size: 128, align: 64, offset: 1216)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !410, file: !414, line: 41, baseType: !643, size: 64, align: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !410, file: !414, line: 42, baseType: !348, size: 32, align: 32, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !410, file: !414, line: 44, baseType: !571, size: 64, align: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !410, file: !414, line: 45, baseType: !571, size: 64, align: 64, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !410, file: !414, line: 53, baseType: !684, size: 64, align: 64, offset: 1600)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !408, !342, !348}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !410, file: !414, line: 55, baseType: !688, size: 64, align: 64, offset: 1664)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64, align: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!348, !408, !341}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !410, file: !414, line: 57, baseType: !692, size: 64, align: 64, offset: 1728)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!348, !408, !342}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !410, file: !414, line: 60, baseType: !696, size: 64, align: 64, offset: 1792)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!342, !408}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !410, file: !414, line: 62, baseType: !700, size: 64, align: 64, offset: 1856)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !408, !342, !342, !348}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !410, file: !414, line: 65, baseType: !704, size: 64, align: 64, offset: 1920)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!707, !408, !342, !342}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !410, file: !414, line: 69, baseType: !709, size: 64, align: 64, offset: 1984)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!712, !408, !342}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !394, line: 109, baseType: !714)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !394, line: 109, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !410, file: !414, line: 70, baseType: !716, size: 64, align: 64, offset: 2048)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !408, !342}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !394, line: 110, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !394, line: 110, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !410, file: !414, line: 71, baseType: !723, size: 64, align: 64, offset: 2112)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!348, !342, !342}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !410, file: !414, line: 73, baseType: !723, size: 64, align: 64, offset: 2176)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !395, file: !399, line: 9, baseType: !427, size: 64, align: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !399, line: 10, baseType: !427, size: 64, align: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !395, file: !399, line: 11, baseType: !643, size: 64, align: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !395, file: !399, line: 12, baseType: !348, size: 32, align: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !395, file: !399, line: 13, baseType: !427, size: 64, align: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !395, file: !399, line: 15, baseType: !733, size: 64, align: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !392}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !395, file: !399, line: 17, baseType: !737, size: 64, align: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!342, !392}
!740 = !DILocalVariable(name: "data", arg: 1, scope: !389, file: !351, line: 72, type: !342)
!741 = !DIExpression()
!742 = !DILocation(line: 72, column: 34, scope: !389)
!743 = !DILocalVariable(name: "server", arg: 2, scope: !389, file: !351, line: 72, type: !337)
!744 = !DILocation(line: 72, column: 46, scope: !389)
!745 = !DILocalVariable(name: "item", arg: 3, scope: !389, file: !351, line: 72, type: !392)
!746 = !DILocation(line: 72, column: 67, scope: !389)
!747 = !DILocalVariable(name: "window", scope: !389, file: !351, line: 74, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !394, line: 117, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !751, line: 28, size: 1280, align: 64, elements: !752)
!751 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !786, !787, !788, !789, !790, !791, !792, !793}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !750, file: !751, line: 29, baseType: !348, size: 32, align: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !750, file: !751, line: 30, baseType: !427, size: 64, align: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !750, file: !751, line: 32, baseType: !348, size: 32, align: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !750, file: !751, line: 32, baseType: !348, size: 32, align: 32, offset: 160)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !750, file: !751, line: 34, baseType: !571, size: 64, align: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !750, file: !751, line: 35, baseType: !392, size: 64, align: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !750, file: !751, line: 36, baseType: !408, size: 64, align: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !750, file: !751, line: 37, baseType: !408, size: 64, align: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !750, file: !751, line: 38, baseType: !427, size: 64, align: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !750, file: !751, line: 40, baseType: !348, size: 32, align: 32, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !750, file: !751, line: 41, baseType: !571, size: 64, align: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !750, file: !751, line: 43, baseType: !485, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !750, file: !751, line: 44, baseType: !485, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !750, file: !751, line: 45, baseType: !485, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !750, file: !751, line: 48, baseType: !768, size: 64, align: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !770, line: 14, baseType: !771)
!770 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 6, size: 256, align: 64, elements: !772)
!772 = !{!773, !774, !783, !784, !785}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !771, file: !770, line: 7, baseType: !427, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !771, file: !770, line: 9, baseType: !775, size: 64, align: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !777, line: 37, baseType: !778)
!777 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !777, line: 39, size: 192, align: 64, elements: !779)
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !778, file: !777, line: 41, baseType: !345, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !777, line: 42, baseType: !775, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !778, file: !777, line: 43, baseType: !775, size: 64, align: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !771, file: !770, line: 10, baseType: !348, size: 32, align: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !771, file: !770, line: 12, baseType: !348, size: 32, align: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !771, file: !770, line: 13, baseType: !348, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !750, file: !751, line: 49, baseType: !427, size: 64, align: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !750, file: !751, line: 51, baseType: !348, size: 32, align: 32, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !750, file: !751, line: 52, baseType: !427, size: 64, align: 64, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !750, file: !751, line: 54, baseType: !643, size: 64, align: 64, offset: 960)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !750, file: !751, line: 55, baseType: !643, size: 64, align: 64, offset: 1024)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !750, file: !751, line: 57, baseType: !427, size: 64, align: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !750, file: !751, line: 58, baseType: !337, size: 64, align: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !750, file: !751, line: 60, baseType: !337, size: 64, align: 64, offset: 1216)
!794 = !DILocation(line: 74, column: 21, scope: !389)
!795 = !DILocalVariable(name: "optlist", scope: !389, file: !351, line: 75, type: !402)
!796 = !DILocation(line: 75, column: 14, scope: !389)
!797 = !DILocalVariable(name: "msg", scope: !389, file: !351, line: 76, type: !427)
!798 = !DILocation(line: 76, column: 8, scope: !389)
!799 = !DILocalVariable(name: "levelstr", scope: !389, file: !351, line: 76, type: !427)
!800 = !DILocation(line: 76, column: 14, scope: !389)
!801 = !DILocalVariable(name: "winname", scope: !389, file: !351, line: 76, type: !427)
!802 = !DILocation(line: 76, column: 25, scope: !389)
!803 = !DILocalVariable(name: "free_arg", scope: !389, file: !351, line: 77, type: !337)
!804 = !DILocation(line: 77, column: 8, scope: !389)
!805 = !DILocalVariable(name: "level", scope: !389, file: !351, line: 78, type: !348)
!806 = !DILocation(line: 78, column: 6, scope: !389)
!807 = !DILocation(line: 80, column: 2, scope: !389)
!808 = distinct !{!808, !807}
!809 = !DILocation(line: 80, column: 10, scope: !810)
!810 = !DILexicalBlockFile(scope: !811, file: !351, discriminator: 1)
!811 = distinct !DILexicalBlock(scope: !812, file: !351, line: 80, column: 10)
!812 = distinct !DILexicalBlock(scope: !389, file: !351, line: 80, column: 4)
!813 = !DILocation(line: 80, column: 15, scope: !810)
!814 = !DILocation(line: 80, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !351, discriminator: 2)
!816 = distinct !DILexicalBlock(scope: !811, file: !351, line: 80, column: 3)
!817 = !DILocation(line: 80, column: 14, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !351, discriminator: 3)
!819 = distinct !DILexicalBlock(scope: !811, file: !351, line: 80, column: 12)
!820 = !DILocation(line: 80, column: 99, scope: !818)
!821 = !DILocation(line: 80, column: 110, scope: !822)
!822 = !DILexicalBlockFile(scope: !812, file: !351, discriminator: 4)
!823 = !DILocation(line: 82, column: 22, scope: !824)
!824 = distinct !DILexicalBlock(scope: !389, file: !351, line: 82, column: 6)
!825 = !DILocation(line: 82, column: 7, scope: !824)
!826 = !DILocation(line: 82, column: 6, scope: !389)
!827 = !DILocation(line: 84, column: 3, scope: !824)
!828 = !DILocation(line: 86, column: 40, scope: !389)
!829 = !DILocation(line: 86, column: 20, scope: !389)
!830 = !DILocation(line: 86, column: 18, scope: !389)
!831 = !DILocation(line: 87, column: 10, scope: !389)
!832 = !DILocation(line: 87, column: 19, scope: !389)
!833 = !DILocation(line: 87, column: 10, scope: !834)
!834 = !DILexicalBlockFile(scope: !389, file: !351, discriminator: 1)
!835 = !DILocation(line: 88, column: 34, scope: !389)
!836 = !DILocation(line: 88, column: 14, scope: !389)
!837 = !DILocation(line: 88, column: 3, scope: !834)
!838 = !DILocation(line: 87, column: 10, scope: !839)
!839 = !DILexicalBlockFile(scope: !389, file: !351, discriminator: 2)
!840 = !DILocation(line: 87, column: 10, scope: !841)
!841 = !DILexicalBlockFile(scope: !389, file: !351, discriminator: 3)
!842 = !DILocation(line: 87, column: 8, scope: !841)
!843 = !DILocation(line: 89, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !389, file: !351, line: 89, column: 6)
!845 = !DILocation(line: 89, column: 12, scope: !844)
!846 = !DILocation(line: 89, column: 6, scope: !389)
!847 = !DILocation(line: 89, column: 24, scope: !848)
!848 = !DILexicalBlockFile(scope: !844, file: !351, discriminator: 1)
!849 = !DILocation(line: 89, column: 18, scope: !848)
!850 = !DILocation(line: 91, column: 32, scope: !389)
!851 = !DILocation(line: 91, column: 12, scope: !389)
!852 = !DILocation(line: 91, column: 10, scope: !389)
!853 = !DILocation(line: 92, column: 11, scope: !389)
!854 = !DILocation(line: 92, column: 19, scope: !389)
!855 = !DILocation(line: 92, column: 11, scope: !834)
!856 = !DILocation(line: 93, column: 14, scope: !389)
!857 = !DILocation(line: 93, column: 3, scope: !389)
!858 = !DILocation(line: 94, column: 27, scope: !389)
!859 = !DILocation(line: 94, column: 22, scope: !389)
!860 = !DILocation(line: 94, column: 3, scope: !834)
!861 = !DILocation(line: 93, column: 3, scope: !834)
!862 = !DILocation(line: 95, column: 25, scope: !389)
!863 = !DILocation(line: 95, column: 3, scope: !389)
!864 = !DILocation(line: 93, column: 3, scope: !839)
!865 = !DILocation(line: 93, column: 3, scope: !841)
!866 = !DILocation(line: 92, column: 11, scope: !839)
!867 = !DILocation(line: 92, column: 11, scope: !841)
!868 = !DILocation(line: 92, column: 9, scope: !841)
!869 = !DILocation(line: 96, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !389, file: !351, line: 96, column: 6)
!871 = !DILocation(line: 96, column: 13, scope: !870)
!872 = !DILocation(line: 96, column: 6, scope: !389)
!873 = !DILocation(line: 96, column: 30, scope: !874)
!874 = !DILexicalBlockFile(scope: !870, file: !351, discriminator: 1)
!875 = !DILocation(line: 96, column: 28, scope: !874)
!876 = !DILocation(line: 96, column: 21, scope: !874)
!877 = !DILocation(line: 98, column: 19, scope: !389)
!878 = !DILocation(line: 98, column: 27, scope: !389)
!879 = !DILocation(line: 98, column: 40, scope: !389)
!880 = !DILocation(line: 98, column: 2, scope: !389)
!881 = !DILocation(line: 99, column: 18, scope: !389)
!882 = !DILocation(line: 99, column: 2, scope: !389)
!883 = !DILocation(line: 100, column: 1, scope: !389)
!884 = !DILocation(line: 100, column: 1, scope: !834)
!885 = distinct !DISubprogram(name: "cmd_version", scope: !351, file: !351, line: 103, type: !886, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !427}
!888 = !DILocalVariable(name: "data", arg: 1, scope: !885, file: !351, line: 103, type: !427)
!889 = !DILocation(line: 103, column: 31, scope: !885)
!890 = !DILocalVariable(name: "time", scope: !885, file: !351, line: 105, type: !891)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 80, align: 8, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 10)
!894 = !DILocation(line: 105, column: 7, scope: !885)
!895 = !DILocation(line: 107, column: 2, scope: !885)
!896 = distinct !{!896, !895}
!897 = !DILocation(line: 107, column: 10, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !351, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !900, file: !351, line: 107, column: 10)
!900 = distinct !DILexicalBlock(scope: !885, file: !351, line: 107, column: 4)
!901 = !DILocation(line: 107, column: 15, scope: !898)
!902 = !DILocation(line: 107, column: 5, scope: !903)
!903 = !DILexicalBlockFile(scope: !904, file: !351, discriminator: 2)
!904 = distinct !DILexicalBlock(scope: !899, file: !351, line: 107, column: 3)
!905 = !DILocation(line: 107, column: 14, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !351, discriminator: 3)
!907 = distinct !DILexicalBlock(scope: !899, file: !351, line: 107, column: 12)
!908 = !DILocation(line: 107, column: 99, scope: !906)
!909 = !DILocation(line: 107, column: 110, scope: !910)
!910 = !DILexicalBlockFile(scope: !900, file: !351, discriminator: 4)
!911 = !DILocation(line: 109, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !885, file: !351, line: 109, column: 6)
!913 = !DILocation(line: 109, column: 6, scope: !912)
!914 = !DILocation(line: 109, column: 12, scope: !912)
!915 = !DILocation(line: 109, column: 6, scope: !885)
!916 = !DILocation(line: 110, column: 28, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !351, line: 109, column: 21)
!918 = !DILocation(line: 110, column: 17, scope: !917)
!919 = !DILocation(line: 113, column: 16, scope: !917)
!920 = !DILocation(line: 111, column: 3, scope: !917)
!921 = !DILocation(line: 114, column: 2, scope: !917)
!922 = !DILocation(line: 115, column: 1, scope: !885)
!923 = distinct !DISubprogram(name: "cmd_cat", scope: !351, file: !351, line: 118, type: !924, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !342}
!926 = !DILocalVariable(name: "data", arg: 1, scope: !923, file: !351, line: 118, type: !342)
!927 = !DILocation(line: 118, column: 33, scope: !923)
!928 = !DILocalVariable(name: "fname", scope: !923, file: !351, line: 120, type: !427)
!929 = !DILocation(line: 120, column: 8, scope: !923)
!930 = !DILocalVariable(name: "fposstr", scope: !923, file: !351, line: 120, type: !427)
!931 = !DILocation(line: 120, column: 16, scope: !923)
!932 = !DILocalVariable(name: "free_arg", scope: !923, file: !351, line: 121, type: !337)
!933 = !DILocation(line: 121, column: 8, scope: !923)
!934 = !DILocalVariable(name: "fpos", scope: !923, file: !351, line: 122, type: !348)
!935 = !DILocation(line: 122, column: 6, scope: !923)
!936 = !DILocalVariable(name: "handle", scope: !923, file: !351, line: 123, type: !456)
!937 = !DILocation(line: 123, column: 14, scope: !923)
!938 = !DILocalVariable(name: "buf", scope: !923, file: !351, line: 124, type: !610)
!939 = !DILocation(line: 124, column: 11, scope: !923)
!940 = !DILocalVariable(name: "tpos", scope: !923, file: !351, line: 125, type: !471)
!941 = !DILocation(line: 125, column: 8, scope: !923)
!942 = !DILocation(line: 130, column: 22, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !351, line: 130, column: 6)
!944 = !DILocation(line: 130, column: 7, scope: !943)
!945 = !DILocation(line: 130, column: 6, scope: !923)
!946 = !DILocation(line: 131, column: 3, scope: !943)
!947 = !DILocation(line: 133, column: 23, scope: !923)
!948 = !DILocation(line: 133, column: 10, scope: !923)
!949 = !DILocation(line: 133, column: 8, scope: !923)
!950 = !DILocation(line: 134, column: 14, scope: !923)
!951 = !DILocation(line: 134, column: 9, scope: !923)
!952 = !DILocation(line: 134, column: 7, scope: !923)
!953 = !DILocation(line: 135, column: 25, scope: !923)
!954 = !DILocation(line: 135, column: 9, scope: !923)
!955 = !DILocation(line: 144, column: 33, scope: !923)
!956 = !DILocation(line: 144, column: 11, scope: !923)
!957 = !DILocation(line: 144, column: 9, scope: !923)
!958 = !DILocation(line: 146, column: 9, scope: !923)
!959 = !DILocation(line: 146, column: 2, scope: !923)
!960 = !DILocation(line: 148, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !923, file: !351, line: 148, column: 6)
!962 = !DILocation(line: 148, column: 13, scope: !961)
!963 = !DILocation(line: 148, column: 6, scope: !923)
!964 = !DILocation(line: 151, column: 24, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !351, line: 148, column: 21)
!966 = !DILocation(line: 151, column: 23, scope: !965)
!967 = !DILocation(line: 151, column: 12, scope: !968)
!968 = !DILexicalBlockFile(scope: !965, file: !351, discriminator: 1)
!969 = !DILocation(line: 150, column: 3, scope: !965)
!970 = !DILocation(line: 152, column: 3, scope: !965)
!971 = !DILocation(line: 155, column: 28, scope: !923)
!972 = !DILocation(line: 155, column: 2, scope: !923)
!973 = !DILocation(line: 156, column: 29, scope: !923)
!974 = !DILocation(line: 156, column: 37, scope: !923)
!975 = !DILocation(line: 156, column: 2, scope: !923)
!976 = !DILocation(line: 157, column: 8, scope: !923)
!977 = !DILocation(line: 157, column: 6, scope: !923)
!978 = !DILocation(line: 158, column: 2, scope: !923)
!979 = !DILocation(line: 158, column: 39, scope: !980)
!980 = !DILexicalBlockFile(scope: !923, file: !351, discriminator: 1)
!981 = !DILocation(line: 158, column: 47, scope: !980)
!982 = !DILocation(line: 158, column: 9, scope: !980)
!983 = !DILocation(line: 158, column: 64, scope: !980)
!984 = !DILocation(line: 158, column: 2, scope: !980)
!985 = !DILocation(line: 159, column: 12, scope: !986)
!986 = distinct !DILexicalBlock(scope: !923, file: !351, line: 158, column: 87)
!987 = !DILocation(line: 159, column: 3, scope: !986)
!988 = !DILocation(line: 159, column: 8, scope: !986)
!989 = !DILocation(line: 159, column: 18, scope: !986)
!990 = !DILocation(line: 161, column: 28, scope: !986)
!991 = !DILocation(line: 161, column: 33, scope: !986)
!992 = !DILocation(line: 160, column: 3, scope: !986)
!993 = !DILocation(line: 158, column: 2, scope: !994)
!994 = !DILexicalBlockFile(scope: !923, file: !351, discriminator: 2)
!995 = distinct !{!995, !978}
!996 = !DILocation(line: 163, column: 16, scope: !923)
!997 = !DILocation(line: 163, column: 2, scope: !923)
!998 = !DILocation(line: 165, column: 21, scope: !923)
!999 = !DILocation(line: 165, column: 2, scope: !923)
!1000 = !DILocation(line: 166, column: 1, scope: !923)
!1001 = !DILocation(line: 166, column: 1, scope: !980)
!1002 = distinct !DISubprogram(name: "cmd_beep", scope: !351, file: !351, line: 169, type: !370, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1003 = !DILocation(line: 171, column: 9, scope: !1002)
!1004 = !DILocation(line: 172, column: 1, scope: !1002)
!1005 = distinct !DISubprogram(name: "cmd_uptime", scope: !351, file: !351, line: 188, type: !886, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1006 = !DILocalVariable(name: "data", arg: 1, scope: !1005, file: !351, line: 188, type: !427)
!1007 = !DILocation(line: 188, column: 30, scope: !1005)
!1008 = !DILocalVariable(name: "uptime", scope: !1005, file: !351, line: 190, type: !344)
!1009 = !DILocation(line: 190, column: 7, scope: !1005)
!1010 = !DILocation(line: 192, column: 2, scope: !1005)
!1011 = distinct !{!1011, !1010}
!1012 = !DILocation(line: 192, column: 10, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !351, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !351, line: 192, column: 10)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !351, line: 192, column: 4)
!1016 = !DILocation(line: 192, column: 15, scope: !1013)
!1017 = !DILocation(line: 192, column: 5, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !351, discriminator: 2)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !351, line: 192, column: 3)
!1020 = !DILocation(line: 192, column: 14, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !351, discriminator: 3)
!1022 = distinct !DILexicalBlock(scope: !1014, file: !351, line: 192, column: 12)
!1023 = !DILocation(line: 192, column: 99, scope: !1021)
!1024 = !DILocation(line: 192, column: 110, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1015, file: !351, discriminator: 4)
!1026 = !DILocation(line: 194, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1005, file: !351, line: 194, column: 6)
!1028 = !DILocation(line: 194, column: 6, scope: !1027)
!1029 = !DILocation(line: 194, column: 12, scope: !1027)
!1030 = !DILocation(line: 194, column: 6, scope: !1005)
!1031 = !DILocation(line: 195, column: 27, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !351, line: 194, column: 21)
!1033 = !DILocation(line: 195, column: 38, scope: !1032)
!1034 = !DILocation(line: 195, column: 18, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1032, file: !351, discriminator: 1)
!1036 = !DILocation(line: 195, column: 12, scope: !1032)
!1037 = !DILocation(line: 195, column: 10, scope: !1032)
!1038 = !DILocation(line: 198, column: 6, scope: !1032)
!1039 = !DILocation(line: 198, column: 12, scope: !1032)
!1040 = !DILocation(line: 198, column: 17, scope: !1032)
!1041 = !DILocation(line: 198, column: 22, scope: !1032)
!1042 = !DILocation(line: 198, column: 28, scope: !1032)
!1043 = !DILocation(line: 198, column: 33, scope: !1032)
!1044 = !DILocation(line: 199, column: 6, scope: !1032)
!1045 = !DILocation(line: 199, column: 12, scope: !1032)
!1046 = !DILocation(line: 199, column: 15, scope: !1032)
!1047 = !DILocation(line: 199, column: 20, scope: !1032)
!1048 = !DILocation(line: 199, column: 26, scope: !1032)
!1049 = !DILocation(line: 196, column: 3, scope: !1032)
!1050 = !DILocation(line: 200, column: 2, scope: !1032)
!1051 = !DILocation(line: 201, column: 1, scope: !1005)
!1052 = distinct !DISubprogram(name: "cmd_nick", scope: !351, file: !351, line: 174, type: !1053, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !342, !408}
!1055 = !DILocalVariable(name: "data", arg: 1, scope: !1052, file: !351, line: 174, type: !342)
!1056 = !DILocation(line: 174, column: 34, scope: !1052)
!1057 = !DILocalVariable(name: "server", arg: 2, scope: !1052, file: !351, line: 174, type: !408)
!1058 = !DILocation(line: 174, column: 52, scope: !1052)
!1059 = !DILocation(line: 176, column: 2, scope: !1052)
!1060 = distinct !{!1060, !1059}
!1061 = !DILocation(line: 176, column: 10, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !351, discriminator: 1)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !351, line: 176, column: 10)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !351, line: 176, column: 4)
!1065 = !DILocation(line: 176, column: 15, scope: !1062)
!1066 = !DILocation(line: 176, column: 5, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1068, file: !351, discriminator: 2)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !351, line: 176, column: 3)
!1069 = !DILocation(line: 176, column: 14, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !351, discriminator: 3)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !351, line: 176, column: 12)
!1072 = !DILocation(line: 176, column: 99, scope: !1070)
!1073 = !DILocation(line: 176, column: 110, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1064, file: !351, discriminator: 4)
!1075 = !DILocation(line: 178, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1052, file: !351, line: 178, column: 6)
!1077 = !DILocation(line: 178, column: 6, scope: !1076)
!1078 = !DILocation(line: 178, column: 12, scope: !1076)
!1079 = !DILocation(line: 178, column: 6, scope: !1052)
!1080 = !DILocation(line: 178, column: 21, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1076, file: !351, discriminator: 1)
!1082 = !DILocation(line: 179, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1052, file: !351, line: 179, column: 6)
!1084 = !DILocation(line: 179, column: 13, scope: !1083)
!1085 = !DILocation(line: 179, column: 20, scope: !1083)
!1086 = !DILocation(line: 179, column: 24, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1083, file: !351, discriminator: 1)
!1088 = !DILocation(line: 179, column: 32, scope: !1087)
!1089 = !DILocation(line: 179, column: 6, scope: !1087)
!1090 = !DILocation(line: 180, column: 3, scope: !1083)
!1091 = distinct !{!1091, !1090}
!1092 = !DILocation(line: 180, column: 8, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1094, file: !351, discriminator: 1)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !351, line: 180, column: 6)
!1095 = !DILocation(line: 180, column: 86, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !351, discriminator: 3)
!1097 = !DILocation(line: 180, column: 101, scope: !1093)
!1098 = !DILocation(line: 180, column: 109, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1094, file: !351, discriminator: 2)
!1100 = !DILocation(line: 183, column: 41, scope: !1052)
!1101 = !DILocation(line: 183, column: 49, scope: !1052)
!1102 = !DILocation(line: 183, column: 2, scope: !1052)
!1103 = !DILocation(line: 184, column: 2, scope: !1052)
!1104 = !DILocation(line: 185, column: 1, scope: !1052)
!1105 = !DILocation(line: 185, column: 1, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1052, file: !351, discriminator: 1)
!1107 = distinct !DISubprogram(name: "event_command", scope: !351, file: !351, line: 208, type: !924, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1108 = !DILocalVariable(name: "data", arg: 1, scope: !1107, file: !351, line: 208, type: !342)
!1109 = !DILocation(line: 208, column: 39, scope: !1107)
!1110 = !DILocalVariable(name: "cmdchar", scope: !1107, file: !351, line: 210, type: !342)
!1111 = !DILocation(line: 210, column: 14, scope: !1107)
!1112 = !DILocation(line: 213, column: 20, scope: !1107)
!1113 = !DILocation(line: 213, column: 18, scope: !1107)
!1114 = !DILocation(line: 216, column: 22, scope: !1107)
!1115 = !DILocation(line: 217, column: 21, scope: !1107)
!1116 = !DILocation(line: 217, column: 19, scope: !1107)
!1117 = !DILocation(line: 219, column: 2, scope: !1107)
!1118 = !DILocation(line: 220, column: 17, scope: !1107)
!1119 = !DILocation(line: 220, column: 16, scope: !1107)
!1120 = !DILocation(line: 220, column: 22, scope: !1107)
!1121 = !DILocation(line: 220, column: 30, scope: !1107)
!1122 = !DILocation(line: 221, column: 10, scope: !1107)
!1123 = !DILocation(line: 221, column: 41, scope: !1107)
!1124 = !DILocation(line: 221, column: 40, scope: !1107)
!1125 = !DILocation(line: 221, column: 3, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1107, file: !351, discriminator: 1)
!1127 = !DILocation(line: 221, column: 47, scope: !1107)
!1128 = !DILocation(line: 220, column: 30, scope: !1126)
!1129 = !DILocation(line: 220, column: 14, scope: !1126)
!1130 = !DILocation(line: 224, column: 13, scope: !1107)
!1131 = !DILocation(line: 224, column: 12, scope: !1107)
!1132 = !DILocation(line: 224, column: 18, scope: !1107)
!1133 = !DILocation(line: 224, column: 12, scope: !1126)
!1134 = !DILocation(line: 225, column: 10, scope: !1107)
!1135 = !DILocation(line: 225, column: 41, scope: !1107)
!1136 = !DILocation(line: 225, column: 40, scope: !1107)
!1137 = !DILocation(line: 225, column: 3, scope: !1126)
!1138 = !DILocation(line: 224, column: 12, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1107, file: !351, discriminator: 2)
!1140 = !DILocation(line: 224, column: 12, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1107, file: !351, discriminator: 3)
!1142 = !DILocation(line: 224, column: 10, scope: !1141)
!1143 = !DILocation(line: 226, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1107, file: !351, line: 226, column: 6)
!1145 = !DILocation(line: 226, column: 14, scope: !1144)
!1146 = !DILocation(line: 226, column: 21, scope: !1144)
!1147 = !DILocation(line: 226, column: 25, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1144, file: !351, discriminator: 1)
!1149 = !DILocation(line: 226, column: 33, scope: !1148)
!1150 = !DILocation(line: 226, column: 40, scope: !1148)
!1151 = !DILocation(line: 227, column: 6, scope: !1144)
!1152 = !DILocation(line: 227, column: 18, scope: !1144)
!1153 = !DILocation(line: 227, column: 17, scope: !1144)
!1154 = !DILocation(line: 227, column: 14, scope: !1144)
!1155 = !DILocation(line: 227, column: 26, scope: !1144)
!1156 = !DILocation(line: 227, column: 29, scope: !1148)
!1157 = !DILocation(line: 227, column: 37, scope: !1148)
!1158 = !DILocation(line: 228, column: 8, scope: !1144)
!1159 = !DILocation(line: 228, column: 31, scope: !1148)
!1160 = !DILocation(line: 226, column: 6, scope: !1139)
!1161 = !DILocation(line: 229, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1144, file: !351, line: 228, column: 35)
!1163 = !DILocation(line: 230, column: 3, scope: !1162)
!1164 = !DILocation(line: 231, column: 3, scope: !1162)
!1165 = !DILocation(line: 232, column: 2, scope: !1162)
!1166 = !DILocation(line: 233, column: 1, scope: !1107)
!1167 = distinct !DISubprogram(name: "event_command_last", scope: !351, file: !351, line: 235, type: !924, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1168 = !DILocalVariable(name: "data", arg: 1, scope: !1167, file: !351, line: 235, type: !342)
!1169 = !DILocation(line: 235, column: 44, scope: !1167)
!1170 = !DILocation(line: 237, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !351, line: 237, column: 6)
!1172 = !DILocation(line: 237, column: 26, scope: !1171)
!1173 = !DILocation(line: 237, column: 30, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1171, file: !351, discriminator: 1)
!1175 = !DILocation(line: 237, column: 6, scope: !1174)
!1176 = !DILocation(line: 238, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1171, file: !351, line: 237, column: 53)
!1178 = !DILocation(line: 239, column: 3, scope: !1177)
!1179 = !DILocation(line: 240, column: 3, scope: !1177)
!1180 = !DILocation(line: 241, column: 2, scope: !1177)
!1181 = !DILocation(line: 242, column: 1, scope: !1167)
!1182 = distinct !DISubprogram(name: "event_default_command", scope: !351, file: !351, line: 244, type: !390, isLocal: true, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1183 = !DILocalVariable(name: "data", arg: 1, scope: !1182, file: !351, line: 244, type: !342)
!1184 = !DILocation(line: 244, column: 47, scope: !1182)
!1185 = !DILocalVariable(name: "server", arg: 2, scope: !1182, file: !351, line: 244, type: !337)
!1186 = !DILocation(line: 244, column: 59, scope: !1182)
!1187 = !DILocalVariable(name: "item", arg: 3, scope: !1182, file: !351, line: 245, type: !392)
!1188 = !DILocation(line: 245, column: 20, scope: !1182)
!1189 = !DILocalVariable(name: "cmdchars", scope: !1182, file: !351, line: 247, type: !342)
!1190 = !DILocation(line: 247, column: 14, scope: !1182)
!1191 = !DILocalVariable(name: "ptr", scope: !1182, file: !351, line: 247, type: !342)
!1192 = !DILocation(line: 247, column: 25, scope: !1182)
!1193 = !DILocalVariable(name: "cmd", scope: !1182, file: !351, line: 248, type: !427)
!1194 = !DILocation(line: 248, column: 8, scope: !1182)
!1195 = !DILocalVariable(name: "p", scope: !1182, file: !351, line: 248, type: !427)
!1196 = !DILocation(line: 248, column: 14, scope: !1182)
!1197 = !DILocalVariable(name: "diff", scope: !1182, file: !351, line: 249, type: !344)
!1198 = !DILocation(line: 249, column: 7, scope: !1182)
!1199 = !DILocation(line: 251, column: 13, scope: !1182)
!1200 = !DILocation(line: 251, column: 11, scope: !1182)
!1201 = !DILocation(line: 253, column: 8, scope: !1182)
!1202 = !DILocation(line: 253, column: 6, scope: !1182)
!1203 = !DILocation(line: 254, column: 2, scope: !1182)
!1204 = !DILocation(line: 254, column: 10, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1182, file: !351, discriminator: 1)
!1206 = !DILocation(line: 254, column: 9, scope: !1205)
!1207 = !DILocation(line: 254, column: 14, scope: !1205)
!1208 = !DILocation(line: 254, column: 22, scope: !1205)
!1209 = !DILocation(line: 254, column: 26, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1182, file: !351, discriminator: 2)
!1211 = !DILocation(line: 254, column: 25, scope: !1210)
!1212 = !DILocation(line: 254, column: 30, scope: !1210)
!1213 = !DILocation(line: 254, column: 2, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1182, file: !351, discriminator: 3)
!1215 = !DILocation(line: 255, column: 14, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !351, line: 255, column: 7)
!1217 = distinct !DILexicalBlock(scope: !1182, file: !351, line: 254, column: 38)
!1218 = !DILocation(line: 255, column: 25, scope: !1216)
!1219 = !DILocation(line: 255, column: 24, scope: !1216)
!1220 = !DILocation(line: 255, column: 7, scope: !1216)
!1221 = !DILocation(line: 255, column: 7, scope: !1217)
!1222 = !DILocation(line: 259, column: 32, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1216, file: !351, line: 255, column: 31)
!1224 = !DILocation(line: 259, column: 49, scope: !1223)
!1225 = !DILocation(line: 259, column: 57, scope: !1223)
!1226 = !DILocation(line: 259, column: 4, scope: !1223)
!1227 = !DILocation(line: 260, column: 4, scope: !1223)
!1228 = !DILocation(line: 262, column: 6, scope: !1217)
!1229 = !DILocation(line: 254, column: 2, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1182, file: !351, discriminator: 4)
!1231 = distinct !{!1231, !1203}
!1232 = !DILocation(line: 267, column: 9, scope: !1182)
!1233 = !DILocation(line: 267, column: 7, scope: !1182)
!1234 = !DILocation(line: 268, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1182, file: !351, line: 268, column: 6)
!1236 = !DILocation(line: 268, column: 11, scope: !1235)
!1237 = !DILocation(line: 268, column: 18, scope: !1235)
!1238 = !DILocation(line: 268, column: 22, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1235, file: !351, discriminator: 1)
!1240 = !DILocation(line: 268, column: 39, scope: !1239)
!1241 = !DILocation(line: 268, column: 42, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1235, file: !351, discriminator: 2)
!1243 = !DILocation(line: 268, column: 47, scope: !1242)
!1244 = !DILocation(line: 268, column: 6, scope: !1242)
!1245 = !DILocation(line: 269, column: 31, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1235, file: !351, line: 268, column: 54)
!1247 = !DILocation(line: 269, column: 48, scope: !1246)
!1248 = !DILocation(line: 269, column: 60, scope: !1246)
!1249 = !DILocation(line: 269, column: 75, scope: !1246)
!1250 = !DILocation(line: 269, column: 87, scope: !1246)
!1251 = !DILocation(line: 269, column: 3, scope: !1246)
!1252 = !DILocation(line: 270, column: 15, scope: !1246)
!1253 = !DILocation(line: 271, column: 3, scope: !1246)
!1254 = !DILocation(line: 275, column: 17, scope: !1182)
!1255 = !DILocation(line: 275, column: 8, scope: !1182)
!1256 = !DILocation(line: 275, column: 6, scope: !1182)
!1257 = !DILocation(line: 276, column: 13, scope: !1182)
!1258 = !DILocation(line: 276, column: 6, scope: !1182)
!1259 = !DILocation(line: 276, column: 4, scope: !1182)
!1260 = !DILocation(line: 277, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1182, file: !351, line: 277, column: 6)
!1262 = !DILocation(line: 277, column: 8, scope: !1261)
!1263 = !DILocation(line: 277, column: 6, scope: !1182)
!1264 = !DILocation(line: 277, column: 17, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1261, file: !351, discriminator: 1)
!1266 = !DILocation(line: 277, column: 19, scope: !1265)
!1267 = !DILocation(line: 277, column: 16, scope: !1265)
!1268 = !DILocation(line: 279, column: 73, scope: !1182)
!1269 = !DILocation(line: 279, column: 2, scope: !1182)
!1270 = !DILocation(line: 281, column: 9, scope: !1182)
!1271 = !DILocation(line: 281, column: 2, scope: !1182)
!1272 = !DILocation(line: 282, column: 1, scope: !1182)
!1273 = !DILocation(line: 282, column: 1, scope: !1205)
!1274 = distinct !DISubprogram(name: "event_cmderror", scope: !351, file: !351, line: 284, type: !1275, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !337, !342}
!1277 = !DILocalVariable(name: "errorp", arg: 1, scope: !1274, file: !351, line: 284, type: !337)
!1278 = !DILocation(line: 284, column: 34, scope: !1274)
!1279 = !DILocalVariable(name: "arg", arg: 2, scope: !1274, file: !351, line: 284, type: !342)
!1280 = !DILocation(line: 284, column: 54, scope: !1274)
!1281 = !DILocalVariable(name: "error", scope: !1274, file: !351, line: 286, type: !348)
!1282 = !DILocation(line: 286, column: 6, scope: !1274)
!1283 = !DILocation(line: 288, column: 27, scope: !1274)
!1284 = !DILocation(line: 288, column: 18, scope: !1274)
!1285 = !DILocation(line: 288, column: 11, scope: !1274)
!1286 = !DILocation(line: 288, column: 8, scope: !1274)
!1287 = !DILocation(line: 289, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !351, line: 289, column: 6)
!1289 = !DILocation(line: 289, column: 12, scope: !1288)
!1290 = !DILocation(line: 289, column: 6, scope: !1274)
!1291 = !DILocation(line: 291, column: 65, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !351, line: 289, column: 29)
!1293 = !DILocation(line: 291, column: 64, scope: !1292)
!1294 = !DILocation(line: 291, column: 52, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1292, file: !351, discriminator: 1)
!1296 = !DILocation(line: 291, column: 3, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1292, file: !351, discriminator: 2)
!1298 = !DILocation(line: 292, column: 2, scope: !1292)
!1299 = !DILocation(line: 294, column: 36, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !351, line: 292, column: 9)
!1301 = !DILocation(line: 294, column: 42, scope: !1300)
!1302 = !DILocation(line: 294, column: 26, scope: !1300)
!1303 = !DILocation(line: 294, column: 69, scope: !1300)
!1304 = !DILocation(line: 294, column: 3, scope: !1300)
!1305 = !DILocation(line: 296, column: 1, scope: !1274)
!1306 = distinct !DISubprogram(name: "event_list_subcommands", scope: !351, file: !351, line: 298, type: !924, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1307 = !DILocalVariable(name: "command", arg: 1, scope: !1306, file: !351, line: 298, type: !342)
!1308 = !DILocation(line: 298, column: 48, scope: !1306)
!1309 = !DILocalVariable(name: "tmp", scope: !1306, file: !351, line: 300, type: !571)
!1310 = !DILocation(line: 300, column: 17, scope: !1306)
!1311 = !DILocalVariable(name: "str", scope: !1306, file: !351, line: 301, type: !610)
!1312 = !DILocation(line: 301, column: 18, scope: !1306)
!1313 = !DILocalVariable(name: "len", scope: !1306, file: !351, line: 302, type: !348)
!1314 = !DILocation(line: 302, column: 6, scope: !1306)
!1315 = !DILocation(line: 304, column: 8, scope: !1306)
!1316 = !DILocation(line: 304, column: 6, scope: !1306)
!1317 = !DILocation(line: 306, column: 22, scope: !1306)
!1318 = !DILocation(line: 306, column: 15, scope: !1306)
!1319 = !DILocation(line: 306, column: 13, scope: !1306)
!1320 = !DILocation(line: 307, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1306, file: !351, line: 307, column: 2)
!1322 = !DILocation(line: 307, column: 11, scope: !1321)
!1323 = !DILocation(line: 307, column: 7, scope: !1321)
!1324 = !DILocation(line: 307, column: 23, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !351, discriminator: 1)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !351, line: 307, column: 2)
!1327 = !DILocation(line: 307, column: 27, scope: !1325)
!1328 = !DILocation(line: 307, column: 2, scope: !1325)
!1329 = !DILocalVariable(name: "rec", scope: !1330, file: !351, line: 308, type: !1331)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !351, line: 307, column: 52)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMMAND_REC", file: !67, line: 23, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 18, size: 256, align: 64, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !1333, file: !67, line: 19, baseType: !571, size: 64, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !1333, file: !67, line: 20, baseType: !427, size: 64, align: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1333, file: !67, line: 21, baseType: !427, size: 64, align: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1333, file: !67, line: 22, baseType: !707, size: 64, align: 64, offset: 192)
!1339 = !DILocation(line: 308, column: 16, scope: !1330)
!1340 = !DILocation(line: 308, column: 22, scope: !1330)
!1341 = !DILocation(line: 308, column: 27, scope: !1330)
!1342 = !DILocation(line: 310, column: 27, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !351, line: 310, column: 7)
!1344 = !DILocation(line: 310, column: 32, scope: !1343)
!1345 = !DILocation(line: 310, column: 37, scope: !1343)
!1346 = !DILocation(line: 310, column: 46, scope: !1343)
!1347 = !DILocation(line: 310, column: 7, scope: !1343)
!1348 = !DILocation(line: 310, column: 51, scope: !1343)
!1349 = !DILocation(line: 310, column: 56, scope: !1343)
!1350 = !DILocation(line: 311, column: 16, scope: !1343)
!1351 = !DILocation(line: 311, column: 7, scope: !1343)
!1352 = !DILocation(line: 311, column: 12, scope: !1343)
!1353 = !DILocation(line: 311, column: 21, scope: !1343)
!1354 = !DILocation(line: 311, column: 28, scope: !1343)
!1355 = !DILocation(line: 312, column: 14, scope: !1343)
!1356 = !DILocation(line: 312, column: 19, scope: !1343)
!1357 = !DILocation(line: 312, column: 23, scope: !1343)
!1358 = !DILocation(line: 312, column: 22, scope: !1343)
!1359 = !DILocation(line: 312, column: 26, scope: !1343)
!1360 = !DILocation(line: 312, column: 7, scope: !1343)
!1361 = !DILocation(line: 312, column: 35, scope: !1343)
!1362 = !DILocation(line: 310, column: 7, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1330, file: !351, discriminator: 1)
!1364 = !DILocation(line: 313, column: 48, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1343, file: !351, line: 312, column: 43)
!1366 = !DILocation(line: 313, column: 60, scope: !1365)
!1367 = !DILocation(line: 313, column: 65, scope: !1365)
!1368 = !DILocation(line: 313, column: 69, scope: !1365)
!1369 = !DILocation(line: 313, column: 68, scope: !1365)
!1370 = !DILocation(line: 313, column: 72, scope: !1365)
!1371 = !DILocation(line: 313, column: 25, scope: !1365)
!1372 = !DILocation(line: 314, column: 3, scope: !1365)
!1373 = !DILocation(line: 315, column: 2, scope: !1330)
!1374 = !DILocation(line: 307, column: 41, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1326, file: !351, discriminator: 2)
!1376 = !DILocation(line: 307, column: 46, scope: !1375)
!1377 = !DILocation(line: 307, column: 39, scope: !1375)
!1378 = !DILocation(line: 307, column: 2, scope: !1375)
!1379 = distinct !{!1379, !1380}
!1380 = !DILocation(line: 307, column: 2, scope: !1306)
!1381 = !DILocation(line: 317, column: 6, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1306, file: !351, line: 317, column: 6)
!1383 = !DILocation(line: 317, column: 11, scope: !1382)
!1384 = !DILocation(line: 317, column: 15, scope: !1382)
!1385 = !DILocation(line: 317, column: 6, scope: !1306)
!1386 = !DILocation(line: 318, column: 21, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !351, line: 317, column: 21)
!1388 = !DILocation(line: 318, column: 26, scope: !1387)
!1389 = !DILocation(line: 318, column: 31, scope: !1387)
!1390 = !DILocation(line: 318, column: 34, scope: !1387)
!1391 = !DILocation(line: 318, column: 3, scope: !1387)
!1392 = !DILocation(line: 319, column: 66, scope: !1387)
!1393 = !DILocation(line: 319, column: 71, scope: !1387)
!1394 = !DILocation(line: 319, column: 17, scope: !1387)
!1395 = !DILocation(line: 320, column: 2, scope: !1387)
!1396 = !DILocation(line: 322, column: 23, scope: !1306)
!1397 = !DILocation(line: 322, column: 9, scope: !1306)
!1398 = !DILocation(line: 323, column: 1, scope: !1306)
!1399 = distinct !DISubprogram(name: "fe_core_commands_deinit", scope: !351, file: !351, line: 348, type: !370, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1400 = !DILocation(line: 350, column: 2, scope: !1399)
!1401 = !DILocation(line: 351, column: 2, scope: !1399)
!1402 = !DILocation(line: 352, column: 2, scope: !1399)
!1403 = !DILocation(line: 353, column: 2, scope: !1399)
!1404 = !DILocation(line: 354, column: 2, scope: !1399)
!1405 = !DILocation(line: 355, column: 2, scope: !1399)
!1406 = !DILocation(line: 357, column: 2, scope: !1399)
!1407 = !DILocation(line: 358, column: 2, scope: !1399)
!1408 = !DILocation(line: 359, column: 2, scope: !1399)
!1409 = !DILocation(line: 360, column: 2, scope: !1399)
!1410 = !DILocation(line: 361, column: 2, scope: !1399)
!1411 = !DILocation(line: 362, column: 1, scope: !1399)
!1412 = distinct !DISubprogram(name: "sig_stop", scope: !351, file: !351, line: 203, type: !370, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !372)
!1413 = !DILocation(line: 205, column: 2, scope: !1412)
!1414 = !DILocation(line: 206, column: 1, scope: !1412)
