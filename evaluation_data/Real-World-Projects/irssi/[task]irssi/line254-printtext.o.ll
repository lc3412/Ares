; ModuleID = './line254-printtext.o.i'
source_filename = "./line254-printtext.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }

@default_formats = external global %struct._GHashTable*, align 8
@current_theme = external global %struct.THEME_REC*, align 8
@sending_print_starting = internal global i32 0, align 4
@signal_print_starting = internal global i32 0, align 4
@signal_print_format = internal global i32 0, align 4
@__func__.printformat_module_gui_args = private unnamed_addr constant [28 x i8] c"printformat_module_gui_args\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"module != NULL\00", align 1
@__func__.printtext = private unnamed_addr constant [10 x i8] c"printtext\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@__func__.printtext_string = private unnamed_addr constant [17 x i8] c"printtext_string\00", align 1
@__func__.printtext_string_window = private unnamed_addr constant [24 x i8] c"printtext_string_window\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.printtext_window = private unnamed_addr constant [17 x i8] c"printtext_window\00", align 1
@__func__.printtext_gui = private unnamed_addr constant [14 x i8] c"printtext_gui\00", align 1
@__func__.printtext_gui_internal = private unnamed_addr constant [23 x i8] c"printtext_gui_internal\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.printtext_multiline = private unnamed_addr constant [20 x i8] c"printtext_multiline\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"gui print text finished\00", align 1
@signal_gui_print_text_finished = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"print starting\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"print text\00", align 1
@signal_print_text = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"print format\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gui dialog\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@__func__.print_line = private unnamed_addr constant [11 x i8] c"print_line\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"beep_msg_level\00", align 1
@beep_msg_level = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"beep_when_away\00", align 1
@beep_when_away = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"beep_when_window_active\00", align 1
@beep_when_window_active = internal global i32 0, align 4
@__func__.sig_print_text = private unnamed_addr constant [15 x i8] c"sig_print_text\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"NO WINDOWS: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%_Warning:%_ %s\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"%_Error:%_ %s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @printformat_module_dest_args(i8*, %struct._TEXT_DEST_REC*, i32, %struct.__va_list_tag*) #0 !dbg !101 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._TEXT_DEST_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__va_list_tag*, align 8
  %9 = alloca [10 x i8*], align 16
  %10 = alloca [200 x i8], align 16
  %11 = alloca %struct._FORMAT_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !527, metadata !528), !dbg !529
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %6, metadata !530, metadata !528), !dbg !531
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !532, metadata !528), !dbg !533
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %8, metadata !534, metadata !528), !dbg !535
  call void @llvm.dbg.declare(metadata [10 x i8*]* %9, metadata !536, metadata !528), !dbg !540
  call void @llvm.dbg.declare(metadata [200 x i8]* %10, metadata !541, metadata !528), !dbg !545
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %11, metadata !546, metadata !528), !dbg !557
  %12 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !558
  %13 = load i8*, i8** %5, align 8, !dbg !559
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %13), !dbg !560
  %15 = bitcast i8* %14 to %struct._FORMAT_REC*, !dbg !560
  store %struct._FORMAT_REC* %15, %struct._FORMAT_REC** %11, align 8, !dbg !561
  %16 = load %struct.__va_list_tag*, %struct.__va_list_tag** %8, align 8, !dbg !562
  %17 = load i32, i32* %7, align 4, !dbg !563
  %18 = sext i32 %17 to i64, !dbg !564
  %19 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %11, align 8, !dbg !564
  %20 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %19, i64 %18, !dbg !564
  %21 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i32 0, i32 0, !dbg !565
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i32 0, i32 0, !dbg !566
  call void @format_read_arglist(%struct.__va_list_tag* %16, %struct._FORMAT_REC* %20, i8** %21, i32 10, i8* %22, i32 200), !dbg !567
  %23 = load i8*, i8** %5, align 8, !dbg !568
  %24 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !569
  %25 = load i32, i32* %7, align 4, !dbg !570
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %9, i32 0, i32 0, !dbg !571
  call void @printformat_module_dest_charargs(i8* %23, %struct._TEXT_DEST_REC* %24, i32 %25, i8** %26), !dbg !572
  ret void, !dbg !573
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @format_read_arglist(%struct.__va_list_tag*, %struct._FORMAT_REC*, i8**, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @printformat_module_dest_charargs(i8*, %struct._TEXT_DEST_REC*, i32, i8**) #0 !dbg !574 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._TEXT_DEST_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.THEME_REC*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !577, metadata !528), !dbg !578
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %6, metadata !579, metadata !528), !dbg !580
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !581, metadata !528), !dbg !582
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !583, metadata !528), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %9, metadata !585, metadata !528), !dbg !604
  call void @llvm.dbg.declare(metadata i8** %10, metadata !605, metadata !528), !dbg !606
  %11 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !607
  %12 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %11, i32 0, i32 0, !dbg !608
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %12, align 8, !dbg !608
  %14 = icmp ne %struct._WINDOW_REC* %13, null, !dbg !609
  br i1 %14, label %15, label %28, !dbg !610

; <label>:15:                                     ; preds = %4
  %16 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !611
  %17 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %16, i32 0, i32 0, !dbg !613
  %18 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %17, align 8, !dbg !613
  %19 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %18, i32 0, i32 19, !dbg !614
  %20 = load i8*, i8** %19, align 8, !dbg !614
  %21 = icmp ne i8* %20, null, !dbg !615
  br i1 %21, label %22, label %28, !dbg !616

; <label>:22:                                     ; preds = %15
  %23 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !617
  %24 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %23, i32 0, i32 0, !dbg !619
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %24, align 8, !dbg !619
  %26 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %25, i32 0, i32 19, !dbg !620
  %27 = load i8*, i8** %26, align 8, !dbg !620
  br label %31, !dbg !621

; <label>:28:                                     ; preds = %15, %4
  %29 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !622
  %30 = bitcast %struct.THEME_REC* %29 to i8*, !dbg !622
  br label %31, !dbg !624

; <label>:31:                                     ; preds = %28, %22
  %32 = phi i8* [ %27, %22 ], [ %30, %28 ], !dbg !625
  %33 = bitcast i8* %32 to %struct.THEME_REC*, !dbg !627
  store %struct.THEME_REC* %33, %struct.THEME_REC** %9, align 8, !dbg !628
  %34 = load i32, i32* @sending_print_starting, align 4, !dbg !629
  %35 = icmp ne i32 %34, 0, !dbg !629
  br i1 %35, label %40, label %36, !dbg !631

; <label>:36:                                     ; preds = %31
  store i32 1, i32* @sending_print_starting, align 4, !dbg !632
  %37 = load i32, i32* @signal_print_starting, align 4, !dbg !634
  %38 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !635
  %39 = call i32 (i32, i32, ...) @signal_emit_id(i32 %37, i32 1, %struct._TEXT_DEST_REC* %38), !dbg !636
  store i32 0, i32* @sending_print_starting, align 4, !dbg !637
  br label %40, !dbg !638

; <label>:40:                                     ; preds = %36, %31
  %41 = load i32, i32* @signal_print_format, align 4, !dbg !639
  %42 = load %struct.THEME_REC*, %struct.THEME_REC** %9, align 8, !dbg !640
  %43 = load i8*, i8** %5, align 8, !dbg !641
  %44 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !642
  %45 = load i32, i32* %7, align 4, !dbg !643
  %46 = sext i32 %45 to i64, !dbg !644
  %47 = inttoptr i64 %46 to i8*, !dbg !645
  %48 = load i8**, i8*** %8, align 8, !dbg !646
  %49 = call i32 (i32, i32, ...) @signal_emit_id(i32 %41, i32 5, %struct.THEME_REC* %42, i8* %43, %struct._TEXT_DEST_REC* %44, i8* %47, i8** %48), !dbg !647
  %50 = load %struct.THEME_REC*, %struct.THEME_REC** %9, align 8, !dbg !648
  %51 = load i8*, i8** %5, align 8, !dbg !649
  %52 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !650
  %53 = load i32, i32* %7, align 4, !dbg !651
  %54 = load i8**, i8*** %8, align 8, !dbg !652
  %55 = call i8* @format_get_text_theme_charargs(%struct.THEME_REC* %50, i8* %51, %struct._TEXT_DEST_REC* %52, i32 %53, i8** %54), !dbg !653
  store i8* %55, i8** %10, align 8, !dbg !654
  %56 = load i8*, i8** %10, align 8, !dbg !655
  %57 = icmp ne i8* %56, null, !dbg !657
  br i1 %57, label %58, label %66, !dbg !658

; <label>:58:                                     ; preds = %40
  %59 = load i8*, i8** %10, align 8, !dbg !659
  %60 = load i8, i8* %59, align 1, !dbg !661
  %61 = sext i8 %60 to i32, !dbg !661
  %62 = icmp ne i32 %61, 0, !dbg !662
  br i1 %62, label %63, label %66, !dbg !663

; <label>:63:                                     ; preds = %58
  %64 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !664
  %65 = load i8*, i8** %10, align 8, !dbg !666
  call void @print_line(%struct._TEXT_DEST_REC* %64, i8* %65), !dbg !667
  br label %66, !dbg !667

; <label>:66:                                     ; preds = %63, %58, %40
  %67 = load i8*, i8** %10, align 8, !dbg !668
  call void @g_free(i8* %67), !dbg !669
  ret void, !dbg !670
}

declare i32 @signal_emit_id(i32, i32, ...) #2

declare i8* @format_get_text_theme_charargs(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, i8**) #2

; Function Attrs: nounwind uwtable
define internal void @print_line(%struct._TEXT_DEST_REC*, i8*) #0 !dbg !671 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !674, metadata !528), !dbg !675
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !676, metadata !528), !dbg !677
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !678, metadata !528), !dbg !679
  call void @llvm.dbg.declare(metadata i8** %6, metadata !680, metadata !528), !dbg !681
  call void @llvm.dbg.declare(metadata i8** %7, metadata !682, metadata !528), !dbg !683
  call void @llvm.dbg.declare(metadata i8** %8, metadata !684, metadata !528), !dbg !685
  br label %9, !dbg !686, !llvm.loop !687

; <label>:9:                                      ; preds = %2
  %10 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !688
  %11 = icmp ne %struct._TEXT_DEST_REC* %10, null, !dbg !692
  br i1 %11, label %12, label %13, !dbg !688

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !693

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.print_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !696
  br label %88, !dbg !699

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !700

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !702, !llvm.loop !703

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !704
  %18 = icmp ne i8* %17, null, !dbg !708
  br i1 %18, label %19, label %20, !dbg !704

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !709

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.print_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !712
  br label %88, !dbg !715

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !716

; <label>:22:                                     ; preds = %21
  %23 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !718
  %24 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %23, i32 0, i32 0, !dbg !719
  %25 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %24, align 8, !dbg !719
  %26 = icmp ne %struct._WINDOW_REC* %25, null, !dbg !720
  br i1 %26, label %27, label %40, !dbg !721

; <label>:27:                                     ; preds = %22
  %28 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !722
  %29 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %28, i32 0, i32 0, !dbg !724
  %30 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %29, align 8, !dbg !724
  %31 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %30, i32 0, i32 19, !dbg !725
  %32 = load i8*, i8** %31, align 8, !dbg !725
  %33 = icmp ne i8* %32, null, !dbg !726
  br i1 %33, label %34, label %40, !dbg !727

; <label>:34:                                     ; preds = %27
  %35 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !728
  %36 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %35, i32 0, i32 0, !dbg !730
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %36, align 8, !dbg !730
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 19, !dbg !731
  %39 = load i8*, i8** %38, align 8, !dbg !731
  br label %43, !dbg !732

; <label>:40:                                     ; preds = %27, %22
  %41 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !733
  %42 = bitcast %struct.THEME_REC* %41 to i8*, !dbg !733
  br label %43, !dbg !735

; <label>:43:                                     ; preds = %40, %34
  %44 = phi i8* [ %39, %34 ], [ %42, %40 ], !dbg !736
  %45 = bitcast i8* %44 to %struct.THEME_REC*, !dbg !738
  store %struct.THEME_REC* %45, %struct.THEME_REC** %5, align 8, !dbg !739
  %46 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !740
  %47 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !741
  %48 = call i8* @format_get_level_tag(%struct.THEME_REC* %46, %struct._TEXT_DEST_REC* %47), !dbg !742
  store i8* %48, i8** %7, align 8, !dbg !743
  %49 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !744
  %50 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %49, i32 0, i32 5, !dbg !745
  %51 = load i8, i8* %50, align 4, !dbg !745
  %52 = and i8 %51, 1, !dbg !745
  %53 = zext i8 %52 to i32, !dbg !745
  %54 = icmp ne i32 %53, 0, !dbg !744
  br i1 %54, label %59, label %55, !dbg !746

; <label>:55:                                     ; preds = %43
  %56 = load i8*, i8** %4, align 8, !dbg !747
  %57 = load i8*, i8** %7, align 8, !dbg !748
  %58 = call i8* @format_add_linestart(i8* %56, i8* %57), !dbg !749
  br label %63, !dbg !750

; <label>:59:                                     ; preds = %43
  %60 = load i8*, i8** %4, align 8, !dbg !751
  %61 = load i8*, i8** %7, align 8, !dbg !752
  %62 = call i8* @format_add_lineend(i8* %60, i8* %61), !dbg !753
  br label %63, !dbg !754

; <label>:63:                                     ; preds = %59, %55
  %64 = phi i8* [ %58, %55 ], [ %62, %59 ], !dbg !755
  store i8* %64, i8** %6, align 8, !dbg !756
  %65 = load i8*, i8** %7, align 8, !dbg !757
  call void @g_free(i8* %65), !dbg !758
  %66 = load i8*, i8** %6, align 8, !dbg !759
  %67 = call i8* @strip_codes(i8* %66), !dbg !760
  store i8* %67, i8** %8, align 8, !dbg !761
  %68 = load i32, i32* @signal_print_text, align 4, !dbg !762
  %69 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !763
  %70 = load i8*, i8** %6, align 8, !dbg !764
  %71 = load i8*, i8** %8, align 8, !dbg !765
  %72 = call i32 (i32, i32, ...) @signal_emit_id(i32 %68, i32 3, %struct._TEXT_DEST_REC* %69, i8* %70, i8* %71), !dbg !766
  br label %73, !dbg !767, !llvm.loop !768

; <label>:73:                                     ; preds = %63
  %74 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !769
  %75 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %74, i32 0, i32 8, !dbg !773
  %76 = load i8*, i8** %75, align 8, !dbg !773
  %77 = icmp ne i8* %76, null, !dbg !769
  br i1 %77, label %78, label %84, !dbg !769

; <label>:78:                                     ; preds = %73
  %79 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !774
  %80 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %79, i32 0, i32 8, !dbg !777
  %81 = load i8*, i8** %80, align 8, !dbg !777
  call void @g_free(i8* %81), !dbg !778
  %82 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !779
  %83 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %82, i32 0, i32 8, !dbg !780
  store i8* null, i8** %83, align 8, !dbg !781
  br label %84, !dbg !782

; <label>:84:                                     ; preds = %78, %73
  br label %85, !dbg !783

; <label>:85:                                     ; preds = %84
  %86 = load i8*, i8** %6, align 8, !dbg !785
  call void @g_free(i8* %86), !dbg !786
  %87 = load i8*, i8** %8, align 8, !dbg !787
  call void @g_free(i8* %87), !dbg !788
  br label %88, !dbg !789

; <label>:88:                                     ; preds = %85, %20, %13
  ret void, !dbg !790
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @printformat_module_dest(i8*, %struct._TEXT_DEST_REC*, i32, ...) #0 !dbg !791 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !794, metadata !528), !dbg !795
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %5, metadata !796, metadata !528), !dbg !797
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !798, metadata !528), !dbg !799
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !800, metadata !528), !dbg !809
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !810
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !810
  call void @llvm.va_start(i8* %9), !dbg !810
  %10 = load i8*, i8** %4, align 8, !dbg !811
  %11 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !812
  %12 = load i32, i32* %6, align 4, !dbg !813
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !814
  call void @printformat_module_dest_args(i8* %10, %struct._TEXT_DEST_REC* %11, i32 %12, %struct.__va_list_tag* %13), !dbg !815
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !816
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !816
  call void @llvm.va_end(i8* %15), !dbg !816
  ret void, !dbg !817
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define void @printformat_module_args(i8*, i8*, i8*, i32, i32, %struct.__va_list_tag*) #0 !dbg !818 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.__va_list_tag*, align 8
  %13 = alloca %struct._TEXT_DEST_REC, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !821, metadata !528), !dbg !822
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !823, metadata !528), !dbg !824
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !825, metadata !528), !dbg !826
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !827, metadata !528), !dbg !828
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !829, metadata !528), !dbg !830
  store %struct.__va_list_tag* %5, %struct.__va_list_tag** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %12, metadata !831, metadata !528), !dbg !832
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %13, metadata !833, metadata !528), !dbg !834
  %14 = load i8*, i8** %8, align 8, !dbg !835
  %15 = load i8*, i8** %9, align 8, !dbg !836
  %16 = load i32, i32* %10, align 4, !dbg !837
  call void @format_create_dest(%struct._TEXT_DEST_REC* %13, i8* %14, i8* %15, i32 %16, %struct._WINDOW_REC* null), !dbg !838
  %17 = load i8*, i8** %7, align 8, !dbg !839
  %18 = load i32, i32* %11, align 4, !dbg !840
  %19 = load %struct.__va_list_tag*, %struct.__va_list_tag** %12, align 8, !dbg !841
  call void @printformat_module_dest_args(i8* %17, %struct._TEXT_DEST_REC* %13, i32 %18, %struct.__va_list_tag* %19), !dbg !842
  ret void, !dbg !843
}

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

; Function Attrs: nounwind uwtable
define void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #0 !dbg !844 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !847, metadata !528), !dbg !848
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !849, metadata !528), !dbg !850
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !851, metadata !528), !dbg !852
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !853, metadata !528), !dbg !854
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !855, metadata !528), !dbg !856
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %11, metadata !857, metadata !528), !dbg !858
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !859
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !859
  call void @llvm.va_start(i8* %13), !dbg !859
  %14 = load i8*, i8** %6, align 8, !dbg !860
  %15 = load i8*, i8** %7, align 8, !dbg !861
  %16 = load i8*, i8** %8, align 8, !dbg !862
  %17 = load i32, i32* %9, align 4, !dbg !863
  %18 = load i32, i32* %10, align 4, !dbg !864
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !865
  call void @printformat_module_args(i8* %14, i8* %15, i8* %16, i32 %17, i32 %18, %struct.__va_list_tag* %19), !dbg !866
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !867
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !867
  call void @llvm.va_end(i8* %21), !dbg !867
  ret void, !dbg !868
}

; Function Attrs: nounwind uwtable
define void @printformat_module_window_args(i8*, %struct._WINDOW_REC*, i32, i32, %struct.__va_list_tag*) #0 !dbg !869 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca %struct._TEXT_DEST_REC, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !872, metadata !528), !dbg !873
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !874, metadata !528), !dbg !875
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !876, metadata !528), !dbg !877
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !878, metadata !528), !dbg !879
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !880, metadata !528), !dbg !881
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %11, metadata !882, metadata !528), !dbg !883
  %12 = load i32, i32* %8, align 4, !dbg !884
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !885
  call void @format_create_dest(%struct._TEXT_DEST_REC* %11, i8* null, i8* null, i32 %12, %struct._WINDOW_REC* %13), !dbg !886
  %14 = load i8*, i8** %6, align 8, !dbg !887
  %15 = load i32, i32* %9, align 4, !dbg !888
  %16 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !889
  call void @printformat_module_dest_args(i8* %14, %struct._TEXT_DEST_REC* %11, i32 %15, %struct.__va_list_tag* %16), !dbg !890
  ret void, !dbg !891
}

; Function Attrs: nounwind uwtable
define void @printformat_module_window(i8*, %struct._WINDOW_REC*, i32, i32, ...) #0 !dbg !892 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !895, metadata !528), !dbg !896
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !897, metadata !528), !dbg !898
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !899, metadata !528), !dbg !900
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !901, metadata !528), !dbg !902
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !903, metadata !528), !dbg !904
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !905
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !905
  call void @llvm.va_start(i8* %11), !dbg !905
  %12 = load i8*, i8** %5, align 8, !dbg !906
  %13 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !907
  %14 = load i32, i32* %7, align 4, !dbg !908
  %15 = load i32, i32* %8, align 4, !dbg !909
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !910
  call void @printformat_module_window_args(i8* %12, %struct._WINDOW_REC* %13, i32 %14, i32 %15, %struct.__va_list_tag* %16), !dbg !911
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !912
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !912
  call void @llvm.va_end(i8* %18), !dbg !912
  ret void, !dbg !913
}

; Function Attrs: nounwind uwtable
define void @printformat_module_gui_args(i8*, i32, %struct.__va_list_tag*) #0 !dbg !914 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca %struct._TEXT_DEST_REC, align 8
  %8 = alloca [10 x i8*], align 16
  %9 = alloca [200 x i8], align 16
  %10 = alloca %struct._FORMAT_REC*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !917, metadata !528), !dbg !918
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !919, metadata !528), !dbg !920
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !921, metadata !528), !dbg !922
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %7, metadata !923, metadata !528), !dbg !924
  call void @llvm.dbg.declare(metadata [10 x i8*]* %8, metadata !925, metadata !528), !dbg !926
  call void @llvm.dbg.declare(metadata [200 x i8]* %9, metadata !927, metadata !528), !dbg !928
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %10, metadata !929, metadata !528), !dbg !930
  call void @llvm.dbg.declare(metadata i8** %11, metadata !931, metadata !528), !dbg !932
  br label %12, !dbg !933, !llvm.loop !934

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !935
  %14 = icmp ne i8* %13, null, !dbg !939
  br i1 %14, label %15, label %16, !dbg !935

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !940

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.printformat_module_gui_args, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !943
  br label %63, !dbg !946

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !947

; <label>:18:                                     ; preds = %17
  %19 = bitcast %struct._TEXT_DEST_REC* %7 to i8*, !dbg !949
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 72, i32 8, i1 false), !dbg !949
  %20 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !950
  %21 = load i8*, i8** %4, align 8, !dbg !951
  %22 = call i8* @g_hash_table_lookup(%struct._GHashTable* %20, i8* %21), !dbg !952
  %23 = bitcast i8* %22 to %struct._FORMAT_REC*, !dbg !952
  store %struct._FORMAT_REC* %23, %struct._FORMAT_REC** %10, align 8, !dbg !953
  %24 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !954
  %25 = load i32, i32* %5, align 4, !dbg !955
  %26 = sext i32 %25 to i64, !dbg !956
  %27 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %10, align 8, !dbg !956
  %28 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %27, i64 %26, !dbg !956
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %8, i32 0, i32 0, !dbg !957
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i32 0, i32 0, !dbg !958
  call void @format_read_arglist(%struct.__va_list_tag* %24, %struct._FORMAT_REC* %28, i8** %29, i32 10, i8* %30, i32 200), !dbg !959
  %31 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 0, !dbg !960
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %31, align 8, !dbg !960
  %33 = icmp ne %struct._WINDOW_REC* %32, null, !dbg !961
  br i1 %33, label %34, label %45, !dbg !962

; <label>:34:                                     ; preds = %18
  %35 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 0, !dbg !963
  %36 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %35, align 8, !dbg !963
  %37 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %36, i32 0, i32 19, !dbg !965
  %38 = load i8*, i8** %37, align 8, !dbg !965
  %39 = icmp ne i8* %38, null, !dbg !966
  br i1 %39, label %40, label %45, !dbg !967

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 0, !dbg !968
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %41, align 8, !dbg !968
  %43 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %42, i32 0, i32 19, !dbg !970
  %44 = load i8*, i8** %43, align 8, !dbg !970
  br label %48, !dbg !971

; <label>:45:                                     ; preds = %34, %18
  %46 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !972
  %47 = bitcast %struct.THEME_REC* %46 to i8*, !dbg !972
  br label %48, !dbg !974

