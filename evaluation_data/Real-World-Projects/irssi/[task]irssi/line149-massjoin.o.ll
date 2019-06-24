; ModuleID = './line149-massjoin.o.i'
source_filename = "./line149-massjoin.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"massjoin_max_wait\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"massjoin_max_joins\00", align 1
@massjoin_tag = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"event part\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"event kick\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"event quit\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@massjoin_max_joins = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"massjoin\00", align 1
@__func__.event_join = private unnamed_addr constant [11 x i8] c"event_join\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.event_part = private unnamed_addr constant [11 x i8] c"event_part\00", align 1
@__func__.event_kick = private unnamed_addr constant [11 x i8] c"event_kick\00", align 1
@__func__.event_quit = private unnamed_addr constant [11 x i8] c"event_quit\00", align 1

; Function Attrs: nounwind uwtable
define void @massjoin_init() #0 !dbg !677 {
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 5000), !dbg !679
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 3), !dbg !680
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_massjoin_timeout to i32 (i8*)*), i8* null), !dbg !681
  store i32 %1, i32* @massjoin_tag, align 4, !dbg !682
  call void @read_settings(), !dbg !683
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !684
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !685
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !686
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !687
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !688
  ret void, !dbg !689
}

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_massjoin_timeout() #0 !dbg !690 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !693, metadata !694), !dbg !695
  call void @llvm.dbg.declare(metadata i64* %2, metadata !696, metadata !694), !dbg !697
  %4 = call i64 @time(i64* null) #5, !dbg !698
  %5 = call i32 @settings_get_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0)), !dbg !699
  %6 = sext i32 %5 to i64, !dbg !701
  %7 = sub nsw i64 %4, %6, !dbg !702
  store i64 %7, i64* %2, align 8, !dbg !703
  %8 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !704
  store %struct._GSList* %8, %struct._GSList** %1, align 8, !dbg !706
  br label %9, !dbg !707

; <label>:9:                                      ; preds = %31, %0
  %10 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !708
  %11 = icmp ne %struct._GSList* %10, null, !dbg !711
  br i1 %11, label %12, label %35, !dbg !712

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !713, metadata !694), !dbg !715
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !716
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !717
  %15 = load i8*, i8** %14, align 8, !dbg !717
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !716
  store %struct._IRC_SERVER_REC* %16, %struct._IRC_SERVER_REC** %3, align 8, !dbg !715
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !718
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !718
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !720
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !721
  %21 = bitcast %struct._SERVER_REC* %20 to i8*, !dbg !722
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !723
  %23 = bitcast i8* %22 to %struct._IRC_SERVER_REC*, !dbg !725
  %24 = icmp ne %struct._IRC_SERVER_REC* %23, null, !dbg !725
  br i1 %24, label %25, label %26, !dbg !726

; <label>:25:                                     ; preds = %12
  br i1 false, label %30, label %27, !dbg !727

; <label>:26:                                     ; preds = %12
  br i1 false, label %27, label %30, !dbg !729

; <label>:27:                                     ; preds = %26, %25
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !731
  %29 = load i64, i64* %2, align 8, !dbg !732
  call void @server_check_massjoins(%struct._IRC_SERVER_REC* %28, i64 %29), !dbg !733
  br label %30, !dbg !733

; <label>:30:                                     ; preds = %27, %26, %25
  br label %31, !dbg !734

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !735
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !737
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !737
  store %struct._GSList* %34, %struct._GSList** %1, align 8, !dbg !738
  br label %9, !dbg !739, !llvm.loop !740

; <label>:35:                                     ; preds = %9
  ret i32 1, !dbg !742
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !743 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)), !dbg !744
  store i32 %1, i32* @massjoin_max_joins, align 4, !dbg !745
  ret void, !dbg !746
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !747 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %13 = alloca %struct._NICK_REC*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct._GSList*, align 8
  %16 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !750, metadata !694), !dbg !751
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !752, metadata !694), !dbg !753
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !754, metadata !694), !dbg !755
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !756, metadata !694), !dbg !757
  call void @llvm.dbg.declare(metadata i8** %9, metadata !758, metadata !694), !dbg !759
  call void @llvm.dbg.declare(metadata i8** %10, metadata !760, metadata !694), !dbg !761
  call void @llvm.dbg.declare(metadata i8** %11, metadata !762, metadata !694), !dbg !763
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %12, metadata !764, metadata !694), !dbg !765
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %13, metadata !766, metadata !694), !dbg !767
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !768, metadata !694), !dbg !769
  call void @llvm.dbg.declare(metadata %struct._GSList** %15, metadata !770, metadata !694), !dbg !771
  br label %17, !dbg !772, !llvm.loop !773

; <label>:17:                                     ; preds = %4
  %18 = load i8*, i8** %6, align 8, !dbg !774
  %19 = icmp ne i8* %18, null, !dbg !778
  br i1 %19, label %20, label %21, !dbg !774

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !779

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !782
  br label %173, !dbg !785

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !786

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %7, align 8, !dbg !788
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !790
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 7, !dbg !791
  %27 = load i8*, i8** %26, align 8, !dbg !791
  %28 = call i32 @g_ascii_strcasecmp(i8* %24, i8* %27), !dbg !792
  %29 = icmp eq i32 %28, 0, !dbg !793
  br i1 %29, label %30, label %31, !dbg !794

; <label>:30:                                     ; preds = %23
  br label %173, !dbg !795

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** %6, align 8, !dbg !797
  %33 = call i8* (i8*, i32, ...) @event_get_params(i8* %32, i32 1, i8** %10), !dbg !798
  store i8* %33, i8** %9, align 8, !dbg !799
  %34 = load i8*, i8** %10, align 8, !dbg !800
  %35 = call i8* @strchr(i8* %34, i32 7) #6, !dbg !801
  store i8* %35, i8** %11, align 8, !dbg !802
  %36 = load i8*, i8** %11, align 8, !dbg !803
  %37 = icmp ne i8* %36, null, !dbg !805
  br i1 %37, label %38, label %40, !dbg !806

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %11, align 8, !dbg !807
  store i8 0, i8* %39, align 1, !dbg !809
  br label %40, !dbg !810

; <label>:40:                                     ; preds = %38, %31
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !811
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !811
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !812
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !813
  %45 = load i8*, i8** %10, align 8, !dbg !814
  %46 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %44, i8* %45), !dbg !815
  %47 = bitcast %struct._CHANNEL_REC* %46 to i8*, !dbg !817
  %48 = call i8* @module_check_cast_module(i8* %47, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !818
  %49 = bitcast i8* %48 to %struct._CHANNEL_REC*, !dbg !820
  %50 = bitcast %struct._CHANNEL_REC* %49 to i8*, !dbg !821
  %51 = call i8* @chat_protocol_check_cast(i8* %50, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !822
  %52 = bitcast i8* %51 to %struct._IRC_CHANNEL_REC*, !dbg !824
  store %struct._IRC_CHANNEL_REC* %52, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !825
  %53 = load i8*, i8** %9, align 8, !dbg !826
  call void @g_free(i8* %53), !dbg !827
  %54 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !828
  %55 = icmp eq %struct._IRC_CHANNEL_REC* %54, null, !dbg !830
  br i1 %55, label %56, label %57, !dbg !831

; <label>:56:                                     ; preds = %40
  br label %173, !dbg !832

; <label>:57:                                     ; preds = %40
  %58 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !834
  %59 = bitcast %struct._IRC_CHANNEL_REC* %58 to i8*, !dbg !834
  %60 = call i8* @module_check_cast_module(i8* %59, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !835
  %61 = bitcast i8* %60 to %struct._CHANNEL_REC*, !dbg !836
  %62 = load i8*, i8** %7, align 8, !dbg !837
  %63 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %61, i8* %62), !dbg !838
  store %struct._NICK_REC* %63, %struct._NICK_REC** %13, align 8, !dbg !839
  %64 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !840
  %65 = icmp ne %struct._NICK_REC* %64, null, !dbg !842
  br i1 %65, label %66, label %72, !dbg !843

; <label>:66:                                     ; preds = %57
  %67 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !844
  %68 = bitcast %struct._IRC_CHANNEL_REC* %67 to i8*, !dbg !844
  %69 = call i8* @module_check_cast_module(i8* %68, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !846
  %70 = bitcast i8* %69 to %struct._CHANNEL_REC*, !dbg !847
  %71 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !848
  call void @nicklist_remove(%struct._CHANNEL_REC* %70, %struct._NICK_REC* %71), !dbg !849
  br label %72, !dbg !851

; <label>:72:                                     ; preds = %66, %57
  %73 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !852
  %74 = load i8*, i8** %7, align 8, !dbg !853
  %75 = call %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC* %73, i8* %74, i32 0, i32 0, i32 0, i32 1, i8* null), !dbg !854
  store %struct._NICK_REC* %75, %struct._NICK_REC** %13, align 8, !dbg !855
  %76 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !856
  %77 = bitcast %struct._IRC_CHANNEL_REC* %76 to i8*, !dbg !856
  %78 = call i8* @module_check_cast_module(i8* %77, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !857
  %79 = bitcast i8* %78 to %struct._CHANNEL_REC*, !dbg !858
  %80 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !859
  %81 = load i8*, i8** %8, align 8, !dbg !860
  call void @nicklist_set_host(%struct._CHANNEL_REC* %79, %struct._NICK_REC* %80, i8* %81), !dbg !861
  %82 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !862
  %83 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %82, i32 0, i32 25, !dbg !864
  %84 = load i32, i32* %83, align 8, !dbg !864
  %85 = icmp eq i32 %84, 0, !dbg !865
  br i1 %85, label %86, label %92, !dbg !866

; <label>:86:                                     ; preds = %72
  %87 = call i64 @time(i64* null) #5, !dbg !867
  %88 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !869
  %89 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %88, i32 0, i32 24, !dbg !870
  store i64 %87, i64* %89, align 8, !dbg !871
  %90 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !872
  %91 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %90, i32 0, i32 26, !dbg !873
  store i32 0, i32* %91, align 4, !dbg !874
  br label %92, !dbg !875

; <label>:92:                                     ; preds = %86, %72
  %93 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !876
  %94 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %93, i32 0, i32 5, !dbg !878
  %95 = load i8*, i8** %94, align 8, !dbg !878
  %96 = icmp eq i8* %95, null, !dbg !879
  br i1 %96, label %97, label %168, !dbg !880

; <label>:97:                                     ; preds = %92
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !881
  %99 = bitcast %struct._IRC_SERVER_REC* %98 to i8*, !dbg !881
  %100 = call i8* @module_check_cast(i8* %99, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !883
  %101 = bitcast i8* %100 to %struct._SERVER_REC*, !dbg !884
  %102 = load i8*, i8** %7, align 8, !dbg !885
  %103 = call %struct._GSList* @nicklist_get_same(%struct._SERVER_REC* %101, i8* %102), !dbg !886
  store %struct._GSList* %103, %struct._GSList** %14, align 8, !dbg !888
  %104 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !889
  store %struct._GSList* %104, %struct._GSList** %15, align 8, !dbg !891
  br label %105, !dbg !892

; <label>:105:                                    ; preds = %160, %97
  %106 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !893
  %107 = icmp ne %struct._GSList* %106, null, !dbg !896
  br i1 %107, label %108, label %166, !dbg !897

; <label>:108:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %16, metadata !898, metadata !694), !dbg !900
  %109 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !901
  %110 = getelementptr inbounds %struct._GSList, %struct._GSList* %109, i32 0, i32 1, !dbg !902
  %111 = load %struct._GSList*, %struct._GSList** %110, align 8, !dbg !902
  %112 = getelementptr inbounds %struct._GSList, %struct._GSList* %111, i32 0, i32 0, !dbg !903
  %113 = load i8*, i8** %112, align 8, !dbg !903
  %114 = bitcast i8* %113 to %struct._NICK_REC*, !dbg !901
  store %struct._NICK_REC* %114, %struct._NICK_REC** %16, align 8, !dbg !900
  %115 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !904
  %116 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %115, i32 0, i32 5, !dbg !906
  %117 = load i8*, i8** %116, align 8, !dbg !906
  %118 = icmp ne i8* %117, null, !dbg !907
  br i1 %118, label %119, label %159, !dbg !908

; <label>:119:                                    ; preds = %108
  %120 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !909
  %121 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %120, i32 0, i32 2, !dbg !911
  %122 = load i64, i64* %121, align 8, !dbg !911
  %123 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !912
  %124 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %123, i32 0, i32 2, !dbg !913
  store i64 %122, i64* %124, align 8, !dbg !914
  %125 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !915
  %126 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %125, i32 0, i32 5, !dbg !916
  %127 = load i8*, i8** %126, align 8, !dbg !916
  %128 = call noalias i8* @g_strdup(i8* %127), !dbg !917
  %129 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !918
  %130 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %129, i32 0, i32 5, !dbg !919
  store i8* %128, i8** %130, align 8, !dbg !920
  %131 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !921
  %132 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %131, i32 0, i32 7, !dbg !922
  %133 = load i8, i8* %132, align 4, !dbg !922
  %134 = and i8 %133, 1, !dbg !922
  %135 = zext i8 %134 to i32, !dbg !922
  %136 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !923
  %137 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %136, i32 0, i32 7, !dbg !924
  %138 = trunc i32 %135 to i8, !dbg !925
  %139 = load i8, i8* %137, align 4, !dbg !925
  %140 = and i8 %138, 1, !dbg !925
  %141 = and i8 %139, -2, !dbg !925
  %142 = or i8 %141, %140, !dbg !925
  store i8 %142, i8* %137, align 4, !dbg !925
  %143 = zext i8 %140 to i32, !dbg !925
  %144 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !926
  %145 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %144, i32 0, i32 7, !dbg !927
  %146 = load i8, i8* %145, align 4, !dbg !927
  %147 = lshr i8 %146, 1, !dbg !927
  %148 = and i8 %147, 1, !dbg !927
  %149 = zext i8 %148 to i32, !dbg !927
  %150 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !928
  %151 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %150, i32 0, i32 7, !dbg !929
  %152 = trunc i32 %149 to i8, !dbg !930
  %153 = load i8, i8* %151, align 4, !dbg !930
  %154 = and i8 %152, 1, !dbg !930
  %155 = shl i8 %154, 1, !dbg !930
  %156 = and i8 %153, -3, !dbg !930
  %157 = or i8 %156, %155, !dbg !930
  store i8 %157, i8* %151, align 4, !dbg !930
  %158 = zext i8 %154 to i32, !dbg !930
  br label %166, !dbg !931

; <label>:159:                                    ; preds = %108
  br label %160, !dbg !932

; <label>:160:                                    ; preds = %159
  %161 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !933
  %162 = getelementptr inbounds %struct._GSList, %struct._GSList* %161, i32 0, i32 1, !dbg !935
  %163 = load %struct._GSList*, %struct._GSList** %162, align 8, !dbg !935
  %164 = getelementptr inbounds %struct._GSList, %struct._GSList* %163, i32 0, i32 1, !dbg !936
  %165 = load %struct._GSList*, %struct._GSList** %164, align 8, !dbg !936
  store %struct._GSList* %165, %struct._GSList** %15, align 8, !dbg !937
  br label %105, !dbg !938, !llvm.loop !939

; <label>:166:                                    ; preds = %119, %105
  %167 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !941
  call void @g_slist_free(%struct._GSList* %167), !dbg !942
  br label %168, !dbg !943

; <label>:168:                                    ; preds = %166, %92
  %169 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !944
  %170 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %169, i32 0, i32 25, !dbg !945
  %171 = load i32, i32* %170, align 8, !dbg !946
  %172 = add nsw i32 %171, 1, !dbg !946
  store i32 %172, i32* %170, align 8, !dbg !946
  br label %173, !dbg !947

; <label>:173:                                    ; preds = %168, %56, %30, %21
  ret void, !dbg !948
}

; Function Attrs: nounwind uwtable
define internal void @event_part(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !949 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %13 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !950, metadata !694), !dbg !951
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !952, metadata !694), !dbg !953
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !954, metadata !694), !dbg !955
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !956, metadata !694), !dbg !957
  call void @llvm.dbg.declare(metadata i8** %9, metadata !958, metadata !694), !dbg !959
  call void @llvm.dbg.declare(metadata i8** %10, metadata !960, metadata !694), !dbg !961
  call void @llvm.dbg.declare(metadata i8** %11, metadata !962, metadata !694), !dbg !963
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %12, metadata !964, metadata !694), !dbg !965
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %13, metadata !966, metadata !694), !dbg !967
  br label %14, !dbg !968, !llvm.loop !969

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !970
  %16 = icmp ne i8* %15, null, !dbg !974
  br i1 %16, label %17, label %18, !dbg !970

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !975

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_part, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !978
  br label %77, !dbg !981

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !982

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %7, align 8, !dbg !984
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !986
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 7, !dbg !987
  %24 = load i8*, i8** %23, align 8, !dbg !987
  %25 = call i32 @g_ascii_strcasecmp(i8* %21, i8* %24), !dbg !988
  %26 = icmp eq i32 %25, 0, !dbg !989
  br i1 %26, label %27, label %28, !dbg !990

