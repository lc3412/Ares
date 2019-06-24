; ModuleID = './line147-lag.o.i'
source_filename = "./line147-lag.o.i"
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
@.str.2 = private unnamed_addr constant [15 x i8] c"lag_check_time\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1min\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"lag_max_before_disconnect\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@timeout_tag = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"lag pong\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"lag ping error\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"event 421\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"server lag disconnect\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"event pong\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"PING %s\00", align 1
@__func__.lag_event_pong = private unnamed_addr constant [15 x i8] c"lag_event_pong\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"server lag\00", align 1
@__func__.sig_unknown_command = private unnamed_addr constant [20 x i8] c"sig_unknown_command\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PING\00", align 1

; Function Attrs: nounwind uwtable
define void @lag_init() #0 !dbg !672 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !674
  call void @settings_add_time_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !675
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_check_lag to i32 (i8*)*), i8* null), !dbg !676
  store i32 %1, i32* @timeout_tag, align 4, !dbg !677
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @lag_event_pong to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !678
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @lag_ping_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !679
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_unknown_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !680
  ret void, !dbg !681
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_lag() #0 !dbg !682 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !685, metadata !686), !dbg !687
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !688, metadata !686), !dbg !689
  call void @llvm.dbg.declare(metadata i64* %4, metadata !690, metadata !686), !dbg !691
  call void @llvm.dbg.declare(metadata i32* %5, metadata !692, metadata !686), !dbg !693
  call void @llvm.dbg.declare(metadata i32* %6, metadata !694, metadata !686), !dbg !695
  %8 = call i32 @settings_get_time(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !696
  %9 = sdiv i32 %8, 1000, !dbg !697
  store i32 %9, i32* %5, align 4, !dbg !698
  %10 = call i32 @settings_get_time(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)), !dbg !699
  %11 = sdiv i32 %10, 1000, !dbg !700
  store i32 %11, i32* %6, align 4, !dbg !701
  %12 = load i32, i32* %5, align 4, !dbg !702
  %13 = icmp sle i32 %12, 0, !dbg !704
  br i1 %13, label %14, label %15, !dbg !705

; <label>:14:                                     ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !706
  br label %106, !dbg !706

; <label>:15:                                     ; preds = %0
  %16 = call i64 @time(i64* null) #5, !dbg !707
  store i64 %16, i64* %4, align 8, !dbg !708
  %17 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !709
  store %struct._GSList* %17, %struct._GSList** %2, align 8, !dbg !711
  br label %18, !dbg !712

