; ModuleID = './line198-notify-whois.o.i'
source_filename = "./line198-notify-whois.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.NOTIFY_NICK_REC = type { i8*, i8*, i8*, i8*, i8*, i8, i64 }
%struct.NOTIFYLIST_REC = type { i8*, i8**, i8 }
%struct.MODULE_SERVER_REC = type { i32, %struct._GSList*, %struct._GSList* }

@last_notify_nick = internal global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"irc/notifylist\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"notifylist event whois\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"notifylist event whois away\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"notifylist event whois end\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@__func__.event_whois = private unnamed_addr constant [12 x i8] c"event_whois\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.event_whois_away = private unnamed_addr constant [17 x i8] c"event_whois_away\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"notifylist joined\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"notifylist away changed\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"??\00", align 1

; Function Attrs: nounwind uwtable
define void @notifylist_whois_init() #0 !dbg !472 {
  store i8* null, i8** @last_notify_nick, align 8, !dbg !474
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !475
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !476
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !477
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastnotify, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null), !dbg !478
  ret void, !dbg !479
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_whois(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !480 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %11 = alloca %struct.NOTIFYLIST_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !691, metadata !692), !dbg !693
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !694, metadata !692), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %5, metadata !696, metadata !692), !dbg !697
  call void @llvm.dbg.declare(metadata i8** %6, metadata !698, metadata !692), !dbg !699
  call void @llvm.dbg.declare(metadata i8** %7, metadata !700, metadata !692), !dbg !701
  call void @llvm.dbg.declare(metadata i8** %8, metadata !702, metadata !692), !dbg !703
  call void @llvm.dbg.declare(metadata i8** %9, metadata !704, metadata !692), !dbg !705
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %10, metadata !706, metadata !692), !dbg !722
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %11, metadata !723, metadata !692), !dbg !732
  br label %12, !dbg !733, !llvm.loop !734

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !735
  %14 = icmp ne i8* %13, null, !dbg !739
  br i1 %14, label %15, label %16, !dbg !735

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !740

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !743
  br label %107, !dbg !746

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !747

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !749, !llvm.loop !750

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !751
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !755
  br i1 %21, label %22, label %23, !dbg !751

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !756

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_whois, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)), !dbg !759
  br label %107, !dbg !762

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !763

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !765
  %27 = call i8* (i8*, i32, ...) @event_get_params(i8* %26, i32 6, i8* null, i8** %6, i8** %7, i8** %8, i8* null, i8** %9), !dbg !766
  store i8* %27, i8** %5, align 8, !dbg !767
  %28 = load i8*, i8** %6, align 8, !dbg !768
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !769
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 3, !dbg !770
  %31 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %30, align 8, !dbg !770
  %32 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %31, i32 0, i32 12, !dbg !771
  %33 = load i8*, i8** %32, align 8, !dbg !771
  %34 = call %struct.NOTIFYLIST_REC* @notifylist_find(i8* %28, i8* %33), !dbg !772
  store %struct.NOTIFYLIST_REC* %34, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !773
  %35 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !774
  %36 = icmp ne %struct.NOTIFYLIST_REC* %35, null, !dbg !776
  br i1 %36, label %37, label %52, !dbg !777

; <label>:37:                                     ; preds = %25
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !778
  %39 = bitcast %struct._IRC_SERVER_REC* %38 to i8*, !dbg !778
  %40 = call i8* @module_check_cast(i8* %39, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !780
  %41 = bitcast i8* %40 to %struct._SERVER_REC*, !dbg !781
  %42 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %11, align 8, !dbg !782
  %43 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %42, i32 0, i32 0, !dbg !783
  %44 = load i8*, i8** %43, align 8, !dbg !783
  %45 = load i8*, i8** %6, align 8, !dbg !784
  %46 = load i8*, i8** %7, align 8, !dbg !778
  %47 = load i8*, i8** %8, align 8, !dbg !785
  %48 = call i32 @mask_match(%struct._SERVER_REC* %41, i8* %44, i8* %45, i8* %46, i8* %47), !dbg !786
  %49 = icmp ne i32 %48, 0, !dbg !788
  br i1 %49, label %52, label %50, !dbg !789

; <label>:50:                                     ; preds = %37
  %51 = load i8*, i8** %5, align 8, !dbg !790
  call void @g_free(i8* %51), !dbg !792
  br label %107, !dbg !793

; <label>:52:                                     ; preds = %37, %25
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !794
  %54 = load i8*, i8** %6, align 8, !dbg !795
  %55 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %53, i8* %54), !dbg !796
  store %struct.NOTIFY_NICK_REC* %55, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !797
  %56 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !798
  %57 = icmp ne %struct.NOTIFY_NICK_REC* %56, null, !dbg !800
  br i1 %57, label %58, label %105, !dbg !801

; <label>:58:                                     ; preds = %52
  %59 = load i8*, i8** @last_notify_nick, align 8, !dbg !802
  call void @g_free(i8* %59), !dbg !804
  %60 = load i8*, i8** %6, align 8, !dbg !805
  %61 = call noalias i8* @g_strdup(i8* %60), !dbg !806
  store i8* %61, i8** @last_notify_nick, align 8, !dbg !807
  %62 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !808
  %63 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %62, i32 0, i32 1, !dbg !809
  %64 = load i8*, i8** %63, align 8, !dbg !809
  call void @g_free(i8* %64), !dbg !810
  %65 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !811
  %66 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %65, i32 0, i32 2, !dbg !812
  %67 = load i8*, i8** %66, align 8, !dbg !812
  call void @g_free(i8* %67), !dbg !813
  %68 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !814
  %69 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %68, i32 0, i32 3, !dbg !815
  %70 = load i8*, i8** %69, align 8, !dbg !815
  call void @g_free(i8* %70), !dbg !816
  br label %71, !dbg !817, !llvm.loop !818

; <label>:71:                                     ; preds = %58
  %72 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !819
  %73 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %72, i32 0, i32 4, !dbg !823
  %74 = load i8*, i8** %73, align 8, !dbg !823
  %75 = icmp ne i8* %74, null, !dbg !819
  br i1 %75, label %76, label %82, !dbg !819

; <label>:76:                                     ; preds = %71
  %77 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !824
  %78 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %77, i32 0, i32 4, !dbg !827
  %79 = load i8*, i8** %78, align 8, !dbg !827
  call void @g_free(i8* %79), !dbg !828
  %80 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !829
  %81 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %80, i32 0, i32 4, !dbg !830
  store i8* null, i8** %81, align 8, !dbg !831
  br label %82, !dbg !832

; <label>:82:                                     ; preds = %76, %71
  br label %83, !dbg !833

; <label>:83:                                     ; preds = %82
  %84 = load i8*, i8** %7, align 8, !dbg !835
  %85 = call noalias i8* @g_strdup(i8* %84), !dbg !836
  %86 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !837
  %87 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %86, i32 0, i32 1, !dbg !838
  store i8* %85, i8** %87, align 8, !dbg !839
  %88 = load i8*, i8** %8, align 8, !dbg !840
  %89 = call noalias i8* @g_strdup(i8* %88), !dbg !841
  %90 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !842
  %91 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %90, i32 0, i32 2, !dbg !843
  store i8* %89, i8** %91, align 8, !dbg !844
  %92 = load i8*, i8** %9, align 8, !dbg !845
  %93 = call noalias i8* @g_strdup(i8* %92), !dbg !846
  %94 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !847
  %95 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %94, i32 0, i32 3, !dbg !848
  store i8* %93, i8** %95, align 8, !dbg !849
  %96 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !850
  %97 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %96, i32 0, i32 5, !dbg !851
  %98 = load i8, i8* %97, align 8, !dbg !852
  %99 = and i8 %98, -5, !dbg !852
  store i8 %99, i8* %97, align 8, !dbg !852
  %100 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %10, align 8, !dbg !853
  %101 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %100, i32 0, i32 5, !dbg !854
  %102 = load i8, i8* %101, align 8, !dbg !855
  %103 = and i8 %102, -2, !dbg !855
  %104 = or i8 %103, 1, !dbg !855
  store i8 %104, i8* %101, align 8, !dbg !855
  br label %105, !dbg !856

; <label>:105:                                    ; preds = %83, %52
  %106 = load i8*, i8** %5, align 8, !dbg !857
  call void @g_free(i8* %106), !dbg !858
  br label %107, !dbg !859

; <label>:107:                                    ; preds = %105, %50, %23, %16
  ret void, !dbg !860
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_away(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !862 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !863, metadata !692), !dbg !864
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !865, metadata !692), !dbg !866
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %5, metadata !867, metadata !692), !dbg !868
  call void @llvm.dbg.declare(metadata i8** %6, metadata !869, metadata !692), !dbg !870
  call void @llvm.dbg.declare(metadata i8** %7, metadata !871, metadata !692), !dbg !872
  call void @llvm.dbg.declare(metadata i8** %8, metadata !873, metadata !692), !dbg !874
  br label %9, !dbg !875, !llvm.loop !876

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !877
  %11 = icmp ne i8* %10, null, !dbg !881
  br i1 %11, label %12, label %13, !dbg !877

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !882

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !885
  br label %35, !dbg !888

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !889

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !891
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %7, i8** %8), !dbg !892
  store i8* %17, i8** %6, align 8, !dbg !893
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !894
  %19 = load i8*, i8** %7, align 8, !dbg !895
  %20 = call %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC* %18, i8* %19), !dbg !896
  store %struct.NOTIFY_NICK_REC* %20, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !897
  %21 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !898
  %22 = icmp ne %struct.NOTIFY_NICK_REC* %21, null, !dbg !900
  br i1 %22, label %23, label %33, !dbg !901

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %8, align 8, !dbg !902
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !904
  %26 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !905
  %27 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %26, i32 0, i32 4, !dbg !906
  store i8* %25, i8** %27, align 8, !dbg !907
  %28 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %5, align 8, !dbg !908
  %29 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %28, i32 0, i32 5, !dbg !909
  %30 = load i8, i8* %29, align 8, !dbg !910
  %31 = and i8 %30, -5, !dbg !910
  %32 = or i8 %31, 4, !dbg !910
  store i8 %32, i8* %29, align 8, !dbg !910
  br label %33, !dbg !911