; <label>:27:                                     ; preds = %20
  br label %77, !dbg !991

; <label>:28:                                     ; preds = %20
  %29 = load i8*, i8** %6, align 8, !dbg !993
  %30 = call i8* (i8*, i32, ...) @event_get_params(i8* %29, i32 2, i8** %10, i8** %11), !dbg !994
  store i8* %30, i8** %9, align 8, !dbg !995
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !996
  %32 = bitcast %struct._IRC_SERVER_REC* %31 to i8*, !dbg !996
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !997
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !998
  %35 = load i8*, i8** %10, align 8, !dbg !999
  %36 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %34, i8* %35), !dbg !1000
  %37 = bitcast %struct._CHANNEL_REC* %36 to i8*, !dbg !1002
  %38 = call i8* @module_check_cast_module(i8* %37, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1003
  %39 = bitcast i8* %38 to %struct._CHANNEL_REC*, !dbg !1005
  %40 = bitcast %struct._CHANNEL_REC* %39 to i8*, !dbg !1006
  %41 = call i8* @chat_protocol_check_cast(i8* %40, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1007
  %42 = bitcast i8* %41 to %struct._IRC_CHANNEL_REC*, !dbg !1009
  store %struct._IRC_CHANNEL_REC* %42, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !1010
  %43 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !1011
  %44 = icmp eq %struct._IRC_CHANNEL_REC* %43, null, !dbg !1013
  br i1 %44, label %45, label %47, !dbg !1014

; <label>:45:                                     ; preds = %28
  %46 = load i8*, i8** %9, align 8, !dbg !1015
  call void @g_free(i8* %46), !dbg !1017
  br label %77, !dbg !1018

; <label>:47:                                     ; preds = %28
  %48 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !1019
  %49 = bitcast %struct._IRC_CHANNEL_REC* %48 to i8*, !dbg !1019
  %50 = call i8* @module_check_cast_module(i8* %49, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1020
  %51 = bitcast i8* %50 to %struct._CHANNEL_REC*, !dbg !1021
  %52 = load i8*, i8** %7, align 8, !dbg !1022
  %53 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %51, i8* %52), !dbg !1023
  store %struct._NICK_REC* %53, %struct._NICK_REC** %13, align 8, !dbg !1024
  %54 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !1025
  %55 = icmp ne %struct._NICK_REC* %54, null, !dbg !1027
  br i1 %55, label %56, label %75, !dbg !1028

; <label>:56:                                     ; preds = %47
  %57 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !1029
  %58 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %57, i32 0, i32 7, !dbg !1032
  %59 = load i8, i8* %58, align 4, !dbg !1032
  %60 = lshr i8 %59, 2, !dbg !1032
  %61 = and i8 %60, 1, !dbg !1032
  %62 = zext i8 %61 to i32, !dbg !1032
  %63 = icmp ne i32 %62, 0, !dbg !1029
  br i1 %63, label %64, label %69, !dbg !1033

; <label>:64:                                     ; preds = %56
  %65 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !1034
  %66 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %65, i32 0, i32 25, !dbg !1036
  %67 = load i32, i32* %66, align 8, !dbg !1037
  %68 = add nsw i32 %67, -1, !dbg !1037
  store i32 %68, i32* %66, align 8, !dbg !1037
  br label %69, !dbg !1038

; <label>:69:                                     ; preds = %64, %56
  %70 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !1039
  %71 = bitcast %struct._IRC_CHANNEL_REC* %70 to i8*, !dbg !1039
  %72 = call i8* @module_check_cast_module(i8* %71, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1040
  %73 = bitcast i8* %72 to %struct._CHANNEL_REC*, !dbg !1041
  %74 = load %struct._NICK_REC*, %struct._NICK_REC** %13, align 8, !dbg !1042
  call void @nicklist_remove(%struct._CHANNEL_REC* %73, %struct._NICK_REC* %74), !dbg !1043
  br label %75, !dbg !1045

; <label>:75:                                     ; preds = %69, %47
  %76 = load i8*, i8** %9, align 8, !dbg !1046
  call void @g_free(i8* %76), !dbg !1047
  br label %77, !dbg !1048

; <label>:77:                                     ; preds = %75, %45, %27, %18
  ret void, !dbg !1049
}

; Function Attrs: nounwind uwtable
define internal void @event_kick(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1050 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %10 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1053, metadata !694), !dbg !1054
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1055, metadata !694), !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1057, metadata !694), !dbg !1058
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1059, metadata !694), !dbg !1060
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1061, metadata !694), !dbg !1062
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1063, metadata !694), !dbg !1064
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %9, metadata !1065, metadata !694), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %10, metadata !1067, metadata !694), !dbg !1068
  br label %11, !dbg !1069, !llvm.loop !1070

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1071
  %13 = icmp ne i8* %12, null, !dbg !1075
  br i1 %13, label %14, label %15, !dbg !1071

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1076

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_kick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1079
  br label %79, !dbg !1082

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1083

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1085
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 3, i8** %6, i8** %7, i8** %8), !dbg !1086
  store i8* %19, i8** %5, align 8, !dbg !1087
  %20 = load i8*, i8** %7, align 8, !dbg !1088
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1090
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 7, !dbg !1091
  %23 = load i8*, i8** %22, align 8, !dbg !1091
  %24 = call i32 @g_ascii_strcasecmp(i8* %20, i8* %23), !dbg !1092
  %25 = icmp eq i32 %24, 0, !dbg !1093
  br i1 %25, label %26, label %28, !dbg !1094

; <label>:26:                                     ; preds = %17
  %27 = load i8*, i8** %5, align 8, !dbg !1095
  call void @g_free(i8* %27), !dbg !1097
  br label %79, !dbg !1098

; <label>:28:                                     ; preds = %17
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1099
  %30 = bitcast %struct._IRC_SERVER_REC* %29 to i8*, !dbg !1099
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1100
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !1101
  %33 = load i8*, i8** %6, align 8, !dbg !1102
  %34 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %32, i8* %33), !dbg !1103
  %35 = bitcast %struct._CHANNEL_REC* %34 to i8*, !dbg !1105
  %36 = call i8* @module_check_cast_module(i8* %35, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1106
  %37 = bitcast i8* %36 to %struct._CHANNEL_REC*, !dbg !1108
  %38 = bitcast %struct._CHANNEL_REC* %37 to i8*, !dbg !1109
  %39 = call i8* @chat_protocol_check_cast(i8* %38, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1110
  %40 = bitcast i8* %39 to %struct._IRC_CHANNEL_REC*, !dbg !1112
  store %struct._IRC_CHANNEL_REC* %40, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1113
  %41 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1114
  %42 = icmp eq %struct._IRC_CHANNEL_REC* %41, null, !dbg !1115
  br i1 %42, label %43, label %44, !dbg !1114

; <label>:43:                                     ; preds = %28
  br label %51, !dbg !1116

; <label>:44:                                     ; preds = %28
  %45 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1117
  %46 = bitcast %struct._IRC_CHANNEL_REC* %45 to i8*, !dbg !1117
  %47 = call i8* @module_check_cast_module(i8* %46, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1118
  %48 = bitcast i8* %47 to %struct._CHANNEL_REC*, !dbg !1119
  %49 = load i8*, i8** %7, align 8, !dbg !1120
  %50 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %48, i8* %49), !dbg !1121
  br label %51, !dbg !1122

; <label>:51:                                     ; preds = %44, %43
  %52 = phi %struct._NICK_REC* [ null, %43 ], [ %50, %44 ], !dbg !1123
  store %struct._NICK_REC* %52, %struct._NICK_REC** %10, align 8, !dbg !1124
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1125
  %54 = icmp ne %struct._IRC_CHANNEL_REC* %53, null, !dbg !1127
  br i1 %54, label %55, label %77, !dbg !1128

; <label>:55:                                     ; preds = %51
  %56 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !1129
  %57 = icmp ne %struct._NICK_REC* %56, null, !dbg !1131
  br i1 %57, label %58, label %77, !dbg !1132

; <label>:58:                                     ; preds = %55
  %59 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !1133
  %60 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %59, i32 0, i32 7, !dbg !1136
  %61 = load i8, i8* %60, align 4, !dbg !1136
  %62 = lshr i8 %61, 2, !dbg !1136
  %63 = and i8 %62, 1, !dbg !1136
  %64 = zext i8 %63 to i32, !dbg !1136
  %65 = icmp ne i32 %64, 0, !dbg !1133
  br i1 %65, label %66, label %71, !dbg !1137

; <label>:66:                                     ; preds = %58
  %67 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1138
  %68 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %67, i32 0, i32 25, !dbg !1140
  %69 = load i32, i32* %68, align 8, !dbg !1141
  %70 = add nsw i32 %69, -1, !dbg !1141
  store i32 %70, i32* %68, align 8, !dbg !1141
  br label %71, !dbg !1142

; <label>:71:                                     ; preds = %66, %58
  %72 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !1143
  %73 = bitcast %struct._IRC_CHANNEL_REC* %72 to i8*, !dbg !1143
  %74 = call i8* @module_check_cast_module(i8* %73, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1144
  %75 = bitcast i8* %74 to %struct._CHANNEL_REC*, !dbg !1145
  %76 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !1146
  call void @nicklist_remove(%struct._CHANNEL_REC* %75, %struct._NICK_REC* %76), !dbg !1147
  br label %77, !dbg !1149

; <label>:77:                                     ; preds = %71, %55, %51
  %78 = load i8*, i8** %5, align 8, !dbg !1150
  call void @g_free(i8* %78), !dbg !1151
  br label %79, !dbg !1152

; <label>:79:                                     ; preds = %77, %26, %15
  ret void, !dbg !1153
}

; Function Attrs: nounwind uwtable
define internal void @event_quit(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1154 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca %struct._NICK_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1157, metadata !694), !dbg !1158
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1159, metadata !694), !dbg !1160
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1161, metadata !694), !dbg !1162
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1163, metadata !694), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %8, metadata !1165, metadata !694), !dbg !1166
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1167, metadata !694), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1169, metadata !694), !dbg !1170
  br label %11, !dbg !1171, !llvm.loop !1172

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !1173
  %13 = icmp ne i8* %12, null, !dbg !1177
  br i1 %13, label %14, label %15, !dbg !1173

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1178

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_quit, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1181
  br label %73, !dbg !1184

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1185

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1187
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1189
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 7, !dbg !1190
  %21 = load i8*, i8** %20, align 8, !dbg !1190
  %22 = call i32 @g_ascii_strcasecmp(i8* %18, i8* %21), !dbg !1191
  %23 = icmp eq i32 %22, 0, !dbg !1192
  br i1 %23, label %24, label %25, !dbg !1193

; <label>:24:                                     ; preds = %17
  br label %73, !dbg !1194

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1196
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1196
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !1197
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1198
  %30 = load i8*, i8** %6, align 8, !dbg !1199
  %31 = call %struct._GSList* @nicklist_get_same(%struct._SERVER_REC* %29, i8* %30), !dbg !1200
  store %struct._GSList* %31, %struct._GSList** %9, align 8, !dbg !1202
  %32 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1203
  store %struct._GSList* %32, %struct._GSList** %10, align 8, !dbg !1205
  br label %33, !dbg !1206