; <label>:18:                                     ; preds = %103, %15
  %19 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !713
  %20 = icmp ne %struct._GSList* %19, null, !dbg !716
  br i1 %20, label %21, label %105, !dbg !717

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !718, metadata !686), !dbg !720
  %22 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !721
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !722
  %24 = load i8*, i8** %23, align 8, !dbg !722
  %25 = bitcast i8* %24 to %struct._IRC_SERVER_REC*, !dbg !721
  store %struct._IRC_SERVER_REC* %25, %struct._IRC_SERVER_REC** %7, align 8, !dbg !720
  %26 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !723
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !724
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !724
  store %struct._GSList* %28, %struct._GSList** %3, align 8, !dbg !725
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !726
  %30 = bitcast %struct._IRC_SERVER_REC* %29 to i8*, !dbg !726
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !728
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !729
  %33 = bitcast %struct._SERVER_REC* %32 to i8*, !dbg !730
  %34 = call i8* @chat_protocol_check_cast(i8* %33, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !731
  %35 = bitcast i8* %34 to %struct._IRC_SERVER_REC*, !dbg !733
  %36 = icmp ne %struct._IRC_SERVER_REC* %35, null, !dbg !733
  br i1 %36, label %37, label %38, !dbg !734

; <label>:37:                                     ; preds = %21
  br i1 false, label %47, label %39, !dbg !735

; <label>:38:                                     ; preds = %21
  br i1 false, label %39, label %47, !dbg !737

; <label>:39:                                     ; preds = %38, %37
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !739
  %41 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %40, i32 0, i32 45, !dbg !741
  %42 = load i16, i16* %41, align 4, !dbg !741
  %43 = lshr i16 %42, 6, !dbg !741
  %44 = and i16 %43, 1, !dbg !741
  %45 = zext i16 %44 to i32, !dbg !741
  %46 = icmp ne i32 %45, 0, !dbg !739
  br i1 %46, label %47, label %48, !dbg !742

; <label>:47:                                     ; preds = %39, %38, %37
  br label %103, !dbg !743

; <label>:48:                                     ; preds = %39
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !744
  %50 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %49, i32 0, i32 20, !dbg !746
  %51 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %50, i32 0, i32 0, !dbg !747
  %52 = load i64, i64* %51, align 8, !dbg !747
  %53 = icmp ne i64 %52, 0, !dbg !748
  br i1 %53, label %54, label %78, !dbg !749

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %6, align 4, !dbg !750
  %56 = icmp sgt i32 %55, 1, !dbg !753
  br i1 %56, label %57, label %77, !dbg !754

; <label>:57:                                     ; preds = %54
  %58 = load i64, i64* %4, align 8, !dbg !755
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !757
  %60 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %59, i32 0, i32 20, !dbg !758
  %61 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %60, i32 0, i32 0, !dbg !759
  %62 = load i64, i64* %61, align 8, !dbg !759
  %63 = sub nsw i64 %58, %62, !dbg !760
  %64 = load i32, i32* %6, align 4, !dbg !761
  %65 = sext i32 %64 to i64, !dbg !761
  %66 = icmp sgt i64 %63, %65, !dbg !762
  br i1 %66, label %67, label %77, !dbg !763

; <label>:67:                                     ; preds = %57
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !764
  %69 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %68), !dbg !766
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !767
  %71 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %70, i32 0, i32 8, !dbg !768
  %72 = load i8, i8* %71, align 8, !dbg !769
  %73 = and i8 %72, -5, !dbg !769
  %74 = or i8 %73, 4, !dbg !769
  store i8 %74, i8* %71, align 8, !dbg !769
  %75 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !770
  %76 = bitcast %struct._IRC_SERVER_REC* %75 to %struct._SERVER_REC*, !dbg !771
  call void @server_disconnect(%struct._SERVER_REC* %76), !dbg !772
  br label %77, !dbg !773

; <label>:77:                                     ; preds = %67, %57, %54
  br label %102, !dbg !774

; <label>:78:                                     ; preds = %48
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !775
  %80 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %79, i32 0, i32 21, !dbg !778
  %81 = load i64, i64* %80, align 8, !dbg !778
  %82 = load i32, i32* %5, align 4, !dbg !779
  %83 = sext i32 %82 to i64, !dbg !779
  %84 = add nsw i64 %81, %83, !dbg !780
  %85 = load i64, i64* %4, align 8, !dbg !781
  %86 = icmp slt i64 %84, %85, !dbg !782
  br i1 %86, label %87, label %101, !dbg !783

; <label>:87:                                     ; preds = %78
  %88 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !784
  %89 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %88, i32 0, i32 55, !dbg !785
  %90 = load i32, i32* %89, align 4, !dbg !785
  %91 = icmp eq i32 %90, 0, !dbg !786
  br i1 %91, label %92, label %101, !dbg !787

; <label>:92:                                     ; preds = %87
  %93 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !788
  %94 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %93, i32 0, i32 8, !dbg !789
  %95 = load i8, i8* %94, align 8, !dbg !789
  %96 = and i8 %95, 1, !dbg !789
  %97 = zext i8 %96 to i32, !dbg !789
  %98 = icmp ne i32 %97, 0, !dbg !788
  br i1 %98, label %99, label %101, !dbg !790

; <label>:99:                                     ; preds = %92
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !792
  call void @lag_get(%struct._IRC_SERVER_REC* %100), !dbg !794
  br label %101, !dbg !795

; <label>:101:                                    ; preds = %99, %92, %87, %78
  br label %102

; <label>:102:                                    ; preds = %101, %77
  br label %103, !dbg !796

; <label>:103:                                    ; preds = %102, %47
  %104 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !797
  store %struct._GSList* %104, %struct._GSList** %2, align 8, !dbg !799
  br label %18, !dbg !800, !llvm.loop !801

; <label>:105:                                    ; preds = %18
  store i32 1, i32* %1, align 4, !dbg !803
  br label %106, !dbg !803

