; ModuleID = './line159-servers-redirect.o.i'
source_filename = "./line159-servers-redirect.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._REDIRECT_REC = type { %struct.REDIRECT_CMD_REC*, i64, i32, i8*, i8, i8*, i32, i8*, i8*, i8*, i8*, %struct._GSList* }
%struct.REDIRECT_CMD_REC = type { i8*, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@__func__.server_redirect_register_list = private unnamed_addr constant [30 x i8] c"server_redirect_register_list\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"command != NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stop != NULL\00", align 1
@command_redirects = internal global %struct._GHashTable* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"server_redirect_event(%s): signal not specified for event\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.server_redirect_event_list = private unnamed_addr constant [27 x i8] c"server_redirect_event_list\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"(g_slist_length(signals) & 1) == 0\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Unknown redirection command: %s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"redirect first\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"redirect last\00", align 1
@__func__.server_redirect_command = private unnamed_addr constant [24 x i8] c"server_redirect_command\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"event 401\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 318\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"event 402\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"event 431\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"event 461\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"whowas\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"event 314\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"event 406\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"event 369\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"event 352\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"event 354\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"event 315\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"event 403\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"event 321\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"event 323\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ison\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"event 303\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"userhost\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"event 302\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"mode user\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"event mode\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"event 501\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"event 502\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"mode channel\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"event 324\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"event 442\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"event 479\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"event 329\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"mode b\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"event 367\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"event 368\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"mode e\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"event 348\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"event 349\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"event 482\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"event 472\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"mode I\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"event 346\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"event 347\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"event pong\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"event \00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"FAILED %s: %s\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"FAILED %s\00", align 1

; Function Attrs: nounwind uwtable
define void @server_redirect_destroy(%struct._REDIRECT_REC*) #0 !dbg !750 {
  %2 = alloca %struct._REDIRECT_REC*, align 8
  store %struct._REDIRECT_REC* %0, %struct._REDIRECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %2, metadata !754, metadata !755), !dbg !756
  %3 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !757
  %4 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %3, i32 0, i32 0, !dbg !758
  %5 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %4, align 8, !dbg !758
  call void @redirect_cmd_unref(%struct.REDIRECT_CMD_REC* %5), !dbg !759
  %6 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !760
  %7 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %6, i32 0, i32 3, !dbg !761
  %8 = load i8*, i8** %7, align 8, !dbg !761
  call void @g_free(i8* %8), !dbg !762
  %9 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !763
  %10 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %9, i32 0, i32 5, !dbg !764
  %11 = load i8*, i8** %10, align 8, !dbg !764
  call void @g_free(i8* %11), !dbg !765
  %12 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !766
  %13 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %12, i32 0, i32 7, !dbg !767
  %14 = load i8*, i8** %13, align 8, !dbg !767
  call void @g_free(i8* %14), !dbg !768
  %15 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !769
  %16 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %15, i32 0, i32 8, !dbg !770
  %17 = load i8*, i8** %16, align 8, !dbg !770
  call void @g_free(i8* %17), !dbg !771
  %18 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !772
  %19 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %18, i32 0, i32 9, !dbg !773
  %20 = load i8*, i8** %19, align 8, !dbg !773
  call void @g_free(i8* %20), !dbg !774
  %21 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !775
  %22 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %21, i32 0, i32 10, !dbg !776
  %23 = load i8*, i8** %22, align 8, !dbg !776
  call void @g_free(i8* %23), !dbg !777
  %24 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !778
  %25 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %24, i32 0, i32 11, !dbg !779
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !779
  call void @g_slist_foreach(%struct._GSList* %26, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !780
  %27 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !781
  %28 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %27, i32 0, i32 11, !dbg !782
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !782
  call void @g_slist_free(%struct._GSList* %29), !dbg !783
  %30 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %2, align 8, !dbg !784
  %31 = bitcast %struct._REDIRECT_REC* %30 to i8*, !dbg !784
  call void @g_free(i8* %31), !dbg !785
  ret void, !dbg !786
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @redirect_cmd_unref(%struct.REDIRECT_CMD_REC*) #0 !dbg !787 {
  %2 = alloca %struct.REDIRECT_CMD_REC*, align 8
  store %struct.REDIRECT_CMD_REC* %0, %struct.REDIRECT_CMD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %2, metadata !790, metadata !755), !dbg !791
  %3 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !792
  %4 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %3, i32 0, i32 1, !dbg !794
  %5 = load i32, i32* %4, align 8, !dbg !795
  %6 = add nsw i32 %5, -1, !dbg !795
  store i32 %6, i32* %4, align 8, !dbg !795
  %7 = icmp sle i32 %6, 0, !dbg !796
  br i1 %7, label %8, label %10, !dbg !797

; <label>:8:                                      ; preds = %1
  %9 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !798
  call void @redirect_cmd_destroy(%struct.REDIRECT_CMD_REC* %9), !dbg !799
  br label %10, !dbg !799

; <label>:10:                                     ; preds = %8, %1
  ret void, !dbg !800
}

declare void @g_free(i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define void @server_redirect_register(i8*, i32, i32, ...) #0 !dbg !801 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !804, metadata !755), !dbg !805
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !806, metadata !755), !dbg !807
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !808, metadata !755), !dbg !809
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !810, metadata !755), !dbg !825
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !826, metadata !755), !dbg !827
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !828, metadata !755), !dbg !829
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !830, metadata !755), !dbg !831
  call void @llvm.dbg.declare(metadata %struct._GSList*** %11, metadata !832, metadata !755), !dbg !834
  call void @llvm.dbg.declare(metadata i8** %12, metadata !835, metadata !755), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %13, metadata !837, metadata !755), !dbg !838
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !839
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !839
  call void @llvm.va_start(i8* %15), !dbg !839
  store %struct._GSList* null, %struct._GSList** %10, align 8, !dbg !840
  store %struct._GSList* null, %struct._GSList** %9, align 8, !dbg !841
  store %struct._GSList* null, %struct._GSList** %8, align 8, !dbg !842
  store %struct._GSList** %8, %struct._GSList*** %11, align 8, !dbg !843
  br label %16, !dbg !844

; <label>:16:                                     ; preds = %64, %47, %3
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !845
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 0, !dbg !845
  %19 = load i32, i32* %18, align 16, !dbg !845
  %20 = icmp ule i32 %19, 40, !dbg !845
  br i1 %20, label %21, label %27, !dbg !845

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 3, !dbg !849
  %23 = load i8*, i8** %22, align 16, !dbg !849
  %24 = getelementptr i8, i8* %23, i32 %19, !dbg !849
  %25 = bitcast i8* %24 to i8**, !dbg !849
  %26 = add i32 %19, 8, !dbg !849
  store i32 %26, i32* %18, align 16, !dbg !849
  br label %32, !dbg !849

; <label>:27:                                     ; preds = %16
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %17, i32 0, i32 2, !dbg !851
  %29 = load i8*, i8** %28, align 8, !dbg !851
  %30 = bitcast i8* %29 to i8**, !dbg !851
  %31 = getelementptr i8, i8* %29, i32 8, !dbg !851
  store i8* %31, i8** %28, align 8, !dbg !851
  br label %32, !dbg !851

; <label>:32:                                     ; preds = %27, %21
  %33 = phi i8** [ %25, %21 ], [ %30, %27 ], !dbg !853
  %34 = load i8*, i8** %33, align 8, !dbg !853
  store i8* %34, i8** %12, align 8, !dbg !855
  %35 = load i8*, i8** %12, align 8, !dbg !856
  %36 = icmp eq i8* %35, null, !dbg !858
  br i1 %36, label %37, label %48, !dbg !859

; <label>:37:                                     ; preds = %32
  %38 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !860
  %39 = icmp eq %struct._GSList** %38, %8, !dbg !863
  br i1 %39, label %40, label %41, !dbg !864

; <label>:40:                                     ; preds = %37
  store %struct._GSList** %9, %struct._GSList*** %11, align 8, !dbg !865
  br label %47, !dbg !866

; <label>:41:                                     ; preds = %37
  %42 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !867
  %43 = icmp eq %struct._GSList** %42, %9, !dbg !869
  br i1 %43, label %44, label %45, !dbg !870

; <label>:44:                                     ; preds = %41
  store %struct._GSList** %10, %struct._GSList*** %11, align 8, !dbg !871
  br label %46, !dbg !872

; <label>:45:                                     ; preds = %41
  br label %80, !dbg !873

; <label>:46:                                     ; preds = %44
  br label %47

; <label>:47:                                     ; preds = %46, %40
  br label %16, !dbg !874, !llvm.loop !875

; <label>:48:                                     ; preds = %32
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !876
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 0, !dbg !876
  %51 = load i32, i32* %50, align 16, !dbg !876
  %52 = icmp ule i32 %51, 40, !dbg !876
  br i1 %52, label %53, label %59, !dbg !876

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3, !dbg !877
  %55 = load i8*, i8** %54, align 16, !dbg !877
  %56 = getelementptr i8, i8* %55, i32 %51, !dbg !877
  %57 = bitcast i8* %56 to i32*, !dbg !877
  %58 = add i32 %51, 8, !dbg !877
  store i32 %58, i32* %50, align 16, !dbg !877
  br label %64, !dbg !877

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 2, !dbg !878
  %61 = load i8*, i8** %60, align 8, !dbg !878
  %62 = bitcast i8* %61 to i32*, !dbg !878
  %63 = getelementptr i8, i8* %61, i32 8, !dbg !878
  store i8* %63, i8** %60, align 8, !dbg !878
  br label %64, !dbg !878

; <label>:64:                                     ; preds = %59, %53
  %65 = phi i32* [ %57, %53 ], [ %62, %59 ], !dbg !879
  %66 = load i32, i32* %65, align 4, !dbg !879
  store i32 %66, i32* %13, align 4, !dbg !880
  %67 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !881
  %68 = load %struct._GSList*, %struct._GSList** %67, align 8, !dbg !882
  %69 = load i8*, i8** %12, align 8, !dbg !883
  %70 = call noalias i8* @g_strdup(i8* %69), !dbg !884
  %71 = call %struct._GSList* @g_slist_append(%struct._GSList* %68, i8* %70), !dbg !885
  %72 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !886
  store %struct._GSList* %71, %struct._GSList** %72, align 8, !dbg !887
  %73 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !888
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !889
  %75 = load i32, i32* %13, align 4, !dbg !890
  %76 = sext i32 %75 to i64, !dbg !891
  %77 = inttoptr i64 %76 to i8*, !dbg !892
  %78 = call %struct._GSList* @g_slist_append(%struct._GSList* %74, i8* %77), !dbg !893
  %79 = load %struct._GSList**, %struct._GSList*** %11, align 8, !dbg !894
  store %struct._GSList* %78, %struct._GSList** %79, align 8, !dbg !895
  br label %16, !dbg !896, !llvm.loop !875

; <label>:80:                                     ; preds = %45
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0, !dbg !898
  %82 = bitcast %struct.__va_list_tag* %81 to i8*, !dbg !898
  call void @llvm.va_end(i8* %82), !dbg !898
  %83 = load i8*, i8** %4, align 8, !dbg !899
  %84 = load i32, i32* %5, align 4, !dbg !900
  %85 = load i32, i32* %6, align 4, !dbg !901
  %86 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !902
  %87 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !903
  %88 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !904
  call void @server_redirect_register_list(i8* %83, i32 %84, i32 %85, %struct._GSList* %86, %struct._GSList* %87, %struct._GSList* %88), !dbg !905
  ret void, !dbg !906
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define void @server_redirect_register_list(i8*, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*) #0 !dbg !907 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct.REDIRECT_CMD_REC*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !910, metadata !755), !dbg !911
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !912, metadata !755), !dbg !913
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !914, metadata !755), !dbg !915
  store %struct._GSList* %3, %struct._GSList** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !916, metadata !755), !dbg !917
  store %struct._GSList* %4, %struct._GSList** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !918, metadata !755), !dbg !919
  store %struct._GSList* %5, %struct._GSList** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !920, metadata !755), !dbg !921
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %13, metadata !922, metadata !755), !dbg !923
  call void @llvm.dbg.declare(metadata i8** %14, metadata !924, metadata !755), !dbg !925
  call void @llvm.dbg.declare(metadata i8** %15, metadata !926, metadata !755), !dbg !927
  br label %16, !dbg !928, !llvm.loop !929

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %7, align 8, !dbg !930
  %18 = icmp ne i8* %17, null, !dbg !934
  br i1 %18, label %19, label %20, !dbg !930

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !935

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.server_redirect_register_list, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !938
  br label %76, !dbg !941

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !942

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !944, !llvm.loop !945

; <label>:23:                                     ; preds = %22
  %24 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !946
  %25 = icmp ne %struct._GSList* %24, null, !dbg !950
  br i1 %25, label %26, label %27, !dbg !946

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !951

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.server_redirect_register_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !954
  br label %76, !dbg !957

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !958

; <label>:29:                                     ; preds = %28
  %30 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !960
  %31 = load i8*, i8** %7, align 8, !dbg !962
  %32 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %30, i8* %31, i8** %14, i8** %15), !dbg !963
  %33 = icmp ne i32 %32, 0, !dbg !963
  br i1 %33, label %34, label %40, !dbg !964

; <label>:34:                                     ; preds = %29
  %35 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !965
  %36 = load i8*, i8** %7, align 8, !dbg !967
  %37 = call i32 @g_hash_table_remove(%struct._GHashTable* %35, i8* %36), !dbg !968
  %38 = load i8*, i8** %15, align 8, !dbg !969
  %39 = bitcast i8* %38 to %struct.REDIRECT_CMD_REC*, !dbg !969
  call void @redirect_cmd_unref(%struct.REDIRECT_CMD_REC* %39), !dbg !970
  br label %40, !dbg !971

; <label>:40:                                     ; preds = %34, %29
  %41 = call noalias i8* @g_malloc0_n(i64 1, i64 48), !dbg !972
  %42 = bitcast i8* %41 to %struct.REDIRECT_CMD_REC*, !dbg !973
  store %struct.REDIRECT_CMD_REC* %42, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !974
  %43 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !975
  call void @redirect_cmd_ref(%struct.REDIRECT_CMD_REC* %43), !dbg !976
  %44 = load i8*, i8** %7, align 8, !dbg !977
  %45 = call noalias i8* @g_strdup(i8* %44), !dbg !978
  %46 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !979
  %47 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %46, i32 0, i32 0, !dbg !980
  store i8* %45, i8** %47, align 8, !dbg !981
  %48 = load i32, i32* %8, align 4, !dbg !982
  %49 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !983
  %50 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %49, i32 0, i32 2, !dbg !984
  store i32 %48, i32* %50, align 4, !dbg !985
  %51 = load i32, i32* %9, align 4, !dbg !986
  %52 = icmp sgt i32 %51, 0, !dbg !987
  br i1 %52, label %53, label %55, !dbg !986

; <label>:53:                                     ; preds = %40
  %54 = load i32, i32* %9, align 4, !dbg !988
  br label %56, !dbg !990

; <label>:55:                                     ; preds = %40
  br label %56, !dbg !991

; <label>:56:                                     ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 60, %55 ], !dbg !993
  %58 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !995
  %59 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %58, i32 0, i32 3, !dbg !996
  store i32 %57, i32* %59, align 8, !dbg !997
  %60 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !998
  %61 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !999
  %62 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %61, i32 0, i32 4, !dbg !1000
  store %struct._GSList* %60, %struct._GSList** %62, align 8, !dbg !1001
  %63 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1002
  %64 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !1003
  %65 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %64, i32 0, i32 5, !dbg !1004
  store %struct._GSList* %63, %struct._GSList** %65, align 8, !dbg !1005
  %66 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1006
  %67 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !1007
  %68 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %67, i32 0, i32 6, !dbg !1008
  store %struct._GSList* %66, %struct._GSList** %68, align 8, !dbg !1009
  %69 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1010
  %70 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !1011
  %71 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %70, i32 0, i32 0, !dbg !1012
  %72 = load i8*, i8** %71, align 8, !dbg !1012
  %73 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %13, align 8, !dbg !1013
  %74 = bitcast %struct.REDIRECT_CMD_REC* %73 to i8*, !dbg !1013
  %75 = call i32 @g_hash_table_insert(%struct._GHashTable* %69, i8* %72, i8* %74), !dbg !1014
  br label %76, !dbg !1015

; <label>:76:                                     ; preds = %56, %27, %20
  ret void, !dbg !1016
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @redirect_cmd_ref(%struct.REDIRECT_CMD_REC*) #0 !dbg !1017 {
  %2 = alloca %struct.REDIRECT_CMD_REC*, align 8
  store %struct.REDIRECT_CMD_REC* %0, %struct.REDIRECT_CMD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %2, metadata !1018, metadata !755), !dbg !1019
  %3 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1020
  %4 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %3, i32 0, i32 1, !dbg !1021
  %5 = load i32, i32* %4, align 8, !dbg !1022
  %6 = add nsw i32 %5, 1, !dbg !1022
  store i32 %6, i32* %4, align 8, !dbg !1022
  ret void, !dbg !1023
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #0 !dbg !1024 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1027, metadata !755), !dbg !1028
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1029, metadata !755), !dbg !1030
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1031, metadata !755), !dbg !1032
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1033, metadata !755), !dbg !1034
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1035, metadata !755), !dbg !1036
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1037, metadata !755), !dbg !1038
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !1039, metadata !755), !dbg !1040
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1041, metadata !755), !dbg !1042
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1043, metadata !755), !dbg !1044
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %16, metadata !1045, metadata !755), !dbg !1046
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !1047
  %18 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !1047
  call void @llvm.va_start(i8* %18), !dbg !1047
  store %struct._GSList* null, %struct._GSList** %13, align 8, !dbg !1048
  br label %19, !dbg !1049

; <label>:19:                                     ; preds = %62, %6
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !1050
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0, !dbg !1050
  %22 = load i32, i32* %21, align 16, !dbg !1050
  %23 = icmp ule i32 %22, 40, !dbg !1050
  br i1 %23, label %24, label %30, !dbg !1050

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3, !dbg !1052
  %26 = load i8*, i8** %25, align 16, !dbg !1052
  %27 = getelementptr i8, i8* %26, i32 %22, !dbg !1052
  %28 = bitcast i8* %27 to i8**, !dbg !1052
  %29 = add i32 %22, 8, !dbg !1052
  store i32 %29, i32* %21, align 16, !dbg !1052
  br label %35, !dbg !1052

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2, !dbg !1054
  %32 = load i8*, i8** %31, align 8, !dbg !1054
  %33 = bitcast i8* %32 to i8**, !dbg !1054
  %34 = getelementptr i8, i8* %32, i32 8, !dbg !1054
  store i8* %34, i8** %31, align 8, !dbg !1054
  br label %35, !dbg !1054

; <label>:35:                                     ; preds = %30, %24
  %36 = phi i8** [ %28, %24 ], [ %33, %30 ], !dbg !1056
  %37 = load i8*, i8** %36, align 8, !dbg !1056
  store i8* %37, i8** %14, align 8, !dbg !1058
  %38 = icmp ne i8* %37, null, !dbg !1059
  br i1 %38, label %39, label %71, !dbg !1060

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !1061
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 0, !dbg !1061
  %42 = load i32, i32* %41, align 16, !dbg !1061
  %43 = icmp ule i32 %42, 40, !dbg !1061
  br i1 %43, label %44, label %50, !dbg !1061

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 3, !dbg !1063
  %46 = load i8*, i8** %45, align 16, !dbg !1063
  %47 = getelementptr i8, i8* %46, i32 %42, !dbg !1063
  %48 = bitcast i8* %47 to i8**, !dbg !1063
  %49 = add i32 %42, 8, !dbg !1063
  store i32 %49, i32* %41, align 16, !dbg !1063
  br label %55, !dbg !1063

; <label>:50:                                     ; preds = %39
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 2, !dbg !1065
  %52 = load i8*, i8** %51, align 8, !dbg !1065
  %53 = bitcast i8* %52 to i8**, !dbg !1065
  %54 = getelementptr i8, i8* %52, i32 8, !dbg !1065
  store i8* %54, i8** %51, align 8, !dbg !1065
  br label %55, !dbg !1065

; <label>:55:                                     ; preds = %50, %44
  %56 = phi i8** [ %48, %44 ], [ %53, %50 ], !dbg !1067
  %57 = load i8*, i8** %56, align 8, !dbg !1067
  store i8* %57, i8** %15, align 8, !dbg !1069
  %58 = load i8*, i8** %15, align 8, !dbg !1070
  %59 = icmp eq i8* %58, null, !dbg !1072
  br i1 %59, label %60, label %62, !dbg !1073

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %8, align 8, !dbg !1074
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i8* %61), !dbg !1076
  br label %71, !dbg !1077

; <label>:62:                                     ; preds = %55
  %63 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1078
  %64 = load i8*, i8** %14, align 8, !dbg !1079
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !1080
  %66 = call %struct._GSList* @g_slist_append(%struct._GSList* %63, i8* %65), !dbg !1081
  store %struct._GSList* %66, %struct._GSList** %13, align 8, !dbg !1082
  %67 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1083
  %68 = load i8*, i8** %15, align 8, !dbg !1084
  %69 = call noalias i8* @g_strdup(i8* %68), !dbg !1085
  %70 = call %struct._GSList* @g_slist_append(%struct._GSList* %67, i8* %69), !dbg !1086
  store %struct._GSList* %70, %struct._GSList** %13, align 8, !dbg !1087
  br label %19, !dbg !1088, !llvm.loop !1090

; <label>:71:                                     ; preds = %60, %35
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !1091
  %73 = bitcast %struct.__va_list_tag* %72 to i8*, !dbg !1091
  call void @llvm.va_end(i8* %73), !dbg !1091
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1092
  %75 = load i8*, i8** %8, align 8, !dbg !1093
  %76 = load i32, i32* %9, align 4, !dbg !1094
  %77 = load i8*, i8** %10, align 8, !dbg !1095
  %78 = load i32, i32* %11, align 4, !dbg !1096
  %79 = load i8*, i8** %12, align 8, !dbg !1097
  %80 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1098
  call void @server_redirect_event_list(%struct._IRC_SERVER_REC* %74, i8* %75, i32 %76, i8* %77, i32 %78, i8* %79, %struct._GSList* %80), !dbg !1099
  ret void, !dbg !1100
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @server_redirect_event_list(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, %struct._GSList*) #0 !dbg !1101 {
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct.REDIRECT_CMD_REC*, align 8
  %16 = alloca %struct._REDIRECT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !1104, metadata !755), !dbg !1105
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1106, metadata !755), !dbg !1107
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1108, metadata !755), !dbg !1109
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1110, metadata !755), !dbg !1111
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1112, metadata !755), !dbg !1113
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1114, metadata !755), !dbg !1115
  store %struct._GSList* %6, %struct._GSList** %14, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !1116, metadata !755), !dbg !1117
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %15, metadata !1118, metadata !755), !dbg !1119
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %16, metadata !1120, metadata !755), !dbg !1121
  br label %17, !dbg !1122, !llvm.loop !1123

; <label>:17:                                     ; preds = %7
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1124
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1124
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !1128
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1129
  %22 = bitcast %struct._SERVER_REC* %21 to i8*, !dbg !1130
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1131
  %24 = bitcast i8* %23 to %struct._IRC_SERVER_REC*, !dbg !1133
  %25 = icmp ne %struct._IRC_SERVER_REC* %24, null, !dbg !1133
  br i1 %25, label %26, label %27, !dbg !1134

; <label>:26:                                     ; preds = %17
  br i1 false, label %29, label %28, !dbg !1135

; <label>:27:                                     ; preds = %17
  br i1 false, label %28, label %29, !dbg !1137

; <label>:28:                                     ; preds = %27, %26
  br label %30, !dbg !1139

; <label>:29:                                     ; preds = %27, %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.server_redirect_event_list, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)), !dbg !1142
  br label %120, !dbg !1145

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1146

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1148, !llvm.loop !1149

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !1150
  %34 = icmp ne i8* %33, null, !dbg !1154
  br i1 %34, label %35, label %36, !dbg !1150

; <label>:35:                                     ; preds = %32
  br label %37, !dbg !1155

; <label>:36:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.server_redirect_event_list, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !1158
  br label %120, !dbg !1161

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !1162

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1164, !llvm.loop !1165

; <label>:39:                                     ; preds = %38
  %40 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1166
  %41 = call i32 @g_slist_length(%struct._GSList* %40), !dbg !1170
  %42 = and i32 %41, 1, !dbg !1171
  %43 = icmp eq i32 %42, 0, !dbg !1172
  br i1 %43, label %44, label %45, !dbg !1173

; <label>:44:                                     ; preds = %39
  br label %46, !dbg !1174

; <label>:45:                                     ; preds = %39
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.server_redirect_event_list, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)), !dbg !1177
  br label %120, !dbg !1180

; <label>:46:                                     ; preds = %44
  br label %47, !dbg !1181

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1183
  %49 = load i8*, i8** %9, align 8, !dbg !1184
  %50 = call i8* @g_hash_table_lookup(%struct._GHashTable* %48, i8* %49), !dbg !1185
  %51 = bitcast i8* %50 to %struct.REDIRECT_CMD_REC*, !dbg !1185
  store %struct.REDIRECT_CMD_REC* %51, %struct.REDIRECT_CMD_REC** %15, align 8, !dbg !1186
  %52 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %15, align 8, !dbg !1187
  %53 = icmp eq %struct.REDIRECT_CMD_REC* %52, null, !dbg !1189
  br i1 %53, label %54, label %56, !dbg !1190

; <label>:54:                                     ; preds = %47
  %55 = load i8*, i8** %9, align 8, !dbg !1191
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* %55), !dbg !1193
  br label %120, !dbg !1194

; <label>:56:                                     ; preds = %47
  %57 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %15, align 8, !dbg !1195
  call void @redirect_cmd_ref(%struct.REDIRECT_CMD_REC* %57), !dbg !1196
  %58 = call noalias i8* @g_malloc0_n(i64 1, i64 96), !dbg !1197
  %59 = bitcast i8* %58 to %struct._REDIRECT_REC*, !dbg !1198
  store %struct._REDIRECT_REC* %59, %struct._REDIRECT_REC** %16, align 8, !dbg !1199
  %60 = call i64 @time(i64* null) #3, !dbg !1200
  %61 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1201
  %62 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %61, i32 0, i32 1, !dbg !1202
  store i64 %60, i64* %62, align 8, !dbg !1203
  %63 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %15, align 8, !dbg !1204
  %64 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1205
  %65 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %64, i32 0, i32 0, !dbg !1206
  store %struct.REDIRECT_CMD_REC* %63, %struct.REDIRECT_CMD_REC** %65, align 8, !dbg !1207
  %66 = load i8*, i8** %11, align 8, !dbg !1208
  %67 = call noalias i8* @g_strdup(i8* %66), !dbg !1209
  %68 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1210
  %69 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %68, i32 0, i32 5, !dbg !1211
  store i8* %67, i8** %69, align 8, !dbg !1212
  %70 = load i32, i32* %10, align 4, !dbg !1213
  %71 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1214
  %72 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %71, i32 0, i32 6, !dbg !1215
  store i32 %70, i32* %72, align 8, !dbg !1216
  %73 = load i32, i32* %12, align 4, !dbg !1217
  %74 = icmp ne i32 %73, -1, !dbg !1218
  br i1 %74, label %75, label %77, !dbg !1217

; <label>:75:                                     ; preds = %56
  %76 = load i32, i32* %12, align 4, !dbg !1219
  br label %81, !dbg !1221

; <label>:77:                                     ; preds = %56
  %78 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %15, align 8, !dbg !1222
  %79 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %78, i32 0, i32 2, !dbg !1224
  %80 = load i32, i32* %79, align 4, !dbg !1224
  br label %81, !dbg !1225

; <label>:81:                                     ; preds = %77, %75
  %82 = phi i32 [ %76, %75 ], [ %80, %77 ], !dbg !1226
  %83 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1228
  %84 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %83, i32 0, i32 4, !dbg !1229
  %85 = trunc i32 %82 to i8, !dbg !1230
  %86 = load i8, i8* %84, align 8, !dbg !1230
  %87 = and i8 %85, 1, !dbg !1230
  %88 = shl i8 %87, 2, !dbg !1230
  %89 = and i8 %86, -5, !dbg !1230
  %90 = or i8 %89, %88, !dbg !1230
  store i8 %90, i8* %84, align 8, !dbg !1230
  %91 = zext i8 %87 to i32, !dbg !1230
  %92 = load i8*, i8** %13, align 8, !dbg !1231
  %93 = call noalias i8* @g_strdup(i8* %92), !dbg !1232
  %94 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1233
  %95 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %94, i32 0, i32 7, !dbg !1234
  store i8* %93, i8** %95, align 8, !dbg !1235
  %96 = call i8* @signal_list_move(%struct._GSList** %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)), !dbg !1236
  %97 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1237
  %98 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %97, i32 0, i32 8, !dbg !1238
  store i8* %96, i8** %98, align 8, !dbg !1239
  %99 = call i8* @signal_list_move(%struct._GSList** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !1240
  %100 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1241
  %101 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %100, i32 0, i32 9, !dbg !1242
  store i8* %99, i8** %101, align 8, !dbg !1243
  %102 = call i8* @signal_list_move(%struct._GSList** %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)), !dbg !1244
  %103 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1245
  %104 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %103, i32 0, i32 10, !dbg !1246
  store i8* %102, i8** %104, align 8, !dbg !1247
  %105 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !1248
  %106 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1249
  %107 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %106, i32 0, i32 11, !dbg !1250
  store %struct._GSList* %105, %struct._GSList** %107, align 8, !dbg !1251
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1252
  %109 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %108, i32 0, i32 37, !dbg !1254
  %110 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %109, align 8, !dbg !1254
  %111 = icmp ne %struct._REDIRECT_REC* %110, null, !dbg !1255
  br i1 %111, label %112, label %116, !dbg !1256

; <label>:112:                                    ; preds = %81
  %113 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1257
  %114 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %113, i32 0, i32 37, !dbg !1258
  %115 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %114, align 8, !dbg !1258
  call void @server_redirect_destroy(%struct._REDIRECT_REC* %115), !dbg !1259
  br label %116, !dbg !1259

; <label>:116:                                    ; preds = %112, %81
  %117 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !1260
  %118 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1261
  %119 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %118, i32 0, i32 37, !dbg !1262
  store %struct._REDIRECT_REC* %117, %struct._REDIRECT_REC** %119, align 8, !dbg !1263
  br label %120, !dbg !1264

; <label>:120:                                    ; preds = %116, %54, %45, %36, %29
  ret void, !dbg !1265
}

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind uwtable
define internal i8* @signal_list_move(%struct._GSList**, i8*) #0 !dbg !1266 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._GSList** %0, %struct._GSList*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %4, metadata !1269, metadata !755), !dbg !1270
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1271, metadata !755), !dbg !1272
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1273, metadata !755), !dbg !1274
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1275, metadata !755), !dbg !1276
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1277, metadata !755), !dbg !1278
  %9 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1279
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1280
  %11 = load i8*, i8** %5, align 8, !dbg !1281
  %12 = call %struct._GSList* @gslist_find_string(%struct._GSList* %10, i8* %11), !dbg !1282
  store %struct._GSList* %12, %struct._GSList** %6, align 8, !dbg !1283
  %13 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1284
  %14 = icmp eq %struct._GSList* %13, null, !dbg !1286
  br i1 %14, label %15, label %16, !dbg !1287

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1288
  br label %37, !dbg !1288

