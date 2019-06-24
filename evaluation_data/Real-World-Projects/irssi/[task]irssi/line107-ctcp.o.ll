; ModuleID = './line107-ctcp.o.i'
source_filename = "./line107-ctcp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.CTCP_CMD_REC = type { i8*, i32 }
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

@ctcp_cmds = internal global %struct._GSList* null, align 8
@__func__.ctcp_send_reply = private unnamed_addr constant [16 x i8] c"ctcp_send_reply\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"max_ctcp_queue\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ctcp_version_reply\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"irssi v$J - running on $sysname $sysarch\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ctcp_userinfo_reply\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"$Y\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"event privmsg\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"event notice\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ctcp msg\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ctcp reply\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ctcp msg ping\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ctcp msg version\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"ctcp msg time\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ctcp msg userinfo\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"ctcp msg clientinfo\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"userinfo\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"clientinfo\00", align 1
@__func__.sig_disconnected = private unnamed_addr constant [17 x i8] c"sig_disconnected\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.event_privmsg = private unnamed_addr constant [14 x i8] c"event_privmsg\00", align 1
@__func__.event_notice = private unnamed_addr constant [13 x i8] c"event_notice\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ACTION \00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"ctcp action\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"ctcp msg \00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"default ctcp msg\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ctcp reply \00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"default ctcp reply\00", align 1
@__func__.ctcp_ping = private unnamed_addr constant [10 x i8] c"ctcp_ping\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"NOTICE %s :\01PING %s\01\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@__func__.ctcp_send_parsed_reply = private unnamed_addr constant [23 x i8] c"ctcp_send_parsed_reply\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"NOTICE %s :\01%s %s\01\00", align 1
@__func__.ctcp_time = private unnamed_addr constant [10 x i8] c"ctcp_time\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"NOTICE %s :\01TIME %s\01\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"USERINFO\00", align 1
@__func__.ctcp_clientinfo = private unnamed_addr constant [16 x i8] c"ctcp_clientinfo\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"NOTICE %s :\01CLIENTINFO\00", align 1

; Function Attrs: nounwind uwtable
define void @ctcp_register(i8*) #0 !dbg !709 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CTCP_CMD_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !713, metadata !714), !dbg !715
  call void @llvm.dbg.declare(metadata %struct.CTCP_CMD_REC** %3, metadata !716, metadata !714), !dbg !717
  %4 = load i8*, i8** %2, align 8, !dbg !718
  %5 = call %struct.CTCP_CMD_REC* @ctcp_cmd_find(i8* %4), !dbg !719
  store %struct.CTCP_CMD_REC* %5, %struct.CTCP_CMD_REC** %3, align 8, !dbg !720
  %6 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !721
  %7 = icmp eq %struct.CTCP_CMD_REC* %6, null, !dbg !723
  br i1 %7, label %8, label %19, !dbg !724

; <label>:8:                                      ; preds = %1
  %9 = call noalias i8* @g_malloc0_n(i64 1, i64 16), !dbg !725
  %10 = bitcast i8* %9 to %struct.CTCP_CMD_REC*, !dbg !727
  store %struct.CTCP_CMD_REC* %10, %struct.CTCP_CMD_REC** %3, align 8, !dbg !728
  %11 = load i8*, i8** %2, align 8, !dbg !729
  %12 = call noalias i8* @g_ascii_strup(i8* %11, i64 -1), !dbg !730
  %13 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !731
  %14 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %13, i32 0, i32 0, !dbg !732
  store i8* %12, i8** %14, align 8, !dbg !733
  %15 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !734
  %16 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !735
  %17 = bitcast %struct.CTCP_CMD_REC* %16 to i8*, !dbg !735
  %18 = call %struct._GSList* @g_slist_append(%struct._GSList* %15, i8* %17), !dbg !736
  store %struct._GSList* %18, %struct._GSList** @ctcp_cmds, align 8, !dbg !737
  br label %19, !dbg !738

; <label>:19:                                     ; preds = %8, %1
  %20 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !739
  %21 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %20, i32 0, i32 1, !dbg !740
  %22 = load i32, i32* %21, align 8, !dbg !741
  %23 = add nsw i32 %22, 1, !dbg !741
  store i32 %23, i32* %21, align 8, !dbg !741
  ret void, !dbg !742
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal %struct.CTCP_CMD_REC* @ctcp_cmd_find(i8*) #0 !dbg !743 {
  %2 = alloca %struct.CTCP_CMD_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.CTCP_CMD_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !746, metadata !714), !dbg !747
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !748, metadata !714), !dbg !749
  %6 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !750
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !752
  br label %7, !dbg !753

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !754
  %9 = icmp ne %struct._GSList* %8, null, !dbg !757
  br i1 %9, label %10, label %28, !dbg !758

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.CTCP_CMD_REC** %5, metadata !759, metadata !714), !dbg !761
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !762
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !763
  %13 = load i8*, i8** %12, align 8, !dbg !763
  %14 = bitcast i8* %13 to %struct.CTCP_CMD_REC*, !dbg !762
  store %struct.CTCP_CMD_REC* %14, %struct.CTCP_CMD_REC** %5, align 8, !dbg !761
  %15 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %5, align 8, !dbg !764
  %16 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %15, i32 0, i32 0, !dbg !766
  %17 = load i8*, i8** %16, align 8, !dbg !766
  %18 = load i8*, i8** %3, align 8, !dbg !767
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !768
  %20 = icmp eq i32 %19, 0, !dbg !769
  br i1 %20, label %21, label %23, !dbg !770

; <label>:21:                                     ; preds = %10
  %22 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %5, align 8, !dbg !771
  store %struct.CTCP_CMD_REC* %22, %struct.CTCP_CMD_REC** %2, align 8, !dbg !772
  br label %29, !dbg !772

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !773

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !774
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !776
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !776
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !777
  br label %7, !dbg !778, !llvm.loop !779

; <label>:28:                                     ; preds = %7
  store %struct.CTCP_CMD_REC* null, %struct.CTCP_CMD_REC** %2, align 8, !dbg !781
  br label %29, !dbg !781

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %2, align 8, !dbg !782
  ret %struct.CTCP_CMD_REC* %30, !dbg !782
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_ascii_strup(i8*, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ctcp_unregister(i8*) #0 !dbg !783 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.CTCP_CMD_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !784, metadata !714), !dbg !785
  call void @llvm.dbg.declare(metadata %struct.CTCP_CMD_REC** %3, metadata !786, metadata !714), !dbg !787
  %4 = load i8*, i8** %2, align 8, !dbg !788
  %5 = call %struct.CTCP_CMD_REC* @ctcp_cmd_find(i8* %4), !dbg !789
  store %struct.CTCP_CMD_REC* %5, %struct.CTCP_CMD_REC** %3, align 8, !dbg !790
  %6 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !791
  %7 = icmp ne %struct.CTCP_CMD_REC* %6, null, !dbg !793
  br i1 %7, label %8, label %16, !dbg !794

; <label>:8:                                      ; preds = %1
  %9 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !795
  %10 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %9, i32 0, i32 1, !dbg !797
  %11 = load i32, i32* %10, align 8, !dbg !798
  %12 = add nsw i32 %11, -1, !dbg !798
  store i32 %12, i32* %10, align 8, !dbg !798
  %13 = icmp eq i32 %12, 0, !dbg !799
  br i1 %13, label %14, label %16, !dbg !800

; <label>:14:                                     ; preds = %8
  %15 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %3, align 8, !dbg !801
  call void @ctcp_cmd_destroy(%struct.CTCP_CMD_REC* %15), !dbg !802
  br label %16, !dbg !802

; <label>:16:                                     ; preds = %14, %8, %1
  ret void, !dbg !803
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_cmd_destroy(%struct.CTCP_CMD_REC*) #0 !dbg !804 {
  %2 = alloca %struct.CTCP_CMD_REC*, align 8
  store %struct.CTCP_CMD_REC* %0, %struct.CTCP_CMD_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CTCP_CMD_REC** %2, metadata !807, metadata !714), !dbg !808
  %3 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !809
  %4 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %2, align 8, !dbg !810
  %5 = bitcast %struct.CTCP_CMD_REC* %4 to i8*, !dbg !810
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !811
  store %struct._GSList* %6, %struct._GSList** @ctcp_cmds, align 8, !dbg !812
  %7 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %2, align 8, !dbg !813
  %8 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %7, i32 0, i32 0, !dbg !814
  %9 = load i8*, i8** %8, align 8, !dbg !814
  call void @g_free(i8* %9), !dbg !815
  %10 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %2, align 8, !dbg !816
  %11 = bitcast %struct.CTCP_CMD_REC* %10 to i8*, !dbg !816
  call void @g_free(i8* %11), !dbg !817
  ret void, !dbg !818
}

; Function Attrs: nounwind uwtable
define void @ctcp_send_reply(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !819 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !822, metadata !714), !dbg !823
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !824, metadata !714), !dbg !825
  call void @llvm.dbg.declare(metadata i32* %5, metadata !826, metadata !714), !dbg !827
  br label %6, !dbg !828, !llvm.loop !829

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !830
  %8 = icmp ne %struct._IRC_SERVER_REC* %7, null, !dbg !834
  br i1 %8, label %9, label %10, !dbg !830

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !835

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ctcp_send_reply, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !838
  br label %41, !dbg !841

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !842

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !844, !llvm.loop !845

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !846
  %15 = icmp ne i8* %14, null, !dbg !850
  br i1 %15, label %16, label %17, !dbg !846

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !851

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ctcp_send_reply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !854
  br label %41, !dbg !857

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !858

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !860
  call void @ctcp_queue_clean(%struct._IRC_SERVER_REC* %20), !dbg !861
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !862
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 63, !dbg !864
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !864
  %24 = call i32 @g_slist_length(%struct._GSList* %23), !dbg !865
  %25 = call i32 @settings_get_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)), !dbg !866
  %26 = icmp sge i32 %24, %25, !dbg !867
  br i1 %26, label %27, label %28, !dbg !868

; <label>:27:                                     ; preds = %19
  br label %41, !dbg !869

; <label>:28:                                     ; preds = %19
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !870
  %30 = load i8*, i8** %4, align 8, !dbg !871
  %31 = call i32 (%struct._IRC_SERVER_REC*, i8*, i8*, i32, i8*, i32, i8*, ...) @server_idle_add_redir(%struct._IRC_SERVER_REC* %29, i8* %30, i8* null, i32 0, i8* null, i32 0, i8* null, i8* null), !dbg !872
  store i32 %31, i32* %5, align 4, !dbg !873
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !874
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 63, !dbg !875
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !875
  %35 = load i32, i32* %5, align 4, !dbg !876
  %36 = sext i32 %35 to i64, !dbg !877
  %37 = inttoptr i64 %36 to i8*, !dbg !878
  %38 = call %struct._GSList* @g_slist_append(%struct._GSList* %34, i8* %37), !dbg !879
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !880
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 63, !dbg !881
  store %struct._GSList* %38, %struct._GSList** %40, align 8, !dbg !882
  br label %41, !dbg !883

; <label>:41:                                     ; preds = %28, %27, %17, %10
  ret void, !dbg !884
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ctcp_queue_clean(%struct._IRC_SERVER_REC*) #0 !dbg !886 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !889, metadata !714), !dbg !890
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !891, metadata !714), !dbg !892
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !893, metadata !714), !dbg !894
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !895
  %6 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %5, i32 0, i32 63, !dbg !897
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !897
  store %struct._GSList* %7, %struct._GSList** %3, align 8, !dbg !898
  br label %8, !dbg !899

; <label>:8:                                      ; preds = %34, %1
  %9 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !900
  %10 = icmp ne %struct._GSList* %9, null, !dbg !903
  br i1 %10, label %11, label %36, !dbg !904

; <label>:11:                                     ; preds = %8
  %12 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !905
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 1, !dbg !907
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !907
  store %struct._GSList* %14, %struct._GSList** %4, align 8, !dbg !908
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !909
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !911
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !912
  %18 = load i8*, i8** %17, align 8, !dbg !912
  %19 = ptrtoint i8* %18 to i64, !dbg !913
  %20 = trunc i64 %19 to i32, !dbg !914
  %21 = call i32 @server_idle_find(%struct._IRC_SERVER_REC* %15, i32 %20), !dbg !915
  %22 = icmp ne i32 %21, 0, !dbg !915
  br i1 %22, label %33, label %23, !dbg !916

; <label>:23:                                     ; preds = %11
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !917
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 63, !dbg !919
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !919
  %27 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !920
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !921
  %29 = load i8*, i8** %28, align 8, !dbg !921
  %30 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %29), !dbg !922
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !923
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 63, !dbg !924
  store %struct._GSList* %30, %struct._GSList** %32, align 8, !dbg !925
  br label %33, !dbg !926

; <label>:33:                                     ; preds = %23, %11
  br label %34, !dbg !927

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !928
  store %struct._GSList* %35, %struct._GSList** %3, align 8, !dbg !930
  br label %8, !dbg !931, !llvm.loop !932

; <label>:36:                                     ; preds = %8
  ret void, !dbg !934
}

declare i32 @g_slist_length(%struct._GSList*) #2

declare i32 @settings_get_int(i8*) #2

declare i32 @server_idle_add_redir(%struct._IRC_SERVER_REC*, i8*, i8*, i32, i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @ctcp_init() #0 !dbg !935 {
  store %struct._GSList* null, %struct._GSList** @ctcp_cmds, align 8, !dbg !936
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0)), !dbg !937
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)), !dbg !938
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 5), !dbg !939
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !940
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !941
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !942
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !943
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !944
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !945
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_version to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !946
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_time to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !947
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_userinfo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !948
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_clientinfo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !949
  call void @ctcp_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)), !dbg !950
  call void @ctcp_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)), !dbg !951
  call void @ctcp_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)), !dbg !952
  call void @ctcp_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0)), !dbg !953
  call void @ctcp_register(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0)), !dbg !954
  ret void, !dbg !955
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !956 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !957, metadata !714), !dbg !958
  br label %3, !dbg !959, !llvm.loop !960

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !961
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !965
  br i1 %5, label %6, label %7, !dbg !961

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !966

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !969
  br label %27, !dbg !972

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !973

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !975
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !975
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)), !dbg !977
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !978
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !979
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)), !dbg !980
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !982
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !982
  br i1 %17, label %18, label %19, !dbg !983

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !984

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !986

; <label>:20:                                     ; preds = %19, %18
  br label %27, !dbg !988

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !989
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 63, !dbg !990
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !990
  call void @g_slist_free(%struct._GSList* %24), !dbg !991
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !992
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 63, !dbg !993
  store %struct._GSList* null, %struct._GSList** %26, align 8, !dbg !994
  br label %27, !dbg !995

; <label>:27:                                     ; preds = %21, %20, %7
  ret void, !dbg !996
}

; Function Attrs: nounwind uwtable
define internal void @event_privmsg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !998 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1001, metadata !714), !dbg !1002
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1003, metadata !714), !dbg !1004
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1005, metadata !714), !dbg !1006
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1007, metadata !714), !dbg !1008
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1009, metadata !714), !dbg !1010
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1011, metadata !714), !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1013, metadata !714), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1015, metadata !714), !dbg !1016
  br label %13, !dbg !1017, !llvm.loop !1018

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !1019
  %15 = icmp ne i8* %14, null, !dbg !1023
  br i1 %15, label %16, label %17, !dbg !1019

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1024

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_privmsg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1027
  br label %55, !dbg !1030

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1031

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1033
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 2, i8** %10, i8** %11), !dbg !1034
  store i8* %21, i8** %9, align 8, !dbg !1035
  %22 = load i8*, i8** %11, align 8, !dbg !1036
  %23 = load i8, i8* %22, align 1, !dbg !1038
  %24 = sext i8 %23 to i32, !dbg !1038
  %25 = icmp eq i32 %24, 1, !dbg !1039
  br i1 %25, label %26, label %53, !dbg !1040

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %11, align 8, !dbg !1041
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1041
  store i8* %28, i8** %11, align 8, !dbg !1041
  %29 = load i8*, i8** %11, align 8, !dbg !1043
  %30 = call i64 @strlen(i8* %29) #6, !dbg !1044
  %31 = trunc i64 %30 to i32, !dbg !1044
  store i32 %31, i32* %12, align 4, !dbg !1045
  %32 = load i32, i32* %12, align 4, !dbg !1046
  %33 = sub nsw i32 %32, 1, !dbg !1048
  %34 = sext i32 %33 to i64, !dbg !1049
  %35 = load i8*, i8** %11, align 8, !dbg !1049
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !1049
  %37 = load i8, i8* %36, align 1, !dbg !1049
  %38 = sext i8 %37 to i32, !dbg !1049
  %39 = icmp eq i32 %38, 1, !dbg !1050
  br i1 %39, label %40, label %46, !dbg !1051