; <label>:106:                                    ; preds = %105, %14
  %107 = load i32, i32* %1, align 4, !dbg !804
  ret i32 %107, !dbg !804
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @lag_event_pong(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !805 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GTimeVal, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !808, metadata !686), !dbg !809
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !810, metadata !686), !dbg !811
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !812, metadata !686), !dbg !813
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !814, metadata !686), !dbg !815
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %9, metadata !816, metadata !686), !dbg !817
  br label %10, !dbg !818, !llvm.loop !819

; <label>:10:                                     ; preds = %4
  %11 = load i8*, i8** %6, align 8, !dbg !820
  %12 = icmp ne i8* %11, null, !dbg !824
  br i1 %12, label %13, label %14, !dbg !820

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !825

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.lag_event_pong, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !828
  br label %35, !dbg !831

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !832

; <label>:16:                                     ; preds = %15
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !834
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 20, !dbg !836
  %19 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %18, i32 0, i32 0, !dbg !837
  %20 = load i64, i64* %19, align 8, !dbg !837
  %21 = icmp eq i64 %20, 0, !dbg !838
  br i1 %21, label %22, label %23, !dbg !839

; <label>:22:                                     ; preds = %16
  br label %35, !dbg !840

; <label>:23:                                     ; preds = %16
  call void @g_get_current_time(%struct._GTimeVal* %9), !dbg !842
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !843
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 20, !dbg !844
  %26 = call i64 @get_timeval_diff(%struct._GTimeVal* %9, %struct._GTimeVal* %25), !dbg !845
  %27 = trunc i64 %26 to i32, !dbg !846
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !847
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 22, !dbg !848
  store i32 %27, i32* %29, align 8, !dbg !849
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !850
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 20, !dbg !851
  %32 = bitcast %struct._GTimeVal* %31 to i8*, !dbg !852
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 16, i32 8, i1 false), !dbg !852
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !853
  %34 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %33), !dbg !854
  br label %35, !dbg !855

; <label>:35:                                     ; preds = %23, %22, %14
  ret void, !dbg !856
}

; Function Attrs: nounwind uwtable
define internal void @lag_ping_error(%struct._IRC_SERVER_REC*) #0 !dbg !858 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !861, metadata !686), !dbg !862
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !863
  call void @lag_get(%struct._IRC_SERVER_REC* %3), !dbg !864
  ret void, !dbg !865
}

; Function Attrs: nounwind uwtable
define internal void @sig_unknown_command(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !866 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !869, metadata !686), !dbg !870
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !871, metadata !686), !dbg !872
  call void @llvm.dbg.declare(metadata i8** %5, metadata !873, metadata !686), !dbg !874
  call void @llvm.dbg.declare(metadata i8** %6, metadata !875, metadata !686), !dbg !876
  br label %7, !dbg !877, !llvm.loop !878

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !879
  %9 = icmp ne i8* %8, null, !dbg !883
  br i1 %9, label %10, label %11, !dbg !879

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !884

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_unknown_command, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !887
  br label %32, !dbg !890

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !891

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !893
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !894
  store i8* %15, i8** %5, align 8, !dbg !895
  %16 = load i8*, i8** %6, align 8, !dbg !896
  %17 = call i32 @g_ascii_strcasecmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)), !dbg !898
  %18 = icmp eq i32 %17, 0, !dbg !899
  br i1 %18, label %19, label %30, !dbg !900

; <label>:19:                                     ; preds = %13
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !901
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 45, !dbg !903
  %22 = load i16, i16* %21, align 4, !dbg !904
  %23 = and i16 %22, -65, !dbg !904
  %24 = or i16 %23, 64, !dbg !904
  store i16 %24, i16* %21, align 4, !dbg !904
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !905
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 20, !dbg !906
  %27 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %26, i32 0, i32 0, !dbg !907
  store i64 0, i64* %27, align 8, !dbg !908
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !909
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 22, !dbg !910
  store i32 0, i32* %29, align 8, !dbg !911
  br label %30, !dbg !912

; <label>:30:                                     ; preds = %19, %13
  %31 = load i8*, i8** %5, align 8, !dbg !913
  call void @g_free(i8* %31), !dbg !914
  br label %32, !dbg !915

