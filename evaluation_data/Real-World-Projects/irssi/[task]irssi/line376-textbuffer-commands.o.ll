; ModuleID = './line376-textbuffer-commands.o.i'
source_filename = "./line376-textbuffer-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
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
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GUI_WINDOW_REC = type { %struct.MAIN_WINDOW_REC*, %struct._TEXT_BUFFER_VIEW_REC*, i8, %struct._LINE_REC*, i64 }
%struct.MAIN_WINDOW_REC = type { %struct._WINDOW_REC*, %struct._TERM_WINDOW*, i32, i32, i32, i32, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i8 }
%struct._TERM_WINDOW = type opaque
%struct._TEXT_BUFFER_VIEW_REC = type { %struct.TEXT_BUFFER_REC*, %struct._GSList*, %struct._TERM_WINDOW*, i32, i32, i32, i32 (%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*, i32)*, %struct.TEXT_BUFFER_CACHE_REC*, i32, %struct._LINE_REC*, i32, %struct._LINE_REC*, i32, %struct._GHashTable*, i32, i32, i8 }
%struct.TEXT_BUFFER_REC = type { %struct._GSList*, %struct._LINE_REC*, i32, %struct._LINE_REC*, %struct.TEXT_CHUNK_REC*, i32, i32, i32, i8 }
%struct.TEXT_CHUNK_REC = type { [16368 x i8], i32, i32 }
%struct.TEXT_BUFFER_CACHE_REC = type { i32, i32, %struct._GHashTable*, i8, i32 }
%struct._LINE_REC = type { %struct._LINE_REC*, %struct._LINE_REC*, i8*, %struct.LINE_INFO_REC }
%struct.LINE_INFO_REC = type { i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"window scroll\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"window hidelevel\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"scrollback\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"scrollback clear\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"scrollback levelclear\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"scrollback goto\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"scrollback home\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"scrollback end\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"scrollback status\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"all -level\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"away mode changed\00", align 1
@__func__.cmd_clear = private unnamed_addr constant [10 x i8] c"cmd_clear\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@windows = external global %struct._GSList*, align 8
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@__func__.cmd_window_hidelevel = private unnamed_addr constant [21 x i8] c"cmd_window_hidelevel\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@__func__.cmd_scrollback_clear = private unnamed_addr constant [21 x i8] c"cmd_scrollback_clear\00", align 1
@__func__.cmd_scrollback_levelclear = private unnamed_addr constant [26 x i8] c"cmd_scrollback_levelclear\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Window %d: %d lines, %dkB of data\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Total: %d lines, %dkB of data\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"lastlog_last_away\00", align 1

; Function Attrs: nounwind uwtable
define void @textbuffer_commands_init() #0 !dbg !663 {
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_clear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !666
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_scroll to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !667
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_hidelevel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !668
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_scrollback to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !669
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_clear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !670
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_levelclear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !671
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !672
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_home to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !673
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !674
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_scrollback_status to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !675
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !676
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !677
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0)), !dbg !678
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_away_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !679
  ret void, !dbg !680
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_clear(i8*) #0 !dbg !681 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !684, metadata !685), !dbg !686
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !687, metadata !685), !dbg !688
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !689, metadata !685), !dbg !690
  call void @llvm.dbg.declare(metadata i8** %5, metadata !691, metadata !685), !dbg !692
  call void @llvm.dbg.declare(metadata i8** %6, metadata !693, metadata !685), !dbg !694
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !695, metadata !685), !dbg !696
  br label %8, !dbg !697, !llvm.loop !698

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !699
  %10 = icmp ne i8* %9, null, !dbg !703
  br i1 %10, label %11, label %12, !dbg !699

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !704

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_clear, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !707
  br label %73, !dbg !710

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !711

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %2, align 8, !dbg !713
  %16 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %15, i8** %6, i32 16385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._GHashTable** %4, i8** %5), !dbg !715
  %17 = icmp ne i32 %16, 0, !dbg !715
  br i1 %17, label %19, label %18, !dbg !716

; <label>:18:                                     ; preds = %14
  br label %73, !dbg !717

; <label>:19:                                     ; preds = %14
  %20 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !718
  %21 = call i8* @g_hash_table_lookup(%struct._GHashTable* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !720
  %22 = icmp ne i8* %21, null, !dbg !721
  br i1 %22, label %23, label %44, !dbg !722

; <label>:23:                                     ; preds = %19
  %24 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !723
  store %struct._GSList* %24, %struct._GSList** %7, align 8, !dbg !726
  br label %25, !dbg !727

; <label>:25:                                     ; preds = %39, %23
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !728
  %27 = icmp ne %struct._GSList* %26, null, !dbg !731
  br i1 %27, label %28, label %43, !dbg !732

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !733
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !735
  %31 = load i8*, i8** %30, align 8, !dbg !735
  %32 = bitcast i8* %31 to %struct._WINDOW_REC*, !dbg !733
  store %struct._WINDOW_REC* %32, %struct._WINDOW_REC** %3, align 8, !dbg !736
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !737
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 20, !dbg !738
  %35 = load i8*, i8** %34, align 8, !dbg !738
  %36 = bitcast i8* %35 to %struct.GUI_WINDOW_REC*, !dbg !739
  %37 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %36, i32 0, i32 1, !dbg !740
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %37, align 8, !dbg !740
  call void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC* %38), !dbg !741
  br label %39, !dbg !742

; <label>:39:                                     ; preds = %28
  %40 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !743
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 1, !dbg !745
  %42 = load %struct._GSList*, %struct._GSList** %41, align 8, !dbg !745
  store %struct._GSList* %42, %struct._GSList** %7, align 8, !dbg !746
  br label %25, !dbg !747, !llvm.loop !748

; <label>:43:                                     ; preds = %25
  br label %71, !dbg !750

; <label>:44:                                     ; preds = %19
  %45 = load i8*, i8** %5, align 8, !dbg !751
  %46 = load i8, i8* %45, align 1, !dbg !754
  %47 = sext i8 %46 to i32, !dbg !754
  %48 = icmp ne i32 %47, 0, !dbg !755
  br i1 %48, label %49, label %63, !dbg !754

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %5, align 8, !dbg !756
  %51 = call i32 @atoi(i8* %50) #6, !dbg !758
  %52 = call %struct._WINDOW_REC* @window_find_refnum(i32 %51), !dbg !759
  store %struct._WINDOW_REC* %52, %struct._WINDOW_REC** %3, align 8, !dbg !761
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !762
  %54 = icmp ne %struct._WINDOW_REC* %53, null, !dbg !764
  br i1 %54, label %55, label %62, !dbg !765

; <label>:55:                                     ; preds = %49
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !766
  %57 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %56, i32 0, i32 20, !dbg !767
  %58 = load i8*, i8** %57, align 8, !dbg !767
  %59 = bitcast i8* %58 to %struct.GUI_WINDOW_REC*, !dbg !768
  %60 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %59, i32 0, i32 1, !dbg !769
  %61 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %60, align 8, !dbg !769
  call void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC* %61), !dbg !770
  br label %62, !dbg !770

; <label>:62:                                     ; preds = %55, %49
  br label %70, !dbg !771

; <label>:63:                                     ; preds = %44
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !772
  %65 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %64, i32 0, i32 20, !dbg !774
  %66 = load i8*, i8** %65, align 8, !dbg !774
  %67 = bitcast i8* %66 to %struct.GUI_WINDOW_REC*, !dbg !775
  %68 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %67, i32 0, i32 1, !dbg !776
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %68, align 8, !dbg !776
  call void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC* %69), !dbg !777
  br label %70

; <label>:70:                                     ; preds = %63, %62
  br label %71

; <label>:71:                                     ; preds = %70, %43
  %72 = load i8*, i8** %6, align 8, !dbg !778
  call void @cmd_params_free(i8* %72), !dbg !779
  br label %73, !dbg !780

; <label>:73:                                     ; preds = %71, %18, %12
  ret void, !dbg !781
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_scroll(i8*) #0 !dbg !783 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GUI_WINDOW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !784, metadata !685), !dbg !785
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %3, metadata !786, metadata !685), !dbg !787
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !788
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !789
  %6 = load i8*, i8** %5, align 8, !dbg !789
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !790
  store %struct.GUI_WINDOW_REC* %7, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !791
  %8 = load i8*, i8** %2, align 8, !dbg !792
  %9 = call i32 @g_ascii_strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !794
  %10 = icmp eq i32 %9, 0, !dbg !795
  br i1 %10, label %11, label %16, !dbg !796

; <label>:11:                                     ; preds = %1
  %12 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !797
  %13 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %12, i32 0, i32 2, !dbg !799
  %14 = load i8, i8* %13, align 8, !dbg !800
  %15 = and i8 %14, -3, !dbg !800
  store i8 %15, i8* %13, align 8, !dbg !800
  br label %55, !dbg !801

; <label>:16:                                     ; preds = %1
  %17 = load i8*, i8** %2, align 8, !dbg !802
  %18 = call i32 @g_ascii_strcasecmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)), !dbg !805
  %19 = icmp eq i32 %18, 0, !dbg !806
  br i1 %19, label %20, label %31, !dbg !805

; <label>:20:                                     ; preds = %16
  %21 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !807
  %22 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %21, i32 0, i32 2, !dbg !809
  %23 = load i8, i8* %22, align 8, !dbg !810
  %24 = and i8 %23, -3, !dbg !810
  %25 = or i8 %24, 2, !dbg !810
  store i8 %25, i8* %22, align 8, !dbg !810
  %26 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !811
  %27 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %26, i32 0, i32 2, !dbg !812
  %28 = load i8, i8* %27, align 8, !dbg !813
  %29 = and i8 %28, -2, !dbg !813
  %30 = or i8 %29, 1, !dbg !813
  store i8 %30, i8* %27, align 8, !dbg !813
  br label %54, !dbg !814

; <label>:31:                                     ; preds = %16
  %32 = load i8*, i8** %2, align 8, !dbg !815
  %33 = call i32 @g_ascii_strcasecmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)), !dbg !818
  %34 = icmp eq i32 %33, 0, !dbg !819
  br i1 %34, label %35, label %45, !dbg !818

; <label>:35:                                     ; preds = %31
  %36 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !820
  %37 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %36, i32 0, i32 2, !dbg !822
  %38 = load i8, i8* %37, align 8, !dbg !823
  %39 = and i8 %38, -3, !dbg !823
  %40 = or i8 %39, 2, !dbg !823
  store i8 %40, i8* %37, align 8, !dbg !823
  %41 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !824
  %42 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %41, i32 0, i32 2, !dbg !825
  %43 = load i8, i8* %42, align 8, !dbg !826
  %44 = and i8 %43, -2, !dbg !826
  store i8 %44, i8* %42, align 8, !dbg !826
  br label %53, !dbg !827

; <label>:45:                                     ; preds = %31
  %46 = load i8*, i8** %2, align 8, !dbg !828
  %47 = load i8, i8* %46, align 1, !dbg !831
  %48 = sext i8 %47 to i32, !dbg !831
  %49 = icmp ne i32 %48, 0, !dbg !832
  br i1 %49, label %50, label %52, !dbg !831

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %2, align 8, !dbg !833
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 20, i8* %51), !dbg !835
  br label %95, !dbg !836

; <label>:52:                                     ; preds = %45
  br label %53

; <label>:53:                                     ; preds = %52, %35
  br label %54

; <label>:54:                                     ; preds = %53, %20
  br label %55

; <label>:55:                                     ; preds = %54, %11
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !837
  %57 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !838
  %58 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %57, i32 0, i32 2, !dbg !839
  %59 = load i8, i8* %58, align 8, !dbg !839
  %60 = lshr i8 %59, 1, !dbg !839
  %61 = and i8 %60, 1, !dbg !839
  %62 = zext i8 %61 to i32, !dbg !839
  %63 = icmp ne i32 %62, 0, !dbg !838
  br i1 %63, label %65, label %64, !dbg !840

; <label>:64:                                     ; preds = %55
  br label %73, !dbg !841

; <label>:65:                                     ; preds = %55
  %66 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !843
  %67 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %66, i32 0, i32 2, !dbg !845
  %68 = load i8, i8* %67, align 8, !dbg !845
  %69 = and i8 %68, 1, !dbg !845
  %70 = zext i8 %69 to i32, !dbg !845
  %71 = icmp ne i32 %70, 0, !dbg !843
  %72 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), !dbg !843
  br label %73, !dbg !846

; <label>:73:                                     ; preds = %65, %64
  %74 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %64 ], [ %72, %65 ], !dbg !847
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* %56, i32 262144, i32 19, i8* %74), !dbg !849
  %75 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !850
  %76 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %75, i32 0, i32 1, !dbg !851
  %77 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %76, align 8, !dbg !851
  %78 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !852
  %79 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %78, i32 0, i32 2, !dbg !853
  %80 = load i8, i8* %79, align 8, !dbg !853
  %81 = lshr i8 %80, 1, !dbg !853
  %82 = and i8 %81, 1, !dbg !853
  %83 = zext i8 %82 to i32, !dbg !853
  %84 = icmp ne i32 %83, 0, !dbg !852
  br i1 %84, label %85, label %91, !dbg !852

; <label>:85:                                     ; preds = %73
  %86 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !854
  %87 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %86, i32 0, i32 2, !dbg !855
  %88 = load i8, i8* %87, align 8, !dbg !855
  %89 = and i8 %88, 1, !dbg !855
  %90 = zext i8 %89 to i32, !dbg !855
  br label %93, !dbg !856

; <label>:91:                                     ; preds = %73
  %92 = call i32 @settings_get_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)), !dbg !857
  br label %93, !dbg !858

; <label>:93:                                     ; preds = %91, %85
  %94 = phi i32 [ %90, %85 ], [ %92, %91 ], !dbg !859
  call void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC* %77, i32 %94), !dbg !860
  br label %95, !dbg !861

; <label>:95:                                     ; preds = %93, %50
  ret void, !dbg !862
}

; Function Attrs: nounwind uwtable
define internal void @cmd_window_hidelevel(i8*) #0 !dbg !863 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.GUI_WINDOW_REC*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !864, metadata !685), !dbg !865
  call void @llvm.dbg.declare(metadata %struct.GUI_WINDOW_REC** %3, metadata !866, metadata !685), !dbg !867
  call void @llvm.dbg.declare(metadata i8** %4, metadata !868, metadata !685), !dbg !869
  br label %5, !dbg !870, !llvm.loop !871

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !872
  %7 = icmp ne i8* %6, null, !dbg !876
  br i1 %7, label %8, label %9, !dbg !872

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !877

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cmd_window_hidelevel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !880
  br label %49, !dbg !883

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !884

; <label>:11:                                     ; preds = %10
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !886
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 20, !dbg !887
  %14 = load i8*, i8** %13, align 8, !dbg !887
  %15 = bitcast i8* %14 to %struct.GUI_WINDOW_REC*, !dbg !888
  store %struct.GUI_WINDOW_REC* %15, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !889
  %16 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !890
  %17 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %16, i32 0, i32 1, !dbg !891
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %17, align 8, !dbg !891
  %19 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !892
  %20 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %19, i32 0, i32 1, !dbg !893
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %20, align 8, !dbg !893
  %22 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %21, i32 0, i32 14, !dbg !894
  %23 = load i32, i32* %22, align 8, !dbg !894
  %24 = load i8*, i8** %2, align 8, !dbg !895
  %25 = call i32 @combine_level(i32 %23, i8* %24), !dbg !896
  call void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC* %18, i32 %25), !dbg !897
  %26 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !898
  %27 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %26, i32 0, i32 1, !dbg !899
  %28 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %27, align 8, !dbg !899
  call void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC* %28), !dbg !900
  %29 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !901
  %30 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %29, i32 0, i32 1, !dbg !902
  %31 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %30, align 8, !dbg !902
  %32 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %31, i32 0, i32 14, !dbg !903
  %33 = load i32, i32* %32, align 8, !dbg !903
  %34 = icmp eq i32 %33, 0, !dbg !904
  br i1 %34, label %35, label %37, !dbg !901

; <label>:35:                                     ; preds = %11
  %36 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !905
  br label %44, !dbg !907

; <label>:37:                                     ; preds = %11
  %38 = load %struct.GUI_WINDOW_REC*, %struct.GUI_WINDOW_REC** %3, align 8, !dbg !908
  %39 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %38, i32 0, i32 1, !dbg !909
  %40 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %39, align 8, !dbg !909
  %41 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %40, i32 0, i32 14, !dbg !910
  %42 = load i32, i32* %41, align 8, !dbg !910
  %43 = call i8* @bits2level(i32 %42), !dbg !911
  br label %44, !dbg !912

; <label>:44:                                     ; preds = %37, %35
  %45 = phi i8* [ %36, %35 ], [ %43, %37 ], !dbg !914
  store i8* %45, i8** %4, align 8, !dbg !916
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !917
  %47 = load i8*, i8** %4, align 8, !dbg !918
  call void (i8*, %struct._WINDOW_REC*, i32, i32, ...) @printformat_module_window(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* %46, i32 262144, i32 21, i8* %47), !dbg !919
  %48 = load i8*, i8** %4, align 8, !dbg !920
  call void @g_free(i8* %48), !dbg !921
  br label %49, !dbg !922

; <label>:49:                                     ; preds = %44, %9
  ret void, !dbg !923
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !924 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !927, metadata !685), !dbg !928
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !929, metadata !685), !dbg !930
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !931, metadata !685), !dbg !932
  %7 = load i8*, i8** %4, align 8, !dbg !933
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !934
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !934
  %10 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !935
  %11 = bitcast %struct._WI_ITEM_REC* %10 to i8*, !dbg !935
  call void @command_runsub(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* %7, i8* %9, i8* %11), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_clear(i8*) #0 !dbg !938 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !939, metadata !685), !dbg !940
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !941, metadata !685), !dbg !942
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !943, metadata !685), !dbg !944
  call void @llvm.dbg.declare(metadata i8** %5, metadata !945, metadata !685), !dbg !946
  call void @llvm.dbg.declare(metadata i8** %6, metadata !947, metadata !685), !dbg !948
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !949, metadata !685), !dbg !950
  br label %8, !dbg !951, !llvm.loop !952

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !953
  %10 = icmp ne i8* %9, null, !dbg !957
  br i1 %10, label %11, label %12, !dbg !953

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !958

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cmd_scrollback_clear, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !961
  br label %73, !dbg !964

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !965

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %2, align 8, !dbg !967
  %16 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %15, i8** %6, i32 16385, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), %struct._GHashTable** %4, i8** %5), !dbg !969
  %17 = icmp ne i32 %16, 0, !dbg !969
  br i1 %17, label %19, label %18, !dbg !970

; <label>:18:                                     ; preds = %14
  br label %73, !dbg !971