; <label>:33:                                     ; preds = %23, %15
  %34 = load i8*, i8** %6, align 8, !dbg !912
  call void @g_free(i8* %34), !dbg !913
  br label %35, !dbg !914

; <label>:35:                                     ; preds = %33, %13
  ret void, !dbg !915
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_end(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !917 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.MODULE_SERVER_REC*, align 8
  %6 = alloca %struct.NOTIFYLIST_REC*, align 8
  %7 = alloca %struct.NOTIFY_NICK_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !918, metadata !692), !dbg !919
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !920, metadata !692), !dbg !921
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %5, metadata !922, metadata !692), !dbg !930
  call void @llvm.dbg.declare(metadata %struct.NOTIFYLIST_REC** %6, metadata !931, metadata !692), !dbg !932
  call void @llvm.dbg.declare(metadata %struct.NOTIFY_NICK_REC** %7, metadata !933, metadata !692), !dbg !934
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !935, metadata !692), !dbg !936
  call void @llvm.dbg.declare(metadata i8** %9, metadata !937, metadata !692), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %10, metadata !939, metadata !692), !dbg !940
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !941
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 15, !dbg !942
  %13 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !942
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !943
  %15 = bitcast i8* %14 to %struct.MODULE_SERVER_REC*, !dbg !943
  store %struct.MODULE_SERVER_REC* %15, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !944
  %16 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %5, align 8, !dbg !945
  %17 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %16, i32 0, i32 1, !dbg !947
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !947
  store %struct._GSList* %18, %struct._GSList** %8, align 8, !dbg !948
  br label %19, !dbg !949

; <label>:19:                                     ; preds = %161, %2
  %20 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !950
  %21 = icmp ne %struct._GSList* %20, null, !dbg !953
  br i1 %21, label %22, label %165, !dbg !954

; <label>:22:                                     ; preds = %19
  %23 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !955
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !957
  %25 = load i8*, i8** %24, align 8, !dbg !957
  %26 = bitcast i8* %25 to %struct.NOTIFY_NICK_REC*, !dbg !955
  store %struct.NOTIFY_NICK_REC* %26, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !958
  %27 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !959
  %28 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %27, i32 0, i32 3, !dbg !961
  %29 = load i8*, i8** %28, align 8, !dbg !961
  %30 = icmp eq i8* %29, null, !dbg !962
  br i1 %30, label %31, label %32, !dbg !963

; <label>:31:                                     ; preds = %22
  br label %161, !dbg !964

; <label>:32:                                     ; preds = %22
  %33 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !965
  %34 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %33, i32 0, i32 0, !dbg !966
  %35 = load i8*, i8** %34, align 8, !dbg !966
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !967
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 3, !dbg !968
  %38 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %37, align 8, !dbg !968
  %39 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %38, i32 0, i32 12, !dbg !969
  %40 = load i8*, i8** %39, align 8, !dbg !969
  %41 = call %struct.NOTIFYLIST_REC* @notifylist_find(i8* %35, i8* %40), !dbg !970
  store %struct.NOTIFYLIST_REC* %41, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !971
  %42 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !972
  %43 = icmp eq %struct.NOTIFYLIST_REC* %42, null, !dbg !974
  br i1 %43, label %44, label %45, !dbg !975

; <label>:44:                                     ; preds = %32
  br label %161, !dbg !976

; <label>:45:                                     ; preds = %32
  %46 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !978
  %47 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %46, i32 0, i32 2, !dbg !979
  %48 = load i8, i8* %47, align 8, !dbg !979
  %49 = and i8 %48, 1, !dbg !979
  %50 = zext i8 %49 to i32, !dbg !979
  %51 = icmp ne i32 %50, 0, !dbg !978
  br i1 %51, label %52, label %61, !dbg !980

; <label>:52:                                     ; preds = %45
  %53 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !981
  %54 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %53, i32 0, i32 5, !dbg !983
  %55 = load i8, i8* %54, align 8, !dbg !983
  %56 = lshr i8 %55, 2, !dbg !983
  %57 = and i8 %56, 1, !dbg !983
  %58 = zext i8 %57 to i32, !dbg !983
  %59 = icmp ne i32 %58, 0, !dbg !984
  %60 = xor i1 %59, true, !dbg !984
  br label %61, !dbg !985

; <label>:61:                                     ; preds = %52, %45
  %62 = phi i1 [ true, %45 ], [ %60, %52 ]
  %63 = zext i1 %62 to i32, !dbg !986
  store i32 %63, i32* %10, align 4, !dbg !988
  store i8* null, i8** %9, align 8, !dbg !989
  %64 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !990
  %65 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %64, i32 0, i32 5, !dbg !992
  %66 = load i8, i8* %65, align 8, !dbg !992
  %67 = lshr i8 %66, 3, !dbg !992
  %68 = and i8 %67, 1, !dbg !992
  %69 = zext i8 %68 to i32, !dbg !992
  %70 = icmp ne i32 %69, 0, !dbg !990
  br i1 %70, label %81, label %71, !dbg !993

; <label>:71:                                     ; preds = %61
  %72 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !994
  %73 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %72, i32 0, i32 5, !dbg !996
  %74 = load i8, i8* %73, align 8, !dbg !997
  %75 = and i8 %74, -9, !dbg !997
  %76 = or i8 %75, 8, !dbg !997
  store i8 %76, i8* %73, align 8, !dbg !997
  %77 = load i32, i32* %10, align 4, !dbg !998
  %78 = icmp ne i32 %77, 0, !dbg !998
  br i1 %78, label %79, label %80, !dbg !1000

; <label>:79:                                     ; preds = %71
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8** %9, align 8, !dbg !1001
  br label %80, !dbg !1003

; <label>:80:                                     ; preds = %79, %71
  br label %104, !dbg !1004

; <label>:81:                                     ; preds = %61
  %82 = load %struct.NOTIFYLIST_REC*, %struct.NOTIFYLIST_REC** %6, align 8, !dbg !1005
  %83 = getelementptr inbounds %struct.NOTIFYLIST_REC, %struct.NOTIFYLIST_REC* %82, i32 0, i32 2, !dbg !1008
  %84 = load i8, i8* %83, align 8, !dbg !1008
  %85 = and i8 %84, 1, !dbg !1008
  %86 = zext i8 %85 to i32, !dbg !1008
  %87 = icmp ne i32 %86, 0, !dbg !1005
  br i1 %87, label %88, label %103, !dbg !1009

; <label>:88:                                     ; preds = %81
  %89 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1010
  %90 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %89, i32 0, i32 5, !dbg !1012
  %91 = load i8, i8* %90, align 8, !dbg !1012
  %92 = lshr i8 %91, 1, !dbg !1012
  %93 = and i8 %92, 1, !dbg !1012
  %94 = zext i8 %93 to i32, !dbg !1012
  %95 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1013
  %96 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %95, i32 0, i32 5, !dbg !1014
  %97 = load i8, i8* %96, align 8, !dbg !1014
  %98 = lshr i8 %97, 2, !dbg !1014
  %99 = and i8 %98, 1, !dbg !1014
  %100 = zext i8 %99 to i32, !dbg !1014
  %101 = icmp eq i32 %94, %100, !dbg !1015
  br i1 %101, label %102, label %103, !dbg !1016

; <label>:102:                                    ; preds = %88
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8** %9, align 8, !dbg !1017
  br label %103, !dbg !1018

; <label>:103:                                    ; preds = %102, %88, %81
  br label %104

; <label>:104:                                    ; preds = %103, %80
  %105 = load i8*, i8** %9, align 8, !dbg !1019
  %106 = icmp ne i8* %105, null, !dbg !1021
  br i1 %106, label %107, label %150, !dbg !1022

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %9, align 8, !dbg !1023
  %109 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1025
  %110 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1026
  %111 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %110, i32 0, i32 0, !dbg !1027
  %112 = load i8*, i8** %111, align 8, !dbg !1027
  %113 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1028
  %114 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %113, i32 0, i32 1, !dbg !1029
  %115 = load i8*, i8** %114, align 8, !dbg !1029
  %116 = icmp ne i8* %115, null, !dbg !1030
  br i1 %116, label %117, label %121, !dbg !1028

; <label>:117:                                    ; preds = %107
  %118 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1031
  %119 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %118, i32 0, i32 1, !dbg !1033
  %120 = load i8*, i8** %119, align 8, !dbg !1033
  br label %122, !dbg !1034

; <label>:121:                                    ; preds = %107
  br label %122, !dbg !1035

; <label>:122:                                    ; preds = %121, %117
  %123 = phi i8* [ %120, %117 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %121 ], !dbg !1037
  %124 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1039
  %125 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %124, i32 0, i32 2, !dbg !1040
  %126 = load i8*, i8** %125, align 8, !dbg !1040
  %127 = icmp ne i8* %126, null, !dbg !1041
  br i1 %127, label %128, label %132, !dbg !1039

; <label>:128:                                    ; preds = %122
  %129 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1042
  %130 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %129, i32 0, i32 2, !dbg !1043
  %131 = load i8*, i8** %130, align 8, !dbg !1043
  br label %133, !dbg !1044

; <label>:132:                                    ; preds = %122
  br label %133, !dbg !1045

; <label>:133:                                    ; preds = %132, %128
  %134 = phi i8* [ %131, %128 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %132 ], !dbg !1046
  %135 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1047
  %136 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %135, i32 0, i32 3, !dbg !1048
  %137 = load i8*, i8** %136, align 8, !dbg !1048
  %138 = icmp ne i8* %137, null, !dbg !1049
  br i1 %138, label %139, label %143, !dbg !1047

; <label>:139:                                    ; preds = %133
  %140 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1050
  %141 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %140, i32 0, i32 3, !dbg !1051
  %142 = load i8*, i8** %141, align 8, !dbg !1051
  br label %144, !dbg !1052

; <label>:143:                                    ; preds = %133
  br label %144, !dbg !1053