; <label>:33:                                     ; preds = %65, %25
  %34 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1207
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1210
  br i1 %35, label %36, label %71, !dbg !1211

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1212
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1214
  %39 = load i8*, i8** %38, align 8, !dbg !1214
  %40 = bitcast i8* %39 to %struct._IRC_CHANNEL_REC*, !dbg !1212
  store %struct._IRC_CHANNEL_REC* %40, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1215
  %41 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1216
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !1217
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !1217
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !1218
  %45 = load i8*, i8** %44, align 8, !dbg !1218
  %46 = bitcast i8* %45 to %struct._NICK_REC*, !dbg !1216
  store %struct._NICK_REC* %46, %struct._NICK_REC** %8, align 8, !dbg !1219
  %47 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1220
  %48 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %47, i32 0, i32 7, !dbg !1222
  %49 = load i8, i8* %48, align 4, !dbg !1222
  %50 = lshr i8 %49, 2, !dbg !1222
  %51 = and i8 %50, 1, !dbg !1222
  %52 = zext i8 %51 to i32, !dbg !1222
  %53 = icmp ne i32 %52, 0, !dbg !1220
  br i1 %53, label %54, label %59, !dbg !1223

; <label>:54:                                     ; preds = %36
  %55 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1224
  %56 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %55, i32 0, i32 25, !dbg !1226
  %57 = load i32, i32* %56, align 8, !dbg !1227
  %58 = add nsw i32 %57, -1, !dbg !1227
  store i32 %58, i32* %56, align 8, !dbg !1227
  br label %59, !dbg !1228

; <label>:59:                                     ; preds = %54, %36
  %60 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1229
  %61 = bitcast %struct._IRC_CHANNEL_REC* %60 to i8*, !dbg !1229
  %62 = call i8* @module_check_cast_module(i8* %61, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1230
  %63 = bitcast i8* %62 to %struct._CHANNEL_REC*, !dbg !1231
  %64 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1232
  call void @nicklist_remove(%struct._CHANNEL_REC* %63, %struct._NICK_REC* %64), !dbg !1233
  br label %65, !dbg !1235

; <label>:65:                                     ; preds = %59
  %66 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1236
  %67 = getelementptr inbounds %struct._GSList, %struct._GSList* %66, i32 0, i32 1, !dbg !1238
  %68 = load %struct._GSList*, %struct._GSList** %67, align 8, !dbg !1238
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 1, !dbg !1239
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !1239
  store %struct._GSList* %70, %struct._GSList** %10, align 8, !dbg !1240
  br label %33, !dbg !1241, !llvm.loop !1242

; <label>:71:                                     ; preds = %33
  %72 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1244
  call void @g_slist_free(%struct._GSList* %72), !dbg !1245
  br label %73, !dbg !1246

; <label>:73:                                     ; preds = %71, %24, %15
  ret void, !dbg !1247
}

; Function Attrs: nounwind uwtable
define void @massjoin_deinit() #0 !dbg !1248 {
  %1 = load i32, i32* @massjoin_tag, align 4, !dbg !1249
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1250
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1251
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1252
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1253
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1254
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1255
  ret void, !dbg !1256
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @settings_get_int(i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @server_check_massjoins(%struct._IRC_SERVER_REC*, i64) #0 !dbg !1257 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1260, metadata !694), !dbg !1261
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1262, metadata !694), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1264, metadata !694), !dbg !1265
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1266
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 23, !dbg !1268
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1268
  store %struct._GSList* %9, %struct._GSList** %5, align 8, !dbg !1269
  br label %10, !dbg !1270

; <label>:10:                                     ; preds = %64, %2
  %11 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1271
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1274
  br i1 %12, label %13, label %68, !dbg !1275

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !1276, metadata !694), !dbg !1278
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1279
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1280
  %16 = load i8*, i8** %15, align 8, !dbg !1280
  %17 = bitcast i8* %16 to %struct._IRC_CHANNEL_REC*, !dbg !1279
  store %struct._IRC_CHANNEL_REC* %17, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1278
  %18 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1281
  %19 = bitcast %struct._IRC_CHANNEL_REC* %18 to i8*, !dbg !1281
  %20 = call i8* @module_check_cast_module(i8* %19, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)), !dbg !1283
  %21 = bitcast i8* %20 to %struct._CHANNEL_REC*, !dbg !1284
  %22 = bitcast %struct._CHANNEL_REC* %21 to i8*, !dbg !1285
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1286
  %24 = bitcast i8* %23 to %struct._IRC_CHANNEL_REC*, !dbg !1288
  %25 = icmp ne %struct._IRC_CHANNEL_REC* %24, null, !dbg !1288
  br i1 %25, label %26, label %27, !dbg !1289

; <label>:26:                                     ; preds = %13
  br i1 false, label %33, label %28, !dbg !1290

; <label>:27:                                     ; preds = %13
  br i1 false, label %28, label %33, !dbg !1292

; <label>:28:                                     ; preds = %27, %26
  %29 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1294
  %30 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %29, i32 0, i32 25, !dbg !1296
  %31 = load i32, i32* %30, align 8, !dbg !1296
  %32 = icmp sle i32 %31, 0, !dbg !1297
  br i1 %32, label %33, label %34, !dbg !1298

; <label>:33:                                     ; preds = %28, %27, %26
  br label %64, !dbg !1299

; <label>:34:                                     ; preds = %28
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1300
  %36 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %35, i32 0, i32 24, !dbg !1302
  %37 = load i64, i64* %36, align 8, !dbg !1302
  %38 = load i64, i64* %4, align 8, !dbg !1303
  %39 = icmp slt i64 %37, %38, !dbg !1304
  br i1 %39, label %55, label %40, !dbg !1305

; <label>:40:                                     ; preds = %34
  %41 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1306
  %42 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %41, i32 0, i32 26, !dbg !1307
  %43 = load i32, i32* %42, align 4, !dbg !1307
  %44 = icmp sgt i32 %43, 0, !dbg !1308
  br i1 %44, label %45, label %57, !dbg !1309

; <label>:45:                                     ; preds = %40
  %46 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1310
  %47 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %46, i32 0, i32 25, !dbg !1311
  %48 = load i32, i32* %47, align 8, !dbg !1311
  %49 = load i32, i32* @massjoin_max_joins, align 4, !dbg !1312
  %50 = sub nsw i32 %48, %49, !dbg !1313
  %51 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1314
  %52 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %51, i32 0, i32 26, !dbg !1315
  %53 = load i32, i32* %52, align 4, !dbg !1315
  %54 = icmp slt i32 %50, %53, !dbg !1316
  br i1 %54, label %55, label %57, !dbg !1317

; <label>:55:                                     ; preds = %45, %34
  %56 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1319
  call void @massjoin_send(%struct._IRC_CHANNEL_REC* %56), !dbg !1321
  br label %63, !dbg !1322

; <label>:57:                                     ; preds = %45, %40
  %58 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1323
  %59 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %58, i32 0, i32 25, !dbg !1325
  %60 = load i32, i32* %59, align 8, !dbg !1325
  %61 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1326
  %62 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %61, i32 0, i32 26, !dbg !1327
  store i32 %60, i32* %62, align 4, !dbg !1328
  br label %63

; <label>:63:                                     ; preds = %57, %55
  br label %64, !dbg !1329

; <label>:64:                                     ; preds = %63, %33
  %65 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1330
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 1, !dbg !1332
  %67 = load %struct._GSList*, %struct._GSList** %66, align 8, !dbg !1332
  store %struct._GSList* %67, %struct._GSList** %5, align 8, !dbg !1333
  br label %10, !dbg !1334, !llvm.loop !1335

; <label>:68:                                     ; preds = %10
  ret void, !dbg !1337
}

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @massjoin_send(%struct._IRC_CHANNEL_REC*) #0 !dbg !1338 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1341, metadata !694), !dbg !1342
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1343, metadata !694), !dbg !1344
  store %struct._GSList* null, %struct._GSList** %3, align 8, !dbg !1345
  %4 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1346
  %5 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %4, i32 0, i32 15, !dbg !1347
  %6 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1347
  %7 = bitcast %struct._GSList** %3 to i8*, !dbg !1348
  call void @g_hash_table_foreach(%struct._GHashTable* %6, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._NICK_REC*, %struct._GSList**)* @massjoin_send_hash to void (i8*, i8*, i8*)*), i8* %7), !dbg !1349
  %8 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1350
  %9 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %8, i32 0, i32 25, !dbg !1351
  store i32 0, i32* %9, align 8, !dbg !1352
  %10 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1353
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1354
  %12 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct._IRC_CHANNEL_REC* %10, %struct._GSList* %11), !dbg !1355
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1356
  call void @g_slist_free(%struct._GSList* %13), !dbg !1357
  ret void, !dbg !1358
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @massjoin_send_hash(i8*, %struct._NICK_REC*, %struct._GSList**) #0 !dbg !1359 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1363, metadata !694), !dbg !1364
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !1365, metadata !694), !dbg !1366
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !1367, metadata !694), !dbg !1368
  %7 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1369
  %8 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %7, i32 0, i32 7, !dbg !1371
  %9 = load i8, i8* %8, align 4, !dbg !1371
  %10 = lshr i8 %9, 2, !dbg !1371
  %11 = and i8 %10, 1, !dbg !1371
  %12 = zext i8 %11 to i32, !dbg !1371
  %13 = icmp ne i32 %12, 0, !dbg !1369
  br i1 %13, label %14, label %25, !dbg !1372

; <label>:14:                                     ; preds = %3
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1373
  %16 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %15, i32 0, i32 7, !dbg !1375
  %17 = load i8, i8* %16, align 4, !dbg !1376
  %18 = and i8 %17, -5, !dbg !1376
  store i8 %18, i8* %16, align 4, !dbg !1376
  %19 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1377
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1378
  %21 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !1379
  %22 = bitcast %struct._NICK_REC* %21 to i8*, !dbg !1379
  %23 = call %struct._GSList* @g_slist_append(%struct._GSList* %20, i8* %22), !dbg !1380
  %24 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !1381
  store %struct._GSList* %23, %struct._GSList** %24, align 8, !dbg !1382
  br label %25, !dbg !1383

; <label>:25:                                     ; preds = %14, %3
  ret void, !dbg !1384
}

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @g_slist_free(%struct._GSList*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #1

declare void @nicklist_remove(%struct._CHANNEL_REC*, %struct._NICK_REC*) #1

declare %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC*, i8*, i32, i32, i32, i32, i8*) #1