; <label>:48:                                     ; preds = %45, %40
  %49 = phi i8* [ %44, %40 ], [ %47, %45 ], !dbg !975
  %50 = bitcast i8* %49 to %struct.THEME_REC*, !dbg !977
  %51 = load i8*, i8** %4, align 8, !dbg !978
  %52 = load i32, i32* %5, align 4, !dbg !979
  %53 = getelementptr inbounds [10 x i8*], [10 x i8*]* %8, i32 0, i32 0, !dbg !980
  %54 = call i8* @format_get_text_theme_charargs(%struct.THEME_REC* %50, i8* %51, %struct._TEXT_DEST_REC* %7, i32 %52, i8** %53), !dbg !981
  store i8* %54, i8** %11, align 8, !dbg !982
  %55 = load i8*, i8** %11, align 8, !dbg !983
  %56 = load i8, i8* %55, align 1, !dbg !985
  %57 = sext i8 %56 to i32, !dbg !985
  %58 = icmp ne i32 %57, 0, !dbg !986
  br i1 %58, label %59, label %61, !dbg !987

; <label>:59:                                     ; preds = %48
  %60 = load i8*, i8** %11, align 8, !dbg !988
  call void @format_send_to_gui(%struct._TEXT_DEST_REC* %7, i8* %60), !dbg !990
  br label %61, !dbg !990

; <label>:61:                                     ; preds = %59, %48
  %62 = load i8*, i8** %11, align 8, !dbg !991
  call void @g_free(i8* %62), !dbg !992
  br label %63, !dbg !993

; <label>:63:                                     ; preds = %61, %16
  ret void, !dbg !994
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare void @format_send_to_gui(%struct._TEXT_DEST_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define void @printformat_module_gui(i8*, i32, ...) #0 !dbg !995 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !998, metadata !528), !dbg !999
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1000, metadata !528), !dbg !1001
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !1002, metadata !528), !dbg !1003
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1004
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !1004
  call void @llvm.va_start(i8* %7), !dbg !1004
  %8 = load i8*, i8** %3, align 8, !dbg !1005
  %9 = load i32, i32* %4, align 4, !dbg !1006
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1007
  call void @printformat_module_gui_args(i8* %8, i32 %9, %struct.__va_list_tag* %10), !dbg !1008
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1009
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !1009
  call void @llvm.va_end(i8* %12), !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: nounwind uwtable
define void @printtext_dest(%struct._TEXT_DEST_REC*, i8*, ...) #0 !dbg !1011 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !1014, metadata !528), !dbg !1015
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1016, metadata !528), !dbg !1017
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !1018, metadata !528), !dbg !1019
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1020
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !1020
  call void @llvm.va_start(i8* %7), !dbg !1020
  %8 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1021
  %9 = load i8*, i8** %4, align 8, !dbg !1022
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1023
  call void @printtext_dest_args(%struct._TEXT_DEST_REC* %8, i8* %9, %struct.__va_list_tag* %10), !dbg !1024
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !1025
  %12 = bitcast %struct.__va_list_tag* %11 to i8*, !dbg !1025
  call void @llvm.va_end(i8* %12), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: nounwind uwtable
define internal void @printtext_dest_args(%struct._TEXT_DEST_REC*, i8*, %struct.__va_list_tag*) #0 !dbg !1027 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !1030, metadata !528), !dbg !1031
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1032, metadata !528), !dbg !1033
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1034, metadata !528), !dbg !1035
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1036, metadata !528), !dbg !1037
  %8 = load i32, i32* @sending_print_starting, align 4, !dbg !1038
  %9 = icmp ne i32 %8, 0, !dbg !1038
  br i1 %9, label %14, label %10, !dbg !1040

; <label>:10:                                     ; preds = %3
  store i32 1, i32* @sending_print_starting, align 4, !dbg !1041
  %11 = load i32, i32* @signal_print_starting, align 4, !dbg !1043
  %12 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1044
  %13 = call i32 (i32, i32, ...) @signal_emit_id(i32 %11, i32 1, %struct._TEXT_DEST_REC* %12), !dbg !1045
  store i32 0, i32* @sending_print_starting, align 4, !dbg !1046
  br label %14, !dbg !1047

; <label>:14:                                     ; preds = %10, %3
  %15 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1048
  %16 = load i8*, i8** %5, align 8, !dbg !1049
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1050
  %18 = call i8* @printtext_get_args(%struct._TEXT_DEST_REC* %15, i8* %16, %struct.__va_list_tag* %17), !dbg !1051
  store i8* %18, i8** %7, align 8, !dbg !1052
  %19 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1053
  %20 = load i8*, i8** %7, align 8, !dbg !1054
  call void @print_line(%struct._TEXT_DEST_REC* %19, i8* %20), !dbg !1055
  %21 = load i8*, i8** %7, align 8, !dbg !1056
  call void @g_free(i8* %21), !dbg !1057
  ret void, !dbg !1058
}

; Function Attrs: nounwind uwtable
define void @printtext(i8*, i8*, i32, i8*, ...) #0 !dbg !1059 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._TEXT_DEST_REC, align 8
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1062, metadata !528), !dbg !1063
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1064, metadata !528), !dbg !1065
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1066, metadata !528), !dbg !1067
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1068, metadata !528), !dbg !1069
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %9, metadata !1070, metadata !528), !dbg !1071
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %10, metadata !1072, metadata !528), !dbg !1073
  br label %11, !dbg !1074, !llvm.loop !1075

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %8, align 8, !dbg !1076
  %13 = icmp ne i8* %12, null, !dbg !1080
  br i1 %13, label %14, label %15, !dbg !1076

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1081

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.printtext, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1084
  br label %27, !dbg !1087

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1088

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1090
  %19 = load i8*, i8** %6, align 8, !dbg !1091
  %20 = load i32, i32* %7, align 4, !dbg !1092
  call void @format_create_dest(%struct._TEXT_DEST_REC* %9, i8* %18, i8* %19, i32 %20, %struct._WINDOW_REC* null), !dbg !1093
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !1094
  %22 = bitcast %struct.__va_list_tag* %21 to i8*, !dbg !1094
  call void @llvm.va_start(i8* %22), !dbg !1094
  %23 = load i8*, i8** %8, align 8, !dbg !1095
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !1096
  call void @printtext_dest_args(%struct._TEXT_DEST_REC* %9, i8* %23, %struct.__va_list_tag* %24), !dbg !1097
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i32 0, i32 0, !dbg !1098
  %26 = bitcast %struct.__va_list_tag* %25 to i8*, !dbg !1098
  call void @llvm.va_end(i8* %26), !dbg !1098
  br label %27, !dbg !1099

; <label>:27:                                     ; preds = %17, %15
  ret void, !dbg !1100
}

; Function Attrs: nounwind uwtable
define void @printtext_string(i8*, i8*, i32, i8*) #0 !dbg !1102 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._TEXT_DEST_REC, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1105, metadata !528), !dbg !1106
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1107, metadata !528), !dbg !1108
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1109, metadata !528), !dbg !1110
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1111, metadata !528), !dbg !1112
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %9, metadata !1113, metadata !528), !dbg !1114
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1115, metadata !528), !dbg !1116
  br label %11, !dbg !1117, !llvm.loop !1118

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %8, align 8, !dbg !1119
  %13 = icmp ne i8* %12, null, !dbg !1123
  br i1 %13, label %14, label %15, !dbg !1119

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1124

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.printtext_string, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1127
  br label %32, !dbg !1130

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1131

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1133
  %19 = load i8*, i8** %6, align 8, !dbg !1134
  %20 = load i32, i32* %7, align 4, !dbg !1135
  call void @format_create_dest(%struct._TEXT_DEST_REC* %9, i8* %18, i8* %19, i32 %20, %struct._WINDOW_REC* null), !dbg !1136
  %21 = load i32, i32* @sending_print_starting, align 4, !dbg !1137
  %22 = icmp ne i32 %21, 0, !dbg !1137
  br i1 %22, label %26, label %23, !dbg !1139

; <label>:23:                                     ; preds = %17
  store i32 1, i32* @sending_print_starting, align 4, !dbg !1140
  %24 = load i32, i32* @signal_print_starting, align 4, !dbg !1142
  %25 = call i32 (i32, i32, ...) @signal_emit_id(i32 %24, i32 1, %struct._TEXT_DEST_REC* %9), !dbg !1143
  store i32 0, i32* @sending_print_starting, align 4, !dbg !1144
  br label %26, !dbg !1145

; <label>:26:                                     ; preds = %23, %17
  %27 = load i8*, i8** %8, align 8, !dbg !1146
  %28 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %9, i32 0, i32 9, !dbg !1147
  %29 = call i8* @printtext_expand_formats(i8* %27, i32* %28), !dbg !1148
  store i8* %29, i8** %10, align 8, !dbg !1149
  %30 = load i8*, i8** %10, align 8, !dbg !1150
  call void @print_line(%struct._TEXT_DEST_REC* %9, i8* %30), !dbg !1151
  %31 = load i8*, i8** %10, align 8, !dbg !1152
  call void @g_free(i8* %31), !dbg !1153
  br label %32, !dbg !1154

; <label>:32:                                     ; preds = %26, %15
  ret void, !dbg !1155
}

; Function Attrs: nounwind uwtable
define internal i8* @printtext_expand_formats(i8*, i32*) #0 !dbg !1157 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1161, metadata !528), !dbg !1162
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !1163, metadata !528), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1165, metadata !528), !dbg !1166
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1167, metadata !528), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1169, metadata !528), !dbg !1170
  %8 = call %struct._GString* @g_string_new(i8* null), !dbg !1171
  store %struct._GString* %8, %struct._GString** %5, align 8, !dbg !1172
  br label %9, !dbg !1173

; <label>:9:                                      ; preds = %51, %2
  %10 = load i8*, i8** %3, align 8, !dbg !1174
  %11 = load i8, i8* %10, align 1, !dbg !1178
  %12 = sext i8 %11 to i32, !dbg !1178
  %13 = icmp ne i32 %12, 0, !dbg !1179
  br i1 %13, label %14, label %54, !dbg !1180

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1181
  %16 = load i8, i8* %15, align 1, !dbg !1184
  %17 = sext i8 %16 to i32, !dbg !1184
  %18 = icmp ne i32 %17, 37, !dbg !1185
  br i1 %18, label %19, label %24, !dbg !1186

; <label>:19:                                     ; preds = %14
  %20 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1187
  %21 = load i8*, i8** %3, align 8, !dbg !1189
  %22 = load i8, i8* %21, align 1, !dbg !1190
  %23 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %20, i8 signext %22), !dbg !1191
  br label %51, !dbg !1192

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %3, align 8, !dbg !1193
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !1193
  store i8* %26, i8** %3, align 8, !dbg !1193
  %27 = load i8, i8* %26, align 1, !dbg !1195
  %28 = sext i8 %27 to i32, !dbg !1195
  %29 = icmp eq i32 %28, 0, !dbg !1196
  br i1 %29, label %30, label %31, !dbg !1197

; <label>:30:                                     ; preds = %24
  br label %54, !dbg !1198

; <label>:31:                                     ; preds = %24
  %32 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1199
  %33 = load i32*, i32** %4, align 8, !dbg !1200
  %34 = call i32 @format_expand_styles(%struct._GString* %32, i8** %3, i32* %33), !dbg !1201
  store i32 %34, i32* %7, align 4, !dbg !1202
  %35 = load i32, i32* %7, align 4, !dbg !1203
  %36 = icmp ne i32 %35, 0, !dbg !1203
  br i1 %36, label %44, label %37, !dbg !1205

; <label>:37:                                     ; preds = %31
  %38 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1206
  %39 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %38, i8 signext 37), !dbg !1208
  %40 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1209
  %41 = load i8*, i8** %3, align 8, !dbg !1210
  %42 = load i8, i8* %41, align 1, !dbg !1211
  %43 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %40, i8 signext %42), !dbg !1212
  br label %50, !dbg !1213

; <label>:44:                                     ; preds = %31
  %45 = load i32, i32* %7, align 4, !dbg !1214
  %46 = sub nsw i32 %45, 1, !dbg !1216
  %47 = load i8*, i8** %3, align 8, !dbg !1217
  %48 = sext i32 %46 to i64, !dbg !1217
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !1217
  store i8* %49, i8** %3, align 8, !dbg !1217
  br label %50

; <label>:50:                                     ; preds = %44, %37
  br label %51, !dbg !1218

; <label>:51:                                     ; preds = %50, %19
  %52 = load i8*, i8** %3, align 8, !dbg !1219
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1219
  store i8* %53, i8** %3, align 8, !dbg !1219
  br label %9, !dbg !1221, !llvm.loop !1222

; <label>:54:                                     ; preds = %30, %9
  %55 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1223
  %56 = getelementptr inbounds %struct._GString, %struct._GString* %55, i32 0, i32 0, !dbg !1224
  %57 = load i8*, i8** %56, align 8, !dbg !1224
  store i8* %57, i8** %6, align 8, !dbg !1225
  %58 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1226
  %59 = call i8* @g_string_free(%struct._GString* %58, i32 0), !dbg !1227
  %60 = load i8*, i8** %6, align 8, !dbg !1228
  ret i8* %60, !dbg !1229
}

; Function Attrs: nounwind uwtable
define void @printtext_string_window(%struct._WINDOW_REC*, i32, i8*) #0 !dbg !1230 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._TEXT_DEST_REC, align 8
  %8 = alloca i8*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1233, metadata !528), !dbg !1234
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1235, metadata !528), !dbg !1236
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1237, metadata !528), !dbg !1238
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %7, metadata !1239, metadata !528), !dbg !1240
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1241, metadata !528), !dbg !1242
  br label %9, !dbg !1243, !llvm.loop !1244

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !1245
  %11 = icmp ne i8* %10, null, !dbg !1249
  br i1 %11, label %12, label %13, !dbg !1245

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1250

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.printtext_string_window, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1253
  br label %36, !dbg !1256

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1257

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !1259
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1260
  %18 = icmp ne %struct._WINDOW_REC* %17, null, !dbg !1261
  br i1 %18, label %19, label %21, !dbg !1260

; <label>:19:                                     ; preds = %15
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1262
  br label %23, !dbg !1264

; <label>:21:                                     ; preds = %15
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1265
  br label %23, !dbg !1267

; <label>:23:                                     ; preds = %21, %19
  %24 = phi %struct._WINDOW_REC* [ %20, %19 ], [ %22, %21 ], !dbg !1268
  call void @format_create_dest(%struct._TEXT_DEST_REC* %7, i8* null, i8* null, i32 %16, %struct._WINDOW_REC* %24), !dbg !1270
  %25 = load i32, i32* @sending_print_starting, align 4, !dbg !1271
  %26 = icmp ne i32 %25, 0, !dbg !1271
  br i1 %26, label %30, label %27, !dbg !1273

; <label>:27:                                     ; preds = %23
  store i32 1, i32* @sending_print_starting, align 4, !dbg !1274
  %28 = load i32, i32* @signal_print_starting, align 4, !dbg !1276
  %29 = call i32 (i32, i32, ...) @signal_emit_id(i32 %28, i32 1, %struct._TEXT_DEST_REC* %7), !dbg !1277
  store i32 0, i32* @sending_print_starting, align 4, !dbg !1278
  br label %30, !dbg !1279

; <label>:30:                                     ; preds = %27, %23
  %31 = load i8*, i8** %6, align 8, !dbg !1280
  %32 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 9, !dbg !1281
  %33 = call i8* @printtext_expand_formats(i8* %31, i32* %32), !dbg !1282
  store i8* %33, i8** %8, align 8, !dbg !1283
  %34 = load i8*, i8** %8, align 8, !dbg !1284
  call void @print_line(%struct._TEXT_DEST_REC* %7, i8* %34), !dbg !1285
  %35 = load i8*, i8** %8, align 8, !dbg !1286
  call void @g_free(i8* %35), !dbg !1287
  br label %36, !dbg !1288

; <label>:36:                                     ; preds = %30, %13
  ret void, !dbg !1289
}

; Function Attrs: nounwind uwtable
define void @printtext_window(%struct._WINDOW_REC*, i32, i8*, ...) #0 !dbg !1290 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._TEXT_DEST_REC, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !1293, metadata !528), !dbg !1294
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1295, metadata !528), !dbg !1296
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1297, metadata !528), !dbg !1298
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %7, metadata !1299, metadata !528), !dbg !1300
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1301, metadata !528), !dbg !1302
  br label %9, !dbg !1303, !llvm.loop !1304

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %6, align 8, !dbg !1305
  %11 = icmp ne i8* %10, null, !dbg !1309
  br i1 %11, label %12, label %13, !dbg !1305

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1310

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.printtext_window, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1313
  br label %31, !dbg !1316

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1317

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !1319
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1320
  %18 = icmp ne %struct._WINDOW_REC* %17, null, !dbg !1321
  br i1 %18, label %19, label %21, !dbg !1320

; <label>:19:                                     ; preds = %15
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !1322
  br label %23, !dbg !1324

; <label>:21:                                     ; preds = %15
  %22 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1325
  br label %23, !dbg !1327

; <label>:23:                                     ; preds = %21, %19
  %24 = phi %struct._WINDOW_REC* [ %20, %19 ], [ %22, %21 ], !dbg !1328
  call void @format_create_dest(%struct._TEXT_DEST_REC* %7, i8* null, i8* null, i32 %16, %struct._WINDOW_REC* %24), !dbg !1330
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1331
  %26 = bitcast %struct.__va_list_tag* %25 to i8*, !dbg !1331
  call void @llvm.va_start(i8* %26), !dbg !1331
  %27 = load i8*, i8** %6, align 8, !dbg !1332
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1333
  call void @printtext_dest_args(%struct._TEXT_DEST_REC* %7, i8* %27, %struct.__va_list_tag* %28), !dbg !1334
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !1335
  %30 = bitcast %struct.__va_list_tag* %29 to i8*, !dbg !1335
  call void @llvm.va_end(i8* %30), !dbg !1335
  br label %31, !dbg !1336

; <label>:31:                                     ; preds = %23, %13
  ret void, !dbg !1337
}

; Function Attrs: nounwind uwtable
define void @printtext_gui(i8*) #0 !dbg !1338 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._TEXT_DEST_REC, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1341, metadata !528), !dbg !1342
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %3, metadata !1343, metadata !528), !dbg !1344
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1345, metadata !528), !dbg !1346
  br label %5, !dbg !1347, !llvm.loop !1348

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !1349
  %7 = icmp ne i8* %6, null, !dbg !1353
  br i1 %7, label %8, label %9, !dbg !1349

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1354

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.printtext_gui, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1357
  br label %18, !dbg !1360

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1361

; <label>:11:                                     ; preds = %10
  %12 = bitcast %struct._TEXT_DEST_REC* %3 to i8*, !dbg !1363
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 72, i32 8, i1 false), !dbg !1363
  %13 = load i8*, i8** %2, align 8, !dbg !1364
  %14 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %3, i32 0, i32 9, !dbg !1365
  %15 = call i8* @printtext_expand_formats(i8* %13, i32* %14), !dbg !1366
  store i8* %15, i8** %4, align 8, !dbg !1367
  %16 = load i8*, i8** %4, align 8, !dbg !1368
  call void @format_send_to_gui(%struct._TEXT_DEST_REC* %3, i8* %16), !dbg !1369
  %17 = load i8*, i8** %4, align 8, !dbg !1370
  call void @g_free(i8* %17), !dbg !1371
  br label %18, !dbg !1372

; <label>:18:                                     ; preds = %11, %9
  ret void, !dbg !1373
}

; Function Attrs: nounwind uwtable
define void @printtext_gui_internal(i8*) #0 !dbg !1375 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._TEXT_DEST_REC, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1376, metadata !528), !dbg !1377
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %3, metadata !1378, metadata !528), !dbg !1379
  br label %4, !dbg !1380, !llvm.loop !1381

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !1382
  %6 = icmp ne i8* %5, null, !dbg !1386
  br i1 %6, label %7, label %8, !dbg !1382

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1387

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.printtext_gui_internal, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !1390
  br label %13, !dbg !1393

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1394

; <label>:10:                                     ; preds = %9
  %11 = bitcast %struct._TEXT_DEST_REC* %3 to i8*, !dbg !1396
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 72, i32 8, i1 false), !dbg !1396
  %12 = load i8*, i8** %2, align 8, !dbg !1397
  call void @format_send_to_gui(%struct._TEXT_DEST_REC* %3, i8* %12), !dbg !1398
  br label %13, !dbg !1399

; <label>:13:                                     ; preds = %10, %8
  ret void, !dbg !1400
}

; Function Attrs: nounwind uwtable
define void @printtext_multiline(i8*, i8*, i32, i8*, i8*) #0 !dbg !1402 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1405, metadata !528), !dbg !1406
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1407, metadata !528), !dbg !1408
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1409, metadata !528), !dbg !1410
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1411, metadata !528), !dbg !1412
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1413, metadata !528), !dbg !1414
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1415, metadata !528), !dbg !1416
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !1417, metadata !528), !dbg !1418
  br label %13, !dbg !1419, !llvm.loop !1420

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !1421
  %15 = icmp ne i8* %14, null, !dbg !1425
  br i1 %15, label %16, label %17, !dbg !1421

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1426

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.printtext_multiline, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !1429
  br label %44, !dbg !1432

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1433

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !1435, !llvm.loop !1436

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %10, align 8, !dbg !1437
  %22 = icmp ne i8* %21, null, !dbg !1441
  br i1 %22, label %23, label %24, !dbg !1437

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1442

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.printtext_multiline, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1445
  br label %44, !dbg !1448

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1449

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %10, align 8, !dbg !1451
  %28 = call noalias i8** @g_strsplit(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 -1), !dbg !1452
  store i8** %28, i8*** %11, align 8, !dbg !1453
  %29 = load i8**, i8*** %11, align 8, !dbg !1454
  store i8** %29, i8*** %12, align 8, !dbg !1456
  br label %30, !dbg !1457

; <label>:30:                                     ; preds = %39, %26
  %31 = load i8**, i8*** %12, align 8, !dbg !1458
  %32 = load i8*, i8** %31, align 8, !dbg !1461
  %33 = icmp ne i8* %32, null, !dbg !1462
  br i1 %33, label %34, label %42, !dbg !1463

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %8, align 4, !dbg !1464
  %36 = load i8*, i8** %9, align 8, !dbg !1465
  %37 = load i8**, i8*** %12, align 8, !dbg !1466
  %38 = load i8*, i8** %37, align 8, !dbg !1467
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* null, i8* null, i32 %35, i8* %36, i8* %38), !dbg !1468
  br label %39, !dbg !1468

; <label>:39:                                     ; preds = %34
  %40 = load i8**, i8*** %12, align 8, !dbg !1469
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !1469
  store i8** %41, i8*** %12, align 8, !dbg !1469
  br label %30, !dbg !1471, !llvm.loop !1472

; <label>:42:                                     ; preds = %30
  %43 = load i8**, i8*** %11, align 8, !dbg !1474
  call void @g_strfreev(i8** %43), !dbg !1475
  br label %44, !dbg !1476

; <label>:44:                                     ; preds = %42, %24, %17
  ret void, !dbg !1477
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define void @printtext_init() #0 !dbg !1479 {
  store i32 0, i32* @sending_print_starting, align 4, !dbg !1480
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)), !dbg !1481
  store i32 %1, i32* @signal_gui_print_text_finished, align 4, !dbg !1482
  %2 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !1483
  store i32 %2, i32* @signal_print_starting, align 4, !dbg !1484
  %3 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)), !dbg !1485
  store i32 %3, i32* @signal_print_text, align 4, !dbg !1486
  %4 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1487
  store i32 %4, i32* @signal_print_format, align 4, !dbg !1488
  call void @read_settings(), !dbg !1489
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*)* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1490
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_gui_dialog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1491
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1492
  ret void, !dbg !1493
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1494 {
  %1 = call i32 @settings_get_level(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)), !dbg !1495
  store i32 %1, i32* @beep_msg_level, align 4, !dbg !1496
  %2 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)), !dbg !1497
  store i32 %2, i32* @beep_when_away, align 4, !dbg !1498
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)), !dbg !1499
  store i32 %3, i32* @beep_when_window_active, align 4, !dbg !1500
  ret void, !dbg !1501
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_print_text(%struct._TEXT_DEST_REC*, i8*) #0 !dbg !1502 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !1503, metadata !528), !dbg !1504
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1505, metadata !528), !dbg !1506
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !1507, metadata !528), !dbg !1508
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1509, metadata !528), !dbg !1510
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1511, metadata !528), !dbg !1512
  br label %8, !dbg !1513, !llvm.loop !1514

