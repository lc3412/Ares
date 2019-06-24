; ModuleID = './line145-sasl.o.i'
source_filename = "./line145-sasl.o.i"
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
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"AUTHENTICATE +\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AUTHENTICATE %.*s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sasl_disconnect_on_failure\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 001\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event 375\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"server cap ack sasl\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server cap end\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"event authenticate\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"event 903\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"event 902\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"event 904\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"event 905\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 906\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"event 907\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"sasl\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"server sasl failure\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"The server did not offer SASL\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"AUTHENTICATE PLAIN\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"AUTHENTICATE EXTERNAL\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"AUTHENTICATE *\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"The authentication timed out\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"The server sent an invalid payload\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"server sasl success\00", align 1
@__func__.sasl_disconnected = private unnamed_addr constant [18 x i8] c"sasl_disconnected\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @sasl_send_response(%struct._IRC_SERVER_REC*, %struct._GString*) #0 !dbg !679 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !684, metadata !685), !dbg !686
  store %struct._GString* %1, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !687, metadata !685), !dbg !688
  call void @llvm.dbg.declare(metadata i8** %5, metadata !689, metadata !685), !dbg !690
  call void @llvm.dbg.declare(metadata i64* %6, metadata !691, metadata !685), !dbg !694
  call void @llvm.dbg.declare(metadata i64* %7, metadata !695, metadata !685), !dbg !696
  call void @llvm.dbg.declare(metadata i64* %8, metadata !697, metadata !685), !dbg !698
  %9 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !699
  %10 = icmp eq %struct._GString* %9, null, !dbg !701
  br i1 %10, label %11, label %13, !dbg !702

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !703
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !705
  br label %52, !dbg !706

; <label>:13:                                     ; preds = %2
  %14 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !707
  %15 = getelementptr inbounds %struct._GString, %struct._GString* %14, i32 0, i32 0, !dbg !708
  %16 = load i8*, i8** %15, align 8, !dbg !708
  %17 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !709
  %18 = getelementptr inbounds %struct._GString, %struct._GString* %17, i32 0, i32 1, !dbg !710
  %19 = load i64, i64* %18, align 8, !dbg !710
  %20 = call noalias i8* @g_base64_encode(i8* %16, i64 %19), !dbg !711
  store i8* %20, i8** %5, align 8, !dbg !712
  %21 = load i8*, i8** %5, align 8, !dbg !713
  %22 = call i64 @strlen(i8* %21) #5, !dbg !714
  store i64 %22, i64* %7, align 8, !dbg !715
  store i64 0, i64* %6, align 8, !dbg !716
  br label %23, !dbg !718

; <label>:23:                                     ; preds = %41, %13
  %24 = load i64, i64* %6, align 8, !dbg !719
  %25 = load i64, i64* %7, align 8, !dbg !722
  %26 = icmp ult i64 %24, %25, !dbg !723
  br i1 %26, label %27, label %44, !dbg !724

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* %7, align 8, !dbg !725
  %29 = load i64, i64* %6, align 8, !dbg !727
  %30 = sub i64 %28, %29, !dbg !728
  store i64 %30, i64* %8, align 8, !dbg !729
  %31 = load i64, i64* %8, align 8, !dbg !730
  %32 = icmp ugt i64 %31, 400, !dbg !732
  br i1 %32, label %33, label %34, !dbg !733

; <label>:33:                                     ; preds = %27
  store i64 400, i64* %8, align 8, !dbg !734
  br label %34, !dbg !735

; <label>:34:                                     ; preds = %33, %27
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !736
  %36 = load i64, i64* %8, align 8, !dbg !737
  %37 = trunc i64 %36 to i32, !dbg !738
  %38 = load i8*, i8** %5, align 8, !dbg !739
  %39 = load i64, i64* %6, align 8, !dbg !740
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !741
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 %37, i8* %40), !dbg !742
  br label %41, !dbg !743

; <label>:41:                                     ; preds = %34
  %42 = load i64, i64* %6, align 8, !dbg !744
  %43 = add i64 %42, 400, !dbg !744
  store i64 %43, i64* %6, align 8, !dbg !744
  br label %23, !dbg !746, !llvm.loop !747

; <label>:44:                                     ; preds = %23
  %45 = load i64, i64* %6, align 8, !dbg !749
  %46 = load i64, i64* %7, align 8, !dbg !751
  %47 = icmp eq i64 %45, %46, !dbg !752
  br i1 %47, label %48, label %50, !dbg !753

; <label>:48:                                     ; preds = %44
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !754
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !756
  br label %50, !dbg !757

; <label>:50:                                     ; preds = %48, %44
  %51 = load i8*, i8** %5, align 8, !dbg !758
  call void @g_free(i8* %51), !dbg !759
  br label %52, !dbg !760

; <label>:52:                                     ; preds = %50, %11
  ret void, !dbg !761
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

declare noalias i8* @g_base64_encode(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @sasl_init() #0 !dbg !763 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 1), !dbg !764
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !765
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !766
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !767
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !768
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_step to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !769
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_success to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !770
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !771
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !772
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !773
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !774
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_already to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !775
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sasl_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !776
  ret void, !dbg !777
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_sasl_over(%struct._IRC_SERVER_REC*) #0 !dbg !778 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !781, metadata !685), !dbg !782
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !783
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !783
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !785
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !786
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !787
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !788
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !790
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !790
  br i1 %10, label %11, label %12, !dbg !791

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !792

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !794

; <label>:13:                                     ; preds = %12, %11
  br label %53, !dbg !796

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !797
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 45, !dbg !799
  %17 = load i16, i16* %16, align 4, !dbg !799
  %18 = lshr i16 %17, 12, !dbg !799
  %19 = and i16 %18, 1, !dbg !799
  %20 = zext i16 %19 to i32, !dbg !799
  %21 = icmp ne i32 %20, 0, !dbg !797
  br i1 %21, label %53, label %22, !dbg !800

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !801
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 3, !dbg !802
  %25 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %24, align 8, !dbg !802
  %26 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %25, i32 0, i32 33, !dbg !803
  %27 = load i32, i32* %26, align 8, !dbg !803
  %28 = icmp ne i32 %27, 0, !dbg !804
  br i1 %28, label %29, label %53, !dbg !805

; <label>:29:                                     ; preds = %22
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !807
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 50, !dbg !810
  %32 = load %struct._GHashTable*, %struct._GHashTable** %31, align 8, !dbg !810
  %33 = icmp eq %struct._GHashTable* %32, null, !dbg !811
  br i1 %33, label %40, label %34, !dbg !812

; <label>:34:                                     ; preds = %29
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !813
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 50, !dbg !814
  %37 = load %struct._GHashTable*, %struct._GHashTable** %36, align 8, !dbg !814
  %38 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8** null, i8** null), !dbg !815
  %39 = icmp ne i32 %38, 0, !dbg !815
  br i1 %39, label %43, label %40, !dbg !816

; <label>:40:                                     ; preds = %34, %29
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !818
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0)), !dbg !820
  br label %43, !dbg !821

; <label>:43:                                     ; preds = %40, %34
  %44 = call i32 @settings_get_bool(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)), !dbg !822
  %45 = icmp ne i32 %44, 0, !dbg !822
  br i1 %45, label %46, label %52, !dbg !824

; <label>:46:                                     ; preds = %43
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !825
  %48 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %47, i32 0, i32 8, !dbg !827
  %49 = load i8, i8* %48, align 8, !dbg !828
  %50 = and i8 %49, -5, !dbg !828
  %51 = or i8 %50, 4, !dbg !828
  store i8 %51, i8* %48, align 8, !dbg !828
  call void @signal_stop(), !dbg !829
  br label %52, !dbg !830

; <label>:52:                                     ; preds = %46, %43
  br label %53, !dbg !831

; <label>:53:                                     ; preds = %13, %52, %22, %14
  ret void, !dbg !832
}

; Function Attrs: nounwind uwtable
define internal void @sasl_start(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !833 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !836, metadata !685), !dbg !837
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !838, metadata !685), !dbg !839
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !840, metadata !685), !dbg !841
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %7, metadata !842, metadata !685), !dbg !843
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !844
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %8), !dbg !845
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !846
  %10 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %9, i32 0, i32 3, !dbg !847
  %11 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %10, align 8, !dbg !847
  store %struct._IRC_SERVER_CONNECT_REC* %11, %struct._IRC_SERVER_CONNECT_REC** %7, align 8, !dbg !848
  %12 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %7, align 8, !dbg !849
  %13 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %12, i32 0, i32 33, !dbg !850
  %14 = load i32, i32* %13, align 8, !dbg !850
  switch i32 %14, label %19 [
    i32 1, label %15
    i32 2, label %17
  ], !dbg !851

; <label>:15:                                     ; preds = %3
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !852
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)), !dbg !854
  br label %19, !dbg !855

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !856
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)), !dbg !857
  br label %19, !dbg !858

; <label>:19:                                     ; preds = %3, %17, %15
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !859
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !859
  %22 = call i32 @g_timeout_add(i32 20000, i32 (i8*)* bitcast (i32 (%struct._IRC_SERVER_REC*)* @sasl_timeout to i32 (i8*)*), i8* %21), !dbg !860
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !861
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 54, !dbg !862
  store i32 %22, i32* %24, align 8, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: nounwind uwtable
define internal void @sasl_step(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !865 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !866, metadata !685), !dbg !867
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !868, metadata !685), !dbg !869
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !870, metadata !685), !dbg !871
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !872, metadata !685), !dbg !873
  store %struct._GString* null, %struct._GString** %7, align 8, !dbg !873
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !874
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %8), !dbg !875
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !876
  %10 = load i8*, i8** %5, align 8, !dbg !878
  %11 = call i32 @sasl_reassemble_incoming(%struct._IRC_SERVER_REC* %9, i8* %10, %struct._GString** %7), !dbg !879
  %12 = icmp ne i32 %11, 0, !dbg !879
  br i1 %12, label %15, label %13, !dbg !880

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !881
  call void @sasl_step_fail(%struct._IRC_SERVER_REC* %14), !dbg !883
  br label %29, !dbg !884

; <label>:15:                                     ; preds = %3
  %16 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !885
  %17 = icmp ne %struct._GString* %16, null, !dbg !887
  br i1 %17, label %18, label %23, !dbg !888

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !889
  %20 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !891
  call void @sasl_step_complete(%struct._IRC_SERVER_REC* %19, %struct._GString* %20), !dbg !892
  %21 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !893
  %22 = call i8* @g_string_free(%struct._GString* %21, i32 1), !dbg !894
  br label %23, !dbg !895

; <label>:23:                                     ; preds = %18, %15
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !896
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !896
  %26 = call i32 @g_timeout_add(i32 20000, i32 (i8*)* bitcast (i32 (%struct._IRC_SERVER_REC*)* @sasl_timeout to i32 (i8*)*), i8* %25), !dbg !897
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !898
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 54, !dbg !899
  store i32 %26, i32* %28, align 8, !dbg !900
  br label %29, !dbg !901

; <label>:29:                                     ; preds = %23, %13
  ret void, !dbg !902
}

; Function Attrs: nounwind uwtable
define internal void @sasl_success(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !904 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !905, metadata !685), !dbg !906
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !907, metadata !685), !dbg !908
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !909, metadata !685), !dbg !910
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !911
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %7), !dbg !912
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !913
  %9 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %8, i32 0, i32 45, !dbg !914
  %10 = load i16, i16* %9, align 4, !dbg !915
  %11 = and i16 %10, -4097, !dbg !915
  %12 = or i16 %11, 4096, !dbg !915
  store i16 %12, i16* %9, align 4, !dbg !915
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !916
  %14 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %13), !dbg !917
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !918
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %15), !dbg !919
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define internal void @sasl_fail(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !921 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !922, metadata !685), !dbg !923
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !924, metadata !685), !dbg !925
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !926, metadata !685), !dbg !927
  call void @llvm.dbg.declare(metadata i8** %7, metadata !928, metadata !685), !dbg !929
  call void @llvm.dbg.declare(metadata i8** %8, metadata !930, metadata !685), !dbg !931
  %9 = load i8*, i8** %5, align 8, !dbg !932
  %10 = call i8* (i8*, i32, ...) @event_get_params(i8* %9, i32 2, i8* null, i8** %8), !dbg !933
  store i8* %10, i8** %7, align 8, !dbg !934
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !935
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 45, !dbg !936
  %13 = load i16, i16* %12, align 4, !dbg !937
  %14 = and i16 %13, -4097, !dbg !937
  store i16 %14, i16* %12, align 4, !dbg !937
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !938
  %16 = load i8*, i8** %8, align 8, !dbg !939
  %17 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %15, i8* %16), !dbg !940
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !941
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %18), !dbg !942
  %19 = load i8*, i8** %7, align 8, !dbg !943
  call void @g_free(i8* %19), !dbg !944
  ret void, !dbg !945
}