declare void @nicklist_set_host(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #1

declare %struct._GSList* @nicklist_get_same(%struct._SERVER_REC*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!674, !675}
!llvm.ident = !{!676}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !670)
!1 = !DIFile(filename: "line149-massjoin.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !45, !46, !53, !357, !620, !464, !666, !119, !445}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !44}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !41, line: 50, baseType: !42)
!41 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !41, line: 49, baseType: !43)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !41, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !47, line: 9, baseType: !48)
!47 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !51, !51, !51, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !55, line: 6, baseType: !56)
!55 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !57, line: 42, size: 39168, align: 64, elements: !58)
!57 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !61, !62, !63, !302, !307, !308, !309, !310, !311, !312, !313, !314, !315, !319, !320, !324, !325, !326, !330, !335, !336, !337, !338, !339, !340, !341, !342, !349, !350, !351, !352, !353, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !663, !665}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !60, line: 3, baseType: !43, size: 32, align: 32)
!60 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !56, file: !60, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !56, file: !60, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !56, file: !60, line: 8, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !55, line: 5, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !57, line: 24, size: 2496, align: 64, elements: !67)
!67 = !{!68, !70, !71, !72, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !69, line: 3, baseType: !43, size: 32, align: 32)
!69 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !66, file: !69, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !69, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !66, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !66, file: !69, line: 10, baseType: !43, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !66, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !66, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !66, file: !69, line: 16, baseType: !43, size: 32, align: 32, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !66, file: !69, line: 17, baseType: !73, size: 64, align: 64, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !66, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 768)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !88, line: 99, baseType: !89)
!88 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !88, line: 99, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !66, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !66, file: !69, line: 21, baseType: !73, size: 64, align: 64, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !66, file: !69, line: 22, baseType: !73, size: 64, align: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !66, file: !69, line: 23, baseType: !73, size: 64, align: 64, offset: 1024)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !66, file: !69, line: 24, baseType: !73, size: 64, align: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !66, file: !69, line: 26, baseType: !73, size: 64, align: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !66, file: !69, line: 27, baseType: !73, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !66, file: !69, line: 28, baseType: !73, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !66, file: !69, line: 29, baseType: !73, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !66, file: !69, line: 30, baseType: !73, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !66, file: !69, line: 31, baseType: !73, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !66, file: !69, line: 32, baseType: !73, size: 64, align: 64, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !66, file: !69, line: 33, baseType: !73, size: 64, align: 64, offset: 1600)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !66, file: !69, line: 35, baseType: !104, size: 64, align: 64, offset: 1664)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !107)
!107 = !{!108, !109, !247, !248, !253, !254, !255, !256, !257, !266, !267, !268, !272, !273, !274, !275, !276, !277, !278, !279}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !106, file: !4, line: 100, baseType: !42, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !106, file: !4, line: 101, baseType: !110, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !113)
!113 = !{!114, !138, !144, !151, !155, !234, !238, !243}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !112, file: !4, line: 133, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !104, !119, !121, !124, !125}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !41, line: 46, baseType: !74)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !122, line: 66, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !128, line: 42, baseType: !129)
!128 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !128, line: 44, size: 128, align: 64, elements: !130)
!130 = !{!131, !136, !137}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !129, file: !128, line: 46, baseType: !132, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !133, line: 36, baseType: !134)
!133 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !122, line: 45, baseType: !135)
!135 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !129, file: !128, line: 47, baseType: !42, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !129, file: !128, line: 48, baseType: !119, size: 64, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !112, file: !4, line: 138, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!118, !104, !142, !121, !124, !125}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !112, file: !4, line: 143, baseType: !145, size: 64, align: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!118, !104, !148, !150, !125}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !122, line: 51, baseType: !149)
!149 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !112, file: !4, line: 147, baseType: !152, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!118, !104, !125}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !112, file: !4, line: 149, baseType: !156, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !104, !233}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !162)
!162 = !{!163, !164, !180, !209, !211, !215, !216, !217, !218, !226, !227, !228, !229}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !161, file: !16, line: 174, baseType: !44, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !161, file: !16, line: 175, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !168)
!168 = !{!169, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !167, file: !16, line: 198, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !44}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !167, file: !16, line: 199, baseType: !170, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !167, file: !16, line: 200, baseType: !175, size: 64, align: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !44, !159, !178, !179}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !161, file: !16, line: 177, baseType: !181, size: 64, align: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !185)
!185 = !{!186, !191, !195, !199, !203, !204}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !184, file: !16, line: 216, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!40, !159, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !184, file: !16, line: 218, baseType: !192, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!40, !159}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !184, file: !16, line: 219, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!40, !159, !36, !44}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !184, file: !16, line: 222, baseType: !200, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !159}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !184, file: !16, line: 226, baseType: !36, size: 64, align: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !184, file: !16, line: 227, baseType: !205, size: 64, align: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !161, file: !16, line: 178, baseType: !210, size: 32, align: 32, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !41, line: 55, baseType: !135)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !161, file: !16, line: 180, baseType: !212, size: 64, align: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !161, file: !16, line: 182, baseType: !42, size: 32, align: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !16, line: 183, baseType: !210, size: 32, align: 32, offset: 352)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !161, file: !16, line: 184, baseType: !210, size: 32, align: 32, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !161, file: !16, line: 186, baseType: !219, size: 64, align: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !221, line: 37, baseType: !222)
!221 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !221, line: 39, size: 128, align: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !221, line: 41, baseType: !44, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !221, line: 42, baseType: !219, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !16, line: 188, baseType: !159, size: 64, align: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !16, line: 189, baseType: !159, size: 64, align: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !16, line: 191, baseType: !73, size: 64, align: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !161, file: !16, line: 193, baseType: !230, size: 64, align: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !112, file: !4, line: 151, baseType: !235, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !104}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !112, file: !4, line: 152, baseType: !239, size: 64, align: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!118, !104, !242, !125}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !112, file: !4, line: 155, baseType: !244, size: 64, align: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!242, !104}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !106, file: !4, line: 103, baseType: !119, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !106, file: !4, line: 104, baseType: !249, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !250, line: 77, baseType: !251)
!250 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !250, line: 77, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !106, file: !4, line: 105, baseType: !249, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !106, file: !4, line: 106, baseType: !119, size: 64, align: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !106, file: !4, line: 107, baseType: !210, size: 32, align: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !106, file: !4, line: 109, baseType: !121, size: 64, align: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !106, file: !4, line: 110, baseType: !258, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !260, line: 39, baseType: !261)
!260 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !260, line: 41, size: 192, align: 64, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !261, file: !260, line: 43, baseType: !119, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !261, file: !260, line: 44, baseType: !121, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !261, file: !260, line: 45, baseType: !121, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !106, file: !4, line: 111, baseType: !258, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !106, file: !4, line: 112, baseType: !258, size: 64, align: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !106, file: !4, line: 113, baseType: !269, size: 48, align: 8, offset: 704)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 48, align: 8, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 6)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !106, file: !4, line: 117, baseType: !210, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !106, file: !4, line: 118, baseType: !210, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !106, file: !4, line: 119, baseType: !210, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !106, file: !4, line: 120, baseType: !210, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !106, file: !4, line: 121, baseType: !210, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !106, file: !4, line: 122, baseType: !210, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !106, file: !4, line: 124, baseType: !44, size: 64, align: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !106, file: !4, line: 125, baseType: !44, size: 64, align: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !66, file: !69, line: 38, baseType: !135, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !66, file: !69, line: 39, baseType: !135, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !66, file: !69, line: 40, baseType: !135, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !66, file: !69, line: 41, baseType: !135, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !66, file: !69, line: 42, baseType: !135, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !66, file: !69, line: 43, baseType: !135, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !66, file: !69, line: 44, baseType: !135, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !66, file: !69, line: 45, baseType: !135, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !66, file: !69, line: 46, baseType: !73, size: 64, align: 64, offset: 1792)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !66, file: !69, line: 47, baseType: !73, size: 64, align: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !66, file: !57, line: 27, baseType: !73, size: 64, align: 64, offset: 1920)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !66, file: !57, line: 28, baseType: !73, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !66, file: !57, line: 30, baseType: !43, size: 32, align: 32, offset: 2048)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !66, file: !57, line: 31, baseType: !73, size: 64, align: 64, offset: 2112)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !66, file: !57, line: 32, baseType: !73, size: 64, align: 64, offset: 2176)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !66, file: !57, line: 34, baseType: !43, size: 32, align: 32, offset: 2240)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !66, file: !57, line: 35, baseType: !43, size: 32, align: 32, offset: 2272)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !66, file: !57, line: 36, baseType: !43, size: 32, align: 32, offset: 2304)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !66, file: !57, line: 38, baseType: !43, size: 32, align: 32, offset: 2336)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !66, file: !57, line: 38, baseType: !43, size: 32, align: 32, offset: 2368)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !66, file: !57, line: 38, baseType: !43, size: 32, align: 32, offset: 2400)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !66, file: !57, line: 38, baseType: !43, size: 32, align: 32, offset: 2432)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !56, file: !60, line: 9, baseType: !303, size: 64, align: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !304, line: 75, baseType: !305)
!304 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !306, line: 139, baseType: !149)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!307 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !56, file: !60, line: 10, baseType: !303, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !56, file: !60, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !56, file: !60, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !56, file: !60, line: 15, baseType: !135, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !56, file: !60, line: 16, baseType: !135, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !56, file: !60, line: 17, baseType: !135, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !56, file: !60, line: 18, baseType: !135, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !56, file: !60, line: 19, baseType: !135, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !56, file: !60, line: 21, baseType: !316, size: 64, align: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !88, line: 102, baseType: !318)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !88, line: 102, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !56, file: !60, line: 22, baseType: !43, size: 32, align: 32, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !56, file: !60, line: 25, baseType: !321, size: 128, align: 64, offset: 640)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, align: 64, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 2)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !56, file: !60, line: 26, baseType: !43, size: 32, align: 32, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !56, file: !60, line: 27, baseType: !43, size: 32, align: 32, offset: 800)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !56, file: !60, line: 29, baseType: !327, size: 64, align: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !88, line: 103, baseType: !329)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !88, line: 103, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !56, file: !60, line: 30, baseType: !331, size: 64, align: 64, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !333, line: 37, baseType: !334)
!333 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !333, line: 37, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !56, file: !60, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !56, file: !60, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !56, file: !60, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !56, file: !60, line: 35, baseType: !135, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !56, file: !60, line: 36, baseType: !135, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !56, file: !60, line: 37, baseType: !135, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !56, file: !60, line: 38, baseType: !135, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !56, file: !60, line: 40, baseType: !343, size: 128, align: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !41, line: 504, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !41, line: 506, size: 128, align: 64, elements: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !344, file: !41, line: 508, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !41, line: 48, baseType: !149)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !344, file: !41, line: 509, baseType: !347, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !56, file: !60, line: 41, baseType: !303, size: 64, align: 64, offset: 1344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !56, file: !60, line: 42, baseType: !43, size: 32, align: 32, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !56, file: !60, line: 44, baseType: !219, size: 64, align: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !56, file: !60, line: 45, baseType: !219, size: 64, align: 64, offset: 1536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !56, file: !60, line: 53, baseType: !354, size: 64, align: 64, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357, !445, !43}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !88, line: 107, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !360, line: 30, size: 2240, align: 64, elements: !361)
!360 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !{!362, !363, !364, !365, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !441, !447, !451, !455, !460, !539, !546, !550}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !359, file: !60, line: 3, baseType: !43, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !359, file: !60, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !359, file: !60, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !359, file: !60, line: 8, baseType: !366, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !88, line: 113, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !360, line: 25, size: 1920, align: 64, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !69, line: 3, baseType: !43, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !368, file: !69, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !368, file: !69, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !368, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !368, file: !69, line: 10, baseType: !43, size: 32, align: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !368, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !368, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !368, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !368, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !368, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !368, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !368, file: !69, line: 16, baseType: !43, size: 32, align: 32, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !368, file: !69, line: 17, baseType: !73, size: 64, align: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !368, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !368, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !368, file: !69, line: 21, baseType: !73, size: 64, align: 64, offset: 896)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !368, file: !69, line: 22, baseType: !73, size: 64, align: 64, offset: 960)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !368, file: !69, line: 23, baseType: !73, size: 64, align: 64, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !368, file: !69, line: 24, baseType: !73, size: 64, align: 64, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !368, file: !69, line: 26, baseType: !73, size: 64, align: 64, offset: 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !368, file: !69, line: 27, baseType: !73, size: 64, align: 64, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !368, file: !69, line: 28, baseType: !73, size: 64, align: 64, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !368, file: !69, line: 29, baseType: !73, size: 64, align: 64, offset: 1344)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !368, file: !69, line: 30, baseType: !73, size: 64, align: 64, offset: 1408)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !368, file: !69, line: 31, baseType: !73, size: 64, align: 64, offset: 1472)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !368, file: !69, line: 32, baseType: !73, size: 64, align: 64, offset: 1536)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !368, file: !69, line: 33, baseType: !73, size: 64, align: 64, offset: 1600)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !368, file: !69, line: 35, baseType: !104, size: 64, align: 64, offset: 1664)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !368, file: !69, line: 38, baseType: !135, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !368, file: !69, line: 39, baseType: !135, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !368, file: !69, line: 40, baseType: !135, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !368, file: !69, line: 41, baseType: !135, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !368, file: !69, line: 42, baseType: !135, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !368, file: !69, line: 43, baseType: !135, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !368, file: !69, line: 44, baseType: !135, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !368, file: !69, line: 45, baseType: !135, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !368, file: !69, line: 46, baseType: !73, size: 64, align: 64, offset: 1792)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !368, file: !69, line: 47, baseType: !73, size: 64, align: 64, offset: 1856)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !359, file: !60, line: 9, baseType: !303, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !359, file: !60, line: 10, baseType: !303, size: 64, align: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !359, file: !60, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !359, file: !60, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !359, file: !60, line: 15, baseType: !135, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !359, file: !60, line: 16, baseType: !135, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !359, file: !60, line: 17, baseType: !135, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !359, file: !60, line: 18, baseType: !135, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !359, file: !60, line: 19, baseType: !135, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !359, file: !60, line: 21, baseType: !316, size: 64, align: 64, offset: 512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !359, file: !60, line: 22, baseType: !43, size: 32, align: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !359, file: !60, line: 25, baseType: !321, size: 128, align: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !359, file: !60, line: 26, baseType: !43, size: 32, align: 32, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !359, file: !60, line: 27, baseType: !43, size: 32, align: 32, offset: 800)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !359, file: !60, line: 29, baseType: !327, size: 64, align: 64, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !359, file: !60, line: 30, baseType: !331, size: 64, align: 64, offset: 896)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !359, file: !60, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !359, file: !60, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !359, file: !60, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !359, file: !60, line: 35, baseType: !135, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !359, file: !60, line: 36, baseType: !135, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !359, file: !60, line: 37, baseType: !135, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !359, file: !60, line: 38, baseType: !135, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !359, file: !60, line: 40, baseType: !343, size: 128, align: 64, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !359, file: !60, line: 41, baseType: !303, size: 64, align: 64, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !359, file: !60, line: 42, baseType: !43, size: 32, align: 32, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !359, file: !60, line: 44, baseType: !219, size: 64, align: 64, offset: 1472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !359, file: !60, line: 45, baseType: !219, size: 64, align: 64, offset: 1536)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !359, file: !60, line: 53, baseType: !354, size: 64, align: 64, offset: 1600)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !359, file: !60, line: 55, baseType: !438, size: 64, align: 64, offset: 1664)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!43, !357, !74}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !359, file: !60, line: 57, baseType: !442, size: 64, align: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!43, !357, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !359, file: !60, line: 60, baseType: !448, size: 64, align: 64, offset: 1792)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!445, !357}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !359, file: !60, line: 62, baseType: !452, size: 64, align: 64, offset: 1856)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !357, !445, !445, !43}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !359, file: !60, line: 65, baseType: !456, size: 64, align: 64, offset: 1920)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !357, !445, !445}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !359, file: !60, line: 69, baseType: !461, size: 64, align: 64, offset: 1984)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !357, !445}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !88, line: 109, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !467, line: 15, size: 1408, align: 64, elements: !468)
!467 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!468 = !{!469, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !487, !491, !493, !494, !495, !496, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !470, line: 3, baseType: !43, size: 32, align: 32)
!470 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !466, file: !470, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !466, file: !470, line: 5, baseType: !331, size: 64, align: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !466, file: !470, line: 7, baseType: !45, size: 64, align: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !466, file: !470, line: 8, baseType: !357, size: 64, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !466, file: !470, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !470, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !466, file: !470, line: 11, baseType: !303, size: 64, align: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !466, file: !470, line: 12, baseType: !43, size: 32, align: 32, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !466, file: !470, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !466, file: !470, line: 15, baseType: !481, size: 64, align: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !88, line: 108, baseType: !486)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !88, line: 108, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !466, file: !470, line: 17, baseType: !488, size: 64, align: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!445, !484}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !466, file: !492, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!492 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !466, file: !492, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !466, file: !492, line: 7, baseType: !303, size: 64, align: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !466, file: !492, line: 9, baseType: !331, size: 64, align: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !466, file: !492, line: 10, baseType: !497, size: 64, align: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !88, line: 111, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !500, line: 13, size: 576, align: 64, elements: !501)
!500 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!501 = !{!502, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !520, !521}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !503, line: 3, baseType: !43, size: 32, align: 32)
!503 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !499, file: !503, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !499, file: !503, line: 6, baseType: !303, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !499, file: !503, line: 8, baseType: !73, size: 64, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !499, file: !503, line: 9, baseType: !73, size: 64, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !499, file: !503, line: 10, baseType: !73, size: 64, align: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !499, file: !503, line: 11, baseType: !43, size: 32, align: 32, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !499, file: !503, line: 14, baseType: !135, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !499, file: !503, line: 15, baseType: !135, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !499, file: !503, line: 18, baseType: !135, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !499, file: !503, line: 19, baseType: !135, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !499, file: !503, line: 20, baseType: !135, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !499, file: !503, line: 21, baseType: !135, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !499, file: !503, line: 22, baseType: !517, size: 64, align: 8, offset: 360)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, align: 8, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !499, file: !503, line: 26, baseType: !45, size: 64, align: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !503, line: 28, baseType: !497, size: 64, align: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !466, file: !492, line: 12, baseType: !135, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !466, file: !492, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !466, file: !492, line: 14, baseType: !43, size: 32, align: 32, offset: 1152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !466, file: !492, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !466, file: !492, line: 17, baseType: !135, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !466, file: !492, line: 18, baseType: !135, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !466, file: !492, line: 19, baseType: !135, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !466, file: !492, line: 20, baseType: !135, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !466, file: !492, line: 22, baseType: !135, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !466, file: !492, line: 23, baseType: !135, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !466, file: !492, line: 24, baseType: !135, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !466, file: !492, line: 25, baseType: !135, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !466, file: !492, line: 26, baseType: !135, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !466, file: !492, line: 31, baseType: !536, size: 64, align: 64, offset: 1344)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!73, !464}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !359, file: !60, line: 70, baseType: !540, size: 64, align: 64, offset: 2048)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !357, !445}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !88, line: 110, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !88, line: 110, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !359, file: !60, line: 71, baseType: !547, size: 64, align: 64, offset: 2112)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!43, !445, !445}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !359, file: !60, line: 73, baseType: !547, size: 64, align: 64, offset: 2176)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !56, file: !60, line: 55, baseType: !438, size: 64, align: 64, offset: 1664)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !56, file: !60, line: 57, baseType: !442, size: 64, align: 64, offset: 1728)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !56, file: !60, line: 60, baseType: !448, size: 64, align: 64, offset: 1792)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !56, file: !60, line: 62, baseType: !452, size: 64, align: 64, offset: 1856)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !56, file: !60, line: 65, baseType: !456, size: 64, align: 64, offset: 1920)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !56, file: !60, line: 69, baseType: !461, size: 64, align: 64, offset: 1984)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !56, file: !60, line: 70, baseType: !540, size: 64, align: 64, offset: 2048)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !56, file: !60, line: 71, baseType: !547, size: 64, align: 64, offset: 2112)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !56, file: !60, line: 73, baseType: !547, size: 64, align: 64, offset: 2176)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !56, file: !57, line: 46, baseType: !219, size: 64, align: 64, offset: 2240)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !56, file: !57, line: 47, baseType: !219, size: 64, align: 64, offset: 2304)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !56, file: !57, line: 48, baseType: !563, size: 64, align: 64, offset: 2368)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !55, line: 8, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !55, line: 8, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !56, file: !57, line: 49, baseType: !219, size: 64, align: 64, offset: 2432)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !56, file: !57, line: 51, baseType: !73, size: 64, align: 64, offset: 2496)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !56, file: !57, line: 53, baseType: !73, size: 64, align: 64, offset: 2560)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !56, file: !57, line: 54, baseType: !73, size: 64, align: 64, offset: 2624)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !56, file: !57, line: 55, baseType: !73, size: 64, align: 64, offset: 2688)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !56, file: !57, line: 56, baseType: !73, size: 64, align: 64, offset: 2752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !56, file: !57, line: 57, baseType: !43, size: 32, align: 32, offset: 2816)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !56, file: !57, line: 59, baseType: !135, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !56, file: !57, line: 60, baseType: !135, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !56, file: !57, line: 62, baseType: !135, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !56, file: !57, line: 63, baseType: !135, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !56, file: !57, line: 64, baseType: !135, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !56, file: !57, line: 65, baseType: !135, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !56, file: !57, line: 66, baseType: !135, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !56, file: !57, line: 67, baseType: !135, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !56, file: !57, line: 68, baseType: !135, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !56, file: !57, line: 69, baseType: !135, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !56, file: !57, line: 70, baseType: !135, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !56, file: !57, line: 71, baseType: !135, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !56, file: !57, line: 72, baseType: !135, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !56, file: !57, line: 74, baseType: !43, size: 32, align: 32, offset: 2880)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !56, file: !57, line: 75, baseType: !43, size: 32, align: 32, offset: 2912)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !56, file: !57, line: 76, baseType: !43, size: 32, align: 32, offset: 2944)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !56, file: !57, line: 77, baseType: !43, size: 32, align: 32, offset: 2976)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !56, file: !57, line: 79, baseType: !331, size: 64, align: 64, offset: 3008)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !56, file: !57, line: 80, baseType: !219, size: 64, align: 64, offset: 3072)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !56, file: !57, line: 81, baseType: !219, size: 64, align: 64, offset: 3136)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !56, file: !57, line: 83, baseType: !258, size: 64, align: 64, offset: 3200)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !56, file: !57, line: 84, baseType: !210, size: 32, align: 32, offset: 3264)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !56, file: !57, line: 87, baseType: !43, size: 32, align: 32, offset: 3296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !56, file: !57, line: 91, baseType: !219, size: 64, align: 64, offset: 3328)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !56, file: !57, line: 92, baseType: !343, size: 128, align: 64, offset: 3392)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !56, file: !57, line: 93, baseType: !343, size: 128, align: 64, offset: 3520)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !56, file: !57, line: 95, baseType: !43, size: 32, align: 32, offset: 3648)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !56, file: !57, line: 96, baseType: !43, size: 32, align: 32, offset: 3680)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !56, file: !57, line: 97, baseType: !43, size: 32, align: 32, offset: 3712)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !56, file: !57, line: 100, baseType: !219, size: 64, align: 64, offset: 3776)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !56, file: !57, line: 103, baseType: !219, size: 64, align: 64, offset: 3840)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !56, file: !57, line: 106, baseType: !219, size: 64, align: 64, offset: 3904)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !56, file: !57, line: 108, baseType: !331, size: 64, align: 64, offset: 3968)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !56, file: !57, line: 109, baseType: !219, size: 64, align: 64, offset: 4032)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !56, file: !57, line: 111, baseType: !219, size: 64, align: 64, offset: 4096)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !56, file: !57, line: 114, baseType: !45, size: 64, align: 64, offset: 4160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !56, file: !57, line: 116, baseType: !331, size: 64, align: 64, offset: 4224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !56, file: !57, line: 117, baseType: !611, size: 32768, align: 64, offset: 4288)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 32768, align: 64, elements: !661)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !613, line: 10, size: 128, align: 64, elements: !614)
!613 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!614 = !{!615, !660}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !612, file: !613, line: 11, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !613, line: 7, baseType: !618)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !620, !445, !74, !74, !73, !258}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !55, line: 7, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !623, line: 15, size: 1600, align: 64, elements: !624)
!623 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !470, line: 3, baseType: !43, size: 32, align: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !622, file: !470, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !622, file: !470, line: 5, baseType: !331, size: 64, align: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !622, file: !470, line: 7, baseType: !45, size: 64, align: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !622, file: !470, line: 8, baseType: !53, size: 64, align: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !622, file: !470, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !470, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !622, file: !470, line: 11, baseType: !303, size: 64, align: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !622, file: !470, line: 12, baseType: !43, size: 32, align: 32, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !622, file: !470, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !622, file: !470, line: 15, baseType: !481, size: 64, align: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !622, file: !470, line: 17, baseType: !488, size: 64, align: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !622, file: !492, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !622, file: !492, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !622, file: !492, line: 7, baseType: !303, size: 64, align: 64, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !622, file: !492, line: 9, baseType: !331, size: 64, align: 64, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !622, file: !492, line: 10, baseType: !497, size: 64, align: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !622, file: !492, line: 12, baseType: !135, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !622, file: !492, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !622, file: !492, line: 14, baseType: !43, size: 32, align: 32, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !622, file: !492, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !622, file: !492, line: 17, baseType: !135, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !622, file: !492, line: 18, baseType: !135, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !622, file: !492, line: 19, baseType: !135, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !622, file: !492, line: 20, baseType: !135, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !622, file: !492, line: 22, baseType: !135, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !622, file: !492, line: 23, baseType: !135, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !622, file: !492, line: 24, baseType: !135, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !622, file: !492, line: 25, baseType: !135, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !622, file: !492, line: 26, baseType: !135, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !622, file: !492, line: 31, baseType: !536, size: 64, align: 64, offset: 1344)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !622, file: !623, line: 18, baseType: !219, size: 64, align: 64, offset: 1408)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !622, file: !623, line: 20, baseType: !303, size: 64, align: 64, offset: 1472)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !622, file: !623, line: 21, baseType: !43, size: 32, align: 32, offset: 1536)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !622, file: !623, line: 22, baseType: !43, size: 32, align: 32, offset: 1568)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !612, file: !613, line: 12, baseType: !74, size: 8, align: 8, offset: 64)
!661 = !{!662}
!662 = !DISubrange(count: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !56, file: !57, line: 118, baseType: !664, size: 2048, align: 8, offset: 37056)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !661)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !56, file: !57, line: 120, baseType: !547, size: 64, align: 64, offset: 39104)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !41, line: 91, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !44, !44, !44}
!670 = !{!671, !673}
!671 = distinct !DIGlobalVariable(name: "massjoin_tag", scope: !0, file: !672, line: 29, type: !43, isLocal: true, isDefinition: true, variable: i32* @massjoin_tag)
!672 = !DIFile(filename: "massjoin.c", directory: "/home/lichi/Desktop/irssi/task1")
!673 = distinct !DIGlobalVariable(name: "massjoin_max_joins", scope: !0, file: !672, line: 30, type: !43, isLocal: true, isDefinition: true, variable: i32* @massjoin_max_joins)
!674 = !{i32 2, !"Dwarf Version", i32 4}
!675 = !{i32 2, !"Debug Info Version", i32 3}
!676 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!677 = distinct !DISubprogram(name: "massjoin_init", scope: !672, file: !672, line: 275, type: !207, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!678 = !{}
!679 = !DILocation(line: 277, column: 9, scope: !677)
!680 = !DILocation(line: 278, column: 9, scope: !677)
!681 = !DILocation(line: 279, column: 17, scope: !677)
!682 = !DILocation(line: 279, column: 15, scope: !677)
!683 = !DILocation(line: 281, column: 2, scope: !677)
!684 = !DILocation(line: 282, column: 2, scope: !677)
!685 = !DILocation(line: 283, column: 2, scope: !677)
!686 = !DILocation(line: 284, column: 2, scope: !677)
!687 = !DILocation(line: 285, column: 2, scope: !677)
!688 = !DILocation(line: 286, column: 2, scope: !677)
!689 = !DILocation(line: 287, column: 1, scope: !677)
!690 = distinct !DISubprogram(name: "sig_massjoin_timeout", scope: !672, file: !672, line: 254, type: !691, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!691 = !DISubroutineType(types: !692)
!692 = !{!43}
!693 = !DILocalVariable(name: "tmp", scope: !690, file: !672, line: 256, type: !219)
!694 = !DIExpression()
!695 = !DILocation(line: 256, column: 10, scope: !690)
!696 = !DILocalVariable(name: "max", scope: !690, file: !672, line: 257, type: !303)
!697 = !DILocation(line: 257, column: 9, scope: !690)
!698 = !DILocation(line: 259, column: 8, scope: !690)
!699 = !DILocation(line: 259, column: 18, scope: !700)
!700 = !DILexicalBlockFile(scope: !690, file: !672, discriminator: 1)
!701 = !DILocation(line: 259, column: 18, scope: !690)
!702 = !DILocation(line: 259, column: 17, scope: !690)
!703 = !DILocation(line: 259, column: 6, scope: !690)
!704 = !DILocation(line: 260, column: 13, scope: !705)
!705 = distinct !DILexicalBlock(scope: !690, file: !672, line: 260, column: 2)
!706 = !DILocation(line: 260, column: 11, scope: !705)
!707 = !DILocation(line: 260, column: 7, scope: !705)
!708 = !DILocation(line: 260, column: 22, scope: !709)
!709 = !DILexicalBlockFile(scope: !710, file: !672, discriminator: 1)
!710 = distinct !DILexicalBlock(scope: !705, file: !672, line: 260, column: 2)
!711 = !DILocation(line: 260, column: 26, scope: !709)
!712 = !DILocation(line: 260, column: 2, scope: !709)
!713 = !DILocalVariable(name: "server", scope: !714, file: !672, line: 261, type: !53)
!714 = distinct !DILexicalBlock(scope: !710, file: !672, line: 260, column: 51)
!715 = !DILocation(line: 261, column: 19, scope: !714)
!716 = !DILocation(line: 261, column: 28, scope: !714)
!717 = !DILocation(line: 261, column: 33, scope: !714)
!718 = !DILocation(line: 263, column: 101, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !672, line: 263, column: 21)
!720 = !DILocation(line: 263, column: 83, scope: !719)
!721 = !DILocation(line: 263, column: 68, scope: !719)
!722 = !DILocation(line: 263, column: 67, scope: !719)
!723 = !DILocation(line: 263, column: 42, scope: !724)
!724 = !DILexicalBlockFile(scope: !719, file: !672, discriminator: 3)
!725 = !DILocation(line: 263, column: 23, scope: !719)
!726 = !DILocation(line: 263, column: 21, scope: !714)
!727 = !DILocation(line: 263, column: 22, scope: !728)
!728 = !DILexicalBlockFile(scope: !719, file: !672, discriminator: 1)
!729 = !DILocation(line: 263, column: 21, scope: !730)
!730 = !DILexicalBlockFile(scope: !714, file: !672, discriminator: 2)
!731 = !DILocation(line: 264, column: 27, scope: !719)
!732 = !DILocation(line: 264, column: 35, scope: !719)
!733 = !DILocation(line: 264, column: 4, scope: !719)
!734 = !DILocation(line: 265, column: 2, scope: !714)
!735 = !DILocation(line: 260, column: 40, scope: !736)
!736 = !DILexicalBlockFile(scope: !710, file: !672, discriminator: 2)
!737 = !DILocation(line: 260, column: 45, scope: !736)
!738 = !DILocation(line: 260, column: 38, scope: !736)
!739 = !DILocation(line: 260, column: 2, scope: !736)
!740 = distinct !{!740, !741}
!741 = !DILocation(line: 260, column: 2, scope: !690)
!742 = !DILocation(line: 267, column: 2, scope: !690)
!743 = distinct !DISubprogram(name: "read_settings", scope: !672, file: !672, line: 270, type: !207, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!744 = !DILocation(line: 272, column: 23, scope: !743)
!745 = !DILocation(line: 272, column: 21, scope: !743)
!746 = !DILocation(line: 273, column: 1, scope: !743)
!747 = distinct !DISubprogram(name: "event_join", scope: !672, file: !672, line: 35, type: !748, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !53, !445, !445, !445}
!750 = !DILocalVariable(name: "server", arg: 1, scope: !747, file: !672, line: 35, type: !53)
!751 = !DILocation(line: 35, column: 40, scope: !747)
!752 = !DILocalVariable(name: "data", arg: 2, scope: !747, file: !672, line: 35, type: !445)
!753 = !DILocation(line: 35, column: 60, scope: !747)
!754 = !DILocalVariable(name: "nick", arg: 3, scope: !747, file: !672, line: 36, type: !445)
!755 = !DILocation(line: 36, column: 22, scope: !747)
!756 = !DILocalVariable(name: "address", arg: 4, scope: !747, file: !672, line: 36, type: !445)
!757 = !DILocation(line: 36, column: 40, scope: !747)
!758 = !DILocalVariable(name: "params", scope: !747, file: !672, line: 38, type: !73)
!759 = !DILocation(line: 38, column: 8, scope: !747)
!760 = !DILocalVariable(name: "channel", scope: !747, file: !672, line: 38, type: !73)
!761 = !DILocation(line: 38, column: 17, scope: !747)
!762 = !DILocalVariable(name: "ptr", scope: !747, file: !672, line: 38, type: !73)
!763 = !DILocation(line: 38, column: 27, scope: !747)
!764 = !DILocalVariable(name: "chanrec", scope: !747, file: !672, line: 39, type: !620)
!765 = !DILocation(line: 39, column: 19, scope: !747)
!766 = !DILocalVariable(name: "nickrec", scope: !747, file: !672, line: 40, type: !497)
!767 = !DILocation(line: 40, column: 12, scope: !747)
!768 = !DILocalVariable(name: "nicks", scope: !747, file: !672, line: 41, type: !219)
!769 = !DILocation(line: 41, column: 10, scope: !747)
!770 = !DILocalVariable(name: "tmp", scope: !747, file: !672, line: 41, type: !219)
!771 = !DILocation(line: 41, column: 18, scope: !747)
!772 = !DILocation(line: 43, column: 2, scope: !747)
!773 = distinct !{!773, !772}
!774 = !DILocation(line: 43, column: 10, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !672, discriminator: 1)
!776 = distinct !DILexicalBlock(scope: !777, file: !672, line: 43, column: 10)
!777 = distinct !DILexicalBlock(scope: !747, file: !672, line: 43, column: 4)
!778 = !DILocation(line: 43, column: 15, scope: !775)
!779 = !DILocation(line: 43, column: 5, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !672, discriminator: 2)
!781 = distinct !DILexicalBlock(scope: !776, file: !672, line: 43, column: 3)
!782 = !DILocation(line: 43, column: 14, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !672, discriminator: 3)
!784 = distinct !DILexicalBlock(scope: !776, file: !672, line: 43, column: 12)
!785 = !DILocation(line: 43, column: 99, scope: !783)
!786 = !DILocation(line: 43, column: 110, scope: !787)
!787 = !DILexicalBlockFile(scope: !777, file: !672, discriminator: 4)
!788 = !DILocation(line: 45, column: 25, scope: !789)
!789 = distinct !DILexicalBlock(scope: !747, file: !672, line: 45, column: 6)
!790 = !DILocation(line: 45, column: 31, scope: !789)
!791 = !DILocation(line: 45, column: 39, scope: !789)
!792 = !DILocation(line: 45, column: 6, scope: !789)
!793 = !DILocation(line: 45, column: 45, scope: !789)
!794 = !DILocation(line: 45, column: 6, scope: !747)
!795 = !DILocation(line: 47, column: 3, scope: !796)
!796 = distinct !DILexicalBlock(scope: !789, file: !672, line: 45, column: 51)
!797 = !DILocation(line: 50, column: 28, scope: !747)
!798 = !DILocation(line: 50, column: 11, scope: !747)
!799 = !DILocation(line: 50, column: 9, scope: !747)
!800 = !DILocation(line: 51, column: 15, scope: !747)
!801 = !DILocation(line: 51, column: 8, scope: !747)
!802 = !DILocation(line: 51, column: 6, scope: !747)
!803 = !DILocation(line: 52, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !747, file: !672, line: 52, column: 6)
!805 = !DILocation(line: 52, column: 10, scope: !804)
!806 = !DILocation(line: 52, column: 6, scope: !747)
!807 = !DILocation(line: 52, column: 19, scope: !808)
!808 = !DILexicalBlockFile(scope: !804, file: !672, discriminator: 1)
!809 = !DILocation(line: 52, column: 23, scope: !808)
!810 = !DILocation(line: 52, column: 18, scope: !808)
!811 = !DILocation(line: 55, column: 147, scope: !747)
!812 = !DILocation(line: 55, column: 129, scope: !747)
!813 = !DILocation(line: 55, column: 114, scope: !747)
!814 = !DILocation(line: 55, column: 25, scope: !747)
!815 = !DILocation(line: 55, column: 100, scope: !816)
!816 = !DILexicalBlockFile(scope: !747, file: !672, discriminator: 1)
!817 = !DILocation(line: 55, column: 100, scope: !747)
!818 = !DILocation(line: 55, column: 75, scope: !819)
!819 = !DILexicalBlockFile(scope: !747, file: !672, discriminator: 2)
!820 = !DILocation(line: 55, column: 59, scope: !747)
!821 = !DILocation(line: 55, column: 58, scope: !747)
!822 = !DILocation(line: 55, column: 33, scope: !823)
!823 = !DILexicalBlockFile(scope: !747, file: !672, discriminator: 3)
!824 = !DILocation(line: 55, column: 13, scope: !747)
!825 = !DILocation(line: 55, column: 10, scope: !747)
!826 = !DILocation(line: 56, column: 9, scope: !747)
!827 = !DILocation(line: 56, column: 2, scope: !747)
!828 = !DILocation(line: 57, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !747, file: !672, line: 57, column: 6)
!830 = !DILocation(line: 57, column: 14, scope: !829)
!831 = !DILocation(line: 57, column: 6, scope: !747)
!832 = !DILocation(line: 57, column: 22, scope: !833)
!833 = !DILexicalBlockFile(scope: !829, file: !672, discriminator: 1)
!834 = !DILocation(line: 61, column: 68, scope: !747)
!835 = !DILocation(line: 61, column: 43, scope: !747)
!836 = !DILocation(line: 61, column: 27, scope: !747)
!837 = !DILocation(line: 61, column: 60, scope: !747)
!838 = !DILocation(line: 61, column: 12, scope: !816)
!839 = !DILocation(line: 61, column: 10, scope: !747)
!840 = !DILocation(line: 62, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !747, file: !672, line: 62, column: 6)
!842 = !DILocation(line: 62, column: 14, scope: !841)
!843 = !DILocation(line: 62, column: 6, scope: !747)
!844 = !DILocation(line: 64, column: 61, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !672, line: 62, column: 22)
!846 = !DILocation(line: 64, column: 36, scope: !845)
!847 = !DILocation(line: 64, column: 20, scope: !845)
!848 = !DILocation(line: 64, column: 53, scope: !845)
!849 = !DILocation(line: 64, column: 3, scope: !850)
!850 = !DILexicalBlockFile(scope: !845, file: !672, discriminator: 1)
!851 = !DILocation(line: 65, column: 2, scope: !845)
!852 = !DILocation(line: 68, column: 32, scope: !747)
!853 = !DILocation(line: 68, column: 41, scope: !747)
!854 = !DILocation(line: 68, column: 12, scope: !747)
!855 = !DILocation(line: 68, column: 10, scope: !747)
!856 = !DILocation(line: 69, column: 69, scope: !747)
!857 = !DILocation(line: 69, column: 44, scope: !747)
!858 = !DILocation(line: 69, column: 28, scope: !747)
!859 = !DILocation(line: 69, column: 61, scope: !747)
!860 = !DILocation(line: 69, column: 70, scope: !747)
!861 = !DILocation(line: 69, column: 9, scope: !816)
!862 = !DILocation(line: 71, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !747, file: !672, line: 71, column: 6)
!864 = !DILocation(line: 71, column: 15, scope: !863)
!865 = !DILocation(line: 71, column: 25, scope: !863)
!866 = !DILocation(line: 71, column: 6, scope: !747)
!867 = !DILocation(line: 73, column: 29, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !672, line: 71, column: 31)
!869 = !DILocation(line: 73, column: 3, scope: !868)
!870 = !DILocation(line: 73, column: 12, scope: !868)
!871 = !DILocation(line: 73, column: 27, scope: !868)
!872 = !DILocation(line: 74, column: 3, scope: !868)
!873 = !DILocation(line: 74, column: 12, scope: !868)
!874 = !DILocation(line: 74, column: 27, scope: !868)
!875 = !DILocation(line: 75, column: 2, scope: !868)
!876 = !DILocation(line: 77, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !747, file: !672, line: 77, column: 6)
!878 = !DILocation(line: 77, column: 15, scope: !877)
!879 = !DILocation(line: 77, column: 24, scope: !877)
!880 = !DILocation(line: 77, column: 6, scope: !747)
!881 = !DILocation(line: 80, column: 63, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !672, line: 77, column: 32)
!883 = !DILocation(line: 80, column: 45, scope: !882)
!884 = !DILocation(line: 80, column: 30, scope: !882)
!885 = !DILocation(line: 80, column: 42, scope: !882)
!886 = !DILocation(line: 80, column: 11, scope: !887)
!887 = !DILexicalBlockFile(scope: !882, file: !672, discriminator: 1)
!888 = !DILocation(line: 80, column: 9, scope: !882)
!889 = !DILocation(line: 81, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !882, file: !672, line: 81, column: 3)
!891 = !DILocation(line: 81, column: 12, scope: !890)
!892 = !DILocation(line: 81, column: 8, scope: !890)
!893 = !DILocation(line: 81, column: 21, scope: !894)
!894 = !DILexicalBlockFile(scope: !895, file: !672, discriminator: 1)
!895 = distinct !DILexicalBlock(scope: !890, file: !672, line: 81, column: 3)
!896 = !DILocation(line: 81, column: 25, scope: !894)
!897 = !DILocation(line: 81, column: 3, scope: !894)
!898 = !DILocalVariable(name: "rec", scope: !899, file: !672, line: 82, type: !497)
!899 = distinct !DILexicalBlock(scope: !895, file: !672, line: 81, column: 56)
!900 = !DILocation(line: 82, column: 14, scope: !899)
!901 = !DILocation(line: 82, column: 20, scope: !899)
!902 = !DILocation(line: 82, column: 25, scope: !899)
!903 = !DILocation(line: 82, column: 31, scope: !899)
!904 = !DILocation(line: 84, column: 8, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !672, line: 84, column: 8)
!906 = !DILocation(line: 84, column: 13, scope: !905)
!907 = !DILocation(line: 84, column: 22, scope: !905)
!908 = !DILocation(line: 84, column: 8, scope: !899)
!909 = !DILocation(line: 85, column: 27, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !672, line: 84, column: 30)
!911 = !DILocation(line: 85, column: 32, scope: !910)
!912 = !DILocation(line: 85, column: 5, scope: !910)
!913 = !DILocation(line: 85, column: 14, scope: !910)
!914 = !DILocation(line: 85, column: 25, scope: !910)
!915 = !DILocation(line: 86, column: 34, scope: !910)
!916 = !DILocation(line: 86, column: 39, scope: !910)
!917 = !DILocation(line: 86, column: 25, scope: !910)
!918 = !DILocation(line: 86, column: 5, scope: !910)
!919 = !DILocation(line: 86, column: 14, scope: !910)
!920 = !DILocation(line: 86, column: 23, scope: !910)
!921 = !DILocation(line: 87, column: 21, scope: !910)
!922 = !DILocation(line: 87, column: 26, scope: !910)
!923 = !DILocation(line: 87, column: 5, scope: !910)
!924 = !DILocation(line: 87, column: 14, scope: !910)
!925 = !DILocation(line: 87, column: 19, scope: !910)
!926 = !DILocation(line: 88, column: 25, scope: !910)
!927 = !DILocation(line: 88, column: 30, scope: !910)
!928 = !DILocation(line: 88, column: 5, scope: !910)
!929 = !DILocation(line: 88, column: 14, scope: !910)
!930 = !DILocation(line: 88, column: 23, scope: !910)
!931 = !DILocation(line: 89, column: 5, scope: !910)
!932 = !DILocation(line: 91, column: 3, scope: !899)
!933 = !DILocation(line: 81, column: 39, scope: !934)
!934 = !DILexicalBlockFile(scope: !895, file: !672, discriminator: 2)
!935 = !DILocation(line: 81, column: 44, scope: !934)
!936 = !DILocation(line: 81, column: 50, scope: !934)
!937 = !DILocation(line: 81, column: 37, scope: !934)
!938 = !DILocation(line: 81, column: 3, scope: !934)
!939 = distinct !{!939, !940}
!940 = !DILocation(line: 81, column: 3, scope: !882)
!941 = !DILocation(line: 92, column: 16, scope: !882)
!942 = !DILocation(line: 92, column: 3, scope: !882)
!943 = !DILocation(line: 93, column: 2, scope: !882)
!944 = !DILocation(line: 95, column: 2, scope: !747)
!945 = !DILocation(line: 95, column: 11, scope: !747)
!946 = !DILocation(line: 95, column: 20, scope: !747)
!947 = !DILocation(line: 96, column: 1, scope: !747)
!948 = !DILocation(line: 96, column: 1, scope: !816)
!949 = distinct !DISubprogram(name: "event_part", scope: !672, file: !672, line: 98, type: !748, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!950 = !DILocalVariable(name: "server", arg: 1, scope: !949, file: !672, line: 98, type: !53)
!951 = !DILocation(line: 98, column: 40, scope: !949)
!952 = !DILocalVariable(name: "data", arg: 2, scope: !949, file: !672, line: 98, type: !445)
!953 = !DILocation(line: 98, column: 60, scope: !949)
!954 = !DILocalVariable(name: "nick", arg: 3, scope: !949, file: !672, line: 99, type: !445)
!955 = !DILocation(line: 99, column: 22, scope: !949)
!956 = !DILocalVariable(name: "addr", arg: 4, scope: !949, file: !672, line: 99, type: !445)
!957 = !DILocation(line: 99, column: 40, scope: !949)
!958 = !DILocalVariable(name: "params", scope: !949, file: !672, line: 101, type: !73)
!959 = !DILocation(line: 101, column: 8, scope: !949)
!960 = !DILocalVariable(name: "channel", scope: !949, file: !672, line: 101, type: !73)
!961 = !DILocation(line: 101, column: 17, scope: !949)
!962 = !DILocalVariable(name: "reason", scope: !949, file: !672, line: 101, type: !73)
!963 = !DILocation(line: 101, column: 27, scope: !949)
!964 = !DILocalVariable(name: "chanrec", scope: !949, file: !672, line: 102, type: !620)
!965 = !DILocation(line: 102, column: 19, scope: !949)
!966 = !DILocalVariable(name: "nickrec", scope: !949, file: !672, line: 103, type: !497)
!967 = !DILocation(line: 103, column: 12, scope: !949)
!968 = !DILocation(line: 105, column: 2, scope: !949)
!969 = distinct !{!969, !968}
!970 = !DILocation(line: 105, column: 10, scope: !971)
!971 = !DILexicalBlockFile(scope: !972, file: !672, discriminator: 1)
!972 = distinct !DILexicalBlock(scope: !973, file: !672, line: 105, column: 10)
!973 = distinct !DILexicalBlock(scope: !949, file: !672, line: 105, column: 4)
!974 = !DILocation(line: 105, column: 15, scope: !971)
!975 = !DILocation(line: 105, column: 5, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !672, discriminator: 2)
!977 = distinct !DILexicalBlock(scope: !972, file: !672, line: 105, column: 3)
!978 = !DILocation(line: 105, column: 14, scope: !979)
!979 = !DILexicalBlockFile(scope: !980, file: !672, discriminator: 3)
!980 = distinct !DILexicalBlock(scope: !972, file: !672, line: 105, column: 12)
!981 = !DILocation(line: 105, column: 99, scope: !979)
!982 = !DILocation(line: 105, column: 110, scope: !983)
!983 = !DILexicalBlockFile(scope: !973, file: !672, discriminator: 4)
!984 = !DILocation(line: 107, column: 25, scope: !985)
!985 = distinct !DILexicalBlock(scope: !949, file: !672, line: 107, column: 6)
!986 = !DILocation(line: 107, column: 31, scope: !985)
!987 = !DILocation(line: 107, column: 39, scope: !985)
!988 = !DILocation(line: 107, column: 6, scope: !985)
!989 = !DILocation(line: 107, column: 45, scope: !985)
!990 = !DILocation(line: 107, column: 6, scope: !949)
!991 = !DILocation(line: 109, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !672, line: 107, column: 51)
!993 = !DILocation(line: 112, column: 28, scope: !949)
!994 = !DILocation(line: 112, column: 11, scope: !949)
!995 = !DILocation(line: 112, column: 9, scope: !949)
!996 = !DILocation(line: 115, column: 147, scope: !949)
!997 = !DILocation(line: 115, column: 129, scope: !949)
!998 = !DILocation(line: 115, column: 114, scope: !949)
!999 = !DILocation(line: 115, column: 25, scope: !949)
!1000 = !DILocation(line: 115, column: 100, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !949, file: !672, discriminator: 1)
!1002 = !DILocation(line: 115, column: 100, scope: !949)
!1003 = !DILocation(line: 115, column: 75, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !949, file: !672, discriminator: 2)
!1005 = !DILocation(line: 115, column: 59, scope: !949)
!1006 = !DILocation(line: 115, column: 58, scope: !949)
!1007 = !DILocation(line: 115, column: 33, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !949, file: !672, discriminator: 3)
!1009 = !DILocation(line: 115, column: 13, scope: !949)
!1010 = !DILocation(line: 115, column: 10, scope: !949)
!1011 = !DILocation(line: 116, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !949, file: !672, line: 116, column: 6)
!1013 = !DILocation(line: 116, column: 14, scope: !1012)
!1014 = !DILocation(line: 116, column: 6, scope: !949)
!1015 = !DILocation(line: 117, column: 10, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !672, line: 116, column: 22)
!1017 = !DILocation(line: 117, column: 3, scope: !1016)
!1018 = !DILocation(line: 118, column: 3, scope: !1016)
!1019 = !DILocation(line: 122, column: 68, scope: !949)
!1020 = !DILocation(line: 122, column: 43, scope: !949)
!1021 = !DILocation(line: 122, column: 27, scope: !949)
!1022 = !DILocation(line: 122, column: 60, scope: !949)
!1023 = !DILocation(line: 122, column: 12, scope: !1001)
!1024 = !DILocation(line: 122, column: 10, scope: !949)
!1025 = !DILocation(line: 123, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !949, file: !672, line: 123, column: 6)
!1027 = !DILocation(line: 123, column: 14, scope: !1026)
!1028 = !DILocation(line: 123, column: 6, scope: !949)
!1029 = !DILocation(line: 124, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !672, line: 124, column: 7)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !672, line: 123, column: 22)
!1032 = !DILocation(line: 124, column: 16, scope: !1030)
!1033 = !DILocation(line: 124, column: 7, scope: !1031)
!1034 = !DILocation(line: 127, column: 4, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !672, line: 124, column: 31)
!1036 = !DILocation(line: 127, column: 13, scope: !1035)
!1037 = !DILocation(line: 127, column: 22, scope: !1035)
!1038 = !DILocation(line: 128, column: 3, scope: !1035)
!1039 = !DILocation(line: 129, column: 61, scope: !1031)
!1040 = !DILocation(line: 129, column: 36, scope: !1031)
!1041 = !DILocation(line: 129, column: 20, scope: !1031)
!1042 = !DILocation(line: 129, column: 53, scope: !1031)
!1043 = !DILocation(line: 129, column: 3, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1031, file: !672, discriminator: 1)
!1045 = !DILocation(line: 130, column: 2, scope: !1031)
!1046 = !DILocation(line: 131, column: 9, scope: !949)
!1047 = !DILocation(line: 131, column: 2, scope: !949)
!1048 = !DILocation(line: 132, column: 1, scope: !949)
!1049 = !DILocation(line: 132, column: 1, scope: !1001)
!1050 = distinct !DISubprogram(name: "event_kick", scope: !672, file: !672, line: 164, type: !1051, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !53, !445}
!1053 = !DILocalVariable(name: "server", arg: 1, scope: !1050, file: !672, line: 164, type: !53)
!1054 = !DILocation(line: 164, column: 40, scope: !1050)
!1055 = !DILocalVariable(name: "data", arg: 2, scope: !1050, file: !672, line: 164, type: !445)
!1056 = !DILocation(line: 164, column: 60, scope: !1050)
!1057 = !DILocalVariable(name: "params", scope: !1050, file: !672, line: 166, type: !73)
!1058 = !DILocation(line: 166, column: 8, scope: !1050)
!1059 = !DILocalVariable(name: "channel", scope: !1050, file: !672, line: 166, type: !73)
!1060 = !DILocation(line: 166, column: 17, scope: !1050)
!1061 = !DILocalVariable(name: "nick", scope: !1050, file: !672, line: 166, type: !73)
!1062 = !DILocation(line: 166, column: 27, scope: !1050)
!1063 = !DILocalVariable(name: "reason", scope: !1050, file: !672, line: 166, type: !73)
!1064 = !DILocation(line: 166, column: 34, scope: !1050)
!1065 = !DILocalVariable(name: "chanrec", scope: !1050, file: !672, line: 167, type: !620)
!1066 = !DILocation(line: 167, column: 19, scope: !1050)
!1067 = !DILocalVariable(name: "nickrec", scope: !1050, file: !672, line: 168, type: !497)
!1068 = !DILocation(line: 168, column: 12, scope: !1050)
!1069 = !DILocation(line: 170, column: 2, scope: !1050)
!1070 = distinct !{!1070, !1069}
!1071 = !DILocation(line: 170, column: 10, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !672, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !672, line: 170, column: 10)
!1074 = distinct !DILexicalBlock(scope: !1050, file: !672, line: 170, column: 4)
!1075 = !DILocation(line: 170, column: 15, scope: !1072)
!1076 = !DILocation(line: 170, column: 5, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !672, discriminator: 2)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !672, line: 170, column: 3)
!1079 = !DILocation(line: 170, column: 14, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !672, discriminator: 3)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !672, line: 170, column: 12)
!1082 = !DILocation(line: 170, column: 99, scope: !1080)
!1083 = !DILocation(line: 170, column: 110, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1074, file: !672, discriminator: 4)
!1085 = !DILocation(line: 172, column: 28, scope: !1050)
!1086 = !DILocation(line: 172, column: 11, scope: !1050)
!1087 = !DILocation(line: 172, column: 9, scope: !1050)
!1088 = !DILocation(line: 174, column: 25, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1050, file: !672, line: 174, column: 6)
!1090 = !DILocation(line: 174, column: 31, scope: !1089)
!1091 = !DILocation(line: 174, column: 39, scope: !1089)
!1092 = !DILocation(line: 174, column: 6, scope: !1089)
!1093 = !DILocation(line: 174, column: 45, scope: !1089)
!1094 = !DILocation(line: 174, column: 6, scope: !1050)
!1095 = !DILocation(line: 176, column: 10, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !672, line: 174, column: 51)
!1097 = !DILocation(line: 176, column: 3, scope: !1096)
!1098 = !DILocation(line: 177, column: 3, scope: !1096)
!1099 = !DILocation(line: 181, column: 147, scope: !1050)
!1100 = !DILocation(line: 181, column: 129, scope: !1050)
!1101 = !DILocation(line: 181, column: 114, scope: !1050)
!1102 = !DILocation(line: 181, column: 25, scope: !1050)
!1103 = !DILocation(line: 181, column: 100, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1050, file: !672, discriminator: 1)
!1105 = !DILocation(line: 181, column: 100, scope: !1050)
!1106 = !DILocation(line: 181, column: 75, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1050, file: !672, discriminator: 2)
!1108 = !DILocation(line: 181, column: 59, scope: !1050)
!1109 = !DILocation(line: 181, column: 58, scope: !1050)
!1110 = !DILocation(line: 181, column: 33, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1050, file: !672, discriminator: 3)
!1112 = !DILocation(line: 181, column: 13, scope: !1050)
!1113 = !DILocation(line: 181, column: 10, scope: !1050)
!1114 = !DILocation(line: 182, column: 12, scope: !1050)
!1115 = !DILocation(line: 182, column: 20, scope: !1050)
!1116 = !DILocation(line: 182, column: 12, scope: !1104)
!1117 = !DILocation(line: 183, column: 59, scope: !1050)
!1118 = !DILocation(line: 183, column: 34, scope: !1050)
!1119 = !DILocation(line: 183, column: 18, scope: !1050)
!1120 = !DILocation(line: 183, column: 51, scope: !1050)
!1121 = !DILocation(line: 183, column: 3, scope: !1104)
!1122 = !DILocation(line: 182, column: 12, scope: !1107)
!1123 = !DILocation(line: 182, column: 12, scope: !1111)
!1124 = !DILocation(line: 182, column: 10, scope: !1111)
!1125 = !DILocation(line: 185, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1050, file: !672, line: 185, column: 6)
!1127 = !DILocation(line: 185, column: 14, scope: !1126)
!1128 = !DILocation(line: 185, column: 21, scope: !1126)
!1129 = !DILocation(line: 185, column: 24, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1126, file: !672, discriminator: 1)
!1131 = !DILocation(line: 185, column: 32, scope: !1130)
!1132 = !DILocation(line: 185, column: 6, scope: !1130)
!1133 = !DILocation(line: 186, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !672, line: 186, column: 7)
!1135 = distinct !DILexicalBlock(scope: !1126, file: !672, line: 185, column: 41)
!1136 = !DILocation(line: 186, column: 16, scope: !1134)
!1137 = !DILocation(line: 186, column: 7, scope: !1135)
!1138 = !DILocation(line: 189, column: 4, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !672, line: 186, column: 31)
!1140 = !DILocation(line: 189, column: 13, scope: !1139)
!1141 = !DILocation(line: 189, column: 22, scope: !1139)
!1142 = !DILocation(line: 190, column: 3, scope: !1139)
!1143 = !DILocation(line: 191, column: 61, scope: !1135)
!1144 = !DILocation(line: 191, column: 36, scope: !1135)
!1145 = !DILocation(line: 191, column: 20, scope: !1135)
!1146 = !DILocation(line: 191, column: 53, scope: !1135)
!1147 = !DILocation(line: 191, column: 3, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1135, file: !672, discriminator: 1)
!1149 = !DILocation(line: 192, column: 2, scope: !1135)
!1150 = !DILocation(line: 194, column: 9, scope: !1050)
!1151 = !DILocation(line: 194, column: 2, scope: !1050)
!1152 = !DILocation(line: 195, column: 1, scope: !1050)
!1153 = !DILocation(line: 195, column: 1, scope: !1104)
!1154 = distinct !DISubprogram(name: "event_quit", scope: !672, file: !672, line: 134, type: !1155, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !53, !445, !445}
!1157 = !DILocalVariable(name: "server", arg: 1, scope: !1154, file: !672, line: 134, type: !53)
!1158 = !DILocation(line: 134, column: 40, scope: !1154)
!1159 = !DILocalVariable(name: "data", arg: 2, scope: !1154, file: !672, line: 134, type: !445)
!1160 = !DILocation(line: 134, column: 60, scope: !1154)
!1161 = !DILocalVariable(name: "nick", arg: 3, scope: !1154, file: !672, line: 135, type: !445)
!1162 = !DILocation(line: 135, column: 22, scope: !1154)
!1163 = !DILocalVariable(name: "channel", scope: !1154, file: !672, line: 137, type: !620)
!1164 = !DILocation(line: 137, column: 26, scope: !1154)
!1165 = !DILocalVariable(name: "nickrec", scope: !1154, file: !672, line: 138, type: !497)
!1166 = !DILocation(line: 138, column: 12, scope: !1154)
!1167 = !DILocalVariable(name: "nicks", scope: !1154, file: !672, line: 139, type: !219)
!1168 = !DILocation(line: 139, column: 10, scope: !1154)
!1169 = !DILocalVariable(name: "tmp", scope: !1154, file: !672, line: 139, type: !219)
!1170 = !DILocation(line: 139, column: 18, scope: !1154)
!1171 = !DILocation(line: 141, column: 2, scope: !1154)
!1172 = distinct !{!1172, !1171}
!1173 = !DILocation(line: 141, column: 10, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1175, file: !672, discriminator: 1)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !672, line: 141, column: 10)
!1176 = distinct !DILexicalBlock(scope: !1154, file: !672, line: 141, column: 4)
!1177 = !DILocation(line: 141, column: 15, scope: !1174)
!1178 = !DILocation(line: 141, column: 5, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !672, discriminator: 2)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !672, line: 141, column: 3)
!1181 = !DILocation(line: 141, column: 14, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !672, discriminator: 3)
!1183 = distinct !DILexicalBlock(scope: !1175, file: !672, line: 141, column: 12)
!1184 = !DILocation(line: 141, column: 99, scope: !1182)
!1185 = !DILocation(line: 141, column: 110, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1176, file: !672, discriminator: 4)
!1187 = !DILocation(line: 143, column: 25, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1154, file: !672, line: 143, column: 6)
!1189 = !DILocation(line: 143, column: 31, scope: !1188)
!1190 = !DILocation(line: 143, column: 39, scope: !1188)
!1191 = !DILocation(line: 143, column: 6, scope: !1188)
!1192 = !DILocation(line: 143, column: 45, scope: !1188)
!1193 = !DILocation(line: 143, column: 6, scope: !1154)
!1194 = !DILocation(line: 145, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1188, file: !672, line: 143, column: 51)
!1196 = !DILocation(line: 149, column: 62, scope: !1154)
!1197 = !DILocation(line: 149, column: 44, scope: !1154)
!1198 = !DILocation(line: 149, column: 29, scope: !1154)
!1199 = !DILocation(line: 149, column: 41, scope: !1154)
!1200 = !DILocation(line: 149, column: 10, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1154, file: !672, discriminator: 1)
!1202 = !DILocation(line: 149, column: 8, scope: !1154)
!1203 = !DILocation(line: 150, column: 13, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1154, file: !672, line: 150, column: 2)
!1205 = !DILocation(line: 150, column: 11, scope: !1204)
!1206 = !DILocation(line: 150, column: 7, scope: !1204)
!1207 = !DILocation(line: 150, column: 20, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1209, file: !672, discriminator: 1)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !672, line: 150, column: 2)
!1210 = !DILocation(line: 150, column: 24, scope: !1208)
!1211 = !DILocation(line: 150, column: 2, scope: !1208)
!1212 = !DILocation(line: 151, column: 27, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !672, line: 150, column: 55)
!1214 = !DILocation(line: 151, column: 32, scope: !1213)
!1215 = !DILocation(line: 151, column: 25, scope: !1213)
!1216 = !DILocation(line: 152, column: 13, scope: !1213)
!1217 = !DILocation(line: 152, column: 18, scope: !1213)
!1218 = !DILocation(line: 152, column: 24, scope: !1213)
!1219 = !DILocation(line: 152, column: 11, scope: !1213)
!1220 = !DILocation(line: 154, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !672, line: 154, column: 7)
!1222 = !DILocation(line: 154, column: 16, scope: !1221)
!1223 = !DILocation(line: 154, column: 7, scope: !1213)
!1224 = !DILocation(line: 157, column: 4, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !672, line: 154, column: 31)
!1226 = !DILocation(line: 157, column: 13, scope: !1225)
!1227 = !DILocation(line: 157, column: 22, scope: !1225)
!1228 = !DILocation(line: 158, column: 3, scope: !1225)
!1229 = !DILocation(line: 159, column: 61, scope: !1213)
!1230 = !DILocation(line: 159, column: 36, scope: !1213)
!1231 = !DILocation(line: 159, column: 20, scope: !1213)
!1232 = !DILocation(line: 159, column: 53, scope: !1213)
!1233 = !DILocation(line: 159, column: 3, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1213, file: !672, discriminator: 1)
!1235 = !DILocation(line: 160, column: 2, scope: !1213)
!1236 = !DILocation(line: 150, column: 38, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1209, file: !672, discriminator: 2)
!1238 = !DILocation(line: 150, column: 43, scope: !1237)
!1239 = !DILocation(line: 150, column: 49, scope: !1237)
!1240 = !DILocation(line: 150, column: 36, scope: !1237)
!1241 = !DILocation(line: 150, column: 2, scope: !1237)
!1242 = distinct !{!1242, !1243}
!1243 = !DILocation(line: 150, column: 2, scope: !1154)
!1244 = !DILocation(line: 161, column: 15, scope: !1154)
!1245 = !DILocation(line: 161, column: 2, scope: !1154)
!1246 = !DILocation(line: 162, column: 1, scope: !1154)
!1247 = !DILocation(line: 162, column: 1, scope: !1201)
!1248 = distinct !DISubprogram(name: "massjoin_deinit", scope: !672, file: !672, line: 289, type: !207, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1249 = !DILocation(line: 291, column: 18, scope: !1248)
!1250 = !DILocation(line: 291, column: 2, scope: !1248)
!1251 = !DILocation(line: 293, column: 2, scope: !1248)
!1252 = !DILocation(line: 294, column: 2, scope: !1248)
!1253 = !DILocation(line: 295, column: 2, scope: !1248)
!1254 = !DILocation(line: 296, column: 2, scope: !1248)
!1255 = !DILocation(line: 297, column: 2, scope: !1248)
!1256 = !DILocation(line: 298, column: 1, scope: !1248)
!1257 = distinct !DISubprogram(name: "server_check_massjoins", scope: !672, file: !672, line: 218, type: !1258, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !53, !303}
!1260 = !DILocalVariable(name: "server", arg: 1, scope: !1257, file: !672, line: 218, type: !53)
!1261 = !DILocation(line: 218, column: 52, scope: !1257)
!1262 = !DILocalVariable(name: "max", arg: 2, scope: !1257, file: !672, line: 218, type: !303)
!1263 = !DILocation(line: 218, column: 67, scope: !1257)
!1264 = !DILocalVariable(name: "tmp", scope: !1257, file: !672, line: 220, type: !219)
!1265 = !DILocation(line: 220, column: 10, scope: !1257)
!1266 = !DILocation(line: 235, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1257, file: !672, line: 235, column: 2)
!1268 = !DILocation(line: 235, column: 21, scope: !1267)
!1269 = !DILocation(line: 235, column: 11, scope: !1267)
!1270 = !DILocation(line: 235, column: 7, scope: !1267)
!1271 = !DILocation(line: 235, column: 31, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !672, discriminator: 1)
!1273 = distinct !DILexicalBlock(scope: !1267, file: !672, line: 235, column: 2)
!1274 = !DILocation(line: 235, column: 35, scope: !1272)
!1275 = !DILocation(line: 235, column: 2, scope: !1272)
!1276 = !DILocalVariable(name: "rec", scope: !1277, file: !672, line: 236, type: !620)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !672, line: 235, column: 60)
!1278 = !DILocation(line: 236, column: 20, scope: !1277)
!1279 = !DILocation(line: 236, column: 26, scope: !1277)
!1280 = !DILocation(line: 236, column: 31, scope: !1277)
!1281 = !DILocation(line: 238, column: 97, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !672, line: 238, column: 7)
!1283 = !DILocation(line: 238, column: 72, scope: !1282)
!1284 = !DILocation(line: 238, column: 56, scope: !1282)
!1285 = !DILocation(line: 238, column: 55, scope: !1282)
!1286 = !DILocation(line: 238, column: 30, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1282, file: !672, discriminator: 4)
!1288 = !DILocation(line: 238, column: 10, scope: !1282)
!1289 = !DILocation(line: 238, column: 33, scope: !1282)
!1290 = !DILocation(line: 238, column: 9, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1282, file: !672, discriminator: 1)
!1292 = !DILocation(line: 238, column: 33, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1282, file: !672, discriminator: 2)
!1294 = !DILocation(line: 238, column: 36, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1282, file: !672, discriminator: 3)
!1296 = !DILocation(line: 238, column: 41, scope: !1295)
!1297 = !DILocation(line: 238, column: 51, scope: !1295)
!1298 = !DILocation(line: 238, column: 7, scope: !1295)
!1299 = !DILocation(line: 239, column: 4, scope: !1282)
!1300 = !DILocation(line: 241, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1277, file: !672, line: 241, column: 7)
!1302 = !DILocation(line: 241, column: 12, scope: !1301)
!1303 = !DILocation(line: 241, column: 29, scope: !1301)
!1304 = !DILocation(line: 241, column: 27, scope: !1301)
!1305 = !DILocation(line: 241, column: 33, scope: !1301)
!1306 = !DILocation(line: 242, column: 8, scope: !1301)
!1307 = !DILocation(line: 242, column: 13, scope: !1301)
!1308 = !DILocation(line: 242, column: 28, scope: !1301)
!1309 = !DILocation(line: 242, column: 32, scope: !1301)
!1310 = !DILocation(line: 243, column: 8, scope: !1301)
!1311 = !DILocation(line: 243, column: 13, scope: !1301)
!1312 = !DILocation(line: 243, column: 23, scope: !1301)
!1313 = !DILocation(line: 243, column: 22, scope: !1301)
!1314 = !DILocation(line: 243, column: 44, scope: !1301)
!1315 = !DILocation(line: 243, column: 49, scope: !1301)
!1316 = !DILocation(line: 243, column: 42, scope: !1301)
!1317 = !DILocation(line: 241, column: 7, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1277, file: !672, discriminator: 1)
!1319 = !DILocation(line: 245, column: 18, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1301, file: !672, line: 243, column: 66)
!1321 = !DILocation(line: 245, column: 4, scope: !1320)
!1322 = !DILocation(line: 246, column: 3, scope: !1320)
!1323 = !DILocation(line: 248, column: 26, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1301, file: !672, line: 246, column: 10)
!1325 = !DILocation(line: 248, column: 31, scope: !1324)
!1326 = !DILocation(line: 248, column: 4, scope: !1324)
!1327 = !DILocation(line: 248, column: 9, scope: !1324)
!1328 = !DILocation(line: 248, column: 24, scope: !1324)
!1329 = !DILocation(line: 250, column: 2, scope: !1277)
!1330 = !DILocation(line: 235, column: 49, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1273, file: !672, discriminator: 2)
!1332 = !DILocation(line: 235, column: 54, scope: !1331)
!1333 = !DILocation(line: 235, column: 47, scope: !1331)
!1334 = !DILocation(line: 235, column: 2, scope: !1331)
!1335 = distinct !{!1335, !1336}
!1336 = !DILocation(line: 235, column: 2, scope: !1257)
!1337 = !DILocation(line: 252, column: 1, scope: !1257)
!1338 = distinct !DISubprogram(name: "massjoin_send", scope: !672, file: !672, line: 206, type: !1339, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !620}
!1341 = !DILocalVariable(name: "channel", arg: 1, scope: !1338, file: !672, line: 206, type: !620)
!1342 = !DILocation(line: 206, column: 44, scope: !1338)
!1343 = !DILocalVariable(name: "list", scope: !1338, file: !672, line: 208, type: !219)
!1344 = !DILocation(line: 208, column: 10, scope: !1338)
!1345 = !DILocation(line: 210, column: 7, scope: !1338)
!1346 = !DILocation(line: 211, column: 23, scope: !1338)
!1347 = !DILocation(line: 211, column: 32, scope: !1338)
!1348 = !DILocation(line: 211, column: 68, scope: !1338)
!1349 = !DILocation(line: 211, column: 2, scope: !1338)
!1350 = !DILocation(line: 213, column: 2, scope: !1338)
!1351 = !DILocation(line: 213, column: 11, scope: !1338)
!1352 = !DILocation(line: 213, column: 21, scope: !1338)
!1353 = !DILocation(line: 214, column: 29, scope: !1338)
!1354 = !DILocation(line: 214, column: 38, scope: !1338)
!1355 = !DILocation(line: 214, column: 2, scope: !1338)
!1356 = !DILocation(line: 215, column: 15, scope: !1338)
!1357 = !DILocation(line: 215, column: 2, scope: !1338)
!1358 = !DILocation(line: 216, column: 1, scope: !1338)
!1359 = distinct !DISubprogram(name: "massjoin_send_hash", scope: !672, file: !672, line: 197, type: !1360, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !678)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !44, !497, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!1363 = !DILocalVariable(name: "key", arg: 1, scope: !1359, file: !672, line: 197, type: !44)
!1364 = !DILocation(line: 197, column: 41, scope: !1359)
!1365 = !DILocalVariable(name: "nick", arg: 2, scope: !1359, file: !672, line: 197, type: !497)
!1366 = !DILocation(line: 197, column: 56, scope: !1359)
!1367 = !DILocalVariable(name: "list", arg: 3, scope: !1359, file: !672, line: 197, type: !1362)
!1368 = !DILocation(line: 197, column: 71, scope: !1359)
!1369 = !DILocation(line: 199, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1359, file: !672, line: 199, column: 6)
!1371 = !DILocation(line: 199, column: 12, scope: !1370)
!1372 = !DILocation(line: 199, column: 6, scope: !1359)
!1373 = !DILocation(line: 200, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !672, line: 199, column: 27)
!1375 = !DILocation(line: 200, column: 9, scope: !1374)
!1376 = !DILocation(line: 200, column: 23, scope: !1374)
!1377 = !DILocation(line: 201, column: 27, scope: !1374)
!1378 = !DILocation(line: 201, column: 26, scope: !1374)
!1379 = !DILocation(line: 201, column: 33, scope: !1374)
!1380 = !DILocation(line: 201, column: 11, scope: !1374)
!1381 = !DILocation(line: 201, column: 4, scope: !1374)
!1382 = !DILocation(line: 201, column: 9, scope: !1374)
!1383 = !DILocation(line: 202, column: 2, scope: !1374)
!1384 = !DILocation(line: 203, column: 1, scope: !1359)