; <label>:144:                                    ; preds = %143, %139
  %145 = phi i8* [ %142, %139 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %143 ], !dbg !1054
  %146 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1055
  %147 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %146, i32 0, i32 4, !dbg !1056
  %148 = load i8*, i8** %147, align 8, !dbg !1056
  %149 = call i32 (i8*, i32, ...) @signal_emit(i8* %108, i32 6, %struct._IRC_SERVER_REC* %109, i8* %112, i8* %123, i8* %134, i8* %145, i8* %148), !dbg !1057
  br label %150, !dbg !1058

; <label>:150:                                    ; preds = %144, %104
  %151 = load i32, i32* %10, align 4, !dbg !1059
  %152 = load %struct.NOTIFY_NICK_REC*, %struct.NOTIFY_NICK_REC** %7, align 8, !dbg !1060
  %153 = getelementptr inbounds %struct.NOTIFY_NICK_REC, %struct.NOTIFY_NICK_REC* %152, i32 0, i32 5, !dbg !1061
  %154 = trunc i32 %151 to i8, !dbg !1062
  %155 = load i8, i8* %153, align 8, !dbg !1062
  %156 = and i8 %154, 1, !dbg !1062
  %157 = shl i8 %156, 1, !dbg !1062
  %158 = and i8 %155, -3, !dbg !1062
  %159 = or i8 %158, %157, !dbg !1062
  store i8 %159, i8* %153, align 8, !dbg !1062
  %160 = zext i8 %156 to i32, !dbg !1062
  br label %161, !dbg !1063

; <label>:161:                                    ; preds = %150, %44, %31
  %162 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1064
  %163 = getelementptr inbounds %struct._GSList, %struct._GSList* %162, i32 0, i32 1, !dbg !1066
  %164 = load %struct._GSList*, %struct._GSList** %163, align 8, !dbg !1066
  store %struct._GSList* %164, %struct._GSList** %8, align 8, !dbg !1067
  br label %19, !dbg !1068, !llvm.loop !1069

; <label>:165:                                    ; preds = %19
  ret void, !dbg !1071
}

declare void @expando_create(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastnotify(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !1072 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1076, metadata !692), !dbg !1077
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1078, metadata !692), !dbg !1079
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1080, metadata !692), !dbg !1081
  %7 = load i8*, i8** @last_notify_nick, align 8, !dbg !1082
  ret i8* %7, !dbg !1083
}

; Function Attrs: nounwind uwtable
define void @notifylist_whois_deinit() #0 !dbg !1084 {
  %1 = load i8*, i8** @last_notify_nick, align 8, !dbg !1085
  call void @g_free(i8* %1), !dbg !1086
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1087
  call void @signal_remove_full(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1088
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1089
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastnotify), !dbg !1090
  ret void, !dbg !1091
}