; <label>:16:                                     ; preds = %2
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1289
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !1290
  %19 = load i8*, i8** %18, align 8, !dbg !1290
  store i8* %19, i8** %7, align 8, !dbg !1291
  %20 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1292
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 1, !dbg !1293
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1293
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1294
  %24 = load i8*, i8** %23, align 8, !dbg !1294
  store i8* %24, i8** %8, align 8, !dbg !1295
  %25 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1296
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1297
  %27 = load i8*, i8** %7, align 8, !dbg !1298
  %28 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %27), !dbg !1299
  %29 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1300
  store %struct._GSList* %28, %struct._GSList** %29, align 8, !dbg !1301
  %30 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1302
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1303
  %32 = load i8*, i8** %8, align 8, !dbg !1304
  %33 = call %struct._GSList* @g_slist_remove(%struct._GSList* %31, i8* %32), !dbg !1305
  %34 = load %struct._GSList**, %struct._GSList*** %4, align 8, !dbg !1306
  store %struct._GSList* %33, %struct._GSList** %34, align 8, !dbg !1307
  %35 = load i8*, i8** %7, align 8, !dbg !1308
  call void @g_free(i8* %35), !dbg !1309
  %36 = load i8*, i8** %8, align 8, !dbg !1310
  store i8* %36, i8** %3, align 8, !dbg !1311
  br label %37, !dbg !1311

; <label>:37:                                     ; preds = %16, %15
  %38 = load i8*, i8** %3, align 8, !dbg !1312
  ret i8* %38, !dbg !1312
}

; Function Attrs: nounwind uwtable
define void @server_redirect_command(%struct._IRC_SERVER_REC*, i8*, %struct._REDIRECT_REC*) #0 !dbg !1313 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._REDIRECT_REC*, align 8
  %7 = alloca %struct.REDIRECT_CMD_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1316, metadata !755), !dbg !1317
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1318, metadata !755), !dbg !1319
  store %struct._REDIRECT_REC* %2, %struct._REDIRECT_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %6, metadata !1320, metadata !755), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %7, metadata !1322, metadata !755), !dbg !1323
  br label %8, !dbg !1324, !llvm.loop !1325

; <label>:8:                                      ; preds = %3
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1326
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !1326
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !1330
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !1331
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1332
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1333
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !1335
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1335
  br i1 %16, label %17, label %18, !dbg !1336

; <label>:17:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !1337

; <label>:18:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !1339

; <label>:19:                                     ; preds = %18, %17
  br label %21, !dbg !1341

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.server_redirect_command, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)), !dbg !1344
  br label %69, !dbg !1347

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1348

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !1350, !llvm.loop !1351

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %5, align 8, !dbg !1352
  %25 = icmp ne i8* %24, null, !dbg !1356
  br i1 %25, label %26, label %27, !dbg !1352

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !1357

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.server_redirect_command, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !1360
  br label %69, !dbg !1363

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1364

; <label>:29:                                     ; preds = %28
  %30 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1366
  %31 = icmp eq %struct._REDIRECT_REC* %30, null, !dbg !1368
  br i1 %31, label %32, label %60, !dbg !1369

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** %5, align 8, !dbg !1370
  %34 = call %struct.REDIRECT_CMD_REC* @redirect_cmd_find(i8* %33), !dbg !1372
  store %struct.REDIRECT_CMD_REC* %34, %struct.REDIRECT_CMD_REC** %7, align 8, !dbg !1373
  %35 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %7, align 8, !dbg !1374
  %36 = icmp eq %struct.REDIRECT_CMD_REC* %35, null, !dbg !1376
  br i1 %36, label %37, label %38, !dbg !1377

; <label>:37:                                     ; preds = %32
  br label %69, !dbg !1378

; <label>:38:                                     ; preds = %32
  %39 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %7, align 8, !dbg !1379
  call void @redirect_cmd_ref(%struct.REDIRECT_CMD_REC* %39), !dbg !1380
  %40 = call noalias i8* @g_malloc0_n(i64 1, i64 96), !dbg !1381
  %41 = bitcast i8* %40 to %struct._REDIRECT_REC*, !dbg !1382
  store %struct._REDIRECT_REC* %41, %struct._REDIRECT_REC** %6, align 8, !dbg !1383
  %42 = call i64 @time(i64* null) #3, !dbg !1384
  %43 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1385
  %44 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %43, i32 0, i32 1, !dbg !1386
  store i64 %42, i64* %44, align 8, !dbg !1387
  %45 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %7, align 8, !dbg !1388
  %46 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1389
  %47 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %46, i32 0, i32 0, !dbg !1390
  store %struct.REDIRECT_CMD_REC* %45, %struct.REDIRECT_CMD_REC** %47, align 8, !dbg !1391
  %48 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %7, align 8, !dbg !1392
  %49 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %48, i32 0, i32 2, !dbg !1393
  %50 = load i32, i32* %49, align 4, !dbg !1393
  %51 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1394
  %52 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %51, i32 0, i32 4, !dbg !1395
  %53 = trunc i32 %50 to i8, !dbg !1396
  %54 = load i8, i8* %52, align 8, !dbg !1396
  %55 = and i8 %53, 1, !dbg !1396
  %56 = shl i8 %55, 2, !dbg !1396
  %57 = and i8 %54, -5, !dbg !1396
  %58 = or i8 %57, %56, !dbg !1396
  store i8 %58, i8* %52, align 8, !dbg !1396
  %59 = zext i8 %55 to i32, !dbg !1396
  br label %60, !dbg !1397

; <label>:60:                                     ; preds = %38, %29
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1398
  %62 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %61, i32 0, i32 35, !dbg !1399
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !1399
  %64 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1400
  %65 = bitcast %struct._REDIRECT_REC* %64 to i8*, !dbg !1400
  %66 = call %struct._GSList* @g_slist_append(%struct._GSList* %63, i8* %65), !dbg !1401
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1402
  %68 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %67, i32 0, i32 35, !dbg !1403
  store %struct._GSList* %66, %struct._GSList** %68, align 8, !dbg !1404
  br label %69, !dbg !1405

; <label>:69:                                     ; preds = %60, %37, %27, %20
  ret void, !dbg !1406
}

; Function Attrs: nounwind uwtable
define internal %struct.REDIRECT_CMD_REC* @redirect_cmd_find(i8*) #0 !dbg !1408 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.REDIRECT_CMD_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1411, metadata !755), !dbg !1412
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %3, metadata !1413, metadata !755), !dbg !1414
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1415, metadata !755), !dbg !1416
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1417, metadata !755), !dbg !1418
  %6 = load i8*, i8** %2, align 8, !dbg !1419
  %7 = call i8* @strchr(i8* %6, i32 32) #7, !dbg !1420
  store i8* %7, i8** %4, align 8, !dbg !1421
  %8 = load i8*, i8** %4, align 8, !dbg !1422
  %9 = icmp eq i8* %8, null, !dbg !1424
  br i1 %9, label %10, label %15, !dbg !1425

; <label>:10:                                     ; preds = %1
  %11 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1426
  %12 = load i8*, i8** %2, align 8, !dbg !1427
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* %12), !dbg !1428
  %14 = bitcast i8* %13 to %struct.REDIRECT_CMD_REC*, !dbg !1428
  store %struct.REDIRECT_CMD_REC* %14, %struct.REDIRECT_CMD_REC** %3, align 8, !dbg !1429
  br label %30, !dbg !1430

; <label>:15:                                     ; preds = %1
  %16 = load i8*, i8** %2, align 8, !dbg !1431
  %17 = load i8*, i8** %4, align 8, !dbg !1433
  %18 = load i8*, i8** %2, align 8, !dbg !1434
  %19 = ptrtoint i8* %17 to i64, !dbg !1435
  %20 = ptrtoint i8* %18 to i64, !dbg !1435
  %21 = sub i64 %19, %20, !dbg !1435
  %22 = trunc i64 %21 to i32, !dbg !1436
  %23 = sext i32 %22 to i64, !dbg !1436
  %24 = call noalias i8* @g_strndup(i8* %16, i64 %23), !dbg !1437
  store i8* %24, i8** %5, align 8, !dbg !1438
  %25 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1439
  %26 = load i8*, i8** %5, align 8, !dbg !1440
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* %26), !dbg !1441
  %28 = bitcast i8* %27 to %struct.REDIRECT_CMD_REC*, !dbg !1441
  store %struct.REDIRECT_CMD_REC* %28, %struct.REDIRECT_CMD_REC** %3, align 8, !dbg !1442
  %29 = load i8*, i8** %5, align 8, !dbg !1443
  call void @g_free(i8* %29), !dbg !1444
  br label %30

; <label>:30:                                     ; preds = %15, %10
  %31 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %3, align 8, !dbg !1445
  ret %struct.REDIRECT_CMD_REC* %31, !dbg !1446
}

; Function Attrs: nounwind uwtable
define i8* @server_redirect_get_signal(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1447 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._REDIRECT_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1450, metadata !755), !dbg !1451
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1452, metadata !755), !dbg !1453
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1454, metadata !755), !dbg !1455
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1456, metadata !755), !dbg !1457
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %9, metadata !1458, metadata !755), !dbg !1459
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1460, metadata !755), !dbg !1461
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1462, metadata !755), !dbg !1463
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1464
  %13 = load i8*, i8** %6, align 8, !dbg !1465
  %14 = load i8*, i8** %7, align 8, !dbg !1466
  %15 = load i8*, i8** %8, align 8, !dbg !1467
  %16 = call i8* @server_redirect_get(%struct._IRC_SERVER_REC* %12, i8* %13, i8* %14, i8* %15, %struct._REDIRECT_REC** %9, i32* %11), !dbg !1468
  store i8* %16, i8** %10, align 8, !dbg !1469
  %17 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1470
  %18 = icmp eq %struct._REDIRECT_REC* %17, null, !dbg !1472
  br i1 %18, label %19, label %20, !dbg !1473

; <label>:19:                                     ; preds = %4
  br label %63, !dbg !1474

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %11, align 4, !dbg !1476
  %22 = icmp ne i32 %21, 2, !dbg !1478
  br i1 %22, label %23, label %41, !dbg !1479

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1480
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 38, !dbg !1483
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1483
  %27 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1484
  %28 = bitcast %struct._REDIRECT_REC* %27 to i8*, !dbg !1484
  %29 = call %struct._GSList* @g_slist_find(%struct._GSList* %26, i8* %28), !dbg !1485
  %30 = icmp eq %struct._GSList* %29, null, !dbg !1486
  br i1 %30, label %31, label %40, !dbg !1487

; <label>:31:                                     ; preds = %23
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1488
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 38, !dbg !1489
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1489
  %35 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1490
  %36 = bitcast %struct._REDIRECT_REC* %35 to i8*, !dbg !1490
  %37 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %34, i8* %36), !dbg !1491
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1492
  %39 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %38, i32 0, i32 38, !dbg !1493
  store %struct._GSList* %37, %struct._GSList** %39, align 8, !dbg !1494
  br label %40, !dbg !1492

; <label>:40:                                     ; preds = %31, %23
  br label %62, !dbg !1495

; <label>:41:                                     ; preds = %20
  %42 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1496
  %43 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %42, i32 0, i32 6, !dbg !1499
  %44 = load i32, i32* %43, align 8, !dbg !1500
  %45 = add nsw i32 %44, -1, !dbg !1500
  store i32 %45, i32* %43, align 8, !dbg !1500
  %46 = icmp sle i32 %45, 0, !dbg !1501
  br i1 %46, label %47, label %53, !dbg !1502

; <label>:47:                                     ; preds = %41
  %48 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1503
  %49 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %48, i32 0, i32 4, !dbg !1504
  %50 = load i8, i8* %49, align 8, !dbg !1505
  %51 = and i8 %50, -2, !dbg !1505
  %52 = or i8 %51, 1, !dbg !1505
  store i8 %52, i8* %49, align 8, !dbg !1505
  br label %53, !dbg !1503

; <label>:53:                                     ; preds = %47, %41
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1506
  %55 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %54, i32 0, i32 38, !dbg !1507
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !1507
  %57 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %9, align 8, !dbg !1508
  %58 = bitcast %struct._REDIRECT_REC* %57 to i8*, !dbg !1508
  %59 = call %struct._GSList* @g_slist_remove(%struct._GSList* %56, i8* %58), !dbg !1509
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1510
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 38, !dbg !1511
  store %struct._GSList* %59, %struct._GSList** %61, align 8, !dbg !1512
  br label %62

; <label>:62:                                     ; preds = %53, %40
  br label %63

; <label>:63:                                     ; preds = %62, %19
  %64 = load i8*, i8** %10, align 8, !dbg !1513
  ret i8* %64, !dbg !1514
}

; Function Attrs: nounwind uwtable
define internal i8* @server_redirect_get(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct._REDIRECT_REC**, i32*) #0 !dbg !1515 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._REDIRECT_REC**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct._GSList*, align 8
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca %struct._REDIRECT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !1520, metadata !755), !dbg !1521
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1522, metadata !755), !dbg !1523
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1524, metadata !755), !dbg !1525
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1526, metadata !755), !dbg !1527
  store %struct._REDIRECT_REC** %4, %struct._REDIRECT_REC*** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC*** %12, metadata !1528, metadata !755), !dbg !1529
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !1530, metadata !755), !dbg !1531
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1532, metadata !755), !dbg !1533
  store i8* null, i8** %14, align 8, !dbg !1533
  call void @llvm.dbg.declare(metadata %struct._GSList** %15, metadata !1534, metadata !755), !dbg !1535
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !1536, metadata !755), !dbg !1537
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %17, metadata !1538, metadata !755), !dbg !1539
  %18 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1540
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %18, align 8, !dbg !1541
  %19 = load i32*, i32** %13, align 8, !dbg !1542
  store i32 0, i32* %19, align 4, !dbg !1543
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1544
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 35, !dbg !1546
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1546
  %23 = icmp eq %struct._GSList* %22, null, !dbg !1547
  br i1 %23, label %24, label %25, !dbg !1548

; <label>:24:                                     ; preds = %6
  store i8* null, i8** %7, align 8, !dbg !1549
  br label %148, !dbg !1549

; <label>:25:                                     ; preds = %6
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1550
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 38, !dbg !1552
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1552
  store %struct._GSList* %28, %struct._GSList** %15, align 8, !dbg !1553
  br label %29, !dbg !1554

; <label>:29:                                     ; preds = %82, %25
  %30 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1555
  %31 = icmp ne %struct._GSList* %30, null, !dbg !1558
  br i1 %31, label %32, label %84, !dbg !1559

; <label>:32:                                     ; preds = %29
  %33 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1560
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !1562
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1562
  store %struct._GSList* %35, %struct._GSList** %16, align 8, !dbg !1563
  %36 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1564
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1565
  %38 = load i8*, i8** %37, align 8, !dbg !1565
  %39 = bitcast i8* %38 to %struct._REDIRECT_REC*, !dbg !1564
  store %struct._REDIRECT_REC* %39, %struct._REDIRECT_REC** %17, align 8, !dbg !1566
  %40 = load i8*, i8** %9, align 8, !dbg !1567
  %41 = icmp ne i8* %40, null, !dbg !1569
  br i1 %41, label %42, label %55, !dbg !1570

; <label>:42:                                     ; preds = %32
  %43 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !1571
  %44 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %43, i32 0, i32 3, !dbg !1573
  %45 = load i8*, i8** %44, align 8, !dbg !1573
  %46 = icmp ne i8* %45, null, !dbg !1574
  br i1 %46, label %47, label %55, !dbg !1575

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %9, align 8, !dbg !1576
  %49 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !1577
  %50 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %49, i32 0, i32 3, !dbg !1578
  %51 = load i8*, i8** %50, align 8, !dbg !1578
  %52 = call i32 @g_strcmp0(i8* %48, i8* %51), !dbg !1579
  %53 = icmp ne i32 %52, 0, !dbg !1579
  br i1 %53, label %54, label %55, !dbg !1580

; <label>:54:                                     ; preds = %47
  br label %82, !dbg !1582

; <label>:55:                                     ; preds = %47, %42, %32
  %56 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !1584
  %57 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1585
  store %struct._REDIRECT_REC* %56, %struct._REDIRECT_REC** %57, align 8, !dbg !1586
  %58 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1587
  %59 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %58, align 8, !dbg !1588
  %60 = load i8*, i8** %10, align 8, !dbg !1589
  %61 = load i32*, i32** %13, align 8, !dbg !1590
  %62 = call i8* @redirect_match(%struct._REDIRECT_REC* %59, i8* %60, i8* null, i32* %61), !dbg !1591
  store i8* %62, i8** %14, align 8, !dbg !1592
  %63 = load i8*, i8** %14, align 8, !dbg !1593
  %64 = icmp eq i8* %63, null, !dbg !1595
  br i1 %64, label %65, label %76, !dbg !1596

; <label>:65:                                     ; preds = %55
  %66 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1597
  %67 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %66, align 8, !dbg !1599
  %68 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %67, i32 0, i32 4, !dbg !1600
  %69 = load i8, i8* %68, align 8, !dbg !1601
  %70 = and i8 %69, -3, !dbg !1601
  %71 = or i8 %70, 2, !dbg !1601
  store i8 %71, i8* %68, align 8, !dbg !1601
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1602
  %73 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1603
  %74 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %73, align 8, !dbg !1604
  call void @redirect_abort(%struct._IRC_SERVER_REC* %72, %struct._REDIRECT_REC* %74), !dbg !1605
  %75 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1606
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %75, align 8, !dbg !1607
  br label %76, !dbg !1608

; <label>:76:                                     ; preds = %65, %55
  %77 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1609
  %78 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %77, align 8, !dbg !1611
  %79 = icmp ne %struct._REDIRECT_REC* %78, null, !dbg !1612
  br i1 %79, label %80, label %81, !dbg !1613

; <label>:80:                                     ; preds = %76
  br label %84, !dbg !1614

; <label>:81:                                     ; preds = %76
  br label %82, !dbg !1615

; <label>:82:                                     ; preds = %81, %54
  %83 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1616
  store %struct._GSList* %83, %struct._GSList** %15, align 8, !dbg !1618
  br label %29, !dbg !1619, !llvm.loop !1620

; <label>:84:                                     ; preds = %80, %29
  %85 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1622
  %86 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %85, align 8, !dbg !1624
  %87 = icmp eq %struct._REDIRECT_REC* %86, null, !dbg !1625
  br i1 %87, label %88, label %95, !dbg !1626

; <label>:88:                                     ; preds = %84
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1627
  %90 = load i8*, i8** %10, align 8, !dbg !1629
  %91 = load i8*, i8** %11, align 8, !dbg !1630
  %92 = load i32*, i32** %13, align 8, !dbg !1631
  %93 = call %struct._REDIRECT_REC* @redirect_find(%struct._IRC_SERVER_REC* %89, i8* %90, i8* %91, i8** %14, i32* %92), !dbg !1632
  %94 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1633
  store %struct._REDIRECT_REC* %93, %struct._REDIRECT_REC** %94, align 8, !dbg !1634
  br label %95, !dbg !1635

; <label>:95:                                     ; preds = %88, %84
  %96 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1636
  %97 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %96, align 8, !dbg !1638
  %98 = icmp ne %struct._REDIRECT_REC* %97, null, !dbg !1639
  br i1 %98, label %99, label %114, !dbg !1640

; <label>:99:                                     ; preds = %95
  %100 = load i8*, i8** %9, align 8, !dbg !1641
  %101 = icmp ne i8* %100, null, !dbg !1643
  br i1 %101, label %102, label %114, !dbg !1644

; <label>:102:                                    ; preds = %99
  %103 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1645
  %104 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %103, align 8, !dbg !1647
  %105 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %104, i32 0, i32 3, !dbg !1648
  %106 = load i8*, i8** %105, align 8, !dbg !1648
  %107 = icmp eq i8* %106, null, !dbg !1649
  br i1 %107, label %108, label %114, !dbg !1650

; <label>:108:                                    ; preds = %102
  %109 = load i8*, i8** %9, align 8, !dbg !1651
  %110 = call noalias i8* @g_strdup(i8* %109), !dbg !1652
  %111 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1653
  %112 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %111, align 8, !dbg !1654
  %113 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %112, i32 0, i32 3, !dbg !1655
  store i8* %110, i8** %113, align 8, !dbg !1656
  br label %114, !dbg !1657

; <label>:114:                                    ; preds = %108, %102, %99, %95
  %115 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1658
  %116 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %115, align 8, !dbg !1660
  %117 = icmp ne %struct._REDIRECT_REC* %116, null, !dbg !1661
  br i1 %117, label %118, label %146, !dbg !1662

; <label>:118:                                    ; preds = %114
  %119 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1663
  %120 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %119, align 8, !dbg !1665
  %121 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %120, i32 0, i32 9, !dbg !1666
  %122 = load i8*, i8** %121, align 8, !dbg !1666
  %123 = icmp ne i8* %122, null, !dbg !1667
  br i1 %123, label %124, label %146, !dbg !1668

; <label>:124:                                    ; preds = %118
  %125 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1669
  %126 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %125, align 8, !dbg !1670
  %127 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %126, i32 0, i32 4, !dbg !1671
  %128 = load i8, i8* %127, align 8, !dbg !1671
  %129 = lshr i8 %128, 3, !dbg !1671
  %130 = and i8 %129, 1, !dbg !1671
  %131 = zext i8 %130 to i32, !dbg !1671
  %132 = icmp ne i32 %131, 0, !dbg !1672
  br i1 %132, label %146, label %133, !dbg !1673

; <label>:133:                                    ; preds = %124
  %134 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1675
  %135 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %134, align 8, !dbg !1677
  %136 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %135, i32 0, i32 4, !dbg !1678
  %137 = load i8, i8* %136, align 8, !dbg !1679
  %138 = and i8 %137, -9, !dbg !1679
  %139 = or i8 %138, 8, !dbg !1679
  store i8 %139, i8* %136, align 8, !dbg !1679
  %140 = load %struct._REDIRECT_REC**, %struct._REDIRECT_REC*** %12, align 8, !dbg !1680
  %141 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %140, align 8, !dbg !1681
  %142 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %141, i32 0, i32 9, !dbg !1682
  %143 = load i8*, i8** %142, align 8, !dbg !1682
  %144 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1683
  %145 = call i32 (i8*, i32, ...) @signal_emit(i8* %143, i32 1, %struct._IRC_SERVER_REC* %144), !dbg !1684
  br label %146, !dbg !1685

; <label>:146:                                    ; preds = %133, %124, %118, %114
  %147 = load i8*, i8** %14, align 8, !dbg !1686
  store i8* %147, i8** %7, align 8, !dbg !1687
  br label %148, !dbg !1687

; <label>:148:                                    ; preds = %146, %24
  %149 = load i8*, i8** %7, align 8, !dbg !1688
  ret i8* %149, !dbg !1688
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @server_redirect_peek_signal(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i32*) #0 !dbg !1689 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._REDIRECT_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1692, metadata !755), !dbg !1693
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1694, metadata !755), !dbg !1695
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1696, metadata !755), !dbg !1697
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1698, metadata !755), !dbg !1699
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1700, metadata !755), !dbg !1701
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %11, metadata !1702, metadata !755), !dbg !1703
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1704, metadata !755), !dbg !1705
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1706, metadata !755), !dbg !1707
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1708
  %15 = load i8*, i8** %7, align 8, !dbg !1709
  %16 = load i8*, i8** %8, align 8, !dbg !1710
  %17 = load i8*, i8** %9, align 8, !dbg !1711
  %18 = call i8* @server_redirect_get(%struct._IRC_SERVER_REC* %14, i8* %15, i8* %16, i8* %17, %struct._REDIRECT_REC** %11, i32* %13), !dbg !1712
  store i8* %18, i8** %12, align 8, !dbg !1713
  %19 = load i32, i32* %13, align 4, !dbg !1714
  %20 = icmp ne i32 %19, 0, !dbg !1715
  %21 = zext i1 %20 to i32, !dbg !1715
  %22 = load i32*, i32** %10, align 8, !dbg !1716
  store i32 %21, i32* %22, align 4, !dbg !1717
  %23 = load i8*, i8** %12, align 8, !dbg !1718
  ret i8* %23, !dbg !1719
}

; Function Attrs: nounwind uwtable
define void @servers_redirect_init() #0 !dbg !1720 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1721
  store %struct._GHashTable* %1, %struct._GHashTable** @command_redirects, align 8, !dbg !1722
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 1, i8* null), !dbg !1723
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* null, i8* null), !dbg !1724
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* null, i8* null), !dbg !1725
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* null, i8* null), !dbg !1726
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 -1, i8* null, i8* null), !dbg !1727
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, i8* null), !dbg !1728
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* null, i8* null), !dbg !1729
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* null), !dbg !1730
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i8* null, i8* null), !dbg !1731
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 -1, i8* null, i8* null), !dbg !1732
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 -1, i8* null, i8* null), !dbg !1733
  call void (i8*, i32, i32, ...) @server_redirect_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 0, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 -1, i8* null, i8* null), !dbg !1734
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1735
  ret void, !dbg !1736
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !1737 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1740, metadata !755), !dbg !1741
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1742
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !1742
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)), !dbg !1744
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !1745
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !1746
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1747
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !1749
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !1749
  br i1 %10, label %11, label %12, !dbg !1750

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !1751

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !1753

; <label>:13:                                     ; preds = %12, %11
  br label %38, !dbg !1755

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1756
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 38, !dbg !1757
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1757
  call void @g_slist_free(%struct._GSList* %17), !dbg !1758
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1759
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 38, !dbg !1760
  store %struct._GSList* null, %struct._GSList** %19, align 8, !dbg !1761
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1762
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 35, !dbg !1763
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1763
  call void @g_slist_foreach(%struct._GSList* %22, void (i8*, i8*)* bitcast (void (%struct._REDIRECT_REC*)* @server_redirect_destroy to void (i8*, i8*)*), i8* null), !dbg !1764
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1765
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 35, !dbg !1766
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1766
  call void @g_slist_free(%struct._GSList* %25), !dbg !1767
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1768
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 35, !dbg !1769
  store %struct._GSList* null, %struct._GSList** %27, align 8, !dbg !1770
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1771
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 37, !dbg !1773
  %30 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %29, align 8, !dbg !1773
  %31 = icmp ne %struct._REDIRECT_REC* %30, null, !dbg !1774
  br i1 %31, label %32, label %38, !dbg !1775

; <label>:32:                                     ; preds = %14
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1776
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 37, !dbg !1778
  %35 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %34, align 8, !dbg !1778
  call void @server_redirect_destroy(%struct._REDIRECT_REC* %35), !dbg !1779
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1780
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 37, !dbg !1781
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %37, align 8, !dbg !1782
  br label %38, !dbg !1783

; <label>:38:                                     ; preds = %13, %32, %14
  ret void, !dbg !1784
}

; Function Attrs: nounwind uwtable
define void @servers_redirect_deinit() #0 !dbg !1785 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1786
  call void @g_hash_table_foreach(%struct._GHashTable* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.REDIRECT_CMD_REC*)* @cmd_redirect_destroy to void (i8*, i8*, i8*)*), i8* null), !dbg !1787
  %2 = load %struct._GHashTable*, %struct._GHashTable** @command_redirects, align 8, !dbg !1788
  call void @g_hash_table_destroy(%struct._GHashTable* %2), !dbg !1789
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1790
  ret void, !dbg !1791
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_redirect_destroy(i8*, %struct.REDIRECT_CMD_REC*) #0 !dbg !1792 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.REDIRECT_CMD_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1795, metadata !755), !dbg !1796
  store %struct.REDIRECT_CMD_REC* %1, %struct.REDIRECT_CMD_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %4, metadata !1797, metadata !755), !dbg !1798
  %5 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %4, align 8, !dbg !1799
  call void @redirect_cmd_unref(%struct.REDIRECT_CMD_REC* %5), !dbg !1800
  ret void, !dbg !1801
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @redirect_cmd_destroy(%struct.REDIRECT_CMD_REC*) #0 !dbg !1802 {
  %2 = alloca %struct.REDIRECT_CMD_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  store %struct.REDIRECT_CMD_REC* %0, %struct.REDIRECT_CMD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.REDIRECT_CMD_REC** %2, metadata !1803, metadata !755), !dbg !1804
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1805, metadata !755), !dbg !1806
  %4 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1807
  %5 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %4, i32 0, i32 4, !dbg !1809
  %6 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1809
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1810
  br label %7, !dbg !1811

; <label>:7:                                      ; preds = %14, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1812
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1815
  br i1 %9, label %10, label %20, !dbg !1816

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1817
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1818
  %13 = load i8*, i8** %12, align 8, !dbg !1818
  call void @g_free(i8* %13), !dbg !1819
  br label %14, !dbg !1819

; <label>:14:                                     ; preds = %10
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1820
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !1822
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1822
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1, !dbg !1823
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1823
  store %struct._GSList* %19, %struct._GSList** %3, align 8, !dbg !1824
  br label %7, !dbg !1825, !llvm.loop !1826

; <label>:20:                                     ; preds = %7
  %21 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1828
  %22 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %21, i32 0, i32 5, !dbg !1830
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !1830
  store %struct._GSList* %23, %struct._GSList** %3, align 8, !dbg !1831
  br label %24, !dbg !1832

; <label>:24:                                     ; preds = %31, %20
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1833
  %26 = icmp ne %struct._GSList* %25, null, !dbg !1836
  br i1 %26, label %27, label %37, !dbg !1837

; <label>:27:                                     ; preds = %24
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1838
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0, !dbg !1839
  %30 = load i8*, i8** %29, align 8, !dbg !1839
  call void @g_free(i8* %30), !dbg !1840
  br label %31, !dbg !1840

; <label>:31:                                     ; preds = %27
  %32 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1841
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 1, !dbg !1843
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1843
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !1844
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1844
  store %struct._GSList* %36, %struct._GSList** %3, align 8, !dbg !1845
  br label %24, !dbg !1846, !llvm.loop !1847

; <label>:37:                                     ; preds = %24
  %38 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1849
  %39 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %38, i32 0, i32 6, !dbg !1851
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !1851
  store %struct._GSList* %40, %struct._GSList** %3, align 8, !dbg !1852
  br label %41, !dbg !1853

; <label>:41:                                     ; preds = %48, %37
  %42 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1854
  %43 = icmp ne %struct._GSList* %42, null, !dbg !1857
  br i1 %43, label %44, label %54, !dbg !1858

; <label>:44:                                     ; preds = %41
  %45 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1859
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 0, !dbg !1860
  %47 = load i8*, i8** %46, align 8, !dbg !1860
  call void @g_free(i8* %47), !dbg !1861
  br label %48, !dbg !1861

; <label>:48:                                     ; preds = %44
  %49 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1862
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 1, !dbg !1864
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !1864
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !1865
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1865
  store %struct._GSList* %53, %struct._GSList** %3, align 8, !dbg !1866
  br label %41, !dbg !1867, !llvm.loop !1868