; Function Attrs: nounwind uwtable
define internal void @sasl_already(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !946 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !947, metadata !685), !dbg !948
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !949, metadata !685), !dbg !950
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !951, metadata !685), !dbg !952
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !953
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %7), !dbg !954
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !955
  %9 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %8, i32 0, i32 45, !dbg !956
  %10 = load i16, i16* %9, align 4, !dbg !957
  %11 = and i16 %10, -4097, !dbg !957
  %12 = or i16 %11, 4096, !dbg !957
  store i16 %12, i16* %9, align 4, !dbg !957
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !958
  %14 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %13), !dbg !959
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !960
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %15), !dbg !961
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define internal void @sasl_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !963 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !964, metadata !685), !dbg !965
  br label %3, !dbg !966, !llvm.loop !967

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !968
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !972
  br i1 %5, label %6, label %7, !dbg !968

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !973

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sasl_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0)), !dbg !976
  br label %23, !dbg !979

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !980

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !982
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !982
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !984
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !985
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !986
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !987
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !989
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !989
  br i1 %17, label %18, label %19, !dbg !990

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !991

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !993

; <label>:20:                                     ; preds = %19, %18
  br label %23, !dbg !995

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !997
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %22), !dbg !998
  br label %23, !dbg !999

; <label>:23:                                     ; preds = %21, %20, %7
  ret void, !dbg !1000
}

; Function Attrs: nounwind uwtable
define void @sasl_deinit() #0 !dbg !1002 {
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1003
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1004
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_start to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1005
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_sasl_over to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1006
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_step to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1007
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_success to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1008
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1009
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1010
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1011
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_fail to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1012
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @sasl_already to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1013
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sasl_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1014
  ret void, !dbg !1015
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @settings_get_bool(i8*) #2

declare void @signal_stop() #2

; Function Attrs: nounwind uwtable
define internal void @sasl_timeout_stop(%struct._IRC_SERVER_REC*) #0 !dbg !1016 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1017, metadata !685), !dbg !1018
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1019
  %4 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %3, i32 0, i32 54, !dbg !1021
  %5 = load i32, i32* %4, align 8, !dbg !1021
  %6 = icmp ne i32 %5, 0, !dbg !1022
  br i1 %6, label %7, label %14, !dbg !1023

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1024
  %9 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %8, i32 0, i32 54, !dbg !1026
  %10 = load i32, i32* %9, align 8, !dbg !1026
  %11 = call i32 @g_source_remove(i32 %10), !dbg !1027
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1028
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 54, !dbg !1029
  store i32 0, i32* %13, align 8, !dbg !1030
  br label %14, !dbg !1031

; <label>:14:                                     ; preds = %7, %1
  ret void, !dbg !1032
}

declare void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sasl_timeout(%struct._IRC_SERVER_REC*) #0 !dbg !1033 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1036, metadata !685), !dbg !1037
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1038
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)), !dbg !1039
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1040
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %4), !dbg !1041
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1042
  %6 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %5, i32 0, i32 54, !dbg !1043
  store i32 0, i32* %6, align 8, !dbg !1044
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1045
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 45, !dbg !1046
  %9 = load i16, i16* %8, align 4, !dbg !1047
  %10 = and i16 %9, -4097, !dbg !1047
  store i16 %10, i16* %8, align 4, !dbg !1047
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1048
  %12 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0)), !dbg !1049
  ret i32 0, !dbg !1050
}

declare i32 @g_source_remove(i32) #2

declare void @cap_finish_negotiation(%struct._IRC_SERVER_REC*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sasl_reassemble_incoming(%struct._IRC_SERVER_REC*, i8*, %struct._GString**) #0 !dbg !1051 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString**, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1055, metadata !685), !dbg !1056
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1057, metadata !685), !dbg !1058
  store %struct._GString** %2, %struct._GString*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GString*** %7, metadata !1059, metadata !685), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !1061, metadata !685), !dbg !1062
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1063, metadata !685), !dbg !1064
  %13 = load i8*, i8** %6, align 8, !dbg !1065
  %14 = call i64 @strlen(i8* %13) #5, !dbg !1066
  store i64 %14, i64* %9, align 8, !dbg !1067
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1068
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 53, !dbg !1070
  %17 = load %struct._GString*, %struct._GString** %16, align 8, !dbg !1070
  %18 = icmp ne %struct._GString* %17, null, !dbg !1071
  br i1 %18, label %19, label %37, !dbg !1072

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %6, align 8, !dbg !1073
  %21 = call i32 @g_strcmp0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* %20), !dbg !1076
  %22 = icmp eq i32 %21, 0, !dbg !1077
  br i1 %22, label %23, label %27, !dbg !1078

; <label>:23:                                     ; preds = %19
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1079
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 53, !dbg !1081
  %26 = load %struct._GString*, %struct._GString** %25, align 8, !dbg !1081
  store %struct._GString* %26, %struct._GString** %8, align 8, !dbg !1082
  br label %34, !dbg !1083

; <label>:27:                                     ; preds = %19
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1084
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 53, !dbg !1086
  %30 = load %struct._GString*, %struct._GString** %29, align 8, !dbg !1086
  %31 = load i8*, i8** %6, align 8, !dbg !1087
  %32 = load i64, i64* %9, align 8, !dbg !1088
  %33 = call %struct._GString* @g_string_append_len(%struct._GString* %30, i8* %31, i64 %32), !dbg !1089
  store %struct._GString* %33, %struct._GString** %8, align 8, !dbg !1090
  br label %34

; <label>:34:                                     ; preds = %27, %23
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1091
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 53, !dbg !1092
  store %struct._GString* null, %struct._GString** %36, align 8, !dbg !1093
  br label %41, !dbg !1094

; <label>:37:                                     ; preds = %3
  %38 = load i8*, i8** %6, align 8, !dbg !1095
  %39 = load i64, i64* %9, align 8, !dbg !1097
  %40 = call %struct._GString* @g_string_new_len(i8* %38, i64 %39), !dbg !1098
  store %struct._GString* %40, %struct._GString** %8, align 8, !dbg !1099
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1100
  %43 = getelementptr inbounds %struct._GString, %struct._GString* %42, i32 0, i32 1, !dbg !1102
  %44 = load i64, i64* %43, align 8, !dbg !1102
  %45 = icmp ugt i64 %44, 8192, !dbg !1103
  br i1 %45, label %46, label %47, !dbg !1104

; <label>:46:                                     ; preds = %41
  store i32 0, i32* %4, align 4, !dbg !1105
  br label %89, !dbg !1105

; <label>:47:                                     ; preds = %41
  %48 = load i64, i64* %9, align 8, !dbg !1107
  %49 = icmp eq i64 %48, 400, !dbg !1109
  br i1 %49, label %50, label %54, !dbg !1110

; <label>:50:                                     ; preds = %47
  %51 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1111
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1113
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 53, !dbg !1114
  store %struct._GString* %51, %struct._GString** %53, align 8, !dbg !1115
  store i32 1, i32* %4, align 4, !dbg !1116
  br label %89, !dbg !1116

; <label>:54:                                     ; preds = %47
  %55 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1117
  %56 = getelementptr inbounds %struct._GString, %struct._GString* %55, i32 0, i32 1, !dbg !1119
  %57 = load i64, i64* %56, align 8, !dbg !1119
  %58 = icmp eq i64 %57, 1, !dbg !1120
  br i1 %58, label %59, label %69, !dbg !1121

; <label>:59:                                     ; preds = %54
  %60 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1122
  %61 = getelementptr inbounds %struct._GString, %struct._GString* %60, i32 0, i32 0, !dbg !1124
  %62 = load i8*, i8** %61, align 8, !dbg !1124
  %63 = load i8, i8* %62, align 1, !dbg !1125
  %64 = sext i8 %63 to i32, !dbg !1125
  %65 = icmp eq i32 %64, 43, !dbg !1126
  br i1 %65, label %66, label %69, !dbg !1127

; <label>:66:                                     ; preds = %59
  %67 = call %struct._GString* @g_string_new_len(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i64 0), !dbg !1128
  %68 = load %struct._GString**, %struct._GString*** %7, align 8, !dbg !1130
  store %struct._GString* %67, %struct._GString** %68, align 8, !dbg !1131
  br label %86, !dbg !1132

; <label>:69:                                     ; preds = %59, %54
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1133, metadata !685), !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1136, metadata !685), !dbg !1137
  store i32 0, i32* %11, align 4, !dbg !1137
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1138, metadata !685), !dbg !1139
  store i32 0, i32* %12, align 4, !dbg !1139
  %70 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1140
  %71 = getelementptr inbounds %struct._GString, %struct._GString* %70, i32 0, i32 0, !dbg !1141
  %72 = load i8*, i8** %71, align 8, !dbg !1141
  %73 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1142
  %74 = getelementptr inbounds %struct._GString, %struct._GString* %73, i32 0, i32 1, !dbg !1143
  %75 = load i64, i64* %74, align 8, !dbg !1143
  %76 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1144
  %77 = getelementptr inbounds %struct._GString, %struct._GString* %76, i32 0, i32 0, !dbg !1145
  %78 = load i8*, i8** %77, align 8, !dbg !1145
  %79 = call i64 @g_base64_decode_step(i8* %72, i64 %75, i8* %78, i32* %11, i32* %12), !dbg !1146
  store i64 %79, i64* %10, align 8, !dbg !1147
  %80 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1148
  %81 = getelementptr inbounds %struct._GString, %struct._GString* %80, i32 0, i32 0, !dbg !1149
  %82 = load i8*, i8** %81, align 8, !dbg !1149
  %83 = load i64, i64* %10, align 8, !dbg !1150
  %84 = call %struct._GString* @g_string_new_len(i8* %82, i64 %83), !dbg !1151
  %85 = load %struct._GString**, %struct._GString*** %7, align 8, !dbg !1152
  store %struct._GString* %84, %struct._GString** %85, align 8, !dbg !1153
  br label %86

; <label>:86:                                     ; preds = %69, %66
  %87 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !1154
  %88 = call i8* @g_string_free(%struct._GString* %87, i32 1), !dbg !1155
  store i32 1, i32* %4, align 4, !dbg !1156
  br label %89, !dbg !1156

; <label>:89:                                     ; preds = %86, %50, %46
  %90 = load i32, i32* %4, align 4, !dbg !1157
  ret i32 %90, !dbg !1157
}

; Function Attrs: nounwind uwtable
define internal void @sasl_step_fail(%struct._IRC_SERVER_REC*) #0 !dbg !1158 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1159, metadata !685), !dbg !1160
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1161
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)), !dbg !1162
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1163
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %4), !dbg !1164
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1165
  call void @sasl_timeout_stop(%struct._IRC_SERVER_REC* %5), !dbg !1166
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1167
  %7 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i32 0, i32 0)), !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: nounwind uwtable
define internal void @sasl_step_complete(%struct._IRC_SERVER_REC*, %struct._GString*) #0 !dbg !1170 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %6 = alloca %struct._GString*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1171, metadata !685), !dbg !1172
  store %struct._GString* %1, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1173, metadata !685), !dbg !1174
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %5, metadata !1175, metadata !685), !dbg !1176
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1177, metadata !685), !dbg !1178
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1179
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 3, !dbg !1180
  %9 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %8, align 8, !dbg !1180
  store %struct._IRC_SERVER_CONNECT_REC* %9, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !1181
  %10 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !1182
  %11 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %10, i32 0, i32 33, !dbg !1183
  %12 = load i32, i32* %11, align 8, !dbg !1183
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %38
  ], !dbg !1184

