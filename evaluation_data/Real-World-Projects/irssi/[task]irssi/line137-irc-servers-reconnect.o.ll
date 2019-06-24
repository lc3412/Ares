; ModuleID = './line137-irc-servers-reconnect.o.i'
source_filename = "./line137-irc-servers-reconnect.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"server connect copy\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"server reconnect save status\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"event 436\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"event kill\00", align 1
@__func__.sig_server_connect_copy = private unnamed_addr constant [24 x i8] c"sig_server_connect_copy\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"server_reconnect_time\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_servers_reconnect_init() #0 !dbg !694 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_CONNECT_REC**, %struct._IRC_SERVER_CONNECT_REC*)* @sig_server_connect_copy to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !697
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_REC*)* @sig_server_reconnect_save_status to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !698
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !699
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_collision to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !700
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !701
  ret void, !dbg !702
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_server_connect_copy(%struct._SERVER_CONNECT_REC**, %struct._IRC_SERVER_CONNECT_REC*) #0 !dbg !703 {
  %3 = alloca %struct._SERVER_CONNECT_REC**, align 8
  %4 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC** %0, %struct._SERVER_CONNECT_REC*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC*** %3, metadata !707, metadata !708), !dbg !709
  store %struct._IRC_SERVER_CONNECT_REC* %1, %struct._IRC_SERVER_CONNECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %4, metadata !710, metadata !708), !dbg !711
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %5, metadata !712, metadata !708), !dbg !713
  br label %6, !dbg !714, !llvm.loop !715

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_CONNECT_REC**, %struct._SERVER_CONNECT_REC*** %3, align 8, !dbg !716
  %8 = icmp ne %struct._SERVER_CONNECT_REC** %7, null, !dbg !720
  br i1 %8, label %9, label %10, !dbg !716

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !721

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_connect_copy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !724
  br label %95, !dbg !727

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !728

; <label>:12:                                     ; preds = %11
  %13 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !730
  %14 = bitcast %struct._IRC_SERVER_CONNECT_REC* %13 to i8*, !dbg !730
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !732
  %16 = bitcast i8* %15 to %struct._SERVER_CONNECT_REC*, !dbg !733
  %17 = bitcast %struct._SERVER_CONNECT_REC* %16 to i8*, !dbg !734
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !735
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !737
  %20 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %19, null, !dbg !737
  br i1 %20, label %21, label %22, !dbg !738

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !739

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !741

; <label>:23:                                     ; preds = %22, %21
  br label %95, !dbg !743

; <label>:24:                                     ; preds = %22, %21
  %25 = call noalias i8* @g_malloc0_n(i64 1, i64 312), !dbg !744
  %26 = bitcast i8* %25 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !745
  store %struct._IRC_SERVER_CONNECT_REC* %26, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !746
  %27 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !747
  %28 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !748
  %29 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %28, i32 0, i32 1, !dbg !749
  store i32 %27, i32* %29, align 4, !dbg !750
  %30 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !751
  %31 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %30, i32 0, i32 36, !dbg !752
  %32 = load i32, i32* %31, align 8, !dbg !752
  %33 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !753
  %34 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %33, i32 0, i32 36, !dbg !754
  store i32 %32, i32* %34, align 8, !dbg !755
  %35 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !756
  %36 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %35, i32 0, i32 37, !dbg !757
  %37 = load i32, i32* %36, align 4, !dbg !757
  %38 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !758
  %39 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %38, i32 0, i32 37, !dbg !759
  store i32 %37, i32* %39, align 4, !dbg !760
  %40 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !761
  %41 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %40, i32 0, i32 38, !dbg !762
  %42 = load i32, i32* %41, align 8, !dbg !762
  %43 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !763
  %44 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %43, i32 0, i32 38, !dbg !764
  store i32 %42, i32* %44, align 8, !dbg !765
  %45 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !766
  %46 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %45, i32 0, i32 39, !dbg !767
  %47 = load i32, i32* %46, align 4, !dbg !767
  %48 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !768
  %49 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %48, i32 0, i32 39, !dbg !769
  store i32 %47, i32* %49, align 4, !dbg !770
  %50 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !771
  %51 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %50, i32 0, i32 41, !dbg !772
  %52 = load i32, i32* %51, align 4, !dbg !772
  %53 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !773
  %54 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %53, i32 0, i32 41, !dbg !774
  store i32 %52, i32* %54, align 4, !dbg !775
  %55 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !776
  %56 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %55, i32 0, i32 40, !dbg !777
  %57 = load i32, i32* %56, align 8, !dbg !777
  %58 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !778
  %59 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %58, i32 0, i32 40, !dbg !779
  store i32 %57, i32* %59, align 8, !dbg !780
  %60 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !781
  %61 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %60, i32 0, i32 42, !dbg !782
  %62 = load i32, i32* %61, align 8, !dbg !782
  %63 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !783
  %64 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %63, i32 0, i32 42, !dbg !784
  store i32 %62, i32* %64, align 8, !dbg !785
  %65 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !786
  %66 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %65, i32 0, i32 31, !dbg !787
  %67 = load i8*, i8** %66, align 8, !dbg !787
  %68 = call noalias i8* @g_strdup(i8* %67), !dbg !788
  %69 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !789
  %70 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %69, i32 0, i32 31, !dbg !790
  store i8* %68, i8** %70, align 8, !dbg !791
  %71 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !792
  %72 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %71, i32 0, i32 32, !dbg !793
  %73 = load i8*, i8** %72, align 8, !dbg !793
  %74 = call noalias i8* @g_strdup(i8* %73), !dbg !794
  %75 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !795
  %76 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %75, i32 0, i32 32, !dbg !796
  store i8* %74, i8** %76, align 8, !dbg !797
  %77 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !798
  %78 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %77, i32 0, i32 33, !dbg !799
  %79 = load i32, i32* %78, align 8, !dbg !799
  %80 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !800
  %81 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %80, i32 0, i32 33, !dbg !801
  store i32 %79, i32* %81, align 8, !dbg !802
  %82 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !803
  %83 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %82, i32 0, i32 34, !dbg !804
  %84 = load i8*, i8** %83, align 8, !dbg !804
  %85 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !805
  %86 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %85, i32 0, i32 34, !dbg !806
  store i8* %84, i8** %86, align 8, !dbg !807
  %87 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !808
  %88 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %87, i32 0, i32 35, !dbg !809
  %89 = load i8*, i8** %88, align 8, !dbg !809
  %90 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !810
  %91 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %90, i32 0, i32 35, !dbg !811
  store i8* %89, i8** %91, align 8, !dbg !812
  %92 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !813
  %93 = bitcast %struct._IRC_SERVER_CONNECT_REC* %92 to %struct._SERVER_CONNECT_REC*, !dbg !814
  %94 = load %struct._SERVER_CONNECT_REC**, %struct._SERVER_CONNECT_REC*** %3, align 8, !dbg !815
  store %struct._SERVER_CONNECT_REC* %93, %struct._SERVER_CONNECT_REC** %94, align 8, !dbg !816
  br label %95, !dbg !817

; <label>:95:                                     ; preds = %24, %23, %10
  ret void, !dbg !818
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_reconnect_save_status(%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_REC*) #0 !dbg !820 {
  %3 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_CONNECT_REC* %0, %struct._IRC_SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %3, metadata !823, metadata !708), !dbg !824
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !825, metadata !708), !dbg !826
  %5 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !827
  %6 = bitcast %struct._IRC_SERVER_CONNECT_REC* %5 to i8*, !dbg !827
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !829
  %8 = bitcast i8* %7 to %struct._SERVER_CONNECT_REC*, !dbg !830
  %9 = bitcast %struct._SERVER_CONNECT_REC* %8 to i8*, !dbg !831
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !832
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !834
  %12 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %11, null, !dbg !834
  br i1 %12, label %13, label %14, !dbg !835

; <label>:13:                                     ; preds = %2
  br i1 false, label %33, label %15, !dbg !836

; <label>:14:                                     ; preds = %2
  br i1 false, label %15, label %33, !dbg !838

; <label>:15:                                     ; preds = %14, %13
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !840
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !840
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !842
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !843
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !844
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !845
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !847
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !847
  br i1 %23, label %24, label %25, !dbg !848

; <label>:24:                                     ; preds = %15
  br i1 false, label %33, label %26, !dbg !849