declare void @g_free(i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @expando_destroy(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare %struct.NOTIFYLIST_REC* @notifylist_find(i8*, i8*) #1

declare i32 @mask_match(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare %struct.NOTIFY_NICK_REC* @notify_nick_find(%struct._IRC_SERVER_REC*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!469, !470}
!llvm.ident = !{!471}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43, globals: !466)
!1 = !DIFile(filename: "line198-notify-whois.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !11, !18, !23, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 7, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/expandos.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "EXPANDO_ARG_NONE", value: 1)
!7 = !DIEnumerator(name: "EXPANDO_ARG_SERVER", value: 2)
!8 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW", value: 3)
!9 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW_ITEM", value: 4)
!10 = !DIEnumerator(name: "EXPANDO_NEVER", value: 5)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 69, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!15 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!16 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!17 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 77, size: 32, align: 32, elements: !19)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!21 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!22 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 31, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "G_IO_IN", value: 1)
!27 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!28 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!29 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!30 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!31 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 84, size: 32, align: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!35 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!36 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!37 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!38 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!39 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!40 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!41 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!42 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!43 = !{!44, !51, !52, !56, !58}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !45, line: 9, baseType: !46)
!45 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49, !49, !49, !49, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !60, line: 107, baseType: !61)
!60 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !62, line: 30, size: 2240, align: 64, elements: !63)
!62 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !{!64, !67, !68, !69, !299, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !317, !321, !322, !323, !327, !332, !333, !334, !335, !336, !337, !338, !339, !346, !347, !348, !349, !350, !354, !358, !362, !366, !370, !375, !454, !461, !465}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !65, line: 3, baseType: !66, size: 32, align: 32)
!65 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!66 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !61, file: !65, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !61, file: !65, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !61, file: !65, line: 8, baseType: !70, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !60, line: 113, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !62, line: 25, size: 1920, align: 64, elements: !73)
!73 = !{!74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !75, line: 3, baseType: !66, size: 32, align: 32)
!75 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !75, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !72, file: !75, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !72, file: !75, line: 9, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !72, file: !75, line: 10, baseType: !66, size: 32, align: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !72, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !72, file: !75, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !72, file: !75, line: 14, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !72, file: !75, line: 15, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !72, file: !75, line: 16, baseType: !66, size: 32, align: 32, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !72, file: !75, line: 17, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !72, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !60, line: 99, baseType: !93)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !60, line: 99, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !72, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !72, file: !75, line: 21, baseType: !79, size: 64, align: 64, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !72, file: !75, line: 22, baseType: !79, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !72, file: !75, line: 23, baseType: !79, size: 64, align: 64, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !72, file: !75, line: 24, baseType: !79, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !72, file: !75, line: 26, baseType: !79, size: 64, align: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !72, file: !75, line: 27, baseType: !79, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !72, file: !75, line: 28, baseType: !79, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !72, file: !75, line: 29, baseType: !79, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !72, file: !75, line: 30, baseType: !79, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !72, file: !75, line: 31, baseType: !79, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !72, file: !75, line: 32, baseType: !79, size: 64, align: 64, offset: 1536)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !72, file: !75, line: 33, baseType: !79, size: 64, align: 64, offset: 1600)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !72, file: !75, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !12, line: 41, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !12, line: 97, size: 896, align: 64, elements: !111)
!111 = !{!112, !114, !256, !257, !262, !263, !264, !265, !266, !275, !276, !277, !281, !282, !283, !284, !285, !286, !287, !288}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !110, file: !12, line: 100, baseType: !113, size: 32, align: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !54, line: 49, baseType: !66)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !110, file: !12, line: 101, baseType: !115, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !12, line: 42, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !12, line: 131, size: 512, align: 64, elements: !118)
!118 = !{!119, !141, !147, !154, !158, !243, !247, !252}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !117, file: !12, line: 133, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !108, !52, !124, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !12, line: 75, baseType: !11)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !125, line: 66, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !131, line: 42, baseType: !132)
!131 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !131, line: 44, size: 128, align: 64, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !132, file: !131, line: 46, baseType: !135, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !136, line: 36, baseType: !137)
!136 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !125, line: 45, baseType: !138)
!138 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !132, file: !131, line: 47, baseType: !113, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !132, file: !131, line: 48, baseType: !52, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !117, file: !12, line: 138, baseType: !142, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!123, !108, !145, !124, !127, !128}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !117, file: !12, line: 143, baseType: !148, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!123, !108, !151, !153, !128}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !125, line: 51, baseType: !152)
!152 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !12, line: 82, baseType: !18)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !117, file: !12, line: 147, baseType: !155, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!123, !108, !128}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !117, file: !12, line: 149, baseType: !159, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !108, !242}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !24, line: 64, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !24, line: 171, size: 768, align: 64, elements: !165)
!165 = !{!166, !168, !189, !218, !220, !224, !225, !226, !227, !235, !236, !237, !238}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !164, file: !24, line: 174, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !54, line: 77, baseType: !51)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !164, file: !24, line: 175, baseType: !169, size: 64, align: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !24, line: 77, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !24, line: 196, size: 192, align: 64, elements: !172)
!172 = !{!173, !177, !178}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !171, file: !24, line: 198, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !167}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !171, file: !24, line: 199, baseType: !174, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !171, file: !24, line: 200, baseType: !179, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !167, !162, !182, !188}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !24, line: 155, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !167}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !54, line: 50, baseType: !113)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !164, file: !24, line: 177, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !24, line: 130, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !24, line: 214, size: 384, align: 64, elements: !194)
!194 = !{!195, !200, !204, !208, !212, !213}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !193, file: !24, line: 216, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!187, !162, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !193, file: !24, line: 218, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!187, !162}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !193, file: !24, line: 219, baseType: !205, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!187, !162, !183, !167}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !193, file: !24, line: 222, baseType: !209, size: 64, align: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !162}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !193, file: !24, line: 226, baseType: !183, size: 64, align: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !193, file: !24, line: 227, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !24, line: 212, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !164, file: !24, line: 178, baseType: !219, size: 32, align: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !54, line: 55, baseType: !138)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !164, file: !24, line: 180, baseType: !221, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !24, line: 48, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !24, line: 48, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !164, file: !24, line: 182, baseType: !113, size: 32, align: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !24, line: 183, baseType: !219, size: 32, align: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !164, file: !24, line: 184, baseType: !219, size: 32, align: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !164, file: !24, line: 186, baseType: !228, size: 64, align: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !230, line: 37, baseType: !231)
!230 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !230, line: 39, size: 128, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !230, line: 41, baseType: !167, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !230, line: 42, baseType: !228, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !24, line: 188, baseType: !162, size: 64, align: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !24, line: 189, baseType: !162, size: 64, align: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !24, line: 191, baseType: !79, size: 64, align: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !164, file: !24, line: 193, baseType: !239, size: 64, align: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !24, line: 65, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !24, line: 65, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !24, line: 39, baseType: !23)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !117, file: !12, line: 151, baseType: !244, size: 64, align: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !108}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !117, file: !12, line: 152, baseType: !248, size: 64, align: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!123, !108, !251, !128}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !12, line: 95, baseType: !32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !117, file: !12, line: 155, baseType: !253, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!251, !108}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !110, file: !12, line: 103, baseType: !52, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !110, file: !12, line: 104, baseType: !258, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !259, line: 77, baseType: !260)
!259 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !259, line: 77, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !110, file: !12, line: 105, baseType: !258, size: 64, align: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !110, file: !12, line: 106, baseType: !52, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !110, file: !12, line: 107, baseType: !219, size: 32, align: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !110, file: !12, line: 109, baseType: !124, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !110, file: !12, line: 110, baseType: !267, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !269, line: 39, baseType: !270)
!269 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !269, line: 41, size: 192, align: 64, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !270, file: !269, line: 43, baseType: !52, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !270, file: !269, line: 44, baseType: !124, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !270, file: !269, line: 45, baseType: !124, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !110, file: !12, line: 111, baseType: !267, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !110, file: !12, line: 112, baseType: !267, size: 64, align: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !110, file: !12, line: 113, baseType: !278, size: 48, align: 8, offset: 704)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, align: 8, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 6)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !110, file: !12, line: 117, baseType: !219, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !110, file: !12, line: 118, baseType: !219, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !110, file: !12, line: 119, baseType: !219, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !110, file: !12, line: 120, baseType: !219, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !110, file: !12, line: 121, baseType: !219, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !110, file: !12, line: 122, baseType: !219, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !110, file: !12, line: 124, baseType: !167, size: 64, align: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !110, file: !12, line: 125, baseType: !167, size: 64, align: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !72, file: !75, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !72, file: !75, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !72, file: !75, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !72, file: !75, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !72, file: !75, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !72, file: !75, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !72, file: !75, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !72, file: !75, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !72, file: !75, line: 46, baseType: !79, size: 64, align: 64, offset: 1792)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !72, file: !75, line: 47, baseType: !79, size: 64, align: 64, offset: 1856)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !61, file: !65, line: 9, baseType: !300, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !301, line: 75, baseType: !302)
!301 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !303, line: 139, baseType: !152)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !61, file: !65, line: 10, baseType: !300, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !61, file: !65, line: 12, baseType: !79, size: 64, align: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !61, file: !65, line: 13, baseType: !79, size: 64, align: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !61, file: !65, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !61, file: !65, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !61, file: !65, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !61, file: !65, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !61, file: !65, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !61, file: !65, line: 21, baseType: !313, size: 64, align: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !60, line: 102, baseType: !315)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !60, line: 102, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !61, file: !65, line: 22, baseType: !66, size: 32, align: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !61, file: !65, line: 25, baseType: !318, size: 128, align: 64, offset: 640)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 64, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 2)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !61, file: !65, line: 26, baseType: !66, size: 32, align: 32, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !61, file: !65, line: 27, baseType: !66, size: 32, align: 32, offset: 800)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !61, file: !65, line: 29, baseType: !324, size: 64, align: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !60, line: 103, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !60, line: 103, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !61, file: !65, line: 30, baseType: !328, size: 64, align: 64, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !330, line: 37, baseType: !331)
!330 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !330, line: 37, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !61, file: !65, line: 32, baseType: !79, size: 64, align: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !61, file: !65, line: 33, baseType: !79, size: 64, align: 64, offset: 1024)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !61, file: !65, line: 34, baseType: !79, size: 64, align: 64, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !61, file: !65, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !61, file: !65, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !61, file: !65, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !61, file: !65, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !61, file: !65, line: 40, baseType: !340, size: 128, align: 64, offset: 1216)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !54, line: 504, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !54, line: 506, size: 128, align: 64, elements: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !341, file: !54, line: 508, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !54, line: 48, baseType: !152)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !341, file: !54, line: 509, baseType: !344, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !61, file: !65, line: 41, baseType: !300, size: 64, align: 64, offset: 1344)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !61, file: !65, line: 42, baseType: !66, size: 32, align: 32, offset: 1408)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !61, file: !65, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !61, file: !65, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !61, file: !65, line: 53, baseType: !351, size: 64, align: 64, offset: 1600)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !58, !56, !66}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !61, file: !65, line: 55, baseType: !355, size: 64, align: 64, offset: 1664)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!66, !58, !55}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !61, file: !65, line: 57, baseType: !359, size: 64, align: 64, offset: 1728)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!66, !58, !56}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !61, file: !65, line: 60, baseType: !363, size: 64, align: 64, offset: 1792)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!56, !58}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !61, file: !65, line: 62, baseType: !367, size: 64, align: 64, offset: 1856)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !58, !56, !56, !66}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !61, file: !65, line: 65, baseType: !371, size: 64, align: 64, offset: 1920)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !58, !56, !56}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !61, file: !65, line: 69, baseType: !376, size: 64, align: 64, offset: 1984)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !58, !56}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !60, line: 109, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !382, line: 15, size: 1408, align: 64, elements: !383)
!382 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !{!384, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !402, !406, !408, !409, !410, !411, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !385, line: 3, baseType: !66, size: 32, align: 32)
!385 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !381, file: !385, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !381, file: !385, line: 5, baseType: !328, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !381, file: !385, line: 7, baseType: !51, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !381, file: !385, line: 8, baseType: !58, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !381, file: !385, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !385, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !381, file: !385, line: 11, baseType: !300, size: 64, align: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !381, file: !385, line: 12, baseType: !66, size: 32, align: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !381, file: !385, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !381, file: !385, line: 15, baseType: !396, size: 64, align: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !60, line: 108, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !60, line: 108, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !381, file: !385, line: 17, baseType: !403, size: 64, align: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!56, !399}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !381, file: !407, line: 5, baseType: !79, size: 64, align: 64, offset: 704)
!407 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !381, file: !407, line: 6, baseType: !79, size: 64, align: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !381, file: !407, line: 7, baseType: !300, size: 64, align: 64, offset: 832)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !381, file: !407, line: 9, baseType: !328, size: 64, align: 64, offset: 896)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !381, file: !407, line: 10, baseType: !412, size: 64, align: 64, offset: 960)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !60, line: 111, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !415, line: 13, size: 576, align: 64, elements: !416)
!415 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !{!417, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !435, !436}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !418, line: 3, baseType: !66, size: 32, align: 32)
!418 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !414, file: !418, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !414, file: !418, line: 6, baseType: !300, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !414, file: !418, line: 8, baseType: !79, size: 64, align: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !414, file: !418, line: 9, baseType: !79, size: 64, align: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !414, file: !418, line: 10, baseType: !79, size: 64, align: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !414, file: !418, line: 11, baseType: !66, size: 32, align: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !414, file: !418, line: 14, baseType: !138, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !414, file: !418, line: 15, baseType: !138, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !414, file: !418, line: 18, baseType: !138, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !414, file: !418, line: 19, baseType: !138, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !414, file: !418, line: 20, baseType: !138, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !414, file: !418, line: 21, baseType: !138, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !414, file: !418, line: 22, baseType: !432, size: 64, align: 8, offset: 360)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 8, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 8)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !414, file: !418, line: 26, baseType: !51, size: 64, align: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !418, line: 28, baseType: !412, size: 64, align: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !381, file: !407, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !381, file: !407, line: 13, baseType: !79, size: 64, align: 64, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !381, file: !407, line: 14, baseType: !66, size: 32, align: 32, offset: 1152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !381, file: !407, line: 15, baseType: !79, size: 64, align: 64, offset: 1216)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !381, file: !407, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !381, file: !407, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !381, file: !407, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !381, file: !407, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !381, file: !407, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !381, file: !407, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !381, file: !407, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !381, file: !407, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !381, file: !407, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !381, file: !407, line: 31, baseType: !451, size: 64, align: 64, offset: 1344)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!79, !379}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !61, file: !65, line: 70, baseType: !455, size: 64, align: 64, offset: 2048)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!458, !58, !56}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !60, line: 110, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !60, line: 110, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !61, file: !65, line: 71, baseType: !462, size: 64, align: 64, offset: 2112)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!66, !56, !56}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !61, file: !65, line: 73, baseType: !462, size: 64, align: 64, offset: 2176)
!466 = !{!467}
!467 = distinct !DIGlobalVariable(name: "last_notify_nick", scope: !0, file: !468, line: 31, type: !79, isLocal: true, isDefinition: true, variable: i8** @last_notify_nick)
!468 = !DIFile(filename: "notify-whois.c", directory: "/home/lichi/Desktop/irssi/task1")
!469 = !{i32 2, !"Dwarf Version", i32 4}
!470 = !{i32 2, !"Debug Info Version", i32 3}
!471 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!472 = distinct !DISubprogram(name: "notifylist_whois_init", scope: !468, file: !468, line: 134, type: !216, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!473 = !{}
!474 = !DILocation(line: 136, column: 19, scope: !472)
!475 = !DILocation(line: 138, column: 2, scope: !472)
!476 = !DILocation(line: 139, column: 2, scope: !472)
!477 = !DILocation(line: 140, column: 2, scope: !472)
!478 = !DILocation(line: 141, column: 2, scope: !472)
!479 = !DILocation(line: 143, column: 1, scope: !472)
!480 = distinct !DISubprogram(name: "event_whois", scope: !468, file: !468, line: 33, type: !481, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !483, !56}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !485, line: 6, baseType: !486)
!485 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !487, line: 42, size: 39168, align: 64, elements: !488)
!487 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!488 = !{!489, !490, !491, !492, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !688, !690}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !65, line: 3, baseType: !66, size: 32, align: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !486, file: !65, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !486, file: !65, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !486, file: !65, line: 8, baseType: !493, size: 64, align: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !485, line: 5, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !487, line: 24, size: 2496, align: 64, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !75, line: 3, baseType: !66, size: 32, align: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !495, file: !75, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !495, file: !75, line: 6, baseType: !66, size: 32, align: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !495, file: !75, line: 9, baseType: !79, size: 64, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !495, file: !75, line: 10, baseType: !66, size: 32, align: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !495, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !495, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !495, file: !75, line: 11, baseType: !79, size: 64, align: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !495, file: !75, line: 13, baseType: !85, size: 16, align: 16, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !495, file: !75, line: 14, baseType: !79, size: 64, align: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !75, line: 15, baseType: !79, size: 64, align: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !495, file: !75, line: 16, baseType: !66, size: 32, align: 32, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !495, file: !75, line: 17, baseType: !79, size: 64, align: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !495, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !495, file: !75, line: 19, baseType: !91, size: 64, align: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !495, file: !75, line: 21, baseType: !79, size: 64, align: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !495, file: !75, line: 22, baseType: !79, size: 64, align: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !495, file: !75, line: 23, baseType: !79, size: 64, align: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !495, file: !75, line: 24, baseType: !79, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !495, file: !75, line: 26, baseType: !79, size: 64, align: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !495, file: !75, line: 27, baseType: !79, size: 64, align: 64, offset: 1216)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !495, file: !75, line: 28, baseType: !79, size: 64, align: 64, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !495, file: !75, line: 29, baseType: !79, size: 64, align: 64, offset: 1344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !495, file: !75, line: 30, baseType: !79, size: 64, align: 64, offset: 1408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !495, file: !75, line: 31, baseType: !79, size: 64, align: 64, offset: 1472)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !495, file: !75, line: 32, baseType: !79, size: 64, align: 64, offset: 1536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !495, file: !75, line: 33, baseType: !79, size: 64, align: 64, offset: 1600)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !495, file: !75, line: 35, baseType: !108, size: 64, align: 64, offset: 1664)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !495, file: !75, line: 38, baseType: !138, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !495, file: !75, line: 39, baseType: !138, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !495, file: !75, line: 40, baseType: !138, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !495, file: !75, line: 41, baseType: !138, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !495, file: !75, line: 42, baseType: !138, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !495, file: !75, line: 43, baseType: !138, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !495, file: !75, line: 44, baseType: !138, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !495, file: !75, line: 45, baseType: !138, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !495, file: !75, line: 46, baseType: !79, size: 64, align: 64, offset: 1792)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !495, file: !75, line: 47, baseType: !79, size: 64, align: 64, offset: 1856)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !495, file: !487, line: 27, baseType: !79, size: 64, align: 64, offset: 1920)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !495, file: !487, line: 28, baseType: !79, size: 64, align: 64, offset: 1984)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !495, file: !487, line: 30, baseType: !66, size: 32, align: 32, offset: 2048)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !495, file: !487, line: 31, baseType: !79, size: 64, align: 64, offset: 2112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !495, file: !487, line: 32, baseType: !79, size: 64, align: 64, offset: 2176)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !495, file: !487, line: 34, baseType: !66, size: 32, align: 32, offset: 2240)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !495, file: !487, line: 35, baseType: !66, size: 32, align: 32, offset: 2272)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !495, file: !487, line: 36, baseType: !66, size: 32, align: 32, offset: 2304)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !495, file: !487, line: 38, baseType: !66, size: 32, align: 32, offset: 2336)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !495, file: !487, line: 38, baseType: !66, size: 32, align: 32, offset: 2368)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !495, file: !487, line: 38, baseType: !66, size: 32, align: 32, offset: 2400)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !495, file: !487, line: 38, baseType: !66, size: 32, align: 32, offset: 2432)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !486, file: !65, line: 9, baseType: !300, size: 64, align: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !486, file: !65, line: 10, baseType: !300, size: 64, align: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !486, file: !65, line: 12, baseType: !79, size: 64, align: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !486, file: !65, line: 13, baseType: !79, size: 64, align: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !486, file: !65, line: 15, baseType: !138, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !486, file: !65, line: 16, baseType: !138, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !486, file: !65, line: 17, baseType: !138, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !486, file: !65, line: 18, baseType: !138, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !486, file: !65, line: 19, baseType: !138, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !486, file: !65, line: 21, baseType: !313, size: 64, align: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !486, file: !65, line: 22, baseType: !66, size: 32, align: 32, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !486, file: !65, line: 25, baseType: !318, size: 128, align: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !486, file: !65, line: 26, baseType: !66, size: 32, align: 32, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !486, file: !65, line: 27, baseType: !66, size: 32, align: 32, offset: 800)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !486, file: !65, line: 29, baseType: !324, size: 64, align: 64, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !486, file: !65, line: 30, baseType: !328, size: 64, align: 64, offset: 896)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !486, file: !65, line: 32, baseType: !79, size: 64, align: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !486, file: !65, line: 33, baseType: !79, size: 64, align: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !486, file: !65, line: 34, baseType: !79, size: 64, align: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !486, file: !65, line: 35, baseType: !138, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !486, file: !65, line: 36, baseType: !138, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !486, file: !65, line: 37, baseType: !138, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !486, file: !65, line: 38, baseType: !138, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !486, file: !65, line: 40, baseType: !340, size: 128, align: 64, offset: 1216)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !486, file: !65, line: 41, baseType: !300, size: 64, align: 64, offset: 1344)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !486, file: !65, line: 42, baseType: !66, size: 32, align: 32, offset: 1408)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !486, file: !65, line: 44, baseType: !228, size: 64, align: 64, offset: 1472)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !486, file: !65, line: 45, baseType: !228, size: 64, align: 64, offset: 1536)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !486, file: !65, line: 53, baseType: !351, size: 64, align: 64, offset: 1600)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !486, file: !65, line: 55, baseType: !355, size: 64, align: 64, offset: 1664)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !486, file: !65, line: 57, baseType: !359, size: 64, align: 64, offset: 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !486, file: !65, line: 60, baseType: !363, size: 64, align: 64, offset: 1792)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !486, file: !65, line: 62, baseType: !367, size: 64, align: 64, offset: 1856)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !486, file: !65, line: 65, baseType: !371, size: 64, align: 64, offset: 1920)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !486, file: !65, line: 69, baseType: !376, size: 64, align: 64, offset: 1984)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !486, file: !65, line: 70, baseType: !455, size: 64, align: 64, offset: 2048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !486, file: !65, line: 71, baseType: !462, size: 64, align: 64, offset: 2112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !486, file: !65, line: 73, baseType: !462, size: 64, align: 64, offset: 2176)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !486, file: !487, line: 46, baseType: !228, size: 64, align: 64, offset: 2240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !486, file: !487, line: 47, baseType: !228, size: 64, align: 64, offset: 2304)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !486, file: !487, line: 48, baseType: !588, size: 64, align: 64, offset: 2368)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !485, line: 8, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !485, line: 8, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !486, file: !487, line: 49, baseType: !228, size: 64, align: 64, offset: 2432)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !486, file: !487, line: 51, baseType: !79, size: 64, align: 64, offset: 2496)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !486, file: !487, line: 53, baseType: !79, size: 64, align: 64, offset: 2560)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !486, file: !487, line: 54, baseType: !79, size: 64, align: 64, offset: 2624)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !486, file: !487, line: 55, baseType: !79, size: 64, align: 64, offset: 2688)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !486, file: !487, line: 56, baseType: !79, size: 64, align: 64, offset: 2752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !486, file: !487, line: 57, baseType: !66, size: 32, align: 32, offset: 2816)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !486, file: !487, line: 59, baseType: !138, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !486, file: !487, line: 60, baseType: !138, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !486, file: !487, line: 62, baseType: !138, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !486, file: !487, line: 63, baseType: !138, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !486, file: !487, line: 64, baseType: !138, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !486, file: !487, line: 65, baseType: !138, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !486, file: !487, line: 66, baseType: !138, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !486, file: !487, line: 67, baseType: !138, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !486, file: !487, line: 68, baseType: !138, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !486, file: !487, line: 69, baseType: !138, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !486, file: !487, line: 70, baseType: !138, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !486, file: !487, line: 71, baseType: !138, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !486, file: !487, line: 72, baseType: !138, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !486, file: !487, line: 74, baseType: !66, size: 32, align: 32, offset: 2880)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !486, file: !487, line: 75, baseType: !66, size: 32, align: 32, offset: 2912)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !486, file: !487, line: 76, baseType: !66, size: 32, align: 32, offset: 2944)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !486, file: !487, line: 77, baseType: !66, size: 32, align: 32, offset: 2976)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !486, file: !487, line: 79, baseType: !328, size: 64, align: 64, offset: 3008)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !486, file: !487, line: 80, baseType: !228, size: 64, align: 64, offset: 3072)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !486, file: !487, line: 81, baseType: !228, size: 64, align: 64, offset: 3136)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !486, file: !487, line: 83, baseType: !267, size: 64, align: 64, offset: 3200)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !486, file: !487, line: 84, baseType: !219, size: 32, align: 32, offset: 3264)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !486, file: !487, line: 87, baseType: !66, size: 32, align: 32, offset: 3296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !486, file: !487, line: 91, baseType: !228, size: 64, align: 64, offset: 3328)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !486, file: !487, line: 92, baseType: !340, size: 128, align: 64, offset: 3392)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !486, file: !487, line: 93, baseType: !340, size: 128, align: 64, offset: 3520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !486, file: !487, line: 95, baseType: !66, size: 32, align: 32, offset: 3648)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !486, file: !487, line: 96, baseType: !66, size: 32, align: 32, offset: 3680)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !486, file: !487, line: 97, baseType: !66, size: 32, align: 32, offset: 3712)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !486, file: !487, line: 100, baseType: !228, size: 64, align: 64, offset: 3776)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !486, file: !487, line: 103, baseType: !228, size: 64, align: 64, offset: 3840)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !486, file: !487, line: 106, baseType: !228, size: 64, align: 64, offset: 3904)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !486, file: !487, line: 108, baseType: !328, size: 64, align: 64, offset: 3968)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !486, file: !487, line: 109, baseType: !228, size: 64, align: 64, offset: 4032)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !486, file: !487, line: 111, baseType: !228, size: 64, align: 64, offset: 4096)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !486, file: !487, line: 114, baseType: !51, size: 64, align: 64, offset: 4160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !486, file: !487, line: 116, baseType: !328, size: 64, align: 64, offset: 4224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !486, file: !487, line: 117, baseType: !636, size: 32768, align: 64, offset: 4288)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 32768, align: 64, elements: !686)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !638, line: 10, size: 128, align: 64, elements: !639)
!638 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!639 = !{!640, !685}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !637, file: !638, line: 11, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !638, line: 7, baseType: !643)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !645, !56, !55, !55, !79, !267}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !485, line: 7, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !648, line: 15, size: 1600, align: 64, elements: !649)
!648 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !385, line: 3, baseType: !66, size: 32, align: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !647, file: !385, line: 4, baseType: !66, size: 32, align: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !647, file: !385, line: 5, baseType: !328, size: 64, align: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !647, file: !385, line: 7, baseType: !51, size: 64, align: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !647, file: !385, line: 8, baseType: !483, size: 64, align: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !647, file: !385, line: 9, baseType: !79, size: 64, align: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !385, line: 10, baseType: !79, size: 64, align: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !647, file: !385, line: 11, baseType: !300, size: 64, align: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !647, file: !385, line: 12, baseType: !66, size: 32, align: 32, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !647, file: !385, line: 13, baseType: !79, size: 64, align: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !647, file: !385, line: 15, baseType: !396, size: 64, align: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !647, file: !385, line: 17, baseType: !403, size: 64, align: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !647, file: !407, line: 5, baseType: !79, size: 64, align: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !647, file: !407, line: 6, baseType: !79, size: 64, align: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !647, file: !407, line: 7, baseType: !300, size: 64, align: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !647, file: !407, line: 9, baseType: !328, size: 64, align: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !647, file: !407, line: 10, baseType: !412, size: 64, align: 64, offset: 960)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !647, file: !407, line: 12, baseType: !138, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !647, file: !407, line: 13, baseType: !79, size: 64, align: 64, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !647, file: !407, line: 14, baseType: !66, size: 32, align: 32, offset: 1152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !647, file: !407, line: 15, baseType: !79, size: 64, align: 64, offset: 1216)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !647, file: !407, line: 17, baseType: !138, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !647, file: !407, line: 18, baseType: !138, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !647, file: !407, line: 19, baseType: !138, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !647, file: !407, line: 20, baseType: !138, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !647, file: !407, line: 22, baseType: !138, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !647, file: !407, line: 23, baseType: !138, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !647, file: !407, line: 24, baseType: !138, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !647, file: !407, line: 25, baseType: !138, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !647, file: !407, line: 26, baseType: !138, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !647, file: !407, line: 31, baseType: !451, size: 64, align: 64, offset: 1344)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !647, file: !648, line: 18, baseType: !228, size: 64, align: 64, offset: 1408)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !647, file: !648, line: 20, baseType: !300, size: 64, align: 64, offset: 1472)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !647, file: !648, line: 21, baseType: !66, size: 32, align: 32, offset: 1536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !647, file: !648, line: 22, baseType: !66, size: 32, align: 32, offset: 1568)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !637, file: !638, line: 12, baseType: !55, size: 8, align: 8, offset: 64)
!686 = !{!687}
!687 = !DISubrange(count: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !486, file: !487, line: 118, baseType: !689, size: 2048, align: 8, offset: 37056)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, align: 8, elements: !686)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !486, file: !487, line: 120, baseType: !462, size: 64, align: 64, offset: 39104)
!691 = !DILocalVariable(name: "server", arg: 1, scope: !480, file: !468, line: 33, type: !483)
!692 = !DIExpression()
!693 = !DILocation(line: 33, column: 41, scope: !480)
!694 = !DILocalVariable(name: "data", arg: 2, scope: !480, file: !468, line: 33, type: !56)
!695 = !DILocation(line: 33, column: 61, scope: !480)
!696 = !DILocalVariable(name: "params", scope: !480, file: !468, line: 35, type: !79)
!697 = !DILocation(line: 35, column: 15, scope: !480)
!698 = !DILocalVariable(name: "nick", scope: !480, file: !468, line: 35, type: !79)
!699 = !DILocation(line: 35, column: 24, scope: !480)
!700 = !DILocalVariable(name: "user", scope: !480, file: !468, line: 35, type: !79)
!701 = !DILocation(line: 35, column: 31, scope: !480)
!702 = !DILocalVariable(name: "host", scope: !480, file: !468, line: 35, type: !79)
!703 = !DILocation(line: 35, column: 38, scope: !480)
!704 = !DILocalVariable(name: "realname", scope: !480, file: !468, line: 35, type: !79)
!705 = !DILocation(line: 35, column: 45, scope: !480)
!706 = !DILocalVariable(name: "nickrec", scope: !480, file: !468, line: 36, type: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFY_NICK_REC", file: !709, line: 17, baseType: !710)
!709 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 6, size: 448, align: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !710, file: !709, line: 7, baseType: !79, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !710, file: !709, line: 8, baseType: !79, size: 64, align: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !710, file: !709, line: 8, baseType: !79, size: 64, align: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !710, file: !709, line: 8, baseType: !79, size: 64, align: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "awaymsg", scope: !710, file: !709, line: 8, baseType: !79, size: 64, align: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "host_ok", scope: !710, file: !709, line: 10, baseType: !138, size: 1, align: 32, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "away_ok", scope: !710, file: !709, line: 11, baseType: !138, size: 1, align: 32, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "away", scope: !710, file: !709, line: 13, baseType: !138, size: 1, align: 32, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "join_announced", scope: !710, file: !709, line: 14, baseType: !138, size: 1, align: 32, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last_whois", scope: !710, file: !709, line: 16, baseType: !300, size: 64, align: 64, offset: 384)
!722 = !DILocation(line: 36, column: 19, scope: !480)
!723 = !DILocalVariable(name: "notify", scope: !480, file: !468, line: 37, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFYLIST_REC", file: !726, line: 10, baseType: !727)
!726 = !DIFile(filename: "notifylist.h", directory: "/home/lichi/Desktop/irssi/task1")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !726, line: 4, size: 192, align: 64, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !727, file: !726, line: 5, baseType: !79, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ircnets", scope: !727, file: !726, line: 6, baseType: !374, size: 64, align: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "away_check", scope: !727, file: !726, line: 9, baseType: !138, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!732 = !DILocation(line: 37, column: 18, scope: !480)
!733 = !DILocation(line: 39, column: 2, scope: !480)
!734 = distinct !{!734, !733}
!735 = !DILocation(line: 39, column: 10, scope: !736)
!736 = !DILexicalBlockFile(scope: !737, file: !468, discriminator: 1)
!737 = distinct !DILexicalBlock(scope: !738, file: !468, line: 39, column: 10)
!738 = distinct !DILexicalBlock(scope: !480, file: !468, line: 39, column: 4)
!739 = !DILocation(line: 39, column: 15, scope: !736)
!740 = !DILocation(line: 39, column: 5, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !468, discriminator: 2)
!742 = distinct !DILexicalBlock(scope: !737, file: !468, line: 39, column: 3)
!743 = !DILocation(line: 39, column: 14, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !468, discriminator: 3)
!745 = distinct !DILexicalBlock(scope: !737, file: !468, line: 39, column: 12)
!746 = !DILocation(line: 39, column: 99, scope: !744)
!747 = !DILocation(line: 39, column: 110, scope: !748)
!748 = !DILexicalBlockFile(scope: !738, file: !468, discriminator: 4)
!749 = !DILocation(line: 40, column: 2, scope: !480)
!750 = distinct !{!750, !749}
!751 = !DILocation(line: 40, column: 10, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !468, discriminator: 1)
!753 = distinct !DILexicalBlock(scope: !754, file: !468, line: 40, column: 10)
!754 = distinct !DILexicalBlock(scope: !480, file: !468, line: 40, column: 4)
!755 = !DILocation(line: 40, column: 17, scope: !752)
!756 = !DILocation(line: 40, column: 5, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !468, discriminator: 2)
!758 = distinct !DILexicalBlock(scope: !753, file: !468, line: 40, column: 3)
!759 = !DILocation(line: 40, column: 14, scope: !760)
!760 = !DILexicalBlockFile(scope: !761, file: !468, discriminator: 3)
!761 = distinct !DILexicalBlock(scope: !753, file: !468, line: 40, column: 12)
!762 = !DILocation(line: 40, column: 101, scope: !760)
!763 = !DILocation(line: 40, column: 112, scope: !764)
!764 = !DILexicalBlockFile(scope: !754, file: !468, discriminator: 4)
!765 = !DILocation(line: 42, column: 28, scope: !480)
!766 = !DILocation(line: 42, column: 11, scope: !480)
!767 = !DILocation(line: 42, column: 9, scope: !480)
!768 = !DILocation(line: 44, column: 27, scope: !480)
!769 = !DILocation(line: 44, column: 33, scope: !480)
!770 = !DILocation(line: 44, column: 41, scope: !480)
!771 = !DILocation(line: 44, column: 50, scope: !480)
!772 = !DILocation(line: 44, column: 11, scope: !480)
!773 = !DILocation(line: 44, column: 9, scope: !480)
!774 = !DILocation(line: 45, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !480, file: !468, line: 45, column: 6)
!776 = !DILocation(line: 45, column: 13, scope: !775)
!777 = !DILocation(line: 45, column: 20, scope: !775)
!778 = !DILocation(line: 45, column: 69, scope: !779)
!779 = !DILexicalBlockFile(scope: !775, file: !468, discriminator: 1)
!780 = !DILocation(line: 45, column: 51, scope: !779)
!781 = !DILocation(line: 45, column: 36, scope: !779)
!782 = !DILocation(line: 45, column: 49, scope: !779)
!783 = !DILocation(line: 45, column: 57, scope: !779)
!784 = !DILocation(line: 45, column: 63, scope: !779)
!785 = !DILocation(line: 45, column: 75, scope: !779)
!786 = !DILocation(line: 45, column: 24, scope: !787)
!787 = !DILexicalBlockFile(scope: !779, file: !468, discriminator: 2)
!788 = !DILocation(line: 45, column: 24, scope: !779)
!789 = !DILocation(line: 45, column: 6, scope: !779)
!790 = !DILocation(line: 47, column: 10, scope: !791)
!791 = distinct !DILexicalBlock(scope: !775, file: !468, line: 45, column: 82)
!792 = !DILocation(line: 47, column: 3, scope: !791)
!793 = !DILocation(line: 48, column: 3, scope: !791)
!794 = !DILocation(line: 51, column: 29, scope: !480)
!795 = !DILocation(line: 51, column: 37, scope: !480)
!796 = !DILocation(line: 51, column: 12, scope: !480)
!797 = !DILocation(line: 51, column: 10, scope: !480)
!798 = !DILocation(line: 52, column: 6, scope: !799)
!799 = distinct !DILexicalBlock(scope: !480, file: !468, line: 52, column: 6)
!800 = !DILocation(line: 52, column: 14, scope: !799)
!801 = !DILocation(line: 52, column: 6, scope: !480)
!802 = !DILocation(line: 53, column: 24, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !468, line: 52, column: 22)
!804 = !DILocation(line: 53, column: 17, scope: !803)
!805 = !DILocation(line: 54, column: 31, scope: !803)
!806 = !DILocation(line: 54, column: 22, scope: !803)
!807 = !DILocation(line: 54, column: 20, scope: !803)
!808 = !DILocation(line: 56, column: 10, scope: !803)
!809 = !DILocation(line: 56, column: 19, scope: !803)
!810 = !DILocation(line: 56, column: 3, scope: !803)
!811 = !DILocation(line: 57, column: 10, scope: !803)
!812 = !DILocation(line: 57, column: 19, scope: !803)
!813 = !DILocation(line: 57, column: 3, scope: !803)
!814 = !DILocation(line: 58, column: 10, scope: !803)
!815 = !DILocation(line: 58, column: 19, scope: !803)
!816 = !DILocation(line: 58, column: 3, scope: !803)
!817 = !DILocation(line: 59, column: 3, scope: !803)
!818 = distinct !{!818, !817}
!819 = !DILocation(line: 59, column: 12, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !468, discriminator: 1)
!821 = distinct !DILexicalBlock(scope: !822, file: !468, line: 59, column: 12)
!822 = distinct !DILexicalBlock(scope: !803, file: !468, line: 59, column: 6)
!823 = !DILocation(line: 59, column: 21, scope: !820)
!824 = !DILocation(line: 59, column: 39, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !468, discriminator: 2)
!826 = distinct !DILexicalBlock(scope: !821, file: !468, line: 59, column: 30)
!827 = !DILocation(line: 59, column: 48, scope: !825)
!828 = !DILocation(line: 59, column: 32, scope: !825)
!829 = !DILocation(line: 59, column: 59, scope: !825)
!830 = !DILocation(line: 59, column: 68, scope: !825)
!831 = !DILocation(line: 59, column: 77, scope: !825)
!832 = !DILocation(line: 59, column: 4, scope: !825)
!833 = !DILocation(line: 59, column: 6, scope: !834)
!834 = !DILexicalBlockFile(scope: !822, file: !468, discriminator: 3)
!835 = !DILocation(line: 60, column: 28, scope: !803)
!836 = !DILocation(line: 60, column: 19, scope: !803)
!837 = !DILocation(line: 60, column: 3, scope: !803)
!838 = !DILocation(line: 60, column: 12, scope: !803)
!839 = !DILocation(line: 60, column: 17, scope: !803)
!840 = !DILocation(line: 61, column: 28, scope: !803)
!841 = !DILocation(line: 61, column: 19, scope: !803)
!842 = !DILocation(line: 61, column: 3, scope: !803)
!843 = !DILocation(line: 61, column: 12, scope: !803)
!844 = !DILocation(line: 61, column: 17, scope: !803)
!845 = !DILocation(line: 62, column: 32, scope: !803)
!846 = !DILocation(line: 62, column: 23, scope: !803)
!847 = !DILocation(line: 62, column: 3, scope: !803)
!848 = !DILocation(line: 62, column: 12, scope: !803)
!849 = !DILocation(line: 62, column: 21, scope: !803)
!850 = !DILocation(line: 64, column: 3, scope: !803)
!851 = !DILocation(line: 64, column: 12, scope: !803)
!852 = !DILocation(line: 64, column: 17, scope: !803)
!853 = !DILocation(line: 65, column: 3, scope: !803)
!854 = !DILocation(line: 65, column: 12, scope: !803)
!855 = !DILocation(line: 65, column: 20, scope: !803)
!856 = !DILocation(line: 66, column: 2, scope: !803)
!857 = !DILocation(line: 67, column: 9, scope: !480)
!858 = !DILocation(line: 67, column: 2, scope: !480)
!859 = !DILocation(line: 68, column: 1, scope: !480)
!860 = !DILocation(line: 68, column: 1, scope: !861)
!861 = !DILexicalBlockFile(scope: !480, file: !468, discriminator: 1)
!862 = distinct !DISubprogram(name: "event_whois_away", scope: !468, file: !468, line: 70, type: !481, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!863 = !DILocalVariable(name: "server", arg: 1, scope: !862, file: !468, line: 70, type: !483)
!864 = !DILocation(line: 70, column: 46, scope: !862)
!865 = !DILocalVariable(name: "data", arg: 2, scope: !862, file: !468, line: 70, type: !56)
!866 = !DILocation(line: 70, column: 66, scope: !862)
!867 = !DILocalVariable(name: "nickrec", scope: !862, file: !468, line: 72, type: !707)
!868 = !DILocation(line: 72, column: 19, scope: !862)
!869 = !DILocalVariable(name: "params", scope: !862, file: !468, line: 73, type: !79)
!870 = !DILocation(line: 73, column: 8, scope: !862)
!871 = !DILocalVariable(name: "nick", scope: !862, file: !468, line: 73, type: !79)
!872 = !DILocation(line: 73, column: 17, scope: !862)
!873 = !DILocalVariable(name: "awaymsg", scope: !862, file: !468, line: 73, type: !79)
!874 = !DILocation(line: 73, column: 24, scope: !862)
!875 = !DILocation(line: 75, column: 2, scope: !862)
!876 = distinct !{!876, !875}
!877 = !DILocation(line: 75, column: 10, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !468, discriminator: 1)
!879 = distinct !DILexicalBlock(scope: !880, file: !468, line: 75, column: 10)
!880 = distinct !DILexicalBlock(scope: !862, file: !468, line: 75, column: 4)
!881 = !DILocation(line: 75, column: 15, scope: !878)
!882 = !DILocation(line: 75, column: 5, scope: !883)
!883 = !DILexicalBlockFile(scope: !884, file: !468, discriminator: 2)
!884 = distinct !DILexicalBlock(scope: !879, file: !468, line: 75, column: 3)
!885 = !DILocation(line: 75, column: 14, scope: !886)
!886 = !DILexicalBlockFile(scope: !887, file: !468, discriminator: 3)
!887 = distinct !DILexicalBlock(scope: !879, file: !468, line: 75, column: 12)
!888 = !DILocation(line: 75, column: 99, scope: !886)
!889 = !DILocation(line: 75, column: 110, scope: !890)
!890 = !DILexicalBlockFile(scope: !880, file: !468, discriminator: 4)
!891 = !DILocation(line: 77, column: 28, scope: !862)
!892 = !DILocation(line: 77, column: 11, scope: !862)
!893 = !DILocation(line: 77, column: 9, scope: !862)
!894 = !DILocation(line: 79, column: 29, scope: !862)
!895 = !DILocation(line: 79, column: 37, scope: !862)
!896 = !DILocation(line: 79, column: 12, scope: !862)
!897 = !DILocation(line: 79, column: 10, scope: !862)
!898 = !DILocation(line: 80, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !862, file: !468, line: 80, column: 6)
!900 = !DILocation(line: 80, column: 14, scope: !899)
!901 = !DILocation(line: 80, column: 6, scope: !862)
!902 = !DILocation(line: 81, column: 31, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !468, line: 80, column: 22)
!904 = !DILocation(line: 81, column: 22, scope: !903)
!905 = !DILocation(line: 81, column: 3, scope: !903)
!906 = !DILocation(line: 81, column: 12, scope: !903)
!907 = !DILocation(line: 81, column: 20, scope: !903)
!908 = !DILocation(line: 82, column: 17, scope: !903)
!909 = !DILocation(line: 82, column: 26, scope: !903)
!910 = !DILocation(line: 82, column: 31, scope: !903)
!911 = !DILocation(line: 83, column: 2, scope: !903)
!912 = !DILocation(line: 85, column: 9, scope: !862)
!913 = !DILocation(line: 85, column: 2, scope: !862)
!914 = !DILocation(line: 86, column: 1, scope: !862)
!915 = !DILocation(line: 86, column: 1, scope: !916)
!916 = !DILexicalBlockFile(scope: !862, file: !468, discriminator: 1)
!917 = distinct !DISubprogram(name: "event_whois_end", scope: !468, file: !468, line: 89, type: !481, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!918 = !DILocalVariable(name: "server", arg: 1, scope: !917, file: !468, line: 89, type: !483)
!919 = !DILocation(line: 89, column: 45, scope: !917)
!920 = !DILocalVariable(name: "data", arg: 2, scope: !917, file: !468, line: 89, type: !56)
!921 = !DILocation(line: 89, column: 65, scope: !917)
!922 = !DILocalVariable(name: "mserver", scope: !917, file: !468, line: 91, type: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !709, line: 24, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 19, size: 192, align: 64, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ison_count", scope: !925, file: !709, line: 20, baseType: !66, size: 32, align: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_users", scope: !925, file: !709, line: 22, baseType: !228, size: 64, align: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ison_tempusers", scope: !925, file: !709, line: 23, baseType: !228, size: 64, align: 64, offset: 128)
!930 = !DILocation(line: 91, column: 21, scope: !917)
!931 = !DILocalVariable(name: "notify", scope: !917, file: !468, line: 92, type: !724)
!932 = !DILocation(line: 92, column: 18, scope: !917)
!933 = !DILocalVariable(name: "rec", scope: !917, file: !468, line: 93, type: !707)
!934 = !DILocation(line: 93, column: 19, scope: !917)
!935 = !DILocalVariable(name: "tmp", scope: !917, file: !468, line: 94, type: !228)
!936 = !DILocation(line: 94, column: 10, scope: !917)
!937 = !DILocalVariable(name: "event", scope: !917, file: !468, line: 95, type: !56)
!938 = !DILocation(line: 95, column: 14, scope: !917)
!939 = !DILocalVariable(name: "away_ok", scope: !917, file: !468, line: 96, type: !66)
!940 = !DILocation(line: 96, column: 6, scope: !917)
!941 = !DILocation(line: 98, column: 33, scope: !917)
!942 = !DILocation(line: 98, column: 42, scope: !917)
!943 = !DILocation(line: 98, column: 12, scope: !917)
!944 = !DILocation(line: 98, column: 10, scope: !917)
!945 = !DILocation(line: 99, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !917, file: !468, line: 99, column: 2)
!947 = !DILocation(line: 99, column: 22, scope: !946)
!948 = !DILocation(line: 99, column: 11, scope: !946)
!949 = !DILocation(line: 99, column: 7, scope: !946)
!950 = !DILocation(line: 99, column: 36, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !468, discriminator: 1)
!952 = distinct !DILexicalBlock(scope: !946, file: !468, line: 99, column: 2)
!953 = !DILocation(line: 99, column: 40, scope: !951)
!954 = !DILocation(line: 99, column: 2, scope: !951)
!955 = !DILocation(line: 100, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !468, line: 99, column: 65)
!957 = !DILocation(line: 100, column: 14, scope: !956)
!958 = !DILocation(line: 100, column: 7, scope: !956)
!959 = !DILocation(line: 102, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !468, line: 102, column: 7)
!961 = !DILocation(line: 102, column: 12, scope: !960)
!962 = !DILocation(line: 102, column: 21, scope: !960)
!963 = !DILocation(line: 102, column: 7, scope: !956)
!964 = !DILocation(line: 103, column: 4, scope: !960)
!965 = !DILocation(line: 105, column: 28, scope: !956)
!966 = !DILocation(line: 105, column: 33, scope: !956)
!967 = !DILocation(line: 105, column: 39, scope: !956)
!968 = !DILocation(line: 105, column: 47, scope: !956)
!969 = !DILocation(line: 105, column: 56, scope: !956)
!970 = !DILocation(line: 105, column: 12, scope: !956)
!971 = !DILocation(line: 105, column: 10, scope: !956)
!972 = !DILocation(line: 106, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !956, file: !468, line: 106, column: 7)
!974 = !DILocation(line: 106, column: 14, scope: !973)
!975 = !DILocation(line: 106, column: 7, scope: !956)
!976 = !DILocation(line: 106, column: 22, scope: !977)
!977 = !DILexicalBlockFile(scope: !973, file: !468, discriminator: 1)
!978 = !DILocation(line: 108, column: 14, scope: !956)
!979 = !DILocation(line: 108, column: 22, scope: !956)
!980 = !DILocation(line: 108, column: 33, scope: !956)
!981 = !DILocation(line: 108, column: 37, scope: !982)
!982 = !DILexicalBlockFile(scope: !956, file: !468, discriminator: 1)
!983 = !DILocation(line: 108, column: 42, scope: !982)
!984 = !DILocation(line: 108, column: 36, scope: !982)
!985 = !DILocation(line: 108, column: 33, scope: !982)
!986 = !DILocation(line: 108, column: 33, scope: !987)
!987 = !DILexicalBlockFile(scope: !956, file: !468, discriminator: 2)
!988 = !DILocation(line: 108, column: 11, scope: !987)
!989 = !DILocation(line: 110, column: 9, scope: !956)
!990 = !DILocation(line: 111, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !956, file: !468, line: 111, column: 7)
!992 = !DILocation(line: 111, column: 13, scope: !991)
!993 = !DILocation(line: 111, column: 7, scope: !956)
!994 = !DILocation(line: 112, column: 4, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !468, line: 111, column: 29)
!996 = !DILocation(line: 112, column: 9, scope: !995)
!997 = !DILocation(line: 112, column: 24, scope: !995)
!998 = !DILocation(line: 113, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !468, line: 113, column: 8)
!1000 = !DILocation(line: 113, column: 8, scope: !995)
!1001 = !DILocation(line: 113, column: 23, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !999, file: !468, discriminator: 1)
!1003 = !DILocation(line: 113, column: 17, scope: !1002)
!1004 = !DILocation(line: 114, column: 3, scope: !995)
!1005 = !DILocation(line: 114, column: 14, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !468, discriminator: 1)
!1007 = distinct !DILexicalBlock(scope: !991, file: !468, line: 114, column: 14)
!1008 = !DILocation(line: 114, column: 22, scope: !1006)
!1009 = !DILocation(line: 114, column: 33, scope: !1006)
!1010 = !DILocation(line: 114, column: 36, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1007, file: !468, discriminator: 2)
!1012 = !DILocation(line: 114, column: 41, scope: !1011)
!1013 = !DILocation(line: 114, column: 52, scope: !1011)
!1014 = !DILocation(line: 114, column: 57, scope: !1011)
!1015 = !DILocation(line: 114, column: 49, scope: !1011)
!1016 = !DILocation(line: 114, column: 14, scope: !1011)
!1017 = !DILocation(line: 115, column: 10, scope: !1007)
!1018 = !DILocation(line: 115, column: 4, scope: !1007)
!1019 = !DILocation(line: 117, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !956, file: !468, line: 117, column: 7)
!1021 = !DILocation(line: 117, column: 13, scope: !1020)
!1022 = !DILocation(line: 117, column: 7, scope: !956)
!1023 = !DILocation(line: 118, column: 16, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !468, line: 117, column: 21)
!1025 = !DILocation(line: 118, column: 26, scope: !1024)
!1026 = !DILocation(line: 118, column: 34, scope: !1024)
!1027 = !DILocation(line: 118, column: 39, scope: !1024)
!1028 = !DILocation(line: 119, column: 9, scope: !1024)
!1029 = !DILocation(line: 119, column: 14, scope: !1024)
!1030 = !DILocation(line: 119, column: 19, scope: !1024)
!1031 = !DILocation(line: 119, column: 28, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1024, file: !468, discriminator: 1)
!1033 = !DILocation(line: 119, column: 33, scope: !1032)
!1034 = !DILocation(line: 119, column: 9, scope: !1032)
!1035 = !DILocation(line: 119, column: 9, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1024, file: !468, discriminator: 2)
!1037 = !DILocation(line: 119, column: 9, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1024, file: !468, discriminator: 3)
!1039 = !DILocation(line: 120, column: 9, scope: !1024)
!1040 = !DILocation(line: 120, column: 14, scope: !1024)
!1041 = !DILocation(line: 120, column: 19, scope: !1024)
!1042 = !DILocation(line: 120, column: 28, scope: !1032)
!1043 = !DILocation(line: 120, column: 33, scope: !1032)
!1044 = !DILocation(line: 120, column: 9, scope: !1032)
!1045 = !DILocation(line: 120, column: 9, scope: !1036)
!1046 = !DILocation(line: 120, column: 9, scope: !1038)
!1047 = !DILocation(line: 121, column: 9, scope: !1024)
!1048 = !DILocation(line: 121, column: 14, scope: !1024)
!1049 = !DILocation(line: 121, column: 23, scope: !1024)
!1050 = !DILocation(line: 121, column: 32, scope: !1032)
!1051 = !DILocation(line: 121, column: 37, scope: !1032)
!1052 = !DILocation(line: 121, column: 9, scope: !1032)
!1053 = !DILocation(line: 121, column: 9, scope: !1036)
!1054 = !DILocation(line: 121, column: 9, scope: !1038)
!1055 = !DILocation(line: 122, column: 9, scope: !1024)
!1056 = !DILocation(line: 122, column: 14, scope: !1024)
!1057 = !DILocation(line: 118, column: 4, scope: !1032)
!1058 = !DILocation(line: 123, column: 3, scope: !1024)
!1059 = !DILocation(line: 124, column: 32, scope: !956)
!1060 = !DILocation(line: 124, column: 17, scope: !956)
!1061 = !DILocation(line: 124, column: 22, scope: !956)
!1062 = !DILocation(line: 124, column: 30, scope: !956)
!1063 = !DILocation(line: 125, column: 2, scope: !956)
!1064 = !DILocation(line: 99, column: 54, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !952, file: !468, discriminator: 2)
!1066 = !DILocation(line: 99, column: 59, scope: !1065)
!1067 = !DILocation(line: 99, column: 52, scope: !1065)
!1068 = !DILocation(line: 99, column: 2, scope: !1065)
!1069 = distinct !{!1069, !1070}
!1070 = !DILocation(line: 99, column: 2, scope: !917)
!1071 = !DILocation(line: 126, column: 1, scope: !917)
!1072 = distinct !DISubprogram(name: "expando_lastnotify", scope: !468, file: !468, line: 129, type: !1073, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!79, !58, !51, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!1076 = !DILocalVariable(name: "server", arg: 1, scope: !1072, file: !468, line: 129, type: !58)
!1077 = !DILocation(line: 129, column: 45, scope: !1072)
!1078 = !DILocalVariable(name: "item", arg: 2, scope: !1072, file: !468, line: 129, type: !51)
!1079 = !DILocation(line: 129, column: 59, scope: !1072)
!1080 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1072, file: !468, line: 129, type: !1075)
!1081 = !DILocation(line: 129, column: 70, scope: !1072)
!1082 = !DILocation(line: 131, column: 9, scope: !1072)
!1083 = !DILocation(line: 131, column: 2, scope: !1072)
!1084 = distinct !DISubprogram(name: "notifylist_whois_deinit", scope: !468, file: !468, line: 145, type: !216, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !473)
!1085 = !DILocation(line: 147, column: 9, scope: !1084)
!1086 = !DILocation(line: 147, column: 2, scope: !1084)
!1087 = !DILocation(line: 149, column: 2, scope: !1084)
!1088 = !DILocation(line: 150, column: 2, scope: !1084)
!1089 = !DILocation(line: 151, column: 2, scope: !1084)
!1090 = !DILocation(line: 152, column: 2, scope: !1084)
!1091 = !DILocation(line: 153, column: 1, scope: !1084)