; <label>:54:                                     ; preds = %41
  %55 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1870
  %56 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %55, i32 0, i32 4, !dbg !1871
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !1871
  call void @g_slist_free(%struct._GSList* %57), !dbg !1872
  %58 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1873
  %59 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %58, i32 0, i32 5, !dbg !1874
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !1874
  call void @g_slist_free(%struct._GSList* %60), !dbg !1875
  %61 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1876
  %62 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %61, i32 0, i32 6, !dbg !1877
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !1877
  call void @g_slist_free(%struct._GSList* %63), !dbg !1878
  %64 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1879
  %65 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %64, i32 0, i32 0, !dbg !1880
  %66 = load i8*, i8** %65, align 8, !dbg !1880
  call void @g_free(i8* %66), !dbg !1881
  %67 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %2, align 8, !dbg !1882
  %68 = bitcast %struct.REDIRECT_CMD_REC* %67 to i8*, !dbg !1882
  call void @g_free(i8* %68), !dbg !1883
  ret void, !dbg !1884
}

declare %struct._GSList* @gslist_find_string(%struct._GSList*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare noalias i8* @g_strndup(i8*, i64) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @redirect_match(%struct._REDIRECT_REC*, i8*, i8*, i32*) #0 !dbg !1885 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._REDIRECT_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._REDIRECT_REC* %0, %struct._REDIRECT_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %6, metadata !1888, metadata !755), !dbg !1889
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1890, metadata !755), !dbg !1891
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1892, metadata !755), !dbg !1893
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1894, metadata !755), !dbg !1895
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1896, metadata !755), !dbg !1897
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !1898, metadata !755), !dbg !1899
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1900, metadata !755), !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1902, metadata !755), !dbg !1903
  %14 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1904
  %15 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %14, i32 0, i32 4, !dbg !1906
  %16 = load i8, i8* %15, align 8, !dbg !1906
  %17 = lshr i8 %16, 1, !dbg !1906
  %18 = and i8 %17, 1, !dbg !1906
  %19 = zext i8 %18 to i32, !dbg !1906
  %20 = icmp ne i32 %19, 0, !dbg !1904
  br i1 %20, label %21, label %22, !dbg !1907

; <label>:21:                                     ; preds = %4
  store i8* null, i8** %5, align 8, !dbg !1908
  br label %173, !dbg !1908

; <label>:22:                                     ; preds = %4
  store i8* null, i8** %12, align 8, !dbg !1909
  %23 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1910
  %24 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %23, i32 0, i32 11, !dbg !1912
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1912
  store %struct._GSList* %25, %struct._GSList** %10, align 8, !dbg !1913
  br label %26, !dbg !1914

; <label>:26:                                     ; preds = %43, %22
  %27 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1915
  %28 = icmp ne %struct._GSList* %27, null, !dbg !1918
  br i1 %28, label %29, label %49, !dbg !1919

; <label>:29:                                     ; preds = %26
  %30 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1920
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 0, !dbg !1923
  %32 = load i8*, i8** %31, align 8, !dbg !1923
  %33 = load i8*, i8** %7, align 8, !dbg !1924
  %34 = call i32 @g_strcmp0(i8* %32, i8* %33), !dbg !1925
  %35 = icmp eq i32 %34, 0, !dbg !1926
  br i1 %35, label %36, label %42, !dbg !1927

; <label>:36:                                     ; preds = %29
  %37 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1928
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !1930
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !1930
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !1931
  %41 = load i8*, i8** %40, align 8, !dbg !1931
  store i8* %41, i8** %12, align 8, !dbg !1932
  br label %49, !dbg !1933

; <label>:42:                                     ; preds = %29
  br label %43, !dbg !1934

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1935
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1937
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1937
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !1938
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1938
  store %struct._GSList* %48, %struct._GSList** %10, align 8, !dbg !1939
  br label %26, !dbg !1940, !llvm.loop !1941

; <label>:49:                                     ; preds = %36, %26
  %50 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1943
  %51 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %50, i32 0, i32 4, !dbg !1945
  %52 = load i8, i8* %51, align 8, !dbg !1945
  %53 = and i8 %52, 1, !dbg !1945
  %54 = zext i8 %53 to i32, !dbg !1945
  %55 = icmp ne i32 %54, 0, !dbg !1943
  br i1 %55, label %56, label %68, !dbg !1946

; <label>:56:                                     ; preds = %49
  %57 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1947
  %58 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %57, i32 0, i32 0, !dbg !1949
  %59 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %58, align 8, !dbg !1949
  %60 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %59, i32 0, i32 6, !dbg !1950
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1950
  %62 = load i8*, i8** %7, align 8, !dbg !1951
  %63 = call %struct._GSList* @redirect_cmd_list_find(%struct._GSList* %61, i8* %62), !dbg !1952
  store %struct._GSList* %63, %struct._GSList** %11, align 8, !dbg !1953
  %64 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1954
  %65 = icmp eq %struct._GSList* %64, null, !dbg !1956
  br i1 %65, label %66, label %67, !dbg !1957

; <label>:66:                                     ; preds = %56
  store i8* null, i8** %5, align 8, !dbg !1958
  br label %173, !dbg !1958

; <label>:67:                                     ; preds = %56
  store i32 2, i32* %13, align 4, !dbg !1959
  br label %127, !dbg !1960

; <label>:68:                                     ; preds = %49
  %69 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1961
  %70 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %69, i32 0, i32 0, !dbg !1963
  %71 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %70, align 8, !dbg !1963
  %72 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %71, i32 0, i32 4, !dbg !1964
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !1964
  %74 = load i8*, i8** %7, align 8, !dbg !1965
  %75 = call %struct._GSList* @redirect_cmd_list_find(%struct._GSList* %73, i8* %74), !dbg !1966
  store %struct._GSList* %75, %struct._GSList** %11, align 8, !dbg !1967
  %76 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1968
  %77 = icmp ne %struct._GSList* %76, null, !dbg !1970
  br i1 %77, label %78, label %79, !dbg !1971

; <label>:78:                                     ; preds = %68
  store i32 1, i32* %13, align 4, !dbg !1972
  br label %126, !dbg !1973

; <label>:79:                                     ; preds = %68
  %80 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1974
  %81 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %80, i32 0, i32 0, !dbg !1976
  %82 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %81, align 8, !dbg !1976
  %83 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %82, i32 0, i32 5, !dbg !1977
  %84 = load %struct._GSList*, %struct._GSList** %83, align 8, !dbg !1977
  %85 = load i8*, i8** %7, align 8, !dbg !1978
  %86 = call %struct._GSList* @redirect_cmd_list_find(%struct._GSList* %84, i8* %85), !dbg !1979
  store %struct._GSList* %86, %struct._GSList** %11, align 8, !dbg !1980
  %87 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1981
  %88 = icmp ne %struct._GSList* %87, null, !dbg !1983
  br i1 %88, label %89, label %90, !dbg !1984

; <label>:89:                                     ; preds = %79
  store i32 2, i32* %13, align 4, !dbg !1985
  br label %125, !dbg !1986

; <label>:90:                                     ; preds = %79
  %91 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !1987
  %92 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %91, i32 0, i32 8, !dbg !1989
  %93 = load i8*, i8** %92, align 8, !dbg !1989
  %94 = icmp ne i8* %93, null, !dbg !1990
  br i1 %94, label %95, label %123, !dbg !1991

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %8, align 8, !dbg !1992
  %97 = icmp eq i8* %96, null, !dbg !1993
  br i1 %97, label %98, label %123, !dbg !1994

; <label>:98:                                     ; preds = %95
  %99 = load i8*, i8** %7, align 8, !dbg !1995
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i64 6) #7, !dbg !1996
  %101 = icmp eq i32 %100, 0, !dbg !1997
  br i1 %101, label %102, label %123, !dbg !1998

; <label>:102:                                    ; preds = %98
  %103 = load i8*, i8** %7, align 8, !dbg !1999
  %104 = getelementptr inbounds i8, i8* %103, i64 6, !dbg !1999
  %105 = load i8, i8* %104, align 1, !dbg !1999
  %106 = zext i8 %105 to i32, !dbg !2000
  %107 = sext i32 %106 to i64, !dbg !2001
  %108 = call i16** @__ctype_b_loc() #1, !dbg !2002
  %109 = load i16*, i16** %108, align 8, !dbg !2003
  %110 = getelementptr inbounds i16, i16* %109, i64 %107, !dbg !2001
  %111 = load i16, i16* %110, align 2, !dbg !2001
  %112 = zext i16 %111 to i32, !dbg !2001
  %113 = and i32 %112, 2048, !dbg !2004
  %114 = icmp ne i32 %113, 0, !dbg !2004
  br i1 %114, label %115, label %123, !dbg !2005

; <label>:115:                                    ; preds = %102
  %116 = load i8*, i8** %12, align 8, !dbg !2007
  %117 = icmp eq i8* %116, null, !dbg !2010
  br i1 %117, label %118, label %122, !dbg !2011

; <label>:118:                                    ; preds = %115
  %119 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !2012
  %120 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %119, i32 0, i32 8, !dbg !2013
  %121 = load i8*, i8** %120, align 8, !dbg !2013
  store i8* %121, i8** %12, align 8, !dbg !2014
  br label %122, !dbg !2015

; <label>:122:                                    ; preds = %118, %115
  store i32 1, i32* %13, align 4, !dbg !2016
  br label %124, !dbg !2017

; <label>:123:                                    ; preds = %102, %98, %95, %90
  store i32 0, i32* %13, align 4, !dbg !2018
  br label %124

; <label>:124:                                    ; preds = %123, %122
  br label %125

; <label>:125:                                    ; preds = %124, %89
  br label %126

; <label>:126:                                    ; preds = %125, %78
  br label %127

; <label>:127:                                    ; preds = %126, %67
  %128 = load i8*, i8** %12, align 8, !dbg !2020
  %129 = icmp eq i8* %128, null, !dbg !2022
  br i1 %129, label %130, label %134, !dbg !2023

; <label>:130:                                    ; preds = %127
  %131 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2024
  %132 = icmp eq %struct._GSList* %131, null, !dbg !2026
  br i1 %132, label %133, label %134, !dbg !2027

; <label>:133:                                    ; preds = %130
  store i8* null, i8** %5, align 8, !dbg !2028
  br label %173, !dbg !2028

; <label>:134:                                    ; preds = %130, %127
  %135 = load i8*, i8** %8, align 8, !dbg !2030
  %136 = icmp ne i8* %135, null, !dbg !2032
  br i1 %136, label %137, label %160, !dbg !2033

; <label>:137:                                    ; preds = %134
  %138 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !2034
  %139 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %138, i32 0, i32 5, !dbg !2036
  %140 = load i8*, i8** %139, align 8, !dbg !2036
  %141 = icmp ne i8* %140, null, !dbg !2037
  br i1 %141, label %142, label %160, !dbg !2038

; <label>:142:                                    ; preds = %137
  %143 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2039
  %144 = icmp ne %struct._GSList* %143, null, !dbg !2041
  br i1 %144, label %145, label %160, !dbg !2042

; <label>:145:                                    ; preds = %142
  %146 = load i8*, i8** %8, align 8, !dbg !2043
  %147 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !2044
  %148 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %147, i32 0, i32 5, !dbg !2045
  %149 = load i8*, i8** %148, align 8, !dbg !2045
  %150 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2046
  %151 = getelementptr inbounds %struct._GSList, %struct._GSList* %150, i32 0, i32 1, !dbg !2047
  %152 = load %struct._GSList*, %struct._GSList** %151, align 8, !dbg !2047
  %153 = getelementptr inbounds %struct._GSList, %struct._GSList* %152, i32 0, i32 0, !dbg !2048
  %154 = load i8*, i8** %153, align 8, !dbg !2048
  %155 = ptrtoint i8* %154 to i64, !dbg !2049
  %156 = trunc i64 %155 to i32, !dbg !2050
  %157 = call i32 @redirect_args_match(i8* %146, i8* %149, i32 %156), !dbg !2051
  %158 = icmp ne i32 %157, 0, !dbg !2051
  br i1 %158, label %160, label %159, !dbg !2052

; <label>:159:                                    ; preds = %145
  store i8* null, i8** %5, align 8, !dbg !2054
  br label %173, !dbg !2054

; <label>:160:                                    ; preds = %145, %142, %137, %134
  %161 = load i32, i32* %13, align 4, !dbg !2055
  %162 = load i32*, i32** %9, align 8, !dbg !2056
  store i32 %161, i32* %162, align 4, !dbg !2057
  %163 = load i8*, i8** %12, align 8, !dbg !2058
  %164 = icmp ne i8* %163, null, !dbg !2059
  br i1 %164, label %165, label %167, !dbg !2058

; <label>:165:                                    ; preds = %160
  %166 = load i8*, i8** %12, align 8, !dbg !2060
  br label %171, !dbg !2062

; <label>:167:                                    ; preds = %160
  %168 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !2063
  %169 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %168, i32 0, i32 8, !dbg !2065
  %170 = load i8*, i8** %169, align 8, !dbg !2065
  br label %171, !dbg !2066

; <label>:171:                                    ; preds = %167, %165
  %172 = phi i8* [ %166, %165 ], [ %170, %167 ], !dbg !2067
  store i8* %172, i8** %5, align 8, !dbg !2068
  br label %173, !dbg !2068

; <label>:173:                                    ; preds = %171, %159, %133, %66, %21
  %174 = load i8*, i8** %5, align 8, !dbg !2069
  ret i8* %174, !dbg !2069
}

; Function Attrs: nounwind uwtable
define internal void @redirect_abort(%struct._IRC_SERVER_REC*, %struct._REDIRECT_REC*) #0 !dbg !2070 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._REDIRECT_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2073, metadata !755), !dbg !2074
  store %struct._REDIRECT_REC* %1, %struct._REDIRECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %4, metadata !2075, metadata !755), !dbg !2076
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2077, metadata !755), !dbg !2078
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2079
  %7 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %6, i32 0, i32 35, !dbg !2080
  %8 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !2080
  %9 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2081
  %10 = bitcast %struct._REDIRECT_REC* %9 to i8*, !dbg !2081
  %11 = call %struct._GSList* @g_slist_remove(%struct._GSList* %8, i8* %10), !dbg !2082
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2083
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 35, !dbg !2084
  store %struct._GSList* %11, %struct._GSList** %13, align 8, !dbg !2085
  %14 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2086
  %15 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %14, i32 0, i32 4, !dbg !2088
  %16 = load i8, i8* %15, align 8, !dbg !2088
  %17 = lshr i8 %16, 1, !dbg !2088
  %18 = and i8 %17, 1, !dbg !2088
  %19 = zext i8 %18 to i32, !dbg !2088
  %20 = icmp ne i32 %19, 0, !dbg !2086
  br i1 %20, label %28, label %21, !dbg !2089

; <label>:21:                                     ; preds = %2
  %22 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2090
  %23 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %22, i32 0, i32 4, !dbg !2092
  %24 = load i8, i8* %23, align 8, !dbg !2092
  %25 = and i8 %24, 1, !dbg !2092
  %26 = zext i8 %25 to i32, !dbg !2092
  %27 = icmp ne i32 %26, 0, !dbg !2090
  br i1 %27, label %67, label %28, !dbg !2093

; <label>:28:                                     ; preds = %21, %2
  %29 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2094
  %30 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %29, i32 0, i32 7, !dbg !2097
  %31 = load i8*, i8** %30, align 8, !dbg !2097
  %32 = icmp ne i8* %31, null, !dbg !2098
  br i1 %32, label %33, label %43, !dbg !2099

; <label>:33:                                     ; preds = %28
  %34 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2100
  %35 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %34, i32 0, i32 0, !dbg !2101
  %36 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %35, align 8, !dbg !2101
  %37 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %36, i32 0, i32 0, !dbg !2102
  %38 = load i8*, i8** %37, align 8, !dbg !2102
  %39 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2103
  %40 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %39, i32 0, i32 7, !dbg !2104
  %41 = load i8*, i8** %40, align 8, !dbg !2104
  %42 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* %38, i8* %41), !dbg !2105
  store i8* %42, i8** %5, align 8, !dbg !2106
  br label %50, !dbg !2107

; <label>:43:                                     ; preds = %28
  %44 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2108
  %45 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %44, i32 0, i32 0, !dbg !2109
  %46 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %45, align 8, !dbg !2109
  %47 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %46, i32 0, i32 0, !dbg !2110
  %48 = load i8*, i8** %47, align 8, !dbg !2110
  %49 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* %48), !dbg !2111
  store i8* %49, i8** %5, align 8, !dbg !2112
  br label %50

; <label>:50:                                     ; preds = %43, %33
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2113
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 14, !dbg !2114
  %53 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %52, align 8, !dbg !2114
  %54 = load i8*, i8** %5, align 8, !dbg !2115
  call void @rawlog_redirect(%struct._RAWLOG_REC* %53, i8* %54), !dbg !2116
  %55 = load i8*, i8** %5, align 8, !dbg !2117
  call void @g_free(i8* %55), !dbg !2118
  %56 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2119
  %57 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %56, i32 0, i32 7, !dbg !2121
  %58 = load i8*, i8** %57, align 8, !dbg !2121
  %59 = icmp ne i8* %58, null, !dbg !2122
  br i1 %59, label %60, label %66, !dbg !2123

; <label>:60:                                     ; preds = %50
  %61 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2124
  %62 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %61, i32 0, i32 7, !dbg !2125
  %63 = load i8*, i8** %62, align 8, !dbg !2125
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2126
  %65 = call i32 (i8*, i32, ...) @signal_emit(i8* %63, i32 1, %struct._IRC_SERVER_REC* %64), !dbg !2127
  br label %66, !dbg !2127

; <label>:66:                                     ; preds = %60, %50
  br label %79, !dbg !2128

; <label>:67:                                     ; preds = %21
  %68 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2129
  %69 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %68, i32 0, i32 10, !dbg !2132
  %70 = load i8*, i8** %69, align 8, !dbg !2132
  %71 = icmp ne i8* %70, null, !dbg !2133
  br i1 %71, label %72, label %78, !dbg !2129

; <label>:72:                                     ; preds = %67
  %73 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2134
  %74 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %73, i32 0, i32 10, !dbg !2136
  %75 = load i8*, i8** %74, align 8, !dbg !2136
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2137
  %77 = call i32 (i8*, i32, ...) @signal_emit(i8* %75, i32 1, %struct._IRC_SERVER_REC* %76), !dbg !2138
  br label %78, !dbg !2139

; <label>:78:                                     ; preds = %72, %67
  br label %79

; <label>:79:                                     ; preds = %78, %66
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2140
  %81 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %80, i32 0, i32 38, !dbg !2141
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !2141
  %83 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2142
  %84 = bitcast %struct._REDIRECT_REC* %83 to i8*, !dbg !2142
  %85 = call %struct._GSList* @g_slist_remove(%struct._GSList* %82, i8* %84), !dbg !2143
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2144
  %87 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %86, i32 0, i32 38, !dbg !2145
  store %struct._GSList* %85, %struct._GSList** %87, align 8, !dbg !2146
  %88 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %4, align 8, !dbg !2147
  call void @server_redirect_destroy(%struct._REDIRECT_REC* %88), !dbg !2148
  ret void, !dbg !2149
}

; Function Attrs: nounwind uwtable
define internal %struct._REDIRECT_REC* @redirect_find(%struct._IRC_SERVER_REC*, i8*, i8*, i8**, i32*) #0 !dbg !2150 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._REDIRECT_REC*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct._REDIRECT_REC*, align 8
  %17 = alloca %struct._REDIRECT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !2154, metadata !755), !dbg !2155
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2156, metadata !755), !dbg !2157
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2158, metadata !755), !dbg !2159
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !2160, metadata !755), !dbg !2161
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2162, metadata !755), !dbg !2163
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %11, metadata !2164, metadata !755), !dbg !2165
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2166, metadata !755), !dbg !2167
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !2168, metadata !755), !dbg !2169
  call void @llvm.dbg.declare(metadata i64* %14, metadata !2170, metadata !755), !dbg !2171
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2172, metadata !755), !dbg !2173
  %18 = load i8**, i8*** %9, align 8, !dbg !2174
  store i8* null, i8** %18, align 8, !dbg !2175
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %11, align 8, !dbg !2176
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2177
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 35, !dbg !2179
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2179
  store %struct._GSList* %21, %struct._GSList** %12, align 8, !dbg !2180
  br label %22, !dbg !2181

; <label>:22:                                     ; preds = %55, %5
  %23 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2182
  %24 = icmp ne %struct._GSList* %23, null, !dbg !2185
  br i1 %24, label %25, label %59, !dbg !2186

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %16, metadata !2187, metadata !755), !dbg !2189
  %26 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2190
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !2191
  %28 = load i8*, i8** %27, align 8, !dbg !2191
  %29 = bitcast i8* %28 to %struct._REDIRECT_REC*, !dbg !2190
  store %struct._REDIRECT_REC* %29, %struct._REDIRECT_REC** %16, align 8, !dbg !2189
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2192
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 38, !dbg !2194
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !2194
  %33 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !2195
  %34 = bitcast %struct._REDIRECT_REC* %33 to i8*, !dbg !2195
  %35 = call %struct._GSList* @g_slist_find(%struct._GSList* %32, i8* %34), !dbg !2196
  %36 = icmp ne %struct._GSList* %35, null, !dbg !2197
  br i1 %36, label %37, label %38, !dbg !2198

; <label>:37:                                     ; preds = %25
  br label %55, !dbg !2199

; <label>:38:                                     ; preds = %25
  %39 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !2200
  %40 = load i8*, i8** %7, align 8, !dbg !2201
  %41 = load i8*, i8** %8, align 8, !dbg !2202
  %42 = load i32*, i32** %10, align 8, !dbg !2203
  %43 = call i8* @redirect_match(%struct._REDIRECT_REC* %39, i8* %40, i8* %41, i32* %42), !dbg !2204
  store i8* %43, i8** %15, align 8, !dbg !2205
  %44 = load i8*, i8** %15, align 8, !dbg !2206
  %45 = icmp ne i8* %44, null, !dbg !2208
  br i1 %45, label %46, label %54, !dbg !2209

; <label>:46:                                     ; preds = %38
  %47 = load i32*, i32** %10, align 8, !dbg !2210
  %48 = load i32, i32* %47, align 4, !dbg !2212
  %49 = icmp ne i32 %48, 0, !dbg !2213
  br i1 %49, label %50, label %54, !dbg !2214

; <label>:50:                                     ; preds = %46
  %51 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %16, align 8, !dbg !2215
  store %struct._REDIRECT_REC* %51, %struct._REDIRECT_REC** %11, align 8, !dbg !2217
  %52 = load i8*, i8** %15, align 8, !dbg !2218
  %53 = load i8**, i8*** %9, align 8, !dbg !2219
  store i8* %52, i8** %53, align 8, !dbg !2220
  br label %59, !dbg !2221

; <label>:54:                                     ; preds = %46, %38
  br label %55, !dbg !2222

; <label>:55:                                     ; preds = %54, %37
  %56 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2223
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 1, !dbg !2225
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !2225
  store %struct._GSList* %58, %struct._GSList** %12, align 8, !dbg !2226
  br label %22, !dbg !2227, !llvm.loop !2228

; <label>:59:                                     ; preds = %50, %22
  %60 = call i64 @time(i64* null) #3, !dbg !2230
  store i64 %60, i64* %14, align 8, !dbg !2231
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2232
  %62 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %61, i32 0, i32 35, !dbg !2234
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !2234
  store %struct._GSList* %63, %struct._GSList** %12, align 8, !dbg !2235
  br label %64, !dbg !2236

; <label>:64:                                     ; preds = %134, %59
  %65 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2237
  %66 = icmp ne %struct._GSList* %65, null, !dbg !2240
  br i1 %66, label %67, label %136, !dbg !2241

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %17, metadata !2242, metadata !755), !dbg !2244
  %68 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2245
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 0, !dbg !2246
  %70 = load i8*, i8** %69, align 8, !dbg !2246
  %71 = bitcast i8* %70 to %struct._REDIRECT_REC*, !dbg !2245
  store %struct._REDIRECT_REC* %71, %struct._REDIRECT_REC** %17, align 8, !dbg !2244
  %72 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2247
  %73 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %11, align 8, !dbg !2249
  %74 = icmp eq %struct._REDIRECT_REC* %72, %73, !dbg !2250
  br i1 %74, label %75, label %76, !dbg !2251

; <label>:75:                                     ; preds = %67
  br label %136, !dbg !2252

; <label>:76:                                     ; preds = %67
  %77 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2253
  %78 = getelementptr inbounds %struct._GSList, %struct._GSList* %77, i32 0, i32 1, !dbg !2254
  %79 = load %struct._GSList*, %struct._GSList** %78, align 8, !dbg !2254
  store %struct._GSList* %79, %struct._GSList** %13, align 8, !dbg !2255
  %80 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2256
  %81 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %80, i32 0, i32 4, !dbg !2258
  %82 = load i8, i8* %81, align 8, !dbg !2258
  %83 = and i8 %82, 1, !dbg !2258
  %84 = zext i8 %83 to i32, !dbg !2258
  %85 = icmp ne i32 %84, 0, !dbg !2256
  br i1 %85, label %86, label %89, !dbg !2259

; <label>:86:                                     ; preds = %76
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2260
  %88 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2262
  call void @redirect_abort(%struct._IRC_SERVER_REC* %87, %struct._REDIRECT_REC* %88), !dbg !2263
  br label %133, !dbg !2264

; <label>:89:                                     ; preds = %76
  %90 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %11, align 8, !dbg !2265
  %91 = icmp ne %struct._REDIRECT_REC* %90, null, !dbg !2268
  br i1 %91, label %92, label %132, !dbg !2265

; <label>:92:                                     ; preds = %89
  %93 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2269
  %94 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %93, i32 0, i32 4, !dbg !2272
  %95 = load i8, i8* %94, align 8, !dbg !2272
  %96 = lshr i8 %95, 1, !dbg !2272
  %97 = and i8 %96, 1, !dbg !2272
  %98 = zext i8 %97 to i32, !dbg !2272
  %99 = icmp ne i32 %98, 0, !dbg !2269
  br i1 %99, label %106, label %100, !dbg !2273

; <label>:100:                                    ; preds = %92
  %101 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2274
  %102 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %101, i32 0, i32 2, !dbg !2275
  %103 = load i32, i32* %102, align 8, !dbg !2276
  %104 = add nsw i32 %103, 1, !dbg !2276
  store i32 %104, i32* %102, align 8, !dbg !2276
  %105 = icmp sge i32 %103, 1, !dbg !2277
  br i1 %105, label %106, label %131, !dbg !2278

; <label>:106:                                    ; preds = %100, %92
  %107 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2280
  %108 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %107, i32 0, i32 4, !dbg !2283
  %109 = load i8, i8* %108, align 8, !dbg !2283
  %110 = lshr i8 %109, 2, !dbg !2283
  %111 = and i8 %110, 1, !dbg !2283
  %112 = zext i8 %111 to i32, !dbg !2283
  %113 = icmp ne i32 %112, 0, !dbg !2280
  br i1 %113, label %114, label %127, !dbg !2284

; <label>:114:                                    ; preds = %106
  %115 = load i64, i64* %14, align 8, !dbg !2285
  %116 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2287
  %117 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %116, i32 0, i32 1, !dbg !2288
  %118 = load i64, i64* %117, align 8, !dbg !2288
  %119 = sub nsw i64 %115, %118, !dbg !2289
  %120 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2290
  %121 = getelementptr inbounds %struct._REDIRECT_REC, %struct._REDIRECT_REC* %120, i32 0, i32 0, !dbg !2291
  %122 = load %struct.REDIRECT_CMD_REC*, %struct.REDIRECT_CMD_REC** %121, align 8, !dbg !2291
  %123 = getelementptr inbounds %struct.REDIRECT_CMD_REC, %struct.REDIRECT_CMD_REC* %122, i32 0, i32 3, !dbg !2292
  %124 = load i32, i32* %123, align 8, !dbg !2292
  %125 = sext i32 %124 to i64, !dbg !2293
  %126 = icmp sgt i64 %119, %125, !dbg !2294
  br i1 %126, label %127, label %130, !dbg !2295

; <label>:127:                                    ; preds = %114, %106
  %128 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !2296
  %129 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %17, align 8, !dbg !2297
  call void @redirect_abort(%struct._IRC_SERVER_REC* %128, %struct._REDIRECT_REC* %129), !dbg !2298
  br label %130, !dbg !2298

; <label>:130:                                    ; preds = %127, %114
  br label %131, !dbg !2299

; <label>:131:                                    ; preds = %130, %100
  br label %132, !dbg !2300

; <label>:132:                                    ; preds = %131, %89
  br label %133

; <label>:133:                                    ; preds = %132, %86
  br label %134, !dbg !2301

; <label>:134:                                    ; preds = %133
  %135 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2302
  store %struct._GSList* %135, %struct._GSList** %12, align 8, !dbg !2304
  br label %64, !dbg !2305, !llvm.loop !2306

; <label>:136:                                    ; preds = %75, %64
  %137 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %11, align 8, !dbg !2308
  ret %struct._REDIRECT_REC* %137, !dbg !2309
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._GSList* @redirect_cmd_list_find(%struct._GSList*, i8*) #0 !dbg !2310 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._GSList* %0, %struct._GSList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2313, metadata !755), !dbg !2314
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2315, metadata !755), !dbg !2316
  br label %6, !dbg !2317

; <label>:6:                                      ; preds = %18, %2
  %7 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2318
  %8 = icmp ne %struct._GSList* %7, null, !dbg !2320
  br i1 %8, label %9, label %24, !dbg !2321

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2322, metadata !755), !dbg !2324
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2325
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !2326
  %12 = load i8*, i8** %11, align 8, !dbg !2326
  store i8* %12, i8** %5, align 8, !dbg !2324
  %13 = load i8*, i8** %5, align 8, !dbg !2327
  %14 = load i8*, i8** %4, align 8, !dbg !2329
  %15 = call i32 @g_strcmp0(i8* %13, i8* %14), !dbg !2330
  %16 = icmp eq i32 %15, 0, !dbg !2331
  br i1 %16, label %17, label %18, !dbg !2332

; <label>:17:                                     ; preds = %9
  br label %24, !dbg !2333

; <label>:18:                                     ; preds = %9
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2334
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !2335
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !2335
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 1, !dbg !2336
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !2336
  store %struct._GSList* %23, %struct._GSList** %3, align 8, !dbg !2337
  br label %6, !dbg !2338, !llvm.loop !2340

; <label>:24:                                     ; preds = %17, %6
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2341
  ret %struct._GSList* %25, !dbg !2342
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal i32 @redirect_args_match(i8*, i8*, i32) #0 !dbg !2343 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2346, metadata !755), !dbg !2347
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2348, metadata !755), !dbg !2349
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2350, metadata !755), !dbg !2351
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2352, metadata !755), !dbg !2353
  %9 = load i32, i32* %7, align 4, !dbg !2354
  %10 = icmp eq i32 %9, -1, !dbg !2356
  br i1 %10, label %11, label %12, !dbg !2357

; <label>:11:                                     ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !2358
  br label %141, !dbg !2358

; <label>:12:                                     ; preds = %3
  br label %13, !dbg !2359

; <label>:13:                                     ; preds = %48, %12
  %14 = load i32, i32* %7, align 4, !dbg !2360
  %15 = icmp sgt i32 %14, 0, !dbg !2362
  br i1 %15, label %16, label %21, !dbg !2363

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %5, align 8, !dbg !2364
  %18 = load i8, i8* %17, align 1, !dbg !2366
  %19 = sext i8 %18 to i32, !dbg !2366
  %20 = icmp ne i32 %19, 0, !dbg !2367
  br label %21

; <label>:21:                                     ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %51, !dbg !2368

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2370