; <label>:25:                                     ; preds = %15
  br i1 false, label %26, label %33, !dbg !851

; <label>:26:                                     ; preds = %25, %24
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !853
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 8, !dbg !854
  %29 = load i8, i8* %28, align 8, !dbg !854
  %30 = and i8 %29, 1, !dbg !854
  %31 = zext i8 %30 to i32, !dbg !854
  %32 = icmp ne i32 %31, 0, !dbg !853
  br i1 %32, label %34, label %33, !dbg !855

; <label>:33:                                     ; preds = %26, %25, %24, %14, %13
  br label %51, !dbg !857

; <label>:34:                                     ; preds = %26
  %35 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !858
  %36 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %35, i32 0, i32 29, !dbg !859
  %37 = load i8*, i8** %36, align 8, !dbg !859
  call void @g_free(i8* %37), !dbg !860
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !861
  %39 = call i8* @irc_server_get_channels(%struct._IRC_SERVER_REC* %38), !dbg !862
  %40 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !863
  %41 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %40, i32 0, i32 29, !dbg !864
  store i8* %39, i8** %41, align 8, !dbg !865
  %42 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !866
  %43 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %42, i32 0, i32 31, !dbg !867
  %44 = load i8*, i8** %43, align 8, !dbg !867
  call void @g_free(i8* %44), !dbg !868
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !869
  %46 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %45, i32 0, i32 42, !dbg !870
  %47 = load i8*, i8** %46, align 8, !dbg !870
  %48 = call noalias i8* @g_strdup(i8* %47), !dbg !871
  %49 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !872
  %50 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %49, i32 0, i32 31, !dbg !873
  store i8* %48, i8** %50, align 8, !dbg !874
  br label %51, !dbg !875

; <label>:51:                                     ; preds = %34, %33
  ret void, !dbg !876
}

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !878 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !881, metadata !708), !dbg !882
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !883
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !883
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !885
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !886
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !887
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !888
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !890
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !890
  br i1 %10, label %11, label %12, !dbg !891

; <label>:11:                                     ; preds = %1
  br i1 false, label %22, label %13, !dbg !892

; <label>:12:                                     ; preds = %1
  br i1 false, label %13, label %22, !dbg !894

; <label>:13:                                     ; preds = %12, %11
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !896
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 3, !dbg !898
  %16 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %15, align 8, !dbg !898
  %17 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %16, i32 0, i32 28, !dbg !899
  %18 = load i8, i8* %17, align 8, !dbg !899
  %19 = and i8 %18, 1, !dbg !899
  %20 = zext i8 %19 to i32, !dbg !899
  %21 = icmp ne i32 %20, 0, !dbg !896
  br i1 %21, label %23, label %22, !dbg !900

; <label>:22:                                     ; preds = %13, %12, %11
  br label %37, !dbg !901

; <label>:23:                                     ; preds = %13
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !902
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 3, !dbg !904
  %26 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %25, align 8, !dbg !904
  %27 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %26, i32 0, i32 30, !dbg !905
  %28 = load i8*, i8** %27, align 8, !dbg !905
  %29 = icmp ne i8* %28, null, !dbg !906
  br i1 %29, label %30, label %37, !dbg !907

; <label>:30:                                     ; preds = %23
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !908
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !909
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 3, !dbg !910
  %34 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %33, align 8, !dbg !910
  %35 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %34, i32 0, i32 30, !dbg !911
  %36 = load i8*, i8** %35, align 8, !dbg !911
  call void @irc_server_send_away(%struct._IRC_SERVER_REC* %31, i8* %36), !dbg !912
  br label %37, !dbg !912

; <label>:37:                                     ; preds = %22, %30, %23
  ret void, !dbg !913
}

; Function Attrs: nounwind uwtable
define internal void @event_nick_collision(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !914 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !917, metadata !708), !dbg !918
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !919, metadata !708), !dbg !920
  call void @llvm.dbg.declare(metadata i64* %5, metadata !921, metadata !708), !dbg !922
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !923
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !923
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !925
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !926
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !927
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)), !dbg !928
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !930
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !930
  br i1 %13, label %14, label %15, !dbg !931

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %17, !dbg !932

; <label>:15:                                     ; preds = %2
  br i1 false, label %17, label %16, !dbg !934

; <label>:16:                                     ; preds = %15, %14
  br label %41, !dbg !936

; <label>:17:                                     ; preds = %15, %14
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !937
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 4, !dbg !938
  %20 = load i64, i64* %19, align 8, !dbg !938
  %21 = add nsw i64 %20, 10, !dbg !939
  %22 = call i32 @settings_get_time(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0)), !dbg !940
  %23 = sdiv i32 %22, 1000, !dbg !941
  %24 = sext i32 %23 to i64, !dbg !940
  %25 = sub nsw i64 %21, %24, !dbg !942
  store i64 %25, i64* %5, align 8, !dbg !943
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !944
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 4, !dbg !946
  %28 = load i64, i64* %27, align 8, !dbg !946
  %29 = load i64, i64* %5, align 8, !dbg !947
  %30 = icmp sgt i64 %28, %29, !dbg !948
  br i1 %30, label %31, label %35, !dbg !949

; <label>:31:                                     ; preds = %17
  %32 = load i64, i64* %5, align 8, !dbg !950
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !951
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 4, !dbg !952
  store i64 %32, i64* %34, align 8, !dbg !953
  br label %35, !dbg !951

; <label>:35:                                     ; preds = %31, %17
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !954
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 45, !dbg !955
  %38 = load i16, i16* %37, align 4, !dbg !956
  %39 = and i16 %38, -129, !dbg !956
  %40 = or i16 %39, 128, !dbg !956
  store i16 %40, i16* %37, align 4, !dbg !956
  br label %41, !dbg !957

; <label>:41:                                     ; preds = %35, %16
  ret void, !dbg !958
}

; Function Attrs: nounwind uwtable
define internal void @event_kill(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !960 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !963, metadata !708), !dbg !964
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !965, metadata !708), !dbg !966
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !967, metadata !708), !dbg !968
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !969, metadata !708), !dbg !970
  %9 = load i8*, i8** %8, align 8, !dbg !971
  %10 = icmp ne i8* %9, null, !dbg !973
  br i1 %10, label %11, label %25, !dbg !974

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !975
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 45, !dbg !977
  %14 = load i16, i16* %13, align 4, !dbg !977
  %15 = lshr i16 %14, 7, !dbg !977
  %16 = and i16 %15, 1, !dbg !977
  %17 = zext i16 %16 to i32, !dbg !977
  %18 = icmp ne i32 %17, 0, !dbg !975
  br i1 %18, label %25, label %19, !dbg !978

; <label>:19:                                     ; preds = %11
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !979
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 8, !dbg !981
  %22 = load i8, i8* %21, align 8, !dbg !982
  %23 = and i8 %22, -17, !dbg !982
  %24 = or i8 %23, 16, !dbg !982
  store i8 %24, i8* %21, align 8, !dbg !982
  br label %25, !dbg !983

; <label>:25:                                     ; preds = %19, %11, %4
  ret void, !dbg !984
}