; <label>:19:                                     ; preds = %14
  %20 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !972
  %21 = call i8* @g_hash_table_lookup(%struct._GHashTable* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !974
  %22 = icmp ne i8* %21, null, !dbg !975
  br i1 %22, label %23, label %44, !dbg !976

; <label>:23:                                     ; preds = %19
  %24 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !977
  store %struct._GSList* %24, %struct._GSList** %7, align 8, !dbg !980
  br label %25, !dbg !981

; <label>:25:                                     ; preds = %39, %23
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !982
  %27 = icmp ne %struct._GSList* %26, null, !dbg !985
  br i1 %27, label %28, label %43, !dbg !986

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !987
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !989
  %31 = load i8*, i8** %30, align 8, !dbg !989
  %32 = bitcast i8* %31 to %struct._WINDOW_REC*, !dbg !987
  store %struct._WINDOW_REC* %32, %struct._WINDOW_REC** %3, align 8, !dbg !990
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !991
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 20, !dbg !992
  %35 = load i8*, i8** %34, align 8, !dbg !992
  %36 = bitcast i8* %35 to %struct.GUI_WINDOW_REC*, !dbg !993
  %37 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %36, i32 0, i32 1, !dbg !994
  %38 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %37, align 8, !dbg !994
  call void @textbuffer_view_remove_all_lines(%struct._TEXT_BUFFER_VIEW_REC* %38), !dbg !995
  br label %39, !dbg !996

; <label>:39:                                     ; preds = %28
  %40 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !997
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 1, !dbg !999
  %42 = load %struct._GSList*, %struct._GSList** %41, align 8, !dbg !999
  store %struct._GSList* %42, %struct._GSList** %7, align 8, !dbg !1000
  br label %25, !dbg !1001, !llvm.loop !1002

; <label>:43:                                     ; preds = %25
  br label %71, !dbg !1004

; <label>:44:                                     ; preds = %19
  %45 = load i8*, i8** %5, align 8, !dbg !1005
  %46 = load i8, i8* %45, align 1, !dbg !1008
  %47 = sext i8 %46 to i32, !dbg !1008
  %48 = icmp ne i32 %47, 0, !dbg !1009
  br i1 %48, label %49, label %63, !dbg !1008

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %5, align 8, !dbg !1010
  %51 = call i32 @atoi(i8* %50) #6, !dbg !1012
  %52 = call %struct._WINDOW_REC* @window_find_refnum(i32 %51), !dbg !1013
  store %struct._WINDOW_REC* %52, %struct._WINDOW_REC** %3, align 8, !dbg !1015
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1016
  %54 = icmp ne %struct._WINDOW_REC* %53, null, !dbg !1018
  br i1 %54, label %55, label %62, !dbg !1019

; <label>:55:                                     ; preds = %49
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1020
  %57 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %56, i32 0, i32 20, !dbg !1021
  %58 = load i8*, i8** %57, align 8, !dbg !1021
  %59 = bitcast i8* %58 to %struct.GUI_WINDOW_REC*, !dbg !1022
  %60 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %59, i32 0, i32 1, !dbg !1023
  %61 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %60, align 8, !dbg !1023
  call void @textbuffer_view_remove_all_lines(%struct._TEXT_BUFFER_VIEW_REC* %61), !dbg !1024
  br label %62, !dbg !1024

; <label>:62:                                     ; preds = %55, %49
  br label %70, !dbg !1025

; <label>:63:                                     ; preds = %44
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1026
  %65 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %64, i32 0, i32 20, !dbg !1028
  %66 = load i8*, i8** %65, align 8, !dbg !1028
  %67 = bitcast i8* %66 to %struct.GUI_WINDOW_REC*, !dbg !1029
  %68 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %67, i32 0, i32 1, !dbg !1030
  %69 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %68, align 8, !dbg !1030
  call void @textbuffer_view_remove_all_lines(%struct._TEXT_BUFFER_VIEW_REC* %69), !dbg !1031
  br label %70

; <label>:70:                                     ; preds = %63, %62
  br label %71

; <label>:71:                                     ; preds = %70, %43
  %72 = load i8*, i8** %6, align 8, !dbg !1032
  call void @cmd_params_free(i8* %72), !dbg !1033
  br label %73, !dbg !1034

; <label>:73:                                     ; preds = %71, %18, %12
  ret void, !dbg !1035
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_levelclear(i8*) #0 !dbg !1037 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1038, metadata !685), !dbg !1039
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1040, metadata !685), !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !1042, metadata !685), !dbg !1043
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1044, metadata !685), !dbg !1045
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1046, metadata !685), !dbg !1047
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1048, metadata !685), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1050, metadata !685), !dbg !1051
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1052, metadata !685), !dbg !1053
  br label %10, !dbg !1054, !llvm.loop !1055

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1056
  %12 = icmp ne i8* %11, null, !dbg !1060
  br i1 %12, label %13, label %14, !dbg !1056

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1061

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.cmd_scrollback_levelclear, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1064
  br label %99, !dbg !1067

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1068

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %2, align 8, !dbg !1070
  %18 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %17, i8** %6, i32 16385, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), %struct._GHashTable** %4, i8** %5), !dbg !1072
  %19 = icmp ne i32 %18, 0, !dbg !1072
  br i1 %19, label %21, label %20, !dbg !1073

; <label>:20:                                     ; preds = %16
  br label %99, !dbg !1074

; <label>:21:                                     ; preds = %16
  %22 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1075
  %23 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)), !dbg !1076
  store i8* %23, i8** %9, align 8, !dbg !1077
  %24 = load i8*, i8** %9, align 8, !dbg !1078
  %25 = icmp eq i8* %24, null, !dbg !1079
  br i1 %25, label %31, label %26, !dbg !1080

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %9, align 8, !dbg !1081
  %28 = load i8, i8* %27, align 1, !dbg !1083
  %29 = sext i8 %28 to i32, !dbg !1083
  %30 = icmp eq i32 %29, 0, !dbg !1084
  br i1 %30, label %31, label %32, !dbg !1085

; <label>:31:                                     ; preds = %26, %21
  br label %36, !dbg !1086

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %9, align 8, !dbg !1088
  %34 = call i8* @replace_chars(i8* %33, i8 signext 44, i8 signext 32), !dbg !1089
  %35 = call i32 @level2bits(i8* %34, i32* null), !dbg !1090
  br label %36, !dbg !1091

; <label>:36:                                     ; preds = %32, %31
  %37 = phi i32 [ 0, %31 ], [ %35, %32 ], !dbg !1093
  store i32 %37, i32* %8, align 4, !dbg !1095
  %38 = load i32, i32* %8, align 4, !dbg !1096
  %39 = icmp eq i32 %38, 0, !dbg !1098
  br i1 %39, label %40, label %42, !dbg !1099

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %6, align 8, !dbg !1100
  call void @cmd_params_free(i8* %41), !dbg !1102
  br label %99, !dbg !1103

; <label>:42:                                     ; preds = %36
  %43 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1104
  %44 = call i8* @g_hash_table_lookup(%struct._GHashTable* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1106
  %45 = icmp ne i8* %44, null, !dbg !1107
  br i1 %45, label %46, label %68, !dbg !1108

; <label>:46:                                     ; preds = %42
  %47 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1109
  store %struct._GSList* %47, %struct._GSList** %7, align 8, !dbg !1112
  br label %48, !dbg !1113

; <label>:48:                                     ; preds = %63, %46
  %49 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1114
  %50 = icmp ne %struct._GSList* %49, null, !dbg !1117
  br i1 %50, label %51, label %67, !dbg !1118

; <label>:51:                                     ; preds = %48
  %52 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1119
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 0, !dbg !1121
  %54 = load i8*, i8** %53, align 8, !dbg !1121
  %55 = bitcast i8* %54 to %struct._WINDOW_REC*, !dbg !1119
  store %struct._WINDOW_REC* %55, %struct._WINDOW_REC** %3, align 8, !dbg !1122
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1123
  %57 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %56, i32 0, i32 20, !dbg !1124
  %58 = load i8*, i8** %57, align 8, !dbg !1124
  %59 = bitcast i8* %58 to %struct.GUI_WINDOW_REC*, !dbg !1125
  %60 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %59, i32 0, i32 1, !dbg !1126
  %61 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %60, align 8, !dbg !1126
  %62 = load i32, i32* %8, align 4, !dbg !1127
  call void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC* %61, i32 %62), !dbg !1128
  br label %63, !dbg !1129

; <label>:63:                                     ; preds = %51
  %64 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1130
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1, !dbg !1132
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !1132
  store %struct._GSList* %66, %struct._GSList** %7, align 8, !dbg !1133
  br label %48, !dbg !1134, !llvm.loop !1135

; <label>:67:                                     ; preds = %48
  br label %97, !dbg !1137

; <label>:68:                                     ; preds = %42
  %69 = load i8*, i8** %5, align 8, !dbg !1138
  %70 = load i8, i8* %69, align 1, !dbg !1141
  %71 = sext i8 %70 to i32, !dbg !1141
  %72 = icmp ne i32 %71, 0, !dbg !1142
  br i1 %72, label %73, label %88, !dbg !1141

; <label>:73:                                     ; preds = %68
  %74 = load i8*, i8** %5, align 8, !dbg !1143
  %75 = call i32 @atoi(i8* %74) #6, !dbg !1145
  %76 = call %struct._WINDOW_REC* @window_find_refnum(i32 %75), !dbg !1146
  store %struct._WINDOW_REC* %76, %struct._WINDOW_REC** %3, align 8, !dbg !1148
  %77 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1149
  %78 = icmp ne %struct._WINDOW_REC* %77, null, !dbg !1151
  br i1 %78, label %79, label %87, !dbg !1152

; <label>:79:                                     ; preds = %73
  %80 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1153
  %81 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %80, i32 0, i32 20, !dbg !1154
  %82 = load i8*, i8** %81, align 8, !dbg !1154
  %83 = bitcast i8* %82 to %struct.GUI_WINDOW_REC*, !dbg !1155
  %84 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %83, i32 0, i32 1, !dbg !1156
  %85 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %84, align 8, !dbg !1156
  %86 = load i32, i32* %8, align 4, !dbg !1157
  call void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC* %85, i32 %86), !dbg !1158
  br label %87, !dbg !1158

; <label>:87:                                     ; preds = %79, %73
  br label %96, !dbg !1159

; <label>:88:                                     ; preds = %68
  %89 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1160
  %90 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %89, i32 0, i32 20, !dbg !1162
  %91 = load i8*, i8** %90, align 8, !dbg !1162
  %92 = bitcast i8* %91 to %struct.GUI_WINDOW_REC*, !dbg !1163
  %93 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %92, i32 0, i32 1, !dbg !1164
  %94 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %93, align 8, !dbg !1164
  %95 = load i32, i32* %8, align 4, !dbg !1165
  call void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC* %94, i32 %95), !dbg !1166
  br label %96

; <label>:96:                                     ; preds = %88, %87
  br label %97

; <label>:97:                                     ; preds = %96, %67
  %98 = load i8*, i8** %6, align 8, !dbg !1167
  call void @cmd_params_free(i8* %98), !dbg !1168
  br label %99, !dbg !1169

; <label>:99:                                     ; preds = %97, %40, %20, %14
  ret void, !dbg !1170
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_goto(i8*) #0 !dbg !1171 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1172, metadata !685), !dbg !1173
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1174, metadata !685), !dbg !1175
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1176, metadata !685), !dbg !1177
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1178, metadata !685), !dbg !1179
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1180, metadata !685), !dbg !1181
  %7 = load i8*, i8** %2, align 8, !dbg !1182
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %5, i32 2, i8** %3, i8** %4), !dbg !1184
  %9 = icmp ne i32 %8, 0, !dbg !1184
  br i1 %9, label %11, label %10, !dbg !1185

; <label>:10:                                     ; preds = %1
  br label %56, !dbg !1186

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !1187
  %13 = load i8, i8* %12, align 1, !dbg !1189
  %14 = sext i8 %13 to i32, !dbg !1189
  %15 = icmp eq i32 %14, 0, !dbg !1190
  br i1 %15, label %16, label %38, !dbg !1191

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %3, align 8, !dbg !1192
  %18 = load i8, i8* %17, align 1, !dbg !1194
  %19 = sext i8 %18 to i32, !dbg !1194
  %20 = icmp eq i32 %19, 45, !dbg !1195
  br i1 %20, label %26, label %21, !dbg !1196

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %3, align 8, !dbg !1197
  %23 = load i8, i8* %22, align 1, !dbg !1199
  %24 = sext i8 %23 to i32, !dbg !1199
  %25 = icmp eq i32 %24, 43, !dbg !1200
  br i1 %25, label %26, label %38, !dbg !1201

; <label>:26:                                     ; preds = %21, %16
  %27 = load i8*, i8** %3, align 8, !dbg !1202
  %28 = load i8*, i8** %3, align 8, !dbg !1204
  %29 = load i8, i8* %28, align 1, !dbg !1205
  %30 = sext i8 %29 to i32, !dbg !1205
  %31 = icmp eq i32 %30, 45, !dbg !1206
  %32 = select i1 %31, i32 0, i32 1, !dbg !1205
  %33 = sext i32 %32 to i64, !dbg !1207
  %34 = getelementptr inbounds i8, i8* %27, i64 %33, !dbg !1207
  %35 = call i32 @atoi(i8* %34) #6, !dbg !1208
  store i32 %35, i32* %6, align 4, !dbg !1209
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1210
  %37 = load i32, i32* %6, align 4, !dbg !1211
  call void @gui_window_scroll(%struct._WINDOW_REC* %36, i32 %37), !dbg !1212
  br label %54, !dbg !1213

; <label>:38:                                     ; preds = %21, %11
  %39 = load i8*, i8** %4, align 8, !dbg !1214
  %40 = load i8, i8* %39, align 1, !dbg !1217
  %41 = sext i8 %40 to i32, !dbg !1217
  %42 = icmp eq i32 %41, 0, !dbg !1218
  br i1 %42, label %43, label %50, !dbg !1219

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %3, align 8, !dbg !1220
  %45 = call i32 @is_numeric(i8* %44, i8 signext 0), !dbg !1222
  %46 = icmp ne i32 %45, 0, !dbg !1222
  br i1 %46, label %47, label %50, !dbg !1223

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %3, align 8, !dbg !1224
  %49 = call i32 @atoi(i8* %48) #6, !dbg !1226
  call void @scrollback_goto_line(i32 %49), !dbg !1227
  br label %53, !dbg !1229

; <label>:50:                                     ; preds = %43, %38
  %51 = load i8*, i8** %3, align 8, !dbg !1230
  %52 = load i8*, i8** %4, align 8, !dbg !1232
  call void @scrollback_goto_time(i8* %51, i8* %52), !dbg !1233
  br label %53

; <label>:53:                                     ; preds = %50, %47
  br label %54

; <label>:54:                                     ; preds = %53, %26
  %55 = load i8*, i8** %5, align 8, !dbg !1234
  call void @cmd_params_free(i8* %55), !dbg !1235
  br label %56, !dbg !1236

; <label>:56:                                     ; preds = %54, %10
  ret void, !dbg !1237
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_home(i8*) #0 !dbg !1239 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TEXT_BUFFER_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1240, metadata !685), !dbg !1241
  call void @llvm.dbg.declare(metadata %struct.TEXT_BUFFER_REC** %3, metadata !1242, metadata !685), !dbg !1243
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1244
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !1245
  %6 = load i8*, i8** %5, align 8, !dbg !1245
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !1246
  %8 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %7, i32 0, i32 1, !dbg !1247
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !1247
  %10 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %9, i32 0, i32 0, !dbg !1248
  %11 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %10, align 8, !dbg !1248
  store %struct.TEXT_BUFFER_REC* %11, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1249
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1250
  %13 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %12, i32 0, i32 2, !dbg !1252
  %14 = load i32, i32* %13, align 8, !dbg !1252
  %15 = icmp sgt i32 %14, 0, !dbg !1253
  br i1 %15, label %16, label %21, !dbg !1254

; <label>:16:                                     ; preds = %1
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1255
  %18 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %3, align 8, !dbg !1256
  %19 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %18, i32 0, i32 1, !dbg !1257
  %20 = load %struct._LINE_REC*, %struct._LINE_REC** %19, align 8, !dbg !1257
  call void @gui_window_scroll_line(%struct._WINDOW_REC* %17, %struct._LINE_REC* %20), !dbg !1258
  br label %21, !dbg !1258

; <label>:21:                                     ; preds = %16, %1
  ret void, !dbg !1259
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_end(i8*) #0 !dbg !1260 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1261, metadata !685), !dbg !1262
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1263, metadata !685), !dbg !1264
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1265
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !1266
  %6 = load i8*, i8** %5, align 8, !dbg !1266
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !1267
  %8 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %7, i32 0, i32 1, !dbg !1268
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !1268
  store %struct._TEXT_BUFFER_VIEW_REC* %9, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1269
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1270
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 11, !dbg !1272
  %12 = load %struct._LINE_REC*, %struct._LINE_REC** %11, align 8, !dbg !1272
  %13 = icmp eq %struct._LINE_REC* %12, null, !dbg !1273
  br i1 %13, label %30, label %14, !dbg !1274

; <label>:14:                                     ; preds = %1
  %15 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1275
  %16 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %15, i32 0, i32 11, !dbg !1276
  %17 = load %struct._LINE_REC*, %struct._LINE_REC** %16, align 8, !dbg !1276
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1277
  %19 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %18, i32 0, i32 9, !dbg !1278
  %20 = load %struct._LINE_REC*, %struct._LINE_REC** %19, align 8, !dbg !1278
  %21 = icmp eq %struct._LINE_REC* %17, %20, !dbg !1279
  br i1 %21, label %22, label %31, !dbg !1280

; <label>:22:                                     ; preds = %14
  %23 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1281
  %24 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %23, i32 0, i32 12, !dbg !1282
  %25 = load i32, i32* %24, align 8, !dbg !1282
  %26 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1283
  %27 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %26, i32 0, i32 10, !dbg !1284
  %28 = load i32, i32* %27, align 8, !dbg !1284
  %29 = icmp eq i32 %25, %28, !dbg !1285
  br i1 %29, label %30, label %31, !dbg !1286

; <label>:30:                                     ; preds = %22, %1
  br label %40, !dbg !1288

; <label>:31:                                     ; preds = %22, %14
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1289
  %33 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1290
  %34 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %33, i32 0, i32 11, !dbg !1291
  %35 = load %struct._LINE_REC*, %struct._LINE_REC** %34, align 8, !dbg !1291
  call void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC* %32, %struct._LINE_REC* %35), !dbg !1292
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1293
  %37 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1294
  %38 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %37, i32 0, i32 12, !dbg !1295
  %39 = load i32, i32* %38, align 8, !dbg !1295
  call void @gui_window_scroll(%struct._WINDOW_REC* %36, i32 %39), !dbg !1296
  br label %40, !dbg !1297

; <label>:40:                                     ; preds = %31, %30
  ret void, !dbg !1298
}

; Function Attrs: nounwind uwtable
define internal void @cmd_scrollback_status() #0 !dbg !1299 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1300, metadata !685), !dbg !1301
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1302, metadata !685), !dbg !1303
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1304, metadata !685), !dbg !1307
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1308, metadata !685), !dbg !1309
  store i32 0, i32* %2, align 4, !dbg !1310
  store i64 0, i64* %4, align 8, !dbg !1311
  %7 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1312
  store %struct._GSList* %7, %struct._GSList** %1, align 8, !dbg !1314
  br label %8, !dbg !1315