; <label>:40:                                     ; preds = %26
  %41 = load i32, i32* %12, align 4, !dbg !1052
  %42 = sub nsw i32 %41, 1, !dbg !1053
  %43 = sext i32 %42 to i64, !dbg !1054
  %44 = load i8*, i8** %11, align 8, !dbg !1054
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1054
  store i8 0, i8* %45, align 1, !dbg !1055
  br label %46, !dbg !1054

; <label>:46:                                     ; preds = %40, %26
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1056
  %48 = load i8*, i8** %11, align 8, !dbg !1057
  %49 = load i8*, i8** %7, align 8, !dbg !1058
  %50 = load i8*, i8** %8, align 8, !dbg !1059
  %51 = load i8*, i8** %10, align 8, !dbg !1060
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %47, i8* %48, i8* %49, i8* %50, i8* %51), !dbg !1061
  call void @signal_stop(), !dbg !1062
  br label %53, !dbg !1063

; <label>:53:                                     ; preds = %46, %19
  %54 = load i8*, i8** %9, align 8, !dbg !1064
  call void @g_free(i8* %54), !dbg !1065
  br label %55, !dbg !1066

; <label>:55:                                     ; preds = %53, %17
  ret void, !dbg !1067
}

; Function Attrs: nounwind uwtable
define internal void @event_notice(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1069 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1070, metadata !714), !dbg !1071
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1072, metadata !714), !dbg !1073
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1074, metadata !714), !dbg !1075
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1076, metadata !714), !dbg !1077
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1078, metadata !714), !dbg !1079
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1080, metadata !714), !dbg !1081
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1082, metadata !714), !dbg !1083
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1084, metadata !714), !dbg !1085
  br label %13, !dbg !1086, !llvm.loop !1087

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !1088
  %15 = icmp ne i8* %14, null, !dbg !1092
  br i1 %15, label %16, label %17, !dbg !1088

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1093

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_notice, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1096
  br label %43, !dbg !1099

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1100

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1102
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 2, i8** %10, i8** %12), !dbg !1103
  store i8* %21, i8** %9, align 8, !dbg !1104
  %22 = load i8*, i8** %12, align 8, !dbg !1105
  %23 = load i8, i8* %22, align 1, !dbg !1107
  %24 = sext i8 %23 to i32, !dbg !1107
  %25 = icmp eq i32 %24, 1, !dbg !1108
  br i1 %25, label %26, label %41, !dbg !1109

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %12, align 8, !dbg !1110
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1110
  store i8* %28, i8** %12, align 8, !dbg !1110
  %29 = call i8* @strrchr(i8* %28, i32 1) #6, !dbg !1112
  store i8* %29, i8** %11, align 8, !dbg !1113
  %30 = load i8*, i8** %11, align 8, !dbg !1114
  %31 = icmp ne i8* %30, null, !dbg !1116
  br i1 %31, label %32, label %34, !dbg !1117

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %11, align 8, !dbg !1118
  store i8 0, i8* %33, align 1, !dbg !1120
  br label %34, !dbg !1121

; <label>:34:                                     ; preds = %32, %26
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1122
  %36 = load i8*, i8** %12, align 8, !dbg !1123
  %37 = load i8*, i8** %7, align 8, !dbg !1124
  %38 = load i8*, i8** %8, align 8, !dbg !1125
  %39 = load i8*, i8** %10, align 8, !dbg !1126
  %40 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %35, i8* %36, i8* %37, i8* %38, i8* %39), !dbg !1127
  call void @signal_stop(), !dbg !1128
  br label %41, !dbg !1129

; <label>:41:                                     ; preds = %34, %19
  %42 = load i8*, i8** %9, align 8, !dbg !1130
  call void @g_free(i8* %42), !dbg !1131
  br label %43, !dbg !1132

; <label>:43:                                     ; preds = %41, %17
  ret void, !dbg !1133
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1135 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1138, metadata !714), !dbg !1139
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1140, metadata !714), !dbg !1141
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1142, metadata !714), !dbg !1143
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1144, metadata !714), !dbg !1145
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1146, metadata !714), !dbg !1147
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1148, metadata !714), !dbg !1149
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1150, metadata !714), !dbg !1151
  %13 = load i8*, i8** %7, align 8, !dbg !1152
  %14 = call i32 @g_ascii_strncasecmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i64 7), !dbg !1154
  %15 = icmp eq i32 %14, 0, !dbg !1155
  br i1 %15, label %16, label %24, !dbg !1156

; <label>:16:                                     ; preds = %5
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1157
  %18 = load i8*, i8** %7, align 8, !dbg !1159
  %19 = getelementptr inbounds i8, i8* %18, i64 7, !dbg !1160
  %20 = load i8*, i8** %8, align 8, !dbg !1161
  %21 = load i8*, i8** %9, align 8, !dbg !1162
  %22 = load i8*, i8** %10, align 8, !dbg !1163
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %17, i8* %19, i8* %20, i8* %21, i8* %22), !dbg !1164
  br label %69, !dbg !1165

; <label>:24:                                     ; preds = %5
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1166
  %26 = bitcast %struct._IRC_SERVER_REC* %25 to i8*, !dbg !1166
  %27 = call i8* @module_check_cast(i8* %26, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)), !dbg !1168
  %28 = bitcast i8* %27 to %struct._SERVER_REC*, !dbg !1169
  %29 = load i8*, i8** %8, align 8, !dbg !1170
  %30 = load i8*, i8** %9, align 8, !dbg !1171
  %31 = load i8*, i8** %10, align 8, !dbg !1172
  %32 = load i8*, i8** %7, align 8, !dbg !1173
  %33 = call i32 @ignore_check(%struct._SERVER_REC* %28, i8* %29, i8* %30, i8* %31, i8* %32, i32 32), !dbg !1174
  %34 = icmp ne i32 %33, 0, !dbg !1176
  br i1 %34, label %35, label %36, !dbg !1177

; <label>:35:                                     ; preds = %24
  br label %69, !dbg !1178

; <label>:36:                                     ; preds = %24
  %37 = load i8*, i8** %7, align 8, !dbg !1179
  %38 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* %37, i8* null), !dbg !1180
  store i8* %38, i8** %12, align 8, !dbg !1181
  %39 = load i8*, i8** %12, align 8, !dbg !1182
  %40 = getelementptr inbounds i8, i8* %39, i64 9, !dbg !1183
  %41 = call i8* @strchr(i8* %40, i32 32) #6, !dbg !1184
  store i8* %41, i8** %11, align 8, !dbg !1185
  %42 = load i8*, i8** %11, align 8, !dbg !1186
  %43 = icmp ne i8* %42, null, !dbg !1188
  br i1 %43, label %44, label %47, !dbg !1189

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %11, align 8, !dbg !1190
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !1190
  store i8* %46, i8** %11, align 8, !dbg !1190
  store i8 0, i8* %45, align 1, !dbg !1192
  br label %48, !dbg !1193

; <label>:47:                                     ; preds = %36
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i8** %11, align 8, !dbg !1194
  br label %48

; <label>:48:                                     ; preds = %47, %44
  %49 = load i8*, i8** %12, align 8, !dbg !1196
  %50 = getelementptr inbounds i8, i8* %49, i64 9, !dbg !1197
  %51 = call i8* @ascii_strdown(i8* %50), !dbg !1198
  %52 = load i8*, i8** %12, align 8, !dbg !1199
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1201
  %54 = load i8*, i8** %11, align 8, !dbg !1202
  %55 = load i8*, i8** %8, align 8, !dbg !1203
  %56 = load i8*, i8** %9, align 8, !dbg !1204
  %57 = load i8*, i8** %10, align 8, !dbg !1205
  %58 = call i32 (i8*, i32, ...) @signal_emit(i8* %52, i32 5, %struct._IRC_SERVER_REC* %53, i8* %54, i8* %55, i8* %56, i8* %57), !dbg !1206
  %59 = icmp ne i32 %58, 0, !dbg !1206
  br i1 %59, label %67, label %60, !dbg !1207

; <label>:60:                                     ; preds = %48
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1208
  %62 = load i8*, i8** %7, align 8, !dbg !1210
  %63 = load i8*, i8** %8, align 8, !dbg !1211
  %64 = load i8*, i8** %9, align 8, !dbg !1212
  %65 = load i8*, i8** %10, align 8, !dbg !1213
  %66 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %61, i8* %62, i8* %63, i8* %64, i8* %65), !dbg !1214
  br label %67, !dbg !1215

; <label>:67:                                     ; preds = %60, %48
  %68 = load i8*, i8** %12, align 8, !dbg !1216
  call void @g_free(i8* %68), !dbg !1217
  br label %69, !dbg !1218

; <label>:69:                                     ; preds = %67, %35, %16
  ret void, !dbg !1219
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_reply(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1221 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1222, metadata !714), !dbg !1223
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1224, metadata !714), !dbg !1225
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1226, metadata !714), !dbg !1227
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1228, metadata !714), !dbg !1229
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1230, metadata !714), !dbg !1231
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1232, metadata !714), !dbg !1233
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1234, metadata !714), !dbg !1235
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1236
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !1236
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)), !dbg !1238
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !1239
  %17 = load i8*, i8** %8, align 8, !dbg !1240
  %18 = load i8*, i8** %9, align 8, !dbg !1241
  %19 = load i8*, i8** %10, align 8, !dbg !1242
  %20 = load i8*, i8** %7, align 8, !dbg !1243
  %21 = call i32 @ignore_check(%struct._SERVER_REC* %16, i8* %17, i8* %18, i8* %19, i8* %20, i32 32), !dbg !1244
  %22 = icmp ne i32 %21, 0, !dbg !1246
  br i1 %22, label %23, label %24, !dbg !1247

; <label>:23:                                     ; preds = %5
  br label %57, !dbg !1248

; <label>:24:                                     ; preds = %5
  %25 = load i8*, i8** %7, align 8, !dbg !1249
  %26 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* %25, i8* null), !dbg !1250
  store i8* %26, i8** %12, align 8, !dbg !1251
  %27 = load i8*, i8** %12, align 8, !dbg !1252
  %28 = getelementptr inbounds i8, i8* %27, i64 11, !dbg !1253
  %29 = call i8* @strchr(i8* %28, i32 32) #6, !dbg !1254
  store i8* %29, i8** %11, align 8, !dbg !1255
  %30 = load i8*, i8** %11, align 8, !dbg !1256
  %31 = icmp ne i8* %30, null, !dbg !1258
  br i1 %31, label %32, label %35, !dbg !1259

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %11, align 8, !dbg !1260
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !1260
  store i8* %34, i8** %11, align 8, !dbg !1260
  store i8 0, i8* %33, align 1, !dbg !1262
  br label %36, !dbg !1263

; <label>:35:                                     ; preds = %24
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i8** %11, align 8, !dbg !1264
  br label %36

; <label>:36:                                     ; preds = %35, %32
  %37 = load i8*, i8** %12, align 8, !dbg !1266
  %38 = getelementptr inbounds i8, i8* %37, i64 11, !dbg !1267
  %39 = call i8* @ascii_strdown(i8* %38), !dbg !1268
  %40 = load i8*, i8** %12, align 8, !dbg !1269
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1271
  %42 = load i8*, i8** %11, align 8, !dbg !1272
  %43 = load i8*, i8** %8, align 8, !dbg !1273
  %44 = load i8*, i8** %9, align 8, !dbg !1274
  %45 = load i8*, i8** %10, align 8, !dbg !1275
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* %40, i32 5, %struct._IRC_SERVER_REC* %41, i8* %42, i8* %43, i8* %44, i8* %45), !dbg !1276
  %47 = icmp ne i32 %46, 0, !dbg !1276
  br i1 %47, label %55, label %48, !dbg !1277

; <label>:48:                                     ; preds = %36
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1278
  %50 = load i8*, i8** %7, align 8, !dbg !1280
  %51 = load i8*, i8** %8, align 8, !dbg !1281
  %52 = load i8*, i8** %9, align 8, !dbg !1282
  %53 = load i8*, i8** %10, align 8, !dbg !1283
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %49, i8* %50, i8* %51, i8* %52, i8* %53), !dbg !1284
  br label %55, !dbg !1285

; <label>:55:                                     ; preds = %48, %36
  %56 = load i8*, i8** %12, align 8, !dbg !1286
  call void @g_free(i8* %56), !dbg !1287
  br label %57, !dbg !1288

; <label>:57:                                     ; preds = %55, %23
  ret void, !dbg !1289
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_ping(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1291 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1294, metadata !714), !dbg !1295
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1296, metadata !714), !dbg !1297
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1298, metadata !714), !dbg !1299
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1300, metadata !714), !dbg !1301
  br label %8, !dbg !1302, !llvm.loop !1303

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %5, align 8, !dbg !1304
  %10 = icmp ne i8* %9, null, !dbg !1308
  br i1 %10, label %11, label %12, !dbg !1304

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1309

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ctcp_ping, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)), !dbg !1312
  br label %40, !dbg !1315

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1316

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1318, !llvm.loop !1319

; <label>:15:                                     ; preds = %14
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1320
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1324
  br i1 %17, label %18, label %19, !dbg !1320

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1325

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ctcp_ping, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1328
  br label %40, !dbg !1331

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1332

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !1334, !llvm.loop !1335

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !1336
  %24 = icmp ne i8* %23, null, !dbg !1340
  br i1 %24, label %25, label %26, !dbg !1336

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !1341

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ctcp_ping, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !1344
  br label %40, !dbg !1347

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1348

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %5, align 8, !dbg !1350
  %30 = call i64 @strlen(i8* %29) #6, !dbg !1352
  %31 = icmp ugt i64 %30, 100, !dbg !1353
  br i1 %31, label %32, label %33, !dbg !1354

; <label>:32:                                     ; preds = %28
  br label %40, !dbg !1355

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %6, align 8, !dbg !1357
  %35 = load i8*, i8** %5, align 8, !dbg !1358
  %36 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* %34, i8* %35), !dbg !1359
  store i8* %36, i8** %7, align 8, !dbg !1360
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1361
  %38 = load i8*, i8** %7, align 8, !dbg !1362
  call void @ctcp_send_reply(%struct._IRC_SERVER_REC* %37, i8* %38), !dbg !1363
  %39 = load i8*, i8** %7, align 8, !dbg !1364
  call void @g_free(i8* %39), !dbg !1365
  br label %40, !dbg !1366

; <label>:40:                                     ; preds = %33, %32, %26, %19, %12
  ret void, !dbg !1367
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_version(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1369 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1370, metadata !714), !dbg !1371
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1372, metadata !714), !dbg !1373
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1374, metadata !714), !dbg !1375
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1376
  %8 = load i8*, i8** %6, align 8, !dbg !1377
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)), !dbg !1378
  call void @ctcp_send_parsed_reply(%struct._IRC_SERVER_REC* %7, i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %9), !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_time(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1381 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1382, metadata !714), !dbg !1383
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1384, metadata !714), !dbg !1385
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1386, metadata !714), !dbg !1387
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1388, metadata !714), !dbg !1389
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1390, metadata !714), !dbg !1391
  br label %9, !dbg !1392, !llvm.loop !1393

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1394
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !1398
  br i1 %11, label %12, label %13, !dbg !1394

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1399

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ctcp_time, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1402
  br label %32, !dbg !1405

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1406

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1408, !llvm.loop !1409

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1410
  %18 = icmp ne i8* %17, null, !dbg !1414
  br i1 %18, label %19, label %20, !dbg !1410

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1415

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.ctcp_time, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !1418
  br label %32, !dbg !1421

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1422

; <label>:22:                                     ; preds = %21
  %23 = call i64 @time(i64* null) #7, !dbg !1424
  %24 = call i8* @my_asctime(i64 %23), !dbg !1425
  store i8* %24, i8** %8, align 8, !dbg !1427
  %25 = load i8*, i8** %6, align 8, !dbg !1428
  %26 = load i8*, i8** %8, align 8, !dbg !1429
  %27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i8* %25, i8* %26), !dbg !1430
  store i8* %27, i8** %7, align 8, !dbg !1431
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1432
  %29 = load i8*, i8** %7, align 8, !dbg !1433
  call void @ctcp_send_reply(%struct._IRC_SERVER_REC* %28, i8* %29), !dbg !1434
  %30 = load i8*, i8** %7, align 8, !dbg !1435
  call void @g_free(i8* %30), !dbg !1436
  %31 = load i8*, i8** %8, align 8, !dbg !1437
  call void @g_free(i8* %31), !dbg !1438
  br label %32, !dbg !1439