; <label>:24:                                     ; preds = %36, %23
  %25 = load i8*, i8** %5, align 8, !dbg !2372
  %26 = load i8, i8* %25, align 1, !dbg !2374
  %27 = sext i8 %26 to i32, !dbg !2374
  %28 = icmp ne i32 %27, 32, !dbg !2375
  br i1 %28, label %29, label %34, !dbg !2376

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %5, align 8, !dbg !2377
  %31 = load i8, i8* %30, align 1, !dbg !2379
  %32 = sext i8 %31 to i32, !dbg !2379
  %33 = icmp ne i32 %32, 0, !dbg !2380
  br label %34

; <label>:34:                                     ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %39, !dbg !2381

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %5, align 8, !dbg !2383
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !2383
  store i8* %38, i8** %5, align 8, !dbg !2383
  br label %24, !dbg !2385, !llvm.loop !2386

; <label>:39:                                     ; preds = %34
  br label %40, !dbg !2387

; <label>:40:                                     ; preds = %45, %39
  %41 = load i8*, i8** %5, align 8, !dbg !2388
  %42 = load i8, i8* %41, align 1, !dbg !2389
  %43 = sext i8 %42 to i32, !dbg !2389
  %44 = icmp eq i32 %43, 32, !dbg !2390
  br i1 %44, label %45, label %48, !dbg !2391

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !2392
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !2392
  store i8* %47, i8** %5, align 8, !dbg !2392
  br label %40, !dbg !2393, !llvm.loop !2394

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %7, align 4, !dbg !2395
  %50 = add nsw i32 %49, -1, !dbg !2395
  store i32 %50, i32* %7, align 4, !dbg !2395
  br label %13, !dbg !2396, !llvm.loop !2398

; <label>:51:                                     ; preds = %21
  %52 = load i8*, i8** %5, align 8, !dbg !2399
  store i8* %52, i8** %8, align 8, !dbg !2400
  br label %53, !dbg !2401

; <label>:53:                                     ; preds = %138, %51
  %54 = load i8*, i8** %6, align 8, !dbg !2402
  %55 = load i8, i8* %54, align 1, !dbg !2403
  %56 = sext i8 %55 to i32, !dbg !2403
  %57 = icmp ne i32 %56, 0, !dbg !2404
  br i1 %57, label %58, label %140, !dbg !2405

; <label>:58:                                     ; preds = %53
  br label %59, !dbg !2406

; <label>:59:                                     ; preds = %87, %58
  %60 = load i8*, i8** %6, align 8, !dbg !2408
  %61 = load i8, i8* %60, align 1, !dbg !2410
  %62 = sext i8 %61 to i32, !dbg !2410
  %63 = icmp ne i32 %62, 0, !dbg !2411
  br i1 %63, label %64, label %74, !dbg !2412

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %6, align 8, !dbg !2413
  %66 = load i8, i8* %65, align 1, !dbg !2415
  %67 = sext i8 %66 to i32, !dbg !2415
  %68 = icmp ne i32 %67, 32, !dbg !2416
  br i1 %68, label %69, label %74, !dbg !2417

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %5, align 8, !dbg !2418
  %71 = load i8, i8* %70, align 1, !dbg !2420
  %72 = sext i8 %71 to i32, !dbg !2420
  %73 = icmp ne i32 %72, 0, !dbg !2421
  br label %74

; <label>:74:                                     ; preds = %69, %64, %59
  %75 = phi i1 [ false, %64 ], [ false, %59 ], [ %73, %69 ]
  br i1 %75, label %76, label %92, !dbg !2422

; <label>:76:                                     ; preds = %74
  %77 = load i8*, i8** %6, align 8, !dbg !2424
  %78 = load i8, i8* %77, align 1, !dbg !2427
  %79 = zext i8 %78 to i32, !dbg !2428
  %80 = call i32 @toupper(i32 %79) #7, !dbg !2429
  %81 = load i8*, i8** %5, align 8, !dbg !2430
  %82 = load i8, i8* %81, align 1, !dbg !2431
  %83 = zext i8 %82 to i32, !dbg !2432
  %84 = call i32 @toupper(i32 %83) #7, !dbg !2433
  %85 = icmp ne i32 %80, %84, !dbg !2435
  br i1 %85, label %86, label %87, !dbg !2436

; <label>:86:                                     ; preds = %76
  br label %92, !dbg !2437

; <label>:87:                                     ; preds = %76
  %88 = load i8*, i8** %6, align 8, !dbg !2438
  %89 = getelementptr inbounds i8, i8* %88, i32 1, !dbg !2438
  store i8* %89, i8** %6, align 8, !dbg !2438
  %90 = load i8*, i8** %5, align 8, !dbg !2439
  %91 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !2439
  store i8* %91, i8** %5, align 8, !dbg !2439
  br label %59, !dbg !2440, !llvm.loop !2442

; <label>:92:                                     ; preds = %86, %74
  %93 = load i8*, i8** %6, align 8, !dbg !2443
  %94 = load i8, i8* %93, align 1, !dbg !2445
  %95 = sext i8 %94 to i32, !dbg !2445
  %96 = icmp eq i32 %95, 0, !dbg !2446
  br i1 %96, label %102, label %97, !dbg !2447

; <label>:97:                                     ; preds = %92
  %98 = load i8*, i8** %6, align 8, !dbg !2448
  %99 = load i8, i8* %98, align 1, !dbg !2450
  %100 = sext i8 %99 to i32, !dbg !2450
  %101 = icmp eq i32 %100, 32, !dbg !2451
  br i1 %101, label %102, label %113, !dbg !2452

; <label>:102:                                    ; preds = %97, %92
  %103 = load i8*, i8** %5, align 8, !dbg !2453
  %104 = load i8, i8* %103, align 1, !dbg !2454
  %105 = sext i8 %104 to i32, !dbg !2454
  %106 = icmp eq i32 %105, 0, !dbg !2455
  br i1 %106, label %112, label %107, !dbg !2456

; <label>:107:                                    ; preds = %102
  %108 = load i8*, i8** %5, align 8, !dbg !2457
  %109 = load i8, i8* %108, align 1, !dbg !2458
  %110 = sext i8 %109 to i32, !dbg !2458
  %111 = icmp eq i32 %110, 32, !dbg !2459
  br i1 %111, label %112, label %113, !dbg !2460

; <label>:112:                                    ; preds = %107, %102
  store i32 1, i32* %4, align 4, !dbg !2461
  br label %141, !dbg !2461

; <label>:113:                                    ; preds = %107, %97
  br label %114, !dbg !2462

; <label>:114:                                    ; preds = %126, %113
  %115 = load i8*, i8** %6, align 8, !dbg !2463
  %116 = load i8, i8* %115, align 1, !dbg !2464
  %117 = sext i8 %116 to i32, !dbg !2464
  %118 = icmp ne i32 %117, 32, !dbg !2465
  br i1 %118, label %119, label %124, !dbg !2466

; <label>:119:                                    ; preds = %114
  %120 = load i8*, i8** %6, align 8, !dbg !2467
  %121 = load i8, i8* %120, align 1, !dbg !2468
  %122 = sext i8 %121 to i32, !dbg !2468
  %123 = icmp ne i32 %122, 0, !dbg !2469
  br label %124