; <label>:8:                                      ; preds = %2
  %9 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1515
  %10 = icmp ne %struct._TEXT_DEST_REC* %9, null, !dbg !1519
  br i1 %10, label %11, label %12, !dbg !1515

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1520

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sig_print_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !1523
  br label %98, !dbg !1526

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1527

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1529, !llvm.loop !1530

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1531
  %17 = icmp ne i8* %16, null, !dbg !1535
  br i1 %17, label %18, label %19, !dbg !1531

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1536

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sig_print_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1539
  br label %98, !dbg !1542

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1543

; <label>:21:                                     ; preds = %20
  %22 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1545
  %23 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %22, i32 0, i32 0, !dbg !1547
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %23, align 8, !dbg !1547
  %25 = icmp eq %struct._WINDOW_REC* %24, null, !dbg !1548
  br i1 %25, label %26, label %32, !dbg !1549

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %4, align 8, !dbg !1550
  %28 = call i8* @strip_codes(i8* %27), !dbg !1552
  store i8* %28, i8** %6, align 8, !dbg !1553
  %29 = load i8*, i8** %6, align 8, !dbg !1554
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* %29), !dbg !1555
  %31 = load i8*, i8** %6, align 8, !dbg !1556
  call void @g_free(i8* %31), !dbg !1557
  br label %98, !dbg !1558

; <label>:32:                                     ; preds = %21
  %33 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1559
  call void @msg_beep_check(%struct._TEXT_DEST_REC* %33), !dbg !1560
  %34 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1561
  %35 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %34, i32 0, i32 6, !dbg !1563
  %36 = load i32, i32* %35, align 8, !dbg !1563
  %37 = and i32 %36, 67108864, !dbg !1564
  %38 = icmp eq i32 %37, 0, !dbg !1565
  br i1 %38, label %39, label %45, !dbg !1566

; <label>:39:                                     ; preds = %32
  %40 = call i64 @time(i64* null) #3, !dbg !1567
  %41 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1568
  %42 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %41, i32 0, i32 0, !dbg !1569
  %43 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %42, align 8, !dbg !1569
  %44 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %43, i32 0, i32 17, !dbg !1570
  store i64 %40, i64* %44, align 8, !dbg !1571
  br label %45, !dbg !1568

; <label>:45:                                     ; preds = %39, %32
  %46 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1572
  %47 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %46, i32 0, i32 0, !dbg !1573
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %47, align 8, !dbg !1573
  %49 = icmp ne %struct._WINDOW_REC* %48, null, !dbg !1574
  br i1 %49, label %50, label %63, !dbg !1575

; <label>:50:                                     ; preds = %45
  %51 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1576
  %52 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %51, i32 0, i32 0, !dbg !1578
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %52, align 8, !dbg !1578
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 19, !dbg !1579
  %55 = load i8*, i8** %54, align 8, !dbg !1579
  %56 = icmp ne i8* %55, null, !dbg !1580
  br i1 %56, label %57, label %63, !dbg !1581

; <label>:57:                                     ; preds = %50
  %58 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1582
  %59 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %58, i32 0, i32 0, !dbg !1584
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %59, align 8, !dbg !1584
  %61 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %60, i32 0, i32 19, !dbg !1585
  %62 = load i8*, i8** %61, align 8, !dbg !1585
  br label %66, !dbg !1586

; <label>:63:                                     ; preds = %50, %45
  %64 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1587
  %65 = bitcast %struct.THEME_REC* %64 to i8*, !dbg !1587
  br label %66, !dbg !1589

; <label>:66:                                     ; preds = %63, %57
  %67 = phi i8* [ %62, %57 ], [ %65, %63 ], !dbg !1590
  %68 = bitcast i8* %67 to %struct.THEME_REC*, !dbg !1592
  store %struct.THEME_REC* %68, %struct.THEME_REC** %5, align 8, !dbg !1593
  %69 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1594
  %70 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1595
  %71 = call i64 @time(i64* null) #3, !dbg !1596
  %72 = call i8* @format_get_line_start(%struct.THEME_REC* %69, %struct._TEXT_DEST_REC* %70, i64 %71), !dbg !1597
  store i8* %72, i8** %7, align 8, !dbg !1598
  %73 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !1599
  %74 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %73, i32 0, i32 5, !dbg !1600
  %75 = load i8, i8* %74, align 4, !dbg !1600
  %76 = and i8 %75, 1, !dbg !1600
  %77 = zext i8 %76 to i32, !dbg !1600
  %78 = icmp ne i32 %77, 0, !dbg !1599
  br i1 %78, label %83, label %79, !dbg !1601

; <label>:79:                                     ; preds = %66
  %80 = load i8*, i8** %4, align 8, !dbg !1602
  %81 = load i8*, i8** %7, align 8, !dbg !1603
  %82 = call i8* @format_add_linestart(i8* %80, i8* %81), !dbg !1604
  br label %87, !dbg !1605

; <label>:83:                                     ; preds = %66
  %84 = load i8*, i8** %4, align 8, !dbg !1606
  %85 = load i8*, i8** %7, align 8, !dbg !1607
  %86 = call i8* @format_add_lineend(i8* %84, i8* %85), !dbg !1608
  br label %87, !dbg !1609

; <label>:87:                                     ; preds = %83, %79
  %88 = phi i8* [ %82, %79 ], [ %86, %83 ], !dbg !1610
  store i8* %88, i8** %6, align 8, !dbg !1611
  %89 = load i8*, i8** %7, align 8, !dbg !1612
  call void @g_free(i8* %89), !dbg !1613
  %90 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1614
  %91 = load i8*, i8** %6, align 8, !dbg !1615
  call void @format_send_to_gui(%struct._TEXT_DEST_REC* %90, i8* %91), !dbg !1616
  %92 = load i8*, i8** %6, align 8, !dbg !1617
  call void @g_free(i8* %92), !dbg !1618
  %93 = load i32, i32* @signal_gui_print_text_finished, align 4, !dbg !1619
  %94 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !1620
  %95 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %94, i32 0, i32 0, !dbg !1621
  %96 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %95, align 8, !dbg !1621
  %97 = call i32 (i32, i32, ...) @signal_emit_id(i32 %93, i32 1, %struct._WINDOW_REC* %96), !dbg !1622
  br label %98, !dbg !1623

; <label>:98:                                     ; preds = %87, %26, %19, %12
  ret void, !dbg !1624
}

; Function Attrs: nounwind uwtable
define internal void @sig_gui_dialog(i8*, i8*) #0 !dbg !1625 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1628, metadata !528), !dbg !1629
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1630, metadata !528), !dbg !1631
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1632, metadata !528), !dbg !1633
  %6 = load i8*, i8** %3, align 8, !dbg !1634
  %7 = call i32 @g_ascii_strcasecmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !1636
  %8 = icmp eq i32 %7, 0, !dbg !1637
  br i1 %8, label %9, label %10, !dbg !1638

; <label>:9:                                      ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8, !dbg !1639
  br label %17, !dbg !1640

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !1641
  %12 = call i32 @g_ascii_strcasecmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)), !dbg !1643
  %13 = icmp eq i32 %12, 0, !dbg !1644
  br i1 %13, label %14, label %15, !dbg !1645

; <label>:14:                                     ; preds = %10
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8** %5, align 8, !dbg !1646
  br label %16, !dbg !1647

; <label>:15:                                     ; preds = %10
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8** %5, align 8, !dbg !1648
  br label %16

; <label>:16:                                     ; preds = %15, %14
  br label %17

; <label>:17:                                     ; preds = %16, %9
  %18 = load i8*, i8** %5, align 8, !dbg !1649
  %19 = load i8*, i8** %4, align 8, !dbg !1650
  call void @printtext_multiline(i8* null, i8* null, i32 67108864, i8* %18, i8* %19), !dbg !1651
  ret void, !dbg !1652
}

; Function Attrs: nounwind uwtable
define void @printtext_deinit() #0 !dbg !1653 {
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._TEXT_DEST_REC*, i8*)* @sig_print_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1654
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @sig_gui_dialog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1655
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1656
  ret void, !dbg !1657
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @format_get_level_tag(%struct.THEME_REC*, %struct._TEXT_DEST_REC*) #2

declare i8* @format_add_linestart(i8*, i8*) #2

declare i8* @format_add_lineend(i8*, i8*) #2

declare i8* @strip_codes(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @printtext_get_args(%struct._TEXT_DEST_REC*, i8*, %struct.__va_list_tag*) #0 !dbg !1658 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !1661, metadata !528), !dbg !1662
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1663, metadata !528), !dbg !1664
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1665, metadata !528), !dbg !1666
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1667, metadata !528), !dbg !1668
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1669, metadata !528), !dbg !1670
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1671, metadata !528), !dbg !1672
  %15 = call %struct._GString* @g_string_new(i8* null), !dbg !1673
  store %struct._GString* %15, %struct._GString** %7, align 8, !dbg !1674
  br label %16, !dbg !1675

; <label>:16:                                     ; preds = %205, %3
  %17 = load i8*, i8** %5, align 8, !dbg !1676
  %18 = load i8, i8* %17, align 1, !dbg !1680
  %19 = sext i8 %18 to i32, !dbg !1680
  %20 = icmp ne i32 %19, 0, !dbg !1681
  br i1 %20, label %21, label %208, !dbg !1682

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %5, align 8, !dbg !1683
  %23 = load i8, i8* %22, align 1, !dbg !1686
  %24 = sext i8 %23 to i32, !dbg !1686
  %25 = icmp ne i32 %24, 37, !dbg !1687
  br i1 %25, label %26, label %31, !dbg !1688

; <label>:26:                                     ; preds = %21
  %27 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1689
  %28 = load i8*, i8** %5, align 8, !dbg !1691
  %29 = load i8, i8* %28, align 1, !dbg !1692
  %30 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %27, i8 signext %29), !dbg !1693
  br label %205, !dbg !1694

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %5, align 8, !dbg !1695
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1695
  store i8* %33, i8** %5, align 8, !dbg !1695
  %34 = load i8, i8* %33, align 1, !dbg !1697
  %35 = sext i8 %34 to i32, !dbg !1697
  %36 = icmp eq i32 %35, 0, !dbg !1698
  br i1 %36, label %37, label %38, !dbg !1699

; <label>:37:                                     ; preds = %31
  br label %208, !dbg !1700

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %5, align 8, !dbg !1701
  %40 = load i8, i8* %39, align 1, !dbg !1702
  %41 = sext i8 %40 to i32, !dbg !1702
  switch i32 %41, label %183 [
    i32 115, label %42
    i32 100, label %73
    i32 102, label %94
    i32 117, label %115
    i32 108, label %136
  ], !dbg !1703

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1704, metadata !528), !dbg !1707
  %43 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1708
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0, !dbg !1708
  %45 = load i32, i32* %44, align 8, !dbg !1708
  %46 = icmp ule i32 %45, 40, !dbg !1708
  br i1 %46, label %47, label %53, !dbg !1708

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3, !dbg !1709
  %49 = load i8*, i8** %48, align 8, !dbg !1709
  %50 = getelementptr i8, i8* %49, i32 %45, !dbg !1709
  %51 = bitcast i8* %50 to i8**, !dbg !1709
  %52 = add i32 %45, 8, !dbg !1709
  store i32 %52, i32* %44, align 8, !dbg !1709
  br label %58, !dbg !1709

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2, !dbg !1711
  %55 = load i8*, i8** %54, align 8, !dbg !1711
  %56 = bitcast i8* %55 to i8**, !dbg !1711
  %57 = getelementptr i8, i8* %55, i32 8, !dbg !1711
  store i8* %57, i8** %54, align 8, !dbg !1711
  br label %58, !dbg !1711

; <label>:58:                                     ; preds = %53, %47
  %59 = phi i8** [ %51, %47 ], [ %56, %53 ], !dbg !1713
  %60 = load i8*, i8** %59, align 8, !dbg !1713
  store i8* %60, i8** %10, align 8, !dbg !1715
  %61 = load i8*, i8** %10, align 8, !dbg !1716
  %62 = icmp ne i8* %61, null, !dbg !1716
  br i1 %62, label %63, label %72, !dbg !1718

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %10, align 8, !dbg !1719
  %65 = load i8, i8* %64, align 1, !dbg !1721
  %66 = sext i8 %65 to i32, !dbg !1721
  %67 = icmp ne i32 %66, 0, !dbg !1721
  br i1 %67, label %68, label %72, !dbg !1722

; <label>:68:                                     ; preds = %63
  %69 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1723
  %70 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1725
  %71 = load i8*, i8** %10, align 8, !dbg !1726
  call void @printtext_append_str(%struct._TEXT_DEST_REC* %69, %struct._GString* %70, i8* %71), !dbg !1727
  br label %72, !dbg !1727

; <label>:72:                                     ; preds = %68, %63, %58
  br label %204, !dbg !1728

; <label>:73:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1729, metadata !528), !dbg !1731
  %74 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1732
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 0, !dbg !1732
  %76 = load i32, i32* %75, align 8, !dbg !1732
  %77 = icmp ule i32 %76, 40, !dbg !1732
  br i1 %77, label %78, label %84, !dbg !1732

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 3, !dbg !1733
  %80 = load i8*, i8** %79, align 8, !dbg !1733
  %81 = getelementptr i8, i8* %80, i32 %76, !dbg !1733
  %82 = bitcast i8* %81 to i32*, !dbg !1733
  %83 = add i32 %76, 8, !dbg !1733
  store i32 %83, i32* %75, align 8, !dbg !1733
  br label %89, !dbg !1733

; <label>:84:                                     ; preds = %73
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %74, i32 0, i32 2, !dbg !1735
  %86 = load i8*, i8** %85, align 8, !dbg !1735
  %87 = bitcast i8* %86 to i32*, !dbg !1735
  %88 = getelementptr i8, i8* %86, i32 8, !dbg !1735
  store i8* %88, i8** %85, align 8, !dbg !1735
  br label %89, !dbg !1735

; <label>:89:                                     ; preds = %84, %78
  %90 = phi i32* [ %82, %78 ], [ %87, %84 ], !dbg !1737
  %91 = load i32, i32* %90, align 4, !dbg !1737
  store i32 %91, i32* %11, align 4, !dbg !1739
  %92 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1740
  %93 = load i32, i32* %11, align 4, !dbg !1741
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %93), !dbg !1742
  br label %204, !dbg !1743

; <label>:94:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %12, metadata !1744, metadata !528), !dbg !1746
  %95 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1747
  %96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %95, i32 0, i32 1, !dbg !1747
  %97 = load i32, i32* %96, align 4, !dbg !1747
  %98 = icmp ule i32 %97, 160, !dbg !1747
  br i1 %98, label %99, label %105, !dbg !1747

; <label>:99:                                     ; preds = %94
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %95, i32 0, i32 3, !dbg !1748
  %101 = load i8*, i8** %100, align 8, !dbg !1748
  %102 = getelementptr i8, i8* %101, i32 %97, !dbg !1748
  %103 = bitcast i8* %102 to double*, !dbg !1748
  %104 = add i32 %97, 16, !dbg !1748
  store i32 %104, i32* %96, align 4, !dbg !1748
  br label %110, !dbg !1748

; <label>:105:                                    ; preds = %94
  %106 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %95, i32 0, i32 2, !dbg !1750
  %107 = load i8*, i8** %106, align 8, !dbg !1750
  %108 = bitcast i8* %107 to double*, !dbg !1750
  %109 = getelementptr i8, i8* %107, i32 8, !dbg !1750
  store i8* %109, i8** %106, align 8, !dbg !1750
  br label %110, !dbg !1750

; <label>:110:                                    ; preds = %105, %99
  %111 = phi double* [ %103, %99 ], [ %108, %105 ], !dbg !1752
  %112 = load double, double* %111, align 8, !dbg !1752
  store double %112, double* %12, align 8, !dbg !1754
  %113 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1755
  %114 = load double, double* %12, align 8, !dbg !1756
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), double %114), !dbg !1757
  br label %204, !dbg !1758

; <label>:115:                                    ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1759, metadata !528), !dbg !1761
  %116 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1762
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 0, !dbg !1762
  %118 = load i32, i32* %117, align 8, !dbg !1762
  %119 = icmp ule i32 %118, 40, !dbg !1762
  br i1 %119, label %120, label %126, !dbg !1762

; <label>:120:                                    ; preds = %115
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 3, !dbg !1763
  %122 = load i8*, i8** %121, align 8, !dbg !1763
  %123 = getelementptr i8, i8* %122, i32 %118, !dbg !1763
  %124 = bitcast i8* %123 to i32*, !dbg !1763
  %125 = add i32 %118, 8, !dbg !1763
  store i32 %125, i32* %117, align 8, !dbg !1763
  br label %131, !dbg !1763

; <label>:126:                                    ; preds = %115
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 2, !dbg !1765
  %128 = load i8*, i8** %127, align 8, !dbg !1765
  %129 = bitcast i8* %128 to i32*, !dbg !1765
  %130 = getelementptr i8, i8* %128, i32 8, !dbg !1765
  store i8* %130, i8** %127, align 8, !dbg !1765
  br label %131, !dbg !1765

; <label>:131:                                    ; preds = %126, %120
  %132 = phi i32* [ %124, %120 ], [ %129, %126 ], !dbg !1767
  %133 = load i32, i32* %132, align 4, !dbg !1767
  store i32 %133, i32* %13, align 4, !dbg !1761
  %134 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1769
  %135 = load i32, i32* %13, align 4, !dbg !1770
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %135), !dbg !1771
  br label %204, !dbg !1772

; <label>:136:                                    ; preds = %38
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1773, metadata !528), !dbg !1775
  %137 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1776
  %138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %137, i32 0, i32 0, !dbg !1776
  %139 = load i32, i32* %138, align 8, !dbg !1776
  %140 = icmp ule i32 %139, 40, !dbg !1776
  br i1 %140, label %141, label %147, !dbg !1776

; <label>:141:                                    ; preds = %136
  %142 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %137, i32 0, i32 3, !dbg !1777
  %143 = load i8*, i8** %142, align 8, !dbg !1777
  %144 = getelementptr i8, i8* %143, i32 %139, !dbg !1777
  %145 = bitcast i8* %144 to i64*, !dbg !1777
  %146 = add i32 %139, 8, !dbg !1777
  store i32 %146, i32* %138, align 8, !dbg !1777
  br label %152, !dbg !1777

; <label>:147:                                    ; preds = %136
  %148 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %137, i32 0, i32 2, !dbg !1779
  %149 = load i8*, i8** %148, align 8, !dbg !1779
  %150 = bitcast i8* %149 to i64*, !dbg !1779
  %151 = getelementptr i8, i8* %149, i32 8, !dbg !1779
  store i8* %151, i8** %148, align 8, !dbg !1779
  br label %152, !dbg !1779

; <label>:152:                                    ; preds = %147, %141
  %153 = phi i64* [ %145, %141 ], [ %150, %147 ], !dbg !1781
  %154 = load i64, i64* %153, align 8, !dbg !1781
  store i64 %154, i64* %14, align 8, !dbg !1783
  %155 = load i8*, i8** %5, align 8, !dbg !1784
  %156 = getelementptr inbounds i8, i8* %155, i32 1, !dbg !1784
  store i8* %156, i8** %5, align 8, !dbg !1784
  %157 = load i8, i8* %156, align 1, !dbg !1786
  %158 = sext i8 %157 to i32, !dbg !1786
  %159 = icmp ne i32 %158, 100, !dbg !1787
  br i1 %159, label %160, label %170, !dbg !1788

; <label>:160:                                    ; preds = %152
  %161 = load i8*, i8** %5, align 8, !dbg !1789
  %162 = load i8, i8* %161, align 1, !dbg !1791
  %163 = sext i8 %162 to i32, !dbg !1791
  %164 = icmp ne i32 %163, 117, !dbg !1792
  br i1 %164, label %165, label %170, !dbg !1793

; <label>:165:                                    ; preds = %160
  %166 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1794
  %167 = load i64, i64* %14, align 8, !dbg !1796
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i64 %167), !dbg !1797
  %168 = load i8*, i8** %5, align 8, !dbg !1798
  %169 = getelementptr inbounds i8, i8* %168, i32 -1, !dbg !1798
  store i8* %169, i8** %5, align 8, !dbg !1798
  br label %182, !dbg !1799

; <label>:170:                                    ; preds = %160, %152
  %171 = load i8*, i8** %5, align 8, !dbg !1800
  %172 = load i8, i8* %171, align 1, !dbg !1803
  %173 = sext i8 %172 to i32, !dbg !1803
  %174 = icmp eq i32 %173, 100, !dbg !1804
  br i1 %174, label %175, label %178, !dbg !1805

; <label>:175:                                    ; preds = %170
  %176 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1806
  %177 = load i64, i64* %14, align 8, !dbg !1807
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i64 %177), !dbg !1808
  br label %181, !dbg !1808

; <label>:178:                                    ; preds = %170
  %179 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1809
  %180 = load i64, i64* %14, align 8, !dbg !1810
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i64 %180), !dbg !1811
  br label %181

; <label>:181:                                    ; preds = %178, %175
  br label %182

; <label>:182:                                    ; preds = %181, %165
  br label %204, !dbg !1812

; <label>:183:                                    ; preds = %38
  %184 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1813
  %185 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1814
  %186 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %185, i32 0, i32 9, !dbg !1815
  %187 = call i32 @format_expand_styles(%struct._GString* %184, i8** %5, i32* %186), !dbg !1816
  store i32 %187, i32* %9, align 4, !dbg !1817
  %188 = load i32, i32* %9, align 4, !dbg !1818
  %189 = icmp ne i32 %188, 0, !dbg !1818
  br i1 %189, label %197, label %190, !dbg !1820

; <label>:190:                                    ; preds = %183
  %191 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1821
  %192 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %191, i8 signext 37), !dbg !1823
  %193 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1824
  %194 = load i8*, i8** %5, align 8, !dbg !1825
  %195 = load i8, i8* %194, align 1, !dbg !1826
  %196 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %193, i8 signext %195), !dbg !1827
  br label %203, !dbg !1828

; <label>:197:                                    ; preds = %183
  %198 = load i32, i32* %9, align 4, !dbg !1829
  %199 = sub nsw i32 %198, 1, !dbg !1831
  %200 = load i8*, i8** %5, align 8, !dbg !1832
  %201 = sext i32 %199 to i64, !dbg !1832
  %202 = getelementptr inbounds i8, i8* %200, i64 %201, !dbg !1832
  store i8* %202, i8** %5, align 8, !dbg !1832
  br label %203

; <label>:203:                                    ; preds = %197, %190
  br label %204, !dbg !1833

; <label>:204:                                    ; preds = %203, %182, %131, %110, %89, %72
  br label %205, !dbg !1834

; <label>:205:                                    ; preds = %204, %26
  %206 = load i8*, i8** %5, align 8, !dbg !1835
  %207 = getelementptr inbounds i8, i8* %206, i32 1, !dbg !1835
  store i8* %207, i8** %5, align 8, !dbg !1835
  br label %16, !dbg !1837, !llvm.loop !1838