; <label>:32:                                     ; preds = %22, %20, %13
  ret void, !dbg !1440
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_userinfo(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1441 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1442, metadata !714), !dbg !1443
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1444, metadata !714), !dbg !1445
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1446, metadata !714), !dbg !1447
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1448
  %8 = load i8*, i8** %6, align 8, !dbg !1449
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)), !dbg !1450
  call void @ctcp_send_parsed_reply(%struct._IRC_SERVER_REC* %7, i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* %9), !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_clientinfo(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1453 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.CTCP_CMD_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1454, metadata !714), !dbg !1455
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1456, metadata !714), !dbg !1457
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1458, metadata !714), !dbg !1459
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1460, metadata !714), !dbg !1461
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1462, metadata !714), !dbg !1463
  br label %10, !dbg !1464, !llvm.loop !1465

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1466
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1470
  br i1 %12, label %13, label %14, !dbg !1466

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1471

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ctcp_clientinfo, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1474
  br label %56, !dbg !1477

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1478

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1480, !llvm.loop !1481

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1482
  %19 = icmp ne i8* %18, null, !dbg !1486
  br i1 %19, label %20, label %21, !dbg !1482

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1487

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ctcp_clientinfo, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !1490
  br label %56, !dbg !1493

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1494

; <label>:23:                                     ; preds = %22
  %24 = call %struct._GString* @g_string_new(i8* null), !dbg !1496
  store %struct._GString* %24, %struct._GString** %7, align 8, !dbg !1497
  %25 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1498
  %26 = load i8*, i8** %6, align 8, !dbg !1499
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i8* %26), !dbg !1500
  %27 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !1501
  store %struct._GSList* %27, %struct._GSList** %8, align 8, !dbg !1503
  br label %28, !dbg !1504

; <label>:28:                                     ; preds = %43, %23
  %29 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1505
  %30 = icmp ne %struct._GSList* %29, null, !dbg !1508
  br i1 %30, label %31, label %47, !dbg !1509

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.CTCP_CMD_REC** %9, metadata !1510, metadata !714), !dbg !1512
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1513
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !1514
  %34 = load i8*, i8** %33, align 8, !dbg !1514
  %35 = bitcast i8* %34 to %struct.CTCP_CMD_REC*, !dbg !1513
  store %struct.CTCP_CMD_REC* %35, %struct.CTCP_CMD_REC** %9, align 8, !dbg !1512
  %36 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1515
  %37 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %36, i8 signext 32), !dbg !1516
  %38 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1517
  %39 = load %struct.CTCP_CMD_REC*, %struct.CTCP_CMD_REC** %9, align 8, !dbg !1518
  %40 = getelementptr inbounds %struct.CTCP_CMD_REC, %struct.CTCP_CMD_REC* %39, i32 0, i32 0, !dbg !1519
  %41 = load i8*, i8** %40, align 8, !dbg !1519
  %42 = call %struct._GString* @g_string_append(%struct._GString* %38, i8* %41), !dbg !1520
  br label %43, !dbg !1521

; <label>:43:                                     ; preds = %31
  %44 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1522
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1524
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1524
  store %struct._GSList* %46, %struct._GSList** %8, align 8, !dbg !1525
  br label %28, !dbg !1526, !llvm.loop !1527

; <label>:47:                                     ; preds = %28
  %48 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1529
  %49 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %48, i8 signext 1), !dbg !1530
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1531
  %51 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1532
  %52 = getelementptr inbounds %struct._GString, %struct._GString* %51, i32 0, i32 0, !dbg !1533
  %53 = load i8*, i8** %52, align 8, !dbg !1533
  call void @ctcp_send_reply(%struct._IRC_SERVER_REC* %50, i8* %53), !dbg !1534
  %54 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1535
  %55 = call i8* @g_string_free(%struct._GString* %54, i32 1), !dbg !1536
  br label %56, !dbg !1537

; <label>:56:                                     ; preds = %47, %21, %14
  ret void, !dbg !1538
}

; Function Attrs: nounwind uwtable
define void @ctcp_deinit() #0 !dbg !1540 {
  br label %1, !dbg !1541

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !1542
  %3 = icmp ne %struct._GSList* %2, null, !dbg !1544
  br i1 %3, label %4, label %9, !dbg !1545

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @ctcp_cmds, align 8, !dbg !1546
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !1547
  %7 = load i8*, i8** %6, align 8, !dbg !1547
  %8 = bitcast i8* %7 to %struct.CTCP_CMD_REC*, !dbg !1546
  call void @ctcp_cmd_destroy(%struct.CTCP_CMD_REC* %8), !dbg !1548
  br label %1, !dbg !1549, !llvm.loop !1551

; <label>:9:                                      ; preds = %1
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1552
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1553
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1554
  call void @signal_remove_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1555
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1556
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1557
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_version to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1558
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_time to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1559
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_userinfo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1560
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @ctcp_clientinfo to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1561
  ret void, !dbg !1562
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

declare i32 @server_idle_find(%struct._IRC_SERVER_REC*, i32) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @ascii_strdown(i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ctcp_send_parsed_reply(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1563 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1564, metadata !714), !dbg !1565
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1566, metadata !714), !dbg !1567
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1568, metadata !714), !dbg !1569
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1570, metadata !714), !dbg !1571
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1572, metadata !714), !dbg !1573
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1574, metadata !714), !dbg !1575
  br label %11, !dbg !1576, !llvm.loop !1577

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1578
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1582
  br i1 %13, label %14, label %15, !dbg !1578

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1583

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ctcp_send_parsed_reply, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1586
  br label %45, !dbg !1589

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1590

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1592, !llvm.loop !1593

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1594
  %20 = icmp ne i8* %19, null, !dbg !1598
  br i1 %20, label %21, label %22, !dbg !1594

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1599

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ctcp_send_parsed_reply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0)), !dbg !1602
  br label %45, !dbg !1605

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1606

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !1608
  %26 = load i8, i8* %25, align 1, !dbg !1610
  %27 = sext i8 %26 to i32, !dbg !1610
  %28 = icmp eq i32 %27, 0, !dbg !1611
  br i1 %28, label %29, label %30, !dbg !1612

; <label>:29:                                     ; preds = %24
  br label %45, !dbg !1613

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %8, align 8, !dbg !1614
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1615
  %33 = bitcast %struct._IRC_SERVER_REC* %32 to i8*, !dbg !1615
  %34 = call i8* @module_check_cast(i8* %33, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)), !dbg !1616
  %35 = bitcast i8* %34 to %struct._SERVER_REC*, !dbg !1617
  %36 = call i8* @parse_special_string(i8* %31, %struct._SERVER_REC* %35, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i32* null, i32 0), !dbg !1618
  store i8* %36, i8** %10, align 8, !dbg !1620
  %37 = load i8*, i8** %6, align 8, !dbg !1621
  %38 = load i8*, i8** %7, align 8, !dbg !1622
  %39 = load i8*, i8** %10, align 8, !dbg !1623
  %40 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* %37, i8* %38, i8* %39), !dbg !1624
  store i8* %40, i8** %9, align 8, !dbg !1625
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1626
  %42 = load i8*, i8** %9, align 8, !dbg !1627
  call void @ctcp_send_reply(%struct._IRC_SERVER_REC* %41, i8* %42), !dbg !1628
  %43 = load i8*, i8** %9, align 8, !dbg !1629
  call void @g_free(i8* %43), !dbg !1630
  %44 = load i8*, i8** %10, align 8, !dbg !1631
  call void @g_free(i8* %44), !dbg !1632
  br label %45, !dbg !1633

; <label>:45:                                     ; preds = %30, %29, %22, %15
  ret void, !dbg !1634
}

declare i8* @settings_get_str(i8*) #2

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #2