; Function Attrs: nounwind uwtable
define void @irc_servers_reconnect_deinit() #0 !dbg !985 {
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_CONNECT_REC**, %struct._IRC_SERVER_CONNECT_REC*)* @sig_server_connect_copy to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !986
  call void @signal_remove_full(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_REC*)* @sig_server_reconnect_save_status to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !987
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !988
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_collision to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !989
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !990
  ret void, !dbg !991
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @chat_protocol_lookup(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_free(i8*) #1

declare i8* @irc_server_get_channels(%struct._IRC_SERVER_REC*) #1

declare void @irc_server_send_away(%struct._IRC_SERVER_REC*, i8*) #1

declare i32 @settings_get_time(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!691, !692}
!llvm.ident = !{!693}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line137-irc-servers-reconnect.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !43, !44, !48, !50, !322, !365, !429}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !37, line: 9, baseType: !38)
!37 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !41, !41, !41, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !52, line: 5, baseType: !53)
!52 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !54, line: 24, size: 2496, align: 64, elements: !55)
!54 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !{!56, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !57, line: 3, baseType: !58, size: 32, align: 32)
!57 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !53, file: !57, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !53, file: !57, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !53, file: !57, line: 9, baseType: !62, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !53, file: !57, line: 10, baseType: !58, size: 32, align: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !53, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !53, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !53, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !53, file: !57, line: 13, baseType: !68, size: 16, align: 16, offset: 448)
!68 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !53, file: !57, line: 14, baseType: !62, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !53, file: !57, line: 15, baseType: !62, size: 64, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !53, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !53, file: !57, line: 17, baseType: !62, size: 64, align: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !53, file: !57, line: 19, baseType: !74, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !76, line: 99, baseType: !77)
!76 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !78, line: 22, size: 160, align: 32, elements: !79)
!78 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !77, file: !78, line: 23, baseType: !68, size: 16, align: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !77, file: !78, line: 24, baseType: !82, size: 128, align: 32, offset: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !83, line: 211, size: 128, align: 32, elements: !84)
!83 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !82, file: !83, line: 220, baseType: !86, size: 128, align: 32)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !83, line: 213, size: 128, align: 32, elements: !87)
!87 = !{!88, !95, !100}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !86, file: !83, line: 215, baseType: !89, size: 128, align: 8)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, align: 8, elements: !93)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !91, line: 48, baseType: !92)
!91 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!93 = !{!94}
!94 = !DISubrange(count: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !86, file: !83, line: 217, baseType: !96, size: 128, align: 16)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, align: 16, elements: !98)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !91, line: 49, baseType: !68)
!98 = !{!99}
!99 = !DISubrange(count: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !86, file: !83, line: 218, baseType: !101, size: 128, align: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, align: 32, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !91, line: 51, baseType: !103)
!103 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !53, file: !57, line: 19, baseType: !74, size: 64, align: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !53, file: !57, line: 21, baseType: !62, size: 64, align: 64, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !53, file: !57, line: 22, baseType: !62, size: 64, align: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !53, file: !57, line: 23, baseType: !62, size: 64, align: 64, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !53, file: !57, line: 24, baseType: !62, size: 64, align: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !53, file: !57, line: 26, baseType: !62, size: 64, align: 64, offset: 1152)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !53, file: !57, line: 27, baseType: !62, size: 64, align: 64, offset: 1216)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !53, file: !57, line: 28, baseType: !62, size: 64, align: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !53, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 1344)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !53, file: !57, line: 30, baseType: !62, size: 64, align: 64, offset: 1408)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !53, file: !57, line: 31, baseType: !62, size: 64, align: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !53, file: !57, line: 32, baseType: !62, size: 64, align: 64, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !53, file: !57, line: 33, baseType: !62, size: 64, align: 64, offset: 1600)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !53, file: !57, line: 35, baseType: !120, size: 64, align: 64, offset: 1664)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !123)
!123 = !{!124, !126, !267, !268, !273, !274, !275, !276, !277, !286, !287, !288, !292, !293, !294, !295, !296, !297, !298, !299}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !122, file: !4, line: 100, baseType: !125, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !46, line: 49, baseType: !58)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !122, file: !4, line: 101, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !130)
!130 = !{!131, !152, !158, !165, !169, !254, !258, !263}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !129, file: !4, line: 133, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !120, !44, !136, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !137, line: 66, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!138 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !143, line: 42, baseType: !144)
!143 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !143, line: 44, size: 128, align: 64, elements: !145)
!145 = !{!146, !150, !151}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !144, file: !143, line: 46, baseType: !147, size: 32, align: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !148, line: 36, baseType: !149)
!148 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !137, line: 45, baseType: !103)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !144, file: !143, line: 47, baseType: !125, size: 32, align: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !144, file: !143, line: 48, baseType: !44, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !129, file: !4, line: 138, baseType: !153, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!135, !120, !156, !136, !139, !140}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !129, file: !4, line: 143, baseType: !159, size: 64, align: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!135, !120, !162, !164, !140}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !137, line: 51, baseType: !163)
!163 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !129, file: !4, line: 147, baseType: !166, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!135, !120, !140}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !129, file: !4, line: 149, baseType: !170, size: 64, align: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !120, !253}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !176)
!176 = !{!177, !179, !200, !229, !231, !235, !236, !237, !238, !246, !247, !248, !249}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !175, file: !16, line: 174, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !46, line: 77, baseType: !43)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !175, file: !16, line: 175, baseType: !180, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !183)
!183 = !{!184, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !182, file: !16, line: 198, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !178}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !182, file: !16, line: 199, baseType: !185, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !182, file: !16, line: 200, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !178, !173, !193, !199}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !178}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !46, line: 50, baseType: !125)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !175, file: !16, line: 177, baseType: !201, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !205)
!205 = !{!206, !211, !215, !219, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !204, file: !16, line: 216, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!198, !173, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !204, file: !16, line: 218, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!198, !173}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !204, file: !16, line: 219, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!198, !173, !194, !178}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !204, file: !16, line: 222, baseType: !220, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !173}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !204, file: !16, line: 226, baseType: !194, size: 64, align: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !204, file: !16, line: 227, baseType: !225, size: 64, align: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !175, file: !16, line: 178, baseType: !230, size: 32, align: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !46, line: 55, baseType: !103)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !175, file: !16, line: 180, baseType: !232, size: 64, align: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !175, file: !16, line: 182, baseType: !125, size: 32, align: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !16, line: 183, baseType: !230, size: 32, align: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !175, file: !16, line: 184, baseType: !230, size: 32, align: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !175, file: !16, line: 186, baseType: !239, size: 64, align: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !241, line: 37, baseType: !242)
!241 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !241, line: 39, size: 128, align: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !242, file: !241, line: 41, baseType: !178, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !241, line: 42, baseType: !239, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !175, file: !16, line: 188, baseType: !173, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !175, file: !16, line: 189, baseType: !173, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !16, line: 191, baseType: !62, size: 64, align: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !175, file: !16, line: 193, baseType: !250, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !129, file: !4, line: 151, baseType: !255, size: 64, align: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !120}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !129, file: !4, line: 152, baseType: !259, size: 64, align: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!135, !120, !262, !140}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !129, file: !4, line: 155, baseType: !264, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!262, !120}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !122, file: !4, line: 103, baseType: !44, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !122, file: !4, line: 104, baseType: !269, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !270, line: 77, baseType: !271)
!270 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !270, line: 77, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !122, file: !4, line: 105, baseType: !269, size: 64, align: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !122, file: !4, line: 106, baseType: !44, size: 64, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !122, file: !4, line: 107, baseType: !230, size: 32, align: 32, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !122, file: !4, line: 109, baseType: !136, size: 64, align: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !122, file: !4, line: 110, baseType: !278, size: 64, align: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !280, line: 39, baseType: !281)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !280, line: 41, size: 192, align: 64, elements: !282)
!282 = !{!283, !284, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !281, file: !280, line: 43, baseType: !44, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !281, file: !280, line: 44, baseType: !136, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !281, file: !280, line: 45, baseType: !136, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !122, file: !4, line: 111, baseType: !278, size: 64, align: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !122, file: !4, line: 112, baseType: !278, size: 64, align: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !122, file: !4, line: 113, baseType: !289, size: 48, align: 8, offset: 704)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 6)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !122, file: !4, line: 117, baseType: !230, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !122, file: !4, line: 118, baseType: !230, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !122, file: !4, line: 119, baseType: !230, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !122, file: !4, line: 120, baseType: !230, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !122, file: !4, line: 121, baseType: !230, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !122, file: !4, line: 122, baseType: !230, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !122, file: !4, line: 124, baseType: !178, size: 64, align: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !122, file: !4, line: 125, baseType: !178, size: 64, align: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !53, file: !57, line: 38, baseType: !103, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !53, file: !57, line: 39, baseType: !103, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !53, file: !57, line: 40, baseType: !103, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !53, file: !57, line: 41, baseType: !103, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !53, file: !57, line: 42, baseType: !103, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !53, file: !57, line: 43, baseType: !103, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !53, file: !57, line: 44, baseType: !103, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !53, file: !57, line: 45, baseType: !103, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !53, file: !57, line: 46, baseType: !62, size: 64, align: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !53, file: !57, line: 47, baseType: !62, size: 64, align: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !53, file: !54, line: 27, baseType: !62, size: 64, align: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !53, file: !54, line: 28, baseType: !62, size: 64, align: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !53, file: !54, line: 30, baseType: !58, size: 32, align: 32, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !53, file: !54, line: 31, baseType: !62, size: 64, align: 64, offset: 2112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !53, file: !54, line: 32, baseType: !62, size: 64, align: 64, offset: 2176)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !53, file: !54, line: 34, baseType: !58, size: 32, align: 32, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !53, file: !54, line: 35, baseType: !58, size: 32, align: 32, offset: 2272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !53, file: !54, line: 36, baseType: !58, size: 32, align: 32, offset: 2304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !53, file: !54, line: 38, baseType: !58, size: 32, align: 32, offset: 2336)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !53, file: !54, line: 38, baseType: !58, size: 32, align: 32, offset: 2368)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !53, file: !54, line: 38, baseType: !58, size: 32, align: 32, offset: 2400)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !53, file: !54, line: 38, baseType: !58, size: 32, align: 32, offset: 2432)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !76, line: 113, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !325, line: 25, size: 1920, align: 64, elements: !326)
!325 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !57, line: 3, baseType: !58, size: 32, align: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !324, file: !57, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !324, file: !57, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !324, file: !57, line: 9, baseType: !62, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !324, file: !57, line: 10, baseType: !58, size: 32, align: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !324, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !324, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !324, file: !57, line: 11, baseType: !62, size: 64, align: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !324, file: !57, line: 13, baseType: !68, size: 16, align: 16, offset: 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !324, file: !57, line: 14, baseType: !62, size: 64, align: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !324, file: !57, line: 15, baseType: !62, size: 64, align: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !324, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !324, file: !57, line: 17, baseType: !62, size: 64, align: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !324, file: !57, line: 19, baseType: !74, size: 64, align: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !324, file: !57, line: 19, baseType: !74, size: 64, align: 64, offset: 832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !324, file: !57, line: 21, baseType: !62, size: 64, align: 64, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !324, file: !57, line: 22, baseType: !62, size: 64, align: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !324, file: !57, line: 23, baseType: !62, size: 64, align: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !324, file: !57, line: 24, baseType: !62, size: 64, align: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !324, file: !57, line: 26, baseType: !62, size: 64, align: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !324, file: !57, line: 27, baseType: !62, size: 64, align: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !324, file: !57, line: 28, baseType: !62, size: 64, align: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !324, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 1344)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !324, file: !57, line: 30, baseType: !62, size: 64, align: 64, offset: 1408)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !324, file: !57, line: 31, baseType: !62, size: 64, align: 64, offset: 1472)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !324, file: !57, line: 32, baseType: !62, size: 64, align: 64, offset: 1536)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !324, file: !57, line: 33, baseType: !62, size: 64, align: 64, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !324, file: !57, line: 35, baseType: !120, size: 64, align: 64, offset: 1664)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !324, file: !57, line: 38, baseType: !103, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !324, file: !57, line: 39, baseType: !103, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !324, file: !57, line: 40, baseType: !103, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !324, file: !57, line: 41, baseType: !103, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !324, file: !57, line: 42, baseType: !103, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !324, file: !57, line: 43, baseType: !103, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !324, file: !57, line: 44, baseType: !103, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !324, file: !57, line: 45, baseType: !103, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !324, file: !57, line: 46, baseType: !62, size: 64, align: 64, offset: 1792)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !324, file: !57, line: 47, baseType: !62, size: 64, align: 64, offset: 1856)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !52, line: 6, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !54, line: 42, size: 39168, align: 64, elements: !368)
!368 = !{!369, !371, !372, !373, !374, !379, !380, !381, !382, !383, !384, !385, !386, !387, !391, !392, !396, !397, !398, !402, !407, !408, !409, !410, !411, !412, !413, !414, !421, !422, !423, !424, !425, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !688, !690}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !370, line: 3, baseType: !58, size: 32, align: 32)
!370 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !367, file: !370, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !367, file: !370, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !367, file: !370, line: 8, baseType: !50, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !367, file: !370, line: 9, baseType: !375, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !376, line: 75, baseType: !377)
!376 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !378, line: 139, baseType: !163)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !367, file: !370, line: 10, baseType: !375, size: 64, align: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !367, file: !370, line: 12, baseType: !62, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !367, file: !370, line: 13, baseType: !62, size: 64, align: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !367, file: !370, line: 15, baseType: !103, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !367, file: !370, line: 16, baseType: !103, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !367, file: !370, line: 17, baseType: !103, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !367, file: !370, line: 18, baseType: !103, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !367, file: !370, line: 19, baseType: !103, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !367, file: !370, line: 21, baseType: !388, size: 64, align: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !76, line: 102, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !76, line: 102, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !367, file: !370, line: 22, baseType: !58, size: 32, align: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !367, file: !370, line: 25, baseType: !393, size: 128, align: 64, offset: 640)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, align: 64, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 2)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !367, file: !370, line: 26, baseType: !58, size: 32, align: 32, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !367, file: !370, line: 27, baseType: !58, size: 32, align: 32, offset: 800)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !367, file: !370, line: 29, baseType: !399, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !76, line: 103, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !76, line: 103, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !367, file: !370, line: 30, baseType: !403, size: 64, align: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !405, line: 37, baseType: !406)
!405 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !405, line: 37, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !367, file: !370, line: 32, baseType: !62, size: 64, align: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !367, file: !370, line: 33, baseType: !62, size: 64, align: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !367, file: !370, line: 34, baseType: !62, size: 64, align: 64, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !367, file: !370, line: 35, baseType: !103, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !367, file: !370, line: 36, baseType: !103, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !367, file: !370, line: 37, baseType: !103, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !367, file: !370, line: 38, baseType: !103, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !367, file: !370, line: 40, baseType: !415, size: 128, align: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !46, line: 504, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !46, line: 506, size: 128, align: 64, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !416, file: !46, line: 508, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !46, line: 48, baseType: !163)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !416, file: !46, line: 509, baseType: !419, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !367, file: !370, line: 41, baseType: !375, size: 64, align: 64, offset: 1344)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !367, file: !370, line: 42, baseType: !58, size: 32, align: 32, offset: 1408)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !367, file: !370, line: 44, baseType: !239, size: 64, align: 64, offset: 1472)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !367, file: !370, line: 45, baseType: !239, size: 64, align: 64, offset: 1536)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !367, file: !370, line: 53, baseType: !426, size: 64, align: 64, offset: 1600)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429, !48, !58}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !76, line: 107, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !325, line: 30, size: 2240, align: 64, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !470, !474, !478, !482, !487, !564, !571, !575}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !370, line: 3, baseType: !58, size: 32, align: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !431, file: !370, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !431, file: !370, line: 6, baseType: !58, size: 32, align: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !431, file: !370, line: 8, baseType: !322, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !431, file: !370, line: 9, baseType: !375, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !431, file: !370, line: 10, baseType: !375, size: 64, align: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !431, file: !370, line: 12, baseType: !62, size: 64, align: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !431, file: !370, line: 13, baseType: !62, size: 64, align: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !431, file: !370, line: 15, baseType: !103, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !431, file: !370, line: 16, baseType: !103, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !431, file: !370, line: 17, baseType: !103, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !431, file: !370, line: 18, baseType: !103, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !431, file: !370, line: 19, baseType: !103, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !431, file: !370, line: 21, baseType: !388, size: 64, align: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !431, file: !370, line: 22, baseType: !58, size: 32, align: 32, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !431, file: !370, line: 25, baseType: !393, size: 128, align: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !431, file: !370, line: 26, baseType: !58, size: 32, align: 32, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !431, file: !370, line: 27, baseType: !58, size: 32, align: 32, offset: 800)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !431, file: !370, line: 29, baseType: !399, size: 64, align: 64, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !431, file: !370, line: 30, baseType: !403, size: 64, align: 64, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !431, file: !370, line: 32, baseType: !62, size: 64, align: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !431, file: !370, line: 33, baseType: !62, size: 64, align: 64, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !431, file: !370, line: 34, baseType: !62, size: 64, align: 64, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !431, file: !370, line: 35, baseType: !103, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !431, file: !370, line: 36, baseType: !103, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !431, file: !370, line: 37, baseType: !103, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !431, file: !370, line: 38, baseType: !103, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !431, file: !370, line: 40, baseType: !415, size: 128, align: 64, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !431, file: !370, line: 41, baseType: !375, size: 64, align: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !431, file: !370, line: 42, baseType: !58, size: 32, align: 32, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !431, file: !370, line: 44, baseType: !239, size: 64, align: 64, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !431, file: !370, line: 45, baseType: !239, size: 64, align: 64, offset: 1536)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !431, file: !370, line: 53, baseType: !426, size: 64, align: 64, offset: 1600)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !431, file: !370, line: 55, baseType: !467, size: 64, align: 64, offset: 1664)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!58, !429, !47}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !431, file: !370, line: 57, baseType: !471, size: 64, align: 64, offset: 1728)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!58, !429, !48}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !431, file: !370, line: 60, baseType: !475, size: 64, align: 64, offset: 1792)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!48, !429}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !431, file: !370, line: 62, baseType: !479, size: 64, align: 64, offset: 1856)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !429, !48, !48, !58}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !431, file: !370, line: 65, baseType: !483, size: 64, align: 64, offset: 1920)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !429, !48, !48}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !431, file: !370, line: 69, baseType: !488, size: 64, align: 64, offset: 1984)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !429, !48}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !76, line: 109, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !494, line: 15, size: 1408, align: 64, elements: !495)
!494 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!495 = !{!496, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !514, !518, !520, !521, !522, !523, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !497, line: 3, baseType: !58, size: 32, align: 32)
!497 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !493, file: !497, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !493, file: !497, line: 5, baseType: !403, size: 64, align: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !493, file: !497, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !493, file: !497, line: 8, baseType: !429, size: 64, align: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !493, file: !497, line: 9, baseType: !62, size: 64, align: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !497, line: 10, baseType: !62, size: 64, align: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !493, file: !497, line: 11, baseType: !375, size: 64, align: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !493, file: !497, line: 12, baseType: !58, size: 32, align: 32, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !493, file: !497, line: 13, baseType: !62, size: 64, align: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !493, file: !497, line: 15, baseType: !508, size: 64, align: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !76, line: 108, baseType: !513)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !76, line: 108, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !493, file: !497, line: 17, baseType: !515, size: 64, align: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!48, !511}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !493, file: !519, line: 5, baseType: !62, size: 64, align: 64, offset: 704)
!519 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !493, file: !519, line: 6, baseType: !62, size: 64, align: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !493, file: !519, line: 7, baseType: !375, size: 64, align: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !493, file: !519, line: 9, baseType: !403, size: 64, align: 64, offset: 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !493, file: !519, line: 10, baseType: !524, size: 64, align: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !76, line: 111, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !527, line: 13, size: 576, align: 64, elements: !528)
!527 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!528 = !{!529, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !545, !546}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !530, line: 3, baseType: !58, size: 32, align: 32)
!530 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !526, file: !530, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !526, file: !530, line: 6, baseType: !375, size: 64, align: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !526, file: !530, line: 8, baseType: !62, size: 64, align: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !526, file: !530, line: 9, baseType: !62, size: 64, align: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !526, file: !530, line: 10, baseType: !62, size: 64, align: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !526, file: !530, line: 11, baseType: !58, size: 32, align: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !526, file: !530, line: 14, baseType: !103, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !526, file: !530, line: 15, baseType: !103, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !526, file: !530, line: 18, baseType: !103, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !526, file: !530, line: 19, baseType: !103, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !526, file: !530, line: 20, baseType: !103, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !526, file: !530, line: 21, baseType: !103, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !526, file: !530, line: 22, baseType: !544, size: 64, align: 8, offset: 360)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, align: 8, elements: !98)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !526, file: !530, line: 26, baseType: !43, size: 64, align: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !530, line: 28, baseType: !524, size: 64, align: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !493, file: !519, line: 12, baseType: !103, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !493, file: !519, line: 13, baseType: !62, size: 64, align: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !493, file: !519, line: 14, baseType: !58, size: 32, align: 32, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !493, file: !519, line: 15, baseType: !62, size: 64, align: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !493, file: !519, line: 17, baseType: !103, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !493, file: !519, line: 18, baseType: !103, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !493, file: !519, line: 19, baseType: !103, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !493, file: !519, line: 20, baseType: !103, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !493, file: !519, line: 22, baseType: !103, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !493, file: !519, line: 23, baseType: !103, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !493, file: !519, line: 24, baseType: !103, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !493, file: !519, line: 25, baseType: !103, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !493, file: !519, line: 26, baseType: !103, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !493, file: !519, line: 31, baseType: !561, size: 64, align: 64, offset: 1344)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!62, !491}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !431, file: !370, line: 70, baseType: !565, size: 64, align: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!568, !429, !48}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !76, line: 110, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !76, line: 110, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !431, file: !370, line: 71, baseType: !572, size: 64, align: 64, offset: 2112)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!58, !48, !48}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !431, file: !370, line: 73, baseType: !572, size: 64, align: 64, offset: 2176)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !367, file: !370, line: 55, baseType: !467, size: 64, align: 64, offset: 1664)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !367, file: !370, line: 57, baseType: !471, size: 64, align: 64, offset: 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !367, file: !370, line: 60, baseType: !475, size: 64, align: 64, offset: 1792)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !367, file: !370, line: 62, baseType: !479, size: 64, align: 64, offset: 1856)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !367, file: !370, line: 65, baseType: !483, size: 64, align: 64, offset: 1920)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !367, file: !370, line: 69, baseType: !488, size: 64, align: 64, offset: 1984)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !367, file: !370, line: 70, baseType: !565, size: 64, align: 64, offset: 2048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !367, file: !370, line: 71, baseType: !572, size: 64, align: 64, offset: 2112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !367, file: !370, line: 73, baseType: !572, size: 64, align: 64, offset: 2176)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !367, file: !54, line: 46, baseType: !239, size: 64, align: 64, offset: 2240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !367, file: !54, line: 47, baseType: !239, size: 64, align: 64, offset: 2304)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !367, file: !54, line: 48, baseType: !588, size: 64, align: 64, offset: 2368)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !52, line: 8, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !52, line: 8, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !367, file: !54, line: 49, baseType: !239, size: 64, align: 64, offset: 2432)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !367, file: !54, line: 51, baseType: !62, size: 64, align: 64, offset: 2496)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !367, file: !54, line: 53, baseType: !62, size: 64, align: 64, offset: 2560)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !367, file: !54, line: 54, baseType: !62, size: 64, align: 64, offset: 2624)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !367, file: !54, line: 55, baseType: !62, size: 64, align: 64, offset: 2688)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !367, file: !54, line: 56, baseType: !62, size: 64, align: 64, offset: 2752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !367, file: !54, line: 57, baseType: !58, size: 32, align: 32, offset: 2816)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !367, file: !54, line: 59, baseType: !103, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !367, file: !54, line: 60, baseType: !103, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !367, file: !54, line: 62, baseType: !103, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !367, file: !54, line: 63, baseType: !103, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !367, file: !54, line: 64, baseType: !103, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !367, file: !54, line: 65, baseType: !103, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !367, file: !54, line: 66, baseType: !103, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !367, file: !54, line: 67, baseType: !103, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !367, file: !54, line: 68, baseType: !103, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !367, file: !54, line: 69, baseType: !103, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !367, file: !54, line: 70, baseType: !103, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !367, file: !54, line: 71, baseType: !103, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !367, file: !54, line: 72, baseType: !103, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !367, file: !54, line: 74, baseType: !58, size: 32, align: 32, offset: 2880)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !367, file: !54, line: 75, baseType: !58, size: 32, align: 32, offset: 2912)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !367, file: !54, line: 76, baseType: !58, size: 32, align: 32, offset: 2944)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !367, file: !54, line: 77, baseType: !58, size: 32, align: 32, offset: 2976)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !367, file: !54, line: 79, baseType: !403, size: 64, align: 64, offset: 3008)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !367, file: !54, line: 80, baseType: !239, size: 64, align: 64, offset: 3072)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !367, file: !54, line: 81, baseType: !239, size: 64, align: 64, offset: 3136)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !367, file: !54, line: 83, baseType: !278, size: 64, align: 64, offset: 3200)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !367, file: !54, line: 84, baseType: !230, size: 32, align: 32, offset: 3264)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !367, file: !54, line: 87, baseType: !58, size: 32, align: 32, offset: 3296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !367, file: !54, line: 91, baseType: !239, size: 64, align: 64, offset: 3328)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !367, file: !54, line: 92, baseType: !415, size: 128, align: 64, offset: 3392)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !367, file: !54, line: 93, baseType: !415, size: 128, align: 64, offset: 3520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !367, file: !54, line: 95, baseType: !58, size: 32, align: 32, offset: 3648)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !367, file: !54, line: 96, baseType: !58, size: 32, align: 32, offset: 3680)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !367, file: !54, line: 97, baseType: !58, size: 32, align: 32, offset: 3712)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !367, file: !54, line: 100, baseType: !239, size: 64, align: 64, offset: 3776)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !367, file: !54, line: 103, baseType: !239, size: 64, align: 64, offset: 3840)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !367, file: !54, line: 106, baseType: !239, size: 64, align: 64, offset: 3904)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !367, file: !54, line: 108, baseType: !403, size: 64, align: 64, offset: 3968)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !367, file: !54, line: 109, baseType: !239, size: 64, align: 64, offset: 4032)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !367, file: !54, line: 111, baseType: !239, size: 64, align: 64, offset: 4096)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !367, file: !54, line: 114, baseType: !43, size: 64, align: 64, offset: 4160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !367, file: !54, line: 116, baseType: !403, size: 64, align: 64, offset: 4224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !367, file: !54, line: 117, baseType: !636, size: 32768, align: 64, offset: 4288)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 32768, align: 64, elements: !686)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !638, line: 10, size: 128, align: 64, elements: !639)
!638 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!639 = !{!640, !685}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !637, file: !638, line: 11, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !638, line: 7, baseType: !643)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !645, !48, !47, !47, !62, !278}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !52, line: 7, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !648, line: 15, size: 1600, align: 64, elements: !649)
!648 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !497, line: 3, baseType: !58, size: 32, align: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !647, file: !497, line: 4, baseType: !58, size: 32, align: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !647, file: !497, line: 5, baseType: !403, size: 64, align: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !647, file: !497, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !647, file: !497, line: 8, baseType: !365, size: 64, align: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !647, file: !497, line: 9, baseType: !62, size: 64, align: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !497, line: 10, baseType: !62, size: 64, align: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !647, file: !497, line: 11, baseType: !375, size: 64, align: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !647, file: !497, line: 12, baseType: !58, size: 32, align: 32, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !647, file: !497, line: 13, baseType: !62, size: 64, align: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !647, file: !497, line: 15, baseType: !508, size: 64, align: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !647, file: !497, line: 17, baseType: !515, size: 64, align: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !647, file: !519, line: 5, baseType: !62, size: 64, align: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !647, file: !519, line: 6, baseType: !62, size: 64, align: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !647, file: !519, line: 7, baseType: !375, size: 64, align: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !647, file: !519, line: 9, baseType: !403, size: 64, align: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !647, file: !519, line: 10, baseType: !524, size: 64, align: 64, offset: 960)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !647, file: !519, line: 12, baseType: !103, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !647, file: !519, line: 13, baseType: !62, size: 64, align: 64, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !647, file: !519, line: 14, baseType: !58, size: 32, align: 32, offset: 1152)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !647, file: !519, line: 15, baseType: !62, size: 64, align: 64, offset: 1216)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !647, file: !519, line: 17, baseType: !103, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !647, file: !519, line: 18, baseType: !103, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !647, file: !519, line: 19, baseType: !103, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !647, file: !519, line: 20, baseType: !103, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !647, file: !519, line: 22, baseType: !103, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !647, file: !519, line: 23, baseType: !103, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !647, file: !519, line: 24, baseType: !103, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !647, file: !519, line: 25, baseType: !103, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !647, file: !519, line: 26, baseType: !103, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !647, file: !519, line: 31, baseType: !561, size: 64, align: 64, offset: 1344)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !647, file: !648, line: 18, baseType: !239, size: 64, align: 64, offset: 1408)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !647, file: !648, line: 20, baseType: !375, size: 64, align: 64, offset: 1472)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !647, file: !648, line: 21, baseType: !58, size: 32, align: 32, offset: 1536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !647, file: !648, line: 22, baseType: !58, size: 32, align: 32, offset: 1568)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !637, file: !638, line: 12, baseType: !47, size: 8, align: 8, offset: 64)
!686 = !{!687}
!687 = !DISubrange(count: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !367, file: !54, line: 118, baseType: !689, size: 2048, align: 8, offset: 37056)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, align: 8, elements: !686)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !367, file: !54, line: 120, baseType: !572, size: 64, align: 64, offset: 39104)
!691 = !{i32 2, !"Dwarf Version", i32 4}
!692 = !{i32 2, !"Debug Info Version", i32 3}
!693 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!694 = distinct !DISubprogram(name: "irc_servers_reconnect_init", scope: !695, file: !695, line: 108, type: !227, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!695 = !DIFile(filename: "irc-servers-reconnect.c", directory: "/home/lichi/Desktop/irssi/task1")
!696 = !{}
!697 = !DILocation(line: 110, column: 2, scope: !694)
!698 = !DILocation(line: 111, column: 2, scope: !694)
!699 = !DILocation(line: 112, column: 2, scope: !694)
!700 = !DILocation(line: 113, column: 2, scope: !694)
!701 = !DILocation(line: 114, column: 2, scope: !694)
!702 = !DILocation(line: 115, column: 1, scope: !694)
!703 = distinct !DISubprogram(name: "sig_server_connect_copy", scope: !695, file: !695, line: 31, type: !704, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !706, !50}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!707 = !DILocalVariable(name: "dest", arg: 1, scope: !703, file: !695, line: 31, type: !706)
!708 = !DIExpression()
!709 = !DILocation(line: 31, column: 58, scope: !703)
!710 = !DILocalVariable(name: "src", arg: 2, scope: !703, file: !695, line: 32, type: !50)
!711 = !DILocation(line: 32, column: 33, scope: !703)
!712 = !DILocalVariable(name: "rec", scope: !703, file: !695, line: 34, type: !50)
!713 = !DILocation(line: 34, column: 26, scope: !703)
!714 = !DILocation(line: 36, column: 2, scope: !703)
!715 = distinct !{!715, !714}
!716 = !DILocation(line: 36, column: 10, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !695, discriminator: 1)
!718 = distinct !DILexicalBlock(scope: !719, file: !695, line: 36, column: 10)
!719 = distinct !DILexicalBlock(scope: !703, file: !695, line: 36, column: 4)
!720 = !DILocation(line: 36, column: 15, scope: !717)
!721 = !DILocation(line: 36, column: 5, scope: !722)
!722 = !DILexicalBlockFile(scope: !723, file: !695, discriminator: 2)
!723 = distinct !DILexicalBlock(scope: !718, file: !695, line: 36, column: 3)
!724 = !DILocation(line: 36, column: 14, scope: !725)
!725 = !DILexicalBlockFile(scope: !726, file: !695, discriminator: 3)
!726 = distinct !DILexicalBlock(scope: !718, file: !695, line: 36, column: 12)
!727 = !DILocation(line: 36, column: 99, scope: !725)
!728 = !DILocation(line: 36, column: 110, scope: !729)
!729 = !DILexicalBlockFile(scope: !719, file: !695, discriminator: 4)
!730 = !DILocation(line: 37, column: 103, scope: !731)
!731 = distinct !DILexicalBlock(scope: !703, file: !695, line: 37, column: 6)
!732 = !DILocation(line: 37, column: 85, scope: !731)
!733 = !DILocation(line: 37, column: 62, scope: !731)
!734 = !DILocation(line: 37, column: 61, scope: !731)
!735 = !DILocation(line: 37, column: 36, scope: !736)
!736 = !DILexicalBlockFile(scope: !731, file: !695, discriminator: 3)
!737 = !DILocation(line: 37, column: 9, scope: !731)
!738 = !DILocation(line: 37, column: 6, scope: !703)
!739 = !DILocation(line: 37, column: 8, scope: !740)
!740 = !DILexicalBlockFile(scope: !731, file: !695, discriminator: 1)
!741 = !DILocation(line: 37, column: 6, scope: !742)
!742 = !DILexicalBlockFile(scope: !703, file: !695, discriminator: 2)
!743 = !DILocation(line: 38, column: 3, scope: !731)
!744 = !DILocation(line: 40, column: 36, scope: !703)
!745 = !DILocation(line: 40, column: 9, scope: !703)
!746 = !DILocation(line: 40, column: 6, scope: !703)
!747 = !DILocation(line: 41, column: 20, scope: !703)
!748 = !DILocation(line: 41, column: 2, scope: !703)
!749 = !DILocation(line: 41, column: 7, scope: !703)
!750 = !DILocation(line: 41, column: 17, scope: !703)
!751 = !DILocation(line: 42, column: 26, scope: !703)
!752 = !DILocation(line: 42, column: 31, scope: !703)
!753 = !DILocation(line: 42, column: 2, scope: !703)
!754 = !DILocation(line: 42, column: 7, scope: !703)
!755 = !DILocation(line: 42, column: 24, scope: !703)
!756 = !DILocation(line: 43, column: 25, scope: !703)
!757 = !DILocation(line: 43, column: 30, scope: !703)
!758 = !DILocation(line: 43, column: 2, scope: !703)
!759 = !DILocation(line: 43, column: 7, scope: !703)
!760 = !DILocation(line: 43, column: 23, scope: !703)
!761 = !DILocation(line: 44, column: 32, scope: !703)
!762 = !DILocation(line: 44, column: 37, scope: !703)
!763 = !DILocation(line: 44, column: 9, scope: !703)
!764 = !DILocation(line: 44, column: 14, scope: !703)
!765 = !DILocation(line: 44, column: 30, scope: !703)
!766 = !DILocation(line: 45, column: 19, scope: !703)
!767 = !DILocation(line: 45, column: 24, scope: !703)
!768 = !DILocation(line: 45, column: 2, scope: !703)
!769 = !DILocation(line: 45, column: 7, scope: !703)
!770 = !DILocation(line: 45, column: 17, scope: !703)
!771 = !DILocation(line: 46, column: 19, scope: !703)
!772 = !DILocation(line: 46, column: 24, scope: !703)
!773 = !DILocation(line: 46, column: 2, scope: !703)
!774 = !DILocation(line: 46, column: 7, scope: !703)
!775 = !DILocation(line: 46, column: 17, scope: !703)
!776 = !DILocation(line: 47, column: 18, scope: !703)
!777 = !DILocation(line: 47, column: 23, scope: !703)
!778 = !DILocation(line: 47, column: 2, scope: !703)
!779 = !DILocation(line: 47, column: 7, scope: !703)
!780 = !DILocation(line: 47, column: 16, scope: !703)
!781 = !DILocation(line: 48, column: 19, scope: !703)
!782 = !DILocation(line: 48, column: 24, scope: !703)
!783 = !DILocation(line: 48, column: 2, scope: !703)
!784 = !DILocation(line: 48, column: 7, scope: !703)
!785 = !DILocation(line: 48, column: 17, scope: !703)
!786 = !DILocation(line: 49, column: 27, scope: !703)
!787 = !DILocation(line: 49, column: 32, scope: !703)
!788 = !DILocation(line: 49, column: 18, scope: !703)
!789 = !DILocation(line: 49, column: 2, scope: !703)
!790 = !DILocation(line: 49, column: 7, scope: !703)
!791 = !DILocation(line: 49, column: 16, scope: !703)
!792 = !DILocation(line: 50, column: 33, scope: !703)
!793 = !DILocation(line: 50, column: 38, scope: !703)
!794 = !DILocation(line: 50, column: 24, scope: !703)
!795 = !DILocation(line: 50, column: 2, scope: !703)
!796 = !DILocation(line: 50, column: 7, scope: !703)
!797 = !DILocation(line: 50, column: 22, scope: !703)
!798 = !DILocation(line: 51, column: 24, scope: !703)
!799 = !DILocation(line: 51, column: 29, scope: !703)
!800 = !DILocation(line: 51, column: 2, scope: !703)
!801 = !DILocation(line: 51, column: 7, scope: !703)
!802 = !DILocation(line: 51, column: 22, scope: !703)
!803 = !DILocation(line: 52, column: 23, scope: !703)
!804 = !DILocation(line: 52, column: 28, scope: !703)
!805 = !DILocation(line: 52, column: 2, scope: !703)
!806 = !DILocation(line: 52, column: 7, scope: !703)
!807 = !DILocation(line: 52, column: 21, scope: !703)
!808 = !DILocation(line: 53, column: 23, scope: !703)
!809 = !DILocation(line: 53, column: 28, scope: !703)
!810 = !DILocation(line: 53, column: 2, scope: !703)
!811 = !DILocation(line: 53, column: 7, scope: !703)
!812 = !DILocation(line: 53, column: 21, scope: !703)
!813 = !DILocation(line: 54, column: 33, scope: !703)
!814 = !DILocation(line: 54, column: 10, scope: !703)
!815 = !DILocation(line: 54, column: 3, scope: !703)
!816 = !DILocation(line: 54, column: 8, scope: !703)
!817 = !DILocation(line: 55, column: 1, scope: !703)
!818 = !DILocation(line: 55, column: 1, scope: !819)
!819 = !DILexicalBlockFile(scope: !703, file: !695, discriminator: 1)
!820 = distinct !DISubprogram(name: "sig_server_reconnect_save_status", scope: !695, file: !695, line: 57, type: !821, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !50, !365}
!823 = !DILocalVariable(name: "conn", arg: 1, scope: !820, file: !695, line: 57, type: !50)
!824 = !DILocation(line: 57, column: 70, scope: !820)
!825 = !DILocalVariable(name: "server", arg: 2, scope: !820, file: !695, line: 58, type: !365)
!826 = !DILocation(line: 58, column: 27, scope: !820)
!827 = !DILocation(line: 60, column: 103, scope: !828)
!828 = distinct !DILexicalBlock(scope: !820, file: !695, line: 60, column: 6)
!829 = !DILocation(line: 60, column: 85, scope: !828)
!830 = !DILocation(line: 60, column: 62, scope: !828)
!831 = !DILocation(line: 60, column: 61, scope: !828)
!832 = !DILocation(line: 60, column: 36, scope: !833)
!833 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 7)
!834 = !DILocation(line: 60, column: 9, scope: !828)
!835 = !DILocation(line: 60, column: 32, scope: !828)
!836 = !DILocation(line: 60, column: 8, scope: !837)
!837 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 1)
!838 = !DILocation(line: 60, column: 32, scope: !839)
!839 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 2)
!840 = !DILocation(line: 60, column: 116, scope: !841)
!841 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 3)
!842 = !DILocation(line: 60, column: 98, scope: !841)
!843 = !DILocation(line: 60, column: 83, scope: !841)
!844 = !DILocation(line: 60, column: 82, scope: !841)
!845 = !DILocation(line: 60, column: 57, scope: !846)
!846 = !DILexicalBlockFile(scope: !841, file: !695, discriminator: 8)
!847 = !DILocation(line: 60, column: 38, scope: !841)
!848 = !DILocation(line: 60, column: 64, scope: !841)
!849 = !DILocation(line: 60, column: 37, scope: !850)
!850 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 4)
!851 = !DILocation(line: 60, column: 64, scope: !852)
!852 = !DILexicalBlockFile(scope: !828, file: !695, discriminator: 5)
!853 = !DILocation(line: 61, column: 7, scope: !828)
!854 = !DILocation(line: 61, column: 15, scope: !828)
!855 = !DILocation(line: 60, column: 6, scope: !856)
!856 = !DILexicalBlockFile(scope: !820, file: !695, discriminator: 6)
!857 = !DILocation(line: 62, column: 3, scope: !828)
!858 = !DILocation(line: 64, column: 9, scope: !820)
!859 = !DILocation(line: 64, column: 15, scope: !820)
!860 = !DILocation(line: 64, column: 2, scope: !820)
!861 = !DILocation(line: 65, column: 43, scope: !820)
!862 = !DILocation(line: 65, column: 19, scope: !820)
!863 = !DILocation(line: 65, column: 2, scope: !820)
!864 = !DILocation(line: 65, column: 8, scope: !820)
!865 = !DILocation(line: 65, column: 17, scope: !820)
!866 = !DILocation(line: 67, column: 9, scope: !820)
!867 = !DILocation(line: 67, column: 15, scope: !820)
!868 = !DILocation(line: 67, column: 2, scope: !820)
!869 = !DILocation(line: 68, column: 28, scope: !820)
!870 = !DILocation(line: 68, column: 36, scope: !820)
!871 = !DILocation(line: 68, column: 19, scope: !820)
!872 = !DILocation(line: 68, column: 2, scope: !820)
!873 = !DILocation(line: 68, column: 8, scope: !820)
!874 = !DILocation(line: 68, column: 17, scope: !820)
!875 = !DILocation(line: 69, column: 1, scope: !820)
!876 = !DILocation(line: 69, column: 1, scope: !877)
!877 = !DILexicalBlockFile(scope: !820, file: !695, discriminator: 1)
!878 = distinct !DISubprogram(name: "sig_connected", scope: !695, file: !695, line: 71, type: !879, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !365}
!881 = !DILocalVariable(name: "server", arg: 1, scope: !878, file: !695, line: 71, type: !365)
!882 = !DILocation(line: 71, column: 43, scope: !878)
!883 = !DILocation(line: 73, column: 87, scope: !884)
!884 = distinct !DILexicalBlock(scope: !878, file: !695, line: 73, column: 6)
!885 = !DILocation(line: 73, column: 69, scope: !884)
!886 = !DILocation(line: 73, column: 54, scope: !884)
!887 = !DILocation(line: 73, column: 53, scope: !884)
!888 = !DILocation(line: 73, column: 28, scope: !889)
!889 = !DILexicalBlockFile(scope: !884, file: !695, discriminator: 4)
!890 = !DILocation(line: 73, column: 9, scope: !884)
!891 = !DILocation(line: 73, column: 32, scope: !884)
!892 = !DILocation(line: 73, column: 8, scope: !893)
!893 = !DILexicalBlockFile(scope: !884, file: !695, discriminator: 1)
!894 = !DILocation(line: 73, column: 32, scope: !895)
!895 = !DILexicalBlockFile(scope: !884, file: !695, discriminator: 2)
!896 = !DILocation(line: 73, column: 36, scope: !897)
!897 = !DILexicalBlockFile(scope: !884, file: !695, discriminator: 3)
!898 = !DILocation(line: 73, column: 44, scope: !897)
!899 = !DILocation(line: 73, column: 53, scope: !897)
!900 = !DILocation(line: 73, column: 6, scope: !897)
!901 = !DILocation(line: 74, column: 3, scope: !884)
!902 = !DILocation(line: 76, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !878, file: !695, line: 76, column: 6)
!904 = !DILocation(line: 76, column: 14, scope: !903)
!905 = !DILocation(line: 76, column: 23, scope: !903)
!906 = !DILocation(line: 76, column: 35, scope: !903)
!907 = !DILocation(line: 76, column: 6, scope: !878)
!908 = !DILocation(line: 77, column: 24, scope: !903)
!909 = !DILocation(line: 77, column: 32, scope: !903)
!910 = !DILocation(line: 77, column: 40, scope: !903)
!911 = !DILocation(line: 77, column: 49, scope: !903)
!912 = !DILocation(line: 77, column: 3, scope: !903)
!913 = !DILocation(line: 78, column: 1, scope: !878)
!914 = distinct !DISubprogram(name: "event_nick_collision", scope: !695, file: !695, line: 80, type: !915, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !365, !48}
!917 = !DILocalVariable(name: "server", arg: 1, scope: !914, file: !695, line: 80, type: !365)
!918 = !DILocation(line: 80, column: 50, scope: !914)
!919 = !DILocalVariable(name: "data", arg: 2, scope: !914, file: !695, line: 80, type: !48)
!920 = !DILocation(line: 80, column: 70, scope: !914)
!921 = !DILocalVariable(name: "new_connect", scope: !914, file: !695, line: 82, type: !375)
!922 = !DILocation(line: 82, column: 9, scope: !914)
!923 = !DILocation(line: 84, column: 87, scope: !924)
!924 = distinct !DILexicalBlock(scope: !914, file: !695, line: 84, column: 6)
!925 = !DILocation(line: 84, column: 69, scope: !924)
!926 = !DILocation(line: 84, column: 54, scope: !924)
!927 = !DILocation(line: 84, column: 53, scope: !924)
!928 = !DILocation(line: 84, column: 28, scope: !929)
!929 = !DILexicalBlockFile(scope: !924, file: !695, discriminator: 3)
!930 = !DILocation(line: 84, column: 9, scope: !924)
!931 = !DILocation(line: 84, column: 6, scope: !914)
!932 = !DILocation(line: 84, column: 8, scope: !933)
!933 = !DILexicalBlockFile(scope: !924, file: !695, discriminator: 1)
!934 = !DILocation(line: 84, column: 6, scope: !935)
!935 = !DILexicalBlockFile(scope: !914, file: !695, discriminator: 2)
!936 = !DILocation(line: 85, column: 3, scope: !924)
!937 = !DILocation(line: 91, column: 16, scope: !914)
!938 = !DILocation(line: 91, column: 24, scope: !914)
!939 = !DILocation(line: 91, column: 36, scope: !914)
!940 = !DILocation(line: 92, column: 3, scope: !914)
!941 = !DILocation(line: 92, column: 45, scope: !914)
!942 = !DILocation(line: 91, column: 40, scope: !914)
!943 = !DILocation(line: 91, column: 14, scope: !914)
!944 = !DILocation(line: 93, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !914, file: !695, line: 93, column: 6)
!946 = !DILocation(line: 93, column: 14, scope: !945)
!947 = !DILocation(line: 93, column: 29, scope: !945)
!948 = !DILocation(line: 93, column: 27, scope: !945)
!949 = !DILocation(line: 93, column: 6, scope: !914)
!950 = !DILocation(line: 94, column: 26, scope: !945)
!951 = !DILocation(line: 94, column: 3, scope: !945)
!952 = !DILocation(line: 94, column: 11, scope: !945)
!953 = !DILocation(line: 94, column: 24, scope: !945)
!954 = !DILocation(line: 96, column: 9, scope: !914)
!955 = !DILocation(line: 96, column: 17, scope: !914)
!956 = !DILocation(line: 96, column: 32, scope: !914)
!957 = !DILocation(line: 97, column: 1, scope: !914)
!958 = !DILocation(line: 97, column: 1, scope: !959)
!959 = !DILexicalBlockFile(scope: !914, file: !695, discriminator: 1)
!960 = distinct !DISubprogram(name: "event_kill", scope: !695, file: !695, line: 99, type: !961, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !365, !48, !48, !48}
!963 = !DILocalVariable(name: "server", arg: 1, scope: !960, file: !695, line: 99, type: !365)
!964 = !DILocation(line: 99, column: 40, scope: !960)
!965 = !DILocalVariable(name: "data", arg: 2, scope: !960, file: !695, line: 99, type: !48)
!966 = !DILocation(line: 99, column: 60, scope: !960)
!967 = !DILocalVariable(name: "nick", arg: 3, scope: !960, file: !695, line: 100, type: !48)
!968 = !DILocation(line: 100, column: 22, scope: !960)
!969 = !DILocalVariable(name: "addr", arg: 4, scope: !960, file: !695, line: 100, type: !48)
!970 = !DILocation(line: 100, column: 40, scope: !960)
!971 = !DILocation(line: 102, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !960, file: !695, line: 102, column: 6)
!973 = !DILocation(line: 102, column: 11, scope: !972)
!974 = !DILocation(line: 102, column: 18, scope: !972)
!975 = !DILocation(line: 102, column: 22, scope: !976)
!976 = !DILexicalBlockFile(scope: !972, file: !695, discriminator: 1)
!977 = !DILocation(line: 102, column: 30, scope: !976)
!978 = !DILocation(line: 102, column: 6, scope: !976)
!979 = !DILocation(line: 104, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !695, line: 102, column: 46)
!981 = !DILocation(line: 104, column: 11, scope: !980)
!982 = !DILocation(line: 104, column: 24, scope: !980)
!983 = !DILocation(line: 105, column: 2, scope: !980)
!984 = !DILocation(line: 106, column: 1, scope: !960)
!985 = distinct !DISubprogram(name: "irc_servers_reconnect_deinit", scope: !695, file: !695, line: 117, type: !227, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !696)
!986 = !DILocation(line: 119, column: 2, scope: !985)
!987 = !DILocation(line: 120, column: 2, scope: !985)
!988 = !DILocation(line: 121, column: 2, scope: !985)
!989 = !DILocation(line: 122, column: 2, scope: !985)
!990 = !DILocation(line: 123, column: 2, scope: !985)
!991 = !DILocation(line: 124, column: 1, scope: !985)