; <label>:13:                                     ; preds = %2
  %14 = call %struct._GString* @g_string_new(i8* null), !dbg !1185
  store %struct._GString* %14, %struct._GString** %6, align 8, !dbg !1187
  %15 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1188
  %16 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !1189
  %17 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %16, i32 0, i32 34, !dbg !1190
  %18 = load i8*, i8** %17, align 8, !dbg !1190
  %19 = call %struct._GString* @g_string_append(%struct._GString* %15, i8* %18), !dbg !1191
  %20 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1192
  %21 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %20, i8 signext 0), !dbg !1193
  %22 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1194
  %23 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !1195
  %24 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %23, i32 0, i32 34, !dbg !1196
  %25 = load i8*, i8** %24, align 8, !dbg !1196
  %26 = call %struct._GString* @g_string_append(%struct._GString* %22, i8* %25), !dbg !1197
  %27 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1198
  %28 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %27, i8 signext 0), !dbg !1199
  %29 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1200
  %30 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %5, align 8, !dbg !1201
  %31 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %30, i32 0, i32 35, !dbg !1202
  %32 = load i8*, i8** %31, align 8, !dbg !1202
  %33 = call %struct._GString* @g_string_append(%struct._GString* %29, i8* %32), !dbg !1203
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1204
  %35 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1205
  call void @sasl_send_response(%struct._IRC_SERVER_REC* %34, %struct._GString* %35), !dbg !1206
  %36 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1207
  %37 = call i8* @g_string_free(%struct._GString* %36, i32 1), !dbg !1208
  br label %40, !dbg !1209

; <label>:38:                                     ; preds = %2
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1210
  call void @sasl_send_response(%struct._IRC_SERVER_REC* %39, %struct._GString* null), !dbg !1211
  br label %40, !dbg !1212

; <label>:40:                                     ; preds = %2, %38, %13
  ret void, !dbg !1213
}

declare i8* @g_string_free(%struct._GString*, i32) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #2

declare %struct._GString* @g_string_new_len(i8*, i64) #2