; <label>:8:                                      ; preds = %62, %0
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1316
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1319
  br i1 %10, label %11, label %66, !dbg !1320

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1321, metadata !685), !dbg !1323
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1324
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !1325
  %14 = load i8*, i8** %13, align 8, !dbg !1325
  %15 = bitcast i8* %14 to %struct._WINDOW_REC*, !dbg !1324
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %5, align 8, !dbg !1323
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %6, metadata !1326, metadata !685), !dbg !1327
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1328
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 20, !dbg !1329
  %18 = load i8*, i8** %17, align 8, !dbg !1329
  %19 = bitcast i8* %18 to %struct.GUI_WINDOW_REC*, !dbg !1330
  %20 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %19, i32 0, i32 1, !dbg !1331
  %21 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %20, align 8, !dbg !1331
  store %struct._TEXT_BUFFER_VIEW_REC* %21, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !1332
  store i64 56, i64* %3, align 8, !dbg !1333
  %22 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !1334
  %23 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %22, i32 0, i32 0, !dbg !1335
  %24 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %23, align 8, !dbg !1335
  %25 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %24, i32 0, i32 0, !dbg !1336
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1336
  %27 = call i32 @g_slist_length(%struct._GSList* %26), !dbg !1337
  %28 = zext i32 %27 to i64, !dbg !1337
  %29 = mul i64 %28, 16376, !dbg !1338
  %30 = load i64, i64* %3, align 8, !dbg !1339
  %31 = add i64 %30, %29, !dbg !1339
  store i64 %31, i64* %3, align 8, !dbg !1339
  %32 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !1340
  %33 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %32, i32 0, i32 0, !dbg !1341
  %34 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %33, align 8, !dbg !1341
  %35 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %34, i32 0, i32 2, !dbg !1342
  %36 = load i32, i32* %35, align 8, !dbg !1342
  %37 = sext i32 %36 to i64, !dbg !1340
  %38 = mul i64 %37, 40, !dbg !1343
  %39 = load i64, i64* %3, align 8, !dbg !1344
  %40 = add i64 %39, %38, !dbg !1344
  store i64 %40, i64* %3, align 8, !dbg !1344
  %41 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !1345
  %42 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %41, i32 0, i32 0, !dbg !1346
  %43 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %42, align 8, !dbg !1346
  %44 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %43, i32 0, i32 2, !dbg !1347
  %45 = load i32, i32* %44, align 8, !dbg !1347
  %46 = load i32, i32* %2, align 4, !dbg !1348
  %47 = add nsw i32 %46, %45, !dbg !1348
  store i32 %47, i32* %2, align 4, !dbg !1348
  %48 = load i64, i64* %3, align 8, !dbg !1349
  %49 = load i64, i64* %4, align 8, !dbg !1350
  %50 = add i64 %49, %48, !dbg !1350
  store i64 %50, i64* %4, align 8, !dbg !1350
  %51 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1351
  %52 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %51, i32 0, i32 0, !dbg !1352
  %53 = load i32, i32* %52, align 8, !dbg !1352
  %54 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %6, align 8, !dbg !1353
  %55 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %54, i32 0, i32 0, !dbg !1354
  %56 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %55, align 8, !dbg !1354
  %57 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %56, i32 0, i32 2, !dbg !1355
  %58 = load i32, i32* %57, align 8, !dbg !1355
  %59 = load i64, i64* %3, align 8, !dbg !1356
  %60 = udiv i64 %59, 1024, !dbg !1357
  %61 = trunc i64 %60 to i32, !dbg !1358
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i32 %53, i32 %58, i32 %61), !dbg !1359
  br label %62, !dbg !1360

; <label>:62:                                     ; preds = %11
  %63 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1361
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 1, !dbg !1363
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !1363
  store %struct._GSList* %65, %struct._GSList** %1, align 8, !dbg !1364
  br label %8, !dbg !1365, !llvm.loop !1366

; <label>:66:                                     ; preds = %8
  %67 = load i32, i32* %2, align 4, !dbg !1368
  %68 = load i64, i64* %4, align 8, !dbg !1369
  %69 = udiv i64 %68, 1024, !dbg !1370
  %70 = trunc i64 %69 to i32, !dbg !1371
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 524288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %67, i32 %70), !dbg !1372
  ret void, !dbg !1373
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_away_changed(%struct._SERVER_REC*) #0 !dbg !1374 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._WINDOW_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1377, metadata !685), !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1379, metadata !685), !dbg !1380
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1381
  %6 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %5, i32 0, i32 19, !dbg !1383
  %7 = load i8, i8* %6, align 8, !dbg !1383
  %8 = lshr i8 %7, 1, !dbg !1383
  %9 = and i8 %8, 1, !dbg !1383
  %10 = zext i8 %9 to i32, !dbg !1383
  %11 = icmp ne i32 %10, 0, !dbg !1381
  br i1 %11, label %13, label %12, !dbg !1384

; <label>:12:                                     ; preds = %1
  br label %33, !dbg !1385

; <label>:13:                                     ; preds = %1
  %14 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !1386
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !1388
  br label %15, !dbg !1389

; <label>:15:                                     ; preds = %29, %13
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1390
  %17 = icmp ne %struct._GSList* %16, null, !dbg !1393
  br i1 %17, label %18, label %33, !dbg !1394

; <label>:18:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1395, metadata !685), !dbg !1397
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1398
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !1399
  %21 = load i8*, i8** %20, align 8, !dbg !1399
  %22 = bitcast i8* %21 to %struct._WINDOW_REC*, !dbg !1398
  store %struct._WINDOW_REC* %22, %struct._WINDOW_REC** %4, align 8, !dbg !1397
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1400
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 20, !dbg !1401
  %25 = load i8*, i8** %24, align 8, !dbg !1401
  %26 = bitcast i8* %25 to %struct.GUI_WINDOW_REC*, !dbg !1402
  %27 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %26, i32 0, i32 1, !dbg !1403
  %28 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %27, align 8, !dbg !1403
  call void @textbuffer_view_set_bookmark_bottom(%struct._TEXT_BUFFER_VIEW_REC* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)), !dbg !1404
  br label %29, !dbg !1405

; <label>:29:                                     ; preds = %18
  %30 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1406
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 1, !dbg !1408
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !1408
  store %struct._GSList* %32, %struct._GSList** %3, align 8, !dbg !1409
  br label %15, !dbg !1410, !llvm.loop !1411

; <label>:33:                                     ; preds = %12, %15
  ret void, !dbg !1413
}

; Function Attrs: nounwind uwtable
define void @textbuffer_commands_deinit() #0 !dbg !1414 {
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_clear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1415
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_scroll to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1416
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_window_hidelevel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1417
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_scrollback to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1418
  call void @command_unbind_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_clear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1419
  call void @command_unbind_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_levelclear to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1420
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_goto to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1421
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_home to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1422
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_scrollback_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1423
  call void @command_unbind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_scrollback_status to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1424
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_away_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1425
  ret void, !dbg !1426
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @textbuffer_view_clear(%struct._TEXT_BUFFER_VIEW_REC*) #1

declare %struct._WINDOW_REC* @window_find_refnum(i32) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @cmd_params_free(i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #1

declare void @textbuffer_view_set_scroll(%struct._TEXT_BUFFER_VIEW_REC*, i32) #1

declare i32 @settings_get_bool(i8*) #1

declare void @textbuffer_view_set_hidden_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #1

declare i32 @combine_level(i32, i8*) #1

declare void @textbuffer_view_redraw(%struct._TEXT_BUFFER_VIEW_REC*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @bits2level(i32) #1

declare void @g_free(i8*) #1

declare void @command_runsub(i8*, i8*, i8*, i8*) #1

declare void @textbuffer_view_remove_all_lines(%struct._TEXT_BUFFER_VIEW_REC*) #1

declare i32 @level2bits(i8*, i32*) #1

declare i8* @replace_chars(i8*, i8 signext, i8 signext) #1

declare void @textbuffer_view_remove_lines_by_level(%struct._TEXT_BUFFER_VIEW_REC*, i32) #1

declare void @gui_window_scroll(%struct._WINDOW_REC*, i32) #1

declare i32 @is_numeric(i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal void @scrollback_goto_line(i32) #0 !dbg !1427 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._TEXT_BUFFER_VIEW_REC*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1430, metadata !685), !dbg !1431
  call void @llvm.dbg.declare(metadata %struct._TEXT_BUFFER_VIEW_REC** %3, metadata !1432, metadata !685), !dbg !1433
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1434
  %5 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %4, i32 0, i32 20, !dbg !1435
  %6 = load i8*, i8** %5, align 8, !dbg !1435
  %7 = bitcast i8* %6 to %struct.GUI_WINDOW_REC*, !dbg !1436
  %8 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %7, i32 0, i32 1, !dbg !1437
  %9 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %8, align 8, !dbg !1437
  store %struct._TEXT_BUFFER_VIEW_REC* %9, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1438
  %10 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1439
  %11 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %10, i32 0, i32 0, !dbg !1441
  %12 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %11, align 8, !dbg !1441
  %13 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %12, i32 0, i32 2, !dbg !1442
  %14 = load i32, i32* %13, align 8, !dbg !1442
  %15 = icmp eq i32 %14, 0, !dbg !1443
  br i1 %15, label %16, label %17, !dbg !1444

; <label>:16:                                     ; preds = %1
  br label %26, !dbg !1445

; <label>:17:                                     ; preds = %1
  %18 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1446
  %19 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %3, align 8, !dbg !1447
  %20 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %19, i32 0, i32 0, !dbg !1448
  %21 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %20, align 8, !dbg !1448
  %22 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %21, i32 0, i32 1, !dbg !1449
  %23 = load %struct._LINE_REC*, %struct._LINE_REC** %22, align 8, !dbg !1449
  call void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC* %18, %struct._LINE_REC* %23), !dbg !1450
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1451
  %25 = load i32, i32* %2, align 4, !dbg !1452
  call void @gui_window_scroll(%struct._WINDOW_REC* %24, i32 %25), !dbg !1453
  br label %26, !dbg !1454

; <label>:26:                                     ; preds = %17, %16
  ret void, !dbg !1455
}

; Function Attrs: nounwind uwtable
define internal void @scrollback_goto_time(i8*, i8*) #0 !dbg !1457 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._LINE_REC*, align 8
  %6 = alloca %struct.tm, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1460, metadata !685), !dbg !1461
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1462, metadata !685), !dbg !1463
  call void @llvm.dbg.declare(metadata %struct._LINE_REC** %5, metadata !1464, metadata !685), !dbg !1465
  call void @llvm.dbg.declare(metadata %struct.tm* %6, metadata !1466, metadata !685), !dbg !1480
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1481, metadata !685), !dbg !1482
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1483, metadata !685), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1485, metadata !685), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1487, metadata !685), !dbg !1488
  %11 = call i64 @time(i64* null) #7, !dbg !1489
  store i64 %11, i64* %8, align 8, !dbg !1490
  store i64 %11, i64* %7, align 8, !dbg !1491
  %12 = load i8*, i8** %3, align 8, !dbg !1492
  %13 = load i8, i8* %12, align 1, !dbg !1494
  %14 = sext i8 %13 to i32, !dbg !1494
  %15 = icmp eq i32 %14, 45, !dbg !1495
  br i1 %15, label %16, label %28, !dbg !1496

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %3, align 8, !dbg !1497
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1499
  %19 = call i32 @atoi(i8* %18) #6, !dbg !1500
  %20 = mul nsw i32 %19, 3600, !dbg !1501
  %21 = mul nsw i32 %20, 24, !dbg !1502
  %22 = sext i32 %21 to i64, !dbg !1500
  %23 = load i64, i64* %8, align 8, !dbg !1503
  %24 = sub nsw i64 %23, %22, !dbg !1503
  store i64 %24, i64* %8, align 8, !dbg !1503
  %25 = bitcast %struct.tm* %6 to i8*, !dbg !1504
  %26 = call %struct.tm* @localtime(i64* %8) #7, !dbg !1505
  %27 = bitcast %struct.tm* %26 to i8*, !dbg !1504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %27, i64 56, i32 8, i1 false), !dbg !1506
  br label %86, !dbg !1508

; <label>:28:                                     ; preds = %2
  %29 = load i8*, i8** %4, align 8, !dbg !1509
  %30 = load i8, i8* %29, align 1, !dbg !1512
  %31 = sext i8 %30 to i32, !dbg !1512
  %32 = icmp ne i32 %31, 0, !dbg !1513
  br i1 %32, label %33, label %83, !dbg !1512

; <label>:33:                                     ; preds = %28
  %34 = bitcast %struct.tm* %6 to i8*, !dbg !1514
  %35 = call %struct.tm* @localtime(i64* %8) #7, !dbg !1516
  %36 = bitcast %struct.tm* %35 to i8*, !dbg !1514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %36, i64 56, i32 8, i1 false), !dbg !1517
  store i32 0, i32* %10, align 4, !dbg !1519
  store i32 0, i32* %9, align 4, !dbg !1520
  %37 = load i8*, i8** %3, align 8, !dbg !1521
  %38 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32* %9, i32* %10) #7, !dbg !1522
  %39 = load i32, i32* %9, align 4, !dbg !1523
  %40 = icmp sle i32 %39, 0, !dbg !1525
  br i1 %40, label %41, label %42, !dbg !1526

; <label>:41:                                     ; preds = %33
  br label %141, !dbg !1527

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %10, align 4, !dbg !1529
  %44 = icmp sle i32 %43, 0, !dbg !1531
  br i1 %44, label %45, label %65, !dbg !1532

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %9, align 4, !dbg !1533
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3, !dbg !1536
  %48 = load i32, i32* %47, align 4, !dbg !1536
  %49 = icmp sgt i32 %46, %48, !dbg !1537
  br i1 %49, label %50, label %64, !dbg !1538

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !1539
  %52 = load i32, i32* %51, align 8, !dbg !1539
  %53 = icmp sgt i32 %52, 0, !dbg !1542
  br i1 %53, label %54, label %58, !dbg !1543

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !1544
  %56 = load i32, i32* %55, align 8, !dbg !1545
  %57 = add nsw i32 %56, -1, !dbg !1545
  store i32 %57, i32* %55, align 8, !dbg !1545
  br label %63, !dbg !1546

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5, !dbg !1547
  %60 = load i32, i32* %59, align 4, !dbg !1549
  %61 = add nsw i32 %60, -1, !dbg !1549
  store i32 %61, i32* %59, align 4, !dbg !1549
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !1550
  store i32 11, i32* %62, align 8, !dbg !1551
  br label %63

; <label>:63:                                     ; preds = %58, %54
  br label %64, !dbg !1552

; <label>:64:                                     ; preds = %63, %45
  br label %79, !dbg !1553

; <label>:65:                                     ; preds = %42
  %66 = load i32, i32* %10, align 4, !dbg !1554
  %67 = add nsw i32 %66, -1, !dbg !1554
  store i32 %67, i32* %10, align 4, !dbg !1554
  %68 = load i32, i32* %10, align 4, !dbg !1556
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !1558
  %70 = load i32, i32* %69, align 8, !dbg !1558
  %71 = icmp sgt i32 %68, %70, !dbg !1559
  br i1 %71, label %72, label %76, !dbg !1560

; <label>:72:                                     ; preds = %65
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5, !dbg !1561
  %74 = load i32, i32* %73, align 4, !dbg !1562
  %75 = add nsw i32 %74, -1, !dbg !1562
  store i32 %75, i32* %73, align 4, !dbg !1562
  br label %76, !dbg !1563

; <label>:76:                                     ; preds = %72, %65
  %77 = load i32, i32* %10, align 4, !dbg !1564
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4, !dbg !1565
  store i32 %77, i32* %78, align 8, !dbg !1566
  br label %79

; <label>:79:                                     ; preds = %76, %64
  %80 = load i32, i32* %9, align 4, !dbg !1567
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3, !dbg !1568
  store i32 %80, i32* %81, align 4, !dbg !1569
  %82 = call i64 @mktime(%struct.tm* %6) #7, !dbg !1570
  store i64 %82, i64* %8, align 8, !dbg !1571
  br label %85, !dbg !1572

; <label>:83:                                     ; preds = %28
  %84 = load i8*, i8** %3, align 8, !dbg !1573
  store i8* %84, i8** %4, align 8, !dbg !1575
  br label %85

; <label>:85:                                     ; preds = %83, %79
  br label %86

; <label>:86:                                     ; preds = %85, %16
  %87 = bitcast %struct.tm* %6 to i8*, !dbg !1576
  %88 = call %struct.tm* @localtime(i64* %8) #7, !dbg !1577
  %89 = bitcast %struct.tm* %88 to i8*, !dbg !1576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %89, i64 56, i32 8, i1 false), !dbg !1578
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0, !dbg !1580
  store i32 0, i32* %90, align 8, !dbg !1581
  %91 = load i8*, i8** %4, align 8, !dbg !1582
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2, !dbg !1583
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1, !dbg !1584
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0, !dbg !1585
  %95 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32* %92, i32* %93, i32* %94) #7, !dbg !1586
  %96 = call i64 @mktime(%struct.tm* %6) #7, !dbg !1587
  store i64 %96, i64* %8, align 8, !dbg !1588
  %97 = load i64, i64* %8, align 8, !dbg !1589
  %98 = load i64, i64* %7, align 8, !dbg !1591
  %99 = icmp sgt i64 %97, %98, !dbg !1592
  br i1 %99, label %100, label %107, !dbg !1593

; <label>:100:                                    ; preds = %86
  %101 = load i8*, i8** %4, align 8, !dbg !1594
  %102 = load i8*, i8** %3, align 8, !dbg !1596
  %103 = icmp eq i8* %101, %102, !dbg !1597
  br i1 %103, label %104, label %107, !dbg !1598

; <label>:104:                                    ; preds = %100
  %105 = load i64, i64* %8, align 8, !dbg !1599
  %106 = sub nsw i64 %105, 86400, !dbg !1599
  store i64 %106, i64* %8, align 8, !dbg !1599
  br label %107, !dbg !1601

; <label>:107:                                    ; preds = %104, %100, %86
  %108 = load i64, i64* %8, align 8, !dbg !1602
  %109 = load i64, i64* %7, align 8, !dbg !1604
  %110 = icmp sgt i64 %108, %109, !dbg !1605
  br i1 %110, label %111, label %112, !dbg !1606

; <label>:111:                                    ; preds = %107
  br label %141, !dbg !1607

; <label>:112:                                    ; preds = %107
  %113 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1609
  %114 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %113, i32 0, i32 20, !dbg !1610
  %115 = load i8*, i8** %114, align 8, !dbg !1610
  %116 = bitcast i8* %115 to %struct.GUI_WINDOW_REC*, !dbg !1611
  %117 = getelementptr inbounds %struct.GUI_WINDOW_REC, %struct.GUI_WINDOW_REC* %116, i32 0, i32 1, !dbg !1612
  %118 = load %struct._TEXT_BUFFER_VIEW_REC*, %struct._TEXT_BUFFER_VIEW_REC** %117, align 8, !dbg !1612
  %119 = getelementptr inbounds %struct._TEXT_BUFFER_VIEW_REC, %struct._TEXT_BUFFER_VIEW_REC* %118, i32 0, i32 0, !dbg !1613
  %120 = load %struct.TEXT_BUFFER_REC*, %struct.TEXT_BUFFER_REC** %119, align 8, !dbg !1613
  %121 = getelementptr inbounds %struct.TEXT_BUFFER_REC, %struct.TEXT_BUFFER_REC* %120, i32 0, i32 1, !dbg !1614
  %122 = load %struct._LINE_REC*, %struct._LINE_REC** %121, align 8, !dbg !1614
  store %struct._LINE_REC* %122, %struct._LINE_REC** %5, align 8, !dbg !1615
  br label %123, !dbg !1616