; <label>:32:                                     ; preds = %30, %11
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define void @lag_deinit() #0 !dbg !918 {
  %1 = load i32, i32* @timeout_tag, align 4, !dbg !919
  %2 = call i32 @g_source_remove(i32 %1), !dbg !920
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @lag_event_pong to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !921
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @lag_ping_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !922
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_unknown_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !923
  ret void, !dbg !924
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @settings_get_time(i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @server_disconnect(%struct._SERVER_REC*) #1

; Function Attrs: nounwind uwtable
define internal void @lag_get(%struct._IRC_SERVER_REC*) #0 !dbg !925 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !926, metadata !686), !dbg !927
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !928
  %4 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %3, i32 0, i32 20, !dbg !929
  call void @g_get_current_time(%struct._GTimeVal* %4), !dbg !930
  %5 = call i64 @time(i64* null) #5, !dbg !931
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !932
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 21, !dbg !933
  store i64 %5, i64* %7, align 8, !dbg !934
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !935
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* null, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null), !dbg !936
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !937
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !938
  %11 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %10, i32 0, i32 40, !dbg !939
  %12 = load i8*, i8** %11, align 8, !dbg !939
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* %12), !dbg !940
  ret void, !dbg !941
}

declare void @g_get_current_time(%struct._GTimeVal*) #1

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i64 @get_timeval_diff(%struct._GTimeVal*, %struct._GTimeVal*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i8* @event_get_params(i8*, i32, ...) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!669, !670}
!llvm.ident = !{!671}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !666)
!1 = !DIFile(filename: "line147-lag.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !45, !46, !53, !357, !119, !445, !43}
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
!666 = !{!667}
!667 = distinct !DIGlobalVariable(name: "timeout_tag", scope: !0, file: !668, line: 29, type: !43, isLocal: true, isDefinition: true, variable: i32* @timeout_tag)
!668 = !DIFile(filename: "lag.c", directory: "/home/lichi/Desktop/irssi/task1")
!669 = !{i32 2, !"Dwarf Version", i32 4}
!670 = !{i32 2, !"Debug Info Version", i32 3}
!671 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!672 = distinct !DISubprogram(name: "lag_init", scope: !668, file: !668, line: 123, type: !207, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!673 = !{}
!674 = !DILocation(line: 125, column: 2, scope: !672)
!675 = !DILocation(line: 126, column: 2, scope: !672)
!676 = !DILocation(line: 128, column: 16, scope: !672)
!677 = !DILocation(line: 128, column: 14, scope: !672)
!678 = !DILocation(line: 129, column: 2, scope: !672)
!679 = !DILocation(line: 130, column: 9, scope: !672)
!680 = !DILocation(line: 131, column: 9, scope: !672)
!681 = !DILocation(line: 132, column: 1, scope: !672)
!682 = distinct !DISubprogram(name: "sig_check_lag", scope: !668, file: !668, line: 85, type: !683, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!683 = !DISubroutineType(types: !684)
!684 = !{!43}
!685 = !DILocalVariable(name: "tmp", scope: !682, file: !668, line: 87, type: !219)
!686 = !DIExpression()
!687 = !DILocation(line: 87, column: 10, scope: !682)
!688 = !DILocalVariable(name: "next", scope: !682, file: !668, line: 87, type: !219)
!689 = !DILocation(line: 87, column: 16, scope: !682)
!690 = !DILocalVariable(name: "now", scope: !682, file: !668, line: 88, type: !303)
!691 = !DILocation(line: 88, column: 9, scope: !682)
!692 = !DILocalVariable(name: "lag_check_time", scope: !682, file: !668, line: 89, type: !43)
!693 = !DILocation(line: 89, column: 6, scope: !682)
!694 = !DILocalVariable(name: "max_lag", scope: !682, file: !668, line: 89, type: !43)
!695 = !DILocation(line: 89, column: 22, scope: !682)
!696 = !DILocation(line: 91, column: 19, scope: !682)
!697 = !DILocation(line: 91, column: 54, scope: !682)
!698 = !DILocation(line: 91, column: 17, scope: !682)
!699 = !DILocation(line: 92, column: 12, scope: !682)
!700 = !DILocation(line: 92, column: 58, scope: !682)
!701 = !DILocation(line: 92, column: 10, scope: !682)
!702 = !DILocation(line: 94, column: 6, scope: !703)
!703 = distinct !DILexicalBlock(scope: !682, file: !668, line: 94, column: 6)
!704 = !DILocation(line: 94, column: 21, scope: !703)
!705 = !DILocation(line: 94, column: 6, scope: !682)
!706 = !DILocation(line: 95, column: 3, scope: !703)
!707 = !DILocation(line: 97, column: 8, scope: !682)
!708 = !DILocation(line: 97, column: 6, scope: !682)
!709 = !DILocation(line: 98, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !682, file: !668, line: 98, column: 2)
!711 = !DILocation(line: 98, column: 11, scope: !710)
!712 = !DILocation(line: 98, column: 7, scope: !710)
!713 = !DILocation(line: 98, column: 22, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !668, discriminator: 1)
!715 = distinct !DILexicalBlock(scope: !710, file: !668, line: 98, column: 2)
!716 = !DILocation(line: 98, column: 26, scope: !714)
!717 = !DILocation(line: 98, column: 2, scope: !714)
!718 = !DILocalVariable(name: "rec", scope: !719, file: !668, line: 99, type: !53)
!719 = distinct !DILexicalBlock(scope: !715, file: !668, line: 98, column: 46)
!720 = !DILocation(line: 99, column: 19, scope: !719)
!721 = !DILocation(line: 99, column: 25, scope: !719)
!722 = !DILocation(line: 99, column: 30, scope: !719)
!723 = !DILocation(line: 101, column: 10, scope: !719)
!724 = !DILocation(line: 101, column: 15, scope: !719)
!725 = !DILocation(line: 101, column: 8, scope: !719)
!726 = !DILocation(line: 102, column: 88, scope: !727)
!727 = distinct !DILexicalBlock(scope: !719, file: !668, line: 102, column: 7)
!728 = !DILocation(line: 102, column: 70, scope: !727)
!729 = !DILocation(line: 102, column: 55, scope: !727)
!730 = !DILocation(line: 102, column: 54, scope: !727)
!731 = !DILocation(line: 102, column: 29, scope: !732)
!732 = !DILexicalBlockFile(scope: !727, file: !668, discriminator: 4)
!733 = !DILocation(line: 102, column: 10, scope: !727)
!734 = !DILocation(line: 102, column: 33, scope: !727)
!735 = !DILocation(line: 102, column: 9, scope: !736)
!736 = !DILexicalBlockFile(scope: !727, file: !668, discriminator: 1)
!737 = !DILocation(line: 102, column: 33, scope: !738)
!738 = !DILexicalBlockFile(scope: !727, file: !668, discriminator: 2)
!739 = !DILocation(line: 102, column: 36, scope: !740)
!740 = !DILexicalBlockFile(scope: !727, file: !668, discriminator: 3)
!741 = !DILocation(line: 102, column: 41, scope: !740)
!742 = !DILocation(line: 102, column: 7, scope: !740)
!743 = !DILocation(line: 103, column: 4, scope: !727)
!744 = !DILocation(line: 105, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !719, file: !668, line: 105, column: 7)
!746 = !DILocation(line: 105, column: 12, scope: !745)
!747 = !DILocation(line: 105, column: 21, scope: !745)
!748 = !DILocation(line: 105, column: 28, scope: !745)
!749 = !DILocation(line: 105, column: 7, scope: !719)
!750 = !DILocation(line: 107, column: 8, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !668, line: 107, column: 8)
!752 = distinct !DILexicalBlock(scope: !745, file: !668, line: 105, column: 34)
!753 = !DILocation(line: 107, column: 16, scope: !751)
!754 = !DILocation(line: 107, column: 20, scope: !751)
!755 = !DILocation(line: 107, column: 23, scope: !756)
!756 = !DILexicalBlockFile(scope: !751, file: !668, discriminator: 1)
!757 = !DILocation(line: 107, column: 27, scope: !756)
!758 = !DILocation(line: 107, column: 32, scope: !756)
!759 = !DILocation(line: 107, column: 41, scope: !756)
!760 = !DILocation(line: 107, column: 26, scope: !756)
!761 = !DILocation(line: 107, column: 50, scope: !756)
!762 = !DILocation(line: 107, column: 48, scope: !756)
!763 = !DILocation(line: 107, column: 8, scope: !756)
!764 = !DILocation(line: 109, column: 45, scope: !765)
!765 = distinct !DILexicalBlock(scope: !751, file: !668, line: 107, column: 59)
!766 = !DILocation(line: 109, column: 5, scope: !765)
!767 = !DILocation(line: 110, column: 5, scope: !765)
!768 = !DILocation(line: 110, column: 10, scope: !765)
!769 = !DILocation(line: 110, column: 26, scope: !765)
!770 = !DILocation(line: 111, column: 38, scope: !765)
!771 = !DILocation(line: 111, column: 23, scope: !765)
!772 = !DILocation(line: 111, column: 5, scope: !765)
!773 = !DILocation(line: 112, column: 4, scope: !765)
!774 = !DILocation(line: 113, column: 3, scope: !752)
!775 = !DILocation(line: 113, column: 14, scope: !776)
!776 = !DILexicalBlockFile(scope: !777, file: !668, discriminator: 1)
!777 = distinct !DILexicalBlock(scope: !745, file: !668, line: 113, column: 14)
!778 = !DILocation(line: 113, column: 19, scope: !776)
!779 = !DILocation(line: 113, column: 34, scope: !776)
!780 = !DILocation(line: 113, column: 33, scope: !776)
!781 = !DILocation(line: 113, column: 51, scope: !776)
!782 = !DILocation(line: 113, column: 49, scope: !776)
!783 = !DILocation(line: 113, column: 55, scope: !776)
!784 = !DILocation(line: 114, column: 5, scope: !777)
!785 = !DILocation(line: 114, column: 10, scope: !777)
!786 = !DILocation(line: 114, column: 19, scope: !777)
!787 = !DILocation(line: 114, column: 24, scope: !777)
!788 = !DILocation(line: 114, column: 27, scope: !776)
!789 = !DILocation(line: 114, column: 32, scope: !776)
!790 = !DILocation(line: 113, column: 14, scope: !791)
!791 = !DILexicalBlockFile(scope: !745, file: !668, discriminator: 2)
!792 = !DILocation(line: 116, column: 12, scope: !793)
!793 = distinct !DILexicalBlock(scope: !777, file: !668, line: 114, column: 43)
!794 = !DILocation(line: 116, column: 4, scope: !793)
!795 = !DILocation(line: 117, column: 3, scope: !793)
!796 = !DILocation(line: 118, column: 2, scope: !719)
!797 = !DILocation(line: 98, column: 40, scope: !798)
!798 = !DILexicalBlockFile(scope: !715, file: !668, discriminator: 2)
!799 = !DILocation(line: 98, column: 38, scope: !798)
!800 = !DILocation(line: 98, column: 2, scope: !798)
!801 = distinct !{!801, !802}
!802 = !DILocation(line: 98, column: 2, scope: !682)
!803 = !DILocation(line: 120, column: 2, scope: !682)
!804 = !DILocation(line: 121, column: 1, scope: !682)
!805 = distinct !DISubprogram(name: "lag_event_pong", scope: !668, file: !668, line: 48, type: !806, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !53, !445, !445, !445}
!808 = !DILocalVariable(name: "server", arg: 1, scope: !805, file: !668, line: 48, type: !53)
!809 = !DILocation(line: 48, column: 44, scope: !805)
!810 = !DILocalVariable(name: "data", arg: 2, scope: !805, file: !668, line: 48, type: !445)
!811 = !DILocation(line: 48, column: 64, scope: !805)
!812 = !DILocalVariable(name: "nick", arg: 3, scope: !805, file: !668, line: 49, type: !445)
!813 = !DILocation(line: 49, column: 19, scope: !805)
!814 = !DILocalVariable(name: "addr", arg: 4, scope: !805, file: !668, line: 49, type: !445)
!815 = !DILocation(line: 49, column: 37, scope: !805)
!816 = !DILocalVariable(name: "now", scope: !805, file: !668, line: 51, type: !343)
!817 = !DILocation(line: 51, column: 11, scope: !805)
!818 = !DILocation(line: 53, column: 2, scope: !805)
!819 = distinct !{!819, !818}
!820 = !DILocation(line: 53, column: 10, scope: !821)
!821 = !DILexicalBlockFile(scope: !822, file: !668, discriminator: 1)
!822 = distinct !DILexicalBlock(scope: !823, file: !668, line: 53, column: 10)
!823 = distinct !DILexicalBlock(scope: !805, file: !668, line: 53, column: 4)
!824 = !DILocation(line: 53, column: 15, scope: !821)
!825 = !DILocation(line: 53, column: 5, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !668, discriminator: 2)
!827 = distinct !DILexicalBlock(scope: !822, file: !668, line: 53, column: 3)
!828 = !DILocation(line: 53, column: 14, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !668, discriminator: 3)
!830 = distinct !DILexicalBlock(scope: !822, file: !668, line: 53, column: 12)
!831 = !DILocation(line: 53, column: 99, scope: !829)
!832 = !DILocation(line: 53, column: 110, scope: !833)
!833 = !DILexicalBlockFile(scope: !823, file: !668, discriminator: 4)
!834 = !DILocation(line: 55, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !805, file: !668, line: 55, column: 6)
!836 = !DILocation(line: 55, column: 14, scope: !835)
!837 = !DILocation(line: 55, column: 23, scope: !835)
!838 = !DILocation(line: 55, column: 30, scope: !835)
!839 = !DILocation(line: 55, column: 6, scope: !805)
!840 = !DILocation(line: 57, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !668, line: 55, column: 36)
!842 = !DILocation(line: 60, column: 2, scope: !805)
!843 = !DILocation(line: 61, column: 46, scope: !805)
!844 = !DILocation(line: 61, column: 54, scope: !805)
!845 = !DILocation(line: 61, column: 22, scope: !805)
!846 = !DILocation(line: 61, column: 16, scope: !805)
!847 = !DILocation(line: 61, column: 2, scope: !805)
!848 = !DILocation(line: 61, column: 10, scope: !805)
!849 = !DILocation(line: 61, column: 14, scope: !805)
!850 = !DILocation(line: 62, column: 10, scope: !805)
!851 = !DILocation(line: 62, column: 18, scope: !805)
!852 = !DILocation(line: 62, column: 2, scope: !805)
!853 = !DILocation(line: 64, column: 31, scope: !805)
!854 = !DILocation(line: 64, column: 2, scope: !805)
!855 = !DILocation(line: 65, column: 1, scope: !805)
!856 = !DILocation(line: 65, column: 1, scope: !857)
!857 = !DILexicalBlockFile(scope: !805, file: !668, discriminator: 1)
!858 = distinct !DISubprogram(name: "lag_ping_error", scope: !668, file: !668, line: 43, type: !859, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !53}
!861 = !DILocalVariable(name: "server", arg: 1, scope: !858, file: !668, line: 43, type: !53)
!862 = !DILocation(line: 43, column: 44, scope: !858)
!863 = !DILocation(line: 45, column: 10, scope: !858)
!864 = !DILocation(line: 45, column: 2, scope: !858)
!865 = !DILocation(line: 46, column: 1, scope: !858)
!866 = distinct !DISubprogram(name: "sig_unknown_command", scope: !668, file: !668, line: 67, type: !867, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !53, !445}
!869 = !DILocalVariable(name: "server", arg: 1, scope: !866, file: !668, line: 67, type: !53)
!870 = !DILocation(line: 67, column: 49, scope: !866)
!871 = !DILocalVariable(name: "data", arg: 2, scope: !866, file: !668, line: 67, type: !445)
!872 = !DILocation(line: 67, column: 69, scope: !866)
!873 = !DILocalVariable(name: "params", scope: !866, file: !668, line: 69, type: !73)
!874 = !DILocation(line: 69, column: 8, scope: !866)
!875 = !DILocalVariable(name: "cmd", scope: !866, file: !668, line: 69, type: !73)
!876 = !DILocation(line: 69, column: 17, scope: !866)
!877 = !DILocation(line: 71, column: 2, scope: !866)
!878 = distinct !{!878, !877}
!879 = !DILocation(line: 71, column: 10, scope: !880)
!880 = !DILexicalBlockFile(scope: !881, file: !668, discriminator: 1)
!881 = distinct !DILexicalBlock(scope: !882, file: !668, line: 71, column: 10)
!882 = distinct !DILexicalBlock(scope: !866, file: !668, line: 71, column: 4)
!883 = !DILocation(line: 71, column: 15, scope: !880)
!884 = !DILocation(line: 71, column: 5, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !668, discriminator: 2)
!886 = distinct !DILexicalBlock(scope: !881, file: !668, line: 71, column: 3)
!887 = !DILocation(line: 71, column: 14, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !668, discriminator: 3)
!889 = distinct !DILexicalBlock(scope: !881, file: !668, line: 71, column: 12)
!890 = !DILocation(line: 71, column: 99, scope: !888)
!891 = !DILocation(line: 71, column: 110, scope: !892)
!892 = !DILexicalBlockFile(scope: !882, file: !668, discriminator: 4)
!893 = !DILocation(line: 73, column: 28, scope: !866)
!894 = !DILocation(line: 73, column: 11, scope: !866)
!895 = !DILocation(line: 73, column: 9, scope: !866)
!896 = !DILocation(line: 74, column: 25, scope: !897)
!897 = distinct !DILexicalBlock(scope: !866, file: !668, line: 74, column: 6)
!898 = !DILocation(line: 74, column: 6, scope: !897)
!899 = !DILocation(line: 74, column: 38, scope: !897)
!900 = !DILocation(line: 74, column: 6, scope: !866)
!901 = !DILocation(line: 78, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !668, line: 74, column: 44)
!903 = !DILocation(line: 78, column: 11, scope: !902)
!904 = !DILocation(line: 78, column: 23, scope: !902)
!905 = !DILocation(line: 79, column: 3, scope: !902)
!906 = !DILocation(line: 79, column: 11, scope: !902)
!907 = !DILocation(line: 79, column: 20, scope: !902)
!908 = !DILocation(line: 79, column: 27, scope: !902)
!909 = !DILocation(line: 80, column: 17, scope: !902)
!910 = !DILocation(line: 80, column: 25, scope: !902)
!911 = !DILocation(line: 80, column: 29, scope: !902)
!912 = !DILocation(line: 81, column: 2, scope: !902)
!913 = !DILocation(line: 82, column: 9, scope: !866)
!914 = !DILocation(line: 82, column: 2, scope: !866)
!915 = !DILocation(line: 83, column: 1, scope: !866)
!916 = !DILocation(line: 83, column: 1, scope: !917)
!917 = !DILexicalBlockFile(scope: !866, file: !668, discriminator: 1)
!918 = distinct !DISubprogram(name: "lag_deinit", scope: !668, file: !668, line: 134, type: !207, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!919 = !DILocation(line: 136, column: 18, scope: !918)
!920 = !DILocation(line: 136, column: 2, scope: !918)
!921 = !DILocation(line: 137, column: 2, scope: !918)
!922 = !DILocation(line: 138, column: 9, scope: !918)
!923 = !DILocation(line: 139, column: 9, scope: !918)
!924 = !DILocation(line: 140, column: 1, scope: !918)
!925 = distinct !DISubprogram(name: "lag_get", scope: !668, file: !668, line: 31, type: !859, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !673)
!926 = !DILocalVariable(name: "server", arg: 1, scope: !925, file: !668, line: 31, type: !53)
!927 = !DILocation(line: 31, column: 37, scope: !925)
!928 = !DILocation(line: 33, column: 22, scope: !925)
!929 = !DILocation(line: 33, column: 30, scope: !925)
!930 = !DILocation(line: 33, column: 2, scope: !925)
!931 = !DILocation(line: 34, column: 27, scope: !925)
!932 = !DILocation(line: 34, column: 2, scope: !925)
!933 = !DILocation(line: 34, column: 10, scope: !925)
!934 = !DILocation(line: 34, column: 25, scope: !925)
!935 = !DILocation(line: 36, column: 24, scope: !925)
!936 = !DILocation(line: 36, column: 2, scope: !925)
!937 = !DILocation(line: 39, column: 16, scope: !925)
!938 = !DILocation(line: 39, column: 35, scope: !925)
!939 = !DILocation(line: 39, column: 43, scope: !925)
!940 = !DILocation(line: 39, column: 2, scope: !925)
!941 = !DILocation(line: 40, column: 1, scope: !925)