declare i64 @g_base64_decode_step(i8*, i64, i8*, i32*, i32*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1214 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1217, metadata !685), !dbg !1218
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1219, metadata !685), !dbg !1220
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1221
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1223
  %7 = load i64, i64* %6, align 8, !dbg !1223
  %8 = add i64 %7, 1, !dbg !1224
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1225
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1226
  %11 = load i64, i64* %10, align 8, !dbg !1226
  %12 = icmp ult i64 %8, %11, !dbg !1227
  br i1 %12, label %13, label %30, !dbg !1228

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1229
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1231
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1232
  %17 = load i64, i64* %16, align 8, !dbg !1233
  %18 = add i64 %17, 1, !dbg !1233
  store i64 %18, i64* %16, align 8, !dbg !1233
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1234
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1235
  %21 = load i8*, i8** %20, align 8, !dbg !1235
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1234
  store i8 %14, i8* %22, align 1, !dbg !1236
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1237
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1238
  %25 = load i64, i64* %24, align 8, !dbg !1238
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1239
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1240
  %28 = load i8*, i8** %27, align 8, !dbg !1240
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1239
  store i8 0, i8* %29, align 1, !dbg !1241
  br label %34, !dbg !1242

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1243
  %32 = load i8, i8* %4, align 1, !dbg !1244
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1245
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1246
  ret %struct._GString* %35, !dbg !1247
}

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!676, !677}
!llvm.ident = !{!678}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42)
!1 = !DIFile(filename: "line145-sasl.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 24, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "sasl.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "SASL_MECHANISM_NONE", value: 0)
!39 = !DIEnumerator(name: "SASL_MECHANISM_PLAIN", value: 1)
!40 = !DIEnumerator(name: "SASL_MECHANISM_EXTERNAL", value: 2)
!41 = !DIEnumerator(name: "SASL_MECHANISM_MAX", value: 3)
!42 = !{!43, !44, !48, !49, !56, !367, !184, !123, !455}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !46, line: 52, baseType: !47)
!46 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !50, line: 9, baseType: !51)
!50 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54, !54, !54, !54, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !58, line: 6, baseType: !59)
!58 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !60, line: 42, size: 39168, align: 64, elements: !61)
!60 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !{!62, !64, !65, !66, !312, !317, !318, !319, !320, !321, !322, !323, !324, !325, !329, !330, !334, !335, !336, !340, !345, !346, !347, !348, !349, !350, !351, !352, !359, !360, !361, !362, !363, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !673, !675}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !63, line: 3, baseType: !48, size: 32, align: 32)
!63 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !59, file: !63, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !59, file: !63, line: 6, baseType: !48, size: 32, align: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !59, file: !63, line: 8, baseType: !67, size: 64, align: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !58, line: 5, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !60, line: 24, size: 2496, align: 64, elements: !70)
!70 = !{!71, !73, !74, !75, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !72, line: 3, baseType: !48, size: 32, align: 32)
!72 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !69, file: !72, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !69, file: !72, line: 6, baseType: !48, size: 32, align: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !69, file: !72, line: 9, baseType: !76, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !69, file: !72, line: 10, baseType: !48, size: 32, align: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !69, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !69, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !69, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !69, file: !72, line: 13, baseType: !83, size: 16, align: 16, offset: 448)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !69, file: !72, line: 14, baseType: !76, size: 64, align: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !69, file: !72, line: 15, baseType: !76, size: 64, align: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !69, file: !72, line: 16, baseType: !48, size: 32, align: 32, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !69, file: !72, line: 17, baseType: !76, size: 64, align: 64, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !69, file: !72, line: 19, baseType: !89, size: 64, align: 64, offset: 768)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !91, line: 99, baseType: !92)
!91 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !91, line: 99, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !69, file: !72, line: 19, baseType: !89, size: 64, align: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !69, file: !72, line: 21, baseType: !76, size: 64, align: 64, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !69, file: !72, line: 22, baseType: !76, size: 64, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !69, file: !72, line: 23, baseType: !76, size: 64, align: 64, offset: 1024)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !69, file: !72, line: 24, baseType: !76, size: 64, align: 64, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !69, file: !72, line: 26, baseType: !76, size: 64, align: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !69, file: !72, line: 27, baseType: !76, size: 64, align: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !69, file: !72, line: 28, baseType: !76, size: 64, align: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !69, file: !72, line: 29, baseType: !76, size: 64, align: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !69, file: !72, line: 30, baseType: !76, size: 64, align: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !69, file: !72, line: 31, baseType: !76, size: 64, align: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !69, file: !72, line: 32, baseType: !76, size: 64, align: 64, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !69, file: !72, line: 33, baseType: !76, size: 64, align: 64, offset: 1600)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !69, file: !72, line: 35, baseType: !107, size: 64, align: 64, offset: 1664)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !110)
!110 = !{!111, !113, !257, !258, !263, !264, !265, !266, !267, !276, !277, !278, !282, !283, !284, !285, !286, !287, !288, !289}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !109, file: !4, line: 100, baseType: !112, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !46, line: 49, baseType: !48)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !109, file: !4, line: 101, baseType: !114, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !117)
!117 = !{!118, !142, !148, !155, !159, !244, !248, !253}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !116, file: !4, line: 133, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !107, !123, !125, !128, !129}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !46, line: 46, baseType: !77)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !126, line: 66, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !132, line: 42, baseType: !133)
!132 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !132, line: 44, size: 128, align: 64, elements: !134)
!134 = !{!135, !140, !141}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !133, file: !132, line: 46, baseType: !136, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !137, line: 36, baseType: !138)
!137 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !126, line: 45, baseType: !139)
!139 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !133, file: !132, line: 47, baseType: !112, size: 32, align: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !133, file: !132, line: 48, baseType: !123, size: 64, align: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !116, file: !4, line: 138, baseType: !143, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!122, !107, !146, !125, !128, !129}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !116, file: !4, line: 143, baseType: !149, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!122, !107, !152, !154, !129}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !126, line: 51, baseType: !153)
!153 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !116, file: !4, line: 147, baseType: !156, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!122, !107, !129}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !116, file: !4, line: 149, baseType: !160, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !107, !243}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !166)
!166 = !{!167, !169, !190, !219, !221, !225, !226, !227, !228, !236, !237, !238, !239}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !165, file: !16, line: 174, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !46, line: 77, baseType: !43)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !165, file: !16, line: 175, baseType: !170, size: 64, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !173)
!173 = !{!174, !178, !179}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !172, file: !16, line: 198, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !168}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !172, file: !16, line: 199, baseType: !175, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !172, file: !16, line: 200, baseType: !180, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !168, !163, !183, !189}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !168}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !46, line: 50, baseType: !112)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !165, file: !16, line: 177, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !195)
!195 = !{!196, !201, !205, !209, !213, !214}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !194, file: !16, line: 216, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!188, !163, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !194, file: !16, line: 218, baseType: !202, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!188, !163}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !194, file: !16, line: 219, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!188, !163, !184, !168}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !194, file: !16, line: 222, baseType: !210, size: 64, align: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !163}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !194, file: !16, line: 226, baseType: !184, size: 64, align: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !194, file: !16, line: 227, baseType: !215, size: 64, align: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !165, file: !16, line: 178, baseType: !220, size: 32, align: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !46, line: 55, baseType: !139)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !165, file: !16, line: 180, baseType: !222, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !165, file: !16, line: 182, baseType: !112, size: 32, align: 32, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !16, line: 183, baseType: !220, size: 32, align: 32, offset: 352)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !165, file: !16, line: 184, baseType: !220, size: 32, align: 32, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !165, file: !16, line: 186, baseType: !229, size: 64, align: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !231, line: 37, baseType: !232)
!231 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !231, line: 39, size: 128, align: 64, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !232, file: !231, line: 41, baseType: !168, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !231, line: 42, baseType: !229, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !165, file: !16, line: 188, baseType: !163, size: 64, align: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !16, line: 189, baseType: !163, size: 64, align: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !16, line: 191, baseType: !76, size: 64, align: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !165, file: !16, line: 193, baseType: !240, size: 64, align: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !116, file: !4, line: 151, baseType: !245, size: 64, align: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !107}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !116, file: !4, line: 152, baseType: !249, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!122, !107, !252, !129}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !116, file: !4, line: 155, baseType: !254, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!252, !107}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !109, file: !4, line: 103, baseType: !123, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !109, file: !4, line: 104, baseType: !259, size: 64, align: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !260, line: 77, baseType: !261)
!260 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !260, line: 77, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !109, file: !4, line: 105, baseType: !259, size: 64, align: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !109, file: !4, line: 106, baseType: !123, size: 64, align: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !109, file: !4, line: 107, baseType: !220, size: 32, align: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !109, file: !4, line: 109, baseType: !125, size: 64, align: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !109, file: !4, line: 110, baseType: !268, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !270, line: 39, baseType: !271)
!270 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !270, line: 41, size: 192, align: 64, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !271, file: !270, line: 43, baseType: !123, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !271, file: !270, line: 44, baseType: !125, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !271, file: !270, line: 45, baseType: !125, size: 64, align: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !109, file: !4, line: 111, baseType: !268, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !109, file: !4, line: 112, baseType: !268, size: 64, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !109, file: !4, line: 113, baseType: !279, size: 48, align: 8, offset: 704)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, align: 8, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 6)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !109, file: !4, line: 117, baseType: !220, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !109, file: !4, line: 118, baseType: !220, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !109, file: !4, line: 119, baseType: !220, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !109, file: !4, line: 120, baseType: !220, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !109, file: !4, line: 121, baseType: !220, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !109, file: !4, line: 122, baseType: !220, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !109, file: !4, line: 124, baseType: !168, size: 64, align: 64, offset: 768)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !109, file: !4, line: 125, baseType: !168, size: 64, align: 64, offset: 832)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !69, file: !72, line: 38, baseType: !139, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !69, file: !72, line: 39, baseType: !139, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !69, file: !72, line: 40, baseType: !139, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !69, file: !72, line: 41, baseType: !139, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !69, file: !72, line: 42, baseType: !139, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !69, file: !72, line: 43, baseType: !139, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !69, file: !72, line: 44, baseType: !139, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !69, file: !72, line: 45, baseType: !139, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !69, file: !72, line: 46, baseType: !76, size: 64, align: 64, offset: 1792)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !69, file: !72, line: 47, baseType: !76, size: 64, align: 64, offset: 1856)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !69, file: !60, line: 27, baseType: !76, size: 64, align: 64, offset: 1920)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !69, file: !60, line: 28, baseType: !76, size: 64, align: 64, offset: 1984)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !69, file: !60, line: 30, baseType: !48, size: 32, align: 32, offset: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !69, file: !60, line: 31, baseType: !76, size: 64, align: 64, offset: 2112)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !69, file: !60, line: 32, baseType: !76, size: 64, align: 64, offset: 2176)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !69, file: !60, line: 34, baseType: !48, size: 32, align: 32, offset: 2240)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !69, file: !60, line: 35, baseType: !48, size: 32, align: 32, offset: 2272)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !69, file: !60, line: 36, baseType: !48, size: 32, align: 32, offset: 2304)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !69, file: !60, line: 38, baseType: !48, size: 32, align: 32, offset: 2336)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !69, file: !60, line: 38, baseType: !48, size: 32, align: 32, offset: 2368)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !69, file: !60, line: 38, baseType: !48, size: 32, align: 32, offset: 2400)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !69, file: !60, line: 38, baseType: !48, size: 32, align: 32, offset: 2432)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !59, file: !63, line: 9, baseType: !313, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !314, line: 75, baseType: !315)
!314 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !316, line: 139, baseType: !153)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !59, file: !63, line: 10, baseType: !313, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !59, file: !63, line: 12, baseType: !76, size: 64, align: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !59, file: !63, line: 13, baseType: !76, size: 64, align: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !59, file: !63, line: 15, baseType: !139, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !59, file: !63, line: 16, baseType: !139, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !59, file: !63, line: 17, baseType: !139, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !59, file: !63, line: 18, baseType: !139, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !59, file: !63, line: 19, baseType: !139, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !59, file: !63, line: 21, baseType: !326, size: 64, align: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !91, line: 102, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !91, line: 102, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !59, file: !63, line: 22, baseType: !48, size: 32, align: 32, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !59, file: !63, line: 25, baseType: !331, size: 128, align: 64, offset: 640)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, align: 64, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 2)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !59, file: !63, line: 26, baseType: !48, size: 32, align: 32, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !59, file: !63, line: 27, baseType: !48, size: 32, align: 32, offset: 800)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !59, file: !63, line: 29, baseType: !337, size: 64, align: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !91, line: 103, baseType: !339)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !91, line: 103, flags: DIFlagFwdDecl)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !59, file: !63, line: 30, baseType: !341, size: 64, align: 64, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !343, line: 37, baseType: !344)
!343 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !343, line: 37, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !59, file: !63, line: 32, baseType: !76, size: 64, align: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !59, file: !63, line: 33, baseType: !76, size: 64, align: 64, offset: 1024)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !59, file: !63, line: 34, baseType: !76, size: 64, align: 64, offset: 1088)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !59, file: !63, line: 35, baseType: !139, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !59, file: !63, line: 36, baseType: !139, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !59, file: !63, line: 37, baseType: !139, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !59, file: !63, line: 38, baseType: !139, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !59, file: !63, line: 40, baseType: !353, size: 128, align: 64, offset: 1216)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !46, line: 504, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !46, line: 506, size: 128, align: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !354, file: !46, line: 508, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !46, line: 48, baseType: !153)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !354, file: !46, line: 509, baseType: !357, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !59, file: !63, line: 41, baseType: !313, size: 64, align: 64, offset: 1344)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !59, file: !63, line: 42, baseType: !48, size: 32, align: 32, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !59, file: !63, line: 44, baseType: !229, size: 64, align: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !59, file: !63, line: 45, baseType: !229, size: 64, align: 64, offset: 1536)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !59, file: !63, line: 53, baseType: !364, size: 64, align: 64, offset: 1600)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !455, !48}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !91, line: 107, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !370, line: 30, size: 2240, align: 64, elements: !371)
!370 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !{!372, !373, !374, !375, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !451, !457, !461, !465, !470, !549, !556, !560}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !63, line: 3, baseType: !48, size: 32, align: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !369, file: !63, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !369, file: !63, line: 6, baseType: !48, size: 32, align: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !369, file: !63, line: 8, baseType: !376, size: 64, align: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !91, line: 113, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !370, line: 25, size: 1920, align: 64, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !378, file: !72, line: 3, baseType: !48, size: 32, align: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !378, file: !72, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !378, file: !72, line: 6, baseType: !48, size: 32, align: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !378, file: !72, line: 9, baseType: !76, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !378, file: !72, line: 10, baseType: !48, size: 32, align: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !378, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !378, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !378, file: !72, line: 11, baseType: !76, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !378, file: !72, line: 13, baseType: !83, size: 16, align: 16, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !378, file: !72, line: 14, baseType: !76, size: 64, align: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !378, file: !72, line: 15, baseType: !76, size: 64, align: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !378, file: !72, line: 16, baseType: !48, size: 32, align: 32, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !378, file: !72, line: 17, baseType: !76, size: 64, align: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !378, file: !72, line: 19, baseType: !89, size: 64, align: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !378, file: !72, line: 19, baseType: !89, size: 64, align: 64, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !378, file: !72, line: 21, baseType: !76, size: 64, align: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !378, file: !72, line: 22, baseType: !76, size: 64, align: 64, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !378, file: !72, line: 23, baseType: !76, size: 64, align: 64, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !378, file: !72, line: 24, baseType: !76, size: 64, align: 64, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !378, file: !72, line: 26, baseType: !76, size: 64, align: 64, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !378, file: !72, line: 27, baseType: !76, size: 64, align: 64, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !378, file: !72, line: 28, baseType: !76, size: 64, align: 64, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !378, file: !72, line: 29, baseType: !76, size: 64, align: 64, offset: 1344)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !378, file: !72, line: 30, baseType: !76, size: 64, align: 64, offset: 1408)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !378, file: !72, line: 31, baseType: !76, size: 64, align: 64, offset: 1472)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !378, file: !72, line: 32, baseType: !76, size: 64, align: 64, offset: 1536)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !378, file: !72, line: 33, baseType: !76, size: 64, align: 64, offset: 1600)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !378, file: !72, line: 35, baseType: !107, size: 64, align: 64, offset: 1664)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !378, file: !72, line: 38, baseType: !139, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !378, file: !72, line: 39, baseType: !139, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !378, file: !72, line: 40, baseType: !139, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !378, file: !72, line: 41, baseType: !139, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !378, file: !72, line: 42, baseType: !139, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !378, file: !72, line: 43, baseType: !139, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !378, file: !72, line: 44, baseType: !139, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !378, file: !72, line: 45, baseType: !139, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !378, file: !72, line: 46, baseType: !76, size: 64, align: 64, offset: 1792)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !378, file: !72, line: 47, baseType: !76, size: 64, align: 64, offset: 1856)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !369, file: !63, line: 9, baseType: !313, size: 64, align: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !369, file: !63, line: 10, baseType: !313, size: 64, align: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !369, file: !63, line: 12, baseType: !76, size: 64, align: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !369, file: !63, line: 13, baseType: !76, size: 64, align: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !369, file: !63, line: 15, baseType: !139, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !369, file: !63, line: 16, baseType: !139, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !369, file: !63, line: 17, baseType: !139, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !369, file: !63, line: 18, baseType: !139, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !369, file: !63, line: 19, baseType: !139, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !369, file: !63, line: 21, baseType: !326, size: 64, align: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !369, file: !63, line: 22, baseType: !48, size: 32, align: 32, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !369, file: !63, line: 25, baseType: !331, size: 128, align: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !369, file: !63, line: 26, baseType: !48, size: 32, align: 32, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !369, file: !63, line: 27, baseType: !48, size: 32, align: 32, offset: 800)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !369, file: !63, line: 29, baseType: !337, size: 64, align: 64, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !369, file: !63, line: 30, baseType: !341, size: 64, align: 64, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !369, file: !63, line: 32, baseType: !76, size: 64, align: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !369, file: !63, line: 33, baseType: !76, size: 64, align: 64, offset: 1024)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !369, file: !63, line: 34, baseType: !76, size: 64, align: 64, offset: 1088)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !369, file: !63, line: 35, baseType: !139, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !369, file: !63, line: 36, baseType: !139, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !369, file: !63, line: 37, baseType: !139, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !369, file: !63, line: 38, baseType: !139, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !369, file: !63, line: 40, baseType: !353, size: 128, align: 64, offset: 1216)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !369, file: !63, line: 41, baseType: !313, size: 64, align: 64, offset: 1344)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !369, file: !63, line: 42, baseType: !48, size: 32, align: 32, offset: 1408)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !369, file: !63, line: 44, baseType: !229, size: 64, align: 64, offset: 1472)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !369, file: !63, line: 45, baseType: !229, size: 64, align: 64, offset: 1536)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !369, file: !63, line: 53, baseType: !364, size: 64, align: 64, offset: 1600)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !369, file: !63, line: 55, baseType: !448, size: 64, align: 64, offset: 1664)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!48, !367, !77}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !369, file: !63, line: 57, baseType: !452, size: 64, align: 64, offset: 1728)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!48, !367, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !369, file: !63, line: 60, baseType: !458, size: 64, align: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!455, !367}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !369, file: !63, line: 62, baseType: !462, size: 64, align: 64, offset: 1856)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !367, !455, !455, !48}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !369, file: !63, line: 65, baseType: !466, size: 64, align: 64, offset: 1920)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !367, !455, !455}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !369, file: !63, line: 69, baseType: !471, size: 64, align: 64, offset: 1984)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !367, !455}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !91, line: 109, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !477, line: 15, size: 1408, align: 64, elements: !478)
!477 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!478 = !{!479, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !497, !501, !503, !504, !505, !506, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !480, line: 3, baseType: !48, size: 32, align: 32)
!480 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !476, file: !480, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !476, file: !480, line: 5, baseType: !341, size: 64, align: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !476, file: !480, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !476, file: !480, line: 8, baseType: !367, size: 64, align: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !476, file: !480, line: 9, baseType: !76, size: 64, align: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !480, line: 10, baseType: !76, size: 64, align: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !476, file: !480, line: 11, baseType: !313, size: 64, align: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !476, file: !480, line: 12, baseType: !48, size: 32, align: 32, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !476, file: !480, line: 13, baseType: !76, size: 64, align: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !476, file: !480, line: 15, baseType: !491, size: 64, align: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !91, line: 108, baseType: !496)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !91, line: 108, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !476, file: !480, line: 17, baseType: !498, size: 64, align: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!455, !494}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !476, file: !502, line: 5, baseType: !76, size: 64, align: 64, offset: 704)
!502 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !476, file: !502, line: 6, baseType: !76, size: 64, align: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !476, file: !502, line: 7, baseType: !313, size: 64, align: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !476, file: !502, line: 9, baseType: !341, size: 64, align: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !476, file: !502, line: 10, baseType: !507, size: 64, align: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !91, line: 111, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !510, line: 13, size: 576, align: 64, elements: !511)
!510 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!511 = !{!512, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !530, !531}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !513, line: 3, baseType: !48, size: 32, align: 32)
!513 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !509, file: !513, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !509, file: !513, line: 6, baseType: !313, size: 64, align: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !509, file: !513, line: 8, baseType: !76, size: 64, align: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !509, file: !513, line: 9, baseType: !76, size: 64, align: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !509, file: !513, line: 10, baseType: !76, size: 64, align: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !509, file: !513, line: 11, baseType: !48, size: 32, align: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !509, file: !513, line: 14, baseType: !139, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !509, file: !513, line: 15, baseType: !139, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !509, file: !513, line: 18, baseType: !139, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !509, file: !513, line: 19, baseType: !139, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !509, file: !513, line: 20, baseType: !139, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !509, file: !513, line: 21, baseType: !139, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !509, file: !513, line: 22, baseType: !527, size: 64, align: 8, offset: 360)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, align: 8, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !509, file: !513, line: 26, baseType: !43, size: 64, align: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !513, line: 28, baseType: !507, size: 64, align: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !476, file: !502, line: 12, baseType: !139, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !476, file: !502, line: 13, baseType: !76, size: 64, align: 64, offset: 1088)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !476, file: !502, line: 14, baseType: !48, size: 32, align: 32, offset: 1152)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !476, file: !502, line: 15, baseType: !76, size: 64, align: 64, offset: 1216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !476, file: !502, line: 17, baseType: !139, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !476, file: !502, line: 18, baseType: !139, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !476, file: !502, line: 19, baseType: !139, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !476, file: !502, line: 20, baseType: !139, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !476, file: !502, line: 22, baseType: !139, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !476, file: !502, line: 23, baseType: !139, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !476, file: !502, line: 24, baseType: !139, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !476, file: !502, line: 25, baseType: !139, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !476, file: !502, line: 26, baseType: !139, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !476, file: !502, line: 31, baseType: !546, size: 64, align: 64, offset: 1344)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!76, !474}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !369, file: !63, line: 70, baseType: !550, size: 64, align: 64, offset: 2048)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !367, !455}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !91, line: 110, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !91, line: 110, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !369, file: !63, line: 71, baseType: !557, size: 64, align: 64, offset: 2112)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!48, !455, !455}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !369, file: !63, line: 73, baseType: !557, size: 64, align: 64, offset: 2176)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !59, file: !63, line: 55, baseType: !448, size: 64, align: 64, offset: 1664)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !59, file: !63, line: 57, baseType: !452, size: 64, align: 64, offset: 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !59, file: !63, line: 60, baseType: !458, size: 64, align: 64, offset: 1792)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !59, file: !63, line: 62, baseType: !462, size: 64, align: 64, offset: 1856)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !59, file: !63, line: 65, baseType: !466, size: 64, align: 64, offset: 1920)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !59, file: !63, line: 69, baseType: !471, size: 64, align: 64, offset: 1984)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !59, file: !63, line: 70, baseType: !550, size: 64, align: 64, offset: 2048)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !59, file: !63, line: 71, baseType: !557, size: 64, align: 64, offset: 2112)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !59, file: !63, line: 73, baseType: !557, size: 64, align: 64, offset: 2176)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !59, file: !60, line: 46, baseType: !229, size: 64, align: 64, offset: 2240)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !59, file: !60, line: 47, baseType: !229, size: 64, align: 64, offset: 2304)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !59, file: !60, line: 48, baseType: !573, size: 64, align: 64, offset: 2368)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !58, line: 8, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !58, line: 8, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !59, file: !60, line: 49, baseType: !229, size: 64, align: 64, offset: 2432)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !59, file: !60, line: 51, baseType: !76, size: 64, align: 64, offset: 2496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !59, file: !60, line: 53, baseType: !76, size: 64, align: 64, offset: 2560)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !59, file: !60, line: 54, baseType: !76, size: 64, align: 64, offset: 2624)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !59, file: !60, line: 55, baseType: !76, size: 64, align: 64, offset: 2688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !59, file: !60, line: 56, baseType: !76, size: 64, align: 64, offset: 2752)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !59, file: !60, line: 57, baseType: !48, size: 32, align: 32, offset: 2816)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !59, file: !60, line: 59, baseType: !139, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !59, file: !60, line: 60, baseType: !139, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !59, file: !60, line: 62, baseType: !139, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !59, file: !60, line: 63, baseType: !139, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !59, file: !60, line: 64, baseType: !139, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !59, file: !60, line: 65, baseType: !139, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !59, file: !60, line: 66, baseType: !139, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !59, file: !60, line: 67, baseType: !139, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !59, file: !60, line: 68, baseType: !139, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !59, file: !60, line: 69, baseType: !139, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !59, file: !60, line: 70, baseType: !139, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !59, file: !60, line: 71, baseType: !139, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !59, file: !60, line: 72, baseType: !139, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !59, file: !60, line: 74, baseType: !48, size: 32, align: 32, offset: 2880)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !59, file: !60, line: 75, baseType: !48, size: 32, align: 32, offset: 2912)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !59, file: !60, line: 76, baseType: !48, size: 32, align: 32, offset: 2944)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !59, file: !60, line: 77, baseType: !48, size: 32, align: 32, offset: 2976)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !59, file: !60, line: 79, baseType: !341, size: 64, align: 64, offset: 3008)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !59, file: !60, line: 80, baseType: !229, size: 64, align: 64, offset: 3072)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !59, file: !60, line: 81, baseType: !229, size: 64, align: 64, offset: 3136)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !59, file: !60, line: 83, baseType: !268, size: 64, align: 64, offset: 3200)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !59, file: !60, line: 84, baseType: !220, size: 32, align: 32, offset: 3264)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !59, file: !60, line: 87, baseType: !48, size: 32, align: 32, offset: 3296)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !59, file: !60, line: 91, baseType: !229, size: 64, align: 64, offset: 3328)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !59, file: !60, line: 92, baseType: !353, size: 128, align: 64, offset: 3392)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !59, file: !60, line: 93, baseType: !353, size: 128, align: 64, offset: 3520)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !59, file: !60, line: 95, baseType: !48, size: 32, align: 32, offset: 3648)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !59, file: !60, line: 96, baseType: !48, size: 32, align: 32, offset: 3680)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !59, file: !60, line: 97, baseType: !48, size: 32, align: 32, offset: 3712)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !59, file: !60, line: 100, baseType: !229, size: 64, align: 64, offset: 3776)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !59, file: !60, line: 103, baseType: !229, size: 64, align: 64, offset: 3840)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !59, file: !60, line: 106, baseType: !229, size: 64, align: 64, offset: 3904)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !59, file: !60, line: 108, baseType: !341, size: 64, align: 64, offset: 3968)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !59, file: !60, line: 109, baseType: !229, size: 64, align: 64, offset: 4032)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !59, file: !60, line: 111, baseType: !229, size: 64, align: 64, offset: 4096)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !59, file: !60, line: 114, baseType: !43, size: 64, align: 64, offset: 4160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !59, file: !60, line: 116, baseType: !341, size: 64, align: 64, offset: 4224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !59, file: !60, line: 117, baseType: !621, size: 32768, align: 64, offset: 4288)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 32768, align: 64, elements: !671)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !623, line: 10, size: 128, align: 64, elements: !624)
!623 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!624 = !{!625, !670}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !622, file: !623, line: 11, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !623, line: 7, baseType: !628)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630, !455, !77, !77, !76, !268}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !58, line: 7, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !633, line: 15, size: 1600, align: 64, elements: !634)
!633 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !480, line: 3, baseType: !48, size: 32, align: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !632, file: !480, line: 4, baseType: !48, size: 32, align: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !632, file: !480, line: 5, baseType: !341, size: 64, align: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !632, file: !480, line: 7, baseType: !43, size: 64, align: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !632, file: !480, line: 8, baseType: !56, size: 64, align: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !632, file: !480, line: 9, baseType: !76, size: 64, align: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !480, line: 10, baseType: !76, size: 64, align: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !632, file: !480, line: 11, baseType: !313, size: 64, align: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !632, file: !480, line: 12, baseType: !48, size: 32, align: 32, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !632, file: !480, line: 13, baseType: !76, size: 64, align: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !632, file: !480, line: 15, baseType: !491, size: 64, align: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !632, file: !480, line: 17, baseType: !498, size: 64, align: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !632, file: !502, line: 5, baseType: !76, size: 64, align: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !632, file: !502, line: 6, baseType: !76, size: 64, align: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !632, file: !502, line: 7, baseType: !313, size: 64, align: 64, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !632, file: !502, line: 9, baseType: !341, size: 64, align: 64, offset: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !632, file: !502, line: 10, baseType: !507, size: 64, align: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !632, file: !502, line: 12, baseType: !139, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !632, file: !502, line: 13, baseType: !76, size: 64, align: 64, offset: 1088)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !632, file: !502, line: 14, baseType: !48, size: 32, align: 32, offset: 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !632, file: !502, line: 15, baseType: !76, size: 64, align: 64, offset: 1216)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !632, file: !502, line: 17, baseType: !139, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !632, file: !502, line: 18, baseType: !139, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !632, file: !502, line: 19, baseType: !139, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !632, file: !502, line: 20, baseType: !139, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !632, file: !502, line: 22, baseType: !139, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !632, file: !502, line: 23, baseType: !139, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !632, file: !502, line: 24, baseType: !139, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !632, file: !502, line: 25, baseType: !139, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !632, file: !502, line: 26, baseType: !139, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !632, file: !502, line: 31, baseType: !546, size: 64, align: 64, offset: 1344)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !632, file: !633, line: 18, baseType: !229, size: 64, align: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !632, file: !633, line: 20, baseType: !313, size: 64, align: 64, offset: 1472)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !632, file: !633, line: 21, baseType: !48, size: 32, align: 32, offset: 1536)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !632, file: !633, line: 22, baseType: !48, size: 32, align: 32, offset: 1568)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !622, file: !623, line: 12, baseType: !77, size: 8, align: 8, offset: 64)
!671 = !{!672}
!672 = !DISubrange(count: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !59, file: !60, line: 118, baseType: !674, size: 2048, align: 8, offset: 37056)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, align: 8, elements: !671)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !59, file: !60, line: 120, baseType: !557, size: 64, align: 64, offset: 39104)
!676 = !{i32 2, !"Dwarf Version", i32 4}
!677 = !{i32 2, !"Debug Info Version", i32 3}
!678 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!679 = distinct !DISubprogram(name: "sasl_send_response", scope: !680, file: !680, line: 198, type: !681, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!680 = !DIFile(filename: "sasl.c", directory: "/home/lichi/Desktop/irssi/task1")
!681 = !DISubroutineType(types: !682)
!682 = !{null, !56, !268}
!683 = !{}
!684 = !DILocalVariable(name: "server", arg: 1, scope: !679, file: !680, line: 198, type: !56)
!685 = !DIExpression()
!686 = !DILocation(line: 198, column: 41, scope: !679)
!687 = !DILocalVariable(name: "response", arg: 2, scope: !679, file: !680, line: 198, type: !268)
!688 = !DILocation(line: 198, column: 58, scope: !679)
!689 = !DILocalVariable(name: "enc", scope: !679, file: !680, line: 200, type: !76)
!690 = !DILocation(line: 200, column: 8, scope: !679)
!691 = !DILocalVariable(name: "offset", scope: !679, file: !680, line: 201, type: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !693, line: 216, baseType: !127)
!693 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!694 = !DILocation(line: 201, column: 9, scope: !679)
!695 = !DILocalVariable(name: "enc_len", scope: !679, file: !680, line: 201, type: !692)
!696 = !DILocation(line: 201, column: 17, scope: !679)
!697 = !DILocalVariable(name: "chunk_len", scope: !679, file: !680, line: 201, type: !692)
!698 = !DILocation(line: 201, column: 26, scope: !679)
!699 = !DILocation(line: 203, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !679, file: !680, line: 203, column: 6)
!701 = !DILocation(line: 203, column: 15, scope: !700)
!702 = !DILocation(line: 203, column: 6, scope: !679)
!703 = !DILocation(line: 204, column: 17, scope: !704)
!704 = distinct !DILexicalBlock(scope: !700, file: !680, line: 203, column: 23)
!705 = !DILocation(line: 204, column: 3, scope: !704)
!706 = !DILocation(line: 205, column: 3, scope: !704)
!707 = !DILocation(line: 208, column: 35, scope: !679)
!708 = !DILocation(line: 208, column: 45, scope: !679)
!709 = !DILocation(line: 208, column: 50, scope: !679)
!710 = !DILocation(line: 208, column: 60, scope: !679)
!711 = !DILocation(line: 208, column: 8, scope: !679)
!712 = !DILocation(line: 208, column: 6, scope: !679)
!713 = !DILocation(line: 209, column: 19, scope: !679)
!714 = !DILocation(line: 209, column: 12, scope: !679)
!715 = !DILocation(line: 209, column: 10, scope: !679)
!716 = !DILocation(line: 211, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !679, file: !680, line: 211, column: 2)
!718 = !DILocation(line: 211, column: 7, scope: !717)
!719 = !DILocation(line: 211, column: 19, scope: !720)
!720 = !DILexicalBlockFile(scope: !721, file: !680, discriminator: 1)
!721 = distinct !DILexicalBlock(scope: !717, file: !680, line: 211, column: 2)
!722 = !DILocation(line: 211, column: 28, scope: !720)
!723 = !DILocation(line: 211, column: 26, scope: !720)
!724 = !DILocation(line: 211, column: 2, scope: !720)
!725 = !DILocation(line: 212, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !680, line: 211, column: 52)
!727 = !DILocation(line: 212, column: 25, scope: !726)
!728 = !DILocation(line: 212, column: 23, scope: !726)
!729 = !DILocation(line: 212, column: 13, scope: !726)
!730 = !DILocation(line: 213, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !680, line: 213, column: 7)
!732 = !DILocation(line: 213, column: 17, scope: !731)
!733 = !DILocation(line: 213, column: 7, scope: !726)
!734 = !DILocation(line: 214, column: 14, scope: !731)
!735 = !DILocation(line: 214, column: 4, scope: !731)
!736 = !DILocation(line: 216, column: 17, scope: !726)
!737 = !DILocation(line: 216, column: 52, scope: !726)
!738 = !DILocation(line: 216, column: 46, scope: !726)
!739 = !DILocation(line: 216, column: 63, scope: !726)
!740 = !DILocation(line: 216, column: 69, scope: !726)
!741 = !DILocation(line: 216, column: 67, scope: !726)
!742 = !DILocation(line: 216, column: 3, scope: !726)
!743 = !DILocation(line: 217, column: 2, scope: !726)
!744 = !DILocation(line: 211, column: 44, scope: !745)
!745 = !DILexicalBlockFile(scope: !721, file: !680, discriminator: 2)
!746 = !DILocation(line: 211, column: 2, scope: !745)
!747 = distinct !{!747, !748}
!748 = !DILocation(line: 211, column: 2, scope: !679)
!749 = !DILocation(line: 219, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !679, file: !680, line: 219, column: 6)
!751 = !DILocation(line: 219, column: 16, scope: !750)
!752 = !DILocation(line: 219, column: 13, scope: !750)
!753 = !DILocation(line: 219, column: 6, scope: !679)
!754 = !DILocation(line: 220, column: 17, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !680, line: 219, column: 25)
!756 = !DILocation(line: 220, column: 3, scope: !755)
!757 = !DILocation(line: 221, column: 2, scope: !755)
!758 = !DILocation(line: 222, column: 9, scope: !679)
!759 = !DILocation(line: 222, column: 2, scope: !679)
!760 = !DILocation(line: 223, column: 1, scope: !679)
!761 = !DILocation(line: 223, column: 1, scope: !762)
!762 = !DILexicalBlockFile(scope: !679, file: !680, discriminator: 1)
!763 = distinct !DISubprogram(name: "sasl_init", scope: !680, file: !680, line: 331, type: !217, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!764 = !DILocation(line: 333, column: 2, scope: !763)
!765 = !DILocation(line: 335, column: 2, scope: !763)
!766 = !DILocation(line: 337, column: 2, scope: !763)
!767 = !DILocation(line: 338, column: 2, scope: !763)
!768 = !DILocation(line: 339, column: 2, scope: !763)
!769 = !DILocation(line: 340, column: 2, scope: !763)
!770 = !DILocation(line: 341, column: 2, scope: !763)
!771 = !DILocation(line: 342, column: 2, scope: !763)
!772 = !DILocation(line: 343, column: 2, scope: !763)
!773 = !DILocation(line: 344, column: 2, scope: !763)
!774 = !DILocation(line: 345, column: 2, scope: !763)
!775 = !DILocation(line: 346, column: 2, scope: !763)
!776 = !DILocation(line: 347, column: 2, scope: !763)
!777 = !DILocation(line: 348, column: 1, scope: !763)
!778 = distinct !DISubprogram(name: "sig_sasl_over", scope: !680, file: !680, line: 304, type: !779, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !56}
!781 = !DILocalVariable(name: "server", arg: 1, scope: !778, file: !680, line: 304, type: !56)
!782 = !DILocation(line: 304, column: 43, scope: !778)
!783 = !DILocation(line: 306, column: 87, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !680, line: 306, column: 6)
!785 = !DILocation(line: 306, column: 69, scope: !784)
!786 = !DILocation(line: 306, column: 54, scope: !784)
!787 = !DILocation(line: 306, column: 53, scope: !784)
!788 = !DILocation(line: 306, column: 28, scope: !789)
!789 = !DILexicalBlockFile(scope: !784, file: !680, discriminator: 3)
!790 = !DILocation(line: 306, column: 9, scope: !784)
!791 = !DILocation(line: 306, column: 6, scope: !778)
!792 = !DILocation(line: 306, column: 8, scope: !793)
!793 = !DILexicalBlockFile(scope: !784, file: !680, discriminator: 1)
!794 = !DILocation(line: 306, column: 6, scope: !795)
!795 = !DILexicalBlockFile(scope: !778, file: !680, discriminator: 2)
!796 = !DILocation(line: 307, column: 3, scope: !784)
!797 = !DILocation(line: 311, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !778, file: !680, line: 311, column: 6)
!799 = !DILocation(line: 311, column: 15, scope: !798)
!800 = !DILocation(line: 311, column: 28, scope: !798)
!801 = !DILocation(line: 312, column: 6, scope: !798)
!802 = !DILocation(line: 312, column: 14, scope: !798)
!803 = !DILocation(line: 312, column: 23, scope: !798)
!804 = !DILocation(line: 312, column: 38, scope: !798)
!805 = !DILocation(line: 311, column: 6, scope: !806)
!806 = !DILexicalBlockFile(scope: !778, file: !680, discriminator: 1)
!807 = !DILocation(line: 313, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !680, line: 313, column: 7)
!809 = distinct !DILexicalBlock(scope: !798, file: !680, line: 312, column: 62)
!810 = !DILocation(line: 313, column: 15, scope: !808)
!811 = !DILocation(line: 313, column: 29, scope: !808)
!812 = !DILocation(line: 313, column: 36, scope: !808)
!813 = !DILocation(line: 314, column: 37, scope: !808)
!814 = !DILocation(line: 314, column: 45, scope: !808)
!815 = !DILocation(line: 314, column: 8, scope: !808)
!816 = !DILocation(line: 313, column: 7, scope: !817)
!817 = !DILexicalBlockFile(scope: !809, file: !680, discriminator: 1)
!818 = !DILocation(line: 315, column: 42, scope: !819)
!819 = distinct !DILexicalBlock(scope: !808, file: !680, line: 314, column: 80)
!820 = !DILocation(line: 315, column: 4, scope: !819)
!821 = !DILocation(line: 316, column: 3, scope: !819)
!822 = !DILocation(line: 318, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !809, file: !680, line: 318, column: 7)
!824 = !DILocation(line: 318, column: 7, scope: !809)
!825 = !DILocation(line: 321, column: 4, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !680, line: 318, column: 56)
!827 = !DILocation(line: 321, column: 12, scope: !826)
!828 = !DILocation(line: 321, column: 28, scope: !826)
!829 = !DILocation(line: 325, column: 4, scope: !826)
!830 = !DILocation(line: 326, column: 3, scope: !826)
!831 = !DILocation(line: 327, column: 2, scope: !809)
!832 = !DILocation(line: 329, column: 1, scope: !778)
!833 = distinct !DISubprogram(name: "sasl_start", scope: !680, file: !680, line: 67, type: !834, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !56, !455, !455}
!836 = !DILocalVariable(name: "server", arg: 1, scope: !833, file: !680, line: 67, type: !56)
!837 = !DILocation(line: 67, column: 40, scope: !833)
!838 = !DILocalVariable(name: "data", arg: 2, scope: !833, file: !680, line: 67, type: !455)
!839 = !DILocation(line: 67, column: 60, scope: !833)
!840 = !DILocalVariable(name: "from", arg: 3, scope: !833, file: !680, line: 67, type: !455)
!841 = !DILocation(line: 67, column: 78, scope: !833)
!842 = !DILocalVariable(name: "conn", scope: !833, file: !680, line: 69, type: !67)
!843 = !DILocation(line: 69, column: 26, scope: !833)
!844 = !DILocation(line: 71, column: 20, scope: !833)
!845 = !DILocation(line: 71, column: 2, scope: !833)
!846 = !DILocation(line: 73, column: 9, scope: !833)
!847 = !DILocation(line: 73, column: 17, scope: !833)
!848 = !DILocation(line: 73, column: 7, scope: !833)
!849 = !DILocation(line: 75, column: 10, scope: !833)
!850 = !DILocation(line: 75, column: 16, scope: !833)
!851 = !DILocation(line: 75, column: 2, scope: !833)
!852 = !DILocation(line: 77, column: 21, scope: !853)
!853 = distinct !DILexicalBlock(scope: !833, file: !680, line: 75, column: 32)
!854 = !DILocation(line: 77, column: 4, scope: !853)
!855 = !DILocation(line: 78, column: 4, scope: !853)
!856 = !DILocation(line: 81, column: 21, scope: !853)
!857 = !DILocation(line: 81, column: 4, scope: !853)
!858 = !DILocation(line: 82, column: 4, scope: !853)
!859 = !DILocation(line: 84, column: 80, scope: !833)
!860 = !DILocation(line: 84, column: 25, scope: !833)
!861 = !DILocation(line: 84, column: 2, scope: !833)
!862 = !DILocation(line: 84, column: 10, scope: !833)
!863 = !DILocation(line: 84, column: 23, scope: !833)
!864 = !DILocation(line: 85, column: 1, scope: !833)
!865 = distinct !DISubprogram(name: "sasl_step", scope: !680, file: !680, line: 273, type: !834, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!866 = !DILocalVariable(name: "server", arg: 1, scope: !865, file: !680, line: 273, type: !56)
!867 = !DILocation(line: 273, column: 39, scope: !865)
!868 = !DILocalVariable(name: "data", arg: 2, scope: !865, file: !680, line: 273, type: !455)
!869 = !DILocation(line: 273, column: 59, scope: !865)
!870 = !DILocalVariable(name: "from", arg: 3, scope: !865, file: !680, line: 273, type: !455)
!871 = !DILocation(line: 273, column: 77, scope: !865)
!872 = !DILocalVariable(name: "req", scope: !865, file: !680, line: 275, type: !268)
!873 = !DILocation(line: 275, column: 11, scope: !865)
!874 = !DILocation(line: 277, column: 20, scope: !865)
!875 = !DILocation(line: 277, column: 2, scope: !865)
!876 = !DILocation(line: 279, column: 32, scope: !877)
!877 = distinct !DILexicalBlock(scope: !865, file: !680, line: 279, column: 6)
!878 = !DILocation(line: 279, column: 40, scope: !877)
!879 = !DILocation(line: 279, column: 7, scope: !877)
!880 = !DILocation(line: 279, column: 6, scope: !865)
!881 = !DILocation(line: 280, column: 18, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !680, line: 279, column: 53)
!883 = !DILocation(line: 280, column: 3, scope: !882)
!884 = !DILocation(line: 281, column: 3, scope: !882)
!885 = !DILocation(line: 284, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !865, file: !680, line: 284, column: 6)
!887 = !DILocation(line: 284, column: 10, scope: !886)
!888 = !DILocation(line: 284, column: 6, scope: !865)
!889 = !DILocation(line: 285, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !680, line: 284, column: 18)
!891 = !DILocation(line: 285, column: 30, scope: !890)
!892 = !DILocation(line: 285, column: 3, scope: !890)
!893 = !DILocation(line: 286, column: 17, scope: !890)
!894 = !DILocation(line: 286, column: 3, scope: !890)
!895 = !DILocation(line: 287, column: 2, scope: !890)
!896 = !DILocation(line: 290, column: 80, scope: !865)
!897 = !DILocation(line: 290, column: 25, scope: !865)
!898 = !DILocation(line: 290, column: 2, scope: !865)
!899 = !DILocation(line: 290, column: 10, scope: !865)
!900 = !DILocation(line: 290, column: 23, scope: !865)
!901 = !DILocation(line: 291, column: 1, scope: !865)
!902 = !DILocation(line: 291, column: 1, scope: !903)
!903 = !DILexicalBlockFile(scope: !865, file: !680, discriminator: 1)
!904 = distinct !DISubprogram(name: "sasl_success", scope: !680, file: !680, line: 116, type: !834, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!905 = !DILocalVariable(name: "server", arg: 1, scope: !904, file: !680, line: 116, type: !56)
!906 = !DILocation(line: 116, column: 42, scope: !904)
!907 = !DILocalVariable(name: "data", arg: 2, scope: !904, file: !680, line: 116, type: !455)
!908 = !DILocation(line: 116, column: 62, scope: !904)
!909 = !DILocalVariable(name: "from", arg: 3, scope: !904, file: !680, line: 116, type: !455)
!910 = !DILocation(line: 116, column: 80, scope: !904)
!911 = !DILocation(line: 118, column: 20, scope: !904)
!912 = !DILocation(line: 118, column: 2, scope: !904)
!913 = !DILocation(line: 120, column: 2, scope: !904)
!914 = !DILocation(line: 120, column: 10, scope: !904)
!915 = !DILocation(line: 120, column: 23, scope: !904)
!916 = !DILocation(line: 122, column: 40, scope: !904)
!917 = !DILocation(line: 122, column: 2, scope: !904)
!918 = !DILocation(line: 125, column: 25, scope: !904)
!919 = !DILocation(line: 125, column: 2, scope: !904)
!920 = !DILocation(line: 126, column: 1, scope: !904)
!921 = distinct !DISubprogram(name: "sasl_fail", scope: !680, file: !680, line: 87, type: !834, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!922 = !DILocalVariable(name: "server", arg: 1, scope: !921, file: !680, line: 87, type: !56)
!923 = !DILocation(line: 87, column: 39, scope: !921)
!924 = !DILocalVariable(name: "data", arg: 2, scope: !921, file: !680, line: 87, type: !455)
!925 = !DILocation(line: 87, column: 59, scope: !921)
!926 = !DILocalVariable(name: "from", arg: 3, scope: !921, file: !680, line: 87, type: !455)
!927 = !DILocation(line: 87, column: 77, scope: !921)
!928 = !DILocalVariable(name: "params", scope: !921, file: !680, line: 89, type: !76)
!929 = !DILocation(line: 89, column: 8, scope: !921)
!930 = !DILocalVariable(name: "error", scope: !921, file: !680, line: 89, type: !76)
!931 = !DILocation(line: 89, column: 17, scope: !921)
!932 = !DILocation(line: 92, column: 28, scope: !921)
!933 = !DILocation(line: 92, column: 11, scope: !921)
!934 = !DILocation(line: 92, column: 9, scope: !921)
!935 = !DILocation(line: 94, column: 2, scope: !921)
!936 = !DILocation(line: 94, column: 10, scope: !921)
!937 = !DILocation(line: 94, column: 23, scope: !921)
!938 = !DILocation(line: 96, column: 40, scope: !921)
!939 = !DILocation(line: 96, column: 48, scope: !921)
!940 = !DILocation(line: 96, column: 2, scope: !921)
!941 = !DILocation(line: 99, column: 25, scope: !921)
!942 = !DILocation(line: 99, column: 2, scope: !921)
!943 = !DILocation(line: 101, column: 9, scope: !921)
!944 = !DILocation(line: 101, column: 2, scope: !921)
!945 = !DILocation(line: 102, column: 1, scope: !921)
!946 = distinct !DISubprogram(name: "sasl_already", scope: !680, file: !680, line: 104, type: !834, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!947 = !DILocalVariable(name: "server", arg: 1, scope: !946, file: !680, line: 104, type: !56)
!948 = !DILocation(line: 104, column: 42, scope: !946)
!949 = !DILocalVariable(name: "data", arg: 2, scope: !946, file: !680, line: 104, type: !455)
!950 = !DILocation(line: 104, column: 62, scope: !946)
!951 = !DILocalVariable(name: "from", arg: 3, scope: !946, file: !680, line: 104, type: !455)
!952 = !DILocation(line: 104, column: 80, scope: !946)
!953 = !DILocation(line: 106, column: 20, scope: !946)
!954 = !DILocation(line: 106, column: 2, scope: !946)
!955 = !DILocation(line: 108, column: 2, scope: !946)
!956 = !DILocation(line: 108, column: 10, scope: !946)
!957 = !DILocation(line: 108, column: 23, scope: !946)
!958 = !DILocation(line: 110, column: 40, scope: !946)
!959 = !DILocation(line: 110, column: 2, scope: !946)
!960 = !DILocation(line: 113, column: 25, scope: !946)
!961 = !DILocation(line: 113, column: 2, scope: !946)
!962 = !DILocation(line: 114, column: 1, scope: !946)
!963 = distinct !DISubprogram(name: "sasl_disconnected", scope: !680, file: !680, line: 293, type: !779, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!964 = !DILocalVariable(name: "server", arg: 1, scope: !963, file: !680, line: 293, type: !56)
!965 = !DILocation(line: 293, column: 47, scope: !963)
!966 = !DILocation(line: 295, column: 2, scope: !963)
!967 = distinct !{!967, !966}
!968 = !DILocation(line: 295, column: 10, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !680, discriminator: 1)
!970 = distinct !DILexicalBlock(scope: !971, file: !680, line: 295, column: 10)
!971 = distinct !DILexicalBlock(scope: !963, file: !680, line: 295, column: 4)
!972 = !DILocation(line: 295, column: 17, scope: !969)
!973 = !DILocation(line: 295, column: 5, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !680, discriminator: 2)
!975 = distinct !DILexicalBlock(scope: !970, file: !680, line: 295, column: 3)
!976 = !DILocation(line: 295, column: 14, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !680, discriminator: 3)
!978 = distinct !DILexicalBlock(scope: !970, file: !680, line: 295, column: 12)
!979 = !DILocation(line: 295, column: 101, scope: !977)
!980 = !DILocation(line: 295, column: 112, scope: !981)
!981 = !DILexicalBlockFile(scope: !971, file: !680, discriminator: 4)
!982 = !DILocation(line: 297, column: 87, scope: !983)
!983 = distinct !DILexicalBlock(scope: !963, file: !680, line: 297, column: 6)
!984 = !DILocation(line: 297, column: 69, scope: !983)
!985 = !DILocation(line: 297, column: 54, scope: !983)
!986 = !DILocation(line: 297, column: 53, scope: !983)
!987 = !DILocation(line: 297, column: 28, scope: !988)
!988 = !DILexicalBlockFile(scope: !983, file: !680, discriminator: 3)
!989 = !DILocation(line: 297, column: 9, scope: !983)
!990 = !DILocation(line: 297, column: 6, scope: !963)
!991 = !DILocation(line: 297, column: 8, scope: !992)
!992 = !DILexicalBlockFile(scope: !983, file: !680, discriminator: 1)
!993 = !DILocation(line: 297, column: 6, scope: !994)
!994 = !DILexicalBlockFile(scope: !963, file: !680, discriminator: 2)
!995 = !DILocation(line: 298, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !983, file: !680, line: 297, column: 33)
!997 = !DILocation(line: 301, column: 20, scope: !963)
!998 = !DILocation(line: 301, column: 2, scope: !963)
!999 = !DILocation(line: 302, column: 1, scope: !963)
!1000 = !DILocation(line: 302, column: 1, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !963, file: !680, discriminator: 1)
!1002 = distinct !DISubprogram(name: "sasl_deinit", scope: !680, file: !680, line: 350, type: !217, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1003 = !DILocation(line: 352, column: 2, scope: !1002)
!1004 = !DILocation(line: 353, column: 2, scope: !1002)
!1005 = !DILocation(line: 354, column: 2, scope: !1002)
!1006 = !DILocation(line: 355, column: 2, scope: !1002)
!1007 = !DILocation(line: 356, column: 2, scope: !1002)
!1008 = !DILocation(line: 357, column: 2, scope: !1002)
!1009 = !DILocation(line: 358, column: 2, scope: !1002)
!1010 = !DILocation(line: 359, column: 2, scope: !1002)
!1011 = !DILocation(line: 360, column: 2, scope: !1002)
!1012 = !DILocation(line: 361, column: 2, scope: !1002)
!1013 = !DILocation(line: 362, column: 2, scope: !1002)
!1014 = !DILocation(line: 363, column: 2, scope: !1002)
!1015 = !DILocation(line: 364, column: 1, scope: !1002)
!1016 = distinct !DISubprogram(name: "sasl_timeout_stop", scope: !680, file: !680, line: 58, type: !779, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1017 = !DILocalVariable(name: "server", arg: 1, scope: !1016, file: !680, line: 58, type: !56)
!1018 = !DILocation(line: 58, column: 47, scope: !1016)
!1019 = !DILocation(line: 61, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !680, line: 61, column: 6)
!1021 = !DILocation(line: 61, column: 14, scope: !1020)
!1022 = !DILocation(line: 61, column: 27, scope: !1020)
!1023 = !DILocation(line: 61, column: 6, scope: !1016)
!1024 = !DILocation(line: 62, column: 19, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !680, line: 61, column: 33)
!1026 = !DILocation(line: 62, column: 27, scope: !1025)
!1027 = !DILocation(line: 62, column: 3, scope: !1025)
!1028 = !DILocation(line: 63, column: 3, scope: !1025)
!1029 = !DILocation(line: 63, column: 11, scope: !1025)
!1030 = !DILocation(line: 63, column: 24, scope: !1025)
!1031 = !DILocation(line: 64, column: 2, scope: !1025)
!1032 = !DILocation(line: 65, column: 1, scope: !1016)
!1033 = distinct !DISubprogram(name: "sasl_timeout", scope: !680, file: !680, line: 44, type: !1034, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!188, !56}
!1036 = !DILocalVariable(name: "server", arg: 1, scope: !1033, file: !680, line: 44, type: !56)
!1037 = !DILocation(line: 44, column: 46, scope: !1033)
!1038 = !DILocation(line: 47, column: 19, scope: !1033)
!1039 = !DILocation(line: 47, column: 2, scope: !1033)
!1040 = !DILocation(line: 48, column: 25, scope: !1033)
!1041 = !DILocation(line: 48, column: 2, scope: !1033)
!1042 = !DILocation(line: 50, column: 2, scope: !1033)
!1043 = !DILocation(line: 50, column: 10, scope: !1033)
!1044 = !DILocation(line: 50, column: 23, scope: !1033)
!1045 = !DILocation(line: 51, column: 2, scope: !1033)
!1046 = !DILocation(line: 51, column: 10, scope: !1033)
!1047 = !DILocation(line: 51, column: 23, scope: !1033)
!1048 = !DILocation(line: 53, column: 40, scope: !1033)
!1049 = !DILocation(line: 53, column: 2, scope: !1033)
!1050 = !DILocation(line: 55, column: 2, scope: !1033)
!1051 = distinct !DISubprogram(name: "sasl_reassemble_incoming", scope: !680, file: !680, line: 138, type: !1052, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!188, !56, !455, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!1055 = !DILocalVariable(name: "server", arg: 1, scope: !1051, file: !680, line: 138, type: !56)
!1056 = !DILocation(line: 138, column: 58, scope: !1051)
!1057 = !DILocalVariable(name: "fragment", arg: 2, scope: !1051, file: !680, line: 138, type: !455)
!1058 = !DILocation(line: 138, column: 78, scope: !1051)
!1059 = !DILocalVariable(name: "decoded", arg: 3, scope: !1051, file: !680, line: 138, type: !1054)
!1060 = !DILocation(line: 138, column: 98, scope: !1051)
!1061 = !DILocalVariable(name: "enc_req", scope: !1051, file: !680, line: 140, type: !268)
!1062 = !DILocation(line: 140, column: 11, scope: !1051)
!1063 = !DILocalVariable(name: "fragment_len", scope: !1051, file: !680, line: 141, type: !125)
!1064 = !DILocation(line: 141, column: 8, scope: !1051)
!1065 = !DILocation(line: 143, column: 24, scope: !1051)
!1066 = !DILocation(line: 143, column: 17, scope: !1051)
!1067 = !DILocation(line: 143, column: 15, scope: !1051)
!1068 = !DILocation(line: 146, column: 6, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1051, file: !680, line: 146, column: 6)
!1070 = !DILocation(line: 146, column: 14, scope: !1069)
!1071 = !DILocation(line: 146, column: 26, scope: !1069)
!1072 = !DILocation(line: 146, column: 6, scope: !1051)
!1073 = !DILocation(line: 147, column: 22, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !680, line: 147, column: 7)
!1075 = distinct !DILexicalBlock(scope: !1069, file: !680, line: 146, column: 34)
!1076 = !DILocation(line: 147, column: 7, scope: !1074)
!1077 = !DILocation(line: 147, column: 32, scope: !1074)
!1078 = !DILocation(line: 147, column: 7, scope: !1075)
!1079 = !DILocation(line: 148, column: 14, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !680, line: 147, column: 38)
!1081 = !DILocation(line: 148, column: 22, scope: !1080)
!1082 = !DILocation(line: 148, column: 12, scope: !1080)
!1083 = !DILocation(line: 149, column: 3, scope: !1080)
!1084 = !DILocation(line: 150, column: 34, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1074, file: !680, line: 149, column: 10)
!1086 = !DILocation(line: 150, column: 42, scope: !1085)
!1087 = !DILocation(line: 150, column: 55, scope: !1085)
!1088 = !DILocation(line: 150, column: 65, scope: !1085)
!1089 = !DILocation(line: 150, column: 14, scope: !1085)
!1090 = !DILocation(line: 150, column: 12, scope: !1085)
!1091 = !DILocation(line: 152, column: 3, scope: !1075)
!1092 = !DILocation(line: 152, column: 11, scope: !1075)
!1093 = !DILocation(line: 152, column: 23, scope: !1075)
!1094 = !DILocation(line: 153, column: 2, scope: !1075)
!1095 = !DILocation(line: 154, column: 30, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1069, file: !680, line: 153, column: 9)
!1097 = !DILocation(line: 154, column: 40, scope: !1096)
!1098 = !DILocation(line: 154, column: 13, scope: !1096)
!1099 = !DILocation(line: 154, column: 11, scope: !1096)
!1100 = !DILocation(line: 160, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1051, file: !680, line: 160, column: 6)
!1102 = !DILocation(line: 160, column: 15, scope: !1101)
!1103 = !DILocation(line: 160, column: 19, scope: !1101)
!1104 = !DILocation(line: 160, column: 6, scope: !1051)
!1105 = !DILocation(line: 161, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !680, line: 160, column: 27)
!1107 = !DILocation(line: 168, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1051, file: !680, line: 168, column: 6)
!1109 = !DILocation(line: 168, column: 19, scope: !1108)
!1110 = !DILocation(line: 168, column: 6, scope: !1051)
!1111 = !DILocation(line: 169, column: 25, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !680, line: 168, column: 27)
!1113 = !DILocation(line: 169, column: 3, scope: !1112)
!1114 = !DILocation(line: 169, column: 11, scope: !1112)
!1115 = !DILocation(line: 169, column: 23, scope: !1112)
!1116 = !DILocation(line: 170, column: 3, scope: !1112)
!1117 = !DILocation(line: 173, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1051, file: !680, line: 173, column: 6)
!1119 = !DILocation(line: 173, column: 15, scope: !1118)
!1120 = !DILocation(line: 173, column: 19, scope: !1118)
!1121 = !DILocation(line: 173, column: 24, scope: !1118)
!1122 = !DILocation(line: 173, column: 28, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1118, file: !680, discriminator: 1)
!1124 = !DILocation(line: 173, column: 37, scope: !1123)
!1125 = !DILocation(line: 173, column: 27, scope: !1123)
!1126 = !DILocation(line: 173, column: 41, scope: !1123)
!1127 = !DILocation(line: 173, column: 6, scope: !1123)
!1128 = !DILocation(line: 174, column: 14, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1118, file: !680, line: 173, column: 49)
!1130 = !DILocation(line: 174, column: 4, scope: !1129)
!1131 = !DILocation(line: 174, column: 12, scope: !1129)
!1132 = !DILocation(line: 175, column: 2, scope: !1129)
!1133 = !DILocalVariable(name: "dec_len", scope: !1134, file: !680, line: 176, type: !125)
!1134 = distinct !DILexicalBlock(scope: !1118, file: !680, line: 175, column: 9)
!1135 = !DILocation(line: 176, column: 9, scope: !1134)
!1136 = !DILocalVariable(name: "state", scope: !1134, file: !680, line: 177, type: !112)
!1137 = !DILocation(line: 177, column: 8, scope: !1134)
!1138 = !DILocalVariable(name: "save", scope: !1134, file: !680, line: 178, type: !220)
!1139 = !DILocation(line: 178, column: 9, scope: !1134)
!1140 = !DILocation(line: 182, column: 34, scope: !1134)
!1141 = !DILocation(line: 182, column: 43, scope: !1134)
!1142 = !DILocation(line: 182, column: 48, scope: !1134)
!1143 = !DILocation(line: 182, column: 57, scope: !1134)
!1144 = !DILocation(line: 183, column: 23, scope: !1134)
!1145 = !DILocation(line: 183, column: 32, scope: !1134)
!1146 = !DILocation(line: 182, column: 13, scope: !1134)
!1147 = !DILocation(line: 182, column: 11, scope: !1134)
!1148 = !DILocation(line: 186, column: 31, scope: !1134)
!1149 = !DILocation(line: 186, column: 40, scope: !1134)
!1150 = !DILocation(line: 186, column: 45, scope: !1134)
!1151 = !DILocation(line: 186, column: 14, scope: !1134)
!1152 = !DILocation(line: 186, column: 4, scope: !1134)
!1153 = !DILocation(line: 186, column: 12, scope: !1134)
!1154 = !DILocation(line: 189, column: 16, scope: !1051)
!1155 = !DILocation(line: 189, column: 2, scope: !1051)
!1156 = !DILocation(line: 190, column: 2, scope: !1051)
!1157 = !DILocation(line: 191, column: 1, scope: !1051)
!1158 = distinct !DISubprogram(name: "sasl_step_fail", scope: !680, file: !680, line: 263, type: !779, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1159 = !DILocalVariable(name: "server", arg: 1, scope: !1158, file: !680, line: 263, type: !56)
!1160 = !DILocation(line: 263, column: 44, scope: !1158)
!1161 = !DILocation(line: 265, column: 19, scope: !1158)
!1162 = !DILocation(line: 265, column: 2, scope: !1158)
!1163 = !DILocation(line: 266, column: 25, scope: !1158)
!1164 = !DILocation(line: 266, column: 2, scope: !1158)
!1165 = !DILocation(line: 268, column: 20, scope: !1158)
!1166 = !DILocation(line: 268, column: 2, scope: !1158)
!1167 = !DILocation(line: 270, column: 40, scope: !1158)
!1168 = !DILocation(line: 270, column: 2, scope: !1158)
!1169 = !DILocation(line: 271, column: 1, scope: !1158)
!1170 = distinct !DISubprogram(name: "sasl_step_complete", scope: !680, file: !680, line: 228, type: !681, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1171 = !DILocalVariable(name: "server", arg: 1, scope: !1170, file: !680, line: 228, type: !56)
!1172 = !DILocation(line: 228, column: 48, scope: !1170)
!1173 = !DILocalVariable(name: "data", arg: 2, scope: !1170, file: !680, line: 228, type: !268)
!1174 = !DILocation(line: 228, column: 65, scope: !1170)
!1175 = !DILocalVariable(name: "conn", scope: !1170, file: !680, line: 230, type: !67)
!1176 = !DILocation(line: 230, column: 26, scope: !1170)
!1177 = !DILocalVariable(name: "resp", scope: !1170, file: !680, line: 231, type: !268)
!1178 = !DILocation(line: 231, column: 11, scope: !1170)
!1179 = !DILocation(line: 233, column: 9, scope: !1170)
!1180 = !DILocation(line: 233, column: 17, scope: !1170)
!1181 = !DILocation(line: 233, column: 7, scope: !1170)
!1182 = !DILocation(line: 235, column: 10, scope: !1170)
!1183 = !DILocation(line: 235, column: 16, scope: !1170)
!1184 = !DILocation(line: 235, column: 2, scope: !1170)
!1185 = !DILocation(line: 243, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1170, file: !680, line: 235, column: 32)
!1187 = !DILocation(line: 243, column: 9, scope: !1186)
!1188 = !DILocation(line: 245, column: 20, scope: !1186)
!1189 = !DILocation(line: 245, column: 26, scope: !1186)
!1190 = !DILocation(line: 245, column: 32, scope: !1186)
!1191 = !DILocation(line: 245, column: 4, scope: !1186)
!1192 = !DILocation(line: 246, column: 30, scope: !1186)
!1193 = !DILocation(line: 246, column: 4, scope: !1186)
!1194 = !DILocation(line: 247, column: 20, scope: !1186)
!1195 = !DILocation(line: 247, column: 26, scope: !1186)
!1196 = !DILocation(line: 247, column: 32, scope: !1186)
!1197 = !DILocation(line: 247, column: 4, scope: !1186)
!1198 = !DILocation(line: 248, column: 30, scope: !1186)
!1199 = !DILocation(line: 248, column: 4, scope: !1186)
!1200 = !DILocation(line: 249, column: 20, scope: !1186)
!1201 = !DILocation(line: 249, column: 26, scope: !1186)
!1202 = !DILocation(line: 249, column: 32, scope: !1186)
!1203 = !DILocation(line: 249, column: 4, scope: !1186)
!1204 = !DILocation(line: 251, column: 23, scope: !1186)
!1205 = !DILocation(line: 251, column: 31, scope: !1186)
!1206 = !DILocation(line: 251, column: 4, scope: !1186)
!1207 = !DILocation(line: 252, column: 18, scope: !1186)
!1208 = !DILocation(line: 252, column: 4, scope: !1186)
!1209 = !DILocation(line: 254, column: 4, scope: !1186)
!1210 = !DILocation(line: 258, column: 23, scope: !1186)
!1211 = !DILocation(line: 258, column: 4, scope: !1186)
!1212 = !DILocation(line: 259, column: 4, scope: !1186)
!1213 = !DILocation(line: 261, column: 1, scope: !1170)
!1214 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !270, file: !270, line: 161, type: !1215, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !683)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!268, !268, !124}
!1217 = !DILocalVariable(name: "gstring", arg: 1, scope: !1214, file: !270, line: 161, type: !268)
!1218 = !DILocation(line: 161, column: 36, scope: !1214)
!1219 = !DILocalVariable(name: "c", arg: 2, scope: !1214, file: !270, line: 162, type: !124)
!1220 = !DILocation(line: 162, column: 33, scope: !1214)
!1221 = !DILocation(line: 164, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !270, line: 164, column: 7)
!1223 = !DILocation(line: 164, column: 16, scope: !1222)
!1224 = !DILocation(line: 164, column: 20, scope: !1222)
!1225 = !DILocation(line: 164, column: 26, scope: !1222)
!1226 = !DILocation(line: 164, column: 35, scope: !1222)
!1227 = !DILocation(line: 164, column: 24, scope: !1222)
!1228 = !DILocation(line: 164, column: 7, scope: !1214)
!1229 = !DILocation(line: 166, column: 38, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !270, line: 165, column: 5)
!1231 = !DILocation(line: 166, column: 20, scope: !1230)
!1232 = !DILocation(line: 166, column: 29, scope: !1230)
!1233 = !DILocation(line: 166, column: 32, scope: !1230)
!1234 = !DILocation(line: 166, column: 7, scope: !1230)
!1235 = !DILocation(line: 166, column: 16, scope: !1230)
!1236 = !DILocation(line: 166, column: 36, scope: !1230)
!1237 = !DILocation(line: 167, column: 20, scope: !1230)
!1238 = !DILocation(line: 167, column: 29, scope: !1230)
!1239 = !DILocation(line: 167, column: 7, scope: !1230)
!1240 = !DILocation(line: 167, column: 16, scope: !1230)
!1241 = !DILocation(line: 167, column: 34, scope: !1230)
!1242 = !DILocation(line: 168, column: 5, scope: !1230)
!1243 = !DILocation(line: 170, column: 24, scope: !1222)
!1244 = !DILocation(line: 170, column: 37, scope: !1222)
!1245 = !DILocation(line: 170, column: 5, scope: !1222)
!1246 = !DILocation(line: 171, column: 10, scope: !1214)
!1247 = !DILocation(line: 171, column: 3, scope: !1214)
