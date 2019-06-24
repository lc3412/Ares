; ModuleID = './line246-formats.o.i'
source_filename = "./line246-formats.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
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
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.MODULE_THEME_REC = type { i8*, i32, i8**, i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@default_formats = external global %struct._GHashTable*, align 8
@format_backs = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), align 8
@format_fores = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), align 8
@format_boldfores = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), align 8
@__func__.format_read_arglist = private unnamed_addr constant [20 x i8] c"format_read_arglist\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"format->params < arglist_size\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.format_get_length = private unnamed_addr constant [18 x i8] c"format_get_length\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.format_real_length = private unnamed_addr constant [19 x i8] c"format_real_length\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"len >= 0\00", align 1
@__func__.format_string_expand = private unnamed_addr constant [21 x i8] c"format_string_expand\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@__func__.format_newline = private unnamed_addr constant [15 x i8] c"format_newline\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@signal_gui_print_text = internal global i32 0, align 4
@hide_text_style = internal global i32 0, align 4
@hide_colors = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"gui print text\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"04261537\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"kbgcrmyw\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"KBGCRMYW\00", align 1
@timestamp_level = internal global i32 0, align 4
@timestamp_timeout = internal global i32 0, align 4
@hide_server_tags = internal global i32 0, align 4
@servers = external global %struct._GSList*, align 8
@lookup_servers = external global %struct._GSList*, align 8
@get_ansi_color.ansitab = internal global [8 x i8] c"\00\04\02\06\01\05\03\07", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"timestamps\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"timestamp_level\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"timestamp_timeout\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"hide_server_tags\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"hide_text_style\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"hide_colors\00", align 1

; Function Attrs: nounwind uwtable
define i32 @format_find_tag(i8*, i8*) #0 !dbg !719 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._FORMAT_REC*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !720, metadata !721), !dbg !722
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !723, metadata !721), !dbg !724
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %6, metadata !725, metadata !721), !dbg !738
  call void @llvm.dbg.declare(metadata i32* %7, metadata !739, metadata !721), !dbg !740
  %8 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !741
  %9 = load i8*, i8** %4, align 8, !dbg !742
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %9), !dbg !743
  %11 = bitcast i8* %10 to %struct._FORMAT_REC*, !dbg !743
  store %struct._FORMAT_REC* %11, %struct._FORMAT_REC** %6, align 8, !dbg !744
  %12 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %6, align 8, !dbg !745
  %13 = icmp eq %struct._FORMAT_REC* %12, null, !dbg !747
  br i1 %13, label %14, label %15, !dbg !748

; <label>:14:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !749
  br label %49, !dbg !749

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %7, align 4, !dbg !750
  br label %16, !dbg !752

; <label>:16:                                     ; preds = %45, %15
  %17 = load i32, i32* %7, align 4, !dbg !753
  %18 = sext i32 %17 to i64, !dbg !756
  %19 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %6, align 8, !dbg !756
  %20 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %19, i64 %18, !dbg !756
  %21 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %20, i32 0, i32 1, !dbg !757
  %22 = load i8*, i8** %21, align 8, !dbg !757
  %23 = icmp ne i8* %22, null, !dbg !758
  br i1 %23, label %24, label %48, !dbg !759

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %7, align 4, !dbg !760
  %26 = sext i32 %25 to i64, !dbg !763
  %27 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %6, align 8, !dbg !763
  %28 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %27, i64 %26, !dbg !763
  %29 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %28, i32 0, i32 0, !dbg !764
  %30 = load i8*, i8** %29, align 8, !dbg !764
  %31 = icmp ne i8* %30, null, !dbg !765
  br i1 %31, label %32, label %44, !dbg !766

; <label>:32:                                     ; preds = %24
  %33 = load i32, i32* %7, align 4, !dbg !767
  %34 = sext i32 %33 to i64, !dbg !768
  %35 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %6, align 8, !dbg !768
  %36 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %35, i64 %34, !dbg !768
  %37 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %36, i32 0, i32 0, !dbg !769
  %38 = load i8*, i8** %37, align 8, !dbg !769
  %39 = load i8*, i8** %5, align 8, !dbg !770
  %40 = call i32 @g_ascii_strcasecmp(i8* %38, i8* %39), !dbg !771
  %41 = icmp eq i32 %40, 0, !dbg !772
  br i1 %41, label %42, label %44, !dbg !773

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %7, align 4, !dbg !775
  store i32 %43, i32* %3, align 4, !dbg !776
  br label %49, !dbg !776

; <label>:44:                                     ; preds = %32, %24
  br label %45, !dbg !777

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %7, align 4, !dbg !778
  %47 = add nsw i32 %46, 1, !dbg !778
  store i32 %47, i32* %7, align 4, !dbg !778
  br label %16, !dbg !780, !llvm.loop !781

; <label>:48:                                     ; preds = %16
  store i32 -1, i32* %3, align 4, !dbg !783
  br label %49, !dbg !783

; <label>:49:                                     ; preds = %48, %42, %14
  %50 = load i32, i32* %3, align 4, !dbg !784
  ret i32 %50, !dbg !784
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @format_ext_color(%struct._GString*, i32, i32) #0 !dbg !785 {
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._GString* %0, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !788, metadata !721), !dbg !789
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !790, metadata !721), !dbg !791
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !792, metadata !721), !dbg !793
  %7 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !794
  %8 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %7, i8 signext 4), !dbg !795
  %9 = load i32, i32* %5, align 4, !dbg !796
  %10 = icmp ne i32 %9, 0, !dbg !796
  br i1 %10, label %11, label %17, !dbg !798

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %6, align 4, !dbg !799
  %13 = icmp slt i32 %12, 16, !dbg !801
  br i1 %13, label %14, label %17, !dbg !802

; <label>:14:                                     ; preds = %11
  %15 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !803
  %16 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %15, i8 signext 47), !dbg !804
  br label %17, !dbg !804

; <label>:17:                                     ; preds = %14, %11, %3
  %18 = load i32, i32* %6, align 4, !dbg !805
  %19 = icmp slt i32 %18, 16, !dbg !807
  br i1 %19, label %20, label %26, !dbg !808

; <label>:20:                                     ; preds = %17
  %21 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !809
  %22 = load i32, i32* %6, align 4, !dbg !810
  %23 = add nsw i32 %22, 48, !dbg !811
  %24 = trunc i32 %23 to i8, !dbg !810
  %25 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %21, i8 signext %24), !dbg !812
  br label %62, !dbg !812

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %6, align 4, !dbg !813
  %28 = icmp slt i32 %27, 96, !dbg !816
  br i1 %28, label %29, label %36, !dbg !817

; <label>:29:                                     ; preds = %26
  %30 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !818
  %31 = load i32, i32* %5, align 4, !dbg !819
  %32 = icmp ne i32 %31, 0, !dbg !819
  %33 = select i1 %32, i32 43, i32 46, !dbg !819
  %34 = trunc i32 %33 to i8, !dbg !819
  %35 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %30, i8 signext %34), !dbg !820
  br label %54, !dbg !820

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %6, align 4, !dbg !821
  %38 = icmp slt i32 %37, 176, !dbg !823
  br i1 %38, label %39, label %46, !dbg !824

; <label>:39:                                     ; preds = %36
  %40 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !825
  %41 = load i32, i32* %5, align 4, !dbg !826
  %42 = icmp ne i32 %41, 0, !dbg !826
  %43 = select i1 %42, i32 39, i32 45, !dbg !826
  %44 = trunc i32 %43 to i8, !dbg !826
  %45 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %40, i8 signext %44), !dbg !827
  br label %53, !dbg !827

; <label>:46:                                     ; preds = %36
  %47 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !828
  %48 = load i32, i32* %5, align 4, !dbg !829
  %49 = icmp ne i32 %48, 0, !dbg !829
  %50 = select i1 %49, i32 38, i32 44, !dbg !829
  %51 = trunc i32 %50 to i8, !dbg !829
  %52 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %47, i8 signext %51), !dbg !830
  br label %53

; <label>:53:                                     ; preds = %46, %39
  br label %54

; <label>:54:                                     ; preds = %53, %29
  %55 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !831
  %56 = load i32, i32* %6, align 4, !dbg !832
  %57 = sub nsw i32 %56, 16, !dbg !833
  %58 = srem i32 %57, 80, !dbg !834
  %59 = add nsw i32 47, %58, !dbg !835
  %60 = trunc i32 %59 to i8, !dbg !836
  %61 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %55, i8 signext %60), !dbg !837
  br label %62

; <label>:62:                                     ; preds = %54, %20
  %63 = load i32, i32* %5, align 4, !dbg !838
  %64 = icmp ne i32 %63, 0, !dbg !838
  br i1 %64, label %71, label %65, !dbg !840

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* %6, align 4, !dbg !841
  %67 = icmp slt i32 %66, 16, !dbg !843
  br i1 %67, label %68, label %71, !dbg !844

; <label>:68:                                     ; preds = %65
  %69 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !845
  %70 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %69, i8 signext 47), !dbg !846
  br label %71, !dbg !846

; <label>:71:                                     ; preds = %68, %65, %62
  ret void, !dbg !847
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #3 !dbg !848 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !851, metadata !721), !dbg !852
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !853, metadata !721), !dbg !854
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !855
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !857
  %7 = load i64, i64* %6, align 8, !dbg !857
  %8 = add i64 %7, 1, !dbg !858
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !859
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !860
  %11 = load i64, i64* %10, align 8, !dbg !860
  %12 = icmp ult i64 %8, %11, !dbg !861
  br i1 %12, label %13, label %30, !dbg !862

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !863
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !865
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !866
  %17 = load i64, i64* %16, align 8, !dbg !867
  %18 = add i64 %17, 1, !dbg !867
  store i64 %18, i64* %16, align 8, !dbg !867
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !868
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !869
  %21 = load i8*, i8** %20, align 8, !dbg !869
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !868
  store i8 %14, i8* %22, align 1, !dbg !870
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !871
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !872
  %25 = load i64, i64* %24, align 8, !dbg !872
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !873
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !874
  %28 = load i8*, i8** %27, align 8, !dbg !874
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !873
  store i8 0, i8* %29, align 1, !dbg !875
  br label %34, !dbg !876

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !877
  %32 = load i8, i8* %4, align 1, !dbg !878
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !879
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !880
  ret %struct._GString* %35, !dbg !881
}

; Function Attrs: nounwind uwtable
define void @format_24bit_color(%struct._GString*, i32, i32) #0 !dbg !882 {
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct._GString* %0, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !885, metadata !721), !dbg !886
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !887, metadata !721), !dbg !888
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !889, metadata !721), !dbg !890
  call void @llvm.dbg.declare(metadata [3 x i8]* %7, metadata !891, metadata !721), !dbg !895
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0, !dbg !896
  %9 = load i32, i32* %6, align 4, !dbg !897
  %10 = lshr i32 %9, 16, !dbg !898
  %11 = trunc i32 %10 to i8, !dbg !897
  store i8 %11, i8* %8, align 1, !dbg !896
  %12 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !896
  %13 = load i32, i32* %6, align 4, !dbg !899
  %14 = lshr i32 %13, 8, !dbg !900
  %15 = trunc i32 %14 to i8, !dbg !899
  store i8 %15, i8* %12, align 1, !dbg !896
  %16 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !896
  %17 = load i32, i32* %6, align 4, !dbg !901
  %18 = trunc i32 %17 to i8, !dbg !901
  store i8 %18, i8* %16, align 1, !dbg !896
  %19 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !902
  %20 = load i32, i32* %5, align 4, !dbg !903
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i32 0, i32 0, !dbg !904
  %22 = call signext i16 @color_24bit_256(i8* %21), !dbg !905
  %23 = sext i16 %22 to i32, !dbg !905
  call void @format_ext_color(%struct._GString* %19, i32 %20, i32 %23), !dbg !906
  ret void, !dbg !908
}

declare signext i16 @color_24bit_256(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @format_expand_styles(%struct._GString*, i8**, i32*) #0 !dbg !909 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._GString* %0, %struct._GString** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !912, metadata !721), !dbg !913
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !914, metadata !721), !dbg !915
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !916, metadata !721), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %8, metadata !918, metadata !721), !dbg !919
  store i32 1, i32* %8, align 4, !dbg !919
  call void @llvm.dbg.declare(metadata i8** %9, metadata !920, metadata !721), !dbg !921
  call void @llvm.dbg.declare(metadata i8* %10, metadata !922, metadata !721), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %11, metadata !924, metadata !721), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %12, metadata !926, metadata !721), !dbg !927
  %13 = load i8**, i8*** %6, align 8, !dbg !928
  %14 = load i8*, i8** %13, align 8, !dbg !929
  %15 = load i8, i8* %14, align 1, !dbg !930
  store i8 %15, i8* %10, align 1, !dbg !931
  %16 = load i8, i8* %10, align 1, !dbg !932
  %17 = sext i8 %16 to i32, !dbg !932
  switch i32 %17, label %299 [
    i32 123, label %18
    i32 125, label %18
    i32 37, label %18
    i32 85, label %22
    i32 57, label %27
    i32 95, label %27
    i32 56, label %32
    i32 73, label %37
    i32 58, label %42
    i32 124, label %45
    i32 70, label %50
    i32 110, label %55
    i32 78, label %55
    i32 62, label %60
    i32 35, label %65
    i32 91, label %70
    i32 120, label %85
    i32 88, label %85
    i32 122, label %250
    i32 90, label %250
  ], !dbg !933

; <label>:18:                                     ; preds = %3, %3, %3
  %19 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !934
  %20 = load i8, i8* %10, align 1, !dbg !936
  %21 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %19, i8 signext %20), !dbg !937
  br label %377, !dbg !938

; <label>:22:                                     ; preds = %3
  %23 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !939
  %24 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %23, i8 signext 4), !dbg !940
  %25 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !941
  %26 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %25, i8 signext 98), !dbg !942
  br label %377, !dbg !943

; <label>:27:                                     ; preds = %3, %3
  %28 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !944
  %29 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %28, i8 signext 4), !dbg !945
  %30 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !946
  %31 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %30, i8 signext 99), !dbg !947
  br label %377, !dbg !948

; <label>:32:                                     ; preds = %3
  %33 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !949
  %34 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %33, i8 signext 4), !dbg !950
  %35 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !951
  %36 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %35, i8 signext 100), !dbg !952
  br label %377, !dbg !953

; <label>:37:                                     ; preds = %3
  %38 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !954
  %39 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %38, i8 signext 4), !dbg !955
  %40 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !956
  %41 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %40, i8 signext 102), !dbg !957
  br label %377, !dbg !958

; <label>:42:                                     ; preds = %3
  %43 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !959
  %44 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %43, i8 signext 10), !dbg !960
  br label %377, !dbg !961

; <label>:45:                                     ; preds = %3
  %46 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !962
  %47 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %46, i8 signext 4), !dbg !963
  %48 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !964
  %49 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %48, i8 signext 101), !dbg !965
  br label %377, !dbg !966

; <label>:50:                                     ; preds = %3
  %51 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !967
  %52 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %51, i8 signext 4), !dbg !968
  %53 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !969
  %54 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %53, i8 signext 97), !dbg !970
  br label %377, !dbg !971

; <label>:55:                                     ; preds = %3, %3
  %56 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !972
  %57 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %56, i8 signext 4), !dbg !973
  %58 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !974
  %59 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %58, i8 signext 103), !dbg !975
  br label %377, !dbg !976

; <label>:60:                                     ; preds = %3
  %61 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !977
  %62 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %61, i8 signext 4), !dbg !978
  %63 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !979
  %64 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %63, i8 signext 104), !dbg !980
  br label %377, !dbg !981

; <label>:65:                                     ; preds = %3
  %66 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !982
  %67 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %66, i8 signext 4), !dbg !983
  %68 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !984
  %69 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %68, i8 signext 105), !dbg !985
  br label %377, !dbg !986

; <label>:70:                                     ; preds = %3
  %71 = load i8**, i8*** %6, align 8, !dbg !987
  %72 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !988
  %73 = load i32*, i32** %7, align 8, !dbg !989
  call void @format_expand_code(i8** %71, %struct._GString* %72, i32* %73), !dbg !990
  %74 = load i8**, i8*** %6, align 8, !dbg !991
  %75 = load i8*, i8** %74, align 8, !dbg !993
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !994
  %77 = load i8, i8* %76, align 1, !dbg !994
  %78 = sext i8 %77 to i32, !dbg !994
  %79 = icmp eq i32 %78, 0, !dbg !995
  br i1 %79, label %80, label %84, !dbg !996

; <label>:80:                                     ; preds = %70
  %81 = load i8**, i8*** %6, align 8, !dbg !997
  %82 = load i8*, i8** %81, align 8, !dbg !998
  %83 = getelementptr inbounds i8, i8* %82, i32 -1, !dbg !998
  store i8* %83, i8** %81, align 8, !dbg !998
  br label %84, !dbg !999

; <label>:84:                                     ; preds = %80, %70
  br label %377, !dbg !1000

; <label>:85:                                     ; preds = %3, %3
  %86 = load i8**, i8*** %6, align 8, !dbg !1001
  %87 = load i8*, i8** %86, align 8, !dbg !1003
  %88 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1004
  %89 = load i8, i8* %88, align 1, !dbg !1004
  %90 = sext i8 %89 to i32, !dbg !1004
  %91 = icmp slt i32 %90, 48, !dbg !1005
  br i1 %91, label %99, label %92, !dbg !1006

; <label>:92:                                     ; preds = %85
  %93 = load i8**, i8*** %6, align 8, !dbg !1007
  %94 = load i8*, i8** %93, align 8, !dbg !1009
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1010
  %96 = load i8, i8* %95, align 1, !dbg !1010
  %97 = sext i8 %96 to i32, !dbg !1010
  %98 = icmp sgt i32 %97, 55, !dbg !1011
  br i1 %98, label %99, label %100, !dbg !1012

; <label>:99:                                     ; preds = %92, %85
  br label %377, !dbg !1013

; <label>:100:                                    ; preds = %92
  %101 = load i8**, i8*** %6, align 8, !dbg !1014
  %102 = load i8*, i8** %101, align 8, !dbg !1015
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1016
  %104 = load i8, i8* %103, align 1, !dbg !1016
  %105 = sext i8 %104 to i32, !dbg !1016
  %106 = sub nsw i32 %105, 48, !dbg !1017
  %107 = sub nsw i32 %106, 1, !dbg !1018
  %108 = mul nsw i32 %107, 36, !dbg !1019
  %109 = add nsw i32 16, %108, !dbg !1020
  store i32 %109, i32* %11, align 4, !dbg !1021
  %110 = load i32, i32* %11, align 4, !dbg !1022
  %111 = icmp sgt i32 %110, 231, !dbg !1024
  br i1 %111, label %112, label %156, !dbg !1025

; <label>:112:                                    ; preds = %100
  %113 = load i8**, i8*** %6, align 8, !dbg !1026
  %114 = load i8*, i8** %113, align 8, !dbg !1029
  %115 = getelementptr inbounds i8, i8* %114, i64 2, !dbg !1030
  %116 = load i8, i8* %115, align 1, !dbg !1030
  %117 = sext i8 %116 to i32, !dbg !1031
  %118 = sext i32 %117 to i64, !dbg !1029
  %119 = call i16** @__ctype_b_loc() #1, !dbg !1032
  %120 = load i16*, i16** %119, align 8, !dbg !1026
  %121 = getelementptr inbounds i16, i16* %120, i64 %118, !dbg !1029
  %122 = load i16, i16* %121, align 2, !dbg !1029
  %123 = zext i16 %122 to i32, !dbg !1029
  %124 = and i32 %123, 1024, !dbg !1033
  %125 = icmp ne i32 %124, 0, !dbg !1033
  br i1 %125, label %127, label %126, !dbg !1034

; <label>:126:                                    ; preds = %112
  br label %377, !dbg !1035

; <label>:127:                                    ; preds = %112
  %128 = load i8**, i8*** %6, align 8, !dbg !1036
  %129 = load i8*, i8** %128, align 8, !dbg !1037
  %130 = getelementptr inbounds i8, i8* %129, i64 2, !dbg !1038
  %131 = load i8, i8* %130, align 1, !dbg !1038
  %132 = sext i8 %131 to i32, !dbg !1038
  %133 = icmp sge i32 %132, 97, !dbg !1039
  br i1 %133, label %134, label %141, !dbg !1038

; <label>:134:                                    ; preds = %127
  %135 = load i8**, i8*** %6, align 8, !dbg !1040
  %136 = load i8*, i8** %135, align 8, !dbg !1042
  %137 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !1043
  %138 = load i8, i8* %137, align 1, !dbg !1043
  %139 = sext i8 %138 to i32, !dbg !1043
  %140 = sub nsw i32 %139, 97, !dbg !1044
  br label %148, !dbg !1045

; <label>:141:                                    ; preds = %127
  %142 = load i8**, i8*** %6, align 8, !dbg !1046
  %143 = load i8*, i8** %142, align 8, !dbg !1048
  %144 = getelementptr inbounds i8, i8* %143, i64 2, !dbg !1049
  %145 = load i8, i8* %144, align 1, !dbg !1049
  %146 = sext i8 %145 to i32, !dbg !1049
  %147 = sub nsw i32 %146, 65, !dbg !1050
  br label %148, !dbg !1051

; <label>:148:                                    ; preds = %141, %134
  %149 = phi i32 [ %140, %134 ], [ %147, %141 ], !dbg !1052
  %150 = load i32, i32* %11, align 4, !dbg !1054
  %151 = add nsw i32 %150, %149, !dbg !1054
  store i32 %151, i32* %11, align 4, !dbg !1054
  %152 = load i32, i32* %11, align 4, !dbg !1055
  %153 = icmp sgt i32 %152, 255, !dbg !1057
  br i1 %153, label %154, label %155, !dbg !1058

; <label>:154:                                    ; preds = %148
  br label %377, !dbg !1059

; <label>:155:                                    ; preds = %148
  br label %241, !dbg !1060

; <label>:156:                                    ; preds = %100
  %157 = load i32, i32* %11, align 4, !dbg !1061
  %158 = icmp sgt i32 %157, 0, !dbg !1063
  br i1 %158, label %159, label %219, !dbg !1064

; <label>:159:                                    ; preds = %156
  %160 = load i8**, i8*** %6, align 8, !dbg !1065
  %161 = load i8*, i8** %160, align 8, !dbg !1068
  %162 = getelementptr inbounds i8, i8* %161, i64 2, !dbg !1069
  %163 = load i8, i8* %162, align 1, !dbg !1069
  %164 = sext i8 %163 to i32, !dbg !1070
  %165 = sext i32 %164 to i64, !dbg !1068
  %166 = call i16** @__ctype_b_loc() #1, !dbg !1071
  %167 = load i16*, i16** %166, align 8, !dbg !1065
  %168 = getelementptr inbounds i16, i16* %167, i64 %165, !dbg !1068
  %169 = load i16, i16* %168, align 2, !dbg !1068
  %170 = zext i16 %169 to i32, !dbg !1068
  %171 = and i32 %170, 8, !dbg !1072
  %172 = icmp ne i32 %171, 0, !dbg !1072
  br i1 %172, label %174, label %173, !dbg !1073

; <label>:173:                                    ; preds = %159
  br label %377, !dbg !1074

; <label>:174:                                    ; preds = %159
  %175 = load i8**, i8*** %6, align 8, !dbg !1075
  %176 = load i8*, i8** %175, align 8, !dbg !1077
  %177 = getelementptr inbounds i8, i8* %176, i64 2, !dbg !1078
  %178 = load i8, i8* %177, align 1, !dbg !1078
  %179 = sext i8 %178 to i32, !dbg !1078
  %180 = icmp sge i32 %179, 97, !dbg !1079
  br i1 %180, label %181, label %191, !dbg !1080

; <label>:181:                                    ; preds = %174
  %182 = load i8**, i8*** %6, align 8, !dbg !1081
  %183 = load i8*, i8** %182, align 8, !dbg !1082
  %184 = getelementptr inbounds i8, i8* %183, i64 2, !dbg !1083
  %185 = load i8, i8* %184, align 1, !dbg !1083
  %186 = sext i8 %185 to i32, !dbg !1083
  %187 = add nsw i32 10, %186, !dbg !1084
  %188 = sub nsw i32 %187, 97, !dbg !1085
  %189 = load i32, i32* %11, align 4, !dbg !1086
  %190 = add nsw i32 %189, %188, !dbg !1086
  store i32 %190, i32* %11, align 4, !dbg !1086
  br label %218, !dbg !1087

; <label>:191:                                    ; preds = %174
  %192 = load i8**, i8*** %6, align 8, !dbg !1088
  %193 = load i8*, i8** %192, align 8, !dbg !1090
  %194 = getelementptr inbounds i8, i8* %193, i64 2, !dbg !1091
  %195 = load i8, i8* %194, align 1, !dbg !1091
  %196 = sext i8 %195 to i32, !dbg !1091
  %197 = icmp sge i32 %196, 65, !dbg !1092
  br i1 %197, label %198, label %208, !dbg !1093

; <label>:198:                                    ; preds = %191
  %199 = load i8**, i8*** %6, align 8, !dbg !1094
  %200 = load i8*, i8** %199, align 8, !dbg !1095
  %201 = getelementptr inbounds i8, i8* %200, i64 2, !dbg !1096
  %202 = load i8, i8* %201, align 1, !dbg !1096
  %203 = sext i8 %202 to i32, !dbg !1096
  %204 = add nsw i32 10, %203, !dbg !1097
  %205 = sub nsw i32 %204, 65, !dbg !1098
  %206 = load i32, i32* %11, align 4, !dbg !1099
  %207 = add nsw i32 %206, %205, !dbg !1099
  store i32 %207, i32* %11, align 4, !dbg !1099
  br label %217, !dbg !1100

; <label>:208:                                    ; preds = %191
  %209 = load i8**, i8*** %6, align 8, !dbg !1101
  %210 = load i8*, i8** %209, align 8, !dbg !1102
  %211 = getelementptr inbounds i8, i8* %210, i64 2, !dbg !1103
  %212 = load i8, i8* %211, align 1, !dbg !1103
  %213 = sext i8 %212 to i32, !dbg !1103
  %214 = sub nsw i32 %213, 48, !dbg !1104
  %215 = load i32, i32* %11, align 4, !dbg !1105
  %216 = add nsw i32 %215, %214, !dbg !1105
  store i32 %216, i32* %11, align 4, !dbg !1105
  br label %217

; <label>:217:                                    ; preds = %208, %198
  br label %218

; <label>:218:                                    ; preds = %217, %181
  br label %240, !dbg !1106

; <label>:219:                                    ; preds = %156
  %220 = load i8**, i8*** %6, align 8, !dbg !1107
  %221 = load i8*, i8** %220, align 8, !dbg !1110
  %222 = getelementptr inbounds i8, i8* %221, i64 2, !dbg !1111
  %223 = load i8, i8* %222, align 1, !dbg !1111
  %224 = sext i8 %223 to i32, !dbg !1112
  %225 = sext i32 %224 to i64, !dbg !1110
  %226 = call i16** @__ctype_b_loc() #1, !dbg !1113
  %227 = load i16*, i16** %226, align 8, !dbg !1107
  %228 = getelementptr inbounds i16, i16* %227, i64 %225, !dbg !1110
  %229 = load i16, i16* %228, align 2, !dbg !1110
  %230 = zext i16 %229 to i32, !dbg !1110
  %231 = and i32 %230, 4096, !dbg !1114
  %232 = icmp ne i32 %231, 0, !dbg !1114
  br i1 %232, label %234, label %233, !dbg !1115

; <label>:233:                                    ; preds = %219
  br label %377, !dbg !1116

; <label>:234:                                    ; preds = %219
  %235 = load i8**, i8*** %6, align 8, !dbg !1117
  %236 = load i8*, i8** %235, align 8, !dbg !1118
  %237 = getelementptr inbounds i8, i8* %236, i64 2, !dbg !1119
  %238 = load i8, i8* %237, align 1, !dbg !1119
  %239 = call i32 @g_ascii_xdigit_value(i8 signext %238) #1, !dbg !1120
  store i32 %239, i32* %11, align 4, !dbg !1121
  br label %240

; <label>:240:                                    ; preds = %234, %218
  br label %241

; <label>:241:                                    ; preds = %240, %155
  %242 = load i32, i32* %8, align 4, !dbg !1122
  %243 = add nsw i32 %242, 2, !dbg !1122
  store i32 %243, i32* %8, align 4, !dbg !1122
  %244 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1123
  %245 = load i8, i8* %10, align 1, !dbg !1124
  %246 = sext i8 %245 to i32, !dbg !1124
  %247 = icmp eq i32 %246, 120, !dbg !1125
  %248 = zext i1 %247 to i32, !dbg !1125
  %249 = load i32, i32* %11, align 4, !dbg !1126
  call void @format_ext_color(%struct._GString* %244, i32 %248, i32 %249), !dbg !1127
  br label %377, !dbg !1128

; <label>:250:                                    ; preds = %3, %3
  store i32 0, i32* %12, align 4, !dbg !1129
  store i32 1, i32* %11, align 4, !dbg !1130
  br label %251, !dbg !1132

; <label>:251:                                    ; preds = %283, %250
  %252 = load i32, i32* %11, align 4, !dbg !1133
  %253 = icmp slt i32 %252, 7, !dbg !1136
  br i1 %253, label %254, label %286, !dbg !1137

; <label>:254:                                    ; preds = %251
  %255 = load i32, i32* %11, align 4, !dbg !1138
  %256 = sext i32 %255 to i64, !dbg !1141
  %257 = load i8**, i8*** %6, align 8, !dbg !1142
  %258 = load i8*, i8** %257, align 8, !dbg !1143
  %259 = getelementptr inbounds i8, i8* %258, i64 %256, !dbg !1141
  %260 = load i8, i8* %259, align 1, !dbg !1141
  %261 = sext i8 %260 to i32, !dbg !1144
  %262 = sext i32 %261 to i64, !dbg !1143
  %263 = call i16** @__ctype_b_loc() #1, !dbg !1145
  %264 = load i16*, i16** %263, align 8, !dbg !1142
  %265 = getelementptr inbounds i16, i16* %264, i64 %262, !dbg !1143
  %266 = load i16, i16* %265, align 2, !dbg !1143
  %267 = zext i16 %266 to i32, !dbg !1143
  %268 = and i32 %267, 4096, !dbg !1146
  %269 = icmp ne i32 %268, 0, !dbg !1146
  br i1 %269, label %271, label %270, !dbg !1147

; <label>:270:                                    ; preds = %254
  store i32 -1, i32* %12, align 4, !dbg !1148
  br label %286, !dbg !1150

; <label>:271:                                    ; preds = %254
  %272 = load i32, i32* %12, align 4, !dbg !1151
  %273 = shl i32 %272, 4, !dbg !1151
  store i32 %273, i32* %12, align 4, !dbg !1151
  %274 = load i32, i32* %11, align 4, !dbg !1152
  %275 = sext i32 %274 to i64, !dbg !1153
  %276 = load i8**, i8*** %6, align 8, !dbg !1154
  %277 = load i8*, i8** %276, align 8, !dbg !1155
  %278 = getelementptr inbounds i8, i8* %277, i64 %275, !dbg !1153
  %279 = load i8, i8* %278, align 1, !dbg !1153
  %280 = call i32 @g_ascii_xdigit_value(i8 signext %279) #1, !dbg !1156
  %281 = load i32, i32* %12, align 4, !dbg !1157
  %282 = or i32 %281, %280, !dbg !1157
  store i32 %282, i32* %12, align 4, !dbg !1157
  br label %283, !dbg !1158

; <label>:283:                                    ; preds = %271
  %284 = load i32, i32* %11, align 4, !dbg !1159
  %285 = add nsw i32 %284, 1, !dbg !1159
  store i32 %285, i32* %11, align 4, !dbg !1159
  br label %251, !dbg !1161, !llvm.loop !1162

; <label>:286:                                    ; preds = %270, %251
  %287 = load i32, i32* %12, align 4, !dbg !1164
  %288 = icmp eq i32 %287, -1, !dbg !1166
  br i1 %288, label %289, label %290, !dbg !1167

; <label>:289:                                    ; preds = %286
  br label %377, !dbg !1168

; <label>:290:                                    ; preds = %286
  %291 = load i32, i32* %8, align 4, !dbg !1169
  %292 = add nsw i32 %291, 6, !dbg !1169
  store i32 %292, i32* %8, align 4, !dbg !1169
  %293 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1170
  %294 = load i8, i8* %10, align 1, !dbg !1171
  %295 = sext i8 %294 to i32, !dbg !1171
  %296 = icmp eq i32 %295, 122, !dbg !1172
  %297 = zext i1 %296 to i32, !dbg !1172
  %298 = load i32, i32* %12, align 4, !dbg !1173
  call void @format_24bit_color(%struct._GString* %293, i32 %297, i32 %298), !dbg !1174
  br label %377, !dbg !1175

; <label>:299:                                    ; preds = %3
  %300 = load i8*, i8** @format_backs, align 8, !dbg !1176
  %301 = load i8, i8* %10, align 1, !dbg !1177
  %302 = sext i8 %301 to i32, !dbg !1177
  %303 = call i8* @strchr(i8* %300, i32 %302) #9, !dbg !1178
  store i8* %303, i8** %9, align 8, !dbg !1179
  %304 = load i8*, i8** %9, align 8, !dbg !1180
  %305 = icmp ne i8* %304, null, !dbg !1182
  br i1 %305, label %306, label %321, !dbg !1183

; <label>:306:                                    ; preds = %299
  %307 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1184
  %308 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %307, i8 signext 4), !dbg !1186
  %309 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1187
  %310 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %309, i8 signext 47), !dbg !1188
  %311 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1189
  %312 = load i8*, i8** %9, align 8, !dbg !1190
  %313 = load i8*, i8** @format_backs, align 8, !dbg !1191
  %314 = ptrtoint i8* %312 to i64, !dbg !1192
  %315 = ptrtoint i8* %313 to i64, !dbg !1192
  %316 = sub i64 %314, %315, !dbg !1192
  %317 = trunc i64 %316 to i32, !dbg !1193
  %318 = add nsw i32 %317, 48, !dbg !1194
  %319 = trunc i32 %318 to i8, !dbg !1195
  %320 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %311, i8 signext %319), !dbg !1196
  br label %377, !dbg !1197

; <label>:321:                                    ; preds = %299
  %322 = load i8, i8* %10, align 1, !dbg !1198
  %323 = sext i8 %322 to i32, !dbg !1198
  %324 = icmp eq i32 %323, 112, !dbg !1200
  br i1 %324, label %325, label %326, !dbg !1201

; <label>:325:                                    ; preds = %321
  store i8 109, i8* %10, align 1, !dbg !1202
  br label %326, !dbg !1204

; <label>:326:                                    ; preds = %325, %321
  %327 = load i8*, i8** @format_fores, align 8, !dbg !1205
  %328 = load i8, i8* %10, align 1, !dbg !1206
  %329 = sext i8 %328 to i32, !dbg !1206
  %330 = call i8* @strchr(i8* %327, i32 %329) #9, !dbg !1207
  store i8* %330, i8** %9, align 8, !dbg !1208
  %331 = load i8*, i8** %9, align 8, !dbg !1209
  %332 = icmp ne i8* %331, null, !dbg !1211
  br i1 %332, label %333, label %348, !dbg !1212

; <label>:333:                                    ; preds = %326
  %334 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1213
  %335 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %334, i8 signext 4), !dbg !1215
  %336 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1216
  %337 = load i8*, i8** %9, align 8, !dbg !1217
  %338 = load i8*, i8** @format_fores, align 8, !dbg !1218
  %339 = ptrtoint i8* %337 to i64, !dbg !1219
  %340 = ptrtoint i8* %338 to i64, !dbg !1219
  %341 = sub i64 %339, %340, !dbg !1219
  %342 = trunc i64 %341 to i32, !dbg !1220
  %343 = add nsw i32 %342, 48, !dbg !1221
  %344 = trunc i32 %343 to i8, !dbg !1222
  %345 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %336, i8 signext %344), !dbg !1223
  %346 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1224
  %347 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %346, i8 signext 47), !dbg !1225
  br label %377, !dbg !1226

; <label>:348:                                    ; preds = %326
  %349 = load i8, i8* %10, align 1, !dbg !1227
  %350 = sext i8 %349 to i32, !dbg !1227
  %351 = icmp eq i32 %350, 80, !dbg !1229
  br i1 %351, label %352, label %353, !dbg !1230

; <label>:352:                                    ; preds = %348
  store i8 77, i8* %10, align 1, !dbg !1231
  br label %353, !dbg !1233

; <label>:353:                                    ; preds = %352, %348
  %354 = load i8*, i8** @format_boldfores, align 8, !dbg !1234
  %355 = load i8, i8* %10, align 1, !dbg !1235
  %356 = sext i8 %355 to i32, !dbg !1235
  %357 = call i8* @strchr(i8* %354, i32 %356) #9, !dbg !1236
  store i8* %357, i8** %9, align 8, !dbg !1237
  %358 = load i8*, i8** %9, align 8, !dbg !1238
  %359 = icmp ne i8* %358, null, !dbg !1240
  br i1 %359, label %360, label %376, !dbg !1241

; <label>:360:                                    ; preds = %353
  %361 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1242
  %362 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %361, i8 signext 4), !dbg !1244
  %363 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1245
  %364 = load i8*, i8** %9, align 8, !dbg !1246
  %365 = load i8*, i8** @format_boldfores, align 8, !dbg !1247
  %366 = ptrtoint i8* %364 to i64, !dbg !1248
  %367 = ptrtoint i8* %365 to i64, !dbg !1248
  %368 = sub i64 %366, %367, !dbg !1248
  %369 = trunc i64 %368 to i32, !dbg !1249
  %370 = add nsw i32 8, %369, !dbg !1250
  %371 = add nsw i32 %370, 48, !dbg !1251
  %372 = trunc i32 %371 to i8, !dbg !1252
  %373 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %363, i8 signext %372), !dbg !1253
  %374 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1254
  %375 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %374, i8 signext 47), !dbg !1255
  br label %377, !dbg !1256

; <label>:376:                                    ; preds = %353
  store i32 0, i32* %4, align 4, !dbg !1257
  br label %379, !dbg !1257

; <label>:377:                                    ; preds = %360, %333, %306, %290, %289, %241, %233, %173, %154, %126, %99, %84, %65, %60, %55, %50, %45, %42, %37, %32, %27, %22, %18
  %378 = load i32, i32* %8, align 4, !dbg !1258
  store i32 %378, i32* %4, align 4, !dbg !1259
  br label %379, !dbg !1259

; <label>:379:                                    ; preds = %377, %376
  %380 = load i32, i32* %4, align 4, !dbg !1260
  ret i32 %380, !dbg !1260
}

; Function Attrs: nounwind uwtable
define internal void @format_expand_code(i8**, %struct._GString*, i32*) #0 !dbg !1261 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1264, metadata !721), !dbg !1265
  store %struct._GString* %1, %struct._GString** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1266, metadata !721), !dbg !1267
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1268, metadata !721), !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1270, metadata !721), !dbg !1271
  %8 = load i32*, i32** %6, align 8, !dbg !1272
  %9 = icmp eq i32* %8, null, !dbg !1274
  br i1 %9, label %10, label %30, !dbg !1275

; <label>:10:                                     ; preds = %3
  br label %11, !dbg !1276

; <label>:11:                                     ; preds = %25, %10
  %12 = load i8**, i8*** %4, align 8, !dbg !1278
  %13 = load i8*, i8** %12, align 8, !dbg !1280
  %14 = load i8, i8* %13, align 1, !dbg !1281
  %15 = sext i8 %14 to i32, !dbg !1281
  %16 = icmp ne i32 %15, 93, !dbg !1282
  br i1 %16, label %17, label %23, !dbg !1283

; <label>:17:                                     ; preds = %11
  %18 = load i8**, i8*** %4, align 8, !dbg !1284
  %19 = load i8*, i8** %18, align 8, !dbg !1286
  %20 = load i8, i8* %19, align 1, !dbg !1287
  %21 = sext i8 %20 to i32, !dbg !1287
  %22 = icmp ne i32 %21, 0, !dbg !1288
  br label %23

; <label>:23:                                     ; preds = %17, %11
  %24 = phi i1 [ false, %11 ], [ %22, %17 ]
  br i1 %24, label %25, label %29, !dbg !1289

; <label>:25:                                     ; preds = %23
  %26 = load i8**, i8*** %4, align 8, !dbg !1291
  %27 = load i8*, i8** %26, align 8, !dbg !1292
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1292
  store i8* %28, i8** %26, align 8, !dbg !1292
  br label %11, !dbg !1293, !llvm.loop !1295

; <label>:29:                                     ; preds = %23
  br label %103, !dbg !1296

; <label>:30:                                     ; preds = %3
  store i32 1, i32* %7, align 4, !dbg !1297
  %31 = load i8**, i8*** %4, align 8, !dbg !1298
  %32 = load i8*, i8** %31, align 8, !dbg !1299
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1299
  store i8* %33, i8** %31, align 8, !dbg !1299
  br label %34, !dbg !1300

; <label>:34:                                     ; preds = %99, %30
  %35 = load i8**, i8*** %4, align 8, !dbg !1301
  %36 = load i8*, i8** %35, align 8, !dbg !1303
  %37 = load i8, i8* %36, align 1, !dbg !1304
  %38 = sext i8 %37 to i32, !dbg !1304
  %39 = icmp ne i32 %38, 93, !dbg !1305
  br i1 %39, label %40, label %46, !dbg !1306

; <label>:40:                                     ; preds = %34
  %41 = load i8**, i8*** %4, align 8, !dbg !1307
  %42 = load i8*, i8** %41, align 8, !dbg !1309
  %43 = load i8, i8* %42, align 1, !dbg !1310
  %44 = sext i8 %43 to i32, !dbg !1310
  %45 = icmp ne i32 %44, 0, !dbg !1311
  br label %46

; <label>:46:                                     ; preds = %40, %34
  %47 = phi i1 [ false, %34 ], [ %45, %40 ]
  br i1 %47, label %48, label %103, !dbg !1312

; <label>:48:                                     ; preds = %46
  %49 = load i8**, i8*** %4, align 8, !dbg !1314
  %50 = load i8*, i8** %49, align 8, !dbg !1317
  %51 = load i8, i8* %50, align 1, !dbg !1318
  %52 = sext i8 %51 to i32, !dbg !1318
  %53 = icmp eq i32 %52, 43, !dbg !1319
  br i1 %53, label %54, label %55, !dbg !1320

; <label>:54:                                     ; preds = %48
  store i32 1, i32* %7, align 4, !dbg !1321
  br label %99, !dbg !1322

; <label>:55:                                     ; preds = %48
  %56 = load i8**, i8*** %4, align 8, !dbg !1323
  %57 = load i8*, i8** %56, align 8, !dbg !1325
  %58 = load i8, i8* %57, align 1, !dbg !1326
  %59 = sext i8 %58 to i32, !dbg !1326
  %60 = icmp eq i32 %59, 45, !dbg !1327
  br i1 %60, label %61, label %62, !dbg !1328

; <label>:61:                                     ; preds = %55
  store i32 0, i32* %7, align 4, !dbg !1329
  br label %98, !dbg !1330

; <label>:62:                                     ; preds = %55
  %63 = load i8**, i8*** %4, align 8, !dbg !1331
  %64 = load i8*, i8** %63, align 8, !dbg !1332
  %65 = load i8, i8* %64, align 1, !dbg !1333
  %66 = sext i8 %65 to i32, !dbg !1333
  switch i32 %66, label %97 [
    i32 115, label %67
    i32 83, label %67
    i32 116, label %83
    i32 84, label %90
  ], !dbg !1334

; <label>:67:                                     ; preds = %62, %62
  %68 = load i32, i32* %7, align 4, !dbg !1335
  %69 = icmp ne i32 %68, 0, !dbg !1335
  br i1 %69, label %71, label %70, !dbg !1337

; <label>:70:                                     ; preds = %67
  br label %78, !dbg !1338

; <label>:71:                                     ; preds = %67
  %72 = load i8**, i8*** %4, align 8, !dbg !1340
  %73 = load i8*, i8** %72, align 8, !dbg !1341
  %74 = load i8, i8* %73, align 1, !dbg !1342
  %75 = sext i8 %74 to i32, !dbg !1342
  %76 = icmp eq i32 %75, 115, !dbg !1343
  %77 = select i1 %76, i32 1, i32 2, !dbg !1342
  br label %78, !dbg !1344

; <label>:78:                                     ; preds = %71, %70
  %79 = phi i32 [ 64, %70 ], [ %77, %71 ], !dbg !1346
  %80 = load i32*, i32** %6, align 8, !dbg !1348
  %81 = load i32, i32* %80, align 4, !dbg !1349
  %82 = or i32 %81, %79, !dbg !1349
  store i32 %82, i32* %80, align 4, !dbg !1349
  br label %97, !dbg !1350

; <label>:83:                                     ; preds = %62
  %84 = load i32, i32* %7, align 4, !dbg !1351
  %85 = icmp ne i32 %84, 0, !dbg !1351
  %86 = select i1 %85, i32 4, i32 8, !dbg !1351
  %87 = load i32*, i32** %6, align 8, !dbg !1352
  %88 = load i32, i32* %87, align 4, !dbg !1353
  %89 = or i32 %88, %86, !dbg !1353
  store i32 %89, i32* %87, align 4, !dbg !1353
  br label %97, !dbg !1354

; <label>:90:                                     ; preds = %62
  %91 = load i32, i32* %7, align 4, !dbg !1355
  %92 = icmp ne i32 %91, 0, !dbg !1355
  %93 = select i1 %92, i32 16, i32 32, !dbg !1355
  %94 = load i32*, i32** %6, align 8, !dbg !1356
  %95 = load i32, i32* %94, align 4, !dbg !1357
  %96 = or i32 %95, %93, !dbg !1357
  store i32 %96, i32* %94, align 4, !dbg !1357
  br label %97, !dbg !1358

; <label>:97:                                     ; preds = %62, %90, %83, %78
  br label %98

; <label>:98:                                     ; preds = %97, %61
  br label %99

; <label>:99:                                     ; preds = %98, %54
  %100 = load i8**, i8*** %4, align 8, !dbg !1359
  %101 = load i8*, i8** %100, align 8, !dbg !1360
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !1360
  store i8* %102, i8** %100, align 8, !dbg !1360
  br label %34, !dbg !1361, !llvm.loop !1363

; <label>:103:                                    ; preds = %29, %46
  ret void, !dbg !1364
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind readnone
declare i32 @g_ascii_xdigit_value(i8 signext) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define void @format_read_arglist(%struct.__va_list_tag*, %struct._FORMAT_REC*, i8**, i32, i8*, i32) #0 !dbg !1365 {
  %7 = alloca %struct.__va_list_tag*, align 8
  %8 = alloca %struct._FORMAT_REC*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  store %struct.__va_list_tag* %0, %struct.__va_list_tag** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %7, metadata !1375, metadata !721), !dbg !1376
  store %struct._FORMAT_REC* %1, %struct._FORMAT_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %8, metadata !1377, metadata !721), !dbg !1378
  store i8** %2, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1379, metadata !721), !dbg !1380
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1381, metadata !721), !dbg !1382
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1383, metadata !721), !dbg !1384
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1385, metadata !721), !dbg !1386
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1387, metadata !721), !dbg !1388
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1389, metadata !721), !dbg !1390
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1391, metadata !721), !dbg !1392
  br label %19, !dbg !1393, !llvm.loop !1394

; <label>:19:                                     ; preds = %6
  %20 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !1395
  %21 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %20, i32 0, i32 2, !dbg !1399
  %22 = load i32, i32* %21, align 8, !dbg !1399
  %23 = load i32, i32* %10, align 4, !dbg !1400
  %24 = icmp slt i32 %22, %23, !dbg !1401
  br i1 %24, label %25, label %26, !dbg !1395

; <label>:25:                                     ; preds = %19
  br label %27, !dbg !1402

; <label>:26:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.format_read_arglist, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !1405
  br label %237, !dbg !1408

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1409

; <label>:28:                                     ; preds = %27
  store i32 0, i32* %15, align 4, !dbg !1411
  %29 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !1412
  %30 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %29, i32 0, i32 2, !dbg !1413
  %31 = load i32, i32* %30, align 8, !dbg !1413
  %32 = sext i32 %31 to i64, !dbg !1414
  %33 = load i8**, i8*** %9, align 8, !dbg !1414
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32, !dbg !1414
  store i8* null, i8** %34, align 8, !dbg !1415
  store i32 0, i32* %13, align 4, !dbg !1416
  br label %35, !dbg !1418

; <label>:35:                                     ; preds = %234, %28
  %36 = load i32, i32* %13, align 4, !dbg !1419
  %37 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !1422
  %38 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %37, i32 0, i32 2, !dbg !1423
  %39 = load i32, i32* %38, align 8, !dbg !1423
  %40 = icmp slt i32 %36, %39, !dbg !1424
  br i1 %40, label %41, label %237, !dbg !1425

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %13, align 4, !dbg !1426
  %43 = sext i32 %42 to i64, !dbg !1428
  %44 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %8, align 8, !dbg !1428
  %45 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %44, i32 0, i32 3, !dbg !1429
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 %43, !dbg !1428
  %47 = load i32, i32* %46, align 4, !dbg !1428
  switch i32 %47, label %233 [
    i32 0, label %48
    i32 1, label %83
    i32 2, label %133
    i32 3, label %183
  ], !dbg !1430

; <label>:48:                                     ; preds = %41
  %49 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1431
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 0, !dbg !1431
  %51 = load i32, i32* %50, align 8, !dbg !1431
  %52 = icmp ule i32 %51, 40, !dbg !1431
  br i1 %52, label %53, label %59, !dbg !1431

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3, !dbg !1433
  %55 = load i8*, i8** %54, align 8, !dbg !1433
  %56 = getelementptr i8, i8* %55, i32 %51, !dbg !1433
  %57 = bitcast i8* %56 to i8**, !dbg !1433
  %58 = add i32 %51, 8, !dbg !1433
  store i32 %58, i32* %50, align 8, !dbg !1433
  br label %64, !dbg !1433

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 2, !dbg !1435
  %61 = load i8*, i8** %60, align 8, !dbg !1435
  %62 = bitcast i8* %61 to i8**, !dbg !1435
  %63 = getelementptr i8, i8* %61, i32 8, !dbg !1435
  store i8* %63, i8** %60, align 8, !dbg !1435
  br label %64, !dbg !1435

; <label>:64:                                     ; preds = %59, %53
  %65 = phi i8** [ %57, %53 ], [ %62, %59 ], !dbg !1437
  %66 = load i8*, i8** %65, align 8, !dbg !1437
  %67 = load i32, i32* %13, align 4, !dbg !1439
  %68 = sext i32 %67 to i64, !dbg !1440
  %69 = load i8**, i8*** %9, align 8, !dbg !1440
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68, !dbg !1440
  store i8* %66, i8** %70, align 8, !dbg !1441
  %71 = load i32, i32* %13, align 4, !dbg !1442
  %72 = sext i32 %71 to i64, !dbg !1444
  %73 = load i8**, i8*** %9, align 8, !dbg !1444
  %74 = getelementptr inbounds i8*, i8** %73, i64 %72, !dbg !1444
  %75 = load i8*, i8** %74, align 8, !dbg !1444
  %76 = icmp eq i8* %75, null, !dbg !1445
  br i1 %76, label %77, label %82, !dbg !1446

; <label>:77:                                     ; preds = %64
  %78 = load i32, i32* %13, align 4, !dbg !1447
  %79 = sext i32 %78 to i64, !dbg !1448
  %80 = load i8**, i8*** %9, align 8, !dbg !1448
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79, !dbg !1448
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %81, align 8, !dbg !1449
  br label %82, !dbg !1448

; <label>:82:                                     ; preds = %77, %64
  br label %233, !dbg !1450

; <label>:83:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1451, metadata !721), !dbg !1453
  %84 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1454
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 0, !dbg !1454
  %86 = load i32, i32* %85, align 8, !dbg !1454
  %87 = icmp ule i32 %86, 40, !dbg !1454
  br i1 %87, label %88, label %94, !dbg !1454

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 3, !dbg !1455
  %90 = load i8*, i8** %89, align 8, !dbg !1455
  %91 = getelementptr i8, i8* %90, i32 %86, !dbg !1455
  %92 = bitcast i8* %91 to i32*, !dbg !1455
  %93 = add i32 %86, 8, !dbg !1455
  store i32 %93, i32* %85, align 8, !dbg !1455
  br label %99, !dbg !1455

; <label>:94:                                     ; preds = %83
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %84, i32 0, i32 2, !dbg !1457
  %96 = load i8*, i8** %95, align 8, !dbg !1457
  %97 = bitcast i8* %96 to i32*, !dbg !1457
  %98 = getelementptr i8, i8* %96, i32 8, !dbg !1457
  store i8* %98, i8** %95, align 8, !dbg !1457
  br label %99, !dbg !1457

; <label>:99:                                     ; preds = %94, %88
  %100 = phi i32* [ %92, %88 ], [ %97, %94 ], !dbg !1459
  %101 = load i32, i32* %100, align 4, !dbg !1459
  store i32 %101, i32* %16, align 4, !dbg !1461
  %102 = load i32, i32* %15, align 4, !dbg !1462
  %103 = load i32, i32* %12, align 4, !dbg !1464
  %104 = icmp sge i32 %102, %103, !dbg !1465
  br i1 %104, label %105, label %110, !dbg !1466

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* %13, align 4, !dbg !1467
  %107 = sext i32 %106 to i64, !dbg !1469
  %108 = load i8**, i8*** %9, align 8, !dbg !1469
  %109 = getelementptr inbounds i8*, i8** %108, i64 %107, !dbg !1469
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %109, align 8, !dbg !1470
  br label %233, !dbg !1471

; <label>:110:                                    ; preds = %99
  %111 = load i8*, i8** %11, align 8, !dbg !1472
  %112 = load i32, i32* %15, align 4, !dbg !1473
  %113 = sext i32 %112 to i64, !dbg !1474
  %114 = getelementptr inbounds i8, i8* %111, i64 %113, !dbg !1474
  %115 = load i32, i32* %13, align 4, !dbg !1475
  %116 = sext i32 %115 to i64, !dbg !1476
  %117 = load i8**, i8*** %9, align 8, !dbg !1476
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !1476
  store i8* %114, i8** %118, align 8, !dbg !1477
  %119 = load i8*, i8** %11, align 8, !dbg !1478
  %120 = load i32, i32* %15, align 4, !dbg !1479
  %121 = sext i32 %120 to i64, !dbg !1480
  %122 = getelementptr inbounds i8, i8* %119, i64 %121, !dbg !1480
  %123 = load i32, i32* %12, align 4, !dbg !1481
  %124 = load i32, i32* %15, align 4, !dbg !1482
  %125 = sub nsw i32 %123, %124, !dbg !1483
  %126 = sext i32 %125 to i64, !dbg !1481
  %127 = load i32, i32* %16, align 4, !dbg !1484
  %128 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %122, i64 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %127), !dbg !1485
  store i32 %128, i32* %14, align 4, !dbg !1486
  %129 = load i32, i32* %14, align 4, !dbg !1487
  %130 = add nsw i32 %129, 1, !dbg !1488
  %131 = load i32, i32* %15, align 4, !dbg !1489
  %132 = add nsw i32 %131, %130, !dbg !1489
  store i32 %132, i32* %15, align 4, !dbg !1489
  br label %233, !dbg !1490

; <label>:133:                                    ; preds = %41
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1491, metadata !721), !dbg !1493
  %134 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1494
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 0, !dbg !1494
  %136 = load i32, i32* %135, align 8, !dbg !1494
  %137 = icmp ule i32 %136, 40, !dbg !1494
  br i1 %137, label %138, label %144, !dbg !1494

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 3, !dbg !1495
  %140 = load i8*, i8** %139, align 8, !dbg !1495
  %141 = getelementptr i8, i8* %140, i32 %136, !dbg !1495
  %142 = bitcast i8* %141 to i64*, !dbg !1495
  %143 = add i32 %136, 8, !dbg !1495
  store i32 %143, i32* %135, align 8, !dbg !1495
  br label %149, !dbg !1495

; <label>:144:                                    ; preds = %133
  %145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 2, !dbg !1497
  %146 = load i8*, i8** %145, align 8, !dbg !1497
  %147 = bitcast i8* %146 to i64*, !dbg !1497
  %148 = getelementptr i8, i8* %146, i32 8, !dbg !1497
  store i8* %148, i8** %145, align 8, !dbg !1497
  br label %149, !dbg !1497

; <label>:149:                                    ; preds = %144, %138
  %150 = phi i64* [ %142, %138 ], [ %147, %144 ], !dbg !1499
  %151 = load i64, i64* %150, align 8, !dbg !1499
  store i64 %151, i64* %17, align 8, !dbg !1501
  %152 = load i32, i32* %15, align 4, !dbg !1502
  %153 = load i32, i32* %12, align 4, !dbg !1504
  %154 = icmp sge i32 %152, %153, !dbg !1505
  br i1 %154, label %155, label %160, !dbg !1506

; <label>:155:                                    ; preds = %149
  %156 = load i32, i32* %13, align 4, !dbg !1507
  %157 = sext i32 %156 to i64, !dbg !1509
  %158 = load i8**, i8*** %9, align 8, !dbg !1509
  %159 = getelementptr inbounds i8*, i8** %158, i64 %157, !dbg !1509
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %159, align 8, !dbg !1510
  br label %233, !dbg !1511

; <label>:160:                                    ; preds = %149
  %161 = load i8*, i8** %11, align 8, !dbg !1512
  %162 = load i32, i32* %15, align 4, !dbg !1513
  %163 = sext i32 %162 to i64, !dbg !1514
  %164 = getelementptr inbounds i8, i8* %161, i64 %163, !dbg !1514
  %165 = load i32, i32* %13, align 4, !dbg !1515
  %166 = sext i32 %165 to i64, !dbg !1516
  %167 = load i8**, i8*** %9, align 8, !dbg !1516
  %168 = getelementptr inbounds i8*, i8** %167, i64 %166, !dbg !1516
  store i8* %164, i8** %168, align 8, !dbg !1517
  %169 = load i8*, i8** %11, align 8, !dbg !1518
  %170 = load i32, i32* %15, align 4, !dbg !1519
  %171 = sext i32 %170 to i64, !dbg !1520
  %172 = getelementptr inbounds i8, i8* %169, i64 %171, !dbg !1520
  %173 = load i32, i32* %12, align 4, !dbg !1521
  %174 = load i32, i32* %15, align 4, !dbg !1522
  %175 = sub nsw i32 %173, %174, !dbg !1523
  %176 = sext i32 %175 to i64, !dbg !1521
  %177 = load i64, i64* %17, align 8, !dbg !1524
  %178 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %172, i64 %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 %177), !dbg !1525
  store i32 %178, i32* %14, align 4, !dbg !1526
  %179 = load i32, i32* %14, align 4, !dbg !1527
  %180 = add nsw i32 %179, 1, !dbg !1528
  %181 = load i32, i32* %15, align 4, !dbg !1529
  %182 = add nsw i32 %181, %180, !dbg !1529
  store i32 %182, i32* %15, align 4, !dbg !1529
  br label %233, !dbg !1530

; <label>:183:                                    ; preds = %41
  call void @llvm.dbg.declare(metadata double* %18, metadata !1531, metadata !721), !dbg !1533
  %184 = load %struct.__va_list_tag*, %struct.__va_list_tag** %7, align 8, !dbg !1534
  %185 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 1, !dbg !1534
  %186 = load i32, i32* %185, align 4, !dbg !1534
  %187 = icmp ule i32 %186, 160, !dbg !1534
  br i1 %187, label %188, label %194, !dbg !1534

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 3, !dbg !1535
  %190 = load i8*, i8** %189, align 8, !dbg !1535
  %191 = getelementptr i8, i8* %190, i32 %186, !dbg !1535
  %192 = bitcast i8* %191 to double*, !dbg !1535
  %193 = add i32 %186, 16, !dbg !1535
  store i32 %193, i32* %185, align 4, !dbg !1535
  br label %199, !dbg !1535

; <label>:194:                                    ; preds = %183
  %195 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %184, i32 0, i32 2, !dbg !1537
  %196 = load i8*, i8** %195, align 8, !dbg !1537
  %197 = bitcast i8* %196 to double*, !dbg !1537
  %198 = getelementptr i8, i8* %196, i32 8, !dbg !1537
  store i8* %198, i8** %195, align 8, !dbg !1537
  br label %199, !dbg !1537

; <label>:199:                                    ; preds = %194, %188
  %200 = phi double* [ %192, %188 ], [ %197, %194 ], !dbg !1539
  %201 = load double, double* %200, align 8, !dbg !1539
  store double %201, double* %18, align 8, !dbg !1541
  %202 = load i32, i32* %15, align 4, !dbg !1542
  %203 = load i32, i32* %12, align 4, !dbg !1544
  %204 = icmp sge i32 %202, %203, !dbg !1545
  br i1 %204, label %205, label %210, !dbg !1546

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* %13, align 4, !dbg !1547
  %207 = sext i32 %206 to i64, !dbg !1549
  %208 = load i8**, i8*** %9, align 8, !dbg !1549
  %209 = getelementptr inbounds i8*, i8** %208, i64 %207, !dbg !1549
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %209, align 8, !dbg !1550
  br label %233, !dbg !1551

; <label>:210:                                    ; preds = %199
  %211 = load i8*, i8** %11, align 8, !dbg !1552
  %212 = load i32, i32* %15, align 4, !dbg !1553
  %213 = sext i32 %212 to i64, !dbg !1554
  %214 = getelementptr inbounds i8, i8* %211, i64 %213, !dbg !1554
  %215 = load i32, i32* %13, align 4, !dbg !1555
  %216 = sext i32 %215 to i64, !dbg !1556
  %217 = load i8**, i8*** %9, align 8, !dbg !1556
  %218 = getelementptr inbounds i8*, i8** %217, i64 %216, !dbg !1556
  store i8* %214, i8** %218, align 8, !dbg !1557
  %219 = load i8*, i8** %11, align 8, !dbg !1558
  %220 = load i32, i32* %15, align 4, !dbg !1559
  %221 = sext i32 %220 to i64, !dbg !1560
  %222 = getelementptr inbounds i8, i8* %219, i64 %221, !dbg !1560
  %223 = load i32, i32* %12, align 4, !dbg !1561
  %224 = load i32, i32* %15, align 4, !dbg !1562
  %225 = sub nsw i32 %223, %224, !dbg !1563
  %226 = sext i32 %225 to i64, !dbg !1561
  %227 = load double, double* %18, align 8, !dbg !1564
  %228 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %222, i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), double %227), !dbg !1565
  store i32 %228, i32* %14, align 4, !dbg !1566
  %229 = load i32, i32* %14, align 4, !dbg !1567
  %230 = add nsw i32 %229, 1, !dbg !1568
  %231 = load i32, i32* %15, align 4, !dbg !1569
  %232 = add nsw i32 %231, %230, !dbg !1569
  store i32 %232, i32* %15, align 4, !dbg !1569
  br label %233, !dbg !1570

; <label>:233:                                    ; preds = %41, %210, %205, %160, %155, %110, %105, %82
  br label %234, !dbg !1571

; <label>:234:                                    ; preds = %233
  %235 = load i32, i32* %13, align 4, !dbg !1572
  %236 = add nsw i32 %235, 1, !dbg !1572
  store i32 %236, i32* %13, align 4, !dbg !1572
  br label %35, !dbg !1574, !llvm.loop !1575

; <label>:237:                                    ; preds = %26, %35
  ret void, !dbg !1577
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #0 !dbg !1578 {
  %6 = alloca %struct._TEXT_DEST_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._WINDOW_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %6, metadata !1665, metadata !721), !dbg !1666
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1667, metadata !721), !dbg !1668
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1669, metadata !721), !dbg !1670
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1671, metadata !721), !dbg !1672
  store %struct._WINDOW_REC* %4, %struct._WINDOW_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %10, metadata !1673, metadata !721), !dbg !1674
  %11 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !1675
  %12 = load i8*, i8** %7, align 8, !dbg !1676
  %13 = load i8*, i8** %8, align 8, !dbg !1677
  %14 = load i32, i32* %9, align 4, !dbg !1678
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %10, align 8, !dbg !1679
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %11, i8* %12, i8* null, i8* %13, i32 %14, %struct._WINDOW_REC* %15), !dbg !1680
  ret void, !dbg !1681
}

; Function Attrs: nounwind uwtable
define void @format_create_dest_tag(%struct._TEXT_DEST_REC*, i8*, i8*, i8*, i32, %struct._WINDOW_REC*) #0 !dbg !1682 {
  %7 = alloca %struct._TEXT_DEST_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._WINDOW_REC*, align 8
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %7, metadata !1685, metadata !721), !dbg !1686
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1687, metadata !721), !dbg !1688
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1689, metadata !721), !dbg !1690
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1691, metadata !721), !dbg !1692
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1693, metadata !721), !dbg !1694
  store %struct._WINDOW_REC* %5, %struct._WINDOW_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %12, metadata !1695, metadata !721), !dbg !1696
  %13 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1697
  %14 = bitcast %struct._TEXT_DEST_REC* %13 to i8*, !dbg !1698
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 72, i32 8, i1 false), !dbg !1698
  %15 = load i8*, i8** %8, align 8, !dbg !1699
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1699
  %17 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1700
  %18 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %17, i32 0, i32 1, !dbg !1701
  store %struct._SERVER_REC* %16, %struct._SERVER_REC** %18, align 8, !dbg !1702
  %19 = load i8*, i8** %8, align 8, !dbg !1703
  %20 = icmp ne i8* %19, null, !dbg !1704
  br i1 %20, label %21, label %27, !dbg !1703

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %8, align 8, !dbg !1705
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1707
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !1708
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 6, !dbg !1709
  %26 = load i8*, i8** %25, align 8, !dbg !1709
  br label %29, !dbg !1710

; <label>:27:                                     ; preds = %6
  %28 = load i8*, i8** %9, align 8, !dbg !1711
  br label %29, !dbg !1713

; <label>:29:                                     ; preds = %27, %21
  %30 = phi i8* [ %26, %21 ], [ %28, %27 ], !dbg !1714
  %31 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1716
  %32 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %31, i32 0, i32 2, !dbg !1717
  store i8* %30, i8** %32, align 8, !dbg !1718
  %33 = load i8*, i8** %10, align 8, !dbg !1719
  %34 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1720
  %35 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %34, i32 0, i32 3, !dbg !1721
  store i8* %33, i8** %35, align 8, !dbg !1722
  %36 = load i32, i32* %11, align 4, !dbg !1723
  %37 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1724
  %38 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %37, i32 0, i32 6, !dbg !1725
  store i32 %36, i32* %38, align 8, !dbg !1726
  %39 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %12, align 8, !dbg !1727
  %40 = icmp ne %struct._WINDOW_REC* %39, null, !dbg !1728
  br i1 %40, label %41, label %43, !dbg !1727

; <label>:41:                                     ; preds = %29
  %42 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %12, align 8, !dbg !1729
  br label %48, !dbg !1730

; <label>:43:                                     ; preds = %29
  %44 = load i8*, i8** %8, align 8, !dbg !1731
  %45 = load i8*, i8** %10, align 8, !dbg !1732
  %46 = load i32, i32* %11, align 4, !dbg !1733
  %47 = call %struct._WINDOW_REC* @window_find_closest(i8* %44, i8* %45, i32 %46), !dbg !1734
  br label %48, !dbg !1735

; <label>:48:                                     ; preds = %43, %41
  %49 = phi %struct._WINDOW_REC* [ %42, %41 ], [ %47, %43 ], !dbg !1736
  %50 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !1737
  %51 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %50, i32 0, i32 0, !dbg !1738
  store %struct._WINDOW_REC* %49, %struct._WINDOW_REC** %51, align 8, !dbg !1739
  ret void, !dbg !1740
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare %struct._WINDOW_REC* @window_find_closest(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @format_get_length(i8*) #0 !dbg !1741 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1744, metadata !721), !dbg !1745
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1746, metadata !721), !dbg !1747
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1748, metadata !721), !dbg !1749
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1750, metadata !721), !dbg !1751
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1752, metadata !721), !dbg !1753
  store i32 0, i32* %7, align 4, !dbg !1753
  br label %8, !dbg !1754, !llvm.loop !1755

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1756
  %10 = icmp ne i8* %9, null, !dbg !1760
  br i1 %10, label %11, label %12, !dbg !1756

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1761

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.format_get_length, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)), !dbg !1764
  store i32 0, i32* %2, align 4, !dbg !1767
  br label %70, !dbg !1767

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1768

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1770
  %16 = call i32 @string_policy(i8* %15), !dbg !1771
  store i32 %16, i32* %6, align 4, !dbg !1772
  %17 = call %struct._GString* @g_string_new(i8* null), !dbg !1773
  store %struct._GString* %17, %struct._GString** %4, align 8, !dbg !1774
  store i32 0, i32* %5, align 4, !dbg !1775
  br label %18, !dbg !1776

; <label>:18:                                     ; preds = %61, %50, %14
  %19 = load i8*, i8** %3, align 8, !dbg !1777
  %20 = load i8, i8* %19, align 1, !dbg !1779
  %21 = sext i8 %20 to i32, !dbg !1779
  %22 = icmp ne i32 %21, 0, !dbg !1780
  br i1 %22, label %23, label %66, !dbg !1781

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %3, align 8, !dbg !1782
  %25 = load i8, i8* %24, align 1, !dbg !1785
  %26 = sext i8 %25 to i32, !dbg !1785
  %27 = icmp eq i32 %26, 37, !dbg !1786
  br i1 %27, label %28, label %61, !dbg !1787

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %3, align 8, !dbg !1788
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1788
  %31 = load i8, i8* %30, align 1, !dbg !1788
  %32 = sext i8 %31 to i32, !dbg !1788
  %33 = icmp ne i32 %32, 0, !dbg !1790
  br i1 %33, label %34, label %61, !dbg !1791

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %3, align 8, !dbg !1792
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !1792
  store i8* %36, i8** %3, align 8, !dbg !1792
  %37 = load i8*, i8** %3, align 8, !dbg !1794
  %38 = load i8, i8* %37, align 1, !dbg !1796
  %39 = sext i8 %38 to i32, !dbg !1796
  %40 = icmp ne i32 %39, 37, !dbg !1797
  br i1 %40, label %41, label %52, !dbg !1798

; <label>:41:                                     ; preds = %34
  %42 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1799
  %43 = call i32 @format_expand_styles(%struct._GString* %42, i8** %3, i32* null), !dbg !1801
  store i32 %43, i32* %7, align 4, !dbg !1802
  %44 = load i32, i32* %7, align 4, !dbg !1803
  %45 = load i8*, i8** %3, align 8, !dbg !1804
  %46 = sext i32 %44 to i64, !dbg !1804
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !1804
  store i8* %47, i8** %3, align 8, !dbg !1804
  %48 = load i32, i32* %7, align 4, !dbg !1805
  %49 = icmp ne i32 %48, 0, !dbg !1805
  br i1 %49, label %50, label %51, !dbg !1807

; <label>:50:                                     ; preds = %41
  br label %18, !dbg !1808, !llvm.loop !1809

; <label>:51:                                     ; preds = %41
  br label %52, !dbg !1810

; <label>:52:                                     ; preds = %51, %34
  %53 = load i8*, i8** %3, align 8, !dbg !1811
  %54 = load i8, i8* %53, align 1, !dbg !1813
  %55 = sext i8 %54 to i32, !dbg !1813
  %56 = icmp ne i32 %55, 37, !dbg !1814
  br i1 %56, label %57, label %60, !dbg !1815

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %5, align 4, !dbg !1816
  %59 = add nsw i32 %58, 1, !dbg !1816
  store i32 %59, i32* %5, align 4, !dbg !1816
  br label %60, !dbg !1817

; <label>:60:                                     ; preds = %57, %52
  br label %61, !dbg !1818

; <label>:61:                                     ; preds = %60, %28, %23
  %62 = load i32, i32* %6, align 4, !dbg !1819
  %63 = call i32 @string_advance(i8** %3, i32 %62), !dbg !1820
  %64 = load i32, i32* %5, align 4, !dbg !1821
  %65 = add nsw i32 %64, %63, !dbg !1821
  store i32 %65, i32* %5, align 4, !dbg !1821
  br label %18, !dbg !1822, !llvm.loop !1809

; <label>:66:                                     ; preds = %18
  %67 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1824
  %68 = call i8* @g_string_free(%struct._GString* %67, i32 1), !dbg !1825
  %69 = load i32, i32* %5, align 4, !dbg !1826
  store i32 %69, i32* %2, align 4, !dbg !1827
  br label %70, !dbg !1827

; <label>:70:                                     ; preds = %66, %12
  %71 = load i32, i32* %2, align 4, !dbg !1828
  ret i32 %71, !dbg !1828
}

declare i32 @string_policy(i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i32 @string_advance(i8**, i32) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @format_real_length(i8*, i32) #0 !dbg !1829 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1832, metadata !721), !dbg !1833
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1834, metadata !721), !dbg !1835
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1836, metadata !721), !dbg !1837
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1838, metadata !721), !dbg !1839
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1840, metadata !721), !dbg !1841
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1842, metadata !721), !dbg !1843
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1844, metadata !721), !dbg !1845
  store i32 0, i32* %10, align 4, !dbg !1845
  br label %11, !dbg !1846, !llvm.loop !1847

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1848
  %13 = icmp ne i8* %12, null, !dbg !1852
  br i1 %13, label %14, label %15, !dbg !1848

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1853

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.format_real_length, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)), !dbg !1856
  store i32 0, i32* %3, align 4, !dbg !1859
  br label %91, !dbg !1859

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1860

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1862, !llvm.loop !1863

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !1864
  %20 = icmp sge i32 %19, 0, !dbg !1868
  br i1 %20, label %21, label %22, !dbg !1864

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1869

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.format_real_length, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)), !dbg !1872
  store i32 0, i32* %3, align 4, !dbg !1875
  br label %91, !dbg !1875

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1876

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %4, align 8, !dbg !1878
  %26 = call i32 @string_policy(i8* %25), !dbg !1879
  store i32 %26, i32* %9, align 4, !dbg !1880
  %27 = load i8*, i8** %4, align 8, !dbg !1881
  store i8* %27, i8** %7, align 8, !dbg !1882
  %28 = call %struct._GString* @g_string_new(i8* null), !dbg !1883
  store %struct._GString* %28, %struct._GString** %6, align 8, !dbg !1884
  br label %29, !dbg !1885

; <label>:29:                                     ; preds = %81, %58, %24
  %30 = load i8*, i8** %4, align 8, !dbg !1886
  %31 = load i8, i8* %30, align 1, !dbg !1888
  %32 = sext i8 %31 to i32, !dbg !1888
  %33 = icmp ne i32 %32, 0, !dbg !1889
  br i1 %33, label %34, label %82, !dbg !1890

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 8, !dbg !1891
  store i8* %35, i8** %8, align 8, !dbg !1893
  %36 = load i8*, i8** %4, align 8, !dbg !1894
  %37 = load i8, i8* %36, align 1, !dbg !1896
  %38 = sext i8 %37 to i32, !dbg !1896
  %39 = icmp eq i32 %38, 37, !dbg !1897
  br i1 %39, label %40, label %72, !dbg !1898

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %4, align 8, !dbg !1899
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1899
  %43 = load i8, i8* %42, align 1, !dbg !1899
  %44 = sext i8 %43 to i32, !dbg !1899
  %45 = icmp ne i32 %44, 0, !dbg !1901
  br i1 %45, label %46, label %72, !dbg !1902

; <label>:46:                                     ; preds = %40
  %47 = load i8*, i8** %4, align 8, !dbg !1903
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !1903
  store i8* %48, i8** %4, align 8, !dbg !1903
  %49 = load i8*, i8** %4, align 8, !dbg !1905
  %50 = load i8, i8* %49, align 1, !dbg !1907
  %51 = sext i8 %50 to i32, !dbg !1907
  %52 = icmp ne i32 %51, 37, !dbg !1908
  br i1 %52, label %53, label %71, !dbg !1909

; <label>:53:                                     ; preds = %46
  %54 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1910
  %55 = call i32 @format_expand_styles(%struct._GString* %54, i8** %4, i32* null), !dbg !1912
  store i32 %55, i32* %10, align 4, !dbg !1913
  %56 = load i32, i32* %10, align 4, !dbg !1914
  %57 = icmp ne i32 %56, 0, !dbg !1914
  br i1 %57, label %58, label %63, !dbg !1916

; <label>:58:                                     ; preds = %53
  %59 = load i32, i32* %10, align 4, !dbg !1917
  %60 = load i8*, i8** %4, align 8, !dbg !1919
  %61 = sext i32 %59 to i64, !dbg !1919
  %62 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !1919
  store i8* %62, i8** %4, align 8, !dbg !1919
  br label %29, !dbg !1920, !llvm.loop !1921

; <label>:63:                                     ; preds = %53
  %64 = load i32, i32* %5, align 4, !dbg !1922
  %65 = add nsw i32 %64, -1, !dbg !1922
  store i32 %65, i32* %5, align 4, !dbg !1922
  %66 = icmp slt i32 %65, 0, !dbg !1924
  br i1 %66, label %67, label %69, !dbg !1925

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** %8, align 8, !dbg !1926
  store i8* %68, i8** %4, align 8, !dbg !1928
  br label %82, !dbg !1929

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %4, align 8, !dbg !1930
  store i8* %70, i8** %8, align 8, !dbg !1931
  br label %71, !dbg !1932

; <label>:71:                                     ; preds = %69, %46
  br label %72, !dbg !1933

; <label>:72:                                     ; preds = %71, %40, %34
  %73 = load i32, i32* %9, align 4, !dbg !1934
  %74 = call i32 @string_advance(i8** %4, i32 %73), !dbg !1935
  %75 = load i32, i32* %5, align 4, !dbg !1936
  %76 = sub nsw i32 %75, %74, !dbg !1936
  store i32 %76, i32* %5, align 4, !dbg !1936
  %77 = load i32, i32* %5, align 4, !dbg !1937
  %78 = icmp slt i32 %77, 0, !dbg !1939
  br i1 %78, label %79, label %81, !dbg !1940

; <label>:79:                                     ; preds = %72
  %80 = load i8*, i8** %8, align 8, !dbg !1941
  store i8* %80, i8** %4, align 8, !dbg !1943
  br label %82, !dbg !1944

; <label>:81:                                     ; preds = %72
  br label %29, !dbg !1945, !llvm.loop !1921

; <label>:82:                                     ; preds = %79, %67, %29
  %83 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1947
  %84 = call i8* @g_string_free(%struct._GString* %83, i32 1), !dbg !1948
  %85 = load i8*, i8** %4, align 8, !dbg !1949
  %86 = load i8*, i8** %7, align 8, !dbg !1950
  %87 = ptrtoint i8* %85 to i64, !dbg !1951
  %88 = ptrtoint i8* %86 to i64, !dbg !1951
  %89 = sub i64 %87, %88, !dbg !1951
  %90 = trunc i64 %89 to i32, !dbg !1952
  store i32 %90, i32* %3, align 4, !dbg !1953
  br label %91, !dbg !1953

; <label>:91:                                     ; preds = %82, %22, %15
  %92 = load i32, i32* %3, align 4, !dbg !1954
  ret i32 %92, !dbg !1954
}

; Function Attrs: nounwind uwtable
define i8* @format_string_expand(i8*, i32*) #0 !dbg !1955 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1958, metadata !721), !dbg !1959
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !1960, metadata !721), !dbg !1961
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1962, metadata !721), !dbg !1963
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1964, metadata !721), !dbg !1965
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1966, metadata !721), !dbg !1967
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1968, metadata !721), !dbg !1969
  br label %10, !dbg !1970, !llvm.loop !1971

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1972
  %12 = icmp ne i8* %11, null, !dbg !1976
  br i1 %12, label %13, label %14, !dbg !1972

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1977

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.format_string_expand, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !1980
  store i8* null, i8** %3, align 8, !dbg !1983
  br label %78, !dbg !1983

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1984

; <label>:16:                                     ; preds = %15
  %17 = call %struct._GString* @g_string_new(i8* null), !dbg !1986
  store %struct._GString* %17, %struct._GString** %6, align 8, !dbg !1987
  %18 = load i32*, i32** %5, align 8, !dbg !1988
  %19 = icmp ne i32* %18, null, !dbg !1990
  br i1 %19, label %20, label %22, !dbg !1991

; <label>:20:                                     ; preds = %16
  %21 = load i32*, i32** %5, align 8, !dbg !1992
  store i32 0, i32* %21, align 4, !dbg !1994
  br label %22, !dbg !1995

; <label>:22:                                     ; preds = %20, %16
  store i8 0, i8* %7, align 1, !dbg !1996
  br label %23, !dbg !1997

; <label>:23:                                     ; preds = %68, %22
  %24 = load i8*, i8** %4, align 8, !dbg !1998
  %25 = load i8, i8* %24, align 1, !dbg !2000
  %26 = sext i8 %25 to i32, !dbg !2000
  %27 = icmp ne i32 %26, 0, !dbg !2001
  br i1 %27, label %28, label %71, !dbg !2002

; <label>:28:                                     ; preds = %23
  %29 = load i8, i8* %7, align 1, !dbg !2003
  %30 = sext i8 %29 to i32, !dbg !2003
  %31 = icmp eq i32 %30, 37, !dbg !2006
  br i1 %31, label %32, label %54, !dbg !2007

; <label>:32:                                     ; preds = %28
  %33 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2008
  %34 = load i32*, i32** %5, align 8, !dbg !2010
  %35 = call i32 @format_expand_styles(%struct._GString* %33, i8** %4, i32* %34), !dbg !2011
  store i32 %35, i32* %9, align 4, !dbg !2012
  %36 = load i32, i32* %9, align 4, !dbg !2013
  %37 = icmp ne i32 %36, 0, !dbg !2013
  br i1 %37, label %47, label %38, !dbg !2015

; <label>:38:                                     ; preds = %32
  %39 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2016
  %40 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %39, i8 signext 37), !dbg !2018
  %41 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2019
  %42 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %41, i8 signext 37), !dbg !2020
  %43 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2021
  %44 = load i8*, i8** %4, align 8, !dbg !2022
  %45 = load i8, i8* %44, align 1, !dbg !2023
  %46 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %43, i8 signext %45), !dbg !2024
  br label %53, !dbg !2025

; <label>:47:                                     ; preds = %32
  %48 = load i32, i32* %9, align 4, !dbg !2026
  %49 = sub nsw i32 %48, 1, !dbg !2028
  %50 = load i8*, i8** %4, align 8, !dbg !2029
  %51 = sext i32 %49 to i64, !dbg !2029
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !2029
  store i8* %52, i8** %4, align 8, !dbg !2029
  br label %53

; <label>:53:                                     ; preds = %47, %38
  store i8 0, i8* %7, align 1, !dbg !2030
  br label %68, !dbg !2031

; <label>:54:                                     ; preds = %28
  %55 = load i8*, i8** %4, align 8, !dbg !2032
  %56 = load i8, i8* %55, align 1, !dbg !2035
  %57 = sext i8 %56 to i32, !dbg !2035
  %58 = icmp eq i32 %57, 37, !dbg !2036
  br i1 %58, label %59, label %62, !dbg !2037

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %4, align 8, !dbg !2038
  %61 = load i8, i8* %60, align 1, !dbg !2039
  store i8 %61, i8* %7, align 1, !dbg !2040
  br label %67, !dbg !2041

; <label>:62:                                     ; preds = %54
  %63 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2042
  %64 = load i8*, i8** %4, align 8, !dbg !2043
  %65 = load i8, i8* %64, align 1, !dbg !2044
  %66 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %63, i8 signext %65), !dbg !2045
  br label %67

; <label>:67:                                     ; preds = %62, %59
  br label %68

; <label>:68:                                     ; preds = %67, %53
  %69 = load i8*, i8** %4, align 8, !dbg !2046
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !2046
  store i8* %70, i8** %4, align 8, !dbg !2046
  br label %23, !dbg !2047, !llvm.loop !2049

; <label>:71:                                     ; preds = %23
  %72 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2050
  %73 = getelementptr inbounds %struct._GString, %struct._GString* %72, i32 0, i32 0, !dbg !2051
  %74 = load i8*, i8** %73, align 8, !dbg !2051
  store i8* %74, i8** %8, align 8, !dbg !2052
  %75 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2053
  %76 = call i8* @g_string_free(%struct._GString* %75, i32 0), !dbg !2054
  %77 = load i8*, i8** %8, align 8, !dbg !2055
  store i8* %77, i8** %3, align 8, !dbg !2056
  br label %78, !dbg !2056

; <label>:78:                                     ; preds = %71, %14
  %79 = load i8*, i8** %3, align 8, !dbg !2057
  ret i8* %79, !dbg !2057
}

; Function Attrs: nounwind uwtable
define i8* @format_get_text_theme(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) #0 !dbg !2058 {
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._TEXT_DEST_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca i8*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !2061, metadata !721), !dbg !2062
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2063, metadata !721), !dbg !2064
  store %struct._TEXT_DEST_REC* %2, %struct._TEXT_DEST_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %7, metadata !2065, metadata !721), !dbg !2066
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2067, metadata !721), !dbg !2068
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !2069, metadata !721), !dbg !2078
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2079, metadata !721), !dbg !2080
  %11 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2081
  %12 = icmp eq %struct.THEME_REC* %11, null, !dbg !2083
  br i1 %12, label %13, label %37, !dbg !2084

; <label>:13:                                     ; preds = %4
  %14 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !2085
  %15 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %14, i32 0, i32 0, !dbg !2086
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %15, align 8, !dbg !2086
  %17 = icmp ne %struct._WINDOW_REC* %16, null, !dbg !2087
  br i1 %17, label %18, label %31, !dbg !2088

; <label>:18:                                     ; preds = %13
  %19 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !2089
  %20 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %19, i32 0, i32 0, !dbg !2091
  %21 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %20, align 8, !dbg !2091
  %22 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %21, i32 0, i32 19, !dbg !2092
  %23 = load i8*, i8** %22, align 8, !dbg !2092
  %24 = icmp ne i8* %23, null, !dbg !2093
  br i1 %24, label %25, label %31, !dbg !2094

; <label>:25:                                     ; preds = %18
  %26 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !2095
  %27 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %26, i32 0, i32 0, !dbg !2097
  %28 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %27, align 8, !dbg !2097
  %29 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %28, i32 0, i32 19, !dbg !2098
  %30 = load i8*, i8** %29, align 8, !dbg !2098
  br label %34, !dbg !2099

; <label>:31:                                     ; preds = %18, %13
  %32 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2100
  %33 = bitcast %struct.THEME_REC* %32 to i8*, !dbg !2100
  br label %34, !dbg !2102

; <label>:34:                                     ; preds = %31, %25
  %35 = phi i8* [ %30, %25 ], [ %33, %31 ], !dbg !2103
  %36 = bitcast i8* %35 to %struct.THEME_REC*, !dbg !2105
  store %struct.THEME_REC* %36, %struct.THEME_REC** %5, align 8, !dbg !2106
  br label %37, !dbg !2107

; <label>:37:                                     ; preds = %34, %4
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !2108
  %39 = bitcast %struct.__va_list_tag* %38 to i8*, !dbg !2108
  call void @llvm.va_start(i8* %39), !dbg !2108
  %40 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2109
  %41 = load i8*, i8** %6, align 8, !dbg !2110
  %42 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %7, align 8, !dbg !2111
  %43 = load i32, i32* %8, align 4, !dbg !2112
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !2113
  %45 = call i8* @format_get_text_theme_args(%struct.THEME_REC* %40, i8* %41, %struct._TEXT_DEST_REC* %42, i32 %43, %struct.__va_list_tag* %44), !dbg !2114
  store i8* %45, i8** %10, align 8, !dbg !2115
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !2116
  %47 = bitcast %struct.__va_list_tag* %46 to i8*, !dbg !2116
  call void @llvm.va_end(i8* %47), !dbg !2116
  %48 = load i8*, i8** %10, align 8, !dbg !2117
  ret i8* %48, !dbg !2118
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind uwtable
define i8* @format_get_text_theme_args(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, %struct.__va_list_tag*) #0 !dbg !2119 {
  %6 = alloca %struct.THEME_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._TEXT_DEST_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.__va_list_tag*, align 8
  %11 = alloca [10 x i8*], align 16
  %12 = alloca [200 x i8], align 16
  %13 = alloca %struct._FORMAT_REC*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %6, metadata !2122, metadata !721), !dbg !2123
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2124, metadata !721), !dbg !2125
  store %struct._TEXT_DEST_REC* %2, %struct._TEXT_DEST_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %8, metadata !2126, metadata !721), !dbg !2127
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2128, metadata !721), !dbg !2129
  store %struct.__va_list_tag* %4, %struct.__va_list_tag** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %10, metadata !2130, metadata !721), !dbg !2131
  call void @llvm.dbg.declare(metadata [10 x i8*]* %11, metadata !2132, metadata !721), !dbg !2134
  call void @llvm.dbg.declare(metadata [200 x i8]* %12, metadata !2135, metadata !721), !dbg !2139
  call void @llvm.dbg.declare(metadata %struct._FORMAT_REC** %13, metadata !2140, metadata !721), !dbg !2141
  %14 = load %struct._GHashTable*, %struct._GHashTable** @default_formats, align 8, !dbg !2142
  %15 = load i8*, i8** %7, align 8, !dbg !2143
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %14, i8* %15), !dbg !2144
  %17 = bitcast i8* %16 to %struct._FORMAT_REC*, !dbg !2144
  store %struct._FORMAT_REC* %17, %struct._FORMAT_REC** %13, align 8, !dbg !2145
  %18 = load %struct.__va_list_tag*, %struct.__va_list_tag** %10, align 8, !dbg !2146
  %19 = load i32, i32* %9, align 4, !dbg !2147
  %20 = sext i32 %19 to i64, !dbg !2148
  %21 = load %struct._FORMAT_REC*, %struct._FORMAT_REC** %13, align 8, !dbg !2148
  %22 = getelementptr inbounds %struct._FORMAT_REC, %struct._FORMAT_REC* %21, i64 %20, !dbg !2148
  %23 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i32 0, i32 0, !dbg !2149
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i32 0, i32 0, !dbg !2150
  call void @format_read_arglist(%struct.__va_list_tag* %18, %struct._FORMAT_REC* %22, i8** %23, i32 10, i8* %24, i32 200), !dbg !2151
  %25 = load %struct.THEME_REC*, %struct.THEME_REC** %6, align 8, !dbg !2152
  %26 = load i8*, i8** %7, align 8, !dbg !2153
  %27 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %8, align 8, !dbg !2154
  %28 = load i32, i32* %9, align 4, !dbg !2155
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %11, i32 0, i32 0, !dbg !2156
  %30 = call i8* @format_get_text_theme_charargs(%struct.THEME_REC* %25, i8* %26, %struct._TEXT_DEST_REC* %27, i32 %28, i8** %29), !dbg !2157
  ret i8* %30, !dbg !2158
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define i8* @format_get_text_theme_charargs(%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, i8**) #0 !dbg !2159 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.THEME_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._TEXT_DEST_REC*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.MODULE_THEME_REC*, align 8
  %13 = alloca i8*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %7, metadata !2162, metadata !721), !dbg !2163
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2164, metadata !721), !dbg !2165
  store %struct._TEXT_DEST_REC* %2, %struct._TEXT_DEST_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %9, metadata !2166, metadata !721), !dbg !2167
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2168, metadata !721), !dbg !2169
  store i8** %4, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !2170, metadata !721), !dbg !2171
  call void @llvm.dbg.declare(metadata %struct.MODULE_THEME_REC** %12, metadata !2172, metadata !721), !dbg !2181
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2182, metadata !721), !dbg !2183
  %14 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !2184
  %15 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %14, i32 0, i32 6, !dbg !2185
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !2185
  %17 = load i8*, i8** %8, align 8, !dbg !2186
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* %17), !dbg !2187
  %19 = bitcast i8* %18 to %struct.MODULE_THEME_REC*, !dbg !2187
  store %struct.MODULE_THEME_REC* %19, %struct.MODULE_THEME_REC** %12, align 8, !dbg !2188
  %20 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %12, align 8, !dbg !2189
  %21 = icmp eq %struct.MODULE_THEME_REC* %20, null, !dbg !2191
  br i1 %21, label %22, label %23, !dbg !2192

; <label>:22:                                     ; preds = %5
  store i8* null, i8** %6, align 8, !dbg !2193
  br label %35, !dbg !2193

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !2194
  %25 = sext i32 %24 to i64, !dbg !2195
  %26 = load %struct.MODULE_THEME_REC*, %struct.MODULE_THEME_REC** %12, align 8, !dbg !2195
  %27 = getelementptr inbounds %struct.MODULE_THEME_REC, %struct.MODULE_THEME_REC* %26, i32 0, i32 3, !dbg !2196
  %28 = load i8**, i8*** %27, align 8, !dbg !2196
  %29 = getelementptr inbounds i8*, i8** %28, i64 %25, !dbg !2195
  %30 = load i8*, i8** %29, align 8, !dbg !2195
  store i8* %30, i8** %13, align 8, !dbg !2197
  %31 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %9, align 8, !dbg !2198
  %32 = load i8*, i8** %13, align 8, !dbg !2199
  %33 = load i8**, i8*** %11, align 8, !dbg !2200
  %34 = call i8* @format_get_text_args(%struct._TEXT_DEST_REC* %31, i8* %32, i8** %33), !dbg !2201
  store i8* %34, i8** %6, align 8, !dbg !2202
  br label %35, !dbg !2202

; <label>:35:                                     ; preds = %23, %22
  %36 = load i8*, i8** %6, align 8, !dbg !2203
  ret i8* %36, !dbg !2203
}

; Function Attrs: nounwind uwtable
define internal i8* @format_get_text_args(%struct._TEXT_DEST_REC*, i8*, i8**) #0 !dbg !2204 {
  %4 = alloca %struct._TEXT_DEST_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %4, metadata !2207, metadata !721), !dbg !2208
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2209, metadata !721), !dbg !2210
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2211, metadata !721), !dbg !2212
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !2213, metadata !721), !dbg !2214
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2215, metadata !721), !dbg !2216
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2217, metadata !721), !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2219, metadata !721), !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2221, metadata !721), !dbg !2222
  %15 = call %struct._GString* @g_string_new(i8* null), !dbg !2223
  store %struct._GString* %15, %struct._GString** %7, align 8, !dbg !2224
  store i8 0, i8* %8, align 1, !dbg !2225
  br label %16, !dbg !2226

; <label>:16:                                     ; preds = %146, %3
  %17 = load i8*, i8** %5, align 8, !dbg !2227
  %18 = load i8, i8* %17, align 1, !dbg !2229
  %19 = sext i8 %18 to i32, !dbg !2229
  %20 = icmp ne i32 %19, 0, !dbg !2230
  br i1 %20, label %21, label %149, !dbg !2231

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %8, align 1, !dbg !2232
  %23 = sext i8 %22 to i32, !dbg !2232
  %24 = icmp eq i32 %23, 37, !dbg !2235
  br i1 %24, label %25, label %48, !dbg !2236

; <label>:25:                                     ; preds = %21
  %26 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2237
  %27 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2239
  %28 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %27, i32 0, i32 9, !dbg !2240
  %29 = call i32 @format_expand_styles(%struct._GString* %26, i8** %5, i32* %28), !dbg !2241
  store i32 %29, i32* %11, align 4, !dbg !2242
  %30 = load i32, i32* %11, align 4, !dbg !2243
  %31 = icmp ne i32 %30, 0, !dbg !2243
  br i1 %31, label %41, label %32, !dbg !2245

; <label>:32:                                     ; preds = %25
  %33 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2246
  %34 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %33, i8 signext 37), !dbg !2248
  %35 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2249
  %36 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %35, i8 signext 37), !dbg !2250
  %37 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2251
  %38 = load i8*, i8** %5, align 8, !dbg !2252
  %39 = load i8, i8* %38, align 1, !dbg !2253
  %40 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %37, i8 signext %39), !dbg !2254
  br label %47, !dbg !2255

; <label>:41:                                     ; preds = %25
  %42 = load i32, i32* %11, align 4, !dbg !2256
  %43 = sub nsw i32 %42, 1, !dbg !2258
  %44 = load i8*, i8** %5, align 8, !dbg !2259
  %45 = sext i32 %43 to i64, !dbg !2259
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !2259
  store i8* %46, i8** %5, align 8, !dbg !2259
  br label %47

; <label>:47:                                     ; preds = %41, %32
  store i8 0, i8* %8, align 1, !dbg !2260
  br label %146, !dbg !2261

; <label>:48:                                     ; preds = %21
  %49 = load i8, i8* %8, align 1, !dbg !2262
  %50 = sext i8 %49 to i32, !dbg !2262
  %51 = icmp eq i32 %50, 36, !dbg !2265
  br i1 %51, label %52, label %126, !dbg !2262

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2266, metadata !721), !dbg !2268
  %53 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2269
  %54 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %53, i32 0, i32 1, !dbg !2270
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %54, align 8, !dbg !2270
  %56 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2271
  %57 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %56, i32 0, i32 3, !dbg !2272
  %58 = load i8*, i8** %57, align 8, !dbg !2272
  %59 = icmp eq i8* %58, null, !dbg !2273
  br i1 %59, label %60, label %61, !dbg !2271

; <label>:60:                                     ; preds = %52
  br label %70, !dbg !2274

; <label>:61:                                     ; preds = %52
  %62 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2276
  %63 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %62, i32 0, i32 1, !dbg !2277
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %63, align 8, !dbg !2277
  %65 = bitcast %struct._SERVER_REC* %64 to i8*, !dbg !2276
  %66 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %4, align 8, !dbg !2278
  %67 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %66, i32 0, i32 3, !dbg !2279
  %68 = load i8*, i8** %67, align 8, !dbg !2279
  %69 = call %struct._WI_ITEM_REC* @window_item_find(i8* %65, i8* %68), !dbg !2280
  br label %70, !dbg !2281

; <label>:70:                                     ; preds = %61, %60
  %71 = phi %struct._WI_ITEM_REC* [ null, %60 ], [ %69, %61 ], !dbg !2283
  %72 = bitcast %struct._WI_ITEM_REC* %71 to i8*, !dbg !2283
  %73 = load i8**, i8*** %6, align 8, !dbg !2285
  %74 = call i8* @parse_special(i8** %5, %struct._SERVER_REC* %55, i8* %72, i8** %73, i32* %10, i32* null, i32 0), !dbg !2286
  store i8* %74, i8** %12, align 8, !dbg !2287
  %75 = load i8*, i8** %12, align 8, !dbg !2288
  %76 = icmp ne i8* %75, null, !dbg !2290
  br i1 %76, label %77, label %125, !dbg !2291

; <label>:77:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2292, metadata !721), !dbg !2294
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2295, metadata !721), !dbg !2296
  %78 = load i8*, i8** %12, align 8, !dbg !2297
  %79 = call i64 @strlen(i8* %78) #9, !dbg !2298
  %80 = trunc i64 %79 to i32, !dbg !2298
  store i32 %80, i32* %14, align 4, !dbg !2296
  br label %81, !dbg !2299

; <label>:81:                                     ; preds = %95, %77
  %82 = load i32, i32* %14, align 4, !dbg !2300
  %83 = icmp sgt i32 %82, 0, !dbg !2302
  br i1 %83, label %84, label %93, !dbg !2303

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %14, align 4, !dbg !2304
  %86 = sub nsw i32 %85, 1, !dbg !2306
  %87 = sext i32 %86 to i64, !dbg !2307
  %88 = load i8*, i8** %12, align 8, !dbg !2307
  %89 = getelementptr inbounds i8, i8* %88, i64 %87, !dbg !2307
  %90 = load i8, i8* %89, align 1, !dbg !2307
  %91 = sext i8 %90 to i32, !dbg !2307
  %92 = icmp eq i32 %91, 3, !dbg !2308
  br label %93

; <label>:93:                                     ; preds = %84, %81
  %94 = phi i1 [ false, %81 ], [ %92, %84 ]
  br i1 %94, label %95, label %98, !dbg !2309

; <label>:95:                                     ; preds = %93
  %96 = load i32, i32* %14, align 4, !dbg !2311
  %97 = add nsw i32 %96, -1, !dbg !2311
  store i32 %97, i32* %14, align 4, !dbg !2311
  br label %81, !dbg !2313, !llvm.loop !2314

; <label>:98:                                     ; preds = %93
  %99 = load i8*, i8** %12, align 8, !dbg !2315
  %100 = call i64 @strlen(i8* %99) #9, !dbg !2316
  %101 = load i32, i32* %14, align 4, !dbg !2317
  %102 = sext i32 %101 to i64, !dbg !2317
  %103 = sub i64 %100, %102, !dbg !2318
  %104 = trunc i64 %103 to i32, !dbg !2316
  store i32 %104, i32* %13, align 4, !dbg !2319
  %105 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2320
  %106 = load i8*, i8** %12, align 8, !dbg !2321
  %107 = call %struct._GString* @g_string_append(%struct._GString* %105, i8* %106), !dbg !2322
  %108 = load i32, i32* %13, align 4, !dbg !2323
  %109 = icmp sgt i32 %108, 0, !dbg !2325
  br i1 %109, label %110, label %119, !dbg !2326

; <label>:110:                                    ; preds = %98
  %111 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2327
  %112 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2328
  %113 = getelementptr inbounds %struct._GString, %struct._GString* %112, i32 0, i32 1, !dbg !2329
  %114 = load i64, i64* %113, align 8, !dbg !2329
  %115 = load i32, i32* %13, align 4, !dbg !2330
  %116 = sext i32 %115 to i64, !dbg !2330
  %117 = sub i64 %114, %116, !dbg !2331
  %118 = call %struct._GString* @g_string_truncate(%struct._GString* %111, i64 %117), !dbg !2332
  br label %119, !dbg !2332

; <label>:119:                                    ; preds = %110, %98
  %120 = load i32, i32* %10, align 4, !dbg !2333
  %121 = icmp ne i32 %120, 0, !dbg !2333
  br i1 %121, label %122, label %124, !dbg !2335

; <label>:122:                                    ; preds = %119
  %123 = load i8*, i8** %12, align 8, !dbg !2336
  call void @g_free(i8* %123), !dbg !2338
  br label %124, !dbg !2338

; <label>:124:                                    ; preds = %122, %119
  br label %125, !dbg !2339

; <label>:125:                                    ; preds = %124, %70
  store i8 0, i8* %8, align 1, !dbg !2340
  br label %145, !dbg !2341

; <label>:126:                                    ; preds = %48
  %127 = load i8*, i8** %5, align 8, !dbg !2342
  %128 = load i8, i8* %127, align 1, !dbg !2345
  %129 = sext i8 %128 to i32, !dbg !2345
  %130 = icmp eq i32 %129, 37, !dbg !2346
  br i1 %130, label %136, label %131, !dbg !2347

; <label>:131:                                    ; preds = %126
  %132 = load i8*, i8** %5, align 8, !dbg !2348
  %133 = load i8, i8* %132, align 1, !dbg !2350
  %134 = sext i8 %133 to i32, !dbg !2350
  %135 = icmp eq i32 %134, 36, !dbg !2351
  br i1 %135, label %136, label %139, !dbg !2352

; <label>:136:                                    ; preds = %131, %126
  %137 = load i8*, i8** %5, align 8, !dbg !2353
  %138 = load i8, i8* %137, align 1, !dbg !2354
  store i8 %138, i8* %8, align 1, !dbg !2355
  br label %144, !dbg !2356

; <label>:139:                                    ; preds = %131
  %140 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2357
  %141 = load i8*, i8** %5, align 8, !dbg !2358
  %142 = load i8, i8* %141, align 1, !dbg !2359
  %143 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %140, i8 signext %142), !dbg !2360
  br label %144

; <label>:144:                                    ; preds = %139, %136
  br label %145

; <label>:145:                                    ; preds = %144, %125
  br label %146

; <label>:146:                                    ; preds = %145, %47
  %147 = load i8*, i8** %5, align 8, !dbg !2361
  %148 = getelementptr inbounds i8, i8* %147, i32 1, !dbg !2361
  store i8* %148, i8** %5, align 8, !dbg !2361
  br label %16, !dbg !2362, !llvm.loop !2364

; <label>:149:                                    ; preds = %16
  %150 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2365
  %151 = getelementptr inbounds %struct._GString, %struct._GString* %150, i32 0, i32 0, !dbg !2366
  %152 = load i8*, i8** %151, align 8, !dbg !2366
  store i8* %152, i8** %9, align 8, !dbg !2367
  %153 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2368
  %154 = call i8* @g_string_free(%struct._GString* %153, i32 0), !dbg !2369
  %155 = load i8*, i8** %9, align 8, !dbg !2370
  ret i8* %155, !dbg !2371
}

; Function Attrs: nounwind uwtable
define i8* @format_get_text(i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) #0 !dbg !2372 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._TEXT_DEST_REC, align 8
  %12 = alloca %struct.THEME_REC*, align 8
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2375, metadata !721), !dbg !2376
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2377, metadata !721), !dbg !2378
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2379, metadata !721), !dbg !2380
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2381, metadata !721), !dbg !2382
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2383, metadata !721), !dbg !2384
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %11, metadata !2385, metadata !721), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %12, metadata !2387, metadata !721), !dbg !2388
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %13, metadata !2389, metadata !721), !dbg !2390
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2391, metadata !721), !dbg !2392
  %15 = load i8*, i8** %8, align 8, !dbg !2393
  %16 = load i8*, i8** %9, align 8, !dbg !2394
  %17 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2395
  call void @format_create_dest(%struct._TEXT_DEST_REC* %11, i8* %15, i8* %16, i32 0, %struct._WINDOW_REC* %17), !dbg !2396
  %18 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %11, i32 0, i32 0, !dbg !2397
  %19 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %18, align 8, !dbg !2397
  %20 = icmp ne %struct._WINDOW_REC* %19, null, !dbg !2398
  br i1 %20, label %21, label %32, !dbg !2399

; <label>:21:                                     ; preds = %5
  %22 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %11, i32 0, i32 0, !dbg !2400
  %23 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %22, align 8, !dbg !2400
  %24 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %23, i32 0, i32 19, !dbg !2402
  %25 = load i8*, i8** %24, align 8, !dbg !2402
  %26 = icmp ne i8* %25, null, !dbg !2403
  br i1 %26, label %27, label %32, !dbg !2404

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %11, i32 0, i32 0, !dbg !2405
  %29 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %28, align 8, !dbg !2405
  %30 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %29, i32 0, i32 19, !dbg !2407
  %31 = load i8*, i8** %30, align 8, !dbg !2407
  br label %35, !dbg !2408

; <label>:32:                                     ; preds = %21, %5
  %33 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !2409
  %34 = bitcast %struct.THEME_REC* %33 to i8*, !dbg !2409
  br label %35, !dbg !2411

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i8* [ %31, %27 ], [ %34, %32 ], !dbg !2412
  %37 = bitcast i8* %36 to %struct.THEME_REC*, !dbg !2414
  store %struct.THEME_REC* %37, %struct.THEME_REC** %12, align 8, !dbg !2415
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2416
  %39 = bitcast %struct.__va_list_tag* %38 to i8*, !dbg !2416
  call void @llvm.va_start(i8* %39), !dbg !2416
  %40 = load %struct.THEME_REC*, %struct.THEME_REC** %12, align 8, !dbg !2417
  %41 = load i8*, i8** %6, align 8, !dbg !2418
  %42 = load i32, i32* %10, align 4, !dbg !2419
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2420
  %44 = call i8* @format_get_text_theme_args(%struct.THEME_REC* %40, i8* %41, %struct._TEXT_DEST_REC* %11, i32 %42, %struct.__va_list_tag* %43), !dbg !2421
  store i8* %44, i8** %14, align 8, !dbg !2422
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2423
  %46 = bitcast %struct.__va_list_tag* %45 to i8*, !dbg !2423
  call void @llvm.va_end(i8* %46), !dbg !2423
  %47 = load i8*, i8** %14, align 8, !dbg !2424
  ret i8* %47, !dbg !2425
}

; Function Attrs: nounwind uwtable
define i8* @format_add_linestart(i8*, i8*) #0 !dbg !2426 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2429, metadata !721), !dbg !2430
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2431, metadata !721), !dbg !2432
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !2433, metadata !721), !dbg !2434
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2435, metadata !721), !dbg !2436
  %8 = load i8*, i8** %5, align 8, !dbg !2437
  %9 = icmp eq i8* %8, null, !dbg !2439
  br i1 %9, label %10, label %13, !dbg !2440

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !2441
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !2442
  store i8* %12, i8** %3, align 8, !dbg !2443
  br label %52, !dbg !2443

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !2444
  %15 = call i8* @strchr(i8* %14, i32 10) #9, !dbg !2446
  %16 = icmp eq i8* %15, null, !dbg !2447
  br i1 %16, label %17, label %21, !dbg !2448

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %5, align 8, !dbg !2449
  %19 = load i8*, i8** %4, align 8, !dbg !2450
  %20 = call noalias i8* (i8*, ...) @g_strconcat(i8* %18, i8* %19, i8* null), !dbg !2451
  store i8* %20, i8** %3, align 8, !dbg !2452
  br label %52, !dbg !2452

; <label>:21:                                     ; preds = %13
  %22 = load i8*, i8** %5, align 8, !dbg !2453
  %23 = call %struct._GString* @g_string_new(i8* %22), !dbg !2454
  store %struct._GString* %23, %struct._GString** %6, align 8, !dbg !2455
  br label %24, !dbg !2456

; <label>:24:                                     ; preds = %42, %21
  %25 = load i8*, i8** %4, align 8, !dbg !2457
  %26 = load i8, i8* %25, align 1, !dbg !2459
  %27 = sext i8 %26 to i32, !dbg !2459
  %28 = icmp ne i32 %27, 0, !dbg !2460
  br i1 %28, label %29, label %45, !dbg !2461

; <label>:29:                                     ; preds = %24
  %30 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2462
  %31 = load i8*, i8** %4, align 8, !dbg !2464
  %32 = load i8, i8* %31, align 1, !dbg !2465
  %33 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %30, i8 signext %32), !dbg !2466
  %34 = load i8*, i8** %4, align 8, !dbg !2467
  %35 = load i8, i8* %34, align 1, !dbg !2469
  %36 = sext i8 %35 to i32, !dbg !2469
  %37 = icmp eq i32 %36, 10, !dbg !2470
  br i1 %37, label %38, label %42, !dbg !2471

; <label>:38:                                     ; preds = %29
  %39 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2472
  %40 = load i8*, i8** %5, align 8, !dbg !2473
  %41 = call %struct._GString* @g_string_append(%struct._GString* %39, i8* %40), !dbg !2474
  br label %42, !dbg !2474

; <label>:42:                                     ; preds = %38, %29
  %43 = load i8*, i8** %4, align 8, !dbg !2475
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !2475
  store i8* %44, i8** %4, align 8, !dbg !2475
  br label %24, !dbg !2476, !llvm.loop !2478

; <label>:45:                                     ; preds = %24
  %46 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2479
  %47 = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 0, !dbg !2480
  %48 = load i8*, i8** %47, align 8, !dbg !2480
  store i8* %48, i8** %7, align 8, !dbg !2481
  %49 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2482
  %50 = call i8* @g_string_free(%struct._GString* %49, i32 0), !dbg !2483
  %51 = load i8*, i8** %7, align 8, !dbg !2484
  store i8* %51, i8** %3, align 8, !dbg !2485
  br label %52, !dbg !2485

; <label>:52:                                     ; preds = %45, %17, %10
  %53 = load i8*, i8** %3, align 8, !dbg !2486
  ret i8* %53, !dbg !2486
}

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @format_add_lineend(i8*, i8*) #0 !dbg !2487 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2488, metadata !721), !dbg !2489
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2490, metadata !721), !dbg !2491
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !2492, metadata !721), !dbg !2493
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2494, metadata !721), !dbg !2495
  %8 = load i8*, i8** %5, align 8, !dbg !2496
  %9 = icmp eq i8* %8, null, !dbg !2498
  br i1 %9, label %10, label %13, !dbg !2499

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !2500
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !2501
  store i8* %12, i8** %3, align 8, !dbg !2502
  br label %54, !dbg !2502

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !2503
  %15 = call i8* @strchr(i8* %14, i32 10) #9, !dbg !2505
  %16 = icmp eq i8* %15, null, !dbg !2506
  br i1 %16, label %17, label %21, !dbg !2507

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %4, align 8, !dbg !2508
  %19 = load i8*, i8** %5, align 8, !dbg !2509
  %20 = call noalias i8* (i8*, ...) @g_strconcat(i8* %18, i8* %19, i8* null), !dbg !2510
  store i8* %20, i8** %3, align 8, !dbg !2511
  br label %54, !dbg !2511

; <label>:21:                                     ; preds = %13
  %22 = call %struct._GString* @g_string_new(i8* null), !dbg !2512
  store %struct._GString* %22, %struct._GString** %6, align 8, !dbg !2513
  br label %23, !dbg !2514

; <label>:23:                                     ; preds = %37, %21
  %24 = load i8*, i8** %4, align 8, !dbg !2515
  %25 = load i8, i8* %24, align 1, !dbg !2517
  %26 = sext i8 %25 to i32, !dbg !2517
  %27 = icmp ne i32 %26, 0, !dbg !2518
  br i1 %27, label %28, label %44, !dbg !2519

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %4, align 8, !dbg !2520
  %30 = load i8, i8* %29, align 1, !dbg !2523
  %31 = sext i8 %30 to i32, !dbg !2523
  %32 = icmp eq i32 %31, 10, !dbg !2524
  br i1 %32, label %33, label %37, !dbg !2525

; <label>:33:                                     ; preds = %28
  %34 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2526
  %35 = load i8*, i8** %5, align 8, !dbg !2527
  %36 = call %struct._GString* @g_string_append(%struct._GString* %34, i8* %35), !dbg !2528
  br label %37, !dbg !2528

; <label>:37:                                     ; preds = %33, %28
  %38 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2529
  %39 = load i8*, i8** %4, align 8, !dbg !2530
  %40 = load i8, i8* %39, align 1, !dbg !2531
  %41 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %38, i8 signext %40), !dbg !2532
  %42 = load i8*, i8** %4, align 8, !dbg !2533
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2533
  store i8* %43, i8** %4, align 8, !dbg !2533
  br label %23, !dbg !2534, !llvm.loop !2536

; <label>:44:                                     ; preds = %23
  %45 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2537
  %46 = load i8*, i8** %5, align 8, !dbg !2538
  %47 = call %struct._GString* @g_string_append(%struct._GString* %45, i8* %46), !dbg !2539
  %48 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2540
  %49 = getelementptr inbounds %struct._GString, %struct._GString* %48, i32 0, i32 0, !dbg !2541
  %50 = load i8*, i8** %49, align 8, !dbg !2541
  store i8* %50, i8** %7, align 8, !dbg !2542
  %51 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2543
  %52 = call i8* @g_string_free(%struct._GString* %51, i32 0), !dbg !2544
  %53 = load i8*, i8** %7, align 8, !dbg !2545
  store i8* %53, i8** %3, align 8, !dbg !2546
  br label %54, !dbg !2546

; <label>:54:                                     ; preds = %44, %17, %10
  %55 = load i8*, i8** %3, align 8, !dbg !2547
  ret i8* %55, !dbg !2547
}

; Function Attrs: nounwind uwtable
define i8* @format_get_level_tag(%struct.THEME_REC*, %struct._TEXT_DEST_REC*) #0 !dbg !2548 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca %struct._TEXT_DEST_REC*, align 8
  %6 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !2551, metadata !721), !dbg !2552
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %5, metadata !2553, metadata !721), !dbg !2554
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2555, metadata !721), !dbg !2556
  %7 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2557
  %8 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 9, !dbg !2559
  %9 = load i32, i32* %8, align 8, !dbg !2559
  %10 = and i32 %9, 64, !dbg !2560
  %11 = icmp ne i32 %10, 0, !dbg !2560
  br i1 %11, label %12, label %13, !dbg !2561

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !2562
  br label %50, !dbg !2562

; <label>:13:                                     ; preds = %2
  %14 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2563
  %15 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %14, i32 0, i32 9, !dbg !2565
  %16 = load i32, i32* %15, align 8, !dbg !2565
  %17 = and i32 %16, 1, !dbg !2566
  %18 = icmp ne i32 %17, 0, !dbg !2566
  br i1 %18, label %19, label %20, !dbg !2567

; <label>:19:                                     ; preds = %13
  store i32 2, i32* %6, align 4, !dbg !2568
  br label %45, !dbg !2569

; <label>:20:                                     ; preds = %13
  %21 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2570
  %22 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %21, i32 0, i32 9, !dbg !2572
  %23 = load i32, i32* %22, align 8, !dbg !2572
  %24 = and i32 %23, 2, !dbg !2573
  %25 = icmp ne i32 %24, 0, !dbg !2573
  br i1 %25, label %26, label %27, !dbg !2574

; <label>:26:                                     ; preds = %20
  store i32 3, i32* %6, align 4, !dbg !2575
  br label %44, !dbg !2576

; <label>:27:                                     ; preds = %20
  %28 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2577
  %29 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %28, i32 0, i32 6, !dbg !2580
  %30 = load i32, i32* %29, align 8, !dbg !2580
  %31 = and i32 %30, 1310720, !dbg !2581
  %32 = icmp ne i32 %31, 0, !dbg !2581
  br i1 %32, label %33, label %34, !dbg !2582

; <label>:33:                                     ; preds = %27
  store i32 3, i32* %6, align 4, !dbg !2583
  br label %43, !dbg !2584

; <label>:34:                                     ; preds = %27
  %35 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2585
  %36 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %35, i32 0, i32 6, !dbg !2587
  %37 = load i32, i32* %36, align 8, !dbg !2587
  %38 = and i32 %37, 202047614, !dbg !2588
  %39 = icmp eq i32 %38, 0, !dbg !2589
  br i1 %39, label %40, label %41, !dbg !2590

; <label>:40:                                     ; preds = %34
  store i32 2, i32* %6, align 4, !dbg !2591
  br label %42, !dbg !2592

; <label>:41:                                     ; preds = %34
  store i8* null, i8** %3, align 8, !dbg !2593
  br label %50, !dbg !2593

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %42, %33
  br label %44

; <label>:44:                                     ; preds = %43, %26
  br label %45

; <label>:45:                                     ; preds = %44, %19
  %46 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2594
  %47 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2595
  %48 = load i32, i32* %6, align 4, !dbg !2596
  %49 = call i8* (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) @format_get_text_theme(%struct.THEME_REC* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._TEXT_DEST_REC* %47, i32 %48), !dbg !2597
  store i8* %49, i8** %3, align 8, !dbg !2598
  br label %50, !dbg !2598

; <label>:50:                                     ; preds = %45, %41, %12
  %51 = load i8*, i8** %3, align 8, !dbg !2599
  ret i8* %51, !dbg !2599
}

; Function Attrs: nounwind uwtable
define i8* @format_get_line_start(%struct.THEME_REC*, %struct._TEXT_DEST_REC*, i64) #0 !dbg !2600 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca %struct._TEXT_DEST_REC*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.THEME_REC* %0, %struct.THEME_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !2603, metadata !721), !dbg !2604
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %6, metadata !2605, metadata !721), !dbg !2606
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2607, metadata !721), !dbg !2608
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2609, metadata !721), !dbg !2610
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2611, metadata !721), !dbg !2612
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2613, metadata !721), !dbg !2614
  %11 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2615
  %12 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2616
  %13 = load i64, i64* %7, align 8, !dbg !2617
  %14 = call i8* @get_timestamp(%struct.THEME_REC* %11, %struct._TEXT_DEST_REC* %12, i64 %13), !dbg !2618
  store i8* %14, i8** %8, align 8, !dbg !2619
  %15 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2620
  %16 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2621
  %17 = call i8* @get_server_tag(%struct.THEME_REC* %15, %struct._TEXT_DEST_REC* %16), !dbg !2622
  store i8* %17, i8** %9, align 8, !dbg !2623
  %18 = load i8*, i8** %8, align 8, !dbg !2624
  %19 = icmp eq i8* %18, null, !dbg !2626
  br i1 %19, label %20, label %24, !dbg !2627

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %9, align 8, !dbg !2628
  %22 = icmp eq i8* %21, null, !dbg !2630
  br i1 %22, label %23, label %24, !dbg !2631

; <label>:23:                                     ; preds = %20
  store i8* null, i8** %4, align 8, !dbg !2632
  br label %37, !dbg !2632

; <label>:24:                                     ; preds = %20, %3
  %25 = load i8*, i8** %8, align 8, !dbg !2633
  %26 = icmp ne i8* %25, null, !dbg !2634
  br i1 %26, label %27, label %29, !dbg !2633

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %8, align 8, !dbg !2635
  br label %30, !dbg !2637

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !2638

; <label>:30:                                     ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %29 ], !dbg !2640
  %32 = load i8*, i8** %9, align 8, !dbg !2642
  %33 = call noalias i8* (i8*, ...) @g_strconcat(i8* %31, i8* %32, i8* null), !dbg !2643
  store i8* %33, i8** %10, align 8, !dbg !2644
  %34 = load i8*, i8** %8, align 8, !dbg !2645
  call void @g_free(i8* %34), !dbg !2646
  %35 = load i8*, i8** %9, align 8, !dbg !2647
  call void @g_free(i8* %35), !dbg !2648
  %36 = load i8*, i8** %10, align 8, !dbg !2649
  store i8* %36, i8** %4, align 8, !dbg !2650
  br label %37, !dbg !2650

; <label>:37:                                     ; preds = %30, %23
  %38 = load i8*, i8** %4, align 8, !dbg !2651
  ret i8* %38, !dbg !2651
}

; Function Attrs: nounwind uwtable
define internal i8* @get_timestamp(%struct.THEME_REC*, %struct._TEXT_DEST_REC*, i64) #0 !dbg !2652 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca %struct._TEXT_DEST_REC*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !2653, metadata !721), !dbg !2654
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %6, metadata !2655, metadata !721), !dbg !2656
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2657, metadata !721), !dbg !2658
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2659, metadata !721), !dbg !2660
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !2661, metadata !721), !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.tm** %10, metadata !2664, metadata !721), !dbg !2679
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2680, metadata !721), !dbg !2681
  %12 = load i32, i32* @timestamp_level, align 4, !dbg !2682
  %13 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2684
  %14 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %13, i32 0, i32 6, !dbg !2685
  %15 = load i32, i32* %14, align 8, !dbg !2685
  %16 = and i32 %12, %15, !dbg !2686
  %17 = icmp eq i32 %16, 0, !dbg !2687
  br i1 %17, label %18, label %19, !dbg !2688

; <label>:18:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !2689
  br label %77, !dbg !2689

; <label>:19:                                     ; preds = %3
  %20 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2690
  %21 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %20, i32 0, i32 9, !dbg !2692
  %22 = load i32, i32* %21, align 8, !dbg !2692
  %23 = and i32 %22, 8, !dbg !2693
  %24 = icmp ne i32 %23, 0, !dbg !2693
  br i1 %24, label %25, label %26, !dbg !2694

; <label>:25:                                     ; preds = %19
  store i8* null, i8** %4, align 8, !dbg !2695
  br label %77, !dbg !2695

; <label>:26:                                     ; preds = %19
  %27 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2696
  %28 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %27, i32 0, i32 9, !dbg !2698
  %29 = load i32, i32* %28, align 8, !dbg !2698
  %30 = and i32 %29, 4, !dbg !2699
  %31 = icmp eq i32 %30, 0, !dbg !2700
  br i1 %31, label %32, label %39, !dbg !2701

; <label>:32:                                     ; preds = %26
  %33 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2702
  %34 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %33, i32 0, i32 6, !dbg !2703
  %35 = load i32, i32* %34, align 8, !dbg !2703
  %36 = and i32 %35, 201326592, !dbg !2704
  %37 = icmp ne i32 %36, 0, !dbg !2705
  br i1 %37, label %38, label %39, !dbg !2706

; <label>:38:                                     ; preds = %32
  store i8* null, i8** %4, align 8, !dbg !2708
  br label %77, !dbg !2708

; <label>:39:                                     ; preds = %32, %26
  %40 = load i32, i32* @timestamp_timeout, align 4, !dbg !2709
  %41 = icmp sgt i32 %40, 0, !dbg !2711
  br i1 %41, label %42, label %61, !dbg !2712

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %7, align 8, !dbg !2713
  %44 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2715
  %45 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %44, i32 0, i32 0, !dbg !2716
  %46 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %45, align 8, !dbg !2716
  %47 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %46, i32 0, i32 16, !dbg !2717
  %48 = load i64, i64* %47, align 8, !dbg !2717
  %49 = sub nsw i64 %43, %48, !dbg !2718
  %50 = trunc i64 %49 to i32, !dbg !2713
  store i32 %50, i32* %11, align 4, !dbg !2719
  %51 = load i64, i64* %7, align 8, !dbg !2720
  %52 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2721
  %53 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %52, i32 0, i32 0, !dbg !2722
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %53, align 8, !dbg !2722
  %55 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %54, i32 0, i32 16, !dbg !2723
  store i64 %51, i64* %55, align 8, !dbg !2724
  %56 = load i32, i32* %11, align 4, !dbg !2725
  %57 = load i32, i32* @timestamp_timeout, align 4, !dbg !2727
  %58 = icmp slt i32 %56, %57, !dbg !2728
  br i1 %58, label %59, label %60, !dbg !2729

; <label>:59:                                     ; preds = %42
  store i8* null, i8** %4, align 8, !dbg !2730
  br label %77, !dbg !2730

; <label>:60:                                     ; preds = %42
  br label %61, !dbg !2731

; <label>:61:                                     ; preds = %60, %39
  %62 = call %struct.tm* @localtime(i64* %7) #7, !dbg !2732
  store %struct.tm* %62, %struct.tm** %10, align 8, !dbg !2733
  %63 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !2734
  %64 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %6, align 8, !dbg !2735
  %65 = call i8* (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) @format_get_text_theme(%struct.THEME_REC* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._TEXT_DEST_REC* %64, i32 4), !dbg !2736
  store i8* %65, i8** %8, align 8, !dbg !2737
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !2738
  %67 = load i8*, i8** %8, align 8, !dbg !2740
  %68 = load %struct.tm*, %struct.tm** %10, align 8, !dbg !2741
  %69 = call i64 @strftime(i8* %66, i64 256, i8* %67, %struct.tm* %68) #7, !dbg !2742
  %70 = icmp ule i64 %69, 0, !dbg !2743
  br i1 %70, label %71, label %73, !dbg !2744

; <label>:71:                                     ; preds = %61
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !2745
  store i8 0, i8* %72, align 16, !dbg !2746
  br label %73, !dbg !2745

; <label>:73:                                     ; preds = %71, %61
  %74 = load i8*, i8** %8, align 8, !dbg !2747
  call void @g_free(i8* %74), !dbg !2748
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !2749
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !2750
  store i8* %76, i8** %4, align 8, !dbg !2751
  br label %77, !dbg !2751

; <label>:77:                                     ; preds = %73, %59, %38, %25, %18
  %78 = load i8*, i8** %4, align 8, !dbg !2752
  ret i8* %78, !dbg !2752
}

; Function Attrs: nounwind uwtable
define internal i8* @get_server_tag(%struct.THEME_REC*, %struct._TEXT_DEST_REC*) #0 !dbg !2753 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.THEME_REC*, align 8
  %5 = alloca %struct._TEXT_DEST_REC*, align 8
  %6 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %4, metadata !2754, metadata !721), !dbg !2755
  store %struct._TEXT_DEST_REC* %1, %struct._TEXT_DEST_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %5, metadata !2756, metadata !721), !dbg !2757
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2758, metadata !721), !dbg !2759
  store i32 0, i32* %6, align 4, !dbg !2759
  %7 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2760
  %8 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %7, i32 0, i32 2, !dbg !2762
  %9 = load i8*, i8** %8, align 8, !dbg !2762
  %10 = icmp eq i8* %9, null, !dbg !2763
  br i1 %10, label %14, label %11, !dbg !2764

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* @hide_server_tags, align 4, !dbg !2765
  %13 = icmp ne i32 %12, 0, !dbg !2765
  br i1 %13, label %14, label %15, !dbg !2767

; <label>:14:                                     ; preds = %11, %2
  store i8* null, i8** %3, align 8, !dbg !2768
  br label %91, !dbg !2768

; <label>:15:                                     ; preds = %11
  %16 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2769
  %17 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %16, i32 0, i32 9, !dbg !2771
  %18 = load i32, i32* %17, align 8, !dbg !2771
  %19 = and i32 %18, 32, !dbg !2772
  %20 = icmp ne i32 %19, 0, !dbg !2772
  br i1 %20, label %21, label %22, !dbg !2773

; <label>:21:                                     ; preds = %15
  store i8* null, i8** %3, align 8, !dbg !2774
  br label %91, !dbg !2774

; <label>:22:                                     ; preds = %15
  %23 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2775
  %24 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %23, i32 0, i32 9, !dbg !2777
  %25 = load i32, i32* %24, align 8, !dbg !2777
  %26 = and i32 %25, 16, !dbg !2778
  %27 = icmp eq i32 %26, 0, !dbg !2779
  br i1 %27, label %28, label %84, !dbg !2780

; <label>:28:                                     ; preds = %22
  %29 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2781
  %30 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %29, i32 0, i32 0, !dbg !2784
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %30, align 8, !dbg !2784
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 5, !dbg !2785
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %32, align 8, !dbg !2785
  %34 = icmp ne %struct._WI_ITEM_REC* %33, null, !dbg !2786
  br i1 %34, label %35, label %48, !dbg !2787

; <label>:35:                                     ; preds = %28
  %36 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2788
  %37 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %36, i32 0, i32 0, !dbg !2789
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %37, align 8, !dbg !2789
  %39 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %38, i32 0, i32 5, !dbg !2790
  %40 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %39, align 8, !dbg !2790
  %41 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %40, i32 0, i32 4, !dbg !2791
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %41, align 8, !dbg !2791
  %43 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2792
  %44 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %43, i32 0, i32 1, !dbg !2793
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %44, align 8, !dbg !2793
  %46 = icmp eq %struct._SERVER_REC* %42, %45, !dbg !2794
  br i1 %46, label %47, label %48, !dbg !2795

; <label>:47:                                     ; preds = %35
  store i8* null, i8** %3, align 8, !dbg !2797
  br label %91, !dbg !2797

; <label>:48:                                     ; preds = %35, %28
  %49 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2798
  %50 = icmp ne %struct._GSList* %49, null, !dbg !2800
  br i1 %50, label %51, label %62, !dbg !2801

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4, !dbg !2802
  %53 = add nsw i32 %52, 1, !dbg !2802
  store i32 %53, i32* %6, align 4, !dbg !2802
  %54 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2804
  %55 = getelementptr inbounds %struct._GSList, %struct._GSList* %54, i32 0, i32 1, !dbg !2806
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !2806
  %57 = icmp ne %struct._GSList* %56, null, !dbg !2807
  br i1 %57, label %58, label %61, !dbg !2808

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* %6, align 4, !dbg !2809
  %60 = add nsw i32 %59, 1, !dbg !2809
  store i32 %60, i32* %6, align 4, !dbg !2809
  br label %61, !dbg !2810

; <label>:61:                                     ; preds = %58, %51
  br label %62, !dbg !2811

; <label>:62:                                     ; preds = %61, %48
  %63 = load i32, i32* %6, align 4, !dbg !2812
  %64 = icmp slt i32 %63, 2, !dbg !2814
  br i1 %64, label %65, label %79, !dbg !2815

; <label>:65:                                     ; preds = %62
  %66 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2816
  %67 = icmp ne %struct._GSList* %66, null, !dbg !2818
  br i1 %67, label %68, label %79, !dbg !2819

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %6, align 4, !dbg !2820
  %70 = add nsw i32 %69, 1, !dbg !2820
  store i32 %70, i32* %6, align 4, !dbg !2820
  %71 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2822
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !2824
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !2824
  %74 = icmp ne %struct._GSList* %73, null, !dbg !2825
  br i1 %74, label %75, label %78, !dbg !2826

; <label>:75:                                     ; preds = %68
  %76 = load i32, i32* %6, align 4, !dbg !2827
  %77 = add nsw i32 %76, 1, !dbg !2827
  store i32 %77, i32* %6, align 4, !dbg !2827
  br label %78, !dbg !2828

; <label>:78:                                     ; preds = %75, %68
  br label %79, !dbg !2829

; <label>:79:                                     ; preds = %78, %65, %62
  %80 = load i32, i32* %6, align 4, !dbg !2830
  %81 = icmp slt i32 %80, 2, !dbg !2832
  br i1 %81, label %82, label %83, !dbg !2833

; <label>:82:                                     ; preds = %79
  store i8* null, i8** %3, align 8, !dbg !2834
  br label %91, !dbg !2834

; <label>:83:                                     ; preds = %79
  br label %84, !dbg !2835

; <label>:84:                                     ; preds = %83, %22
  %85 = load %struct.THEME_REC*, %struct.THEME_REC** %4, align 8, !dbg !2836
  %86 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2837
  %87 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %5, align 8, !dbg !2838
  %88 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %87, i32 0, i32 2, !dbg !2839
  %89 = load i8*, i8** %88, align 8, !dbg !2839
  %90 = call i8* (%struct.THEME_REC*, i8*, %struct._TEXT_DEST_REC*, i32, ...) @format_get_text_theme(%struct.THEME_REC* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._TEXT_DEST_REC* %86, i32 5, i8* %89), !dbg !2840
  store i8* %90, i8** %3, align 8, !dbg !2841
  br label %91, !dbg !2841

; <label>:91:                                     ; preds = %84, %82, %47, %21, %14
  %92 = load i8*, i8** %3, align 8, !dbg !2842
  ret i8* %92, !dbg !2842
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @format_newline(%struct._WINDOW_REC*) #0 !dbg !2843 {
  %2 = alloca %struct._WINDOW_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %2, metadata !2846, metadata !721), !dbg !2847
  br label %3, !dbg !2848, !llvm.loop !2849

; <label>:3:                                      ; preds = %1
  %4 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2850
  %5 = icmp ne %struct._WINDOW_REC* %4, null, !dbg !2854
  br i1 %5, label %6, label %7, !dbg !2850

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !2855

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.format_newline, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)), !dbg !2858
  br label %13, !dbg !2861

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !2862

; <label>:9:                                      ; preds = %8
  %10 = load i32, i32* @signal_gui_print_text, align 4, !dbg !2864
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %2, align 8, !dbg !2865
  %12 = call i32 (i32, i32, ...) @signal_emit_id(i32 %10, i32 6, %struct._WINDOW_REC* %11, i8* inttoptr (i64 -1 to i8*), i8* inttoptr (i64 -1 to i8*), i8* inttoptr (i64 128 to i8*), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* null), !dbg !2866
  br label %13, !dbg !2867

; <label>:13:                                     ; preds = %9, %7
  ret void, !dbg !2868
}

declare i32 @signal_emit_id(i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define i32 @strip_real_length(i8*, i32, i32*, i32*) #0 !dbg !2870 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2873, metadata !721), !dbg !2874
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2875, metadata !721), !dbg !2876
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2877, metadata !721), !dbg !2878
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2879, metadata !721), !dbg !2880
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2881, metadata !721), !dbg !2882
  %11 = load i8*, i8** %5, align 8, !dbg !2883
  store i8* %11, i8** %9, align 8, !dbg !2882
  %12 = load i32*, i32** %7, align 8, !dbg !2884
  %13 = icmp ne i32* %12, null, !dbg !2886
  br i1 %13, label %14, label %16, !dbg !2887

; <label>:14:                                     ; preds = %4
  %15 = load i32*, i32** %7, align 8, !dbg !2888
  store i32 -1, i32* %15, align 4, !dbg !2889
  br label %16, !dbg !2890

; <label>:16:                                     ; preds = %14, %4
  %17 = load i32*, i32** %8, align 8, !dbg !2891
  %18 = icmp ne i32* %17, null, !dbg !2893
  br i1 %18, label %19, label %21, !dbg !2894

; <label>:19:                                     ; preds = %16
  %20 = load i32*, i32** %8, align 8, !dbg !2895
  store i32 -1, i32* %20, align 4, !dbg !2896
  br label %21, !dbg !2897

; <label>:21:                                     ; preds = %19, %16
  br label %22, !dbg !2898

; <label>:22:                                     ; preds = %187, %21
  %23 = load i8*, i8** %5, align 8, !dbg !2899
  %24 = load i8, i8* %23, align 1, !dbg !2901
  %25 = sext i8 %24 to i32, !dbg !2901
  %26 = icmp ne i32 %25, 0, !dbg !2902
  br i1 %26, label %27, label %188, !dbg !2903

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %5, align 8, !dbg !2904
  %29 = load i8, i8* %28, align 1, !dbg !2907
  %30 = sext i8 %29 to i32, !dbg !2907
  %31 = icmp eq i32 %30, 3, !dbg !2908
  br i1 %31, label %32, label %58, !dbg !2909

; <label>:32:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2910, metadata !721), !dbg !2912
  %33 = load i8*, i8** %5, align 8, !dbg !2913
  store i8* %33, i8** %10, align 8, !dbg !2912
  %34 = load i32*, i32** %7, align 8, !dbg !2914
  %35 = icmp ne i32* %34, null, !dbg !2916
  br i1 %35, label %36, label %44, !dbg !2917

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %5, align 8, !dbg !2918
  %38 = load i8*, i8** %9, align 8, !dbg !2919
  %39 = ptrtoint i8* %37 to i64, !dbg !2920
  %40 = ptrtoint i8* %38 to i64, !dbg !2920
  %41 = sub i64 %39, %40, !dbg !2920
  %42 = trunc i64 %41 to i32, !dbg !2921
  %43 = load i32*, i32** %7, align 8, !dbg !2922
  store i32 %42, i32* %43, align 4, !dbg !2923
  br label %44, !dbg !2924

; <label>:44:                                     ; preds = %36, %32
  %45 = load i8*, i8** %5, align 8, !dbg !2925
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !2925
  store i8* %46, i8** %5, align 8, !dbg !2925
  call void @get_mirc_color(i8** %5, i32* null, i32* null), !dbg !2926
  %47 = load i32*, i32** %8, align 8, !dbg !2927
  %48 = icmp ne i32* %47, null, !dbg !2929
  br i1 %48, label %49, label %57, !dbg !2930

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %5, align 8, !dbg !2931
  %51 = load i8*, i8** %10, align 8, !dbg !2932
  %52 = ptrtoint i8* %50 to i64, !dbg !2933
  %53 = ptrtoint i8* %51 to i64, !dbg !2933
  %54 = sub i64 %52, %53, !dbg !2933
  %55 = trunc i64 %54 to i32, !dbg !2934
  %56 = load i32*, i32** %8, align 8, !dbg !2935
  store i32 %55, i32* %56, align 4, !dbg !2936
  br label %57, !dbg !2937

; <label>:57:                                     ; preds = %49, %44
  br label %187, !dbg !2938

; <label>:58:                                     ; preds = %27
  %59 = load i8*, i8** %5, align 8, !dbg !2939
  %60 = load i8, i8* %59, align 1, !dbg !2942
  %61 = sext i8 %60 to i32, !dbg !2942
  %62 = icmp eq i32 %61, 4, !dbg !2943
  br i1 %62, label %63, label %127, !dbg !2944

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %5, align 8, !dbg !2945
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !2945
  %66 = load i8, i8* %65, align 1, !dbg !2945
  %67 = sext i8 %66 to i32, !dbg !2945
  %68 = icmp ne i32 %67, 0, !dbg !2947
  br i1 %68, label %69, label %127, !dbg !2948

; <label>:69:                                     ; preds = %63
  %70 = load i8*, i8** %5, align 8, !dbg !2949
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !2949
  %72 = load i8, i8* %71, align 1, !dbg !2949
  %73 = sext i8 %72 to i32, !dbg !2949
  %74 = icmp slt i32 %73, 96, !dbg !2952
  br i1 %74, label %75, label %100, !dbg !2953

; <label>:75:                                     ; preds = %69
  %76 = load i8*, i8** %5, align 8, !dbg !2954
  %77 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !2954
  %78 = load i8, i8* %77, align 1, !dbg !2954
  %79 = sext i8 %78 to i32, !dbg !2954
  %80 = icmp ne i32 %79, 0, !dbg !2956
  br i1 %80, label %81, label %100, !dbg !2957

; <label>:81:                                     ; preds = %75
  %82 = load i32*, i32** %7, align 8, !dbg !2958
  %83 = icmp ne i32* %82, null, !dbg !2961
  br i1 %83, label %84, label %92, !dbg !2962

; <label>:84:                                     ; preds = %81
  %85 = load i8*, i8** %5, align 8, !dbg !2963
  %86 = load i8*, i8** %9, align 8, !dbg !2964
  %87 = ptrtoint i8* %85 to i64, !dbg !2965
  %88 = ptrtoint i8* %86 to i64, !dbg !2965
  %89 = sub i64 %87, %88, !dbg !2965
  %90 = trunc i64 %89 to i32, !dbg !2966
  %91 = load i32*, i32** %7, align 8, !dbg !2967
  store i32 %90, i32* %91, align 4, !dbg !2968
  br label %92, !dbg !2969

; <label>:92:                                     ; preds = %84, %81
  %93 = load i32*, i32** %8, align 8, !dbg !2970
  %94 = icmp ne i32* %93, null, !dbg !2972
  br i1 %94, label %95, label %97, !dbg !2973

; <label>:95:                                     ; preds = %92
  %96 = load i32*, i32** %8, align 8, !dbg !2974
  store i32 3, i32* %96, align 4, !dbg !2975
  br label %97, !dbg !2976

; <label>:97:                                     ; preds = %95, %92
  %98 = load i8*, i8** %5, align 8, !dbg !2977
  %99 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !2977
  store i8* %99, i8** %5, align 8, !dbg !2977
  br label %124, !dbg !2978

; <label>:100:                                    ; preds = %75, %69
  %101 = load i8*, i8** %5, align 8, !dbg !2979
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !2979
  %103 = load i8, i8* %102, align 1, !dbg !2979
  %104 = sext i8 %103 to i32, !dbg !2979
  %105 = icmp eq i32 %104, 103, !dbg !2982
  br i1 %105, label %106, label %123, !dbg !2979

; <label>:106:                                    ; preds = %100
  %107 = load i32*, i32** %7, align 8, !dbg !2983
  %108 = icmp ne i32* %107, null, !dbg !2986
  br i1 %108, label %109, label %117, !dbg !2987

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %5, align 8, !dbg !2988
  %111 = load i8*, i8** %9, align 8, !dbg !2989
  %112 = ptrtoint i8* %110 to i64, !dbg !2990
  %113 = ptrtoint i8* %111 to i64, !dbg !2990
  %114 = sub i64 %112, %113, !dbg !2990
  %115 = trunc i64 %114 to i32, !dbg !2991
  %116 = load i32*, i32** %7, align 8, !dbg !2992
  store i32 %115, i32* %116, align 4, !dbg !2993
  br label %117, !dbg !2994

; <label>:117:                                    ; preds = %109, %106
  %118 = load i32*, i32** %8, align 8, !dbg !2995
  %119 = icmp ne i32* %118, null, !dbg !2997
  br i1 %119, label %120, label %122, !dbg !2998

; <label>:120:                                    ; preds = %117
  %121 = load i32*, i32** %8, align 8, !dbg !2999
  store i32 2, i32* %121, align 4, !dbg !3000
  br label %122, !dbg !3001

; <label>:122:                                    ; preds = %120, %117
  br label %123, !dbg !3002

; <label>:123:                                    ; preds = %122, %100
  br label %124

; <label>:124:                                    ; preds = %123, %97
  %125 = load i8*, i8** %5, align 8, !dbg !3003
  %126 = getelementptr inbounds i8, i8* %125, i64 2, !dbg !3003
  store i8* %126, i8** %5, align 8, !dbg !3003
  br label %186, !dbg !3004

; <label>:127:                                    ; preds = %63, %58
  %128 = load i8*, i8** %5, align 8, !dbg !3005
  %129 = load i8, i8* %128, align 1, !dbg !3008
  %130 = sext i8 %129 to i32, !dbg !3009
  %131 = icmp eq i32 %130, 2, !dbg !3010
  br i1 %131, label %183, label %132, !dbg !3011

; <label>:132:                                    ; preds = %127
  %133 = load i8*, i8** %5, align 8, !dbg !3012
  %134 = load i8, i8* %133, align 1, !dbg !3014
  %135 = sext i8 %134 to i32, !dbg !3015
  %136 = icmp eq i32 %135, 3, !dbg !3016
  br i1 %136, label %183, label %137, !dbg !3017

; <label>:137:                                    ; preds = %132
  %138 = load i8*, i8** %5, align 8, !dbg !3018
  %139 = load i8, i8* %138, align 1, !dbg !3020
  %140 = sext i8 %139 to i32, !dbg !3021
  %141 = icmp eq i32 %140, 4, !dbg !3022
  br i1 %141, label %183, label %142, !dbg !3023

; <label>:142:                                    ; preds = %137
  %143 = load i8*, i8** %5, align 8, !dbg !3024
  %144 = load i8, i8* %143, align 1, !dbg !3026
  %145 = sext i8 %144 to i32, !dbg !3027
  %146 = icmp eq i32 %145, 6, !dbg !3028
  br i1 %146, label %183, label %147, !dbg !3029

; <label>:147:                                    ; preds = %142
  %148 = load i8*, i8** %5, align 8, !dbg !3030
  %149 = load i8, i8* %148, align 1, !dbg !3032
  %150 = sext i8 %149 to i32, !dbg !3033
  %151 = icmp eq i32 %150, 7, !dbg !3034
  br i1 %151, label %183, label %152, !dbg !3035

; <label>:152:                                    ; preds = %147
  %153 = load i8*, i8** %5, align 8, !dbg !3036
  %154 = load i8, i8* %153, align 1, !dbg !3038
  %155 = sext i8 %154 to i32, !dbg !3039
  %156 = icmp eq i32 %155, 15, !dbg !3040
  br i1 %156, label %183, label %157, !dbg !3041

; <label>:157:                                    ; preds = %152
  %158 = load i8*, i8** %5, align 8, !dbg !3042
  %159 = load i8, i8* %158, align 1, !dbg !3044
  %160 = sext i8 %159 to i32, !dbg !3045
  %161 = icmp eq i32 %160, 22, !dbg !3046
  br i1 %161, label %183, label %162, !dbg !3047

; <label>:162:                                    ; preds = %157
  %163 = load i8*, i8** %5, align 8, !dbg !3048
  %164 = load i8, i8* %163, align 1, !dbg !3050
  %165 = sext i8 %164 to i32, !dbg !3051
  %166 = icmp eq i32 %165, 27, !dbg !3052
  br i1 %166, label %183, label %167, !dbg !3053

; <label>:167:                                    ; preds = %162
  %168 = load i8*, i8** %5, align 8, !dbg !3054
  %169 = load i8, i8* %168, align 1, !dbg !3056
  %170 = sext i8 %169 to i32, !dbg !3057
  %171 = icmp eq i32 %170, 29, !dbg !3058
  br i1 %171, label %183, label %172, !dbg !3059

; <label>:172:                                    ; preds = %167
  %173 = load i8*, i8** %5, align 8, !dbg !3060
  %174 = load i8, i8* %173, align 1, !dbg !3062
  %175 = sext i8 %174 to i32, !dbg !3063
  %176 = icmp eq i32 %175, 31, !dbg !3064
  br i1 %176, label %183, label %177, !dbg !3065

; <label>:177:                                    ; preds = %172
  %178 = load i32, i32* %6, align 4, !dbg !3066
  %179 = add nsw i32 %178, -1, !dbg !3066
  store i32 %179, i32* %6, align 4, !dbg !3066
  %180 = icmp eq i32 %178, 0, !dbg !3069
  br i1 %180, label %181, label %182, !dbg !3070

; <label>:181:                                    ; preds = %177
  br label %188, !dbg !3071

; <label>:182:                                    ; preds = %177
  br label %183, !dbg !3072

; <label>:183:                                    ; preds = %182, %172, %167, %162, %157, %152, %147, %142, %137, %132, %127
  %184 = load i8*, i8** %5, align 8, !dbg !3073
  %185 = getelementptr inbounds i8, i8* %184, i32 1, !dbg !3073
  store i8* %185, i8** %5, align 8, !dbg !3073
  br label %186

; <label>:186:                                    ; preds = %183, %124
  br label %187

; <label>:187:                                    ; preds = %186, %57
  br label %22, !dbg !3074, !llvm.loop !3076

; <label>:188:                                    ; preds = %181, %22
  %189 = load i8*, i8** %5, align 8, !dbg !3077
  %190 = load i8*, i8** %9, align 8, !dbg !3078
  %191 = ptrtoint i8* %189 to i64, !dbg !3079
  %192 = ptrtoint i8* %190 to i64, !dbg !3079
  %193 = sub i64 %191, %192, !dbg !3079
  %194 = trunc i64 %193 to i32, !dbg !3080
  ret i32 %194, !dbg !3081
}

; Function Attrs: nounwind uwtable
define internal void @get_mirc_color(i8**, i32*, i32*) #0 !dbg !3082 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !3085, metadata !721), !dbg !3086
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !3087, metadata !721), !dbg !3088
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !3089, metadata !721), !dbg !3090
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3091, metadata !721), !dbg !3092
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3093, metadata !721), !dbg !3094
  %9 = load i32*, i32** %5, align 8, !dbg !3095
  %10 = icmp eq i32* %9, null, !dbg !3096
  br i1 %10, label %11, label %12, !dbg !3095

; <label>:11:                                     ; preds = %3
  br label %15, !dbg !3097

; <label>:12:                                     ; preds = %3
  %13 = load i32*, i32** %5, align 8, !dbg !3099
  %14 = load i32, i32* %13, align 4, !dbg !3101
  br label %15, !dbg !3102

; <label>:15:                                     ; preds = %12, %11
  %16 = phi i32 [ -1, %11 ], [ %14, %12 ], !dbg !3103
  store i32 %16, i32* %7, align 4, !dbg !3105
  %17 = load i32*, i32** %6, align 8, !dbg !3106
  %18 = icmp eq i32* %17, null, !dbg !3107
  br i1 %18, label %19, label %20, !dbg !3106

; <label>:19:                                     ; preds = %15
  br label %23, !dbg !3108

; <label>:20:                                     ; preds = %15
  %21 = load i32*, i32** %6, align 8, !dbg !3109
  %22 = load i32, i32* %21, align 4, !dbg !3110
  br label %23, !dbg !3111

; <label>:23:                                     ; preds = %20, %19
  %24 = phi i32 [ -1, %19 ], [ %22, %20 ], !dbg !3112
  store i32 %24, i32* %8, align 4, !dbg !3113
  %25 = load i8**, i8*** %4, align 8, !dbg !3114
  %26 = load i8*, i8** %25, align 8, !dbg !3116
  %27 = load i8, i8* %26, align 1, !dbg !3117
  %28 = zext i8 %27 to i32, !dbg !3118
  %29 = sext i32 %28 to i64, !dbg !3119
  %30 = call i16** @__ctype_b_loc() #1, !dbg !3120
  %31 = load i16*, i16** %30, align 8, !dbg !3121
  %32 = getelementptr inbounds i16, i16* %31, i64 %29, !dbg !3119
  %33 = load i16, i16* %32, align 2, !dbg !3119
  %34 = zext i16 %33 to i32, !dbg !3119
  %35 = and i32 %34, 2048, !dbg !3122
  %36 = icmp ne i32 %35, 0, !dbg !3122
  br i1 %36, label %38, label %37, !dbg !3123

; <label>:37:                                     ; preds = %23
  store i32 -1, i32* %7, align 4, !dbg !3124
  store i32 -1, i32* %8, align 4, !dbg !3126
  br label %130, !dbg !3127

; <label>:38:                                     ; preds = %23
  %39 = load i8**, i8*** %4, align 8, !dbg !3128
  %40 = load i8*, i8** %39, align 8, !dbg !3130
  %41 = load i8, i8* %40, align 1, !dbg !3131
  %42 = sext i8 %41 to i32, !dbg !3131
  %43 = sub nsw i32 %42, 48, !dbg !3132
  store i32 %43, i32* %7, align 4, !dbg !3133
  %44 = load i8**, i8*** %4, align 8, !dbg !3134
  %45 = load i8*, i8** %44, align 8, !dbg !3135
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !3135
  store i8* %46, i8** %44, align 8, !dbg !3135
  %47 = load i8**, i8*** %4, align 8, !dbg !3136
  %48 = load i8*, i8** %47, align 8, !dbg !3138
  %49 = load i8, i8* %48, align 1, !dbg !3139
  %50 = zext i8 %49 to i32, !dbg !3140
  %51 = sext i32 %50 to i64, !dbg !3141
  %52 = call i16** @__ctype_b_loc() #1, !dbg !3142
  %53 = load i16*, i16** %52, align 8, !dbg !3143
  %54 = getelementptr inbounds i16, i16* %53, i64 %51, !dbg !3141
  %55 = load i16, i16* %54, align 2, !dbg !3141
  %56 = zext i16 %55 to i32, !dbg !3141
  %57 = and i32 %56, 2048, !dbg !3144
  %58 = icmp ne i32 %57, 0, !dbg !3144
  br i1 %58, label %59, label %71, !dbg !3145

; <label>:59:                                     ; preds = %38
  %60 = load i32, i32* %7, align 4, !dbg !3146
  %61 = mul nsw i32 %60, 10, !dbg !3148
  %62 = load i8**, i8*** %4, align 8, !dbg !3149
  %63 = load i8*, i8** %62, align 8, !dbg !3150
  %64 = load i8, i8* %63, align 1, !dbg !3151
  %65 = sext i8 %64 to i32, !dbg !3151
  %66 = sub nsw i32 %65, 48, !dbg !3152
  %67 = add nsw i32 %61, %66, !dbg !3153
  store i32 %67, i32* %7, align 4, !dbg !3154
  %68 = load i8**, i8*** %4, align 8, !dbg !3155
  %69 = load i8*, i8** %68, align 8, !dbg !3156
  %70 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !3156
  store i8* %70, i8** %68, align 8, !dbg !3156
  br label %71, !dbg !3157

; <label>:71:                                     ; preds = %59, %38
  %72 = load i8**, i8*** %4, align 8, !dbg !3158
  %73 = load i8*, i8** %72, align 8, !dbg !3160
  %74 = getelementptr inbounds i8, i8* %73, i64 0, !dbg !3161
  %75 = load i8, i8* %74, align 1, !dbg !3161
  %76 = sext i8 %75 to i32, !dbg !3161
  %77 = icmp eq i32 %76, 44, !dbg !3162
  br i1 %77, label %78, label %129, !dbg !3163

; <label>:78:                                     ; preds = %71
  %79 = load i8**, i8*** %4, align 8, !dbg !3164
  %80 = load i8*, i8** %79, align 8, !dbg !3166
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !3167
  %82 = load i8, i8* %81, align 1, !dbg !3167
  %83 = zext i8 %82 to i32, !dbg !3168
  %84 = sext i32 %83 to i64, !dbg !3169
  %85 = call i16** @__ctype_b_loc() #1, !dbg !3170
  %86 = load i16*, i16** %85, align 8, !dbg !3171
  %87 = getelementptr inbounds i16, i16* %86, i64 %84, !dbg !3169
  %88 = load i16, i16* %87, align 2, !dbg !3169
  %89 = zext i16 %88 to i32, !dbg !3169
  %90 = and i32 %89, 2048, !dbg !3172
  %91 = icmp ne i32 %90, 0, !dbg !3172
  br i1 %91, label %92, label %129, !dbg !3173

; <label>:92:                                     ; preds = %78
  %93 = load i8**, i8*** %4, align 8, !dbg !3174
  %94 = load i8*, i8** %93, align 8, !dbg !3176
  %95 = getelementptr inbounds i8, i8* %94, i32 1, !dbg !3176
  store i8* %95, i8** %93, align 8, !dbg !3176
  %96 = load i8**, i8*** %4, align 8, !dbg !3177
  %97 = load i8*, i8** %96, align 8, !dbg !3178
  %98 = load i8, i8* %97, align 1, !dbg !3179
  %99 = sext i8 %98 to i32, !dbg !3179
  %100 = sub nsw i32 %99, 48, !dbg !3180
  store i32 %100, i32* %8, align 4, !dbg !3181
  %101 = load i8**, i8*** %4, align 8, !dbg !3182
  %102 = load i8*, i8** %101, align 8, !dbg !3183
  %103 = getelementptr inbounds i8, i8* %102, i32 1, !dbg !3183
  store i8* %103, i8** %101, align 8, !dbg !3183
  %104 = load i8**, i8*** %4, align 8, !dbg !3184
  %105 = load i8*, i8** %104, align 8, !dbg !3186
  %106 = load i8, i8* %105, align 1, !dbg !3187
  %107 = zext i8 %106 to i32, !dbg !3188
  %108 = sext i32 %107 to i64, !dbg !3189
  %109 = call i16** @__ctype_b_loc() #1, !dbg !3190
  %110 = load i16*, i16** %109, align 8, !dbg !3191
  %111 = getelementptr inbounds i16, i16* %110, i64 %108, !dbg !3189
  %112 = load i16, i16* %111, align 2, !dbg !3189
  %113 = zext i16 %112 to i32, !dbg !3189
  %114 = and i32 %113, 2048, !dbg !3192
  %115 = icmp ne i32 %114, 0, !dbg !3192
  br i1 %115, label %116, label %128, !dbg !3193

; <label>:116:                                    ; preds = %92
  %117 = load i32, i32* %8, align 4, !dbg !3194
  %118 = mul nsw i32 %117, 10, !dbg !3196
  %119 = load i8**, i8*** %4, align 8, !dbg !3197
  %120 = load i8*, i8** %119, align 8, !dbg !3198
  %121 = load i8, i8* %120, align 1, !dbg !3199
  %122 = sext i8 %121 to i32, !dbg !3199
  %123 = sub nsw i32 %122, 48, !dbg !3200
  %124 = add nsw i32 %118, %123, !dbg !3201
  store i32 %124, i32* %8, align 4, !dbg !3202
  %125 = load i8**, i8*** %4, align 8, !dbg !3203
  %126 = load i8*, i8** %125, align 8, !dbg !3204
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !3204
  store i8* %127, i8** %125, align 8, !dbg !3204
  br label %128, !dbg !3205

; <label>:128:                                    ; preds = %116, %92
  br label %129, !dbg !3206

; <label>:129:                                    ; preds = %128, %78, %71
  br label %130

; <label>:130:                                    ; preds = %129, %37
  %131 = load i32*, i32** %5, align 8, !dbg !3207
  %132 = icmp ne i32* %131, null, !dbg !3207
  br i1 %132, label %133, label %136, !dbg !3209

; <label>:133:                                    ; preds = %130
  %134 = load i32, i32* %7, align 4, !dbg !3210
  %135 = load i32*, i32** %5, align 8, !dbg !3212
  store i32 %134, i32* %135, align 4, !dbg !3213
  br label %136, !dbg !3214

; <label>:136:                                    ; preds = %133, %130
  %137 = load i32*, i32** %6, align 8, !dbg !3215
  %138 = icmp ne i32* %137, null, !dbg !3215
  br i1 %138, label %139, label %142, !dbg !3217

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %8, align 4, !dbg !3218
  %141 = load i32*, i32** %6, align 8, !dbg !3220
  store i32 %140, i32* %141, align 4, !dbg !3221
  br label %142, !dbg !3222

; <label>:142:                                    ; preds = %139, %136
  ret void, !dbg !3223
}

; Function Attrs: nounwind uwtable
define i8* @strip_codes(i8*) #0 !dbg !3224 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !3227, metadata !721), !dbg !3228
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3229, metadata !721), !dbg !3230
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3231, metadata !721), !dbg !3232
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3233, metadata !721), !dbg !3234
  %6 = load i8*, i8** %2, align 8, !dbg !3235
  %7 = call noalias i8* @g_strdup(i8* %6), !dbg !3236
  store i8* %7, i8** %4, align 8, !dbg !3237
  store i8* %7, i8** %5, align 8, !dbg !3238
  %8 = load i8*, i8** %2, align 8, !dbg !3239
  store i8* %8, i8** %3, align 8, !dbg !3241
  br label %9, !dbg !3242

; <label>:9:                                      ; preds = %130, %1
  %10 = load i8*, i8** %3, align 8, !dbg !3243
  %11 = load i8, i8* %10, align 1, !dbg !3246
  %12 = sext i8 %11 to i32, !dbg !3246
  %13 = icmp ne i32 %12, 0, !dbg !3247
  br i1 %13, label %14, label %133, !dbg !3248

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !3249
  %16 = load i8, i8* %15, align 1, !dbg !3252
  %17 = sext i8 %16 to i32, !dbg !3252
  %18 = icmp eq i32 %17, 3, !dbg !3253
  br i1 %18, label %19, label %24, !dbg !3254

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %3, align 8, !dbg !3255
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !3255
  store i8* %21, i8** %3, align 8, !dbg !3255
  call void @get_mirc_color(i8** %3, i32* null, i32* null), !dbg !3257
  %22 = load i8*, i8** %3, align 8, !dbg !3258
  %23 = getelementptr inbounds i8, i8* %22, i32 -1, !dbg !3258
  store i8* %23, i8** %3, align 8, !dbg !3258
  br label %130, !dbg !3259

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %3, align 8, !dbg !3260
  %26 = load i8, i8* %25, align 1, !dbg !3262
  %27 = sext i8 %26 to i32, !dbg !3262
  %28 = icmp eq i32 %27, 4, !dbg !3263
  br i1 %28, label %29, label %54, !dbg !3264

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8, !dbg !3265
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !3265
  %32 = load i8, i8* %31, align 1, !dbg !3265
  %33 = sext i8 %32 to i32, !dbg !3265
  %34 = icmp ne i32 %33, 0, !dbg !3267
  br i1 %34, label %35, label %54, !dbg !3268

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %3, align 8, !dbg !3269
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !3269
  %38 = load i8, i8* %37, align 1, !dbg !3269
  %39 = sext i8 %38 to i32, !dbg !3269
  %40 = icmp sge i32 %39, 96, !dbg !3272
  br i1 %40, label %41, label %44, !dbg !3273

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %3, align 8, !dbg !3274
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !3274
  store i8* %43, i8** %3, align 8, !dbg !3274
  br label %130, !dbg !3276

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %3, align 8, !dbg !3277
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !3277
  %47 = load i8, i8* %46, align 1, !dbg !3277
  %48 = sext i8 %47 to i32, !dbg !3277
  %49 = icmp ne i32 %48, 0, !dbg !3279
  br i1 %49, label %50, label %53, !dbg !3280

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %3, align 8, !dbg !3281
  %52 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !3281
  store i8* %52, i8** %3, align 8, !dbg !3281
  br label %130, !dbg !3283

; <label>:53:                                     ; preds = %44
  br label %54, !dbg !3284

; <label>:54:                                     ; preds = %53, %29, %24
  %55 = load i8*, i8** %3, align 8, !dbg !3285
  %56 = load i8, i8* %55, align 1, !dbg !3287
  %57 = sext i8 %56 to i32, !dbg !3287
  %58 = icmp eq i32 %57, 27, !dbg !3288
  br i1 %58, label %59, label %73, !dbg !3289

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %3, align 8, !dbg !3290
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3290
  %62 = load i8, i8* %61, align 1, !dbg !3290
  %63 = sext i8 %62 to i32, !dbg !3290
  %64 = icmp ne i32 %63, 0, !dbg !3292
  br i1 %64, label %65, label %73, !dbg !3293

; <label>:65:                                     ; preds = %59
  %66 = load i8*, i8** %3, align 8, !dbg !3294
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !3294
  store i8* %67, i8** %3, align 8, !dbg !3294
  %68 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !3296
  %69 = load i8*, i8** %3, align 8, !dbg !3297
  %70 = call i8* @get_ansi_color(%struct.THEME_REC* %68, i8* %69, i32* null, i32* null, i32* null), !dbg !3298
  store i8* %70, i8** %3, align 8, !dbg !3299
  %71 = load i8*, i8** %3, align 8, !dbg !3300
  %72 = getelementptr inbounds i8, i8* %71, i32 -1, !dbg !3300
  store i8* %72, i8** %3, align 8, !dbg !3300
  br label %129, !dbg !3301

; <label>:73:                                     ; preds = %59, %54
  %74 = load i8*, i8** %3, align 8, !dbg !3302
  %75 = load i8, i8* %74, align 1, !dbg !3305
  %76 = sext i8 %75 to i32, !dbg !3306
  %77 = icmp eq i32 %76, 2, !dbg !3307
  br i1 %77, label %128, label %78, !dbg !3308

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %3, align 8, !dbg !3309
  %80 = load i8, i8* %79, align 1, !dbg !3311
  %81 = sext i8 %80 to i32, !dbg !3312
  %82 = icmp eq i32 %81, 3, !dbg !3313
  br i1 %82, label %128, label %83, !dbg !3314

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %3, align 8, !dbg !3315
  %85 = load i8, i8* %84, align 1, !dbg !3317
  %86 = sext i8 %85 to i32, !dbg !3318
  %87 = icmp eq i32 %86, 4, !dbg !3319
  br i1 %87, label %128, label %88, !dbg !3320

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %3, align 8, !dbg !3321
  %90 = load i8, i8* %89, align 1, !dbg !3323
  %91 = sext i8 %90 to i32, !dbg !3324
  %92 = icmp eq i32 %91, 6, !dbg !3325
  br i1 %92, label %128, label %93, !dbg !3326

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %3, align 8, !dbg !3327
  %95 = load i8, i8* %94, align 1, !dbg !3329
  %96 = sext i8 %95 to i32, !dbg !3330
  %97 = icmp eq i32 %96, 7, !dbg !3331
  br i1 %97, label %128, label %98, !dbg !3332

; <label>:98:                                     ; preds = %93
  %99 = load i8*, i8** %3, align 8, !dbg !3333
  %100 = load i8, i8* %99, align 1, !dbg !3335
  %101 = sext i8 %100 to i32, !dbg !3336
  %102 = icmp eq i32 %101, 15, !dbg !3337
  br i1 %102, label %128, label %103, !dbg !3338

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %3, align 8, !dbg !3339
  %105 = load i8, i8* %104, align 1, !dbg !3341
  %106 = sext i8 %105 to i32, !dbg !3342
  %107 = icmp eq i32 %106, 22, !dbg !3343
  br i1 %107, label %128, label %108, !dbg !3344

; <label>:108:                                    ; preds = %103
  %109 = load i8*, i8** %3, align 8, !dbg !3345
  %110 = load i8, i8* %109, align 1, !dbg !3347
  %111 = sext i8 %110 to i32, !dbg !3348
  %112 = icmp eq i32 %111, 27, !dbg !3349
  br i1 %112, label %128, label %113, !dbg !3350

; <label>:113:                                    ; preds = %108
  %114 = load i8*, i8** %3, align 8, !dbg !3351
  %115 = load i8, i8* %114, align 1, !dbg !3353
  %116 = sext i8 %115 to i32, !dbg !3354
  %117 = icmp eq i32 %116, 29, !dbg !3355
  br i1 %117, label %128, label %118, !dbg !3356

; <label>:118:                                    ; preds = %113
  %119 = load i8*, i8** %3, align 8, !dbg !3357
  %120 = load i8, i8* %119, align 1, !dbg !3359
  %121 = sext i8 %120 to i32, !dbg !3360
  %122 = icmp eq i32 %121, 31, !dbg !3361
  br i1 %122, label %128, label %123, !dbg !3362

; <label>:123:                                    ; preds = %118
  %124 = load i8*, i8** %3, align 8, !dbg !3363
  %125 = load i8, i8* %124, align 1, !dbg !3364
  %126 = load i8*, i8** %5, align 8, !dbg !3365
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !3365
  store i8* %127, i8** %5, align 8, !dbg !3365
  store i8 %125, i8* %126, align 1, !dbg !3366
  br label %128, !dbg !3367

; <label>:128:                                    ; preds = %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %73
  br label %129

; <label>:129:                                    ; preds = %128, %65
  br label %130, !dbg !3368

; <label>:130:                                    ; preds = %129, %50, %41, %19
  %131 = load i8*, i8** %3, align 8, !dbg !3369
  %132 = getelementptr inbounds i8, i8* %131, i32 1, !dbg !3369
  store i8* %132, i8** %3, align 8, !dbg !3369
  br label %9, !dbg !3371, !llvm.loop !3372

; <label>:133:                                    ; preds = %9
  %134 = load i8*, i8** %5, align 8, !dbg !3374
  store i8 0, i8* %134, align 1, !dbg !3375
  %135 = load i8*, i8** %4, align 8, !dbg !3376
  ret i8* %135, !dbg !3377
}

; Function Attrs: nounwind uwtable
define internal i8* @get_ansi_color(%struct.THEME_REC*, i8*, i32*, i32*, i32*) #0 !dbg !689 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.THEME_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.THEME_REC* %0, %struct.THEME_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %7, metadata !3378, metadata !721), !dbg !3379
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3380, metadata !721), !dbg !3381
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !3382, metadata !721), !dbg !3383
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !3384, metadata !721), !dbg !3385
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !3386, metadata !721), !dbg !3387
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3388, metadata !721), !dbg !3389
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3390, metadata !721), !dbg !3391
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3392, metadata !721), !dbg !3393
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3394, metadata !721), !dbg !3395
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3396, metadata !721), !dbg !3397
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3398, metadata !721), !dbg !3399
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3400, metadata !721), !dbg !3401
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3402, metadata !721), !dbg !3403
  %20 = load i8*, i8** %8, align 8, !dbg !3404
  %21 = load i8, i8* %20, align 1, !dbg !3406
  %22 = sext i8 %21 to i32, !dbg !3406
  %23 = icmp ne i32 %22, 91, !dbg !3407
  br i1 %23, label %24, label %26, !dbg !3408

; <label>:24:                                     ; preds = %5
  %25 = load i8*, i8** %8, align 8, !dbg !3409
  store i8* %25, i8** %6, align 8, !dbg !3410
  br label %392, !dbg !3410

; <label>:26:                                     ; preds = %5
  %27 = load i8*, i8** %8, align 8, !dbg !3411
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !3411
  store i8* %28, i8** %8, align 8, !dbg !3411
  store i8* %27, i8** %12, align 8, !dbg !3412
  %29 = load i32*, i32** %9, align 8, !dbg !3413
  %30 = icmp eq i32* %29, null, !dbg !3414
  br i1 %30, label %35, label %31, !dbg !3415

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** %9, align 8, !dbg !3416
  %33 = load i32, i32* %32, align 4, !dbg !3418
  %34 = icmp slt i32 %33, 0, !dbg !3419
  br i1 %34, label %35, label %39, !dbg !3420

; <label>:35:                                     ; preds = %31, %26
  %36 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !3421
  %37 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %36, i32 0, i32 4, !dbg !3423
  %38 = load i32, i32* %37, align 8, !dbg !3423
  br label %42, !dbg !3424

; <label>:39:                                     ; preds = %31
  %40 = load i32*, i32** %9, align 8, !dbg !3425
  %41 = load i32, i32* %40, align 4, !dbg !3427
  br label %42, !dbg !3428

; <label>:42:                                     ; preds = %39, %35
  %43 = phi i32 [ %38, %35 ], [ %41, %39 ], !dbg !3429
  store i32 %43, i32* %14, align 4, !dbg !3431
  %44 = load i32*, i32** %10, align 8, !dbg !3432
  %45 = icmp eq i32* %44, null, !dbg !3433
  br i1 %45, label %50, label %46, !dbg !3434

; <label>:46:                                     ; preds = %42
  %47 = load i32*, i32** %10, align 8, !dbg !3435
  %48 = load i32, i32* %47, align 4, !dbg !3436
  %49 = icmp slt i32 %48, 0, !dbg !3437
  br i1 %49, label %50, label %51, !dbg !3438

; <label>:50:                                     ; preds = %46, %42
  br label %54, !dbg !3439

; <label>:51:                                     ; preds = %46
  %52 = load i32*, i32** %10, align 8, !dbg !3440
  %53 = load i32, i32* %52, align 4, !dbg !3441
  br label %54, !dbg !3442

; <label>:54:                                     ; preds = %51, %50
  %55 = phi i32 [ -1, %50 ], [ %53, %51 ], !dbg !3443
  store i32 %55, i32* %15, align 4, !dbg !3444
  %56 = load i32*, i32** %11, align 8, !dbg !3445
  %57 = icmp eq i32* %56, null, !dbg !3446
  br i1 %57, label %58, label %59, !dbg !3445

; <label>:58:                                     ; preds = %54
  br label %62, !dbg !3447

; <label>:59:                                     ; preds = %54
  %60 = load i32*, i32** %11, align 8, !dbg !3448
  %61 = load i32, i32* %60, align 4, !dbg !3449
  br label %62, !dbg !3450

; <label>:62:                                     ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ], !dbg !3451
  store i32 %63, i32* %16, align 4, !dbg !3452
  store i32 0, i32* %18, align 4, !dbg !3453
  br label %64, !dbg !3454

; <label>:64:                                     ; preds = %387, %62
  %65 = load i8*, i8** %8, align 8, !dbg !3455
  %66 = load i8, i8* %65, align 1, !dbg !3460
  %67 = sext i8 %66 to i32, !dbg !3460
  %68 = icmp eq i32 %67, 0, !dbg !3461
  br i1 %68, label %69, label %71, !dbg !3462

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %12, align 8, !dbg !3463
  store i8* %70, i8** %6, align 8, !dbg !3465
  br label %392, !dbg !3465

; <label>:71:                                     ; preds = %64
  %72 = load i8*, i8** %8, align 8, !dbg !3466
  %73 = load i8, i8* %72, align 1, !dbg !3468
  %74 = zext i8 %73 to i32, !dbg !3469
  %75 = sext i32 %74 to i64, !dbg !3470
  %76 = call i16** @__ctype_b_loc() #1, !dbg !3471
  %77 = load i16*, i16** %76, align 8, !dbg !3472
  %78 = getelementptr inbounds i16, i16* %77, i64 %75, !dbg !3470
  %79 = load i16, i16* %78, align 2, !dbg !3470
  %80 = zext i16 %79 to i32, !dbg !3470
  %81 = and i32 %80, 2048, !dbg !3473
  %82 = icmp ne i32 %81, 0, !dbg !3473
  br i1 %82, label %83, label %91, !dbg !3474

; <label>:83:                                     ; preds = %71
  %84 = load i8*, i8** %8, align 8, !dbg !3475
  %85 = call i32 @parse_uint(i8* %84, i8** %13, i32 10, i32* %18), !dbg !3478
  %86 = icmp ne i32 %85, 0, !dbg !3478
  br i1 %86, label %89, label %87, !dbg !3479

; <label>:87:                                     ; preds = %83
  %88 = load i8*, i8** %12, align 8, !dbg !3480
  store i8* %88, i8** %6, align 8, !dbg !3482
  br label %392, !dbg !3482

; <label>:89:                                     ; preds = %83
  %90 = load i8*, i8** %13, align 8, !dbg !3483
  store i8* %90, i8** %8, align 8, !dbg !3484
  br label %91, !dbg !3485

; <label>:91:                                     ; preds = %89, %71
  %92 = load i8*, i8** %8, align 8, !dbg !3486
  %93 = load i8, i8* %92, align 1, !dbg !3488
  %94 = sext i8 %93 to i32, !dbg !3488
  %95 = icmp ne i32 %94, 59, !dbg !3489
  br i1 %95, label %96, label %103, !dbg !3490

; <label>:96:                                     ; preds = %91
  %97 = load i8*, i8** %8, align 8, !dbg !3491
  %98 = load i8, i8* %97, align 1, !dbg !3493
  %99 = sext i8 %98 to i32, !dbg !3493
  %100 = icmp ne i32 %99, 109, !dbg !3494
  br i1 %100, label %101, label %103, !dbg !3495

; <label>:101:                                    ; preds = %96
  %102 = load i8*, i8** %12, align 8, !dbg !3496
  store i8* %102, i8** %6, align 8, !dbg !3497
  br label %392, !dbg !3497

; <label>:103:                                    ; preds = %96, %91
  %104 = load i32, i32* %18, align 4, !dbg !3498
  switch i32 %104, label %294 [
    i32 0, label %105
    i32 1, label %111
    i32 22, label %114
    i32 3, label %117
    i32 23, label %120
    i32 4, label %123
    i32 24, label %126
    i32 5, label %129
    i32 25, label %132
    i32 7, label %135
    i32 27, label %138
    i32 39, label %141
    i32 49, label %147
    i32 38, label %150
    i32 48, label %150
  ], !dbg !3499

; <label>:105:                                    ; preds = %103
  %106 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !3500
  %107 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %106, i32 0, i32 4, !dbg !3502
  %108 = load i32, i32* %107, align 8, !dbg !3502
  store i32 %108, i32* %14, align 4, !dbg !3503
  store i32 -1, i32* %15, align 4, !dbg !3504
  %109 = load i32, i32* %16, align 4, !dbg !3505
  %110 = and i32 %109, -3184, !dbg !3505
  store i32 %110, i32* %16, align 4, !dbg !3505
  br label %360, !dbg !3506

; <label>:111:                                    ; preds = %103
  %112 = load i32, i32* %16, align 4, !dbg !3507
  %113 = or i32 %112, 1, !dbg !3507
  store i32 %113, i32* %16, align 4, !dbg !3507
  br label %360, !dbg !3508

; <label>:114:                                    ; preds = %103
  %115 = load i32, i32* %16, align 4, !dbg !3509
  %116 = and i32 %115, -2, !dbg !3509
  store i32 %116, i32* %16, align 4, !dbg !3509
  br label %360, !dbg !3510

; <label>:117:                                    ; preds = %103
  %118 = load i32, i32* %16, align 4, !dbg !3511
  %119 = or i32 %118, 64, !dbg !3511
  store i32 %119, i32* %16, align 4, !dbg !3511
  br label %360, !dbg !3512

; <label>:120:                                    ; preds = %103
  %121 = load i32, i32* %16, align 4, !dbg !3513
  %122 = and i32 %121, -65, !dbg !3513
  store i32 %122, i32* %16, align 4, !dbg !3513
  br label %360, !dbg !3514

; <label>:123:                                    ; preds = %103
  %124 = load i32, i32* %16, align 4, !dbg !3515
  %125 = or i32 %124, 4, !dbg !3515
  store i32 %125, i32* %16, align 4, !dbg !3515
  br label %360, !dbg !3516

; <label>:126:                                    ; preds = %103
  %127 = load i32, i32* %16, align 4, !dbg !3517
  %128 = and i32 %127, -5, !dbg !3517
  store i32 %128, i32* %16, align 4, !dbg !3517
  br label %360, !dbg !3518

; <label>:129:                                    ; preds = %103
  %130 = load i32, i32* %16, align 4, !dbg !3519
  %131 = or i32 %130, 8, !dbg !3519
  store i32 %131, i32* %16, align 4, !dbg !3519
  br label %360, !dbg !3520

; <label>:132:                                    ; preds = %103
  %133 = load i32, i32* %16, align 4, !dbg !3521
  %134 = and i32 %133, -9, !dbg !3521
  store i32 %134, i32* %16, align 4, !dbg !3521
  br label %360, !dbg !3522

; <label>:135:                                    ; preds = %103
  %136 = load i32, i32* %16, align 4, !dbg !3523
  %137 = or i32 %136, 2, !dbg !3523
  store i32 %137, i32* %16, align 4, !dbg !3523
  br label %360, !dbg !3524

; <label>:138:                                    ; preds = %103
  %139 = load i32, i32* %16, align 4, !dbg !3525
  %140 = and i32 %139, -3, !dbg !3525
  store i32 %140, i32* %16, align 4, !dbg !3525
  br label %360, !dbg !3526

; <label>:141:                                    ; preds = %103
  %142 = load i32, i32* %16, align 4, !dbg !3527
  %143 = and i32 %142, -1025, !dbg !3527
  store i32 %143, i32* %16, align 4, !dbg !3527
  %144 = load %struct.THEME_REC*, %struct.THEME_REC** %7, align 8, !dbg !3528
  %145 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %144, i32 0, i32 4, !dbg !3529
  %146 = load i32, i32* %145, align 8, !dbg !3529
  store i32 %146, i32* %14, align 4, !dbg !3530
  br label %360, !dbg !3531

; <label>:147:                                    ; preds = %103
  store i32 -1, i32* %15, align 4, !dbg !3532
  %148 = load i32, i32* %16, align 4, !dbg !3533
  %149 = and i32 %148, -2081, !dbg !3533
  store i32 %149, i32* %16, align 4, !dbg !3533
  br label %360, !dbg !3534

; <label>:150:                                    ; preds = %103, %103
  %151 = load i8*, i8** %8, align 8, !dbg !3535
  %152 = load i8, i8* %151, align 1, !dbg !3537
  %153 = sext i8 %152 to i32, !dbg !3537
  %154 = icmp ne i32 %153, 59, !dbg !3538
  br i1 %154, label %155, label %156, !dbg !3539

; <label>:155:                                    ; preds = %150
  br label %360, !dbg !3540

; <label>:156:                                    ; preds = %150
  %157 = load i8*, i8** %8, align 8, !dbg !3542
  %158 = getelementptr inbounds i8, i8* %157, i32 1, !dbg !3542
  store i8* %158, i8** %8, align 8, !dbg !3542
  %159 = load i8*, i8** %8, align 8, !dbg !3543
  %160 = call i32 @parse_uint(i8* %159, i8** %13, i32 10, i32* %19), !dbg !3545
  %161 = icmp ne i32 %160, 0, !dbg !3545
  br i1 %161, label %164, label %162, !dbg !3546

; <label>:162:                                    ; preds = %156
  %163 = load i8*, i8** %12, align 8, !dbg !3547
  store i8* %163, i8** %6, align 8, !dbg !3549
  br label %392, !dbg !3549

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %13, align 8, !dbg !3550
  store i8* %165, i8** %8, align 8, !dbg !3551
  %166 = load i8*, i8** %8, align 8, !dbg !3552
  %167 = load i8, i8* %166, align 1, !dbg !3554
  %168 = sext i8 %167 to i32, !dbg !3554
  %169 = icmp eq i32 %168, 0, !dbg !3555
  br i1 %169, label %170, label %172, !dbg !3556

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** %12, align 8, !dbg !3557
  store i8* %171, i8** %6, align 8, !dbg !3559
  br label %392, !dbg !3559

; <label>:172:                                    ; preds = %164
  %173 = load i32, i32* %19, align 4, !dbg !3560
  switch i32 %173, label %293 [
    i32 2, label %174
    i32 5, label %255
  ], !dbg !3561

; <label>:174:                                    ; preds = %172
  store i32 0, i32* %19, align 4, !dbg !3562
  store i32 0, i32* %17, align 4, !dbg !3564
  br label %175, !dbg !3566

; <label>:175:                                    ; preds = %230, %174
  %176 = load i32, i32* %17, align 4, !dbg !3567
  %177 = icmp slt i32 %176, 3, !dbg !3570
  br i1 %177, label %178, label %233, !dbg !3571

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %19, align 4, !dbg !3572
  %180 = shl i32 %179, 8, !dbg !3572
  store i32 %180, i32* %19, align 4, !dbg !3572
  %181 = load i8*, i8** %8, align 8, !dbg !3574
  %182 = load i8, i8* %181, align 1, !dbg !3576
  %183 = sext i8 %182 to i32, !dbg !3576
  %184 = icmp ne i32 %183, 59, !dbg !3577
  br i1 %184, label %185, label %191, !dbg !3578

; <label>:185:                                    ; preds = %178
  %186 = load i8*, i8** %8, align 8, !dbg !3579
  %187 = load i8, i8* %186, align 1, !dbg !3581
  %188 = sext i8 %187 to i32, !dbg !3581
  %189 = icmp ne i32 %188, 58, !dbg !3582
  br i1 %189, label %190, label %191, !dbg !3583

; <label>:190:                                    ; preds = %185
  store i32 -1, i32* %17, align 4, !dbg !3584
  br label %233, !dbg !3586

; <label>:191:                                    ; preds = %185, %178
  %192 = load i8*, i8** %8, align 8, !dbg !3587
  %193 = getelementptr inbounds i8, i8* %192, i32 1, !dbg !3587
  store i8* %193, i8** %8, align 8, !dbg !3587
  br label %194, !dbg !3588

; <label>:194:                                    ; preds = %219, %191
  %195 = load i8*, i8** %8, align 8, !dbg !3589
  %196 = load i8, i8* %195, align 1, !dbg !3593
  %197 = zext i8 %196 to i32, !dbg !3594
  %198 = sext i32 %197 to i64, !dbg !3595
  %199 = call i16** @__ctype_b_loc() #1, !dbg !3596
  %200 = load i16*, i16** %199, align 8, !dbg !3597
  %201 = getelementptr inbounds i16, i16* %200, i64 %198, !dbg !3595
  %202 = load i16, i16* %201, align 2, !dbg !3595
  %203 = zext i16 %202 to i32, !dbg !3595
  %204 = and i32 %203, 2048, !dbg !3598
  %205 = icmp ne i32 %204, 0, !dbg !3599
  br i1 %205, label %206, label %222, !dbg !3599

; <label>:206:                                    ; preds = %194
  %207 = load i32, i32* %19, align 4, !dbg !3600
  %208 = and i32 %207, -256, !dbg !3601
  %209 = load i32, i32* %19, align 4, !dbg !3602
  %210 = and i32 %209, 255, !dbg !3603
  %211 = mul i32 %210, 10, !dbg !3604
  %212 = load i8*, i8** %8, align 8, !dbg !3605
  %213 = load i8, i8* %212, align 1, !dbg !3606
  %214 = sext i8 %213 to i32, !dbg !3606
  %215 = sub nsw i32 %214, 48, !dbg !3607
  %216 = add i32 %211, %215, !dbg !3608
  %217 = and i32 %216, 255, !dbg !3609
  %218 = or i32 %208, %217, !dbg !3610
  store i32 %218, i32* %19, align 4, !dbg !3611
  br label %219, !dbg !3612

; <label>:219:                                    ; preds = %206
  %220 = load i8*, i8** %8, align 8, !dbg !3613
  %221 = getelementptr inbounds i8, i8* %220, i32 1, !dbg !3613
  store i8* %221, i8** %8, align 8, !dbg !3613
  br label %194, !dbg !3615, !llvm.loop !3616

; <label>:222:                                    ; preds = %194
  %223 = load i8*, i8** %8, align 8, !dbg !3617
  %224 = load i8, i8* %223, align 1, !dbg !3619
  %225 = sext i8 %224 to i32, !dbg !3619
  %226 = icmp eq i32 %225, 0, !dbg !3620
  br i1 %226, label %227, label %229, !dbg !3621

; <label>:227:                                    ; preds = %222
  %228 = load i8*, i8** %12, align 8, !dbg !3622
  store i8* %228, i8** %6, align 8, !dbg !3624
  br label %392, !dbg !3624

; <label>:229:                                    ; preds = %222
  br label %230, !dbg !3625

; <label>:230:                                    ; preds = %229
  %231 = load i32, i32* %17, align 4, !dbg !3626
  %232 = add nsw i32 %231, 1, !dbg !3626
  store i32 %232, i32* %17, align 4, !dbg !3626
  br label %175, !dbg !3628, !llvm.loop !3629

; <label>:233:                                    ; preds = %190, %175
  %234 = load i32, i32* %17, align 4, !dbg !3631
  %235 = icmp eq i32 %234, -1, !dbg !3633
  br i1 %235, label %236, label %237, !dbg !3634

; <label>:236:                                    ; preds = %233
  br label %293, !dbg !3635

; <label>:237:                                    ; preds = %233
  %238 = load i32, i32* %18, align 4, !dbg !3637
  %239 = icmp eq i32 %238, 38, !dbg !3639
  br i1 %239, label %240, label %245, !dbg !3640

; <label>:240:                                    ; preds = %237
  %241 = load i32, i32* %16, align 4, !dbg !3641
  %242 = and i32 %241, -1025, !dbg !3641
  store i32 %242, i32* %16, align 4, !dbg !3641
  %243 = load i32, i32* %19, align 4, !dbg !3643
  %244 = call i32 @color_24bit_256_int(i32 %243), !dbg !3644
  store i32 %244, i32* %14, align 4, !dbg !3645
  br label %254, !dbg !3646

; <label>:245:                                    ; preds = %237
  %246 = load i32, i32* %18, align 4, !dbg !3647
  %247 = icmp eq i32 %246, 48, !dbg !3650
  br i1 %247, label %248, label %253, !dbg !3647

; <label>:248:                                    ; preds = %245
  %249 = load i32, i32* %16, align 4, !dbg !3651
  %250 = and i32 %249, -2049, !dbg !3651
  store i32 %250, i32* %16, align 4, !dbg !3651
  %251 = load i32, i32* %19, align 4, !dbg !3653
  %252 = call i32 @color_24bit_256_int(i32 %251), !dbg !3654
  store i32 %252, i32* %15, align 4, !dbg !3655
  br label %253, !dbg !3656

; <label>:253:                                    ; preds = %248, %245
  br label %254

; <label>:254:                                    ; preds = %253, %240
  br label %293, !dbg !3657

; <label>:255:                                    ; preds = %172
  %256 = load i8*, i8** %8, align 8, !dbg !3658
  %257 = load i8, i8* %256, align 1, !dbg !3660
  %258 = sext i8 %257 to i32, !dbg !3660
  %259 = icmp ne i32 %258, 59, !dbg !3661
  br i1 %259, label %260, label %261, !dbg !3662

; <label>:260:                                    ; preds = %255
  br label %293, !dbg !3663

; <label>:261:                                    ; preds = %255
  %262 = load i8*, i8** %8, align 8, !dbg !3665
  %263 = getelementptr inbounds i8, i8* %262, i32 1, !dbg !3665
  store i8* %263, i8** %8, align 8, !dbg !3665
  %264 = load i8*, i8** %8, align 8, !dbg !3666
  %265 = call i32 @parse_uint(i8* %264, i8** %13, i32 10, i32* %19), !dbg !3668
  %266 = icmp ne i32 %265, 0, !dbg !3668
  br i1 %266, label %269, label %267, !dbg !3669

; <label>:267:                                    ; preds = %261
  %268 = load i8*, i8** %12, align 8, !dbg !3670
  store i8* %268, i8** %6, align 8, !dbg !3672
  br label %392, !dbg !3672

; <label>:269:                                    ; preds = %261
  %270 = load i8*, i8** %13, align 8, !dbg !3673
  store i8* %270, i8** %8, align 8, !dbg !3674
  %271 = load i8*, i8** %8, align 8, !dbg !3675
  %272 = load i8, i8* %271, align 1, !dbg !3677
  %273 = sext i8 %272 to i32, !dbg !3677
  %274 = icmp eq i32 %273, 0, !dbg !3678
  br i1 %274, label %275, label %277, !dbg !3679

; <label>:275:                                    ; preds = %269
  %276 = load i8*, i8** %12, align 8, !dbg !3680
  store i8* %276, i8** %6, align 8, !dbg !3682
  br label %392, !dbg !3682

; <label>:277:                                    ; preds = %269
  %278 = load i32, i32* %18, align 4, !dbg !3683
  %279 = icmp eq i32 %278, 38, !dbg !3685
  br i1 %279, label %280, label %284, !dbg !3686

; <label>:280:                                    ; preds = %277
  %281 = load i32, i32* %16, align 4, !dbg !3687
  %282 = and i32 %281, -1025, !dbg !3687
  store i32 %282, i32* %16, align 4, !dbg !3687
  %283 = load i32, i32* %19, align 4, !dbg !3689
  store i32 %283, i32* %14, align 4, !dbg !3690
  br label %292, !dbg !3691

; <label>:284:                                    ; preds = %277
  %285 = load i32, i32* %18, align 4, !dbg !3692
  %286 = icmp eq i32 %285, 48, !dbg !3695
  br i1 %286, label %287, label %291, !dbg !3692

; <label>:287:                                    ; preds = %284
  %288 = load i32, i32* %16, align 4, !dbg !3696
  %289 = and i32 %288, -2049, !dbg !3696
  store i32 %289, i32* %16, align 4, !dbg !3696
  %290 = load i32, i32* %19, align 4, !dbg !3698
  store i32 %290, i32* %15, align 4, !dbg !3699
  br label %291, !dbg !3700

; <label>:291:                                    ; preds = %287, %284
  br label %292

; <label>:292:                                    ; preds = %291, %280
  br label %293, !dbg !3701

; <label>:293:                                    ; preds = %172, %292, %260, %254, %236
  br label %360, !dbg !3702

; <label>:294:                                    ; preds = %103
  %295 = load i32, i32* %18, align 4, !dbg !3703
  %296 = icmp uge i32 %295, 30, !dbg !3705
  br i1 %296, label %297, label %309, !dbg !3706

; <label>:297:                                    ; preds = %294
  %298 = load i32, i32* %18, align 4, !dbg !3707
  %299 = icmp ule i32 %298, 37, !dbg !3709
  br i1 %299, label %300, label %309, !dbg !3710

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* %16, align 4, !dbg !3711
  %302 = and i32 %301, -1025, !dbg !3711
  store i32 %302, i32* %16, align 4, !dbg !3711
  %303 = load i32, i32* %18, align 4, !dbg !3713
  %304 = sub i32 %303, 30, !dbg !3714
  %305 = zext i32 %304 to i64, !dbg !3715
  %306 = getelementptr inbounds [8 x i8], [8 x i8]* @get_ansi_color.ansitab, i64 0, i64 %305, !dbg !3715
  %307 = load i8, i8* %306, align 1, !dbg !3715
  %308 = sext i8 %307 to i32, !dbg !3715
  store i32 %308, i32* %14, align 4, !dbg !3716
  br label %359, !dbg !3717

; <label>:309:                                    ; preds = %297, %294
  %310 = load i32, i32* %18, align 4, !dbg !3718
  %311 = icmp uge i32 %310, 40, !dbg !3721
  br i1 %311, label %312, label %324, !dbg !3722

; <label>:312:                                    ; preds = %309
  %313 = load i32, i32* %18, align 4, !dbg !3723
  %314 = icmp ule i32 %313, 47, !dbg !3725
  br i1 %314, label %315, label %324, !dbg !3726

; <label>:315:                                    ; preds = %312
  %316 = load i32, i32* %16, align 4, !dbg !3727
  %317 = and i32 %316, -2049, !dbg !3727
  store i32 %317, i32* %16, align 4, !dbg !3727
  %318 = load i32, i32* %18, align 4, !dbg !3729
  %319 = sub i32 %318, 40, !dbg !3730
  %320 = zext i32 %319 to i64, !dbg !3731
  %321 = getelementptr inbounds [8 x i8], [8 x i8]* @get_ansi_color.ansitab, i64 0, i64 %320, !dbg !3731
  %322 = load i8, i8* %321, align 1, !dbg !3731
  %323 = sext i8 %322 to i32, !dbg !3731
  store i32 %323, i32* %15, align 4, !dbg !3732
  br label %358, !dbg !3733

; <label>:324:                                    ; preds = %312, %309
  %325 = load i32, i32* %18, align 4, !dbg !3734
  %326 = icmp uge i32 %325, 90, !dbg !3737
  br i1 %326, label %327, label %340, !dbg !3738

; <label>:327:                                    ; preds = %324
  %328 = load i32, i32* %18, align 4, !dbg !3739
  %329 = icmp ule i32 %328, 97, !dbg !3741
  br i1 %329, label %330, label %340, !dbg !3742

; <label>:330:                                    ; preds = %327
  %331 = load i32, i32* %16, align 4, !dbg !3743
  %332 = and i32 %331, -1025, !dbg !3743
  store i32 %332, i32* %16, align 4, !dbg !3743
  %333 = load i32, i32* %18, align 4, !dbg !3745
  %334 = sub i32 %333, 90, !dbg !3746
  %335 = zext i32 %334 to i64, !dbg !3747
  %336 = getelementptr inbounds [8 x i8], [8 x i8]* @get_ansi_color.ansitab, i64 0, i64 %335, !dbg !3747
  %337 = load i8, i8* %336, align 1, !dbg !3747
  %338 = sext i8 %337 to i32, !dbg !3747
  %339 = add nsw i32 8, %338, !dbg !3748
  store i32 %339, i32* %14, align 4, !dbg !3749
  br label %357, !dbg !3750

; <label>:340:                                    ; preds = %327, %324
  %341 = load i32, i32* %18, align 4, !dbg !3751
  %342 = icmp uge i32 %341, 100, !dbg !3754
  br i1 %342, label %343, label %356, !dbg !3755

; <label>:343:                                    ; preds = %340
  %344 = load i32, i32* %18, align 4, !dbg !3756
  %345 = icmp ule i32 %344, 107, !dbg !3758
  br i1 %345, label %346, label %356, !dbg !3759

; <label>:346:                                    ; preds = %343
  %347 = load i32, i32* %16, align 4, !dbg !3760
  %348 = and i32 %347, -2049, !dbg !3760
  store i32 %348, i32* %16, align 4, !dbg !3760
  %349 = load i32, i32* %18, align 4, !dbg !3762
  %350 = sub i32 %349, 100, !dbg !3763
  %351 = zext i32 %350 to i64, !dbg !3764
  %352 = getelementptr inbounds [8 x i8], [8 x i8]* @get_ansi_color.ansitab, i64 0, i64 %351, !dbg !3764
  %353 = load i8, i8* %352, align 1, !dbg !3764
  %354 = sext i8 %353 to i32, !dbg !3764
  %355 = add nsw i32 8, %354, !dbg !3765
  store i32 %355, i32* %15, align 4, !dbg !3766
  br label %356, !dbg !3767

; <label>:356:                                    ; preds = %346, %343, %340
  br label %357

; <label>:357:                                    ; preds = %356, %330
  br label %358

; <label>:358:                                    ; preds = %357, %315
  br label %359

; <label>:359:                                    ; preds = %358, %300
  br label %360, !dbg !3768

; <label>:360:                                    ; preds = %359, %293, %155, %147, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %105
  store i32 0, i32* %18, align 4, !dbg !3769
  %361 = load i8*, i8** %8, align 8, !dbg !3770
  %362 = load i8, i8* %361, align 1, !dbg !3772
  %363 = sext i8 %362 to i32, !dbg !3772
  %364 = icmp eq i32 %363, 109, !dbg !3773
  br i1 %364, label %365, label %386, !dbg !3774

; <label>:365:                                    ; preds = %360
  %366 = load i32*, i32** %9, align 8, !dbg !3775
  %367 = icmp ne i32* %366, null, !dbg !3778
  br i1 %367, label %368, label %371, !dbg !3779

; <label>:368:                                    ; preds = %365
  %369 = load i32, i32* %14, align 4, !dbg !3780
  %370 = load i32*, i32** %9, align 8, !dbg !3782
  store i32 %369, i32* %370, align 4, !dbg !3783
  br label %371, !dbg !3784

; <label>:371:                                    ; preds = %368, %365
  %372 = load i32*, i32** %10, align 8, !dbg !3785
  %373 = icmp ne i32* %372, null, !dbg !3787
  br i1 %373, label %374, label %377, !dbg !3788

; <label>:374:                                    ; preds = %371
  %375 = load i32, i32* %15, align 4, !dbg !3789
  %376 = load i32*, i32** %10, align 8, !dbg !3791
  store i32 %375, i32* %376, align 4, !dbg !3792
  br label %377, !dbg !3793

; <label>:377:                                    ; preds = %374, %371
  %378 = load i32*, i32** %11, align 8, !dbg !3794
  %379 = icmp ne i32* %378, null, !dbg !3796
  br i1 %379, label %380, label %383, !dbg !3797

; <label>:380:                                    ; preds = %377
  %381 = load i32, i32* %16, align 4, !dbg !3798
  %382 = load i32*, i32** %11, align 8, !dbg !3800
  store i32 %381, i32* %382, align 4, !dbg !3801
  br label %383, !dbg !3802

; <label>:383:                                    ; preds = %380, %377
  %384 = load i8*, i8** %8, align 8, !dbg !3803
  %385 = getelementptr inbounds i8, i8* %384, i32 1, !dbg !3803
  store i8* %385, i8** %8, align 8, !dbg !3803
  br label %390, !dbg !3804

; <label>:386:                                    ; preds = %360
  br label %387, !dbg !3805

; <label>:387:                                    ; preds = %386
  %388 = load i8*, i8** %8, align 8, !dbg !3806
  %389 = getelementptr inbounds i8, i8* %388, i32 1, !dbg !3806
  store i8* %389, i8** %8, align 8, !dbg !3806
  br label %64, !dbg !3808, !llvm.loop !3809

; <label>:390:                                    ; preds = %383
  %391 = load i8*, i8** %8, align 8, !dbg !3810
  store i8* %391, i8** %6, align 8, !dbg !3811
  br label %392, !dbg !3811

; <label>:392:                                    ; preds = %390, %275, %267, %227, %170, %162, %101, %87, %69, %24
  %393 = load i8*, i8** %6, align 8, !dbg !3812
  ret i8* %393, !dbg !3812
}

; Function Attrs: nounwind uwtable
define void @format_send_to_gui(%struct._TEXT_DEST_REC*, i8*) #0 !dbg !3813 {
  %3 = alloca %struct._TEXT_DEST_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.THEME_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._TEXT_DEST_REC* %0, %struct._TEXT_DEST_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC** %3, metadata !3816, metadata !721), !dbg !3817
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3818, metadata !721), !dbg !3819
  call void @llvm.dbg.declare(metadata %struct.THEME_REC** %5, metadata !3820, metadata !721), !dbg !3821
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3822, metadata !721), !dbg !3823
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3824, metadata !721), !dbg !3825
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3826, metadata !721), !dbg !3827
  call void @llvm.dbg.declare(metadata i8* %9, metadata !3828, metadata !721), !dbg !3829
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3830, metadata !721), !dbg !3831
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3832, metadata !721), !dbg !3833
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3834, metadata !721), !dbg !3835
  %13 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !3836
  %14 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %13, i32 0, i32 0, !dbg !3837
  %15 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %14, align 8, !dbg !3837
  %16 = icmp ne %struct._WINDOW_REC* %15, null, !dbg !3838
  br i1 %16, label %17, label %30, !dbg !3839

; <label>:17:                                     ; preds = %2
  %18 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !3840
  %19 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %18, i32 0, i32 0, !dbg !3842
  %20 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %19, align 8, !dbg !3842
  %21 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %20, i32 0, i32 19, !dbg !3843
  %22 = load i8*, i8** %21, align 8, !dbg !3843
  %23 = icmp ne i8* %22, null, !dbg !3844
  br i1 %23, label %24, label %30, !dbg !3845

; <label>:24:                                     ; preds = %17
  %25 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !3846
  %26 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %25, i32 0, i32 0, !dbg !3848
  %27 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %26, align 8, !dbg !3848
  %28 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %27, i32 0, i32 19, !dbg !3849
  %29 = load i8*, i8** %28, align 8, !dbg !3849
  br label %33, !dbg !3850

; <label>:30:                                     ; preds = %17, %2
  %31 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !3851
  %32 = bitcast %struct.THEME_REC* %31 to i8*, !dbg !3851
  br label %33, !dbg !3853

; <label>:33:                                     ; preds = %30, %24
  %34 = phi i8* [ %29, %24 ], [ %32, %30 ], !dbg !3854
  %35 = bitcast i8* %34 to %struct.THEME_REC*, !dbg !3856
  store %struct.THEME_REC* %35, %struct.THEME_REC** %5, align 8, !dbg !3857
  %36 = load i8*, i8** %4, align 8, !dbg !3858
  %37 = call noalias i8* @g_strdup(i8* %36), !dbg !3859
  store i8* %37, i8** %7, align 8, !dbg !3860
  store i8* %37, i8** %6, align 8, !dbg !3861
  store i32 0, i32* %12, align 4, !dbg !3862
  %38 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !3863
  %39 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %38, i32 0, i32 4, !dbg !3864
  %40 = load i32, i32* %39, align 8, !dbg !3864
  store i32 %40, i32* %10, align 4, !dbg !3865
  store i32 -1, i32* %11, align 4, !dbg !3866
  %41 = load i8*, i8** %7, align 8, !dbg !3867
  %42 = load i8, i8* %41, align 1, !dbg !3869
  %43 = sext i8 %42 to i32, !dbg !3869
  %44 = icmp eq i32 %43, 0, !dbg !3870
  br i1 %44, label %45, label %62, !dbg !3871

; <label>:45:                                     ; preds = %33
  %46 = load i32, i32* @signal_gui_print_text, align 4, !dbg !3872
  %47 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !3874
  %48 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %47, i32 0, i32 0, !dbg !3875
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %48, align 8, !dbg !3875
  %50 = load i32, i32* %10, align 4, !dbg !3876
  %51 = sext i32 %50 to i64, !dbg !3877
  %52 = inttoptr i64 %51 to i8*, !dbg !3878
  %53 = load i32, i32* %11, align 4, !dbg !3879
  %54 = sext i32 %53 to i64, !dbg !3880
  %55 = inttoptr i64 %54 to i8*, !dbg !3881
  %56 = load i32, i32* %12, align 4, !dbg !3882
  %57 = sext i32 %56 to i64, !dbg !3883
  %58 = inttoptr i64 %57 to i8*, !dbg !3884
  %59 = load i8*, i8** %7, align 8, !dbg !3885
  %60 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !3886
  %61 = call i32 (i32, i32, ...) @signal_emit_id(i32 %46, i32 6, %struct._WINDOW_REC* %49, i8* %52, i8* %55, i8* %58, i8* %59, %struct._TEXT_DEST_REC* %60), !dbg !3887
  br label %62, !dbg !3888

; <label>:62:                                     ; preds = %45, %33
  br label %63, !dbg !3889

; <label>:63:                                     ; preds = %430, %62
  %64 = load i8*, i8** %7, align 8, !dbg !3890
  %65 = load i8, i8* %64, align 1, !dbg !3891
  %66 = sext i8 %65 to i32, !dbg !3891
  %67 = icmp ne i32 %66, 0, !dbg !3892
  br i1 %67, label %68, label %432, !dbg !3893

; <label>:68:                                     ; preds = %63
  store i8 0, i8* %9, align 1, !dbg !3894
  %69 = load i8*, i8** %7, align 8, !dbg !3896
  store i8* %69, i8** %8, align 8, !dbg !3898
  br label %70, !dbg !3899

; <label>:70:                                     ; preds = %136, %68
  %71 = load i8*, i8** %8, align 8, !dbg !3900
  %72 = load i8, i8* %71, align 1, !dbg !3903
  %73 = sext i8 %72 to i32, !dbg !3903
  %74 = icmp ne i32 %73, 0, !dbg !3904
  br i1 %74, label %75, label %139, !dbg !3905

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %8, align 8, !dbg !3906
  %77 = load i8, i8* %76, align 1, !dbg !3909
  %78 = sext i8 %77 to i32, !dbg !3910
  %79 = icmp eq i32 %78, 2, !dbg !3911
  br i1 %79, label %130, label %80, !dbg !3912

; <label>:80:                                     ; preds = %75
  %81 = load i8*, i8** %8, align 8, !dbg !3913
  %82 = load i8, i8* %81, align 1, !dbg !3915
  %83 = sext i8 %82 to i32, !dbg !3916
  %84 = icmp eq i32 %83, 3, !dbg !3917
  br i1 %84, label %130, label %85, !dbg !3918

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %8, align 8, !dbg !3919
  %87 = load i8, i8* %86, align 1, !dbg !3921
  %88 = sext i8 %87 to i32, !dbg !3922
  %89 = icmp eq i32 %88, 4, !dbg !3923
  br i1 %89, label %130, label %90, !dbg !3924

; <label>:90:                                     ; preds = %85
  %91 = load i8*, i8** %8, align 8, !dbg !3925
  %92 = load i8, i8* %91, align 1, !dbg !3927
  %93 = sext i8 %92 to i32, !dbg !3928
  %94 = icmp eq i32 %93, 6, !dbg !3929
  br i1 %94, label %130, label %95, !dbg !3930

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %8, align 8, !dbg !3931
  %97 = load i8, i8* %96, align 1, !dbg !3933
  %98 = sext i8 %97 to i32, !dbg !3934
  %99 = icmp eq i32 %98, 7, !dbg !3935
  br i1 %99, label %130, label %100, !dbg !3936

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %8, align 8, !dbg !3937
  %102 = load i8, i8* %101, align 1, !dbg !3939
  %103 = sext i8 %102 to i32, !dbg !3940
  %104 = icmp eq i32 %103, 15, !dbg !3941
  br i1 %104, label %130, label %105, !dbg !3942

; <label>:105:                                    ; preds = %100
  %106 = load i8*, i8** %8, align 8, !dbg !3943
  %107 = load i8, i8* %106, align 1, !dbg !3945
  %108 = sext i8 %107 to i32, !dbg !3946
  %109 = icmp eq i32 %108, 22, !dbg !3947
  br i1 %109, label %130, label %110, !dbg !3948

; <label>:110:                                    ; preds = %105
  %111 = load i8*, i8** %8, align 8, !dbg !3949
  %112 = load i8, i8* %111, align 1, !dbg !3951
  %113 = sext i8 %112 to i32, !dbg !3952
  %114 = icmp eq i32 %113, 27, !dbg !3953
  br i1 %114, label %130, label %115, !dbg !3954

; <label>:115:                                    ; preds = %110
  %116 = load i8*, i8** %8, align 8, !dbg !3955
  %117 = load i8, i8* %116, align 1, !dbg !3957
  %118 = sext i8 %117 to i32, !dbg !3958
  %119 = icmp eq i32 %118, 29, !dbg !3959
  br i1 %119, label %130, label %120, !dbg !3960

; <label>:120:                                    ; preds = %115
  %121 = load i8*, i8** %8, align 8, !dbg !3961
  %122 = load i8, i8* %121, align 1, !dbg !3963
  %123 = sext i8 %122 to i32, !dbg !3964
  %124 = icmp eq i32 %123, 31, !dbg !3965
  br i1 %124, label %130, label %125, !dbg !3966

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %8, align 8, !dbg !3967
  %127 = load i8, i8* %126, align 1, !dbg !3969
  %128 = sext i8 %127 to i32, !dbg !3969
  %129 = icmp eq i32 %128, 10, !dbg !3970
  br i1 %129, label %130, label %135, !dbg !3971

; <label>:130:                                    ; preds = %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75
  %131 = load i8*, i8** %8, align 8, !dbg !3972
  %132 = load i8, i8* %131, align 1, !dbg !3974
  store i8 %132, i8* %9, align 1, !dbg !3975
  %133 = load i8*, i8** %8, align 8, !dbg !3976
  %134 = getelementptr inbounds i8, i8* %133, i32 1, !dbg !3976
  store i8* %134, i8** %8, align 8, !dbg !3976
  store i8 0, i8* %133, align 1, !dbg !3977
  br label %139, !dbg !3978

; <label>:135:                                    ; preds = %125
  br label %136, !dbg !3979

; <label>:136:                                    ; preds = %135
  %137 = load i8*, i8** %8, align 8, !dbg !3980
  %138 = getelementptr inbounds i8, i8* %137, i32 1, !dbg !3980
  store i8* %138, i8** %8, align 8, !dbg !3980
  br label %70, !dbg !3982, !llvm.loop !3983

; <label>:139:                                    ; preds = %130, %70
  %140 = load i8, i8* %9, align 1, !dbg !3985
  %141 = sext i8 %140 to i32, !dbg !3985
  %142 = icmp eq i32 %141, 4, !dbg !3987
  br i1 %142, label %143, label %151, !dbg !3988

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %8, align 8, !dbg !3989
  %145 = load i8, i8* %144, align 1, !dbg !3991
  %146 = sext i8 %145 to i32, !dbg !3991
  %147 = icmp eq i32 %146, 104, !dbg !3992
  br i1 %147, label %148, label %151, !dbg !3993

; <label>:148:                                    ; preds = %143
  %149 = load i32, i32* %12, align 4, !dbg !3994
  %150 = or i32 %149, 256, !dbg !3994
  store i32 %150, i32* %12, align 4, !dbg !3994
  br label %151, !dbg !3996

; <label>:151:                                    ; preds = %148, %143, %139
  %152 = load i8*, i8** %7, align 8, !dbg !3997
  %153 = load i8, i8* %152, align 1, !dbg !3999
  %154 = sext i8 %153 to i32, !dbg !3999
  %155 = icmp ne i32 %154, 0, !dbg !4000
  br i1 %155, label %160, label %156, !dbg !4001

; <label>:156:                                    ; preds = %151
  %157 = load i32, i32* %12, align 4, !dbg !4002
  %158 = and i32 %157, 256, !dbg !4004
  %159 = icmp ne i32 %158, 0, !dbg !4004
  br i1 %159, label %160, label %179, !dbg !4005

; <label>:160:                                    ; preds = %156, %151
  %161 = load i32, i32* @signal_gui_print_text, align 4, !dbg !4006
  %162 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !4008
  %163 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %162, i32 0, i32 0, !dbg !4009
  %164 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %163, align 8, !dbg !4009
  %165 = load i32, i32* %10, align 4, !dbg !4010
  %166 = sext i32 %165 to i64, !dbg !4011
  %167 = inttoptr i64 %166 to i8*, !dbg !4012
  %168 = load i32, i32* %11, align 4, !dbg !4013
  %169 = sext i32 %168 to i64, !dbg !4014
  %170 = inttoptr i64 %169 to i8*, !dbg !4015
  %171 = load i32, i32* %12, align 4, !dbg !4016
  %172 = sext i32 %171 to i64, !dbg !4017
  %173 = inttoptr i64 %172 to i8*, !dbg !4018
  %174 = load i8*, i8** %7, align 8, !dbg !4019
  %175 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !4020
  %176 = call i32 (i32, i32, ...) @signal_emit_id(i32 %161, i32 6, %struct._WINDOW_REC* %164, i8* %167, i8* %170, i8* %173, i8* %174, %struct._TEXT_DEST_REC* %175), !dbg !4021
  %177 = load i32, i32* %12, align 4, !dbg !4022
  %178 = and i32 %177, -289, !dbg !4022
  store i32 %178, i32* %12, align 4, !dbg !4022
  br label %179, !dbg !4023

; <label>:179:                                    ; preds = %160, %156
  %180 = load i8, i8* %9, align 1, !dbg !4024
  %181 = sext i8 %180 to i32, !dbg !4024
  %182 = icmp eq i32 %181, 10, !dbg !4026
  br i1 %182, label %183, label %192, !dbg !4027

; <label>:183:                                    ; preds = %179
  %184 = load %struct._TEXT_DEST_REC*, %struct._TEXT_DEST_REC** %3, align 8, !dbg !4028
  %185 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %184, i32 0, i32 0, !dbg !4030
  %186 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %185, align 8, !dbg !4030
  call void @format_newline(%struct._WINDOW_REC* %186), !dbg !4031
  %187 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !4032
  %188 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %187, i32 0, i32 4, !dbg !4033
  %189 = load i32, i32* %188, align 8, !dbg !4033
  store i32 %189, i32* %10, align 4, !dbg !4034
  store i32 -1, i32* %11, align 4, !dbg !4035
  %190 = load i32, i32* %12, align 4, !dbg !4036
  %191 = and i32 %190, 544, !dbg !4036
  store i32 %191, i32* %12, align 4, !dbg !4036
  br label %192, !dbg !4037

; <label>:192:                                    ; preds = %183, %179
  %193 = load i8*, i8** %8, align 8, !dbg !4038
  %194 = load i8, i8* %193, align 1, !dbg !4040
  %195 = sext i8 %194 to i32, !dbg !4040
  %196 = icmp eq i32 %195, 0, !dbg !4041
  br i1 %196, label %197, label %198, !dbg !4042

; <label>:197:                                    ; preds = %192
  br label %432, !dbg !4043

; <label>:198:                                    ; preds = %192
  %199 = load i8, i8* %9, align 1, !dbg !4044
  %200 = sext i8 %199 to i32, !dbg !4044
  switch i32 %200, label %430 [
    i32 2, label %201
    i32 3, label %208
    i32 4, label %227
    i32 6, label %374
    i32 15, label %381
    i32 22, label %387
    i32 29, label %394
    i32 31, label %401
    i32 27, label %408
  ], !dbg !4045

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* @hide_text_style, align 4, !dbg !4046
  %203 = icmp ne i32 %202, 0, !dbg !4046
  br i1 %203, label %207, label %204, !dbg !4049

; <label>:204:                                    ; preds = %201
  %205 = load i32, i32* %12, align 4, !dbg !4050
  %206 = xor i32 %205, 1, !dbg !4050
  store i32 %206, i32* %12, align 4, !dbg !4050
  br label %207, !dbg !4051

; <label>:207:                                    ; preds = %204, %201
  br label %430, !dbg !4052

; <label>:208:                                    ; preds = %198
  %209 = load i32, i32* @hide_colors, align 4, !dbg !4053
  %210 = icmp ne i32 %209, 0, !dbg !4053
  br i1 %210, label %211, label %212, !dbg !4053

; <label>:211:                                    ; preds = %208
  br label %213, !dbg !4054

; <label>:212:                                    ; preds = %208
  br label %213, !dbg !4056

; <label>:213:                                    ; preds = %212, %211
  %214 = phi i32* [ null, %211 ], [ %10, %212 ], !dbg !4058
  %215 = load i32, i32* @hide_colors, align 4, !dbg !4060
  %216 = icmp ne i32 %215, 0, !dbg !4060
  br i1 %216, label %217, label %218, !dbg !4060

; <label>:217:                                    ; preds = %213
  br label %219, !dbg !4061

; <label>:218:                                    ; preds = %213
  br label %219, !dbg !4062

; <label>:219:                                    ; preds = %218, %217
  %220 = phi i32* [ null, %217 ], [ %11, %218 ], !dbg !4063
  call void @get_mirc_color(i8** %8, i32* %214, i32* %220), !dbg !4064
  %221 = load i32, i32* @hide_colors, align 4, !dbg !4065
  %222 = icmp ne i32 %221, 0, !dbg !4065
  br i1 %222, label %226, label %223, !dbg !4067

; <label>:223:                                    ; preds = %219
  %224 = load i32, i32* %12, align 4, !dbg !4068
  %225 = or i32 %224, 16, !dbg !4068
  store i32 %225, i32* %12, align 4, !dbg !4068
  br label %226, !dbg !4069

; <label>:226:                                    ; preds = %223, %219
  br label %430, !dbg !4070

; <label>:227:                                    ; preds = %198
  %228 = load i32, i32* %12, align 4, !dbg !4071
  %229 = and i32 %228, -17, !dbg !4071
  store i32 %229, i32* %12, align 4, !dbg !4071
  %230 = load i8*, i8** %8, align 8, !dbg !4072
  %231 = load i8, i8* %230, align 1, !dbg !4073
  %232 = sext i8 %231 to i32, !dbg !4073
  switch i32 %232, label %315 [
    i32 97, label %233
    i32 98, label %236
    i32 99, label %239
    i32 100, label %242
    i32 102, label %245
    i32 105, label %248
    i32 101, label %251
    i32 103, label %254
    i32 104, label %260
    i32 46, label %261
    i32 43, label %270
    i32 45, label %279
    i32 39, label %288
    i32 44, label %297
    i32 38, label %306
  ], !dbg !4074

; <label>:233:                                    ; preds = %227
  %234 = load i32, i32* %12, align 4, !dbg !4075
  %235 = xor i32 %234, 8, !dbg !4075
  store i32 %235, i32* %12, align 4, !dbg !4075
  br label %365, !dbg !4077

; <label>:236:                                    ; preds = %227
  %237 = load i32, i32* %12, align 4, !dbg !4078
  %238 = xor i32 %237, 4, !dbg !4078
  store i32 %238, i32* %12, align 4, !dbg !4078
  br label %365, !dbg !4079

; <label>:239:                                    ; preds = %227
  %240 = load i32, i32* %12, align 4, !dbg !4080
  %241 = xor i32 %240, 1, !dbg !4080
  store i32 %241, i32* %12, align 4, !dbg !4080
  br label %365, !dbg !4081

; <label>:242:                                    ; preds = %227
  %243 = load i32, i32* %12, align 4, !dbg !4082
  %244 = xor i32 %243, 2, !dbg !4082
  store i32 %244, i32* %12, align 4, !dbg !4082
  br label %365, !dbg !4083

; <label>:245:                                    ; preds = %227
  %246 = load i32, i32* %12, align 4, !dbg !4084
  %247 = xor i32 %246, 64, !dbg !4084
  store i32 %247, i32* %12, align 4, !dbg !4084
  br label %365, !dbg !4085

; <label>:248:                                    ; preds = %227
  %249 = load i32, i32* %12, align 4, !dbg !4086
  %250 = xor i32 %249, 512, !dbg !4086
  store i32 %250, i32* %12, align 4, !dbg !4086
  br label %365, !dbg !4087

; <label>:251:                                    ; preds = %227
  %252 = load i32, i32* %12, align 4, !dbg !4088
  %253 = or i32 %252, 32, !dbg !4088
  store i32 %253, i32* %12, align 4, !dbg !4088
  br label %365, !dbg !4089

; <label>:254:                                    ; preds = %227
  %255 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !4090
  %256 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %255, i32 0, i32 4, !dbg !4091
  %257 = load i32, i32* %256, align 8, !dbg !4091
  store i32 %257, i32* %10, align 4, !dbg !4092
  store i32 -1, i32* %11, align 4, !dbg !4093
  %258 = load i32, i32* %12, align 4, !dbg !4094
  %259 = and i32 %258, 544, !dbg !4094
  store i32 %259, i32* %12, align 4, !dbg !4094
  br label %365, !dbg !4095

; <label>:260:                                    ; preds = %227
  br label %365, !dbg !4096

; <label>:261:                                    ; preds = %227
  %262 = load i8*, i8** %8, align 8, !dbg !4097
  %263 = getelementptr inbounds i8, i8* %262, i32 1, !dbg !4097
  store i8* %263, i8** %8, align 8, !dbg !4097
  %264 = load i8, i8* %263, align 1, !dbg !4098
  %265 = sext i8 %264 to i32, !dbg !4098
  %266 = add nsw i32 16, %265, !dbg !4099
  %267 = sub nsw i32 %266, 47, !dbg !4100
  store i32 %267, i32* %10, align 4, !dbg !4101
  %268 = load i32, i32* %12, align 4, !dbg !4102
  %269 = and i32 %268, -1025, !dbg !4102
  store i32 %269, i32* %12, align 4, !dbg !4102
  br label %365, !dbg !4103

; <label>:270:                                    ; preds = %227
  %271 = load i8*, i8** %8, align 8, !dbg !4104
  %272 = getelementptr inbounds i8, i8* %271, i32 1, !dbg !4104
  store i8* %272, i8** %8, align 8, !dbg !4104
  %273 = load i8, i8* %272, align 1, !dbg !4105
  %274 = sext i8 %273 to i32, !dbg !4105
  %275 = add nsw i32 16, %274, !dbg !4106
  %276 = sub nsw i32 %275, 47, !dbg !4107
  store i32 %276, i32* %11, align 4, !dbg !4108
  %277 = load i32, i32* %12, align 4, !dbg !4109
  %278 = and i32 %277, -2049, !dbg !4109
  store i32 %278, i32* %12, align 4, !dbg !4109
  br label %365, !dbg !4110

; <label>:279:                                    ; preds = %227
  %280 = load i8*, i8** %8, align 8, !dbg !4111
  %281 = getelementptr inbounds i8, i8* %280, i32 1, !dbg !4111
  store i8* %281, i8** %8, align 8, !dbg !4111
  %282 = load i8, i8* %281, align 1, !dbg !4112
  %283 = sext i8 %282 to i32, !dbg !4112
  %284 = add nsw i32 96, %283, !dbg !4113
  %285 = sub nsw i32 %284, 47, !dbg !4114
  store i32 %285, i32* %10, align 4, !dbg !4115
  %286 = load i32, i32* %12, align 4, !dbg !4116
  %287 = and i32 %286, -1025, !dbg !4116
  store i32 %287, i32* %12, align 4, !dbg !4116
  br label %365, !dbg !4117

; <label>:288:                                    ; preds = %227
  %289 = load i8*, i8** %8, align 8, !dbg !4118
  %290 = getelementptr inbounds i8, i8* %289, i32 1, !dbg !4118
  store i8* %290, i8** %8, align 8, !dbg !4118
  %291 = load i8, i8* %290, align 1, !dbg !4119
  %292 = sext i8 %291 to i32, !dbg !4119
  %293 = add nsw i32 96, %292, !dbg !4120
  %294 = sub nsw i32 %293, 47, !dbg !4121
  store i32 %294, i32* %11, align 4, !dbg !4122
  %295 = load i32, i32* %12, align 4, !dbg !4123
  %296 = and i32 %295, -2049, !dbg !4123
  store i32 %296, i32* %12, align 4, !dbg !4123
  br label %365, !dbg !4124

; <label>:297:                                    ; preds = %227
  %298 = load i8*, i8** %8, align 8, !dbg !4125
  %299 = getelementptr inbounds i8, i8* %298, i32 1, !dbg !4125
  store i8* %299, i8** %8, align 8, !dbg !4125
  %300 = load i8, i8* %299, align 1, !dbg !4126
  %301 = sext i8 %300 to i32, !dbg !4126
  %302 = add nsw i32 176, %301, !dbg !4127
  %303 = sub nsw i32 %302, 47, !dbg !4128
  store i32 %303, i32* %10, align 4, !dbg !4129
  %304 = load i32, i32* %12, align 4, !dbg !4130
  %305 = and i32 %304, -1025, !dbg !4130
  store i32 %305, i32* %12, align 4, !dbg !4130
  br label %365, !dbg !4131

; <label>:306:                                    ; preds = %227
  %307 = load i8*, i8** %8, align 8, !dbg !4132
  %308 = getelementptr inbounds i8, i8* %307, i32 1, !dbg !4132
  store i8* %308, i8** %8, align 8, !dbg !4132
  %309 = load i8, i8* %308, align 1, !dbg !4133
  %310 = sext i8 %309 to i32, !dbg !4133
  %311 = add nsw i32 176, %310, !dbg !4134
  %312 = sub nsw i32 %311, 47, !dbg !4135
  store i32 %312, i32* %11, align 4, !dbg !4136
  %313 = load i32, i32* %12, align 4, !dbg !4137
  %314 = and i32 %313, -2049, !dbg !4137
  store i32 %314, i32* %12, align 4, !dbg !4137
  br label %365, !dbg !4138

; <label>:315:                                    ; preds = %227
  %316 = load i8*, i8** %8, align 8, !dbg !4139
  %317 = load i8, i8* %316, align 1, !dbg !4141
  %318 = sext i8 %317 to i32, !dbg !4141
  %319 = icmp ne i32 %318, 47, !dbg !4142
  br i1 %319, label %320, label %335, !dbg !4143

; <label>:320:                                    ; preds = %315
  %321 = load i32, i32* %12, align 4, !dbg !4144
  %322 = and i32 %321, -1025, !dbg !4144
  store i32 %322, i32* %12, align 4, !dbg !4144
  %323 = load i8*, i8** %8, align 8, !dbg !4146
  %324 = load i8, i8* %323, align 1, !dbg !4147
  %325 = sext i8 %324 to i32, !dbg !4147
  %326 = icmp eq i32 %325, -1, !dbg !4148
  br i1 %326, label %327, label %328, !dbg !4147

; <label>:327:                                    ; preds = %320
  br label %333, !dbg !4149

; <label>:328:                                    ; preds = %320
  %329 = load i8*, i8** %8, align 8, !dbg !4151
  %330 = load i8, i8* %329, align 1, !dbg !4153
  %331 = zext i8 %330 to i32, !dbg !4154
  %332 = sub nsw i32 %331, 48, !dbg !4155
  br label %333, !dbg !4156

; <label>:333:                                    ; preds = %328, %327
  %334 = phi i32 [ -1, %327 ], [ %332, %328 ], !dbg !4157
  store i32 %334, i32* %10, align 4, !dbg !4159
  br label %335, !dbg !4160

; <label>:335:                                    ; preds = %333, %315
  %336 = load i8*, i8** %8, align 8, !dbg !4161
  %337 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !4161
  %338 = load i8, i8* %337, align 1, !dbg !4161
  %339 = sext i8 %338 to i32, !dbg !4161
  %340 = icmp eq i32 %339, 0, !dbg !4163
  br i1 %340, label %341, label %342, !dbg !4164

; <label>:341:                                    ; preds = %335
  br label %365, !dbg !4165

; <label>:342:                                    ; preds = %335
  %343 = load i8*, i8** %8, align 8, !dbg !4166
  %344 = getelementptr inbounds i8, i8* %343, i32 1, !dbg !4166
  store i8* %344, i8** %8, align 8, !dbg !4166
  %345 = load i8*, i8** %8, align 8, !dbg !4167
  %346 = load i8, i8* %345, align 1, !dbg !4169
  %347 = sext i8 %346 to i32, !dbg !4169
  %348 = icmp ne i32 %347, 47, !dbg !4170
  br i1 %348, label %349, label %364, !dbg !4171

; <label>:349:                                    ; preds = %342
  %350 = load i32, i32* %12, align 4, !dbg !4172
  %351 = and i32 %350, -2049, !dbg !4172
  store i32 %351, i32* %12, align 4, !dbg !4172
  %352 = load i8*, i8** %8, align 8, !dbg !4174
  %353 = load i8, i8* %352, align 1, !dbg !4175
  %354 = sext i8 %353 to i32, !dbg !4175
  %355 = icmp eq i32 %354, -1, !dbg !4176
  br i1 %355, label %356, label %357, !dbg !4175

; <label>:356:                                    ; preds = %349
  br label %362, !dbg !4177

; <label>:357:                                    ; preds = %349
  %358 = load i8*, i8** %8, align 8, !dbg !4179
  %359 = load i8, i8* %358, align 1, !dbg !4181
  %360 = sext i8 %359 to i32, !dbg !4181
  %361 = sub nsw i32 %360, 48, !dbg !4182
  br label %362, !dbg !4183

; <label>:362:                                    ; preds = %357, %356
  %363 = phi i32 [ -1, %356 ], [ %361, %357 ], !dbg !4184
  store i32 %363, i32* %11, align 4, !dbg !4186
  br label %364, !dbg !4187

; <label>:364:                                    ; preds = %362, %342
  br label %365, !dbg !4188

; <label>:365:                                    ; preds = %364, %341, %306, %297, %288, %279, %270, %261, %260, %254, %251, %248, %245, %242, %239, %236, %233
  %366 = load i8*, i8** %8, align 8, !dbg !4189
  %367 = load i8, i8* %366, align 1, !dbg !4191
  %368 = sext i8 %367 to i32, !dbg !4191
  %369 = icmp eq i32 %368, 0, !dbg !4192
  br i1 %369, label %370, label %371, !dbg !4193

; <label>:370:                                    ; preds = %365
  br label %430, !dbg !4194

; <label>:371:                                    ; preds = %365
  %372 = load i8*, i8** %8, align 8, !dbg !4195
  %373 = getelementptr inbounds i8, i8* %372, i32 1, !dbg !4195
  store i8* %373, i8** %8, align 8, !dbg !4195
  br label %430, !dbg !4196

; <label>:374:                                    ; preds = %198
  %375 = load i32, i32* @hide_text_style, align 4, !dbg !4197
  %376 = icmp ne i32 %375, 0, !dbg !4197
  br i1 %376, label %380, label %377, !dbg !4199

; <label>:377:                                    ; preds = %374
  %378 = load i32, i32* %12, align 4, !dbg !4200
  %379 = xor i32 %378, 8, !dbg !4200
  store i32 %379, i32* %12, align 4, !dbg !4200
  br label %380, !dbg !4201

; <label>:380:                                    ; preds = %377, %374
  br label %430, !dbg !4202

; <label>:381:                                    ; preds = %198
  %382 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !4203
  %383 = getelementptr inbounds %struct.THEME_REC, %struct.THEME_REC* %382, i32 0, i32 4, !dbg !4204
  %384 = load i32, i32* %383, align 8, !dbg !4204
  store i32 %384, i32* %10, align 4, !dbg !4205
  store i32 -1, i32* %11, align 4, !dbg !4206
  %385 = load i32, i32* %12, align 4, !dbg !4207
  %386 = and i32 %385, 544, !dbg !4207
  store i32 %386, i32* %12, align 4, !dbg !4207
  br label %430, !dbg !4208

; <label>:387:                                    ; preds = %198
  %388 = load i32, i32* @hide_text_style, align 4, !dbg !4209
  %389 = icmp ne i32 %388, 0, !dbg !4209
  br i1 %389, label %393, label %390, !dbg !4211

; <label>:390:                                    ; preds = %387
  %391 = load i32, i32* %12, align 4, !dbg !4212
  %392 = xor i32 %391, 2, !dbg !4212
  store i32 %392, i32* %12, align 4, !dbg !4212
  br label %393, !dbg !4213

; <label>:393:                                    ; preds = %390, %387
  br label %430, !dbg !4214

; <label>:394:                                    ; preds = %198
  %395 = load i32, i32* @hide_text_style, align 4, !dbg !4215
  %396 = icmp ne i32 %395, 0, !dbg !4215
  br i1 %396, label %400, label %397, !dbg !4217

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %12, align 4, !dbg !4218
  %399 = xor i32 %398, 64, !dbg !4218
  store i32 %399, i32* %12, align 4, !dbg !4218
  br label %400, !dbg !4219

; <label>:400:                                    ; preds = %397, %394
  br label %430, !dbg !4220

; <label>:401:                                    ; preds = %198
  %402 = load i32, i32* @hide_text_style, align 4, !dbg !4221
  %403 = icmp ne i32 %402, 0, !dbg !4221
  br i1 %403, label %407, label %404, !dbg !4223

; <label>:404:                                    ; preds = %401
  %405 = load i32, i32* %12, align 4, !dbg !4224
  %406 = xor i32 %405, 4, !dbg !4224
  store i32 %406, i32* %12, align 4, !dbg !4224
  br label %407, !dbg !4225

; <label>:407:                                    ; preds = %404, %401
  br label %430, !dbg !4226

; <label>:408:                                    ; preds = %198
  %409 = load %struct.THEME_REC*, %struct.THEME_REC** %5, align 8, !dbg !4227
  %410 = load i8*, i8** %8, align 8, !dbg !4228
  %411 = load i32, i32* @hide_colors, align 4, !dbg !4229
  %412 = icmp ne i32 %411, 0, !dbg !4229
  br i1 %412, label %413, label %414, !dbg !4229

; <label>:413:                                    ; preds = %408
  br label %415, !dbg !4230

; <label>:414:                                    ; preds = %408
  br label %415, !dbg !4231

; <label>:415:                                    ; preds = %414, %413
  %416 = phi i32* [ null, %413 ], [ %10, %414 ], !dbg !4232
  %417 = load i32, i32* @hide_colors, align 4, !dbg !4233
  %418 = icmp ne i32 %417, 0, !dbg !4233
  br i1 %418, label %419, label %420, !dbg !4233

; <label>:419:                                    ; preds = %415
  br label %421, !dbg !4234

; <label>:420:                                    ; preds = %415
  br label %421, !dbg !4235

; <label>:421:                                    ; preds = %420, %419
  %422 = phi i32* [ null, %419 ], [ %11, %420 ], !dbg !4236
  %423 = load i32, i32* @hide_colors, align 4, !dbg !4237
  %424 = icmp ne i32 %423, 0, !dbg !4237
  br i1 %424, label %425, label %426, !dbg !4237

; <label>:425:                                    ; preds = %421
  br label %427, !dbg !4238

; <label>:426:                                    ; preds = %421
  br label %427, !dbg !4239

; <label>:427:                                    ; preds = %426, %425
  %428 = phi i32* [ null, %425 ], [ %12, %426 ], !dbg !4240
  %429 = call i8* @get_ansi_color(%struct.THEME_REC* %409, i8* %410, i32* %416, i32* %422, i32* %428), !dbg !4241
  store i8* %429, i8** %8, align 8, !dbg !4242
  br label %430, !dbg !4243

; <label>:430:                                    ; preds = %198, %427, %407, %400, %393, %381, %380, %371, %370, %226, %207
  %431 = load i8*, i8** %8, align 8, !dbg !4244
  store i8* %431, i8** %7, align 8, !dbg !4245
  br label %63, !dbg !4246, !llvm.loop !4247

; <label>:432:                                    ; preds = %197, %63
  %433 = load i8*, i8** %6, align 8, !dbg !4248
  call void @g_free(i8* %433), !dbg !4249
  ret void, !dbg !4250
}

; Function Attrs: nounwind uwtable
define void @formats_init() #0 !dbg !4251 {
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0)), !dbg !4252
  store i32 %1, i32* @signal_gui_print_text, align 4, !dbg !4253
  call void @read_settings(), !dbg !4254
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4255
  ret void, !dbg !4256
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !4257 {
  %1 = call i32 @settings_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0)), !dbg !4258
  %2 = icmp ne i32 %1, 0, !dbg !4258
  %3 = select i1 %2, i32 4194303, i32 0, !dbg !4258
  store i32 %3, i32* @timestamp_level, align 4, !dbg !4259
  %4 = load i32, i32* @timestamp_level, align 4, !dbg !4260
  %5 = icmp sgt i32 %4, 0, !dbg !4262
  br i1 %5, label %6, label %8, !dbg !4263

; <label>:6:                                      ; preds = %0
  %7 = call i32 @settings_get_level(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)), !dbg !4264
  store i32 %7, i32* @timestamp_level, align 4, !dbg !4265
  br label %8, !dbg !4266

; <label>:8:                                      ; preds = %6, %0
  %9 = call i32 @settings_get_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0)), !dbg !4267
  %10 = sdiv i32 %9, 1000, !dbg !4268
  store i32 %10, i32* @timestamp_timeout, align 4, !dbg !4269
  %11 = call i32 @settings_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0)), !dbg !4270
  store i32 %11, i32* @hide_server_tags, align 4, !dbg !4271
  %12 = call i32 @settings_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0)), !dbg !4272
  store i32 %12, i32* @hide_text_style, align 4, !dbg !4273
  %13 = load i32, i32* @hide_text_style, align 4, !dbg !4274
  %14 = icmp ne i32 %13, 0, !dbg !4274
  br i1 %14, label %18, label %15, !dbg !4275

; <label>:15:                                     ; preds = %8
  %16 = call i32 @settings_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)), !dbg !4276
  %17 = icmp ne i32 %16, 0, !dbg !4278
  br label %18, !dbg !4278

; <label>:18:                                     ; preds = %15, %8
  %19 = phi i1 [ true, %8 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32, !dbg !4279
  store i32 %20, i32* @hide_colors, align 4, !dbg !4281
  ret void, !dbg !4282
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @formats_deinit() #0 !dbg !4283 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4284
  ret void, !dbg !4285
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare i8* @parse_special(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #2

declare %struct._WI_ITEM_REC* @window_item_find(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #8

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #8

declare i32 @parse_uint(i8*, i8**, i32, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @color_24bit_256_int(i32) #3 !dbg !4286 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4289, metadata !721), !dbg !4290
  call void @llvm.dbg.declare(metadata [3 x i8]* %3, metadata !4291, metadata !721), !dbg !4292
  %4 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0, !dbg !4293
  %5 = load i32, i32* %2, align 4, !dbg !4294
  %6 = lshr i32 %5, 16, !dbg !4295
  %7 = trunc i32 %6 to i8, !dbg !4294
  store i8 %7, i8* %4, align 1, !dbg !4293
  %8 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !4293
  %9 = load i32, i32* %2, align 4, !dbg !4296
  %10 = lshr i32 %9, 8, !dbg !4297
  %11 = trunc i32 %10 to i8, !dbg !4296
  store i8 %11, i8* %8, align 1, !dbg !4293
  %12 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4293
  %13 = load i32, i32* %2, align 4, !dbg !4298
  %14 = trunc i32 %13 to i8, !dbg !4298
  store i8 %14, i8* %12, align 1, !dbg !4293
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i32 0, i32 0, !dbg !4299
  %16 = call signext i16 @color_24bit_256(i8* %15), !dbg !4300
  %17 = sext i16 %16 to i32, !dbg !4300
  ret i32 %17, !dbg !4301
}

declare i32 @settings_get_bool(i8*) #2

declare i32 @settings_get_level(i8*) #2

declare i32 @settings_get_time(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!716, !717}
!llvm.ident = !{!718}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !323, globals: !677)
!1 = !DIFile(filename: "line246-formats.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !18, !25, !30, !39, !50, !292}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 69, size: 32, align: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!22 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!23 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!24 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 77, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!28 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!29 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 31, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "G_IO_IN", value: 1)
!34 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!35 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!36 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!37 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!38 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 84, size: 32, align: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49}
!41 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!42 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!43 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!44 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!45 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!46 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!47 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!48 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!49 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 3, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!53 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!54 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!55 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!56 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!57 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!58 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!59 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!60 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!61 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!62 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!63 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!64 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!65 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!66 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!67 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!68 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!69 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!70 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!71 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!72 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!73 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!74 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!77 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!78 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!79 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!80 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!81 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!82 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!83 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!84 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!85 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!86 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!87 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!88 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!89 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!90 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!93 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!94 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!95 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!96 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!97 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!98 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!99 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!100 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!101 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!102 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!103 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!104 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!105 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!106 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!107 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!108 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!109 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!110 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!111 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!112 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!113 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!114 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!115 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!116 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!117 = !DIEnumerator(name: "TXT_PART", value: 64)
!118 = !DIEnumerator(name: "TXT_KICK", value: 65)
!119 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!120 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!121 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!122 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!123 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!124 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!125 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!126 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!127 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!128 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!129 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!130 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!131 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!132 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!133 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!134 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!135 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!136 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!137 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!138 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!139 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!140 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!141 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!142 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!143 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!144 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!145 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!146 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!147 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!148 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!149 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!150 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!151 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!152 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!153 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!154 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!155 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!156 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!157 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!158 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!159 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!160 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!161 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!162 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!163 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!164 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!165 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!166 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!167 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!168 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!169 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!170 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!171 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!172 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!173 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!174 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!175 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!176 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!177 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!178 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!179 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!180 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!181 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!182 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!183 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!184 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!185 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!186 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!187 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!188 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!189 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!190 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!191 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!192 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!193 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!194 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!195 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!196 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!197 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!198 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!199 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!200 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!201 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!202 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!203 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!204 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!205 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!206 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!207 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!208 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!209 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!210 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!211 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!212 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!213 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!214 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!215 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!216 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!217 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!218 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!219 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!220 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!221 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!222 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!223 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!224 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!225 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!226 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!227 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!228 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!229 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!230 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!231 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!232 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!233 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!234 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!235 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!236 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!237 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!238 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!239 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!240 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!241 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!242 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!243 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!244 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!245 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!246 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!247 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!248 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!249 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!250 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!251 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!252 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!253 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!254 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!255 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!256 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!257 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!258 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!259 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!260 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!261 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!262 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!263 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!264 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!265 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!266 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!267 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!268 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!269 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!270 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!271 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!272 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!273 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!274 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!275 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!276 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!277 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!278 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!279 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!280 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!281 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!282 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!283 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!284 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!285 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!286 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!287 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!288 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!289 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!290 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!291 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !293, line: 10, size: 32, align: 32, elements: !294)
!293 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!295 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!296 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!297 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!298 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!299 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!300 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!301 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!302 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!303 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!304 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!305 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!306 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!307 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!308 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!309 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!310 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!311 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!312 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!313 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!314 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!315 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!316 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!317 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!318 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!319 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!320 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!321 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!322 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!323 = !{!324, !325, !326, !327, !328, !331, !333, !334, !335, !336, !441, !618, !668, !669, !670, !648}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!325 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!326 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!327 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !330, line: 46, baseType: !327)
!330 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!334 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!335 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !338, line: 107, baseType: !339)
!338 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !340, line: 30, size: 2240, align: 64, elements: !341)
!340 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !{!342, !344, !345, !346, !573, !578, !579, !580, !581, !582, !583, !584, !585, !586, !590, !591, !595, !596, !597, !601, !606, !607, !608, !609, !610, !611, !612, !613, !620, !621, !622, !623, !624, !628, !632, !636, !640, !644, !649, !656, !663, !667}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !339, file: !343, line: 3, baseType: !325, size: 32, align: 32)
!343 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !339, file: !343, line: 4, baseType: !325, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !339, file: !343, line: 6, baseType: !325, size: 32, align: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !339, file: !343, line: 8, baseType: !347, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !338, line: 113, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !340, line: 25, size: 1920, align: 64, elements: !350)
!350 = !{!351, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !352, line: 3, baseType: !325, size: 32, align: 32)
!352 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !349, file: !352, line: 4, baseType: !325, size: 32, align: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !349, file: !352, line: 6, baseType: !325, size: 32, align: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !349, file: !352, line: 9, baseType: !333, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !349, file: !352, line: 10, baseType: !325, size: 32, align: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !349, file: !352, line: 11, baseType: !333, size: 64, align: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !349, file: !352, line: 11, baseType: !333, size: 64, align: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !349, file: !352, line: 11, baseType: !333, size: 64, align: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !349, file: !352, line: 13, baseType: !326, size: 16, align: 16, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !349, file: !352, line: 14, baseType: !333, size: 64, align: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !349, file: !352, line: 15, baseType: !333, size: 64, align: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !349, file: !352, line: 16, baseType: !325, size: 32, align: 32, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !349, file: !352, line: 17, baseType: !333, size: 64, align: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !349, file: !352, line: 19, baseType: !366, size: 64, align: 64, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !338, line: 99, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !338, line: 99, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !349, file: !352, line: 19, baseType: !366, size: 64, align: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !349, file: !352, line: 21, baseType: !333, size: 64, align: 64, offset: 896)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !349, file: !352, line: 22, baseType: !333, size: 64, align: 64, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !349, file: !352, line: 23, baseType: !333, size: 64, align: 64, offset: 1024)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !349, file: !352, line: 24, baseType: !333, size: 64, align: 64, offset: 1088)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !349, file: !352, line: 26, baseType: !333, size: 64, align: 64, offset: 1152)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !349, file: !352, line: 27, baseType: !333, size: 64, align: 64, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !349, file: !352, line: 28, baseType: !333, size: 64, align: 64, offset: 1280)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !349, file: !352, line: 29, baseType: !333, size: 64, align: 64, offset: 1344)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !349, file: !352, line: 30, baseType: !333, size: 64, align: 64, offset: 1408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !349, file: !352, line: 31, baseType: !333, size: 64, align: 64, offset: 1472)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !349, file: !352, line: 32, baseType: !333, size: 64, align: 64, offset: 1536)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !349, file: !352, line: 33, baseType: !333, size: 64, align: 64, offset: 1600)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !349, file: !352, line: 35, baseType: !383, size: 64, align: 64, offset: 1664)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !19, line: 41, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !19, line: 97, size: 896, align: 64, elements: !386)
!386 = !{!387, !389, !530, !531, !536, !537, !538, !539, !540, !549, !550, !551, !555, !556, !557, !558, !559, !560, !561, !562}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !385, file: !19, line: 100, baseType: !388, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !330, line: 49, baseType: !325)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !385, file: !19, line: 101, baseType: !390, size: 64, align: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !19, line: 42, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !19, line: 131, size: 512, align: 64, elements: !393)
!393 = !{!394, !416, !422, !428, !432, !517, !521, !526}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !392, file: !19, line: 133, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !383, !328, !399, !402, !403}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !19, line: 75, baseType: !18)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !400, line: 66, baseType: !401)
!400 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!401 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !406, line: 42, baseType: !407)
!406 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !406, line: 44, size: 128, align: 64, elements: !408)
!408 = !{!409, !414, !415}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !407, file: !406, line: 46, baseType: !410, size: 32, align: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !411, line: 36, baseType: !412)
!411 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !400, line: 45, baseType: !413)
!413 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !407, file: !406, line: 47, baseType: !388, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !407, file: !406, line: 48, baseType: !328, size: 64, align: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !392, file: !19, line: 138, baseType: !417, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!398, !383, !420, !399, !402, !403}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !392, file: !19, line: 143, baseType: !423, size: 64, align: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!398, !383, !426, !427, !403}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !400, line: 51, baseType: !334)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !19, line: 82, baseType: !25)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !392, file: !19, line: 147, baseType: !429, size: 64, align: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!398, !383, !403}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !392, file: !19, line: 149, baseType: !433, size: 64, align: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !383, !516}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !31, line: 64, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !31, line: 171, size: 768, align: 64, elements: !439)
!439 = !{!440, !442, !463, !492, !494, !498, !499, !500, !501, !509, !510, !511, !512}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !438, file: !31, line: 174, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !330, line: 77, baseType: !324)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !438, file: !31, line: 175, baseType: !443, size: 64, align: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !31, line: 77, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !31, line: 196, size: 192, align: 64, elements: !446)
!446 = !{!447, !451, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !445, file: !31, line: 198, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !441}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !445, file: !31, line: 199, baseType: !448, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !445, file: !31, line: 200, baseType: !453, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !441, !436, !456, !462}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !31, line: 155, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !441}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !330, line: 50, baseType: !388)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !438, file: !31, line: 177, baseType: !464, size: 64, align: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !31, line: 130, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !31, line: 214, size: 384, align: 64, elements: !468)
!468 = !{!469, !474, !478, !482, !486, !487}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !467, file: !31, line: 216, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!461, !436, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !467, file: !31, line: 218, baseType: !475, size: 64, align: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!461, !436}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !467, file: !31, line: 219, baseType: !479, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!461, !436, !457, !441}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !467, file: !31, line: 222, baseType: !483, size: 64, align: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !436}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !467, file: !31, line: 226, baseType: !457, size: 64, align: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !467, file: !31, line: 227, baseType: !488, size: 64, align: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !31, line: 212, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !438, file: !31, line: 178, baseType: !493, size: 32, align: 32, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !330, line: 55, baseType: !413)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !438, file: !31, line: 180, baseType: !495, size: 64, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !31, line: 48, baseType: !497)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !31, line: 48, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !438, file: !31, line: 182, baseType: !388, size: 32, align: 32, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !31, line: 183, baseType: !493, size: 32, align: 32, offset: 352)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !438, file: !31, line: 184, baseType: !493, size: 32, align: 32, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !438, file: !31, line: 186, baseType: !502, size: 64, align: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !504, line: 37, baseType: !505)
!504 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !504, line: 39, size: 128, align: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !505, file: !504, line: 41, baseType: !441, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !504, line: 42, baseType: !502, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !31, line: 188, baseType: !436, size: 64, align: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !31, line: 189, baseType: !436, size: 64, align: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !438, file: !31, line: 191, baseType: !333, size: 64, align: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !438, file: !31, line: 193, baseType: !513, size: 64, align: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !31, line: 65, baseType: !515)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !31, line: 65, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !31, line: 39, baseType: !30)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !392, file: !19, line: 151, baseType: !518, size: 64, align: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !383}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !392, file: !19, line: 152, baseType: !522, size: 64, align: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!398, !383, !525, !403}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !19, line: 95, baseType: !39)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !392, file: !19, line: 155, baseType: !527, size: 64, align: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!525, !383}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !385, file: !19, line: 103, baseType: !328, size: 64, align: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !385, file: !19, line: 104, baseType: !532, size: 64, align: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !533, line: 77, baseType: !534)
!533 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !533, line: 77, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !385, file: !19, line: 105, baseType: !532, size: 64, align: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !385, file: !19, line: 106, baseType: !328, size: 64, align: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !385, file: !19, line: 107, baseType: !493, size: 32, align: 32, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !385, file: !19, line: 109, baseType: !399, size: 64, align: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !385, file: !19, line: 110, baseType: !541, size: 64, align: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !543, line: 39, baseType: !544)
!543 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !543, line: 41, size: 192, align: 64, elements: !545)
!545 = !{!546, !547, !548}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !544, file: !543, line: 43, baseType: !328, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !544, file: !543, line: 44, baseType: !399, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !544, file: !543, line: 45, baseType: !399, size: 64, align: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !385, file: !19, line: 111, baseType: !541, size: 64, align: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !385, file: !19, line: 112, baseType: !541, size: 64, align: 64, offset: 640)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !385, file: !19, line: 113, baseType: !552, size: 48, align: 8, offset: 704)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 48, align: 8, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 6)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !385, file: !19, line: 117, baseType: !493, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !385, file: !19, line: 118, baseType: !493, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !385, file: !19, line: 119, baseType: !493, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !385, file: !19, line: 120, baseType: !493, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !385, file: !19, line: 121, baseType: !493, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !385, file: !19, line: 122, baseType: !493, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !385, file: !19, line: 124, baseType: !441, size: 64, align: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !385, file: !19, line: 125, baseType: !441, size: 64, align: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !349, file: !352, line: 38, baseType: !413, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !349, file: !352, line: 39, baseType: !413, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !349, file: !352, line: 40, baseType: !413, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !349, file: !352, line: 41, baseType: !413, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !349, file: !352, line: 42, baseType: !413, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !349, file: !352, line: 43, baseType: !413, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !349, file: !352, line: 44, baseType: !413, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !349, file: !352, line: 45, baseType: !413, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !349, file: !352, line: 46, baseType: !333, size: 64, align: 64, offset: 1792)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !349, file: !352, line: 47, baseType: !333, size: 64, align: 64, offset: 1856)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !339, file: !343, line: 9, baseType: !574, size: 64, align: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !575, line: 75, baseType: !576)
!575 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !577, line: 139, baseType: !334)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !339, file: !343, line: 10, baseType: !574, size: 64, align: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !339, file: !343, line: 12, baseType: !333, size: 64, align: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !339, file: !343, line: 13, baseType: !333, size: 64, align: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !339, file: !343, line: 15, baseType: !413, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !339, file: !343, line: 16, baseType: !413, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !339, file: !343, line: 17, baseType: !413, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !339, file: !343, line: 18, baseType: !413, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !339, file: !343, line: 19, baseType: !413, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !339, file: !343, line: 21, baseType: !587, size: 64, align: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !338, line: 102, baseType: !589)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !338, line: 102, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !339, file: !343, line: 22, baseType: !325, size: 32, align: 32, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !339, file: !343, line: 25, baseType: !592, size: 128, align: 64, offset: 640)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 128, align: 64, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 2)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !339, file: !343, line: 26, baseType: !325, size: 32, align: 32, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !339, file: !343, line: 27, baseType: !325, size: 32, align: 32, offset: 800)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !339, file: !343, line: 29, baseType: !598, size: 64, align: 64, offset: 832)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !338, line: 103, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !338, line: 103, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !339, file: !343, line: 30, baseType: !602, size: 64, align: 64, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !604, line: 37, baseType: !605)
!604 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !604, line: 37, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !339, file: !343, line: 32, baseType: !333, size: 64, align: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !339, file: !343, line: 33, baseType: !333, size: 64, align: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !339, file: !343, line: 34, baseType: !333, size: 64, align: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !339, file: !343, line: 35, baseType: !413, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !339, file: !343, line: 36, baseType: !413, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !339, file: !343, line: 37, baseType: !413, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !339, file: !343, line: 38, baseType: !413, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !339, file: !343, line: 40, baseType: !614, size: 128, align: 64, offset: 1216)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !330, line: 504, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !330, line: 506, size: 128, align: 64, elements: !616)
!616 = !{!617, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !615, file: !330, line: 508, baseType: !618, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !330, line: 48, baseType: !334)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !615, file: !330, line: 509, baseType: !618, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !339, file: !343, line: 41, baseType: !574, size: 64, align: 64, offset: 1344)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !339, file: !343, line: 42, baseType: !325, size: 32, align: 32, offset: 1408)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !339, file: !343, line: 44, baseType: !502, size: 64, align: 64, offset: 1472)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !339, file: !343, line: 45, baseType: !502, size: 64, align: 64, offset: 1536)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !339, file: !343, line: 53, baseType: !625, size: 64, align: 64, offset: 1600)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !336, !331, !325}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !339, file: !343, line: 55, baseType: !629, size: 64, align: 64, offset: 1664)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!325, !336, !327}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !339, file: !343, line: 57, baseType: !633, size: 64, align: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!325, !336, !331}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !339, file: !343, line: 60, baseType: !637, size: 64, align: 64, offset: 1792)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!331, !336}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !339, file: !343, line: 62, baseType: !641, size: 64, align: 64, offset: 1856)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !336, !331, !331, !325}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !339, file: !343, line: 65, baseType: !645, size: 64, align: 64, offset: 1920)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !336, !331, !331}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !339, file: !343, line: 69, baseType: !650, size: 64, align: 64, offset: 1984)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!653, !336, !331}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !338, line: 109, baseType: !655)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !338, line: 109, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !339, file: !343, line: 70, baseType: !657, size: 64, align: 64, offset: 2048)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !336, !331}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !338, line: 110, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !338, line: 110, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !339, file: !343, line: 71, baseType: !664, size: 64, align: 64, offset: 2112)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!325, !331, !331}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !339, file: !343, line: 73, baseType: !664, size: 64, align: 64, offset: 2176)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!669 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !671, line: 9, baseType: !672)
!671 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675, !675, !675, !675, !675, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!677 = !{!678, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!678 = distinct !DIGlobalVariable(name: "signal_gui_print_text", scope: !0, file: !679, line: 42, type: !325, isLocal: true, isDefinition: true, variable: i32* @signal_gui_print_text)
!679 = !DIFile(filename: "formats.c", directory: "/home/lichi/Desktop/irssi/task1")
!680 = distinct !DIGlobalVariable(name: "hide_text_style", scope: !0, file: !679, line: 43, type: !325, isLocal: true, isDefinition: true, variable: i32* @hide_text_style)
!681 = distinct !DIGlobalVariable(name: "hide_colors", scope: !0, file: !679, line: 43, type: !325, isLocal: true, isDefinition: true, variable: i32* @hide_colors)
!682 = distinct !DIGlobalVariable(name: "format_backs", scope: !0, file: !679, line: 38, type: !331, isLocal: true, isDefinition: true, variable: i8** @format_backs)
!683 = distinct !DIGlobalVariable(name: "format_fores", scope: !0, file: !679, line: 39, type: !331, isLocal: true, isDefinition: true, variable: i8** @format_fores)
!684 = distinct !DIGlobalVariable(name: "format_boldfores", scope: !0, file: !679, line: 40, type: !331, isLocal: true, isDefinition: true, variable: i8** @format_boldfores)
!685 = distinct !DIGlobalVariable(name: "timestamp_level", scope: !0, file: !679, line: 45, type: !325, isLocal: true, isDefinition: true, variable: i32* @timestamp_level)
!686 = distinct !DIGlobalVariable(name: "timestamp_timeout", scope: !0, file: !679, line: 46, type: !325, isLocal: true, isDefinition: true, variable: i32* @timestamp_timeout)
!687 = distinct !DIGlobalVariable(name: "hide_server_tags", scope: !0, file: !679, line: 43, type: !325, isLocal: true, isDefinition: true, variable: i32* @hide_server_tags)
!688 = distinct !DIGlobalVariable(name: "ansitab", scope: !689, file: !679, line: 875, type: !713, isLocal: true, isDefinition: true, variable: [8 x i8]* @get_ansi_color.ansitab)
!689 = distinct !DISubprogram(name: "get_ansi_color", scope: !679, file: !679, line: 872, type: !690, isLocal: true, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!690 = !DISubroutineType(types: !691)
!691 = !{!331, !692, !331, !711, !711, !711}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "THEME_REC", file: !694, line: 33, baseType: !695)
!694 = !DIFile(filename: "themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 13, size: 8768, align: 64, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !708, !709, !710}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !695, file: !694, line: 14, baseType: !325, size: 32, align: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !695, file: !694, line: 16, baseType: !333, size: 64, align: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !694, line: 17, baseType: !333, size: 64, align: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "last_modify", scope: !695, file: !694, line: 18, baseType: !574, size: 64, align: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "default_color", scope: !695, file: !694, line: 20, baseType: !325, size: 32, align: 32, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "info_eol", scope: !695, file: !694, line: 23, baseType: !413, size: 1, align: 32, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !695, file: !694, line: 26, baseType: !602, size: 64, align: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "replace_keys", scope: !695, file: !694, line: 28, baseType: !705, size: 8192, align: 32, offset: 384)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 8192, align: 32, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "replace_values", scope: !695, file: !694, line: 29, baseType: !502, size: 64, align: 64, offset: 8576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "abstracts", scope: !695, file: !694, line: 30, baseType: !602, size: 64, align: 64, offset: 8640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !695, file: !694, line: 32, baseType: !324, size: 64, align: 64, offset: 8704)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!712 = !{}
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, align: 8, elements: !714)
!714 = !{!715}
!715 = !DISubrange(count: 8)
!716 = !{i32 2, !"Dwarf Version", i32 4}
!717 = !{i32 2, !"Debug Info Version", i32 3}
!718 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!719 = distinct !DISubprogram(name: "format_find_tag", scope: !679, file: !679, line: 48, type: !665, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!720 = !DILocalVariable(name: "module", arg: 1, scope: !719, file: !679, line: 48, type: !331)
!721 = !DIExpression()
!722 = !DILocation(line: 48, column: 33, scope: !719)
!723 = !DILocalVariable(name: "tag", arg: 2, scope: !719, file: !679, line: 48, type: !331)
!724 = !DILocation(line: 48, column: 53, scope: !719)
!725 = !DILocalVariable(name: "formats", scope: !719, file: !679, line: 50, type: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "FORMAT_REC", file: !694, line: 35, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FORMAT_REC", file: !729, line: 30, size: 512, align: 64, elements: !730)
!729 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!730 = !{!731, !732, !733, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !728, file: !729, line: 31, baseType: !333, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !728, file: !729, line: 32, baseType: !333, size: 64, align: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !728, file: !729, line: 34, baseType: !325, size: 32, align: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "paramtypes", scope: !728, file: !729, line: 35, baseType: !735, size: 320, align: 32, offset: 160)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 320, align: 32, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 10)
!738 = !DILocation(line: 50, column: 14, scope: !719)
!739 = !DILocalVariable(name: "n", scope: !719, file: !679, line: 51, type: !325)
!740 = !DILocation(line: 51, column: 6, scope: !719)
!741 = !DILocation(line: 53, column: 32, scope: !719)
!742 = !DILocation(line: 53, column: 49, scope: !719)
!743 = !DILocation(line: 53, column: 12, scope: !719)
!744 = !DILocation(line: 53, column: 10, scope: !719)
!745 = !DILocation(line: 54, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !719, file: !679, line: 54, column: 6)
!747 = !DILocation(line: 54, column: 14, scope: !746)
!748 = !DILocation(line: 54, column: 6, scope: !719)
!749 = !DILocation(line: 55, column: 3, scope: !746)
!750 = !DILocation(line: 57, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !719, file: !679, line: 57, column: 2)
!752 = !DILocation(line: 57, column: 7, scope: !751)
!753 = !DILocation(line: 57, column: 22, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !679, discriminator: 1)
!755 = distinct !DILexicalBlock(scope: !751, file: !679, line: 57, column: 2)
!756 = !DILocation(line: 57, column: 14, scope: !754)
!757 = !DILocation(line: 57, column: 25, scope: !754)
!758 = !DILocation(line: 57, column: 29, scope: !754)
!759 = !DILocation(line: 57, column: 2, scope: !754)
!760 = !DILocation(line: 58, column: 15, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !679, line: 58, column: 7)
!762 = distinct !DILexicalBlock(scope: !755, file: !679, line: 57, column: 42)
!763 = !DILocation(line: 58, column: 7, scope: !761)
!764 = !DILocation(line: 58, column: 18, scope: !761)
!765 = !DILocation(line: 58, column: 22, scope: !761)
!766 = !DILocation(line: 58, column: 29, scope: !761)
!767 = !DILocation(line: 59, column: 34, scope: !761)
!768 = !DILocation(line: 59, column: 26, scope: !761)
!769 = !DILocation(line: 59, column: 37, scope: !761)
!770 = !DILocation(line: 59, column: 42, scope: !761)
!771 = !DILocation(line: 59, column: 7, scope: !761)
!772 = !DILocation(line: 59, column: 47, scope: !761)
!773 = !DILocation(line: 58, column: 7, scope: !774)
!774 = !DILexicalBlockFile(scope: !762, file: !679, discriminator: 1)
!775 = !DILocation(line: 60, column: 11, scope: !761)
!776 = !DILocation(line: 60, column: 4, scope: !761)
!777 = !DILocation(line: 61, column: 2, scope: !762)
!778 = !DILocation(line: 57, column: 38, scope: !779)
!779 = !DILexicalBlockFile(scope: !755, file: !679, discriminator: 2)
!780 = !DILocation(line: 57, column: 2, scope: !779)
!781 = distinct !{!781, !782}
!782 = !DILocation(line: 57, column: 2, scope: !719)
!783 = !DILocation(line: 63, column: 2, scope: !719)
!784 = !DILocation(line: 64, column: 1, scope: !719)
!785 = distinct !DISubprogram(name: "format_ext_color", scope: !679, file: !679, line: 105, type: !786, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !541, !325, !325}
!788 = !DILocalVariable(name: "out", arg: 1, scope: !785, file: !679, line: 105, type: !541)
!789 = !DILocation(line: 105, column: 32, scope: !785)
!790 = !DILocalVariable(name: "bg", arg: 2, scope: !785, file: !679, line: 105, type: !325)
!791 = !DILocation(line: 105, column: 41, scope: !785)
!792 = !DILocalVariable(name: "color", arg: 3, scope: !785, file: !679, line: 105, type: !325)
!793 = !DILocation(line: 105, column: 49, scope: !785)
!794 = !DILocation(line: 107, column: 28, scope: !785)
!795 = !DILocation(line: 107, column: 2, scope: !785)
!796 = !DILocation(line: 108, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !785, file: !679, line: 108, column: 6)
!798 = !DILocation(line: 108, column: 9, scope: !797)
!799 = !DILocation(line: 108, column: 12, scope: !800)
!800 = !DILexicalBlockFile(scope: !797, file: !679, discriminator: 1)
!801 = !DILocation(line: 108, column: 18, scope: !800)
!802 = !DILocation(line: 108, column: 6, scope: !800)
!803 = !DILocation(line: 109, column: 29, scope: !797)
!804 = !DILocation(line: 109, column: 3, scope: !797)
!805 = !DILocation(line: 110, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !785, file: !679, line: 110, column: 6)
!807 = !DILocation(line: 110, column: 12, scope: !806)
!808 = !DILocation(line: 110, column: 6, scope: !785)
!809 = !DILocation(line: 111, column: 29, scope: !806)
!810 = !DILocation(line: 111, column: 34, scope: !806)
!811 = !DILocation(line: 111, column: 39, scope: !806)
!812 = !DILocation(line: 111, column: 3, scope: !806)
!813 = !DILocation(line: 113, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !679, line: 113, column: 7)
!815 = distinct !DILexicalBlock(scope: !806, file: !679, line: 112, column: 7)
!816 = !DILocation(line: 113, column: 13, scope: !814)
!817 = !DILocation(line: 113, column: 7, scope: !815)
!818 = !DILocation(line: 114, column: 30, scope: !814)
!819 = !DILocation(line: 114, column: 35, scope: !814)
!820 = !DILocation(line: 114, column: 4, scope: !814)
!821 = !DILocation(line: 116, column: 12, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !679, line: 116, column: 12)
!823 = !DILocation(line: 116, column: 18, scope: !822)
!824 = !DILocation(line: 116, column: 12, scope: !814)
!825 = !DILocation(line: 117, column: 30, scope: !822)
!826 = !DILocation(line: 117, column: 35, scope: !822)
!827 = !DILocation(line: 117, column: 4, scope: !822)
!828 = !DILocation(line: 120, column: 30, scope: !822)
!829 = !DILocation(line: 120, column: 35, scope: !822)
!830 = !DILocation(line: 120, column: 4, scope: !822)
!831 = !DILocation(line: 122, column: 29, scope: !815)
!832 = !DILocation(line: 122, column: 46, scope: !815)
!833 = !DILocation(line: 122, column: 51, scope: !815)
!834 = !DILocation(line: 122, column: 57, scope: !815)
!835 = !DILocation(line: 122, column: 42, scope: !815)
!836 = !DILocation(line: 122, column: 34, scope: !815)
!837 = !DILocation(line: 122, column: 3, scope: !815)
!838 = !DILocation(line: 124, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !785, file: !679, line: 124, column: 6)
!840 = !DILocation(line: 124, column: 10, scope: !839)
!841 = !DILocation(line: 124, column: 13, scope: !842)
!842 = !DILexicalBlockFile(scope: !839, file: !679, discriminator: 1)
!843 = !DILocation(line: 124, column: 19, scope: !842)
!844 = !DILocation(line: 124, column: 6, scope: !842)
!845 = !DILocation(line: 125, column: 29, scope: !839)
!846 = !DILocation(line: 125, column: 3, scope: !839)
!847 = !DILocation(line: 126, column: 1, scope: !785)
!848 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !543, file: !543, line: 161, type: !849, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!849 = !DISubroutineType(types: !850)
!850 = !{!541, !541, !329}
!851 = !DILocalVariable(name: "gstring", arg: 1, scope: !848, file: !543, line: 161, type: !541)
!852 = !DILocation(line: 161, column: 36, scope: !848)
!853 = !DILocalVariable(name: "c", arg: 2, scope: !848, file: !543, line: 162, type: !329)
!854 = !DILocation(line: 162, column: 33, scope: !848)
!855 = !DILocation(line: 164, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !848, file: !543, line: 164, column: 7)
!857 = !DILocation(line: 164, column: 16, scope: !856)
!858 = !DILocation(line: 164, column: 20, scope: !856)
!859 = !DILocation(line: 164, column: 26, scope: !856)
!860 = !DILocation(line: 164, column: 35, scope: !856)
!861 = !DILocation(line: 164, column: 24, scope: !856)
!862 = !DILocation(line: 164, column: 7, scope: !848)
!863 = !DILocation(line: 166, column: 38, scope: !864)
!864 = distinct !DILexicalBlock(scope: !856, file: !543, line: 165, column: 5)
!865 = !DILocation(line: 166, column: 20, scope: !864)
!866 = !DILocation(line: 166, column: 29, scope: !864)
!867 = !DILocation(line: 166, column: 32, scope: !864)
!868 = !DILocation(line: 166, column: 7, scope: !864)
!869 = !DILocation(line: 166, column: 16, scope: !864)
!870 = !DILocation(line: 166, column: 36, scope: !864)
!871 = !DILocation(line: 167, column: 20, scope: !864)
!872 = !DILocation(line: 167, column: 29, scope: !864)
!873 = !DILocation(line: 167, column: 7, scope: !864)
!874 = !DILocation(line: 167, column: 16, scope: !864)
!875 = !DILocation(line: 167, column: 34, scope: !864)
!876 = !DILocation(line: 168, column: 5, scope: !864)
!877 = !DILocation(line: 170, column: 24, scope: !856)
!878 = !DILocation(line: 170, column: 37, scope: !856)
!879 = !DILocation(line: 170, column: 5, scope: !856)
!880 = !DILocation(line: 171, column: 10, scope: !848)
!881 = !DILocation(line: 171, column: 3, scope: !848)
!882 = distinct !DISubprogram(name: "format_24bit_color", scope: !679, file: !679, line: 157, type: !883, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !541, !325, !413}
!885 = !DILocalVariable(name: "out", arg: 1, scope: !882, file: !679, line: 157, type: !541)
!886 = !DILocation(line: 157, column: 34, scope: !882)
!887 = !DILocalVariable(name: "bg", arg: 2, scope: !882, file: !679, line: 157, type: !325)
!888 = !DILocation(line: 157, column: 43, scope: !882)
!889 = !DILocalVariable(name: "color", arg: 3, scope: !882, file: !679, line: 157, type: !413)
!890 = !DILocation(line: 157, column: 60, scope: !882)
!891 = !DILocalVariable(name: "rgb", scope: !882, file: !679, line: 159, type: !892)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 24, align: 8, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 3)
!895 = !DILocation(line: 159, column: 16, scope: !882)
!896 = !DILocation(line: 159, column: 24, scope: !882)
!897 = !DILocation(line: 159, column: 26, scope: !882)
!898 = !DILocation(line: 159, column: 32, scope: !882)
!899 = !DILocation(line: 159, column: 39, scope: !882)
!900 = !DILocation(line: 159, column: 45, scope: !882)
!901 = !DILocation(line: 159, column: 51, scope: !882)
!902 = !DILocation(line: 175, column: 19, scope: !882)
!903 = !DILocation(line: 175, column: 24, scope: !882)
!904 = !DILocation(line: 175, column: 44, scope: !882)
!905 = !DILocation(line: 175, column: 28, scope: !882)
!906 = !DILocation(line: 175, column: 2, scope: !907)
!907 = !DILexicalBlockFile(scope: !882, file: !679, discriminator: 1)
!908 = !DILocation(line: 177, column: 1, scope: !882)
!909 = distinct !DISubprogram(name: "format_expand_styles", scope: !679, file: !679, line: 179, type: !910, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!910 = !DISubroutineType(types: !911)
!911 = !{!325, !541, !668, !711}
!912 = !DILocalVariable(name: "out", arg: 1, scope: !909, file: !679, line: 179, type: !541)
!913 = !DILocation(line: 179, column: 35, scope: !909)
!914 = !DILocalVariable(name: "format", arg: 2, scope: !909, file: !679, line: 179, type: !668)
!915 = !DILocation(line: 179, column: 53, scope: !909)
!916 = !DILocalVariable(name: "flags", arg: 3, scope: !909, file: !679, line: 179, type: !711)
!917 = !DILocation(line: 179, column: 66, scope: !909)
!918 = !DILocalVariable(name: "retval", scope: !909, file: !679, line: 181, type: !325)
!919 = !DILocation(line: 181, column: 6, scope: !909)
!920 = !DILocalVariable(name: "p", scope: !909, file: !679, line: 183, type: !333)
!921 = !DILocation(line: 183, column: 8, scope: !909)
!922 = !DILocalVariable(name: "fmt", scope: !909, file: !679, line: 183, type: !327)
!923 = !DILocation(line: 183, column: 11, scope: !909)
!924 = !DILocalVariable(name: "tmp", scope: !909, file: !679, line: 186, type: !325)
!925 = !DILocation(line: 186, column: 6, scope: !909)
!926 = !DILocalVariable(name: "tmp2", scope: !909, file: !679, line: 187, type: !413)
!927 = !DILocation(line: 187, column: 15, scope: !909)
!928 = !DILocation(line: 189, column: 10, scope: !909)
!929 = !DILocation(line: 189, column: 9, scope: !909)
!930 = !DILocation(line: 189, column: 8, scope: !909)
!931 = !DILocation(line: 189, column: 6, scope: !909)
!932 = !DILocation(line: 190, column: 10, scope: !909)
!933 = !DILocation(line: 190, column: 2, scope: !909)
!934 = !DILocation(line: 195, column: 29, scope: !935)
!935 = distinct !DILexicalBlock(scope: !909, file: !679, line: 190, column: 15)
!936 = !DILocation(line: 195, column: 34, scope: !935)
!937 = !DILocation(line: 195, column: 3, scope: !935)
!938 = !DILocation(line: 196, column: 3, scope: !935)
!939 = !DILocation(line: 199, column: 29, scope: !935)
!940 = !DILocation(line: 199, column: 3, scope: !935)
!941 = !DILocation(line: 200, column: 29, scope: !935)
!942 = !DILocation(line: 200, column: 3, scope: !935)
!943 = !DILocation(line: 201, column: 3, scope: !935)
!944 = !DILocation(line: 205, column: 29, scope: !935)
!945 = !DILocation(line: 205, column: 3, scope: !935)
!946 = !DILocation(line: 206, column: 29, scope: !935)
!947 = !DILocation(line: 206, column: 3, scope: !935)
!948 = !DILocation(line: 207, column: 3, scope: !935)
!949 = !DILocation(line: 210, column: 29, scope: !935)
!950 = !DILocation(line: 210, column: 3, scope: !935)
!951 = !DILocation(line: 211, column: 29, scope: !935)
!952 = !DILocation(line: 211, column: 3, scope: !935)
!953 = !DILocation(line: 212, column: 3, scope: !935)
!954 = !DILocation(line: 215, column: 29, scope: !935)
!955 = !DILocation(line: 215, column: 3, scope: !935)
!956 = !DILocation(line: 216, column: 29, scope: !935)
!957 = !DILocation(line: 216, column: 3, scope: !935)
!958 = !DILocation(line: 217, column: 3, scope: !935)
!959 = !DILocation(line: 220, column: 29, scope: !935)
!960 = !DILocation(line: 220, column: 3, scope: !935)
!961 = !DILocation(line: 221, column: 3, scope: !935)
!962 = !DILocation(line: 224, column: 29, scope: !935)
!963 = !DILocation(line: 224, column: 3, scope: !935)
!964 = !DILocation(line: 225, column: 29, scope: !935)
!965 = !DILocation(line: 225, column: 3, scope: !935)
!966 = !DILocation(line: 226, column: 3, scope: !935)
!967 = !DILocation(line: 229, column: 29, scope: !935)
!968 = !DILocation(line: 229, column: 3, scope: !935)
!969 = !DILocation(line: 230, column: 29, scope: !935)
!970 = !DILocation(line: 230, column: 3, scope: !935)
!971 = !DILocation(line: 231, column: 3, scope: !935)
!972 = !DILocation(line: 235, column: 29, scope: !935)
!973 = !DILocation(line: 235, column: 3, scope: !935)
!974 = !DILocation(line: 236, column: 29, scope: !935)
!975 = !DILocation(line: 236, column: 3, scope: !935)
!976 = !DILocation(line: 237, column: 3, scope: !935)
!977 = !DILocation(line: 240, column: 29, scope: !935)
!978 = !DILocation(line: 240, column: 3, scope: !935)
!979 = !DILocation(line: 241, column: 29, scope: !935)
!980 = !DILocation(line: 241, column: 3, scope: !935)
!981 = !DILocation(line: 242, column: 3, scope: !935)
!982 = !DILocation(line: 244, column: 29, scope: !935)
!983 = !DILocation(line: 244, column: 3, scope: !935)
!984 = !DILocation(line: 245, column: 29, scope: !935)
!985 = !DILocation(line: 245, column: 3, scope: !935)
!986 = !DILocation(line: 246, column: 3, scope: !935)
!987 = !DILocation(line: 249, column: 22, scope: !935)
!988 = !DILocation(line: 249, column: 30, scope: !935)
!989 = !DILocation(line: 249, column: 35, scope: !935)
!990 = !DILocation(line: 249, column: 3, scope: !935)
!991 = !DILocation(line: 250, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !935, file: !679, line: 250, column: 7)
!993 = !DILocation(line: 250, column: 8, scope: !992)
!994 = !DILocation(line: 250, column: 7, scope: !992)
!995 = !DILocation(line: 250, column: 20, scope: !992)
!996 = !DILocation(line: 250, column: 7, scope: !935)
!997 = !DILocation(line: 252, column: 6, scope: !992)
!998 = !DILocation(line: 252, column: 13, scope: !992)
!999 = !DILocation(line: 252, column: 4, scope: !992)
!1000 = !DILocation(line: 254, column: 3, scope: !935)
!1001 = !DILocation(line: 257, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !935, file: !679, line: 257, column: 7)
!1003 = !DILocation(line: 257, column: 8, scope: !1002)
!1004 = !DILocation(line: 257, column: 7, scope: !1002)
!1005 = !DILocation(line: 257, column: 20, scope: !1002)
!1006 = !DILocation(line: 257, column: 26, scope: !1002)
!1007 = !DILocation(line: 257, column: 31, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1002, file: !679, discriminator: 1)
!1009 = !DILocation(line: 257, column: 30, scope: !1008)
!1010 = !DILocation(line: 257, column: 29, scope: !1008)
!1011 = !DILocation(line: 257, column: 42, scope: !1008)
!1012 = !DILocation(line: 257, column: 7, scope: !1008)
!1013 = !DILocation(line: 258, column: 4, scope: !1002)
!1014 = !DILocation(line: 260, column: 17, scope: !935)
!1015 = !DILocation(line: 260, column: 16, scope: !935)
!1016 = !DILocation(line: 260, column: 15, scope: !935)
!1017 = !DILocation(line: 260, column: 27, scope: !935)
!1018 = !DILocation(line: 260, column: 31, scope: !935)
!1019 = !DILocation(line: 260, column: 34, scope: !935)
!1020 = !DILocation(line: 260, column: 12, scope: !935)
!1021 = !DILocation(line: 260, column: 7, scope: !935)
!1022 = !DILocation(line: 261, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !935, file: !679, line: 261, column: 7)
!1024 = !DILocation(line: 261, column: 11, scope: !1023)
!1025 = !DILocation(line: 261, column: 7, scope: !935)
!1026 = !DILocation(line: 262, column: 10, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !679, line: 262, column: 8)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !679, line: 261, column: 18)
!1029 = !DILocation(line: 262, column: 9, scope: !1027)
!1030 = !DILocation(line: 262, column: 8, scope: !1027)
!1031 = !DILocation(line: 262, column: 29, scope: !1027)
!1032 = !DILocation(line: 262, column: 11, scope: !1027)
!1033 = !DILocation(line: 262, column: 12, scope: !1027)
!1034 = !DILocation(line: 262, column: 8, scope: !1028)
!1035 = !DILocation(line: 263, column: 5, scope: !1027)
!1036 = !DILocation(line: 265, column: 13, scope: !1028)
!1037 = !DILocation(line: 265, column: 12, scope: !1028)
!1038 = !DILocation(line: 265, column: 11, scope: !1028)
!1039 = !DILocation(line: 265, column: 24, scope: !1028)
!1040 = !DILocation(line: 265, column: 35, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1028, file: !679, discriminator: 1)
!1042 = !DILocation(line: 265, column: 34, scope: !1041)
!1043 = !DILocation(line: 265, column: 33, scope: !1041)
!1044 = !DILocation(line: 265, column: 46, scope: !1041)
!1045 = !DILocation(line: 265, column: 11, scope: !1041)
!1046 = !DILocation(line: 265, column: 56, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1028, file: !679, discriminator: 2)
!1048 = !DILocation(line: 265, column: 55, scope: !1047)
!1049 = !DILocation(line: 265, column: 54, scope: !1047)
!1050 = !DILocation(line: 265, column: 67, scope: !1047)
!1051 = !DILocation(line: 265, column: 11, scope: !1047)
!1052 = !DILocation(line: 265, column: 11, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1028, file: !679, discriminator: 3)
!1054 = !DILocation(line: 265, column: 8, scope: !1053)
!1055 = !DILocation(line: 267, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1028, file: !679, line: 267, column: 8)
!1057 = !DILocation(line: 267, column: 12, scope: !1056)
!1058 = !DILocation(line: 267, column: 8, scope: !1028)
!1059 = !DILocation(line: 268, column: 5, scope: !1056)
!1060 = !DILocation(line: 269, column: 3, scope: !1028)
!1061 = !DILocation(line: 270, column: 12, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1023, file: !679, line: 270, column: 12)
!1063 = !DILocation(line: 270, column: 16, scope: !1062)
!1064 = !DILocation(line: 270, column: 12, scope: !1023)
!1065 = !DILocation(line: 271, column: 10, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !679, line: 271, column: 8)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !679, line: 270, column: 21)
!1068 = !DILocation(line: 271, column: 9, scope: !1066)
!1069 = !DILocation(line: 271, column: 8, scope: !1066)
!1070 = !DILocation(line: 271, column: 29, scope: !1066)
!1071 = !DILocation(line: 271, column: 11, scope: !1066)
!1072 = !DILocation(line: 271, column: 12, scope: !1066)
!1073 = !DILocation(line: 271, column: 8, scope: !1067)
!1074 = !DILocation(line: 272, column: 5, scope: !1066)
!1075 = !DILocation(line: 274, column: 10, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !679, line: 274, column: 8)
!1077 = !DILocation(line: 274, column: 9, scope: !1076)
!1078 = !DILocation(line: 274, column: 8, scope: !1076)
!1079 = !DILocation(line: 274, column: 21, scope: !1076)
!1080 = !DILocation(line: 274, column: 8, scope: !1067)
!1081 = !DILocation(line: 275, column: 19, scope: !1076)
!1082 = !DILocation(line: 275, column: 18, scope: !1076)
!1083 = !DILocation(line: 275, column: 17, scope: !1076)
!1084 = !DILocation(line: 275, column: 15, scope: !1076)
!1085 = !DILocation(line: 275, column: 30, scope: !1076)
!1086 = !DILocation(line: 275, column: 9, scope: !1076)
!1087 = !DILocation(line: 275, column: 5, scope: !1076)
!1088 = !DILocation(line: 276, column: 15, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1076, file: !679, line: 276, column: 13)
!1090 = !DILocation(line: 276, column: 14, scope: !1089)
!1091 = !DILocation(line: 276, column: 13, scope: !1089)
!1092 = !DILocation(line: 276, column: 26, scope: !1089)
!1093 = !DILocation(line: 276, column: 13, scope: !1076)
!1094 = !DILocation(line: 277, column: 19, scope: !1089)
!1095 = !DILocation(line: 277, column: 18, scope: !1089)
!1096 = !DILocation(line: 277, column: 17, scope: !1089)
!1097 = !DILocation(line: 277, column: 15, scope: !1089)
!1098 = !DILocation(line: 277, column: 30, scope: !1089)
!1099 = !DILocation(line: 277, column: 9, scope: !1089)
!1100 = !DILocation(line: 277, column: 5, scope: !1089)
!1101 = !DILocation(line: 279, column: 14, scope: !1089)
!1102 = !DILocation(line: 279, column: 13, scope: !1089)
!1103 = !DILocation(line: 279, column: 12, scope: !1089)
!1104 = !DILocation(line: 279, column: 25, scope: !1089)
!1105 = !DILocation(line: 279, column: 9, scope: !1089)
!1106 = !DILocation(line: 280, column: 3, scope: !1067)
!1107 = !DILocation(line: 282, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !679, line: 282, column: 8)
!1109 = distinct !DILexicalBlock(scope: !1062, file: !679, line: 281, column: 8)
!1110 = !DILocation(line: 282, column: 9, scope: !1108)
!1111 = !DILocation(line: 282, column: 8, scope: !1108)
!1112 = !DILocation(line: 282, column: 29, scope: !1108)
!1113 = !DILocation(line: 282, column: 11, scope: !1108)
!1114 = !DILocation(line: 282, column: 12, scope: !1108)
!1115 = !DILocation(line: 282, column: 8, scope: !1109)
!1116 = !DILocation(line: 283, column: 5, scope: !1108)
!1117 = !DILocation(line: 285, column: 33, scope: !1109)
!1118 = !DILocation(line: 285, column: 32, scope: !1109)
!1119 = !DILocation(line: 285, column: 31, scope: !1109)
!1120 = !DILocation(line: 285, column: 10, scope: !1109)
!1121 = !DILocation(line: 285, column: 8, scope: !1109)
!1122 = !DILocation(line: 288, column: 10, scope: !935)
!1123 = !DILocation(line: 290, column: 20, scope: !935)
!1124 = !DILocation(line: 290, column: 25, scope: !935)
!1125 = !DILocation(line: 290, column: 29, scope: !935)
!1126 = !DILocation(line: 290, column: 37, scope: !935)
!1127 = !DILocation(line: 290, column: 3, scope: !935)
!1128 = !DILocation(line: 291, column: 3, scope: !935)
!1129 = !DILocation(line: 294, column: 8, scope: !935)
!1130 = !DILocation(line: 295, column: 12, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !935, file: !679, line: 295, column: 3)
!1132 = !DILocation(line: 295, column: 8, scope: !1131)
!1133 = !DILocation(line: 295, column: 17, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !679, discriminator: 1)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !679, line: 295, column: 3)
!1136 = !DILocation(line: 295, column: 21, scope: !1134)
!1137 = !DILocation(line: 295, column: 3, scope: !1134)
!1138 = !DILocation(line: 296, column: 18, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !679, line: 296, column: 8)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !679, line: 295, column: 33)
!1141 = !DILocation(line: 296, column: 8, scope: !1139)
!1142 = !DILocation(line: 296, column: 10, scope: !1139)
!1143 = !DILocation(line: 296, column: 9, scope: !1139)
!1144 = !DILocation(line: 296, column: 29, scope: !1139)
!1145 = !DILocation(line: 296, column: 11, scope: !1139)
!1146 = !DILocation(line: 296, column: 12, scope: !1139)
!1147 = !DILocation(line: 296, column: 8, scope: !1140)
!1148 = !DILocation(line: 297, column: 10, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1139, file: !679, line: 296, column: 34)
!1150 = !DILocation(line: 298, column: 5, scope: !1149)
!1151 = !DILocation(line: 300, column: 9, scope: !1140)
!1152 = !DILocation(line: 301, column: 43, scope: !1140)
!1153 = !DILocation(line: 301, column: 33, scope: !1140)
!1154 = !DILocation(line: 301, column: 35, scope: !1140)
!1155 = !DILocation(line: 301, column: 34, scope: !1140)
!1156 = !DILocation(line: 301, column: 12, scope: !1140)
!1157 = !DILocation(line: 301, column: 9, scope: !1140)
!1158 = !DILocation(line: 302, column: 3, scope: !1140)
!1159 = !DILocation(line: 295, column: 26, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1135, file: !679, discriminator: 2)
!1161 = !DILocation(line: 295, column: 3, scope: !1160)
!1162 = distinct !{!1162, !1163}
!1163 = !DILocation(line: 295, column: 3, scope: !935)
!1164 = !DILocation(line: 304, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !935, file: !679, line: 304, column: 7)
!1166 = !DILocation(line: 304, column: 12, scope: !1165)
!1167 = !DILocation(line: 304, column: 7, scope: !935)
!1168 = !DILocation(line: 305, column: 4, scope: !1165)
!1169 = !DILocation(line: 307, column: 10, scope: !935)
!1170 = !DILocation(line: 309, column: 22, scope: !935)
!1171 = !DILocation(line: 309, column: 27, scope: !935)
!1172 = !DILocation(line: 309, column: 31, scope: !935)
!1173 = !DILocation(line: 309, column: 39, scope: !935)
!1174 = !DILocation(line: 309, column: 3, scope: !935)
!1175 = !DILocation(line: 310, column: 3, scope: !935)
!1176 = !DILocation(line: 313, column: 14, scope: !935)
!1177 = !DILocation(line: 313, column: 28, scope: !935)
!1178 = !DILocation(line: 313, column: 7, scope: !935)
!1179 = !DILocation(line: 313, column: 5, scope: !935)
!1180 = !DILocation(line: 314, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !935, file: !679, line: 314, column: 7)
!1182 = !DILocation(line: 314, column: 9, scope: !1181)
!1183 = !DILocation(line: 314, column: 7, scope: !935)
!1184 = !DILocation(line: 315, column: 30, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !679, line: 314, column: 17)
!1186 = !DILocation(line: 315, column: 4, scope: !1185)
!1187 = !DILocation(line: 316, column: 30, scope: !1185)
!1188 = !DILocation(line: 316, column: 4, scope: !1185)
!1189 = !DILocation(line: 317, column: 30, scope: !1185)
!1190 = !DILocation(line: 317, column: 50, scope: !1185)
!1191 = !DILocation(line: 317, column: 52, scope: !1185)
!1192 = !DILocation(line: 317, column: 51, scope: !1185)
!1193 = !DILocation(line: 317, column: 43, scope: !1185)
!1194 = !DILocation(line: 317, column: 65, scope: !1185)
!1195 = !DILocation(line: 317, column: 35, scope: !1185)
!1196 = !DILocation(line: 317, column: 4, scope: !1185)
!1197 = !DILocation(line: 318, column: 4, scope: !1185)
!1198 = !DILocation(line: 322, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !935, file: !679, line: 322, column: 7)
!1200 = !DILocation(line: 322, column: 11, scope: !1199)
!1201 = !DILocation(line: 322, column: 7, scope: !935)
!1202 = !DILocation(line: 322, column: 23, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1199, file: !679, discriminator: 1)
!1204 = !DILocation(line: 322, column: 19, scope: !1203)
!1205 = !DILocation(line: 323, column: 14, scope: !935)
!1206 = !DILocation(line: 323, column: 28, scope: !935)
!1207 = !DILocation(line: 323, column: 7, scope: !935)
!1208 = !DILocation(line: 323, column: 5, scope: !935)
!1209 = !DILocation(line: 324, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !935, file: !679, line: 324, column: 7)
!1211 = !DILocation(line: 324, column: 9, scope: !1210)
!1212 = !DILocation(line: 324, column: 7, scope: !935)
!1213 = !DILocation(line: 325, column: 30, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !679, line: 324, column: 17)
!1215 = !DILocation(line: 325, column: 4, scope: !1214)
!1216 = !DILocation(line: 326, column: 30, scope: !1214)
!1217 = !DILocation(line: 326, column: 50, scope: !1214)
!1218 = !DILocation(line: 326, column: 52, scope: !1214)
!1219 = !DILocation(line: 326, column: 51, scope: !1214)
!1220 = !DILocation(line: 326, column: 43, scope: !1214)
!1221 = !DILocation(line: 326, column: 65, scope: !1214)
!1222 = !DILocation(line: 326, column: 35, scope: !1214)
!1223 = !DILocation(line: 326, column: 4, scope: !1214)
!1224 = !DILocation(line: 327, column: 30, scope: !1214)
!1225 = !DILocation(line: 327, column: 4, scope: !1214)
!1226 = !DILocation(line: 328, column: 4, scope: !1214)
!1227 = !DILocation(line: 332, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !935, file: !679, line: 332, column: 7)
!1229 = !DILocation(line: 332, column: 11, scope: !1228)
!1230 = !DILocation(line: 332, column: 7, scope: !935)
!1231 = !DILocation(line: 332, column: 23, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1228, file: !679, discriminator: 1)
!1233 = !DILocation(line: 332, column: 19, scope: !1232)
!1234 = !DILocation(line: 333, column: 14, scope: !935)
!1235 = !DILocation(line: 333, column: 32, scope: !935)
!1236 = !DILocation(line: 333, column: 7, scope: !935)
!1237 = !DILocation(line: 333, column: 5, scope: !935)
!1238 = !DILocation(line: 334, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !935, file: !679, line: 334, column: 7)
!1240 = !DILocation(line: 334, column: 9, scope: !1239)
!1241 = !DILocation(line: 334, column: 7, scope: !935)
!1242 = !DILocation(line: 335, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !679, line: 334, column: 17)
!1244 = !DILocation(line: 335, column: 4, scope: !1243)
!1245 = !DILocation(line: 336, column: 30, scope: !1243)
!1246 = !DILocation(line: 336, column: 52, scope: !1243)
!1247 = !DILocation(line: 336, column: 54, scope: !1243)
!1248 = !DILocation(line: 336, column: 53, scope: !1243)
!1249 = !DILocation(line: 336, column: 45, scope: !1243)
!1250 = !DILocation(line: 336, column: 44, scope: !1243)
!1251 = !DILocation(line: 336, column: 71, scope: !1243)
!1252 = !DILocation(line: 336, column: 35, scope: !1243)
!1253 = !DILocation(line: 336, column: 4, scope: !1243)
!1254 = !DILocation(line: 337, column: 30, scope: !1243)
!1255 = !DILocation(line: 337, column: 4, scope: !1243)
!1256 = !DILocation(line: 338, column: 4, scope: !1243)
!1257 = !DILocation(line: 341, column: 3, scope: !935)
!1258 = !DILocation(line: 344, column: 9, scope: !909)
!1259 = !DILocation(line: 344, column: 2, scope: !909)
!1260 = !DILocation(line: 345, column: 1, scope: !909)
!1261 = distinct !DISubprogram(name: "format_expand_code", scope: !679, file: !679, line: 66, type: !1262, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !668, !541, !711}
!1264 = !DILocalVariable(name: "format", arg: 1, scope: !1261, file: !679, line: 66, type: !668)
!1265 = !DILocation(line: 66, column: 45, scope: !1261)
!1266 = !DILocalVariable(name: "out", arg: 2, scope: !1261, file: !679, line: 66, type: !541)
!1267 = !DILocation(line: 66, column: 62, scope: !1261)
!1268 = !DILocalVariable(name: "flags", arg: 3, scope: !1261, file: !679, line: 66, type: !711)
!1269 = !DILocation(line: 66, column: 72, scope: !1261)
!1270 = !DILocalVariable(name: "set", scope: !1261, file: !679, line: 68, type: !325)
!1271 = !DILocation(line: 68, column: 6, scope: !1261)
!1272 = !DILocation(line: 70, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1261, file: !679, line: 70, column: 6)
!1274 = !DILocation(line: 70, column: 12, scope: !1273)
!1275 = !DILocation(line: 70, column: 6, scope: !1261)
!1276 = !DILocation(line: 72, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !679, line: 70, column: 20)
!1278 = !DILocation(line: 72, column: 12, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1277, file: !679, discriminator: 1)
!1280 = !DILocation(line: 72, column: 11, scope: !1279)
!1281 = !DILocation(line: 72, column: 10, scope: !1279)
!1282 = !DILocation(line: 72, column: 19, scope: !1279)
!1283 = !DILocation(line: 72, column: 26, scope: !1279)
!1284 = !DILocation(line: 72, column: 31, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1277, file: !679, discriminator: 2)
!1286 = !DILocation(line: 72, column: 30, scope: !1285)
!1287 = !DILocation(line: 72, column: 29, scope: !1285)
!1288 = !DILocation(line: 72, column: 38, scope: !1285)
!1289 = !DILocation(line: 72, column: 3, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1277, file: !679, discriminator: 3)
!1291 = !DILocation(line: 73, column: 6, scope: !1277)
!1292 = !DILocation(line: 73, column: 13, scope: !1277)
!1293 = !DILocation(line: 72, column: 3, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1277, file: !679, discriminator: 4)
!1295 = distinct !{!1295, !1276}
!1296 = !DILocation(line: 74, column: 3, scope: !1277)
!1297 = !DILocation(line: 77, column: 6, scope: !1261)
!1298 = !DILocation(line: 78, column: 4, scope: !1261)
!1299 = !DILocation(line: 78, column: 11, scope: !1261)
!1300 = !DILocation(line: 79, column: 2, scope: !1261)
!1301 = !DILocation(line: 79, column: 11, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1261, file: !679, discriminator: 1)
!1303 = !DILocation(line: 79, column: 10, scope: !1302)
!1304 = !DILocation(line: 79, column: 9, scope: !1302)
!1305 = !DILocation(line: 79, column: 18, scope: !1302)
!1306 = !DILocation(line: 79, column: 25, scope: !1302)
!1307 = !DILocation(line: 79, column: 30, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1261, file: !679, discriminator: 2)
!1309 = !DILocation(line: 79, column: 29, scope: !1308)
!1310 = !DILocation(line: 79, column: 28, scope: !1308)
!1311 = !DILocation(line: 79, column: 37, scope: !1308)
!1312 = !DILocation(line: 79, column: 2, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1261, file: !679, discriminator: 3)
!1314 = !DILocation(line: 80, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !679, line: 80, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1261, file: !679, line: 79, column: 46)
!1317 = !DILocation(line: 80, column: 8, scope: !1315)
!1318 = !DILocation(line: 80, column: 7, scope: !1315)
!1319 = !DILocation(line: 80, column: 16, scope: !1315)
!1320 = !DILocation(line: 80, column: 7, scope: !1316)
!1321 = !DILocation(line: 81, column: 8, scope: !1315)
!1322 = !DILocation(line: 81, column: 4, scope: !1315)
!1323 = !DILocation(line: 82, column: 14, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !679, line: 82, column: 12)
!1325 = !DILocation(line: 82, column: 13, scope: !1324)
!1326 = !DILocation(line: 82, column: 12, scope: !1324)
!1327 = !DILocation(line: 82, column: 21, scope: !1324)
!1328 = !DILocation(line: 82, column: 12, scope: !1315)
!1329 = !DILocation(line: 83, column: 8, scope: !1324)
!1330 = !DILocation(line: 83, column: 4, scope: !1324)
!1331 = !DILocation(line: 84, column: 18, scope: !1324)
!1332 = !DILocation(line: 84, column: 17, scope: !1324)
!1333 = !DILocation(line: 84, column: 16, scope: !1324)
!1334 = !DILocation(line: 84, column: 8, scope: !1324)
!1335 = !DILocation(line: 87, column: 15, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !679, line: 84, column: 26)
!1337 = !DILocation(line: 87, column: 14, scope: !1336)
!1338 = !DILocation(line: 87, column: 14, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1336, file: !679, discriminator: 1)
!1340 = !DILocation(line: 88, column: 7, scope: !1336)
!1341 = !DILocation(line: 88, column: 6, scope: !1336)
!1342 = !DILocation(line: 88, column: 5, scope: !1336)
!1343 = !DILocation(line: 88, column: 14, scope: !1336)
!1344 = !DILocation(line: 87, column: 14, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1336, file: !679, discriminator: 2)
!1346 = !DILocation(line: 87, column: 14, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1336, file: !679, discriminator: 3)
!1348 = !DILocation(line: 87, column: 5, scope: !1347)
!1349 = !DILocation(line: 87, column: 11, scope: !1347)
!1350 = !DILocation(line: 90, column: 4, scope: !1336)
!1351 = !DILocation(line: 92, column: 14, scope: !1336)
!1352 = !DILocation(line: 92, column: 5, scope: !1336)
!1353 = !DILocation(line: 92, column: 11, scope: !1336)
!1354 = !DILocation(line: 94, column: 4, scope: !1336)
!1355 = !DILocation(line: 96, column: 14, scope: !1336)
!1356 = !DILocation(line: 96, column: 5, scope: !1336)
!1357 = !DILocation(line: 96, column: 11, scope: !1336)
!1358 = !DILocation(line: 98, column: 4, scope: !1336)
!1359 = !DILocation(line: 101, column: 5, scope: !1316)
!1360 = !DILocation(line: 101, column: 12, scope: !1316)
!1361 = !DILocation(line: 79, column: 2, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1261, file: !679, discriminator: 4)
!1363 = distinct !{!1363, !1300}
!1364 = !DILocation(line: 103, column: 1, scope: !1261)
!1365 = distinct !DISubprogram(name: "format_read_arglist", scope: !679, file: !679, line: 347, type: !1366, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1368, !726, !648, !325, !333, !325}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 345, size: 192, align: 64, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1369, file: !1, line: 345, baseType: !413, size: 32, align: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1369, file: !1, line: 345, baseType: !413, size: 32, align: 32, offset: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1369, file: !1, line: 345, baseType: !324, size: 64, align: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1369, file: !1, line: 345, baseType: !324, size: 64, align: 64, offset: 128)
!1375 = !DILocalVariable(name: "va", arg: 1, scope: !1365, file: !679, line: 347, type: !1368)
!1376 = !DILocation(line: 347, column: 34, scope: !1365)
!1377 = !DILocalVariable(name: "format", arg: 2, scope: !1365, file: !679, line: 347, type: !726)
!1378 = !DILocation(line: 347, column: 50, scope: !1365)
!1379 = !DILocalVariable(name: "arglist", arg: 3, scope: !1365, file: !679, line: 348, type: !648)
!1380 = !DILocation(line: 348, column: 12, scope: !1365)
!1381 = !DILocalVariable(name: "arglist_size", arg: 4, scope: !1365, file: !679, line: 348, type: !325)
!1382 = !DILocation(line: 348, column: 25, scope: !1365)
!1383 = !DILocalVariable(name: "buffer", arg: 5, scope: !1365, file: !679, line: 349, type: !333)
!1384 = !DILocation(line: 349, column: 11, scope: !1365)
!1385 = !DILocalVariable(name: "buffer_size", arg: 6, scope: !1365, file: !679, line: 349, type: !325)
!1386 = !DILocation(line: 349, column: 23, scope: !1365)
!1387 = !DILocalVariable(name: "num", scope: !1365, file: !679, line: 351, type: !325)
!1388 = !DILocation(line: 351, column: 6, scope: !1365)
!1389 = !DILocalVariable(name: "len", scope: !1365, file: !679, line: 351, type: !325)
!1390 = !DILocation(line: 351, column: 11, scope: !1365)
!1391 = !DILocalVariable(name: "bufpos", scope: !1365, file: !679, line: 351, type: !325)
!1392 = !DILocation(line: 351, column: 16, scope: !1365)
!1393 = !DILocation(line: 353, column: 2, scope: !1365)
!1394 = distinct !{!1394, !1393}
!1395 = !DILocation(line: 353, column: 10, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1397, file: !679, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !679, line: 353, column: 10)
!1398 = distinct !DILexicalBlock(scope: !1365, file: !679, line: 353, column: 4)
!1399 = !DILocation(line: 353, column: 18, scope: !1396)
!1400 = !DILocation(line: 353, column: 27, scope: !1396)
!1401 = !DILocation(line: 353, column: 25, scope: !1396)
!1402 = !DILocation(line: 353, column: 43, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !679, discriminator: 2)
!1404 = distinct !DILexicalBlock(scope: !1397, file: !679, line: 353, column: 41)
!1405 = !DILocation(line: 353, column: 52, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !679, discriminator: 3)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !679, line: 353, column: 50)
!1408 = !DILocation(line: 353, column: 154, scope: !1406)
!1409 = !DILocation(line: 353, column: 165, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1398, file: !679, discriminator: 4)
!1411 = !DILocation(line: 355, column: 9, scope: !1365)
!1412 = !DILocation(line: 356, column: 10, scope: !1365)
!1413 = !DILocation(line: 356, column: 18, scope: !1365)
!1414 = !DILocation(line: 356, column: 2, scope: !1365)
!1415 = !DILocation(line: 356, column: 26, scope: !1365)
!1416 = !DILocation(line: 357, column: 11, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1365, file: !679, line: 357, column: 2)
!1418 = !DILocation(line: 357, column: 7, scope: !1417)
!1419 = !DILocation(line: 357, column: 16, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !679, discriminator: 1)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !679, line: 357, column: 2)
!1422 = !DILocation(line: 357, column: 22, scope: !1420)
!1423 = !DILocation(line: 357, column: 30, scope: !1420)
!1424 = !DILocation(line: 357, column: 20, scope: !1420)
!1425 = !DILocation(line: 357, column: 2, scope: !1420)
!1426 = !DILocation(line: 358, column: 30, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1421, file: !679, line: 357, column: 45)
!1428 = !DILocation(line: 358, column: 11, scope: !1427)
!1429 = !DILocation(line: 358, column: 19, scope: !1427)
!1430 = !DILocation(line: 358, column: 3, scope: !1427)
!1431 = !DILocation(line: 360, column: 27, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !679, line: 358, column: 36)
!1433 = !DILocation(line: 360, column: 27, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1432, file: !679, discriminator: 1)
!1435 = !DILocation(line: 360, column: 27, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1432, file: !679, discriminator: 2)
!1437 = !DILocation(line: 360, column: 27, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1432, file: !679, discriminator: 3)
!1439 = !DILocation(line: 360, column: 12, scope: !1438)
!1440 = !DILocation(line: 360, column: 4, scope: !1438)
!1441 = !DILocation(line: 360, column: 17, scope: !1438)
!1442 = !DILocation(line: 361, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !679, line: 361, column: 8)
!1444 = !DILocation(line: 361, column: 8, scope: !1443)
!1445 = !DILocation(line: 361, column: 21, scope: !1443)
!1446 = !DILocation(line: 361, column: 8, scope: !1432)
!1447 = !DILocation(line: 362, column: 13, scope: !1443)
!1448 = !DILocation(line: 362, column: 5, scope: !1443)
!1449 = !DILocation(line: 362, column: 18, scope: !1443)
!1450 = !DILocation(line: 363, column: 4, scope: !1432)
!1451 = !DILocalVariable(name: "d", scope: !1452, file: !679, line: 365, type: !325)
!1452 = distinct !DILexicalBlock(scope: !1432, file: !679, line: 364, column: 20)
!1453 = !DILocation(line: 365, column: 8, scope: !1452)
!1454 = !DILocation(line: 365, column: 17, scope: !1452)
!1455 = !DILocation(line: 365, column: 17, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1452, file: !679, discriminator: 1)
!1457 = !DILocation(line: 365, column: 17, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1452, file: !679, discriminator: 2)
!1459 = !DILocation(line: 365, column: 17, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1452, file: !679, discriminator: 3)
!1461 = !DILocation(line: 365, column: 8, scope: !1460)
!1462 = !DILocation(line: 367, column: 8, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1452, file: !679, line: 367, column: 8)
!1464 = !DILocation(line: 367, column: 18, scope: !1463)
!1465 = !DILocation(line: 367, column: 15, scope: !1463)
!1466 = !DILocation(line: 367, column: 8, scope: !1452)
!1467 = !DILocation(line: 368, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !679, line: 367, column: 31)
!1469 = !DILocation(line: 368, column: 5, scope: !1468)
!1470 = !DILocation(line: 368, column: 18, scope: !1468)
!1471 = !DILocation(line: 369, column: 5, scope: !1468)
!1472 = !DILocation(line: 372, column: 19, scope: !1452)
!1473 = !DILocation(line: 372, column: 26, scope: !1452)
!1474 = !DILocation(line: 372, column: 25, scope: !1452)
!1475 = !DILocation(line: 372, column: 12, scope: !1452)
!1476 = !DILocation(line: 372, column: 4, scope: !1452)
!1477 = !DILocation(line: 372, column: 17, scope: !1452)
!1478 = !DILocation(line: 373, column: 21, scope: !1452)
!1479 = !DILocation(line: 373, column: 28, scope: !1452)
!1480 = !DILocation(line: 373, column: 27, scope: !1452)
!1481 = !DILocation(line: 373, column: 36, scope: !1452)
!1482 = !DILocation(line: 373, column: 48, scope: !1452)
!1483 = !DILocation(line: 373, column: 47, scope: !1452)
!1484 = !DILocation(line: 374, column: 13, scope: !1452)
!1485 = !DILocation(line: 373, column: 10, scope: !1452)
!1486 = !DILocation(line: 373, column: 8, scope: !1452)
!1487 = !DILocation(line: 375, column: 14, scope: !1452)
!1488 = !DILocation(line: 375, column: 17, scope: !1452)
!1489 = !DILocation(line: 375, column: 11, scope: !1452)
!1490 = !DILocation(line: 376, column: 4, scope: !1452)
!1491 = !DILocalVariable(name: "l", scope: !1492, file: !679, line: 379, type: !334)
!1492 = distinct !DILexicalBlock(scope: !1432, file: !679, line: 378, column: 21)
!1493 = !DILocation(line: 379, column: 9, scope: !1492)
!1494 = !DILocation(line: 379, column: 19, scope: !1492)
!1495 = !DILocation(line: 379, column: 19, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1492, file: !679, discriminator: 1)
!1497 = !DILocation(line: 379, column: 19, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1492, file: !679, discriminator: 2)
!1499 = !DILocation(line: 379, column: 19, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1492, file: !679, discriminator: 3)
!1501 = !DILocation(line: 379, column: 9, scope: !1500)
!1502 = !DILocation(line: 381, column: 8, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !679, line: 381, column: 8)
!1504 = !DILocation(line: 381, column: 18, scope: !1503)
!1505 = !DILocation(line: 381, column: 15, scope: !1503)
!1506 = !DILocation(line: 381, column: 8, scope: !1492)
!1507 = !DILocation(line: 382, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !679, line: 381, column: 31)
!1509 = !DILocation(line: 382, column: 5, scope: !1508)
!1510 = !DILocation(line: 382, column: 18, scope: !1508)
!1511 = !DILocation(line: 383, column: 5, scope: !1508)
!1512 = !DILocation(line: 386, column: 19, scope: !1492)
!1513 = !DILocation(line: 386, column: 26, scope: !1492)
!1514 = !DILocation(line: 386, column: 25, scope: !1492)
!1515 = !DILocation(line: 386, column: 12, scope: !1492)
!1516 = !DILocation(line: 386, column: 4, scope: !1492)
!1517 = !DILocation(line: 386, column: 17, scope: !1492)
!1518 = !DILocation(line: 387, column: 21, scope: !1492)
!1519 = !DILocation(line: 387, column: 28, scope: !1492)
!1520 = !DILocation(line: 387, column: 27, scope: !1492)
!1521 = !DILocation(line: 387, column: 36, scope: !1492)
!1522 = !DILocation(line: 387, column: 48, scope: !1492)
!1523 = !DILocation(line: 387, column: 47, scope: !1492)
!1524 = !DILocation(line: 388, column: 14, scope: !1492)
!1525 = !DILocation(line: 387, column: 10, scope: !1492)
!1526 = !DILocation(line: 387, column: 8, scope: !1492)
!1527 = !DILocation(line: 389, column: 14, scope: !1492)
!1528 = !DILocation(line: 389, column: 17, scope: !1492)
!1529 = !DILocation(line: 389, column: 11, scope: !1492)
!1530 = !DILocation(line: 390, column: 4, scope: !1492)
!1531 = !DILocalVariable(name: "f", scope: !1532, file: !679, line: 393, type: !335)
!1532 = distinct !DILexicalBlock(scope: !1432, file: !679, line: 392, column: 22)
!1533 = !DILocation(line: 393, column: 11, scope: !1532)
!1534 = !DILocation(line: 393, column: 23, scope: !1532)
!1535 = !DILocation(line: 393, column: 23, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1532, file: !679, discriminator: 1)
!1537 = !DILocation(line: 393, column: 23, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1532, file: !679, discriminator: 2)
!1539 = !DILocation(line: 393, column: 23, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1532, file: !679, discriminator: 3)
!1541 = !DILocation(line: 393, column: 11, scope: !1540)
!1542 = !DILocation(line: 395, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1532, file: !679, line: 395, column: 8)
!1544 = !DILocation(line: 395, column: 18, scope: !1543)
!1545 = !DILocation(line: 395, column: 15, scope: !1543)
!1546 = !DILocation(line: 395, column: 8, scope: !1532)
!1547 = !DILocation(line: 396, column: 13, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !679, line: 395, column: 31)
!1549 = !DILocation(line: 396, column: 5, scope: !1548)
!1550 = !DILocation(line: 396, column: 18, scope: !1548)
!1551 = !DILocation(line: 397, column: 5, scope: !1548)
!1552 = !DILocation(line: 400, column: 19, scope: !1532)
!1553 = !DILocation(line: 400, column: 26, scope: !1532)
!1554 = !DILocation(line: 400, column: 25, scope: !1532)
!1555 = !DILocation(line: 400, column: 12, scope: !1532)
!1556 = !DILocation(line: 400, column: 4, scope: !1532)
!1557 = !DILocation(line: 400, column: 17, scope: !1532)
!1558 = !DILocation(line: 401, column: 21, scope: !1532)
!1559 = !DILocation(line: 401, column: 28, scope: !1532)
!1560 = !DILocation(line: 401, column: 27, scope: !1532)
!1561 = !DILocation(line: 401, column: 36, scope: !1532)
!1562 = !DILocation(line: 401, column: 48, scope: !1532)
!1563 = !DILocation(line: 401, column: 47, scope: !1532)
!1564 = !DILocation(line: 402, column: 16, scope: !1532)
!1565 = !DILocation(line: 401, column: 10, scope: !1532)
!1566 = !DILocation(line: 401, column: 8, scope: !1532)
!1567 = !DILocation(line: 403, column: 14, scope: !1532)
!1568 = !DILocation(line: 403, column: 17, scope: !1532)
!1569 = !DILocation(line: 403, column: 11, scope: !1532)
!1570 = !DILocation(line: 404, column: 4, scope: !1532)
!1571 = !DILocation(line: 407, column: 2, scope: !1427)
!1572 = !DILocation(line: 357, column: 41, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1421, file: !679, discriminator: 2)
!1574 = !DILocation(line: 357, column: 2, scope: !1573)
!1575 = distinct !{!1575, !1576}
!1576 = !DILocation(line: 357, column: 2, scope: !1365)
!1577 = !DILocation(line: 408, column: 1, scope: !1365)
!1578 = distinct !DISubprogram(name: "format_create_dest", scope: !679, file: !679, line: 409, type: !1579, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1581, !324, !331, !325, !1586}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64, align: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !729, line: 62, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !729, line: 50, size: 576, align: 64, elements: !1584)
!1584 = !{!1585, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1583, file: !729, line: 51, baseType: !1586, size: 64, align: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !338, line: 117, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1589, line: 28, size: 1280, align: 64, elements: !1590)
!1589 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1588, file: !1589, line: 29, baseType: !325, size: 32, align: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1588, file: !1589, line: 30, baseType: !333, size: 64, align: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1588, file: !1589, line: 32, baseType: !325, size: 32, align: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1588, file: !1589, line: 32, baseType: !325, size: 32, align: 32, offset: 160)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1588, file: !1589, line: 34, baseType: !502, size: 64, align: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1588, file: !1589, line: 35, baseType: !1597, size: 64, align: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !338, line: 108, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !1600, line: 5, size: 704, align: 64, elements: !1601)
!1600 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!1601 = !{!1602, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1617}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1599, file: !1603, line: 3, baseType: !325, size: 32, align: 32)
!1603 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1599, file: !1603, line: 4, baseType: !325, size: 32, align: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1599, file: !1603, line: 5, baseType: !602, size: 64, align: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1599, file: !1603, line: 7, baseType: !324, size: 64, align: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1599, file: !1603, line: 8, baseType: !336, size: 64, align: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !1599, file: !1603, line: 9, baseType: !333, size: 64, align: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1603, line: 10, baseType: !333, size: 64, align: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !1599, file: !1603, line: 11, baseType: !574, size: 64, align: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1599, file: !1603, line: 12, baseType: !325, size: 32, align: 32, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1599, file: !1603, line: 13, baseType: !333, size: 64, align: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1599, file: !1603, line: 15, baseType: !1614, size: 64, align: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64, align: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1597}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !1599, file: !1603, line: 17, baseType: !1618, size: 64, align: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64, align: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!331, !1597}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1588, file: !1589, line: 36, baseType: !336, size: 64, align: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1588, file: !1589, line: 37, baseType: !336, size: 64, align: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1588, file: !1589, line: 38, baseType: !333, size: 64, align: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1588, file: !1589, line: 40, baseType: !325, size: 32, align: 32, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1588, file: !1589, line: 41, baseType: !502, size: 64, align: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1588, file: !1589, line: 43, baseType: !413, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1588, file: !1589, line: 44, baseType: !413, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1588, file: !1589, line: 45, baseType: !413, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1588, file: !1589, line: 48, baseType: !1630, size: 64, align: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1632, line: 14, baseType: !1633)
!1632 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1632, line: 6, size: 256, align: 64, elements: !1634)
!1634 = !{!1635, !1636, !1645, !1646, !1647}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1633, file: !1632, line: 7, baseType: !333, size: 64, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1633, file: !1632, line: 9, baseType: !1637, size: 64, align: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !1639, line: 37, baseType: !1640)
!1639 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !1639, line: 39, size: 192, align: 64, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1640, file: !1639, line: 41, baseType: !441, size: 64, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1640, file: !1639, line: 42, baseType: !1637, size: 64, align: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1640, file: !1639, line: 43, baseType: !1637, size: 64, align: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1633, file: !1632, line: 10, baseType: !325, size: 32, align: 32, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1633, file: !1632, line: 12, baseType: !325, size: 32, align: 32, offset: 160)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1633, file: !1632, line: 13, baseType: !325, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1588, file: !1589, line: 49, baseType: !333, size: 64, align: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1588, file: !1589, line: 51, baseType: !325, size: 32, align: 32, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1588, file: !1589, line: 52, baseType: !333, size: 64, align: 64, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1588, file: !1589, line: 54, baseType: !574, size: 64, align: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1588, file: !1589, line: 55, baseType: !574, size: 64, align: 64, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1588, file: !1589, line: 57, baseType: !333, size: 64, align: 64, offset: 1088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1588, file: !1589, line: 58, baseType: !324, size: 64, align: 64, offset: 1152)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1588, file: !1589, line: 60, baseType: !324, size: 64, align: 64, offset: 1216)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1583, file: !729, line: 52, baseType: !336, size: 64, align: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1583, file: !729, line: 53, baseType: !331, size: 64, align: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1583, file: !729, line: 54, baseType: !331, size: 64, align: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1583, file: !729, line: 55, baseType: !331, size: 64, align: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1583, file: !729, line: 56, baseType: !331, size: 64, align: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1583, file: !729, line: 57, baseType: !325, size: 32, align: 32, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1583, file: !729, line: 59, baseType: !325, size: 32, align: 32, offset: 416)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1583, file: !729, line: 60, baseType: !333, size: 64, align: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1583, file: !729, line: 61, baseType: !325, size: 32, align: 32, offset: 512)
!1665 = !DILocalVariable(name: "dest", arg: 1, scope: !1578, file: !679, line: 409, type: !1581)
!1666 = !DILocation(line: 409, column: 40, scope: !1578)
!1667 = !DILocalVariable(name: "server", arg: 2, scope: !1578, file: !679, line: 410, type: !324)
!1668 = !DILocation(line: 410, column: 10, scope: !1578)
!1669 = !DILocalVariable(name: "target", arg: 3, scope: !1578, file: !679, line: 410, type: !331)
!1670 = !DILocation(line: 410, column: 30, scope: !1578)
!1671 = !DILocalVariable(name: "level", arg: 4, scope: !1578, file: !679, line: 411, type: !325)
!1672 = !DILocation(line: 411, column: 8, scope: !1578)
!1673 = !DILocalVariable(name: "window", arg: 5, scope: !1578, file: !679, line: 411, type: !1586)
!1674 = !DILocation(line: 411, column: 27, scope: !1578)
!1675 = !DILocation(line: 413, column: 25, scope: !1578)
!1676 = !DILocation(line: 413, column: 31, scope: !1578)
!1677 = !DILocation(line: 413, column: 44, scope: !1578)
!1678 = !DILocation(line: 413, column: 52, scope: !1578)
!1679 = !DILocation(line: 413, column: 59, scope: !1578)
!1680 = !DILocation(line: 413, column: 2, scope: !1578)
!1681 = !DILocation(line: 414, column: 1, scope: !1578)
!1682 = distinct !DISubprogram(name: "format_create_dest_tag", scope: !679, file: !679, line: 416, type: !1683, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1581, !324, !331, !331, !325, !1586}
!1685 = !DILocalVariable(name: "dest", arg: 1, scope: !1682, file: !679, line: 416, type: !1581)
!1686 = !DILocation(line: 416, column: 44, scope: !1682)
!1687 = !DILocalVariable(name: "server", arg: 2, scope: !1682, file: !679, line: 416, type: !324)
!1688 = !DILocation(line: 416, column: 56, scope: !1682)
!1689 = !DILocalVariable(name: "server_tag", arg: 3, scope: !1682, file: !679, line: 417, type: !331)
!1690 = !DILocation(line: 417, column: 20, scope: !1682)
!1691 = !DILocalVariable(name: "target", arg: 4, scope: !1682, file: !679, line: 417, type: !331)
!1692 = !DILocation(line: 417, column: 44, scope: !1682)
!1693 = !DILocalVariable(name: "level", arg: 5, scope: !1682, file: !679, line: 418, type: !325)
!1694 = !DILocation(line: 418, column: 12, scope: !1682)
!1695 = !DILocalVariable(name: "window", arg: 6, scope: !1682, file: !679, line: 418, type: !1586)
!1696 = !DILocation(line: 418, column: 31, scope: !1682)
!1697 = !DILocation(line: 420, column: 9, scope: !1682)
!1698 = !DILocation(line: 420, column: 2, scope: !1682)
!1699 = !DILocation(line: 422, column: 17, scope: !1682)
!1700 = !DILocation(line: 422, column: 2, scope: !1682)
!1701 = !DILocation(line: 422, column: 8, scope: !1682)
!1702 = !DILocation(line: 422, column: 15, scope: !1682)
!1703 = !DILocation(line: 423, column: 21, scope: !1682)
!1704 = !DILocation(line: 423, column: 28, scope: !1682)
!1705 = !DILocation(line: 423, column: 71, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1682, file: !679, discriminator: 1)
!1707 = !DILocation(line: 423, column: 53, scope: !1706)
!1708 = !DILocation(line: 423, column: 38, scope: !1706)
!1709 = !DILocation(line: 423, column: 51, scope: !1706)
!1710 = !DILocation(line: 423, column: 21, scope: !1706)
!1711 = !DILocation(line: 423, column: 57, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1682, file: !679, discriminator: 2)
!1713 = !DILocation(line: 423, column: 21, scope: !1712)
!1714 = !DILocation(line: 423, column: 21, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1682, file: !679, discriminator: 3)
!1716 = !DILocation(line: 423, column: 2, scope: !1715)
!1717 = !DILocation(line: 423, column: 8, scope: !1715)
!1718 = !DILocation(line: 423, column: 19, scope: !1715)
!1719 = !DILocation(line: 424, column: 17, scope: !1682)
!1720 = !DILocation(line: 424, column: 2, scope: !1682)
!1721 = !DILocation(line: 424, column: 8, scope: !1682)
!1722 = !DILocation(line: 424, column: 15, scope: !1682)
!1723 = !DILocation(line: 425, column: 16, scope: !1682)
!1724 = !DILocation(line: 425, column: 2, scope: !1682)
!1725 = !DILocation(line: 425, column: 8, scope: !1682)
!1726 = !DILocation(line: 425, column: 14, scope: !1682)
!1727 = !DILocation(line: 426, column: 17, scope: !1682)
!1728 = !DILocation(line: 426, column: 24, scope: !1682)
!1729 = !DILocation(line: 426, column: 33, scope: !1706)
!1730 = !DILocation(line: 426, column: 17, scope: !1706)
!1731 = !DILocation(line: 427, column: 23, scope: !1682)
!1732 = !DILocation(line: 427, column: 31, scope: !1682)
!1733 = !DILocation(line: 427, column: 39, scope: !1682)
!1734 = !DILocation(line: 427, column: 3, scope: !1682)
!1735 = !DILocation(line: 426, column: 17, scope: !1712)
!1736 = !DILocation(line: 426, column: 17, scope: !1715)
!1737 = !DILocation(line: 426, column: 2, scope: !1715)
!1738 = !DILocation(line: 426, column: 8, scope: !1715)
!1739 = !DILocation(line: 426, column: 15, scope: !1715)
!1740 = !DILocation(line: 428, column: 1, scope: !1682)
!1741 = distinct !DISubprogram(name: "format_get_length", scope: !679, file: !679, line: 431, type: !1742, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!325, !331}
!1744 = !DILocalVariable(name: "str", arg: 1, scope: !1741, file: !679, line: 431, type: !331)
!1745 = !DILocation(line: 431, column: 35, scope: !1741)
!1746 = !DILocalVariable(name: "tmp", scope: !1741, file: !679, line: 433, type: !541)
!1747 = !DILocation(line: 433, column: 11, scope: !1741)
!1748 = !DILocalVariable(name: "len", scope: !1741, file: !679, line: 434, type: !325)
!1749 = !DILocation(line: 434, column: 6, scope: !1741)
!1750 = !DILocalVariable(name: "utf8", scope: !1741, file: !679, line: 435, type: !325)
!1751 = !DILocation(line: 435, column: 6, scope: !1741)
!1752 = !DILocalVariable(name: "adv", scope: !1741, file: !679, line: 436, type: !325)
!1753 = !DILocation(line: 436, column: 6, scope: !1741)
!1754 = !DILocation(line: 438, column: 2, scope: !1741)
!1755 = distinct !{!1755, !1754}
!1756 = !DILocation(line: 438, column: 10, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !679, discriminator: 1)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !679, line: 438, column: 10)
!1759 = distinct !DILexicalBlock(scope: !1741, file: !679, line: 438, column: 4)
!1760 = !DILocation(line: 438, column: 14, scope: !1757)
!1761 = !DILocation(line: 438, column: 5, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !679, discriminator: 2)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !679, line: 438, column: 3)
!1764 = !DILocation(line: 438, column: 14, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !679, discriminator: 3)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !679, line: 438, column: 12)
!1767 = !DILocation(line: 438, column: 98, scope: !1765)
!1768 = !DILocation(line: 438, column: 113, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1759, file: !679, discriminator: 4)
!1770 = !DILocation(line: 440, column: 23, scope: !1741)
!1771 = !DILocation(line: 440, column: 9, scope: !1741)
!1772 = !DILocation(line: 440, column: 7, scope: !1741)
!1773 = !DILocation(line: 442, column: 8, scope: !1741)
!1774 = !DILocation(line: 442, column: 6, scope: !1741)
!1775 = !DILocation(line: 443, column: 6, scope: !1741)
!1776 = !DILocation(line: 444, column: 2, scope: !1741)
!1777 = !DILocation(line: 444, column: 10, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1741, file: !679, discriminator: 1)
!1779 = !DILocation(line: 444, column: 9, scope: !1778)
!1780 = !DILocation(line: 444, column: 14, scope: !1778)
!1781 = !DILocation(line: 444, column: 2, scope: !1778)
!1782 = !DILocation(line: 445, column: 8, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !679, line: 445, column: 7)
!1784 = distinct !DILexicalBlock(scope: !1741, file: !679, line: 444, column: 23)
!1785 = !DILocation(line: 445, column: 7, scope: !1783)
!1786 = !DILocation(line: 445, column: 12, scope: !1783)
!1787 = !DILocation(line: 445, column: 19, scope: !1783)
!1788 = !DILocation(line: 445, column: 22, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1783, file: !679, discriminator: 1)
!1790 = !DILocation(line: 445, column: 29, scope: !1789)
!1791 = !DILocation(line: 445, column: 7, scope: !1789)
!1792 = !DILocation(line: 446, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1783, file: !679, line: 445, column: 38)
!1794 = !DILocation(line: 447, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1793, file: !679, line: 447, column: 8)
!1796 = !DILocation(line: 447, column: 8, scope: !1795)
!1797 = !DILocation(line: 447, column: 13, scope: !1795)
!1798 = !DILocation(line: 447, column: 8, scope: !1793)
!1799 = !DILocation(line: 448, column: 36, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !679, line: 447, column: 21)
!1801 = !DILocation(line: 448, column: 15, scope: !1800)
!1802 = !DILocation(line: 448, column: 13, scope: !1800)
!1803 = !DILocation(line: 449, column: 16, scope: !1800)
!1804 = !DILocation(line: 449, column: 13, scope: !1800)
!1805 = !DILocation(line: 450, column: 13, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1800, file: !679, line: 450, column: 13)
!1807 = !DILocation(line: 450, column: 13, scope: !1800)
!1808 = !DILocation(line: 451, column: 5, scope: !1806)
!1809 = distinct !{!1809, !1776}
!1810 = !DILocation(line: 452, column: 4, scope: !1800)
!1811 = !DILocation(line: 455, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1793, file: !679, line: 455, column: 8)
!1813 = !DILocation(line: 455, column: 8, scope: !1812)
!1814 = !DILocation(line: 455, column: 13, scope: !1812)
!1815 = !DILocation(line: 455, column: 8, scope: !1793)
!1816 = !DILocation(line: 456, column: 8, scope: !1812)
!1817 = !DILocation(line: 456, column: 5, scope: !1812)
!1818 = !DILocation(line: 457, column: 3, scope: !1793)
!1819 = !DILocation(line: 459, column: 31, scope: !1784)
!1820 = !DILocation(line: 459, column: 10, scope: !1784)
!1821 = !DILocation(line: 459, column: 7, scope: !1784)
!1822 = !DILocation(line: 444, column: 2, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1741, file: !679, discriminator: 2)
!1824 = !DILocation(line: 462, column: 16, scope: !1741)
!1825 = !DILocation(line: 462, column: 2, scope: !1741)
!1826 = !DILocation(line: 463, column: 9, scope: !1741)
!1827 = !DILocation(line: 463, column: 2, scope: !1741)
!1828 = !DILocation(line: 464, column: 1, scope: !1741)
!1829 = distinct !DISubprogram(name: "format_real_length", scope: !679, file: !679, line: 469, type: !1830, isLocal: false, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!325, !331, !325}
!1832 = !DILocalVariable(name: "str", arg: 1, scope: !1829, file: !679, line: 469, type: !331)
!1833 = !DILocation(line: 469, column: 36, scope: !1829)
!1834 = !DILocalVariable(name: "len", arg: 2, scope: !1829, file: !679, line: 469, type: !325)
!1835 = !DILocation(line: 469, column: 45, scope: !1829)
!1836 = !DILocalVariable(name: "tmp", scope: !1829, file: !679, line: 471, type: !541)
!1837 = !DILocation(line: 471, column: 11, scope: !1829)
!1838 = !DILocalVariable(name: "start", scope: !1829, file: !679, line: 472, type: !331)
!1839 = !DILocation(line: 472, column: 14, scope: !1829)
!1840 = !DILocalVariable(name: "oldstr", scope: !1829, file: !679, line: 473, type: !331)
!1841 = !DILocation(line: 473, column: 14, scope: !1829)
!1842 = !DILocalVariable(name: "utf8", scope: !1829, file: !679, line: 474, type: !325)
!1843 = !DILocation(line: 474, column: 6, scope: !1829)
!1844 = !DILocalVariable(name: "adv", scope: !1829, file: !679, line: 475, type: !325)
!1845 = !DILocation(line: 475, column: 6, scope: !1829)
!1846 = !DILocation(line: 476, column: 2, scope: !1829)
!1847 = distinct !{!1847, !1846}
!1848 = !DILocation(line: 476, column: 10, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1850, file: !679, discriminator: 1)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !679, line: 476, column: 10)
!1851 = distinct !DILexicalBlock(scope: !1829, file: !679, line: 476, column: 4)
!1852 = !DILocation(line: 476, column: 14, scope: !1849)
!1853 = !DILocation(line: 476, column: 5, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1855, file: !679, discriminator: 2)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !679, line: 476, column: 3)
!1856 = !DILocation(line: 476, column: 14, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !679, discriminator: 3)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !679, line: 476, column: 12)
!1859 = !DILocation(line: 476, column: 98, scope: !1857)
!1860 = !DILocation(line: 476, column: 113, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1851, file: !679, discriminator: 4)
!1862 = !DILocation(line: 477, column: 2, scope: !1829)
!1863 = distinct !{!1863, !1862}
!1864 = !DILocation(line: 477, column: 10, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !679, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !679, line: 477, column: 10)
!1867 = distinct !DILexicalBlock(scope: !1829, file: !679, line: 477, column: 4)
!1868 = !DILocation(line: 477, column: 14, scope: !1865)
!1869 = !DILocation(line: 477, column: 22, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !679, discriminator: 2)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !679, line: 477, column: 20)
!1872 = !DILocation(line: 477, column: 31, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !679, discriminator: 3)
!1874 = distinct !DILexicalBlock(scope: !1866, file: !679, line: 477, column: 29)
!1875 = !DILocation(line: 477, column: 112, scope: !1873)
!1876 = !DILocation(line: 477, column: 127, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1867, file: !679, discriminator: 4)
!1878 = !DILocation(line: 479, column: 23, scope: !1829)
!1879 = !DILocation(line: 479, column: 9, scope: !1829)
!1880 = !DILocation(line: 479, column: 7, scope: !1829)
!1881 = !DILocation(line: 481, column: 10, scope: !1829)
!1882 = !DILocation(line: 481, column: 8, scope: !1829)
!1883 = !DILocation(line: 482, column: 8, scope: !1829)
!1884 = !DILocation(line: 482, column: 6, scope: !1829)
!1885 = !DILocation(line: 483, column: 2, scope: !1829)
!1886 = !DILocation(line: 483, column: 10, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1829, file: !679, discriminator: 1)
!1888 = !DILocation(line: 483, column: 9, scope: !1887)
!1889 = !DILocation(line: 483, column: 14, scope: !1887)
!1890 = !DILocation(line: 483, column: 2, scope: !1887)
!1891 = !DILocation(line: 484, column: 12, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1829, file: !679, line: 483, column: 23)
!1893 = !DILocation(line: 484, column: 10, scope: !1892)
!1894 = !DILocation(line: 485, column: 8, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !679, line: 485, column: 7)
!1896 = !DILocation(line: 485, column: 7, scope: !1895)
!1897 = !DILocation(line: 485, column: 12, scope: !1895)
!1898 = !DILocation(line: 485, column: 19, scope: !1895)
!1899 = !DILocation(line: 485, column: 22, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1895, file: !679, discriminator: 1)
!1901 = !DILocation(line: 485, column: 29, scope: !1900)
!1902 = !DILocation(line: 485, column: 7, scope: !1900)
!1903 = !DILocation(line: 486, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !679, line: 485, column: 38)
!1905 = !DILocation(line: 487, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1904, file: !679, line: 487, column: 8)
!1907 = !DILocation(line: 487, column: 8, scope: !1906)
!1908 = !DILocation(line: 487, column: 13, scope: !1906)
!1909 = !DILocation(line: 487, column: 8, scope: !1904)
!1910 = !DILocation(line: 488, column: 36, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !679, line: 487, column: 21)
!1912 = !DILocation(line: 488, column: 15, scope: !1911)
!1913 = !DILocation(line: 488, column: 13, scope: !1911)
!1914 = !DILocation(line: 489, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !679, line: 489, column: 13)
!1916 = !DILocation(line: 489, column: 13, scope: !1911)
!1917 = !DILocation(line: 490, column: 17, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !679, line: 489, column: 18)
!1919 = !DILocation(line: 490, column: 14, scope: !1918)
!1920 = !DILocation(line: 491, column: 10, scope: !1918)
!1921 = distinct !{!1921, !1885}
!1922 = !DILocation(line: 494, column: 13, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1911, file: !679, line: 494, column: 13)
!1924 = !DILocation(line: 494, column: 19, scope: !1923)
!1925 = !DILocation(line: 494, column: 13, scope: !1911)
!1926 = !DILocation(line: 495, column: 16, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !679, line: 494, column: 24)
!1928 = !DILocation(line: 495, column: 14, scope: !1927)
!1929 = !DILocation(line: 496, column: 10, scope: !1927)
!1930 = !DILocation(line: 498, column: 18, scope: !1911)
!1931 = !DILocation(line: 498, column: 16, scope: !1911)
!1932 = !DILocation(line: 499, column: 4, scope: !1911)
!1933 = !DILocation(line: 500, column: 3, scope: !1904)
!1934 = !DILocation(line: 502, column: 31, scope: !1892)
!1935 = !DILocation(line: 502, column: 10, scope: !1892)
!1936 = !DILocation(line: 502, column: 7, scope: !1892)
!1937 = !DILocation(line: 503, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1892, file: !679, line: 503, column: 7)
!1939 = !DILocation(line: 503, column: 11, scope: !1938)
!1940 = !DILocation(line: 503, column: 7, scope: !1892)
!1941 = !DILocation(line: 504, column: 10, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !679, line: 503, column: 16)
!1943 = !DILocation(line: 504, column: 8, scope: !1942)
!1944 = !DILocation(line: 505, column: 4, scope: !1942)
!1945 = !DILocation(line: 483, column: 2, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1829, file: !679, discriminator: 2)
!1947 = !DILocation(line: 509, column: 16, scope: !1829)
!1948 = !DILocation(line: 509, column: 2, scope: !1829)
!1949 = !DILocation(line: 510, column: 16, scope: !1829)
!1950 = !DILocation(line: 510, column: 20, scope: !1829)
!1951 = !DILocation(line: 510, column: 19, scope: !1829)
!1952 = !DILocation(line: 510, column: 9, scope: !1829)
!1953 = !DILocation(line: 510, column: 2, scope: !1829)
!1954 = !DILocation(line: 511, column: 1, scope: !1829)
!1955 = distinct !DISubprogram(name: "format_string_expand", scope: !679, file: !679, line: 513, type: !1956, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!333, !331, !711}
!1958 = !DILocalVariable(name: "text", arg: 1, scope: !1955, file: !679, line: 513, type: !331)
!1959 = !DILocation(line: 513, column: 40, scope: !1955)
!1960 = !DILocalVariable(name: "flags", arg: 2, scope: !1955, file: !679, line: 513, type: !711)
!1961 = !DILocation(line: 513, column: 51, scope: !1955)
!1962 = !DILocalVariable(name: "out", scope: !1955, file: !679, line: 515, type: !541)
!1963 = !DILocation(line: 515, column: 11, scope: !1955)
!1964 = !DILocalVariable(name: "code", scope: !1955, file: !679, line: 516, type: !327)
!1965 = !DILocation(line: 516, column: 7, scope: !1955)
!1966 = !DILocalVariable(name: "ret", scope: !1955, file: !679, line: 516, type: !333)
!1967 = !DILocation(line: 516, column: 14, scope: !1955)
!1968 = !DILocalVariable(name: "adv", scope: !1955, file: !679, line: 517, type: !325)
!1969 = !DILocation(line: 517, column: 6, scope: !1955)
!1970 = !DILocation(line: 519, column: 2, scope: !1955)
!1971 = distinct !{!1971, !1970}
!1972 = !DILocation(line: 519, column: 10, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1974, file: !679, discriminator: 1)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !679, line: 519, column: 10)
!1975 = distinct !DILexicalBlock(scope: !1955, file: !679, line: 519, column: 4)
!1976 = !DILocation(line: 519, column: 15, scope: !1973)
!1977 = !DILocation(line: 519, column: 5, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1979, file: !679, discriminator: 2)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !679, line: 519, column: 3)
!1980 = !DILocation(line: 519, column: 14, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !679, discriminator: 3)
!1982 = distinct !DILexicalBlock(scope: !1974, file: !679, line: 519, column: 12)
!1983 = !DILocation(line: 519, column: 99, scope: !1981)
!1984 = !DILocation(line: 519, column: 7, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1975, file: !679, discriminator: 4)
!1986 = !DILocation(line: 521, column: 8, scope: !1955)
!1987 = !DILocation(line: 521, column: 6, scope: !1955)
!1988 = !DILocation(line: 523, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1955, file: !679, line: 523, column: 6)
!1990 = !DILocation(line: 523, column: 12, scope: !1989)
!1991 = !DILocation(line: 523, column: 6, scope: !1955)
!1992 = !DILocation(line: 523, column: 21, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1989, file: !679, discriminator: 1)
!1994 = !DILocation(line: 523, column: 27, scope: !1993)
!1995 = !DILocation(line: 523, column: 20, scope: !1993)
!1996 = !DILocation(line: 524, column: 7, scope: !1955)
!1997 = !DILocation(line: 525, column: 2, scope: !1955)
!1998 = !DILocation(line: 525, column: 10, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1955, file: !679, discriminator: 1)
!2000 = !DILocation(line: 525, column: 9, scope: !1999)
!2001 = !DILocation(line: 525, column: 15, scope: !1999)
!2002 = !DILocation(line: 525, column: 2, scope: !1999)
!2003 = !DILocation(line: 526, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !679, line: 526, column: 7)
!2005 = distinct !DILexicalBlock(scope: !1955, file: !679, line: 525, column: 24)
!2006 = !DILocation(line: 526, column: 12, scope: !2004)
!2007 = !DILocation(line: 526, column: 7, scope: !2005)
!2008 = !DILocation(line: 528, column: 31, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !679, line: 526, column: 20)
!2010 = !DILocation(line: 528, column: 43, scope: !2009)
!2011 = !DILocation(line: 528, column: 10, scope: !2009)
!2012 = !DILocation(line: 528, column: 8, scope: !2009)
!2013 = !DILocation(line: 529, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !679, line: 529, column: 8)
!2015 = !DILocation(line: 529, column: 8, scope: !2009)
!2016 = !DILocation(line: 530, column: 31, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !679, line: 529, column: 14)
!2018 = !DILocation(line: 530, column: 5, scope: !2017)
!2019 = !DILocation(line: 531, column: 31, scope: !2017)
!2020 = !DILocation(line: 531, column: 5, scope: !2017)
!2021 = !DILocation(line: 532, column: 31, scope: !2017)
!2022 = !DILocation(line: 532, column: 37, scope: !2017)
!2023 = !DILocation(line: 532, column: 36, scope: !2017)
!2024 = !DILocation(line: 532, column: 5, scope: !2017)
!2025 = !DILocation(line: 533, column: 4, scope: !2017)
!2026 = !DILocation(line: 534, column: 14, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2014, file: !679, line: 533, column: 11)
!2028 = !DILocation(line: 534, column: 18, scope: !2027)
!2029 = !DILocation(line: 534, column: 11, scope: !2027)
!2030 = !DILocation(line: 536, column: 9, scope: !2009)
!2031 = !DILocation(line: 537, column: 3, scope: !2009)
!2032 = !DILocation(line: 538, column: 9, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !679, line: 538, column: 8)
!2034 = distinct !DILexicalBlock(scope: !2004, file: !679, line: 537, column: 10)
!2035 = !DILocation(line: 538, column: 8, scope: !2033)
!2036 = !DILocation(line: 538, column: 14, scope: !2033)
!2037 = !DILocation(line: 538, column: 8, scope: !2034)
!2038 = !DILocation(line: 539, column: 13, scope: !2033)
!2039 = !DILocation(line: 539, column: 12, scope: !2033)
!2040 = !DILocation(line: 539, column: 10, scope: !2033)
!2041 = !DILocation(line: 539, column: 5, scope: !2033)
!2042 = !DILocation(line: 541, column: 31, scope: !2033)
!2043 = !DILocation(line: 541, column: 37, scope: !2033)
!2044 = !DILocation(line: 541, column: 36, scope: !2033)
!2045 = !DILocation(line: 541, column: 5, scope: !2033)
!2046 = !DILocation(line: 544, column: 7, scope: !2005)
!2047 = !DILocation(line: 525, column: 2, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !1955, file: !679, discriminator: 2)
!2049 = distinct !{!2049, !1997}
!2050 = !DILocation(line: 547, column: 8, scope: !1955)
!2051 = !DILocation(line: 547, column: 13, scope: !1955)
!2052 = !DILocation(line: 547, column: 6, scope: !1955)
!2053 = !DILocation(line: 548, column: 16, scope: !1955)
!2054 = !DILocation(line: 548, column: 2, scope: !1955)
!2055 = !DILocation(line: 549, column: 9, scope: !1955)
!2056 = !DILocation(line: 549, column: 2, scope: !1955)
!2057 = !DILocation(line: 550, column: 1, scope: !1955)
!2058 = distinct !DISubprogram(name: "format_get_text_theme", scope: !679, file: !679, line: 613, type: !2059, isLocal: false, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!333, !692, !331, !1581, !325, null}
!2061 = !DILocalVariable(name: "theme", arg: 1, scope: !2058, file: !679, line: 613, type: !692)
!2062 = !DILocation(line: 613, column: 40, scope: !2058)
!2063 = !DILocalVariable(name: "module", arg: 2, scope: !2058, file: !679, line: 613, type: !331)
!2064 = !DILocation(line: 613, column: 59, scope: !2058)
!2065 = !DILocalVariable(name: "dest", arg: 3, scope: !2058, file: !679, line: 614, type: !1581)
!2066 = !DILocation(line: 614, column: 23, scope: !2058)
!2067 = !DILocalVariable(name: "formatnum", arg: 4, scope: !2058, file: !679, line: 614, type: !325)
!2068 = !DILocation(line: 614, column: 33, scope: !2058)
!2069 = !DILocalVariable(name: "va", scope: !2058, file: !679, line: 616, type: !2070)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2071, line: 79, baseType: !2072)
!2071 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2073, line: 40, baseType: !2074)
!2073 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 616, baseType: !2075)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 192, align: 64, elements: !2076)
!2076 = !{!2077}
!2077 = !DISubrange(count: 1)
!2078 = !DILocation(line: 616, column: 10, scope: !2058)
!2079 = !DILocalVariable(name: "str", scope: !2058, file: !679, line: 617, type: !333)
!2080 = !DILocation(line: 617, column: 8, scope: !2058)
!2081 = !DILocation(line: 619, column: 6, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2058, file: !679, line: 619, column: 6)
!2083 = !DILocation(line: 619, column: 12, scope: !2082)
!2084 = !DILocation(line: 619, column: 6, scope: !2058)
!2085 = !DILocation(line: 620, column: 12, scope: !2082)
!2086 = !DILocation(line: 620, column: 18, scope: !2082)
!2087 = !DILocation(line: 620, column: 25, scope: !2082)
!2088 = !DILocation(line: 620, column: 10, scope: !2082)
!2089 = !DILocation(line: 620, column: 14, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2082, file: !679, discriminator: 1)
!2091 = !DILocation(line: 620, column: 20, scope: !2090)
!2092 = !DILocation(line: 620, column: 29, scope: !2090)
!2093 = !DILocation(line: 620, column: 35, scope: !2090)
!2094 = !DILocation(line: 620, column: 12, scope: !2090)
!2095 = !DILocation(line: 620, column: 13, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2082, file: !679, discriminator: 2)
!2097 = !DILocation(line: 620, column: 19, scope: !2096)
!2098 = !DILocation(line: 620, column: 28, scope: !2096)
!2099 = !DILocation(line: 620, column: 12, scope: !2096)
!2100 = !DILocation(line: 620, column: 36, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2082, file: !679, discriminator: 3)
!2102 = !DILocation(line: 620, column: 12, scope: !2101)
!2103 = !DILocation(line: 620, column: 12, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2082, file: !679, discriminator: 4)
!2105 = !DILocation(line: 620, column: 11, scope: !2104)
!2106 = !DILocation(line: 620, column: 9, scope: !2104)
!2107 = !DILocation(line: 620, column: 3, scope: !2104)
!2108 = !DILocation(line: 622, column: 1, scope: !2058)
!2109 = !DILocation(line: 623, column: 35, scope: !2058)
!2110 = !DILocation(line: 623, column: 42, scope: !2058)
!2111 = !DILocation(line: 623, column: 50, scope: !2058)
!2112 = !DILocation(line: 623, column: 56, scope: !2058)
!2113 = !DILocation(line: 623, column: 67, scope: !2058)
!2114 = !DILocation(line: 623, column: 8, scope: !2058)
!2115 = !DILocation(line: 623, column: 6, scope: !2058)
!2116 = !DILocation(line: 624, column: 1, scope: !2058)
!2117 = !DILocation(line: 626, column: 9, scope: !2058)
!2118 = !DILocation(line: 626, column: 2, scope: !2058)
!2119 = distinct !DISubprogram(name: "format_get_text_theme_args", scope: !679, file: !679, line: 629, type: !2120, isLocal: false, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!333, !692, !331, !1581, !325, !1368}
!2122 = !DILocalVariable(name: "theme", arg: 1, scope: !2119, file: !679, line: 629, type: !692)
!2123 = !DILocation(line: 629, column: 45, scope: !2119)
!2124 = !DILocalVariable(name: "module", arg: 2, scope: !2119, file: !679, line: 629, type: !331)
!2125 = !DILocation(line: 629, column: 64, scope: !2119)
!2126 = !DILocalVariable(name: "dest", arg: 3, scope: !2119, file: !679, line: 630, type: !1581)
!2127 = !DILocation(line: 630, column: 21, scope: !2119)
!2128 = !DILocalVariable(name: "formatnum", arg: 4, scope: !2119, file: !679, line: 630, type: !325)
!2129 = !DILocation(line: 630, column: 31, scope: !2119)
!2130 = !DILocalVariable(name: "va", arg: 5, scope: !2119, file: !679, line: 631, type: !1368)
!2131 = !DILocation(line: 631, column: 14, scope: !2119)
!2132 = !DILocalVariable(name: "arglist", scope: !2119, file: !679, line: 633, type: !2133)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 640, align: 64, elements: !736)
!2134 = !DILocation(line: 633, column: 8, scope: !2119)
!2135 = !DILocalVariable(name: "buffer", scope: !2119, file: !679, line: 634, type: !2136)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 1600, align: 8, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 200)
!2139 = !DILocation(line: 634, column: 7, scope: !2119)
!2140 = !DILocalVariable(name: "formats", scope: !2119, file: !679, line: 635, type: !726)
!2141 = !DILocation(line: 635, column: 14, scope: !2119)
!2142 = !DILocation(line: 637, column: 32, scope: !2119)
!2143 = !DILocation(line: 637, column: 49, scope: !2119)
!2144 = !DILocation(line: 637, column: 12, scope: !2119)
!2145 = !DILocation(line: 637, column: 10, scope: !2119)
!2146 = !DILocation(line: 638, column: 22, scope: !2119)
!2147 = !DILocation(line: 638, column: 35, scope: !2119)
!2148 = !DILocation(line: 638, column: 27, scope: !2119)
!2149 = !DILocation(line: 639, column: 8, scope: !2119)
!2150 = !DILocation(line: 640, column: 8, scope: !2119)
!2151 = !DILocation(line: 638, column: 2, scope: !2119)
!2152 = !DILocation(line: 642, column: 40, scope: !2119)
!2153 = !DILocation(line: 642, column: 47, scope: !2119)
!2154 = !DILocation(line: 642, column: 55, scope: !2119)
!2155 = !DILocation(line: 643, column: 12, scope: !2119)
!2156 = !DILocation(line: 643, column: 23, scope: !2119)
!2157 = !DILocation(line: 642, column: 9, scope: !2119)
!2158 = !DILocation(line: 642, column: 2, scope: !2119)
!2159 = distinct !DISubprogram(name: "format_get_text_theme_charargs", scope: !679, file: !679, line: 646, type: !2160, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!333, !692, !331, !1581, !325, !648}
!2162 = !DILocalVariable(name: "theme", arg: 1, scope: !2159, file: !679, line: 646, type: !692)
!2163 = !DILocation(line: 646, column: 49, scope: !2159)
!2164 = !DILocalVariable(name: "module", arg: 2, scope: !2159, file: !679, line: 646, type: !331)
!2165 = !DILocation(line: 646, column: 68, scope: !2159)
!2166 = !DILocalVariable(name: "dest", arg: 3, scope: !2159, file: !679, line: 647, type: !1581)
!2167 = !DILocation(line: 647, column: 25, scope: !2159)
!2168 = !DILocalVariable(name: "formatnum", arg: 4, scope: !2159, file: !679, line: 647, type: !325)
!2169 = !DILocation(line: 647, column: 35, scope: !2159)
!2170 = !DILocalVariable(name: "args", arg: 5, scope: !2159, file: !679, line: 648, type: !648)
!2171 = !DILocation(line: 648, column: 17, scope: !2159)
!2172 = !DILocalVariable(name: "module_theme", scope: !2159, file: !679, line: 650, type: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64, align: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_THEME_REC", file: !694, line: 11, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !694, line: 4, size: 256, align: 64, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2175, file: !694, line: 5, baseType: !333, size: 64, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2175, file: !694, line: 7, baseType: !325, size: 32, align: 32, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !2175, file: !694, line: 8, baseType: !648, size: 64, align: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "expanded_formats", scope: !2175, file: !694, line: 9, baseType: !648, size: 64, align: 64, offset: 192)
!2181 = !DILocation(line: 650, column: 20, scope: !2159)
!2182 = !DILocalVariable(name: "text", scope: !2159, file: !679, line: 651, type: !333)
!2183 = !DILocation(line: 651, column: 8, scope: !2159)
!2184 = !DILocation(line: 653, column: 37, scope: !2159)
!2185 = !DILocation(line: 653, column: 44, scope: !2159)
!2186 = !DILocation(line: 653, column: 53, scope: !2159)
!2187 = !DILocation(line: 653, column: 17, scope: !2159)
!2188 = !DILocation(line: 653, column: 15, scope: !2159)
!2189 = !DILocation(line: 654, column: 6, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2159, file: !679, line: 654, column: 6)
!2191 = !DILocation(line: 654, column: 19, scope: !2190)
!2192 = !DILocation(line: 654, column: 6, scope: !2159)
!2193 = !DILocation(line: 655, column: 3, scope: !2190)
!2194 = !DILocation(line: 657, column: 40, scope: !2159)
!2195 = !DILocation(line: 657, column: 9, scope: !2159)
!2196 = !DILocation(line: 657, column: 23, scope: !2159)
!2197 = !DILocation(line: 657, column: 7, scope: !2159)
!2198 = !DILocation(line: 658, column: 30, scope: !2159)
!2199 = !DILocation(line: 658, column: 36, scope: !2159)
!2200 = !DILocation(line: 658, column: 42, scope: !2159)
!2201 = !DILocation(line: 658, column: 9, scope: !2159)
!2202 = !DILocation(line: 658, column: 2, scope: !2159)
!2203 = !DILocation(line: 659, column: 1, scope: !2159)
!2204 = distinct !DISubprogram(name: "format_get_text_args", scope: !679, file: !679, line: 552, type: !2205, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!333, !1581, !331, !648}
!2207 = !DILocalVariable(name: "dest", arg: 1, scope: !2204, file: !679, line: 552, type: !1581)
!2208 = !DILocation(line: 552, column: 50, scope: !2204)
!2209 = !DILocalVariable(name: "text", arg: 2, scope: !2204, file: !679, line: 553, type: !331)
!2210 = !DILocation(line: 553, column: 19, scope: !2204)
!2211 = !DILocalVariable(name: "arglist", arg: 3, scope: !2204, file: !679, line: 553, type: !648)
!2212 = !DILocation(line: 553, column: 32, scope: !2204)
!2213 = !DILocalVariable(name: "out", scope: !2204, file: !679, line: 555, type: !541)
!2214 = !DILocation(line: 555, column: 11, scope: !2204)
!2215 = !DILocalVariable(name: "code", scope: !2204, file: !679, line: 556, type: !327)
!2216 = !DILocation(line: 556, column: 7, scope: !2204)
!2217 = !DILocalVariable(name: "ret", scope: !2204, file: !679, line: 556, type: !333)
!2218 = !DILocation(line: 556, column: 14, scope: !2204)
!2219 = !DILocalVariable(name: "need_free", scope: !2204, file: !679, line: 557, type: !325)
!2220 = !DILocation(line: 557, column: 6, scope: !2204)
!2221 = !DILocalVariable(name: "adv", scope: !2204, file: !679, line: 558, type: !325)
!2222 = !DILocation(line: 558, column: 6, scope: !2204)
!2223 = !DILocation(line: 560, column: 8, scope: !2204)
!2224 = !DILocation(line: 560, column: 6, scope: !2204)
!2225 = !DILocation(line: 562, column: 7, scope: !2204)
!2226 = !DILocation(line: 563, column: 2, scope: !2204)
!2227 = !DILocation(line: 563, column: 10, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2204, file: !679, discriminator: 1)
!2229 = !DILocation(line: 563, column: 9, scope: !2228)
!2230 = !DILocation(line: 563, column: 15, scope: !2228)
!2231 = !DILocation(line: 563, column: 2, scope: !2228)
!2232 = !DILocation(line: 564, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !679, line: 564, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2204, file: !679, line: 563, column: 24)
!2235 = !DILocation(line: 564, column: 12, scope: !2233)
!2236 = !DILocation(line: 564, column: 7, scope: !2234)
!2237 = !DILocation(line: 566, column: 31, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !679, line: 564, column: 20)
!2239 = !DILocation(line: 566, column: 44, scope: !2238)
!2240 = !DILocation(line: 566, column: 50, scope: !2238)
!2241 = !DILocation(line: 566, column: 10, scope: !2238)
!2242 = !DILocation(line: 566, column: 8, scope: !2238)
!2243 = !DILocation(line: 567, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !679, line: 567, column: 8)
!2245 = !DILocation(line: 567, column: 8, scope: !2238)
!2246 = !DILocation(line: 568, column: 31, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !679, line: 567, column: 14)
!2248 = !DILocation(line: 568, column: 5, scope: !2247)
!2249 = !DILocation(line: 569, column: 31, scope: !2247)
!2250 = !DILocation(line: 569, column: 5, scope: !2247)
!2251 = !DILocation(line: 570, column: 31, scope: !2247)
!2252 = !DILocation(line: 570, column: 37, scope: !2247)
!2253 = !DILocation(line: 570, column: 36, scope: !2247)
!2254 = !DILocation(line: 570, column: 5, scope: !2247)
!2255 = !DILocation(line: 571, column: 4, scope: !2247)
!2256 = !DILocation(line: 572, column: 13, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2244, file: !679, line: 571, column: 11)
!2258 = !DILocation(line: 572, column: 17, scope: !2257)
!2259 = !DILocation(line: 572, column: 10, scope: !2257)
!2260 = !DILocation(line: 574, column: 9, scope: !2238)
!2261 = !DILocation(line: 575, column: 3, scope: !2238)
!2262 = !DILocation(line: 575, column: 14, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2264, file: !679, discriminator: 1)
!2264 = distinct !DILexicalBlock(scope: !2233, file: !679, line: 575, column: 14)
!2265 = !DILocation(line: 575, column: 19, scope: !2263)
!2266 = !DILocalVariable(name: "ret", scope: !2267, file: !679, line: 577, type: !333)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !679, line: 575, column: 27)
!2268 = !DILocation(line: 577, column: 10, scope: !2267)
!2269 = !DILocation(line: 579, column: 41, scope: !2267)
!2270 = !DILocation(line: 579, column: 47, scope: !2267)
!2271 = !DILocation(line: 580, column: 10, scope: !2267)
!2272 = !DILocation(line: 580, column: 16, scope: !2267)
!2273 = !DILocation(line: 580, column: 23, scope: !2267)
!2274 = !DILocation(line: 580, column: 10, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2267, file: !679, discriminator: 1)
!2276 = !DILocation(line: 581, column: 27, scope: !2267)
!2277 = !DILocation(line: 581, column: 33, scope: !2267)
!2278 = !DILocation(line: 581, column: 41, scope: !2267)
!2279 = !DILocation(line: 581, column: 47, scope: !2267)
!2280 = !DILocation(line: 581, column: 10, scope: !2267)
!2281 = !DILocation(line: 580, column: 10, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2267, file: !679, discriminator: 2)
!2283 = !DILocation(line: 580, column: 10, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2267, file: !679, discriminator: 3)
!2285 = !DILocation(line: 582, column: 10, scope: !2267)
!2286 = !DILocation(line: 579, column: 10, scope: !2275)
!2287 = !DILocation(line: 579, column: 8, scope: !2275)
!2288 = !DILocation(line: 584, column: 8, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2267, file: !679, line: 584, column: 8)
!2290 = !DILocation(line: 584, column: 12, scope: !2289)
!2291 = !DILocation(line: 584, column: 8, scope: !2267)
!2292 = !DILocalVariable(name: "diff", scope: !2293, file: !679, line: 587, type: !325)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !679, line: 584, column: 20)
!2294 = !DILocation(line: 587, column: 9, scope: !2293)
!2295 = !DILocalVariable(name: "len", scope: !2293, file: !679, line: 588, type: !325)
!2296 = !DILocation(line: 588, column: 9, scope: !2293)
!2297 = !DILocation(line: 588, column: 22, scope: !2293)
!2298 = !DILocation(line: 588, column: 15, scope: !2293)
!2299 = !DILocation(line: 589, column: 5, scope: !2293)
!2300 = !DILocation(line: 589, column: 12, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2293, file: !679, discriminator: 1)
!2302 = !DILocation(line: 589, column: 16, scope: !2301)
!2303 = !DILocation(line: 589, column: 20, scope: !2301)
!2304 = !DILocation(line: 589, column: 27, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2293, file: !679, discriminator: 2)
!2306 = !DILocation(line: 589, column: 30, scope: !2305)
!2307 = !DILocation(line: 589, column: 23, scope: !2305)
!2308 = !DILocation(line: 589, column: 34, scope: !2305)
!2309 = !DILocation(line: 589, column: 5, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2293, file: !679, discriminator: 3)
!2311 = !DILocation(line: 589, column: 43, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2293, file: !679, discriminator: 4)
!2313 = !DILocation(line: 589, column: 5, scope: !2312)
!2314 = distinct !{!2314, !2299}
!2315 = !DILocation(line: 590, column: 19, scope: !2293)
!2316 = !DILocation(line: 590, column: 12, scope: !2293)
!2317 = !DILocation(line: 590, column: 24, scope: !2293)
!2318 = !DILocation(line: 590, column: 23, scope: !2293)
!2319 = !DILocation(line: 590, column: 10, scope: !2293)
!2320 = !DILocation(line: 592, column: 21, scope: !2293)
!2321 = !DILocation(line: 592, column: 26, scope: !2293)
!2322 = !DILocation(line: 592, column: 5, scope: !2293)
!2323 = !DILocation(line: 593, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2293, file: !679, line: 593, column: 9)
!2325 = !DILocation(line: 593, column: 14, scope: !2324)
!2326 = !DILocation(line: 593, column: 9, scope: !2293)
!2327 = !DILocation(line: 594, column: 24, scope: !2324)
!2328 = !DILocation(line: 594, column: 29, scope: !2324)
!2329 = !DILocation(line: 594, column: 34, scope: !2324)
!2330 = !DILocation(line: 594, column: 38, scope: !2324)
!2331 = !DILocation(line: 594, column: 37, scope: !2324)
!2332 = !DILocation(line: 594, column: 6, scope: !2324)
!2333 = !DILocation(line: 595, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2293, file: !679, line: 595, column: 9)
!2335 = !DILocation(line: 595, column: 9, scope: !2293)
!2336 = !DILocation(line: 595, column: 27, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2334, file: !679, discriminator: 1)
!2338 = !DILocation(line: 595, column: 20, scope: !2337)
!2339 = !DILocation(line: 596, column: 4, scope: !2293)
!2340 = !DILocation(line: 597, column: 9, scope: !2267)
!2341 = !DILocation(line: 598, column: 3, scope: !2267)
!2342 = !DILocation(line: 599, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !679, line: 599, column: 8)
!2344 = distinct !DILexicalBlock(scope: !2264, file: !679, line: 598, column: 10)
!2345 = !DILocation(line: 599, column: 8, scope: !2343)
!2346 = !DILocation(line: 599, column: 14, scope: !2343)
!2347 = !DILocation(line: 599, column: 21, scope: !2343)
!2348 = !DILocation(line: 599, column: 25, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2343, file: !679, discriminator: 1)
!2350 = !DILocation(line: 599, column: 24, scope: !2349)
!2351 = !DILocation(line: 599, column: 30, scope: !2349)
!2352 = !DILocation(line: 599, column: 8, scope: !2349)
!2353 = !DILocation(line: 600, column: 13, scope: !2343)
!2354 = !DILocation(line: 600, column: 12, scope: !2343)
!2355 = !DILocation(line: 600, column: 10, scope: !2343)
!2356 = !DILocation(line: 600, column: 5, scope: !2343)
!2357 = !DILocation(line: 602, column: 31, scope: !2343)
!2358 = !DILocation(line: 602, column: 37, scope: !2343)
!2359 = !DILocation(line: 602, column: 36, scope: !2343)
!2360 = !DILocation(line: 602, column: 5, scope: !2343)
!2361 = !DILocation(line: 605, column: 7, scope: !2234)
!2362 = !DILocation(line: 563, column: 2, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2204, file: !679, discriminator: 2)
!2364 = distinct !{!2364, !2226}
!2365 = !DILocation(line: 608, column: 8, scope: !2204)
!2366 = !DILocation(line: 608, column: 13, scope: !2204)
!2367 = !DILocation(line: 608, column: 6, scope: !2204)
!2368 = !DILocation(line: 609, column: 16, scope: !2204)
!2369 = !DILocation(line: 609, column: 2, scope: !2204)
!2370 = !DILocation(line: 610, column: 9, scope: !2204)
!2371 = !DILocation(line: 610, column: 2, scope: !2204)
!2372 = distinct !DISubprogram(name: "format_get_text", scope: !679, file: !679, line: 661, type: !2373, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!333, !331, !1586, !324, !331, !325, null}
!2375 = !DILocalVariable(name: "module", arg: 1, scope: !2372, file: !679, line: 661, type: !331)
!2376 = !DILocation(line: 661, column: 35, scope: !2372)
!2377 = !DILocalVariable(name: "window", arg: 2, scope: !2372, file: !679, line: 661, type: !1586)
!2378 = !DILocation(line: 661, column: 55, scope: !2372)
!2379 = !DILocalVariable(name: "server", arg: 3, scope: !2372, file: !679, line: 662, type: !324)
!2380 = !DILocation(line: 662, column: 15, scope: !2372)
!2381 = !DILocalVariable(name: "target", arg: 4, scope: !2372, file: !679, line: 662, type: !331)
!2382 = !DILocation(line: 662, column: 35, scope: !2372)
!2383 = !DILocalVariable(name: "formatnum", arg: 5, scope: !2372, file: !679, line: 663, type: !325)
!2384 = !DILocation(line: 663, column: 13, scope: !2372)
!2385 = !DILocalVariable(name: "dest", scope: !2372, file: !679, line: 665, type: !1582)
!2386 = !DILocation(line: 665, column: 16, scope: !2372)
!2387 = !DILocalVariable(name: "theme", scope: !2372, file: !679, line: 666, type: !692)
!2388 = !DILocation(line: 666, column: 13, scope: !2372)
!2389 = !DILocalVariable(name: "va", scope: !2372, file: !679, line: 667, type: !2070)
!2390 = !DILocation(line: 667, column: 10, scope: !2372)
!2391 = !DILocalVariable(name: "str", scope: !2372, file: !679, line: 668, type: !333)
!2392 = !DILocation(line: 668, column: 8, scope: !2372)
!2393 = !DILocation(line: 670, column: 28, scope: !2372)
!2394 = !DILocation(line: 670, column: 36, scope: !2372)
!2395 = !DILocation(line: 670, column: 47, scope: !2372)
!2396 = !DILocation(line: 670, column: 2, scope: !2372)
!2397 = !DILocation(line: 671, column: 16, scope: !2372)
!2398 = !DILocation(line: 671, column: 23, scope: !2372)
!2399 = !DILocation(line: 671, column: 9, scope: !2372)
!2400 = !DILocation(line: 671, column: 18, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2372, file: !679, discriminator: 1)
!2402 = !DILocation(line: 671, column: 27, scope: !2401)
!2403 = !DILocation(line: 671, column: 33, scope: !2401)
!2404 = !DILocation(line: 671, column: 11, scope: !2401)
!2405 = !DILocation(line: 671, column: 17, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2372, file: !679, discriminator: 2)
!2407 = !DILocation(line: 671, column: 26, scope: !2406)
!2408 = !DILocation(line: 671, column: 11, scope: !2406)
!2409 = !DILocation(line: 671, column: 34, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2372, file: !679, discriminator: 3)
!2411 = !DILocation(line: 671, column: 11, scope: !2410)
!2412 = !DILocation(line: 671, column: 11, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2372, file: !679, discriminator: 4)
!2414 = !DILocation(line: 671, column: 10, scope: !2413)
!2415 = !DILocation(line: 671, column: 8, scope: !2413)
!2416 = !DILocation(line: 673, column: 1, scope: !2372)
!2417 = !DILocation(line: 674, column: 35, scope: !2372)
!2418 = !DILocation(line: 674, column: 42, scope: !2372)
!2419 = !DILocation(line: 674, column: 57, scope: !2372)
!2420 = !DILocation(line: 674, column: 68, scope: !2372)
!2421 = !DILocation(line: 674, column: 8, scope: !2372)
!2422 = !DILocation(line: 674, column: 6, scope: !2372)
!2423 = !DILocation(line: 675, column: 1, scope: !2372)
!2424 = !DILocation(line: 677, column: 9, scope: !2372)
!2425 = !DILocation(line: 677, column: 2, scope: !2372)
!2426 = distinct !DISubprogram(name: "format_add_linestart", scope: !679, file: !679, line: 682, type: !2427, isLocal: false, isDefinition: true, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!333, !331, !331}
!2429 = !DILocalVariable(name: "text", arg: 1, scope: !2426, file: !679, line: 682, type: !331)
!2430 = !DILocation(line: 682, column: 40, scope: !2426)
!2431 = !DILocalVariable(name: "linestart", arg: 2, scope: !2426, file: !679, line: 682, type: !331)
!2432 = !DILocation(line: 682, column: 58, scope: !2426)
!2433 = !DILocalVariable(name: "str", scope: !2426, file: !679, line: 684, type: !541)
!2434 = !DILocation(line: 684, column: 11, scope: !2426)
!2435 = !DILocalVariable(name: "ret", scope: !2426, file: !679, line: 685, type: !333)
!2436 = !DILocation(line: 685, column: 8, scope: !2426)
!2437 = !DILocation(line: 687, column: 6, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2426, file: !679, line: 687, column: 6)
!2439 = !DILocation(line: 687, column: 16, scope: !2438)
!2440 = !DILocation(line: 687, column: 6, scope: !2426)
!2441 = !DILocation(line: 688, column: 19, scope: !2438)
!2442 = !DILocation(line: 688, column: 10, scope: !2438)
!2443 = !DILocation(line: 688, column: 3, scope: !2438)
!2444 = !DILocation(line: 690, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2426, file: !679, line: 690, column: 6)
!2446 = !DILocation(line: 690, column: 6, scope: !2445)
!2447 = !DILocation(line: 690, column: 25, scope: !2445)
!2448 = !DILocation(line: 690, column: 6, scope: !2426)
!2449 = !DILocation(line: 691, column: 22, scope: !2445)
!2450 = !DILocation(line: 691, column: 33, scope: !2445)
!2451 = !DILocation(line: 691, column: 10, scope: !2445)
!2452 = !DILocation(line: 691, column: 3, scope: !2445)
!2453 = !DILocation(line: 693, column: 21, scope: !2426)
!2454 = !DILocation(line: 693, column: 8, scope: !2426)
!2455 = !DILocation(line: 693, column: 6, scope: !2426)
!2456 = !DILocation(line: 694, column: 2, scope: !2426)
!2457 = !DILocation(line: 694, column: 10, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2426, file: !679, discriminator: 1)
!2459 = !DILocation(line: 694, column: 9, scope: !2458)
!2460 = !DILocation(line: 694, column: 15, scope: !2458)
!2461 = !DILocation(line: 694, column: 2, scope: !2458)
!2462 = !DILocation(line: 695, column: 29, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2426, file: !679, line: 694, column: 24)
!2464 = !DILocation(line: 695, column: 35, scope: !2463)
!2465 = !DILocation(line: 695, column: 34, scope: !2463)
!2466 = !DILocation(line: 695, column: 3, scope: !2463)
!2467 = !DILocation(line: 696, column: 8, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !679, line: 696, column: 7)
!2469 = !DILocation(line: 696, column: 7, scope: !2468)
!2470 = !DILocation(line: 696, column: 13, scope: !2468)
!2471 = !DILocation(line: 696, column: 7, scope: !2463)
!2472 = !DILocation(line: 697, column: 20, scope: !2468)
!2473 = !DILocation(line: 697, column: 25, scope: !2468)
!2474 = !DILocation(line: 697, column: 4, scope: !2468)
!2475 = !DILocation(line: 698, column: 7, scope: !2463)
!2476 = !DILocation(line: 694, column: 2, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2426, file: !679, discriminator: 2)
!2478 = distinct !{!2478, !2456}
!2479 = !DILocation(line: 701, column: 8, scope: !2426)
!2480 = !DILocation(line: 701, column: 13, scope: !2426)
!2481 = !DILocation(line: 701, column: 6, scope: !2426)
!2482 = !DILocation(line: 702, column: 16, scope: !2426)
!2483 = !DILocation(line: 702, column: 2, scope: !2426)
!2484 = !DILocation(line: 703, column: 9, scope: !2426)
!2485 = !DILocation(line: 703, column: 2, scope: !2426)
!2486 = !DILocation(line: 704, column: 1, scope: !2426)
!2487 = distinct !DISubprogram(name: "format_add_lineend", scope: !679, file: !679, line: 706, type: !2427, isLocal: false, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2488 = !DILocalVariable(name: "text", arg: 1, scope: !2487, file: !679, line: 706, type: !331)
!2489 = !DILocation(line: 706, column: 38, scope: !2487)
!2490 = !DILocalVariable(name: "linestart", arg: 2, scope: !2487, file: !679, line: 706, type: !331)
!2491 = !DILocation(line: 706, column: 56, scope: !2487)
!2492 = !DILocalVariable(name: "str", scope: !2487, file: !679, line: 708, type: !541)
!2493 = !DILocation(line: 708, column: 11, scope: !2487)
!2494 = !DILocalVariable(name: "ret", scope: !2487, file: !679, line: 709, type: !333)
!2495 = !DILocation(line: 709, column: 8, scope: !2487)
!2496 = !DILocation(line: 711, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2487, file: !679, line: 711, column: 6)
!2498 = !DILocation(line: 711, column: 16, scope: !2497)
!2499 = !DILocation(line: 711, column: 6, scope: !2487)
!2500 = !DILocation(line: 712, column: 19, scope: !2497)
!2501 = !DILocation(line: 712, column: 10, scope: !2497)
!2502 = !DILocation(line: 712, column: 3, scope: !2497)
!2503 = !DILocation(line: 714, column: 13, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2487, file: !679, line: 714, column: 6)
!2505 = !DILocation(line: 714, column: 6, scope: !2504)
!2506 = !DILocation(line: 714, column: 25, scope: !2504)
!2507 = !DILocation(line: 714, column: 6, scope: !2487)
!2508 = !DILocation(line: 715, column: 22, scope: !2504)
!2509 = !DILocation(line: 715, column: 28, scope: !2504)
!2510 = !DILocation(line: 715, column: 10, scope: !2504)
!2511 = !DILocation(line: 715, column: 3, scope: !2504)
!2512 = !DILocation(line: 717, column: 8, scope: !2487)
!2513 = !DILocation(line: 717, column: 6, scope: !2487)
!2514 = !DILocation(line: 718, column: 2, scope: !2487)
!2515 = !DILocation(line: 718, column: 10, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2487, file: !679, discriminator: 1)
!2517 = !DILocation(line: 718, column: 9, scope: !2516)
!2518 = !DILocation(line: 718, column: 15, scope: !2516)
!2519 = !DILocation(line: 718, column: 2, scope: !2516)
!2520 = !DILocation(line: 719, column: 8, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !679, line: 719, column: 7)
!2522 = distinct !DILexicalBlock(scope: !2487, file: !679, line: 718, column: 24)
!2523 = !DILocation(line: 719, column: 7, scope: !2521)
!2524 = !DILocation(line: 719, column: 13, scope: !2521)
!2525 = !DILocation(line: 719, column: 7, scope: !2522)
!2526 = !DILocation(line: 720, column: 20, scope: !2521)
!2527 = !DILocation(line: 720, column: 25, scope: !2521)
!2528 = !DILocation(line: 720, column: 4, scope: !2521)
!2529 = !DILocation(line: 721, column: 29, scope: !2522)
!2530 = !DILocation(line: 721, column: 35, scope: !2522)
!2531 = !DILocation(line: 721, column: 34, scope: !2522)
!2532 = !DILocation(line: 721, column: 3, scope: !2522)
!2533 = !DILocation(line: 722, column: 7, scope: !2522)
!2534 = !DILocation(line: 718, column: 2, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2487, file: !679, discriminator: 2)
!2536 = distinct !{!2536, !2514}
!2537 = !DILocation(line: 724, column: 18, scope: !2487)
!2538 = !DILocation(line: 724, column: 23, scope: !2487)
!2539 = !DILocation(line: 724, column: 2, scope: !2487)
!2540 = !DILocation(line: 726, column: 8, scope: !2487)
!2541 = !DILocation(line: 726, column: 13, scope: !2487)
!2542 = !DILocation(line: 726, column: 6, scope: !2487)
!2543 = !DILocation(line: 727, column: 16, scope: !2487)
!2544 = !DILocation(line: 727, column: 2, scope: !2487)
!2545 = !DILocation(line: 728, column: 9, scope: !2487)
!2546 = !DILocation(line: 728, column: 2, scope: !2487)
!2547 = !DILocation(line: 729, column: 1, scope: !2487)
!2548 = distinct !DISubprogram(name: "format_get_level_tag", scope: !679, file: !679, line: 740, type: !2549, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!333, !692, !1581}
!2551 = !DILocalVariable(name: "theme", arg: 1, scope: !2548, file: !679, line: 740, type: !692)
!2552 = !DILocation(line: 740, column: 39, scope: !2548)
!2553 = !DILocalVariable(name: "dest", arg: 2, scope: !2548, file: !679, line: 740, type: !1581)
!2554 = !DILocation(line: 740, column: 61, scope: !2548)
!2555 = !DILocalVariable(name: "format", scope: !2548, file: !679, line: 742, type: !325)
!2556 = !DILocation(line: 742, column: 6, scope: !2548)
!2557 = !DILocation(line: 745, column: 6, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2548, file: !679, line: 745, column: 6)
!2559 = !DILocation(line: 745, column: 12, scope: !2558)
!2560 = !DILocation(line: 745, column: 18, scope: !2558)
!2561 = !DILocation(line: 745, column: 6, scope: !2548)
!2562 = !DILocation(line: 746, column: 3, scope: !2558)
!2563 = !DILocation(line: 748, column: 6, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2548, file: !679, line: 748, column: 6)
!2565 = !DILocation(line: 748, column: 12, scope: !2564)
!2566 = !DILocation(line: 748, column: 18, scope: !2564)
!2567 = !DILocation(line: 748, column: 6, scope: !2548)
!2568 = !DILocation(line: 749, column: 10, scope: !2564)
!2569 = !DILocation(line: 749, column: 3, scope: !2564)
!2570 = !DILocation(line: 750, column: 11, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2564, file: !679, line: 750, column: 11)
!2572 = !DILocation(line: 750, column: 17, scope: !2571)
!2573 = !DILocation(line: 750, column: 23, scope: !2571)
!2574 = !DILocation(line: 750, column: 11, scope: !2564)
!2575 = !DILocation(line: 751, column: 10, scope: !2571)
!2576 = !DILocation(line: 751, column: 3, scope: !2571)
!2577 = !DILocation(line: 754, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !679, line: 754, column: 7)
!2579 = distinct !DILexicalBlock(scope: !2571, file: !679, line: 752, column: 7)
!2580 = !DILocation(line: 754, column: 13, scope: !2578)
!2581 = !DILocation(line: 754, column: 19, scope: !2578)
!2582 = !DILocation(line: 754, column: 7, scope: !2579)
!2583 = !DILocation(line: 755, column: 11, scope: !2578)
!2584 = !DILocation(line: 755, column: 4, scope: !2578)
!2585 = !DILocation(line: 756, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2578, file: !679, line: 756, column: 12)
!2587 = !DILocation(line: 756, column: 19, scope: !2586)
!2588 = !DILocation(line: 756, column: 25, scope: !2586)
!2589 = !DILocation(line: 756, column: 227, scope: !2586)
!2590 = !DILocation(line: 756, column: 12, scope: !2578)
!2591 = !DILocation(line: 757, column: 11, scope: !2586)
!2592 = !DILocation(line: 757, column: 4, scope: !2586)
!2593 = !DILocation(line: 759, column: 4, scope: !2586)
!2594 = !DILocation(line: 762, column: 31, scope: !2548)
!2595 = !DILocation(line: 762, column: 56, scope: !2548)
!2596 = !DILocation(line: 762, column: 62, scope: !2548)
!2597 = !DILocation(line: 762, column: 9, scope: !2548)
!2598 = !DILocation(line: 762, column: 2, scope: !2548)
!2599 = !DILocation(line: 763, column: 1, scope: !2548)
!2600 = distinct !DISubprogram(name: "format_get_line_start", scope: !679, file: !679, line: 834, type: !2601, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!333, !692, !1581, !574}
!2603 = !DILocalVariable(name: "theme", arg: 1, scope: !2600, file: !679, line: 834, type: !692)
!2604 = !DILocation(line: 834, column: 40, scope: !2600)
!2605 = !DILocalVariable(name: "dest", arg: 2, scope: !2600, file: !679, line: 834, type: !1581)
!2606 = !DILocation(line: 834, column: 62, scope: !2600)
!2607 = !DILocalVariable(name: "t", arg: 3, scope: !2600, file: !679, line: 834, type: !574)
!2608 = !DILocation(line: 834, column: 75, scope: !2600)
!2609 = !DILocalVariable(name: "timestamp", scope: !2600, file: !679, line: 836, type: !333)
!2610 = !DILocation(line: 836, column: 8, scope: !2600)
!2611 = !DILocalVariable(name: "servertag", scope: !2600, file: !679, line: 836, type: !333)
!2612 = !DILocation(line: 836, column: 20, scope: !2600)
!2613 = !DILocalVariable(name: "linestart", scope: !2600, file: !679, line: 837, type: !333)
!2614 = !DILocation(line: 837, column: 8, scope: !2600)
!2615 = !DILocation(line: 839, column: 28, scope: !2600)
!2616 = !DILocation(line: 839, column: 35, scope: !2600)
!2617 = !DILocation(line: 839, column: 41, scope: !2600)
!2618 = !DILocation(line: 839, column: 14, scope: !2600)
!2619 = !DILocation(line: 839, column: 12, scope: !2600)
!2620 = !DILocation(line: 840, column: 29, scope: !2600)
!2621 = !DILocation(line: 840, column: 36, scope: !2600)
!2622 = !DILocation(line: 840, column: 14, scope: !2600)
!2623 = !DILocation(line: 840, column: 12, scope: !2600)
!2624 = !DILocation(line: 842, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2600, file: !679, line: 842, column: 6)
!2626 = !DILocation(line: 842, column: 16, scope: !2625)
!2627 = !DILocation(line: 842, column: 23, scope: !2625)
!2628 = !DILocation(line: 842, column: 26, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2625, file: !679, discriminator: 1)
!2630 = !DILocation(line: 842, column: 36, scope: !2629)
!2631 = !DILocation(line: 842, column: 6, scope: !2629)
!2632 = !DILocation(line: 843, column: 3, scope: !2625)
!2633 = !DILocation(line: 845, column: 26, scope: !2600)
!2634 = !DILocation(line: 845, column: 36, scope: !2600)
!2635 = !DILocation(line: 845, column: 45, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2600, file: !679, discriminator: 1)
!2637 = !DILocation(line: 845, column: 26, scope: !2636)
!2638 = !DILocation(line: 845, column: 26, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2600, file: !679, discriminator: 2)
!2640 = !DILocation(line: 845, column: 26, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2600, file: !679, discriminator: 3)
!2642 = !DILocation(line: 846, column: 5, scope: !2600)
!2643 = !DILocation(line: 845, column: 14, scope: !2641)
!2644 = !DILocation(line: 845, column: 12, scope: !2641)
!2645 = !DILocation(line: 848, column: 9, scope: !2600)
!2646 = !DILocation(line: 848, column: 2, scope: !2600)
!2647 = !DILocation(line: 849, column: 9, scope: !2600)
!2648 = !DILocation(line: 849, column: 2, scope: !2600)
!2649 = !DILocation(line: 850, column: 9, scope: !2600)
!2650 = !DILocation(line: 850, column: 2, scope: !2600)
!2651 = !DILocation(line: 851, column: 1, scope: !2600)
!2652 = distinct !DISubprogram(name: "get_timestamp", scope: !679, file: !679, line: 765, type: !2601, isLocal: true, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2653 = !DILocalVariable(name: "theme", arg: 1, scope: !2652, file: !679, line: 765, type: !692)
!2654 = !DILocation(line: 765, column: 39, scope: !2652)
!2655 = !DILocalVariable(name: "dest", arg: 2, scope: !2652, file: !679, line: 765, type: !1581)
!2656 = !DILocation(line: 765, column: 61, scope: !2652)
!2657 = !DILocalVariable(name: "t", arg: 3, scope: !2652, file: !679, line: 765, type: !574)
!2658 = !DILocation(line: 765, column: 74, scope: !2652)
!2659 = !DILocalVariable(name: "format", scope: !2652, file: !679, line: 767, type: !333)
!2660 = !DILocation(line: 767, column: 8, scope: !2652)
!2661 = !DILocalVariable(name: "str", scope: !2652, file: !679, line: 767, type: !2662)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2048, align: 8, elements: !706)
!2663 = !DILocation(line: 767, column: 16, scope: !2652)
!2664 = !DILocalVariable(name: "tm", scope: !2652, file: !679, line: 768, type: !2665)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64, align: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !575, line: 133, size: 448, align: 64, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2666, file: !575, line: 135, baseType: !325, size: 32, align: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2666, file: !575, line: 136, baseType: !325, size: 32, align: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2666, file: !575, line: 137, baseType: !325, size: 32, align: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2666, file: !575, line: 138, baseType: !325, size: 32, align: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2666, file: !575, line: 139, baseType: !325, size: 32, align: 32, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2666, file: !575, line: 140, baseType: !325, size: 32, align: 32, offset: 160)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2666, file: !575, line: 141, baseType: !325, size: 32, align: 32, offset: 192)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2666, file: !575, line: 142, baseType: !325, size: 32, align: 32, offset: 224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2666, file: !575, line: 143, baseType: !325, size: 32, align: 32, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2666, file: !575, line: 146, baseType: !334, size: 64, align: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2666, file: !575, line: 147, baseType: !331, size: 64, align: 64, offset: 384)
!2679 = !DILocation(line: 768, column: 13, scope: !2652)
!2680 = !DILocalVariable(name: "diff", scope: !2652, file: !679, line: 769, type: !325)
!2681 = !DILocation(line: 769, column: 6, scope: !2652)
!2682 = !DILocation(line: 771, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 771, column: 6)
!2684 = !DILocation(line: 771, column: 25, scope: !2683)
!2685 = !DILocation(line: 771, column: 31, scope: !2683)
!2686 = !DILocation(line: 771, column: 23, scope: !2683)
!2687 = !DILocation(line: 771, column: 38, scope: !2683)
!2688 = !DILocation(line: 771, column: 6, scope: !2652)
!2689 = !DILocation(line: 772, column: 3, scope: !2683)
!2690 = !DILocation(line: 775, column: 6, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 775, column: 6)
!2692 = !DILocation(line: 775, column: 12, scope: !2691)
!2693 = !DILocation(line: 775, column: 18, scope: !2691)
!2694 = !DILocation(line: 775, column: 6, scope: !2652)
!2695 = !DILocation(line: 776, column: 3, scope: !2691)
!2696 = !DILocation(line: 778, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 778, column: 6)
!2698 = !DILocation(line: 778, column: 13, scope: !2697)
!2699 = !DILocation(line: 778, column: 19, scope: !2697)
!2700 = !DILocation(line: 778, column: 29, scope: !2697)
!2701 = !DILocation(line: 778, column: 34, scope: !2697)
!2702 = !DILocation(line: 779, column: 7, scope: !2697)
!2703 = !DILocation(line: 779, column: 13, scope: !2697)
!2704 = !DILocation(line: 779, column: 19, scope: !2697)
!2705 = !DILocation(line: 779, column: 56, scope: !2697)
!2706 = !DILocation(line: 778, column: 6, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2652, file: !679, discriminator: 1)
!2708 = !DILocation(line: 780, column: 3, scope: !2697)
!2709 = !DILocation(line: 783, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 783, column: 6)
!2711 = !DILocation(line: 783, column: 24, scope: !2710)
!2712 = !DILocation(line: 783, column: 6, scope: !2652)
!2713 = !DILocation(line: 784, column: 10, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !679, line: 783, column: 29)
!2715 = !DILocation(line: 784, column: 14, scope: !2714)
!2716 = !DILocation(line: 784, column: 20, scope: !2714)
!2717 = !DILocation(line: 784, column: 28, scope: !2714)
!2718 = !DILocation(line: 784, column: 12, scope: !2714)
!2719 = !DILocation(line: 784, column: 8, scope: !2714)
!2720 = !DILocation(line: 785, column: 34, scope: !2714)
!2721 = !DILocation(line: 785, column: 3, scope: !2714)
!2722 = !DILocation(line: 785, column: 9, scope: !2714)
!2723 = !DILocation(line: 785, column: 17, scope: !2714)
!2724 = !DILocation(line: 785, column: 32, scope: !2714)
!2725 = !DILocation(line: 786, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2714, file: !679, line: 786, column: 7)
!2727 = !DILocation(line: 786, column: 14, scope: !2726)
!2728 = !DILocation(line: 786, column: 12, scope: !2726)
!2729 = !DILocation(line: 786, column: 7, scope: !2714)
!2730 = !DILocation(line: 787, column: 4, scope: !2726)
!2731 = !DILocation(line: 788, column: 2, scope: !2714)
!2732 = !DILocation(line: 790, column: 7, scope: !2652)
!2733 = !DILocation(line: 790, column: 5, scope: !2652)
!2734 = !DILocation(line: 791, column: 33, scope: !2652)
!2735 = !DILocation(line: 791, column: 58, scope: !2652)
!2736 = !DILocation(line: 791, column: 11, scope: !2652)
!2737 = !DILocation(line: 791, column: 9, scope: !2652)
!2738 = !DILocation(line: 793, column: 15, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2652, file: !679, line: 793, column: 6)
!2740 = !DILocation(line: 793, column: 33, scope: !2739)
!2741 = !DILocation(line: 793, column: 41, scope: !2739)
!2742 = !DILocation(line: 793, column: 6, scope: !2739)
!2743 = !DILocation(line: 793, column: 45, scope: !2739)
!2744 = !DILocation(line: 793, column: 6, scope: !2652)
!2745 = !DILocation(line: 794, column: 3, scope: !2739)
!2746 = !DILocation(line: 794, column: 10, scope: !2739)
!2747 = !DILocation(line: 795, column: 9, scope: !2652)
!2748 = !DILocation(line: 795, column: 2, scope: !2652)
!2749 = !DILocation(line: 796, column: 18, scope: !2652)
!2750 = !DILocation(line: 796, column: 9, scope: !2652)
!2751 = !DILocation(line: 796, column: 2, scope: !2652)
!2752 = !DILocation(line: 797, column: 1, scope: !2652)
!2753 = distinct !DISubprogram(name: "get_server_tag", scope: !679, file: !679, line: 799, type: !2549, isLocal: true, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2754 = !DILocalVariable(name: "theme", arg: 1, scope: !2753, file: !679, line: 799, type: !692)
!2755 = !DILocation(line: 799, column: 40, scope: !2753)
!2756 = !DILocalVariable(name: "dest", arg: 2, scope: !2753, file: !679, line: 799, type: !1581)
!2757 = !DILocation(line: 799, column: 62, scope: !2753)
!2758 = !DILocalVariable(name: "count", scope: !2753, file: !679, line: 801, type: !325)
!2759 = !DILocation(line: 801, column: 6, scope: !2753)
!2760 = !DILocation(line: 803, column: 6, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 803, column: 6)
!2762 = !DILocation(line: 803, column: 12, scope: !2761)
!2763 = !DILocation(line: 803, column: 23, scope: !2761)
!2764 = !DILocation(line: 803, column: 30, scope: !2761)
!2765 = !DILocation(line: 803, column: 33, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2761, file: !679, discriminator: 1)
!2767 = !DILocation(line: 803, column: 6, scope: !2766)
!2768 = !DILocation(line: 804, column: 3, scope: !2761)
!2769 = !DILocation(line: 807, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 807, column: 6)
!2771 = !DILocation(line: 807, column: 12, scope: !2770)
!2772 = !DILocation(line: 807, column: 18, scope: !2770)
!2773 = !DILocation(line: 807, column: 6, scope: !2753)
!2774 = !DILocation(line: 808, column: 3, scope: !2770)
!2775 = !DILocation(line: 810, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2753, file: !679, line: 810, column: 6)
!2777 = !DILocation(line: 810, column: 13, scope: !2776)
!2778 = !DILocation(line: 810, column: 19, scope: !2776)
!2779 = !DILocation(line: 810, column: 29, scope: !2776)
!2780 = !DILocation(line: 810, column: 6, scope: !2753)
!2781 = !DILocation(line: 811, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !679, line: 811, column: 7)
!2783 = distinct !DILexicalBlock(scope: !2776, file: !679, line: 810, column: 35)
!2784 = !DILocation(line: 811, column: 13, scope: !2782)
!2785 = !DILocation(line: 811, column: 21, scope: !2782)
!2786 = !DILocation(line: 811, column: 28, scope: !2782)
!2787 = !DILocation(line: 811, column: 35, scope: !2782)
!2788 = !DILocation(line: 812, column: 7, scope: !2782)
!2789 = !DILocation(line: 812, column: 13, scope: !2782)
!2790 = !DILocation(line: 812, column: 21, scope: !2782)
!2791 = !DILocation(line: 812, column: 29, scope: !2782)
!2792 = !DILocation(line: 812, column: 39, scope: !2782)
!2793 = !DILocation(line: 812, column: 45, scope: !2782)
!2794 = !DILocation(line: 812, column: 36, scope: !2782)
!2795 = !DILocation(line: 811, column: 7, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2783, file: !679, discriminator: 1)
!2797 = !DILocation(line: 813, column: 4, scope: !2782)
!2798 = !DILocation(line: 815, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2783, file: !679, line: 815, column: 7)
!2800 = !DILocation(line: 815, column: 15, scope: !2799)
!2801 = !DILocation(line: 815, column: 7, scope: !2783)
!2802 = !DILocation(line: 816, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !679, line: 815, column: 23)
!2804 = !DILocation(line: 817, column: 8, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2803, file: !679, line: 817, column: 8)
!2806 = !DILocation(line: 817, column: 17, scope: !2805)
!2807 = !DILocation(line: 817, column: 22, scope: !2805)
!2808 = !DILocation(line: 817, column: 8, scope: !2803)
!2809 = !DILocation(line: 818, column: 10, scope: !2805)
!2810 = !DILocation(line: 818, column: 5, scope: !2805)
!2811 = !DILocation(line: 819, column: 3, scope: !2803)
!2812 = !DILocation(line: 820, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2783, file: !679, line: 820, column: 7)
!2814 = !DILocation(line: 820, column: 13, scope: !2813)
!2815 = !DILocation(line: 820, column: 17, scope: !2813)
!2816 = !DILocation(line: 820, column: 20, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2813, file: !679, discriminator: 1)
!2818 = !DILocation(line: 820, column: 35, scope: !2817)
!2819 = !DILocation(line: 820, column: 7, scope: !2817)
!2820 = !DILocation(line: 821, column: 9, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2813, file: !679, line: 820, column: 43)
!2822 = !DILocation(line: 822, column: 8, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2821, file: !679, line: 822, column: 8)
!2824 = !DILocation(line: 822, column: 24, scope: !2823)
!2825 = !DILocation(line: 822, column: 29, scope: !2823)
!2826 = !DILocation(line: 822, column: 8, scope: !2821)
!2827 = !DILocation(line: 823, column: 10, scope: !2823)
!2828 = !DILocation(line: 823, column: 5, scope: !2823)
!2829 = !DILocation(line: 824, column: 3, scope: !2821)
!2830 = !DILocation(line: 826, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2783, file: !679, line: 826, column: 7)
!2832 = !DILocation(line: 826, column: 13, scope: !2831)
!2833 = !DILocation(line: 826, column: 7, scope: !2783)
!2834 = !DILocation(line: 827, column: 4, scope: !2831)
!2835 = !DILocation(line: 828, column: 2, scope: !2783)
!2836 = !DILocation(line: 830, column: 31, scope: !2753)
!2837 = !DILocation(line: 830, column: 56, scope: !2753)
!2838 = !DILocation(line: 831, column: 25, scope: !2753)
!2839 = !DILocation(line: 831, column: 31, scope: !2753)
!2840 = !DILocation(line: 830, column: 9, scope: !2753)
!2841 = !DILocation(line: 830, column: 2, scope: !2753)
!2842 = !DILocation(line: 832, column: 1, scope: !2753)
!2843 = distinct !DISubprogram(name: "format_newline", scope: !679, file: !679, line: 853, type: !2844, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !1586}
!2846 = !DILocalVariable(name: "window", arg: 1, scope: !2843, file: !679, line: 853, type: !1586)
!2847 = !DILocation(line: 853, column: 33, scope: !2843)
!2848 = !DILocation(line: 855, column: 2, scope: !2843)
!2849 = distinct !{!2849, !2848}
!2850 = !DILocation(line: 855, column: 10, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2852, file: !679, discriminator: 1)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !679, line: 855, column: 10)
!2853 = distinct !DILexicalBlock(scope: !2843, file: !679, line: 855, column: 4)
!2854 = !DILocation(line: 855, column: 17, scope: !2851)
!2855 = !DILocation(line: 855, column: 5, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2857, file: !679, discriminator: 2)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !679, line: 855, column: 3)
!2858 = !DILocation(line: 855, column: 14, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2860, file: !679, discriminator: 3)
!2860 = distinct !DILexicalBlock(scope: !2852, file: !679, line: 855, column: 12)
!2861 = !DILocation(line: 855, column: 101, scope: !2859)
!2862 = !DILocation(line: 855, column: 112, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2853, file: !679, discriminator: 4)
!2864 = !DILocation(line: 857, column: 17, scope: !2843)
!2865 = !DILocation(line: 857, column: 43, scope: !2843)
!2866 = !DILocation(line: 857, column: 2, scope: !2843)
!2867 = !DILocation(line: 861, column: 1, scope: !2843)
!2868 = !DILocation(line: 861, column: 1, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2843, file: !679, discriminator: 1)
!2870 = distinct !DISubprogram(name: "strip_real_length", scope: !679, file: !679, line: 1113, type: !2871, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!325, !331, !325, !711, !711}
!2873 = !DILocalVariable(name: "str", arg: 1, scope: !2870, file: !679, line: 1113, type: !331)
!2874 = !DILocation(line: 1113, column: 35, scope: !2870)
!2875 = !DILocalVariable(name: "len", arg: 2, scope: !2870, file: !679, line: 1113, type: !325)
!2876 = !DILocation(line: 1113, column: 44, scope: !2870)
!2877 = !DILocalVariable(name: "last_color_pos", arg: 3, scope: !2870, file: !679, line: 1114, type: !711)
!2878 = !DILocation(line: 1114, column: 14, scope: !2870)
!2879 = !DILocalVariable(name: "last_color_len", arg: 4, scope: !2870, file: !679, line: 1114, type: !711)
!2880 = !DILocation(line: 1114, column: 35, scope: !2870)
!2881 = !DILocalVariable(name: "start", scope: !2870, file: !679, line: 1116, type: !331)
!2882 = !DILocation(line: 1116, column: 14, scope: !2870)
!2883 = !DILocation(line: 1116, column: 22, scope: !2870)
!2884 = !DILocation(line: 1118, column: 6, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2870, file: !679, line: 1118, column: 6)
!2886 = !DILocation(line: 1118, column: 21, scope: !2885)
!2887 = !DILocation(line: 1118, column: 6, scope: !2870)
!2888 = !DILocation(line: 1119, column: 4, scope: !2885)
!2889 = !DILocation(line: 1119, column: 19, scope: !2885)
!2890 = !DILocation(line: 1119, column: 3, scope: !2885)
!2891 = !DILocation(line: 1120, column: 6, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2870, file: !679, line: 1120, column: 6)
!2893 = !DILocation(line: 1120, column: 21, scope: !2892)
!2894 = !DILocation(line: 1120, column: 6, scope: !2870)
!2895 = !DILocation(line: 1121, column: 4, scope: !2892)
!2896 = !DILocation(line: 1121, column: 19, scope: !2892)
!2897 = !DILocation(line: 1121, column: 3, scope: !2892)
!2898 = !DILocation(line: 1123, column: 2, scope: !2870)
!2899 = !DILocation(line: 1123, column: 10, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2870, file: !679, discriminator: 1)
!2901 = !DILocation(line: 1123, column: 9, scope: !2900)
!2902 = !DILocation(line: 1123, column: 14, scope: !2900)
!2903 = !DILocation(line: 1123, column: 2, scope: !2900)
!2904 = !DILocation(line: 1124, column: 8, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !679, line: 1124, column: 7)
!2906 = distinct !DILexicalBlock(scope: !2870, file: !679, line: 1123, column: 23)
!2907 = !DILocation(line: 1124, column: 7, scope: !2905)
!2908 = !DILocation(line: 1124, column: 12, scope: !2905)
!2909 = !DILocation(line: 1124, column: 7, scope: !2906)
!2910 = !DILocalVariable(name: "mircstart", scope: !2911, file: !679, line: 1125, type: !331)
!2911 = distinct !DILexicalBlock(scope: !2905, file: !679, line: 1124, column: 18)
!2912 = !DILocation(line: 1125, column: 16, scope: !2911)
!2913 = !DILocation(line: 1125, column: 28, scope: !2911)
!2914 = !DILocation(line: 1127, column: 8, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !679, line: 1127, column: 8)
!2916 = !DILocation(line: 1127, column: 23, scope: !2915)
!2917 = !DILocation(line: 1127, column: 8, scope: !2911)
!2918 = !DILocation(line: 1128, column: 30, scope: !2915)
!2919 = !DILocation(line: 1128, column: 34, scope: !2915)
!2920 = !DILocation(line: 1128, column: 33, scope: !2915)
!2921 = !DILocation(line: 1128, column: 23, scope: !2915)
!2922 = !DILocation(line: 1128, column: 6, scope: !2915)
!2923 = !DILocation(line: 1128, column: 21, scope: !2915)
!2924 = !DILocation(line: 1128, column: 5, scope: !2915)
!2925 = !DILocation(line: 1129, column: 7, scope: !2911)
!2926 = !DILocation(line: 1130, column: 4, scope: !2911)
!2927 = !DILocation(line: 1131, column: 8, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2911, file: !679, line: 1131, column: 8)
!2929 = !DILocation(line: 1131, column: 23, scope: !2928)
!2930 = !DILocation(line: 1131, column: 8, scope: !2911)
!2931 = !DILocation(line: 1132, column: 30, scope: !2928)
!2932 = !DILocation(line: 1132, column: 34, scope: !2928)
!2933 = !DILocation(line: 1132, column: 33, scope: !2928)
!2934 = !DILocation(line: 1132, column: 23, scope: !2928)
!2935 = !DILocation(line: 1132, column: 6, scope: !2928)
!2936 = !DILocation(line: 1132, column: 21, scope: !2928)
!2937 = !DILocation(line: 1132, column: 5, scope: !2928)
!2938 = !DILocation(line: 1134, column: 3, scope: !2911)
!2939 = !DILocation(line: 1134, column: 15, scope: !2940)
!2940 = !DILexicalBlockFile(scope: !2941, file: !679, discriminator: 1)
!2941 = distinct !DILexicalBlock(scope: !2905, file: !679, line: 1134, column: 14)
!2942 = !DILocation(line: 1134, column: 14, scope: !2940)
!2943 = !DILocation(line: 1134, column: 19, scope: !2940)
!2944 = !DILocation(line: 1134, column: 24, scope: !2940)
!2945 = !DILocation(line: 1134, column: 27, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2941, file: !679, discriminator: 2)
!2947 = !DILocation(line: 1134, column: 34, scope: !2946)
!2948 = !DILocation(line: 1134, column: 14, scope: !2946)
!2949 = !DILocation(line: 1149, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !679, line: 1149, column: 8)
!2951 = distinct !DILexicalBlock(scope: !2941, file: !679, line: 1134, column: 43)
!2952 = !DILocation(line: 1149, column: 15, scope: !2950)
!2953 = !DILocation(line: 1149, column: 22, scope: !2950)
!2954 = !DILocation(line: 1149, column: 25, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2950, file: !679, discriminator: 1)
!2956 = !DILocation(line: 1149, column: 32, scope: !2955)
!2957 = !DILocation(line: 1149, column: 8, scope: !2955)
!2958 = !DILocation(line: 1150, column: 9, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !679, line: 1150, column: 9)
!2960 = distinct !DILexicalBlock(scope: !2950, file: !679, line: 1149, column: 41)
!2961 = !DILocation(line: 1150, column: 24, scope: !2959)
!2962 = !DILocation(line: 1150, column: 9, scope: !2960)
!2963 = !DILocation(line: 1151, column: 31, scope: !2959)
!2964 = !DILocation(line: 1151, column: 35, scope: !2959)
!2965 = !DILocation(line: 1151, column: 34, scope: !2959)
!2966 = !DILocation(line: 1151, column: 24, scope: !2959)
!2967 = !DILocation(line: 1151, column: 7, scope: !2959)
!2968 = !DILocation(line: 1151, column: 22, scope: !2959)
!2969 = !DILocation(line: 1151, column: 6, scope: !2959)
!2970 = !DILocation(line: 1152, column: 9, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !679, line: 1152, column: 9)
!2972 = !DILocation(line: 1152, column: 24, scope: !2971)
!2973 = !DILocation(line: 1152, column: 9, scope: !2960)
!2974 = !DILocation(line: 1153, column: 7, scope: !2971)
!2975 = !DILocation(line: 1153, column: 22, scope: !2971)
!2976 = !DILocation(line: 1153, column: 6, scope: !2971)
!2977 = !DILocation(line: 1154, column: 8, scope: !2960)
!2978 = !DILocation(line: 1155, column: 4, scope: !2960)
!2979 = !DILocation(line: 1155, column: 15, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !2981, file: !679, discriminator: 1)
!2981 = distinct !DILexicalBlock(scope: !2950, file: !679, line: 1155, column: 15)
!2982 = !DILocation(line: 1155, column: 22, scope: !2980)
!2983 = !DILocation(line: 1156, column: 9, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !679, line: 1156, column: 9)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !679, line: 1155, column: 40)
!2986 = !DILocation(line: 1156, column: 24, scope: !2984)
!2987 = !DILocation(line: 1156, column: 9, scope: !2985)
!2988 = !DILocation(line: 1157, column: 31, scope: !2984)
!2989 = !DILocation(line: 1157, column: 35, scope: !2984)
!2990 = !DILocation(line: 1157, column: 34, scope: !2984)
!2991 = !DILocation(line: 1157, column: 24, scope: !2984)
!2992 = !DILocation(line: 1157, column: 7, scope: !2984)
!2993 = !DILocation(line: 1157, column: 22, scope: !2984)
!2994 = !DILocation(line: 1157, column: 6, scope: !2984)
!2995 = !DILocation(line: 1158, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2985, file: !679, line: 1158, column: 9)
!2997 = !DILocation(line: 1158, column: 24, scope: !2996)
!2998 = !DILocation(line: 1158, column: 9, scope: !2985)
!2999 = !DILocation(line: 1159, column: 7, scope: !2996)
!3000 = !DILocation(line: 1159, column: 22, scope: !2996)
!3001 = !DILocation(line: 1159, column: 6, scope: !2996)
!3002 = !DILocation(line: 1160, column: 4, scope: !2985)
!3003 = !DILocation(line: 1161, column: 8, scope: !2951)
!3004 = !DILocation(line: 1162, column: 3, scope: !2951)
!3005 = !DILocation(line: 1163, column: 12, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !679, line: 1163, column: 8)
!3007 = distinct !DILexicalBlock(scope: !2941, file: !679, line: 1162, column: 10)
!3008 = !DILocation(line: 1163, column: 11, scope: !3006)
!3009 = !DILocation(line: 1163, column: 10, scope: !3006)
!3010 = !DILocation(line: 1163, column: 17, scope: !3006)
!3011 = !DILocation(line: 1163, column: 22, scope: !3006)
!3012 = !DILocation(line: 1163, column: 27, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 1)
!3014 = !DILocation(line: 1163, column: 26, scope: !3013)
!3015 = !DILocation(line: 1163, column: 25, scope: !3013)
!3016 = !DILocation(line: 1163, column: 32, scope: !3013)
!3017 = !DILocation(line: 1163, column: 37, scope: !3013)
!3018 = !DILocation(line: 1163, column: 42, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 2)
!3020 = !DILocation(line: 1163, column: 41, scope: !3019)
!3021 = !DILocation(line: 1163, column: 40, scope: !3019)
!3022 = !DILocation(line: 1163, column: 47, scope: !3019)
!3023 = !DILocation(line: 1163, column: 52, scope: !3019)
!3024 = !DILocation(line: 1163, column: 57, scope: !3025)
!3025 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 3)
!3026 = !DILocation(line: 1163, column: 56, scope: !3025)
!3027 = !DILocation(line: 1163, column: 55, scope: !3025)
!3028 = !DILocation(line: 1163, column: 62, scope: !3025)
!3029 = !DILocation(line: 1163, column: 67, scope: !3025)
!3030 = !DILocation(line: 1163, column: 72, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 4)
!3032 = !DILocation(line: 1163, column: 71, scope: !3031)
!3033 = !DILocation(line: 1163, column: 70, scope: !3031)
!3034 = !DILocation(line: 1163, column: 77, scope: !3031)
!3035 = !DILocation(line: 1163, column: 82, scope: !3031)
!3036 = !DILocation(line: 1163, column: 87, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 5)
!3038 = !DILocation(line: 1163, column: 86, scope: !3037)
!3039 = !DILocation(line: 1163, column: 85, scope: !3037)
!3040 = !DILocation(line: 1163, column: 92, scope: !3037)
!3041 = !DILocation(line: 1163, column: 98, scope: !3037)
!3042 = !DILocation(line: 1163, column: 103, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 6)
!3044 = !DILocation(line: 1163, column: 102, scope: !3043)
!3045 = !DILocation(line: 1163, column: 101, scope: !3043)
!3046 = !DILocation(line: 1163, column: 108, scope: !3043)
!3047 = !DILocation(line: 1163, column: 114, scope: !3043)
!3048 = !DILocation(line: 1163, column: 119, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 7)
!3050 = !DILocation(line: 1163, column: 118, scope: !3049)
!3051 = !DILocation(line: 1163, column: 117, scope: !3049)
!3052 = !DILocation(line: 1163, column: 124, scope: !3049)
!3053 = !DILocation(line: 1163, column: 130, scope: !3049)
!3054 = !DILocation(line: 1163, column: 135, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 8)
!3056 = !DILocation(line: 1163, column: 134, scope: !3055)
!3057 = !DILocation(line: 1163, column: 133, scope: !3055)
!3058 = !DILocation(line: 1163, column: 140, scope: !3055)
!3059 = !DILocation(line: 1163, column: 146, scope: !3055)
!3060 = !DILocation(line: 1163, column: 151, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3006, file: !679, discriminator: 9)
!3062 = !DILocation(line: 1163, column: 150, scope: !3061)
!3063 = !DILocation(line: 1163, column: 149, scope: !3061)
!3064 = !DILocation(line: 1163, column: 156, scope: !3061)
!3065 = !DILocation(line: 1163, column: 8, scope: !3061)
!3066 = !DILocation(line: 1164, column: 12, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !679, line: 1164, column: 9)
!3068 = distinct !DILexicalBlock(scope: !3006, file: !679, line: 1163, column: 164)
!3069 = !DILocation(line: 1164, column: 15, scope: !3067)
!3070 = !DILocation(line: 1164, column: 9, scope: !3068)
!3071 = !DILocation(line: 1165, column: 6, scope: !3067)
!3072 = !DILocation(line: 1166, column: 4, scope: !3068)
!3073 = !DILocation(line: 1167, column: 7, scope: !3007)
!3074 = !DILocation(line: 1123, column: 2, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !2870, file: !679, discriminator: 2)
!3076 = distinct !{!3076, !2898}
!3077 = !DILocation(line: 1171, column: 16, scope: !2870)
!3078 = !DILocation(line: 1171, column: 20, scope: !2870)
!3079 = !DILocation(line: 1171, column: 19, scope: !2870)
!3080 = !DILocation(line: 1171, column: 9, scope: !2870)
!3081 = !DILocation(line: 1171, column: 2, scope: !2870)
!3082 = distinct !DISubprogram(name: "get_mirc_color", scope: !679, file: !679, line: 1071, type: !3083, isLocal: true, isDefinition: true, scopeLine: 1072, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !668, !711, !711}
!3085 = !DILocalVariable(name: "str", arg: 1, scope: !3082, file: !679, line: 1071, type: !668)
!3086 = !DILocation(line: 1071, column: 41, scope: !3082)
!3087 = !DILocalVariable(name: "fg_ret", arg: 2, scope: !3082, file: !679, line: 1071, type: !711)
!3088 = !DILocation(line: 1071, column: 51, scope: !3082)
!3089 = !DILocalVariable(name: "bg_ret", arg: 3, scope: !3082, file: !679, line: 1071, type: !711)
!3090 = !DILocation(line: 1071, column: 64, scope: !3082)
!3091 = !DILocalVariable(name: "fg", scope: !3082, file: !679, line: 1073, type: !325)
!3092 = !DILocation(line: 1073, column: 6, scope: !3082)
!3093 = !DILocalVariable(name: "bg", scope: !3082, file: !679, line: 1073, type: !325)
!3094 = !DILocation(line: 1073, column: 10, scope: !3082)
!3095 = !DILocation(line: 1075, column: 7, scope: !3082)
!3096 = !DILocation(line: 1075, column: 14, scope: !3082)
!3097 = !DILocation(line: 1075, column: 7, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3082, file: !679, discriminator: 1)
!3099 = !DILocation(line: 1075, column: 29, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3082, file: !679, discriminator: 2)
!3101 = !DILocation(line: 1075, column: 28, scope: !3100)
!3102 = !DILocation(line: 1075, column: 7, scope: !3100)
!3103 = !DILocation(line: 1075, column: 7, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3082, file: !679, discriminator: 3)
!3105 = !DILocation(line: 1075, column: 5, scope: !3104)
!3106 = !DILocation(line: 1076, column: 7, scope: !3082)
!3107 = !DILocation(line: 1076, column: 14, scope: !3082)
!3108 = !DILocation(line: 1076, column: 7, scope: !3098)
!3109 = !DILocation(line: 1076, column: 29, scope: !3100)
!3110 = !DILocation(line: 1076, column: 28, scope: !3100)
!3111 = !DILocation(line: 1076, column: 7, scope: !3100)
!3112 = !DILocation(line: 1076, column: 7, scope: !3104)
!3113 = !DILocation(line: 1076, column: 5, scope: !3104)
!3114 = !DILocation(line: 1078, column: 31, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3082, file: !679, line: 1078, column: 6)
!3116 = !DILocation(line: 1078, column: 30, scope: !3115)
!3117 = !DILocation(line: 1078, column: 29, scope: !3115)
!3118 = !DILocation(line: 1078, column: 6, scope: !3115)
!3119 = !DILocation(line: 1078, column: 7, scope: !3115)
!3120 = !DILocation(line: 1078, column: 9, scope: !3115)
!3121 = !DILocation(line: 1078, column: 8, scope: !3115)
!3122 = !DILocation(line: 1078, column: 10, scope: !3115)
!3123 = !DILocation(line: 1078, column: 6, scope: !3082)
!3124 = !DILocation(line: 1080, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3115, file: !679, line: 1078, column: 24)
!3126 = !DILocation(line: 1081, column: 6, scope: !3125)
!3127 = !DILocation(line: 1082, column: 2, scope: !3125)
!3128 = !DILocation(line: 1084, column: 10, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3115, file: !679, line: 1082, column: 9)
!3130 = !DILocation(line: 1084, column: 9, scope: !3129)
!3131 = !DILocation(line: 1084, column: 8, scope: !3129)
!3132 = !DILocation(line: 1084, column: 13, scope: !3129)
!3133 = !DILocation(line: 1084, column: 6, scope: !3129)
!3134 = !DILocation(line: 1085, column: 5, scope: !3129)
!3135 = !DILocation(line: 1085, column: 9, scope: !3129)
!3136 = !DILocation(line: 1086, column: 31, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3129, file: !679, line: 1086, column: 6)
!3138 = !DILocation(line: 1086, column: 30, scope: !3137)
!3139 = !DILocation(line: 1086, column: 29, scope: !3137)
!3140 = !DILocation(line: 1086, column: 6, scope: !3137)
!3141 = !DILocation(line: 1086, column: 7, scope: !3137)
!3142 = !DILocation(line: 1086, column: 9, scope: !3137)
!3143 = !DILocation(line: 1086, column: 8, scope: !3137)
!3144 = !DILocation(line: 1086, column: 10, scope: !3137)
!3145 = !DILocation(line: 1086, column: 6, scope: !3129)
!3146 = !DILocation(line: 1087, column: 9, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3137, file: !679, line: 1086, column: 24)
!3148 = !DILocation(line: 1087, column: 11, scope: !3147)
!3149 = !DILocation(line: 1087, column: 20, scope: !3147)
!3150 = !DILocation(line: 1087, column: 19, scope: !3147)
!3151 = !DILocation(line: 1087, column: 18, scope: !3147)
!3152 = !DILocation(line: 1087, column: 23, scope: !3147)
!3153 = !DILocation(line: 1087, column: 15, scope: !3147)
!3154 = !DILocation(line: 1087, column: 7, scope: !3147)
!3155 = !DILocation(line: 1088, column: 6, scope: !3147)
!3156 = !DILocation(line: 1088, column: 10, scope: !3147)
!3157 = !DILocation(line: 1089, column: 3, scope: !3147)
!3158 = !DILocation(line: 1091, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3129, file: !679, line: 1091, column: 7)
!3160 = !DILocation(line: 1091, column: 8, scope: !3159)
!3161 = !DILocation(line: 1091, column: 7, scope: !3159)
!3162 = !DILocation(line: 1091, column: 17, scope: !3159)
!3163 = !DILocation(line: 1091, column: 24, scope: !3159)
!3164 = !DILocation(line: 1091, column: 51, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3159, file: !679, discriminator: 1)
!3166 = !DILocation(line: 1091, column: 50, scope: !3165)
!3167 = !DILocation(line: 1091, column: 49, scope: !3165)
!3168 = !DILocation(line: 1091, column: 26, scope: !3165)
!3169 = !DILocation(line: 1091, column: 27, scope: !3165)
!3170 = !DILocation(line: 1091, column: 29, scope: !3165)
!3171 = !DILocation(line: 1091, column: 28, scope: !3165)
!3172 = !DILocation(line: 1091, column: 30, scope: !3165)
!3173 = !DILocation(line: 1091, column: 7, scope: !3165)
!3174 = !DILocation(line: 1093, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3159, file: !679, line: 1091, column: 48)
!3176 = !DILocation(line: 1093, column: 10, scope: !3175)
!3177 = !DILocation(line: 1094, column: 11, scope: !3175)
!3178 = !DILocation(line: 1094, column: 10, scope: !3175)
!3179 = !DILocation(line: 1094, column: 9, scope: !3175)
!3180 = !DILocation(line: 1094, column: 14, scope: !3175)
!3181 = !DILocation(line: 1094, column: 7, scope: !3175)
!3182 = !DILocation(line: 1095, column: 6, scope: !3175)
!3183 = !DILocation(line: 1095, column: 10, scope: !3175)
!3184 = !DILocation(line: 1096, column: 32, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3175, file: !679, line: 1096, column: 7)
!3186 = !DILocation(line: 1096, column: 31, scope: !3185)
!3187 = !DILocation(line: 1096, column: 30, scope: !3185)
!3188 = !DILocation(line: 1096, column: 7, scope: !3185)
!3189 = !DILocation(line: 1096, column: 8, scope: !3185)
!3190 = !DILocation(line: 1096, column: 10, scope: !3185)
!3191 = !DILocation(line: 1096, column: 9, scope: !3185)
!3192 = !DILocation(line: 1096, column: 11, scope: !3185)
!3193 = !DILocation(line: 1096, column: 7, scope: !3175)
!3194 = !DILocation(line: 1097, column: 10, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3185, file: !679, line: 1096, column: 25)
!3196 = !DILocation(line: 1097, column: 12, scope: !3195)
!3197 = !DILocation(line: 1097, column: 21, scope: !3195)
!3198 = !DILocation(line: 1097, column: 20, scope: !3195)
!3199 = !DILocation(line: 1097, column: 19, scope: !3195)
!3200 = !DILocation(line: 1097, column: 24, scope: !3195)
!3201 = !DILocation(line: 1097, column: 16, scope: !3195)
!3202 = !DILocation(line: 1097, column: 8, scope: !3195)
!3203 = !DILocation(line: 1098, column: 7, scope: !3195)
!3204 = !DILocation(line: 1098, column: 11, scope: !3195)
!3205 = !DILocation(line: 1099, column: 4, scope: !3195)
!3206 = !DILocation(line: 1100, column: 3, scope: !3175)
!3207 = !DILocation(line: 1103, column: 6, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3082, file: !679, line: 1103, column: 6)
!3209 = !DILocation(line: 1103, column: 6, scope: !3082)
!3210 = !DILocation(line: 1103, column: 24, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3208, file: !679, discriminator: 1)
!3212 = !DILocation(line: 1103, column: 15, scope: !3211)
!3213 = !DILocation(line: 1103, column: 22, scope: !3211)
!3214 = !DILocation(line: 1103, column: 14, scope: !3211)
!3215 = !DILocation(line: 1104, column: 6, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3082, file: !679, line: 1104, column: 6)
!3217 = !DILocation(line: 1104, column: 6, scope: !3082)
!3218 = !DILocation(line: 1104, column: 24, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3216, file: !679, discriminator: 1)
!3220 = !DILocation(line: 1104, column: 15, scope: !3219)
!3221 = !DILocation(line: 1104, column: 22, scope: !3219)
!3222 = !DILocation(line: 1104, column: 14, scope: !3219)
!3223 = !DILocation(line: 1105, column: 1, scope: !3082)
!3224 = distinct !DISubprogram(name: "strip_codes", scope: !679, file: !679, line: 1174, type: !3225, isLocal: false, isDefinition: true, scopeLine: 1175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!333, !331}
!3227 = !DILocalVariable(name: "input", arg: 1, scope: !3224, file: !679, line: 1174, type: !331)
!3228 = !DILocation(line: 1174, column: 31, scope: !3224)
!3229 = !DILocalVariable(name: "p", scope: !3224, file: !679, line: 1176, type: !331)
!3230 = !DILocation(line: 1176, column: 14, scope: !3224)
!3231 = !DILocalVariable(name: "str", scope: !3224, file: !679, line: 1177, type: !333)
!3232 = !DILocation(line: 1177, column: 8, scope: !3224)
!3233 = !DILocalVariable(name: "out", scope: !3224, file: !679, line: 1177, type: !333)
!3234 = !DILocation(line: 1177, column: 14, scope: !3224)
!3235 = !DILocation(line: 1179, column: 23, scope: !3224)
!3236 = !DILocation(line: 1179, column: 14, scope: !3224)
!3237 = !DILocation(line: 1179, column: 12, scope: !3224)
!3238 = !DILocation(line: 1179, column: 6, scope: !3224)
!3239 = !DILocation(line: 1180, column: 11, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3224, file: !679, line: 1180, column: 2)
!3241 = !DILocation(line: 1180, column: 9, scope: !3240)
!3242 = !DILocation(line: 1180, column: 7, scope: !3240)
!3243 = !DILocation(line: 1180, column: 19, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3245, file: !679, discriminator: 1)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !679, line: 1180, column: 2)
!3246 = !DILocation(line: 1180, column: 18, scope: !3244)
!3247 = !DILocation(line: 1180, column: 21, scope: !3244)
!3248 = !DILocation(line: 1180, column: 2, scope: !3244)
!3249 = !DILocation(line: 1181, column: 8, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !679, line: 1181, column: 7)
!3251 = distinct !DILexicalBlock(scope: !3245, file: !679, line: 1180, column: 35)
!3252 = !DILocation(line: 1181, column: 7, scope: !3250)
!3253 = !DILocation(line: 1181, column: 10, scope: !3250)
!3254 = !DILocation(line: 1181, column: 7, scope: !3251)
!3255 = !DILocation(line: 1182, column: 5, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !679, line: 1181, column: 16)
!3257 = !DILocation(line: 1185, column: 4, scope: !3256)
!3258 = !DILocation(line: 1186, column: 5, scope: !3256)
!3259 = !DILocation(line: 1187, column: 4, scope: !3256)
!3260 = !DILocation(line: 1190, column: 8, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3251, file: !679, line: 1190, column: 7)
!3262 = !DILocation(line: 1190, column: 7, scope: !3261)
!3263 = !DILocation(line: 1190, column: 10, scope: !3261)
!3264 = !DILocation(line: 1190, column: 15, scope: !3261)
!3265 = !DILocation(line: 1190, column: 18, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3261, file: !679, discriminator: 1)
!3267 = !DILocation(line: 1190, column: 23, scope: !3266)
!3268 = !DILocation(line: 1190, column: 7, scope: !3266)
!3269 = !DILocation(line: 1191, column: 8, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !679, line: 1191, column: 8)
!3271 = distinct !DILexicalBlock(scope: !3261, file: !679, line: 1190, column: 32)
!3272 = !DILocation(line: 1191, column: 13, scope: !3270)
!3273 = !DILocation(line: 1191, column: 8, scope: !3271)
!3274 = !DILocation(line: 1192, column: 6, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !679, line: 1191, column: 22)
!3276 = !DILocation(line: 1193, column: 5, scope: !3275)
!3277 = !DILocation(line: 1197, column: 8, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3271, file: !679, line: 1197, column: 8)
!3279 = !DILocation(line: 1197, column: 13, scope: !3278)
!3280 = !DILocation(line: 1197, column: 8, scope: !3271)
!3281 = !DILocation(line: 1206, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !679, line: 1197, column: 22)
!3283 = !DILocation(line: 1207, column: 5, scope: !3282)
!3284 = !DILocation(line: 1209, column: 3, scope: !3271)
!3285 = !DILocation(line: 1211, column: 8, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3251, file: !679, line: 1211, column: 7)
!3287 = !DILocation(line: 1211, column: 7, scope: !3286)
!3288 = !DILocation(line: 1211, column: 10, scope: !3286)
!3289 = !DILocation(line: 1211, column: 16, scope: !3286)
!3290 = !DILocation(line: 1211, column: 19, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3286, file: !679, discriminator: 1)
!3292 = !DILocation(line: 1211, column: 24, scope: !3291)
!3293 = !DILocation(line: 1211, column: 7, scope: !3291)
!3294 = !DILocation(line: 1212, column: 5, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !679, line: 1211, column: 33)
!3296 = !DILocation(line: 1213, column: 23, scope: !3295)
!3297 = !DILocation(line: 1213, column: 38, scope: !3295)
!3298 = !DILocation(line: 1213, column: 8, scope: !3295)
!3299 = !DILocation(line: 1213, column: 6, scope: !3295)
!3300 = !DILocation(line: 1214, column: 5, scope: !3295)
!3301 = !DILocation(line: 1215, column: 3, scope: !3295)
!3302 = !DILocation(line: 1215, column: 18, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 1)
!3304 = distinct !DILexicalBlock(scope: !3286, file: !679, line: 1215, column: 14)
!3305 = !DILocation(line: 1215, column: 17, scope: !3303)
!3306 = !DILocation(line: 1215, column: 16, scope: !3303)
!3307 = !DILocation(line: 1215, column: 21, scope: !3303)
!3308 = !DILocation(line: 1215, column: 26, scope: !3303)
!3309 = !DILocation(line: 1215, column: 31, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 2)
!3311 = !DILocation(line: 1215, column: 30, scope: !3310)
!3312 = !DILocation(line: 1215, column: 29, scope: !3310)
!3313 = !DILocation(line: 1215, column: 34, scope: !3310)
!3314 = !DILocation(line: 1215, column: 39, scope: !3310)
!3315 = !DILocation(line: 1215, column: 44, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 3)
!3317 = !DILocation(line: 1215, column: 43, scope: !3316)
!3318 = !DILocation(line: 1215, column: 42, scope: !3316)
!3319 = !DILocation(line: 1215, column: 47, scope: !3316)
!3320 = !DILocation(line: 1215, column: 52, scope: !3316)
!3321 = !DILocation(line: 1215, column: 57, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 4)
!3323 = !DILocation(line: 1215, column: 56, scope: !3322)
!3324 = !DILocation(line: 1215, column: 55, scope: !3322)
!3325 = !DILocation(line: 1215, column: 60, scope: !3322)
!3326 = !DILocation(line: 1215, column: 65, scope: !3322)
!3327 = !DILocation(line: 1215, column: 70, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 5)
!3329 = !DILocation(line: 1215, column: 69, scope: !3328)
!3330 = !DILocation(line: 1215, column: 68, scope: !3328)
!3331 = !DILocation(line: 1215, column: 73, scope: !3328)
!3332 = !DILocation(line: 1215, column: 78, scope: !3328)
!3333 = !DILocation(line: 1215, column: 83, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 6)
!3335 = !DILocation(line: 1215, column: 82, scope: !3334)
!3336 = !DILocation(line: 1215, column: 81, scope: !3334)
!3337 = !DILocation(line: 1215, column: 86, scope: !3334)
!3338 = !DILocation(line: 1215, column: 92, scope: !3334)
!3339 = !DILocation(line: 1215, column: 97, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 7)
!3341 = !DILocation(line: 1215, column: 96, scope: !3340)
!3342 = !DILocation(line: 1215, column: 95, scope: !3340)
!3343 = !DILocation(line: 1215, column: 100, scope: !3340)
!3344 = !DILocation(line: 1215, column: 106, scope: !3340)
!3345 = !DILocation(line: 1215, column: 111, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 8)
!3347 = !DILocation(line: 1215, column: 110, scope: !3346)
!3348 = !DILocation(line: 1215, column: 109, scope: !3346)
!3349 = !DILocation(line: 1215, column: 114, scope: !3346)
!3350 = !DILocation(line: 1215, column: 120, scope: !3346)
!3351 = !DILocation(line: 1215, column: 125, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 9)
!3353 = !DILocation(line: 1215, column: 124, scope: !3352)
!3354 = !DILocation(line: 1215, column: 123, scope: !3352)
!3355 = !DILocation(line: 1215, column: 128, scope: !3352)
!3356 = !DILocation(line: 1215, column: 134, scope: !3352)
!3357 = !DILocation(line: 1215, column: 139, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3304, file: !679, discriminator: 10)
!3359 = !DILocation(line: 1215, column: 138, scope: !3358)
!3360 = !DILocation(line: 1215, column: 137, scope: !3358)
!3361 = !DILocation(line: 1215, column: 142, scope: !3358)
!3362 = !DILocation(line: 1215, column: 14, scope: !3358)
!3363 = !DILocation(line: 1216, column: 14, scope: !3304)
!3364 = !DILocation(line: 1216, column: 13, scope: !3304)
!3365 = !DILocation(line: 1216, column: 8, scope: !3304)
!3366 = !DILocation(line: 1216, column: 11, scope: !3304)
!3367 = !DILocation(line: 1216, column: 4, scope: !3304)
!3368 = !DILocation(line: 1217, column: 2, scope: !3251)
!3369 = !DILocation(line: 1180, column: 31, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3245, file: !679, discriminator: 2)
!3371 = !DILocation(line: 1180, column: 2, scope: !3370)
!3372 = distinct !{!3372, !3373}
!3373 = !DILocation(line: 1180, column: 2, scope: !3224)
!3374 = !DILocation(line: 1219, column: 3, scope: !3224)
!3375 = !DILocation(line: 1219, column: 7, scope: !3224)
!3376 = !DILocation(line: 1220, column: 9, scope: !3224)
!3377 = !DILocation(line: 1220, column: 2, scope: !3224)
!3378 = !DILocalVariable(name: "theme", arg: 1, scope: !689, file: !679, line: 872, type: !692)
!3379 = !DILocation(line: 872, column: 46, scope: !689)
!3380 = !DILocalVariable(name: "str", arg: 2, scope: !689, file: !679, line: 872, type: !331)
!3381 = !DILocation(line: 872, column: 65, scope: !689)
!3382 = !DILocalVariable(name: "fg_ret", arg: 3, scope: !689, file: !679, line: 873, type: !711)
!3383 = !DILocation(line: 873, column: 12, scope: !689)
!3384 = !DILocalVariable(name: "bg_ret", arg: 4, scope: !689, file: !679, line: 873, type: !711)
!3385 = !DILocation(line: 873, column: 25, scope: !689)
!3386 = !DILocalVariable(name: "flags_ret", arg: 5, scope: !689, file: !679, line: 873, type: !711)
!3387 = !DILocation(line: 873, column: 38, scope: !689)
!3388 = !DILocalVariable(name: "start", scope: !689, file: !679, line: 876, type: !331)
!3389 = !DILocation(line: 876, column: 14, scope: !689)
!3390 = !DILocalVariable(name: "endptr", scope: !689, file: !679, line: 877, type: !333)
!3391 = !DILocation(line: 877, column: 8, scope: !689)
!3392 = !DILocalVariable(name: "fg", scope: !689, file: !679, line: 878, type: !325)
!3393 = !DILocation(line: 878, column: 6, scope: !689)
!3394 = !DILocalVariable(name: "bg", scope: !689, file: !679, line: 878, type: !325)
!3395 = !DILocation(line: 878, column: 10, scope: !689)
!3396 = !DILocalVariable(name: "flags", scope: !689, file: !679, line: 878, type: !325)
!3397 = !DILocation(line: 878, column: 14, scope: !689)
!3398 = !DILocalVariable(name: "i", scope: !689, file: !679, line: 878, type: !325)
!3399 = !DILocation(line: 878, column: 21, scope: !689)
!3400 = !DILocalVariable(name: "num", scope: !689, file: !679, line: 879, type: !493)
!3401 = !DILocation(line: 879, column: 8, scope: !689)
!3402 = !DILocalVariable(name: "num2", scope: !689, file: !679, line: 879, type: !493)
!3403 = !DILocation(line: 879, column: 13, scope: !689)
!3404 = !DILocation(line: 881, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !689, file: !679, line: 881, column: 6)
!3406 = !DILocation(line: 881, column: 6, scope: !3405)
!3407 = !DILocation(line: 881, column: 11, scope: !3405)
!3408 = !DILocation(line: 881, column: 6, scope: !689)
!3409 = !DILocation(line: 882, column: 10, scope: !3405)
!3410 = !DILocation(line: 882, column: 3, scope: !3405)
!3411 = !DILocation(line: 883, column: 13, scope: !689)
!3412 = !DILocation(line: 883, column: 8, scope: !689)
!3413 = !DILocation(line: 885, column: 7, scope: !689)
!3414 = !DILocation(line: 885, column: 14, scope: !689)
!3415 = !DILocation(line: 885, column: 21, scope: !689)
!3416 = !DILocation(line: 885, column: 25, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !689, file: !679, discriminator: 1)
!3418 = !DILocation(line: 885, column: 24, scope: !3417)
!3419 = !DILocation(line: 885, column: 32, scope: !3417)
!3420 = !DILocation(line: 885, column: 7, scope: !3417)
!3421 = !DILocation(line: 885, column: 38, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !689, file: !679, discriminator: 2)
!3423 = !DILocation(line: 885, column: 45, scope: !3422)
!3424 = !DILocation(line: 885, column: 7, scope: !3422)
!3425 = !DILocation(line: 885, column: 62, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !689, file: !679, discriminator: 3)
!3427 = !DILocation(line: 885, column: 61, scope: !3426)
!3428 = !DILocation(line: 885, column: 7, scope: !3426)
!3429 = !DILocation(line: 885, column: 7, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !689, file: !679, discriminator: 4)
!3431 = !DILocation(line: 885, column: 5, scope: !3430)
!3432 = !DILocation(line: 886, column: 7, scope: !689)
!3433 = !DILocation(line: 886, column: 14, scope: !689)
!3434 = !DILocation(line: 886, column: 21, scope: !689)
!3435 = !DILocation(line: 886, column: 25, scope: !3417)
!3436 = !DILocation(line: 886, column: 24, scope: !3417)
!3437 = !DILocation(line: 886, column: 32, scope: !3417)
!3438 = !DILocation(line: 886, column: 7, scope: !3417)
!3439 = !DILocation(line: 886, column: 7, scope: !3422)
!3440 = !DILocation(line: 886, column: 44, scope: !3426)
!3441 = !DILocation(line: 886, column: 43, scope: !3426)
!3442 = !DILocation(line: 886, column: 7, scope: !3426)
!3443 = !DILocation(line: 886, column: 7, scope: !3430)
!3444 = !DILocation(line: 886, column: 5, scope: !3430)
!3445 = !DILocation(line: 887, column: 10, scope: !689)
!3446 = !DILocation(line: 887, column: 20, scope: !689)
!3447 = !DILocation(line: 887, column: 10, scope: !3417)
!3448 = !DILocation(line: 887, column: 34, scope: !3422)
!3449 = !DILocation(line: 887, column: 33, scope: !3422)
!3450 = !DILocation(line: 887, column: 10, scope: !3422)
!3451 = !DILocation(line: 887, column: 10, scope: !3426)
!3452 = !DILocation(line: 887, column: 8, scope: !3426)
!3453 = !DILocation(line: 889, column: 6, scope: !689)
!3454 = !DILocation(line: 890, column: 2, scope: !689)
!3455 = !DILocation(line: 891, column: 8, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !679, line: 891, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !679, line: 890, column: 17)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !679, line: 890, column: 2)
!3459 = distinct !DILexicalBlock(scope: !689, file: !679, line: 890, column: 2)
!3460 = !DILocation(line: 891, column: 7, scope: !3456)
!3461 = !DILocation(line: 891, column: 12, scope: !3456)
!3462 = !DILocation(line: 891, column: 7, scope: !3457)
!3463 = !DILocation(line: 891, column: 28, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3456, file: !679, discriminator: 1)
!3465 = !DILocation(line: 891, column: 21, scope: !3464)
!3466 = !DILocation(line: 893, column: 30, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3457, file: !679, line: 893, column: 6)
!3468 = !DILocation(line: 893, column: 29, scope: !3467)
!3469 = !DILocation(line: 893, column: 6, scope: !3467)
!3470 = !DILocation(line: 893, column: 7, scope: !3467)
!3471 = !DILocation(line: 893, column: 9, scope: !3467)
!3472 = !DILocation(line: 893, column: 8, scope: !3467)
!3473 = !DILocation(line: 893, column: 10, scope: !3467)
!3474 = !DILocation(line: 893, column: 6, scope: !3457)
!3475 = !DILocation(line: 894, column: 20, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !679, line: 894, column: 8)
!3477 = distinct !DILexicalBlock(scope: !3467, file: !679, line: 893, column: 23)
!3478 = !DILocation(line: 894, column: 9, scope: !3476)
!3479 = !DILocation(line: 894, column: 8, scope: !3477)
!3480 = !DILocation(line: 895, column: 12, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3476, file: !679, line: 894, column: 45)
!3482 = !DILocation(line: 895, column: 5, scope: !3481)
!3483 = !DILocation(line: 897, column: 10, scope: !3477)
!3484 = !DILocation(line: 897, column: 8, scope: !3477)
!3485 = !DILocation(line: 898, column: 3, scope: !3477)
!3486 = !DILocation(line: 900, column: 8, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3457, file: !679, line: 900, column: 7)
!3488 = !DILocation(line: 900, column: 7, scope: !3487)
!3489 = !DILocation(line: 900, column: 12, scope: !3487)
!3490 = !DILocation(line: 900, column: 19, scope: !3487)
!3491 = !DILocation(line: 900, column: 23, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3487, file: !679, discriminator: 1)
!3493 = !DILocation(line: 900, column: 22, scope: !3492)
!3494 = !DILocation(line: 900, column: 27, scope: !3492)
!3495 = !DILocation(line: 900, column: 7, scope: !3492)
!3496 = !DILocation(line: 901, column: 11, scope: !3487)
!3497 = !DILocation(line: 901, column: 4, scope: !3487)
!3498 = !DILocation(line: 903, column: 11, scope: !3457)
!3499 = !DILocation(line: 903, column: 3, scope: !3457)
!3500 = !DILocation(line: 906, column: 9, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3457, file: !679, line: 903, column: 16)
!3502 = !DILocation(line: 906, column: 16, scope: !3501)
!3503 = !DILocation(line: 906, column: 7, scope: !3501)
!3504 = !DILocation(line: 907, column: 7, scope: !3501)
!3505 = !DILocation(line: 908, column: 10, scope: !3501)
!3506 = !DILocation(line: 912, column: 4, scope: !3501)
!3507 = !DILocation(line: 915, column: 10, scope: !3501)
!3508 = !DILocation(line: 916, column: 4, scope: !3501)
!3509 = !DILocation(line: 919, column: 10, scope: !3501)
!3510 = !DILocation(line: 920, column: 4, scope: !3501)
!3511 = !DILocation(line: 923, column: 10, scope: !3501)
!3512 = !DILocation(line: 924, column: 4, scope: !3501)
!3513 = !DILocation(line: 927, column: 10, scope: !3501)
!3514 = !DILocation(line: 928, column: 4, scope: !3501)
!3515 = !DILocation(line: 931, column: 10, scope: !3501)
!3516 = !DILocation(line: 932, column: 4, scope: !3501)
!3517 = !DILocation(line: 935, column: 10, scope: !3501)
!3518 = !DILocation(line: 936, column: 4, scope: !3501)
!3519 = !DILocation(line: 939, column: 10, scope: !3501)
!3520 = !DILocation(line: 940, column: 4, scope: !3501)
!3521 = !DILocation(line: 943, column: 10, scope: !3501)
!3522 = !DILocation(line: 944, column: 4, scope: !3501)
!3523 = !DILocation(line: 947, column: 10, scope: !3501)
!3524 = !DILocation(line: 948, column: 4, scope: !3501)
!3525 = !DILocation(line: 951, column: 10, scope: !3501)
!3526 = !DILocation(line: 952, column: 4, scope: !3501)
!3527 = !DILocation(line: 955, column: 10, scope: !3501)
!3528 = !DILocation(line: 956, column: 9, scope: !3501)
!3529 = !DILocation(line: 956, column: 16, scope: !3501)
!3530 = !DILocation(line: 956, column: 7, scope: !3501)
!3531 = !DILocation(line: 957, column: 4, scope: !3501)
!3532 = !DILocation(line: 960, column: 7, scope: !3501)
!3533 = !DILocation(line: 961, column: 10, scope: !3501)
!3534 = !DILocation(line: 962, column: 4, scope: !3501)
!3535 = !DILocation(line: 966, column: 9, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3501, file: !679, line: 966, column: 8)
!3537 = !DILocation(line: 966, column: 8, scope: !3536)
!3538 = !DILocation(line: 966, column: 13, scope: !3536)
!3539 = !DILocation(line: 966, column: 8, scope: !3501)
!3540 = !DILocation(line: 966, column: 21, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3536, file: !679, discriminator: 1)
!3542 = !DILocation(line: 967, column: 7, scope: !3501)
!3543 = !DILocation(line: 969, column: 20, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3501, file: !679, line: 969, column: 8)
!3545 = !DILocation(line: 969, column: 9, scope: !3544)
!3546 = !DILocation(line: 969, column: 8, scope: !3501)
!3547 = !DILocation(line: 970, column: 12, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !679, line: 969, column: 46)
!3549 = !DILocation(line: 970, column: 5, scope: !3548)
!3550 = !DILocation(line: 972, column: 10, scope: !3501)
!3551 = !DILocation(line: 972, column: 8, scope: !3501)
!3552 = !DILocation(line: 974, column: 9, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3501, file: !679, line: 974, column: 8)
!3554 = !DILocation(line: 974, column: 8, scope: !3553)
!3555 = !DILocation(line: 974, column: 13, scope: !3553)
!3556 = !DILocation(line: 974, column: 8, scope: !3501)
!3557 = !DILocation(line: 974, column: 29, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3553, file: !679, discriminator: 1)
!3559 = !DILocation(line: 974, column: 22, scope: !3558)
!3560 = !DILocation(line: 976, column: 12, scope: !3501)
!3561 = !DILocation(line: 976, column: 4, scope: !3501)
!3562 = !DILocation(line: 979, column: 10, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3501, file: !679, line: 976, column: 18)
!3564 = !DILocation(line: 981, column: 12, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 981, column: 5)
!3566 = !DILocation(line: 981, column: 10, scope: !3565)
!3567 = !DILocation(line: 981, column: 17, scope: !3568)
!3568 = !DILexicalBlockFile(scope: !3569, file: !679, discriminator: 1)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !679, line: 981, column: 5)
!3570 = !DILocation(line: 981, column: 19, scope: !3568)
!3571 = !DILocation(line: 981, column: 5, scope: !3568)
!3572 = !DILocation(line: 982, column: 11, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !679, line: 981, column: 29)
!3574 = !DILocation(line: 984, column: 11, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3573, file: !679, line: 984, column: 10)
!3576 = !DILocation(line: 984, column: 10, scope: !3575)
!3577 = !DILocation(line: 984, column: 15, scope: !3575)
!3578 = !DILocation(line: 984, column: 22, scope: !3575)
!3579 = !DILocation(line: 984, column: 26, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3575, file: !679, discriminator: 1)
!3581 = !DILocation(line: 984, column: 25, scope: !3580)
!3582 = !DILocation(line: 984, column: 30, scope: !3580)
!3583 = !DILocation(line: 984, column: 10, scope: !3580)
!3584 = !DILocation(line: 985, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3575, file: !679, line: 984, column: 38)
!3586 = !DILocation(line: 986, column: 7, scope: !3585)
!3587 = !DILocation(line: 988, column: 9, scope: !3573)
!3588 = !DILocation(line: 989, column: 6, scope: !3573)
!3589 = !DILocation(line: 989, column: 36, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3591, file: !679, discriminator: 1)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !679, line: 989, column: 6)
!3592 = distinct !DILexicalBlock(scope: !3573, file: !679, line: 989, column: 6)
!3593 = !DILocation(line: 989, column: 35, scope: !3590)
!3594 = !DILocation(line: 989, column: 12, scope: !3590)
!3595 = !DILocation(line: 989, column: 13, scope: !3590)
!3596 = !DILocation(line: 989, column: 15, scope: !3590)
!3597 = !DILocation(line: 989, column: 14, scope: !3590)
!3598 = !DILocation(line: 989, column: 16, scope: !3590)
!3599 = !DILocation(line: 989, column: 6, scope: !3590)
!3600 = !DILocation(line: 990, column: 15, scope: !3591)
!3601 = !DILocation(line: 990, column: 19, scope: !3591)
!3602 = !DILocation(line: 991, column: 11, scope: !3591)
!3603 = !DILocation(line: 991, column: 15, scope: !3591)
!3604 = !DILocation(line: 991, column: 22, scope: !3591)
!3605 = !DILocation(line: 991, column: 31, scope: !3591)
!3606 = !DILocation(line: 991, column: 30, scope: !3591)
!3607 = !DILocation(line: 991, column: 34, scope: !3591)
!3608 = !DILocation(line: 991, column: 27, scope: !3591)
!3609 = !DILocation(line: 991, column: 40, scope: !3591)
!3610 = !DILocation(line: 990, column: 27, scope: !3591)
!3611 = !DILocation(line: 990, column: 12, scope: !3591)
!3612 = !DILocation(line: 990, column: 7, scope: !3591)
!3613 = !DILocation(line: 989, column: 32, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3591, file: !679, discriminator: 2)
!3615 = !DILocation(line: 989, column: 6, scope: !3614)
!3616 = distinct !{!3616, !3588}
!3617 = !DILocation(line: 993, column: 11, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3573, file: !679, line: 993, column: 10)
!3619 = !DILocation(line: 993, column: 10, scope: !3618)
!3620 = !DILocation(line: 993, column: 15, scope: !3618)
!3621 = !DILocation(line: 993, column: 10, scope: !3573)
!3622 = !DILocation(line: 993, column: 31, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3618, file: !679, discriminator: 1)
!3624 = !DILocation(line: 993, column: 24, scope: !3623)
!3625 = !DILocation(line: 994, column: 5, scope: !3573)
!3626 = !DILocation(line: 981, column: 24, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3569, file: !679, discriminator: 2)
!3628 = !DILocation(line: 981, column: 5, scope: !3627)
!3629 = distinct !{!3629, !3630}
!3630 = !DILocation(line: 981, column: 5, scope: !3563)
!3631 = !DILocation(line: 996, column: 9, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 996, column: 9)
!3633 = !DILocation(line: 996, column: 11, scope: !3632)
!3634 = !DILocation(line: 996, column: 9, scope: !3563)
!3635 = !DILocation(line: 996, column: 18, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3632, file: !679, discriminator: 1)
!3637 = !DILocation(line: 1006, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 1006, column: 9)
!3639 = !DILocation(line: 1006, column: 13, scope: !3638)
!3640 = !DILocation(line: 1006, column: 9, scope: !3563)
!3641 = !DILocation(line: 1007, column: 12, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3638, file: !679, line: 1006, column: 20)
!3643 = !DILocation(line: 1008, column: 31, scope: !3642)
!3644 = !DILocation(line: 1008, column: 11, scope: !3642)
!3645 = !DILocation(line: 1008, column: 9, scope: !3642)
!3646 = !DILocation(line: 1009, column: 5, scope: !3642)
!3647 = !DILocation(line: 1009, column: 16, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !679, discriminator: 1)
!3649 = distinct !DILexicalBlock(scope: !3638, file: !679, line: 1009, column: 16)
!3650 = !DILocation(line: 1009, column: 20, scope: !3648)
!3651 = !DILocation(line: 1010, column: 12, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !679, line: 1009, column: 27)
!3653 = !DILocation(line: 1011, column: 31, scope: !3652)
!3654 = !DILocation(line: 1011, column: 11, scope: !3652)
!3655 = !DILocation(line: 1011, column: 9, scope: !3652)
!3656 = !DILocation(line: 1012, column: 5, scope: !3652)
!3657 = !DILocation(line: 1015, column: 5, scope: !3563)
!3658 = !DILocation(line: 1018, column: 10, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 1018, column: 9)
!3660 = !DILocation(line: 1018, column: 9, scope: !3659)
!3661 = !DILocation(line: 1018, column: 14, scope: !3659)
!3662 = !DILocation(line: 1018, column: 9, scope: !3563)
!3663 = !DILocation(line: 1018, column: 22, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3659, file: !679, discriminator: 1)
!3665 = !DILocation(line: 1019, column: 8, scope: !3563)
!3666 = !DILocation(line: 1021, column: 21, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 1021, column: 9)
!3668 = !DILocation(line: 1021, column: 10, scope: !3667)
!3669 = !DILocation(line: 1021, column: 9, scope: !3563)
!3670 = !DILocation(line: 1022, column: 13, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !679, line: 1021, column: 47)
!3672 = !DILocation(line: 1022, column: 6, scope: !3671)
!3673 = !DILocation(line: 1024, column: 11, scope: !3563)
!3674 = !DILocation(line: 1024, column: 9, scope: !3563)
!3675 = !DILocation(line: 1026, column: 10, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 1026, column: 9)
!3677 = !DILocation(line: 1026, column: 9, scope: !3676)
!3678 = !DILocation(line: 1026, column: 14, scope: !3676)
!3679 = !DILocation(line: 1026, column: 9, scope: !3563)
!3680 = !DILocation(line: 1026, column: 30, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3676, file: !679, discriminator: 1)
!3682 = !DILocation(line: 1026, column: 23, scope: !3681)
!3683 = !DILocation(line: 1028, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3563, file: !679, line: 1028, column: 9)
!3685 = !DILocation(line: 1028, column: 13, scope: !3684)
!3686 = !DILocation(line: 1028, column: 9, scope: !3563)
!3687 = !DILocation(line: 1029, column: 12, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !679, line: 1028, column: 20)
!3689 = !DILocation(line: 1030, column: 11, scope: !3688)
!3690 = !DILocation(line: 1030, column: 9, scope: !3688)
!3691 = !DILocation(line: 1031, column: 5, scope: !3688)
!3692 = !DILocation(line: 1031, column: 16, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3694, file: !679, discriminator: 1)
!3694 = distinct !DILexicalBlock(scope: !3684, file: !679, line: 1031, column: 16)
!3695 = !DILocation(line: 1031, column: 20, scope: !3693)
!3696 = !DILocation(line: 1032, column: 12, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !679, line: 1031, column: 27)
!3698 = !DILocation(line: 1033, column: 11, scope: !3697)
!3699 = !DILocation(line: 1033, column: 9, scope: !3697)
!3700 = !DILocation(line: 1034, column: 5, scope: !3697)
!3701 = !DILocation(line: 1036, column: 5, scope: !3563)
!3702 = !DILocation(line: 1038, column: 4, scope: !3501)
!3703 = !DILocation(line: 1040, column: 8, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3501, file: !679, line: 1040, column: 8)
!3705 = !DILocation(line: 1040, column: 12, scope: !3704)
!3706 = !DILocation(line: 1040, column: 18, scope: !3704)
!3707 = !DILocation(line: 1040, column: 21, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3704, file: !679, discriminator: 1)
!3709 = !DILocation(line: 1040, column: 25, scope: !3708)
!3710 = !DILocation(line: 1040, column: 8, scope: !3708)
!3711 = !DILocation(line: 1041, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3704, file: !679, line: 1040, column: 32)
!3713 = !DILocation(line: 1042, column: 18, scope: !3712)
!3714 = !DILocation(line: 1042, column: 21, scope: !3712)
!3715 = !DILocation(line: 1042, column: 10, scope: !3712)
!3716 = !DILocation(line: 1042, column: 8, scope: !3712)
!3717 = !DILocation(line: 1043, column: 4, scope: !3712)
!3718 = !DILocation(line: 1043, column: 15, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3720, file: !679, discriminator: 1)
!3720 = distinct !DILexicalBlock(scope: !3704, file: !679, line: 1043, column: 15)
!3721 = !DILocation(line: 1043, column: 19, scope: !3719)
!3722 = !DILocation(line: 1043, column: 25, scope: !3719)
!3723 = !DILocation(line: 1043, column: 28, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3720, file: !679, discriminator: 2)
!3725 = !DILocation(line: 1043, column: 32, scope: !3724)
!3726 = !DILocation(line: 1043, column: 15, scope: !3724)
!3727 = !DILocation(line: 1044, column: 11, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3720, file: !679, line: 1043, column: 39)
!3729 = !DILocation(line: 1045, column: 18, scope: !3728)
!3730 = !DILocation(line: 1045, column: 21, scope: !3728)
!3731 = !DILocation(line: 1045, column: 10, scope: !3728)
!3732 = !DILocation(line: 1045, column: 8, scope: !3728)
!3733 = !DILocation(line: 1046, column: 4, scope: !3728)
!3734 = !DILocation(line: 1046, column: 15, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3736, file: !679, discriminator: 1)
!3736 = distinct !DILexicalBlock(scope: !3720, file: !679, line: 1046, column: 15)
!3737 = !DILocation(line: 1046, column: 19, scope: !3735)
!3738 = !DILocation(line: 1046, column: 25, scope: !3735)
!3739 = !DILocation(line: 1046, column: 28, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3736, file: !679, discriminator: 2)
!3741 = !DILocation(line: 1046, column: 32, scope: !3740)
!3742 = !DILocation(line: 1046, column: 15, scope: !3740)
!3743 = !DILocation(line: 1047, column: 11, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3736, file: !679, line: 1046, column: 39)
!3745 = !DILocation(line: 1048, column: 22, scope: !3744)
!3746 = !DILocation(line: 1048, column: 25, scope: !3744)
!3747 = !DILocation(line: 1048, column: 14, scope: !3744)
!3748 = !DILocation(line: 1048, column: 12, scope: !3744)
!3749 = !DILocation(line: 1048, column: 8, scope: !3744)
!3750 = !DILocation(line: 1049, column: 4, scope: !3744)
!3751 = !DILocation(line: 1049, column: 15, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3753, file: !679, discriminator: 1)
!3753 = distinct !DILexicalBlock(scope: !3736, file: !679, line: 1049, column: 15)
!3754 = !DILocation(line: 1049, column: 19, scope: !3752)
!3755 = !DILocation(line: 1049, column: 26, scope: !3752)
!3756 = !DILocation(line: 1049, column: 29, scope: !3757)
!3757 = !DILexicalBlockFile(scope: !3753, file: !679, discriminator: 2)
!3758 = !DILocation(line: 1049, column: 33, scope: !3757)
!3759 = !DILocation(line: 1049, column: 15, scope: !3757)
!3760 = !DILocation(line: 1050, column: 11, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3753, file: !679, line: 1049, column: 41)
!3762 = !DILocation(line: 1051, column: 22, scope: !3761)
!3763 = !DILocation(line: 1051, column: 25, scope: !3761)
!3764 = !DILocation(line: 1051, column: 14, scope: !3761)
!3765 = !DILocation(line: 1051, column: 12, scope: !3761)
!3766 = !DILocation(line: 1051, column: 8, scope: !3761)
!3767 = !DILocation(line: 1052, column: 4, scope: !3761)
!3768 = !DILocation(line: 1053, column: 4, scope: !3501)
!3769 = !DILocation(line: 1055, column: 7, scope: !3457)
!3770 = !DILocation(line: 1057, column: 8, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3457, file: !679, line: 1057, column: 7)
!3772 = !DILocation(line: 1057, column: 7, scope: !3771)
!3773 = !DILocation(line: 1057, column: 12, scope: !3771)
!3774 = !DILocation(line: 1057, column: 7, scope: !3457)
!3775 = !DILocation(line: 1058, column: 8, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !679, line: 1058, column: 8)
!3777 = distinct !DILexicalBlock(scope: !3771, file: !679, line: 1057, column: 20)
!3778 = !DILocation(line: 1058, column: 15, scope: !3776)
!3779 = !DILocation(line: 1058, column: 8, scope: !3777)
!3780 = !DILocation(line: 1058, column: 33, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !3776, file: !679, discriminator: 1)
!3782 = !DILocation(line: 1058, column: 24, scope: !3781)
!3783 = !DILocation(line: 1058, column: 31, scope: !3781)
!3784 = !DILocation(line: 1058, column: 23, scope: !3781)
!3785 = !DILocation(line: 1059, column: 8, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3777, file: !679, line: 1059, column: 8)
!3787 = !DILocation(line: 1059, column: 15, scope: !3786)
!3788 = !DILocation(line: 1059, column: 8, scope: !3777)
!3789 = !DILocation(line: 1059, column: 33, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !3786, file: !679, discriminator: 1)
!3791 = !DILocation(line: 1059, column: 24, scope: !3790)
!3792 = !DILocation(line: 1059, column: 31, scope: !3790)
!3793 = !DILocation(line: 1059, column: 23, scope: !3790)
!3794 = !DILocation(line: 1060, column: 8, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3777, file: !679, line: 1060, column: 8)
!3796 = !DILocation(line: 1060, column: 18, scope: !3795)
!3797 = !DILocation(line: 1060, column: 8, scope: !3777)
!3798 = !DILocation(line: 1060, column: 39, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !3795, file: !679, discriminator: 1)
!3800 = !DILocation(line: 1060, column: 27, scope: !3799)
!3801 = !DILocation(line: 1060, column: 37, scope: !3799)
!3802 = !DILocation(line: 1060, column: 26, scope: !3799)
!3803 = !DILocation(line: 1062, column: 7, scope: !3777)
!3804 = !DILocation(line: 1063, column: 4, scope: !3777)
!3805 = !DILocation(line: 1065, column: 2, scope: !3457)
!3806 = !DILocation(line: 890, column: 13, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !3458, file: !679, discriminator: 1)
!3808 = !DILocation(line: 890, column: 2, scope: !3807)
!3809 = distinct !{!3809, !3454}
!3810 = !DILocation(line: 1067, column: 9, scope: !689)
!3811 = !DILocation(line: 1067, column: 2, scope: !689)
!3812 = !DILocation(line: 1068, column: 1, scope: !689)
!3813 = distinct !DISubprogram(name: "format_send_to_gui", scope: !679, file: !679, line: 1224, type: !3814, isLocal: false, isDefinition: true, scopeLine: 1225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !1581, !331}
!3816 = !DILocalVariable(name: "dest", arg: 1, scope: !3813, file: !679, line: 1224, type: !1581)
!3817 = !DILocation(line: 1224, column: 40, scope: !3813)
!3818 = !DILocalVariable(name: "text", arg: 2, scope: !3813, file: !679, line: 1224, type: !331)
!3819 = !DILocation(line: 1224, column: 58, scope: !3813)
!3820 = !DILocalVariable(name: "theme", scope: !3813, file: !679, line: 1226, type: !692)
!3821 = !DILocation(line: 1226, column: 13, scope: !3813)
!3822 = !DILocalVariable(name: "dup", scope: !3813, file: !679, line: 1227, type: !333)
!3823 = !DILocation(line: 1227, column: 8, scope: !3813)
!3824 = !DILocalVariable(name: "str", scope: !3813, file: !679, line: 1227, type: !333)
!3825 = !DILocation(line: 1227, column: 14, scope: !3813)
!3826 = !DILocalVariable(name: "ptr", scope: !3813, file: !679, line: 1227, type: !333)
!3827 = !DILocation(line: 1227, column: 20, scope: !3813)
!3828 = !DILocalVariable(name: "type", scope: !3813, file: !679, line: 1227, type: !327)
!3829 = !DILocation(line: 1227, column: 25, scope: !3813)
!3830 = !DILocalVariable(name: "fgcolor", scope: !3813, file: !679, line: 1228, type: !325)
!3831 = !DILocation(line: 1228, column: 6, scope: !3813)
!3832 = !DILocalVariable(name: "bgcolor", scope: !3813, file: !679, line: 1228, type: !325)
!3833 = !DILocation(line: 1228, column: 15, scope: !3813)
!3834 = !DILocalVariable(name: "flags", scope: !3813, file: !679, line: 1229, type: !325)
!3835 = !DILocation(line: 1229, column: 6, scope: !3813)
!3836 = !DILocation(line: 1231, column: 11, scope: !3813)
!3837 = !DILocation(line: 1231, column: 17, scope: !3813)
!3838 = !DILocation(line: 1231, column: 24, scope: !3813)
!3839 = !DILocation(line: 1231, column: 9, scope: !3813)
!3840 = !DILocation(line: 1231, column: 13, scope: !3841)
!3841 = !DILexicalBlockFile(scope: !3813, file: !679, discriminator: 1)
!3842 = !DILocation(line: 1231, column: 19, scope: !3841)
!3843 = !DILocation(line: 1231, column: 28, scope: !3841)
!3844 = !DILocation(line: 1231, column: 34, scope: !3841)
!3845 = !DILocation(line: 1231, column: 11, scope: !3841)
!3846 = !DILocation(line: 1231, column: 12, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3813, file: !679, discriminator: 2)
!3848 = !DILocation(line: 1231, column: 18, scope: !3847)
!3849 = !DILocation(line: 1231, column: 27, scope: !3847)
!3850 = !DILocation(line: 1231, column: 11, scope: !3847)
!3851 = !DILocation(line: 1231, column: 35, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3813, file: !679, discriminator: 3)
!3853 = !DILocation(line: 1231, column: 11, scope: !3852)
!3854 = !DILocation(line: 1231, column: 11, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3813, file: !679, discriminator: 4)
!3856 = !DILocation(line: 1231, column: 10, scope: !3855)
!3857 = !DILocation(line: 1231, column: 8, scope: !3855)
!3858 = !DILocation(line: 1233, column: 23, scope: !3813)
!3859 = !DILocation(line: 1233, column: 14, scope: !3813)
!3860 = !DILocation(line: 1233, column: 12, scope: !3813)
!3861 = !DILocation(line: 1233, column: 6, scope: !3813)
!3862 = !DILocation(line: 1235, column: 8, scope: !3813)
!3863 = !DILocation(line: 1235, column: 23, scope: !3813)
!3864 = !DILocation(line: 1235, column: 30, scope: !3813)
!3865 = !DILocation(line: 1235, column: 21, scope: !3813)
!3866 = !DILocation(line: 1235, column: 53, scope: !3813)
!3867 = !DILocation(line: 1237, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3813, file: !679, line: 1237, column: 6)
!3869 = !DILocation(line: 1237, column: 6, scope: !3868)
!3870 = !DILocation(line: 1237, column: 11, scope: !3868)
!3871 = !DILocation(line: 1237, column: 6, scope: !3813)
!3872 = !DILocation(line: 1239, column: 18, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3868, file: !679, line: 1237, column: 20)
!3874 = !DILocation(line: 1239, column: 44, scope: !3873)
!3875 = !DILocation(line: 1239, column: 50, scope: !3873)
!3876 = !DILocation(line: 1239, column: 79, scope: !3873)
!3877 = !DILocation(line: 1239, column: 70, scope: !3873)
!3878 = !DILocation(line: 1239, column: 59, scope: !3873)
!3879 = !DILocation(line: 1240, column: 39, scope: !3873)
!3880 = !DILocation(line: 1240, column: 30, scope: !3873)
!3881 = !DILocation(line: 1240, column: 19, scope: !3873)
!3882 = !DILocation(line: 1240, column: 71, scope: !3873)
!3883 = !DILocation(line: 1240, column: 62, scope: !3873)
!3884 = !DILocation(line: 1240, column: 51, scope: !3873)
!3885 = !DILocation(line: 1240, column: 80, scope: !3873)
!3886 = !DILocation(line: 1240, column: 85, scope: !3873)
!3887 = !DILocation(line: 1239, column: 3, scope: !3873)
!3888 = !DILocation(line: 1241, column: 2, scope: !3873)
!3889 = !DILocation(line: 1243, column: 2, scope: !3813)
!3890 = !DILocation(line: 1243, column: 10, scope: !3841)
!3891 = !DILocation(line: 1243, column: 9, scope: !3841)
!3892 = !DILocation(line: 1243, column: 14, scope: !3841)
!3893 = !DILocation(line: 1243, column: 2, scope: !3841)
!3894 = !DILocation(line: 1244, column: 8, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3813, file: !679, line: 1243, column: 23)
!3896 = !DILocation(line: 1245, column: 14, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1245, column: 3)
!3898 = !DILocation(line: 1245, column: 12, scope: !3897)
!3899 = !DILocation(line: 1245, column: 8, scope: !3897)
!3900 = !DILocation(line: 1245, column: 20, scope: !3901)
!3901 = !DILexicalBlockFile(scope: !3902, file: !679, discriminator: 1)
!3902 = distinct !DILexicalBlock(scope: !3897, file: !679, line: 1245, column: 3)
!3903 = !DILocation(line: 1245, column: 19, scope: !3901)
!3904 = !DILocation(line: 1245, column: 24, scope: !3901)
!3905 = !DILocation(line: 1245, column: 3, scope: !3901)
!3906 = !DILocation(line: 1246, column: 11, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !679, line: 1246, column: 8)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !679, line: 1245, column: 40)
!3909 = !DILocation(line: 1246, column: 10, scope: !3907)
!3910 = !DILocation(line: 1246, column: 9, scope: !3907)
!3911 = !DILocation(line: 1246, column: 16, scope: !3907)
!3912 = !DILocation(line: 1246, column: 21, scope: !3907)
!3913 = !DILocation(line: 1246, column: 26, scope: !3914)
!3914 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 1)
!3915 = !DILocation(line: 1246, column: 25, scope: !3914)
!3916 = !DILocation(line: 1246, column: 24, scope: !3914)
!3917 = !DILocation(line: 1246, column: 31, scope: !3914)
!3918 = !DILocation(line: 1246, column: 36, scope: !3914)
!3919 = !DILocation(line: 1246, column: 41, scope: !3920)
!3920 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 2)
!3921 = !DILocation(line: 1246, column: 40, scope: !3920)
!3922 = !DILocation(line: 1246, column: 39, scope: !3920)
!3923 = !DILocation(line: 1246, column: 46, scope: !3920)
!3924 = !DILocation(line: 1246, column: 51, scope: !3920)
!3925 = !DILocation(line: 1246, column: 56, scope: !3926)
!3926 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 3)
!3927 = !DILocation(line: 1246, column: 55, scope: !3926)
!3928 = !DILocation(line: 1246, column: 54, scope: !3926)
!3929 = !DILocation(line: 1246, column: 61, scope: !3926)
!3930 = !DILocation(line: 1246, column: 66, scope: !3926)
!3931 = !DILocation(line: 1246, column: 71, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 4)
!3933 = !DILocation(line: 1246, column: 70, scope: !3932)
!3934 = !DILocation(line: 1246, column: 69, scope: !3932)
!3935 = !DILocation(line: 1246, column: 76, scope: !3932)
!3936 = !DILocation(line: 1246, column: 81, scope: !3932)
!3937 = !DILocation(line: 1246, column: 86, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 5)
!3939 = !DILocation(line: 1246, column: 85, scope: !3938)
!3940 = !DILocation(line: 1246, column: 84, scope: !3938)
!3941 = !DILocation(line: 1246, column: 91, scope: !3938)
!3942 = !DILocation(line: 1246, column: 97, scope: !3938)
!3943 = !DILocation(line: 1246, column: 102, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 6)
!3945 = !DILocation(line: 1246, column: 101, scope: !3944)
!3946 = !DILocation(line: 1246, column: 100, scope: !3944)
!3947 = !DILocation(line: 1246, column: 107, scope: !3944)
!3948 = !DILocation(line: 1246, column: 113, scope: !3944)
!3949 = !DILocation(line: 1246, column: 118, scope: !3950)
!3950 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 7)
!3951 = !DILocation(line: 1246, column: 117, scope: !3950)
!3952 = !DILocation(line: 1246, column: 116, scope: !3950)
!3953 = !DILocation(line: 1246, column: 123, scope: !3950)
!3954 = !DILocation(line: 1246, column: 129, scope: !3950)
!3955 = !DILocation(line: 1246, column: 134, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 8)
!3957 = !DILocation(line: 1246, column: 133, scope: !3956)
!3958 = !DILocation(line: 1246, column: 132, scope: !3956)
!3959 = !DILocation(line: 1246, column: 139, scope: !3956)
!3960 = !DILocation(line: 1246, column: 145, scope: !3956)
!3961 = !DILocation(line: 1246, column: 150, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 9)
!3963 = !DILocation(line: 1246, column: 149, scope: !3962)
!3964 = !DILocation(line: 1246, column: 148, scope: !3962)
!3965 = !DILocation(line: 1246, column: 155, scope: !3962)
!3966 = !DILocation(line: 1246, column: 162, scope: !3962)
!3967 = !DILocation(line: 1246, column: 166, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3907, file: !679, discriminator: 10)
!3969 = !DILocation(line: 1246, column: 165, scope: !3968)
!3970 = !DILocation(line: 1246, column: 170, scope: !3968)
!3971 = !DILocation(line: 1246, column: 8, scope: !3968)
!3972 = !DILocation(line: 1247, column: 13, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3907, file: !679, line: 1246, column: 179)
!3974 = !DILocation(line: 1247, column: 12, scope: !3973)
!3975 = !DILocation(line: 1247, column: 10, scope: !3973)
!3976 = !DILocation(line: 1248, column: 9, scope: !3973)
!3977 = !DILocation(line: 1248, column: 12, scope: !3973)
!3978 = !DILocation(line: 1249, column: 5, scope: !3973)
!3979 = !DILocation(line: 1251, column: 3, scope: !3908)
!3980 = !DILocation(line: 1245, column: 36, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3902, file: !679, discriminator: 2)
!3982 = !DILocation(line: 1245, column: 3, scope: !3981)
!3983 = distinct !{!3983, !3984}
!3984 = !DILocation(line: 1245, column: 3, scope: !3895)
!3985 = !DILocation(line: 1253, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1253, column: 7)
!3987 = !DILocation(line: 1253, column: 12, scope: !3986)
!3988 = !DILocation(line: 1253, column: 17, scope: !3986)
!3989 = !DILocation(line: 1253, column: 21, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3986, file: !679, discriminator: 1)
!3991 = !DILocation(line: 1253, column: 20, scope: !3990)
!3992 = !DILocation(line: 1253, column: 25, scope: !3990)
!3993 = !DILocation(line: 1253, column: 7, scope: !3990)
!3994 = !DILocation(line: 1255, column: 10, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3986, file: !679, line: 1253, column: 43)
!3996 = !DILocation(line: 1256, column: 3, scope: !3995)
!3997 = !DILocation(line: 1258, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1258, column: 7)
!3999 = !DILocation(line: 1258, column: 7, scope: !3998)
!4000 = !DILocation(line: 1258, column: 12, scope: !3998)
!4001 = !DILocation(line: 1258, column: 20, scope: !3998)
!4002 = !DILocation(line: 1258, column: 24, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3998, file: !679, discriminator: 1)
!4004 = !DILocation(line: 1258, column: 30, scope: !4003)
!4005 = !DILocation(line: 1258, column: 7, scope: !4003)
!4006 = !DILocation(line: 1260, column: 19, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3998, file: !679, line: 1258, column: 41)
!4008 = !DILocation(line: 1260, column: 45, scope: !4007)
!4009 = !DILocation(line: 1260, column: 51, scope: !4007)
!4010 = !DILocation(line: 1261, column: 33, scope: !4007)
!4011 = !DILocation(line: 1261, column: 24, scope: !4007)
!4012 = !DILocation(line: 1261, column: 13, scope: !4007)
!4013 = !DILocation(line: 1262, column: 33, scope: !4007)
!4014 = !DILocation(line: 1262, column: 24, scope: !4007)
!4015 = !DILocation(line: 1262, column: 13, scope: !4007)
!4016 = !DILocation(line: 1263, column: 33, scope: !4007)
!4017 = !DILocation(line: 1263, column: 24, scope: !4007)
!4018 = !DILocation(line: 1263, column: 13, scope: !4007)
!4019 = !DILocation(line: 1263, column: 42, scope: !4007)
!4020 = !DILocation(line: 1264, column: 12, scope: !4007)
!4021 = !DILocation(line: 1260, column: 4, scope: !4007)
!4022 = !DILocation(line: 1265, column: 10, scope: !4007)
!4023 = !DILocation(line: 1266, column: 3, scope: !4007)
!4024 = !DILocation(line: 1268, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1268, column: 7)
!4026 = !DILocation(line: 1268, column: 12, scope: !4025)
!4027 = !DILocation(line: 1268, column: 7, scope: !3895)
!4028 = !DILocation(line: 1269, column: 19, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !679, line: 1268, column: 21)
!4030 = !DILocation(line: 1269, column: 25, scope: !4029)
!4031 = !DILocation(line: 1269, column: 4, scope: !4029)
!4032 = !DILocation(line: 1270, column: 14, scope: !4029)
!4033 = !DILocation(line: 1270, column: 21, scope: !4029)
!4034 = !DILocation(line: 1270, column: 12, scope: !4029)
!4035 = !DILocation(line: 1271, column: 12, scope: !4029)
!4036 = !DILocation(line: 1272, column: 10, scope: !4029)
!4037 = !DILocation(line: 1273, column: 3, scope: !4029)
!4038 = !DILocation(line: 1275, column: 8, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1275, column: 7)
!4040 = !DILocation(line: 1275, column: 7, scope: !4039)
!4041 = !DILocation(line: 1275, column: 12, scope: !4039)
!4042 = !DILocation(line: 1275, column: 7, scope: !3895)
!4043 = !DILocation(line: 1276, column: 4, scope: !4039)
!4044 = !DILocation(line: 1278, column: 11, scope: !3895)
!4045 = !DILocation(line: 1278, column: 3, scope: !3895)
!4046 = !DILocation(line: 1282, column: 9, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1282, column: 8)
!4048 = distinct !DILexicalBlock(scope: !3895, file: !679, line: 1279, column: 3)
!4049 = !DILocation(line: 1282, column: 8, scope: !4048)
!4050 = !DILocation(line: 1283, column: 11, scope: !4047)
!4051 = !DILocation(line: 1283, column: 5, scope: !4047)
!4052 = !DILocation(line: 1284, column: 4, scope: !4048)
!4053 = !DILocation(line: 1288, column: 6, scope: !4048)
!4054 = !DILocation(line: 1288, column: 6, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !4048, file: !679, discriminator: 1)
!4056 = !DILocation(line: 1288, column: 6, scope: !4057)
!4057 = !DILexicalBlockFile(scope: !4048, file: !679, discriminator: 2)
!4058 = !DILocation(line: 1288, column: 6, scope: !4059)
!4059 = !DILexicalBlockFile(scope: !4048, file: !679, discriminator: 3)
!4060 = !DILocation(line: 1289, column: 6, scope: !4048)
!4061 = !DILocation(line: 1289, column: 6, scope: !4055)
!4062 = !DILocation(line: 1289, column: 6, scope: !4057)
!4063 = !DILocation(line: 1289, column: 6, scope: !4059)
!4064 = !DILocation(line: 1287, column: 4, scope: !4048)
!4065 = !DILocation(line: 1290, column: 9, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1290, column: 8)
!4067 = !DILocation(line: 1290, column: 8, scope: !4048)
!4068 = !DILocation(line: 1291, column: 11, scope: !4066)
!4069 = !DILocation(line: 1291, column: 5, scope: !4066)
!4070 = !DILocation(line: 1292, column: 4, scope: !4048)
!4071 = !DILocation(line: 1295, column: 10, scope: !4048)
!4072 = !DILocation(line: 1296, column: 13, scope: !4048)
!4073 = !DILocation(line: 1296, column: 12, scope: !4048)
!4074 = !DILocation(line: 1296, column: 4, scope: !4048)
!4075 = !DILocation(line: 1298, column: 11, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1296, column: 18)
!4077 = !DILocation(line: 1299, column: 5, scope: !4076)
!4078 = !DILocation(line: 1301, column: 11, scope: !4076)
!4079 = !DILocation(line: 1302, column: 5, scope: !4076)
!4080 = !DILocation(line: 1304, column: 11, scope: !4076)
!4081 = !DILocation(line: 1305, column: 5, scope: !4076)
!4082 = !DILocation(line: 1307, column: 11, scope: !4076)
!4083 = !DILocation(line: 1308, column: 5, scope: !4076)
!4084 = !DILocation(line: 1310, column: 11, scope: !4076)
!4085 = !DILocation(line: 1311, column: 5, scope: !4076)
!4086 = !DILocation(line: 1313, column: 11, scope: !4076)
!4087 = !DILocation(line: 1314, column: 5, scope: !4076)
!4088 = !DILocation(line: 1316, column: 11, scope: !4076)
!4089 = !DILocation(line: 1317, column: 5, scope: !4076)
!4090 = !DILocation(line: 1319, column: 15, scope: !4076)
!4091 = !DILocation(line: 1319, column: 22, scope: !4076)
!4092 = !DILocation(line: 1319, column: 13, scope: !4076)
!4093 = !DILocation(line: 1320, column: 13, scope: !4076)
!4094 = !DILocation(line: 1321, column: 11, scope: !4076)
!4095 = !DILocation(line: 1322, column: 5, scope: !4076)
!4096 = !DILocation(line: 1324, column: 5, scope: !4076)
!4097 = !DILocation(line: 1326, column: 23, scope: !4076)
!4098 = !DILocation(line: 1326, column: 22, scope: !4076)
!4099 = !DILocation(line: 1326, column: 20, scope: !4076)
!4100 = !DILocation(line: 1326, column: 29, scope: !4076)
!4101 = !DILocation(line: 1326, column: 13, scope: !4076)
!4102 = !DILocation(line: 1327, column: 11, scope: !4076)
!4103 = !DILocation(line: 1328, column: 5, scope: !4076)
!4104 = !DILocation(line: 1330, column: 23, scope: !4076)
!4105 = !DILocation(line: 1330, column: 22, scope: !4076)
!4106 = !DILocation(line: 1330, column: 20, scope: !4076)
!4107 = !DILocation(line: 1330, column: 29, scope: !4076)
!4108 = !DILocation(line: 1330, column: 13, scope: !4076)
!4109 = !DILocation(line: 1331, column: 11, scope: !4076)
!4110 = !DILocation(line: 1332, column: 5, scope: !4076)
!4111 = !DILocation(line: 1334, column: 23, scope: !4076)
!4112 = !DILocation(line: 1334, column: 22, scope: !4076)
!4113 = !DILocation(line: 1334, column: 20, scope: !4076)
!4114 = !DILocation(line: 1334, column: 29, scope: !4076)
!4115 = !DILocation(line: 1334, column: 13, scope: !4076)
!4116 = !DILocation(line: 1335, column: 11, scope: !4076)
!4117 = !DILocation(line: 1336, column: 5, scope: !4076)
!4118 = !DILocation(line: 1338, column: 23, scope: !4076)
!4119 = !DILocation(line: 1338, column: 22, scope: !4076)
!4120 = !DILocation(line: 1338, column: 20, scope: !4076)
!4121 = !DILocation(line: 1338, column: 29, scope: !4076)
!4122 = !DILocation(line: 1338, column: 13, scope: !4076)
!4123 = !DILocation(line: 1339, column: 11, scope: !4076)
!4124 = !DILocation(line: 1340, column: 5, scope: !4076)
!4125 = !DILocation(line: 1342, column: 23, scope: !4076)
!4126 = !DILocation(line: 1342, column: 22, scope: !4076)
!4127 = !DILocation(line: 1342, column: 20, scope: !4076)
!4128 = !DILocation(line: 1342, column: 29, scope: !4076)
!4129 = !DILocation(line: 1342, column: 13, scope: !4076)
!4130 = !DILocation(line: 1343, column: 11, scope: !4076)
!4131 = !DILocation(line: 1344, column: 5, scope: !4076)
!4132 = !DILocation(line: 1346, column: 23, scope: !4076)
!4133 = !DILocation(line: 1346, column: 22, scope: !4076)
!4134 = !DILocation(line: 1346, column: 20, scope: !4076)
!4135 = !DILocation(line: 1346, column: 29, scope: !4076)
!4136 = !DILocation(line: 1346, column: 13, scope: !4076)
!4137 = !DILocation(line: 1347, column: 11, scope: !4076)
!4138 = !DILocation(line: 1348, column: 5, scope: !4076)
!4139 = !DILocation(line: 1355, column: 10, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4076, file: !679, line: 1355, column: 9)
!4141 = !DILocation(line: 1355, column: 9, scope: !4140)
!4142 = !DILocation(line: 1355, column: 14, scope: !4140)
!4143 = !DILocation(line: 1355, column: 9, scope: !4076)
!4144 = !DILocation(line: 1356, column: 12, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4140, file: !679, line: 1355, column: 26)
!4146 = !DILocation(line: 1357, column: 17, scope: !4145)
!4147 = !DILocation(line: 1357, column: 16, scope: !4145)
!4148 = !DILocation(line: 1357, column: 20, scope: !4145)
!4149 = !DILocation(line: 1357, column: 16, scope: !4150)
!4150 = !DILexicalBlockFile(scope: !4145, file: !679, discriminator: 1)
!4151 = !DILocation(line: 1357, column: 57, scope: !4152)
!4152 = !DILexicalBlockFile(scope: !4145, file: !679, discriminator: 2)
!4153 = !DILocation(line: 1357, column: 56, scope: !4152)
!4154 = !DILocation(line: 1357, column: 40, scope: !4152)
!4155 = !DILocation(line: 1357, column: 60, scope: !4152)
!4156 = !DILocation(line: 1357, column: 16, scope: !4152)
!4157 = !DILocation(line: 1357, column: 16, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4145, file: !679, discriminator: 3)
!4159 = !DILocation(line: 1357, column: 14, scope: !4158)
!4160 = !DILocation(line: 1358, column: 5, scope: !4145)
!4161 = !DILocation(line: 1359, column: 9, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4076, file: !679, line: 1359, column: 9)
!4163 = !DILocation(line: 1359, column: 16, scope: !4162)
!4164 = !DILocation(line: 1359, column: 9, scope: !4076)
!4165 = !DILocation(line: 1360, column: 6, scope: !4162)
!4166 = !DILocation(line: 1362, column: 8, scope: !4076)
!4167 = !DILocation(line: 1363, column: 10, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4076, file: !679, line: 1363, column: 9)
!4169 = !DILocation(line: 1363, column: 9, scope: !4168)
!4170 = !DILocation(line: 1363, column: 14, scope: !4168)
!4171 = !DILocation(line: 1363, column: 9, scope: !4076)
!4172 = !DILocation(line: 1364, column: 12, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4168, file: !679, line: 1363, column: 26)
!4174 = !DILocation(line: 1365, column: 17, scope: !4173)
!4175 = !DILocation(line: 1365, column: 16, scope: !4173)
!4176 = !DILocation(line: 1365, column: 20, scope: !4173)
!4177 = !DILocation(line: 1365, column: 16, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4173, file: !679, discriminator: 1)
!4179 = !DILocation(line: 1365, column: 41, scope: !4180)
!4180 = !DILexicalBlockFile(scope: !4173, file: !679, discriminator: 2)
!4181 = !DILocation(line: 1365, column: 40, scope: !4180)
!4182 = !DILocation(line: 1365, column: 44, scope: !4180)
!4183 = !DILocation(line: 1365, column: 16, scope: !4180)
!4184 = !DILocation(line: 1365, column: 16, scope: !4185)
!4185 = !DILexicalBlockFile(scope: !4173, file: !679, discriminator: 3)
!4186 = !DILocation(line: 1365, column: 14, scope: !4185)
!4187 = !DILocation(line: 1366, column: 5, scope: !4173)
!4188 = !DILocation(line: 1367, column: 4, scope: !4076)
!4189 = !DILocation(line: 1368, column: 9, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1368, column: 8)
!4191 = !DILocation(line: 1368, column: 8, scope: !4190)
!4192 = !DILocation(line: 1368, column: 13, scope: !4190)
!4193 = !DILocation(line: 1368, column: 8, scope: !4048)
!4194 = !DILocation(line: 1369, column: 5, scope: !4190)
!4195 = !DILocation(line: 1371, column: 7, scope: !4048)
!4196 = !DILocation(line: 1372, column: 4, scope: !4048)
!4197 = !DILocation(line: 1375, column: 9, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1375, column: 8)
!4199 = !DILocation(line: 1375, column: 8, scope: !4048)
!4200 = !DILocation(line: 1376, column: 11, scope: !4198)
!4201 = !DILocation(line: 1376, column: 5, scope: !4198)
!4202 = !DILocation(line: 1377, column: 4, scope: !4048)
!4203 = !DILocation(line: 1380, column: 14, scope: !4048)
!4204 = !DILocation(line: 1380, column: 21, scope: !4048)
!4205 = !DILocation(line: 1380, column: 12, scope: !4048)
!4206 = !DILocation(line: 1381, column: 12, scope: !4048)
!4207 = !DILocation(line: 1382, column: 10, scope: !4048)
!4208 = !DILocation(line: 1383, column: 4, scope: !4048)
!4209 = !DILocation(line: 1386, column: 9, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1386, column: 8)
!4211 = !DILocation(line: 1386, column: 8, scope: !4048)
!4212 = !DILocation(line: 1387, column: 11, scope: !4210)
!4213 = !DILocation(line: 1387, column: 5, scope: !4210)
!4214 = !DILocation(line: 1388, column: 4, scope: !4048)
!4215 = !DILocation(line: 1391, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1391, column: 8)
!4217 = !DILocation(line: 1391, column: 8, scope: !4048)
!4218 = !DILocation(line: 1392, column: 11, scope: !4216)
!4219 = !DILocation(line: 1392, column: 5, scope: !4216)
!4220 = !DILocation(line: 1393, column: 4, scope: !4048)
!4221 = !DILocation(line: 1396, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4048, file: !679, line: 1396, column: 8)
!4223 = !DILocation(line: 1396, column: 8, scope: !4048)
!4224 = !DILocation(line: 1397, column: 11, scope: !4222)
!4225 = !DILocation(line: 1397, column: 5, scope: !4222)
!4226 = !DILocation(line: 1398, column: 4, scope: !4048)
!4227 = !DILocation(line: 1402, column: 20, scope: !4048)
!4228 = !DILocation(line: 1402, column: 27, scope: !4048)
!4229 = !DILocation(line: 1403, column: 13, scope: !4048)
!4230 = !DILocation(line: 1403, column: 13, scope: !4055)
!4231 = !DILocation(line: 1403, column: 13, scope: !4057)
!4232 = !DILocation(line: 1403, column: 13, scope: !4059)
!4233 = !DILocation(line: 1404, column: 13, scope: !4048)
!4234 = !DILocation(line: 1404, column: 13, scope: !4055)
!4235 = !DILocation(line: 1404, column: 13, scope: !4057)
!4236 = !DILocation(line: 1404, column: 13, scope: !4059)
!4237 = !DILocation(line: 1405, column: 13, scope: !4048)
!4238 = !DILocation(line: 1405, column: 13, scope: !4055)
!4239 = !DILocation(line: 1405, column: 13, scope: !4057)
!4240 = !DILocation(line: 1405, column: 13, scope: !4059)
!4241 = !DILocation(line: 1402, column: 5, scope: !4055)
!4242 = !DILocation(line: 1401, column: 8, scope: !4048)
!4243 = !DILocation(line: 1406, column: 4, scope: !4048)
!4244 = !DILocation(line: 1409, column: 9, scope: !3895)
!4245 = !DILocation(line: 1409, column: 7, scope: !3895)
!4246 = !DILocation(line: 1243, column: 2, scope: !3847)
!4247 = distinct !{!4247, !3889}
!4248 = !DILocation(line: 1412, column: 9, scope: !3813)
!4249 = !DILocation(line: 1412, column: 2, scope: !3813)
!4250 = !DILocation(line: 1413, column: 1, scope: !3813)
!4251 = distinct !DISubprogram(name: "formats_init", scope: !679, file: !679, line: 1427, type: !490, isLocal: false, isDefinition: true, scopeLine: 1428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!4252 = !DILocation(line: 1429, column: 26, scope: !4251)
!4253 = !DILocation(line: 1429, column: 24, scope: !4251)
!4254 = !DILocation(line: 1431, column: 2, scope: !4251)
!4255 = !DILocation(line: 1432, column: 2, scope: !4251)
!4256 = !DILocation(line: 1433, column: 1, scope: !4251)
!4257 = distinct !DISubprogram(name: "read_settings", scope: !679, file: !679, line: 1415, type: !490, isLocal: true, isDefinition: true, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!4258 = !DILocation(line: 1417, column: 20, scope: !4257)
!4259 = !DILocation(line: 1417, column: 18, scope: !4257)
!4260 = !DILocation(line: 1418, column: 6, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4257, file: !679, line: 1418, column: 6)
!4262 = !DILocation(line: 1418, column: 22, scope: !4261)
!4263 = !DILocation(line: 1418, column: 6, scope: !4257)
!4264 = !DILocation(line: 1419, column: 21, scope: !4261)
!4265 = !DILocation(line: 1419, column: 19, scope: !4261)
!4266 = !DILocation(line: 1419, column: 3, scope: !4261)
!4267 = !DILocation(line: 1420, column: 22, scope: !4257)
!4268 = !DILocation(line: 1420, column: 60, scope: !4257)
!4269 = !DILocation(line: 1420, column: 20, scope: !4257)
!4270 = !DILocation(line: 1422, column: 21, scope: !4257)
!4271 = !DILocation(line: 1422, column: 19, scope: !4257)
!4272 = !DILocation(line: 1423, column: 20, scope: !4257)
!4273 = !DILocation(line: 1423, column: 18, scope: !4257)
!4274 = !DILocation(line: 1424, column: 16, scope: !4257)
!4275 = !DILocation(line: 1424, column: 32, scope: !4257)
!4276 = !DILocation(line: 1424, column: 35, scope: !4277)
!4277 = !DILexicalBlockFile(scope: !4257, file: !679, discriminator: 1)
!4278 = !DILocation(line: 1424, column: 32, scope: !4277)
!4279 = !DILocation(line: 1424, column: 32, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4257, file: !679, discriminator: 2)
!4281 = !DILocation(line: 1424, column: 14, scope: !4280)
!4282 = !DILocation(line: 1425, column: 1, scope: !4257)
!4283 = distinct !DISubprogram(name: "formats_deinit", scope: !679, file: !679, line: 1435, type: !490, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!4284 = !DILocation(line: 1437, column: 2, scope: !4283)
!4285 = !DILocation(line: 1438, column: 1, scope: !4283)
!4286 = distinct !DISubprogram(name: "color_24bit_256_int", scope: !679, file: !679, line: 864, type: !4287, isLocal: true, isDefinition: true, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!325, !413}
!4289 = !DILocalVariable(name: "color", arg: 1, scope: !4286, file: !679, line: 864, type: !413)
!4290 = !DILocation(line: 864, column: 52, scope: !4286)
!4291 = !DILocalVariable(name: "rgb", scope: !4286, file: !679, line: 866, type: !892)
!4292 = !DILocation(line: 866, column: 16, scope: !4286)
!4293 = !DILocation(line: 866, column: 24, scope: !4286)
!4294 = !DILocation(line: 866, column: 26, scope: !4286)
!4295 = !DILocation(line: 866, column: 32, scope: !4286)
!4296 = !DILocation(line: 866, column: 39, scope: !4286)
!4297 = !DILocation(line: 866, column: 45, scope: !4286)
!4298 = !DILocation(line: 866, column: 51, scope: !4286)
!4299 = !DILocation(line: 867, column: 25, scope: !4286)
!4300 = !DILocation(line: 867, column: 9, scope: !4286)
!4301 = !DILocation(line: 867, column: 2, scope: !4286)