; <label>:123:                                    ; preds = %137, %112
  %124 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1617
  %125 = icmp ne %struct._LINE_REC* %124, null, !dbg !1621
  br i1 %125, label %126, label %141, !dbg !1622

; <label>:126:                                    ; preds = %123
  %127 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1623
  %128 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %127, i32 0, i32 3, !dbg !1626
  %129 = getelementptr inbounds %struct.LINE_INFO_REC, %struct.LINE_INFO_REC* %128, i32 0, i32 1, !dbg !1627
  %130 = load i64, i64* %129, align 8, !dbg !1627
  %131 = load i64, i64* %8, align 8, !dbg !1628
  %132 = icmp sge i64 %130, %131, !dbg !1629
  br i1 %132, label %133, label %136, !dbg !1630

; <label>:133:                                    ; preds = %126
  %134 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1631
  %135 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1633
  call void @gui_window_scroll_line(%struct._WINDOW_REC* %134, %struct._LINE_REC* %135), !dbg !1634
  br label %141, !dbg !1635

; <label>:136:                                    ; preds = %126
  br label %137, !dbg !1636

; <label>:137:                                    ; preds = %136
  %138 = load %struct._LINE_REC*, %struct._LINE_REC** %5, align 8, !dbg !1637
  %139 = getelementptr inbounds %struct._LINE_REC, %struct._LINE_REC* %138, i32 0, i32 1, !dbg !1639
  %140 = load %struct._LINE_REC*, %struct._LINE_REC** %139, align 8, !dbg !1639
  store %struct._LINE_REC* %140, %struct._LINE_REC** %5, align 8, !dbg !1640
  br label %123, !dbg !1641, !llvm.loop !1642

; <label>:141:                                    ; preds = %41, %111, %133, %123
  ret void, !dbg !1643
}