declare i8* @my_asctime(i64) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #5 !dbg !1635 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1638, metadata !714), !dbg !1639
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1640, metadata !714), !dbg !1641
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1642
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1644
  %7 = load i64, i64* %6, align 8, !dbg !1644
  %8 = add i64 %7, 1, !dbg !1645
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1646
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1647
  %11 = load i64, i64* %10, align 8, !dbg !1647
  %12 = icmp ult i64 %8, %11, !dbg !1648
  br i1 %12, label %13, label %30, !dbg !1649

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1650
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1652
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1653
  %17 = load i64, i64* %16, align 8, !dbg !1654
  %18 = add i64 %17, 1, !dbg !1654
  store i64 %18, i64* %16, align 8, !dbg !1654
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1655
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1656
  %21 = load i8*, i8** %20, align 8, !dbg !1656
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1655
  store i8 %14, i8* %22, align 1, !dbg !1657
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1658
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1659
  %25 = load i64, i64* %24, align 8, !dbg !1659
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1660
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1661
  %28 = load i8*, i8** %27, align 8, !dbg !1661
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1660
  store i8 0, i8* %29, align 1, !dbg !1662
  br label %34, !dbg !1663

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1664
  %32 = load i8, i8* %4, align 1, !dbg !1665
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1666
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1667
  ret %struct._GString* %35, !dbg !1668
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!706, !707}
!llvm.ident = !{!708}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66, globals: !704)
!1 = !DIFile(filename: "line107-ctcp.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !{!67, !68, !78, !81, !77, !83, !84, !86, !93, !94, !397}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "CTCP_CMD_REC", file: !70, line: 36, baseType: !71)
!70 = !DIFile(filename: "ctcp.c", directory: "/home/lichi/Desktop/irssi/task1")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 33, size: 128, align: 64, elements: !72)
!72 = !{!73, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !70, line: 34, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !71, file: !70, line: 35, baseType: !77, size: 32, align: 32, offset: 64)
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !80, line: 46, baseType: !75)
!80 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !80, line: 77, baseType: !67)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !80, line: 48, baseType: !85)
!85 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !87, line: 9, baseType: !88)
!87 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !91, !91, !91, !91, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !80, line: 49, baseType: !77)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !96, line: 6, baseType: !97)
!96 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !98, line: 42, size: 39168, align: 64, elements: !99)
!98 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !{!100, !102, !103, !104, !343, !348, !349, !350, !351, !352, !353, !354, !355, !356, !360, !361, !365, !366, !367, !371, !376, !377, !378, !379, !380, !381, !382, !383, !389, !390, !391, !392, !393, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !701, !703}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !101, line: 3, baseType: !77, size: 32, align: 32)
!101 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !97, file: !101, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !97, file: !101, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !97, file: !101, line: 8, baseType: !105, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !96, line: 5, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !98, line: 24, size: 2496, align: 64, elements: !108)
!108 = !{!109, !111, !112, !113, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !110, line: 3, baseType: !77, size: 32, align: 32)
!110 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !107, file: !110, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !107, file: !110, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !107, file: !110, line: 9, baseType: !74, size: 64, align: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !107, file: !110, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !107, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !107, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !107, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !107, file: !110, line: 13, baseType: !119, size: 16, align: 16, offset: 448)
!119 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !107, file: !110, line: 14, baseType: !74, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !107, file: !110, line: 15, baseType: !74, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !107, file: !110, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !107, file: !110, line: 17, baseType: !74, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !107, file: !110, line: 19, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !127, line: 99, baseType: !128)
!127 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !127, line: 99, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !107, file: !110, line: 19, baseType: !125, size: 64, align: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !107, file: !110, line: 21, baseType: !74, size: 64, align: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !107, file: !110, line: 22, baseType: !74, size: 64, align: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !107, file: !110, line: 23, baseType: !74, size: 64, align: 64, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !107, file: !110, line: 24, baseType: !74, size: 64, align: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !107, file: !110, line: 26, baseType: !74, size: 64, align: 64, offset: 1152)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !107, file: !110, line: 27, baseType: !74, size: 64, align: 64, offset: 1216)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !107, file: !110, line: 28, baseType: !74, size: 64, align: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !107, file: !110, line: 29, baseType: !74, size: 64, align: 64, offset: 1344)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !107, file: !110, line: 30, baseType: !74, size: 64, align: 64, offset: 1408)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !107, file: !110, line: 31, baseType: !74, size: 64, align: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !107, file: !110, line: 32, baseType: !74, size: 64, align: 64, offset: 1536)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !107, file: !110, line: 33, baseType: !74, size: 64, align: 64, offset: 1600)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !107, file: !110, line: 35, baseType: !143, size: 64, align: 64, offset: 1664)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !146)
!146 = !{!147, !148, !288, !289, !294, !295, !296, !297, !298, !307, !308, !309, !313, !314, !315, !316, !317, !318, !319, !320}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !145, file: !4, line: 100, baseType: !93, size: 32, align: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !145, file: !4, line: 101, baseType: !149, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !152)
!152 = !{!153, !175, !181, !187, !191, !275, !279, !284}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !151, file: !4, line: 133, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !143, !78, !158, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !159, line: 66, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!160 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !165, line: 42, baseType: !166)
!165 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !165, line: 44, size: 128, align: 64, elements: !167)
!167 = !{!168, !173, !174}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !166, file: !165, line: 46, baseType: !169, size: 32, align: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !170, line: 36, baseType: !171)
!170 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !159, line: 45, baseType: !172)
!172 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !166, file: !165, line: 47, baseType: !93, size: 32, align: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !166, file: !165, line: 48, baseType: !78, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !151, file: !4, line: 138, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!157, !143, !179, !158, !161, !162}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !151, file: !4, line: 143, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!157, !143, !185, !186, !162}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !159, line: 51, baseType: !85)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !151, file: !4, line: 147, baseType: !188, size: 64, align: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!157, !143, !162}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !151, file: !4, line: 149, baseType: !192, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !143, !274}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !198)
!198 = !{!199, !200, !221, !250, !252, !256, !257, !258, !259, !267, !268, !269, !270}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !197, file: !16, line: 174, baseType: !83, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !197, file: !16, line: 175, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !204)
!204 = !{!205, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !203, file: !16, line: 198, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !83}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !203, file: !16, line: 199, baseType: !206, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !203, file: !16, line: 200, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !83, !195, !214, !220}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !83}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !80, line: 50, baseType: !93)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !197, file: !16, line: 177, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !226)
!226 = !{!227, !232, !236, !240, !244, !245}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !225, file: !16, line: 216, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!219, !195, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !225, file: !16, line: 218, baseType: !233, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!219, !195}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !225, file: !16, line: 219, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!219, !195, !215, !83}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !225, file: !16, line: 222, baseType: !241, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !195}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !225, file: !16, line: 226, baseType: !215, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !225, file: !16, line: 227, baseType: !246, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !197, file: !16, line: 178, baseType: !251, size: 32, align: 32, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !80, line: 55, baseType: !172)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !197, file: !16, line: 180, baseType: !253, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !197, file: !16, line: 182, baseType: !93, size: 32, align: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !16, line: 183, baseType: !251, size: 32, align: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !197, file: !16, line: 184, baseType: !251, size: 32, align: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !197, file: !16, line: 186, baseType: !260, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !262, line: 37, baseType: !263)
!262 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !262, line: 39, size: 128, align: 64, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !263, file: !262, line: 41, baseType: !83, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !262, line: 42, baseType: !260, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !16, line: 188, baseType: !195, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !16, line: 189, baseType: !195, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !16, line: 191, baseType: !74, size: 64, align: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !197, file: !16, line: 193, baseType: !271, size: 64, align: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !151, file: !4, line: 151, baseType: !276, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !143}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !151, file: !4, line: 152, baseType: !280, size: 64, align: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!157, !143, !283, !162}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !151, file: !4, line: 155, baseType: !285, size: 64, align: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!283, !143}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !145, file: !4, line: 103, baseType: !78, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !145, file: !4, line: 104, baseType: !290, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !291, line: 77, baseType: !292)
!291 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !291, line: 77, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !145, file: !4, line: 105, baseType: !290, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !145, file: !4, line: 106, baseType: !78, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !145, file: !4, line: 107, baseType: !251, size: 32, align: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !145, file: !4, line: 109, baseType: !158, size: 64, align: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !145, file: !4, line: 110, baseType: !299, size: 64, align: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !301, line: 39, baseType: !302)
!301 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !301, line: 41, size: 192, align: 64, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !302, file: !301, line: 43, baseType: !78, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !302, file: !301, line: 44, baseType: !158, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !302, file: !301, line: 45, baseType: !158, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !145, file: !4, line: 111, baseType: !299, size: 64, align: 64, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !145, file: !4, line: 112, baseType: !299, size: 64, align: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !145, file: !4, line: 113, baseType: !310, size: 48, align: 8, offset: 704)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 48, align: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 6)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !145, file: !4, line: 117, baseType: !251, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !145, file: !4, line: 118, baseType: !251, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !145, file: !4, line: 119, baseType: !251, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !145, file: !4, line: 120, baseType: !251, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !145, file: !4, line: 121, baseType: !251, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !145, file: !4, line: 122, baseType: !251, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !145, file: !4, line: 124, baseType: !83, size: 64, align: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !145, file: !4, line: 125, baseType: !83, size: 64, align: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !107, file: !110, line: 38, baseType: !172, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !107, file: !110, line: 39, baseType: !172, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !107, file: !110, line: 40, baseType: !172, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !107, file: !110, line: 41, baseType: !172, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !107, file: !110, line: 42, baseType: !172, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !107, file: !110, line: 43, baseType: !172, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !107, file: !110, line: 44, baseType: !172, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !107, file: !110, line: 45, baseType: !172, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !107, file: !110, line: 46, baseType: !74, size: 64, align: 64, offset: 1792)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !107, file: !110, line: 47, baseType: !74, size: 64, align: 64, offset: 1856)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !107, file: !98, line: 27, baseType: !74, size: 64, align: 64, offset: 1920)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !107, file: !98, line: 28, baseType: !74, size: 64, align: 64, offset: 1984)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !107, file: !98, line: 30, baseType: !77, size: 32, align: 32, offset: 2048)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !107, file: !98, line: 31, baseType: !74, size: 64, align: 64, offset: 2112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !107, file: !98, line: 32, baseType: !74, size: 64, align: 64, offset: 2176)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !107, file: !98, line: 34, baseType: !77, size: 32, align: 32, offset: 2240)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !107, file: !98, line: 35, baseType: !77, size: 32, align: 32, offset: 2272)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !107, file: !98, line: 36, baseType: !77, size: 32, align: 32, offset: 2304)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !107, file: !98, line: 38, baseType: !77, size: 32, align: 32, offset: 2336)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !107, file: !98, line: 38, baseType: !77, size: 32, align: 32, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !107, file: !98, line: 38, baseType: !77, size: 32, align: 32, offset: 2400)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !107, file: !98, line: 38, baseType: !77, size: 32, align: 32, offset: 2432)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !97, file: !101, line: 9, baseType: !344, size: 64, align: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !345, line: 75, baseType: !346)
!345 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !347, line: 139, baseType: !85)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !97, file: !101, line: 10, baseType: !344, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !97, file: !101, line: 12, baseType: !74, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !97, file: !101, line: 13, baseType: !74, size: 64, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !97, file: !101, line: 15, baseType: !172, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !97, file: !101, line: 16, baseType: !172, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !97, file: !101, line: 17, baseType: !172, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !97, file: !101, line: 18, baseType: !172, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !97, file: !101, line: 19, baseType: !172, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !97, file: !101, line: 21, baseType: !357, size: 64, align: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !127, line: 102, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !127, line: 102, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !97, file: !101, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !97, file: !101, line: 25, baseType: !362, size: 128, align: 64, offset: 640)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, align: 64, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !97, file: !101, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !97, file: !101, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !97, file: !101, line: 29, baseType: !368, size: 64, align: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !127, line: 103, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !127, line: 103, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !97, file: !101, line: 30, baseType: !372, size: 64, align: 64, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !374, line: 37, baseType: !375)
!374 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !374, line: 37, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !97, file: !101, line: 32, baseType: !74, size: 64, align: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !97, file: !101, line: 33, baseType: !74, size: 64, align: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !97, file: !101, line: 34, baseType: !74, size: 64, align: 64, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !97, file: !101, line: 35, baseType: !172, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !97, file: !101, line: 36, baseType: !172, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !97, file: !101, line: 37, baseType: !172, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !97, file: !101, line: 38, baseType: !172, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !97, file: !101, line: 40, baseType: !384, size: 128, align: 64, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !80, line: 504, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !80, line: 506, size: 128, align: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !385, file: !80, line: 508, baseType: !84, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !385, file: !80, line: 509, baseType: !84, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !97, file: !101, line: 41, baseType: !344, size: 64, align: 64, offset: 1344)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !97, file: !101, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !97, file: !101, line: 44, baseType: !260, size: 64, align: 64, offset: 1472)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !97, file: !101, line: 45, baseType: !260, size: 64, align: 64, offset: 1536)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !97, file: !101, line: 53, baseType: !394, size: 64, align: 64, offset: 1600)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !81, !77}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !127, line: 107, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !400, line: 30, size: 2240, align: 64, elements: !401)
!400 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!401 = !{!402, !403, !404, !405, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !481, !485, !489, !493, !498, !577, !584, !588}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !399, file: !101, line: 3, baseType: !77, size: 32, align: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !399, file: !101, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !399, file: !101, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !399, file: !101, line: 8, baseType: !406, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !127, line: 113, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !400, line: 25, size: 1920, align: 64, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !110, line: 3, baseType: !77, size: 32, align: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !408, file: !110, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !408, file: !110, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !408, file: !110, line: 9, baseType: !74, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !408, file: !110, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !408, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !408, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !408, file: !110, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !408, file: !110, line: 13, baseType: !119, size: 16, align: 16, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !408, file: !110, line: 14, baseType: !74, size: 64, align: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !408, file: !110, line: 15, baseType: !74, size: 64, align: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !408, file: !110, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !408, file: !110, line: 17, baseType: !74, size: 64, align: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !408, file: !110, line: 19, baseType: !125, size: 64, align: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !408, file: !110, line: 19, baseType: !125, size: 64, align: 64, offset: 832)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !408, file: !110, line: 21, baseType: !74, size: 64, align: 64, offset: 896)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !408, file: !110, line: 22, baseType: !74, size: 64, align: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !408, file: !110, line: 23, baseType: !74, size: 64, align: 64, offset: 1024)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !408, file: !110, line: 24, baseType: !74, size: 64, align: 64, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !408, file: !110, line: 26, baseType: !74, size: 64, align: 64, offset: 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !408, file: !110, line: 27, baseType: !74, size: 64, align: 64, offset: 1216)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !408, file: !110, line: 28, baseType: !74, size: 64, align: 64, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !408, file: !110, line: 29, baseType: !74, size: 64, align: 64, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !408, file: !110, line: 30, baseType: !74, size: 64, align: 64, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !408, file: !110, line: 31, baseType: !74, size: 64, align: 64, offset: 1472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !408, file: !110, line: 32, baseType: !74, size: 64, align: 64, offset: 1536)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !408, file: !110, line: 33, baseType: !74, size: 64, align: 64, offset: 1600)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !408, file: !110, line: 35, baseType: !143, size: 64, align: 64, offset: 1664)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !408, file: !110, line: 38, baseType: !172, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !408, file: !110, line: 39, baseType: !172, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !408, file: !110, line: 40, baseType: !172, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !408, file: !110, line: 41, baseType: !172, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !408, file: !110, line: 42, baseType: !172, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !408, file: !110, line: 43, baseType: !172, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !408, file: !110, line: 44, baseType: !172, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !408, file: !110, line: 45, baseType: !172, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !408, file: !110, line: 46, baseType: !74, size: 64, align: 64, offset: 1792)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !408, file: !110, line: 47, baseType: !74, size: 64, align: 64, offset: 1856)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !399, file: !101, line: 9, baseType: !344, size: 64, align: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !399, file: !101, line: 10, baseType: !344, size: 64, align: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !399, file: !101, line: 12, baseType: !74, size: 64, align: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !399, file: !101, line: 13, baseType: !74, size: 64, align: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !399, file: !101, line: 15, baseType: !172, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !399, file: !101, line: 16, baseType: !172, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !399, file: !101, line: 17, baseType: !172, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !399, file: !101, line: 18, baseType: !172, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !399, file: !101, line: 19, baseType: !172, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !399, file: !101, line: 21, baseType: !357, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !399, file: !101, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !399, file: !101, line: 25, baseType: !362, size: 128, align: 64, offset: 640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !399, file: !101, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !399, file: !101, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !399, file: !101, line: 29, baseType: !368, size: 64, align: 64, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !399, file: !101, line: 30, baseType: !372, size: 64, align: 64, offset: 896)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !399, file: !101, line: 32, baseType: !74, size: 64, align: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !399, file: !101, line: 33, baseType: !74, size: 64, align: 64, offset: 1024)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !399, file: !101, line: 34, baseType: !74, size: 64, align: 64, offset: 1088)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !399, file: !101, line: 35, baseType: !172, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !399, file: !101, line: 36, baseType: !172, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !399, file: !101, line: 37, baseType: !172, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !399, file: !101, line: 38, baseType: !172, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !399, file: !101, line: 40, baseType: !384, size: 128, align: 64, offset: 1216)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !399, file: !101, line: 41, baseType: !344, size: 64, align: 64, offset: 1344)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !399, file: !101, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !399, file: !101, line: 44, baseType: !260, size: 64, align: 64, offset: 1472)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !399, file: !101, line: 45, baseType: !260, size: 64, align: 64, offset: 1536)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !399, file: !101, line: 53, baseType: !394, size: 64, align: 64, offset: 1600)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !399, file: !101, line: 55, baseType: !478, size: 64, align: 64, offset: 1664)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!77, !397, !75}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !399, file: !101, line: 57, baseType: !482, size: 64, align: 64, offset: 1728)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!77, !397, !81}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !399, file: !101, line: 60, baseType: !486, size: 64, align: 64, offset: 1792)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!81, !397}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !399, file: !101, line: 62, baseType: !490, size: 64, align: 64, offset: 1856)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !397, !81, !81, !77}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !399, file: !101, line: 65, baseType: !494, size: 64, align: 64, offset: 1920)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !397, !81, !81}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !399, file: !101, line: 69, baseType: !499, size: 64, align: 64, offset: 1984)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !397, !81}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !127, line: 109, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !505, line: 15, size: 1408, align: 64, elements: !506)
!505 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!506 = !{!507, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !525, !529, !531, !532, !533, !534, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !508, line: 3, baseType: !77, size: 32, align: 32)
!508 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !504, file: !508, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !504, file: !508, line: 5, baseType: !372, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !504, file: !508, line: 7, baseType: !67, size: 64, align: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !504, file: !508, line: 8, baseType: !397, size: 64, align: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !504, file: !508, line: 9, baseType: !74, size: 64, align: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !508, line: 10, baseType: !74, size: 64, align: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !504, file: !508, line: 11, baseType: !344, size: 64, align: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !504, file: !508, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !504, file: !508, line: 13, baseType: !74, size: 64, align: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !504, file: !508, line: 15, baseType: !519, size: 64, align: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !127, line: 108, baseType: !524)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !127, line: 108, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !504, file: !508, line: 17, baseType: !526, size: 64, align: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!81, !522}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !504, file: !530, line: 5, baseType: !74, size: 64, align: 64, offset: 704)
!530 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !504, file: !530, line: 6, baseType: !74, size: 64, align: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !504, file: !530, line: 7, baseType: !344, size: 64, align: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !504, file: !530, line: 9, baseType: !372, size: 64, align: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !504, file: !530, line: 10, baseType: !535, size: 64, align: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !127, line: 111, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !538, line: 13, size: 576, align: 64, elements: !539)
!538 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = !{!540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !558, !559}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !541, line: 3, baseType: !77, size: 32, align: 32)
!541 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !537, file: !541, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !537, file: !541, line: 6, baseType: !344, size: 64, align: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !537, file: !541, line: 8, baseType: !74, size: 64, align: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !537, file: !541, line: 9, baseType: !74, size: 64, align: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !537, file: !541, line: 10, baseType: !74, size: 64, align: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !537, file: !541, line: 11, baseType: !77, size: 32, align: 32, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !537, file: !541, line: 14, baseType: !172, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !537, file: !541, line: 15, baseType: !172, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !537, file: !541, line: 18, baseType: !172, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !537, file: !541, line: 19, baseType: !172, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !537, file: !541, line: 20, baseType: !172, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !537, file: !541, line: 21, baseType: !172, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !537, file: !541, line: 22, baseType: !555, size: 64, align: 8, offset: 360)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, align: 8, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 8)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !537, file: !541, line: 26, baseType: !67, size: 64, align: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !541, line: 28, baseType: !535, size: 64, align: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !504, file: !530, line: 12, baseType: !172, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !504, file: !530, line: 13, baseType: !74, size: 64, align: 64, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !504, file: !530, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !504, file: !530, line: 15, baseType: !74, size: 64, align: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !504, file: !530, line: 17, baseType: !172, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !504, file: !530, line: 18, baseType: !172, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !504, file: !530, line: 19, baseType: !172, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !504, file: !530, line: 20, baseType: !172, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !504, file: !530, line: 22, baseType: !172, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !504, file: !530, line: 23, baseType: !172, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !504, file: !530, line: 24, baseType: !172, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !504, file: !530, line: 25, baseType: !172, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !504, file: !530, line: 26, baseType: !172, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !504, file: !530, line: 31, baseType: !574, size: 64, align: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!74, !502}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !399, file: !101, line: 70, baseType: !578, size: 64, align: 64, offset: 2048)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!581, !397, !81}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !127, line: 110, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !127, line: 110, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !399, file: !101, line: 71, baseType: !585, size: 64, align: 64, offset: 2112)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!77, !81, !81}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !399, file: !101, line: 73, baseType: !585, size: 64, align: 64, offset: 2176)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !97, file: !101, line: 55, baseType: !478, size: 64, align: 64, offset: 1664)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !97, file: !101, line: 57, baseType: !482, size: 64, align: 64, offset: 1728)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !97, file: !101, line: 60, baseType: !486, size: 64, align: 64, offset: 1792)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !97, file: !101, line: 62, baseType: !490, size: 64, align: 64, offset: 1856)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !97, file: !101, line: 65, baseType: !494, size: 64, align: 64, offset: 1920)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !97, file: !101, line: 69, baseType: !499, size: 64, align: 64, offset: 1984)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !97, file: !101, line: 70, baseType: !578, size: 64, align: 64, offset: 2048)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !97, file: !101, line: 71, baseType: !585, size: 64, align: 64, offset: 2112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !97, file: !101, line: 73, baseType: !585, size: 64, align: 64, offset: 2176)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !97, file: !98, line: 46, baseType: !260, size: 64, align: 64, offset: 2240)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !97, file: !98, line: 47, baseType: !260, size: 64, align: 64, offset: 2304)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !97, file: !98, line: 48, baseType: !601, size: 64, align: 64, offset: 2368)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !96, line: 8, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !96, line: 8, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !97, file: !98, line: 49, baseType: !260, size: 64, align: 64, offset: 2432)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !97, file: !98, line: 51, baseType: !74, size: 64, align: 64, offset: 2496)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !97, file: !98, line: 53, baseType: !74, size: 64, align: 64, offset: 2560)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !97, file: !98, line: 54, baseType: !74, size: 64, align: 64, offset: 2624)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !97, file: !98, line: 55, baseType: !74, size: 64, align: 64, offset: 2688)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !97, file: !98, line: 56, baseType: !74, size: 64, align: 64, offset: 2752)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !97, file: !98, line: 57, baseType: !77, size: 32, align: 32, offset: 2816)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !97, file: !98, line: 59, baseType: !172, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !97, file: !98, line: 60, baseType: !172, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !97, file: !98, line: 62, baseType: !172, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !97, file: !98, line: 63, baseType: !172, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !97, file: !98, line: 64, baseType: !172, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !97, file: !98, line: 65, baseType: !172, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !97, file: !98, line: 66, baseType: !172, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !97, file: !98, line: 67, baseType: !172, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !97, file: !98, line: 68, baseType: !172, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !97, file: !98, line: 69, baseType: !172, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !97, file: !98, line: 70, baseType: !172, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !97, file: !98, line: 71, baseType: !172, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !97, file: !98, line: 72, baseType: !172, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !97, file: !98, line: 74, baseType: !77, size: 32, align: 32, offset: 2880)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !97, file: !98, line: 75, baseType: !77, size: 32, align: 32, offset: 2912)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !97, file: !98, line: 76, baseType: !77, size: 32, align: 32, offset: 2944)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !97, file: !98, line: 77, baseType: !77, size: 32, align: 32, offset: 2976)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !97, file: !98, line: 79, baseType: !372, size: 64, align: 64, offset: 3008)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !97, file: !98, line: 80, baseType: !260, size: 64, align: 64, offset: 3072)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !97, file: !98, line: 81, baseType: !260, size: 64, align: 64, offset: 3136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !97, file: !98, line: 83, baseType: !299, size: 64, align: 64, offset: 3200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !97, file: !98, line: 84, baseType: !251, size: 32, align: 32, offset: 3264)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !97, file: !98, line: 87, baseType: !77, size: 32, align: 32, offset: 3296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !97, file: !98, line: 91, baseType: !260, size: 64, align: 64, offset: 3328)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !97, file: !98, line: 92, baseType: !384, size: 128, align: 64, offset: 3392)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !97, file: !98, line: 93, baseType: !384, size: 128, align: 64, offset: 3520)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !97, file: !98, line: 95, baseType: !77, size: 32, align: 32, offset: 3648)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !97, file: !98, line: 96, baseType: !77, size: 32, align: 32, offset: 3680)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !97, file: !98, line: 97, baseType: !77, size: 32, align: 32, offset: 3712)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !97, file: !98, line: 100, baseType: !260, size: 64, align: 64, offset: 3776)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !97, file: !98, line: 103, baseType: !260, size: 64, align: 64, offset: 3840)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !97, file: !98, line: 106, baseType: !260, size: 64, align: 64, offset: 3904)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !97, file: !98, line: 108, baseType: !372, size: 64, align: 64, offset: 3968)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !97, file: !98, line: 109, baseType: !260, size: 64, align: 64, offset: 4032)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !97, file: !98, line: 111, baseType: !260, size: 64, align: 64, offset: 4096)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !97, file: !98, line: 114, baseType: !67, size: 64, align: 64, offset: 4160)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !97, file: !98, line: 116, baseType: !372, size: 64, align: 64, offset: 4224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !97, file: !98, line: 117, baseType: !649, size: 32768, align: 64, offset: 4288)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 32768, align: 64, elements: !699)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !651, line: 10, size: 128, align: 64, elements: !652)
!651 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!652 = !{!653, !698}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !650, file: !651, line: 11, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !651, line: 7, baseType: !656)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658, !81, !75, !75, !74, !299}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !96, line: 7, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !661, line: 15, size: 1600, align: 64, elements: !662)
!661 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !508, line: 3, baseType: !77, size: 32, align: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !660, file: !508, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !660, file: !508, line: 5, baseType: !372, size: 64, align: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !660, file: !508, line: 7, baseType: !67, size: 64, align: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !660, file: !508, line: 8, baseType: !94, size: 64, align: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !660, file: !508, line: 9, baseType: !74, size: 64, align: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !508, line: 10, baseType: !74, size: 64, align: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !660, file: !508, line: 11, baseType: !344, size: 64, align: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !660, file: !508, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !660, file: !508, line: 13, baseType: !74, size: 64, align: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !660, file: !508, line: 15, baseType: !519, size: 64, align: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !660, file: !508, line: 17, baseType: !526, size: 64, align: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !660, file: !530, line: 5, baseType: !74, size: 64, align: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !660, file: !530, line: 6, baseType: !74, size: 64, align: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !660, file: !530, line: 7, baseType: !344, size: 64, align: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !660, file: !530, line: 9, baseType: !372, size: 64, align: 64, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !660, file: !530, line: 10, baseType: !535, size: 64, align: 64, offset: 960)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !660, file: !530, line: 12, baseType: !172, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !660, file: !530, line: 13, baseType: !74, size: 64, align: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !660, file: !530, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !660, file: !530, line: 15, baseType: !74, size: 64, align: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !660, file: !530, line: 17, baseType: !172, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !660, file: !530, line: 18, baseType: !172, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !660, file: !530, line: 19, baseType: !172, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !660, file: !530, line: 20, baseType: !172, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !660, file: !530, line: 22, baseType: !172, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !660, file: !530, line: 23, baseType: !172, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !660, file: !530, line: 24, baseType: !172, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !660, file: !530, line: 25, baseType: !172, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !660, file: !530, line: 26, baseType: !172, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !660, file: !530, line: 31, baseType: !574, size: 64, align: 64, offset: 1344)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !660, file: !661, line: 18, baseType: !260, size: 64, align: 64, offset: 1408)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !660, file: !661, line: 20, baseType: !344, size: 64, align: 64, offset: 1472)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !660, file: !661, line: 21, baseType: !77, size: 32, align: 32, offset: 1536)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !660, file: !661, line: 22, baseType: !77, size: 32, align: 32, offset: 1568)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !650, file: !651, line: 12, baseType: !75, size: 8, align: 8, offset: 64)
!699 = !{!700}
!700 = !DISubrange(count: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !97, file: !98, line: 118, baseType: !702, size: 2048, align: 8, offset: 37056)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2048, align: 8, elements: !699)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !97, file: !98, line: 120, baseType: !585, size: 64, align: 64, offset: 39104)
!704 = !{!705}
!705 = distinct !DIGlobalVariable(name: "ctcp_cmds", scope: !0, file: !70, line: 38, type: !260, isLocal: true, isDefinition: true, variable: %struct._GSList** @ctcp_cmds)
!706 = !{i32 2, !"Dwarf Version", i32 4}
!707 = !{i32 2, !"Debug Info Version", i32 3}
!708 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!709 = distinct !DISubprogram(name: "ctcp_register", scope: !70, file: !70, line: 54, type: !710, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !81}
!712 = !{}
!713 = !DILocalVariable(name: "name", arg: 1, scope: !709, file: !70, line: 54, type: !81)
!714 = !DIExpression()
!715 = !DILocation(line: 54, column: 32, scope: !709)
!716 = !DILocalVariable(name: "rec", scope: !709, file: !70, line: 56, type: !68)
!717 = !DILocation(line: 56, column: 16, scope: !709)
!718 = !DILocation(line: 58, column: 22, scope: !709)
!719 = !DILocation(line: 58, column: 8, scope: !709)
!720 = !DILocation(line: 58, column: 6, scope: !709)
!721 = !DILocation(line: 59, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !709, file: !70, line: 59, column: 6)
!723 = !DILocation(line: 59, column: 10, scope: !722)
!724 = !DILocation(line: 59, column: 6, scope: !709)
!725 = !DILocation(line: 60, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !722, file: !70, line: 59, column: 18)
!727 = !DILocation(line: 60, column: 10, scope: !726)
!728 = !DILocation(line: 60, column: 7, scope: !726)
!729 = !DILocation(line: 61, column: 29, scope: !726)
!730 = !DILocation(line: 61, column: 15, scope: !726)
!731 = !DILocation(line: 61, column: 3, scope: !726)
!732 = !DILocation(line: 61, column: 8, scope: !726)
!733 = !DILocation(line: 61, column: 13, scope: !726)
!734 = !DILocation(line: 63, column: 30, scope: !726)
!735 = !DILocation(line: 63, column: 41, scope: !726)
!736 = !DILocation(line: 63, column: 15, scope: !726)
!737 = !DILocation(line: 63, column: 13, scope: !726)
!738 = !DILocation(line: 64, column: 2, scope: !726)
!739 = !DILocation(line: 66, column: 2, scope: !709)
!740 = !DILocation(line: 66, column: 7, scope: !709)
!741 = !DILocation(line: 66, column: 15, scope: !709)
!742 = !DILocation(line: 67, column: 1, scope: !709)
!743 = distinct !DISubprogram(name: "ctcp_cmd_find", scope: !70, file: !70, line: 40, type: !744, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!744 = !DISubroutineType(types: !745)
!745 = !{!68, !81}
!746 = !DILocalVariable(name: "name", arg: 1, scope: !743, file: !70, line: 40, type: !81)
!747 = !DILocation(line: 40, column: 48, scope: !743)
!748 = !DILocalVariable(name: "tmp", scope: !743, file: !70, line: 42, type: !260)
!749 = !DILocation(line: 42, column: 10, scope: !743)
!750 = !DILocation(line: 44, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !743, file: !70, line: 44, column: 2)
!752 = !DILocation(line: 44, column: 11, scope: !751)
!753 = !DILocation(line: 44, column: 7, scope: !751)
!754 = !DILocation(line: 44, column: 24, scope: !755)
!755 = !DILexicalBlockFile(scope: !756, file: !70, discriminator: 1)
!756 = distinct !DILexicalBlock(scope: !751, file: !70, line: 44, column: 2)
!757 = !DILocation(line: 44, column: 28, scope: !755)
!758 = !DILocation(line: 44, column: 2, scope: !755)
!759 = !DILocalVariable(name: "rec", scope: !760, file: !70, line: 45, type: !68)
!760 = distinct !DILexicalBlock(scope: !756, file: !70, line: 44, column: 53)
!761 = !DILocation(line: 45, column: 17, scope: !760)
!762 = !DILocation(line: 45, column: 23, scope: !760)
!763 = !DILocation(line: 45, column: 28, scope: !760)
!764 = !DILocation(line: 47, column: 26, scope: !765)
!765 = distinct !DILexicalBlock(scope: !760, file: !70, line: 47, column: 7)
!766 = !DILocation(line: 47, column: 31, scope: !765)
!767 = !DILocation(line: 47, column: 37, scope: !765)
!768 = !DILocation(line: 47, column: 7, scope: !765)
!769 = !DILocation(line: 47, column: 43, scope: !765)
!770 = !DILocation(line: 47, column: 7, scope: !760)
!771 = !DILocation(line: 48, column: 32, scope: !765)
!772 = !DILocation(line: 48, column: 25, scope: !765)
!773 = !DILocation(line: 49, column: 2, scope: !760)
!774 = !DILocation(line: 44, column: 42, scope: !775)
!775 = !DILexicalBlockFile(scope: !756, file: !70, discriminator: 2)
!776 = !DILocation(line: 44, column: 47, scope: !775)
!777 = !DILocation(line: 44, column: 40, scope: !775)
!778 = !DILocation(line: 44, column: 2, scope: !775)
!779 = distinct !{!779, !780}
!780 = !DILocation(line: 44, column: 2, scope: !743)
!781 = !DILocation(line: 51, column: 9, scope: !743)
!782 = !DILocation(line: 52, column: 1, scope: !743)
!783 = distinct !DISubprogram(name: "ctcp_unregister", scope: !70, file: !70, line: 76, type: !710, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!784 = !DILocalVariable(name: "name", arg: 1, scope: !783, file: !70, line: 76, type: !81)
!785 = !DILocation(line: 76, column: 34, scope: !783)
!786 = !DILocalVariable(name: "rec", scope: !783, file: !70, line: 78, type: !68)
!787 = !DILocation(line: 78, column: 16, scope: !783)
!788 = !DILocation(line: 80, column: 22, scope: !783)
!789 = !DILocation(line: 80, column: 8, scope: !783)
!790 = !DILocation(line: 80, column: 6, scope: !783)
!791 = !DILocation(line: 81, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !70, line: 81, column: 6)
!793 = !DILocation(line: 81, column: 10, scope: !792)
!794 = !DILocation(line: 81, column: 17, scope: !792)
!795 = !DILocation(line: 81, column: 22, scope: !796)
!796 = !DILexicalBlockFile(scope: !792, file: !70, discriminator: 1)
!797 = !DILocation(line: 81, column: 27, scope: !796)
!798 = !DILocation(line: 81, column: 20, scope: !796)
!799 = !DILocation(line: 81, column: 36, scope: !796)
!800 = !DILocation(line: 81, column: 6, scope: !796)
!801 = !DILocation(line: 82, column: 34, scope: !792)
!802 = !DILocation(line: 82, column: 17, scope: !792)
!803 = !DILocation(line: 83, column: 1, scope: !783)
!804 = distinct !DISubprogram(name: "ctcp_cmd_destroy", scope: !70, file: !70, line: 69, type: !805, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !68}
!807 = !DILocalVariable(name: "rec", arg: 1, scope: !804, file: !70, line: 69, type: !68)
!808 = !DILocation(line: 69, column: 44, scope: !804)
!809 = !DILocation(line: 71, column: 29, scope: !804)
!810 = !DILocation(line: 71, column: 40, scope: !804)
!811 = !DILocation(line: 71, column: 14, scope: !804)
!812 = !DILocation(line: 71, column: 12, scope: !804)
!813 = !DILocation(line: 72, column: 9, scope: !804)
!814 = !DILocation(line: 72, column: 14, scope: !804)
!815 = !DILocation(line: 72, column: 2, scope: !804)
!816 = !DILocation(line: 73, column: 9, scope: !804)
!817 = !DILocation(line: 73, column: 2, scope: !804)
!818 = !DILocation(line: 74, column: 1, scope: !804)
!819 = distinct !DISubprogram(name: "ctcp_send_reply", scope: !70, file: !70, line: 99, type: !820, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !94, !81}
!822 = !DILocalVariable(name: "server", arg: 1, scope: !819, file: !70, line: 99, type: !94)
!823 = !DILocation(line: 99, column: 38, scope: !819)
!824 = !DILocalVariable(name: "data", arg: 2, scope: !819, file: !70, line: 99, type: !81)
!825 = !DILocation(line: 99, column: 58, scope: !819)
!826 = !DILocalVariable(name: "tag", scope: !819, file: !70, line: 101, type: !77)
!827 = !DILocation(line: 101, column: 6, scope: !819)
!828 = !DILocation(line: 103, column: 2, scope: !819)
!829 = distinct !{!829, !828}
!830 = !DILocation(line: 103, column: 10, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !70, discriminator: 1)
!832 = distinct !DILexicalBlock(scope: !833, file: !70, line: 103, column: 10)
!833 = distinct !DILexicalBlock(scope: !819, file: !70, line: 103, column: 4)
!834 = !DILocation(line: 103, column: 17, scope: !831)
!835 = !DILocation(line: 103, column: 5, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !70, discriminator: 2)
!837 = distinct !DILexicalBlock(scope: !832, file: !70, line: 103, column: 3)
!838 = !DILocation(line: 103, column: 14, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !70, discriminator: 3)
!840 = distinct !DILexicalBlock(scope: !832, file: !70, line: 103, column: 12)
!841 = !DILocation(line: 103, column: 101, scope: !839)
!842 = !DILocation(line: 103, column: 112, scope: !843)
!843 = !DILexicalBlockFile(scope: !833, file: !70, discriminator: 4)
!844 = !DILocation(line: 104, column: 2, scope: !819)
!845 = distinct !{!845, !844}
!846 = !DILocation(line: 104, column: 10, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !70, discriminator: 1)
!848 = distinct !DILexicalBlock(scope: !849, file: !70, line: 104, column: 10)
!849 = distinct !DILexicalBlock(scope: !819, file: !70, line: 104, column: 4)
!850 = !DILocation(line: 104, column: 15, scope: !847)
!851 = !DILocation(line: 104, column: 5, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !70, discriminator: 2)
!853 = distinct !DILexicalBlock(scope: !848, file: !70, line: 104, column: 3)
!854 = !DILocation(line: 104, column: 14, scope: !855)
!855 = !DILexicalBlockFile(scope: !856, file: !70, discriminator: 3)
!856 = distinct !DILexicalBlock(scope: !848, file: !70, line: 104, column: 12)
!857 = !DILocation(line: 104, column: 99, scope: !855)
!858 = !DILocation(line: 104, column: 110, scope: !859)
!859 = !DILexicalBlockFile(scope: !849, file: !70, discriminator: 4)
!860 = !DILocation(line: 106, column: 19, scope: !819)
!861 = !DILocation(line: 106, column: 2, scope: !819)
!862 = !DILocation(line: 108, column: 26, scope: !863)
!863 = distinct !DILexicalBlock(scope: !819, file: !70, line: 108, column: 6)
!864 = !DILocation(line: 108, column: 34, scope: !863)
!865 = !DILocation(line: 108, column: 11, scope: !863)
!866 = !DILocation(line: 109, column: 6, scope: !863)
!867 = !DILocation(line: 108, column: 45, scope: !863)
!868 = !DILocation(line: 108, column: 6, scope: !819)
!869 = !DILocation(line: 110, column: 3, scope: !863)
!870 = !DILocation(line: 113, column: 30, scope: !819)
!871 = !DILocation(line: 113, column: 38, scope: !819)
!872 = !DILocation(line: 113, column: 8, scope: !819)
!873 = !DILocation(line: 113, column: 6, scope: !819)
!874 = !DILocation(line: 115, column: 18, scope: !819)
!875 = !DILocation(line: 115, column: 26, scope: !819)
!876 = !DILocation(line: 115, column: 58, scope: !819)
!877 = !DILocation(line: 115, column: 49, scope: !819)
!878 = !DILocation(line: 115, column: 38, scope: !819)
!879 = !DILocation(line: 115, column: 3, scope: !819)
!880 = !DILocation(line: 114, column: 2, scope: !819)
!881 = !DILocation(line: 114, column: 10, scope: !819)
!882 = !DILocation(line: 114, column: 20, scope: !819)
!883 = !DILocation(line: 116, column: 1, scope: !819)
!884 = !DILocation(line: 116, column: 1, scope: !885)
!885 = !DILexicalBlockFile(scope: !819, file: !70, discriminator: 1)
!886 = distinct !DISubprogram(name: "ctcp_queue_clean", scope: !70, file: !70, line: 85, type: !887, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !94}
!889 = !DILocalVariable(name: "server", arg: 1, scope: !886, file: !70, line: 85, type: !94)
!890 = !DILocation(line: 85, column: 46, scope: !886)
!891 = !DILocalVariable(name: "tmp", scope: !886, file: !70, line: 87, type: !260)
!892 = !DILocation(line: 87, column: 10, scope: !886)
!893 = !DILocalVariable(name: "next", scope: !886, file: !70, line: 87, type: !260)
!894 = !DILocation(line: 87, column: 16, scope: !886)
!895 = !DILocation(line: 89, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !886, file: !70, line: 89, column: 2)
!897 = !DILocation(line: 89, column: 21, scope: !896)
!898 = !DILocation(line: 89, column: 11, scope: !896)
!899 = !DILocation(line: 89, column: 7, scope: !896)
!900 = !DILocation(line: 89, column: 32, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !70, discriminator: 1)
!902 = distinct !DILexicalBlock(scope: !896, file: !70, line: 89, column: 2)
!903 = !DILocation(line: 89, column: 36, scope: !901)
!904 = !DILocation(line: 89, column: 2, scope: !901)
!905 = !DILocation(line: 90, column: 10, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !70, line: 89, column: 56)
!907 = !DILocation(line: 90, column: 15, scope: !906)
!908 = !DILocation(line: 90, column: 8, scope: !906)
!909 = !DILocation(line: 91, column: 25, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !70, line: 91, column: 7)
!911 = !DILocation(line: 91, column: 50, scope: !910)
!912 = !DILocation(line: 91, column: 55, scope: !910)
!913 = !DILocation(line: 91, column: 41, scope: !910)
!914 = !DILocation(line: 91, column: 34, scope: !910)
!915 = !DILocation(line: 91, column: 8, scope: !910)
!916 = !DILocation(line: 91, column: 7, scope: !906)
!917 = !DILocation(line: 93, column: 20, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !70, line: 91, column: 64)
!919 = !DILocation(line: 93, column: 28, scope: !918)
!920 = !DILocation(line: 93, column: 39, scope: !918)
!921 = !DILocation(line: 93, column: 44, scope: !918)
!922 = !DILocation(line: 93, column: 5, scope: !918)
!923 = !DILocation(line: 92, column: 4, scope: !918)
!924 = !DILocation(line: 92, column: 12, scope: !918)
!925 = !DILocation(line: 92, column: 22, scope: !918)
!926 = !DILocation(line: 94, column: 3, scope: !918)
!927 = !DILocation(line: 95, column: 2, scope: !906)
!928 = !DILocation(line: 89, column: 50, scope: !929)
!929 = !DILexicalBlockFile(scope: !902, file: !70, discriminator: 2)
!930 = !DILocation(line: 89, column: 48, scope: !929)
!931 = !DILocation(line: 89, column: 2, scope: !929)
!932 = distinct !{!932, !933}
!933 = !DILocation(line: 89, column: 2, scope: !886)
!934 = !DILocation(line: 96, column: 1, scope: !886)
!935 = distinct !DISubprogram(name: "ctcp_init", scope: !70, file: !70, line: 326, type: !248, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!936 = !DILocation(line: 328, column: 12, scope: !935)
!937 = !DILocation(line: 330, column: 2, scope: !935)
!938 = !DILocation(line: 332, column: 2, scope: !935)
!939 = !DILocation(line: 333, column: 2, scope: !935)
!940 = !DILocation(line: 335, column: 2, scope: !935)
!941 = !DILocation(line: 336, column: 2, scope: !935)
!942 = !DILocation(line: 337, column: 2, scope: !935)
!943 = !DILocation(line: 338, column: 2, scope: !935)
!944 = !DILocation(line: 339, column: 2, scope: !935)
!945 = !DILocation(line: 340, column: 2, scope: !935)
!946 = !DILocation(line: 341, column: 2, scope: !935)
!947 = !DILocation(line: 342, column: 2, scope: !935)
!948 = !DILocation(line: 343, column: 2, scope: !935)
!949 = !DILocation(line: 344, column: 2, scope: !935)
!950 = !DILocation(line: 346, column: 9, scope: !935)
!951 = !DILocation(line: 347, column: 9, scope: !935)
!952 = !DILocation(line: 348, column: 9, scope: !935)
!953 = !DILocation(line: 349, column: 9, scope: !935)
!954 = !DILocation(line: 350, column: 9, scope: !935)
!955 = !DILocation(line: 351, column: 1, scope: !935)
!956 = distinct !DISubprogram(name: "sig_disconnected", scope: !70, file: !70, line: 315, type: !887, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!957 = !DILocalVariable(name: "server", arg: 1, scope: !956, file: !70, line: 315, type: !94)
!958 = !DILocation(line: 315, column: 46, scope: !956)
!959 = !DILocation(line: 317, column: 2, scope: !956)
!960 = distinct !{!960, !959}
!961 = !DILocation(line: 317, column: 10, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !70, discriminator: 1)
!963 = distinct !DILexicalBlock(scope: !964, file: !70, line: 317, column: 10)
!964 = distinct !DILexicalBlock(scope: !956, file: !70, line: 317, column: 4)
!965 = !DILocation(line: 317, column: 17, scope: !962)
!966 = !DILocation(line: 317, column: 5, scope: !967)
!967 = !DILexicalBlockFile(scope: !968, file: !70, discriminator: 2)
!968 = distinct !DILexicalBlock(scope: !963, file: !70, line: 317, column: 3)
!969 = !DILocation(line: 317, column: 14, scope: !970)
!970 = !DILexicalBlockFile(scope: !971, file: !70, discriminator: 3)
!971 = distinct !DILexicalBlock(scope: !963, file: !70, line: 317, column: 12)
!972 = !DILocation(line: 317, column: 101, scope: !970)
!973 = !DILocation(line: 317, column: 112, scope: !974)
!974 = !DILexicalBlockFile(scope: !964, file: !70, discriminator: 4)
!975 = !DILocation(line: 319, column: 87, scope: !976)
!976 = distinct !DILexicalBlock(scope: !956, file: !70, line: 319, column: 6)
!977 = !DILocation(line: 319, column: 69, scope: !976)
!978 = !DILocation(line: 319, column: 54, scope: !976)
!979 = !DILocation(line: 319, column: 53, scope: !976)
!980 = !DILocation(line: 319, column: 28, scope: !981)
!981 = !DILexicalBlockFile(scope: !976, file: !70, discriminator: 3)
!982 = !DILocation(line: 319, column: 9, scope: !976)
!983 = !DILocation(line: 319, column: 6, scope: !956)
!984 = !DILocation(line: 319, column: 8, scope: !985)
!985 = !DILexicalBlockFile(scope: !976, file: !70, discriminator: 1)
!986 = !DILocation(line: 319, column: 6, scope: !987)
!987 = !DILexicalBlockFile(scope: !956, file: !70, discriminator: 2)
!988 = !DILocation(line: 320, column: 3, scope: !976)
!989 = !DILocation(line: 322, column: 15, scope: !956)
!990 = !DILocation(line: 322, column: 23, scope: !956)
!991 = !DILocation(line: 322, column: 2, scope: !956)
!992 = !DILocation(line: 323, column: 9, scope: !956)
!993 = !DILocation(line: 323, column: 17, scope: !956)
!994 = !DILocation(line: 323, column: 27, scope: !956)
!995 = !DILocation(line: 324, column: 1, scope: !956)
!996 = !DILocation(line: 324, column: 1, scope: !997)
!997 = !DILexicalBlockFile(scope: !956, file: !70, discriminator: 1)
!998 = distinct !DISubprogram(name: "event_privmsg", scope: !70, file: !70, line: 269, type: !999, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !94, !81, !81, !81}
!1001 = !DILocalVariable(name: "server", arg: 1, scope: !998, file: !70, line: 269, type: !94)
!1002 = !DILocation(line: 269, column: 43, scope: !998)
!1003 = !DILocalVariable(name: "data", arg: 2, scope: !998, file: !70, line: 269, type: !81)
!1004 = !DILocation(line: 269, column: 63, scope: !998)
!1005 = !DILocalVariable(name: "nick", arg: 3, scope: !998, file: !70, line: 270, type: !81)
!1006 = !DILocation(line: 270, column: 18, scope: !998)
!1007 = !DILocalVariable(name: "addr", arg: 4, scope: !998, file: !70, line: 270, type: !81)
!1008 = !DILocation(line: 270, column: 36, scope: !998)
!1009 = !DILocalVariable(name: "params", scope: !998, file: !70, line: 272, type: !74)
!1010 = !DILocation(line: 272, column: 8, scope: !998)
!1011 = !DILocalVariable(name: "target", scope: !998, file: !70, line: 272, type: !74)
!1012 = !DILocation(line: 272, column: 17, scope: !998)
!1013 = !DILocalVariable(name: "msg", scope: !998, file: !70, line: 272, type: !74)
!1014 = !DILocation(line: 272, column: 26, scope: !998)
!1015 = !DILocalVariable(name: "len", scope: !998, file: !70, line: 273, type: !77)
!1016 = !DILocation(line: 273, column: 6, scope: !998)
!1017 = !DILocation(line: 275, column: 2, scope: !998)
!1018 = distinct !{!1018, !1017}
!1019 = !DILocation(line: 275, column: 10, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !70, discriminator: 1)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !70, line: 275, column: 10)
!1022 = distinct !DILexicalBlock(scope: !998, file: !70, line: 275, column: 4)
!1023 = !DILocation(line: 275, column: 15, scope: !1020)
!1024 = !DILocation(line: 275, column: 5, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !70, discriminator: 2)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !70, line: 275, column: 3)
!1027 = !DILocation(line: 275, column: 14, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !70, discriminator: 3)
!1029 = distinct !DILexicalBlock(scope: !1021, file: !70, line: 275, column: 12)
!1030 = !DILocation(line: 275, column: 99, scope: !1028)
!1031 = !DILocation(line: 275, column: 110, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1022, file: !70, discriminator: 4)
!1033 = !DILocation(line: 277, column: 28, scope: !998)
!1034 = !DILocation(line: 277, column: 11, scope: !998)
!1035 = !DILocation(line: 277, column: 9, scope: !998)
!1036 = !DILocation(line: 280, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !998, file: !70, line: 280, column: 6)
!1038 = !DILocation(line: 280, column: 6, scope: !1037)
!1039 = !DILocation(line: 280, column: 11, scope: !1037)
!1040 = !DILocation(line: 280, column: 6, scope: !998)
!1041 = !DILocation(line: 282, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !70, line: 280, column: 17)
!1043 = !DILocation(line: 283, column: 16, scope: !1042)
!1044 = !DILocation(line: 283, column: 9, scope: !1042)
!1045 = !DILocation(line: 283, column: 7, scope: !1042)
!1046 = !DILocation(line: 284, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !70, line: 284, column: 7)
!1048 = !DILocation(line: 284, column: 14, scope: !1047)
!1049 = !DILocation(line: 284, column: 7, scope: !1047)
!1050 = !DILocation(line: 284, column: 18, scope: !1047)
!1051 = !DILocation(line: 284, column: 7, scope: !1042)
!1052 = !DILocation(line: 285, column: 8, scope: !1047)
!1053 = !DILocation(line: 285, column: 11, scope: !1047)
!1054 = !DILocation(line: 285, column: 4, scope: !1047)
!1055 = !DILocation(line: 285, column: 15, scope: !1047)
!1056 = !DILocation(line: 287, column: 30, scope: !1042)
!1057 = !DILocation(line: 287, column: 38, scope: !1042)
!1058 = !DILocation(line: 287, column: 43, scope: !1042)
!1059 = !DILocation(line: 287, column: 49, scope: !1042)
!1060 = !DILocation(line: 287, column: 55, scope: !1042)
!1061 = !DILocation(line: 287, column: 3, scope: !1042)
!1062 = !DILocation(line: 288, column: 3, scope: !1042)
!1063 = !DILocation(line: 289, column: 2, scope: !1042)
!1064 = !DILocation(line: 291, column: 9, scope: !998)
!1065 = !DILocation(line: 291, column: 2, scope: !998)
!1066 = !DILocation(line: 292, column: 1, scope: !998)
!1067 = !DILocation(line: 292, column: 1, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !998, file: !70, discriminator: 1)
!1069 = distinct !DISubprogram(name: "event_notice", scope: !70, file: !70, line: 294, type: !999, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1070 = !DILocalVariable(name: "server", arg: 1, scope: !1069, file: !70, line: 294, type: !94)
!1071 = !DILocation(line: 294, column: 42, scope: !1069)
!1072 = !DILocalVariable(name: "data", arg: 2, scope: !1069, file: !70, line: 294, type: !81)
!1073 = !DILocation(line: 294, column: 62, scope: !1069)
!1074 = !DILocalVariable(name: "nick", arg: 3, scope: !1069, file: !70, line: 295, type: !81)
!1075 = !DILocation(line: 295, column: 17, scope: !1069)
!1076 = !DILocalVariable(name: "addr", arg: 4, scope: !1069, file: !70, line: 295, type: !81)
!1077 = !DILocation(line: 295, column: 35, scope: !1069)
!1078 = !DILocalVariable(name: "params", scope: !1069, file: !70, line: 297, type: !74)
!1079 = !DILocation(line: 297, column: 8, scope: !1069)
!1080 = !DILocalVariable(name: "target", scope: !1069, file: !70, line: 297, type: !74)
!1081 = !DILocation(line: 297, column: 17, scope: !1069)
!1082 = !DILocalVariable(name: "ptr", scope: !1069, file: !70, line: 297, type: !74)
!1083 = !DILocation(line: 297, column: 26, scope: !1069)
!1084 = !DILocalVariable(name: "msg", scope: !1069, file: !70, line: 297, type: !74)
!1085 = !DILocation(line: 297, column: 32, scope: !1069)
!1086 = !DILocation(line: 299, column: 2, scope: !1069)
!1087 = distinct !{!1087, !1086}
!1088 = !DILocation(line: 299, column: 10, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1090, file: !70, discriminator: 1)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !70, line: 299, column: 10)
!1091 = distinct !DILexicalBlock(scope: !1069, file: !70, line: 299, column: 4)
!1092 = !DILocation(line: 299, column: 15, scope: !1089)
!1093 = !DILocation(line: 299, column: 5, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1095, file: !70, discriminator: 2)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !70, line: 299, column: 3)
!1096 = !DILocation(line: 299, column: 14, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1098, file: !70, discriminator: 3)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !70, line: 299, column: 12)
!1099 = !DILocation(line: 299, column: 99, scope: !1097)
!1100 = !DILocation(line: 299, column: 110, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1091, file: !70, discriminator: 4)
!1102 = !DILocation(line: 301, column: 28, scope: !1069)
!1103 = !DILocation(line: 301, column: 11, scope: !1069)
!1104 = !DILocation(line: 301, column: 9, scope: !1069)
!1105 = !DILocation(line: 304, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1069, file: !70, line: 304, column: 6)
!1107 = !DILocation(line: 304, column: 6, scope: !1106)
!1108 = !DILocation(line: 304, column: 11, scope: !1106)
!1109 = !DILocation(line: 304, column: 6, scope: !1069)
!1110 = !DILocation(line: 305, column: 17, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !70, line: 304, column: 17)
!1112 = !DILocation(line: 305, column: 9, scope: !1111)
!1113 = !DILocation(line: 305, column: 7, scope: !1111)
!1114 = !DILocation(line: 306, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !70, line: 306, column: 7)
!1116 = !DILocation(line: 306, column: 11, scope: !1115)
!1117 = !DILocation(line: 306, column: 7, scope: !1111)
!1118 = !DILocation(line: 306, column: 20, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1115, file: !70, discriminator: 1)
!1120 = !DILocation(line: 306, column: 24, scope: !1119)
!1121 = !DILocation(line: 306, column: 19, scope: !1119)
!1122 = !DILocation(line: 308, column: 32, scope: !1111)
!1123 = !DILocation(line: 308, column: 40, scope: !1111)
!1124 = !DILocation(line: 308, column: 45, scope: !1111)
!1125 = !DILocation(line: 308, column: 51, scope: !1111)
!1126 = !DILocation(line: 308, column: 57, scope: !1111)
!1127 = !DILocation(line: 308, column: 3, scope: !1111)
!1128 = !DILocation(line: 309, column: 3, scope: !1111)
!1129 = !DILocation(line: 310, column: 2, scope: !1111)
!1130 = !DILocation(line: 312, column: 9, scope: !1069)
!1131 = !DILocation(line: 312, column: 2, scope: !1069)
!1132 = !DILocation(line: 313, column: 1, scope: !1069)
!1133 = !DILocation(line: 313, column: 1, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1069, file: !70, discriminator: 1)
!1135 = distinct !DISubprogram(name: "ctcp_msg", scope: !70, file: !70, line: 222, type: !1136, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !94, !81, !81, !81, !81}
!1138 = !DILocalVariable(name: "server", arg: 1, scope: !1135, file: !70, line: 222, type: !94)
!1139 = !DILocation(line: 222, column: 38, scope: !1135)
!1140 = !DILocalVariable(name: "data", arg: 2, scope: !1135, file: !70, line: 222, type: !81)
!1141 = !DILocation(line: 222, column: 58, scope: !1135)
!1142 = !DILocalVariable(name: "nick", arg: 3, scope: !1135, file: !70, line: 223, type: !81)
!1143 = !DILocation(line: 223, column: 20, scope: !1135)
!1144 = !DILocalVariable(name: "addr", arg: 4, scope: !1135, file: !70, line: 223, type: !81)
!1145 = !DILocation(line: 223, column: 38, scope: !1135)
!1146 = !DILocalVariable(name: "target", arg: 5, scope: !1135, file: !70, line: 223, type: !81)
!1147 = !DILocation(line: 223, column: 56, scope: !1135)
!1148 = !DILocalVariable(name: "args", scope: !1135, file: !70, line: 225, type: !74)
!1149 = !DILocation(line: 225, column: 8, scope: !1135)
!1150 = !DILocalVariable(name: "str", scope: !1135, file: !70, line: 225, type: !74)
!1151 = !DILocation(line: 225, column: 15, scope: !1135)
!1152 = !DILocation(line: 227, column: 26, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1135, file: !70, line: 227, column: 6)
!1154 = !DILocation(line: 227, column: 6, scope: !1153)
!1155 = !DILocation(line: 227, column: 46, scope: !1153)
!1156 = !DILocation(line: 227, column: 6, scope: !1135)
!1157 = !DILocation(line: 229, column: 33, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !70, line: 227, column: 52)
!1159 = !DILocation(line: 229, column: 41, scope: !1158)
!1160 = !DILocation(line: 229, column: 45, scope: !1158)
!1161 = !DILocation(line: 230, column: 8, scope: !1158)
!1162 = !DILocation(line: 230, column: 14, scope: !1158)
!1163 = !DILocation(line: 230, column: 20, scope: !1158)
!1164 = !DILocation(line: 229, column: 3, scope: !1158)
!1165 = !DILocation(line: 231, column: 17, scope: !1158)
!1166 = !DILocation(line: 234, column: 53, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1135, file: !70, line: 234, column: 6)
!1168 = !DILocation(line: 234, column: 35, scope: !1167)
!1169 = !DILocation(line: 234, column: 20, scope: !1167)
!1170 = !DILocation(line: 234, column: 32, scope: !1167)
!1171 = !DILocation(line: 234, column: 38, scope: !1167)
!1172 = !DILocation(line: 234, column: 44, scope: !1167)
!1173 = !DILocation(line: 234, column: 52, scope: !1167)
!1174 = !DILocation(line: 234, column: 6, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1167, file: !70, discriminator: 1)
!1176 = !DILocation(line: 234, column: 6, scope: !1167)
!1177 = !DILocation(line: 234, column: 6, scope: !1135)
!1178 = !DILocation(line: 235, column: 3, scope: !1167)
!1179 = !DILocation(line: 237, column: 33, scope: !1135)
!1180 = !DILocation(line: 237, column: 8, scope: !1135)
!1181 = !DILocation(line: 237, column: 6, scope: !1135)
!1182 = !DILocation(line: 238, column: 16, scope: !1135)
!1183 = !DILocation(line: 238, column: 19, scope: !1135)
!1184 = !DILocation(line: 238, column: 9, scope: !1135)
!1185 = !DILocation(line: 238, column: 7, scope: !1135)
!1186 = !DILocation(line: 239, column: 6, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1135, file: !70, line: 239, column: 6)
!1188 = !DILocation(line: 239, column: 11, scope: !1187)
!1189 = !DILocation(line: 239, column: 6, scope: !1135)
!1190 = !DILocation(line: 239, column: 24, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1187, file: !70, discriminator: 1)
!1192 = !DILocation(line: 239, column: 27, scope: !1191)
!1193 = !DILocation(line: 239, column: 19, scope: !1191)
!1194 = !DILocation(line: 239, column: 45, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1187, file: !70, discriminator: 2)
!1196 = !DILocation(line: 241, column: 16, scope: !1135)
!1197 = !DILocation(line: 241, column: 19, scope: !1135)
!1198 = !DILocation(line: 241, column: 2, scope: !1135)
!1199 = !DILocation(line: 242, column: 19, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1135, file: !70, line: 242, column: 6)
!1201 = !DILocation(line: 242, column: 27, scope: !1200)
!1202 = !DILocation(line: 242, column: 35, scope: !1200)
!1203 = !DILocation(line: 242, column: 41, scope: !1200)
!1204 = !DILocation(line: 242, column: 47, scope: !1200)
!1205 = !DILocation(line: 242, column: 53, scope: !1200)
!1206 = !DILocation(line: 242, column: 7, scope: !1200)
!1207 = !DILocation(line: 242, column: 6, scope: !1135)
!1208 = !DILocation(line: 244, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !70, line: 242, column: 62)
!1210 = !DILocation(line: 244, column: 16, scope: !1209)
!1211 = !DILocation(line: 244, column: 22, scope: !1209)
!1212 = !DILocation(line: 244, column: 28, scope: !1209)
!1213 = !DILocation(line: 244, column: 34, scope: !1209)
!1214 = !DILocation(line: 243, column: 3, scope: !1209)
!1215 = !DILocation(line: 245, column: 2, scope: !1209)
!1216 = !DILocation(line: 246, column: 9, scope: !1135)
!1217 = !DILocation(line: 246, column: 2, scope: !1135)
!1218 = !DILocation(line: 247, column: 1, scope: !1135)
!1219 = !DILocation(line: 247, column: 1, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1135, file: !70, discriminator: 1)
!1221 = distinct !DISubprogram(name: "ctcp_reply", scope: !70, file: !70, line: 249, type: !1136, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1222 = !DILocalVariable(name: "server", arg: 1, scope: !1221, file: !70, line: 249, type: !94)
!1223 = !DILocation(line: 249, column: 40, scope: !1221)
!1224 = !DILocalVariable(name: "data", arg: 2, scope: !1221, file: !70, line: 249, type: !81)
!1225 = !DILocation(line: 249, column: 60, scope: !1221)
!1226 = !DILocalVariable(name: "nick", arg: 3, scope: !1221, file: !70, line: 250, type: !81)
!1227 = !DILocation(line: 250, column: 22, scope: !1221)
!1228 = !DILocalVariable(name: "addr", arg: 4, scope: !1221, file: !70, line: 250, type: !81)
!1229 = !DILocation(line: 250, column: 40, scope: !1221)
!1230 = !DILocalVariable(name: "target", arg: 5, scope: !1221, file: !70, line: 250, type: !81)
!1231 = !DILocation(line: 250, column: 58, scope: !1221)
!1232 = !DILocalVariable(name: "args", scope: !1221, file: !70, line: 252, type: !74)
!1233 = !DILocation(line: 252, column: 8, scope: !1221)
!1234 = !DILocalVariable(name: "str", scope: !1221, file: !70, line: 252, type: !74)
!1235 = !DILocation(line: 252, column: 15, scope: !1221)
!1236 = !DILocation(line: 254, column: 53, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1221, file: !70, line: 254, column: 6)
!1238 = !DILocation(line: 254, column: 35, scope: !1237)
!1239 = !DILocation(line: 254, column: 20, scope: !1237)
!1240 = !DILocation(line: 254, column: 32, scope: !1237)
!1241 = !DILocation(line: 254, column: 38, scope: !1237)
!1242 = !DILocation(line: 254, column: 44, scope: !1237)
!1243 = !DILocation(line: 254, column: 52, scope: !1237)
!1244 = !DILocation(line: 254, column: 6, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1237, file: !70, discriminator: 1)
!1246 = !DILocation(line: 254, column: 6, scope: !1237)
!1247 = !DILocation(line: 254, column: 6, scope: !1221)
!1248 = !DILocation(line: 255, column: 3, scope: !1237)
!1249 = !DILocation(line: 257, column: 35, scope: !1221)
!1250 = !DILocation(line: 257, column: 8, scope: !1221)
!1251 = !DILocation(line: 257, column: 6, scope: !1221)
!1252 = !DILocation(line: 258, column: 16, scope: !1221)
!1253 = !DILocation(line: 258, column: 19, scope: !1221)
!1254 = !DILocation(line: 258, column: 9, scope: !1221)
!1255 = !DILocation(line: 258, column: 7, scope: !1221)
!1256 = !DILocation(line: 259, column: 6, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1221, file: !70, line: 259, column: 6)
!1258 = !DILocation(line: 259, column: 11, scope: !1257)
!1259 = !DILocation(line: 259, column: 6, scope: !1221)
!1260 = !DILocation(line: 259, column: 24, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1257, file: !70, discriminator: 1)
!1262 = !DILocation(line: 259, column: 27, scope: !1261)
!1263 = !DILocation(line: 259, column: 19, scope: !1261)
!1264 = !DILocation(line: 259, column: 45, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1257, file: !70, discriminator: 2)
!1266 = !DILocation(line: 261, column: 16, scope: !1221)
!1267 = !DILocation(line: 261, column: 19, scope: !1221)
!1268 = !DILocation(line: 261, column: 2, scope: !1221)
!1269 = !DILocation(line: 262, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1221, file: !70, line: 262, column: 6)
!1271 = !DILocation(line: 262, column: 27, scope: !1270)
!1272 = !DILocation(line: 262, column: 35, scope: !1270)
!1273 = !DILocation(line: 262, column: 41, scope: !1270)
!1274 = !DILocation(line: 262, column: 47, scope: !1270)
!1275 = !DILocation(line: 262, column: 53, scope: !1270)
!1276 = !DILocation(line: 262, column: 7, scope: !1270)
!1277 = !DILocation(line: 262, column: 6, scope: !1221)
!1278 = !DILocation(line: 264, column: 8, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1270, file: !70, line: 262, column: 62)
!1280 = !DILocation(line: 264, column: 16, scope: !1279)
!1281 = !DILocation(line: 264, column: 22, scope: !1279)
!1282 = !DILocation(line: 264, column: 28, scope: !1279)
!1283 = !DILocation(line: 264, column: 34, scope: !1279)
!1284 = !DILocation(line: 263, column: 3, scope: !1279)
!1285 = !DILocation(line: 265, column: 2, scope: !1279)
!1286 = !DILocation(line: 266, column: 9, scope: !1221)
!1287 = !DILocation(line: 266, column: 2, scope: !1221)
!1288 = !DILocation(line: 267, column: 1, scope: !1221)
!1289 = !DILocation(line: 267, column: 1, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1221, file: !70, discriminator: 1)
!1291 = distinct !DISubprogram(name: "ctcp_ping", scope: !70, file: !70, line: 119, type: !1292, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !94, !81, !81}
!1294 = !DILocalVariable(name: "server", arg: 1, scope: !1291, file: !70, line: 119, type: !94)
!1295 = !DILocation(line: 119, column: 39, scope: !1291)
!1296 = !DILocalVariable(name: "data", arg: 2, scope: !1291, file: !70, line: 119, type: !81)
!1297 = !DILocation(line: 119, column: 59, scope: !1291)
!1298 = !DILocalVariable(name: "nick", arg: 3, scope: !1291, file: !70, line: 120, type: !81)
!1299 = !DILocation(line: 120, column: 21, scope: !1291)
!1300 = !DILocalVariable(name: "str", scope: !1291, file: !70, line: 122, type: !74)
!1301 = !DILocation(line: 122, column: 8, scope: !1291)
!1302 = !DILocation(line: 124, column: 2, scope: !1291)
!1303 = distinct !{!1303, !1302}
!1304 = !DILocation(line: 124, column: 10, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1306, file: !70, discriminator: 1)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !70, line: 124, column: 10)
!1307 = distinct !DILexicalBlock(scope: !1291, file: !70, line: 124, column: 4)
!1308 = !DILocation(line: 124, column: 15, scope: !1305)
!1309 = !DILocation(line: 124, column: 5, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1311, file: !70, discriminator: 2)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !70, line: 124, column: 3)
!1312 = !DILocation(line: 124, column: 14, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !70, discriminator: 3)
!1314 = distinct !DILexicalBlock(scope: !1306, file: !70, line: 124, column: 12)
!1315 = !DILocation(line: 124, column: 99, scope: !1313)
!1316 = !DILocation(line: 124, column: 110, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1307, file: !70, discriminator: 4)
!1318 = !DILocation(line: 125, column: 2, scope: !1291)
!1319 = distinct !{!1319, !1318}
!1320 = !DILocation(line: 125, column: 10, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !70, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !70, line: 125, column: 10)
!1323 = distinct !DILexicalBlock(scope: !1291, file: !70, line: 125, column: 4)
!1324 = !DILocation(line: 125, column: 17, scope: !1321)
!1325 = !DILocation(line: 125, column: 5, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !70, discriminator: 2)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !70, line: 125, column: 3)
!1328 = !DILocation(line: 125, column: 14, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !70, discriminator: 3)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !70, line: 125, column: 12)
!1331 = !DILocation(line: 125, column: 101, scope: !1329)
!1332 = !DILocation(line: 125, column: 112, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1323, file: !70, discriminator: 4)
!1334 = !DILocation(line: 126, column: 2, scope: !1291)
!1335 = distinct !{!1335, !1334}
!1336 = !DILocation(line: 126, column: 10, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1338, file: !70, discriminator: 1)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !70, line: 126, column: 10)
!1339 = distinct !DILexicalBlock(scope: !1291, file: !70, line: 126, column: 4)
!1340 = !DILocation(line: 126, column: 15, scope: !1337)
!1341 = !DILocation(line: 126, column: 5, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1343, file: !70, discriminator: 2)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !70, line: 126, column: 3)
!1344 = !DILocation(line: 126, column: 14, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !70, discriminator: 3)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !70, line: 126, column: 12)
!1347 = !DILocation(line: 126, column: 99, scope: !1345)
!1348 = !DILocation(line: 126, column: 110, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1339, file: !70, discriminator: 4)
!1350 = !DILocation(line: 128, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1291, file: !70, line: 128, column: 6)
!1352 = !DILocation(line: 128, column: 6, scope: !1351)
!1353 = !DILocation(line: 128, column: 19, scope: !1351)
!1354 = !DILocation(line: 128, column: 6, scope: !1291)
!1355 = !DILocation(line: 140, column: 17, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !70, line: 128, column: 26)
!1357 = !DILocation(line: 143, column: 54, scope: !1291)
!1358 = !DILocation(line: 143, column: 60, scope: !1291)
!1359 = !DILocation(line: 143, column: 8, scope: !1291)
!1360 = !DILocation(line: 143, column: 6, scope: !1291)
!1361 = !DILocation(line: 144, column: 18, scope: !1291)
!1362 = !DILocation(line: 144, column: 26, scope: !1291)
!1363 = !DILocation(line: 144, column: 2, scope: !1291)
!1364 = !DILocation(line: 145, column: 9, scope: !1291)
!1365 = !DILocation(line: 145, column: 2, scope: !1291)
!1366 = !DILocation(line: 146, column: 1, scope: !1291)
!1367 = !DILocation(line: 146, column: 1, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1291, file: !70, discriminator: 1)
!1369 = distinct !DISubprogram(name: "ctcp_version", scope: !70, file: !70, line: 167, type: !1292, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1370 = !DILocalVariable(name: "server", arg: 1, scope: !1369, file: !70, line: 167, type: !94)
!1371 = !DILocation(line: 167, column: 42, scope: !1369)
!1372 = !DILocalVariable(name: "data", arg: 2, scope: !1369, file: !70, line: 167, type: !81)
!1373 = !DILocation(line: 167, column: 62, scope: !1369)
!1374 = !DILocalVariable(name: "nick", arg: 3, scope: !1369, file: !70, line: 168, type: !81)
!1375 = !DILocation(line: 168, column: 17, scope: !1369)
!1376 = !DILocation(line: 170, column: 25, scope: !1369)
!1377 = !DILocation(line: 170, column: 33, scope: !1369)
!1378 = !DILocation(line: 171, column: 11, scope: !1369)
!1379 = !DILocation(line: 170, column: 2, scope: !1369)
!1380 = !DILocation(line: 172, column: 1, scope: !1369)
!1381 = distinct !DISubprogram(name: "ctcp_time", scope: !70, file: !70, line: 175, type: !1292, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1382 = !DILocalVariable(name: "server", arg: 1, scope: !1381, file: !70, line: 175, type: !94)
!1383 = !DILocation(line: 175, column: 39, scope: !1381)
!1384 = !DILocalVariable(name: "data", arg: 2, scope: !1381, file: !70, line: 175, type: !81)
!1385 = !DILocation(line: 175, column: 59, scope: !1381)
!1386 = !DILocalVariable(name: "nick", arg: 3, scope: !1381, file: !70, line: 176, type: !81)
!1387 = !DILocation(line: 176, column: 21, scope: !1381)
!1388 = !DILocalVariable(name: "str", scope: !1381, file: !70, line: 178, type: !74)
!1389 = !DILocation(line: 178, column: 8, scope: !1381)
!1390 = !DILocalVariable(name: "reply", scope: !1381, file: !70, line: 178, type: !74)
!1391 = !DILocation(line: 178, column: 14, scope: !1381)
!1392 = !DILocation(line: 180, column: 2, scope: !1381)
!1393 = distinct !{!1393, !1392}
!1394 = !DILocation(line: 180, column: 10, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1396, file: !70, discriminator: 1)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !70, line: 180, column: 10)
!1397 = distinct !DILexicalBlock(scope: !1381, file: !70, line: 180, column: 4)
!1398 = !DILocation(line: 180, column: 17, scope: !1395)
!1399 = !DILocation(line: 180, column: 5, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !70, discriminator: 2)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !70, line: 180, column: 3)
!1402 = !DILocation(line: 180, column: 14, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !70, discriminator: 3)
!1404 = distinct !DILexicalBlock(scope: !1396, file: !70, line: 180, column: 12)
!1405 = !DILocation(line: 180, column: 101, scope: !1403)
!1406 = !DILocation(line: 180, column: 112, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1397, file: !70, discriminator: 4)
!1408 = !DILocation(line: 181, column: 2, scope: !1381)
!1409 = distinct !{!1409, !1408}
!1410 = !DILocation(line: 181, column: 10, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1412, file: !70, discriminator: 1)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !70, line: 181, column: 10)
!1413 = distinct !DILexicalBlock(scope: !1381, file: !70, line: 181, column: 4)
!1414 = !DILocation(line: 181, column: 15, scope: !1411)
!1415 = !DILocation(line: 181, column: 5, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !70, discriminator: 2)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !70, line: 181, column: 3)
!1418 = !DILocation(line: 181, column: 14, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1420, file: !70, discriminator: 3)
!1420 = distinct !DILexicalBlock(scope: !1412, file: !70, line: 181, column: 12)
!1421 = !DILocation(line: 181, column: 99, scope: !1419)
!1422 = !DILocation(line: 181, column: 110, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1413, file: !70, discriminator: 4)
!1424 = !DILocation(line: 183, column: 28, scope: !1381)
!1425 = !DILocation(line: 183, column: 17, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1381, file: !70, discriminator: 1)
!1427 = !DILocation(line: 183, column: 15, scope: !1381)
!1428 = !DILocation(line: 184, column: 54, scope: !1381)
!1429 = !DILocation(line: 184, column: 60, scope: !1381)
!1430 = !DILocation(line: 184, column: 8, scope: !1381)
!1431 = !DILocation(line: 184, column: 6, scope: !1381)
!1432 = !DILocation(line: 185, column: 18, scope: !1381)
!1433 = !DILocation(line: 185, column: 26, scope: !1381)
!1434 = !DILocation(line: 185, column: 2, scope: !1381)
!1435 = !DILocation(line: 186, column: 9, scope: !1381)
!1436 = !DILocation(line: 186, column: 2, scope: !1381)
!1437 = !DILocation(line: 187, column: 9, scope: !1381)
!1438 = !DILocation(line: 187, column: 2, scope: !1381)
!1439 = !DILocation(line: 188, column: 1, scope: !1381)
!1440 = !DILocation(line: 188, column: 1, scope: !1426)
!1441 = distinct !DISubprogram(name: "ctcp_userinfo", scope: !70, file: !70, line: 191, type: !1292, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1442 = !DILocalVariable(name: "server", arg: 1, scope: !1441, file: !70, line: 191, type: !94)
!1443 = !DILocation(line: 191, column: 43, scope: !1441)
!1444 = !DILocalVariable(name: "data", arg: 2, scope: !1441, file: !70, line: 191, type: !81)
!1445 = !DILocation(line: 191, column: 63, scope: !1441)
!1446 = !DILocalVariable(name: "nick", arg: 3, scope: !1441, file: !70, line: 192, type: !81)
!1447 = !DILocation(line: 192, column: 18, scope: !1441)
!1448 = !DILocation(line: 194, column: 25, scope: !1441)
!1449 = !DILocation(line: 194, column: 33, scope: !1441)
!1450 = !DILocation(line: 195, column: 11, scope: !1441)
!1451 = !DILocation(line: 194, column: 2, scope: !1441)
!1452 = !DILocation(line: 196, column: 1, scope: !1441)
!1453 = distinct !DISubprogram(name: "ctcp_clientinfo", scope: !70, file: !70, line: 199, type: !1292, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1454 = !DILocalVariable(name: "server", arg: 1, scope: !1453, file: !70, line: 199, type: !94)
!1455 = !DILocation(line: 199, column: 45, scope: !1453)
!1456 = !DILocalVariable(name: "data", arg: 2, scope: !1453, file: !70, line: 199, type: !81)
!1457 = !DILocation(line: 199, column: 65, scope: !1453)
!1458 = !DILocalVariable(name: "nick", arg: 3, scope: !1453, file: !70, line: 200, type: !81)
!1459 = !DILocation(line: 200, column: 20, scope: !1453)
!1460 = !DILocalVariable(name: "str", scope: !1453, file: !70, line: 202, type: !299)
!1461 = !DILocation(line: 202, column: 11, scope: !1453)
!1462 = !DILocalVariable(name: "tmp", scope: !1453, file: !70, line: 203, type: !260)
!1463 = !DILocation(line: 203, column: 17, scope: !1453)
!1464 = !DILocation(line: 205, column: 2, scope: !1453)
!1465 = distinct !{!1465, !1464}
!1466 = !DILocation(line: 205, column: 10, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !70, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !70, line: 205, column: 10)
!1469 = distinct !DILexicalBlock(scope: !1453, file: !70, line: 205, column: 4)
!1470 = !DILocation(line: 205, column: 17, scope: !1467)
!1471 = !DILocation(line: 205, column: 5, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !70, discriminator: 2)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !70, line: 205, column: 3)
!1474 = !DILocation(line: 205, column: 14, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !70, discriminator: 3)
!1476 = distinct !DILexicalBlock(scope: !1468, file: !70, line: 205, column: 12)
!1477 = !DILocation(line: 205, column: 101, scope: !1475)
!1478 = !DILocation(line: 205, column: 112, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1469, file: !70, discriminator: 4)
!1480 = !DILocation(line: 206, column: 2, scope: !1453)
!1481 = distinct !{!1481, !1480}
!1482 = !DILocation(line: 206, column: 10, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1484, file: !70, discriminator: 1)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !70, line: 206, column: 10)
!1485 = distinct !DILexicalBlock(scope: !1453, file: !70, line: 206, column: 4)
!1486 = !DILocation(line: 206, column: 15, scope: !1483)
!1487 = !DILocation(line: 206, column: 5, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !70, discriminator: 2)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !70, line: 206, column: 3)
!1490 = !DILocation(line: 206, column: 14, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !70, discriminator: 3)
!1492 = distinct !DILexicalBlock(scope: !1484, file: !70, line: 206, column: 12)
!1493 = !DILocation(line: 206, column: 99, scope: !1491)
!1494 = !DILocation(line: 206, column: 110, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1485, file: !70, discriminator: 4)
!1496 = !DILocation(line: 208, column: 8, scope: !1453)
!1497 = !DILocation(line: 208, column: 6, scope: !1453)
!1498 = !DILocation(line: 209, column: 25, scope: !1453)
!1499 = !DILocation(line: 209, column: 59, scope: !1453)
!1500 = !DILocation(line: 209, column: 9, scope: !1453)
!1501 = !DILocation(line: 210, column: 13, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1453, file: !70, line: 210, column: 2)
!1503 = !DILocation(line: 210, column: 11, scope: !1502)
!1504 = !DILocation(line: 210, column: 7, scope: !1502)
!1505 = !DILocation(line: 210, column: 24, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !70, discriminator: 1)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !70, line: 210, column: 2)
!1508 = !DILocation(line: 210, column: 28, scope: !1506)
!1509 = !DILocation(line: 210, column: 2, scope: !1506)
!1510 = !DILocalVariable(name: "rec", scope: !1511, file: !70, line: 211, type: !68)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !70, line: 210, column: 53)
!1512 = !DILocation(line: 211, column: 17, scope: !1511)
!1513 = !DILocation(line: 211, column: 23, scope: !1511)
!1514 = !DILocation(line: 211, column: 28, scope: !1511)
!1515 = !DILocation(line: 213, column: 43, scope: !1511)
!1516 = !DILocation(line: 213, column: 17, scope: !1511)
!1517 = !DILocation(line: 214, column: 33, scope: !1511)
!1518 = !DILocation(line: 214, column: 38, scope: !1511)
!1519 = !DILocation(line: 214, column: 43, scope: !1511)
!1520 = !DILocation(line: 214, column: 17, scope: !1511)
!1521 = !DILocation(line: 215, column: 2, scope: !1511)
!1522 = !DILocation(line: 210, column: 42, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1507, file: !70, discriminator: 2)
!1524 = !DILocation(line: 210, column: 47, scope: !1523)
!1525 = !DILocation(line: 210, column: 40, scope: !1523)
!1526 = !DILocation(line: 210, column: 2, scope: !1523)
!1527 = distinct !{!1527, !1528}
!1528 = !DILocation(line: 210, column: 2, scope: !1453)
!1529 = !DILocation(line: 216, column: 28, scope: !1453)
!1530 = !DILocation(line: 216, column: 2, scope: !1453)
!1531 = !DILocation(line: 218, column: 18, scope: !1453)
!1532 = !DILocation(line: 218, column: 26, scope: !1453)
!1533 = !DILocation(line: 218, column: 31, scope: !1453)
!1534 = !DILocation(line: 218, column: 2, scope: !1453)
!1535 = !DILocation(line: 219, column: 16, scope: !1453)
!1536 = !DILocation(line: 219, column: 2, scope: !1453)
!1537 = !DILocation(line: 220, column: 1, scope: !1453)
!1538 = !DILocation(line: 220, column: 1, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1453, file: !70, discriminator: 1)
!1540 = distinct !DISubprogram(name: "ctcp_deinit", scope: !70, file: !70, line: 353, type: !248, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1541 = !DILocation(line: 355, column: 2, scope: !1540)
!1542 = !DILocation(line: 355, column: 9, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1540, file: !70, discriminator: 1)
!1544 = !DILocation(line: 355, column: 19, scope: !1543)
!1545 = !DILocation(line: 355, column: 2, scope: !1543)
!1546 = !DILocation(line: 356, column: 20, scope: !1540)
!1547 = !DILocation(line: 356, column: 31, scope: !1540)
!1548 = !DILocation(line: 356, column: 3, scope: !1540)
!1549 = !DILocation(line: 355, column: 2, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1540, file: !70, discriminator: 2)
!1551 = distinct !{!1551, !1541}
!1552 = !DILocation(line: 358, column: 2, scope: !1540)
!1553 = !DILocation(line: 359, column: 2, scope: !1540)
!1554 = !DILocation(line: 360, column: 2, scope: !1540)
!1555 = !DILocation(line: 361, column: 2, scope: !1540)
!1556 = !DILocation(line: 362, column: 2, scope: !1540)
!1557 = !DILocation(line: 363, column: 2, scope: !1540)
!1558 = !DILocation(line: 364, column: 2, scope: !1540)
!1559 = !DILocation(line: 365, column: 2, scope: !1540)
!1560 = !DILocation(line: 366, column: 2, scope: !1540)
!1561 = !DILocation(line: 367, column: 2, scope: !1540)
!1562 = !DILocation(line: 368, column: 1, scope: !1540)
!1563 = distinct !DISubprogram(name: "ctcp_send_parsed_reply", scope: !70, file: !70, line: 148, type: !999, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1564 = !DILocalVariable(name: "server", arg: 1, scope: !1563, file: !70, line: 148, type: !94)
!1565 = !DILocation(line: 148, column: 52, scope: !1563)
!1566 = !DILocalVariable(name: "nick", arg: 2, scope: !1563, file: !70, line: 148, type: !81)
!1567 = !DILocation(line: 148, column: 72, scope: !1563)
!1568 = !DILocalVariable(name: "cmd", arg: 3, scope: !1563, file: !70, line: 149, type: !81)
!1569 = !DILocation(line: 149, column: 20, scope: !1563)
!1570 = !DILocalVariable(name: "args", arg: 4, scope: !1563, file: !70, line: 149, type: !81)
!1571 = !DILocation(line: 149, column: 37, scope: !1563)
!1572 = !DILocalVariable(name: "str", scope: !1563, file: !70, line: 151, type: !74)
!1573 = !DILocation(line: 151, column: 8, scope: !1563)
!1574 = !DILocalVariable(name: "pstr", scope: !1563, file: !70, line: 151, type: !74)
!1575 = !DILocation(line: 151, column: 14, scope: !1563)
!1576 = !DILocation(line: 153, column: 2, scope: !1563)
!1577 = distinct !{!1577, !1576}
!1578 = !DILocation(line: 153, column: 10, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !70, discriminator: 1)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !70, line: 153, column: 10)
!1581 = distinct !DILexicalBlock(scope: !1563, file: !70, line: 153, column: 4)
!1582 = !DILocation(line: 153, column: 17, scope: !1579)
!1583 = !DILocation(line: 153, column: 5, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1585, file: !70, discriminator: 2)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !70, line: 153, column: 3)
!1586 = !DILocation(line: 153, column: 14, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !70, discriminator: 3)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !70, line: 153, column: 12)
!1589 = !DILocation(line: 153, column: 101, scope: !1587)
!1590 = !DILocation(line: 153, column: 112, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1581, file: !70, discriminator: 4)
!1592 = !DILocation(line: 154, column: 2, scope: !1563)
!1593 = distinct !{!1593, !1592}
!1594 = !DILocation(line: 154, column: 10, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1596, file: !70, discriminator: 1)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !70, line: 154, column: 10)
!1597 = distinct !DILexicalBlock(scope: !1563, file: !70, line: 154, column: 4)
!1598 = !DILocation(line: 154, column: 15, scope: !1595)
!1599 = !DILocation(line: 154, column: 5, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !70, discriminator: 2)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !70, line: 154, column: 3)
!1602 = !DILocation(line: 154, column: 14, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1604, file: !70, discriminator: 3)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !70, line: 154, column: 12)
!1605 = !DILocation(line: 154, column: 99, scope: !1603)
!1606 = !DILocation(line: 154, column: 110, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1597, file: !70, discriminator: 4)
!1608 = !DILocation(line: 156, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1563, file: !70, line: 156, column: 6)
!1610 = !DILocation(line: 156, column: 6, scope: !1609)
!1611 = !DILocation(line: 156, column: 12, scope: !1609)
!1612 = !DILocation(line: 156, column: 6, scope: !1563)
!1613 = !DILocation(line: 157, column: 17, scope: !1609)
!1614 = !DILocation(line: 159, column: 30, scope: !1563)
!1615 = !DILocation(line: 159, column: 70, scope: !1563)
!1616 = !DILocation(line: 159, column: 52, scope: !1563)
!1617 = !DILocation(line: 159, column: 37, scope: !1563)
!1618 = !DILocation(line: 159, column: 9, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1563, file: !70, discriminator: 1)
!1620 = !DILocation(line: 159, column: 7, scope: !1563)
!1621 = !DILocation(line: 160, column: 52, scope: !1563)
!1622 = !DILocation(line: 160, column: 58, scope: !1563)
!1623 = !DILocation(line: 160, column: 63, scope: !1563)
!1624 = !DILocation(line: 160, column: 8, scope: !1563)
!1625 = !DILocation(line: 160, column: 6, scope: !1563)
!1626 = !DILocation(line: 161, column: 18, scope: !1563)
!1627 = !DILocation(line: 161, column: 26, scope: !1563)
!1628 = !DILocation(line: 161, column: 2, scope: !1563)
!1629 = !DILocation(line: 162, column: 9, scope: !1563)
!1630 = !DILocation(line: 162, column: 2, scope: !1563)
!1631 = !DILocation(line: 163, column: 9, scope: !1563)
!1632 = !DILocation(line: 163, column: 2, scope: !1563)
!1633 = !DILocation(line: 164, column: 1, scope: !1563)
!1634 = !DILocation(line: 164, column: 1, scope: !1619)
!1635 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !301, file: !301, line: 161, type: !1636, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !712)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!299, !299, !79}
!1638 = !DILocalVariable(name: "gstring", arg: 1, scope: !1635, file: !301, line: 161, type: !299)
!1639 = !DILocation(line: 161, column: 36, scope: !1635)
!1640 = !DILocalVariable(name: "c", arg: 2, scope: !1635, file: !301, line: 162, type: !79)
!1641 = !DILocation(line: 162, column: 33, scope: !1635)
!1642 = !DILocation(line: 164, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1635, file: !301, line: 164, column: 7)
!1644 = !DILocation(line: 164, column: 16, scope: !1643)
!1645 = !DILocation(line: 164, column: 20, scope: !1643)
!1646 = !DILocation(line: 164, column: 26, scope: !1643)
!1647 = !DILocation(line: 164, column: 35, scope: !1643)
!1648 = !DILocation(line: 164, column: 24, scope: !1643)
!1649 = !DILocation(line: 164, column: 7, scope: !1635)
!1650 = !DILocation(line: 166, column: 38, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1643, file: !301, line: 165, column: 5)
!1652 = !DILocation(line: 166, column: 20, scope: !1651)
!1653 = !DILocation(line: 166, column: 29, scope: !1651)
!1654 = !DILocation(line: 166, column: 32, scope: !1651)
!1655 = !DILocation(line: 166, column: 7, scope: !1651)
!1656 = !DILocation(line: 166, column: 16, scope: !1651)
!1657 = !DILocation(line: 166, column: 36, scope: !1651)
!1658 = !DILocation(line: 167, column: 20, scope: !1651)
!1659 = !DILocation(line: 167, column: 29, scope: !1651)
!1660 = !DILocation(line: 167, column: 7, scope: !1651)
!1661 = !DILocation(line: 167, column: 16, scope: !1651)
!1662 = !DILocation(line: 167, column: 34, scope: !1651)
!1663 = !DILocation(line: 168, column: 5, scope: !1651)
!1664 = !DILocation(line: 170, column: 24, scope: !1643)
!1665 = !DILocation(line: 170, column: 37, scope: !1643)
!1666 = !DILocation(line: 170, column: 5, scope: !1643)
!1667 = !DILocation(line: 171, column: 10, scope: !1635)
!1668 = !DILocation(line: 171, column: 3, scope: !1635)