; <label>:208:                                    ; preds = %37, %16
  %209 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1839
  %210 = getelementptr inbounds %struct._GString, %struct._GString* %209, i32 0, i32 0, !dbg !1840
  %211 = load i8*, i8** %210, align 8, !dbg !1840
  store i8* %211, i8** %8, align 8, !dbg !1841
  %212 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1842
  %213 = call i8* @g_string_free(%struct._GString* %212, i32 0), !dbg !1843
  %214 = load i8*, i8** %8, align 8, !dbg !1844
  ret i8* %214, !dbg !1845
}

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #5 !dbg !1846 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1849, metadata !528), !dbg !1850
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1851, metadata !528), !dbg !1852
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1853
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1855
  %7 = load i64, i64* %6, align 8, !dbg !1855
  %8 = add i64 %7, 1, !dbg !1856
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1857
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1858
  %11 = load i64, i64* %10, align 8, !dbg !1858
  %12 = icmp ult i64 %8, %11, !dbg !1859
  br i1 %12, label %13, label %30, !dbg !1860

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1861
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1863
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1864
  %17 = load i64, i64* %16, align 8, !dbg !1865
  %18 = add i64 %17, 1, !dbg !1865
  store i64 %18, i64* %16, align 8, !dbg !1865
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1866
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1867
  %21 = load i8*, i8** %20, align 8, !dbg !1867
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1866
  store i8 %14, i8* %22, align 1, !dbg !1868
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1869
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1870
  %25 = load i64, i64* %24, align 8, !dbg !1870
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1871
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1872
  %28 = load i8*, i8** %27, align 8, !dbg !1872
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1871
  store i8 0, i8* %29, align 1, !dbg !1873
  br label %34, !dbg !1874

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1875
  %32 = load i8, i8* %4, align 1, !dbg !1876
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1877
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1878
  ret %struct._GString* %35, !dbg !1879
}

; Function Attrs: nounwind uwtable
define internal void @printtext_append_str(%struct._TEXT_DEST_REC*, %struct._GString*, i8*) #0 !dbg !1880 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !1883, metadata !528), !dbg !1884
  store %struct._GString* %1, %struct._GString** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1885, metadata !528), !dbg !1886
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1887, metadata !528), !dbg !1888
  br label %7, !dbg !1889

; <label>:7:                                      ; preds = %29, %3
  %8 = load i8*, i8** %6, align 8, !dbg !1890
  %9 = load i8, i8* %8, align 1, !dbg !1892
  %10 = sext i8 %9 to i32, !dbg !1892
  %11 = icmp ne i32 %10, 0, !dbg !1893
  br i1 %11, label %12, label %32, !dbg !1894

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** %6, align 8, !dbg !1895
  %14 = load i8, i8* %13, align 1, !dbg !1898
  %15 = sext i8 %14 to i32, !dbg !1898
  %16 = icmp ne i32 %15, 10, !dbg !1899
  br i1 %16, label %17, label %22, !dbg !1900

; <label>:17:                                     ; preds = %12
  %18 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1901
  %19 = load i8*, i8** %6, align 8, !dbg !1902
  %20 = load i8, i8* %19, align 1, !dbg !1903
  %21 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %18, i8 signext %20), !dbg !1904
  br label %29, !dbg !1904

; <label>:22:                                     ; preds = %12
  %23 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !1905
  %24 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1907
  %25 = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 0, !dbg !1908
  %26 = load i8*, i8** %25, align 8, !dbg !1908
  call void @print_line(%struct._TEXT_DEST_REC* %23, i8* %26), !dbg !1909
  %27 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1910
  %28 = call %struct._GString* @g_string_truncate(%struct._GString* %27, i64 0), !dbg !1911
  br label %29

; <label>:29:                                     ; preds = %22, %17
  %30 = load i8*, i8** %6, align 8, !dbg !1912
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !1912
  store i8* %31, i8** %6, align 8, !dbg !1912
  br label %7, !dbg !1913, !llvm.loop !1915

; <label>:32:                                     ; preds = %7
  ret void, !dbg !1916
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare i32 @format_expand_styles(%struct._GString*, i8**, i32*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i32 @settings_get_level(i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @msg_beep_check(%struct._TEXT_DEST_REC*) #0 !dbg !1917 {
  %2 = alloca %struct._TEXT_DEST_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %2, metadata !1920, metadata !528), !dbg !1921
  %3 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1922
  %4 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %3, i32 0, i32 6, !dbg !1924
  %5 = load i32, i32* %4, align 8, !dbg !1924
  %6 = icmp ne i32 %5, 0, !dbg !1925
  br i1 %6, label %7, label %49, !dbg !1926

; <label>:7:                                      ; preds = %1
  %8 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1927
  %9 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %8, i32 0, i32 6, !dbg !1929
  %10 = load i32, i32* %9, align 8, !dbg !1929
  %11 = and i32 %10, 33554432, !dbg !1930
  %12 = icmp eq i32 %11, 0, !dbg !1931
  br i1 %12, label %13, label %49, !dbg !1932

; <label>:13:                                     ; preds = %7
  %14 = load i32, i32* @beep_msg_level, align 4, !dbg !1933
  %15 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1934
  %16 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %15, i32 0, i32 6, !dbg !1935
  %17 = load i32, i32* %16, align 8, !dbg !1935
  %18 = and i32 %14, %17, !dbg !1936
  %19 = icmp ne i32 %18, 0, !dbg !1936
  br i1 %19, label %20, label %49, !dbg !1937

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* @beep_when_away, align 4, !dbg !1938
  %22 = icmp ne i32 %21, 0, !dbg !1938
  br i1 %22, label %38, label %23, !dbg !1939

; <label>:23:                                     ; preds = %20
  %24 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1940
  %25 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %24, i32 0, i32 1, !dbg !1941
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %25, align 8, !dbg !1941
  %27 = icmp ne %struct._SERVER_REC* %26, null, !dbg !1942
  br i1 %27, label %28, label %49, !dbg !1943

; <label>:28:                                     ; preds = %23
  %29 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1944
  %30 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %29, i32 0, i32 1, !dbg !1945
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %30, align 8, !dbg !1945
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 19, !dbg !1946
  %33 = load i8, i8* %32, align 8, !dbg !1946
  %34 = lshr i8 %33, 1, !dbg !1946
  %35 = and i8 %34, 1, !dbg !1946
  %36 = zext i8 %35 to i32, !dbg !1946
  %37 = icmp ne i32 %36, 0, !dbg !1944
  br i1 %37, label %49, label %38, !dbg !1947

; <label>:38:                                     ; preds = %28, %20
  %39 = load i32, i32* @beep_when_window_active, align 4, !dbg !1948
  %40 = icmp ne i32 %39, 0, !dbg !1948
  br i1 %40, label %47, label %41, !dbg !1949

; <label>:41:                                     ; preds = %38
  %42 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %2, align 8, !dbg !1950
  %43 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %42, i32 0, i32 0, !dbg !1951
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %43, align 8, !dbg !1951
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1952
  %46 = icmp ne %struct._WINDOW_REC* %44, %45, !dbg !1953
  br i1 %46, label %47, label %49, !dbg !1954

; <label>:47:                                     ; preds = %41, %38
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0), !dbg !1956
  br label %49, !dbg !1958

; <label>:49:                                     ; preds = %47, %41, %28, %23, %13, %7, %1
  ret void, !dbg !1959
}

; Function Attrs: nounwind
declare i64 @time(i64*) #6