declare void @textbuffer_view_scroll_line(%struct._TEXT_BUFFER_VIEW_REC*, %struct._LINE_REC*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #4

declare void @gui_window_scroll_line(%struct._WINDOW_REC*, %struct._LINE_REC*) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare void @printtext(i8*, i8*, i32, i8*, ...) #1

declare void @textbuffer_view_set_bookmark_bottom(%struct._TEXT_BUFFER_VIEW_REC*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!660, !661}
!llvm.ident = !{!662}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line376-textbuffer-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66}
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
!36 = !DIFile(filename: "../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!69 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "TXT_LASTLOG_TOO_LONG", value: 2)
!72 = !DIEnumerator(name: "TXT_LASTLOG_COUNT", value: 3)
!73 = !DIEnumerator(name: "TXT_LASTLOG_START", value: 4)
!74 = !DIEnumerator(name: "TXT_LASTLOG_END", value: 5)
!75 = !DIEnumerator(name: "TXT_LASTLOG_SEPARATOR", value: 6)
!76 = !DIEnumerator(name: "TXT_LASTLOG_DATE", value: 7)
!77 = !DIEnumerator(name: "TXT_FILL_2", value: 8)
!78 = !DIEnumerator(name: "TXT_REFNUM_NOT_FOUND", value: 9)
!79 = !DIEnumerator(name: "TXT_WINDOW_TOO_SMALL", value: 10)
!80 = !DIEnumerator(name: "TXT_CANT_HIDE_LAST", value: 11)
!81 = !DIEnumerator(name: "TXT_CANT_HIDE_STICKY_WINDOWS", value: 12)
!82 = !DIEnumerator(name: "TXT_CANT_SHOW_STICKY_WINDOWS", value: 13)
!83 = !DIEnumerator(name: "TXT_WINDOW_NOT_STICKY", value: 14)
!84 = !DIEnumerator(name: "TXT_WINDOW_SET_STICKY", value: 15)
!85 = !DIEnumerator(name: "TXT_WINDOW_UNSET_STICKY", value: 16)
!86 = !DIEnumerator(name: "TXT_WINDOW_INFO_STICKY", value: 17)
!87 = !DIEnumerator(name: "TXT_WINDOW_INFO_SCROLL", value: 18)
!88 = !DIEnumerator(name: "TXT_WINDOW_SCROLL", value: 19)
!89 = !DIEnumerator(name: "TXT_WINDOW_SCROLL_UNKNOWN", value: 20)
!90 = !DIEnumerator(name: "TXT_WINDOW_HIDELEVEL", value: 21)
!91 = !DIEnumerator(name: "TXT_FILL_3", value: 22)
!92 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_HEADER", value: 23)
!93 = !DIEnumerator(name: "TXT_STATUSBAR_LIST_FOOTER", value: 24)
!94 = !DIEnumerator(name: "TXT_STATUSBAR_LIST", value: 25)
!95 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_NAME", value: 26)
!96 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_TYPE", value: 27)
!97 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_PLACEMENT", value: 28)
!98 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_POSITION", value: 29)
!99 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_VISIBLE", value: 30)
!100 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_HEADER", value: 31)
!101 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_FOOTER", value: 32)
!102 = !DIEnumerator(name: "TXT_STATUSBAR_INFO_ITEM_NAME", value: 33)
!103 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_FOUND", value: 34)
!104 = !DIEnumerator(name: "TXT_STATUSBAR_NOT_ENABLED", value: 35)
!105 = !DIEnumerator(name: "TXT_STATUSBAR_ITEM_NOT_FOUND", value: 36)
!106 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_COMMAND", value: 37)
!107 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_TYPE", value: 38)
!108 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_PLACEMENT", value: 39)
!109 = !DIEnumerator(name: "TXT_STATUSBAR_UNKNOWN_VISIBILITY", value: 40)
!110 = !DIEnumerator(name: "TXT_FILL_4", value: 41)
!111 = !DIEnumerator(name: "TXT_PASTE_WARNING", value: 42)
!112 = !DIEnumerator(name: "TXT_PASTE_PROMPT", value: 43)
!113 = !DIEnumerator(name: "TXT_FILL_5", value: 44)
!114 = !DIEnumerator(name: "TXT_IRSSI_BANNER", value: 45)
!115 = !DIEnumerator(name: "TXT_WELCOME_FIRSTTIME", value: 46)
!116 = !DIEnumerator(name: "TXT_WELCOME_INIT_SETTINGS", value: 47)
!117 = !DIEnumerator(name: "TXT_COUNT", value: 48)
!118 = !{!119, !126, !127, !131, !133, !152}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !120, line: 9, baseType: !121)
!120 = !DIFile(filename: "../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !124, !124, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GUI_WINDOW_REC", file: !135, line: 24, baseType: !136)
!135 = !DIFile(filename: "gui-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 13, size: 320, align: 64, elements: !137)
!137 = !{!138, !572, !654, !655, !656, !657, !658, !659}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !135, line: 14, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAIN_WINDOW_REC", file: !141, line: 34, baseType: !142)
!141 = !DIFile(filename: "mainwindows.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 16, size: 704, align: 64, elements: !143)
!143 = !{!144, !551, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !142, file: !141, line: 17, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !147, line: 117, baseType: !148)
!147 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !149, line: 28, size: 1280, align: 64, elements: !150)
!149 = !DIFile(filename: "../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = !{!151, !153, !155, !156, !157, !166, !516, !517, !518, !519, !520, !521, !522, !523, !524, !543, !544, !545, !546, !547, !548, !549, !550}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !148, file: !149, line: 29, baseType: !152, size: 32, align: 32)
!152 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !149, line: 30, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !148, file: !149, line: 32, baseType: !152, size: 32, align: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !148, file: !149, line: 32, baseType: !152, size: 32, align: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !148, file: !149, line: 34, baseType: !158, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !160, line: 37, baseType: !161)
!160 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !160, line: 39, size: 128, align: 64, elements: !162)
!162 = !{!163, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !161, file: !160, line: 41, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !129, line: 77, baseType: !126)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !160, line: 42, baseType: !158, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !148, file: !149, line: 35, baseType: !167, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !147, line: 108, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !170, line: 5, size: 704, align: 64, elements: !171)
!170 = !DIFile(filename: "../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = !{!172, !174, !175, !180, !181, !503, !504, !505, !506, !507, !508, !512}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !173, line: 3, baseType: !152, size: 32, align: 32)
!173 = !DIFile(filename: "../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !169, file: !173, line: 4, baseType: !152, size: 32, align: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !169, file: !173, line: 5, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !178, line: 37, baseType: !179)
!178 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !178, line: 37, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !169, file: !173, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !169, file: !173, line: 8, baseType: !182, size: 64, align: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !147, line: 107, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !185, line: 30, size: 2240, align: 64, elements: !186)
!185 = !DIFile(filename: "../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!186 = !{!187, !189, !190, !191, !412, !417, !418, !419, !420, !421, !422, !423, !424, !425, !429, !430, !434, !435, !436, !440, !441, !442, !443, !444, !445, !446, !447, !448, !455, !456, !457, !458, !459, !463, !467, !471, !475, !479, !484, !491, !498, !502}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !188, line: 3, baseType: !152, size: 32, align: 32)
!188 = !DIFile(filename: "../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !184, file: !188, line: 4, baseType: !152, size: 32, align: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !184, file: !188, line: 6, baseType: !152, size: 32, align: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !184, file: !188, line: 8, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !147, line: 113, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !185, line: 25, size: 1920, align: 64, elements: !195)
!195 = !{!196, !198, !199, !200, !201, !202, !203, !204, !205, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !197, line: 3, baseType: !152, size: 32, align: 32)
!197 = !DIFile(filename: "../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !194, file: !197, line: 4, baseType: !152, size: 32, align: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !194, file: !197, line: 6, baseType: !152, size: 32, align: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !194, file: !197, line: 9, baseType: !154, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !194, file: !197, line: 10, baseType: !152, size: 32, align: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !194, file: !197, line: 11, baseType: !154, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !194, file: !197, line: 11, baseType: !154, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !194, file: !197, line: 11, baseType: !154, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !194, file: !197, line: 13, baseType: !206, size: 16, align: 16, offset: 448)
!206 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !194, file: !197, line: 14, baseType: !154, size: 64, align: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !194, file: !197, line: 15, baseType: !154, size: 64, align: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !194, file: !197, line: 16, baseType: !152, size: 32, align: 32, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !194, file: !197, line: 17, baseType: !154, size: 64, align: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !194, file: !197, line: 19, baseType: !212, size: 64, align: 64, offset: 768)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !147, line: 99, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !147, line: 99, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !194, file: !197, line: 19, baseType: !212, size: 64, align: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !194, file: !197, line: 21, baseType: !154, size: 64, align: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !194, file: !197, line: 22, baseType: !154, size: 64, align: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !194, file: !197, line: 23, baseType: !154, size: 64, align: 64, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !194, file: !197, line: 24, baseType: !154, size: 64, align: 64, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !194, file: !197, line: 26, baseType: !154, size: 64, align: 64, offset: 1152)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !194, file: !197, line: 27, baseType: !154, size: 64, align: 64, offset: 1216)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !194, file: !197, line: 28, baseType: !154, size: 64, align: 64, offset: 1280)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !194, file: !197, line: 29, baseType: !154, size: 64, align: 64, offset: 1344)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !194, file: !197, line: 30, baseType: !154, size: 64, align: 64, offset: 1408)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !194, file: !197, line: 31, baseType: !154, size: 64, align: 64, offset: 1472)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !194, file: !197, line: 32, baseType: !154, size: 64, align: 64, offset: 1536)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !194, file: !197, line: 33, baseType: !154, size: 64, align: 64, offset: 1600)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !194, file: !197, line: 35, baseType: !229, size: 64, align: 64, offset: 1664)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !232)
!232 = !{!233, !235, !369, !370, !375, !376, !377, !378, !379, !388, !389, !390, !394, !395, !396, !397, !398, !399, !400, !401}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !231, file: !4, line: 100, baseType: !234, size: 32, align: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !129, line: 49, baseType: !152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !231, file: !4, line: 101, baseType: !236, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !239)
!239 = !{!240, !262, !268, !275, !279, !356, !360, !365}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !238, file: !4, line: 133, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !229, !127, !245, !248, !249}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !246, line: 66, baseType: !247)
!246 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!247 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !252, line: 42, baseType: !253)
!252 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !252, line: 44, size: 128, align: 64, elements: !254)
!254 = !{!255, !260, !261}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !253, file: !252, line: 46, baseType: !256, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !257, line: 36, baseType: !258)
!257 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !246, line: 45, baseType: !259)
!259 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !253, file: !252, line: 47, baseType: !234, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !253, file: !252, line: 48, baseType: !127, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !238, file: !4, line: 138, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!244, !229, !266, !245, !248, !249}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !238, file: !4, line: 143, baseType: !269, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!244, !229, !272, !274, !249}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !246, line: 51, baseType: !273)
!273 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !238, file: !4, line: 147, baseType: !276, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!244, !229, !249}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !238, file: !4, line: 149, baseType: !280, size: 64, align: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !229, !355}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !286)
!286 = !{!287, !288, !309, !338, !340, !344, !345, !346, !347, !348, !349, !350, !351}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !285, file: !16, line: 174, baseType: !164, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !285, file: !16, line: 175, baseType: !289, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !292)
!292 = !{!293, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !291, file: !16, line: 198, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !164}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !291, file: !16, line: 199, baseType: !294, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !291, file: !16, line: 200, baseType: !299, size: 64, align: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !164, !283, !302, !308}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !164}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !129, line: 50, baseType: !234)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !285, file: !16, line: 177, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !314)
!314 = !{!315, !320, !324, !328, !332, !333}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !313, file: !16, line: 216, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!307, !283, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !313, file: !16, line: 218, baseType: !321, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!307, !283}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !313, file: !16, line: 219, baseType: !325, size: 64, align: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!307, !283, !303, !164}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !313, file: !16, line: 222, baseType: !329, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !283}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !313, file: !16, line: 226, baseType: !303, size: 64, align: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !313, file: !16, line: 227, baseType: !334, size: 64, align: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !285, file: !16, line: 178, baseType: !339, size: 32, align: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !129, line: 55, baseType: !259)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !285, file: !16, line: 180, baseType: !341, size: 64, align: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !343)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !285, file: !16, line: 182, baseType: !234, size: 32, align: 32, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !16, line: 183, baseType: !339, size: 32, align: 32, offset: 352)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !285, file: !16, line: 184, baseType: !339, size: 32, align: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !285, file: !16, line: 186, baseType: !158, size: 64, align: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !285, file: !16, line: 188, baseType: !283, size: 64, align: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !16, line: 189, baseType: !283, size: 64, align: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !16, line: 191, baseType: !154, size: 64, align: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !285, file: !16, line: 193, baseType: !352, size: 64, align: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !354)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !238, file: !4, line: 151, baseType: !357, size: 64, align: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !229}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !238, file: !4, line: 152, baseType: !361, size: 64, align: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!244, !229, !364, !249}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !238, file: !4, line: 155, baseType: !366, size: 64, align: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!364, !229}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !231, file: !4, line: 103, baseType: !127, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !231, file: !4, line: 104, baseType: !371, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !372, line: 77, baseType: !373)
!372 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !372, line: 77, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !231, file: !4, line: 105, baseType: !371, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !231, file: !4, line: 106, baseType: !127, size: 64, align: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !231, file: !4, line: 107, baseType: !339, size: 32, align: 32, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !231, file: !4, line: 109, baseType: !245, size: 64, align: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !231, file: !4, line: 110, baseType: !380, size: 64, align: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !382, line: 39, baseType: !383)
!382 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !382, line: 41, size: 192, align: 64, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !383, file: !382, line: 43, baseType: !127, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !383, file: !382, line: 44, baseType: !245, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !383, file: !382, line: 45, baseType: !245, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !231, file: !4, line: 111, baseType: !380, size: 64, align: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !231, file: !4, line: 112, baseType: !380, size: 64, align: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !231, file: !4, line: 113, baseType: !391, size: 48, align: 8, offset: 704)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 48, align: 8, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 6)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !231, file: !4, line: 117, baseType: !339, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !231, file: !4, line: 118, baseType: !339, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !231, file: !4, line: 119, baseType: !339, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !231, file: !4, line: 120, baseType: !339, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !231, file: !4, line: 121, baseType: !339, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !231, file: !4, line: 122, baseType: !339, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !231, file: !4, line: 124, baseType: !164, size: 64, align: 64, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !231, file: !4, line: 125, baseType: !164, size: 64, align: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !194, file: !197, line: 38, baseType: !259, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !194, file: !197, line: 39, baseType: !259, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !194, file: !197, line: 40, baseType: !259, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !194, file: !197, line: 41, baseType: !259, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !194, file: !197, line: 42, baseType: !259, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !194, file: !197, line: 43, baseType: !259, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !194, file: !197, line: 44, baseType: !259, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !194, file: !197, line: 45, baseType: !259, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !194, file: !197, line: 46, baseType: !154, size: 64, align: 64, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !194, file: !197, line: 47, baseType: !154, size: 64, align: 64, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !184, file: !188, line: 9, baseType: !413, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !414, line: 75, baseType: !415)
!414 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !416, line: 139, baseType: !273)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!417 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !184, file: !188, line: 10, baseType: !413, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !184, file: !188, line: 12, baseType: !154, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !184, file: !188, line: 13, baseType: !154, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !184, file: !188, line: 15, baseType: !259, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !184, file: !188, line: 16, baseType: !259, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !184, file: !188, line: 17, baseType: !259, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !184, file: !188, line: 18, baseType: !259, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !184, file: !188, line: 19, baseType: !259, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !184, file: !188, line: 21, baseType: !426, size: 64, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !147, line: 102, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !147, line: 102, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !184, file: !188, line: 22, baseType: !152, size: 32, align: 32, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !184, file: !188, line: 25, baseType: !431, size: 128, align: 64, offset: 640)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, align: 64, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 2)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !184, file: !188, line: 26, baseType: !152, size: 32, align: 32, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !184, file: !188, line: 27, baseType: !152, size: 32, align: 32, offset: 800)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !184, file: !188, line: 29, baseType: !437, size: 64, align: 64, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !147, line: 103, baseType: !439)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !147, line: 103, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !184, file: !188, line: 30, baseType: !176, size: 64, align: 64, offset: 896)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !184, file: !188, line: 32, baseType: !154, size: 64, align: 64, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !184, file: !188, line: 33, baseType: !154, size: 64, align: 64, offset: 1024)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !184, file: !188, line: 34, baseType: !154, size: 64, align: 64, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !184, file: !188, line: 35, baseType: !259, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !184, file: !188, line: 36, baseType: !259, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !184, file: !188, line: 37, baseType: !259, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !184, file: !188, line: 38, baseType: !259, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !184, file: !188, line: 40, baseType: !449, size: 128, align: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !129, line: 504, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !129, line: 506, size: 128, align: 64, elements: !451)
!451 = !{!452, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !450, file: !129, line: 508, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !129, line: 48, baseType: !273)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !450, file: !129, line: 509, baseType: !453, size: 64, align: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !184, file: !188, line: 41, baseType: !413, size: 64, align: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !184, file: !188, line: 42, baseType: !152, size: 32, align: 32, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !184, file: !188, line: 44, baseType: !158, size: 64, align: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !184, file: !188, line: 45, baseType: !158, size: 64, align: 64, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !184, file: !188, line: 53, baseType: !460, size: 64, align: 64, offset: 1600)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !182, !131, !152}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !184, file: !188, line: 55, baseType: !464, size: 64, align: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!152, !182, !130}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !184, file: !188, line: 57, baseType: !468, size: 64, align: 64, offset: 1728)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!152, !182, !131}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !184, file: !188, line: 60, baseType: !472, size: 64, align: 64, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!131, !182}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !184, file: !188, line: 62, baseType: !476, size: 64, align: 64, offset: 1856)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !182, !131, !131, !152}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !184, file: !188, line: 65, baseType: !480, size: 64, align: 64, offset: 1920)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !182, !131, !131}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !184, file: !188, line: 69, baseType: !485, size: 64, align: 64, offset: 1984)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !182, !131}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !147, line: 109, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !147, line: 109, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !184, file: !188, line: 70, baseType: !492, size: 64, align: 64, offset: 2048)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !182, !131}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !147, line: 110, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !147, line: 110, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !184, file: !188, line: 71, baseType: !499, size: 64, align: 64, offset: 2112)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!152, !131, !131}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !184, file: !188, line: 73, baseType: !499, size: 64, align: 64, offset: 2176)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !169, file: !173, line: 9, baseType: !154, size: 64, align: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !173, line: 10, baseType: !154, size: 64, align: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !169, file: !173, line: 11, baseType: !413, size: 64, align: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !169, file: !173, line: 12, baseType: !152, size: 32, align: 32, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !169, file: !173, line: 13, baseType: !154, size: 64, align: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !169, file: !173, line: 15, baseType: !509, size: 64, align: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !167}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !169, file: !173, line: 17, baseType: !513, size: 64, align: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!131, !167}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !148, file: !149, line: 36, baseType: !182, size: 64, align: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !148, file: !149, line: 37, baseType: !182, size: 64, align: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !148, file: !149, line: 38, baseType: !154, size: 64, align: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !148, file: !149, line: 40, baseType: !152, size: 32, align: 32, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !148, file: !149, line: 41, baseType: !158, size: 64, align: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !148, file: !149, line: 43, baseType: !259, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !148, file: !149, line: 44, baseType: !259, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !148, file: !149, line: 45, baseType: !259, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !148, file: !149, line: 48, baseType: !525, size: 64, align: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !527, line: 14, baseType: !528)
!527 = !DIFile(filename: "../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 6, size: 256, align: 64, elements: !529)
!529 = !{!530, !531, !540, !541, !542}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !527, line: 7, baseType: !154, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !528, file: !527, line: 9, baseType: !532, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !534, line: 37, baseType: !535)
!534 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !534, line: 39, size: 192, align: 64, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !535, file: !534, line: 41, baseType: !164, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !534, line: 42, baseType: !532, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !535, file: !534, line: 43, baseType: !532, size: 64, align: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !528, file: !527, line: 10, baseType: !152, size: 32, align: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !528, file: !527, line: 12, baseType: !152, size: 32, align: 32, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !528, file: !527, line: 13, baseType: !152, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !148, file: !149, line: 49, baseType: !154, size: 64, align: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !148, file: !149, line: 51, baseType: !152, size: 32, align: 32, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !148, file: !149, line: 52, baseType: !154, size: 64, align: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !148, file: !149, line: 54, baseType: !413, size: 64, align: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !148, file: !149, line: 55, baseType: !413, size: 64, align: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !148, file: !149, line: 57, baseType: !154, size: 64, align: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !148, file: !149, line: 58, baseType: !126, size: 64, align: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !148, file: !149, line: 60, baseType: !126, size: 64, align: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "screen_win", scope: !142, file: !141, line: 19, baseType: !552, size: 64, align: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "TERM_WINDOW", file: !554, line: 4, baseType: !555)
!554 = !DIFile(filename: "term.h", directory: "/home/lichi/Desktop/irssi/task1")
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "_TERM_WINDOW", file: !554, line: 4, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_windows", scope: !142, file: !141, line: 20, baseType: !152, size: 32, align: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !142, file: !141, line: 22, baseType: !152, size: 32, align: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !142, file: !141, line: 22, baseType: !152, size: 32, align: 32, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "first_column", scope: !142, file: !141, line: 23, baseType: !152, size: 32, align: 32, offset: 224)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_column", scope: !142, file: !141, line: 23, baseType: !152, size: 32, align: 32, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !142, file: !141, line: 24, baseType: !152, size: 32, align: 32, offset: 288)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !142, file: !141, line: 24, baseType: !152, size: 32, align: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "statusbars", scope: !142, file: !141, line: 26, baseType: !158, size: 64, align: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_top", scope: !142, file: !141, line: 27, baseType: !152, size: 32, align: 32, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines_bottom", scope: !142, file: !141, line: 27, baseType: !152, size: 32, align: 32, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_lines", scope: !142, file: !141, line: 28, baseType: !152, size: 32, align: 32, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_left", scope: !142, file: !141, line: 29, baseType: !152, size: 32, align: 32, offset: 544)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns_right", scope: !142, file: !141, line: 29, baseType: !152, size: 32, align: 32, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "statusbar_columns", scope: !142, file: !141, line: 30, baseType: !152, size: 32, align: 32, offset: 608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !142, file: !141, line: 32, baseType: !259, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size_dirty", scope: !142, file: !141, line: 33, baseType: !259, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !136, file: !135, line: 15, baseType: !573, size: 64, align: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_VIEW_REC", file: !575, line: 7, baseType: !576)
!575 = !DIFile(filename: "textbuffer-view.h", directory: "/home/lichi/Desktop/irssi/task1")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_BUFFER_VIEW_REC", file: !575, line: 50, size: 960, align: 64, elements: !577)
!577 = !{!578, !619, !620, !621, !622, !623, !624, !629, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !576, file: !575, line: 51, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_REC", file: !581, line: 72, baseType: !582)
!581 = !DIFile(filename: "textbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 60, size: 448, align: 64, elements: !583)
!583 = !{!584, !585, !602, !603, !604, !615, !616, !617, !618}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "text_chunks", scope: !582, file: !581, line: 61, baseType: !158, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !582, file: !581, line: 62, baseType: !586, size: 64, align: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_REC", file: !581, line: 52, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LINE_REC", file: !581, line: 34, size: 320, align: 64, elements: !589)
!589 = !{!590, !592, !593, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !588, file: !581, line: 48, baseType: !591, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !581, line: 48, baseType: !591, size: 64, align: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !588, file: !581, line: 50, baseType: !594, size: 64, align: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !588, file: !581, line: 51, baseType: !597, size: 128, align: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINE_INFO_REC", file: !581, line: 32, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 29, size: 128, align: 64, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !598, file: !581, line: 30, baseType: !152, size: 32, align: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !598, file: !581, line: 31, baseType: !413, size: 64, align: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lines_count", scope: !582, file: !581, line: 63, baseType: !152, size: 32, align: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cur_line", scope: !582, file: !581, line: 65, baseType: !586, size: 64, align: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !582, file: !581, line: 66, baseType: !605, size: 64, align: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_CHUNK_REC", file: !581, line: 58, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 54, size: 131008, align: 32, elements: !608)
!608 = !{!609, !613, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !607, file: !581, line: 55, baseType: !610, size: 130944, align: 8)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 130944, align: 8, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 16368)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !607, file: !581, line: 56, baseType: !152, size: 32, align: 32, offset: 130944)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !607, file: !581, line: 57, baseType: !152, size: 32, align: 32, offset: 130976)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "last_fg", scope: !582, file: !581, line: 68, baseType: !152, size: 32, align: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "last_bg", scope: !582, file: !581, line: 69, baseType: !152, size: 32, align: 32, offset: 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "last_flags", scope: !582, file: !581, line: 70, baseType: !152, size: 32, align: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "last_eol", scope: !582, file: !581, line: 71, baseType: !259, size: 1, align: 32, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !576, file: !575, line: 53, baseType: !158, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !576, file: !575, line: 55, baseType: !552, size: 64, align: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !576, file: !575, line: 56, baseType: !152, size: 32, align: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !576, file: !575, line: 56, baseType: !152, size: 32, align: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent", scope: !576, file: !575, line: 58, baseType: !152, size: 32, align: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "default_indent_func", scope: !576, file: !575, line: 59, baseType: !625, size: 64, align: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "INDENT_FUNC", file: !575, line: 10, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!152, !573, !586, !152}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !576, file: !575, line: 61, baseType: !630, size: 64, align: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_BUFFER_CACHE_REC", file: !575, line: 48, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 37, size: 192, align: 64, elements: !633)
!633 = !{!634, !635, !636, !637, !638}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !632, file: !575, line: 38, baseType: !152, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !632, file: !575, line: 39, baseType: !152, size: 32, align: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "line_cache", scope: !632, file: !575, line: 41, baseType: !176, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "update_counter", scope: !632, file: !575, line: 45, baseType: !595, size: 8, align: 8, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "last_linecount", scope: !632, file: !575, line: 47, baseType: !152, size: 32, align: 32, offset: 160)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ypos", scope: !576, file: !575, line: 63, baseType: !152, size: 32, align: 32, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "startline", scope: !576, file: !575, line: 66, baseType: !586, size: 64, align: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "subline", scope: !576, file: !575, line: 68, baseType: !152, size: 32, align: 32, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_startline", scope: !576, file: !575, line: 71, baseType: !586, size: 64, align: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_subline", scope: !576, file: !575, line: 72, baseType: !152, size: 32, align: 32, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !576, file: !575, line: 76, baseType: !176, size: 64, align: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hidden_level", scope: !576, file: !575, line: 79, baseType: !152, size: 32, align: 32, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "empty_linecount", scope: !576, file: !575, line: 82, baseType: !152, size: 32, align: 32, offset: 864)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "longword_noindent", scope: !576, file: !575, line: 84, baseType: !259, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !576, file: !575, line: 86, baseType: !259, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !576, file: !575, line: 88, baseType: !259, size: 1, align: 32, offset: 898, flags: DIFlagBitField, extraData: i64 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "break_wide", scope: !576, file: !575, line: 90, baseType: !259, size: 1, align: 32, offset: 899, flags: DIFlagBitField, extraData: i64 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !576, file: !575, line: 92, baseType: !259, size: 1, align: 32, offset: 900, flags: DIFlagBitField, extraData: i64 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "more_text", scope: !576, file: !575, line: 94, baseType: !259, size: 1, align: 32, offset: 901, flags: DIFlagBitField, extraData: i64 896)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !576, file: !575, line: 96, baseType: !259, size: 1, align: 32, offset: 902, flags: DIFlagBitField, extraData: i64 896)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "scroll", scope: !136, file: !135, line: 17, baseType: !259, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "use_scroll", scope: !136, file: !135, line: 18, baseType: !259, size: 1, align: 32, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sticky", scope: !136, file: !135, line: 20, baseType: !259, size: 1, align: 32, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "use_insert_after", scope: !136, file: !135, line: 21, baseType: !259, size: 1, align: 32, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after", scope: !136, file: !135, line: 22, baseType: !586, size: 64, align: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "insert_after_time", scope: !136, file: !135, line: 23, baseType: !413, size: 64, align: 64, offset: 256)
!660 = !{i32 2, !"Dwarf Version", i32 4}
!661 = !{i32 2, !"Debug Info Version", i32 3}
!662 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!663 = distinct !DISubprogram(name: "textbuffer_commands_init", scope: !664, file: !664, line: 376, type: !336, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!664 = !DIFile(filename: "textbuffer-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!665 = !{}
!666 = !DILocation(line: 378, column: 2, scope: !663)
!667 = !DILocation(line: 379, column: 2, scope: !663)
!668 = !DILocation(line: 380, column: 2, scope: !663)
!669 = !DILocation(line: 381, column: 2, scope: !663)
!670 = !DILocation(line: 382, column: 2, scope: !663)
!671 = !DILocation(line: 383, column: 2, scope: !663)
!672 = !DILocation(line: 384, column: 2, scope: !663)
!673 = !DILocation(line: 385, column: 2, scope: !663)
!674 = !DILocation(line: 386, column: 2, scope: !663)
!675 = !DILocation(line: 387, column: 2, scope: !663)
!676 = !DILocation(line: 389, column: 2, scope: !663)
!677 = !DILocation(line: 390, column: 2, scope: !663)
!678 = !DILocation(line: 391, column: 2, scope: !663)
!679 = !DILocation(line: 393, column: 2, scope: !663)
!680 = !DILocation(line: 394, column: 1, scope: !663)
!681 = distinct !DISubprogram(name: "cmd_clear", scope: !664, file: !664, line: 34, type: !682, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !131}
!684 = !DILocalVariable(name: "data", arg: 1, scope: !681, file: !664, line: 34, type: !131)
!685 = !DIExpression()
!686 = !DILocation(line: 34, column: 35, scope: !681)
!687 = !DILocalVariable(name: "window", scope: !681, file: !664, line: 36, type: !145)
!688 = !DILocation(line: 36, column: 14, scope: !681)
!689 = !DILocalVariable(name: "optlist", scope: !681, file: !664, line: 37, type: !176)
!690 = !DILocation(line: 37, column: 14, scope: !681)
!691 = !DILocalVariable(name: "refnum", scope: !681, file: !664, line: 38, type: !154)
!692 = !DILocation(line: 38, column: 8, scope: !681)
!693 = !DILocalVariable(name: "free_arg", scope: !681, file: !664, line: 39, type: !126)
!694 = !DILocation(line: 39, column: 8, scope: !681)
!695 = !DILocalVariable(name: "tmp", scope: !681, file: !664, line: 40, type: !158)
!696 = !DILocation(line: 40, column: 10, scope: !681)
!697 = !DILocation(line: 42, column: 2, scope: !681)
!698 = distinct !{!698, !697}
!699 = !DILocation(line: 42, column: 10, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !664, discriminator: 1)
!701 = distinct !DILexicalBlock(scope: !702, file: !664, line: 42, column: 10)
!702 = distinct !DILexicalBlock(scope: !681, file: !664, line: 42, column: 4)
!703 = !DILocation(line: 42, column: 15, scope: !700)
!704 = !DILocation(line: 42, column: 5, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !664, discriminator: 2)
!706 = distinct !DILexicalBlock(scope: !701, file: !664, line: 42, column: 3)
!707 = !DILocation(line: 42, column: 14, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !664, discriminator: 3)
!709 = distinct !DILexicalBlock(scope: !701, file: !664, line: 42, column: 12)
!710 = !DILocation(line: 42, column: 99, scope: !708)
!711 = !DILocation(line: 42, column: 110, scope: !712)
!712 = !DILexicalBlockFile(scope: !702, file: !664, discriminator: 4)
!713 = !DILocation(line: 44, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !681, file: !664, line: 44, column: 6)
!715 = !DILocation(line: 44, column: 7, scope: !714)
!716 = !DILocation(line: 44, column: 6, scope: !681)
!717 = !DILocation(line: 45, column: 37, scope: !714)
!718 = !DILocation(line: 47, column: 26, scope: !719)
!719 = distinct !DILexicalBlock(scope: !681, file: !664, line: 47, column: 6)
!720 = !DILocation(line: 47, column: 6, scope: !719)
!721 = !DILocation(line: 47, column: 42, scope: !719)
!722 = !DILocation(line: 47, column: 6, scope: !681)
!723 = !DILocation(line: 49, column: 14, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !664, line: 49, column: 3)
!725 = distinct !DILexicalBlock(scope: !719, file: !664, line: 47, column: 50)
!726 = !DILocation(line: 49, column: 12, scope: !724)
!727 = !DILocation(line: 49, column: 8, scope: !724)
!728 = !DILocation(line: 49, column: 23, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !664, discriminator: 1)
!730 = distinct !DILexicalBlock(scope: !724, file: !664, line: 49, column: 3)
!731 = !DILocation(line: 49, column: 27, scope: !729)
!732 = !DILocation(line: 49, column: 3, scope: !729)
!733 = !DILocation(line: 50, column: 13, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !664, line: 49, column: 52)
!735 = !DILocation(line: 50, column: 18, scope: !734)
!736 = !DILocation(line: 50, column: 11, scope: !734)
!737 = !DILocation(line: 51, column: 48, scope: !734)
!738 = !DILocation(line: 51, column: 57, scope: !734)
!739 = !DILocation(line: 51, column: 27, scope: !734)
!740 = !DILocation(line: 51, column: 69, scope: !734)
!741 = !DILocation(line: 51, column: 4, scope: !734)
!742 = !DILocation(line: 52, column: 3, scope: !734)
!743 = !DILocation(line: 49, column: 41, scope: !744)
!744 = !DILexicalBlockFile(scope: !730, file: !664, discriminator: 2)
!745 = !DILocation(line: 49, column: 46, scope: !744)
!746 = !DILocation(line: 49, column: 39, scope: !744)
!747 = !DILocation(line: 49, column: 3, scope: !744)
!748 = distinct !{!748, !749}
!749 = !DILocation(line: 49, column: 3, scope: !725)
!750 = !DILocation(line: 53, column: 2, scope: !725)
!751 = !DILocation(line: 53, column: 14, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !664, discriminator: 1)
!753 = distinct !DILexicalBlock(scope: !719, file: !664, line: 53, column: 13)
!754 = !DILocation(line: 53, column: 13, scope: !752)
!755 = !DILocation(line: 53, column: 21, scope: !752)
!756 = !DILocation(line: 55, column: 36, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !664, line: 53, column: 30)
!758 = !DILocation(line: 55, column: 31, scope: !757)
!759 = !DILocation(line: 55, column: 12, scope: !760)
!760 = !DILexicalBlockFile(scope: !757, file: !664, discriminator: 1)
!761 = !DILocation(line: 55, column: 10, scope: !757)
!762 = !DILocation(line: 56, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !664, line: 56, column: 7)
!764 = !DILocation(line: 56, column: 14, scope: !763)
!765 = !DILocation(line: 56, column: 7, scope: !757)
!766 = !DILocation(line: 57, column: 48, scope: !763)
!767 = !DILocation(line: 57, column: 57, scope: !763)
!768 = !DILocation(line: 57, column: 27, scope: !763)
!769 = !DILocation(line: 57, column: 69, scope: !763)
!770 = !DILocation(line: 57, column: 4, scope: !763)
!771 = !DILocation(line: 58, column: 2, scope: !757)
!772 = !DILocation(line: 60, column: 47, scope: !773)
!773 = distinct !DILexicalBlock(scope: !753, file: !664, line: 58, column: 9)
!774 = !DILocation(line: 60, column: 60, scope: !773)
!775 = !DILocation(line: 60, column: 26, scope: !773)
!776 = !DILocation(line: 60, column: 72, scope: !773)
!777 = !DILocation(line: 60, column: 3, scope: !773)
!778 = !DILocation(line: 63, column: 18, scope: !681)
!779 = !DILocation(line: 63, column: 2, scope: !681)
!780 = !DILocation(line: 64, column: 1, scope: !681)
!781 = !DILocation(line: 64, column: 1, scope: !782)
!782 = !DILexicalBlockFile(scope: !681, file: !664, discriminator: 1)
!783 = distinct !DISubprogram(name: "cmd_window_scroll", scope: !664, file: !664, line: 66, type: !682, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!784 = !DILocalVariable(name: "data", arg: 1, scope: !783, file: !664, line: 66, type: !131)
!785 = !DILocation(line: 66, column: 43, scope: !783)
!786 = !DILocalVariable(name: "gui", scope: !783, file: !664, line: 68, type: !133)
!787 = !DILocation(line: 68, column: 18, scope: !783)
!788 = !DILocation(line: 70, column: 30, scope: !783)
!789 = !DILocation(line: 70, column: 43, scope: !783)
!790 = !DILocation(line: 70, column: 9, scope: !783)
!791 = !DILocation(line: 70, column: 6, scope: !783)
!792 = !DILocation(line: 71, column: 25, scope: !793)
!793 = distinct !DILexicalBlock(scope: !783, file: !664, line: 71, column: 6)
!794 = !DILocation(line: 71, column: 6, scope: !793)
!795 = !DILocation(line: 71, column: 42, scope: !793)
!796 = !DILocation(line: 71, column: 6, scope: !783)
!797 = !DILocation(line: 72, column: 17, scope: !798)
!798 = distinct !DILexicalBlock(scope: !793, file: !664, line: 71, column: 48)
!799 = !DILocation(line: 72, column: 22, scope: !798)
!800 = !DILocation(line: 72, column: 33, scope: !798)
!801 = !DILocation(line: 73, column: 2, scope: !798)
!802 = !DILocation(line: 73, column: 32, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !664, discriminator: 1)
!804 = distinct !DILexicalBlock(scope: !793, file: !664, line: 73, column: 13)
!805 = !DILocation(line: 73, column: 13, scope: !803)
!806 = !DILocation(line: 73, column: 44, scope: !803)
!807 = !DILocation(line: 74, column: 3, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !664, line: 73, column: 50)
!809 = !DILocation(line: 74, column: 8, scope: !808)
!810 = !DILocation(line: 74, column: 19, scope: !808)
!811 = !DILocation(line: 75, column: 3, scope: !808)
!812 = !DILocation(line: 75, column: 8, scope: !808)
!813 = !DILocation(line: 75, column: 15, scope: !808)
!814 = !DILocation(line: 76, column: 2, scope: !808)
!815 = !DILocation(line: 76, column: 32, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !664, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !804, file: !664, line: 76, column: 13)
!818 = !DILocation(line: 76, column: 13, scope: !816)
!819 = !DILocation(line: 76, column: 45, scope: !816)
!820 = !DILocation(line: 77, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !664, line: 76, column: 51)
!822 = !DILocation(line: 77, column: 8, scope: !821)
!823 = !DILocation(line: 77, column: 19, scope: !821)
!824 = !DILocation(line: 78, column: 3, scope: !821)
!825 = !DILocation(line: 78, column: 8, scope: !821)
!826 = !DILocation(line: 78, column: 15, scope: !821)
!827 = !DILocation(line: 79, column: 2, scope: !821)
!828 = !DILocation(line: 79, column: 14, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !664, discriminator: 1)
!830 = distinct !DILexicalBlock(scope: !817, file: !664, line: 79, column: 13)
!831 = !DILocation(line: 79, column: 13, scope: !829)
!832 = !DILocation(line: 79, column: 19, scope: !829)
!833 = !DILocation(line: 80, column: 53, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !664, line: 79, column: 28)
!835 = !DILocation(line: 80, column: 3, scope: !834)
!836 = !DILocation(line: 82, column: 17, scope: !834)
!837 = !DILocation(line: 85, column: 39, scope: !783)
!838 = !DILocation(line: 85, column: 94, scope: !783)
!839 = !DILocation(line: 85, column: 99, scope: !783)
!840 = !DILocation(line: 85, column: 93, scope: !783)
!841 = !DILocation(line: 85, column: 93, scope: !842)
!842 = !DILexicalBlockFile(scope: !783, file: !664, discriminator: 1)
!843 = !DILocation(line: 85, column: 124, scope: !844)
!844 = !DILexicalBlockFile(scope: !783, file: !664, discriminator: 2)
!845 = !DILocation(line: 85, column: 129, scope: !844)
!846 = !DILocation(line: 85, column: 93, scope: !844)
!847 = !DILocation(line: 85, column: 93, scope: !848)
!848 = !DILexicalBlockFile(scope: !783, file: !664, discriminator: 3)
!849 = !DILocation(line: 85, column: 2, scope: !848)
!850 = !DILocation(line: 88, column: 29, scope: !783)
!851 = !DILocation(line: 88, column: 34, scope: !783)
!852 = !DILocation(line: 88, column: 40, scope: !783)
!853 = !DILocation(line: 88, column: 45, scope: !783)
!854 = !DILocation(line: 89, column: 8, scope: !783)
!855 = !DILocation(line: 89, column: 13, scope: !783)
!856 = !DILocation(line: 88, column: 40, scope: !842)
!857 = !DILocation(line: 89, column: 22, scope: !842)
!858 = !DILocation(line: 88, column: 40, scope: !844)
!859 = !DILocation(line: 88, column: 40, scope: !848)
!860 = !DILocation(line: 88, column: 2, scope: !848)
!861 = !DILocation(line: 90, column: 1, scope: !783)
!862 = !DILocation(line: 90, column: 1, scope: !842)
!863 = distinct !DISubprogram(name: "cmd_window_hidelevel", scope: !664, file: !664, line: 93, type: !682, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!864 = !DILocalVariable(name: "data", arg: 1, scope: !863, file: !664, line: 93, type: !131)
!865 = !DILocation(line: 93, column: 46, scope: !863)
!866 = !DILocalVariable(name: "gui", scope: !863, file: !664, line: 95, type: !133)
!867 = !DILocation(line: 95, column: 18, scope: !863)
!868 = !DILocalVariable(name: "level", scope: !863, file: !664, line: 96, type: !154)
!869 = !DILocation(line: 96, column: 8, scope: !863)
!870 = !DILocation(line: 98, column: 2, scope: !863)
!871 = distinct !{!871, !870}
!872 = !DILocation(line: 98, column: 10, scope: !873)
!873 = !DILexicalBlockFile(scope: !874, file: !664, discriminator: 1)
!874 = distinct !DILexicalBlock(scope: !875, file: !664, line: 98, column: 10)
!875 = distinct !DILexicalBlock(scope: !863, file: !664, line: 98, column: 4)
!876 = !DILocation(line: 98, column: 15, scope: !873)
!877 = !DILocation(line: 98, column: 5, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !664, discriminator: 2)
!879 = distinct !DILexicalBlock(scope: !874, file: !664, line: 98, column: 3)
!880 = !DILocation(line: 98, column: 14, scope: !881)
!881 = !DILexicalBlockFile(scope: !882, file: !664, discriminator: 3)
!882 = distinct !DILexicalBlock(scope: !874, file: !664, line: 98, column: 12)
!883 = !DILocation(line: 98, column: 99, scope: !881)
!884 = !DILocation(line: 98, column: 110, scope: !885)
!885 = !DILexicalBlockFile(scope: !875, file: !664, discriminator: 4)
!886 = !DILocation(line: 100, column: 30, scope: !863)
!887 = !DILocation(line: 100, column: 43, scope: !863)
!888 = !DILocation(line: 100, column: 9, scope: !863)
!889 = !DILocation(line: 100, column: 6, scope: !863)
!890 = !DILocation(line: 101, column: 35, scope: !863)
!891 = !DILocation(line: 101, column: 40, scope: !863)
!892 = !DILocation(line: 102, column: 21, scope: !863)
!893 = !DILocation(line: 102, column: 26, scope: !863)
!894 = !DILocation(line: 102, column: 32, scope: !863)
!895 = !DILocation(line: 102, column: 46, scope: !863)
!896 = !DILocation(line: 102, column: 7, scope: !863)
!897 = !DILocation(line: 101, column: 2, scope: !863)
!898 = !DILocation(line: 103, column: 25, scope: !863)
!899 = !DILocation(line: 103, column: 30, scope: !863)
!900 = !DILocation(line: 103, column: 2, scope: !863)
!901 = !DILocation(line: 104, column: 10, scope: !863)
!902 = !DILocation(line: 104, column: 15, scope: !863)
!903 = !DILocation(line: 104, column: 21, scope: !863)
!904 = !DILocation(line: 104, column: 34, scope: !863)
!905 = !DILocation(line: 104, column: 41, scope: !906)
!906 = !DILexicalBlockFile(scope: !863, file: !664, discriminator: 1)
!907 = !DILocation(line: 104, column: 10, scope: !906)
!908 = !DILocation(line: 105, column: 14, scope: !863)
!909 = !DILocation(line: 105, column: 19, scope: !863)
!910 = !DILocation(line: 105, column: 25, scope: !863)
!911 = !DILocation(line: 105, column: 3, scope: !863)
!912 = !DILocation(line: 104, column: 10, scope: !913)
!913 = !DILexicalBlockFile(scope: !863, file: !664, discriminator: 2)
!914 = !DILocation(line: 104, column: 10, scope: !915)
!915 = !DILexicalBlockFile(scope: !863, file: !664, discriminator: 3)
!916 = !DILocation(line: 104, column: 8, scope: !915)
!917 = !DILocation(line: 106, column: 39, scope: !863)
!918 = !DILocation(line: 106, column: 96, scope: !863)
!919 = !DILocation(line: 106, column: 2, scope: !863)
!920 = !DILocation(line: 108, column: 9, scope: !863)
!921 = !DILocation(line: 108, column: 2, scope: !863)
!922 = !DILocation(line: 109, column: 1, scope: !863)
!923 = !DILocation(line: 109, column: 1, scope: !906)
!924 = distinct !DISubprogram(name: "cmd_scrollback", scope: !664, file: !664, line: 111, type: !925, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !131, !182, !167}
!927 = !DILocalVariable(name: "data", arg: 1, scope: !924, file: !664, line: 111, type: !131)
!928 = !DILocation(line: 111, column: 40, scope: !924)
!929 = !DILocalVariable(name: "server", arg: 2, scope: !924, file: !664, line: 111, type: !182)
!930 = !DILocation(line: 111, column: 58, scope: !924)
!931 = !DILocalVariable(name: "item", arg: 3, scope: !924, file: !664, line: 112, type: !167)
!932 = !DILocation(line: 112, column: 20, scope: !924)
!933 = !DILocation(line: 114, column: 31, scope: !924)
!934 = !DILocation(line: 114, column: 37, scope: !924)
!935 = !DILocation(line: 114, column: 45, scope: !924)
!936 = !DILocation(line: 114, column: 2, scope: !924)
!937 = !DILocation(line: 115, column: 1, scope: !924)
!938 = distinct !DISubprogram(name: "cmd_scrollback_clear", scope: !664, file: !664, line: 118, type: !682, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!939 = !DILocalVariable(name: "data", arg: 1, scope: !938, file: !664, line: 118, type: !131)
!940 = !DILocation(line: 118, column: 46, scope: !938)
!941 = !DILocalVariable(name: "window", scope: !938, file: !664, line: 120, type: !145)
!942 = !DILocation(line: 120, column: 14, scope: !938)
!943 = !DILocalVariable(name: "optlist", scope: !938, file: !664, line: 121, type: !176)
!944 = !DILocation(line: 121, column: 14, scope: !938)
!945 = !DILocalVariable(name: "refnum", scope: !938, file: !664, line: 122, type: !154)
!946 = !DILocation(line: 122, column: 8, scope: !938)
!947 = !DILocalVariable(name: "free_arg", scope: !938, file: !664, line: 123, type: !126)
!948 = !DILocation(line: 123, column: 8, scope: !938)
!949 = !DILocalVariable(name: "tmp", scope: !938, file: !664, line: 124, type: !158)
!950 = !DILocation(line: 124, column: 10, scope: !938)
!951 = !DILocation(line: 126, column: 2, scope: !938)
!952 = distinct !{!952, !951}
!953 = !DILocation(line: 126, column: 10, scope: !954)
!954 = !DILexicalBlockFile(scope: !955, file: !664, discriminator: 1)
!955 = distinct !DILexicalBlock(scope: !956, file: !664, line: 126, column: 10)
!956 = distinct !DILexicalBlock(scope: !938, file: !664, line: 126, column: 4)
!957 = !DILocation(line: 126, column: 15, scope: !954)
!958 = !DILocation(line: 126, column: 5, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !664, discriminator: 2)
!960 = distinct !DILexicalBlock(scope: !955, file: !664, line: 126, column: 3)
!961 = !DILocation(line: 126, column: 14, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !664, discriminator: 3)
!963 = distinct !DILexicalBlock(scope: !955, file: !664, line: 126, column: 12)
!964 = !DILocation(line: 126, column: 99, scope: !962)
!965 = !DILocation(line: 126, column: 110, scope: !966)
!966 = !DILexicalBlockFile(scope: !956, file: !664, discriminator: 4)
!967 = !DILocation(line: 128, column: 22, scope: !968)
!968 = distinct !DILexicalBlock(scope: !938, file: !664, line: 128, column: 6)
!969 = !DILocation(line: 128, column: 7, scope: !968)
!970 = !DILocation(line: 128, column: 6, scope: !938)
!971 = !DILocation(line: 129, column: 48, scope: !968)
!972 = !DILocation(line: 131, column: 26, scope: !973)
!973 = distinct !DILexicalBlock(scope: !938, file: !664, line: 131, column: 6)
!974 = !DILocation(line: 131, column: 6, scope: !973)
!975 = !DILocation(line: 131, column: 42, scope: !973)
!976 = !DILocation(line: 131, column: 6, scope: !938)
!977 = !DILocation(line: 133, column: 14, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !664, line: 133, column: 3)
!979 = distinct !DILexicalBlock(scope: !973, file: !664, line: 131, column: 50)
!980 = !DILocation(line: 133, column: 12, scope: !978)
!981 = !DILocation(line: 133, column: 8, scope: !978)
!982 = !DILocation(line: 133, column: 23, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !664, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !978, file: !664, line: 133, column: 3)
!985 = !DILocation(line: 133, column: 27, scope: !983)
!986 = !DILocation(line: 133, column: 3, scope: !983)
!987 = !DILocation(line: 134, column: 13, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !664, line: 133, column: 52)
!989 = !DILocation(line: 134, column: 18, scope: !988)
!990 = !DILocation(line: 134, column: 11, scope: !988)
!991 = !DILocation(line: 135, column: 59, scope: !988)
!992 = !DILocation(line: 135, column: 68, scope: !988)
!993 = !DILocation(line: 135, column: 38, scope: !988)
!994 = !DILocation(line: 135, column: 80, scope: !988)
!995 = !DILocation(line: 135, column: 4, scope: !988)
!996 = !DILocation(line: 136, column: 3, scope: !988)
!997 = !DILocation(line: 133, column: 41, scope: !998)
!998 = !DILexicalBlockFile(scope: !984, file: !664, discriminator: 2)
!999 = !DILocation(line: 133, column: 46, scope: !998)
!1000 = !DILocation(line: 133, column: 39, scope: !998)
!1001 = !DILocation(line: 133, column: 3, scope: !998)
!1002 = distinct !{!1002, !1003}
!1003 = !DILocation(line: 133, column: 3, scope: !979)
!1004 = !DILocation(line: 137, column: 2, scope: !979)
!1005 = !DILocation(line: 137, column: 14, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !664, discriminator: 1)
!1007 = distinct !DILexicalBlock(scope: !973, file: !664, line: 137, column: 13)
!1008 = !DILocation(line: 137, column: 13, scope: !1006)
!1009 = !DILocation(line: 137, column: 21, scope: !1006)
!1010 = !DILocation(line: 139, column: 36, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !664, line: 137, column: 30)
!1012 = !DILocation(line: 139, column: 31, scope: !1011)
!1013 = !DILocation(line: 139, column: 12, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1011, file: !664, discriminator: 1)
!1015 = !DILocation(line: 139, column: 10, scope: !1011)
!1016 = !DILocation(line: 140, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !664, line: 140, column: 7)
!1018 = !DILocation(line: 140, column: 14, scope: !1017)
!1019 = !DILocation(line: 140, column: 7, scope: !1011)
!1020 = !DILocation(line: 141, column: 59, scope: !1017)
!1021 = !DILocation(line: 141, column: 68, scope: !1017)
!1022 = !DILocation(line: 141, column: 38, scope: !1017)
!1023 = !DILocation(line: 141, column: 80, scope: !1017)
!1024 = !DILocation(line: 141, column: 4, scope: !1017)
!1025 = !DILocation(line: 142, column: 2, scope: !1011)
!1026 = !DILocation(line: 144, column: 58, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1007, file: !664, line: 142, column: 9)
!1028 = !DILocation(line: 144, column: 71, scope: !1027)
!1029 = !DILocation(line: 144, column: 37, scope: !1027)
!1030 = !DILocation(line: 144, column: 83, scope: !1027)
!1031 = !DILocation(line: 144, column: 3, scope: !1027)
!1032 = !DILocation(line: 147, column: 18, scope: !938)
!1033 = !DILocation(line: 147, column: 2, scope: !938)
!1034 = !DILocation(line: 148, column: 1, scope: !938)
!1035 = !DILocation(line: 148, column: 1, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !938, file: !664, discriminator: 1)
!1037 = distinct !DISubprogram(name: "cmd_scrollback_levelclear", scope: !664, file: !664, line: 151, type: !682, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1038 = !DILocalVariable(name: "data", arg: 1, scope: !1037, file: !664, line: 151, type: !131)
!1039 = !DILocation(line: 151, column: 51, scope: !1037)
!1040 = !DILocalVariable(name: "window", scope: !1037, file: !664, line: 153, type: !145)
!1041 = !DILocation(line: 153, column: 14, scope: !1037)
!1042 = !DILocalVariable(name: "optlist", scope: !1037, file: !664, line: 154, type: !176)
!1043 = !DILocation(line: 154, column: 14, scope: !1037)
!1044 = !DILocalVariable(name: "refnum", scope: !1037, file: !664, line: 155, type: !154)
!1045 = !DILocation(line: 155, column: 8, scope: !1037)
!1046 = !DILocalVariable(name: "free_arg", scope: !1037, file: !664, line: 156, type: !126)
!1047 = !DILocation(line: 156, column: 8, scope: !1037)
!1048 = !DILocalVariable(name: "tmp", scope: !1037, file: !664, line: 157, type: !158)
!1049 = !DILocation(line: 157, column: 10, scope: !1037)
!1050 = !DILocalVariable(name: "level", scope: !1037, file: !664, line: 158, type: !152)
!1051 = !DILocation(line: 158, column: 6, scope: !1037)
!1052 = !DILocalVariable(name: "levelarg", scope: !1037, file: !664, line: 159, type: !154)
!1053 = !DILocation(line: 159, column: 8, scope: !1037)
!1054 = !DILocation(line: 161, column: 2, scope: !1037)
!1055 = distinct !{!1055, !1054}
!1056 = !DILocation(line: 161, column: 10, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !664, discriminator: 1)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !664, line: 161, column: 10)
!1059 = distinct !DILexicalBlock(scope: !1037, file: !664, line: 161, column: 4)
!1060 = !DILocation(line: 161, column: 15, scope: !1057)
!1061 = !DILocation(line: 161, column: 5, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !664, discriminator: 2)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !664, line: 161, column: 3)
!1064 = !DILocation(line: 161, column: 14, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !664, discriminator: 3)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !664, line: 161, column: 12)
!1067 = !DILocation(line: 161, column: 99, scope: !1065)
!1068 = !DILocation(line: 161, column: 110, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1059, file: !664, discriminator: 4)
!1070 = !DILocation(line: 163, column: 22, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1037, file: !664, line: 163, column: 6)
!1072 = !DILocation(line: 163, column: 7, scope: !1071)
!1073 = !DILocation(line: 163, column: 6, scope: !1037)
!1074 = !DILocation(line: 164, column: 53, scope: !1071)
!1075 = !DILocation(line: 166, column: 33, scope: !1037)
!1076 = !DILocation(line: 166, column: 13, scope: !1037)
!1077 = !DILocation(line: 166, column: 11, scope: !1037)
!1078 = !DILocation(line: 167, column: 11, scope: !1037)
!1079 = !DILocation(line: 167, column: 20, scope: !1037)
!1080 = !DILocation(line: 167, column: 27, scope: !1037)
!1081 = !DILocation(line: 167, column: 31, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1037, file: !664, discriminator: 1)
!1083 = !DILocation(line: 167, column: 30, scope: !1082)
!1084 = !DILocation(line: 167, column: 40, scope: !1082)
!1085 = !DILocation(line: 167, column: 10, scope: !1082)
!1086 = !DILocation(line: 167, column: 10, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1037, file: !664, discriminator: 2)
!1088 = !DILocation(line: 168, column: 28, scope: !1037)
!1089 = !DILocation(line: 168, column: 14, scope: !1037)
!1090 = !DILocation(line: 168, column: 3, scope: !1082)
!1091 = !DILocation(line: 167, column: 10, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1037, file: !664, discriminator: 3)
!1093 = !DILocation(line: 167, column: 10, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1037, file: !664, discriminator: 4)
!1095 = !DILocation(line: 167, column: 8, scope: !1094)
!1096 = !DILocation(line: 169, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1037, file: !664, line: 169, column: 6)
!1098 = !DILocation(line: 169, column: 12, scope: !1097)
!1099 = !DILocation(line: 169, column: 6, scope: !1037)
!1100 = !DILocation(line: 170, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !664, line: 169, column: 18)
!1102 = !DILocation(line: 170, column: 3, scope: !1101)
!1103 = !DILocation(line: 171, column: 3, scope: !1101)
!1104 = !DILocation(line: 174, column: 26, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1037, file: !664, line: 174, column: 6)
!1106 = !DILocation(line: 174, column: 6, scope: !1105)
!1107 = !DILocation(line: 174, column: 42, scope: !1105)
!1108 = !DILocation(line: 174, column: 6, scope: !1037)
!1109 = !DILocation(line: 176, column: 14, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !664, line: 176, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !664, line: 174, column: 50)
!1112 = !DILocation(line: 176, column: 12, scope: !1110)
!1113 = !DILocation(line: 176, column: 8, scope: !1110)
!1114 = !DILocation(line: 176, column: 23, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !664, discriminator: 1)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !664, line: 176, column: 3)
!1117 = !DILocation(line: 176, column: 27, scope: !1115)
!1118 = !DILocation(line: 176, column: 3, scope: !1115)
!1119 = !DILocation(line: 177, column: 13, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !664, line: 176, column: 52)
!1121 = !DILocation(line: 177, column: 18, scope: !1120)
!1122 = !DILocation(line: 177, column: 11, scope: !1120)
!1123 = !DILocation(line: 178, column: 64, scope: !1120)
!1124 = !DILocation(line: 178, column: 73, scope: !1120)
!1125 = !DILocation(line: 178, column: 43, scope: !1120)
!1126 = !DILocation(line: 178, column: 85, scope: !1120)
!1127 = !DILocation(line: 178, column: 91, scope: !1120)
!1128 = !DILocation(line: 178, column: 4, scope: !1120)
!1129 = !DILocation(line: 179, column: 3, scope: !1120)
!1130 = !DILocation(line: 176, column: 41, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1116, file: !664, discriminator: 2)
!1132 = !DILocation(line: 176, column: 46, scope: !1131)
!1133 = !DILocation(line: 176, column: 39, scope: !1131)
!1134 = !DILocation(line: 176, column: 3, scope: !1131)
!1135 = distinct !{!1135, !1136}
!1136 = !DILocation(line: 176, column: 3, scope: !1111)
!1137 = !DILocation(line: 180, column: 2, scope: !1111)
!1138 = !DILocation(line: 180, column: 14, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1140, file: !664, discriminator: 1)
!1140 = distinct !DILexicalBlock(scope: !1105, file: !664, line: 180, column: 13)
!1141 = !DILocation(line: 180, column: 13, scope: !1139)
!1142 = !DILocation(line: 180, column: 21, scope: !1139)
!1143 = !DILocation(line: 182, column: 36, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !664, line: 180, column: 30)
!1145 = !DILocation(line: 182, column: 31, scope: !1144)
!1146 = !DILocation(line: 182, column: 12, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1144, file: !664, discriminator: 1)
!1148 = !DILocation(line: 182, column: 10, scope: !1144)
!1149 = !DILocation(line: 183, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !664, line: 183, column: 7)
!1151 = !DILocation(line: 183, column: 14, scope: !1150)
!1152 = !DILocation(line: 183, column: 7, scope: !1144)
!1153 = !DILocation(line: 184, column: 64, scope: !1150)
!1154 = !DILocation(line: 184, column: 73, scope: !1150)
!1155 = !DILocation(line: 184, column: 43, scope: !1150)
!1156 = !DILocation(line: 184, column: 85, scope: !1150)
!1157 = !DILocation(line: 184, column: 91, scope: !1150)
!1158 = !DILocation(line: 184, column: 4, scope: !1150)
!1159 = !DILocation(line: 185, column: 2, scope: !1144)
!1160 = !DILocation(line: 187, column: 63, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1140, file: !664, line: 185, column: 9)
!1162 = !DILocation(line: 187, column: 76, scope: !1161)
!1163 = !DILocation(line: 187, column: 42, scope: !1161)
!1164 = !DILocation(line: 187, column: 88, scope: !1161)
!1165 = !DILocation(line: 187, column: 94, scope: !1161)
!1166 = !DILocation(line: 187, column: 3, scope: !1161)
!1167 = !DILocation(line: 190, column: 18, scope: !1037)
!1168 = !DILocation(line: 190, column: 2, scope: !1037)
!1169 = !DILocation(line: 191, column: 1, scope: !1037)
!1170 = !DILocation(line: 191, column: 1, scope: !1082)
!1171 = distinct !DISubprogram(name: "cmd_scrollback_goto", scope: !664, file: !664, line: 282, type: !682, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1172 = !DILocalVariable(name: "data", arg: 1, scope: !1171, file: !664, line: 282, type: !131)
!1173 = !DILocation(line: 282, column: 45, scope: !1171)
!1174 = !DILocalVariable(name: "datearg", scope: !1171, file: !664, line: 284, type: !154)
!1175 = !DILocation(line: 284, column: 8, scope: !1171)
!1176 = !DILocalVariable(name: "timearg", scope: !1171, file: !664, line: 284, type: !154)
!1177 = !DILocation(line: 284, column: 18, scope: !1171)
!1178 = !DILocalVariable(name: "free_arg", scope: !1171, file: !664, line: 285, type: !126)
!1179 = !DILocation(line: 285, column: 8, scope: !1171)
!1180 = !DILocalVariable(name: "lines", scope: !1171, file: !664, line: 286, type: !152)
!1181 = !DILocation(line: 286, column: 6, scope: !1171)
!1182 = !DILocation(line: 288, column: 22, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1171, file: !664, line: 288, column: 6)
!1184 = !DILocation(line: 288, column: 7, scope: !1183)
!1185 = !DILocation(line: 288, column: 6, scope: !1171)
!1186 = !DILocation(line: 289, column: 3, scope: !1183)
!1187 = !DILocation(line: 291, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1171, file: !664, line: 291, column: 6)
!1189 = !DILocation(line: 291, column: 6, scope: !1188)
!1190 = !DILocation(line: 291, column: 15, scope: !1188)
!1191 = !DILocation(line: 291, column: 23, scope: !1188)
!1192 = !DILocation(line: 291, column: 28, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1188, file: !664, discriminator: 1)
!1194 = !DILocation(line: 291, column: 27, scope: !1193)
!1195 = !DILocation(line: 291, column: 36, scope: !1193)
!1196 = !DILocation(line: 291, column: 43, scope: !1193)
!1197 = !DILocation(line: 291, column: 47, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1188, file: !664, discriminator: 2)
!1199 = !DILocation(line: 291, column: 46, scope: !1198)
!1200 = !DILocation(line: 291, column: 55, scope: !1198)
!1201 = !DILocation(line: 291, column: 6, scope: !1198)
!1202 = !DILocation(line: 293, column: 30, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1188, file: !664, line: 291, column: 64)
!1204 = !DILocation(line: 293, column: 42, scope: !1203)
!1205 = !DILocation(line: 293, column: 41, scope: !1203)
!1206 = !DILocation(line: 293, column: 50, scope: !1203)
!1207 = !DILocation(line: 293, column: 38, scope: !1203)
!1208 = !DILocation(line: 293, column: 25, scope: !1203)
!1209 = !DILocation(line: 293, column: 23, scope: !1203)
!1210 = !DILocation(line: 294, column: 21, scope: !1203)
!1211 = !DILocation(line: 294, column: 33, scope: !1203)
!1212 = !DILocation(line: 294, column: 3, scope: !1203)
!1213 = !DILocation(line: 295, column: 2, scope: !1203)
!1214 = !DILocation(line: 295, column: 14, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !664, discriminator: 1)
!1216 = distinct !DILexicalBlock(scope: !1188, file: !664, line: 295, column: 13)
!1217 = !DILocation(line: 295, column: 13, scope: !1215)
!1218 = !DILocation(line: 295, column: 22, scope: !1215)
!1219 = !DILocation(line: 295, column: 30, scope: !1215)
!1220 = !DILocation(line: 295, column: 44, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1216, file: !664, discriminator: 2)
!1222 = !DILocation(line: 295, column: 33, scope: !1221)
!1223 = !DILocation(line: 295, column: 13, scope: !1221)
!1224 = !DILocation(line: 297, column: 29, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !664, line: 295, column: 60)
!1226 = !DILocation(line: 297, column: 24, scope: !1225)
!1227 = !DILocation(line: 297, column: 3, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1225, file: !664, discriminator: 1)
!1229 = !DILocation(line: 298, column: 2, scope: !1225)
!1230 = !DILocation(line: 300, column: 24, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1216, file: !664, line: 298, column: 9)
!1232 = !DILocation(line: 300, column: 33, scope: !1231)
!1233 = !DILocation(line: 300, column: 3, scope: !1231)
!1234 = !DILocation(line: 303, column: 18, scope: !1171)
!1235 = !DILocation(line: 303, column: 2, scope: !1171)
!1236 = !DILocation(line: 304, column: 1, scope: !1171)
!1237 = !DILocation(line: 304, column: 1, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1171, file: !664, discriminator: 1)
!1239 = distinct !DISubprogram(name: "cmd_scrollback_home", scope: !664, file: !664, line: 307, type: !682, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1240 = !DILocalVariable(name: "data", arg: 1, scope: !1239, file: !664, line: 307, type: !131)
!1241 = !DILocation(line: 307, column: 45, scope: !1239)
!1242 = !DILocalVariable(name: "buffer", scope: !1239, file: !664, line: 309, type: !579)
!1243 = !DILocation(line: 309, column: 26, scope: !1239)
!1244 = !DILocation(line: 311, column: 33, scope: !1239)
!1245 = !DILocation(line: 311, column: 46, scope: !1239)
!1246 = !DILocation(line: 311, column: 12, scope: !1239)
!1247 = !DILocation(line: 311, column: 58, scope: !1239)
!1248 = !DILocation(line: 311, column: 64, scope: !1239)
!1249 = !DILocation(line: 311, column: 9, scope: !1239)
!1250 = !DILocation(line: 312, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1239, file: !664, line: 312, column: 6)
!1252 = !DILocation(line: 312, column: 14, scope: !1251)
!1253 = !DILocation(line: 312, column: 26, scope: !1251)
!1254 = !DILocation(line: 312, column: 6, scope: !1239)
!1255 = !DILocation(line: 313, column: 26, scope: !1251)
!1256 = !DILocation(line: 313, column: 38, scope: !1251)
!1257 = !DILocation(line: 313, column: 46, scope: !1251)
!1258 = !DILocation(line: 313, column: 3, scope: !1251)
!1259 = !DILocation(line: 314, column: 1, scope: !1239)
!1260 = distinct !DISubprogram(name: "cmd_scrollback_end", scope: !664, file: !664, line: 317, type: !682, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1261 = !DILocalVariable(name: "data", arg: 1, scope: !1260, file: !664, line: 317, type: !131)
!1262 = !DILocation(line: 317, column: 44, scope: !1260)
!1263 = !DILocalVariable(name: "view", scope: !1260, file: !664, line: 319, type: !573)
!1264 = !DILocation(line: 319, column: 31, scope: !1260)
!1265 = !DILocation(line: 321, column: 31, scope: !1260)
!1266 = !DILocation(line: 321, column: 44, scope: !1260)
!1267 = !DILocation(line: 321, column: 10, scope: !1260)
!1268 = !DILocation(line: 321, column: 56, scope: !1260)
!1269 = !DILocation(line: 321, column: 7, scope: !1260)
!1270 = !DILocation(line: 322, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1260, file: !664, line: 322, column: 6)
!1272 = !DILocation(line: 322, column: 12, scope: !1271)
!1273 = !DILocation(line: 322, column: 29, scope: !1271)
!1274 = !DILocation(line: 322, column: 36, scope: !1271)
!1275 = !DILocation(line: 323, column: 7, scope: !1271)
!1276 = !DILocation(line: 323, column: 13, scope: !1271)
!1277 = !DILocation(line: 323, column: 33, scope: !1271)
!1278 = !DILocation(line: 323, column: 39, scope: !1271)
!1279 = !DILocation(line: 323, column: 30, scope: !1271)
!1280 = !DILocation(line: 323, column: 49, scope: !1271)
!1281 = !DILocation(line: 324, column: 7, scope: !1271)
!1282 = !DILocation(line: 324, column: 13, scope: !1271)
!1283 = !DILocation(line: 324, column: 31, scope: !1271)
!1284 = !DILocation(line: 324, column: 37, scope: !1271)
!1285 = !DILocation(line: 324, column: 28, scope: !1271)
!1286 = !DILocation(line: 322, column: 6, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1260, file: !664, discriminator: 1)
!1288 = !DILocation(line: 325, column: 3, scope: !1271)
!1289 = !DILocation(line: 327, column: 30, scope: !1260)
!1290 = !DILocation(line: 327, column: 36, scope: !1260)
!1291 = !DILocation(line: 327, column: 42, scope: !1260)
!1292 = !DILocation(line: 327, column: 2, scope: !1260)
!1293 = !DILocation(line: 328, column: 20, scope: !1260)
!1294 = !DILocation(line: 328, column: 32, scope: !1260)
!1295 = !DILocation(line: 328, column: 38, scope: !1260)
!1296 = !DILocation(line: 328, column: 2, scope: !1260)
!1297 = !DILocation(line: 329, column: 1, scope: !1260)
!1298 = !DILocation(line: 329, column: 1, scope: !1287)
!1299 = distinct !DISubprogram(name: "cmd_scrollback_status", scope: !664, file: !664, line: 331, type: !336, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1300 = !DILocalVariable(name: "tmp", scope: !1299, file: !664, line: 333, type: !158)
!1301 = !DILocation(line: 333, column: 10, scope: !1299)
!1302 = !DILocalVariable(name: "total_lines", scope: !1299, file: !664, line: 334, type: !152)
!1303 = !DILocation(line: 334, column: 13, scope: !1299)
!1304 = !DILocalVariable(name: "window_mem", scope: !1299, file: !664, line: 335, type: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1306, line: 216, baseType: !247)
!1306 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!1307 = !DILocation(line: 335, column: 9, scope: !1299)
!1308 = !DILocalVariable(name: "total_mem", scope: !1299, file: !664, line: 335, type: !1305)
!1309 = !DILocation(line: 335, column: 21, scope: !1299)
!1310 = !DILocation(line: 337, column: 21, scope: !1299)
!1311 = !DILocation(line: 337, column: 36, scope: !1299)
!1312 = !DILocation(line: 338, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !664, line: 338, column: 2)
!1314 = !DILocation(line: 338, column: 11, scope: !1313)
!1315 = !DILocation(line: 338, column: 7, scope: !1313)
!1316 = !DILocation(line: 338, column: 22, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !664, discriminator: 1)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !664, line: 338, column: 2)
!1319 = !DILocation(line: 338, column: 26, scope: !1317)
!1320 = !DILocation(line: 338, column: 2, scope: !1317)
!1321 = !DILocalVariable(name: "window", scope: !1322, file: !664, line: 339, type: !145)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !664, line: 338, column: 51)
!1323 = !DILocation(line: 339, column: 15, scope: !1322)
!1324 = !DILocation(line: 339, column: 24, scope: !1322)
!1325 = !DILocation(line: 339, column: 29, scope: !1322)
!1326 = !DILocalVariable(name: "view", scope: !1322, file: !664, line: 340, type: !573)
!1327 = !DILocation(line: 340, column: 25, scope: !1322)
!1328 = !DILocation(line: 342, column: 32, scope: !1322)
!1329 = !DILocation(line: 342, column: 41, scope: !1322)
!1330 = !DILocation(line: 342, column: 11, scope: !1322)
!1331 = !DILocation(line: 342, column: 53, scope: !1322)
!1332 = !DILocation(line: 342, column: 8, scope: !1322)
!1333 = !DILocation(line: 344, column: 14, scope: !1322)
!1334 = !DILocation(line: 345, column: 32, scope: !1322)
!1335 = !DILocation(line: 345, column: 38, scope: !1322)
!1336 = !DILocation(line: 345, column: 46, scope: !1322)
!1337 = !DILocation(line: 345, column: 17, scope: !1322)
!1338 = !DILocation(line: 345, column: 59, scope: !1322)
!1339 = !DILocation(line: 345, column: 14, scope: !1322)
!1340 = !DILocation(line: 347, column: 17, scope: !1322)
!1341 = !DILocation(line: 347, column: 23, scope: !1322)
!1342 = !DILocation(line: 347, column: 31, scope: !1322)
!1343 = !DILocation(line: 347, column: 43, scope: !1322)
!1344 = !DILocation(line: 347, column: 14, scope: !1322)
!1345 = !DILocation(line: 348, column: 18, scope: !1322)
!1346 = !DILocation(line: 348, column: 24, scope: !1322)
!1347 = !DILocation(line: 348, column: 32, scope: !1322)
!1348 = !DILocation(line: 348, column: 15, scope: !1322)
!1349 = !DILocation(line: 349, column: 30, scope: !1322)
!1350 = !DILocation(line: 349, column: 27, scope: !1322)
!1351 = !DILocation(line: 352, column: 6, scope: !1322)
!1352 = !DILocation(line: 352, column: 14, scope: !1322)
!1353 = !DILocation(line: 352, column: 22, scope: !1322)
!1354 = !DILocation(line: 352, column: 28, scope: !1322)
!1355 = !DILocation(line: 352, column: 36, scope: !1322)
!1356 = !DILocation(line: 353, column: 12, scope: !1322)
!1357 = !DILocation(line: 353, column: 23, scope: !1322)
!1358 = !DILocation(line: 353, column: 6, scope: !1322)
!1359 = !DILocation(line: 350, column: 3, scope: !1322)
!1360 = !DILocation(line: 354, column: 2, scope: !1322)
!1361 = !DILocation(line: 338, column: 40, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1318, file: !664, discriminator: 2)
!1363 = !DILocation(line: 338, column: 45, scope: !1362)
!1364 = !DILocation(line: 338, column: 38, scope: !1362)
!1365 = !DILocation(line: 338, column: 2, scope: !1362)
!1366 = distinct !{!1366, !1367}
!1367 = !DILocation(line: 338, column: 2, scope: !1299)
!1368 = !DILocation(line: 358, column: 5, scope: !1299)
!1369 = !DILocation(line: 358, column: 24, scope: !1299)
!1370 = !DILocation(line: 358, column: 34, scope: !1299)
!1371 = !DILocation(line: 358, column: 18, scope: !1299)
!1372 = !DILocation(line: 356, column: 2, scope: !1299)
!1373 = !DILocation(line: 359, column: 1, scope: !1299)
!1374 = distinct !DISubprogram(name: "sig_away_changed", scope: !664, file: !664, line: 361, type: !1375, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !182}
!1377 = !DILocalVariable(name: "server", arg: 1, scope: !1374, file: !664, line: 361, type: !182)
!1378 = !DILocation(line: 361, column: 42, scope: !1374)
!1379 = !DILocalVariable(name: "tmp", scope: !1374, file: !664, line: 363, type: !158)
!1380 = !DILocation(line: 363, column: 10, scope: !1374)
!1381 = !DILocation(line: 365, column: 7, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1374, file: !664, line: 365, column: 6)
!1383 = !DILocation(line: 365, column: 15, scope: !1382)
!1384 = !DILocation(line: 365, column: 6, scope: !1374)
!1385 = !DILocation(line: 366, column: 3, scope: !1382)
!1386 = !DILocation(line: 368, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1374, file: !664, line: 368, column: 2)
!1388 = !DILocation(line: 368, column: 11, scope: !1387)
!1389 = !DILocation(line: 368, column: 7, scope: !1387)
!1390 = !DILocation(line: 368, column: 22, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !664, discriminator: 1)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !664, line: 368, column: 2)
!1393 = !DILocation(line: 368, column: 26, scope: !1391)
!1394 = !DILocation(line: 368, column: 2, scope: !1391)
!1395 = !DILocalVariable(name: "rec", scope: !1396, file: !664, line: 369, type: !145)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !664, line: 368, column: 51)
!1397 = !DILocation(line: 369, column: 15, scope: !1396)
!1398 = !DILocation(line: 369, column: 21, scope: !1396)
!1399 = !DILocation(line: 369, column: 26, scope: !1396)
!1400 = !DILocation(line: 371, column: 75, scope: !1396)
!1401 = !DILocation(line: 371, column: 81, scope: !1396)
!1402 = !DILocation(line: 371, column: 54, scope: !1396)
!1403 = !DILocation(line: 371, column: 93, scope: !1396)
!1404 = !DILocation(line: 371, column: 17, scope: !1396)
!1405 = !DILocation(line: 373, column: 2, scope: !1396)
!1406 = !DILocation(line: 368, column: 40, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1392, file: !664, discriminator: 2)
!1408 = !DILocation(line: 368, column: 45, scope: !1407)
!1409 = !DILocation(line: 368, column: 38, scope: !1407)
!1410 = !DILocation(line: 368, column: 2, scope: !1407)
!1411 = distinct !{!1411, !1412}
!1412 = !DILocation(line: 368, column: 2, scope: !1374)
!1413 = !DILocation(line: 374, column: 1, scope: !1374)
!1414 = distinct !DISubprogram(name: "textbuffer_commands_deinit", scope: !664, file: !664, line: 396, type: !336, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1415 = !DILocation(line: 398, column: 2, scope: !1414)
!1416 = !DILocation(line: 399, column: 2, scope: !1414)
!1417 = !DILocation(line: 400, column: 2, scope: !1414)
!1418 = !DILocation(line: 401, column: 2, scope: !1414)
!1419 = !DILocation(line: 402, column: 2, scope: !1414)
!1420 = !DILocation(line: 403, column: 2, scope: !1414)
!1421 = !DILocation(line: 404, column: 2, scope: !1414)
!1422 = !DILocation(line: 405, column: 2, scope: !1414)
!1423 = !DILocation(line: 406, column: 2, scope: !1414)
!1424 = !DILocation(line: 407, column: 2, scope: !1414)
!1425 = !DILocation(line: 409, column: 2, scope: !1414)
!1426 = !DILocation(line: 410, column: 1, scope: !1414)
!1427 = distinct !DISubprogram(name: "scrollback_goto_line", scope: !664, file: !664, line: 193, type: !1428, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !152}
!1430 = !DILocalVariable(name: "linenum", arg: 1, scope: !1427, file: !664, line: 193, type: !152)
!1431 = !DILocation(line: 193, column: 38, scope: !1427)
!1432 = !DILocalVariable(name: "view", scope: !1427, file: !664, line: 195, type: !573)
!1433 = !DILocation(line: 195, column: 31, scope: !1427)
!1434 = !DILocation(line: 197, column: 31, scope: !1427)
!1435 = !DILocation(line: 197, column: 44, scope: !1427)
!1436 = !DILocation(line: 197, column: 10, scope: !1427)
!1437 = !DILocation(line: 197, column: 56, scope: !1427)
!1438 = !DILocation(line: 197, column: 7, scope: !1427)
!1439 = !DILocation(line: 198, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1427, file: !664, line: 198, column: 6)
!1441 = !DILocation(line: 198, column: 12, scope: !1440)
!1442 = !DILocation(line: 198, column: 20, scope: !1440)
!1443 = !DILocation(line: 198, column: 32, scope: !1440)
!1444 = !DILocation(line: 198, column: 6, scope: !1427)
!1445 = !DILocation(line: 199, column: 3, scope: !1440)
!1446 = !DILocation(line: 201, column: 30, scope: !1427)
!1447 = !DILocation(line: 201, column: 36, scope: !1427)
!1448 = !DILocation(line: 201, column: 42, scope: !1427)
!1449 = !DILocation(line: 201, column: 50, scope: !1427)
!1450 = !DILocation(line: 201, column: 2, scope: !1427)
!1451 = !DILocation(line: 202, column: 20, scope: !1427)
!1452 = !DILocation(line: 202, column: 32, scope: !1427)
!1453 = !DILocation(line: 202, column: 2, scope: !1427)
!1454 = !DILocation(line: 203, column: 1, scope: !1427)
!1455 = !DILocation(line: 203, column: 1, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1427, file: !664, discriminator: 1)
!1457 = distinct !DISubprogram(name: "scrollback_goto_time", scope: !664, file: !664, line: 205, type: !1458, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !665)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !131, !131}
!1460 = !DILocalVariable(name: "datearg", arg: 1, scope: !1457, file: !664, line: 205, type: !131)
!1461 = !DILocation(line: 205, column: 46, scope: !1457)
!1462 = !DILocalVariable(name: "timearg", arg: 2, scope: !1457, file: !664, line: 205, type: !131)
!1463 = !DILocation(line: 205, column: 67, scope: !1457)
!1464 = !DILocalVariable(name: "line", scope: !1457, file: !664, line: 207, type: !586)
!1465 = !DILocation(line: 207, column: 19, scope: !1457)
!1466 = !DILocalVariable(name: "tm", scope: !1457, file: !664, line: 208, type: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !414, line: 133, size: 448, align: 64, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1467, file: !414, line: 135, baseType: !152, size: 32, align: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1467, file: !414, line: 136, baseType: !152, size: 32, align: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1467, file: !414, line: 137, baseType: !152, size: 32, align: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1467, file: !414, line: 138, baseType: !152, size: 32, align: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1467, file: !414, line: 139, baseType: !152, size: 32, align: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1467, file: !414, line: 140, baseType: !152, size: 32, align: 32, offset: 160)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1467, file: !414, line: 141, baseType: !152, size: 32, align: 32, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1467, file: !414, line: 142, baseType: !152, size: 32, align: 32, offset: 224)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1467, file: !414, line: 143, baseType: !152, size: 32, align: 32, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1467, file: !414, line: 146, baseType: !273, size: 64, align: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1467, file: !414, line: 147, baseType: !131, size: 64, align: 64, offset: 384)
!1480 = !DILocation(line: 208, column: 12, scope: !1457)
!1481 = !DILocalVariable(name: "now", scope: !1457, file: !664, line: 209, type: !413)
!1482 = !DILocation(line: 209, column: 9, scope: !1457)
!1483 = !DILocalVariable(name: "stamp", scope: !1457, file: !664, line: 209, type: !413)
!1484 = !DILocation(line: 209, column: 14, scope: !1457)
!1485 = !DILocalVariable(name: "day", scope: !1457, file: !664, line: 210, type: !152)
!1486 = !DILocation(line: 210, column: 6, scope: !1457)
!1487 = !DILocalVariable(name: "month", scope: !1457, file: !664, line: 210, type: !152)
!1488 = !DILocation(line: 210, column: 11, scope: !1457)
!1489 = !DILocation(line: 213, column: 16, scope: !1457)
!1490 = !DILocation(line: 213, column: 14, scope: !1457)
!1491 = !DILocation(line: 213, column: 6, scope: !1457)
!1492 = !DILocation(line: 214, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1457, file: !664, line: 214, column: 6)
!1494 = !DILocation(line: 214, column: 6, scope: !1493)
!1495 = !DILocation(line: 214, column: 15, scope: !1493)
!1496 = !DILocation(line: 214, column: 6, scope: !1457)
!1497 = !DILocation(line: 216, column: 17, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !664, line: 214, column: 23)
!1499 = !DILocation(line: 216, column: 24, scope: !1498)
!1500 = !DILocation(line: 216, column: 12, scope: !1498)
!1501 = !DILocation(line: 216, column: 28, scope: !1498)
!1502 = !DILocation(line: 216, column: 34, scope: !1498)
!1503 = !DILocation(line: 216, column: 9, scope: !1498)
!1504 = !DILocation(line: 217, column: 3, scope: !1498)
!1505 = !DILocation(line: 217, column: 15, scope: !1498)
!1506 = !DILocation(line: 217, column: 3, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1498, file: !664, discriminator: 1)
!1508 = !DILocation(line: 218, column: 2, scope: !1498)
!1509 = !DILocation(line: 218, column: 14, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !664, discriminator: 1)
!1511 = distinct !DILexicalBlock(scope: !1493, file: !664, line: 218, column: 13)
!1512 = !DILocation(line: 218, column: 13, scope: !1510)
!1513 = !DILocation(line: 218, column: 22, scope: !1510)
!1514 = !DILocation(line: 220, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !664, line: 218, column: 31)
!1516 = !DILocation(line: 220, column: 15, scope: !1515)
!1517 = !DILocation(line: 220, column: 3, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1515, file: !664, discriminator: 1)
!1519 = !DILocation(line: 222, column: 29, scope: !1515)
!1520 = !DILocation(line: 222, column: 21, scope: !1515)
!1521 = !DILocation(line: 223, column: 10, scope: !1515)
!1522 = !DILocation(line: 223, column: 3, scope: !1515)
!1523 = !DILocation(line: 224, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !664, line: 224, column: 7)
!1525 = !DILocation(line: 224, column: 11, scope: !1524)
!1526 = !DILocation(line: 224, column: 7, scope: !1515)
!1527 = !DILocation(line: 224, column: 17, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1524, file: !664, discriminator: 1)
!1529 = !DILocation(line: 226, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1515, file: !664, line: 226, column: 7)
!1531 = !DILocation(line: 226, column: 13, scope: !1530)
!1532 = !DILocation(line: 226, column: 7, scope: !1515)
!1533 = !DILocation(line: 228, column: 8, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !664, line: 228, column: 8)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !664, line: 226, column: 19)
!1536 = !DILocation(line: 228, column: 17, scope: !1534)
!1537 = !DILocation(line: 228, column: 12, scope: !1534)
!1538 = !DILocation(line: 228, column: 8, scope: !1535)
!1539 = !DILocation(line: 230, column: 12, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !664, line: 230, column: 9)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !664, line: 228, column: 26)
!1542 = !DILocation(line: 230, column: 19, scope: !1540)
!1543 = !DILocation(line: 230, column: 9, scope: !1541)
!1544 = !DILocation(line: 231, column: 9, scope: !1540)
!1545 = !DILocation(line: 231, column: 15, scope: !1540)
!1546 = !DILocation(line: 231, column: 6, scope: !1540)
!1547 = !DILocation(line: 234, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1540, file: !664, line: 232, column: 10)
!1549 = !DILocation(line: 234, column: 16, scope: !1548)
!1550 = !DILocation(line: 235, column: 44, scope: !1548)
!1551 = !DILocation(line: 235, column: 51, scope: !1548)
!1552 = !DILocation(line: 237, column: 4, scope: !1541)
!1553 = !DILocation(line: 238, column: 3, scope: !1535)
!1554 = !DILocation(line: 239, column: 30, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1530, file: !664, line: 238, column: 10)
!1556 = !DILocation(line: 240, column: 8, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1555, file: !664, line: 240, column: 8)
!1558 = !DILocation(line: 240, column: 19, scope: !1557)
!1559 = !DILocation(line: 240, column: 14, scope: !1557)
!1560 = !DILocation(line: 240, column: 8, scope: !1555)
!1561 = !DILocation(line: 241, column: 8, scope: !1557)
!1562 = !DILocation(line: 241, column: 15, scope: !1557)
!1563 = !DILocation(line: 241, column: 5, scope: !1557)
!1564 = !DILocation(line: 242, column: 16, scope: !1555)
!1565 = !DILocation(line: 242, column: 7, scope: !1555)
!1566 = !DILocation(line: 242, column: 14, scope: !1555)
!1567 = !DILocation(line: 245, column: 16, scope: !1515)
!1568 = !DILocation(line: 245, column: 6, scope: !1515)
!1569 = !DILocation(line: 245, column: 14, scope: !1515)
!1570 = !DILocation(line: 246, column: 11, scope: !1515)
!1571 = !DILocation(line: 246, column: 9, scope: !1515)
!1572 = !DILocation(line: 247, column: 2, scope: !1515)
!1573 = !DILocation(line: 251, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1511, file: !664, line: 249, column: 2)
!1575 = !DILocation(line: 251, column: 11, scope: !1574)
!1576 = !DILocation(line: 255, column: 2, scope: !1457)
!1577 = !DILocation(line: 255, column: 14, scope: !1457)
!1578 = !DILocation(line: 255, column: 2, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1457, file: !664, discriminator: 1)
!1580 = !DILocation(line: 256, column: 5, scope: !1457)
!1581 = !DILocation(line: 256, column: 12, scope: !1457)
!1582 = !DILocation(line: 257, column: 9, scope: !1457)
!1583 = !DILocation(line: 257, column: 34, scope: !1457)
!1584 = !DILocation(line: 257, column: 47, scope: !1457)
!1585 = !DILocation(line: 257, column: 59, scope: !1457)
!1586 = !DILocation(line: 257, column: 2, scope: !1457)
!1587 = !DILocation(line: 258, column: 10, scope: !1457)
!1588 = !DILocation(line: 258, column: 8, scope: !1457)
!1589 = !DILocation(line: 260, column: 6, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1457, file: !664, line: 260, column: 6)
!1591 = !DILocation(line: 260, column: 14, scope: !1590)
!1592 = !DILocation(line: 260, column: 12, scope: !1590)
!1593 = !DILocation(line: 260, column: 18, scope: !1590)
!1594 = !DILocation(line: 260, column: 21, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1590, file: !664, discriminator: 1)
!1596 = !DILocation(line: 260, column: 32, scope: !1595)
!1597 = !DILocation(line: 260, column: 29, scope: !1595)
!1598 = !DILocation(line: 260, column: 6, scope: !1595)
!1599 = !DILocation(line: 263, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1590, file: !664, line: 260, column: 41)
!1601 = !DILocation(line: 264, column: 2, scope: !1600)
!1602 = !DILocation(line: 266, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1457, file: !664, line: 266, column: 6)
!1604 = !DILocation(line: 266, column: 14, scope: !1603)
!1605 = !DILocation(line: 266, column: 12, scope: !1603)
!1606 = !DILocation(line: 266, column: 6, scope: !1457)
!1607 = !DILocation(line: 268, column: 3, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !664, line: 266, column: 19)
!1609 = !DILocation(line: 272, column: 33, scope: !1457)
!1610 = !DILocation(line: 272, column: 46, scope: !1457)
!1611 = !DILocation(line: 272, column: 12, scope: !1457)
!1612 = !DILocation(line: 272, column: 58, scope: !1457)
!1613 = !DILocation(line: 272, column: 65, scope: !1457)
!1614 = !DILocation(line: 272, column: 73, scope: !1457)
!1615 = !DILocation(line: 272, column: 7, scope: !1457)
!1616 = !DILocation(line: 273, column: 2, scope: !1457)
!1617 = !DILocation(line: 273, column: 9, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !664, discriminator: 1)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !664, line: 273, column: 2)
!1620 = distinct !DILexicalBlock(scope: !1457, file: !664, line: 273, column: 2)
!1621 = !DILocation(line: 273, column: 14, scope: !1618)
!1622 = !DILocation(line: 273, column: 2, scope: !1618)
!1623 = !DILocation(line: 274, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !664, line: 274, column: 7)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !664, line: 273, column: 41)
!1626 = !DILocation(line: 274, column: 13, scope: !1624)
!1627 = !DILocation(line: 274, column: 18, scope: !1624)
!1628 = !DILocation(line: 274, column: 26, scope: !1624)
!1629 = !DILocation(line: 274, column: 23, scope: !1624)
!1630 = !DILocation(line: 274, column: 7, scope: !1625)
!1631 = !DILocation(line: 275, column: 27, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1624, file: !664, line: 274, column: 33)
!1633 = !DILocation(line: 275, column: 39, scope: !1632)
!1634 = !DILocation(line: 275, column: 4, scope: !1632)
!1635 = !DILocation(line: 276, column: 4, scope: !1632)
!1636 = !DILocation(line: 278, column: 2, scope: !1625)
!1637 = !DILocation(line: 273, column: 29, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1619, file: !664, discriminator: 2)
!1639 = !DILocation(line: 273, column: 35, scope: !1638)
!1640 = !DILocation(line: 273, column: 27, scope: !1638)
!1641 = !DILocation(line: 273, column: 2, scope: !1638)
!1642 = distinct !{!1642, !1616}
!1643 = !DILocation(line: 279, column: 1, scope: !1457)