; <label>:124:                                    ; preds = %119, %114
  %125 = phi i1 [ false, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %129, !dbg !2470

; <label>:126:                                    ; preds = %124
  %127 = load i8*, i8** %6, align 8, !dbg !2471
  %128 = getelementptr inbounds i8, i8* %127, i32 1, !dbg !2471
  store i8* %128, i8** %6, align 8, !dbg !2471
  br label %114, !dbg !2472, !llvm.loop !2473

; <label>:129:                                    ; preds = %124
  br label %130, !dbg !2474

; <label>:130:                                    ; preds = %135, %129
  %131 = load i8*, i8** %6, align 8, !dbg !2475
  %132 = load i8, i8* %131, align 1, !dbg !2476
  %133 = sext i8 %132 to i32, !dbg !2476
  %134 = icmp eq i32 %133, 32, !dbg !2477
  br i1 %134, label %135, label %138, !dbg !2478

; <label>:135:                                    ; preds = %130
  %136 = load i8*, i8** %6, align 8, !dbg !2479
  %137 = getelementptr inbounds i8, i8* %136, i32 1, !dbg !2479
  store i8* %137, i8** %6, align 8, !dbg !2479
  br label %130, !dbg !2480, !llvm.loop !2481

; <label>:138:                                    ; preds = %130
  %139 = load i8*, i8** %8, align 8, !dbg !2482
  store i8* %139, i8** %5, align 8, !dbg !2483
  br label %53, !dbg !2484, !llvm.loop !2485

; <label>:140:                                    ; preds = %53
  store i32 0, i32* %4, align 4, !dbg !2486
  br label %141, !dbg !2486

; <label>:141:                                    ; preds = %140, %112, %11
  %142 = load i32, i32* %4, align 4, !dbg !2487
  ret i32 %142, !dbg !2487
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #5

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @rawlog_redirect(%struct._RAWLOG_REC*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!747, !748}
!llvm.ident = !{!749}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !745)
!1 = !DIFile(filename: "line159-servers-redirect.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 46, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!50 = !DIEnumerator(name: "_ISupper", value: 256)
!51 = !DIEnumerator(name: "_ISlower", value: 512)
!52 = !DIEnumerator(name: "_ISalpha", value: 1024)
!53 = !DIEnumerator(name: "_ISdigit", value: 2048)
!54 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!55 = !DIEnumerator(name: "_ISspace", value: 8192)
!56 = !DIEnumerator(name: "_ISprint", value: 16384)
!57 = !DIEnumerator(name: "_ISgraph", value: 32768)
!58 = !DIEnumerator(name: "_ISblank", value: 1)
!59 = !DIEnumerator(name: "_IScntrl", value: 2)
!60 = !DIEnumerator(name: "_ISpunct", value: 4)
!61 = !DIEnumerator(name: "_ISalnum", value: 8)
!62 = !{!63, !69, !68, !70, !72, !75, !77, !98, !401, !605, !724, !731, !735, !740, !85, !744, !123, !152}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !64, line: 88, baseType: !65)
!64 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !64, line: 77, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !64, line: 48, baseType: !71)
!71 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !64, line: 46, baseType: !74)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_CMD_REC", file: !79, line: 43, baseType: !80)
!79 = !DIFile(filename: "servers-redirect.c", directory: "/home/lichi/Desktop/irssi/task1")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 36, size: 384, align: 64, elements: !81)
!81 = !{!82, !84, !86, !87, !88, !96, !97}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !79, line: 37, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !80, file: !79, line: 38, baseType: !85, size: 32, align: 32, offset: 64)
!85 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !80, file: !79, line: 40, baseType: !85, size: 32, align: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !80, file: !79, line: 41, baseType: !85, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !80, file: !79, line: 42, baseType: !89, size: 64, align: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !91, line: 37, baseType: !92)
!91 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !91, line: 39, size: 128, align: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !92, file: !91, line: 41, baseType: !68, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !91, line: 42, baseType: !89, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !80, file: !79, line: 42, baseType: !89, size: 64, align: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !80, file: !79, line: 42, baseType: !89, size: 64, align: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !100, line: 6, baseType: !101)
!100 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !102, line: 42, size: 39168, align: 64, elements: !103)
!102 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !{!104, !106, !107, !108, !341, !346, !347, !348, !349, !350, !351, !352, !353, !354, !358, !359, !363, !364, !365, !375, !380, !381, !382, !383, !384, !385, !386, !387, !393, !394, !395, !396, !397, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !721, !723}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !105, line: 3, baseType: !85, size: 32, align: 32)
!105 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !101, file: !105, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !101, file: !105, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !101, file: !105, line: 8, baseType: !109, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !100, line: 5, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !102, line: 24, size: 2496, align: 64, elements: !112)
!112 = !{!113, !115, !116, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !114, line: 3, baseType: !85, size: 32, align: 32)
!114 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !111, file: !114, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !111, file: !114, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !111, file: !114, line: 9, baseType: !83, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !111, file: !114, line: 10, baseType: !85, size: 32, align: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !111, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !111, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !111, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !111, file: !114, line: 13, baseType: !123, size: 16, align: 16, offset: 448)
!123 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !111, file: !114, line: 14, baseType: !83, size: 64, align: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !111, file: !114, line: 15, baseType: !83, size: 64, align: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !111, file: !114, line: 16, baseType: !85, size: 32, align: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !111, file: !114, line: 17, baseType: !83, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !111, file: !114, line: 19, baseType: !129, size: 64, align: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !131, line: 99, baseType: !132)
!131 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !131, line: 99, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !111, file: !114, line: 19, baseType: !129, size: 64, align: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !111, file: !114, line: 21, baseType: !83, size: 64, align: 64, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !111, file: !114, line: 22, baseType: !83, size: 64, align: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !111, file: !114, line: 23, baseType: !83, size: 64, align: 64, offset: 1024)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !111, file: !114, line: 24, baseType: !83, size: 64, align: 64, offset: 1088)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !111, file: !114, line: 26, baseType: !83, size: 64, align: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !111, file: !114, line: 27, baseType: !83, size: 64, align: 64, offset: 1216)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !111, file: !114, line: 28, baseType: !83, size: 64, align: 64, offset: 1280)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !111, file: !114, line: 29, baseType: !83, size: 64, align: 64, offset: 1344)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !111, file: !114, line: 30, baseType: !83, size: 64, align: 64, offset: 1408)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !111, file: !114, line: 31, baseType: !83, size: 64, align: 64, offset: 1472)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !111, file: !114, line: 32, baseType: !83, size: 64, align: 64, offset: 1536)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !111, file: !114, line: 33, baseType: !83, size: 64, align: 64, offset: 1600)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !111, file: !114, line: 35, baseType: !147, size: 64, align: 64, offset: 1664)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !150)
!150 = !{!151, !153, !286, !287, !292, !293, !294, !295, !296, !305, !306, !307, !311, !312, !313, !314, !315, !316, !317, !318}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !149, file: !4, line: 100, baseType: !152, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !64, line: 49, baseType: !85)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !149, file: !4, line: 101, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !157)
!157 = !{!158, !180, !186, !192, !196, !273, !277, !282}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !156, file: !4, line: 133, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !147, !72, !163, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !164, line: 66, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !170, line: 42, baseType: !171)
!170 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !170, line: 44, size: 128, align: 64, elements: !172)
!172 = !{!173, !178, !179}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !171, file: !170, line: 46, baseType: !174, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !175, line: 36, baseType: !176)
!175 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !164, line: 45, baseType: !177)
!177 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !171, file: !170, line: 47, baseType: !152, size: 32, align: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !171, file: !170, line: 48, baseType: !72, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !156, file: !4, line: 138, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!162, !147, !184, !163, !166, !167}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !156, file: !4, line: 143, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!162, !147, !190, !191, !167}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !164, line: 51, baseType: !71)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !156, file: !4, line: 147, baseType: !193, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!162, !147, !167}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !156, file: !4, line: 149, baseType: !197, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !147, !272}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !203)
!203 = !{!204, !205, !226, !255, !257, !261, !262, !263, !264, !265, !266, !267, !268}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !202, file: !16, line: 174, baseType: !68, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !202, file: !16, line: 175, baseType: !206, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !209)
!209 = !{!210, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !208, file: !16, line: 198, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !68}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !208, file: !16, line: 199, baseType: !211, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !208, file: !16, line: 200, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !68, !200, !219, !225}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !68}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !64, line: 50, baseType: !152)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !202, file: !16, line: 177, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !231)
!231 = !{!232, !237, !241, !245, !249, !250}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !230, file: !16, line: 216, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!224, !200, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !230, file: !16, line: 218, baseType: !238, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!224, !200}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !230, file: !16, line: 219, baseType: !242, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!224, !200, !220, !68}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !230, file: !16, line: 222, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !200}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !230, file: !16, line: 226, baseType: !220, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !230, file: !16, line: 227, baseType: !251, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !202, file: !16, line: 178, baseType: !256, size: 32, align: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !64, line: 55, baseType: !177)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !202, file: !16, line: 180, baseType: !258, size: 64, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !260)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !202, file: !16, line: 182, baseType: !152, size: 32, align: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !16, line: 183, baseType: !256, size: 32, align: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !202, file: !16, line: 184, baseType: !256, size: 32, align: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !202, file: !16, line: 186, baseType: !89, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !16, line: 188, baseType: !200, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !16, line: 189, baseType: !200, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !16, line: 191, baseType: !83, size: 64, align: 64, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !202, file: !16, line: 193, baseType: !269, size: 64, align: 64, offset: 704)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !156, file: !4, line: 151, baseType: !274, size: 64, align: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !147}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !156, file: !4, line: 152, baseType: !278, size: 64, align: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!162, !147, !281, !167}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !156, file: !4, line: 155, baseType: !283, size: 64, align: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!281, !147}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !149, file: !4, line: 103, baseType: !72, size: 64, align: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !149, file: !4, line: 104, baseType: !288, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !289, line: 77, baseType: !290)
!289 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !289, line: 77, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !149, file: !4, line: 105, baseType: !288, size: 64, align: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !149, file: !4, line: 106, baseType: !72, size: 64, align: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !149, file: !4, line: 107, baseType: !256, size: 32, align: 32, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !149, file: !4, line: 109, baseType: !163, size: 64, align: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !149, file: !4, line: 110, baseType: !297, size: 64, align: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !299, line: 39, baseType: !300)
!299 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !299, line: 41, size: 192, align: 64, elements: !301)
!301 = !{!302, !303, !304}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !300, file: !299, line: 43, baseType: !72, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !300, file: !299, line: 44, baseType: !163, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !300, file: !299, line: 45, baseType: !163, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !149, file: !4, line: 111, baseType: !297, size: 64, align: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !149, file: !4, line: 112, baseType: !297, size: 64, align: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !149, file: !4, line: 113, baseType: !308, size: 48, align: 8, offset: 704)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 48, align: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 6)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !149, file: !4, line: 117, baseType: !256, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !149, file: !4, line: 118, baseType: !256, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !149, file: !4, line: 119, baseType: !256, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !149, file: !4, line: 120, baseType: !256, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !149, file: !4, line: 121, baseType: !256, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !149, file: !4, line: 122, baseType: !256, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !149, file: !4, line: 124, baseType: !68, size: 64, align: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !149, file: !4, line: 125, baseType: !68, size: 64, align: 64, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !111, file: !114, line: 38, baseType: !177, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !111, file: !114, line: 39, baseType: !177, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !111, file: !114, line: 40, baseType: !177, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !111, file: !114, line: 41, baseType: !177, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !111, file: !114, line: 42, baseType: !177, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !111, file: !114, line: 43, baseType: !177, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !111, file: !114, line: 44, baseType: !177, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !111, file: !114, line: 45, baseType: !177, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !111, file: !114, line: 46, baseType: !83, size: 64, align: 64, offset: 1792)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !111, file: !114, line: 47, baseType: !83, size: 64, align: 64, offset: 1856)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !111, file: !102, line: 27, baseType: !83, size: 64, align: 64, offset: 1920)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !111, file: !102, line: 28, baseType: !83, size: 64, align: 64, offset: 1984)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !111, file: !102, line: 30, baseType: !85, size: 32, align: 32, offset: 2048)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !111, file: !102, line: 31, baseType: !83, size: 64, align: 64, offset: 2112)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !111, file: !102, line: 32, baseType: !83, size: 64, align: 64, offset: 2176)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !111, file: !102, line: 34, baseType: !85, size: 32, align: 32, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !111, file: !102, line: 35, baseType: !85, size: 32, align: 32, offset: 2272)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !111, file: !102, line: 36, baseType: !85, size: 32, align: 32, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !111, file: !102, line: 38, baseType: !85, size: 32, align: 32, offset: 2336)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !111, file: !102, line: 38, baseType: !85, size: 32, align: 32, offset: 2368)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !111, file: !102, line: 38, baseType: !85, size: 32, align: 32, offset: 2400)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !111, file: !102, line: 38, baseType: !85, size: 32, align: 32, offset: 2432)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !101, file: !105, line: 9, baseType: !342, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !343, line: 75, baseType: !344)
!343 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !345, line: 139, baseType: !71)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !101, file: !105, line: 10, baseType: !342, size: 64, align: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !101, file: !105, line: 12, baseType: !83, size: 64, align: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !101, file: !105, line: 13, baseType: !83, size: 64, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !101, file: !105, line: 15, baseType: !177, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !101, file: !105, line: 16, baseType: !177, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !101, file: !105, line: 17, baseType: !177, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !101, file: !105, line: 18, baseType: !177, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !101, file: !105, line: 19, baseType: !177, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !101, file: !105, line: 21, baseType: !355, size: 64, align: 64, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !131, line: 102, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !131, line: 102, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !101, file: !105, line: 22, baseType: !85, size: 32, align: 32, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !101, file: !105, line: 25, baseType: !360, size: 128, align: 64, offset: 640)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 64, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 2)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !101, file: !105, line: 26, baseType: !85, size: 32, align: 32, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !101, file: !105, line: 27, baseType: !85, size: 32, align: 32, offset: 800)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !101, file: !105, line: 29, baseType: !366, size: 64, align: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !131, line: 103, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !369, line: 4, size: 192, align: 64, elements: !370)
!369 = !DIFile(filename: "../../../src/core/rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !368, file: !369, line: 5, baseType: !85, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !368, file: !369, line: 6, baseType: !85, size: 32, align: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !368, file: !369, line: 8, baseType: !85, size: 32, align: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !368, file: !369, line: 9, baseType: !89, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !101, file: !105, line: 30, baseType: !376, size: 64, align: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !378, line: 37, baseType: !379)
!378 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !378, line: 37, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !101, file: !105, line: 32, baseType: !83, size: 64, align: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !101, file: !105, line: 33, baseType: !83, size: 64, align: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !101, file: !105, line: 34, baseType: !83, size: 64, align: 64, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !101, file: !105, line: 35, baseType: !177, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !101, file: !105, line: 36, baseType: !177, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !101, file: !105, line: 37, baseType: !177, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !101, file: !105, line: 38, baseType: !177, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !101, file: !105, line: 40, baseType: !388, size: 128, align: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !64, line: 504, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !64, line: 506, size: 128, align: 64, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !389, file: !64, line: 508, baseType: !70, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !389, file: !64, line: 509, baseType: !70, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !101, file: !105, line: 41, baseType: !342, size: 64, align: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !101, file: !105, line: 42, baseType: !85, size: 32, align: 32, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !101, file: !105, line: 44, baseType: !89, size: 64, align: 64, offset: 1472)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !101, file: !105, line: 45, baseType: !89, size: 64, align: 64, offset: 1536)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !101, file: !105, line: 53, baseType: !398, size: 64, align: 64, offset: 1600)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401, !75, !85}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !131, line: 107, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !404, line: 30, size: 2240, align: 64, elements: !405)
!404 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!405 = !{!406, !407, !408, !409, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !485, !489, !493, !497, !502, !581, !588, !592}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !105, line: 3, baseType: !85, size: 32, align: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !403, file: !105, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !403, file: !105, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !403, file: !105, line: 8, baseType: !410, size: 64, align: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !131, line: 113, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !404, line: 25, size: 1920, align: 64, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !114, line: 3, baseType: !85, size: 32, align: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !412, file: !114, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !412, file: !114, line: 6, baseType: !85, size: 32, align: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !412, file: !114, line: 9, baseType: !83, size: 64, align: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !412, file: !114, line: 10, baseType: !85, size: 32, align: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !412, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !412, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !412, file: !114, line: 11, baseType: !83, size: 64, align: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !412, file: !114, line: 13, baseType: !123, size: 16, align: 16, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !412, file: !114, line: 14, baseType: !83, size: 64, align: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !412, file: !114, line: 15, baseType: !83, size: 64, align: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !412, file: !114, line: 16, baseType: !85, size: 32, align: 32, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !412, file: !114, line: 17, baseType: !83, size: 64, align: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !412, file: !114, line: 19, baseType: !129, size: 64, align: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !412, file: !114, line: 19, baseType: !129, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !412, file: !114, line: 21, baseType: !83, size: 64, align: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !412, file: !114, line: 22, baseType: !83, size: 64, align: 64, offset: 960)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !412, file: !114, line: 23, baseType: !83, size: 64, align: 64, offset: 1024)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !412, file: !114, line: 24, baseType: !83, size: 64, align: 64, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !412, file: !114, line: 26, baseType: !83, size: 64, align: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !412, file: !114, line: 27, baseType: !83, size: 64, align: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !412, file: !114, line: 28, baseType: !83, size: 64, align: 64, offset: 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !412, file: !114, line: 29, baseType: !83, size: 64, align: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !412, file: !114, line: 30, baseType: !83, size: 64, align: 64, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !412, file: !114, line: 31, baseType: !83, size: 64, align: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !412, file: !114, line: 32, baseType: !83, size: 64, align: 64, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !412, file: !114, line: 33, baseType: !83, size: 64, align: 64, offset: 1600)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !412, file: !114, line: 35, baseType: !147, size: 64, align: 64, offset: 1664)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !412, file: !114, line: 38, baseType: !177, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !412, file: !114, line: 39, baseType: !177, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !412, file: !114, line: 40, baseType: !177, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !412, file: !114, line: 41, baseType: !177, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !412, file: !114, line: 42, baseType: !177, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !412, file: !114, line: 43, baseType: !177, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !412, file: !114, line: 44, baseType: !177, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !412, file: !114, line: 45, baseType: !177, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !412, file: !114, line: 46, baseType: !83, size: 64, align: 64, offset: 1792)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !412, file: !114, line: 47, baseType: !83, size: 64, align: 64, offset: 1856)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !403, file: !105, line: 9, baseType: !342, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !403, file: !105, line: 10, baseType: !342, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !403, file: !105, line: 12, baseType: !83, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !403, file: !105, line: 13, baseType: !83, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !403, file: !105, line: 15, baseType: !177, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !403, file: !105, line: 16, baseType: !177, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !403, file: !105, line: 17, baseType: !177, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !403, file: !105, line: 18, baseType: !177, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !403, file: !105, line: 19, baseType: !177, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !403, file: !105, line: 21, baseType: !355, size: 64, align: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !403, file: !105, line: 22, baseType: !85, size: 32, align: 32, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !403, file: !105, line: 25, baseType: !360, size: 128, align: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !403, file: !105, line: 26, baseType: !85, size: 32, align: 32, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !403, file: !105, line: 27, baseType: !85, size: 32, align: 32, offset: 800)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !403, file: !105, line: 29, baseType: !366, size: 64, align: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !403, file: !105, line: 30, baseType: !376, size: 64, align: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !403, file: !105, line: 32, baseType: !83, size: 64, align: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !403, file: !105, line: 33, baseType: !83, size: 64, align: 64, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !403, file: !105, line: 34, baseType: !83, size: 64, align: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !403, file: !105, line: 35, baseType: !177, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !403, file: !105, line: 36, baseType: !177, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !403, file: !105, line: 37, baseType: !177, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !403, file: !105, line: 38, baseType: !177, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !403, file: !105, line: 40, baseType: !388, size: 128, align: 64, offset: 1216)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !403, file: !105, line: 41, baseType: !342, size: 64, align: 64, offset: 1344)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !403, file: !105, line: 42, baseType: !85, size: 32, align: 32, offset: 1408)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !403, file: !105, line: 44, baseType: !89, size: 64, align: 64, offset: 1472)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !403, file: !105, line: 45, baseType: !89, size: 64, align: 64, offset: 1536)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !403, file: !105, line: 53, baseType: !398, size: 64, align: 64, offset: 1600)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !403, file: !105, line: 55, baseType: !482, size: 64, align: 64, offset: 1664)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!85, !401, !74}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !403, file: !105, line: 57, baseType: !486, size: 64, align: 64, offset: 1728)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!85, !401, !75}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !403, file: !105, line: 60, baseType: !490, size: 64, align: 64, offset: 1792)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!75, !401}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !403, file: !105, line: 62, baseType: !494, size: 64, align: 64, offset: 1856)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !401, !75, !75, !85}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !403, file: !105, line: 65, baseType: !498, size: 64, align: 64, offset: 1920)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !401, !75, !75}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !403, file: !105, line: 69, baseType: !503, size: 64, align: 64, offset: 1984)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !401, !75}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !131, line: 109, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !509, line: 15, size: 1408, align: 64, elements: !510)
!509 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!510 = !{!511, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !529, !533, !535, !536, !537, !538, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !512, line: 3, baseType: !85, size: 32, align: 32)
!512 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !508, file: !512, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !508, file: !512, line: 5, baseType: !376, size: 64, align: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !508, file: !512, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !508, file: !512, line: 8, baseType: !401, size: 64, align: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !508, file: !512, line: 9, baseType: !83, size: 64, align: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !512, line: 10, baseType: !83, size: 64, align: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !508, file: !512, line: 11, baseType: !342, size: 64, align: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !508, file: !512, line: 12, baseType: !85, size: 32, align: 32, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !508, file: !512, line: 13, baseType: !83, size: 64, align: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !508, file: !512, line: 15, baseType: !523, size: 64, align: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !131, line: 108, baseType: !528)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !131, line: 108, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !508, file: !512, line: 17, baseType: !530, size: 64, align: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!75, !526}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !508, file: !534, line: 5, baseType: !83, size: 64, align: 64, offset: 704)
!534 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !508, file: !534, line: 6, baseType: !83, size: 64, align: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !508, file: !534, line: 7, baseType: !342, size: 64, align: 64, offset: 832)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !508, file: !534, line: 9, baseType: !376, size: 64, align: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !508, file: !534, line: 10, baseType: !539, size: 64, align: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !131, line: 111, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !542, line: 13, size: 576, align: 64, elements: !543)
!542 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!543 = !{!544, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !562, !563}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !541, file: !545, line: 3, baseType: !85, size: 32, align: 32)
!545 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!546 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !541, file: !545, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !541, file: !545, line: 6, baseType: !342, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !541, file: !545, line: 8, baseType: !83, size: 64, align: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !541, file: !545, line: 9, baseType: !83, size: 64, align: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !541, file: !545, line: 10, baseType: !83, size: 64, align: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !541, file: !545, line: 11, baseType: !85, size: 32, align: 32, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !541, file: !545, line: 14, baseType: !177, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !541, file: !545, line: 15, baseType: !177, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !541, file: !545, line: 18, baseType: !177, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !541, file: !545, line: 19, baseType: !177, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !541, file: !545, line: 20, baseType: !177, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !541, file: !545, line: 21, baseType: !177, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !541, file: !545, line: 22, baseType: !559, size: 64, align: 8, offset: 360)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, align: 8, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !541, file: !545, line: 26, baseType: !69, size: 64, align: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !545, line: 28, baseType: !539, size: 64, align: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !508, file: !534, line: 12, baseType: !177, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !508, file: !534, line: 13, baseType: !83, size: 64, align: 64, offset: 1088)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !508, file: !534, line: 14, baseType: !85, size: 32, align: 32, offset: 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !508, file: !534, line: 15, baseType: !83, size: 64, align: 64, offset: 1216)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !508, file: !534, line: 17, baseType: !177, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !508, file: !534, line: 18, baseType: !177, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !508, file: !534, line: 19, baseType: !177, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !508, file: !534, line: 20, baseType: !177, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !508, file: !534, line: 22, baseType: !177, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !508, file: !534, line: 23, baseType: !177, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !508, file: !534, line: 24, baseType: !177, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !508, file: !534, line: 25, baseType: !177, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !508, file: !534, line: 26, baseType: !177, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !508, file: !534, line: 31, baseType: !578, size: 64, align: 64, offset: 1344)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!83, !506}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !403, file: !105, line: 70, baseType: !582, size: 64, align: 64, offset: 2048)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !401, !75}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !131, line: 110, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !131, line: 110, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !403, file: !105, line: 71, baseType: !589, size: 64, align: 64, offset: 2112)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!85, !75, !75}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !403, file: !105, line: 73, baseType: !589, size: 64, align: 64, offset: 2176)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !101, file: !105, line: 55, baseType: !482, size: 64, align: 64, offset: 1664)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !101, file: !105, line: 57, baseType: !486, size: 64, align: 64, offset: 1728)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !101, file: !105, line: 60, baseType: !490, size: 64, align: 64, offset: 1792)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !101, file: !105, line: 62, baseType: !494, size: 64, align: 64, offset: 1856)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !101, file: !105, line: 65, baseType: !498, size: 64, align: 64, offset: 1920)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !101, file: !105, line: 69, baseType: !503, size: 64, align: 64, offset: 1984)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !101, file: !105, line: 70, baseType: !582, size: 64, align: 64, offset: 2048)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !101, file: !105, line: 71, baseType: !589, size: 64, align: 64, offset: 2112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !101, file: !105, line: 73, baseType: !589, size: 64, align: 64, offset: 2176)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !101, file: !102, line: 46, baseType: !89, size: 64, align: 64, offset: 2240)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !101, file: !102, line: 47, baseType: !89, size: 64, align: 64, offset: 2304)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !101, file: !102, line: 48, baseType: !605, size: 64, align: 64, offset: 2368)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !100, line: 8, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !79, line: 45, size: 768, align: 64, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !607, file: !79, line: 46, baseType: !77, size: 64, align: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !607, file: !79, line: 47, baseType: !342, size: 64, align: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "failures", scope: !607, file: !79, line: 48, baseType: !85, size: 32, align: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !607, file: !79, line: 49, baseType: !83, size: 64, align: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !607, file: !79, line: 51, baseType: !177, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !607, file: !79, line: 52, baseType: !177, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !607, file: !79, line: 53, baseType: !177, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "first_signal_sent", scope: !607, file: !79, line: 54, baseType: !177, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !607, file: !79, line: 56, baseType: !83, size: 64, align: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !607, file: !79, line: 57, baseType: !85, size: 32, align: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "failure_signal", scope: !607, file: !79, line: 58, baseType: !83, size: 64, align: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "default_signal", scope: !607, file: !79, line: 58, baseType: !83, size: 64, align: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "first_signal", scope: !607, file: !79, line: 58, baseType: !83, size: 64, align: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "last_signal", scope: !607, file: !79, line: 58, baseType: !83, size: 64, align: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "signals", scope: !607, file: !79, line: 59, baseType: !89, size: 64, align: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !101, file: !102, line: 49, baseType: !89, size: 64, align: 64, offset: 2432)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !101, file: !102, line: 51, baseType: !83, size: 64, align: 64, offset: 2496)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !101, file: !102, line: 53, baseType: !83, size: 64, align: 64, offset: 2560)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !101, file: !102, line: 54, baseType: !83, size: 64, align: 64, offset: 2624)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !101, file: !102, line: 55, baseType: !83, size: 64, align: 64, offset: 2688)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !101, file: !102, line: 56, baseType: !83, size: 64, align: 64, offset: 2752)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !101, file: !102, line: 57, baseType: !85, size: 32, align: 32, offset: 2816)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !101, file: !102, line: 59, baseType: !177, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !101, file: !102, line: 60, baseType: !177, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !101, file: !102, line: 62, baseType: !177, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !101, file: !102, line: 63, baseType: !177, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !101, file: !102, line: 64, baseType: !177, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !101, file: !102, line: 65, baseType: !177, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !101, file: !102, line: 66, baseType: !177, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !101, file: !102, line: 67, baseType: !177, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !101, file: !102, line: 68, baseType: !177, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !101, file: !102, line: 69, baseType: !177, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !101, file: !102, line: 70, baseType: !177, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !101, file: !102, line: 71, baseType: !177, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !101, file: !102, line: 72, baseType: !177, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !101, file: !102, line: 74, baseType: !85, size: 32, align: 32, offset: 2880)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !101, file: !102, line: 75, baseType: !85, size: 32, align: 32, offset: 2912)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !101, file: !102, line: 76, baseType: !85, size: 32, align: 32, offset: 2944)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !101, file: !102, line: 77, baseType: !85, size: 32, align: 32, offset: 2976)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !101, file: !102, line: 79, baseType: !376, size: 64, align: 64, offset: 3008)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !101, file: !102, line: 80, baseType: !89, size: 64, align: 64, offset: 3072)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !101, file: !102, line: 81, baseType: !89, size: 64, align: 64, offset: 3136)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !101, file: !102, line: 83, baseType: !297, size: 64, align: 64, offset: 3200)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !101, file: !102, line: 84, baseType: !256, size: 32, align: 32, offset: 3264)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !101, file: !102, line: 87, baseType: !85, size: 32, align: 32, offset: 3296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !101, file: !102, line: 91, baseType: !89, size: 64, align: 64, offset: 3328)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !101, file: !102, line: 92, baseType: !388, size: 128, align: 64, offset: 3392)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !101, file: !102, line: 93, baseType: !388, size: 128, align: 64, offset: 3520)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !101, file: !102, line: 95, baseType: !85, size: 32, align: 32, offset: 3648)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !101, file: !102, line: 96, baseType: !85, size: 32, align: 32, offset: 3680)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !101, file: !102, line: 97, baseType: !85, size: 32, align: 32, offset: 3712)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !101, file: !102, line: 100, baseType: !89, size: 64, align: 64, offset: 3776)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !101, file: !102, line: 103, baseType: !89, size: 64, align: 64, offset: 3840)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !101, file: !102, line: 106, baseType: !89, size: 64, align: 64, offset: 3904)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !101, file: !102, line: 108, baseType: !376, size: 64, align: 64, offset: 3968)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !101, file: !102, line: 109, baseType: !89, size: 64, align: 64, offset: 4032)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !101, file: !102, line: 111, baseType: !89, size: 64, align: 64, offset: 4096)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !101, file: !102, line: 114, baseType: !69, size: 64, align: 64, offset: 4160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !101, file: !102, line: 116, baseType: !376, size: 64, align: 64, offset: 4224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !101, file: !102, line: 117, baseType: !669, size: 32768, align: 64, offset: 4288)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 32768, align: 64, elements: !719)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !671, line: 10, size: 128, align: 64, elements: !672)
!671 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!672 = !{!673, !718}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !670, file: !671, line: 11, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !671, line: 7, baseType: !676)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !678, !75, !74, !74, !83, !297}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !100, line: 7, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !681, line: 15, size: 1600, align: 64, elements: !682)
!681 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !512, line: 3, baseType: !85, size: 32, align: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !680, file: !512, line: 4, baseType: !85, size: 32, align: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !680, file: !512, line: 5, baseType: !376, size: 64, align: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !680, file: !512, line: 7, baseType: !69, size: 64, align: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !680, file: !512, line: 8, baseType: !98, size: 64, align: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !680, file: !512, line: 9, baseType: !83, size: 64, align: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !512, line: 10, baseType: !83, size: 64, align: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !680, file: !512, line: 11, baseType: !342, size: 64, align: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !680, file: !512, line: 12, baseType: !85, size: 32, align: 32, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !680, file: !512, line: 13, baseType: !83, size: 64, align: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !680, file: !512, line: 15, baseType: !523, size: 64, align: 64, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !680, file: !512, line: 17, baseType: !530, size: 64, align: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !680, file: !534, line: 5, baseType: !83, size: 64, align: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !680, file: !534, line: 6, baseType: !83, size: 64, align: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !680, file: !534, line: 7, baseType: !342, size: 64, align: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !680, file: !534, line: 9, baseType: !376, size: 64, align: 64, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !680, file: !534, line: 10, baseType: !539, size: 64, align: 64, offset: 960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !680, file: !534, line: 12, baseType: !177, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !680, file: !534, line: 13, baseType: !83, size: 64, align: 64, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !680, file: !534, line: 14, baseType: !85, size: 32, align: 32, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !680, file: !534, line: 15, baseType: !83, size: 64, align: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !680, file: !534, line: 17, baseType: !177, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !680, file: !534, line: 18, baseType: !177, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !680, file: !534, line: 19, baseType: !177, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !680, file: !534, line: 20, baseType: !177, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !680, file: !534, line: 22, baseType: !177, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !680, file: !534, line: 23, baseType: !177, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !680, file: !534, line: 24, baseType: !177, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !680, file: !534, line: 25, baseType: !177, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !680, file: !534, line: 26, baseType: !177, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !680, file: !534, line: 31, baseType: !578, size: 64, align: 64, offset: 1344)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !680, file: !681, line: 18, baseType: !89, size: 64, align: 64, offset: 1408)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !680, file: !681, line: 20, baseType: !342, size: 64, align: 64, offset: 1472)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !680, file: !681, line: 21, baseType: !85, size: 32, align: 32, offset: 1536)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !680, file: !681, line: 22, baseType: !85, size: 32, align: 32, offset: 1568)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !670, file: !671, line: 12, baseType: !74, size: 8, align: 8, offset: 64)
!719 = !{!720}
!720 = !DISubrange(count: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !101, file: !102, line: 118, baseType: !722, size: 2048, align: 8, offset: 37056)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !719)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !101, file: !102, line: 120, baseType: !589, size: 64, align: 64, offset: 39104)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !64, line: 90, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!256, !728}
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !64, line: 78, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !64, line: 80, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!152, !728, !728}
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !736, line: 9, baseType: !737)
!736 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !729, !729, !729, !729, !729, !729}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !64, line: 91, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !68, !68, !68}
!744 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!745 = !{!746}
!746 = distinct !DIGlobalVariable(name: "command_redirects", scope: !0, file: !79, line: 62, type: !376, isLocal: true, isDefinition: true, variable: %struct._GHashTable** @command_redirects)
!747 = !{i32 2, !"Dwarf Version", i32 4}
!748 = !{i32 2, !"Debug Info Version", i32 3}
!749 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!750 = distinct !DISubprogram(name: "server_redirect_destroy", scope: !79, file: !79, line: 110, type: !751, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !605}
!753 = !{}
!754 = !DILocalVariable(name: "rec", arg: 1, scope: !750, file: !79, line: 110, type: !605)
!755 = !DIExpression()
!756 = !DILocation(line: 110, column: 44, scope: !750)
!757 = !DILocation(line: 112, column: 21, scope: !750)
!758 = !DILocation(line: 112, column: 26, scope: !750)
!759 = !DILocation(line: 112, column: 2, scope: !750)
!760 = !DILocation(line: 114, column: 9, scope: !750)
!761 = !DILocation(line: 114, column: 14, scope: !750)
!762 = !DILocation(line: 114, column: 2, scope: !750)
!763 = !DILocation(line: 115, column: 9, scope: !750)
!764 = !DILocation(line: 115, column: 14, scope: !750)
!765 = !DILocation(line: 115, column: 2, scope: !750)
!766 = !DILocation(line: 116, column: 16, scope: !750)
!767 = !DILocation(line: 116, column: 21, scope: !750)
!768 = !DILocation(line: 116, column: 9, scope: !750)
!769 = !DILocation(line: 117, column: 16, scope: !750)
!770 = !DILocation(line: 117, column: 21, scope: !750)
!771 = !DILocation(line: 117, column: 9, scope: !750)
!772 = !DILocation(line: 118, column: 16, scope: !750)
!773 = !DILocation(line: 118, column: 21, scope: !750)
!774 = !DILocation(line: 118, column: 9, scope: !750)
!775 = !DILocation(line: 119, column: 16, scope: !750)
!776 = !DILocation(line: 119, column: 21, scope: !750)
!777 = !DILocation(line: 119, column: 9, scope: !750)
!778 = !DILocation(line: 120, column: 18, scope: !750)
!779 = !DILocation(line: 120, column: 23, scope: !750)
!780 = !DILocation(line: 120, column: 2, scope: !750)
!781 = !DILocation(line: 121, column: 15, scope: !750)
!782 = !DILocation(line: 121, column: 20, scope: !750)
!783 = !DILocation(line: 121, column: 2, scope: !750)
!784 = !DILocation(line: 122, column: 16, scope: !750)
!785 = !DILocation(line: 122, column: 9, scope: !750)
!786 = !DILocation(line: 123, column: 1, scope: !750)
!787 = distinct !DISubprogram(name: "redirect_cmd_unref", scope: !79, file: !79, line: 104, type: !788, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !77}
!790 = !DILocalVariable(name: "rec", arg: 1, scope: !787, file: !79, line: 104, type: !77)
!791 = !DILocation(line: 104, column: 50, scope: !787)
!792 = !DILocation(line: 106, column: 8, scope: !793)
!793 = distinct !DILexicalBlock(scope: !787, file: !79, line: 106, column: 6)
!794 = !DILocation(line: 106, column: 13, scope: !793)
!795 = !DILocation(line: 106, column: 6, scope: !793)
!796 = !DILocation(line: 106, column: 22, scope: !793)
!797 = !DILocation(line: 106, column: 6, scope: !787)
!798 = !DILocation(line: 107, column: 38, scope: !793)
!799 = !DILocation(line: 107, column: 17, scope: !793)
!800 = !DILocation(line: 108, column: 1, scope: !787)
!801 = distinct !DISubprogram(name: "server_redirect_register", scope: !79, file: !79, line: 125, type: !802, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !75, !85, !85, null}
!804 = !DILocalVariable(name: "command", arg: 1, scope: !801, file: !79, line: 125, type: !75)
!805 = !DILocation(line: 125, column: 43, scope: !801)
!806 = !DILocalVariable(name: "remote", arg: 2, scope: !801, file: !79, line: 126, type: !85)
!807 = !DILocation(line: 126, column: 14, scope: !801)
!808 = !DILocalVariable(name: "timeout", arg: 3, scope: !801, file: !79, line: 126, type: !85)
!809 = !DILocation(line: 126, column: 26, scope: !801)
!810 = !DILocalVariable(name: "va", scope: !801, file: !79, line: 128, type: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !812, line: 79, baseType: !813)
!812 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !814, line: 40, baseType: !815)
!814 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 128, baseType: !816)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !817, size: 192, align: 64, elements: !823)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 128, size: 192, align: 64, elements: !818)
!818 = !{!819, !820, !821, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !817, file: !1, line: 128, baseType: !177, size: 32, align: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !817, file: !1, line: 128, baseType: !177, size: 32, align: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !817, file: !1, line: 128, baseType: !69, size: 64, align: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !817, file: !1, line: 128, baseType: !69, size: 64, align: 64, offset: 128)
!823 = !{!824}
!824 = !DISubrange(count: 1)
!825 = !DILocation(line: 128, column: 10, scope: !801)
!826 = !DILocalVariable(name: "start", scope: !801, file: !79, line: 129, type: !89)
!827 = !DILocation(line: 129, column: 10, scope: !801)
!828 = !DILocalVariable(name: "stop", scope: !801, file: !79, line: 129, type: !89)
!829 = !DILocation(line: 129, column: 18, scope: !801)
!830 = !DILocalVariable(name: "opt", scope: !801, file: !79, line: 129, type: !89)
!831 = !DILocation(line: 129, column: 25, scope: !801)
!832 = !DILocalVariable(name: "list", scope: !801, file: !79, line: 129, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!834 = !DILocation(line: 129, column: 32, scope: !801)
!835 = !DILocalVariable(name: "event", scope: !801, file: !79, line: 130, type: !75)
!836 = !DILocation(line: 130, column: 14, scope: !801)
!837 = !DILocalVariable(name: "argpos", scope: !801, file: !79, line: 131, type: !85)
!838 = !DILocation(line: 131, column: 13, scope: !801)
!839 = !DILocation(line: 133, column: 1, scope: !801)
!840 = !DILocation(line: 134, column: 21, scope: !801)
!841 = !DILocation(line: 134, column: 15, scope: !801)
!842 = !DILocation(line: 134, column: 8, scope: !801)
!843 = !DILocation(line: 134, column: 33, scope: !801)
!844 = !DILocation(line: 135, column: 2, scope: !801)
!845 = !DILocation(line: 136, column: 10, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !79, line: 135, column: 11)
!847 = distinct !DILexicalBlock(scope: !848, file: !79, line: 135, column: 2)
!848 = distinct !DILexicalBlock(scope: !801, file: !79, line: 135, column: 2)
!849 = !DILocation(line: 136, column: 10, scope: !850)
!850 = !DILexicalBlockFile(scope: !846, file: !79, discriminator: 1)
!851 = !DILocation(line: 136, column: 10, scope: !852)
!852 = !DILexicalBlockFile(scope: !846, file: !79, discriminator: 2)
!853 = !DILocation(line: 136, column: 10, scope: !854)
!854 = !DILexicalBlockFile(scope: !846, file: !79, discriminator: 3)
!855 = !DILocation(line: 136, column: 9, scope: !854)
!856 = !DILocation(line: 137, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !846, file: !79, line: 137, column: 7)
!858 = !DILocation(line: 137, column: 13, scope: !857)
!859 = !DILocation(line: 137, column: 7, scope: !846)
!860 = !DILocation(line: 138, column: 8, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !79, line: 138, column: 8)
!862 = distinct !DILexicalBlock(scope: !857, file: !79, line: 137, column: 21)
!863 = !DILocation(line: 138, column: 13, scope: !861)
!864 = !DILocation(line: 138, column: 8, scope: !862)
!865 = !DILocation(line: 139, column: 10, scope: !861)
!866 = !DILocation(line: 139, column: 5, scope: !861)
!867 = !DILocation(line: 140, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !861, file: !79, line: 140, column: 13)
!869 = !DILocation(line: 140, column: 18, scope: !868)
!870 = !DILocation(line: 140, column: 13, scope: !861)
!871 = !DILocation(line: 141, column: 10, scope: !868)
!872 = !DILocation(line: 141, column: 5, scope: !868)
!873 = !DILocation(line: 143, column: 33, scope: !868)
!874 = !DILocation(line: 144, column: 25, scope: !862)
!875 = distinct !{!875, !844}
!876 = !DILocation(line: 147, column: 25, scope: !846)
!877 = !DILocation(line: 147, column: 25, scope: !850)
!878 = !DILocation(line: 147, column: 25, scope: !852)
!879 = !DILocation(line: 147, column: 25, scope: !854)
!880 = !DILocation(line: 147, column: 24, scope: !854)
!881 = !DILocation(line: 148, column: 27, scope: !846)
!882 = !DILocation(line: 148, column: 26, scope: !846)
!883 = !DILocation(line: 148, column: 42, scope: !846)
!884 = !DILocation(line: 148, column: 33, scope: !846)
!885 = !DILocation(line: 148, column: 11, scope: !850)
!886 = !DILocation(line: 148, column: 4, scope: !846)
!887 = !DILocation(line: 148, column: 9, scope: !846)
!888 = !DILocation(line: 149, column: 27, scope: !846)
!889 = !DILocation(line: 149, column: 26, scope: !846)
!890 = !DILocation(line: 149, column: 54, scope: !846)
!891 = !DILocation(line: 149, column: 45, scope: !846)
!892 = !DILocation(line: 149, column: 34, scope: !846)
!893 = !DILocation(line: 149, column: 11, scope: !846)
!894 = !DILocation(line: 149, column: 4, scope: !846)
!895 = !DILocation(line: 149, column: 9, scope: !846)
!896 = !DILocation(line: 135, column: 2, scope: !897)
!897 = !DILexicalBlockFile(scope: !847, file: !79, discriminator: 1)
!898 = !DILocation(line: 152, column: 1, scope: !801)
!899 = !DILocation(line: 154, column: 32, scope: !801)
!900 = !DILocation(line: 154, column: 41, scope: !801)
!901 = !DILocation(line: 154, column: 49, scope: !801)
!902 = !DILocation(line: 155, column: 11, scope: !801)
!903 = !DILocation(line: 155, column: 18, scope: !801)
!904 = !DILocation(line: 155, column: 24, scope: !801)
!905 = !DILocation(line: 154, column: 2, scope: !801)
!906 = !DILocation(line: 156, column: 1, scope: !801)
!907 = distinct !DISubprogram(name: "server_redirect_register_list", scope: !79, file: !79, line: 158, type: !908, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !75, !85, !85, !89, !89, !89}
!910 = !DILocalVariable(name: "command", arg: 1, scope: !907, file: !79, line: 158, type: !75)
!911 = !DILocation(line: 158, column: 48, scope: !907)
!912 = !DILocalVariable(name: "remote", arg: 2, scope: !907, file: !79, line: 159, type: !85)
!913 = !DILocation(line: 159, column: 12, scope: !907)
!914 = !DILocalVariable(name: "timeout", arg: 3, scope: !907, file: !79, line: 159, type: !85)
!915 = !DILocation(line: 159, column: 24, scope: !907)
!916 = !DILocalVariable(name: "start", arg: 4, scope: !907, file: !79, line: 160, type: !89)
!917 = !DILocation(line: 160, column: 16, scope: !907)
!918 = !DILocalVariable(name: "stop", arg: 5, scope: !907, file: !79, line: 160, type: !89)
!919 = !DILocation(line: 160, column: 31, scope: !907)
!920 = !DILocalVariable(name: "opt", arg: 6, scope: !907, file: !79, line: 160, type: !89)
!921 = !DILocation(line: 160, column: 45, scope: !907)
!922 = !DILocalVariable(name: "rec", scope: !907, file: !79, line: 162, type: !77)
!923 = !DILocation(line: 162, column: 20, scope: !907)
!924 = !DILocalVariable(name: "key", scope: !907, file: !79, line: 163, type: !68)
!925 = !DILocation(line: 163, column: 18, scope: !907)
!926 = !DILocalVariable(name: "value", scope: !907, file: !79, line: 163, type: !68)
!927 = !DILocation(line: 163, column: 23, scope: !907)
!928 = !DILocation(line: 165, column: 9, scope: !907)
!929 = distinct !{!929, !928}
!930 = !DILocation(line: 165, column: 17, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !79, discriminator: 1)
!932 = distinct !DILexicalBlock(scope: !933, file: !79, line: 165, column: 17)
!933 = distinct !DILexicalBlock(scope: !907, file: !79, line: 165, column: 11)
!934 = !DILocation(line: 165, column: 25, scope: !931)
!935 = !DILocation(line: 165, column: 12, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !79, discriminator: 2)
!937 = distinct !DILexicalBlock(scope: !932, file: !79, line: 165, column: 10)
!938 = !DILocation(line: 165, column: 21, scope: !939)
!939 = !DILexicalBlockFile(scope: !940, file: !79, discriminator: 3)
!940 = distinct !DILexicalBlock(scope: !932, file: !79, line: 165, column: 19)
!941 = !DILocation(line: 165, column: 109, scope: !939)
!942 = !DILocation(line: 165, column: 120, scope: !943)
!943 = !DILexicalBlockFile(scope: !933, file: !79, discriminator: 4)
!944 = !DILocation(line: 166, column: 9, scope: !907)
!945 = distinct !{!945, !944}
!946 = !DILocation(line: 166, column: 17, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !79, discriminator: 1)
!948 = distinct !DILexicalBlock(scope: !949, file: !79, line: 166, column: 17)
!949 = distinct !DILexicalBlock(scope: !907, file: !79, line: 166, column: 11)
!950 = !DILocation(line: 166, column: 22, scope: !947)
!951 = !DILocation(line: 166, column: 12, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !79, discriminator: 2)
!953 = distinct !DILexicalBlock(scope: !948, file: !79, line: 166, column: 10)
!954 = !DILocation(line: 166, column: 21, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !79, discriminator: 3)
!956 = distinct !DILexicalBlock(scope: !948, file: !79, line: 166, column: 19)
!957 = !DILocation(line: 166, column: 106, scope: !955)
!958 = !DILocation(line: 166, column: 117, scope: !959)
!959 = !DILexicalBlockFile(scope: !949, file: !79, discriminator: 4)
!960 = !DILocation(line: 168, column: 35, scope: !961)
!961 = distinct !DILexicalBlock(scope: !907, file: !79, line: 168, column: 6)
!962 = !DILocation(line: 168, column: 54, scope: !961)
!963 = !DILocation(line: 168, column: 6, scope: !961)
!964 = !DILocation(line: 168, column: 6, scope: !907)
!965 = !DILocation(line: 172, column: 23, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !79, line: 169, column: 22)
!967 = !DILocation(line: 172, column: 42, scope: !966)
!968 = !DILocation(line: 172, column: 3, scope: !966)
!969 = !DILocation(line: 173, column: 36, scope: !966)
!970 = !DILocation(line: 173, column: 17, scope: !966)
!971 = !DILocation(line: 174, column: 2, scope: !966)
!972 = !DILocation(line: 176, column: 30, scope: !907)
!973 = !DILocation(line: 176, column: 9, scope: !907)
!974 = !DILocation(line: 176, column: 6, scope: !907)
!975 = !DILocation(line: 177, column: 26, scope: !907)
!976 = !DILocation(line: 177, column: 9, scope: !907)
!977 = !DILocation(line: 178, column: 30, scope: !907)
!978 = !DILocation(line: 178, column: 21, scope: !907)
!979 = !DILocation(line: 178, column: 9, scope: !907)
!980 = !DILocation(line: 178, column: 14, scope: !907)
!981 = !DILocation(line: 178, column: 19, scope: !907)
!982 = !DILocation(line: 179, column: 16, scope: !907)
!983 = !DILocation(line: 179, column: 2, scope: !907)
!984 = !DILocation(line: 179, column: 7, scope: !907)
!985 = !DILocation(line: 179, column: 14, scope: !907)
!986 = !DILocation(line: 180, column: 17, scope: !907)
!987 = !DILocation(line: 180, column: 25, scope: !907)
!988 = !DILocation(line: 180, column: 31, scope: !989)
!989 = !DILexicalBlockFile(scope: !907, file: !79, discriminator: 1)
!990 = !DILocation(line: 180, column: 17, scope: !989)
!991 = !DILocation(line: 180, column: 17, scope: !992)
!992 = !DILexicalBlockFile(scope: !907, file: !79, discriminator: 2)
!993 = !DILocation(line: 180, column: 17, scope: !994)
!994 = !DILexicalBlockFile(scope: !907, file: !79, discriminator: 3)
!995 = !DILocation(line: 180, column: 2, scope: !994)
!996 = !DILocation(line: 180, column: 7, scope: !994)
!997 = !DILocation(line: 180, column: 15, scope: !994)
!998 = !DILocation(line: 181, column: 15, scope: !907)
!999 = !DILocation(line: 181, column: 2, scope: !907)
!1000 = !DILocation(line: 181, column: 7, scope: !907)
!1001 = !DILocation(line: 181, column: 13, scope: !907)
!1002 = !DILocation(line: 182, column: 21, scope: !907)
!1003 = !DILocation(line: 182, column: 9, scope: !907)
!1004 = !DILocation(line: 182, column: 14, scope: !907)
!1005 = !DILocation(line: 182, column: 19, scope: !907)
!1006 = !DILocation(line: 183, column: 20, scope: !907)
!1007 = !DILocation(line: 183, column: 9, scope: !907)
!1008 = !DILocation(line: 183, column: 14, scope: !907)
!1009 = !DILocation(line: 183, column: 18, scope: !907)
!1010 = !DILocation(line: 184, column: 29, scope: !907)
!1011 = !DILocation(line: 184, column: 48, scope: !907)
!1012 = !DILocation(line: 184, column: 53, scope: !907)
!1013 = !DILocation(line: 184, column: 59, scope: !907)
!1014 = !DILocation(line: 184, column: 9, scope: !907)
!1015 = !DILocation(line: 185, column: 1, scope: !907)
!1016 = !DILocation(line: 185, column: 1, scope: !989)
!1017 = distinct !DISubprogram(name: "redirect_cmd_ref", scope: !79, file: !79, line: 99, type: !788, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1018 = !DILocalVariable(name: "rec", arg: 1, scope: !1017, file: !79, line: 99, type: !77)
!1019 = !DILocation(line: 99, column: 48, scope: !1017)
!1020 = !DILocation(line: 101, column: 9, scope: !1017)
!1021 = !DILocation(line: 101, column: 14, scope: !1017)
!1022 = !DILocation(line: 101, column: 22, scope: !1017)
!1023 = !DILocation(line: 102, column: 1, scope: !1017)
!1024 = distinct !DISubprogram(name: "server_redirect_event", scope: !79, file: !79, line: 187, type: !1025, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !98, !75, !85, !75, !85, !75, null}
!1027 = !DILocalVariable(name: "server", arg: 1, scope: !1024, file: !79, line: 187, type: !98)
!1028 = !DILocation(line: 187, column: 44, scope: !1024)
!1029 = !DILocalVariable(name: "command", arg: 2, scope: !1024, file: !79, line: 187, type: !75)
!1030 = !DILocation(line: 187, column: 64, scope: !1024)
!1031 = !DILocalVariable(name: "count", arg: 3, scope: !1024, file: !79, line: 188, type: !85)
!1032 = !DILocation(line: 188, column: 11, scope: !1024)
!1033 = !DILocalVariable(name: "arg", arg: 4, scope: !1024, file: !79, line: 188, type: !75)
!1034 = !DILocation(line: 188, column: 30, scope: !1024)
!1035 = !DILocalVariable(name: "remote", arg: 5, scope: !1024, file: !79, line: 188, type: !85)
!1036 = !DILocation(line: 188, column: 39, scope: !1024)
!1037 = !DILocalVariable(name: "failure_signal", arg: 6, scope: !1024, file: !79, line: 189, type: !75)
!1038 = !DILocation(line: 189, column: 19, scope: !1024)
!1039 = !DILocalVariable(name: "signals", scope: !1024, file: !79, line: 191, type: !89)
!1040 = !DILocation(line: 191, column: 10, scope: !1024)
!1041 = !DILocalVariable(name: "event", scope: !1024, file: !79, line: 192, type: !75)
!1042 = !DILocation(line: 192, column: 21, scope: !1024)
!1043 = !DILocalVariable(name: "signal", scope: !1024, file: !79, line: 192, type: !75)
!1044 = !DILocation(line: 192, column: 29, scope: !1024)
!1045 = !DILocalVariable(name: "va", scope: !1024, file: !79, line: 193, type: !811)
!1046 = !DILocation(line: 193, column: 10, scope: !1024)
!1047 = !DILocation(line: 195, column: 1, scope: !1024)
!1048 = !DILocation(line: 196, column: 10, scope: !1024)
!1049 = !DILocation(line: 197, column: 2, scope: !1024)
!1050 = !DILocation(line: 197, column: 17, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1024, file: !79, discriminator: 1)
!1052 = !DILocation(line: 197, column: 17, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1024, file: !79, discriminator: 2)
!1054 = !DILocation(line: 197, column: 17, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1024, file: !79, discriminator: 3)
!1056 = !DILocation(line: 197, column: 17, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1024, file: !79, discriminator: 4)
!1058 = !DILocation(line: 197, column: 16, scope: !1057)
!1059 = !DILocation(line: 197, column: 43, scope: !1057)
!1060 = !DILocation(line: 197, column: 2, scope: !1057)
!1061 = !DILocation(line: 198, column: 11, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1024, file: !79, line: 197, column: 52)
!1063 = !DILocation(line: 198, column: 11, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1062, file: !79, discriminator: 1)
!1065 = !DILocation(line: 198, column: 11, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1062, file: !79, discriminator: 2)
!1067 = !DILocation(line: 198, column: 11, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1062, file: !79, discriminator: 3)
!1069 = !DILocation(line: 198, column: 10, scope: !1068)
!1070 = !DILocation(line: 199, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !79, line: 199, column: 7)
!1072 = !DILocation(line: 199, column: 14, scope: !1071)
!1073 = !DILocation(line: 199, column: 7, scope: !1062)
!1074 = !DILocation(line: 200, column: 110, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !79, line: 199, column: 22)
!1076 = !DILocation(line: 200, column: 4, scope: !1075)
!1077 = !DILocation(line: 202, column: 4, scope: !1075)
!1078 = !DILocation(line: 205, column: 28, scope: !1062)
!1079 = !DILocation(line: 205, column: 46, scope: !1062)
!1080 = !DILocation(line: 205, column: 37, scope: !1062)
!1081 = !DILocation(line: 205, column: 13, scope: !1064)
!1082 = !DILocation(line: 205, column: 11, scope: !1062)
!1083 = !DILocation(line: 206, column: 28, scope: !1062)
!1084 = !DILocation(line: 206, column: 46, scope: !1062)
!1085 = !DILocation(line: 206, column: 37, scope: !1062)
!1086 = !DILocation(line: 206, column: 13, scope: !1064)
!1087 = !DILocation(line: 206, column: 11, scope: !1062)
!1088 = !DILocation(line: 197, column: 2, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1024, file: !79, discriminator: 5)
!1090 = distinct !{!1090, !1049}
!1091 = !DILocation(line: 209, column: 1, scope: !1024)
!1092 = !DILocation(line: 211, column: 29, scope: !1024)
!1093 = !DILocation(line: 211, column: 37, scope: !1024)
!1094 = !DILocation(line: 211, column: 46, scope: !1024)
!1095 = !DILocation(line: 211, column: 53, scope: !1024)
!1096 = !DILocation(line: 211, column: 58, scope: !1024)
!1097 = !DILocation(line: 212, column: 8, scope: !1024)
!1098 = !DILocation(line: 212, column: 24, scope: !1024)
!1099 = !DILocation(line: 211, column: 2, scope: !1024)
!1100 = !DILocation(line: 213, column: 1, scope: !1024)
!1101 = distinct !DISubprogram(name: "server_redirect_event_list", scope: !79, file: !79, line: 236, type: !1102, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !98, !75, !85, !75, !85, !75, !89}
!1104 = !DILocalVariable(name: "server", arg: 1, scope: !1101, file: !79, line: 236, type: !98)
!1105 = !DILocation(line: 236, column: 49, scope: !1101)
!1106 = !DILocalVariable(name: "command", arg: 2, scope: !1101, file: !79, line: 236, type: !75)
!1107 = !DILocation(line: 236, column: 69, scope: !1101)
!1108 = !DILocalVariable(name: "count", arg: 3, scope: !1101, file: !79, line: 237, type: !85)
!1109 = !DILocation(line: 237, column: 9, scope: !1101)
!1110 = !DILocalVariable(name: "arg", arg: 4, scope: !1101, file: !79, line: 237, type: !75)
!1111 = !DILocation(line: 237, column: 28, scope: !1101)
!1112 = !DILocalVariable(name: "remote", arg: 5, scope: !1101, file: !79, line: 237, type: !85)
!1113 = !DILocation(line: 237, column: 37, scope: !1101)
!1114 = !DILocalVariable(name: "failure_signal", arg: 6, scope: !1101, file: !79, line: 238, type: !75)
!1115 = !DILocation(line: 238, column: 17, scope: !1101)
!1116 = !DILocalVariable(name: "signals", arg: 7, scope: !1101, file: !79, line: 238, type: !89)
!1117 = !DILocation(line: 238, column: 41, scope: !1101)
!1118 = !DILocalVariable(name: "cmdrec", scope: !1101, file: !79, line: 240, type: !77)
!1119 = !DILocation(line: 240, column: 20, scope: !1101)
!1120 = !DILocalVariable(name: "rec", scope: !1101, file: !79, line: 241, type: !605)
!1121 = !DILocation(line: 241, column: 16, scope: !1101)
!1122 = !DILocation(line: 243, column: 2, scope: !1101)
!1123 = distinct !{!1123, !1122}
!1124 = !DILocation(line: 243, column: 90, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !79, discriminator: 1)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !79, line: 243, column: 10)
!1127 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 243, column: 4)
!1128 = !DILocation(line: 243, column: 72, scope: !1125)
!1129 = !DILocation(line: 243, column: 57, scope: !1125)
!1130 = !DILocation(line: 243, column: 56, scope: !1125)
!1131 = !DILocation(line: 243, column: 31, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1125, file: !79, discriminator: 7)
!1133 = !DILocation(line: 243, column: 12, scope: !1125)
!1134 = !DILocation(line: 243, column: 10, scope: !1125)
!1135 = !DILocation(line: 243, column: 11, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1126, file: !79, discriminator: 2)
!1137 = !DILocation(line: 243, column: 10, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1127, file: !79, discriminator: 3)
!1139 = !DILocation(line: 243, column: 30, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !79, discriminator: 4)
!1141 = distinct !DILexicalBlock(scope: !1126, file: !79, line: 243, column: 28)
!1142 = !DILocation(line: 243, column: 39, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !79, discriminator: 5)
!1144 = distinct !DILexicalBlock(scope: !1126, file: !79, line: 243, column: 37)
!1145 = !DILocation(line: 243, column: 133, scope: !1143)
!1146 = !DILocation(line: 243, column: 144, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1127, file: !79, discriminator: 6)
!1148 = !DILocation(line: 244, column: 2, scope: !1101)
!1149 = distinct !{!1149, !1148}
!1150 = !DILocation(line: 244, column: 10, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1152, file: !79, discriminator: 1)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !79, line: 244, column: 10)
!1153 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 244, column: 4)
!1154 = !DILocation(line: 244, column: 18, scope: !1151)
!1155 = !DILocation(line: 244, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1157, file: !79, discriminator: 2)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !79, line: 244, column: 3)
!1158 = !DILocation(line: 244, column: 14, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1160, file: !79, discriminator: 3)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !79, line: 244, column: 12)
!1161 = !DILocation(line: 244, column: 102, scope: !1159)
!1162 = !DILocation(line: 244, column: 113, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1153, file: !79, discriminator: 4)
!1164 = !DILocation(line: 245, column: 9, scope: !1101)
!1165 = distinct !{!1165, !1164}
!1166 = !DILocation(line: 245, column: 33, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1168, file: !79, discriminator: 1)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !79, line: 245, column: 17)
!1169 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 245, column: 11)
!1170 = !DILocation(line: 245, column: 18, scope: !1167)
!1171 = !DILocation(line: 245, column: 42, scope: !1167)
!1172 = !DILocation(line: 245, column: 47, scope: !1167)
!1173 = !DILocation(line: 245, column: 17, scope: !1167)
!1174 = !DILocation(line: 245, column: 55, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !79, discriminator: 2)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !79, line: 245, column: 53)
!1177 = !DILocation(line: 245, column: 64, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !79, discriminator: 3)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !79, line: 245, column: 62)
!1180 = !DILocation(line: 245, column: 171, scope: !1178)
!1181 = !DILocation(line: 245, column: 182, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1169, file: !79, discriminator: 4)
!1183 = !DILocation(line: 247, column: 31, scope: !1101)
!1184 = !DILocation(line: 247, column: 50, scope: !1101)
!1185 = !DILocation(line: 247, column: 11, scope: !1101)
!1186 = !DILocation(line: 247, column: 9, scope: !1101)
!1187 = !DILocation(line: 248, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 248, column: 6)
!1189 = !DILocation(line: 248, column: 13, scope: !1188)
!1190 = !DILocation(line: 248, column: 6, scope: !1101)
!1191 = !DILocation(line: 249, column: 80, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !79, line: 248, column: 21)
!1193 = !DILocation(line: 249, column: 3, scope: !1192)
!1194 = !DILocation(line: 250, column: 17, scope: !1192)
!1195 = !DILocation(line: 253, column: 19, scope: !1101)
!1196 = !DILocation(line: 253, column: 2, scope: !1101)
!1197 = !DILocation(line: 255, column: 33, scope: !1101)
!1198 = !DILocation(line: 255, column: 16, scope: !1101)
!1199 = !DILocation(line: 255, column: 13, scope: !1101)
!1200 = !DILocation(line: 256, column: 24, scope: !1101)
!1201 = !DILocation(line: 256, column: 9, scope: !1101)
!1202 = !DILocation(line: 256, column: 14, scope: !1101)
!1203 = !DILocation(line: 256, column: 22, scope: !1101)
!1204 = !DILocation(line: 257, column: 20, scope: !1101)
!1205 = !DILocation(line: 257, column: 9, scope: !1101)
!1206 = !DILocation(line: 257, column: 14, scope: !1101)
!1207 = !DILocation(line: 257, column: 18, scope: !1101)
!1208 = !DILocation(line: 258, column: 22, scope: !1101)
!1209 = !DILocation(line: 258, column: 13, scope: !1101)
!1210 = !DILocation(line: 258, column: 2, scope: !1101)
!1211 = !DILocation(line: 258, column: 7, scope: !1101)
!1212 = !DILocation(line: 258, column: 11, scope: !1101)
!1213 = !DILocation(line: 259, column: 22, scope: !1101)
!1214 = !DILocation(line: 259, column: 9, scope: !1101)
!1215 = !DILocation(line: 259, column: 14, scope: !1101)
!1216 = !DILocation(line: 259, column: 20, scope: !1101)
!1217 = !DILocation(line: 260, column: 16, scope: !1101)
!1218 = !DILocation(line: 260, column: 23, scope: !1101)
!1219 = !DILocation(line: 260, column: 31, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1101, file: !79, discriminator: 1)
!1221 = !DILocation(line: 260, column: 16, scope: !1220)
!1222 = !DILocation(line: 260, column: 40, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1101, file: !79, discriminator: 2)
!1224 = !DILocation(line: 260, column: 48, scope: !1223)
!1225 = !DILocation(line: 260, column: 16, scope: !1223)
!1226 = !DILocation(line: 260, column: 16, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1101, file: !79, discriminator: 3)
!1228 = !DILocation(line: 260, column: 2, scope: !1227)
!1229 = !DILocation(line: 260, column: 7, scope: !1227)
!1230 = !DILocation(line: 260, column: 14, scope: !1227)
!1231 = !DILocation(line: 261, column: 33, scope: !1101)
!1232 = !DILocation(line: 261, column: 24, scope: !1101)
!1233 = !DILocation(line: 261, column: 2, scope: !1101)
!1234 = !DILocation(line: 261, column: 7, scope: !1101)
!1235 = !DILocation(line: 261, column: 22, scope: !1101)
!1236 = !DILocation(line: 263, column: 31, scope: !1101)
!1237 = !DILocation(line: 263, column: 9, scope: !1101)
!1238 = !DILocation(line: 263, column: 14, scope: !1101)
!1239 = !DILocation(line: 263, column: 29, scope: !1101)
!1240 = !DILocation(line: 264, column: 29, scope: !1101)
!1241 = !DILocation(line: 264, column: 9, scope: !1101)
!1242 = !DILocation(line: 264, column: 14, scope: !1101)
!1243 = !DILocation(line: 264, column: 27, scope: !1101)
!1244 = !DILocation(line: 265, column: 28, scope: !1101)
!1245 = !DILocation(line: 265, column: 9, scope: !1101)
!1246 = !DILocation(line: 265, column: 14, scope: !1101)
!1247 = !DILocation(line: 265, column: 26, scope: !1101)
!1248 = !DILocation(line: 266, column: 17, scope: !1101)
!1249 = !DILocation(line: 266, column: 2, scope: !1101)
!1250 = !DILocation(line: 266, column: 7, scope: !1101)
!1251 = !DILocation(line: 266, column: 15, scope: !1101)
!1252 = !DILocation(line: 268, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1101, file: !79, line: 268, column: 6)
!1254 = !DILocation(line: 268, column: 14, scope: !1253)
!1255 = !DILocation(line: 268, column: 28, scope: !1253)
!1256 = !DILocation(line: 268, column: 6, scope: !1101)
!1257 = !DILocation(line: 269, column: 41, scope: !1253)
!1258 = !DILocation(line: 269, column: 49, scope: !1253)
!1259 = !DILocation(line: 269, column: 17, scope: !1253)
!1260 = !DILocation(line: 270, column: 33, scope: !1101)
!1261 = !DILocation(line: 270, column: 9, scope: !1101)
!1262 = !DILocation(line: 270, column: 17, scope: !1101)
!1263 = !DILocation(line: 270, column: 31, scope: !1101)
!1264 = !DILocation(line: 271, column: 1, scope: !1101)
!1265 = !DILocation(line: 271, column: 1, scope: !1220)
!1266 = distinct !DISubprogram(name: "signal_list_move", scope: !79, file: !79, line: 217, type: !1267, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!83, !833, !75}
!1269 = !DILocalVariable(name: "signals", arg: 1, scope: !1266, file: !79, line: 217, type: !833)
!1270 = !DILocation(line: 217, column: 40, scope: !1266)
!1271 = !DILocalVariable(name: "event", arg: 2, scope: !1266, file: !79, line: 217, type: !75)
!1272 = !DILocation(line: 217, column: 61, scope: !1266)
!1273 = !DILocalVariable(name: "link", scope: !1266, file: !79, line: 219, type: !89)
!1274 = !DILocation(line: 219, column: 10, scope: !1266)
!1275 = !DILocalVariable(name: "linkevent", scope: !1266, file: !79, line: 220, type: !83)
!1276 = !DILocation(line: 220, column: 15, scope: !1266)
!1277 = !DILocalVariable(name: "linksignal", scope: !1266, file: !79, line: 220, type: !83)
!1278 = !DILocation(line: 220, column: 27, scope: !1266)
!1279 = !DILocation(line: 222, column: 29, scope: !1266)
!1280 = !DILocation(line: 222, column: 28, scope: !1266)
!1281 = !DILocation(line: 222, column: 38, scope: !1266)
!1282 = !DILocation(line: 222, column: 9, scope: !1266)
!1283 = !DILocation(line: 222, column: 7, scope: !1266)
!1284 = !DILocation(line: 223, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1266, file: !79, line: 223, column: 6)
!1286 = !DILocation(line: 223, column: 11, scope: !1285)
!1287 = !DILocation(line: 223, column: 6, scope: !1266)
!1288 = !DILocation(line: 224, column: 3, scope: !1285)
!1289 = !DILocation(line: 226, column: 14, scope: !1266)
!1290 = !DILocation(line: 226, column: 20, scope: !1266)
!1291 = !DILocation(line: 226, column: 12, scope: !1266)
!1292 = !DILocation(line: 227, column: 22, scope: !1266)
!1293 = !DILocation(line: 227, column: 28, scope: !1266)
!1294 = !DILocation(line: 227, column: 34, scope: !1266)
!1295 = !DILocation(line: 227, column: 20, scope: !1266)
!1296 = !DILocation(line: 229, column: 29, scope: !1266)
!1297 = !DILocation(line: 229, column: 28, scope: !1266)
!1298 = !DILocation(line: 229, column: 38, scope: !1266)
!1299 = !DILocation(line: 229, column: 13, scope: !1266)
!1300 = !DILocation(line: 229, column: 3, scope: !1266)
!1301 = !DILocation(line: 229, column: 11, scope: !1266)
!1302 = !DILocation(line: 230, column: 29, scope: !1266)
!1303 = !DILocation(line: 230, column: 28, scope: !1266)
!1304 = !DILocation(line: 230, column: 38, scope: !1266)
!1305 = !DILocation(line: 230, column: 13, scope: !1266)
!1306 = !DILocation(line: 230, column: 3, scope: !1266)
!1307 = !DILocation(line: 230, column: 11, scope: !1266)
!1308 = !DILocation(line: 232, column: 9, scope: !1266)
!1309 = !DILocation(line: 232, column: 2, scope: !1266)
!1310 = !DILocation(line: 233, column: 16, scope: !1266)
!1311 = !DILocation(line: 233, column: 9, scope: !1266)
!1312 = !DILocation(line: 234, column: 1, scope: !1266)
!1313 = distinct !DISubprogram(name: "server_redirect_command", scope: !79, file: !79, line: 273, type: !1314, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !98, !75, !605}
!1316 = !DILocalVariable(name: "server", arg: 1, scope: !1313, file: !79, line: 273, type: !98)
!1317 = !DILocation(line: 273, column: 46, scope: !1313)
!1318 = !DILocalVariable(name: "command", arg: 2, scope: !1313, file: !79, line: 273, type: !75)
!1319 = !DILocation(line: 273, column: 66, scope: !1313)
!1320 = !DILocalVariable(name: "redirect", arg: 3, scope: !1313, file: !79, line: 274, type: !605)
!1321 = !DILocation(line: 274, column: 23, scope: !1313)
!1322 = !DILocalVariable(name: "cmdrec", scope: !1313, file: !79, line: 276, type: !77)
!1323 = !DILocation(line: 276, column: 27, scope: !1313)
!1324 = !DILocation(line: 278, column: 2, scope: !1313)
!1325 = distinct !{!1325, !1324}
!1326 = !DILocation(line: 278, column: 90, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !79, discriminator: 1)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !79, line: 278, column: 10)
!1329 = distinct !DILexicalBlock(scope: !1313, file: !79, line: 278, column: 4)
!1330 = !DILocation(line: 278, column: 72, scope: !1327)
!1331 = !DILocation(line: 278, column: 57, scope: !1327)
!1332 = !DILocation(line: 278, column: 56, scope: !1327)
!1333 = !DILocation(line: 278, column: 31, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1327, file: !79, discriminator: 7)
!1335 = !DILocation(line: 278, column: 12, scope: !1327)
!1336 = !DILocation(line: 278, column: 10, scope: !1327)
!1337 = !DILocation(line: 278, column: 11, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1328, file: !79, discriminator: 2)
!1339 = !DILocation(line: 278, column: 10, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1329, file: !79, discriminator: 3)
!1341 = !DILocation(line: 278, column: 30, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !79, discriminator: 4)
!1343 = distinct !DILexicalBlock(scope: !1328, file: !79, line: 278, column: 28)
!1344 = !DILocation(line: 278, column: 39, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !79, discriminator: 5)
!1346 = distinct !DILexicalBlock(scope: !1328, file: !79, line: 278, column: 37)
!1347 = !DILocation(line: 278, column: 133, scope: !1345)
!1348 = !DILocation(line: 278, column: 144, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1329, file: !79, discriminator: 6)
!1350 = !DILocation(line: 279, column: 2, scope: !1313)
!1351 = distinct !{!1351, !1350}
!1352 = !DILocation(line: 279, column: 10, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !79, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !79, line: 279, column: 10)
!1355 = distinct !DILexicalBlock(scope: !1313, file: !79, line: 279, column: 4)
!1356 = !DILocation(line: 279, column: 18, scope: !1353)
!1357 = !DILocation(line: 279, column: 5, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !79, discriminator: 2)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !79, line: 279, column: 3)
!1360 = !DILocation(line: 279, column: 14, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !79, discriminator: 3)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !79, line: 279, column: 12)
!1363 = !DILocation(line: 279, column: 102, scope: !1361)
!1364 = !DILocation(line: 279, column: 113, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1355, file: !79, discriminator: 4)
!1366 = !DILocation(line: 281, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1313, file: !79, line: 281, column: 6)
!1368 = !DILocation(line: 281, column: 15, scope: !1367)
!1369 = !DILocation(line: 281, column: 6, scope: !1313)
!1370 = !DILocation(line: 284, column: 30, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !79, line: 281, column: 23)
!1372 = !DILocation(line: 284, column: 12, scope: !1371)
!1373 = !DILocation(line: 284, column: 10, scope: !1371)
!1374 = !DILocation(line: 285, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !79, line: 285, column: 7)
!1376 = !DILocation(line: 285, column: 14, scope: !1375)
!1377 = !DILocation(line: 285, column: 7, scope: !1371)
!1378 = !DILocation(line: 286, column: 4, scope: !1375)
!1379 = !DILocation(line: 288, column: 20, scope: !1371)
!1380 = !DILocation(line: 288, column: 3, scope: !1371)
!1381 = !DILocation(line: 290, column: 32, scope: !1371)
!1382 = !DILocation(line: 290, column: 15, scope: !1371)
!1383 = !DILocation(line: 290, column: 12, scope: !1371)
!1384 = !DILocation(line: 291, column: 23, scope: !1371)
!1385 = !DILocation(line: 291, column: 3, scope: !1371)
!1386 = !DILocation(line: 291, column: 13, scope: !1371)
!1387 = !DILocation(line: 291, column: 21, scope: !1371)
!1388 = !DILocation(line: 292, column: 19, scope: !1371)
!1389 = !DILocation(line: 292, column: 3, scope: !1371)
!1390 = !DILocation(line: 292, column: 13, scope: !1371)
!1391 = !DILocation(line: 292, column: 17, scope: !1371)
!1392 = !DILocation(line: 293, column: 22, scope: !1371)
!1393 = !DILocation(line: 293, column: 30, scope: !1371)
!1394 = !DILocation(line: 293, column: 3, scope: !1371)
!1395 = !DILocation(line: 293, column: 13, scope: !1371)
!1396 = !DILocation(line: 293, column: 20, scope: !1371)
!1397 = !DILocation(line: 294, column: 2, scope: !1371)
!1398 = !DILocation(line: 296, column: 37, scope: !1313)
!1399 = !DILocation(line: 296, column: 45, scope: !1313)
!1400 = !DILocation(line: 296, column: 56, scope: !1313)
!1401 = !DILocation(line: 296, column: 22, scope: !1313)
!1402 = !DILocation(line: 296, column: 2, scope: !1313)
!1403 = !DILocation(line: 296, column: 10, scope: !1313)
!1404 = !DILocation(line: 296, column: 20, scope: !1313)
!1405 = !DILocation(line: 297, column: 1, scope: !1313)
!1406 = !DILocation(line: 297, column: 1, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1313, file: !79, discriminator: 1)
!1408 = distinct !DISubprogram(name: "redirect_cmd_find", scope: !79, file: !79, line: 65, type: !1409, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!77, !75}
!1411 = !DILocalVariable(name: "command", arg: 1, scope: !1408, file: !79, line: 65, type: !75)
!1412 = !DILocation(line: 65, column: 56, scope: !1408)
!1413 = !DILocalVariable(name: "rec", scope: !1408, file: !79, line: 67, type: !77)
!1414 = !DILocation(line: 67, column: 27, scope: !1408)
!1415 = !DILocalVariable(name: "p", scope: !1408, file: !79, line: 68, type: !75)
!1416 = !DILocation(line: 68, column: 14, scope: !1408)
!1417 = !DILocalVariable(name: "cmd", scope: !1408, file: !79, line: 69, type: !83)
!1418 = !DILocation(line: 69, column: 15, scope: !1408)
!1419 = !DILocation(line: 71, column: 13, scope: !1408)
!1420 = !DILocation(line: 71, column: 6, scope: !1408)
!1421 = !DILocation(line: 71, column: 4, scope: !1408)
!1422 = !DILocation(line: 72, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1408, file: !79, line: 72, column: 6)
!1424 = !DILocation(line: 72, column: 8, scope: !1423)
!1425 = !DILocation(line: 72, column: 6, scope: !1408)
!1426 = !DILocation(line: 73, column: 43, scope: !1423)
!1427 = !DILocation(line: 73, column: 62, scope: !1423)
!1428 = !DILocation(line: 73, column: 23, scope: !1423)
!1429 = !DILocation(line: 73, column: 21, scope: !1423)
!1430 = !DILocation(line: 73, column: 17, scope: !1423)
!1431 = !DILocation(line: 75, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1423, file: !79, line: 74, column: 7)
!1433 = !DILocation(line: 75, column: 35, scope: !1432)
!1434 = !DILocation(line: 75, column: 37, scope: !1432)
!1435 = !DILocation(line: 75, column: 36, scope: !1432)
!1436 = !DILocation(line: 75, column: 28, scope: !1432)
!1437 = !DILocation(line: 75, column: 9, scope: !1432)
!1438 = !DILocation(line: 75, column: 7, scope: !1432)
!1439 = !DILocation(line: 76, column: 43, scope: !1432)
!1440 = !DILocation(line: 76, column: 62, scope: !1432)
!1441 = !DILocation(line: 76, column: 23, scope: !1432)
!1442 = !DILocation(line: 76, column: 21, scope: !1432)
!1443 = !DILocation(line: 77, column: 10, scope: !1432)
!1444 = !DILocation(line: 77, column: 3, scope: !1432)
!1445 = !DILocation(line: 79, column: 16, scope: !1408)
!1446 = !DILocation(line: 79, column: 9, scope: !1408)
!1447 = distinct !DISubprogram(name: "server_redirect_get_signal", scope: !79, file: !79, line: 571, type: !1448, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!75, !98, !75, !75, !75}
!1450 = !DILocalVariable(name: "server", arg: 1, scope: !1447, file: !79, line: 571, type: !98)
!1451 = !DILocation(line: 571, column: 56, scope: !1447)
!1452 = !DILocalVariable(name: "prefix", arg: 2, scope: !1447, file: !79, line: 572, type: !75)
!1453 = !DILocation(line: 572, column: 24, scope: !1447)
!1454 = !DILocalVariable(name: "event", arg: 3, scope: !1447, file: !79, line: 573, type: !75)
!1455 = !DILocation(line: 573, column: 24, scope: !1447)
!1456 = !DILocalVariable(name: "args", arg: 4, scope: !1447, file: !79, line: 574, type: !75)
!1457 = !DILocation(line: 574, column: 24, scope: !1447)
!1458 = !DILocalVariable(name: "redirect", scope: !1447, file: !79, line: 576, type: !605)
!1459 = !DILocation(line: 576, column: 16, scope: !1447)
!1460 = !DILocalVariable(name: "signal", scope: !1447, file: !79, line: 577, type: !75)
!1461 = !DILocation(line: 577, column: 21, scope: !1447)
!1462 = !DILocalVariable(name: "match", scope: !1447, file: !79, line: 578, type: !85)
!1463 = !DILocation(line: 578, column: 6, scope: !1447)
!1464 = !DILocation(line: 580, column: 31, scope: !1447)
!1465 = !DILocation(line: 580, column: 39, scope: !1447)
!1466 = !DILocation(line: 580, column: 47, scope: !1447)
!1467 = !DILocation(line: 580, column: 54, scope: !1447)
!1468 = !DILocation(line: 580, column: 11, scope: !1447)
!1469 = !DILocation(line: 580, column: 9, scope: !1447)
!1470 = !DILocation(line: 581, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1447, file: !79, line: 581, column: 6)
!1472 = !DILocation(line: 581, column: 15, scope: !1471)
!1473 = !DILocation(line: 581, column: 6, scope: !1447)
!1474 = !DILocation(line: 581, column: 6, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1447, file: !79, discriminator: 1)
!1476 = !DILocation(line: 583, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !79, line: 583, column: 11)
!1478 = !DILocation(line: 583, column: 17, scope: !1477)
!1479 = !DILocation(line: 583, column: 11, scope: !1471)
!1480 = !DILocation(line: 584, column: 20, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !79, line: 584, column: 7)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !79, line: 583, column: 23)
!1483 = !DILocation(line: 584, column: 28, scope: !1481)
!1484 = !DILocation(line: 584, column: 45, scope: !1481)
!1485 = !DILocation(line: 584, column: 7, scope: !1481)
!1486 = !DILocation(line: 584, column: 55, scope: !1481)
!1487 = !DILocation(line: 584, column: 7, scope: !1482)
!1488 = !DILocation(line: 585, column: 46, scope: !1481)
!1489 = !DILocation(line: 585, column: 54, scope: !1481)
!1490 = !DILocation(line: 585, column: 71, scope: !1481)
!1491 = !DILocation(line: 585, column: 30, scope: !1481)
!1492 = !DILocation(line: 585, column: 4, scope: !1481)
!1493 = !DILocation(line: 585, column: 12, scope: !1481)
!1494 = !DILocation(line: 585, column: 28, scope: !1481)
!1495 = !DILocation(line: 586, column: 2, scope: !1482)
!1496 = !DILocation(line: 590, column: 23, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !79, line: 590, column: 21)
!1498 = distinct !DILexicalBlock(scope: !1477, file: !79, line: 586, column: 9)
!1499 = !DILocation(line: 590, column: 33, scope: !1497)
!1500 = !DILocation(line: 590, column: 21, scope: !1497)
!1501 = !DILocation(line: 590, column: 39, scope: !1497)
!1502 = !DILocation(line: 590, column: 21, scope: !1498)
!1503 = !DILocation(line: 591, column: 4, scope: !1497)
!1504 = !DILocation(line: 591, column: 14, scope: !1497)
!1505 = !DILocation(line: 591, column: 24, scope: !1497)
!1506 = !DILocation(line: 592, column: 44, scope: !1498)
!1507 = !DILocation(line: 592, column: 52, scope: !1498)
!1508 = !DILocation(line: 592, column: 69, scope: !1498)
!1509 = !DILocation(line: 592, column: 29, scope: !1498)
!1510 = !DILocation(line: 592, column: 3, scope: !1498)
!1511 = !DILocation(line: 592, column: 11, scope: !1498)
!1512 = !DILocation(line: 592, column: 27, scope: !1498)
!1513 = !DILocation(line: 595, column: 16, scope: !1447)
!1514 = !DILocation(line: 595, column: 9, scope: !1447)
!1515 = distinct !DISubprogram(name: "server_redirect_get", scope: !79, file: !79, line: 514, type: !1516, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!75, !98, !75, !75, !75, !1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!1520 = !DILocalVariable(name: "server", arg: 1, scope: !1515, file: !79, line: 514, type: !98)
!1521 = !DILocation(line: 514, column: 37, scope: !1515)
!1522 = !DILocalVariable(name: "prefix", arg: 2, scope: !1515, file: !79, line: 514, type: !75)
!1523 = !DILocation(line: 514, column: 57, scope: !1515)
!1524 = !DILocalVariable(name: "event", arg: 3, scope: !1515, file: !79, line: 515, type: !75)
!1525 = !DILocation(line: 515, column: 19, scope: !1515)
!1526 = !DILocalVariable(name: "args", arg: 4, scope: !1515, file: !79, line: 515, type: !75)
!1527 = !DILocation(line: 515, column: 38, scope: !1515)
!1528 = !DILocalVariable(name: "redirect", arg: 5, scope: !1515, file: !79, line: 516, type: !1518)
!1529 = !DILocation(line: 516, column: 22, scope: !1515)
!1530 = !DILocalVariable(name: "match", arg: 6, scope: !1515, file: !79, line: 516, type: !1519)
!1531 = !DILocation(line: 516, column: 37, scope: !1515)
!1532 = !DILocalVariable(name: "signal", scope: !1515, file: !79, line: 518, type: !75)
!1533 = !DILocation(line: 518, column: 14, scope: !1515)
!1534 = !DILocalVariable(name: "ptr", scope: !1515, file: !79, line: 519, type: !89)
!1535 = !DILocation(line: 519, column: 10, scope: !1515)
!1536 = !DILocalVariable(name: "next", scope: !1515, file: !79, line: 519, type: !89)
!1537 = !DILocation(line: 519, column: 16, scope: !1515)
!1538 = !DILocalVariable(name: "r", scope: !1515, file: !79, line: 520, type: !605)
!1539 = !DILocation(line: 520, column: 16, scope: !1515)
!1540 = !DILocation(line: 522, column: 10, scope: !1515)
!1541 = !DILocation(line: 522, column: 19, scope: !1515)
!1542 = !DILocation(line: 523, column: 3, scope: !1515)
!1543 = !DILocation(line: 523, column: 9, scope: !1515)
!1544 = !DILocation(line: 525, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1515, file: !79, line: 525, column: 6)
!1546 = !DILocation(line: 525, column: 14, scope: !1545)
!1547 = !DILocation(line: 525, column: 24, scope: !1545)
!1548 = !DILocation(line: 525, column: 6, scope: !1515)
!1549 = !DILocation(line: 526, column: 3, scope: !1545)
!1550 = !DILocation(line: 528, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1515, file: !79, line: 528, column: 2)
!1552 = !DILocation(line: 528, column: 21, scope: !1551)
!1553 = !DILocation(line: 528, column: 11, scope: !1551)
!1554 = !DILocation(line: 528, column: 7, scope: !1551)
!1555 = !DILocation(line: 528, column: 38, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !79, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !79, line: 528, column: 2)
!1558 = !DILocation(line: 528, column: 42, scope: !1556)
!1559 = !DILocation(line: 528, column: 2, scope: !1556)
!1560 = !DILocation(line: 529, column: 10, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !79, line: 528, column: 62)
!1562 = !DILocation(line: 529, column: 15, scope: !1561)
!1563 = !DILocation(line: 529, column: 8, scope: !1561)
!1564 = !DILocation(line: 530, column: 7, scope: !1561)
!1565 = !DILocation(line: 530, column: 12, scope: !1561)
!1566 = !DILocation(line: 530, column: 5, scope: !1561)
!1567 = !DILocation(line: 531, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1561, file: !79, line: 531, column: 7)
!1569 = !DILocation(line: 531, column: 14, scope: !1568)
!1570 = !DILocation(line: 531, column: 21, scope: !1568)
!1571 = !DILocation(line: 531, column: 24, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1568, file: !79, discriminator: 1)
!1573 = !DILocation(line: 531, column: 27, scope: !1572)
!1574 = !DILocation(line: 531, column: 34, scope: !1572)
!1575 = !DILocation(line: 531, column: 42, scope: !1572)
!1576 = !DILocation(line: 532, column: 15, scope: !1568)
!1577 = !DILocation(line: 532, column: 23, scope: !1568)
!1578 = !DILocation(line: 532, column: 26, scope: !1568)
!1579 = !DILocation(line: 532, column: 5, scope: !1568)
!1580 = !DILocation(line: 531, column: 7, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1561, file: !79, discriminator: 2)
!1582 = !DILocation(line: 534, column: 4, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1568, file: !79, line: 532, column: 35)
!1584 = !DILocation(line: 538, column: 15, scope: !1561)
!1585 = !DILocation(line: 538, column: 4, scope: !1561)
!1586 = !DILocation(line: 538, column: 13, scope: !1561)
!1587 = !DILocation(line: 539, column: 28, scope: !1561)
!1588 = !DILocation(line: 539, column: 27, scope: !1561)
!1589 = !DILocation(line: 539, column: 38, scope: !1561)
!1590 = !DILocation(line: 539, column: 50, scope: !1561)
!1591 = !DILocation(line: 539, column: 12, scope: !1561)
!1592 = !DILocation(line: 539, column: 10, scope: !1561)
!1593 = !DILocation(line: 540, column: 7, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1561, file: !79, line: 540, column: 7)
!1595 = !DILocation(line: 540, column: 14, scope: !1594)
!1596 = !DILocation(line: 540, column: 7, scope: !1561)
!1597 = !DILocation(line: 543, column: 6, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !79, line: 540, column: 22)
!1599 = !DILocation(line: 543, column: 5, scope: !1598)
!1600 = !DILocation(line: 543, column: 17, scope: !1598)
!1601 = !DILocation(line: 543, column: 25, scope: !1598)
!1602 = !DILocation(line: 544, column: 19, scope: !1598)
!1603 = !DILocation(line: 544, column: 28, scope: !1598)
!1604 = !DILocation(line: 544, column: 27, scope: !1598)
!1605 = !DILocation(line: 544, column: 4, scope: !1598)
!1606 = !DILocation(line: 546, column: 5, scope: !1598)
!1607 = !DILocation(line: 546, column: 14, scope: !1598)
!1608 = !DILocation(line: 547, column: 3, scope: !1598)
!1609 = !DILocation(line: 548, column: 8, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1561, file: !79, line: 548, column: 7)
!1611 = !DILocation(line: 548, column: 7, scope: !1610)
!1612 = !DILocation(line: 548, column: 17, scope: !1610)
!1613 = !DILocation(line: 548, column: 7, scope: !1561)
!1614 = !DILocation(line: 549, column: 4, scope: !1610)
!1615 = !DILocation(line: 550, column: 2, scope: !1561)
!1616 = !DILocation(line: 528, column: 56, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1557, file: !79, discriminator: 2)
!1618 = !DILocation(line: 528, column: 54, scope: !1617)
!1619 = !DILocation(line: 528, column: 2, scope: !1617)
!1620 = distinct !{!1620, !1621}
!1621 = !DILocation(line: 528, column: 2, scope: !1515)
!1622 = !DILocation(line: 552, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1515, file: !79, line: 552, column: 6)
!1624 = !DILocation(line: 552, column: 6, scope: !1623)
!1625 = !DILocation(line: 552, column: 16, scope: !1623)
!1626 = !DILocation(line: 552, column: 6, scope: !1515)
!1627 = !DILocation(line: 554, column: 29, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !79, line: 552, column: 24)
!1629 = !DILocation(line: 554, column: 37, scope: !1628)
!1630 = !DILocation(line: 554, column: 44, scope: !1628)
!1631 = !DILocation(line: 554, column: 59, scope: !1628)
!1632 = !DILocation(line: 554, column: 15, scope: !1628)
!1633 = !DILocation(line: 554, column: 4, scope: !1628)
!1634 = !DILocation(line: 554, column: 13, scope: !1628)
!1635 = !DILocation(line: 555, column: 2, scope: !1628)
!1636 = !DILocation(line: 558, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1515, file: !79, line: 558, column: 6)
!1638 = !DILocation(line: 558, column: 6, scope: !1637)
!1639 = !DILocation(line: 558, column: 16, scope: !1637)
!1640 = !DILocation(line: 558, column: 23, scope: !1637)
!1641 = !DILocation(line: 558, column: 26, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1637, file: !79, discriminator: 1)
!1643 = !DILocation(line: 558, column: 33, scope: !1642)
!1644 = !DILocation(line: 558, column: 41, scope: !1642)
!1645 = !DILocation(line: 558, column: 46, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1637, file: !79, discriminator: 2)
!1647 = !DILocation(line: 558, column: 45, scope: !1646)
!1648 = !DILocation(line: 558, column: 57, scope: !1646)
!1649 = !DILocation(line: 558, column: 64, scope: !1646)
!1650 = !DILocation(line: 558, column: 6, scope: !1646)
!1651 = !DILocation(line: 559, column: 34, scope: !1637)
!1652 = !DILocation(line: 559, column: 25, scope: !1637)
!1653 = !DILocation(line: 559, column: 5, scope: !1637)
!1654 = !DILocation(line: 559, column: 4, scope: !1637)
!1655 = !DILocation(line: 559, column: 16, scope: !1637)
!1656 = !DILocation(line: 559, column: 23, scope: !1637)
!1657 = !DILocation(line: 559, column: 3, scope: !1637)
!1658 = !DILocation(line: 561, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1515, file: !79, line: 561, column: 6)
!1660 = !DILocation(line: 561, column: 6, scope: !1659)
!1661 = !DILocation(line: 561, column: 16, scope: !1659)
!1662 = !DILocation(line: 561, column: 23, scope: !1659)
!1663 = !DILocation(line: 561, column: 28, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1659, file: !79, discriminator: 1)
!1665 = !DILocation(line: 561, column: 27, scope: !1664)
!1666 = !DILocation(line: 561, column: 39, scope: !1664)
!1667 = !DILocation(line: 561, column: 52, scope: !1664)
!1668 = !DILocation(line: 561, column: 60, scope: !1664)
!1669 = !DILocation(line: 562, column: 9, scope: !1659)
!1670 = !DILocation(line: 562, column: 8, scope: !1659)
!1671 = !DILocation(line: 562, column: 20, scope: !1659)
!1672 = !DILocation(line: 562, column: 7, scope: !1659)
!1673 = !DILocation(line: 561, column: 6, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1515, file: !79, discriminator: 2)
!1675 = !DILocation(line: 564, column: 19, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1659, file: !79, line: 562, column: 39)
!1677 = !DILocation(line: 564, column: 18, scope: !1676)
!1678 = !DILocation(line: 564, column: 30, scope: !1676)
!1679 = !DILocation(line: 564, column: 48, scope: !1676)
!1680 = !DILocation(line: 565, column: 17, scope: !1676)
!1681 = !DILocation(line: 565, column: 16, scope: !1676)
!1682 = !DILocation(line: 565, column: 28, scope: !1676)
!1683 = !DILocation(line: 565, column: 45, scope: !1676)
!1684 = !DILocation(line: 565, column: 3, scope: !1676)
!1685 = !DILocation(line: 566, column: 2, scope: !1676)
!1686 = !DILocation(line: 568, column: 16, scope: !1515)
!1687 = !DILocation(line: 568, column: 9, scope: !1515)
!1688 = !DILocation(line: 569, column: 1, scope: !1515)
!1689 = distinct !DISubprogram(name: "server_redirect_peek_signal", scope: !79, file: !79, line: 598, type: !1690, isLocal: false, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!75, !98, !75, !75, !75, !1519}
!1692 = !DILocalVariable(name: "server", arg: 1, scope: !1689, file: !79, line: 598, type: !98)
!1693 = !DILocation(line: 598, column: 57, scope: !1689)
!1694 = !DILocalVariable(name: "prefix", arg: 2, scope: !1689, file: !79, line: 599, type: !75)
!1695 = !DILocation(line: 599, column: 18, scope: !1689)
!1696 = !DILocalVariable(name: "event", arg: 3, scope: !1689, file: !79, line: 600, type: !75)
!1697 = !DILocation(line: 600, column: 18, scope: !1689)
!1698 = !DILocalVariable(name: "args", arg: 4, scope: !1689, file: !79, line: 601, type: !75)
!1699 = !DILocation(line: 601, column: 18, scope: !1689)
!1700 = !DILocalVariable(name: "redirected", arg: 5, scope: !1689, file: !79, line: 602, type: !1519)
!1701 = !DILocation(line: 602, column: 11, scope: !1689)
!1702 = !DILocalVariable(name: "redirect", scope: !1689, file: !79, line: 604, type: !605)
!1703 = !DILocation(line: 604, column: 16, scope: !1689)
!1704 = !DILocalVariable(name: "signal", scope: !1689, file: !79, line: 605, type: !75)
!1705 = !DILocation(line: 605, column: 21, scope: !1689)
!1706 = !DILocalVariable(name: "match", scope: !1689, file: !79, line: 606, type: !85)
!1707 = !DILocation(line: 606, column: 6, scope: !1689)
!1708 = !DILocation(line: 608, column: 31, scope: !1689)
!1709 = !DILocation(line: 608, column: 39, scope: !1689)
!1710 = !DILocation(line: 608, column: 47, scope: !1689)
!1711 = !DILocation(line: 608, column: 54, scope: !1689)
!1712 = !DILocation(line: 608, column: 11, scope: !1689)
!1713 = !DILocation(line: 608, column: 9, scope: !1689)
!1714 = !DILocation(line: 609, column: 16, scope: !1689)
!1715 = !DILocation(line: 609, column: 22, scope: !1689)
!1716 = !DILocation(line: 609, column: 3, scope: !1689)
!1717 = !DILocation(line: 609, column: 14, scope: !1689)
!1718 = !DILocation(line: 610, column: 16, scope: !1689)
!1719 = !DILocation(line: 610, column: 9, scope: !1689)
!1720 = distinct !DISubprogram(name: "servers_redirect_init", scope: !79, file: !79, line: 636, type: !253, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1721 = !DILocation(line: 638, column: 22, scope: !1720)
!1722 = !DILocation(line: 638, column: 20, scope: !1720)
!1723 = !DILocation(line: 642, column: 2, scope: !1720)
!1724 = !DILocation(line: 655, column: 2, scope: !1720)
!1725 = !DILocation(line: 664, column: 2, scope: !1720)
!1726 = !DILocation(line: 675, column: 2, scope: !1720)
!1727 = !DILocation(line: 683, column: 2, scope: !1720)
!1728 = !DILocation(line: 690, column: 2, scope: !1720)
!1729 = !DILocation(line: 699, column: 2, scope: !1720)
!1730 = !DILocation(line: 709, column: 2, scope: !1720)
!1731 = !DILocation(line: 720, column: 2, scope: !1720)
!1732 = !DILocation(line: 731, column: 2, scope: !1720)
!1733 = !DILocation(line: 744, column: 2, scope: !1720)
!1734 = !DILocation(line: 757, column: 2, scope: !1720)
!1735 = !DILocation(line: 764, column: 2, scope: !1720)
!1736 = !DILocation(line: 765, column: 1, scope: !1720)
!1737 = distinct !DISubprogram(name: "sig_disconnected", scope: !79, file: !79, line: 613, type: !1738, isLocal: true, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !98}
!1740 = !DILocalVariable(name: "server", arg: 1, scope: !1737, file: !79, line: 613, type: !98)
!1741 = !DILocation(line: 613, column: 46, scope: !1737)
!1742 = !DILocation(line: 615, column: 87, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1737, file: !79, line: 615, column: 6)
!1744 = !DILocation(line: 615, column: 69, scope: !1743)
!1745 = !DILocation(line: 615, column: 54, scope: !1743)
!1746 = !DILocation(line: 615, column: 53, scope: !1743)
!1747 = !DILocation(line: 615, column: 28, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1743, file: !79, discriminator: 3)
!1749 = !DILocation(line: 615, column: 9, scope: !1743)
!1750 = !DILocation(line: 615, column: 6, scope: !1737)
!1751 = !DILocation(line: 615, column: 8, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1743, file: !79, discriminator: 1)
!1753 = !DILocation(line: 615, column: 6, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1737, file: !79, discriminator: 2)
!1755 = !DILocation(line: 616, column: 17, scope: !1743)
!1756 = !DILocation(line: 618, column: 15, scope: !1737)
!1757 = !DILocation(line: 618, column: 23, scope: !1737)
!1758 = !DILocation(line: 618, column: 2, scope: !1737)
!1759 = !DILocation(line: 619, column: 9, scope: !1737)
!1760 = !DILocation(line: 619, column: 17, scope: !1737)
!1761 = !DILocation(line: 619, column: 33, scope: !1737)
!1762 = !DILocation(line: 620, column: 18, scope: !1737)
!1763 = !DILocation(line: 620, column: 26, scope: !1737)
!1764 = !DILocation(line: 620, column: 2, scope: !1737)
!1765 = !DILocation(line: 622, column: 15, scope: !1737)
!1766 = !DILocation(line: 622, column: 23, scope: !1737)
!1767 = !DILocation(line: 622, column: 2, scope: !1737)
!1768 = !DILocation(line: 623, column: 9, scope: !1737)
!1769 = !DILocation(line: 623, column: 17, scope: !1737)
!1770 = !DILocation(line: 623, column: 27, scope: !1737)
!1771 = !DILocation(line: 625, column: 6, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1737, file: !79, line: 625, column: 6)
!1773 = !DILocation(line: 625, column: 14, scope: !1772)
!1774 = !DILocation(line: 625, column: 28, scope: !1772)
!1775 = !DILocation(line: 625, column: 6, scope: !1737)
!1776 = !DILocation(line: 626, column: 27, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !79, line: 625, column: 36)
!1778 = !DILocation(line: 626, column: 35, scope: !1777)
!1779 = !DILocation(line: 626, column: 3, scope: !1777)
!1780 = !DILocation(line: 627, column: 17, scope: !1777)
!1781 = !DILocation(line: 627, column: 25, scope: !1777)
!1782 = !DILocation(line: 627, column: 39, scope: !1777)
!1783 = !DILocation(line: 628, column: 2, scope: !1777)
!1784 = !DILocation(line: 629, column: 1, scope: !1737)
!1785 = distinct !DISubprogram(name: "servers_redirect_deinit", scope: !79, file: !79, line: 767, type: !253, isLocal: false, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1786 = !DILocation(line: 769, column: 23, scope: !1785)
!1787 = !DILocation(line: 769, column: 2, scope: !1785)
!1788 = !DILocation(line: 771, column: 30, scope: !1785)
!1789 = !DILocation(line: 771, column: 9, scope: !1785)
!1790 = !DILocation(line: 773, column: 2, scope: !1785)
!1791 = !DILocation(line: 774, column: 1, scope: !1785)
!1792 = distinct !DISubprogram(name: "cmd_redirect_destroy", scope: !79, file: !79, line: 631, type: !1793, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !83, !77}
!1795 = !DILocalVariable(name: "key", arg: 1, scope: !1792, file: !79, line: 631, type: !83)
!1796 = !DILocation(line: 631, column: 40, scope: !1792)
!1797 = !DILocalVariable(name: "cmd", arg: 2, scope: !1792, file: !79, line: 631, type: !77)
!1798 = !DILocation(line: 631, column: 63, scope: !1792)
!1799 = !DILocation(line: 633, column: 28, scope: !1792)
!1800 = !DILocation(line: 633, column: 9, scope: !1792)
!1801 = !DILocation(line: 634, column: 1, scope: !1792)
!1802 = distinct !DISubprogram(name: "redirect_cmd_destroy", scope: !79, file: !79, line: 82, type: !788, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1803 = !DILocalVariable(name: "rec", arg: 1, scope: !1802, file: !79, line: 82, type: !77)
!1804 = !DILocation(line: 82, column: 52, scope: !1802)
!1805 = !DILocalVariable(name: "tmp", scope: !1802, file: !79, line: 84, type: !89)
!1806 = !DILocation(line: 84, column: 10, scope: !1802)
!1807 = !DILocation(line: 86, column: 13, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1802, file: !79, line: 86, column: 2)
!1809 = !DILocation(line: 86, column: 18, scope: !1808)
!1810 = !DILocation(line: 86, column: 11, scope: !1808)
!1811 = !DILocation(line: 86, column: 7, scope: !1808)
!1812 = !DILocation(line: 86, column: 25, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !79, discriminator: 1)
!1814 = distinct !DILexicalBlock(scope: !1808, file: !79, line: 86, column: 2)
!1815 = !DILocation(line: 86, column: 29, scope: !1813)
!1816 = !DILocation(line: 86, column: 2, scope: !1813)
!1817 = !DILocation(line: 87, column: 24, scope: !1814)
!1818 = !DILocation(line: 87, column: 29, scope: !1814)
!1819 = !DILocation(line: 87, column: 17, scope: !1814)
!1820 = !DILocation(line: 86, column: 43, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1814, file: !79, discriminator: 2)
!1822 = !DILocation(line: 86, column: 48, scope: !1821)
!1823 = !DILocation(line: 86, column: 54, scope: !1821)
!1824 = !DILocation(line: 86, column: 41, scope: !1821)
!1825 = !DILocation(line: 86, column: 2, scope: !1821)
!1826 = distinct !{!1826, !1827}
!1827 = !DILocation(line: 86, column: 2, scope: !1802)
!1828 = !DILocation(line: 88, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1802, file: !79, line: 88, column: 2)
!1830 = !DILocation(line: 88, column: 18, scope: !1829)
!1831 = !DILocation(line: 88, column: 11, scope: !1829)
!1832 = !DILocation(line: 88, column: 7, scope: !1829)
!1833 = !DILocation(line: 88, column: 24, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1835, file: !79, discriminator: 1)
!1835 = distinct !DILexicalBlock(scope: !1829, file: !79, line: 88, column: 2)
!1836 = !DILocation(line: 88, column: 28, scope: !1834)
!1837 = !DILocation(line: 88, column: 2, scope: !1834)
!1838 = !DILocation(line: 89, column: 24, scope: !1835)
!1839 = !DILocation(line: 89, column: 29, scope: !1835)
!1840 = !DILocation(line: 89, column: 17, scope: !1835)
!1841 = !DILocation(line: 88, column: 42, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1835, file: !79, discriminator: 2)
!1843 = !DILocation(line: 88, column: 47, scope: !1842)
!1844 = !DILocation(line: 88, column: 53, scope: !1842)
!1845 = !DILocation(line: 88, column: 40, scope: !1842)
!1846 = !DILocation(line: 88, column: 2, scope: !1842)
!1847 = distinct !{!1847, !1848}
!1848 = !DILocation(line: 88, column: 2, scope: !1802)
!1849 = !DILocation(line: 90, column: 13, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1802, file: !79, line: 90, column: 2)
!1851 = !DILocation(line: 90, column: 18, scope: !1850)
!1852 = !DILocation(line: 90, column: 11, scope: !1850)
!1853 = !DILocation(line: 90, column: 7, scope: !1850)
!1854 = !DILocation(line: 90, column: 23, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !79, discriminator: 1)
!1856 = distinct !DILexicalBlock(scope: !1850, file: !79, line: 90, column: 2)
!1857 = !DILocation(line: 90, column: 27, scope: !1855)
!1858 = !DILocation(line: 90, column: 2, scope: !1855)
!1859 = !DILocation(line: 91, column: 24, scope: !1856)
!1860 = !DILocation(line: 91, column: 29, scope: !1856)
!1861 = !DILocation(line: 91, column: 17, scope: !1856)
!1862 = !DILocation(line: 90, column: 41, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1856, file: !79, discriminator: 2)
!1864 = !DILocation(line: 90, column: 46, scope: !1863)
!1865 = !DILocation(line: 90, column: 52, scope: !1863)
!1866 = !DILocation(line: 90, column: 39, scope: !1863)
!1867 = !DILocation(line: 90, column: 2, scope: !1863)
!1868 = distinct !{!1868, !1869}
!1869 = !DILocation(line: 90, column: 2, scope: !1802)
!1870 = !DILocation(line: 92, column: 22, scope: !1802)
!1871 = !DILocation(line: 92, column: 27, scope: !1802)
!1872 = !DILocation(line: 92, column: 9, scope: !1802)
!1873 = !DILocation(line: 93, column: 22, scope: !1802)
!1874 = !DILocation(line: 93, column: 27, scope: !1802)
!1875 = !DILocation(line: 93, column: 9, scope: !1802)
!1876 = !DILocation(line: 94, column: 22, scope: !1802)
!1877 = !DILocation(line: 94, column: 27, scope: !1802)
!1878 = !DILocation(line: 94, column: 9, scope: !1802)
!1879 = !DILocation(line: 95, column: 16, scope: !1802)
!1880 = !DILocation(line: 95, column: 21, scope: !1802)
!1881 = !DILocation(line: 95, column: 9, scope: !1802)
!1882 = !DILocation(line: 96, column: 9, scope: !1802)
!1883 = !DILocation(line: 96, column: 2, scope: !1802)
!1884 = !DILocation(line: 97, column: 1, scope: !1802)
!1885 = distinct !DISubprogram(name: "redirect_match", scope: !79, file: !79, line: 354, type: !1886, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!75, !605, !75, !75, !1519}
!1888 = !DILocalVariable(name: "redirect", arg: 1, scope: !1885, file: !79, line: 354, type: !605)
!1889 = !DILocation(line: 354, column: 49, scope: !1885)
!1890 = !DILocalVariable(name: "event", arg: 2, scope: !1885, file: !79, line: 354, type: !75)
!1891 = !DILocation(line: 354, column: 71, scope: !1885)
!1892 = !DILocalVariable(name: "args", arg: 3, scope: !1885, file: !79, line: 355, type: !75)
!1893 = !DILocation(line: 355, column: 19, scope: !1885)
!1894 = !DILocalVariable(name: "match", arg: 4, scope: !1885, file: !79, line: 355, type: !1519)
!1895 = !DILocation(line: 355, column: 30, scope: !1885)
!1896 = !DILocalVariable(name: "tmp", scope: !1885, file: !79, line: 357, type: !89)
!1897 = !DILocation(line: 357, column: 10, scope: !1885)
!1898 = !DILocalVariable(name: "cmdpos", scope: !1885, file: !79, line: 357, type: !89)
!1899 = !DILocation(line: 357, column: 16, scope: !1885)
!1900 = !DILocalVariable(name: "signal", scope: !1885, file: !79, line: 358, type: !75)
!1901 = !DILocation(line: 358, column: 14, scope: !1885)
!1902 = !DILocalVariable(name: "match_list", scope: !1885, file: !79, line: 359, type: !85)
!1903 = !DILocation(line: 359, column: 13, scope: !1885)
!1904 = !DILocation(line: 361, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1885, file: !79, line: 361, column: 6)
!1906 = !DILocation(line: 361, column: 16, scope: !1905)
!1907 = !DILocation(line: 361, column: 6, scope: !1885)
!1908 = !DILocation(line: 362, column: 17, scope: !1905)
!1909 = !DILocation(line: 366, column: 16, scope: !1885)
!1910 = !DILocation(line: 367, column: 13, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1885, file: !79, line: 367, column: 2)
!1912 = !DILocation(line: 367, column: 23, scope: !1911)
!1913 = !DILocation(line: 367, column: 11, scope: !1911)
!1914 = !DILocation(line: 367, column: 7, scope: !1911)
!1915 = !DILocation(line: 367, column: 32, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1917, file: !79, discriminator: 1)
!1917 = distinct !DILexicalBlock(scope: !1911, file: !79, line: 367, column: 2)
!1918 = !DILocation(line: 367, column: 36, scope: !1916)
!1919 = !DILocation(line: 367, column: 2, scope: !1916)
!1920 = !DILocation(line: 368, column: 17, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !79, line: 368, column: 7)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !79, line: 367, column: 67)
!1923 = !DILocation(line: 368, column: 22, scope: !1921)
!1924 = !DILocation(line: 368, column: 28, scope: !1921)
!1925 = !DILocation(line: 368, column: 7, scope: !1921)
!1926 = !DILocation(line: 368, column: 35, scope: !1921)
!1927 = !DILocation(line: 368, column: 7, scope: !1922)
!1928 = !DILocation(line: 369, column: 13, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1921, file: !79, line: 368, column: 41)
!1930 = !DILocation(line: 369, column: 18, scope: !1929)
!1931 = !DILocation(line: 369, column: 24, scope: !1929)
!1932 = !DILocation(line: 369, column: 11, scope: !1929)
!1933 = !DILocation(line: 370, column: 4, scope: !1929)
!1934 = !DILocation(line: 372, column: 2, scope: !1922)
!1935 = !DILocation(line: 367, column: 50, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1917, file: !79, discriminator: 2)
!1937 = !DILocation(line: 367, column: 55, scope: !1936)
!1938 = !DILocation(line: 367, column: 61, scope: !1936)
!1939 = !DILocation(line: 367, column: 48, scope: !1936)
!1940 = !DILocation(line: 367, column: 2, scope: !1936)
!1941 = distinct !{!1941, !1942}
!1942 = !DILocation(line: 367, column: 2, scope: !1885)
!1943 = !DILocation(line: 375, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1885, file: !79, line: 375, column: 6)
!1945 = !DILocation(line: 375, column: 16, scope: !1944)
!1946 = !DILocation(line: 375, column: 6, scope: !1885)
!1947 = !DILocation(line: 378, column: 35, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !79, line: 375, column: 27)
!1949 = !DILocation(line: 378, column: 45, scope: !1948)
!1950 = !DILocation(line: 378, column: 50, scope: !1948)
!1951 = !DILocation(line: 378, column: 55, scope: !1948)
!1952 = !DILocation(line: 378, column: 12, scope: !1948)
!1953 = !DILocation(line: 378, column: 10, scope: !1948)
!1954 = !DILocation(line: 379, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !79, line: 379, column: 7)
!1956 = !DILocation(line: 379, column: 14, scope: !1955)
!1957 = !DILocation(line: 379, column: 7, scope: !1948)
!1958 = !DILocation(line: 380, column: 4, scope: !1955)
!1959 = !DILocation(line: 382, column: 28, scope: !1948)
!1960 = !DILocation(line: 383, column: 2, scope: !1948)
!1961 = !DILocation(line: 385, column: 35, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1944, file: !79, line: 383, column: 9)
!1963 = !DILocation(line: 385, column: 45, scope: !1962)
!1964 = !DILocation(line: 385, column: 50, scope: !1962)
!1965 = !DILocation(line: 385, column: 57, scope: !1962)
!1966 = !DILocation(line: 385, column: 12, scope: !1962)
!1967 = !DILocation(line: 385, column: 10, scope: !1962)
!1968 = !DILocation(line: 386, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !79, line: 386, column: 7)
!1970 = !DILocation(line: 386, column: 14, scope: !1969)
!1971 = !DILocation(line: 386, column: 7, scope: !1962)
!1972 = !DILocation(line: 387, column: 15, scope: !1969)
!1973 = !DILocation(line: 387, column: 4, scope: !1969)
!1974 = !DILocation(line: 389, column: 36, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1969, file: !79, line: 388, column: 8)
!1976 = !DILocation(line: 389, column: 46, scope: !1975)
!1977 = !DILocation(line: 389, column: 51, scope: !1975)
!1978 = !DILocation(line: 390, column: 8, scope: !1975)
!1979 = !DILocation(line: 389, column: 13, scope: !1975)
!1980 = !DILocation(line: 389, column: 11, scope: !1975)
!1981 = !DILocation(line: 391, column: 8, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1975, file: !79, line: 391, column: 8)
!1983 = !DILocation(line: 391, column: 15, scope: !1982)
!1984 = !DILocation(line: 391, column: 8, scope: !1975)
!1985 = !DILocation(line: 392, column: 16, scope: !1982)
!1986 = !DILocation(line: 392, column: 5, scope: !1982)
!1987 = !DILocation(line: 393, column: 13, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !79, line: 393, column: 13)
!1989 = !DILocation(line: 393, column: 23, scope: !1988)
!1990 = !DILocation(line: 393, column: 38, scope: !1988)
!1991 = !DILocation(line: 393, column: 45, scope: !1988)
!1992 = !DILocation(line: 394, column: 6, scope: !1988)
!1993 = !DILocation(line: 394, column: 11, scope: !1988)
!1994 = !DILocation(line: 394, column: 18, scope: !1988)
!1995 = !DILocation(line: 395, column: 14, scope: !1988)
!1996 = !DILocation(line: 395, column: 6, scope: !1988)
!1997 = !DILocation(line: 395, column: 34, scope: !1988)
!1998 = !DILocation(line: 395, column: 39, scope: !1988)
!1999 = !DILocation(line: 396, column: 28, scope: !1988)
!2000 = !DILocation(line: 396, column: 5, scope: !1988)
!2001 = !DILocation(line: 396, column: 6, scope: !1988)
!2002 = !DILocation(line: 396, column: 8, scope: !1988)
!2003 = !DILocation(line: 396, column: 7, scope: !1988)
!2004 = !DILocation(line: 396, column: 9, scope: !1988)
!2005 = !DILocation(line: 393, column: 13, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !1982, file: !79, discriminator: 1)
!2007 = !DILocation(line: 402, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !79, line: 402, column: 9)
!2009 = distinct !DILexicalBlock(scope: !1988, file: !79, line: 396, column: 26)
!2010 = !DILocation(line: 402, column: 16, scope: !2008)
!2011 = !DILocation(line: 402, column: 9, scope: !2009)
!2012 = !DILocation(line: 403, column: 15, scope: !2008)
!2013 = !DILocation(line: 403, column: 25, scope: !2008)
!2014 = !DILocation(line: 403, column: 13, scope: !2008)
!2015 = !DILocation(line: 403, column: 6, scope: !2008)
!2016 = !DILocation(line: 404, column: 16, scope: !2009)
!2017 = !DILocation(line: 405, column: 4, scope: !2009)
!2018 = !DILocation(line: 406, column: 16, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1988, file: !79, line: 405, column: 11)
!2020 = !DILocation(line: 411, column: 6, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1885, file: !79, line: 411, column: 6)
!2022 = !DILocation(line: 411, column: 13, scope: !2021)
!2023 = !DILocation(line: 411, column: 20, scope: !2021)
!2024 = !DILocation(line: 411, column: 23, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2021, file: !79, discriminator: 1)
!2026 = !DILocation(line: 411, column: 30, scope: !2025)
!2027 = !DILocation(line: 411, column: 6, scope: !2025)
!2028 = !DILocation(line: 414, column: 3, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !79, line: 411, column: 39)
!2030 = !DILocation(line: 418, column: 6, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1885, file: !79, line: 418, column: 6)
!2032 = !DILocation(line: 418, column: 11, scope: !2031)
!2033 = !DILocation(line: 418, column: 18, scope: !2031)
!2034 = !DILocation(line: 418, column: 21, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2031, file: !79, discriminator: 1)
!2036 = !DILocation(line: 418, column: 31, scope: !2035)
!2037 = !DILocation(line: 418, column: 35, scope: !2035)
!2038 = !DILocation(line: 418, column: 43, scope: !2035)
!2039 = !DILocation(line: 418, column: 46, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2031, file: !79, discriminator: 2)
!2041 = !DILocation(line: 418, column: 53, scope: !2040)
!2042 = !DILocation(line: 418, column: 61, scope: !2040)
!2043 = !DILocation(line: 419, column: 27, scope: !2031)
!2044 = !DILocation(line: 419, column: 33, scope: !2031)
!2045 = !DILocation(line: 419, column: 43, scope: !2031)
!2046 = !DILocation(line: 420, column: 23, scope: !2031)
!2047 = !DILocation(line: 420, column: 31, scope: !2031)
!2048 = !DILocation(line: 420, column: 37, scope: !2031)
!2049 = !DILocation(line: 420, column: 14, scope: !2031)
!2050 = !DILocation(line: 420, column: 7, scope: !2031)
!2051 = !DILocation(line: 419, column: 7, scope: !2031)
!2052 = !DILocation(line: 418, column: 6, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !1885, file: !79, discriminator: 3)
!2054 = !DILocation(line: 421, column: 3, scope: !2031)
!2055 = !DILocation(line: 423, column: 18, scope: !1885)
!2056 = !DILocation(line: 423, column: 10, scope: !1885)
!2057 = !DILocation(line: 423, column: 16, scope: !1885)
!2058 = !DILocation(line: 424, column: 9, scope: !1885)
!2059 = !DILocation(line: 424, column: 16, scope: !1885)
!2060 = !DILocation(line: 424, column: 25, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !1885, file: !79, discriminator: 1)
!2062 = !DILocation(line: 424, column: 9, scope: !2061)
!2063 = !DILocation(line: 424, column: 34, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !1885, file: !79, discriminator: 2)
!2065 = !DILocation(line: 424, column: 44, scope: !2064)
!2066 = !DILocation(line: 424, column: 9, scope: !2064)
!2067 = !DILocation(line: 424, column: 9, scope: !2053)
!2068 = !DILocation(line: 424, column: 2, scope: !2053)
!2069 = !DILocation(line: 425, column: 1, scope: !1885)
!2070 = distinct !DISubprogram(name: "redirect_abort", scope: !79, file: !79, line: 427, type: !2071, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !98, !605}
!2073 = !DILocalVariable(name: "server", arg: 1, scope: !2070, file: !79, line: 427, type: !98)
!2074 = !DILocation(line: 427, column: 44, scope: !2070)
!2075 = !DILocalVariable(name: "rec", arg: 2, scope: !2070, file: !79, line: 427, type: !605)
!2076 = !DILocation(line: 427, column: 66, scope: !2070)
!2077 = !DILocalVariable(name: "str", scope: !2070, file: !79, line: 429, type: !83)
!2078 = !DILocation(line: 429, column: 8, scope: !2070)
!2079 = !DILocation(line: 432, column: 18, scope: !2070)
!2080 = !DILocation(line: 432, column: 26, scope: !2070)
!2081 = !DILocation(line: 432, column: 37, scope: !2070)
!2082 = !DILocation(line: 432, column: 3, scope: !2070)
!2083 = !DILocation(line: 431, column: 2, scope: !2070)
!2084 = !DILocation(line: 431, column: 10, scope: !2070)
!2085 = !DILocation(line: 431, column: 20, scope: !2070)
!2086 = !DILocation(line: 434, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2070, file: !79, line: 434, column: 6)
!2088 = !DILocation(line: 434, column: 11, scope: !2087)
!2089 = !DILocation(line: 434, column: 19, scope: !2087)
!2090 = !DILocation(line: 434, column: 23, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2087, file: !79, discriminator: 1)
!2092 = !DILocation(line: 434, column: 28, scope: !2091)
!2093 = !DILocation(line: 434, column: 6, scope: !2091)
!2094 = !DILocation(line: 436, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !79, line: 436, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2087, file: !79, line: 434, column: 39)
!2097 = !DILocation(line: 436, column: 12, scope: !2095)
!2098 = !DILocation(line: 436, column: 27, scope: !2095)
!2099 = !DILocation(line: 436, column: 7, scope: !2096)
!2100 = !DILocation(line: 437, column: 43, scope: !2095)
!2101 = !DILocation(line: 437, column: 48, scope: !2095)
!2102 = !DILocation(line: 437, column: 53, scope: !2095)
!2103 = !DILocation(line: 437, column: 59, scope: !2095)
!2104 = !DILocation(line: 437, column: 64, scope: !2095)
!2105 = !DILocation(line: 437, column: 10, scope: !2095)
!2106 = !DILocation(line: 437, column: 8, scope: !2095)
!2107 = !DILocation(line: 437, column: 4, scope: !2095)
!2108 = !DILocation(line: 439, column: 39, scope: !2095)
!2109 = !DILocation(line: 439, column: 44, scope: !2095)
!2110 = !DILocation(line: 439, column: 49, scope: !2095)
!2111 = !DILocation(line: 439, column: 10, scope: !2095)
!2112 = !DILocation(line: 439, column: 8, scope: !2095)
!2113 = !DILocation(line: 441, column: 19, scope: !2096)
!2114 = !DILocation(line: 441, column: 27, scope: !2096)
!2115 = !DILocation(line: 441, column: 35, scope: !2096)
!2116 = !DILocation(line: 441, column: 3, scope: !2096)
!2117 = !DILocation(line: 442, column: 10, scope: !2096)
!2118 = !DILocation(line: 442, column: 3, scope: !2096)
!2119 = !DILocation(line: 444, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2096, file: !79, line: 444, column: 7)
!2121 = !DILocation(line: 444, column: 12, scope: !2120)
!2122 = !DILocation(line: 444, column: 27, scope: !2120)
!2123 = !DILocation(line: 444, column: 7, scope: !2096)
!2124 = !DILocation(line: 445, column: 16, scope: !2120)
!2125 = !DILocation(line: 445, column: 21, scope: !2120)
!2126 = !DILocation(line: 445, column: 40, scope: !2120)
!2127 = !DILocation(line: 445, column: 4, scope: !2120)
!2128 = !DILocation(line: 446, column: 2, scope: !2096)
!2129 = !DILocation(line: 446, column: 13, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !79, discriminator: 1)
!2131 = distinct !DILexicalBlock(scope: !2087, file: !79, line: 446, column: 13)
!2132 = !DILocation(line: 446, column: 18, scope: !2130)
!2133 = !DILocation(line: 446, column: 30, scope: !2130)
!2134 = !DILocation(line: 448, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !79, line: 446, column: 38)
!2136 = !DILocation(line: 448, column: 20, scope: !2135)
!2137 = !DILocation(line: 448, column: 36, scope: !2135)
!2138 = !DILocation(line: 448, column: 3, scope: !2135)
!2139 = !DILocation(line: 449, column: 2, scope: !2135)
!2140 = !DILocation(line: 451, column: 43, scope: !2070)
!2141 = !DILocation(line: 451, column: 51, scope: !2070)
!2142 = !DILocation(line: 451, column: 68, scope: !2070)
!2143 = !DILocation(line: 451, column: 28, scope: !2070)
!2144 = !DILocation(line: 451, column: 2, scope: !2070)
!2145 = !DILocation(line: 451, column: 10, scope: !2070)
!2146 = !DILocation(line: 451, column: 26, scope: !2070)
!2147 = !DILocation(line: 453, column: 26, scope: !2070)
!2148 = !DILocation(line: 453, column: 2, scope: !2070)
!2149 = !DILocation(line: 454, column: 1, scope: !2070)
!2150 = distinct !DISubprogram(name: "redirect_find", scope: !79, file: !79, line: 460, type: !2151, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!605, !98, !75, !75, !2153, !1519}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!2154 = !DILocalVariable(name: "server", arg: 1, scope: !2150, file: !79, line: 460, type: !98)
!2155 = !DILocation(line: 460, column: 52, scope: !2150)
!2156 = !DILocalVariable(name: "event", arg: 2, scope: !2150, file: !79, line: 460, type: !75)
!2157 = !DILocation(line: 460, column: 72, scope: !2150)
!2158 = !DILocalVariable(name: "args", arg: 3, scope: !2150, file: !79, line: 461, type: !75)
!2159 = !DILocation(line: 461, column: 20, scope: !2150)
!2160 = !DILocalVariable(name: "signal", arg: 4, scope: !2150, file: !79, line: 461, type: !2153)
!2161 = !DILocation(line: 461, column: 39, scope: !2150)
!2162 = !DILocalVariable(name: "match", arg: 5, scope: !2150, file: !79, line: 462, type: !1519)
!2163 = !DILocation(line: 462, column: 13, scope: !2150)
!2164 = !DILocalVariable(name: "redirect", scope: !2150, file: !79, line: 464, type: !605)
!2165 = !DILocation(line: 464, column: 23, scope: !2150)
!2166 = !DILocalVariable(name: "tmp", scope: !2150, file: !79, line: 465, type: !89)
!2167 = !DILocation(line: 465, column: 10, scope: !2150)
!2168 = !DILocalVariable(name: "next", scope: !2150, file: !79, line: 465, type: !89)
!2169 = !DILocation(line: 465, column: 16, scope: !2150)
!2170 = !DILocalVariable(name: "now", scope: !2150, file: !79, line: 466, type: !342)
!2171 = !DILocation(line: 466, column: 9, scope: !2150)
!2172 = !DILocalVariable(name: "match_signal", scope: !2150, file: !79, line: 467, type: !75)
!2173 = !DILocation(line: 467, column: 21, scope: !2150)
!2174 = !DILocation(line: 470, column: 3, scope: !2150)
!2175 = !DILocation(line: 470, column: 10, scope: !2150)
!2176 = !DILocation(line: 470, column: 26, scope: !2150)
!2177 = !DILocation(line: 471, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2150, file: !79, line: 471, column: 2)
!2179 = !DILocation(line: 471, column: 21, scope: !2178)
!2180 = !DILocation(line: 471, column: 11, scope: !2178)
!2181 = !DILocation(line: 471, column: 7, scope: !2178)
!2182 = !DILocation(line: 471, column: 32, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !79, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !79, line: 471, column: 2)
!2185 = !DILocation(line: 471, column: 36, scope: !2183)
!2186 = !DILocation(line: 471, column: 2, scope: !2183)
!2187 = !DILocalVariable(name: "rec", scope: !2188, file: !79, line: 472, type: !605)
!2188 = distinct !DILexicalBlock(scope: !2184, file: !79, line: 471, column: 61)
!2189 = !DILocation(line: 472, column: 17, scope: !2188)
!2190 = !DILocation(line: 472, column: 23, scope: !2188)
!2191 = !DILocation(line: 472, column: 28, scope: !2188)
!2192 = !DILocation(line: 475, column: 20, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2188, file: !79, line: 475, column: 7)
!2194 = !DILocation(line: 475, column: 28, scope: !2193)
!2195 = !DILocation(line: 475, column: 45, scope: !2193)
!2196 = !DILocation(line: 475, column: 7, scope: !2193)
!2197 = !DILocation(line: 475, column: 50, scope: !2193)
!2198 = !DILocation(line: 475, column: 7, scope: !2188)
!2199 = !DILocation(line: 476, column: 4, scope: !2193)
!2200 = !DILocation(line: 478, column: 33, scope: !2188)
!2201 = !DILocation(line: 478, column: 38, scope: !2188)
!2202 = !DILocation(line: 478, column: 45, scope: !2188)
!2203 = !DILocation(line: 478, column: 51, scope: !2188)
!2204 = !DILocation(line: 478, column: 18, scope: !2188)
!2205 = !DILocation(line: 478, column: 16, scope: !2188)
!2206 = !DILocation(line: 479, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2188, file: !79, line: 479, column: 7)
!2208 = !DILocation(line: 479, column: 20, scope: !2207)
!2209 = !DILocation(line: 479, column: 27, scope: !2207)
!2210 = !DILocation(line: 479, column: 31, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2207, file: !79, discriminator: 1)
!2212 = !DILocation(line: 479, column: 30, scope: !2211)
!2213 = !DILocation(line: 479, column: 37, scope: !2211)
!2214 = !DILocation(line: 479, column: 7, scope: !2211)
!2215 = !DILocation(line: 480, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2207, file: !79, line: 479, column: 43)
!2217 = !DILocation(line: 480, column: 13, scope: !2216)
!2218 = !DILocation(line: 481, column: 35, scope: !2216)
!2219 = !DILocation(line: 481, column: 26, scope: !2216)
!2220 = !DILocation(line: 481, column: 33, scope: !2216)
!2221 = !DILocation(line: 482, column: 4, scope: !2216)
!2222 = !DILocation(line: 484, column: 2, scope: !2188)
!2223 = !DILocation(line: 471, column: 50, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2184, file: !79, discriminator: 2)
!2225 = !DILocation(line: 471, column: 55, scope: !2224)
!2226 = !DILocation(line: 471, column: 48, scope: !2224)
!2227 = !DILocation(line: 471, column: 2, scope: !2224)
!2228 = distinct !{!2228, !2229}
!2229 = !DILocation(line: 471, column: 2, scope: !2150)
!2230 = !DILocation(line: 488, column: 8, scope: !2150)
!2231 = !DILocation(line: 488, column: 6, scope: !2150)
!2232 = !DILocation(line: 489, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2150, file: !79, line: 489, column: 2)
!2234 = !DILocation(line: 489, column: 21, scope: !2233)
!2235 = !DILocation(line: 489, column: 11, scope: !2233)
!2236 = !DILocation(line: 489, column: 7, scope: !2233)
!2237 = !DILocation(line: 489, column: 32, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2239, file: !79, discriminator: 1)
!2239 = distinct !DILexicalBlock(scope: !2233, file: !79, line: 489, column: 2)
!2240 = !DILocation(line: 489, column: 36, scope: !2238)
!2241 = !DILocation(line: 489, column: 2, scope: !2238)
!2242 = !DILocalVariable(name: "rec", scope: !2243, file: !79, line: 490, type: !605)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !79, line: 489, column: 56)
!2244 = !DILocation(line: 490, column: 17, scope: !2243)
!2245 = !DILocation(line: 490, column: 23, scope: !2243)
!2246 = !DILocation(line: 490, column: 28, scope: !2243)
!2247 = !DILocation(line: 492, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !79, line: 492, column: 7)
!2249 = !DILocation(line: 492, column: 14, scope: !2248)
!2250 = !DILocation(line: 492, column: 11, scope: !2248)
!2251 = !DILocation(line: 492, column: 7, scope: !2243)
!2252 = !DILocation(line: 493, column: 4, scope: !2248)
!2253 = !DILocation(line: 495, column: 10, scope: !2243)
!2254 = !DILocation(line: 495, column: 15, scope: !2243)
!2255 = !DILocation(line: 495, column: 8, scope: !2243)
!2256 = !DILocation(line: 496, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2243, file: !79, line: 496, column: 7)
!2258 = !DILocation(line: 496, column: 12, scope: !2257)
!2259 = !DILocation(line: 496, column: 7, scope: !2243)
!2260 = !DILocation(line: 498, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !79, line: 496, column: 23)
!2262 = !DILocation(line: 498, column: 27, scope: !2261)
!2263 = !DILocation(line: 498, column: 4, scope: !2261)
!2264 = !DILocation(line: 499, column: 3, scope: !2261)
!2265 = !DILocation(line: 499, column: 14, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2267, file: !79, discriminator: 1)
!2267 = distinct !DILexicalBlock(scope: !2257, file: !79, line: 499, column: 14)
!2268 = !DILocation(line: 499, column: 23, scope: !2266)
!2269 = !DILocation(line: 501, column: 8, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !79, line: 501, column: 8)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !79, line: 499, column: 31)
!2272 = !DILocation(line: 501, column: 13, scope: !2270)
!2273 = !DILocation(line: 501, column: 21, scope: !2270)
!2274 = !DILocation(line: 502, column: 8, scope: !2270)
!2275 = !DILocation(line: 502, column: 13, scope: !2270)
!2276 = !DILocation(line: 502, column: 21, scope: !2270)
!2277 = !DILocation(line: 502, column: 24, scope: !2270)
!2278 = !DILocation(line: 501, column: 8, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2271, file: !79, discriminator: 1)
!2280 = !DILocation(line: 504, column: 10, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !79, line: 504, column: 9)
!2282 = distinct !DILexicalBlock(scope: !2270, file: !79, line: 502, column: 30)
!2283 = !DILocation(line: 504, column: 15, scope: !2281)
!2284 = !DILocation(line: 504, column: 22, scope: !2281)
!2285 = !DILocation(line: 504, column: 27, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2281, file: !79, discriminator: 1)
!2287 = !DILocation(line: 504, column: 32, scope: !2286)
!2288 = !DILocation(line: 504, column: 38, scope: !2286)
!2289 = !DILocation(line: 504, column: 30, scope: !2286)
!2290 = !DILocation(line: 504, column: 50, scope: !2286)
!2291 = !DILocation(line: 504, column: 56, scope: !2286)
!2292 = !DILocation(line: 504, column: 61, scope: !2286)
!2293 = !DILocation(line: 504, column: 49, scope: !2286)
!2294 = !DILocation(line: 504, column: 47, scope: !2286)
!2295 = !DILocation(line: 504, column: 9, scope: !2286)
!2296 = !DILocation(line: 505, column: 21, scope: !2281)
!2297 = !DILocation(line: 505, column: 29, scope: !2281)
!2298 = !DILocation(line: 505, column: 6, scope: !2281)
!2299 = !DILocation(line: 506, column: 4, scope: !2282)
!2300 = !DILocation(line: 507, column: 3, scope: !2271)
!2301 = !DILocation(line: 508, column: 2, scope: !2243)
!2302 = !DILocation(line: 489, column: 50, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2239, file: !79, discriminator: 2)
!2304 = !DILocation(line: 489, column: 48, scope: !2303)
!2305 = !DILocation(line: 489, column: 2, scope: !2303)
!2306 = distinct !{!2306, !2307}
!2307 = !DILocation(line: 489, column: 2, scope: !2150)
!2308 = !DILocation(line: 510, column: 16, scope: !2150)
!2309 = !DILocation(line: 510, column: 9, scope: !2150)
!2310 = distinct !DISubprogram(name: "redirect_cmd_list_find", scope: !79, file: !79, line: 337, type: !2311, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!89, !89, !75}
!2313 = !DILocalVariable(name: "list", arg: 1, scope: !2310, file: !79, line: 337, type: !89)
!2314 = !DILocation(line: 337, column: 47, scope: !2310)
!2315 = !DILocalVariable(name: "event", arg: 2, scope: !2310, file: !79, line: 337, type: !75)
!2316 = !DILocation(line: 337, column: 65, scope: !2310)
!2317 = !DILocation(line: 339, column: 2, scope: !2310)
!2318 = !DILocation(line: 339, column: 9, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2310, file: !79, discriminator: 1)
!2320 = !DILocation(line: 339, column: 14, scope: !2319)
!2321 = !DILocation(line: 339, column: 2, scope: !2319)
!2322 = !DILocalVariable(name: "str", scope: !2323, file: !79, line: 340, type: !75)
!2323 = distinct !DILexicalBlock(scope: !2310, file: !79, line: 339, column: 22)
!2324 = !DILocation(line: 340, column: 15, scope: !2323)
!2325 = !DILocation(line: 340, column: 21, scope: !2323)
!2326 = !DILocation(line: 340, column: 27, scope: !2323)
!2327 = !DILocation(line: 342, column: 17, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !79, line: 342, column: 7)
!2329 = !DILocation(line: 342, column: 22, scope: !2328)
!2330 = !DILocation(line: 342, column: 7, scope: !2328)
!2331 = !DILocation(line: 342, column: 29, scope: !2328)
!2332 = !DILocation(line: 342, column: 7, scope: !2323)
!2333 = !DILocation(line: 343, column: 25, scope: !2328)
!2334 = !DILocation(line: 344, column: 24, scope: !2323)
!2335 = !DILocation(line: 344, column: 30, scope: !2323)
!2336 = !DILocation(line: 344, column: 36, scope: !2323)
!2337 = !DILocation(line: 344, column: 22, scope: !2323)
!2338 = !DILocation(line: 339, column: 2, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2310, file: !79, discriminator: 2)
!2340 = distinct !{!2340, !2317}
!2341 = !DILocation(line: 347, column: 16, scope: !2310)
!2342 = !DILocation(line: 347, column: 9, scope: !2310)
!2343 = distinct !DISubprogram(name: "redirect_args_match", scope: !79, file: !79, line: 299, type: !2344, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !753)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!85, !75, !75, !85}
!2346 = !DILocalVariable(name: "event_args", arg: 1, scope: !2343, file: !79, line: 299, type: !75)
!2347 = !DILocation(line: 299, column: 44, scope: !2343)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !79, line: 300, type: !75)
!2349 = !DILocation(line: 300, column: 23, scope: !2343)
!2350 = !DILocalVariable(name: "pos", arg: 3, scope: !2343, file: !79, line: 300, type: !85)
!2351 = !DILocation(line: 300, column: 32, scope: !2343)
!2352 = !DILocalVariable(name: "start", scope: !2343, file: !79, line: 302, type: !75)
!2353 = !DILocation(line: 302, column: 14, scope: !2343)
!2354 = !DILocation(line: 304, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2343, file: !79, line: 304, column: 6)
!2356 = !DILocation(line: 304, column: 10, scope: !2355)
!2357 = !DILocation(line: 304, column: 6, scope: !2343)
!2358 = !DILocation(line: 305, column: 3, scope: !2355)
!2359 = !DILocation(line: 308, column: 2, scope: !2343)
!2360 = !DILocation(line: 308, column: 9, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2343, file: !79, discriminator: 1)
!2362 = !DILocation(line: 308, column: 13, scope: !2361)
!2363 = !DILocation(line: 308, column: 17, scope: !2361)
!2364 = !DILocation(line: 308, column: 21, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2343, file: !79, discriminator: 2)
!2366 = !DILocation(line: 308, column: 20, scope: !2365)
!2367 = !DILocation(line: 308, column: 32, scope: !2365)
!2368 = !DILocation(line: 308, column: 2, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2343, file: !79, discriminator: 3)
!2370 = !DILocation(line: 309, column: 17, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2343, file: !79, line: 308, column: 41)
!2372 = !DILocation(line: 309, column: 25, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2371, file: !79, discriminator: 1)
!2374 = !DILocation(line: 309, column: 24, scope: !2373)
!2375 = !DILocation(line: 309, column: 36, scope: !2373)
!2376 = !DILocation(line: 309, column: 43, scope: !2373)
!2377 = !DILocation(line: 309, column: 47, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2371, file: !79, discriminator: 2)
!2379 = !DILocation(line: 309, column: 46, scope: !2378)
!2380 = !DILocation(line: 309, column: 58, scope: !2378)
!2381 = !DILocation(line: 309, column: 17, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2371, file: !79, discriminator: 3)
!2383 = !DILocation(line: 309, column: 77, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2371, file: !79, discriminator: 4)
!2385 = !DILocation(line: 309, column: 17, scope: !2384)
!2386 = distinct !{!2386, !2370}
!2387 = !DILocation(line: 310, column: 3, scope: !2371)
!2388 = !DILocation(line: 310, column: 11, scope: !2373)
!2389 = !DILocation(line: 310, column: 10, scope: !2373)
!2390 = !DILocation(line: 310, column: 22, scope: !2373)
!2391 = !DILocation(line: 310, column: 3, scope: !2373)
!2392 = !DILocation(line: 310, column: 40, scope: !2378)
!2393 = !DILocation(line: 310, column: 3, scope: !2378)
!2394 = distinct !{!2394, !2387}
!2395 = !DILocation(line: 311, column: 20, scope: !2371)
!2396 = !DILocation(line: 308, column: 2, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2343, file: !79, discriminator: 4)
!2398 = distinct !{!2398, !2359}
!2399 = !DILocation(line: 315, column: 10, scope: !2343)
!2400 = !DILocation(line: 315, column: 8, scope: !2343)
!2401 = !DILocation(line: 316, column: 2, scope: !2343)
!2402 = !DILocation(line: 316, column: 10, scope: !2361)
!2403 = !DILocation(line: 316, column: 9, scope: !2361)
!2404 = !DILocation(line: 316, column: 14, scope: !2361)
!2405 = !DILocation(line: 316, column: 2, scope: !2361)
!2406 = !DILocation(line: 317, column: 3, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2343, file: !79, line: 316, column: 23)
!2408 = !DILocation(line: 317, column: 11, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2407, file: !79, discriminator: 1)
!2410 = !DILocation(line: 317, column: 10, scope: !2409)
!2411 = !DILocation(line: 317, column: 15, scope: !2409)
!2412 = !DILocation(line: 317, column: 23, scope: !2409)
!2413 = !DILocation(line: 317, column: 27, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2407, file: !79, discriminator: 2)
!2415 = !DILocation(line: 317, column: 26, scope: !2414)
!2416 = !DILocation(line: 317, column: 31, scope: !2414)
!2417 = !DILocation(line: 317, column: 38, scope: !2414)
!2418 = !DILocation(line: 317, column: 42, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2407, file: !79, discriminator: 3)
!2420 = !DILocation(line: 317, column: 41, scope: !2419)
!2421 = !DILocation(line: 317, column: 53, scope: !2419)
!2422 = !DILocation(line: 317, column: 3, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2407, file: !79, discriminator: 4)
!2424 = !DILocation(line: 318, column: 40, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !79, line: 318, column: 8)
!2426 = distinct !DILexicalBlock(scope: !2407, file: !79, line: 317, column: 62)
!2427 = !DILocation(line: 318, column: 39, scope: !2425)
!2428 = !DILocation(line: 318, column: 16, scope: !2425)
!2429 = !DILocation(line: 318, column: 8, scope: !2425)
!2430 = !DILocation(line: 318, column: 81, scope: !2425)
!2431 = !DILocation(line: 318, column: 80, scope: !2425)
!2432 = !DILocation(line: 318, column: 57, scope: !2425)
!2433 = !DILocation(line: 318, column: 49, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2425, file: !79, discriminator: 1)
!2435 = !DILocation(line: 318, column: 46, scope: !2425)
!2436 = !DILocation(line: 318, column: 8, scope: !2426)
!2437 = !DILocation(line: 319, column: 5, scope: !2425)
!2438 = !DILocation(line: 320, column: 7, scope: !2426)
!2439 = !DILocation(line: 320, column: 21, scope: !2426)
!2440 = !DILocation(line: 317, column: 3, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2407, file: !79, discriminator: 5)
!2442 = distinct !{!2442, !2406}
!2443 = !DILocation(line: 323, column: 9, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2407, file: !79, line: 323, column: 7)
!2445 = !DILocation(line: 323, column: 8, scope: !2444)
!2446 = !DILocation(line: 323, column: 13, scope: !2444)
!2447 = !DILocation(line: 323, column: 21, scope: !2444)
!2448 = !DILocation(line: 323, column: 25, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2444, file: !79, discriminator: 1)
!2450 = !DILocation(line: 323, column: 24, scope: !2449)
!2451 = !DILocation(line: 323, column: 29, scope: !2449)
!2452 = !DILocation(line: 323, column: 37, scope: !2449)
!2453 = !DILocation(line: 324, column: 9, scope: !2444)
!2454 = !DILocation(line: 324, column: 8, scope: !2444)
!2455 = !DILocation(line: 324, column: 20, scope: !2444)
!2456 = !DILocation(line: 324, column: 28, scope: !2444)
!2457 = !DILocation(line: 324, column: 32, scope: !2449)
!2458 = !DILocation(line: 324, column: 31, scope: !2449)
!2459 = !DILocation(line: 324, column: 43, scope: !2449)
!2460 = !DILocation(line: 323, column: 7, scope: !2414)
!2461 = !DILocation(line: 325, column: 4, scope: !2444)
!2462 = !DILocation(line: 328, column: 3, scope: !2407)
!2463 = !DILocation(line: 328, column: 11, scope: !2409)
!2464 = !DILocation(line: 328, column: 10, scope: !2409)
!2465 = !DILocation(line: 328, column: 15, scope: !2409)
!2466 = !DILocation(line: 328, column: 22, scope: !2409)
!2467 = !DILocation(line: 328, column: 26, scope: !2414)
!2468 = !DILocation(line: 328, column: 25, scope: !2414)
!2469 = !DILocation(line: 328, column: 30, scope: !2414)
!2470 = !DILocation(line: 328, column: 3, scope: !2419)
!2471 = !DILocation(line: 328, column: 42, scope: !2423)
!2472 = !DILocation(line: 328, column: 3, scope: !2423)
!2473 = distinct !{!2473, !2462}
!2474 = !DILocation(line: 329, column: 17, scope: !2407)
!2475 = !DILocation(line: 329, column: 25, scope: !2409)
!2476 = !DILocation(line: 329, column: 24, scope: !2409)
!2477 = !DILocation(line: 329, column: 29, scope: !2409)
!2478 = !DILocation(line: 329, column: 17, scope: !2409)
!2479 = !DILocation(line: 329, column: 40, scope: !2414)
!2480 = !DILocation(line: 329, column: 17, scope: !2414)
!2481 = distinct !{!2481, !2474}
!2482 = !DILocation(line: 331, column: 16, scope: !2407)
!2483 = !DILocation(line: 331, column: 14, scope: !2407)
!2484 = !DILocation(line: 316, column: 2, scope: !2365)
!2485 = distinct !{!2485, !2401}
!2486 = !DILocation(line: 334, column: 9, scope: !2343)
!2487 = !DILocation(line: 335, column: 1, scope: !2343)