declare i8* @format_get_line_start(%struct.THEME_REC*, %struct._TEXT_DEST_REC*, i64) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99}
!llvm.ident = !{!100}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66, globals: !88)
!1 = !DIFile(filename: "line254-printtext.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !{!67, !68, !70, !72, !75, !77, !84, !85, !86, !87, !71}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !69, line: 77, baseType: !67)
!69 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !69, line: 48, baseType: !71)
!71 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !69, line: 46, baseType: !74)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !78, line: 9, baseType: !79)
!78 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !82, !82, !82, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!85 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!86 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !{!89, !91, !92, !93, !94, !95, !96, !97}
!89 = distinct !DIGlobalVariable(name: "signal_gui_print_text_finished", scope: !0, file: !90, line: 37, type: !85, isLocal: true, isDefinition: true, variable: i32* @signal_gui_print_text_finished)
!90 = !DIFile(filename: "printtext.c", directory: "/home/lichi/Desktop/irssi/task1")
!91 = distinct !DIGlobalVariable(name: "signal_print_starting", scope: !0, file: !90, line: 38, type: !85, isLocal: true, isDefinition: true, variable: i32* @signal_print_starting)
!92 = distinct !DIGlobalVariable(name: "signal_print_text", scope: !0, file: !90, line: 39, type: !85, isLocal: true, isDefinition: true, variable: i32* @signal_print_text)
!93 = distinct !DIGlobalVariable(name: "signal_print_format", scope: !0, file: !90, line: 40, type: !85, isLocal: true, isDefinition: true, variable: i32* @signal_print_format)
!94 = distinct !DIGlobalVariable(name: "sending_print_starting", scope: !0, file: !90, line: 42, type: !85, isLocal: true, isDefinition: true, variable: i32* @sending_print_starting)
!95 = distinct !DIGlobalVariable(name: "beep_msg_level", scope: !0, file: !90, line: 35, type: !85, isLocal: true, isDefinition: true, variable: i32* @beep_msg_level)
!96 = distinct !DIGlobalVariable(name: "beep_when_away", scope: !0, file: !90, line: 35, type: !85, isLocal: true, isDefinition: true, variable: i32* @beep_when_away)
!97 = distinct !DIGlobalVariable(name: "beep_when_window_active", scope: !0, file: !90, line: 35, type: !85, isLocal: true, isDefinition: true, variable: i32* @beep_when_window_active)
!98 = !{i32 2, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!101 = distinct !DISubprogram(name: "printformat_module_dest_args", scope: !90, file: !90, line: 46, type: !102, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !75, !104, !85, !519}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !106, line: 50, size: 576, align: 64, elements: !108)
!108 = !{!109, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !107, file: !106, line: 51, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !112, line: 117, baseType: !113)
!112 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !114, line: 28, size: 1280, align: 64, elements: !115)
!114 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !{!116, !117, !118, !119, !120, !128, !475, !476, !477, !478, !479, !480, !481, !482, !483, !502, !503, !504, !505, !506, !507, !508, !509}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !113, file: !114, line: 29, baseType: !85, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !114, line: 30, baseType: !84, size: 64, align: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !113, file: !114, line: 32, baseType: !85, size: 32, align: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !113, file: !114, line: 32, baseType: !85, size: 32, align: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !113, file: !114, line: 34, baseType: !121, size: 64, align: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !123, line: 37, baseType: !124)
!123 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !123, line: 39, size: 128, align: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !124, file: !123, line: 41, baseType: !68, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !123, line: 42, baseType: !121, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !113, file: !114, line: 35, baseType: !129, size: 64, align: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !112, line: 108, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !132, line: 5, size: 704, align: 64, elements: !133)
!132 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!133 = !{!134, !136, !137, !142, !143, !462, !463, !464, !465, !466, !467, !471}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !135, line: 3, baseType: !85, size: 32, align: 32)
!135 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !131, file: !135, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !131, file: !135, line: 5, baseType: !138, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !140, line: 37, baseType: !141)
!140 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !140, line: 37, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !131, file: !135, line: 7, baseType: !67, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !131, file: !135, line: 8, baseType: !144, size: 64, align: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !112, line: 107, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !147, line: 30, size: 2240, align: 64, elements: !148)
!147 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = !{!149, !151, !152, !153, !372, !377, !378, !379, !380, !381, !382, !383, !384, !385, !389, !390, !394, !395, !396, !400, !401, !402, !403, !404, !405, !406, !407, !408, !414, !415, !416, !417, !418, !422, !426, !430, !434, !438, !443, !450, !457, !461}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !150, line: 3, baseType: !85, size: 32, align: 32)
!150 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !146, file: !150, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !146, file: !150, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !146, file: !150, line: 8, baseType: !154, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !112, line: 113, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !147, line: 25, size: 1920, align: 64, elements: !157)
!157 = !{!158, !160, !161, !162, !163, !164, !165, !166, !167, !169, !170, !171, !172, !173, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !159, line: 3, baseType: !85, size: 32, align: 32)
!159 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !156, file: !159, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !156, file: !159, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !156, file: !159, line: 9, baseType: !84, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !156, file: !159, line: 10, baseType: !85, size: 32, align: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !156, file: !159, line: 11, baseType: !84, size: 64, align: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !156, file: !159, line: 11, baseType: !84, size: 64, align: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !156, file: !159, line: 11, baseType: !84, size: 64, align: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !156, file: !159, line: 13, baseType: !168, size: 16, align: 16, offset: 448)
!168 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !156, file: !159, line: 14, baseType: !84, size: 64, align: 64, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !156, file: !159, line: 15, baseType: !84, size: 64, align: 64, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !156, file: !159, line: 16, baseType: !85, size: 32, align: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !156, file: !159, line: 17, baseType: !84, size: 64, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !156, file: !159, line: 19, baseType: !174, size: 64, align: 64, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !112, line: 99, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !112, line: 99, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !156, file: !159, line: 19, baseType: !174, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !156, file: !159, line: 21, baseType: !84, size: 64, align: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !156, file: !159, line: 22, baseType: !84, size: 64, align: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !156, file: !159, line: 23, baseType: !84, size: 64, align: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !156, file: !159, line: 24, baseType: !84, size: 64, align: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !156, file: !159, line: 26, baseType: !84, size: 64, align: 64, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !156, file: !159, line: 27, baseType: !84, size: 64, align: 64, offset: 1216)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !156, file: !159, line: 28, baseType: !84, size: 64, align: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !156, file: !159, line: 29, baseType: !84, size: 64, align: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !156, file: !159, line: 30, baseType: !84, size: 64, align: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !156, file: !159, line: 31, baseType: !84, size: 64, align: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !156, file: !159, line: 32, baseType: !84, size: 64, align: 64, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !156, file: !159, line: 33, baseType: !84, size: 64, align: 64, offset: 1600)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !156, file: !159, line: 35, baseType: !191, size: 64, align: 64, offset: 1664)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !194)
!194 = !{!195, !197, !329, !330, !335, !336, !337, !338, !339, !348, !349, !350, !354, !355, !356, !357, !358, !359, !360, !361}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !193, file: !4, line: 100, baseType: !196, size: 32, align: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !69, line: 49, baseType: !85)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !193, file: !4, line: 101, baseType: !198, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !201)
!201 = !{!202, !223, !229, !235, !239, !316, !320, !325}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !200, file: !4, line: 133, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !191, !72, !207, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !208, line: 66, baseType: !209)
!208 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!209 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !214, line: 42, baseType: !215)
!214 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !214, line: 44, size: 128, align: 64, elements: !216)
!216 = !{!217, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !215, file: !214, line: 46, baseType: !218, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !219, line: 36, baseType: !220)
!219 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !208, line: 45, baseType: !87)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !215, file: !214, line: 47, baseType: !196, size: 32, align: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !215, file: !214, line: 48, baseType: !72, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !200, file: !4, line: 138, baseType: !224, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!206, !191, !227, !207, !210, !211}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !200, file: !4, line: 143, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!206, !191, !233, !234, !211}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !208, line: 51, baseType: !71)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !200, file: !4, line: 147, baseType: !236, size: 64, align: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!206, !191, !211}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !200, file: !4, line: 149, baseType: !240, size: 64, align: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !191, !315}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !246)
!246 = !{!247, !248, !269, !298, !300, !304, !305, !306, !307, !308, !309, !310, !311}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !245, file: !16, line: 174, baseType: !68, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !245, file: !16, line: 175, baseType: !249, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !252)
!252 = !{!253, !257, !258}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !251, file: !16, line: 198, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !68}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !251, file: !16, line: 199, baseType: !254, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !251, file: !16, line: 200, baseType: !259, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !68, !243, !262, !268}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !68}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !69, line: 50, baseType: !196)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !245, file: !16, line: 177, baseType: !270, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !274)
!274 = !{!275, !280, !284, !288, !292, !293}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !273, file: !16, line: 216, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!267, !243, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !273, file: !16, line: 218, baseType: !281, size: 64, align: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!267, !243}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !273, file: !16, line: 219, baseType: !285, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!267, !243, !263, !68}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !273, file: !16, line: 222, baseType: !289, size: 64, align: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !243}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !273, file: !16, line: 226, baseType: !263, size: 64, align: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !273, file: !16, line: 227, baseType: !294, size: 64, align: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !245, file: !16, line: 178, baseType: !299, size: 32, align: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !69, line: 55, baseType: !87)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !245, file: !16, line: 180, baseType: !301, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !303)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !245, file: !16, line: 182, baseType: !196, size: 32, align: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !16, line: 183, baseType: !299, size: 32, align: 32, offset: 352)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !245, file: !16, line: 184, baseType: !299, size: 32, align: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !245, file: !16, line: 186, baseType: !121, size: 64, align: 64, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !16, line: 188, baseType: !243, size: 64, align: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !16, line: 189, baseType: !243, size: 64, align: 64, offset: 576)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !16, line: 191, baseType: !84, size: 64, align: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !245, file: !16, line: 193, baseType: !312, size: 64, align: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !314)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !200, file: !4, line: 151, baseType: !317, size: 64, align: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !191}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !200, file: !4, line: 152, baseType: !321, size: 64, align: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!206, !191, !324, !211}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !200, file: !4, line: 155, baseType: !326, size: 64, align: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!324, !191}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !193, file: !4, line: 103, baseType: !72, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !193, file: !4, line: 104, baseType: !331, size: 64, align: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !332, line: 77, baseType: !333)
!332 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !332, line: 77, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !193, file: !4, line: 105, baseType: !331, size: 64, align: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !193, file: !4, line: 106, baseType: !72, size: 64, align: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !193, file: !4, line: 107, baseType: !299, size: 32, align: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !193, file: !4, line: 109, baseType: !207, size: 64, align: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !193, file: !4, line: 110, baseType: !340, size: 64, align: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !342, line: 39, baseType: !343)
!342 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !342, line: 41, size: 192, align: 64, elements: !344)
!344 = !{!345, !346, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !343, file: !342, line: 43, baseType: !72, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !343, file: !342, line: 44, baseType: !207, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !343, file: !342, line: 45, baseType: !207, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !193, file: !4, line: 111, baseType: !340, size: 64, align: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !193, file: !4, line: 112, baseType: !340, size: 64, align: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !193, file: !4, line: 113, baseType: !351, size: 48, align: 8, offset: 704)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 48, align: 8, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 6)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !193, file: !4, line: 117, baseType: !299, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !193, file: !4, line: 118, baseType: !299, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !193, file: !4, line: 119, baseType: !299, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !193, file: !4, line: 120, baseType: !299, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !193, file: !4, line: 121, baseType: !299, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !193, file: !4, line: 122, baseType: !299, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !193, file: !4, line: 124, baseType: !68, size: 64, align: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !193, file: !4, line: 125, baseType: !68, size: 64, align: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !156, file: !159, line: 38, baseType: !87, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !156, file: !159, line: 39, baseType: !87, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !156, file: !159, line: 40, baseType: !87, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !156, file: !159, line: 41, baseType: !87, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !156, file: !159, line: 42, baseType: !87, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !156, file: !159, line: 43, baseType: !87, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !156, file: !159, line: 44, baseType: !87, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !156, file: !159, line: 45, baseType: !87, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !156, file: !159, line: 46, baseType: !84, size: 64, align: 64, offset: 1792)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !156, file: !159, line: 47, baseType: !84, size: 64, align: 64, offset: 1856)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !146, file: !150, line: 9, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !374, line: 75, baseType: !375)
!374 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !376, line: 139, baseType: !71)
!376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!377 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !146, file: !150, line: 10, baseType: !373, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !146, file: !150, line: 12, baseType: !84, size: 64, align: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !146, file: !150, line: 13, baseType: !84, size: 64, align: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !146, file: !150, line: 15, baseType: !87, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !146, file: !150, line: 16, baseType: !87, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !146, file: !150, line: 17, baseType: !87, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !146, file: !150, line: 18, baseType: !87, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !146, file: !150, line: 19, baseType: !87, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !146, file: !150, line: 21, baseType: !386, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !112, line: 102, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !112, line: 102, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !146, file: !150, line: 22, baseType: !85, size: 32, align: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !146, file: !150, line: 25, baseType: !391, size: 128, align: 64, offset: 640)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, align: 64, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 2)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !146, file: !150, line: 26, baseType: !85, size: 32, align: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !146, file: !150, line: 27, baseType: !85, size: 32, align: 32, offset: 800)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !146, file: !150, line: 29, baseType: !397, size: 64, align: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !112, line: 103, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !112, line: 103, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !146, file: !150, line: 30, baseType: !138, size: 64, align: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !146, file: !150, line: 32, baseType: !84, size: 64, align: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !146, file: !150, line: 33, baseType: !84, size: 64, align: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !146, file: !150, line: 34, baseType: !84, size: 64, align: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !146, file: !150, line: 35, baseType: !87, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !146, file: !150, line: 36, baseType: !87, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !146, file: !150, line: 37, baseType: !87, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !146, file: !150, line: 38, baseType: !87, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !146, file: !150, line: 40, baseType: !409, size: 128, align: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !69, line: 504, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !69, line: 506, size: 128, align: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !410, file: !69, line: 508, baseType: !70, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !410, file: !69, line: 509, baseType: !70, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !146, file: !150, line: 41, baseType: !373, size: 64, align: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !146, file: !150, line: 42, baseType: !85, size: 32, align: 32, offset: 1408)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !146, file: !150, line: 44, baseType: !121, size: 64, align: 64, offset: 1472)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !146, file: !150, line: 45, baseType: !121, size: 64, align: 64, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !146, file: !150, line: 53, baseType: !419, size: 64, align: 64, offset: 1600)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !144, !75, !85}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !146, file: !150, line: 55, baseType: !423, size: 64, align: 64, offset: 1664)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!85, !144, !74}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !146, file: !150, line: 57, baseType: !427, size: 64, align: 64, offset: 1728)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!85, !144, !75}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !146, file: !150, line: 60, baseType: !431, size: 64, align: 64, offset: 1792)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!75, !144}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !146, file: !150, line: 62, baseType: !435, size: 64, align: 64, offset: 1856)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !144, !75, !75, !85}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !146, file: !150, line: 65, baseType: !439, size: 64, align: 64, offset: 1920)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442, !144, !75, !75}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !146, file: !150, line: 69, baseType: !444, size: 64, align: 64, offset: 1984)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !144, !75}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !112, line: 109, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !112, line: 109, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !146, file: !150, line: 70, baseType: !451, size: 64, align: 64, offset: 2048)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !144, !75}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !112, line: 110, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !112, line: 110, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !146, file: !150, line: 71, baseType: !458, size: 64, align: 64, offset: 2112)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!85, !75, !75}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !146, file: !150, line: 73, baseType: !458, size: 64, align: 64, offset: 2176)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !131, file: !135, line: 9, baseType: !84, size: 64, align: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !135, line: 10, baseType: !84, size: 64, align: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !131, file: !135, line: 11, baseType: !373, size: 64, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !131, file: !135, line: 12, baseType: !85, size: 32, align: 32, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !131, file: !135, line: 13, baseType: !84, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !131, file: !135, line: 15, baseType: !468, size: 64, align: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !129}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !131, file: !135, line: 17, baseType: !472, size: 64, align: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!75, !129}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !113, file: !114, line: 36, baseType: !144, size: 64, align: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !113, file: !114, line: 37, baseType: !144, size: 64, align: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !113, file: !114, line: 38, baseType: !84, size: 64, align: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !113, file: !114, line: 40, baseType: !85, size: 32, align: 32, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !113, file: !114, line: 41, baseType: !121, size: 64, align: 64, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !113, file: !114, line: 43, baseType: !87, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !113, file: !114, line: 44, baseType: !87, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !113, file: !114, line: 45, baseType: !87, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !113, file: !114, line: 48, baseType: !484, size: 64, align: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !486, line: 14, baseType: !487)
!486 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 6, size: 256, align: 64, elements: !488)
!488 = !{!489, !490, !499, !500, !501}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !486, line: 7, baseType: !84, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !487, file: !486, line: 9, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !493, line: 37, baseType: !494)
!493 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !493, line: 39, size: 192, align: 64, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !494, file: !493, line: 41, baseType: !68, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !493, line: 42, baseType: !491, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !494, file: !493, line: 43, baseType: !491, size: 64, align: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !487, file: !486, line: 10, baseType: !85, size: 32, align: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !487, file: !486, line: 12, baseType: !85, size: 32, align: 32, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !487, file: !486, line: 13, baseType: !85, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !113, file: !114, line: 49, baseType: !84, size: 64, align: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !113, file: !114, line: 51, baseType: !85, size: 32, align: 32, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !113, file: !114, line: 52, baseType: !84, size: 64, align: 64, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !113, file: !114, line: 54, baseType: !373, size: 64, align: 64, offset: 960)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !113, file: !114, line: 55, baseType: !373, size: 64, align: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !113, file: !114, line: 57, baseType: !84, size: 64, align: 64, offset: 1088)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !113, file: !114, line: 58, baseType: !67, size: 64, align: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !113, file: !114, line: 60, baseType: !67, size: 64, align: 64, offset: 1216)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !107, file: !106, line: 52, baseType: !144, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !107, file: !106, line: 53, baseType: !75, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !107, file: !106, line: 54, baseType: !75, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !107, file: !106, line: 55, baseType: !75, size: 64, align: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !107, file: !106, line: 56, baseType: !75, size: 64, align: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !107, file: !106, line: 57, baseType: !85, size: 32, align: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !107, file: !106, line: 59, baseType: !85, size: 32, align: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !107, file: !106, line: 60, baseType: !84, size: 64, align: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !106, line: 61, baseType: !85, size: 32, align: 32, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !521)
!521 = !{!522, !523, !524, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !520, file: !1, baseType: !87, size: 32, align: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !520, file: !1, baseType: !87, size: 32, align: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !520, file: !1, baseType: !67, size: 64, align: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !520, file: !1, baseType: !67, size: 64, align: 64, offset: 128)
!526 = !{}
!527 = !DILocalVariable(name: "module", arg: 1, scope: !101, file: !90, line: 46, type: !75)
!528 = !DIExpression()
!529 = !DILocation(line: 46, column: 47, scope: !101)
!530 = !DILocalVariable(name: "dest", arg: 2, scope: !101, file: !90, line: 46, type: !104)
!531 = !DILocation(line: 46, column: 70, scope: !101)
!532 = !DILocalVariable(name: "formatnum", arg: 3, scope: !101, file: !90, line: 47, type: !85)
!533 = !DILocation(line: 47, column: 11, scope: !101)
!534 = !DILocalVariable(name: "va", arg: 4, scope: !101, file: !90, line: 47, type: !519)
!535 = !DILocation(line: 47, column: 30, scope: !101)
!536 = !DILocalVariable(name: "arglist", scope: !101, file: !90, line: 49, type: !537)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 640, align: 64, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 10)
!540 = !DILocation(line: 49, column: 8, scope: !101)
!541 = !DILocalVariable(name: "buffer", scope: !101, file: !90, line: 50, type: !542)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1600, align: 8, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 200)
!545 = !DILocation(line: 50, column: 7, scope: !101)
!546 = !DILocalVariable(name: "formats", scope: !101, file: !90, line: 51, type: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "FORMAT_REC", file: !549, line: 35, baseType: !550)
!549 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FORMAT_REC", file: !106, line: 30, size: 512, align: 64, elements: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !550, file: !106, line: 31, baseType: !84, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !550, file: !106, line: 32, baseType: !84, size: 64, align: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !550, file: !106, line: 34, baseType: !85, size: 32, align: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "paramtypes", scope: !550, file: !106, line: 35, baseType: !556, size: 320, align: 32, offset: 160)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 320, align: 32, elements: !538)
!557 = !DILocation(line: 51, column: 14, scope: !101)
!558 = !DILocation(line: 53, column: 32, scope: !101)
!559 = !DILocation(line: 53, column: 49, scope: !101)
!560 = !DILocation(line: 53, column: 12, scope: !101)
!561 = !DILocation(line: 53, column: 10, scope: !101)
!562 = !DILocation(line: 54, column: 22, scope: !101)
!563 = !DILocation(line: 54, column: 35, scope: !101)
!564 = !DILocation(line: 54, column: 27, scope: !101)
!565 = !DILocation(line: 55, column: 8, scope: !101)
!566 = !DILocation(line: 56, column: 8, scope: !101)
!567 = !DILocation(line: 54, column: 2, scope: !101)
!568 = !DILocation(line: 58, column: 35, scope: !101)
!569 = !DILocation(line: 58, column: 43, scope: !101)
!570 = !DILocation(line: 58, column: 49, scope: !101)
!571 = !DILocation(line: 58, column: 60, scope: !101)
!572 = !DILocation(line: 58, column: 2, scope: !101)
!573 = !DILocation(line: 59, column: 1, scope: !101)
!574 = distinct !DISubprogram(name: "printformat_module_dest_charargs", scope: !90, file: !90, line: 61, type: !575, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !75, !104, !85, !442}
!577 = !DILocalVariable(name: "module", arg: 1, scope: !574, file: !90, line: 61, type: !75)
!578 = !DILocation(line: 61, column: 51, scope: !574)
!579 = !DILocalVariable(name: "dest", arg: 2, scope: !574, file: !90, line: 61, type: !104)
!580 = !DILocation(line: 61, column: 74, scope: !574)
!581 = !DILocalVariable(name: "formatnum", arg: 3, scope: !574, file: !90, line: 62, type: !85)
!582 = !DILocation(line: 62, column: 15, scope: !574)
!583 = !DILocalVariable(name: "arglist", arg: 4, scope: !574, file: !90, line: 62, type: !442)
!584 = !DILocation(line: 62, column: 33, scope: !574)
!585 = !DILocalVariable(name: "theme", scope: !574, file: !90, line: 64, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !549, line: 33, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 13, size: 8768, align: 64, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !601, !602, !603}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !588, file: !549, line: 14, baseType: !85, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !588, file: !549, line: 16, baseType: !84, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !549, line: 17, baseType: !84, size: 64, align: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !588, file: !549, line: 18, baseType: !373, size: 64, align: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !588, file: !549, line: 20, baseType: !85, size: 32, align: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !588, file: !549, line: 23, baseType: !87, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !588, file: !549, line: 26, baseType: !138, size: 64, align: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !588, file: !549, line: 28, baseType: !598, size: 8192, align: 32, offset: 384)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 8192, align: 32, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !588, file: !549, line: 29, baseType: !121, size: 64, align: 64, offset: 8576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !588, file: !549, line: 30, baseType: !138, size: 64, align: 64, offset: 8640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !588, file: !549, line: 32, baseType: !67, size: 64, align: 64, offset: 8704)
!604 = !DILocation(line: 64, column: 13, scope: !574)
!605 = !DILocalVariable(name: "str", scope: !574, file: !90, line: 65, type: !84)
!606 = !DILocation(line: 65, column: 8, scope: !574)
!607 = !DILocation(line: 67, column: 11, scope: !574)
!608 = !DILocation(line: 67, column: 17, scope: !574)
!609 = !DILocation(line: 67, column: 24, scope: !574)
!610 = !DILocation(line: 67, column: 9, scope: !574)
!611 = !DILocation(line: 67, column: 13, scope: !612)
!612 = !DILexicalBlockFile(scope: !574, file: !90, discriminator: 1)
!613 = !DILocation(line: 67, column: 19, scope: !612)
!614 = !DILocation(line: 67, column: 28, scope: !612)
!615 = !DILocation(line: 67, column: 34, scope: !612)
!616 = !DILocation(line: 67, column: 11, scope: !612)
!617 = !DILocation(line: 67, column: 12, scope: !618)
!618 = !DILexicalBlockFile(scope: !574, file: !90, discriminator: 2)
!619 = !DILocation(line: 67, column: 18, scope: !618)
!620 = !DILocation(line: 67, column: 27, scope: !618)
!621 = !DILocation(line: 67, column: 11, scope: !618)
!622 = !DILocation(line: 67, column: 35, scope: !623)
!623 = !DILexicalBlockFile(scope: !574, file: !90, discriminator: 3)
!624 = !DILocation(line: 67, column: 11, scope: !623)
!625 = !DILocation(line: 67, column: 11, scope: !626)
!626 = !DILexicalBlockFile(scope: !574, file: !90, discriminator: 4)
!627 = !DILocation(line: 67, column: 10, scope: !626)
!628 = !DILocation(line: 67, column: 8, scope: !626)
!629 = !DILocation(line: 69, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !574, file: !90, line: 69, column: 6)
!631 = !DILocation(line: 69, column: 6, scope: !574)
!632 = !DILocation(line: 70, column: 26, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !90, line: 69, column: 31)
!634 = !DILocation(line: 71, column: 18, scope: !633)
!635 = !DILocation(line: 71, column: 44, scope: !633)
!636 = !DILocation(line: 71, column: 3, scope: !633)
!637 = !DILocation(line: 72, column: 40, scope: !633)
!638 = !DILocation(line: 73, column: 2, scope: !633)
!639 = !DILocation(line: 75, column: 17, scope: !574)
!640 = !DILocation(line: 75, column: 41, scope: !574)
!641 = !DILocation(line: 75, column: 48, scope: !574)
!642 = !DILocation(line: 76, column: 10, scope: !574)
!643 = !DILocation(line: 76, column: 37, scope: !574)
!644 = !DILocation(line: 76, column: 28, scope: !574)
!645 = !DILocation(line: 76, column: 17, scope: !574)
!646 = !DILocation(line: 76, column: 50, scope: !574)
!647 = !DILocation(line: 75, column: 2, scope: !574)
!648 = !DILocation(line: 78, column: 39, scope: !574)
!649 = !DILocation(line: 78, column: 46, scope: !574)
!650 = !DILocation(line: 78, column: 54, scope: !574)
!651 = !DILocation(line: 79, column: 11, scope: !574)
!652 = !DILocation(line: 79, column: 22, scope: !574)
!653 = !DILocation(line: 78, column: 8, scope: !574)
!654 = !DILocation(line: 78, column: 6, scope: !574)
!655 = !DILocation(line: 80, column: 6, scope: !656)
!656 = distinct !DILexicalBlock(scope: !574, file: !90, line: 80, column: 6)
!657 = !DILocation(line: 80, column: 10, scope: !656)
!658 = !DILocation(line: 80, column: 17, scope: !656)
!659 = !DILocation(line: 80, column: 21, scope: !660)
!660 = !DILexicalBlockFile(scope: !656, file: !90, discriminator: 1)
!661 = !DILocation(line: 80, column: 20, scope: !660)
!662 = !DILocation(line: 80, column: 25, scope: !660)
!663 = !DILocation(line: 80, column: 6, scope: !660)
!664 = !DILocation(line: 80, column: 45, scope: !665)
!665 = !DILexicalBlockFile(scope: !656, file: !90, discriminator: 2)
!666 = !DILocation(line: 80, column: 51, scope: !665)
!667 = !DILocation(line: 80, column: 34, scope: !665)
!668 = !DILocation(line: 81, column: 9, scope: !574)
!669 = !DILocation(line: 81, column: 2, scope: !574)
!670 = !DILocation(line: 82, column: 1, scope: !574)
!671 = distinct !DISubprogram(name: "print_line", scope: !90, file: !90, line: 166, type: !672, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !104, !75}
!674 = !DILocalVariable(name: "dest", arg: 1, scope: !671, file: !90, line: 166, type: !104)
!675 = !DILocation(line: 166, column: 39, scope: !671)
!676 = !DILocalVariable(name: "text", arg: 2, scope: !671, file: !90, line: 166, type: !75)
!677 = !DILocation(line: 166, column: 57, scope: !671)
!678 = !DILocalVariable(name: "theme", scope: !671, file: !90, line: 168, type: !586)
!679 = !DILocation(line: 168, column: 20, scope: !671)
!680 = !DILocalVariable(name: "str", scope: !671, file: !90, line: 169, type: !84)
!681 = !DILocation(line: 169, column: 8, scope: !671)
!682 = !DILocalVariable(name: "tmp", scope: !671, file: !90, line: 169, type: !84)
!683 = !DILocation(line: 169, column: 14, scope: !671)
!684 = !DILocalVariable(name: "stripped", scope: !671, file: !90, line: 169, type: !84)
!685 = !DILocation(line: 169, column: 20, scope: !671)
!686 = !DILocation(line: 171, column: 2, scope: !671)
!687 = distinct !{!687, !686}
!688 = !DILocation(line: 171, column: 10, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !90, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !691, file: !90, line: 171, column: 10)
!691 = distinct !DILexicalBlock(scope: !671, file: !90, line: 171, column: 4)
!692 = !DILocation(line: 171, column: 15, scope: !689)
!693 = !DILocation(line: 171, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !695, file: !90, discriminator: 2)
!695 = distinct !DILexicalBlock(scope: !690, file: !90, line: 171, column: 3)
!696 = !DILocation(line: 171, column: 14, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !90, discriminator: 3)
!698 = distinct !DILexicalBlock(scope: !690, file: !90, line: 171, column: 12)
!699 = !DILocation(line: 171, column: 99, scope: !697)
!700 = !DILocation(line: 171, column: 110, scope: !701)
!701 = !DILexicalBlockFile(scope: !691, file: !90, discriminator: 4)
!702 = !DILocation(line: 172, column: 2, scope: !671)
!703 = distinct !{!703, !702}
!704 = !DILocation(line: 172, column: 10, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !90, discriminator: 1)
!706 = distinct !DILexicalBlock(scope: !707, file: !90, line: 172, column: 10)
!707 = distinct !DILexicalBlock(scope: !671, file: !90, line: 172, column: 4)
!708 = !DILocation(line: 172, column: 15, scope: !705)
!709 = !DILocation(line: 172, column: 5, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !90, discriminator: 2)
!711 = distinct !DILexicalBlock(scope: !706, file: !90, line: 172, column: 3)
!712 = !DILocation(line: 172, column: 14, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !90, discriminator: 3)
!714 = distinct !DILexicalBlock(scope: !706, file: !90, line: 172, column: 12)
!715 = !DILocation(line: 172, column: 99, scope: !713)
!716 = !DILocation(line: 172, column: 110, scope: !717)
!717 = !DILexicalBlockFile(scope: !707, file: !90, discriminator: 4)
!718 = !DILocation(line: 174, column: 18, scope: !671)
!719 = !DILocation(line: 174, column: 24, scope: !671)
!720 = !DILocation(line: 174, column: 31, scope: !671)
!721 = !DILocation(line: 174, column: 16, scope: !671)
!722 = !DILocation(line: 174, column: 20, scope: !723)
!723 = !DILexicalBlockFile(scope: !671, file: !90, discriminator: 1)
!724 = !DILocation(line: 174, column: 26, scope: !723)
!725 = !DILocation(line: 174, column: 35, scope: !723)
!726 = !DILocation(line: 174, column: 41, scope: !723)
!727 = !DILocation(line: 174, column: 18, scope: !723)
!728 = !DILocation(line: 174, column: 19, scope: !729)
!729 = !DILexicalBlockFile(scope: !671, file: !90, discriminator: 2)
!730 = !DILocation(line: 174, column: 25, scope: !729)
!731 = !DILocation(line: 174, column: 34, scope: !729)
!732 = !DILocation(line: 174, column: 18, scope: !729)
!733 = !DILocation(line: 174, column: 42, scope: !734)
!734 = !DILexicalBlockFile(scope: !671, file: !90, discriminator: 3)
!735 = !DILocation(line: 174, column: 18, scope: !734)
!736 = !DILocation(line: 174, column: 18, scope: !737)
!737 = !DILexicalBlockFile(scope: !671, file: !90, discriminator: 4)
!738 = !DILocation(line: 174, column: 17, scope: !737)
!739 = !DILocation(line: 174, column: 15, scope: !737)
!740 = !DILocation(line: 175, column: 29, scope: !671)
!741 = !DILocation(line: 175, column: 36, scope: !671)
!742 = !DILocation(line: 175, column: 8, scope: !671)
!743 = !DILocation(line: 175, column: 6, scope: !671)
!744 = !DILocation(line: 176, column: 9, scope: !671)
!745 = !DILocation(line: 176, column: 16, scope: !671)
!746 = !DILocation(line: 176, column: 8, scope: !671)
!747 = !DILocation(line: 176, column: 48, scope: !723)
!748 = !DILocation(line: 176, column: 54, scope: !723)
!749 = !DILocation(line: 176, column: 27, scope: !723)
!750 = !DILocation(line: 176, column: 8, scope: !723)
!751 = !DILocation(line: 177, column: 22, scope: !671)
!752 = !DILocation(line: 177, column: 28, scope: !671)
!753 = !DILocation(line: 177, column: 3, scope: !671)
!754 = !DILocation(line: 176, column: 8, scope: !729)
!755 = !DILocation(line: 176, column: 8, scope: !734)
!756 = !DILocation(line: 176, column: 6, scope: !734)
!757 = !DILocation(line: 178, column: 9, scope: !671)
!758 = !DILocation(line: 178, column: 2, scope: !671)
!759 = !DILocation(line: 181, column: 25, scope: !671)
!760 = !DILocation(line: 181, column: 13, scope: !671)
!761 = !DILocation(line: 181, column: 11, scope: !671)
!762 = !DILocation(line: 182, column: 17, scope: !671)
!763 = !DILocation(line: 182, column: 39, scope: !671)
!764 = !DILocation(line: 182, column: 45, scope: !671)
!765 = !DILocation(line: 182, column: 50, scope: !671)
!766 = !DILocation(line: 182, column: 2, scope: !671)
!767 = !DILocation(line: 183, column: 9, scope: !671)
!768 = distinct !{!768, !767}
!769 = !DILocation(line: 183, column: 18, scope: !770)
!770 = !DILexicalBlockFile(scope: !771, file: !90, discriminator: 1)
!771 = distinct !DILexicalBlock(scope: !772, file: !90, line: 183, column: 18)
!772 = distinct !DILexicalBlock(scope: !671, file: !90, line: 183, column: 12)
!773 = !DILocation(line: 183, column: 24, scope: !770)
!774 = !DILocation(line: 183, column: 48, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !90, discriminator: 2)
!776 = distinct !DILexicalBlock(scope: !771, file: !90, line: 183, column: 39)
!777 = !DILocation(line: 183, column: 54, scope: !775)
!778 = !DILocation(line: 183, column: 41, scope: !775)
!779 = !DILocation(line: 183, column: 71, scope: !775)
!780 = !DILocation(line: 183, column: 77, scope: !775)
!781 = !DILocation(line: 183, column: 92, scope: !775)
!782 = !DILocation(line: 183, column: 10, scope: !775)
!783 = !DILocation(line: 183, column: 12, scope: !784)
!784 = !DILexicalBlockFile(scope: !772, file: !90, discriminator: 3)
!785 = !DILocation(line: 185, column: 9, scope: !671)
!786 = !DILocation(line: 185, column: 2, scope: !671)
!787 = !DILocation(line: 186, column: 16, scope: !671)
!788 = !DILocation(line: 186, column: 9, scope: !671)
!789 = !DILocation(line: 187, column: 1, scope: !671)
!790 = !DILocation(line: 187, column: 1, scope: !723)
!791 = distinct !DISubprogram(name: "printformat_module_dest", scope: !90, file: !90, line: 84, type: !792, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !75, !104, !85, null}
!794 = !DILocalVariable(name: "module", arg: 1, scope: !791, file: !90, line: 84, type: !75)
!795 = !DILocation(line: 84, column: 42, scope: !791)
!796 = !DILocalVariable(name: "dest", arg: 2, scope: !791, file: !90, line: 84, type: !104)
!797 = !DILocation(line: 84, column: 65, scope: !791)
!798 = !DILocalVariable(name: "formatnum", arg: 3, scope: !791, file: !90, line: 85, type: !85)
!799 = !DILocation(line: 85, column: 13, scope: !791)
!800 = !DILocalVariable(name: "va", scope: !791, file: !90, line: 87, type: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !802, line: 79, baseType: !803)
!802 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !804, line: 40, baseType: !805)
!804 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 87, baseType: !806)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 192, align: 64, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 1)
!809 = !DILocation(line: 87, column: 10, scope: !791)
!810 = !DILocation(line: 89, column: 1, scope: !791)
!811 = !DILocation(line: 90, column: 31, scope: !791)
!812 = !DILocation(line: 90, column: 39, scope: !791)
!813 = !DILocation(line: 90, column: 45, scope: !791)
!814 = !DILocation(line: 90, column: 56, scope: !791)
!815 = !DILocation(line: 90, column: 2, scope: !791)
!816 = !DILocation(line: 91, column: 1, scope: !791)
!817 = !DILocation(line: 92, column: 1, scope: !791)
!818 = distinct !DISubprogram(name: "printformat_module_args", scope: !90, file: !90, line: 94, type: !819, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !75, !67, !75, !85, !85, !519}
!821 = !DILocalVariable(name: "module", arg: 1, scope: !818, file: !90, line: 94, type: !75)
!822 = !DILocation(line: 94, column: 42, scope: !818)
!823 = !DILocalVariable(name: "server", arg: 2, scope: !818, file: !90, line: 94, type: !67)
!824 = !DILocation(line: 94, column: 56, scope: !818)
!825 = !DILocalVariable(name: "target", arg: 3, scope: !818, file: !90, line: 95, type: !75)
!826 = !DILocation(line: 95, column: 21, scope: !818)
!827 = !DILocalVariable(name: "level", arg: 4, scope: !818, file: !90, line: 95, type: !85)
!828 = !DILocation(line: 95, column: 33, scope: !818)
!829 = !DILocalVariable(name: "formatnum", arg: 5, scope: !818, file: !90, line: 96, type: !85)
!830 = !DILocation(line: 96, column: 13, scope: !818)
!831 = !DILocalVariable(name: "va", arg: 6, scope: !818, file: !90, line: 96, type: !519)
!832 = !DILocation(line: 96, column: 32, scope: !818)
!833 = !DILocalVariable(name: "dest", scope: !818, file: !90, line: 98, type: !105)
!834 = !DILocation(line: 98, column: 16, scope: !818)
!835 = !DILocation(line: 100, column: 28, scope: !818)
!836 = !DILocation(line: 100, column: 36, scope: !818)
!837 = !DILocation(line: 100, column: 44, scope: !818)
!838 = !DILocation(line: 100, column: 2, scope: !818)
!839 = !DILocation(line: 101, column: 31, scope: !818)
!840 = !DILocation(line: 101, column: 46, scope: !818)
!841 = !DILocation(line: 101, column: 57, scope: !818)
!842 = !DILocation(line: 101, column: 2, scope: !818)
!843 = !DILocation(line: 102, column: 1, scope: !818)
!844 = distinct !DISubprogram(name: "printformat_module", scope: !90, file: !90, line: 104, type: !845, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !75, !67, !75, !85, !85, null}
!847 = !DILocalVariable(name: "module", arg: 1, scope: !844, file: !90, line: 104, type: !75)
!848 = !DILocation(line: 104, column: 37, scope: !844)
!849 = !DILocalVariable(name: "server", arg: 2, scope: !844, file: !90, line: 104, type: !67)
!850 = !DILocation(line: 104, column: 51, scope: !844)
!851 = !DILocalVariable(name: "target", arg: 3, scope: !844, file: !90, line: 104, type: !75)
!852 = !DILocation(line: 104, column: 71, scope: !844)
!853 = !DILocalVariable(name: "level", arg: 4, scope: !844, file: !90, line: 105, type: !85)
!854 = !DILocation(line: 105, column: 8, scope: !844)
!855 = !DILocalVariable(name: "formatnum", arg: 5, scope: !844, file: !90, line: 105, type: !85)
!856 = !DILocation(line: 105, column: 19, scope: !844)
!857 = !DILocalVariable(name: "va", scope: !844, file: !90, line: 107, type: !801)
!858 = !DILocation(line: 107, column: 10, scope: !844)
!859 = !DILocation(line: 109, column: 1, scope: !844)
!860 = !DILocation(line: 110, column: 26, scope: !844)
!861 = !DILocation(line: 110, column: 34, scope: !844)
!862 = !DILocation(line: 110, column: 42, scope: !844)
!863 = !DILocation(line: 110, column: 50, scope: !844)
!864 = !DILocation(line: 110, column: 57, scope: !844)
!865 = !DILocation(line: 110, column: 68, scope: !844)
!866 = !DILocation(line: 110, column: 2, scope: !844)
!867 = !DILocation(line: 111, column: 1, scope: !844)
!868 = !DILocation(line: 112, column: 1, scope: !844)
!869 = distinct !DISubprogram(name: "printformat_module_window_args", scope: !90, file: !90, line: 114, type: !870, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !75, !110, !85, !85, !519}
!872 = !DILocalVariable(name: "module", arg: 1, scope: !869, file: !90, line: 114, type: !75)
!873 = !DILocation(line: 114, column: 49, scope: !869)
!874 = !DILocalVariable(name: "window", arg: 2, scope: !869, file: !90, line: 114, type: !110)
!875 = !DILocation(line: 114, column: 69, scope: !869)
!876 = !DILocalVariable(name: "level", arg: 3, scope: !869, file: !90, line: 115, type: !85)
!877 = !DILocation(line: 115, column: 13, scope: !869)
!878 = !DILocalVariable(name: "formatnum", arg: 4, scope: !869, file: !90, line: 115, type: !85)
!879 = !DILocation(line: 115, column: 24, scope: !869)
!880 = !DILocalVariable(name: "va", arg: 5, scope: !869, file: !90, line: 115, type: !519)
!881 = !DILocation(line: 115, column: 43, scope: !869)
!882 = !DILocalVariable(name: "dest", scope: !869, file: !90, line: 117, type: !105)
!883 = !DILocation(line: 117, column: 16, scope: !869)
!884 = !DILocation(line: 119, column: 39, scope: !869)
!885 = !DILocation(line: 119, column: 46, scope: !869)
!886 = !DILocation(line: 119, column: 2, scope: !869)
!887 = !DILocation(line: 120, column: 31, scope: !869)
!888 = !DILocation(line: 120, column: 46, scope: !869)
!889 = !DILocation(line: 120, column: 57, scope: !869)
!890 = !DILocation(line: 120, column: 2, scope: !869)
!891 = !DILocation(line: 121, column: 1, scope: !869)
!892 = distinct !DISubprogram(name: "printformat_module_window", scope: !90, file: !90, line: 123, type: !893, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !75, !110, !85, !85, null}
!895 = !DILocalVariable(name: "module", arg: 1, scope: !892, file: !90, line: 123, type: !75)
!896 = !DILocation(line: 123, column: 44, scope: !892)
!897 = !DILocalVariable(name: "window", arg: 2, scope: !892, file: !90, line: 123, type: !110)
!898 = !DILocation(line: 123, column: 64, scope: !892)
!899 = !DILocalVariable(name: "level", arg: 3, scope: !892, file: !90, line: 124, type: !85)
!900 = !DILocation(line: 124, column: 15, scope: !892)
!901 = !DILocalVariable(name: "formatnum", arg: 4, scope: !892, file: !90, line: 124, type: !85)
!902 = !DILocation(line: 124, column: 26, scope: !892)
!903 = !DILocalVariable(name: "va", scope: !892, file: !90, line: 126, type: !801)
!904 = !DILocation(line: 126, column: 10, scope: !892)
!905 = !DILocation(line: 128, column: 1, scope: !892)
!906 = !DILocation(line: 129, column: 33, scope: !892)
!907 = !DILocation(line: 129, column: 41, scope: !892)
!908 = !DILocation(line: 129, column: 49, scope: !892)
!909 = !DILocation(line: 129, column: 56, scope: !892)
!910 = !DILocation(line: 129, column: 67, scope: !892)
!911 = !DILocation(line: 129, column: 2, scope: !892)
!912 = !DILocation(line: 130, column: 1, scope: !892)
!913 = !DILocation(line: 131, column: 1, scope: !892)
!914 = distinct !DISubprogram(name: "printformat_module_gui_args", scope: !90, file: !90, line: 133, type: !915, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !75, !85, !519}
!917 = !DILocalVariable(name: "module", arg: 1, scope: !914, file: !90, line: 133, type: !75)
!918 = !DILocation(line: 133, column: 46, scope: !914)
!919 = !DILocalVariable(name: "formatnum", arg: 2, scope: !914, file: !90, line: 133, type: !85)
!920 = !DILocation(line: 133, column: 58, scope: !914)
!921 = !DILocalVariable(name: "va", arg: 3, scope: !914, file: !90, line: 133, type: !519)
!922 = !DILocation(line: 133, column: 77, scope: !914)
!923 = !DILocalVariable(name: "dest", scope: !914, file: !90, line: 135, type: !105)
!924 = !DILocation(line: 135, column: 16, scope: !914)
!925 = !DILocalVariable(name: "arglist", scope: !914, file: !90, line: 136, type: !537)
!926 = !DILocation(line: 136, column: 8, scope: !914)
!927 = !DILocalVariable(name: "buffer", scope: !914, file: !90, line: 137, type: !542)
!928 = !DILocation(line: 137, column: 7, scope: !914)
!929 = !DILocalVariable(name: "formats", scope: !914, file: !90, line: 138, type: !547)
!930 = !DILocation(line: 138, column: 14, scope: !914)
!931 = !DILocalVariable(name: "str", scope: !914, file: !90, line: 139, type: !84)
!932 = !DILocation(line: 139, column: 15, scope: !914)
!933 = !DILocation(line: 141, column: 2, scope: !914)
!934 = distinct !{!934, !933}
!935 = !DILocation(line: 141, column: 10, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !90, discriminator: 1)
!937 = distinct !DILexicalBlock(scope: !938, file: !90, line: 141, column: 10)
!938 = distinct !DILexicalBlock(scope: !914, file: !90, line: 141, column: 4)
!939 = !DILocation(line: 141, column: 17, scope: !936)
!940 = !DILocation(line: 141, column: 5, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !90, discriminator: 2)
!942 = distinct !DILexicalBlock(scope: !937, file: !90, line: 141, column: 3)
!943 = !DILocation(line: 141, column: 14, scope: !944)
!944 = !DILexicalBlockFile(scope: !945, file: !90, discriminator: 3)
!945 = distinct !DILexicalBlock(scope: !937, file: !90, line: 141, column: 12)
!946 = !DILocation(line: 141, column: 101, scope: !944)
!947 = !DILocation(line: 141, column: 112, scope: !948)
!948 = !DILexicalBlockFile(scope: !938, file: !90, discriminator: 4)
!949 = !DILocation(line: 143, column: 9, scope: !914)
!950 = !DILocation(line: 145, column: 32, scope: !914)
!951 = !DILocation(line: 145, column: 49, scope: !914)
!952 = !DILocation(line: 145, column: 12, scope: !914)
!953 = !DILocation(line: 145, column: 10, scope: !914)
!954 = !DILocation(line: 146, column: 22, scope: !914)
!955 = !DILocation(line: 146, column: 35, scope: !914)
!956 = !DILocation(line: 146, column: 27, scope: !914)
!957 = !DILocation(line: 147, column: 8, scope: !914)
!958 = !DILocation(line: 148, column: 8, scope: !914)
!959 = !DILocation(line: 146, column: 2, scope: !914)
!960 = !DILocation(line: 150, column: 45, scope: !914)
!961 = !DILocation(line: 150, column: 52, scope: !914)
!962 = !DILocation(line: 150, column: 38, scope: !914)
!963 = !DILocation(line: 150, column: 47, scope: !964)
!964 = !DILexicalBlockFile(scope: !914, file: !90, discriminator: 1)
!965 = !DILocation(line: 150, column: 56, scope: !964)
!966 = !DILocation(line: 150, column: 62, scope: !964)
!967 = !DILocation(line: 150, column: 40, scope: !964)
!968 = !DILocation(line: 150, column: 46, scope: !969)
!969 = !DILexicalBlockFile(scope: !914, file: !90, discriminator: 2)
!970 = !DILocation(line: 150, column: 55, scope: !969)
!971 = !DILocation(line: 150, column: 40, scope: !969)
!972 = !DILocation(line: 150, column: 63, scope: !973)
!973 = !DILexicalBlockFile(scope: !914, file: !90, discriminator: 3)
!974 = !DILocation(line: 150, column: 40, scope: !973)
!975 = !DILocation(line: 150, column: 40, scope: !976)
!976 = !DILexicalBlockFile(scope: !914, file: !90, discriminator: 4)
!977 = !DILocation(line: 150, column: 39, scope: !976)
!978 = !DILocation(line: 151, column: 11, scope: !914)
!979 = !DILocation(line: 152, column: 11, scope: !914)
!980 = !DILocation(line: 152, column: 22, scope: !914)
!981 = !DILocation(line: 150, column: 8, scope: !976)
!982 = !DILocation(line: 150, column: 6, scope: !976)
!983 = !DILocation(line: 153, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !914, file: !90, line: 153, column: 6)
!985 = !DILocation(line: 153, column: 6, scope: !984)
!986 = !DILocation(line: 153, column: 11, scope: !984)
!987 = !DILocation(line: 153, column: 6, scope: !914)
!988 = !DILocation(line: 153, column: 46, scope: !989)
!989 = !DILexicalBlockFile(scope: !984, file: !90, discriminator: 1)
!990 = !DILocation(line: 153, column: 20, scope: !989)
!991 = !DILocation(line: 154, column: 9, scope: !914)
!992 = !DILocation(line: 154, column: 2, scope: !914)
!993 = !DILocation(line: 155, column: 1, scope: !914)
!994 = !DILocation(line: 155, column: 1, scope: !964)
!995 = distinct !DISubprogram(name: "printformat_module_gui", scope: !90, file: !90, line: 157, type: !996, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !75, !85, null}
!998 = !DILocalVariable(name: "module", arg: 1, scope: !995, file: !90, line: 157, type: !75)
!999 = !DILocation(line: 157, column: 41, scope: !995)
!1000 = !DILocalVariable(name: "formatnum", arg: 2, scope: !995, file: !90, line: 157, type: !85)
!1001 = !DILocation(line: 157, column: 53, scope: !995)
!1002 = !DILocalVariable(name: "va", scope: !995, file: !90, line: 159, type: !801)
!1003 = !DILocation(line: 159, column: 10, scope: !995)
!1004 = !DILocation(line: 161, column: 1, scope: !995)
!1005 = !DILocation(line: 162, column: 37, scope: !995)
!1006 = !DILocation(line: 162, column: 45, scope: !995)
!1007 = !DILocation(line: 162, column: 56, scope: !995)
!1008 = !DILocation(line: 162, column: 9, scope: !995)
!1009 = !DILocation(line: 163, column: 1, scope: !995)
!1010 = !DILocation(line: 164, column: 1, scope: !995)
!1011 = distinct !DISubprogram(name: "printtext_dest", scope: !90, file: !90, line: 320, type: !1012, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !104, !75, null}
!1014 = !DILocalVariable(name: "dest", arg: 1, scope: !1011, file: !90, line: 320, type: !104)
!1015 = !DILocation(line: 320, column: 36, scope: !1011)
!1016 = !DILocalVariable(name: "text", arg: 2, scope: !1011, file: !90, line: 320, type: !75)
!1017 = !DILocation(line: 320, column: 54, scope: !1011)
!1018 = !DILocalVariable(name: "va", scope: !1011, file: !90, line: 322, type: !801)
!1019 = !DILocation(line: 322, column: 10, scope: !1011)
!1020 = !DILocation(line: 324, column: 1, scope: !1011)
!1021 = !DILocation(line: 325, column: 22, scope: !1011)
!1022 = !DILocation(line: 325, column: 28, scope: !1011)
!1023 = !DILocation(line: 325, column: 34, scope: !1011)
!1024 = !DILocation(line: 325, column: 2, scope: !1011)
!1025 = !DILocation(line: 326, column: 1, scope: !1011)
!1026 = !DILocation(line: 327, column: 1, scope: !1011)
!1027 = distinct !DISubprogram(name: "printtext_dest_args", scope: !90, file: !90, line: 305, type: !1028, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !104, !75, !519}
!1030 = !DILocalVariable(name: "dest", arg: 1, scope: !1027, file: !90, line: 305, type: !104)
!1031 = !DILocation(line: 305, column: 48, scope: !1027)
!1032 = !DILocalVariable(name: "text", arg: 2, scope: !1027, file: !90, line: 305, type: !75)
!1033 = !DILocation(line: 305, column: 66, scope: !1027)
!1034 = !DILocalVariable(name: "va", arg: 3, scope: !1027, file: !90, line: 305, type: !519)
!1035 = !DILocation(line: 305, column: 80, scope: !1027)
!1036 = !DILocalVariable(name: "str", scope: !1027, file: !90, line: 307, type: !84)
!1037 = !DILocation(line: 307, column: 8, scope: !1027)
!1038 = !DILocation(line: 309, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1027, file: !90, line: 309, column: 6)
!1040 = !DILocation(line: 309, column: 6, scope: !1027)
!1041 = !DILocation(line: 310, column: 26, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !90, line: 309, column: 31)
!1043 = !DILocation(line: 311, column: 18, scope: !1042)
!1044 = !DILocation(line: 311, column: 44, scope: !1042)
!1045 = !DILocation(line: 311, column: 3, scope: !1042)
!1046 = !DILocation(line: 312, column: 40, scope: !1042)
!1047 = !DILocation(line: 313, column: 2, scope: !1042)
!1048 = !DILocation(line: 315, column: 27, scope: !1027)
!1049 = !DILocation(line: 315, column: 33, scope: !1027)
!1050 = !DILocation(line: 315, column: 39, scope: !1027)
!1051 = !DILocation(line: 315, column: 8, scope: !1027)
!1052 = !DILocation(line: 315, column: 6, scope: !1027)
!1053 = !DILocation(line: 316, column: 13, scope: !1027)
!1054 = !DILocation(line: 316, column: 19, scope: !1027)
!1055 = !DILocation(line: 316, column: 2, scope: !1027)
!1056 = !DILocation(line: 317, column: 9, scope: !1027)
!1057 = !DILocation(line: 317, column: 2, scope: !1027)
!1058 = !DILocation(line: 318, column: 1, scope: !1027)
!1059 = distinct !DISubprogram(name: "printtext", scope: !90, file: !90, line: 330, type: !1060, isLocal: false, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !67, !75, !85, !75, null}
!1062 = !DILocalVariable(name: "server", arg: 1, scope: !1059, file: !90, line: 330, type: !67)
!1063 = !DILocation(line: 330, column: 22, scope: !1059)
!1064 = !DILocalVariable(name: "target", arg: 2, scope: !1059, file: !90, line: 330, type: !75)
!1065 = !DILocation(line: 330, column: 42, scope: !1059)
!1066 = !DILocalVariable(name: "level", arg: 3, scope: !1059, file: !90, line: 330, type: !85)
!1067 = !DILocation(line: 330, column: 54, scope: !1059)
!1068 = !DILocalVariable(name: "text", arg: 4, scope: !1059, file: !90, line: 330, type: !75)
!1069 = !DILocation(line: 330, column: 73, scope: !1059)
!1070 = !DILocalVariable(name: "dest", scope: !1059, file: !90, line: 332, type: !105)
!1071 = !DILocation(line: 332, column: 16, scope: !1059)
!1072 = !DILocalVariable(name: "va", scope: !1059, file: !90, line: 333, type: !801)
!1073 = !DILocation(line: 333, column: 10, scope: !1059)
!1074 = !DILocation(line: 335, column: 2, scope: !1059)
!1075 = distinct !{!1075, !1074}
!1076 = !DILocation(line: 335, column: 10, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !90, discriminator: 1)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !90, line: 335, column: 10)
!1079 = distinct !DILexicalBlock(scope: !1059, file: !90, line: 335, column: 4)
!1080 = !DILocation(line: 335, column: 15, scope: !1077)
!1081 = !DILocation(line: 335, column: 5, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1083, file: !90, discriminator: 2)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !90, line: 335, column: 3)
!1084 = !DILocation(line: 335, column: 14, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1086, file: !90, discriminator: 3)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !90, line: 335, column: 12)
!1087 = !DILocation(line: 335, column: 99, scope: !1085)
!1088 = !DILocation(line: 335, column: 110, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1079, file: !90, discriminator: 4)
!1090 = !DILocation(line: 337, column: 35, scope: !1059)
!1091 = !DILocation(line: 337, column: 43, scope: !1059)
!1092 = !DILocation(line: 337, column: 51, scope: !1059)
!1093 = !DILocation(line: 337, column: 9, scope: !1059)
!1094 = !DILocation(line: 339, column: 1, scope: !1059)
!1095 = !DILocation(line: 340, column: 29, scope: !1059)
!1096 = !DILocation(line: 340, column: 35, scope: !1059)
!1097 = !DILocation(line: 340, column: 2, scope: !1059)
!1098 = !DILocation(line: 341, column: 1, scope: !1059)
!1099 = !DILocation(line: 342, column: 1, scope: !1059)
!1100 = !DILocation(line: 342, column: 1, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1059, file: !90, discriminator: 1)
!1102 = distinct !DISubprogram(name: "printtext_string", scope: !90, file: !90, line: 345, type: !1103, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !67, !75, !85, !75}
!1105 = !DILocalVariable(name: "server", arg: 1, scope: !1102, file: !90, line: 345, type: !67)
!1106 = !DILocation(line: 345, column: 29, scope: !1102)
!1107 = !DILocalVariable(name: "target", arg: 2, scope: !1102, file: !90, line: 345, type: !75)
!1108 = !DILocation(line: 345, column: 49, scope: !1102)
!1109 = !DILocalVariable(name: "level", arg: 3, scope: !1102, file: !90, line: 345, type: !85)
!1110 = !DILocation(line: 345, column: 61, scope: !1102)
!1111 = !DILocalVariable(name: "text", arg: 4, scope: !1102, file: !90, line: 345, type: !75)
!1112 = !DILocation(line: 345, column: 80, scope: !1102)
!1113 = !DILocalVariable(name: "dest", scope: !1102, file: !90, line: 347, type: !105)
!1114 = !DILocation(line: 347, column: 16, scope: !1102)
!1115 = !DILocalVariable(name: "str", scope: !1102, file: !90, line: 348, type: !84)
!1116 = !DILocation(line: 348, column: 15, scope: !1102)
!1117 = !DILocation(line: 350, column: 2, scope: !1102)
!1118 = distinct !{!1118, !1117}
!1119 = !DILocation(line: 350, column: 10, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !90, discriminator: 1)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !90, line: 350, column: 10)
!1122 = distinct !DILexicalBlock(scope: !1102, file: !90, line: 350, column: 4)
!1123 = !DILocation(line: 350, column: 15, scope: !1120)
!1124 = !DILocation(line: 350, column: 5, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !90, discriminator: 2)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !90, line: 350, column: 3)
!1127 = !DILocation(line: 350, column: 14, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1129, file: !90, discriminator: 3)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !90, line: 350, column: 12)
!1130 = !DILocation(line: 350, column: 99, scope: !1128)
!1131 = !DILocation(line: 350, column: 110, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1122, file: !90, discriminator: 4)
!1133 = !DILocation(line: 352, column: 35, scope: !1102)
!1134 = !DILocation(line: 352, column: 43, scope: !1102)
!1135 = !DILocation(line: 352, column: 51, scope: !1102)
!1136 = !DILocation(line: 352, column: 9, scope: !1102)
!1137 = !DILocation(line: 354, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1102, file: !90, line: 354, column: 6)
!1139 = !DILocation(line: 354, column: 6, scope: !1102)
!1140 = !DILocation(line: 355, column: 26, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !90, line: 354, column: 31)
!1142 = !DILocation(line: 356, column: 18, scope: !1141)
!1143 = !DILocation(line: 356, column: 3, scope: !1141)
!1144 = !DILocation(line: 357, column: 40, scope: !1141)
!1145 = !DILocation(line: 358, column: 2, scope: !1141)
!1146 = !DILocation(line: 360, column: 40, scope: !1102)
!1147 = !DILocation(line: 360, column: 52, scope: !1102)
!1148 = !DILocation(line: 360, column: 15, scope: !1102)
!1149 = !DILocation(line: 360, column: 13, scope: !1102)
!1150 = !DILocation(line: 361, column: 20, scope: !1102)
!1151 = !DILocation(line: 361, column: 2, scope: !1102)
!1152 = !DILocation(line: 362, column: 16, scope: !1102)
!1153 = !DILocation(line: 362, column: 9, scope: !1102)
!1154 = !DILocation(line: 363, column: 1, scope: !1102)
!1155 = !DILocation(line: 363, column: 1, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1102, file: !90, discriminator: 1)
!1157 = distinct !DISubprogram(name: "printtext_expand_formats", scope: !90, file: !90, line: 275, type: !1158, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!84, !75, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!1161 = !DILocalVariable(name: "str", arg: 1, scope: !1157, file: !90, line: 275, type: !75)
!1162 = !DILocation(line: 275, column: 51, scope: !1157)
!1163 = !DILocalVariable(name: "flags", arg: 2, scope: !1157, file: !90, line: 275, type: !1160)
!1164 = !DILocation(line: 275, column: 61, scope: !1157)
!1165 = !DILocalVariable(name: "out", scope: !1157, file: !90, line: 277, type: !340)
!1166 = !DILocation(line: 277, column: 11, scope: !1157)
!1167 = !DILocalVariable(name: "ret", scope: !1157, file: !90, line: 278, type: !84)
!1168 = !DILocation(line: 278, column: 8, scope: !1157)
!1169 = !DILocalVariable(name: "adv", scope: !1157, file: !90, line: 279, type: !85)
!1170 = !DILocation(line: 279, column: 6, scope: !1157)
!1171 = !DILocation(line: 281, column: 8, scope: !1157)
!1172 = !DILocation(line: 281, column: 6, scope: !1157)
!1173 = !DILocation(line: 282, column: 2, scope: !1157)
!1174 = !DILocation(line: 282, column: 10, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !90, discriminator: 1)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !90, line: 282, column: 2)
!1177 = distinct !DILexicalBlock(scope: !1157, file: !90, line: 282, column: 2)
!1178 = !DILocation(line: 282, column: 9, scope: !1175)
!1179 = !DILocation(line: 282, column: 14, scope: !1175)
!1180 = !DILocation(line: 282, column: 2, scope: !1175)
!1181 = !DILocation(line: 283, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !90, line: 283, column: 7)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !90, line: 282, column: 30)
!1184 = !DILocation(line: 283, column: 7, scope: !1182)
!1185 = !DILocation(line: 283, column: 12, scope: !1182)
!1186 = !DILocation(line: 283, column: 7, scope: !1183)
!1187 = !DILocation(line: 284, column: 30, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !90, line: 283, column: 20)
!1189 = !DILocation(line: 284, column: 36, scope: !1188)
!1190 = !DILocation(line: 284, column: 35, scope: !1188)
!1191 = !DILocation(line: 284, column: 4, scope: !1188)
!1192 = !DILocation(line: 285, column: 4, scope: !1188)
!1193 = !DILocation(line: 288, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1183, file: !90, line: 288, column: 7)
!1195 = !DILocation(line: 288, column: 7, scope: !1194)
!1196 = !DILocation(line: 288, column: 14, scope: !1194)
!1197 = !DILocation(line: 288, column: 7, scope: !1183)
!1198 = !DILocation(line: 289, column: 4, scope: !1194)
!1199 = !DILocation(line: 291, column: 30, scope: !1183)
!1200 = !DILocation(line: 291, column: 41, scope: !1183)
!1201 = !DILocation(line: 291, column: 9, scope: !1183)
!1202 = !DILocation(line: 291, column: 7, scope: !1183)
!1203 = !DILocation(line: 292, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1183, file: !90, line: 292, column: 7)
!1205 = !DILocation(line: 292, column: 7, scope: !1183)
!1206 = !DILocation(line: 293, column: 30, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1204, file: !90, line: 292, column: 13)
!1208 = !DILocation(line: 293, column: 4, scope: !1207)
!1209 = !DILocation(line: 294, column: 30, scope: !1207)
!1210 = !DILocation(line: 294, column: 36, scope: !1207)
!1211 = !DILocation(line: 294, column: 35, scope: !1207)
!1212 = !DILocation(line: 294, column: 4, scope: !1207)
!1213 = !DILocation(line: 295, column: 3, scope: !1207)
!1214 = !DILocation(line: 296, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1204, file: !90, line: 295, column: 10)
!1216 = !DILocation(line: 296, column: 19, scope: !1215)
!1217 = !DILocation(line: 296, column: 12, scope: !1215)
!1218 = !DILocation(line: 298, column: 2, scope: !1183)
!1219 = !DILocation(line: 282, column: 26, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1176, file: !90, discriminator: 2)
!1221 = !DILocation(line: 282, column: 2, scope: !1220)
!1222 = distinct !{!1222, !1173}
!1223 = !DILocation(line: 300, column: 8, scope: !1157)
!1224 = !DILocation(line: 300, column: 13, scope: !1157)
!1225 = !DILocation(line: 300, column: 6, scope: !1157)
!1226 = !DILocation(line: 301, column: 16, scope: !1157)
!1227 = !DILocation(line: 301, column: 2, scope: !1157)
!1228 = !DILocation(line: 302, column: 9, scope: !1157)
!1229 = !DILocation(line: 302, column: 2, scope: !1157)
!1230 = distinct !DISubprogram(name: "printtext_string_window", scope: !90, file: !90, line: 366, type: !1231, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !110, !85, !75}
!1233 = !DILocalVariable(name: "window", arg: 1, scope: !1230, file: !90, line: 366, type: !110)
!1234 = !DILocation(line: 366, column: 42, scope: !1230)
!1235 = !DILocalVariable(name: "level", arg: 2, scope: !1230, file: !90, line: 366, type: !85)
!1236 = !DILocation(line: 366, column: 54, scope: !1230)
!1237 = !DILocalVariable(name: "text", arg: 3, scope: !1230, file: !90, line: 366, type: !75)
!1238 = !DILocation(line: 366, column: 73, scope: !1230)
!1239 = !DILocalVariable(name: "dest", scope: !1230, file: !90, line: 368, type: !105)
!1240 = !DILocation(line: 368, column: 16, scope: !1230)
!1241 = !DILocalVariable(name: "str", scope: !1230, file: !90, line: 369, type: !84)
!1242 = !DILocation(line: 369, column: 15, scope: !1230)
!1243 = !DILocation(line: 371, column: 2, scope: !1230)
!1244 = distinct !{!1244, !1243}
!1245 = !DILocation(line: 371, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !90, discriminator: 1)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !90, line: 371, column: 10)
!1248 = distinct !DILexicalBlock(scope: !1230, file: !90, line: 371, column: 4)
!1249 = !DILocation(line: 371, column: 15, scope: !1246)
!1250 = !DILocation(line: 371, column: 5, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !90, discriminator: 2)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !90, line: 371, column: 3)
!1253 = !DILocation(line: 371, column: 14, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1255, file: !90, discriminator: 3)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !90, line: 371, column: 12)
!1256 = !DILocation(line: 371, column: 99, scope: !1254)
!1257 = !DILocation(line: 371, column: 110, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1248, file: !90, discriminator: 4)
!1259 = !DILocation(line: 373, column: 39, scope: !1230)
!1260 = !DILocation(line: 374, column: 7, scope: !1230)
!1261 = !DILocation(line: 374, column: 14, scope: !1230)
!1262 = !DILocation(line: 374, column: 23, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1230, file: !90, discriminator: 1)
!1264 = !DILocation(line: 374, column: 7, scope: !1263)
!1265 = !DILocation(line: 374, column: 32, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1230, file: !90, discriminator: 2)
!1267 = !DILocation(line: 374, column: 7, scope: !1266)
!1268 = !DILocation(line: 374, column: 7, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1230, file: !90, discriminator: 3)
!1270 = !DILocation(line: 373, column: 2, scope: !1263)
!1271 = !DILocation(line: 376, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1230, file: !90, line: 376, column: 6)
!1273 = !DILocation(line: 376, column: 6, scope: !1230)
!1274 = !DILocation(line: 377, column: 26, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !90, line: 376, column: 31)
!1276 = !DILocation(line: 378, column: 18, scope: !1275)
!1277 = !DILocation(line: 378, column: 3, scope: !1275)
!1278 = !DILocation(line: 379, column: 40, scope: !1275)
!1279 = !DILocation(line: 380, column: 2, scope: !1275)
!1280 = !DILocation(line: 382, column: 40, scope: !1230)
!1281 = !DILocation(line: 382, column: 52, scope: !1230)
!1282 = !DILocation(line: 382, column: 15, scope: !1230)
!1283 = !DILocation(line: 382, column: 13, scope: !1230)
!1284 = !DILocation(line: 383, column: 20, scope: !1230)
!1285 = !DILocation(line: 383, column: 2, scope: !1230)
!1286 = !DILocation(line: 384, column: 16, scope: !1230)
!1287 = !DILocation(line: 384, column: 9, scope: !1230)
!1288 = !DILocation(line: 385, column: 1, scope: !1230)
!1289 = !DILocation(line: 385, column: 1, scope: !1263)
!1290 = distinct !DISubprogram(name: "printtext_window", scope: !90, file: !90, line: 387, type: !1291, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !110, !85, !75, null}
!1293 = !DILocalVariable(name: "window", arg: 1, scope: !1290, file: !90, line: 387, type: !110)
!1294 = !DILocation(line: 387, column: 35, scope: !1290)
!1295 = !DILocalVariable(name: "level", arg: 2, scope: !1290, file: !90, line: 387, type: !85)
!1296 = !DILocation(line: 387, column: 47, scope: !1290)
!1297 = !DILocalVariable(name: "text", arg: 3, scope: !1290, file: !90, line: 387, type: !75)
!1298 = !DILocation(line: 387, column: 66, scope: !1290)
!1299 = !DILocalVariable(name: "dest", scope: !1290, file: !90, line: 389, type: !105)
!1300 = !DILocation(line: 389, column: 16, scope: !1290)
!1301 = !DILocalVariable(name: "va", scope: !1290, file: !90, line: 390, type: !801)
!1302 = !DILocation(line: 390, column: 10, scope: !1290)
!1303 = !DILocation(line: 392, column: 2, scope: !1290)
!1304 = distinct !{!1304, !1303}
!1305 = !DILocation(line: 392, column: 10, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !90, discriminator: 1)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !90, line: 392, column: 10)
!1308 = distinct !DILexicalBlock(scope: !1290, file: !90, line: 392, column: 4)
!1309 = !DILocation(line: 392, column: 15, scope: !1306)
!1310 = !DILocation(line: 392, column: 5, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !90, discriminator: 2)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !90, line: 392, column: 3)
!1313 = !DILocation(line: 392, column: 14, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !90, discriminator: 3)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !90, line: 392, column: 12)
!1316 = !DILocation(line: 392, column: 99, scope: !1314)
!1317 = !DILocation(line: 392, column: 110, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1308, file: !90, discriminator: 4)
!1319 = !DILocation(line: 394, column: 39, scope: !1290)
!1320 = !DILocation(line: 395, column: 7, scope: !1290)
!1321 = !DILocation(line: 395, column: 14, scope: !1290)
!1322 = !DILocation(line: 395, column: 23, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1290, file: !90, discriminator: 1)
!1324 = !DILocation(line: 395, column: 7, scope: !1323)
!1325 = !DILocation(line: 395, column: 32, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1290, file: !90, discriminator: 2)
!1327 = !DILocation(line: 395, column: 7, scope: !1326)
!1328 = !DILocation(line: 395, column: 7, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1290, file: !90, discriminator: 3)
!1330 = !DILocation(line: 394, column: 2, scope: !1323)
!1331 = !DILocation(line: 397, column: 1, scope: !1290)
!1332 = !DILocation(line: 398, column: 29, scope: !1290)
!1333 = !DILocation(line: 398, column: 35, scope: !1290)
!1334 = !DILocation(line: 398, column: 2, scope: !1290)
!1335 = !DILocation(line: 399, column: 1, scope: !1290)
!1336 = !DILocation(line: 400, column: 1, scope: !1290)
!1337 = !DILocation(line: 400, column: 1, scope: !1323)
!1338 = distinct !DISubprogram(name: "printtext_gui", scope: !90, file: !90, line: 402, type: !1339, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !75}
!1341 = !DILocalVariable(name: "text", arg: 1, scope: !1338, file: !90, line: 402, type: !75)
!1342 = !DILocation(line: 402, column: 32, scope: !1338)
!1343 = !DILocalVariable(name: "dest", scope: !1338, file: !90, line: 404, type: !105)
!1344 = !DILocation(line: 404, column: 16, scope: !1338)
!1345 = !DILocalVariable(name: "str", scope: !1338, file: !90, line: 405, type: !84)
!1346 = !DILocation(line: 405, column: 15, scope: !1338)
!1347 = !DILocation(line: 407, column: 2, scope: !1338)
!1348 = distinct !{!1348, !1347}
!1349 = !DILocation(line: 407, column: 10, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !90, discriminator: 1)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !90, line: 407, column: 10)
!1352 = distinct !DILexicalBlock(scope: !1338, file: !90, line: 407, column: 4)
!1353 = !DILocation(line: 407, column: 15, scope: !1350)
!1354 = !DILocation(line: 407, column: 5, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !90, discriminator: 2)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !90, line: 407, column: 3)
!1357 = !DILocation(line: 407, column: 14, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !90, discriminator: 3)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !90, line: 407, column: 12)
!1360 = !DILocation(line: 407, column: 99, scope: !1358)
!1361 = !DILocation(line: 407, column: 110, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1352, file: !90, discriminator: 4)
!1363 = !DILocation(line: 409, column: 9, scope: !1338)
!1364 = !DILocation(line: 411, column: 33, scope: !1338)
!1365 = !DILocation(line: 411, column: 45, scope: !1338)
!1366 = !DILocation(line: 411, column: 8, scope: !1338)
!1367 = !DILocation(line: 411, column: 6, scope: !1338)
!1368 = !DILocation(line: 412, column: 28, scope: !1338)
!1369 = !DILocation(line: 412, column: 2, scope: !1338)
!1370 = !DILocation(line: 413, column: 9, scope: !1338)
!1371 = !DILocation(line: 413, column: 2, scope: !1338)
!1372 = !DILocation(line: 414, column: 1, scope: !1338)
!1373 = !DILocation(line: 414, column: 1, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1338, file: !90, discriminator: 1)
!1375 = distinct !DISubprogram(name: "printtext_gui_internal", scope: !90, file: !90, line: 417, type: !1339, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1376 = !DILocalVariable(name: "str", arg: 1, scope: !1375, file: !90, line: 417, type: !75)
!1377 = !DILocation(line: 417, column: 41, scope: !1375)
!1378 = !DILocalVariable(name: "dest", scope: !1375, file: !90, line: 419, type: !105)
!1379 = !DILocation(line: 419, column: 16, scope: !1375)
!1380 = !DILocation(line: 421, column: 2, scope: !1375)
!1381 = distinct !{!1381, !1380}
!1382 = !DILocation(line: 421, column: 10, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !90, discriminator: 1)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !90, line: 421, column: 10)
!1385 = distinct !DILexicalBlock(scope: !1375, file: !90, line: 421, column: 4)
!1386 = !DILocation(line: 421, column: 14, scope: !1383)
!1387 = !DILocation(line: 421, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1389, file: !90, discriminator: 2)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !90, line: 421, column: 3)
!1390 = !DILocation(line: 421, column: 14, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !90, discriminator: 3)
!1392 = distinct !DILexicalBlock(scope: !1384, file: !90, line: 421, column: 12)
!1393 = !DILocation(line: 421, column: 98, scope: !1391)
!1394 = !DILocation(line: 421, column: 109, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1385, file: !90, discriminator: 4)
!1396 = !DILocation(line: 423, column: 9, scope: !1375)
!1397 = !DILocation(line: 425, column: 28, scope: !1375)
!1398 = !DILocation(line: 425, column: 2, scope: !1375)
!1399 = !DILocation(line: 426, column: 1, scope: !1375)
!1400 = !DILocation(line: 426, column: 1, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1375, file: !90, discriminator: 1)
!1402 = distinct !DISubprogram(name: "printtext_multiline", scope: !90, file: !90, line: 476, type: !1403, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !67, !75, !85, !75, !75}
!1405 = !DILocalVariable(name: "server", arg: 1, scope: !1402, file: !90, line: 476, type: !67)
!1406 = !DILocation(line: 476, column: 32, scope: !1402)
!1407 = !DILocalVariable(name: "target", arg: 2, scope: !1402, file: !90, line: 476, type: !75)
!1408 = !DILocation(line: 476, column: 52, scope: !1402)
!1409 = !DILocalVariable(name: "level", arg: 3, scope: !1402, file: !90, line: 476, type: !85)
!1410 = !DILocation(line: 476, column: 64, scope: !1402)
!1411 = !DILocalVariable(name: "format", arg: 4, scope: !1402, file: !90, line: 477, type: !75)
!1412 = !DILocation(line: 477, column: 17, scope: !1402)
!1413 = !DILocalVariable(name: "text", arg: 5, scope: !1402, file: !90, line: 477, type: !75)
!1414 = !DILocation(line: 477, column: 37, scope: !1402)
!1415 = !DILocalVariable(name: "lines", scope: !1402, file: !90, line: 479, type: !442)
!1416 = !DILocation(line: 479, column: 9, scope: !1402)
!1417 = !DILocalVariable(name: "tmp", scope: !1402, file: !90, line: 479, type: !442)
!1418 = !DILocation(line: 479, column: 18, scope: !1402)
!1419 = !DILocation(line: 481, column: 2, scope: !1402)
!1420 = distinct !{!1420, !1419}
!1421 = !DILocation(line: 481, column: 10, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1423, file: !90, discriminator: 1)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !90, line: 481, column: 10)
!1424 = distinct !DILexicalBlock(scope: !1402, file: !90, line: 481, column: 4)
!1425 = !DILocation(line: 481, column: 17, scope: !1422)
!1426 = !DILocation(line: 481, column: 5, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !90, discriminator: 2)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !90, line: 481, column: 3)
!1429 = !DILocation(line: 481, column: 14, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1431, file: !90, discriminator: 3)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !90, line: 481, column: 12)
!1432 = !DILocation(line: 481, column: 101, scope: !1430)
!1433 = !DILocation(line: 481, column: 112, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1424, file: !90, discriminator: 4)
!1435 = !DILocation(line: 482, column: 2, scope: !1402)
!1436 = distinct !{!1436, !1435}
!1437 = !DILocation(line: 482, column: 10, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1439, file: !90, discriminator: 1)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !90, line: 482, column: 10)
!1440 = distinct !DILexicalBlock(scope: !1402, file: !90, line: 482, column: 4)
!1441 = !DILocation(line: 482, column: 15, scope: !1438)
!1442 = !DILocation(line: 482, column: 5, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !90, discriminator: 2)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !90, line: 482, column: 3)
!1445 = !DILocation(line: 482, column: 14, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1447, file: !90, discriminator: 3)
!1447 = distinct !DILexicalBlock(scope: !1439, file: !90, line: 482, column: 12)
!1448 = !DILocation(line: 482, column: 99, scope: !1446)
!1449 = !DILocation(line: 482, column: 110, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1440, file: !90, discriminator: 4)
!1451 = !DILocation(line: 484, column: 21, scope: !1402)
!1452 = !DILocation(line: 484, column: 10, scope: !1402)
!1453 = !DILocation(line: 484, column: 8, scope: !1402)
!1454 = !DILocation(line: 485, column: 20, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1402, file: !90, line: 485, column: 9)
!1456 = !DILocation(line: 485, column: 18, scope: !1455)
!1457 = !DILocation(line: 485, column: 14, scope: !1455)
!1458 = !DILocation(line: 485, column: 28, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1460, file: !90, discriminator: 1)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !90, line: 485, column: 9)
!1461 = !DILocation(line: 485, column: 27, scope: !1459)
!1462 = !DILocation(line: 485, column: 32, scope: !1459)
!1463 = !DILocation(line: 485, column: 9, scope: !1459)
!1464 = !DILocation(line: 486, column: 24, scope: !1460)
!1465 = !DILocation(line: 486, column: 31, scope: !1460)
!1466 = !DILocation(line: 486, column: 40, scope: !1460)
!1467 = !DILocation(line: 486, column: 39, scope: !1460)
!1468 = !DILocation(line: 486, column: 3, scope: !1460)
!1469 = !DILocation(line: 485, column: 43, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1460, file: !90, discriminator: 2)
!1471 = !DILocation(line: 485, column: 9, scope: !1470)
!1472 = distinct !{!1472, !1473}
!1473 = !DILocation(line: 485, column: 9, scope: !1402)
!1474 = !DILocation(line: 487, column: 13, scope: !1402)
!1475 = !DILocation(line: 487, column: 2, scope: !1402)
!1476 = !DILocation(line: 488, column: 1, scope: !1402)
!1477 = !DILocation(line: 488, column: 1, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1402, file: !90, discriminator: 1)
!1479 = distinct !DISubprogram(name: "printtext_init", scope: !90, file: !90, line: 511, type: !296, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1480 = !DILocation(line: 513, column: 25, scope: !1479)
!1481 = !DILocation(line: 514, column: 35, scope: !1479)
!1482 = !DILocation(line: 514, column: 33, scope: !1479)
!1483 = !DILocation(line: 515, column: 26, scope: !1479)
!1484 = !DILocation(line: 515, column: 24, scope: !1479)
!1485 = !DILocation(line: 516, column: 22, scope: !1479)
!1486 = !DILocation(line: 516, column: 20, scope: !1479)
!1487 = !DILocation(line: 517, column: 24, scope: !1479)
!1488 = !DILocation(line: 517, column: 22, scope: !1479)
!1489 = !DILocation(line: 519, column: 2, scope: !1479)
!1490 = !DILocation(line: 520, column: 2, scope: !1479)
!1491 = !DILocation(line: 521, column: 2, scope: !1479)
!1492 = !DILocation(line: 522, column: 2, scope: !1479)
!1493 = !DILocation(line: 523, column: 1, scope: !1479)
!1494 = distinct !DISubprogram(name: "read_settings", scope: !90, file: !90, line: 504, type: !296, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1495 = !DILocation(line: 506, column: 19, scope: !1494)
!1496 = !DILocation(line: 506, column: 17, scope: !1494)
!1497 = !DILocation(line: 507, column: 19, scope: !1494)
!1498 = !DILocation(line: 507, column: 17, scope: !1494)
!1499 = !DILocation(line: 508, column: 35, scope: !1494)
!1500 = !DILocation(line: 508, column: 33, scope: !1494)
!1501 = !DILocation(line: 509, column: 1, scope: !1494)
!1502 = distinct !DISubprogram(name: "sig_print_text", scope: !90, file: !90, line: 439, type: !672, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1503 = !DILocalVariable(name: "dest", arg: 1, scope: !1502, file: !90, line: 439, type: !104)
!1504 = !DILocation(line: 439, column: 43, scope: !1502)
!1505 = !DILocalVariable(name: "text", arg: 2, scope: !1502, file: !90, line: 439, type: !75)
!1506 = !DILocation(line: 439, column: 61, scope: !1502)
!1507 = !DILocalVariable(name: "theme", scope: !1502, file: !90, line: 441, type: !586)
!1508 = !DILocation(line: 441, column: 20, scope: !1502)
!1509 = !DILocalVariable(name: "str", scope: !1502, file: !90, line: 442, type: !84)
!1510 = !DILocation(line: 442, column: 8, scope: !1502)
!1511 = !DILocalVariable(name: "tmp", scope: !1502, file: !90, line: 442, type: !84)
!1512 = !DILocation(line: 442, column: 14, scope: !1502)
!1513 = !DILocation(line: 444, column: 2, scope: !1502)
!1514 = distinct !{!1514, !1513}
!1515 = !DILocation(line: 444, column: 10, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !90, discriminator: 1)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !90, line: 444, column: 10)
!1518 = distinct !DILexicalBlock(scope: !1502, file: !90, line: 444, column: 4)
!1519 = !DILocation(line: 444, column: 15, scope: !1516)
!1520 = !DILocation(line: 444, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !90, discriminator: 2)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !90, line: 444, column: 3)
!1523 = !DILocation(line: 444, column: 14, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !90, discriminator: 3)
!1525 = distinct !DILexicalBlock(scope: !1517, file: !90, line: 444, column: 12)
!1526 = !DILocation(line: 444, column: 99, scope: !1524)
!1527 = !DILocation(line: 444, column: 110, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1518, file: !90, discriminator: 4)
!1529 = !DILocation(line: 445, column: 2, scope: !1502)
!1530 = distinct !{!1530, !1529}
!1531 = !DILocation(line: 445, column: 10, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !90, discriminator: 1)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !90, line: 445, column: 10)
!1534 = distinct !DILexicalBlock(scope: !1502, file: !90, line: 445, column: 4)
!1535 = !DILocation(line: 445, column: 15, scope: !1532)
!1536 = !DILocation(line: 445, column: 5, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1538, file: !90, discriminator: 2)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !90, line: 445, column: 3)
!1539 = !DILocation(line: 445, column: 14, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1541, file: !90, discriminator: 3)
!1541 = distinct !DILexicalBlock(scope: !1533, file: !90, line: 445, column: 12)
!1542 = !DILocation(line: 445, column: 99, scope: !1540)
!1543 = !DILocation(line: 445, column: 110, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1534, file: !90, discriminator: 4)
!1545 = !DILocation(line: 447, column: 6, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1502, file: !90, line: 447, column: 6)
!1547 = !DILocation(line: 447, column: 12, scope: !1546)
!1548 = !DILocation(line: 447, column: 19, scope: !1546)
!1549 = !DILocation(line: 447, column: 6, scope: !1502)
!1550 = !DILocation(line: 448, column: 35, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !90, line: 447, column: 27)
!1552 = !DILocation(line: 448, column: 23, scope: !1551)
!1553 = !DILocation(line: 448, column: 21, scope: !1551)
!1554 = !DILocation(line: 450, column: 30, scope: !1551)
!1555 = !DILocation(line: 450, column: 3, scope: !1551)
!1556 = !DILocation(line: 452, column: 24, scope: !1551)
!1557 = !DILocation(line: 452, column: 17, scope: !1551)
!1558 = !DILocation(line: 453, column: 17, scope: !1551)
!1559 = !DILocation(line: 456, column: 17, scope: !1502)
!1560 = !DILocation(line: 456, column: 2, scope: !1502)
!1561 = !DILocation(line: 458, column: 14, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1502, file: !90, line: 458, column: 13)
!1563 = !DILocation(line: 458, column: 20, scope: !1562)
!1564 = !DILocation(line: 458, column: 26, scope: !1562)
!1565 = !DILocation(line: 458, column: 44, scope: !1562)
!1566 = !DILocation(line: 458, column: 13, scope: !1502)
!1567 = !DILocation(line: 459, column: 29, scope: !1562)
!1568 = !DILocation(line: 459, column: 3, scope: !1562)
!1569 = !DILocation(line: 459, column: 9, scope: !1562)
!1570 = !DILocation(line: 459, column: 17, scope: !1562)
!1571 = !DILocation(line: 459, column: 27, scope: !1562)
!1572 = !DILocation(line: 463, column: 18, scope: !1502)
!1573 = !DILocation(line: 463, column: 24, scope: !1502)
!1574 = !DILocation(line: 463, column: 31, scope: !1502)
!1575 = !DILocation(line: 463, column: 16, scope: !1502)
!1576 = !DILocation(line: 463, column: 20, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1502, file: !90, discriminator: 1)
!1578 = !DILocation(line: 463, column: 26, scope: !1577)
!1579 = !DILocation(line: 463, column: 35, scope: !1577)
!1580 = !DILocation(line: 463, column: 41, scope: !1577)
!1581 = !DILocation(line: 463, column: 18, scope: !1577)
!1582 = !DILocation(line: 463, column: 19, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1502, file: !90, discriminator: 2)
!1584 = !DILocation(line: 463, column: 25, scope: !1583)
!1585 = !DILocation(line: 463, column: 34, scope: !1583)
!1586 = !DILocation(line: 463, column: 18, scope: !1583)
!1587 = !DILocation(line: 463, column: 42, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1502, file: !90, discriminator: 3)
!1589 = !DILocation(line: 463, column: 18, scope: !1588)
!1590 = !DILocation(line: 463, column: 18, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1502, file: !90, discriminator: 4)
!1592 = !DILocation(line: 463, column: 17, scope: !1591)
!1593 = !DILocation(line: 463, column: 15, scope: !1591)
!1594 = !DILocation(line: 464, column: 30, scope: !1502)
!1595 = !DILocation(line: 464, column: 37, scope: !1502)
!1596 = !DILocation(line: 464, column: 43, scope: !1502)
!1597 = !DILocation(line: 464, column: 8, scope: !1577)
!1598 = !DILocation(line: 464, column: 6, scope: !1502)
!1599 = !DILocation(line: 465, column: 9, scope: !1502)
!1600 = !DILocation(line: 465, column: 16, scope: !1502)
!1601 = !DILocation(line: 465, column: 8, scope: !1502)
!1602 = !DILocation(line: 465, column: 48, scope: !1577)
!1603 = !DILocation(line: 465, column: 54, scope: !1577)
!1604 = !DILocation(line: 465, column: 27, scope: !1577)
!1605 = !DILocation(line: 465, column: 8, scope: !1577)
!1606 = !DILocation(line: 466, column: 22, scope: !1502)
!1607 = !DILocation(line: 466, column: 28, scope: !1502)
!1608 = !DILocation(line: 466, column: 3, scope: !1502)
!1609 = !DILocation(line: 465, column: 8, scope: !1583)
!1610 = !DILocation(line: 465, column: 8, scope: !1588)
!1611 = !DILocation(line: 465, column: 6, scope: !1588)
!1612 = !DILocation(line: 468, column: 9, scope: !1502)
!1613 = !DILocation(line: 468, column: 2, scope: !1502)
!1614 = !DILocation(line: 470, column: 21, scope: !1502)
!1615 = !DILocation(line: 470, column: 27, scope: !1502)
!1616 = !DILocation(line: 470, column: 2, scope: !1502)
!1617 = !DILocation(line: 471, column: 9, scope: !1502)
!1618 = !DILocation(line: 471, column: 2, scope: !1502)
!1619 = !DILocation(line: 473, column: 17, scope: !1502)
!1620 = !DILocation(line: 473, column: 52, scope: !1502)
!1621 = !DILocation(line: 473, column: 58, scope: !1502)
!1622 = !DILocation(line: 473, column: 2, scope: !1502)
!1623 = !DILocation(line: 474, column: 1, scope: !1502)
!1624 = !DILocation(line: 474, column: 1, scope: !1577)
!1625 = distinct !DISubprogram(name: "sig_gui_dialog", scope: !90, file: !90, line: 490, type: !1626, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !75, !75}
!1628 = !DILocalVariable(name: "type", arg: 1, scope: !1625, file: !90, line: 490, type: !75)
!1629 = !DILocation(line: 490, column: 40, scope: !1625)
!1630 = !DILocalVariable(name: "text", arg: 2, scope: !1625, file: !90, line: 490, type: !75)
!1631 = !DILocation(line: 490, column: 58, scope: !1625)
!1632 = !DILocalVariable(name: "format", scope: !1625, file: !90, line: 492, type: !84)
!1633 = !DILocation(line: 492, column: 8, scope: !1625)
!1634 = !DILocation(line: 494, column: 25, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1625, file: !90, line: 494, column: 6)
!1636 = !DILocation(line: 494, column: 6, scope: !1635)
!1637 = !DILocation(line: 494, column: 42, scope: !1635)
!1638 = !DILocation(line: 494, column: 6, scope: !1625)
!1639 = !DILocation(line: 495, column: 10, scope: !1635)
!1640 = !DILocation(line: 495, column: 3, scope: !1635)
!1641 = !DILocation(line: 496, column: 30, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1635, file: !90, line: 496, column: 11)
!1643 = !DILocation(line: 496, column: 11, scope: !1642)
!1644 = !DILocation(line: 496, column: 45, scope: !1642)
!1645 = !DILocation(line: 496, column: 11, scope: !1635)
!1646 = !DILocation(line: 497, column: 10, scope: !1642)
!1647 = !DILocation(line: 497, column: 3, scope: !1642)
!1648 = !DILocation(line: 499, column: 10, scope: !1642)
!1649 = !DILocation(line: 501, column: 56, scope: !1625)
!1650 = !DILocation(line: 501, column: 64, scope: !1625)
!1651 = !DILocation(line: 501, column: 9, scope: !1625)
!1652 = !DILocation(line: 502, column: 1, scope: !1625)
!1653 = distinct !DISubprogram(name: "printtext_deinit", scope: !90, file: !90, line: 525, type: !296, isLocal: false, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1654 = !DILocation(line: 527, column: 2, scope: !1653)
!1655 = !DILocation(line: 528, column: 2, scope: !1653)
!1656 = !DILocation(line: 529, column: 2, scope: !1653)
!1657 = !DILocation(line: 530, column: 1, scope: !1653)
!1658 = distinct !DISubprogram(name: "printtext_get_args", scope: !90, file: !90, line: 204, type: !1659, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!84, !104, !75, !519}
!1661 = !DILocalVariable(name: "dest", arg: 1, scope: !1658, file: !90, line: 204, type: !104)
!1662 = !DILocation(line: 204, column: 48, scope: !1658)
!1663 = !DILocalVariable(name: "str", arg: 2, scope: !1658, file: !90, line: 204, type: !75)
!1664 = !DILocation(line: 204, column: 66, scope: !1658)
!1665 = !DILocalVariable(name: "va", arg: 3, scope: !1658, file: !90, line: 205, type: !519)
!1666 = !DILocation(line: 205, column: 13, scope: !1658)
!1667 = !DILocalVariable(name: "out", scope: !1658, file: !90, line: 207, type: !340)
!1668 = !DILocation(line: 207, column: 11, scope: !1658)
!1669 = !DILocalVariable(name: "ret", scope: !1658, file: !90, line: 208, type: !84)
!1670 = !DILocation(line: 208, column: 8, scope: !1658)
!1671 = !DILocalVariable(name: "adv", scope: !1658, file: !90, line: 209, type: !85)
!1672 = !DILocation(line: 209, column: 6, scope: !1658)
!1673 = !DILocation(line: 211, column: 8, scope: !1658)
!1674 = !DILocation(line: 211, column: 6, scope: !1658)
!1675 = !DILocation(line: 212, column: 2, scope: !1658)
!1676 = !DILocation(line: 212, column: 10, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1678, file: !90, discriminator: 1)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !90, line: 212, column: 2)
!1679 = distinct !DILexicalBlock(scope: !1658, file: !90, line: 212, column: 2)
!1680 = !DILocation(line: 212, column: 9, scope: !1677)
!1681 = !DILocation(line: 212, column: 14, scope: !1677)
!1682 = !DILocation(line: 212, column: 2, scope: !1677)
!1683 = !DILocation(line: 213, column: 8, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !90, line: 213, column: 7)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !90, line: 212, column: 30)
!1686 = !DILocation(line: 213, column: 7, scope: !1684)
!1687 = !DILocation(line: 213, column: 12, scope: !1684)
!1688 = !DILocation(line: 213, column: 7, scope: !1685)
!1689 = !DILocation(line: 214, column: 30, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !90, line: 213, column: 20)
!1691 = !DILocation(line: 214, column: 36, scope: !1690)
!1692 = !DILocation(line: 214, column: 35, scope: !1690)
!1693 = !DILocation(line: 214, column: 4, scope: !1690)
!1694 = !DILocation(line: 215, column: 4, scope: !1690)
!1695 = !DILocation(line: 218, column: 8, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1685, file: !90, line: 218, column: 7)
!1697 = !DILocation(line: 218, column: 7, scope: !1696)
!1698 = !DILocation(line: 218, column: 14, scope: !1696)
!1699 = !DILocation(line: 218, column: 7, scope: !1685)
!1700 = !DILocation(line: 219, column: 4, scope: !1696)
!1701 = !DILocation(line: 222, column: 12, scope: !1685)
!1702 = !DILocation(line: 222, column: 11, scope: !1685)
!1703 = !DILocation(line: 222, column: 3, scope: !1685)
!1704 = !DILocalVariable(name: "s", scope: !1705, file: !90, line: 224, type: !84)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 223, column: 13)
!1706 = distinct !DILexicalBlock(scope: !1685, file: !90, line: 222, column: 17)
!1707 = !DILocation(line: 224, column: 10, scope: !1705)
!1708 = !DILocation(line: 224, column: 22, scope: !1705)
!1709 = !DILocation(line: 224, column: 22, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1705, file: !90, discriminator: 1)
!1711 = !DILocation(line: 224, column: 22, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1705, file: !90, discriminator: 2)
!1713 = !DILocation(line: 224, column: 22, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1705, file: !90, discriminator: 3)
!1715 = !DILocation(line: 224, column: 10, scope: !1714)
!1716 = !DILocation(line: 225, column: 8, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1705, file: !90, line: 225, column: 8)
!1718 = !DILocation(line: 225, column: 10, scope: !1717)
!1719 = !DILocation(line: 225, column: 14, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1717, file: !90, discriminator: 1)
!1721 = !DILocation(line: 225, column: 13, scope: !1720)
!1722 = !DILocation(line: 225, column: 8, scope: !1720)
!1723 = !DILocation(line: 225, column: 38, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1717, file: !90, discriminator: 2)
!1725 = !DILocation(line: 225, column: 44, scope: !1724)
!1726 = !DILocation(line: 225, column: 49, scope: !1724)
!1727 = !DILocation(line: 225, column: 17, scope: !1724)
!1728 = !DILocation(line: 226, column: 4, scope: !1705)
!1729 = !DILocalVariable(name: "d", scope: !1730, file: !90, line: 229, type: !85)
!1730 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 228, column: 13)
!1731 = !DILocation(line: 229, column: 8, scope: !1730)
!1732 = !DILocation(line: 229, column: 17, scope: !1730)
!1733 = !DILocation(line: 229, column: 17, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1730, file: !90, discriminator: 1)
!1735 = !DILocation(line: 229, column: 17, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1730, file: !90, discriminator: 2)
!1737 = !DILocation(line: 229, column: 17, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1730, file: !90, discriminator: 3)
!1739 = !DILocation(line: 229, column: 8, scope: !1738)
!1740 = !DILocation(line: 230, column: 27, scope: !1730)
!1741 = !DILocation(line: 230, column: 38, scope: !1730)
!1742 = !DILocation(line: 230, column: 4, scope: !1730)
!1743 = !DILocation(line: 231, column: 4, scope: !1730)
!1744 = !DILocalVariable(name: "f", scope: !1745, file: !90, line: 234, type: !86)
!1745 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 233, column: 13)
!1746 = !DILocation(line: 234, column: 11, scope: !1745)
!1747 = !DILocation(line: 234, column: 23, scope: !1745)
!1748 = !DILocation(line: 234, column: 23, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1745, file: !90, discriminator: 1)
!1750 = !DILocation(line: 234, column: 23, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1745, file: !90, discriminator: 2)
!1752 = !DILocation(line: 234, column: 23, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1745, file: !90, discriminator: 3)
!1754 = !DILocation(line: 234, column: 11, scope: !1753)
!1755 = !DILocation(line: 235, column: 27, scope: !1745)
!1756 = !DILocation(line: 235, column: 41, scope: !1745)
!1757 = !DILocation(line: 235, column: 4, scope: !1745)
!1758 = !DILocation(line: 236, column: 4, scope: !1745)
!1759 = !DILocalVariable(name: "d", scope: !1760, file: !90, line: 239, type: !87)
!1760 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 238, column: 13)
!1761 = !DILocation(line: 239, column: 17, scope: !1760)
!1762 = !DILocation(line: 240, column: 19, scope: !1760)
!1763 = !DILocation(line: 240, column: 19, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1760, file: !90, discriminator: 1)
!1765 = !DILocation(line: 240, column: 19, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1760, file: !90, discriminator: 2)
!1767 = !DILocation(line: 240, column: 19, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1760, file: !90, discriminator: 3)
!1769 = !DILocation(line: 241, column: 27, scope: !1760)
!1770 = !DILocation(line: 241, column: 38, scope: !1760)
!1771 = !DILocation(line: 241, column: 4, scope: !1760)
!1772 = !DILocation(line: 242, column: 4, scope: !1760)
!1773 = !DILocalVariable(name: "d", scope: !1774, file: !90, line: 245, type: !71)
!1774 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 244, column: 13)
!1775 = !DILocation(line: 245, column: 9, scope: !1774)
!1776 = !DILocation(line: 245, column: 19, scope: !1774)
!1777 = !DILocation(line: 245, column: 19, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1774, file: !90, discriminator: 1)
!1779 = !DILocation(line: 245, column: 19, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1774, file: !90, discriminator: 2)
!1781 = !DILocation(line: 245, column: 19, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1774, file: !90, discriminator: 3)
!1783 = !DILocation(line: 245, column: 9, scope: !1782)
!1784 = !DILocation(line: 247, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1774, file: !90, line: 247, column: 8)
!1786 = !DILocation(line: 247, column: 8, scope: !1785)
!1787 = !DILocation(line: 247, column: 15, scope: !1785)
!1788 = !DILocation(line: 247, column: 22, scope: !1785)
!1789 = !DILocation(line: 247, column: 26, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1785, file: !90, discriminator: 1)
!1791 = !DILocation(line: 247, column: 25, scope: !1790)
!1792 = !DILocation(line: 247, column: 30, scope: !1790)
!1793 = !DILocation(line: 247, column: 8, scope: !1790)
!1794 = !DILocation(line: 248, column: 28, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1785, file: !90, line: 247, column: 38)
!1796 = !DILocation(line: 248, column: 40, scope: !1795)
!1797 = !DILocation(line: 248, column: 5, scope: !1795)
!1798 = !DILocation(line: 249, column: 8, scope: !1795)
!1799 = !DILocation(line: 250, column: 4, scope: !1795)
!1800 = !DILocation(line: 251, column: 10, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !90, line: 251, column: 9)
!1802 = distinct !DILexicalBlock(scope: !1785, file: !90, line: 250, column: 11)
!1803 = !DILocation(line: 251, column: 9, scope: !1801)
!1804 = !DILocation(line: 251, column: 14, scope: !1801)
!1805 = !DILocation(line: 251, column: 9, scope: !1802)
!1806 = !DILocation(line: 252, column: 29, scope: !1801)
!1807 = !DILocation(line: 252, column: 41, scope: !1801)
!1808 = !DILocation(line: 252, column: 6, scope: !1801)
!1809 = !DILocation(line: 254, column: 29, scope: !1801)
!1810 = !DILocation(line: 254, column: 41, scope: !1801)
!1811 = !DILocation(line: 254, column: 6, scope: !1801)
!1812 = !DILocation(line: 256, column: 4, scope: !1774)
!1813 = !DILocation(line: 259, column: 31, scope: !1706)
!1814 = !DILocation(line: 259, column: 43, scope: !1706)
!1815 = !DILocation(line: 259, column: 49, scope: !1706)
!1816 = !DILocation(line: 259, column: 10, scope: !1706)
!1817 = !DILocation(line: 259, column: 8, scope: !1706)
!1818 = !DILocation(line: 260, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1706, file: !90, line: 260, column: 8)
!1820 = !DILocation(line: 260, column: 8, scope: !1706)
!1821 = !DILocation(line: 261, column: 31, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !90, line: 260, column: 14)
!1823 = !DILocation(line: 261, column: 5, scope: !1822)
!1824 = !DILocation(line: 262, column: 31, scope: !1822)
!1825 = !DILocation(line: 262, column: 37, scope: !1822)
!1826 = !DILocation(line: 262, column: 36, scope: !1822)
!1827 = !DILocation(line: 262, column: 5, scope: !1822)
!1828 = !DILocation(line: 263, column: 4, scope: !1822)
!1829 = !DILocation(line: 264, column: 12, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !90, line: 263, column: 11)
!1831 = !DILocation(line: 264, column: 16, scope: !1830)
!1832 = !DILocation(line: 264, column: 9, scope: !1830)
!1833 = !DILocation(line: 266, column: 4, scope: !1706)
!1834 = !DILocation(line: 268, column: 2, scope: !1685)
!1835 = !DILocation(line: 212, column: 26, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1678, file: !90, discriminator: 2)
!1837 = !DILocation(line: 212, column: 2, scope: !1836)
!1838 = distinct !{!1838, !1675}
!1839 = !DILocation(line: 270, column: 8, scope: !1658)
!1840 = !DILocation(line: 270, column: 13, scope: !1658)
!1841 = !DILocation(line: 270, column: 6, scope: !1658)
!1842 = !DILocation(line: 271, column: 16, scope: !1658)
!1843 = !DILocation(line: 271, column: 2, scope: !1658)
!1844 = !DILocation(line: 272, column: 9, scope: !1658)
!1845 = !DILocation(line: 272, column: 2, scope: !1658)
!1846 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !342, file: !342, line: 161, type: !1847, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!340, !340, !73}
!1849 = !DILocalVariable(name: "gstring", arg: 1, scope: !1846, file: !342, line: 161, type: !340)
!1850 = !DILocation(line: 161, column: 36, scope: !1846)
!1851 = !DILocalVariable(name: "c", arg: 2, scope: !1846, file: !342, line: 162, type: !73)
!1852 = !DILocation(line: 162, column: 33, scope: !1846)
!1853 = !DILocation(line: 164, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !342, line: 164, column: 7)
!1855 = !DILocation(line: 164, column: 16, scope: !1854)
!1856 = !DILocation(line: 164, column: 20, scope: !1854)
!1857 = !DILocation(line: 164, column: 26, scope: !1854)
!1858 = !DILocation(line: 164, column: 35, scope: !1854)
!1859 = !DILocation(line: 164, column: 24, scope: !1854)
!1860 = !DILocation(line: 164, column: 7, scope: !1846)
!1861 = !DILocation(line: 166, column: 38, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !342, line: 165, column: 5)
!1863 = !DILocation(line: 166, column: 20, scope: !1862)
!1864 = !DILocation(line: 166, column: 29, scope: !1862)
!1865 = !DILocation(line: 166, column: 32, scope: !1862)
!1866 = !DILocation(line: 166, column: 7, scope: !1862)
!1867 = !DILocation(line: 166, column: 16, scope: !1862)
!1868 = !DILocation(line: 166, column: 36, scope: !1862)
!1869 = !DILocation(line: 167, column: 20, scope: !1862)
!1870 = !DILocation(line: 167, column: 29, scope: !1862)
!1871 = !DILocation(line: 167, column: 7, scope: !1862)
!1872 = !DILocation(line: 167, column: 16, scope: !1862)
!1873 = !DILocation(line: 167, column: 34, scope: !1862)
!1874 = !DILocation(line: 168, column: 5, scope: !1862)
!1875 = !DILocation(line: 170, column: 24, scope: !1854)
!1876 = !DILocation(line: 170, column: 37, scope: !1854)
!1877 = !DILocation(line: 170, column: 5, scope: !1854)
!1878 = !DILocation(line: 171, column: 10, scope: !1846)
!1879 = !DILocation(line: 171, column: 3, scope: !1846)
!1880 = distinct !DISubprogram(name: "printtext_append_str", scope: !90, file: !90, line: 190, type: !1881, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !104, !340, !75}
!1883 = !DILocalVariable(name: "dest", arg: 1, scope: !1880, file: !90, line: 190, type: !104)
!1884 = !DILocation(line: 190, column: 49, scope: !1880)
!1885 = !DILocalVariable(name: "out", arg: 2, scope: !1880, file: !90, line: 190, type: !340)
!1886 = !DILocation(line: 190, column: 64, scope: !1880)
!1887 = !DILocalVariable(name: "str", arg: 3, scope: !1880, file: !90, line: 191, type: !75)
!1888 = !DILocation(line: 191, column: 18, scope: !1880)
!1889 = !DILocation(line: 193, column: 2, scope: !1880)
!1890 = !DILocation(line: 193, column: 10, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1880, file: !90, discriminator: 1)
!1892 = !DILocation(line: 193, column: 9, scope: !1891)
!1893 = !DILocation(line: 193, column: 14, scope: !1891)
!1894 = !DILocation(line: 193, column: 2, scope: !1891)
!1895 = !DILocation(line: 194, column: 8, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !90, line: 194, column: 7)
!1897 = distinct !DILexicalBlock(scope: !1880, file: !90, line: 193, column: 23)
!1898 = !DILocation(line: 194, column: 7, scope: !1896)
!1899 = !DILocation(line: 194, column: 12, scope: !1896)
!1900 = !DILocation(line: 194, column: 7, scope: !1897)
!1901 = !DILocation(line: 195, column: 30, scope: !1896)
!1902 = !DILocation(line: 195, column: 36, scope: !1896)
!1903 = !DILocation(line: 195, column: 35, scope: !1896)
!1904 = !DILocation(line: 195, column: 4, scope: !1896)
!1905 = !DILocation(line: 197, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1896, file: !90, line: 196, column: 8)
!1907 = !DILocation(line: 197, column: 21, scope: !1906)
!1908 = !DILocation(line: 197, column: 26, scope: !1906)
!1909 = !DILocation(line: 197, column: 4, scope: !1906)
!1910 = !DILocation(line: 198, column: 22, scope: !1906)
!1911 = !DILocation(line: 198, column: 4, scope: !1906)
!1912 = !DILocation(line: 200, column: 6, scope: !1897)
!1913 = !DILocation(line: 193, column: 2, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1880, file: !90, discriminator: 2)
!1915 = distinct !{!1915, !1889}
!1916 = !DILocation(line: 202, column: 1, scope: !1880)
!1917 = distinct !DISubprogram(name: "msg_beep_check", scope: !90, file: !90, line: 428, type: !1918, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !526)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !104}
!1920 = !DILocalVariable(name: "dest", arg: 1, scope: !1917, file: !90, line: 428, type: !104)
!1921 = !DILocation(line: 428, column: 43, scope: !1917)
!1922 = !DILocation(line: 430, column: 6, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !90, line: 430, column: 6)
!1924 = !DILocation(line: 430, column: 12, scope: !1923)
!1925 = !DILocation(line: 430, column: 18, scope: !1923)
!1926 = !DILocation(line: 430, column: 23, scope: !1923)
!1927 = !DILocation(line: 430, column: 27, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1923, file: !90, discriminator: 1)
!1929 = !DILocation(line: 430, column: 33, scope: !1928)
!1930 = !DILocation(line: 430, column: 39, scope: !1928)
!1931 = !DILocation(line: 430, column: 58, scope: !1928)
!1932 = !DILocation(line: 430, column: 63, scope: !1928)
!1933 = !DILocation(line: 431, column: 7, scope: !1923)
!1934 = !DILocation(line: 431, column: 24, scope: !1923)
!1935 = !DILocation(line: 431, column: 30, scope: !1923)
!1936 = !DILocation(line: 431, column: 22, scope: !1923)
!1937 = !DILocation(line: 431, column: 37, scope: !1923)
!1938 = !DILocation(line: 432, column: 7, scope: !1923)
!1939 = !DILocation(line: 432, column: 22, scope: !1923)
!1940 = !DILocation(line: 432, column: 26, scope: !1928)
!1941 = !DILocation(line: 432, column: 32, scope: !1928)
!1942 = !DILocation(line: 432, column: 39, scope: !1928)
!1943 = !DILocation(line: 432, column: 46, scope: !1928)
!1944 = !DILocation(line: 433, column: 6, scope: !1923)
!1945 = !DILocation(line: 433, column: 12, scope: !1923)
!1946 = !DILocation(line: 433, column: 20, scope: !1923)
!1947 = !DILocation(line: 433, column: 36, scope: !1923)
!1948 = !DILocation(line: 434, column: 7, scope: !1923)
!1949 = !DILocation(line: 434, column: 31, scope: !1923)
!1950 = !DILocation(line: 434, column: 34, scope: !1928)
!1951 = !DILocation(line: 434, column: 40, scope: !1928)
!1952 = !DILocation(line: 434, column: 50, scope: !1928)
!1953 = !DILocation(line: 434, column: 47, scope: !1928)
!1954 = !DILocation(line: 430, column: 6, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1917, file: !90, discriminator: 2)
!1956 = !DILocation(line: 435, column: 17, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1923, file: !90, line: 434, column: 63)
!1958 = !DILocation(line: 436, column: 2, scope: !1957)
!1959 = !DILocation(line: 437, column: 1, scope: !1917)
