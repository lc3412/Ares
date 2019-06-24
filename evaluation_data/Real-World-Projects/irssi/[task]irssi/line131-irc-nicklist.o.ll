; ModuleID = './line131-irc-nicklist.o.i'
source_filename = "./line131-irc-nicklist.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
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
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }

@.str = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.irc_nicklist_insert = private unnamed_addr constant [20 x i8] c"irc_nicklist_insert\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IS_IRC_CHANNEL(channel)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"event nick\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"event 352\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"silent event who\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"silent event whois\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"whois away\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"whois oper\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"event 306\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 305\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"event 353\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"event 366\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"event 432\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"event 433\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"event 437\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"event 302\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"userhost event\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"user mode changed\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@__func__.event_nick = private unnamed_addr constant [11 x i8] c"event_nick\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"orignick != NULL\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.event_who = private unnamed_addr constant [10 x i8] c"event_who\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.event_whois = private unnamed_addr constant [12 x i8] c"event_whois\00", align 1
@__func__.event_whois_away = private unnamed_addr constant [17 x i8] c"event_whois_away\00", align 1
@__func__.event_whois_ircop = private unnamed_addr constant [18 x i8] c"event_whois_ircop\00", align 1
@__func__.event_own_away = private unnamed_addr constant [15 x i8] c"event_own_away\00", align 1
@__func__.event_own_unaway = private unnamed_addr constant [17 x i8] c"event_own_unaway\00", align 1
@__func__.event_names_list = private unnamed_addr constant [17 x i8] c"event_names_list\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"+kp\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"+p\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"+ks\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"+s\00", align 1
@__func__.event_end_of_names = private unnamed_addr constant [19 x i8] c"event_end_of_names\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@__func__.event_nick_in_use = private unnamed_addr constant [18 x i8] c"event_nick_in_use\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%s_\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"NICK %s\00", align 1
@__func__.event_target_unavailable = private unnamed_addr constant [25 x i8] c"event_target_unavailable\00", align 1
@__func__.event_userhost = private unnamed_addr constant [15 x i8] c"event_userhost\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.sig_usermode = private unnamed_addr constant [13 x i8] c"sig_usermode\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC*, i8*, i32, i32, i32, i32, i8*) #0 !dbg !670 {
  %8 = alloca %struct._NICK_REC*, align 8
  %9 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %9, metadata !675, metadata !676), !dbg !677
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !678, metadata !676), !dbg !679
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !680, metadata !676), !dbg !681
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !682, metadata !676), !dbg !683
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !684, metadata !676), !dbg !685
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !686, metadata !676), !dbg !687
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !688, metadata !676), !dbg !689
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %16, metadata !690, metadata !676), !dbg !691
  br label %17, !dbg !692, !llvm.loop !693

; <label>:17:                                     ; preds = %7
  %18 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !694
  %19 = bitcast %struct._IRC_CHANNEL_REC* %18 to i8*, !dbg !694
  %20 = call i8* @module_check_cast_module(i8* %19, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !698
  %21 = bitcast i8* %20 to %struct._CHANNEL_REC*, !dbg !699
  %22 = bitcast %struct._CHANNEL_REC* %21 to i8*, !dbg !700
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !701
  %24 = bitcast i8* %23 to %struct._IRC_CHANNEL_REC*, !dbg !703
  %25 = icmp ne %struct._IRC_CHANNEL_REC* %24, null, !dbg !703
  br i1 %25, label %26, label %27, !dbg !704

; <label>:26:                                     ; preds = %17
  br i1 false, label %29, label %28, !dbg !705

; <label>:27:                                     ; preds = %17
  br i1 false, label %28, label %29, !dbg !707

; <label>:28:                                     ; preds = %27, %26
  br label %30, !dbg !709

; <label>:29:                                     ; preds = %27, %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.irc_nicklist_insert, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !712
  store %struct._NICK_REC* null, %struct._NICK_REC** %8, align 8, !dbg !715
  br label %97, !dbg !715

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !716

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !718, !llvm.loop !719

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %10, align 8, !dbg !720
  %34 = icmp ne i8* %33, null, !dbg !724
  br i1 %34, label %35, label %36, !dbg !720

; <label>:35:                                     ; preds = %32
  br label %37, !dbg !725

; <label>:36:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.irc_nicklist_insert, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !728
  store %struct._NICK_REC* null, %struct._NICK_REC** %8, align 8, !dbg !731
  br label %97, !dbg !731

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !732

; <label>:38:                                     ; preds = %37
  %39 = call noalias i8* @g_malloc0_n(i64 1, i64 72), !dbg !734
  %40 = bitcast i8* %39 to %struct._NICK_REC*, !dbg !735
  store %struct._NICK_REC* %40, %struct._NICK_REC** %16, align 8, !dbg !736
  %41 = load i8*, i8** %10, align 8, !dbg !737
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !738
  %43 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !739
  %44 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %43, i32 0, i32 3, !dbg !740
  store i8* %42, i8** %44, align 8, !dbg !741
  %45 = load i32, i32* %11, align 4, !dbg !742
  %46 = icmp ne i32 %45, 0, !dbg !742
  br i1 %46, label %47, label %53, !dbg !744

; <label>:47:                                     ; preds = %38
  %48 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !745
  %49 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %48, i32 0, i32 7, !dbg !747
  %50 = load i8, i8* %49, align 4, !dbg !748
  %51 = and i8 %50, -9, !dbg !748
  %52 = or i8 %51, 8, !dbg !748
  store i8 %52, i8* %49, align 4, !dbg !748
  br label %53, !dbg !745

; <label>:53:                                     ; preds = %47, %38
  %54 = load i32, i32* %12, align 4, !dbg !749
  %55 = icmp ne i32 %54, 0, !dbg !749
  br i1 %55, label %56, label %62, !dbg !751

; <label>:56:                                     ; preds = %53
  %57 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !752
  %58 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %57, i32 0, i32 7, !dbg !754
  %59 = load i8, i8* %58, align 4, !dbg !755
  %60 = and i8 %59, -17, !dbg !755
  %61 = or i8 %60, 16, !dbg !755
  store i8 %61, i8* %58, align 4, !dbg !755
  br label %62, !dbg !752

; <label>:62:                                     ; preds = %56, %53
  %63 = load i32, i32* %13, align 4, !dbg !756
  %64 = icmp ne i32 %63, 0, !dbg !756
  br i1 %64, label %65, label %71, !dbg !758

; <label>:65:                                     ; preds = %62
  %66 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !759
  %67 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %66, i32 0, i32 7, !dbg !761
  %68 = load i8, i8* %67, align 4, !dbg !762
  %69 = and i8 %68, -33, !dbg !762
  %70 = or i8 %69, 32, !dbg !762
  store i8 %70, i8* %67, align 4, !dbg !762
  br label %71, !dbg !759

; <label>:71:                                     ; preds = %65, %62
  %72 = load i32, i32* %14, align 4, !dbg !763
  %73 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !764
  %74 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %73, i32 0, i32 7, !dbg !765
  %75 = trunc i32 %72 to i8, !dbg !766
  %76 = load i8, i8* %74, align 4, !dbg !766
  %77 = and i8 %75, 1, !dbg !766
  %78 = shl i8 %77, 2, !dbg !766
  %79 = and i8 %76, -5, !dbg !766
  %80 = or i8 %79, %78, !dbg !766
  store i8 %80, i8* %74, align 4, !dbg !766
  %81 = zext i8 %77 to i32, !dbg !766
  %82 = load i8*, i8** %15, align 8, !dbg !767
  %83 = icmp ne i8* %82, null, !dbg !769
  br i1 %83, label %84, label %90, !dbg !770

; <label>:84:                                     ; preds = %71
  %85 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !771
  %86 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %85, i32 0, i32 8, !dbg !773
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %86, i32 0, i32 0, !dbg !771
  %88 = load i8*, i8** %15, align 8, !dbg !774
  %89 = call i64 @g_strlcpy(i8* %87, i8* %88, i64 8), !dbg !775
  br label %90, !dbg !776

; <label>:90:                                     ; preds = %84, %71
  %91 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !777
  %92 = bitcast %struct._IRC_CHANNEL_REC* %91 to i8*, !dbg !777
  %93 = call i8* @module_check_cast_module(i8* %92, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !778
  %94 = bitcast i8* %93 to %struct._CHANNEL_REC*, !dbg !779
  %95 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !780
  call void @nicklist_insert(%struct._CHANNEL_REC* %94, %struct._NICK_REC* %95), !dbg !781
  %96 = load %struct._NICK_REC*, %struct._NICK_REC** %16, align 8, !dbg !783
  store %struct._NICK_REC* %96, %struct._NICK_REC** %8, align 8, !dbg !784
  br label %97, !dbg !784

; <label>:97:                                     ; preds = %90, %36, %29
  %98 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !785
  ret %struct._NICK_REC* %98, !dbg !785
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare i64 @g_strlcpy(i8*, i8*, i64) #2

declare void @nicklist_insert(%struct._CHANNEL_REC*, %struct._NICK_REC*) #2

; Function Attrs: nounwind uwtable
define i32 @irc_nickcmp_rfc1459(i8*, i8*) #0 !dbg !786 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !787, metadata !676), !dbg !788
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !789, metadata !676), !dbg !790
  br label %6, !dbg !791

; <label>:6:                                      ; preds = %61, %2
  %7 = load i8*, i8** %4, align 8, !dbg !792
  %8 = load i8, i8* %7, align 1, !dbg !794
  %9 = sext i8 %8 to i32, !dbg !794
  %10 = icmp ne i32 %9, 0, !dbg !795
  br i1 %10, label %11, label %16, !dbg !796

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %5, align 8, !dbg !797
  %13 = load i8, i8* %12, align 1, !dbg !799
  %14 = sext i8 %13 to i32, !dbg !799
  %15 = icmp ne i32 %14, 0, !dbg !800
  br label %16

; <label>:16:                                     ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %66, !dbg !801

; <label>:18:                                     ; preds = %16
  %19 = load i8*, i8** %4, align 8, !dbg !803
  %20 = load i8, i8* %19, align 1, !dbg !806
  %21 = sext i8 %20 to i32, !dbg !807
  %22 = icmp sge i32 %21, 65, !dbg !808
  br i1 %22, label %23, label %33, !dbg !809

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !810
  %25 = load i8, i8* %24, align 1, !dbg !812
  %26 = sext i8 %25 to i32, !dbg !813
  %27 = icmp sle i32 %26, 94, !dbg !814
  br i1 %27, label %28, label %33, !dbg !815

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %4, align 8, !dbg !816
  %30 = load i8, i8* %29, align 1, !dbg !818
  %31 = sext i8 %30 to i32, !dbg !819
  %32 = add nsw i32 %31, 32, !dbg !820
  br label %37, !dbg !821

; <label>:33:                                     ; preds = %23, %18
  %34 = load i8*, i8** %4, align 8, !dbg !822
  %35 = load i8, i8* %34, align 1, !dbg !824
  %36 = sext i8 %35 to i32, !dbg !825
  br label %37, !dbg !826

; <label>:37:                                     ; preds = %33, %28
  %38 = phi i32 [ %32, %28 ], [ %36, %33 ], !dbg !827
  %39 = load i8*, i8** %5, align 8, !dbg !829
  %40 = load i8, i8* %39, align 1, !dbg !830
  %41 = sext i8 %40 to i32, !dbg !831
  %42 = icmp sge i32 %41, 65, !dbg !832
  br i1 %42, label %43, label %53, !dbg !833

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %5, align 8, !dbg !834
  %45 = load i8, i8* %44, align 1, !dbg !836
  %46 = sext i8 %45 to i32, !dbg !837
  %47 = icmp sle i32 %46, 94, !dbg !838
  br i1 %47, label %48, label %53, !dbg !839

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %5, align 8, !dbg !840
  %50 = load i8, i8* %49, align 1, !dbg !842
  %51 = sext i8 %50 to i32, !dbg !843
  %52 = add nsw i32 %51, 32, !dbg !844
  br label %57, !dbg !845

; <label>:53:                                     ; preds = %43, %37
  %54 = load i8*, i8** %5, align 8, !dbg !846
  %55 = load i8, i8* %54, align 1, !dbg !848
  %56 = sext i8 %55 to i32, !dbg !849
  br label %57, !dbg !850

; <label>:57:                                     ; preds = %53, %48
  %58 = phi i32 [ %52, %48 ], [ %56, %53 ], !dbg !851
  %59 = icmp ne i32 %38, %58, !dbg !853
  br i1 %59, label %60, label %61, !dbg !854

; <label>:60:                                     ; preds = %57
  store i32 -1, i32* %3, align 4, !dbg !855
  br label %75, !dbg !855

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %4, align 8, !dbg !856
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !856
  store i8* %63, i8** %4, align 8, !dbg !856
  %64 = load i8*, i8** %5, align 8, !dbg !857
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !857
  store i8* %65, i8** %5, align 8, !dbg !857
  br label %6, !dbg !858, !llvm.loop !860

; <label>:66:                                     ; preds = %16
  %67 = load i8*, i8** %4, align 8, !dbg !861
  %68 = load i8, i8* %67, align 1, !dbg !862
  %69 = sext i8 %68 to i32, !dbg !862
  %70 = load i8*, i8** %5, align 8, !dbg !863
  %71 = load i8, i8* %70, align 1, !dbg !864
  %72 = sext i8 %71 to i32, !dbg !864
  %73 = icmp eq i32 %69, %72, !dbg !865
  %74 = select i1 %73, i32 0, i32 1, !dbg !862
  store i32 %74, i32* %3, align 4, !dbg !866
  br label %75, !dbg !866

; <label>:75:                                     ; preds = %66, %60
  %76 = load i32, i32* %3, align 4, !dbg !867
  ret i32 %76, !dbg !867
}

; Function Attrs: nounwind uwtable
define i32 @irc_nickcmp_ascii(i8*, i8*) #0 !dbg !868 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !869, metadata !676), !dbg !870
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !871, metadata !676), !dbg !872
  br label %6, !dbg !873

; <label>:6:                                      ; preds = %61, %2
  %7 = load i8*, i8** %4, align 8, !dbg !874
  %8 = load i8, i8* %7, align 1, !dbg !876
  %9 = sext i8 %8 to i32, !dbg !876
  %10 = icmp ne i32 %9, 0, !dbg !877
  br i1 %10, label %11, label %16, !dbg !878

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %5, align 8, !dbg !879
  %13 = load i8, i8* %12, align 1, !dbg !881
  %14 = sext i8 %13 to i32, !dbg !881
  %15 = icmp ne i32 %14, 0, !dbg !882
  br label %16

; <label>:16:                                     ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %66, !dbg !883

; <label>:18:                                     ; preds = %16
  %19 = load i8*, i8** %4, align 8, !dbg !885
  %20 = load i8, i8* %19, align 1, !dbg !888
  %21 = sext i8 %20 to i32, !dbg !889
  %22 = icmp sge i32 %21, 65, !dbg !890
  br i1 %22, label %23, label %33, !dbg !891

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %4, align 8, !dbg !892
  %25 = load i8, i8* %24, align 1, !dbg !894
  %26 = sext i8 %25 to i32, !dbg !895
  %27 = icmp sle i32 %26, 90, !dbg !896
  br i1 %27, label %28, label %33, !dbg !897

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %4, align 8, !dbg !898
  %30 = load i8, i8* %29, align 1, !dbg !900
  %31 = sext i8 %30 to i32, !dbg !901
  %32 = add nsw i32 %31, 32, !dbg !902
  br label %37, !dbg !903

; <label>:33:                                     ; preds = %23, %18
  %34 = load i8*, i8** %4, align 8, !dbg !904
  %35 = load i8, i8* %34, align 1, !dbg !906
  %36 = sext i8 %35 to i32, !dbg !907
  br label %37, !dbg !908

; <label>:37:                                     ; preds = %33, %28
  %38 = phi i32 [ %32, %28 ], [ %36, %33 ], !dbg !909
  %39 = load i8*, i8** %5, align 8, !dbg !911
  %40 = load i8, i8* %39, align 1, !dbg !912
  %41 = sext i8 %40 to i32, !dbg !913
  %42 = icmp sge i32 %41, 65, !dbg !914
  br i1 %42, label %43, label %53, !dbg !915

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %5, align 8, !dbg !916
  %45 = load i8, i8* %44, align 1, !dbg !918
  %46 = sext i8 %45 to i32, !dbg !919
  %47 = icmp sle i32 %46, 90, !dbg !920
  br i1 %47, label %48, label %53, !dbg !921

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %5, align 8, !dbg !922
  %50 = load i8, i8* %49, align 1, !dbg !924
  %51 = sext i8 %50 to i32, !dbg !925
  %52 = add nsw i32 %51, 32, !dbg !926
  br label %57, !dbg !927

; <label>:53:                                     ; preds = %43, %37
  %54 = load i8*, i8** %5, align 8, !dbg !928
  %55 = load i8, i8* %54, align 1, !dbg !930
  %56 = sext i8 %55 to i32, !dbg !931
  br label %57, !dbg !932

; <label>:57:                                     ; preds = %53, %48
  %58 = phi i32 [ %52, %48 ], [ %56, %53 ], !dbg !933
  %59 = icmp ne i32 %38, %58, !dbg !935
  br i1 %59, label %60, label %61, !dbg !936

; <label>:60:                                     ; preds = %57
  store i32 -1, i32* %3, align 4, !dbg !937
  br label %75, !dbg !937

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %4, align 8, !dbg !938
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !938
  store i8* %63, i8** %4, align 8, !dbg !938
  %64 = load i8*, i8** %5, align 8, !dbg !939
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !939
  store i8* %65, i8** %5, align 8, !dbg !939
  br label %6, !dbg !940, !llvm.loop !942

; <label>:66:                                     ; preds = %16
  %67 = load i8*, i8** %4, align 8, !dbg !943
  %68 = load i8, i8* %67, align 1, !dbg !944
  %69 = sext i8 %68 to i32, !dbg !944
  %70 = load i8*, i8** %5, align 8, !dbg !945
  %71 = load i8, i8* %70, align 1, !dbg !946
  %72 = sext i8 %71 to i32, !dbg !946
  %73 = icmp eq i32 %69, %72, !dbg !947
  %74 = select i1 %73, i32 0, i32 1, !dbg !944
  store i32 %74, i32* %3, align 4, !dbg !948
  br label %75, !dbg !948

; <label>:75:                                     ; preds = %66, %60
  %76 = load i32, i32* %3, align 4, !dbg !949
  ret i32 %76, !dbg !949
}

; Function Attrs: nounwind uwtable
define void @irc_nicklist_init() #0 !dbg !950 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !951
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !952
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !953
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !954
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !955
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !956
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_whois_ircop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !957
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_own_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !958
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_own_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !959
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_names_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !960
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !961
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_invalid to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !962
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_in_use to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !963
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !964
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !965
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !966
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_usermode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !967
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !968
  ret void, !dbg !969
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_nick(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !970 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !973, metadata !676), !dbg !974
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !975, metadata !676), !dbg !976
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !977, metadata !676), !dbg !978
  call void @llvm.dbg.declare(metadata i8** %7, metadata !979, metadata !676), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %8, metadata !981, metadata !676), !dbg !982
  br label %9, !dbg !983, !llvm.loop !984

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !985
  %11 = icmp ne i8* %10, null, !dbg !989
  br i1 %11, label %12, label %13, !dbg !985

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !990

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !993
  br label %69, !dbg !996

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !997

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !999, !llvm.loop !1000

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1001
  %18 = icmp ne i8* %17, null, !dbg !1005
  br i1 %18, label %19, label %20, !dbg !1001

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1006

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_nick, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0)), !dbg !1009
  br label %69, !dbg !1012

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1013

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %5, align 8, !dbg !1015
  %24 = call i8* (i8*, i32, ...) @event_get_params(i8* %23, i32 1, i8** %8), !dbg !1016
  store i8* %24, i8** %7, align 8, !dbg !1017
  %25 = load i8*, i8** %6, align 8, !dbg !1018
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1020
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 7, !dbg !1021
  %28 = load i8*, i8** %27, align 8, !dbg !1021
  %29 = call i32 @g_ascii_strcasecmp(i8* %25, i8* %28), !dbg !1022
  %30 = icmp eq i32 %29, 0, !dbg !1023
  br i1 %30, label %31, label %61, !dbg !1024

; <label>:31:                                     ; preds = %22
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1025
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 39, !dbg !1028
  %34 = load i8*, i8** %33, align 8, !dbg !1028
  %35 = icmp ne i8* %34, null, !dbg !1029
  br i1 %35, label %36, label %55, !dbg !1030

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1031
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 39, !dbg !1032
  %39 = load i8*, i8** %38, align 8, !dbg !1032
  %40 = load i8*, i8** %8, align 8, !dbg !1033
  %41 = call i32 @g_ascii_strcasecmp(i8* %39, i8* %40), !dbg !1034
  %42 = icmp eq i32 %41, 0, !dbg !1035
  br i1 %42, label %43, label %55, !dbg !1036

; <label>:43:                                     ; preds = %36
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1038
  %45 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %44, i32 0, i32 3, !dbg !1040
  %46 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %45, align 8, !dbg !1040
  %47 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %46, i32 0, i32 16, !dbg !1041
  %48 = load i8*, i8** %47, align 8, !dbg !1041
  call void @g_free(i8* %48), !dbg !1042
  %49 = load i8*, i8** %8, align 8, !dbg !1043
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1044
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1045
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 3, !dbg !1046
  %53 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %52, align 8, !dbg !1046
  %54 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %53, i32 0, i32 16, !dbg !1047
  store i8* %50, i8** %54, align 8, !dbg !1048
  br label %55, !dbg !1049

; <label>:55:                                     ; preds = %43, %36, %31
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1050
  %57 = bitcast %struct._IRC_SERVER_REC* %56 to i8*, !dbg !1050
  %58 = call i8* @module_check_cast(i8* %57, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1051
  %59 = bitcast i8* %58 to %struct._SERVER_REC*, !dbg !1052
  %60 = load i8*, i8** %8, align 8, !dbg !1053
  call void @server_change_nick(%struct._SERVER_REC* %59, i8* %60), !dbg !1054
  br label %61, !dbg !1055

; <label>:61:                                     ; preds = %55, %22
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1056
  %63 = bitcast %struct._IRC_SERVER_REC* %62 to i8*, !dbg !1056
  %64 = call i8* @module_check_cast(i8* %63, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1057
  %65 = bitcast i8* %64 to %struct._SERVER_REC*, !dbg !1058
  %66 = load i8*, i8** %6, align 8, !dbg !1059
  %67 = load i8*, i8** %8, align 8, !dbg !1060
  call void @nicklist_rename(%struct._SERVER_REC* %65, i8* %66, i8* %67), !dbg !1061
  %68 = load i8*, i8** %7, align 8, !dbg !1063
  call void @g_free(i8* %68), !dbg !1064
  br label %69, !dbg !1065

; <label>:69:                                     ; preds = %61, %20, %13
  ret void, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal void @event_who(%struct._SERVER_REC*, i8*) #0 !dbg !1067 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._CHANNEL_REC*, align 8
  %14 = alloca %struct._NICK_REC*, align 8
  %15 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1070, metadata !676), !dbg !1071
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1072, metadata !676), !dbg !1073
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1074, metadata !676), !dbg !1075
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1076, metadata !676), !dbg !1077
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1078, metadata !676), !dbg !1079
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1080, metadata !676), !dbg !1081
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1082, metadata !676), !dbg !1083
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1084, metadata !676), !dbg !1085
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1086, metadata !676), !dbg !1087
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1088, metadata !676), !dbg !1089
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %13, metadata !1090, metadata !676), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %14, metadata !1092, metadata !676), !dbg !1093
  br label %16, !dbg !1094, !llvm.loop !1095

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !1096
  %18 = icmp ne i8* %17, null, !dbg !1100
  br i1 %18, label %19, label %20, !dbg !1096

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1101

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.event_who, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1104
  br label %104, !dbg !1107

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1108

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !1110
  %24 = call i8* (i8*, i32, ...) @event_get_params(i8* %23, i32 8, i8* null, i8** %7, i8** %8, i8** %9, i8* null, i8** %6, i8** %10, i8** %11), !dbg !1111
  store i8* %24, i8** %5, align 8, !dbg !1112
  %25 = load i8*, i8** %11, align 8, !dbg !1113
  store i8* %25, i8** %12, align 8, !dbg !1114
  br label %26, !dbg !1115

; <label>:26:                                     ; preds = %38, %22
  %27 = load i8*, i8** %11, align 8, !dbg !1116
  %28 = load i8, i8* %27, align 1, !dbg !1118
  %29 = sext i8 %28 to i32, !dbg !1118
  %30 = icmp ne i32 %29, 0, !dbg !1119
  br i1 %30, label %31, label %36, !dbg !1120

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %11, align 8, !dbg !1121
  %33 = load i8, i8* %32, align 1, !dbg !1123
  %34 = sext i8 %33 to i32, !dbg !1123
  %35 = icmp ne i32 %34, 32, !dbg !1124
  br label %36

; <label>:36:                                     ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41, !dbg !1125

; <label>:38:                                     ; preds = %36
  %39 = load i8*, i8** %11, align 8, !dbg !1127
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !1127
  store i8* %40, i8** %11, align 8, !dbg !1127
  br label %26, !dbg !1129, !llvm.loop !1130

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %11, align 8, !dbg !1131
  %43 = load i8, i8* %42, align 1, !dbg !1133
  %44 = sext i8 %43 to i32, !dbg !1133
  %45 = icmp eq i32 %44, 32, !dbg !1134
  br i1 %45, label %46, label %49, !dbg !1135

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %11, align 8, !dbg !1136
  %48 = getelementptr inbounds i8, i8* %47, i32 1, !dbg !1136
  store i8* %48, i8** %11, align 8, !dbg !1136
  store i8 0, i8* %47, align 1, !dbg !1137
  br label %49, !dbg !1138

; <label>:49:                                     ; preds = %46, %41
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1139
  %51 = load i8*, i8** %7, align 8, !dbg !1140
  %52 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %50, i8* %51), !dbg !1141
  store %struct._CHANNEL_REC* %52, %struct._CHANNEL_REC** %13, align 8, !dbg !1142
  %53 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1143
  %54 = icmp eq %struct._CHANNEL_REC* %53, null, !dbg !1144
  br i1 %54, label %55, label %56, !dbg !1143

; <label>:55:                                     ; preds = %49
  br label %60, !dbg !1145

; <label>:56:                                     ; preds = %49
  %57 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1146
  %58 = load i8*, i8** %6, align 8, !dbg !1147
  %59 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %57, i8* %58), !dbg !1148
  br label %60, !dbg !1149

; <label>:60:                                     ; preds = %56, %55
  %61 = phi %struct._NICK_REC* [ null, %55 ], [ %59, %56 ], !dbg !1150
  store %struct._NICK_REC* %61, %struct._NICK_REC** %14, align 8, !dbg !1151
  %62 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1152
  %63 = icmp ne %struct._NICK_REC* %62, null, !dbg !1154
  br i1 %63, label %64, label %92, !dbg !1155

; <label>:64:                                     ; preds = %60
  %65 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1156
  %66 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %65, i32 0, i32 4, !dbg !1159
  %67 = load i8*, i8** %66, align 8, !dbg !1159
  %68 = icmp eq i8* %67, null, !dbg !1160
  br i1 %68, label %69, label %77, !dbg !1161

; <label>:69:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1162, metadata !676), !dbg !1164
  %70 = load i8*, i8** %8, align 8, !dbg !1165
  %71 = load i8*, i8** %9, align 8, !dbg !1166
  %72 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* %70, i8* %71), !dbg !1167
  store i8* %72, i8** %15, align 8, !dbg !1164
  %73 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1168
  %74 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1169
  %75 = load i8*, i8** %15, align 8, !dbg !1170
  call void @nicklist_set_host(%struct._CHANNEL_REC* %73, %struct._NICK_REC* %74, i8* %75), !dbg !1171
  %76 = load i8*, i8** %15, align 8, !dbg !1172
  call void @g_free(i8* %76), !dbg !1173
  br label %77, !dbg !1174

; <label>:77:                                     ; preds = %69, %64
  %78 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1175
  %79 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %78, i32 0, i32 5, !dbg !1177
  %80 = load i8*, i8** %79, align 8, !dbg !1177
  %81 = icmp eq i8* %80, null, !dbg !1178
  br i1 %81, label %82, label %87, !dbg !1179

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %11, align 8, !dbg !1180
  %84 = call noalias i8* @g_strdup(i8* %83), !dbg !1181
  %85 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1182
  %86 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %85, i32 0, i32 5, !dbg !1183
  store i8* %84, i8** %86, align 8, !dbg !1184
  br label %87, !dbg !1182

; <label>:87:                                     ; preds = %82, %77
  %88 = load i8*, i8** %12, align 8, !dbg !1185
  %89 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !1186
  %90 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %89, i32 0, i32 6, !dbg !1187
  %91 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32* %90) #5, !dbg !1188
  br label %92, !dbg !1189

; <label>:92:                                     ; preds = %87, %60
  %93 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1190
  %94 = load i8*, i8** %6, align 8, !dbg !1191
  %95 = load i8*, i8** %10, align 8, !dbg !1192
  %96 = call i8* @strchr(i8* %95, i32 71) #6, !dbg !1193
  %97 = icmp ne i8* %96, null, !dbg !1194
  %98 = zext i1 %97 to i32, !dbg !1194
  %99 = load i8*, i8** %10, align 8, !dbg !1195
  %100 = call i8* @strchr(i8* %99, i32 42) #6, !dbg !1196
  %101 = icmp ne i8* %100, null, !dbg !1197
  %102 = zext i1 %101 to i32, !dbg !1197
  call void @nicklist_update_flags(%struct._SERVER_REC* %93, i8* %94, i32 %98, i32 %102), !dbg !1198
  %103 = load i8*, i8** %5, align 8, !dbg !1199
  call void @g_free(i8* %103), !dbg !1200
  br label %104, !dbg !1201

; <label>:104:                                    ; preds = %92, %20
  ret void, !dbg !1202
}

; Function Attrs: nounwind uwtable
define internal void @event_whois(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1203 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._NICK_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1206, metadata !676), !dbg !1207
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1208, metadata !676), !dbg !1209
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1210, metadata !676), !dbg !1211
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1212, metadata !676), !dbg !1213
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1214, metadata !676), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1216, metadata !676), !dbg !1217
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1218, metadata !676), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %10, metadata !1220, metadata !676), !dbg !1221
  br label %11, !dbg !1222, !llvm.loop !1223

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1224
  %13 = icmp ne i8* %12, null, !dbg !1228
  br i1 %13, label %14, label %15, !dbg !1224

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1229

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1232
  br label %61, !dbg !1235

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1236

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1238
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 6, i8* null, i8** %6, i8* null, i8* null, i8* null, i8** %7), !dbg !1239
  store i8* %19, i8** %5, align 8, !dbg !1240
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1241
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !1241
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1242
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !1243
  %24 = load i8*, i8** %6, align 8, !dbg !1244
  %25 = call %struct._GSList* @nicklist_get_same(%struct._SERVER_REC* %23, i8* %24), !dbg !1245
  store %struct._GSList* %25, %struct._GSList** %8, align 8, !dbg !1247
  %26 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1248
  store %struct._GSList* %26, %struct._GSList** %9, align 8, !dbg !1250
  br label %27, !dbg !1251

; <label>:27:                                     ; preds = %47, %17
  %28 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1252
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1255
  br i1 %29, label %30, label %53, !dbg !1256

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1257
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1259
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1259
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !1260
  %35 = load i8*, i8** %34, align 8, !dbg !1260
  %36 = bitcast i8* %35 to %struct._NICK_REC*, !dbg !1257
  store %struct._NICK_REC* %36, %struct._NICK_REC** %10, align 8, !dbg !1261
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !1262
  %38 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %37, i32 0, i32 5, !dbg !1264
  %39 = load i8*, i8** %38, align 8, !dbg !1264
  %40 = icmp eq i8* %39, null, !dbg !1265
  br i1 %40, label %41, label %46, !dbg !1266

; <label>:41:                                     ; preds = %30
  %42 = load i8*, i8** %7, align 8, !dbg !1267
  %43 = call noalias i8* @g_strdup(i8* %42), !dbg !1268
  %44 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !1269
  %45 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %44, i32 0, i32 5, !dbg !1270
  store i8* %43, i8** %45, align 8, !dbg !1271
  br label %46, !dbg !1269

; <label>:46:                                     ; preds = %41, %30
  br label %47, !dbg !1272

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1273
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !1275
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !1275
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 1, !dbg !1276
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !1276
  store %struct._GSList* %52, %struct._GSList** %9, align 8, !dbg !1277
  br label %27, !dbg !1278, !llvm.loop !1279

; <label>:53:                                     ; preds = %27
  %54 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1281
  call void @g_slist_free(%struct._GSList* %54), !dbg !1282
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1283
  %56 = bitcast %struct._IRC_SERVER_REC* %55 to i8*, !dbg !1283
  %57 = call i8* @module_check_cast(i8* %56, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1284
  %58 = bitcast i8* %57 to %struct._SERVER_REC*, !dbg !1285
  %59 = load i8*, i8** %6, align 8, !dbg !1286
  call void @nicklist_update_flags(%struct._SERVER_REC* %58, i8* %59, i32 0, i32 0), !dbg !1287
  %60 = load i8*, i8** %5, align 8, !dbg !1288
  call void @g_free(i8* %60), !dbg !1289
  br label %61, !dbg !1290

; <label>:61:                                     ; preds = %53, %15
  ret void, !dbg !1291
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_away(%struct._SERVER_REC*, i8*) #0 !dbg !1292 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1293, metadata !676), !dbg !1294
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1295, metadata !676), !dbg !1296
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1297, metadata !676), !dbg !1298
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1299, metadata !676), !dbg !1300
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1301, metadata !676), !dbg !1302
  br label %8, !dbg !1303, !llvm.loop !1304

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1305
  %10 = icmp ne i8* %9, null, !dbg !1309
  br i1 %10, label %11, label %12, !dbg !1305

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1310

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1313
  br label %20, !dbg !1316

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1317

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1319
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1320
  store i8* %16, i8** %5, align 8, !dbg !1321
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1322
  %18 = load i8*, i8** %6, align 8, !dbg !1323
  call void @nicklist_update_flags(%struct._SERVER_REC* %17, i8* %18, i32 1, i32 -1), !dbg !1324
  %19 = load i8*, i8** %5, align 8, !dbg !1325
  call void @g_free(i8* %19), !dbg !1326
  br label %20, !dbg !1327

; <label>:20:                                     ; preds = %14, %12
  ret void, !dbg !1328
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_ircop(%struct._SERVER_REC*, i8*) #0 !dbg !1330 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1331, metadata !676), !dbg !1332
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1333, metadata !676), !dbg !1334
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1335, metadata !676), !dbg !1336
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1337, metadata !676), !dbg !1338
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1339, metadata !676), !dbg !1340
  br label %8, !dbg !1341, !llvm.loop !1342

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1343
  %10 = icmp ne i8* %9, null, !dbg !1347
  br i1 %10, label %11, label %12, !dbg !1343

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1348

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_whois_ircop, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1351
  br label %20, !dbg !1354

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1355

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1357
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1358
  store i8* %16, i8** %5, align 8, !dbg !1359
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1360
  %18 = load i8*, i8** %6, align 8, !dbg !1361
  call void @nicklist_update_flags(%struct._SERVER_REC* %17, i8* %18, i32 -1, i32 1), !dbg !1362
  %19 = load i8*, i8** %5, align 8, !dbg !1363
  call void @g_free(i8* %19), !dbg !1364
  br label %20, !dbg !1365

; <label>:20:                                     ; preds = %14, %12
  ret void, !dbg !1366
}

; Function Attrs: nounwind uwtable
define internal void @event_own_away(%struct._SERVER_REC*, i8*) #0 !dbg !1368 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1369, metadata !676), !dbg !1370
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1371, metadata !676), !dbg !1372
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1373, metadata !676), !dbg !1374
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1375, metadata !676), !dbg !1376
  br label %7, !dbg !1377, !llvm.loop !1378

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1379
  %9 = icmp ne i8* %8, null, !dbg !1383
  br i1 %9, label %10, label %11, !dbg !1379

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1384

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.event_own_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1387
  br label %19, !dbg !1390

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1391

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1393
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8** %6, i8* null), !dbg !1394
  store i8* %15, i8** %5, align 8, !dbg !1395
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1396
  %17 = load i8*, i8** %6, align 8, !dbg !1397
  call void @nicklist_update_flags(%struct._SERVER_REC* %16, i8* %17, i32 1, i32 -1), !dbg !1398
  %18 = load i8*, i8** %5, align 8, !dbg !1399
  call void @g_free(i8* %18), !dbg !1400
  br label %19, !dbg !1401

; <label>:19:                                     ; preds = %13, %11
  ret void, !dbg !1402
}

; Function Attrs: nounwind uwtable
define internal void @event_own_unaway(%struct._SERVER_REC*, i8*) #0 !dbg !1404 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1405, metadata !676), !dbg !1406
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1407, metadata !676), !dbg !1408
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1409, metadata !676), !dbg !1410
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1411, metadata !676), !dbg !1412
  br label %7, !dbg !1413, !llvm.loop !1414

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1415
  %9 = icmp ne i8* %8, null, !dbg !1419
  br i1 %9, label %10, label %11, !dbg !1415

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1420

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_own_unaway, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1423
  br label %19, !dbg !1426

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1427

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1429
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8** %6, i8* null), !dbg !1430
  store i8* %15, i8** %5, align 8, !dbg !1431
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1432
  %17 = load i8*, i8** %6, align 8, !dbg !1433
  call void @nicklist_update_flags(%struct._SERVER_REC* %16, i8* %17, i32 0, i32 -1), !dbg !1434
  %18 = load i8*, i8** %5, align 8, !dbg !1435
  call void @g_free(i8* %18), !dbg !1436
  br label %19, !dbg !1437

; <label>:19:                                     ; preds = %13, %11
  ret void, !dbg !1438
}

; Function Attrs: nounwind uwtable
define internal void @event_names_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1440 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1441, metadata !676), !dbg !1442
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1443, metadata !676), !dbg !1444
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1445, metadata !676), !dbg !1446
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1447, metadata !676), !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1449, metadata !676), !dbg !1450
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1451, metadata !676), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1453, metadata !676), !dbg !1454
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1455, metadata !676), !dbg !1456
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1457, metadata !676), !dbg !1458
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1459, metadata !676), !dbg !1460
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1461, metadata !676), !dbg !1462
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1463, metadata !676), !dbg !1464
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1465, metadata !676), !dbg !1466
  call void @llvm.dbg.declare(metadata [8 x i8]* %16, metadata !1467, metadata !676), !dbg !1468
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1469, metadata !676), !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1471, metadata !676), !dbg !1472
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1473, metadata !676), !dbg !1474
  br label %20, !dbg !1475, !llvm.loop !1476

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %4, align 8, !dbg !1477
  %22 = icmp ne i8* %21, null, !dbg !1481
  br i1 %22, label %23, label %24, !dbg !1477

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1482

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_names_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1485
  br label %208, !dbg !1488

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1489

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %4, align 8, !dbg !1491
  %28 = call i8* (i8*, i32, ...) @event_get_params(i8* %27, i32 4, i8* null, i8** %8, i8** %9, i8** %10), !dbg !1492
  store i8* %28, i8** %7, align 8, !dbg !1493
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1494
  %30 = bitcast %struct._IRC_SERVER_REC* %29 to i8*, !dbg !1494
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1495
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !1496
  %33 = load i8*, i8** %9, align 8, !dbg !1497
  %34 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %32, i8* %33), !dbg !1498
  %35 = bitcast %struct._CHANNEL_REC* %34 to i8*, !dbg !1500
  %36 = call i8* @module_check_cast_module(i8* %35, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1501
  %37 = bitcast i8* %36 to %struct._CHANNEL_REC*, !dbg !1503
  %38 = bitcast %struct._CHANNEL_REC* %37 to i8*, !dbg !1504
  %39 = call i8* @chat_protocol_check_cast(i8* %38, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1505
  %40 = bitcast i8* %39 to %struct._IRC_CHANNEL_REC*, !dbg !1507
  store %struct._IRC_CHANNEL_REC* %40, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1508
  %41 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1509
  %42 = icmp eq %struct._IRC_CHANNEL_REC* %41, null, !dbg !1511
  br i1 %42, label %51, label %43, !dbg !1512

; <label>:43:                                     ; preds = %26
  %44 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1513
  %45 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %44, i32 0, i32 21, !dbg !1515
  %46 = load i16, i16* %45, align 8, !dbg !1515
  %47 = lshr i16 %46, 1, !dbg !1515
  %48 = and i16 %47, 1, !dbg !1515
  %49 = zext i16 %48 to i32, !dbg !1515
  %50 = icmp ne i32 %49, 0, !dbg !1513
  br i1 %50, label %51, label %53, !dbg !1516

; <label>:51:                                     ; preds = %43, %26
  %52 = load i8*, i8** %7, align 8, !dbg !1517
  call void @g_free(i8* %52), !dbg !1519
  br label %208, !dbg !1520

; <label>:53:                                     ; preds = %43
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1521
  %55 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %54, i32 0, i32 28, !dbg !1522
  %56 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %55, align 8, !dbg !1522
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1523
  %58 = bitcast %struct._IRC_SERVER_REC* %57 to i8*, !dbg !1523
  %59 = call i8* @module_check_cast(i8* %58, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1524
  %60 = bitcast i8* %59 to %struct._SERVER_REC*, !dbg !1525
  %61 = call i8* %56(%struct._SERVER_REC* %60), !dbg !1526
  store i8* %61, i8** %17, align 8, !dbg !1527
  %62 = load i8*, i8** %17, align 8, !dbg !1528
  %63 = call i8* @strchr(i8* %62, i32 64) #6, !dbg !1529
  store i8* %63, i8** %19, align 8, !dbg !1530
  %64 = load i8*, i8** %8, align 8, !dbg !1531
  %65 = load i8, i8* %64, align 1, !dbg !1533
  %66 = sext i8 %65 to i32, !dbg !1533
  %67 = icmp eq i32 %66, 42, !dbg !1534
  br i1 %67, label %68, label %75, !dbg !1535

; <label>:68:                                     ; preds = %53
  %69 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1536
  %70 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1538
  %71 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %70, i32 0, i32 20, !dbg !1539
  %72 = load i8*, i8** %71, align 8, !dbg !1539
  %73 = icmp ne i8* %72, null, !dbg !1538
  %74 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), !dbg !1538
  call void @parse_channel_modes(%struct._IRC_CHANNEL_REC* %69, i8* null, i8* %74, i32 0), !dbg !1540
  br label %88, !dbg !1541

; <label>:75:                                     ; preds = %53
  %76 = load i8*, i8** %8, align 8, !dbg !1542
  %77 = load i8, i8* %76, align 1, !dbg !1545
  %78 = sext i8 %77 to i32, !dbg !1545
  %79 = icmp eq i32 %78, 64, !dbg !1546
  br i1 %79, label %80, label %87, !dbg !1545

; <label>:80:                                     ; preds = %75
  %81 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1547
  %82 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1549
  %83 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %82, i32 0, i32 20, !dbg !1550
  %84 = load i8*, i8** %83, align 8, !dbg !1550
  %85 = icmp ne i8* %84, null, !dbg !1549
  %86 = select i1 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), !dbg !1549
  call void @parse_channel_modes(%struct._IRC_CHANNEL_REC* %81, i8* null, i8* %86, i32 0), !dbg !1551
  br label %87, !dbg !1552

; <label>:87:                                     ; preds = %80, %75
  br label %88

; <label>:88:                                     ; preds = %87, %68
  br label %89, !dbg !1553

; <label>:89:                                     ; preds = %205, %88
  %90 = load i8*, i8** %10, align 8, !dbg !1554
  %91 = load i8, i8* %90, align 1, !dbg !1555
  %92 = sext i8 %91 to i32, !dbg !1555
  %93 = icmp ne i32 %92, 0, !dbg !1556
  br i1 %93, label %94, label %206, !dbg !1557

; <label>:94:                                     ; preds = %89
  br label %95, !dbg !1558

; <label>:95:                                     ; preds = %100, %94
  %96 = load i8*, i8** %10, align 8, !dbg !1560
  %97 = load i8, i8* %96, align 1, !dbg !1562
  %98 = sext i8 %97 to i32, !dbg !1562
  %99 = icmp eq i32 %98, 32, !dbg !1563
  br i1 %99, label %100, label %103, !dbg !1564

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %10, align 8, !dbg !1565
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !1565
  store i8* %102, i8** %10, align 8, !dbg !1565
  br label %95, !dbg !1567, !llvm.loop !1568

; <label>:103:                                    ; preds = %95
  %104 = load i8*, i8** %10, align 8, !dbg !1569
  store i8* %104, i8** %11, align 8, !dbg !1570
  br label %105, !dbg !1571

; <label>:105:                                    ; preds = %117, %103
  %106 = load i8*, i8** %10, align 8, !dbg !1572
  %107 = load i8, i8* %106, align 1, !dbg !1573
  %108 = sext i8 %107 to i32, !dbg !1573
  %109 = icmp ne i32 %108, 0, !dbg !1574
  br i1 %109, label %110, label %115, !dbg !1575

; <label>:110:                                    ; preds = %105
  %111 = load i8*, i8** %10, align 8, !dbg !1576
  %112 = load i8, i8* %111, align 1, !dbg !1577
  %113 = sext i8 %112 to i32, !dbg !1577
  %114 = icmp ne i32 %113, 32, !dbg !1578
  br label %115

; <label>:115:                                    ; preds = %110, %105
  %116 = phi i1 [ false, %105 ], [ %114, %110 ]
  br i1 %116, label %117, label %120, !dbg !1579

; <label>:117:                                    ; preds = %115
  %118 = load i8*, i8** %10, align 8, !dbg !1581
  %119 = getelementptr inbounds i8, i8* %118, i32 1, !dbg !1581
  store i8* %119, i8** %10, align 8, !dbg !1581
  br label %105, !dbg !1583, !llvm.loop !1584

; <label>:120:                                    ; preds = %115
  %121 = load i8*, i8** %10, align 8, !dbg !1585
  %122 = load i8, i8* %121, align 1, !dbg !1587
  %123 = sext i8 %122 to i32, !dbg !1587
  %124 = icmp ne i32 %123, 0, !dbg !1588
  br i1 %124, label %125, label %128, !dbg !1589

; <label>:125:                                    ; preds = %120
  %126 = load i8*, i8** %10, align 8, !dbg !1590
  %127 = getelementptr inbounds i8, i8* %126, i32 1, !dbg !1590
  store i8* %127, i8** %10, align 8, !dbg !1590
  store i8 0, i8* %126, align 1, !dbg !1592
  br label %128, !dbg !1593

; <label>:128:                                    ; preds = %125, %120
  store i32 0, i32* %15, align 4, !dbg !1594
  store i32 0, i32* %14, align 4, !dbg !1595
  store i32 0, i32* %13, align 4, !dbg !1596
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1597
  store i8 0, i8* %129, align 1, !dbg !1598
  br label %130, !dbg !1599

; <label>:130:                                    ; preds = %170, %128
  %131 = load i8*, i8** %11, align 8, !dbg !1600
  %132 = load i8, i8* %131, align 1, !dbg !1601
  %133 = zext i8 %132 to i32, !dbg !1602
  %134 = sext i32 %133 to i64, !dbg !1603
  %135 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1603
  %136 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %135, i32 0, i32 71, !dbg !1604
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %136, i64 0, i64 %134, !dbg !1603
  %138 = load i8, i8* %137, align 1, !dbg !1603
  %139 = sext i8 %138 to i32, !dbg !1603
  %140 = icmp ne i32 %139, 0, !dbg !1605
  br i1 %140, label %141, label %173, !dbg !1606

; <label>:141:                                    ; preds = %130
  %142 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i32 0, i32 0, !dbg !1607
  %143 = load i8*, i8** %11, align 8, !dbg !1609
  %144 = load i8, i8* %143, align 1, !dbg !1610
  %145 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1611
  %146 = bitcast %struct._IRC_SERVER_REC* %145 to %struct._SERVER_REC*, !dbg !1612
  call void @prefix_add(i8* %142, i8 signext %144, %struct._SERVER_REC* %146), !dbg !1613
  %147 = load i8*, i8** %11, align 8, !dbg !1614
  %148 = load i8, i8* %147, align 1, !dbg !1615
  %149 = sext i8 %148 to i32, !dbg !1615
  switch i32 %149, label %153 [
    i32 64, label %150
    i32 37, label %151
    i32 43, label %152
  ], !dbg !1616

; <label>:150:                                    ; preds = %141
  store i32 1, i32* %13, align 4, !dbg !1617
  br label %170, !dbg !1619

; <label>:151:                                    ; preds = %141
  store i32 1, i32* %14, align 4, !dbg !1620
  br label %170, !dbg !1621

; <label>:152:                                    ; preds = %141
  store i32 1, i32* %15, align 4, !dbg !1622
  br label %170, !dbg !1623

; <label>:153:                                    ; preds = %141
  %154 = load i8*, i8** %17, align 8, !dbg !1624
  %155 = load i8*, i8** %11, align 8, !dbg !1625
  %156 = load i8, i8* %155, align 1, !dbg !1626
  %157 = sext i8 %156 to i32, !dbg !1626
  %158 = call i8* @strchr(i8* %154, i32 %157) #6, !dbg !1627
  store i8* %158, i8** %18, align 8, !dbg !1628
  %159 = load i8*, i8** %18, align 8, !dbg !1629
  %160 = icmp ne i8* %159, null, !dbg !1629
  br i1 %160, label %161, label %169, !dbg !1631

; <label>:161:                                    ; preds = %153
  %162 = load i8*, i8** %19, align 8, !dbg !1632
  %163 = icmp ne i8* %162, null, !dbg !1632
  br i1 %163, label %164, label %169, !dbg !1634

; <label>:164:                                    ; preds = %161
  %165 = load i8*, i8** %18, align 8, !dbg !1635
  %166 = load i8*, i8** %19, align 8, !dbg !1637
  %167 = icmp ult i8* %165, %166, !dbg !1638
  br i1 %167, label %168, label %169, !dbg !1639

; <label>:168:                                    ; preds = %164
  store i32 1, i32* %13, align 4, !dbg !1640
  br label %169, !dbg !1642

; <label>:169:                                    ; preds = %168, %164, %161, %153
  br label %170, !dbg !1643

; <label>:170:                                    ; preds = %169, %152, %151, %150
  %171 = load i8*, i8** %11, align 8, !dbg !1644
  %172 = getelementptr inbounds i8, i8* %171, i32 1, !dbg !1644
  store i8* %172, i8** %11, align 8, !dbg !1644
  br label %130, !dbg !1645, !llvm.loop !1646

; <label>:173:                                    ; preds = %130
  %174 = load i8*, i8** %11, align 8, !dbg !1647
  %175 = call i8* @strchr(i8* %174, i32 33) #6, !dbg !1648
  store i8* %175, i8** %12, align 8, !dbg !1649
  %176 = load i8*, i8** %12, align 8, !dbg !1650
  %177 = icmp ne i8* %176, null, !dbg !1652
  br i1 %177, label %178, label %181, !dbg !1653

; <label>:178:                                    ; preds = %173
  %179 = load i8*, i8** %12, align 8, !dbg !1654
  %180 = getelementptr inbounds i8, i8* %179, i32 1, !dbg !1654
  store i8* %180, i8** %12, align 8, !dbg !1654
  store i8 0, i8* %179, align 1, !dbg !1655
  br label %181, !dbg !1656

; <label>:181:                                    ; preds = %178, %173
  %182 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1657
  %183 = bitcast %struct._IRC_CHANNEL_REC* %182 to %struct._CHANNEL_REC*, !dbg !1659
  %184 = load i8*, i8** %11, align 8, !dbg !1660
  %185 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %183, i8* %184), !dbg !1661
  %186 = icmp eq %struct._NICK_REC* %185, null, !dbg !1662
  br i1 %186, label %187, label %205, !dbg !1663

; <label>:187:                                    ; preds = %181
  %188 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1664
  %189 = load i8*, i8** %11, align 8, !dbg !1666
  %190 = load i32, i32* %13, align 4, !dbg !1667
  %191 = load i32, i32* %14, align 4, !dbg !1668
  %192 = load i32, i32* %15, align 4, !dbg !1669
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i32 0, i32 0, !dbg !1670
  %194 = call %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC* %188, i8* %189, i32 %190, i32 %191, i32 %192, i32 0, i8* %193), !dbg !1671
  store %struct._NICK_REC* %194, %struct._NICK_REC** %6, align 8, !dbg !1672
  %195 = load i8*, i8** %12, align 8, !dbg !1673
  %196 = icmp ne i8* %195, null, !dbg !1675
  br i1 %196, label %197, label %204, !dbg !1676

; <label>:197:                                    ; preds = %187
  %198 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1677
  %199 = bitcast %struct._IRC_CHANNEL_REC* %198 to i8*, !dbg !1677
  %200 = call i8* @module_check_cast_module(i8* %199, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1678
  %201 = bitcast i8* %200 to %struct._CHANNEL_REC*, !dbg !1679
  %202 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1680
  %203 = load i8*, i8** %12, align 8, !dbg !1681
  call void @nicklist_set_host(%struct._CHANNEL_REC* %201, %struct._NICK_REC* %202, i8* %203), !dbg !1682
  br label %204, !dbg !1684

; <label>:204:                                    ; preds = %197, %187
  br label %205, !dbg !1685

; <label>:205:                                    ; preds = %204, %181
  br label %89, !dbg !1686, !llvm.loop !1687

; <label>:206:                                    ; preds = %89
  %207 = load i8*, i8** %7, align 8, !dbg !1688
  call void @g_free(i8* %207), !dbg !1689
  br label %208, !dbg !1690

; <label>:208:                                    ; preds = %206, %51, %24
  ret void, !dbg !1691
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_names(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1692 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca %struct._NICK_REC*, align 8
  %9 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1693, metadata !676), !dbg !1694
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1695, metadata !676), !dbg !1696
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1697, metadata !676), !dbg !1698
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1699, metadata !676), !dbg !1700
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1701, metadata !676), !dbg !1702
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %8, metadata !1703, metadata !676), !dbg !1704
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1705, metadata !676), !dbg !1706
  br label %10, !dbg !1707, !llvm.loop !1708

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1709
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1713
  br i1 %12, label %13, label %14, !dbg !1709

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1714

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_end_of_names, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0)), !dbg !1717
  br label %96, !dbg !1720

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1721

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1723
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 2, i8* null, i8** %6), !dbg !1724
  store i8* %18, i8** %5, align 8, !dbg !1725
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1726
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !1726
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1727
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !1728
  %23 = load i8*, i8** %6, align 8, !dbg !1729
  %24 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %22, i8* %23), !dbg !1730
  %25 = bitcast %struct._CHANNEL_REC* %24 to i8*, !dbg !1732
  %26 = call i8* @module_check_cast_module(i8* %25, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1733
  %27 = bitcast i8* %26 to %struct._CHANNEL_REC*, !dbg !1735
  %28 = bitcast %struct._CHANNEL_REC* %27 to i8*, !dbg !1736
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1737
  %30 = bitcast i8* %29 to %struct._IRC_CHANNEL_REC*, !dbg !1739
  store %struct._IRC_CHANNEL_REC* %30, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1740
  %31 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1741
  %32 = icmp ne %struct._IRC_CHANNEL_REC* %31, null, !dbg !1743
  br i1 %32, label %33, label %94, !dbg !1744

; <label>:33:                                     ; preds = %16
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1745
  %35 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %34, i32 0, i32 21, !dbg !1747
  %36 = load i16, i16* %35, align 8, !dbg !1747
  %37 = lshr i16 %36, 1, !dbg !1747
  %38 = and i16 %37, 1, !dbg !1747
  %39 = zext i16 %38 to i32, !dbg !1747
  %40 = icmp ne i32 %39, 0, !dbg !1745
  br i1 %40, label %94, label %41, !dbg !1748

; <label>:41:                                     ; preds = %33
  %42 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1749
  %43 = bitcast %struct._IRC_CHANNEL_REC* %42 to i8*, !dbg !1749
  %44 = call i8* @module_check_cast_module(i8* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1751
  %45 = bitcast i8* %44 to %struct._CHANNEL_REC*, !dbg !1752
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1753
  %47 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %46, i32 0, i32 7, !dbg !1749
  %48 = load i8*, i8** %47, align 8, !dbg !1749
  %49 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %45, i8* %48), !dbg !1754
  store %struct._NICK_REC* %49, %struct._NICK_REC** %8, align 8, !dbg !1756
  %50 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1757
  %51 = icmp eq %struct._NICK_REC* %50, null, !dbg !1759
  br i1 %51, label %52, label %65, !dbg !1760

; <label>:52:                                     ; preds = %41
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1761
  %54 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %53, i32 0, i32 15, !dbg !1763
  %55 = load %struct._GHashTable*, %struct._GHashTable** %54, align 8, !dbg !1763
  %56 = call i32 @g_hash_table_size(%struct._GHashTable* %55), !dbg !1764
  store i32 %56, i32* %9, align 4, !dbg !1765
  %57 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1766
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1767
  %59 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %58, i32 0, i32 7, !dbg !1768
  %60 = load i8*, i8** %59, align 8, !dbg !1768
  %61 = load i32, i32* %9, align 4, !dbg !1769
  %62 = icmp eq i32 %61, 0, !dbg !1770
  %63 = zext i1 %62 to i32, !dbg !1770
  %64 = call %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC* %57, i8* %60, i32 %63, i32 0, i32 0, i32 0, i8* null), !dbg !1771
  store %struct._NICK_REC* %64, %struct._NICK_REC** %8, align 8, !dbg !1772
  br label %65, !dbg !1773

; <label>:65:                                     ; preds = %52, %41
  %66 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1774
  %67 = bitcast %struct._IRC_CHANNEL_REC* %66 to i8*, !dbg !1774
  %68 = call i8* @module_check_cast_module(i8* %67, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1775
  %69 = bitcast i8* %68 to %struct._CHANNEL_REC*, !dbg !1776
  %70 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !1777
  call void @nicklist_set_own(%struct._CHANNEL_REC* %69, %struct._NICK_REC* %70), !dbg !1778
  %71 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1779
  %72 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %71, i32 0, i32 16, !dbg !1780
  %73 = load %struct._NICK_REC*, %struct._NICK_REC** %72, align 8, !dbg !1780
  %74 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %73, i32 0, i32 7, !dbg !1781
  %75 = load i8, i8* %74, align 4, !dbg !1781
  %76 = lshr i8 %75, 3, !dbg !1781
  %77 = and i8 %76, 1, !dbg !1781
  %78 = zext i8 %77 to i32, !dbg !1781
  %79 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1782
  %80 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %79, i32 0, i32 21, !dbg !1783
  %81 = trunc i32 %78 to i16, !dbg !1784
  %82 = load i16, i16* %80, align 8, !dbg !1784
  %83 = and i16 %81, 1, !dbg !1784
  %84 = and i16 %82, -2, !dbg !1784
  %85 = or i16 %84, %83, !dbg !1784
  store i16 %85, i16* %80, align 8, !dbg !1784
  %86 = zext i16 %83 to i32, !dbg !1784
  %87 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1785
  %88 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %87, i32 0, i32 21, !dbg !1786
  %89 = load i16, i16* %88, align 8, !dbg !1787
  %90 = and i16 %89, -3, !dbg !1787
  %91 = or i16 %90, 2, !dbg !1787
  store i16 %91, i16* %88, align 8, !dbg !1787
  %92 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1788
  %93 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct._IRC_CHANNEL_REC* %92), !dbg !1789
  br label %94, !dbg !1790

; <label>:94:                                     ; preds = %65, %33, %16
  %95 = load i8*, i8** %5, align 8, !dbg !1791
  call void @g_free(i8* %95), !dbg !1792
  br label %96, !dbg !1793

; <label>:96:                                     ; preds = %94, %14
  ret void, !dbg !1794
}

; Function Attrs: nounwind uwtable
define internal void @event_nick_invalid(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1795 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1796, metadata !676), !dbg !1797
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1798, metadata !676), !dbg !1799
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1800
  %6 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %5, i32 0, i32 8, !dbg !1802
  %7 = load i8, i8* %6, align 8, !dbg !1802
  %8 = and i8 %7, 1, !dbg !1802
  %9 = zext i8 %8 to i32, !dbg !1802
  %10 = icmp ne i32 %9, 0, !dbg !1800
  br i1 %10, label %22, label %11, !dbg !1803

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1804
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 8, !dbg !1805
  %14 = load i8, i8* %13, align 8, !dbg !1806
  %15 = and i8 %14, -17, !dbg !1806
  %16 = or i8 %15, 16, !dbg !1806
  store i8 %16, i8* %13, align 8, !dbg !1806
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1807
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 8, !dbg !1808
  %19 = load i8, i8* %18, align 8, !dbg !1809
  %20 = and i8 %19, -5, !dbg !1809
  %21 = or i8 %20, 4, !dbg !1809
  store i8 %21, i8* %18, align 8, !dbg !1809
  br label %22, !dbg !1807

; <label>:22:                                     ; preds = %11, %2
  ret void, !dbg !1810
}

; Function Attrs: nounwind uwtable
define internal void @event_nick_in_use(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1811 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1812, metadata !676), !dbg !1813
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1814, metadata !676), !dbg !1815
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1816, metadata !676), !dbg !1817
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1818, metadata !676), !dbg !1819
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1820, metadata !676), !dbg !1821
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1822, metadata !676), !dbg !1823
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1824, metadata !676), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1826, metadata !676), !dbg !1827
  br label %11, !dbg !1828, !llvm.loop !1829

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1830
  %13 = icmp ne i8* %12, null, !dbg !1834
  br i1 %13, label %14, label %15, !dbg !1830

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1835

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_nick_in_use, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1838
  br label %176, !dbg !1841

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1842

; <label>:17:                                     ; preds = %16
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1844
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 8, !dbg !1846
  %20 = load i8, i8* %19, align 8, !dbg !1846
  %21 = and i8 %20, 1, !dbg !1846
  %22 = zext i8 %21 to i32, !dbg !1846
  %23 = icmp ne i32 %22, 0, !dbg !1844
  br i1 %23, label %24, label %25, !dbg !1847

; <label>:24:                                     ; preds = %17
  br label %176, !dbg !1848

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1850
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 7, !dbg !1851
  %28 = load i8*, i8** %27, align 8, !dbg !1851
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1852
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 3, !dbg !1853
  %31 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %30, align 8, !dbg !1853
  %32 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %31, i32 0, i32 16, !dbg !1854
  %33 = load i8*, i8** %32, align 8, !dbg !1854
  %34 = call i32 @g_ascii_strcasecmp(i8* %28, i8* %33), !dbg !1855
  %35 = icmp eq i32 %34, 0, !dbg !1856
  br i1 %35, label %36, label %54, !dbg !1857

; <label>:36:                                     ; preds = %25
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1858
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 3, !dbg !1859
  %39 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %38, align 8, !dbg !1859
  %40 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %39, i32 0, i32 32, !dbg !1860
  %41 = load i8*, i8** %40, align 8, !dbg !1860
  %42 = icmp ne i8* %41, null, !dbg !1861
  br i1 %42, label %43, label %54, !dbg !1862

; <label>:43:                                     ; preds = %36
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1863
  %45 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %44, i32 0, i32 3, !dbg !1864
  %46 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %45, align 8, !dbg !1864
  %47 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %46, i32 0, i32 32, !dbg !1865
  %48 = load i8*, i8** %47, align 8, !dbg !1865
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1866
  %50 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %49, i32 0, i32 7, !dbg !1867
  %51 = load i8*, i8** %50, align 8, !dbg !1867
  %52 = call i32 @g_ascii_strcasecmp(i8* %48, i8* %51), !dbg !1868
  %53 = icmp ne i32 %52, 0, !dbg !1869
  br label %54

; <label>:54:                                     ; preds = %43, %36, %25
  %55 = phi i1 [ false, %36 ], [ false, %25 ], [ %53, %43 ]
  %56 = zext i1 %55 to i32, !dbg !1870
  store i32 %56, i32* %10, align 4, !dbg !1872
  %57 = load i8*, i8** %4, align 8, !dbg !1873
  %58 = call i8* (i8*, i32, ...) @event_get_params(i8* %57, i32 2, i8* null, i8** %8), !dbg !1874
  store i8* %58, i8** %7, align 8, !dbg !1875
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1876
  %60 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %59, i32 0, i32 7, !dbg !1878
  %61 = load i8*, i8** %60, align 8, !dbg !1878
  %62 = load i8*, i8** %8, align 8, !dbg !1879
  %63 = call i32 @g_ascii_strcasecmp(i8* %61, i8* %62), !dbg !1880
  %64 = icmp ne i32 %63, 0, !dbg !1881
  br i1 %64, label %65, label %73, !dbg !1882

; <label>:65:                                     ; preds = %54
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1883
  %67 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %66, i32 0, i32 7, !dbg !1885
  %68 = load i8*, i8** %67, align 8, !dbg !1885
  call void @g_free(i8* %68), !dbg !1886
  %69 = load i8*, i8** %8, align 8, !dbg !1887
  %70 = call noalias i8* @g_strdup(i8* %69), !dbg !1888
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1889
  %72 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %71, i32 0, i32 7, !dbg !1890
  store i8* %70, i8** %72, align 8, !dbg !1891
  br label %73, !dbg !1892

; <label>:73:                                     ; preds = %65, %54
  %74 = load i8*, i8** %7, align 8, !dbg !1893
  call void @g_free(i8* %74), !dbg !1894
  %75 = load i32, i32* %10, align 4, !dbg !1895
  %76 = icmp ne i32 %75, 0, !dbg !1895
  br i1 %76, label %77, label %89, !dbg !1897

; <label>:77:                                     ; preds = %73
  %78 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1898
  %79 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %78, i32 0, i32 7, !dbg !1900
  %80 = load i8*, i8** %79, align 8, !dbg !1900
  call void @g_free(i8* %80), !dbg !1901
  %81 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1902
  %82 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %81, i32 0, i32 3, !dbg !1903
  %83 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %82, align 8, !dbg !1903
  %84 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %83, i32 0, i32 32, !dbg !1904
  %85 = load i8*, i8** %84, align 8, !dbg !1904
  %86 = call noalias i8* @g_strdup(i8* %85), !dbg !1905
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1906
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 7, !dbg !1907
  store i8* %86, i8** %88, align 8, !dbg !1908
  br label %168, !dbg !1909

; <label>:89:                                     ; preds = %73
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1910
  %91 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %90, i32 0, i32 7, !dbg !1912
  %92 = load i8*, i8** %91, align 8, !dbg !1912
  %93 = call i64 @strlen(i8* %92) #6, !dbg !1913
  %94 = icmp ult i64 %93, 9, !dbg !1914
  br i1 %94, label %95, label %106, !dbg !1915

; <label>:95:                                     ; preds = %89
  %96 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1916
  %97 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %96, i32 0, i32 7, !dbg !1918
  %98 = load i8*, i8** %97, align 8, !dbg !1918
  %99 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* %98), !dbg !1919
  store i8* %99, i8** %5, align 8, !dbg !1920
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1921
  %101 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %100, i32 0, i32 7, !dbg !1922
  %102 = load i8*, i8** %101, align 8, !dbg !1922
  call void @g_free(i8* %102), !dbg !1923
  %103 = load i8*, i8** %5, align 8, !dbg !1924
  %104 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1925
  %105 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %104, i32 0, i32 7, !dbg !1926
  store i8* %103, i8** %105, align 8, !dbg !1927
  br label %167, !dbg !1928

; <label>:106:                                    ; preds = %89
  store i32 8, i32* %9, align 4, !dbg !1929
  br label %107, !dbg !1932

; <label>:107:                                    ; preds = %163, %106
  %108 = load i32, i32* %9, align 4, !dbg !1933
  %109 = icmp sgt i32 %108, 0, !dbg !1936
  br i1 %109, label %110, label %166, !dbg !1937

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %9, align 4, !dbg !1938
  %112 = sext i32 %111 to i64, !dbg !1941
  %113 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1941
  %114 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %113, i32 0, i32 7, !dbg !1942
  %115 = load i8*, i8** %114, align 8, !dbg !1942
  %116 = getelementptr inbounds i8, i8* %115, i64 %112, !dbg !1941
  %117 = load i8, i8* %116, align 1, !dbg !1941
  %118 = sext i8 %117 to i32, !dbg !1941
  %119 = icmp slt i32 %118, 48, !dbg !1943
  br i1 %119, label %130, label %120, !dbg !1944

; <label>:120:                                    ; preds = %110
  %121 = load i32, i32* %9, align 4, !dbg !1945
  %122 = sext i32 %121 to i64, !dbg !1947
  %123 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1947
  %124 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %123, i32 0, i32 7, !dbg !1948
  %125 = load i8*, i8** %124, align 8, !dbg !1948
  %126 = getelementptr inbounds i8, i8* %125, i64 %122, !dbg !1947
  %127 = load i8, i8* %126, align 1, !dbg !1947
  %128 = sext i8 %127 to i32, !dbg !1947
  %129 = icmp sgt i32 %128, 57, !dbg !1949
  br i1 %129, label %130, label %137, !dbg !1950

; <label>:130:                                    ; preds = %120, %110
  %131 = load i32, i32* %9, align 4, !dbg !1951
  %132 = sext i32 %131 to i64, !dbg !1953
  %133 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1953
  %134 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %133, i32 0, i32 7, !dbg !1954
  %135 = load i8*, i8** %134, align 8, !dbg !1954
  %136 = getelementptr inbounds i8, i8* %135, i64 %132, !dbg !1953
  store i8 49, i8* %136, align 1, !dbg !1955
  br label %166, !dbg !1956

; <label>:137:                                    ; preds = %120
  %138 = load i32, i32* %9, align 4, !dbg !1957
  %139 = sext i32 %138 to i64, !dbg !1959
  %140 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1959
  %141 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %140, i32 0, i32 7, !dbg !1960
  %142 = load i8*, i8** %141, align 8, !dbg !1960
  %143 = getelementptr inbounds i8, i8* %142, i64 %139, !dbg !1959
  %144 = load i8, i8* %143, align 1, !dbg !1959
  %145 = sext i8 %144 to i32, !dbg !1959
  %146 = icmp slt i32 %145, 57, !dbg !1961
  br i1 %146, label %147, label %156, !dbg !1962

; <label>:147:                                    ; preds = %137
  %148 = load i32, i32* %9, align 4, !dbg !1963
  %149 = sext i32 %148 to i64, !dbg !1965
  %150 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1965
  %151 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %150, i32 0, i32 7, !dbg !1966
  %152 = load i8*, i8** %151, align 8, !dbg !1966
  %153 = getelementptr inbounds i8, i8* %152, i64 %149, !dbg !1965
  %154 = load i8, i8* %153, align 1, !dbg !1967
  %155 = add i8 %154, 1, !dbg !1967
  store i8 %155, i8* %153, align 1, !dbg !1967
  br label %166, !dbg !1968

; <label>:156:                                    ; preds = %137
  %157 = load i32, i32* %9, align 4, !dbg !1969
  %158 = sext i32 %157 to i64, !dbg !1970
  %159 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1970
  %160 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %159, i32 0, i32 7, !dbg !1971
  %161 = load i8*, i8** %160, align 8, !dbg !1971
  %162 = getelementptr inbounds i8, i8* %161, i64 %158, !dbg !1970
  store i8 48, i8* %162, align 1, !dbg !1972
  br label %163, !dbg !1973

; <label>:163:                                    ; preds = %156
  %164 = load i32, i32* %9, align 4, !dbg !1974
  %165 = add nsw i32 %164, -1, !dbg !1974
  store i32 %165, i32* %9, align 4, !dbg !1974
  br label %107, !dbg !1976, !llvm.loop !1977

; <label>:166:                                    ; preds = %147, %130, %107
  br label %167

; <label>:167:                                    ; preds = %166, %95
  br label %168

; <label>:168:                                    ; preds = %167, %77
  %169 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1979
  %170 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %169, i32 0, i32 7, !dbg !1980
  %171 = load i8*, i8** %170, align 8, !dbg !1980
  %172 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* %171), !dbg !1981
  store i8* %172, i8** %6, align 8, !dbg !1982
  %173 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1983
  %174 = load i8*, i8** %6, align 8, !dbg !1984
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %173, i8* %174), !dbg !1985
  %175 = load i8*, i8** %6, align 8, !dbg !1986
  call void @g_free(i8* %175), !dbg !1987
  br label %176, !dbg !1988

; <label>:176:                                    ; preds = %168, %24, %15
  ret void, !dbg !1989
}

; Function Attrs: nounwind uwtable
define internal void @event_target_unavailable(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1990 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1991, metadata !676), !dbg !1992
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1993, metadata !676), !dbg !1994
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1995, metadata !676), !dbg !1996
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1997, metadata !676), !dbg !1998
  br label %7, !dbg !1999, !llvm.loop !2000

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !2001
  %9 = icmp ne i8* %8, null, !dbg !2005
  br i1 %9, label %10, label %11, !dbg !2001

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2006

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.event_target_unavailable, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !2009
  br label %34, !dbg !2012

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2013

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2015
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2016
  store i8* %15, i8** %5, align 8, !dbg !2017
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2018
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !2018
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !2020
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !2021
  %20 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %19, i32 0, i32 27, !dbg !2022
  %21 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %20, align 8, !dbg !2022
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2023
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !2023
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !2024
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !2026
  %26 = load i8*, i8** %6, align 8, !dbg !2027
  %27 = call i32 %21(%struct._SERVER_REC* %25, i8* %26), !dbg !2028
  %28 = icmp ne i32 %27, 0, !dbg !2030
  br i1 %28, label %32, label %29, !dbg !2031

; <label>:29:                                     ; preds = %13
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2032
  %31 = load i8*, i8** %4, align 8, !dbg !2034
  call void @event_nick_in_use(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !2035
  br label %32, !dbg !2036

; <label>:32:                                     ; preds = %29, %13
  %33 = load i8*, i8** %5, align 8, !dbg !2037
  call void @g_free(i8* %33), !dbg !2038
  br label %34, !dbg !2039

; <label>:34:                                     ; preds = %32, %11
  ret void, !dbg !2040
}

; Function Attrs: nounwind uwtable
define internal void @event_userhost(%struct._SERVER_REC*, i8*) #0 !dbg !2042 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2043, metadata !676), !dbg !2044
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2045, metadata !676), !dbg !2046
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2047, metadata !676), !dbg !2048
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2049, metadata !676), !dbg !2050
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2051, metadata !676), !dbg !2052
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2053, metadata !676), !dbg !2054
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2055, metadata !676), !dbg !2056
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2057, metadata !676), !dbg !2058
  br label %11, !dbg !2059, !llvm.loop !2060

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !2061
  %13 = icmp ne i8* %12, null, !dbg !2065
  br i1 %13, label %14, label %15, !dbg !2061

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2066

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.event_userhost, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !2069
  br label %67, !dbg !2072

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2073

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !2075
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 2, i8* null, i8** %6), !dbg !2076
  store i8* %19, i8** %5, align 8, !dbg !2077
  %20 = load i8*, i8** %6, align 8, !dbg !2078
  %21 = call noalias i8** @g_strsplit(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i32 -1), !dbg !2079
  store i8** %21, i8*** %7, align 8, !dbg !2080
  %22 = load i8**, i8*** %7, align 8, !dbg !2081
  store i8** %22, i8*** %8, align 8, !dbg !2083
  br label %23, !dbg !2084

; <label>:23:                                     ; preds = %61, %17
  %24 = load i8**, i8*** %8, align 8, !dbg !2085
  %25 = load i8*, i8** %24, align 8, !dbg !2088
  %26 = icmp ne i8* %25, null, !dbg !2089
  br i1 %26, label %27, label %64, !dbg !2090

; <label>:27:                                     ; preds = %23
  %28 = load i8**, i8*** %8, align 8, !dbg !2091
  %29 = load i8*, i8** %28, align 8, !dbg !2093
  %30 = call i8* @strchr(i8* %29, i32 61) #6, !dbg !2094
  store i8* %30, i8** %9, align 8, !dbg !2095
  %31 = load i8*, i8** %9, align 8, !dbg !2096
  %32 = icmp eq i8* %31, null, !dbg !2098
  br i1 %32, label %38, label %33, !dbg !2099

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %9, align 8, !dbg !2100
  %35 = load i8**, i8*** %8, align 8, !dbg !2102
  %36 = load i8*, i8** %35, align 8, !dbg !2103
  %37 = icmp eq i8* %34, %36, !dbg !2104
  br i1 %37, label %38, label %39, !dbg !2105

; <label>:38:                                     ; preds = %33, %27
  br label %61, !dbg !2106

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %9, align 8, !dbg !2108
  %41 = getelementptr inbounds i8, i8* %40, i64 -1, !dbg !2108
  %42 = load i8, i8* %41, align 1, !dbg !2108
  %43 = sext i8 %42 to i32, !dbg !2108
  %44 = icmp eq i32 %43, 42, !dbg !2110
  br i1 %44, label %45, label %48, !dbg !2111

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %9, align 8, !dbg !2112
  %47 = getelementptr inbounds i8, i8* %46, i64 -1, !dbg !2112
  store i8 0, i8* %47, align 1, !dbg !2114
  store i32 1, i32* %10, align 4, !dbg !2115
  br label %49, !dbg !2116

; <label>:48:                                     ; preds = %39
  store i32 0, i32* %10, align 4, !dbg !2117
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = load i8*, i8** %9, align 8, !dbg !2118
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !2118
  store i8* %51, i8** %9, align 8, !dbg !2118
  store i8 0, i8* %50, align 1, !dbg !2119
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2120
  %53 = load i8**, i8*** %8, align 8, !dbg !2121
  %54 = load i8*, i8** %53, align 8, !dbg !2122
  %55 = load i8*, i8** %9, align 8, !dbg !2123
  %56 = load i8, i8* %55, align 1, !dbg !2124
  %57 = sext i8 %56 to i32, !dbg !2124
  %58 = icmp eq i32 %57, 45, !dbg !2125
  %59 = zext i1 %58 to i32, !dbg !2125
  %60 = load i32, i32* %10, align 4, !dbg !2126
  call void @nicklist_update_flags(%struct._SERVER_REC* %52, i8* %54, i32 %59, i32 %60), !dbg !2127
  br label %61, !dbg !2128

; <label>:61:                                     ; preds = %49, %38
  %62 = load i8**, i8*** %8, align 8, !dbg !2129
  %63 = getelementptr inbounds i8*, i8** %62, i32 1, !dbg !2129
  store i8** %63, i8*** %8, align 8, !dbg !2129
  br label %23, !dbg !2131, !llvm.loop !2132

; <label>:64:                                     ; preds = %23
  %65 = load i8**, i8*** %7, align 8, !dbg !2134
  call void @g_strfreev(i8** %65), !dbg !2135
  %66 = load i8*, i8** %5, align 8, !dbg !2136
  call void @g_free(i8* %66), !dbg !2137
  br label %67, !dbg !2138

; <label>:67:                                     ; preds = %64, %15
  ret void, !dbg !2139
}

; Function Attrs: nounwind uwtable
define internal void @sig_usermode(%struct._SERVER_REC*) #0 !dbg !2141 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !2144, metadata !676), !dbg !2145
  br label %3, !dbg !2146, !llvm.loop !2147

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2148
  %5 = bitcast %struct._SERVER_REC* %4 to i8*, !dbg !2148
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !2152
  %7 = bitcast i8* %6 to %struct._SERVER_REC*, !dbg !2153
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !2153
  br i1 %8, label %9, label %10, !dbg !2154

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !2155

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !2157

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !2159

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.sig_usermode, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0)), !dbg !2162
  br label %25, !dbg !2165

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2166

; <label>:14:                                     ; preds = %13
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2168
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2169
  %17 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %16, i32 0, i32 7, !dbg !2170
  %18 = load i8*, i8** %17, align 8, !dbg !2170
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2171
  %20 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %19, i32 0, i32 19, !dbg !2172
  %21 = load i8, i8* %20, align 8, !dbg !2172
  %22 = lshr i8 %21, 1, !dbg !2172
  %23 = and i8 %22, 1, !dbg !2172
  %24 = zext i8 %23 to i32, !dbg !2172
  call void @nicklist_update_flags(%struct._SERVER_REC* %15, i8* %18, i32 %24, i32 -1), !dbg !2173
  br label %25, !dbg !2174

; <label>:25:                                     ; preds = %14, %12
  ret void, !dbg !2175
}

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !2177 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !2180, metadata !676), !dbg !2181
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2182
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !2182
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !2184
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !2185
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !2186
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2187
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !2189
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !2189
  br i1 %10, label %11, label %12, !dbg !2190

; <label>:11:                                     ; preds = %1
  br i1 false, label %16, label %13, !dbg !2191

; <label>:12:                                     ; preds = %1
  br i1 false, label %13, label %16, !dbg !2193

; <label>:13:                                     ; preds = %12, %11
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2195
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 28, !dbg !2196
  store i8* (%struct._SERVER_REC*)* @get_nick_flags, i8* (%struct._SERVER_REC*)** %15, align 8, !dbg !2197
  br label %16, !dbg !2195

; <label>:16:                                     ; preds = %13, %12, %11
  ret void, !dbg !2198
}

; Function Attrs: nounwind uwtable
define void @irc_nicklist_deinit() #0 !dbg !2199 {
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2200
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2201
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2202
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2203
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2204
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2205
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_whois_ircop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2206
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_own_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2207
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_own_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2208
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_names_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2209
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2210
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_invalid to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2211
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_in_use to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2212
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2213
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2214
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2215
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_usermode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2216
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2217
  ret void, !dbg !2218
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare void @g_free(i8*) #2

declare void @server_change_nick(%struct._SERVER_REC*, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @nicklist_rename(%struct._SERVER_REC*, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @nicklist_set_host(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @nicklist_update_flags(%struct._SERVER_REC*, i8*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._GSList* @nicklist_get_same(%struct._SERVER_REC*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare void @parse_channel_modes(%struct._IRC_CHANNEL_REC*, i8*, i8*, i32) #2

declare void @prefix_add(i8*, i8 signext, %struct._SERVER_REC*) #2

declare i32 @g_hash_table_size(%struct._GHashTable*) #2

declare void @nicklist_set_own(%struct._CHANNEL_REC*, %struct._NICK_REC*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_nick_flags(%struct._SERVER_REC*) #0 !dbg !2219 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !2220, metadata !676), !dbg !2221
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2222, metadata !676), !dbg !2223
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2224
  %6 = bitcast %struct._SERVER_REC* %5 to %struct._IRC_SERVER_REC*, !dbg !2225
  store %struct._IRC_SERVER_REC* %6, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2223
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2226, metadata !676), !dbg !2227
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2228
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 69, !dbg !2229
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2229
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)), !dbg !2230
  store i8* %10, i8** %4, align 8, !dbg !2227
  %11 = load i8*, i8** %4, align 8, !dbg !2231
  %12 = icmp eq i8* %11, null, !dbg !2232
  br i1 %12, label %13, label %14, !dbg !2231

; <label>:13:                                     ; preds = %1
  br label %17, !dbg !2233

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %4, align 8, !dbg !2235
  %16 = call i8* @strchr(i8* %15, i32 41) #6, !dbg !2237
  br label %17, !dbg !2238

; <label>:17:                                     ; preds = %14, %13
  %18 = phi i8* [ null, %13 ], [ %16, %14 ], !dbg !2239
  store i8* %18, i8** %4, align 8, !dbg !2241
  %19 = load i8*, i8** %4, align 8, !dbg !2242
  %20 = icmp eq i8* %19, null, !dbg !2243
  br i1 %20, label %21, label %22, !dbg !2242

; <label>:21:                                     ; preds = %17
  br label %25, !dbg !2244

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8, !dbg !2245
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !2246
  br label %25, !dbg !2247

; <label>:25:                                     ; preds = %22, %21
  %26 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), %21 ], [ %24, %22 ], !dbg !2248
  ret i8* %26, !dbg !2249
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!667, !668}
!llvm.ident = !{!669}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line131-irc-nicklist.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !468, !121, !449, !52, !500, !659, !361, !44, !666, !54}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !38, line: 7, baseType: !39)
!38 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !40, line: 15, size: 1600, align: 64, elements: !41)
!40 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !{!42, !45, !46, !51, !53, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !43, line: 3, baseType: !44, size: 32, align: 32)
!43 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !39, file: !43, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !39, file: !43, line: 5, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !49, line: 37, baseType: !50)
!49 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !49, line: 37, flags: DIFlagFwdDecl)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !39, file: !43, line: 7, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !39, file: !43, line: 8, baseType: !54, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !38, line: 6, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !57, line: 42, size: 39168, align: 64, elements: !58)
!57 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !61, !62, !63, !310, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !328, !332, !333, !334, !338, !339, !340, !341, !342, !343, !344, !345, !346, !353, !354, !355, !356, !357, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !626, !628}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !60, line: 3, baseType: !44, size: 32, align: 32)
!60 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !56, file: !60, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !56, file: !60, line: 6, baseType: !44, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !56, file: !60, line: 8, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !38, line: 5, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !57, line: 24, size: 2496, align: 64, elements: !67)
!67 = !{!68, !70, !71, !72, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !69, line: 3, baseType: !44, size: 32, align: 32)
!69 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !66, file: !69, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !69, line: 6, baseType: !44, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !66, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !66, file: !69, line: 10, baseType: !44, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !66, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !66, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !66, file: !69, line: 16, baseType: !44, size: 32, align: 32, offset: 640)
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
!107 = !{!108, !111, !255, !256, !261, !262, !263, !264, !265, !274, !275, !276, !280, !281, !282, !283, !284, !285, !286, !287}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !106, file: !4, line: 100, baseType: !109, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !110, line: 49, baseType: !44)
!110 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !106, file: !4, line: 101, baseType: !112, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !115)
!115 = !{!116, !140, !146, !153, !157, !242, !246, !251}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !114, file: !4, line: 133, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !104, !121, !123, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !110, line: 46, baseType: !74)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !124, line: 66, baseType: !125)
!124 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !130, line: 42, baseType: !131)
!130 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !130, line: 44, size: 128, align: 64, elements: !132)
!132 = !{!133, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !131, file: !130, line: 46, baseType: !134, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !135, line: 36, baseType: !136)
!135 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !124, line: 45, baseType: !137)
!137 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !131, file: !130, line: 47, baseType: !109, size: 32, align: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !131, file: !130, line: 48, baseType: !121, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !114, file: !4, line: 138, baseType: !141, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!120, !104, !144, !123, !126, !127}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !114, file: !4, line: 143, baseType: !147, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!120, !104, !150, !152, !127}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !124, line: 51, baseType: !151)
!151 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !114, file: !4, line: 147, baseType: !154, size: 64, align: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!120, !104, !127}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !114, file: !4, line: 149, baseType: !158, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !104, !241}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !164)
!164 = !{!165, !167, !188, !217, !219, !223, !224, !225, !226, !234, !235, !236, !237}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !163, file: !16, line: 174, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !110, line: 77, baseType: !52)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !163, file: !16, line: 175, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !171)
!171 = !{!172, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !170, file: !16, line: 198, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !166}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !170, file: !16, line: 199, baseType: !173, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !170, file: !16, line: 200, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !166, !161, !181, !187}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !166}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !110, line: 50, baseType: !109)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !163, file: !16, line: 177, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !193)
!193 = !{!194, !199, !203, !207, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !192, file: !16, line: 216, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!186, !161, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !192, file: !16, line: 218, baseType: !200, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!186, !161}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !192, file: !16, line: 219, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!186, !161, !182, !166}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !192, file: !16, line: 222, baseType: !208, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !161}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !192, file: !16, line: 226, baseType: !182, size: 64, align: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !192, file: !16, line: 227, baseType: !213, size: 64, align: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !163, file: !16, line: 178, baseType: !218, size: 32, align: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !110, line: 55, baseType: !137)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !163, file: !16, line: 180, baseType: !220, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !163, file: !16, line: 182, baseType: !109, size: 32, align: 32, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !16, line: 183, baseType: !218, size: 32, align: 32, offset: 352)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !163, file: !16, line: 184, baseType: !218, size: 32, align: 32, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !163, file: !16, line: 186, baseType: !227, size: 64, align: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !229, line: 37, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !229, line: 39, size: 128, align: 64, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !229, line: 41, baseType: !166, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !229, line: 42, baseType: !227, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !16, line: 188, baseType: !161, size: 64, align: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !16, line: 189, baseType: !161, size: 64, align: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !16, line: 191, baseType: !73, size: 64, align: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !163, file: !16, line: 193, baseType: !238, size: 64, align: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !114, file: !4, line: 151, baseType: !243, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !104}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !114, file: !4, line: 152, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!120, !104, !250, !127}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !114, file: !4, line: 155, baseType: !252, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !104}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !106, file: !4, line: 103, baseType: !121, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !106, file: !4, line: 104, baseType: !257, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !258, line: 77, baseType: !259)
!258 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !258, line: 77, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !106, file: !4, line: 105, baseType: !257, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !106, file: !4, line: 106, baseType: !121, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !106, file: !4, line: 107, baseType: !218, size: 32, align: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !106, file: !4, line: 109, baseType: !123, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !106, file: !4, line: 110, baseType: !266, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !268, line: 39, baseType: !269)
!268 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !268, line: 41, size: 192, align: 64, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !269, file: !268, line: 43, baseType: !121, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !268, line: 44, baseType: !123, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !269, file: !268, line: 45, baseType: !123, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !106, file: !4, line: 111, baseType: !266, size: 64, align: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !106, file: !4, line: 112, baseType: !266, size: 64, align: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !106, file: !4, line: 113, baseType: !277, size: 48, align: 8, offset: 704)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 48, align: 8, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 6)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !106, file: !4, line: 117, baseType: !218, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !106, file: !4, line: 118, baseType: !218, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !106, file: !4, line: 119, baseType: !218, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !106, file: !4, line: 120, baseType: !218, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !106, file: !4, line: 121, baseType: !218, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !106, file: !4, line: 122, baseType: !218, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !106, file: !4, line: 124, baseType: !166, size: 64, align: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !106, file: !4, line: 125, baseType: !166, size: 64, align: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !66, file: !69, line: 38, baseType: !137, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !66, file: !69, line: 39, baseType: !137, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !66, file: !69, line: 40, baseType: !137, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !66, file: !69, line: 41, baseType: !137, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !66, file: !69, line: 42, baseType: !137, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !66, file: !69, line: 43, baseType: !137, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !66, file: !69, line: 44, baseType: !137, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !66, file: !69, line: 45, baseType: !137, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !66, file: !69, line: 46, baseType: !73, size: 64, align: 64, offset: 1792)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !66, file: !69, line: 47, baseType: !73, size: 64, align: 64, offset: 1856)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !66, file: !57, line: 27, baseType: !73, size: 64, align: 64, offset: 1920)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !66, file: !57, line: 28, baseType: !73, size: 64, align: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !66, file: !57, line: 30, baseType: !44, size: 32, align: 32, offset: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !66, file: !57, line: 31, baseType: !73, size: 64, align: 64, offset: 2112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !66, file: !57, line: 32, baseType: !73, size: 64, align: 64, offset: 2176)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !66, file: !57, line: 34, baseType: !44, size: 32, align: 32, offset: 2240)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !66, file: !57, line: 35, baseType: !44, size: 32, align: 32, offset: 2272)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !66, file: !57, line: 36, baseType: !44, size: 32, align: 32, offset: 2304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !66, file: !57, line: 38, baseType: !44, size: 32, align: 32, offset: 2336)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !66, file: !57, line: 38, baseType: !44, size: 32, align: 32, offset: 2368)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !66, file: !57, line: 38, baseType: !44, size: 32, align: 32, offset: 2400)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !66, file: !57, line: 38, baseType: !44, size: 32, align: 32, offset: 2432)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !56, file: !60, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !312, line: 75, baseType: !313)
!312 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !314, line: 139, baseType: !151)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !56, file: !60, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !56, file: !60, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !56, file: !60, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !56, file: !60, line: 15, baseType: !137, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !56, file: !60, line: 16, baseType: !137, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !56, file: !60, line: 17, baseType: !137, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !56, file: !60, line: 18, baseType: !137, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !56, file: !60, line: 19, baseType: !137, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !56, file: !60, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !88, line: 102, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !88, line: 102, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !56, file: !60, line: 22, baseType: !44, size: 32, align: 32, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !56, file: !60, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, align: 64, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !56, file: !60, line: 26, baseType: !44, size: 32, align: 32, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !56, file: !60, line: 27, baseType: !44, size: 32, align: 32, offset: 800)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !56, file: !60, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !88, line: 103, baseType: !337)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !88, line: 103, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !56, file: !60, line: 30, baseType: !47, size: 64, align: 64, offset: 896)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !56, file: !60, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !56, file: !60, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !56, file: !60, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !56, file: !60, line: 35, baseType: !137, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !56, file: !60, line: 36, baseType: !137, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !56, file: !60, line: 37, baseType: !137, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !56, file: !60, line: 38, baseType: !137, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !56, file: !60, line: 40, baseType: !347, size: 128, align: 64, offset: 1216)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !110, line: 504, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !110, line: 506, size: 128, align: 64, elements: !349)
!349 = !{!350, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !348, file: !110, line: 508, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !110, line: 48, baseType: !151)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !348, file: !110, line: 509, baseType: !351, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !56, file: !60, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !56, file: !60, line: 42, baseType: !44, size: 32, align: 32, offset: 1408)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !56, file: !60, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !56, file: !60, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !56, file: !60, line: 53, baseType: !358, size: 64, align: 64, offset: 1600)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361, !449, !44}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !88, line: 107, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !364, line: 30, size: 2240, align: 64, elements: !365)
!364 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !{!366, !367, !368, !369, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !445, !451, !455, !459, !464, !542, !549, !553}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !363, file: !60, line: 3, baseType: !44, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !363, file: !60, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !363, file: !60, line: 6, baseType: !44, size: 32, align: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !363, file: !60, line: 8, baseType: !370, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !88, line: 113, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !364, line: 25, size: 1920, align: 64, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !69, line: 3, baseType: !44, size: 32, align: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !372, file: !69, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !372, file: !69, line: 6, baseType: !44, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !372, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !372, file: !69, line: 10, baseType: !44, size: 32, align: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !372, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !372, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !372, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !372, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !372, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !372, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !372, file: !69, line: 16, baseType: !44, size: 32, align: 32, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !372, file: !69, line: 17, baseType: !73, size: 64, align: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !372, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !372, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !372, file: !69, line: 21, baseType: !73, size: 64, align: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !372, file: !69, line: 22, baseType: !73, size: 64, align: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !372, file: !69, line: 23, baseType: !73, size: 64, align: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !372, file: !69, line: 24, baseType: !73, size: 64, align: 64, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !372, file: !69, line: 26, baseType: !73, size: 64, align: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !372, file: !69, line: 27, baseType: !73, size: 64, align: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !372, file: !69, line: 28, baseType: !73, size: 64, align: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !372, file: !69, line: 29, baseType: !73, size: 64, align: 64, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !372, file: !69, line: 30, baseType: !73, size: 64, align: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !372, file: !69, line: 31, baseType: !73, size: 64, align: 64, offset: 1472)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !372, file: !69, line: 32, baseType: !73, size: 64, align: 64, offset: 1536)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !372, file: !69, line: 33, baseType: !73, size: 64, align: 64, offset: 1600)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !372, file: !69, line: 35, baseType: !104, size: 64, align: 64, offset: 1664)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !372, file: !69, line: 38, baseType: !137, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !372, file: !69, line: 39, baseType: !137, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !372, file: !69, line: 40, baseType: !137, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !372, file: !69, line: 41, baseType: !137, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !372, file: !69, line: 42, baseType: !137, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !372, file: !69, line: 43, baseType: !137, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !372, file: !69, line: 44, baseType: !137, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !372, file: !69, line: 45, baseType: !137, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !372, file: !69, line: 46, baseType: !73, size: 64, align: 64, offset: 1792)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !372, file: !69, line: 47, baseType: !73, size: 64, align: 64, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !363, file: !60, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !363, file: !60, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !363, file: !60, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !363, file: !60, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !363, file: !60, line: 15, baseType: !137, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !363, file: !60, line: 16, baseType: !137, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !363, file: !60, line: 17, baseType: !137, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !363, file: !60, line: 18, baseType: !137, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !363, file: !60, line: 19, baseType: !137, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !363, file: !60, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !363, file: !60, line: 22, baseType: !44, size: 32, align: 32, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !363, file: !60, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !363, file: !60, line: 26, baseType: !44, size: 32, align: 32, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !363, file: !60, line: 27, baseType: !44, size: 32, align: 32, offset: 800)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !363, file: !60, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !363, file: !60, line: 30, baseType: !47, size: 64, align: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !363, file: !60, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !363, file: !60, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !363, file: !60, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !363, file: !60, line: 35, baseType: !137, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !363, file: !60, line: 36, baseType: !137, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !363, file: !60, line: 37, baseType: !137, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !363, file: !60, line: 38, baseType: !137, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !363, file: !60, line: 40, baseType: !347, size: 128, align: 64, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !363, file: !60, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !363, file: !60, line: 42, baseType: !44, size: 32, align: 32, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !363, file: !60, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !363, file: !60, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !363, file: !60, line: 53, baseType: !358, size: 64, align: 64, offset: 1600)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !363, file: !60, line: 55, baseType: !442, size: 64, align: 64, offset: 1664)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!44, !361, !74}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !363, file: !60, line: 57, baseType: !446, size: 64, align: 64, offset: 1728)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!44, !361, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !363, file: !60, line: 60, baseType: !452, size: 64, align: 64, offset: 1792)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!449, !361}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !363, file: !60, line: 62, baseType: !456, size: 64, align: 64, offset: 1856)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !361, !449, !449, !44}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !363, file: !60, line: 65, baseType: !460, size: 64, align: 64, offset: 1920)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !361, !449, !449}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !363, file: !60, line: 69, baseType: !465, size: 64, align: 64, offset: 1984)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !361, !449}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !88, line: 109, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !471, line: 15, size: 1408, align: 64, elements: !472)
!471 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !490, !494, !496, !497, !498, !499, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !43, line: 3, baseType: !44, size: 32, align: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !470, file: !43, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !470, file: !43, line: 5, baseType: !47, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !470, file: !43, line: 7, baseType: !52, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !470, file: !43, line: 8, baseType: !361, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !470, file: !43, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !43, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !470, file: !43, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !470, file: !43, line: 12, baseType: !44, size: 32, align: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !470, file: !43, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !470, file: !43, line: 15, baseType: !484, size: 64, align: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !88, line: 108, baseType: !489)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !88, line: 108, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !470, file: !43, line: 17, baseType: !491, size: 64, align: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!449, !487}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !470, file: !495, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!495 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!496 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !470, file: !495, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !470, file: !495, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !470, file: !495, line: 9, baseType: !47, size: 64, align: 64, offset: 896)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !470, file: !495, line: 10, baseType: !500, size: 64, align: 64, offset: 960)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !88, line: 111, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !503, line: 13, size: 576, align: 64, elements: !504)
!503 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!504 = !{!505, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !523, !524}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !506, line: 3, baseType: !44, size: 32, align: 32)
!506 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !502, file: !506, line: 4, baseType: !44, size: 32, align: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !502, file: !506, line: 6, baseType: !311, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !502, file: !506, line: 8, baseType: !73, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !502, file: !506, line: 9, baseType: !73, size: 64, align: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !502, file: !506, line: 10, baseType: !73, size: 64, align: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !502, file: !506, line: 11, baseType: !44, size: 32, align: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !502, file: !506, line: 14, baseType: !137, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !502, file: !506, line: 15, baseType: !137, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !502, file: !506, line: 18, baseType: !137, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !502, file: !506, line: 19, baseType: !137, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !502, file: !506, line: 20, baseType: !137, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !502, file: !506, line: 21, baseType: !137, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !502, file: !506, line: 22, baseType: !520, size: 64, align: 8, offset: 360)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, align: 8, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !502, file: !506, line: 26, baseType: !52, size: 64, align: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !506, line: 28, baseType: !500, size: 64, align: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !470, file: !495, line: 12, baseType: !137, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !470, file: !495, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !470, file: !495, line: 14, baseType: !44, size: 32, align: 32, offset: 1152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !470, file: !495, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !470, file: !495, line: 17, baseType: !137, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !470, file: !495, line: 18, baseType: !137, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !470, file: !495, line: 19, baseType: !137, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !470, file: !495, line: 20, baseType: !137, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !470, file: !495, line: 22, baseType: !137, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !470, file: !495, line: 23, baseType: !137, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !470, file: !495, line: 24, baseType: !137, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !470, file: !495, line: 25, baseType: !137, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !470, file: !495, line: 26, baseType: !137, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !470, file: !495, line: 31, baseType: !539, size: 64, align: 64, offset: 1344)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!73, !468}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !363, file: !60, line: 70, baseType: !543, size: 64, align: 64, offset: 2048)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !361, !449}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !88, line: 110, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !88, line: 110, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !363, file: !60, line: 71, baseType: !550, size: 64, align: 64, offset: 2112)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!44, !449, !449}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !363, file: !60, line: 73, baseType: !550, size: 64, align: 64, offset: 2176)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !56, file: !60, line: 55, baseType: !442, size: 64, align: 64, offset: 1664)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !56, file: !60, line: 57, baseType: !446, size: 64, align: 64, offset: 1728)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !56, file: !60, line: 60, baseType: !452, size: 64, align: 64, offset: 1792)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !56, file: !60, line: 62, baseType: !456, size: 64, align: 64, offset: 1856)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !56, file: !60, line: 65, baseType: !460, size: 64, align: 64, offset: 1920)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !56, file: !60, line: 69, baseType: !465, size: 64, align: 64, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !56, file: !60, line: 70, baseType: !543, size: 64, align: 64, offset: 2048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !56, file: !60, line: 71, baseType: !550, size: 64, align: 64, offset: 2112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !56, file: !60, line: 73, baseType: !550, size: 64, align: 64, offset: 2176)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !56, file: !57, line: 46, baseType: !227, size: 64, align: 64, offset: 2240)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !56, file: !57, line: 47, baseType: !227, size: 64, align: 64, offset: 2304)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !56, file: !57, line: 48, baseType: !566, size: 64, align: 64, offset: 2368)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !38, line: 8, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !38, line: 8, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !56, file: !57, line: 49, baseType: !227, size: 64, align: 64, offset: 2432)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !56, file: !57, line: 51, baseType: !73, size: 64, align: 64, offset: 2496)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !56, file: !57, line: 53, baseType: !73, size: 64, align: 64, offset: 2560)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !56, file: !57, line: 54, baseType: !73, size: 64, align: 64, offset: 2624)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !56, file: !57, line: 55, baseType: !73, size: 64, align: 64, offset: 2688)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !56, file: !57, line: 56, baseType: !73, size: 64, align: 64, offset: 2752)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !56, file: !57, line: 57, baseType: !44, size: 32, align: 32, offset: 2816)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !56, file: !57, line: 59, baseType: !137, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !56, file: !57, line: 60, baseType: !137, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !56, file: !57, line: 62, baseType: !137, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !56, file: !57, line: 63, baseType: !137, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !56, file: !57, line: 64, baseType: !137, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !56, file: !57, line: 65, baseType: !137, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !56, file: !57, line: 66, baseType: !137, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !56, file: !57, line: 67, baseType: !137, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !56, file: !57, line: 68, baseType: !137, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !56, file: !57, line: 69, baseType: !137, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !56, file: !57, line: 70, baseType: !137, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !56, file: !57, line: 71, baseType: !137, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !56, file: !57, line: 72, baseType: !137, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !56, file: !57, line: 74, baseType: !44, size: 32, align: 32, offset: 2880)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !56, file: !57, line: 75, baseType: !44, size: 32, align: 32, offset: 2912)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !56, file: !57, line: 76, baseType: !44, size: 32, align: 32, offset: 2944)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !56, file: !57, line: 77, baseType: !44, size: 32, align: 32, offset: 2976)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !56, file: !57, line: 79, baseType: !47, size: 64, align: 64, offset: 3008)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !56, file: !57, line: 80, baseType: !227, size: 64, align: 64, offset: 3072)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !56, file: !57, line: 81, baseType: !227, size: 64, align: 64, offset: 3136)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !56, file: !57, line: 83, baseType: !266, size: 64, align: 64, offset: 3200)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !56, file: !57, line: 84, baseType: !218, size: 32, align: 32, offset: 3264)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !56, file: !57, line: 87, baseType: !44, size: 32, align: 32, offset: 3296)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !56, file: !57, line: 91, baseType: !227, size: 64, align: 64, offset: 3328)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !56, file: !57, line: 92, baseType: !347, size: 128, align: 64, offset: 3392)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !56, file: !57, line: 93, baseType: !347, size: 128, align: 64, offset: 3520)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !56, file: !57, line: 95, baseType: !44, size: 32, align: 32, offset: 3648)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !56, file: !57, line: 96, baseType: !44, size: 32, align: 32, offset: 3680)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !56, file: !57, line: 97, baseType: !44, size: 32, align: 32, offset: 3712)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !56, file: !57, line: 100, baseType: !227, size: 64, align: 64, offset: 3776)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !56, file: !57, line: 103, baseType: !227, size: 64, align: 64, offset: 3840)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !56, file: !57, line: 106, baseType: !227, size: 64, align: 64, offset: 3904)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !56, file: !57, line: 108, baseType: !47, size: 64, align: 64, offset: 3968)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !56, file: !57, line: 109, baseType: !227, size: 64, align: 64, offset: 4032)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !56, file: !57, line: 111, baseType: !227, size: 64, align: 64, offset: 4096)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !56, file: !57, line: 114, baseType: !52, size: 64, align: 64, offset: 4160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !56, file: !57, line: 116, baseType: !47, size: 64, align: 64, offset: 4224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !56, file: !57, line: 117, baseType: !614, size: 32768, align: 64, offset: 4288)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 32768, align: 64, elements: !624)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !616, line: 10, size: 128, align: 64, elements: !617)
!616 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!617 = !{!618, !623}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !615, file: !616, line: 11, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !616, line: 7, baseType: !621)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !36, !449, !74, !74, !73, !266}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !615, file: !616, line: 12, baseType: !74, size: 8, align: 8, offset: 64)
!624 = !{!625}
!625 = !DISubrange(count: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !56, file: !57, line: 118, baseType: !627, size: 2048, align: 8, offset: 37056)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !624)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !56, file: !57, line: 120, baseType: !550, size: 64, align: 64, offset: 39104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !39, file: !43, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !43, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !39, file: !43, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !39, file: !43, line: 12, baseType: !44, size: 32, align: 32, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !39, file: !43, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !39, file: !43, line: 15, baseType: !484, size: 64, align: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !39, file: !43, line: 17, baseType: !491, size: 64, align: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !39, file: !495, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !39, file: !495, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !39, file: !495, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !39, file: !495, line: 9, baseType: !47, size: 64, align: 64, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !39, file: !495, line: 10, baseType: !500, size: 64, align: 64, offset: 960)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !39, file: !495, line: 12, baseType: !137, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !39, file: !495, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !39, file: !495, line: 14, baseType: !44, size: 32, align: 32, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !39, file: !495, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !39, file: !495, line: 17, baseType: !137, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !39, file: !495, line: 18, baseType: !137, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !39, file: !495, line: 19, baseType: !137, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !39, file: !495, line: 20, baseType: !137, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !39, file: !495, line: 22, baseType: !137, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !39, file: !495, line: 23, baseType: !137, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !39, file: !495, line: 24, baseType: !137, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !39, file: !495, line: 25, baseType: !137, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !39, file: !495, line: 26, baseType: !137, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !39, file: !495, line: 31, baseType: !539, size: 64, align: 64, offset: 1344)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !39, file: !40, line: 18, baseType: !227, size: 64, align: 64, offset: 1408)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !39, file: !40, line: 20, baseType: !311, size: 64, align: 64, offset: 1472)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !39, file: !40, line: 21, baseType: !44, size: 32, align: 32, offset: 1536)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !39, file: !40, line: 22, baseType: !44, size: 32, align: 32, offset: 1568)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !660, line: 9, baseType: !661)
!660 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664, !664, !664, !664, !664, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!666 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!667 = !{i32 2, !"Dwarf Version", i32 4}
!668 = !{i32 2, !"Debug Info Version", i32 3}
!669 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!670 = distinct !DISubprogram(name: "irc_nicklist_insert", scope: !671, file: !671, line: 33, type: !672, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!671 = !DIFile(filename: "irc-nicklist.c", directory: "/home/lichi/Desktop/irssi/task1")
!672 = !DISubroutineType(types: !673)
!673 = !{!500, !36, !449, !44, !44, !44, !44, !449}
!674 = !{}
!675 = !DILocalVariable(name: "channel", arg: 1, scope: !670, file: !671, line: 33, type: !36)
!676 = !DIExpression()
!677 = !DILocation(line: 33, column: 48, scope: !670)
!678 = !DILocalVariable(name: "nick", arg: 2, scope: !670, file: !671, line: 33, type: !449)
!679 = !DILocation(line: 33, column: 69, scope: !670)
!680 = !DILocalVariable(name: "op", arg: 3, scope: !670, file: !671, line: 34, type: !44)
!681 = !DILocation(line: 34, column: 14, scope: !670)
!682 = !DILocalVariable(name: "halfop", arg: 4, scope: !670, file: !671, line: 34, type: !44)
!683 = !DILocation(line: 34, column: 22, scope: !670)
!684 = !DILocalVariable(name: "voice", arg: 5, scope: !670, file: !671, line: 34, type: !44)
!685 = !DILocation(line: 34, column: 34, scope: !670)
!686 = !DILocalVariable(name: "send_massjoin", arg: 6, scope: !670, file: !671, line: 34, type: !44)
!687 = !DILocation(line: 34, column: 45, scope: !670)
!688 = !DILocalVariable(name: "prefixes", arg: 7, scope: !670, file: !671, line: 35, type: !449)
!689 = !DILocation(line: 35, column: 22, scope: !670)
!690 = !DILocalVariable(name: "rec", scope: !670, file: !671, line: 37, type: !500)
!691 = !DILocation(line: 37, column: 12, scope: !670)
!692 = !DILocation(line: 39, column: 2, scope: !670)
!693 = distinct !{!693, !692}
!694 = !DILocation(line: 39, column: 99, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !671, discriminator: 1)
!696 = distinct !DILexicalBlock(scope: !697, file: !671, line: 39, column: 10)
!697 = distinct !DILexicalBlock(scope: !670, file: !671, line: 39, column: 4)
!698 = !DILocation(line: 39, column: 74, scope: !695)
!699 = !DILocation(line: 39, column: 58, scope: !695)
!700 = !DILocation(line: 39, column: 57, scope: !695)
!701 = !DILocation(line: 39, column: 32, scope: !702)
!702 = !DILexicalBlockFile(scope: !695, file: !671, discriminator: 7)
!703 = !DILocation(line: 39, column: 12, scope: !695)
!704 = !DILocation(line: 39, column: 10, scope: !695)
!705 = !DILocation(line: 39, column: 11, scope: !706)
!706 = !DILexicalBlockFile(scope: !696, file: !671, discriminator: 2)
!707 = !DILocation(line: 39, column: 10, scope: !708)
!708 = !DILexicalBlockFile(scope: !697, file: !671, discriminator: 3)
!709 = !DILocation(line: 39, column: 30, scope: !710)
!710 = !DILexicalBlockFile(scope: !711, file: !671, discriminator: 4)
!711 = distinct !DILexicalBlock(scope: !696, file: !671, line: 39, column: 28)
!712 = !DILocation(line: 39, column: 39, scope: !713)
!713 = !DILexicalBlockFile(scope: !714, file: !671, discriminator: 5)
!714 = distinct !DILexicalBlock(scope: !696, file: !671, line: 39, column: 37)
!715 = !DILocation(line: 39, column: 135, scope: !713)
!716 = !DILocation(line: 39, column: 7, scope: !717)
!717 = !DILexicalBlockFile(scope: !697, file: !671, discriminator: 6)
!718 = !DILocation(line: 40, column: 2, scope: !670)
!719 = distinct !{!719, !718}
!720 = !DILocation(line: 40, column: 10, scope: !721)
!721 = !DILexicalBlockFile(scope: !722, file: !671, discriminator: 1)
!722 = distinct !DILexicalBlock(scope: !723, file: !671, line: 40, column: 10)
!723 = distinct !DILexicalBlock(scope: !670, file: !671, line: 40, column: 4)
!724 = !DILocation(line: 40, column: 15, scope: !721)
!725 = !DILocation(line: 40, column: 5, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !671, discriminator: 2)
!727 = distinct !DILexicalBlock(scope: !722, file: !671, line: 40, column: 3)
!728 = !DILocation(line: 40, column: 14, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !671, discriminator: 3)
!730 = distinct !DILexicalBlock(scope: !722, file: !671, line: 40, column: 12)
!731 = !DILocation(line: 40, column: 99, scope: !729)
!732 = !DILocation(line: 40, column: 7, scope: !733)
!733 = !DILexicalBlockFile(scope: !723, file: !671, discriminator: 4)
!734 = !DILocation(line: 42, column: 22, scope: !670)
!735 = !DILocation(line: 42, column: 9, scope: !670)
!736 = !DILocation(line: 42, column: 6, scope: !670)
!737 = !DILocation(line: 43, column: 23, scope: !670)
!738 = !DILocation(line: 43, column: 14, scope: !670)
!739 = !DILocation(line: 43, column: 2, scope: !670)
!740 = !DILocation(line: 43, column: 7, scope: !670)
!741 = !DILocation(line: 43, column: 12, scope: !670)
!742 = !DILocation(line: 45, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !670, file: !671, line: 45, column: 6)
!744 = !DILocation(line: 45, column: 6, scope: !670)
!745 = !DILocation(line: 45, column: 10, scope: !746)
!746 = !DILexicalBlockFile(scope: !743, file: !671, discriminator: 1)
!747 = !DILocation(line: 45, column: 15, scope: !746)
!748 = !DILocation(line: 45, column: 18, scope: !746)
!749 = !DILocation(line: 46, column: 6, scope: !750)
!750 = distinct !DILexicalBlock(scope: !670, file: !671, line: 46, column: 6)
!751 = !DILocation(line: 46, column: 6, scope: !670)
!752 = !DILocation(line: 46, column: 14, scope: !753)
!753 = !DILexicalBlockFile(scope: !750, file: !671, discriminator: 1)
!754 = !DILocation(line: 46, column: 19, scope: !753)
!755 = !DILocation(line: 46, column: 26, scope: !753)
!756 = !DILocation(line: 47, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !670, file: !671, line: 47, column: 6)
!758 = !DILocation(line: 47, column: 6, scope: !670)
!759 = !DILocation(line: 47, column: 13, scope: !760)
!760 = !DILexicalBlockFile(scope: !757, file: !671, discriminator: 1)
!761 = !DILocation(line: 47, column: 18, scope: !760)
!762 = !DILocation(line: 47, column: 24, scope: !760)
!763 = !DILocation(line: 48, column: 23, scope: !670)
!764 = !DILocation(line: 48, column: 2, scope: !670)
!765 = !DILocation(line: 48, column: 7, scope: !670)
!766 = !DILocation(line: 48, column: 21, scope: !670)
!767 = !DILocation(line: 50, column: 6, scope: !768)
!768 = distinct !DILexicalBlock(scope: !670, file: !671, line: 50, column: 6)
!769 = !DILocation(line: 50, column: 15, scope: !768)
!770 = !DILocation(line: 50, column: 6, scope: !670)
!771 = !DILocation(line: 51, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !671, line: 50, column: 23)
!773 = !DILocation(line: 51, column: 18, scope: !772)
!774 = !DILocation(line: 51, column: 28, scope: !772)
!775 = !DILocation(line: 51, column: 3, scope: !772)
!776 = !DILocation(line: 52, column: 2, scope: !772)
!777 = !DILocation(line: 54, column: 60, scope: !670)
!778 = !DILocation(line: 54, column: 35, scope: !670)
!779 = !DILocation(line: 54, column: 19, scope: !670)
!780 = !DILocation(line: 54, column: 52, scope: !670)
!781 = !DILocation(line: 54, column: 2, scope: !782)
!782 = !DILexicalBlockFile(scope: !670, file: !671, discriminator: 1)
!783 = !DILocation(line: 55, column: 9, scope: !670)
!784 = !DILocation(line: 55, column: 2, scope: !670)
!785 = !DILocation(line: 56, column: 1, scope: !670)
!786 = distinct !DISubprogram(name: "irc_nickcmp_rfc1459", scope: !671, file: !671, line: 58, type: !551, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!787 = !DILocalVariable(name: "m", arg: 1, scope: !786, file: !671, line: 58, type: !449)
!788 = !DILocation(line: 58, column: 37, scope: !786)
!789 = !DILocalVariable(name: "n", arg: 2, scope: !786, file: !671, line: 58, type: !449)
!790 = !DILocation(line: 58, column: 52, scope: !786)
!791 = !DILocation(line: 60, column: 2, scope: !786)
!792 = !DILocation(line: 60, column: 10, scope: !793)
!793 = !DILexicalBlockFile(scope: !786, file: !671, discriminator: 1)
!794 = !DILocation(line: 60, column: 9, scope: !793)
!795 = !DILocation(line: 60, column: 12, scope: !793)
!796 = !DILocation(line: 60, column: 20, scope: !793)
!797 = !DILocation(line: 60, column: 24, scope: !798)
!798 = !DILexicalBlockFile(scope: !786, file: !671, discriminator: 2)
!799 = !DILocation(line: 60, column: 23, scope: !798)
!800 = !DILocation(line: 60, column: 26, scope: !798)
!801 = !DILocation(line: 60, column: 2, scope: !802)
!802 = !DILexicalBlockFile(scope: !786, file: !671, discriminator: 3)
!803 = !DILocation(line: 61, column: 10, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !671, line: 61, column: 7)
!805 = distinct !DILexicalBlock(scope: !786, file: !671, line: 60, column: 35)
!806 = !DILocation(line: 61, column: 9, scope: !804)
!807 = !DILocation(line: 61, column: 8, scope: !804)
!808 = !DILocation(line: 61, column: 13, scope: !804)
!809 = !DILocation(line: 61, column: 19, scope: !804)
!810 = !DILocation(line: 61, column: 24, scope: !811)
!811 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 1)
!812 = !DILocation(line: 61, column: 23, scope: !811)
!813 = !DILocation(line: 61, column: 22, scope: !811)
!814 = !DILocation(line: 61, column: 27, scope: !811)
!815 = !DILocation(line: 61, column: 8, scope: !811)
!816 = !DILocation(line: 61, column: 37, scope: !817)
!817 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 2)
!818 = !DILocation(line: 61, column: 36, scope: !817)
!819 = !DILocation(line: 61, column: 35, scope: !817)
!820 = !DILocation(line: 61, column: 40, scope: !817)
!821 = !DILocation(line: 61, column: 8, scope: !817)
!822 = !DILocation(line: 61, column: 49, scope: !823)
!823 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 3)
!824 = !DILocation(line: 61, column: 48, scope: !823)
!825 = !DILocation(line: 61, column: 47, scope: !823)
!826 = !DILocation(line: 61, column: 8, scope: !823)
!827 = !DILocation(line: 61, column: 8, scope: !828)
!828 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 4)
!829 = !DILocation(line: 61, column: 59, scope: !828)
!830 = !DILocation(line: 61, column: 58, scope: !828)
!831 = !DILocation(line: 61, column: 57, scope: !828)
!832 = !DILocation(line: 61, column: 62, scope: !828)
!833 = !DILocation(line: 61, column: 68, scope: !828)
!834 = !DILocation(line: 61, column: 73, scope: !835)
!835 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 5)
!836 = !DILocation(line: 61, column: 72, scope: !835)
!837 = !DILocation(line: 61, column: 71, scope: !835)
!838 = !DILocation(line: 61, column: 76, scope: !835)
!839 = !DILocation(line: 61, column: 57, scope: !835)
!840 = !DILocation(line: 61, column: 86, scope: !841)
!841 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 6)
!842 = !DILocation(line: 61, column: 85, scope: !841)
!843 = !DILocation(line: 61, column: 84, scope: !841)
!844 = !DILocation(line: 61, column: 89, scope: !841)
!845 = !DILocation(line: 61, column: 57, scope: !841)
!846 = !DILocation(line: 61, column: 98, scope: !847)
!847 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 7)
!848 = !DILocation(line: 61, column: 97, scope: !847)
!849 = !DILocation(line: 61, column: 96, scope: !847)
!850 = !DILocation(line: 61, column: 57, scope: !847)
!851 = !DILocation(line: 61, column: 57, scope: !852)
!852 = !DILexicalBlockFile(scope: !804, file: !671, discriminator: 8)
!853 = !DILocation(line: 61, column: 53, scope: !852)
!854 = !DILocation(line: 61, column: 7, scope: !852)
!855 = !DILocation(line: 62, column: 4, scope: !804)
!856 = !DILocation(line: 63, column: 4, scope: !805)
!857 = !DILocation(line: 63, column: 9, scope: !805)
!858 = !DILocation(line: 60, column: 2, scope: !859)
!859 = !DILexicalBlockFile(scope: !786, file: !671, discriminator: 4)
!860 = distinct !{!860, !791}
!861 = !DILocation(line: 65, column: 10, scope: !786)
!862 = !DILocation(line: 65, column: 9, scope: !786)
!863 = !DILocation(line: 65, column: 16, scope: !786)
!864 = !DILocation(line: 65, column: 15, scope: !786)
!865 = !DILocation(line: 65, column: 12, scope: !786)
!866 = !DILocation(line: 65, column: 2, scope: !786)
!867 = !DILocation(line: 66, column: 1, scope: !786)
!868 = distinct !DISubprogram(name: "irc_nickcmp_ascii", scope: !671, file: !671, line: 68, type: !551, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!869 = !DILocalVariable(name: "m", arg: 1, scope: !868, file: !671, line: 68, type: !449)
!870 = !DILocation(line: 68, column: 35, scope: !868)
!871 = !DILocalVariable(name: "n", arg: 2, scope: !868, file: !671, line: 68, type: !449)
!872 = !DILocation(line: 68, column: 50, scope: !868)
!873 = !DILocation(line: 70, column: 2, scope: !868)
!874 = !DILocation(line: 70, column: 10, scope: !875)
!875 = !DILexicalBlockFile(scope: !868, file: !671, discriminator: 1)
!876 = !DILocation(line: 70, column: 9, scope: !875)
!877 = !DILocation(line: 70, column: 12, scope: !875)
!878 = !DILocation(line: 70, column: 20, scope: !875)
!879 = !DILocation(line: 70, column: 24, scope: !880)
!880 = !DILexicalBlockFile(scope: !868, file: !671, discriminator: 2)
!881 = !DILocation(line: 70, column: 23, scope: !880)
!882 = !DILocation(line: 70, column: 26, scope: !880)
!883 = !DILocation(line: 70, column: 2, scope: !884)
!884 = !DILexicalBlockFile(scope: !868, file: !671, discriminator: 3)
!885 = !DILocation(line: 71, column: 10, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !671, line: 71, column: 7)
!887 = distinct !DILexicalBlock(scope: !868, file: !671, line: 70, column: 35)
!888 = !DILocation(line: 71, column: 9, scope: !886)
!889 = !DILocation(line: 71, column: 8, scope: !886)
!890 = !DILocation(line: 71, column: 13, scope: !886)
!891 = !DILocation(line: 71, column: 19, scope: !886)
!892 = !DILocation(line: 71, column: 24, scope: !893)
!893 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 1)
!894 = !DILocation(line: 71, column: 23, scope: !893)
!895 = !DILocation(line: 71, column: 22, scope: !893)
!896 = !DILocation(line: 71, column: 27, scope: !893)
!897 = !DILocation(line: 71, column: 8, scope: !893)
!898 = !DILocation(line: 71, column: 37, scope: !899)
!899 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 2)
!900 = !DILocation(line: 71, column: 36, scope: !899)
!901 = !DILocation(line: 71, column: 35, scope: !899)
!902 = !DILocation(line: 71, column: 40, scope: !899)
!903 = !DILocation(line: 71, column: 8, scope: !899)
!904 = !DILocation(line: 71, column: 49, scope: !905)
!905 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 3)
!906 = !DILocation(line: 71, column: 48, scope: !905)
!907 = !DILocation(line: 71, column: 47, scope: !905)
!908 = !DILocation(line: 71, column: 8, scope: !905)
!909 = !DILocation(line: 71, column: 8, scope: !910)
!910 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 4)
!911 = !DILocation(line: 71, column: 59, scope: !910)
!912 = !DILocation(line: 71, column: 58, scope: !910)
!913 = !DILocation(line: 71, column: 57, scope: !910)
!914 = !DILocation(line: 71, column: 62, scope: !910)
!915 = !DILocation(line: 71, column: 68, scope: !910)
!916 = !DILocation(line: 71, column: 73, scope: !917)
!917 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 5)
!918 = !DILocation(line: 71, column: 72, scope: !917)
!919 = !DILocation(line: 71, column: 71, scope: !917)
!920 = !DILocation(line: 71, column: 76, scope: !917)
!921 = !DILocation(line: 71, column: 57, scope: !917)
!922 = !DILocation(line: 71, column: 86, scope: !923)
!923 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 6)
!924 = !DILocation(line: 71, column: 85, scope: !923)
!925 = !DILocation(line: 71, column: 84, scope: !923)
!926 = !DILocation(line: 71, column: 89, scope: !923)
!927 = !DILocation(line: 71, column: 57, scope: !923)
!928 = !DILocation(line: 71, column: 98, scope: !929)
!929 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 7)
!930 = !DILocation(line: 71, column: 97, scope: !929)
!931 = !DILocation(line: 71, column: 96, scope: !929)
!932 = !DILocation(line: 71, column: 57, scope: !929)
!933 = !DILocation(line: 71, column: 57, scope: !934)
!934 = !DILexicalBlockFile(scope: !886, file: !671, discriminator: 8)
!935 = !DILocation(line: 71, column: 53, scope: !934)
!936 = !DILocation(line: 71, column: 7, scope: !934)
!937 = !DILocation(line: 72, column: 4, scope: !886)
!938 = !DILocation(line: 73, column: 4, scope: !887)
!939 = !DILocation(line: 73, column: 9, scope: !887)
!940 = !DILocation(line: 70, column: 2, scope: !941)
!941 = !DILexicalBlockFile(scope: !868, file: !671, discriminator: 4)
!942 = distinct !{!942, !873}
!943 = !DILocation(line: 75, column: 10, scope: !868)
!944 = !DILocation(line: 75, column: 9, scope: !868)
!945 = !DILocation(line: 75, column: 16, scope: !868)
!946 = !DILocation(line: 75, column: 15, scope: !868)
!947 = !DILocation(line: 75, column: 12, scope: !868)
!948 = !DILocation(line: 75, column: 2, scope: !868)
!949 = !DILocation(line: 76, column: 1, scope: !868)
!950 = distinct !DISubprogram(name: "irc_nicklist_init", scope: !671, file: !671, line: 472, type: !215, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!951 = !DILocation(line: 474, column: 2, scope: !950)
!952 = !DILocation(line: 475, column: 2, scope: !950)
!953 = !DILocation(line: 476, column: 2, scope: !950)
!954 = !DILocation(line: 477, column: 2, scope: !950)
!955 = !DILocation(line: 478, column: 2, scope: !950)
!956 = !DILocation(line: 479, column: 2, scope: !950)
!957 = !DILocation(line: 480, column: 2, scope: !950)
!958 = !DILocation(line: 481, column: 2, scope: !950)
!959 = !DILocation(line: 482, column: 2, scope: !950)
!960 = !DILocation(line: 483, column: 2, scope: !950)
!961 = !DILocation(line: 484, column: 2, scope: !950)
!962 = !DILocation(line: 485, column: 2, scope: !950)
!963 = !DILocation(line: 486, column: 2, scope: !950)
!964 = !DILocation(line: 487, column: 2, scope: !950)
!965 = !DILocation(line: 488, column: 2, scope: !950)
!966 = !DILocation(line: 489, column: 2, scope: !950)
!967 = !DILocation(line: 490, column: 2, scope: !950)
!968 = !DILocation(line: 491, column: 2, scope: !950)
!969 = !DILocation(line: 492, column: 1, scope: !950)
!970 = distinct !DISubprogram(name: "event_nick", scope: !671, file: !671, line: 396, type: !971, isLocal: true, isDefinition: true, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !54, !449, !449}
!973 = !DILocalVariable(name: "server", arg: 1, scope: !970, file: !671, line: 396, type: !54)
!974 = !DILocation(line: 396, column: 40, scope: !970)
!975 = !DILocalVariable(name: "data", arg: 2, scope: !970, file: !671, line: 396, type: !449)
!976 = !DILocation(line: 396, column: 60, scope: !970)
!977 = !DILocalVariable(name: "orignick", arg: 3, scope: !970, file: !671, line: 397, type: !449)
!978 = !DILocation(line: 397, column: 22, scope: !970)
!979 = !DILocalVariable(name: "params", scope: !970, file: !671, line: 399, type: !73)
!980 = !DILocation(line: 399, column: 8, scope: !970)
!981 = !DILocalVariable(name: "nick", scope: !970, file: !671, line: 399, type: !73)
!982 = !DILocation(line: 399, column: 17, scope: !970)
!983 = !DILocation(line: 401, column: 2, scope: !970)
!984 = distinct !{!984, !983}
!985 = !DILocation(line: 401, column: 10, scope: !986)
!986 = !DILexicalBlockFile(scope: !987, file: !671, discriminator: 1)
!987 = distinct !DILexicalBlock(scope: !988, file: !671, line: 401, column: 10)
!988 = distinct !DILexicalBlock(scope: !970, file: !671, line: 401, column: 4)
!989 = !DILocation(line: 401, column: 15, scope: !986)
!990 = !DILocation(line: 401, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !671, discriminator: 2)
!992 = distinct !DILexicalBlock(scope: !987, file: !671, line: 401, column: 3)
!993 = !DILocation(line: 401, column: 14, scope: !994)
!994 = !DILexicalBlockFile(scope: !995, file: !671, discriminator: 3)
!995 = distinct !DILexicalBlock(scope: !987, file: !671, line: 401, column: 12)
!996 = !DILocation(line: 401, column: 99, scope: !994)
!997 = !DILocation(line: 401, column: 110, scope: !998)
!998 = !DILexicalBlockFile(scope: !988, file: !671, discriminator: 4)
!999 = !DILocation(line: 402, column: 2, scope: !970)
!1000 = distinct !{!1000, !999}
!1001 = !DILocation(line: 402, column: 10, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !671, discriminator: 1)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !671, line: 402, column: 10)
!1004 = distinct !DILexicalBlock(scope: !970, file: !671, line: 402, column: 4)
!1005 = !DILocation(line: 402, column: 19, scope: !1002)
!1006 = !DILocation(line: 402, column: 5, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !671, discriminator: 2)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !671, line: 402, column: 3)
!1009 = !DILocation(line: 402, column: 14, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !671, discriminator: 3)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !671, line: 402, column: 12)
!1012 = !DILocation(line: 402, column: 103, scope: !1010)
!1013 = !DILocation(line: 402, column: 114, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1004, file: !671, discriminator: 4)
!1015 = !DILocation(line: 404, column: 28, scope: !970)
!1016 = !DILocation(line: 404, column: 11, scope: !970)
!1017 = !DILocation(line: 404, column: 9, scope: !970)
!1018 = !DILocation(line: 406, column: 25, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !970, file: !671, line: 406, column: 6)
!1020 = !DILocation(line: 406, column: 35, scope: !1019)
!1021 = !DILocation(line: 406, column: 43, scope: !1019)
!1022 = !DILocation(line: 406, column: 6, scope: !1019)
!1023 = !DILocation(line: 406, column: 49, scope: !1019)
!1024 = !DILocation(line: 406, column: 6, scope: !970)
!1025 = !DILocation(line: 408, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !671, line: 408, column: 7)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !671, line: 406, column: 55)
!1028 = !DILocation(line: 408, column: 15, scope: !1026)
!1029 = !DILocation(line: 408, column: 25, scope: !1026)
!1030 = !DILocation(line: 408, column: 32, scope: !1026)
!1031 = !DILocation(line: 409, column: 26, scope: !1026)
!1032 = !DILocation(line: 409, column: 34, scope: !1026)
!1033 = !DILocation(line: 409, column: 45, scope: !1026)
!1034 = !DILocation(line: 409, column: 7, scope: !1026)
!1035 = !DILocation(line: 409, column: 51, scope: !1026)
!1036 = !DILocation(line: 408, column: 7, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1027, file: !671, discriminator: 1)
!1038 = !DILocation(line: 411, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1026, file: !671, line: 409, column: 57)
!1040 = !DILocation(line: 411, column: 19, scope: !1039)
!1041 = !DILocation(line: 411, column: 28, scope: !1039)
!1042 = !DILocation(line: 411, column: 4, scope: !1039)
!1043 = !DILocation(line: 412, column: 37, scope: !1039)
!1044 = !DILocation(line: 412, column: 28, scope: !1039)
!1045 = !DILocation(line: 412, column: 4, scope: !1039)
!1046 = !DILocation(line: 412, column: 12, scope: !1039)
!1047 = !DILocation(line: 412, column: 21, scope: !1039)
!1048 = !DILocation(line: 412, column: 26, scope: !1039)
!1049 = !DILocation(line: 413, column: 3, scope: !1039)
!1050 = !DILocation(line: 415, column: 56, scope: !1027)
!1051 = !DILocation(line: 415, column: 38, scope: !1027)
!1052 = !DILocation(line: 415, column: 23, scope: !1027)
!1053 = !DILocation(line: 415, column: 35, scope: !1027)
!1054 = !DILocation(line: 415, column: 3, scope: !1037)
!1055 = !DILocation(line: 416, column: 2, scope: !1027)
!1056 = !DILocation(line: 418, column: 59, scope: !970)
!1057 = !DILocation(line: 418, column: 41, scope: !970)
!1058 = !DILocation(line: 418, column: 26, scope: !970)
!1059 = !DILocation(line: 418, column: 38, scope: !970)
!1060 = !DILocation(line: 418, column: 48, scope: !970)
!1061 = !DILocation(line: 418, column: 9, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !970, file: !671, discriminator: 1)
!1063 = !DILocation(line: 419, column: 9, scope: !970)
!1064 = !DILocation(line: 419, column: 2, scope: !970)
!1065 = !DILocation(line: 420, column: 1, scope: !970)
!1066 = !DILocation(line: 420, column: 1, scope: !1062)
!1067 = distinct !DISubprogram(name: "event_who", scope: !671, file: !671, line: 199, type: !1068, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !361, !449}
!1070 = !DILocalVariable(name: "server", arg: 1, scope: !1067, file: !671, line: 199, type: !361)
!1071 = !DILocation(line: 199, column: 35, scope: !1067)
!1072 = !DILocalVariable(name: "data", arg: 2, scope: !1067, file: !671, line: 199, type: !449)
!1073 = !DILocation(line: 199, column: 55, scope: !1067)
!1074 = !DILocalVariable(name: "params", scope: !1067, file: !671, line: 201, type: !73)
!1075 = !DILocation(line: 201, column: 8, scope: !1067)
!1076 = !DILocalVariable(name: "nick", scope: !1067, file: !671, line: 201, type: !73)
!1077 = !DILocation(line: 201, column: 17, scope: !1067)
!1078 = !DILocalVariable(name: "channel", scope: !1067, file: !671, line: 201, type: !73)
!1079 = !DILocation(line: 201, column: 24, scope: !1067)
!1080 = !DILocalVariable(name: "user", scope: !1067, file: !671, line: 201, type: !73)
!1081 = !DILocation(line: 201, column: 34, scope: !1067)
!1082 = !DILocalVariable(name: "host", scope: !1067, file: !671, line: 201, type: !73)
!1083 = !DILocation(line: 201, column: 41, scope: !1067)
!1084 = !DILocalVariable(name: "stat", scope: !1067, file: !671, line: 201, type: !73)
!1085 = !DILocation(line: 201, column: 48, scope: !1067)
!1086 = !DILocalVariable(name: "realname", scope: !1067, file: !671, line: 201, type: !73)
!1087 = !DILocation(line: 201, column: 55, scope: !1067)
!1088 = !DILocalVariable(name: "hops", scope: !1067, file: !671, line: 201, type: !73)
!1089 = !DILocation(line: 201, column: 66, scope: !1067)
!1090 = !DILocalVariable(name: "chanrec", scope: !1067, file: !671, line: 202, type: !468)
!1091 = !DILocation(line: 202, column: 15, scope: !1067)
!1092 = !DILocalVariable(name: "nickrec", scope: !1067, file: !671, line: 203, type: !500)
!1093 = !DILocation(line: 203, column: 12, scope: !1067)
!1094 = !DILocation(line: 205, column: 2, scope: !1067)
!1095 = distinct !{!1095, !1094}
!1096 = !DILocation(line: 205, column: 10, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1098, file: !671, discriminator: 1)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !671, line: 205, column: 10)
!1099 = distinct !DILexicalBlock(scope: !1067, file: !671, line: 205, column: 4)
!1100 = !DILocation(line: 205, column: 15, scope: !1097)
!1101 = !DILocation(line: 205, column: 5, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1103, file: !671, discriminator: 2)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !671, line: 205, column: 3)
!1104 = !DILocation(line: 205, column: 14, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1106, file: !671, discriminator: 3)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !671, line: 205, column: 12)
!1107 = !DILocation(line: 205, column: 99, scope: !1105)
!1108 = !DILocation(line: 205, column: 110, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1099, file: !671, discriminator: 4)
!1110 = !DILocation(line: 207, column: 28, scope: !1067)
!1111 = !DILocation(line: 207, column: 11, scope: !1067)
!1112 = !DILocation(line: 207, column: 9, scope: !1067)
!1113 = !DILocation(line: 211, column: 9, scope: !1067)
!1114 = !DILocation(line: 211, column: 7, scope: !1067)
!1115 = !DILocation(line: 212, column: 2, scope: !1067)
!1116 = !DILocation(line: 212, column: 10, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1067, file: !671, discriminator: 1)
!1118 = !DILocation(line: 212, column: 9, scope: !1117)
!1119 = !DILocation(line: 212, column: 19, scope: !1117)
!1120 = !DILocation(line: 212, column: 27, scope: !1117)
!1121 = !DILocation(line: 212, column: 31, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1067, file: !671, discriminator: 2)
!1123 = !DILocation(line: 212, column: 30, scope: !1122)
!1124 = !DILocation(line: 212, column: 40, scope: !1122)
!1125 = !DILocation(line: 212, column: 2, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1067, file: !671, discriminator: 3)
!1127 = !DILocation(line: 212, column: 56, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1067, file: !671, discriminator: 4)
!1129 = !DILocation(line: 212, column: 2, scope: !1128)
!1130 = distinct !{!1130, !1115}
!1131 = !DILocation(line: 213, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1067, file: !671, line: 213, column: 6)
!1133 = !DILocation(line: 213, column: 6, scope: !1132)
!1134 = !DILocation(line: 213, column: 16, scope: !1132)
!1135 = !DILocation(line: 213, column: 6, scope: !1067)
!1136 = !DILocation(line: 214, column: 12, scope: !1132)
!1137 = !DILocation(line: 214, column: 15, scope: !1132)
!1138 = !DILocation(line: 214, column: 3, scope: !1132)
!1139 = !DILocation(line: 217, column: 25, scope: !1067)
!1140 = !DILocation(line: 217, column: 33, scope: !1067)
!1141 = !DILocation(line: 217, column: 12, scope: !1067)
!1142 = !DILocation(line: 217, column: 10, scope: !1067)
!1143 = !DILocation(line: 218, column: 12, scope: !1067)
!1144 = !DILocation(line: 218, column: 20, scope: !1067)
!1145 = !DILocation(line: 218, column: 12, scope: !1117)
!1146 = !DILocation(line: 219, column: 17, scope: !1067)
!1147 = !DILocation(line: 219, column: 26, scope: !1067)
!1148 = !DILocation(line: 219, column: 3, scope: !1067)
!1149 = !DILocation(line: 218, column: 12, scope: !1122)
!1150 = !DILocation(line: 218, column: 12, scope: !1126)
!1151 = !DILocation(line: 218, column: 10, scope: !1126)
!1152 = !DILocation(line: 220, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1067, file: !671, line: 220, column: 6)
!1154 = !DILocation(line: 220, column: 14, scope: !1153)
!1155 = !DILocation(line: 220, column: 6, scope: !1067)
!1156 = !DILocation(line: 221, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !671, line: 221, column: 7)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !671, line: 220, column: 22)
!1159 = !DILocation(line: 221, column: 16, scope: !1157)
!1160 = !DILocation(line: 221, column: 21, scope: !1157)
!1161 = !DILocation(line: 221, column: 7, scope: !1158)
!1162 = !DILocalVariable(name: "str", scope: !1163, file: !671, line: 222, type: !73)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !671, line: 221, column: 29)
!1164 = !DILocation(line: 222, column: 31, scope: !1163)
!1165 = !DILocation(line: 222, column: 62, scope: !1163)
!1166 = !DILocation(line: 222, column: 68, scope: !1163)
!1167 = !DILocation(line: 222, column: 37, scope: !1163)
!1168 = !DILocation(line: 223, column: 22, scope: !1163)
!1169 = !DILocation(line: 223, column: 31, scope: !1163)
!1170 = !DILocation(line: 223, column: 40, scope: !1163)
!1171 = !DILocation(line: 223, column: 4, scope: !1163)
!1172 = !DILocation(line: 224, column: 32, scope: !1163)
!1173 = !DILocation(line: 224, column: 25, scope: !1163)
!1174 = !DILocation(line: 225, column: 3, scope: !1163)
!1175 = !DILocation(line: 226, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1158, file: !671, line: 226, column: 7)
!1177 = !DILocation(line: 226, column: 16, scope: !1176)
!1178 = !DILocation(line: 226, column: 25, scope: !1176)
!1179 = !DILocation(line: 226, column: 7, scope: !1158)
!1180 = !DILocation(line: 227, column: 33, scope: !1176)
!1181 = !DILocation(line: 227, column: 24, scope: !1176)
!1182 = !DILocation(line: 227, column: 4, scope: !1176)
!1183 = !DILocation(line: 227, column: 13, scope: !1176)
!1184 = !DILocation(line: 227, column: 22, scope: !1176)
!1185 = !DILocation(line: 228, column: 10, scope: !1158)
!1186 = !DILocation(line: 228, column: 23, scope: !1158)
!1187 = !DILocation(line: 228, column: 32, scope: !1158)
!1188 = !DILocation(line: 228, column: 3, scope: !1158)
!1189 = !DILocation(line: 229, column: 2, scope: !1158)
!1190 = !DILocation(line: 231, column: 24, scope: !1067)
!1191 = !DILocation(line: 231, column: 32, scope: !1067)
!1192 = !DILocation(line: 232, column: 17, scope: !1067)
!1193 = !DILocation(line: 232, column: 10, scope: !1067)
!1194 = !DILocation(line: 232, column: 28, scope: !1067)
!1195 = !DILocation(line: 233, column: 17, scope: !1067)
!1196 = !DILocation(line: 233, column: 10, scope: !1067)
!1197 = !DILocation(line: 233, column: 28, scope: !1067)
!1198 = !DILocation(line: 231, column: 2, scope: !1067)
!1199 = !DILocation(line: 235, column: 9, scope: !1067)
!1200 = !DILocation(line: 235, column: 2, scope: !1067)
!1201 = !DILocation(line: 236, column: 1, scope: !1067)
!1202 = !DILocation(line: 236, column: 1, scope: !1117)
!1203 = distinct !DISubprogram(name: "event_whois", scope: !671, file: !671, line: 238, type: !1204, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !54, !449}
!1206 = !DILocalVariable(name: "server", arg: 1, scope: !1203, file: !671, line: 238, type: !54)
!1207 = !DILocation(line: 238, column: 41, scope: !1203)
!1208 = !DILocalVariable(name: "data", arg: 2, scope: !1203, file: !671, line: 238, type: !449)
!1209 = !DILocation(line: 238, column: 61, scope: !1203)
!1210 = !DILocalVariable(name: "params", scope: !1203, file: !671, line: 240, type: !73)
!1211 = !DILocation(line: 240, column: 8, scope: !1203)
!1212 = !DILocalVariable(name: "nick", scope: !1203, file: !671, line: 240, type: !73)
!1213 = !DILocation(line: 240, column: 17, scope: !1203)
!1214 = !DILocalVariable(name: "realname", scope: !1203, file: !671, line: 240, type: !73)
!1215 = !DILocation(line: 240, column: 24, scope: !1203)
!1216 = !DILocalVariable(name: "nicks", scope: !1203, file: !671, line: 241, type: !227)
!1217 = !DILocation(line: 241, column: 10, scope: !1203)
!1218 = !DILocalVariable(name: "tmp", scope: !1203, file: !671, line: 241, type: !227)
!1219 = !DILocation(line: 241, column: 18, scope: !1203)
!1220 = !DILocalVariable(name: "rec", scope: !1203, file: !671, line: 242, type: !500)
!1221 = !DILocation(line: 242, column: 12, scope: !1203)
!1222 = !DILocation(line: 244, column: 2, scope: !1203)
!1223 = distinct !{!1223, !1222}
!1224 = !DILocation(line: 244, column: 10, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !671, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !671, line: 244, column: 10)
!1227 = distinct !DILexicalBlock(scope: !1203, file: !671, line: 244, column: 4)
!1228 = !DILocation(line: 244, column: 15, scope: !1225)
!1229 = !DILocation(line: 244, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !671, discriminator: 2)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !671, line: 244, column: 3)
!1232 = !DILocation(line: 244, column: 14, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !671, discriminator: 3)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !671, line: 244, column: 12)
!1235 = !DILocation(line: 244, column: 99, scope: !1233)
!1236 = !DILocation(line: 244, column: 110, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1227, file: !671, discriminator: 4)
!1238 = !DILocation(line: 248, column: 28, scope: !1203)
!1239 = !DILocation(line: 248, column: 11, scope: !1203)
!1240 = !DILocation(line: 248, column: 9, scope: !1203)
!1241 = !DILocation(line: 251, column: 62, scope: !1203)
!1242 = !DILocation(line: 251, column: 44, scope: !1203)
!1243 = !DILocation(line: 251, column: 29, scope: !1203)
!1244 = !DILocation(line: 251, column: 41, scope: !1203)
!1245 = !DILocation(line: 251, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1203, file: !671, discriminator: 1)
!1247 = !DILocation(line: 251, column: 8, scope: !1203)
!1248 = !DILocation(line: 252, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1203, file: !671, line: 252, column: 2)
!1250 = !DILocation(line: 252, column: 11, scope: !1249)
!1251 = !DILocation(line: 252, column: 7, scope: !1249)
!1252 = !DILocation(line: 252, column: 20, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1254, file: !671, discriminator: 1)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !671, line: 252, column: 2)
!1255 = !DILocation(line: 252, column: 24, scope: !1253)
!1256 = !DILocation(line: 252, column: 2, scope: !1253)
!1257 = !DILocation(line: 253, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !671, line: 252, column: 55)
!1259 = !DILocation(line: 253, column: 14, scope: !1258)
!1260 = !DILocation(line: 253, column: 20, scope: !1258)
!1261 = !DILocation(line: 253, column: 7, scope: !1258)
!1262 = !DILocation(line: 255, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !671, line: 255, column: 7)
!1264 = !DILocation(line: 255, column: 12, scope: !1263)
!1265 = !DILocation(line: 255, column: 21, scope: !1263)
!1266 = !DILocation(line: 255, column: 7, scope: !1258)
!1267 = !DILocation(line: 256, column: 29, scope: !1263)
!1268 = !DILocation(line: 256, column: 20, scope: !1263)
!1269 = !DILocation(line: 256, column: 4, scope: !1263)
!1270 = !DILocation(line: 256, column: 9, scope: !1263)
!1271 = !DILocation(line: 256, column: 18, scope: !1263)
!1272 = !DILocation(line: 257, column: 2, scope: !1258)
!1273 = !DILocation(line: 252, column: 38, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1254, file: !671, discriminator: 2)
!1275 = !DILocation(line: 252, column: 43, scope: !1274)
!1276 = !DILocation(line: 252, column: 49, scope: !1274)
!1277 = !DILocation(line: 252, column: 36, scope: !1274)
!1278 = !DILocation(line: 252, column: 2, scope: !1274)
!1279 = distinct !{!1279, !1280}
!1280 = !DILocation(line: 252, column: 2, scope: !1203)
!1281 = !DILocation(line: 258, column: 15, scope: !1203)
!1282 = !DILocation(line: 258, column: 2, scope: !1203)
!1283 = !DILocation(line: 262, column: 58, scope: !1203)
!1284 = !DILocation(line: 262, column: 40, scope: !1203)
!1285 = !DILocation(line: 262, column: 25, scope: !1203)
!1286 = !DILocation(line: 262, column: 37, scope: !1203)
!1287 = !DILocation(line: 262, column: 2, scope: !1246)
!1288 = !DILocation(line: 263, column: 9, scope: !1203)
!1289 = !DILocation(line: 263, column: 2, scope: !1203)
!1290 = !DILocation(line: 264, column: 1, scope: !1203)
!1291 = !DILocation(line: 264, column: 1, scope: !1246)
!1292 = distinct !DISubprogram(name: "event_whois_away", scope: !671, file: !671, line: 266, type: !1068, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1293 = !DILocalVariable(name: "server", arg: 1, scope: !1292, file: !671, line: 266, type: !361)
!1294 = !DILocation(line: 266, column: 42, scope: !1292)
!1295 = !DILocalVariable(name: "data", arg: 2, scope: !1292, file: !671, line: 266, type: !449)
!1296 = !DILocation(line: 266, column: 62, scope: !1292)
!1297 = !DILocalVariable(name: "params", scope: !1292, file: !671, line: 268, type: !73)
!1298 = !DILocation(line: 268, column: 8, scope: !1292)
!1299 = !DILocalVariable(name: "nick", scope: !1292, file: !671, line: 268, type: !73)
!1300 = !DILocation(line: 268, column: 17, scope: !1292)
!1301 = !DILocalVariable(name: "awaymsg", scope: !1292, file: !671, line: 268, type: !73)
!1302 = !DILocation(line: 268, column: 24, scope: !1292)
!1303 = !DILocation(line: 270, column: 2, scope: !1292)
!1304 = distinct !{!1304, !1303}
!1305 = !DILocation(line: 270, column: 10, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !671, discriminator: 1)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !671, line: 270, column: 10)
!1308 = distinct !DILexicalBlock(scope: !1292, file: !671, line: 270, column: 4)
!1309 = !DILocation(line: 270, column: 15, scope: !1306)
!1310 = !DILocation(line: 270, column: 5, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !671, discriminator: 2)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !671, line: 270, column: 3)
!1313 = !DILocation(line: 270, column: 14, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !671, discriminator: 3)
!1315 = distinct !DILexicalBlock(scope: !1307, file: !671, line: 270, column: 12)
!1316 = !DILocation(line: 270, column: 99, scope: !1314)
!1317 = !DILocation(line: 270, column: 110, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1308, file: !671, discriminator: 4)
!1319 = !DILocation(line: 273, column: 28, scope: !1292)
!1320 = !DILocation(line: 273, column: 11, scope: !1292)
!1321 = !DILocation(line: 273, column: 9, scope: !1292)
!1322 = !DILocation(line: 274, column: 24, scope: !1292)
!1323 = !DILocation(line: 274, column: 32, scope: !1292)
!1324 = !DILocation(line: 274, column: 2, scope: !1292)
!1325 = !DILocation(line: 275, column: 9, scope: !1292)
!1326 = !DILocation(line: 275, column: 2, scope: !1292)
!1327 = !DILocation(line: 276, column: 1, scope: !1292)
!1328 = !DILocation(line: 276, column: 1, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1292, file: !671, discriminator: 1)
!1330 = distinct !DISubprogram(name: "event_whois_ircop", scope: !671, file: !671, line: 302, type: !1068, isLocal: true, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1331 = !DILocalVariable(name: "server", arg: 1, scope: !1330, file: !671, line: 302, type: !361)
!1332 = !DILocation(line: 302, column: 43, scope: !1330)
!1333 = !DILocalVariable(name: "data", arg: 2, scope: !1330, file: !671, line: 302, type: !449)
!1334 = !DILocation(line: 302, column: 63, scope: !1330)
!1335 = !DILocalVariable(name: "params", scope: !1330, file: !671, line: 304, type: !73)
!1336 = !DILocation(line: 304, column: 8, scope: !1330)
!1337 = !DILocalVariable(name: "nick", scope: !1330, file: !671, line: 304, type: !73)
!1338 = !DILocation(line: 304, column: 17, scope: !1330)
!1339 = !DILocalVariable(name: "awaymsg", scope: !1330, file: !671, line: 304, type: !73)
!1340 = !DILocation(line: 304, column: 24, scope: !1330)
!1341 = !DILocation(line: 306, column: 2, scope: !1330)
!1342 = distinct !{!1342, !1341}
!1343 = !DILocation(line: 306, column: 10, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !671, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !671, line: 306, column: 10)
!1346 = distinct !DILexicalBlock(scope: !1330, file: !671, line: 306, column: 4)
!1347 = !DILocation(line: 306, column: 15, scope: !1344)
!1348 = !DILocation(line: 306, column: 5, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !671, discriminator: 2)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !671, line: 306, column: 3)
!1351 = !DILocation(line: 306, column: 14, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !671, discriminator: 3)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !671, line: 306, column: 12)
!1354 = !DILocation(line: 306, column: 99, scope: !1352)
!1355 = !DILocation(line: 306, column: 110, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1346, file: !671, discriminator: 4)
!1357 = !DILocation(line: 309, column: 28, scope: !1330)
!1358 = !DILocation(line: 309, column: 11, scope: !1330)
!1359 = !DILocation(line: 309, column: 9, scope: !1330)
!1360 = !DILocation(line: 310, column: 24, scope: !1330)
!1361 = !DILocation(line: 310, column: 32, scope: !1330)
!1362 = !DILocation(line: 310, column: 2, scope: !1330)
!1363 = !DILocation(line: 311, column: 9, scope: !1330)
!1364 = !DILocation(line: 311, column: 2, scope: !1330)
!1365 = !DILocation(line: 312, column: 1, scope: !1330)
!1366 = !DILocation(line: 312, column: 1, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1330, file: !671, discriminator: 1)
!1368 = distinct !DISubprogram(name: "event_own_away", scope: !671, file: !671, line: 278, type: !1068, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1369 = !DILocalVariable(name: "server", arg: 1, scope: !1368, file: !671, line: 278, type: !361)
!1370 = !DILocation(line: 278, column: 40, scope: !1368)
!1371 = !DILocalVariable(name: "data", arg: 2, scope: !1368, file: !671, line: 278, type: !449)
!1372 = !DILocation(line: 278, column: 60, scope: !1368)
!1373 = !DILocalVariable(name: "params", scope: !1368, file: !671, line: 280, type: !73)
!1374 = !DILocation(line: 280, column: 8, scope: !1368)
!1375 = !DILocalVariable(name: "nick", scope: !1368, file: !671, line: 280, type: !73)
!1376 = !DILocation(line: 280, column: 17, scope: !1368)
!1377 = !DILocation(line: 282, column: 2, scope: !1368)
!1378 = distinct !{!1378, !1377}
!1379 = !DILocation(line: 282, column: 10, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1381, file: !671, discriminator: 1)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !671, line: 282, column: 10)
!1382 = distinct !DILexicalBlock(scope: !1368, file: !671, line: 282, column: 4)
!1383 = !DILocation(line: 282, column: 15, scope: !1380)
!1384 = !DILocation(line: 282, column: 5, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !671, discriminator: 2)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !671, line: 282, column: 3)
!1387 = !DILocation(line: 282, column: 14, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1389, file: !671, discriminator: 3)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !671, line: 282, column: 12)
!1390 = !DILocation(line: 282, column: 99, scope: !1388)
!1391 = !DILocation(line: 282, column: 110, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1382, file: !671, discriminator: 4)
!1393 = !DILocation(line: 285, column: 28, scope: !1368)
!1394 = !DILocation(line: 285, column: 11, scope: !1368)
!1395 = !DILocation(line: 285, column: 9, scope: !1368)
!1396 = !DILocation(line: 286, column: 24, scope: !1368)
!1397 = !DILocation(line: 286, column: 32, scope: !1368)
!1398 = !DILocation(line: 286, column: 2, scope: !1368)
!1399 = !DILocation(line: 287, column: 9, scope: !1368)
!1400 = !DILocation(line: 287, column: 2, scope: !1368)
!1401 = !DILocation(line: 288, column: 1, scope: !1368)
!1402 = !DILocation(line: 288, column: 1, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1368, file: !671, discriminator: 1)
!1404 = distinct !DISubprogram(name: "event_own_unaway", scope: !671, file: !671, line: 290, type: !1068, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1405 = !DILocalVariable(name: "server", arg: 1, scope: !1404, file: !671, line: 290, type: !361)
!1406 = !DILocation(line: 290, column: 42, scope: !1404)
!1407 = !DILocalVariable(name: "data", arg: 2, scope: !1404, file: !671, line: 290, type: !449)
!1408 = !DILocation(line: 290, column: 62, scope: !1404)
!1409 = !DILocalVariable(name: "params", scope: !1404, file: !671, line: 292, type: !73)
!1410 = !DILocation(line: 292, column: 8, scope: !1404)
!1411 = !DILocalVariable(name: "nick", scope: !1404, file: !671, line: 292, type: !73)
!1412 = !DILocation(line: 292, column: 17, scope: !1404)
!1413 = !DILocation(line: 294, column: 2, scope: !1404)
!1414 = distinct !{!1414, !1413}
!1415 = !DILocation(line: 294, column: 10, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !671, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !671, line: 294, column: 10)
!1418 = distinct !DILexicalBlock(scope: !1404, file: !671, line: 294, column: 4)
!1419 = !DILocation(line: 294, column: 15, scope: !1416)
!1420 = !DILocation(line: 294, column: 5, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !671, discriminator: 2)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !671, line: 294, column: 3)
!1423 = !DILocation(line: 294, column: 14, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !671, discriminator: 3)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !671, line: 294, column: 12)
!1426 = !DILocation(line: 294, column: 99, scope: !1424)
!1427 = !DILocation(line: 294, column: 110, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1418, file: !671, discriminator: 4)
!1429 = !DILocation(line: 297, column: 28, scope: !1404)
!1430 = !DILocation(line: 297, column: 11, scope: !1404)
!1431 = !DILocation(line: 297, column: 9, scope: !1404)
!1432 = !DILocation(line: 298, column: 24, scope: !1404)
!1433 = !DILocation(line: 298, column: 32, scope: !1404)
!1434 = !DILocation(line: 298, column: 2, scope: !1404)
!1435 = !DILocation(line: 299, column: 9, scope: !1404)
!1436 = !DILocation(line: 299, column: 2, scope: !1404)
!1437 = !DILocation(line: 300, column: 1, scope: !1404)
!1438 = !DILocation(line: 300, column: 1, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1404, file: !671, discriminator: 1)
!1440 = distinct !DISubprogram(name: "event_names_list", scope: !671, file: !671, line: 78, type: !1204, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1441 = !DILocalVariable(name: "server", arg: 1, scope: !1440, file: !671, line: 78, type: !54)
!1442 = !DILocation(line: 78, column: 46, scope: !1440)
!1443 = !DILocalVariable(name: "data", arg: 2, scope: !1440, file: !671, line: 78, type: !449)
!1444 = !DILocation(line: 78, column: 66, scope: !1440)
!1445 = !DILocalVariable(name: "chanrec", scope: !1440, file: !671, line: 80, type: !36)
!1446 = !DILocation(line: 80, column: 19, scope: !1440)
!1447 = !DILocalVariable(name: "rec", scope: !1440, file: !671, line: 81, type: !500)
!1448 = !DILocation(line: 81, column: 12, scope: !1440)
!1449 = !DILocalVariable(name: "params", scope: !1440, file: !671, line: 82, type: !73)
!1450 = !DILocation(line: 82, column: 8, scope: !1440)
!1451 = !DILocalVariable(name: "type", scope: !1440, file: !671, line: 82, type: !73)
!1452 = !DILocation(line: 82, column: 17, scope: !1440)
!1453 = !DILocalVariable(name: "channel", scope: !1440, file: !671, line: 82, type: !73)
!1454 = !DILocation(line: 82, column: 24, scope: !1440)
!1455 = !DILocalVariable(name: "names", scope: !1440, file: !671, line: 82, type: !73)
!1456 = !DILocation(line: 82, column: 34, scope: !1440)
!1457 = !DILocalVariable(name: "ptr", scope: !1440, file: !671, line: 82, type: !73)
!1458 = !DILocation(line: 82, column: 42, scope: !1440)
!1459 = !DILocalVariable(name: "host", scope: !1440, file: !671, line: 82, type: !73)
!1460 = !DILocation(line: 82, column: 48, scope: !1440)
!1461 = !DILocalVariable(name: "op", scope: !1440, file: !671, line: 83, type: !44)
!1462 = !DILocation(line: 83, column: 13, scope: !1440)
!1463 = !DILocalVariable(name: "halfop", scope: !1440, file: !671, line: 83, type: !44)
!1464 = !DILocation(line: 83, column: 17, scope: !1440)
!1465 = !DILocalVariable(name: "voice", scope: !1440, file: !671, line: 83, type: !44)
!1466 = !DILocation(line: 83, column: 25, scope: !1440)
!1467 = !DILocalVariable(name: "prefixes", scope: !1440, file: !671, line: 84, type: !520)
!1468 = !DILocation(line: 84, column: 7, scope: !1440)
!1469 = !DILocalVariable(name: "nick_flags", scope: !1440, file: !671, line: 85, type: !449)
!1470 = !DILocation(line: 85, column: 14, scope: !1440)
!1471 = !DILocalVariable(name: "nick_flag_cur", scope: !1440, file: !671, line: 85, type: !449)
!1472 = !DILocation(line: 85, column: 27, scope: !1440)
!1473 = !DILocalVariable(name: "nick_flag_op", scope: !1440, file: !671, line: 85, type: !449)
!1474 = !DILocation(line: 85, column: 43, scope: !1440)
!1475 = !DILocation(line: 87, column: 2, scope: !1440)
!1476 = distinct !{!1476, !1475}
!1477 = !DILocation(line: 87, column: 10, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !671, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !671, line: 87, column: 10)
!1480 = distinct !DILexicalBlock(scope: !1440, file: !671, line: 87, column: 4)
!1481 = !DILocation(line: 87, column: 15, scope: !1478)
!1482 = !DILocation(line: 87, column: 5, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1484, file: !671, discriminator: 2)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !671, line: 87, column: 3)
!1485 = !DILocation(line: 87, column: 14, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !671, discriminator: 3)
!1487 = distinct !DILexicalBlock(scope: !1479, file: !671, line: 87, column: 12)
!1488 = !DILocation(line: 87, column: 99, scope: !1486)
!1489 = !DILocation(line: 87, column: 110, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1480, file: !671, discriminator: 4)
!1491 = !DILocation(line: 89, column: 28, scope: !1440)
!1492 = !DILocation(line: 89, column: 11, scope: !1440)
!1493 = !DILocation(line: 89, column: 9, scope: !1440)
!1494 = !DILocation(line: 91, column: 147, scope: !1440)
!1495 = !DILocation(line: 91, column: 129, scope: !1440)
!1496 = !DILocation(line: 91, column: 114, scope: !1440)
!1497 = !DILocation(line: 91, column: 25, scope: !1440)
!1498 = !DILocation(line: 91, column: 100, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1440, file: !671, discriminator: 1)
!1500 = !DILocation(line: 91, column: 100, scope: !1440)
!1501 = !DILocation(line: 91, column: 75, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1440, file: !671, discriminator: 2)
!1503 = !DILocation(line: 91, column: 59, scope: !1440)
!1504 = !DILocation(line: 91, column: 58, scope: !1440)
!1505 = !DILocation(line: 91, column: 33, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1440, file: !671, discriminator: 3)
!1507 = !DILocation(line: 91, column: 13, scope: !1440)
!1508 = !DILocation(line: 91, column: 10, scope: !1440)
!1509 = !DILocation(line: 92, column: 6, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1440, file: !671, line: 92, column: 6)
!1511 = !DILocation(line: 92, column: 14, scope: !1510)
!1512 = !DILocation(line: 92, column: 21, scope: !1510)
!1513 = !DILocation(line: 92, column: 24, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1510, file: !671, discriminator: 1)
!1515 = !DILocation(line: 92, column: 33, scope: !1514)
!1516 = !DILocation(line: 92, column: 6, scope: !1514)
!1517 = !DILocation(line: 94, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !671, line: 92, column: 44)
!1519 = !DILocation(line: 94, column: 3, scope: !1518)
!1520 = !DILocation(line: 95, column: 3, scope: !1518)
!1521 = !DILocation(line: 97, column: 15, scope: !1440)
!1522 = !DILocation(line: 97, column: 23, scope: !1440)
!1523 = !DILocation(line: 97, column: 72, scope: !1440)
!1524 = !DILocation(line: 97, column: 54, scope: !1440)
!1525 = !DILocation(line: 97, column: 39, scope: !1440)
!1526 = !DILocation(line: 97, column: 15, scope: !1499)
!1527 = !DILocation(line: 97, column: 13, scope: !1440)
!1528 = !DILocation(line: 98, column: 24, scope: !1440)
!1529 = !DILocation(line: 98, column: 17, scope: !1440)
!1530 = !DILocation(line: 98, column: 15, scope: !1440)
!1531 = !DILocation(line: 108, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1440, file: !671, line: 108, column: 6)
!1533 = !DILocation(line: 108, column: 6, scope: !1532)
!1534 = !DILocation(line: 108, column: 12, scope: !1532)
!1535 = !DILocation(line: 108, column: 6, scope: !1440)
!1536 = !DILocation(line: 109, column: 23, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !671, line: 108, column: 20)
!1538 = !DILocation(line: 110, column: 9, scope: !1537)
!1539 = !DILocation(line: 110, column: 18, scope: !1537)
!1540 = !DILocation(line: 109, column: 3, scope: !1537)
!1541 = !DILocation(line: 111, column: 2, scope: !1537)
!1542 = !DILocation(line: 111, column: 14, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1544, file: !671, discriminator: 1)
!1544 = distinct !DILexicalBlock(scope: !1532, file: !671, line: 111, column: 13)
!1545 = !DILocation(line: 111, column: 13, scope: !1543)
!1546 = !DILocation(line: 111, column: 19, scope: !1543)
!1547 = !DILocation(line: 112, column: 23, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !671, line: 111, column: 27)
!1549 = !DILocation(line: 113, column: 9, scope: !1548)
!1550 = !DILocation(line: 113, column: 18, scope: !1548)
!1551 = !DILocation(line: 112, column: 3, scope: !1548)
!1552 = !DILocation(line: 114, column: 2, scope: !1548)
!1553 = !DILocation(line: 116, column: 2, scope: !1440)
!1554 = !DILocation(line: 116, column: 10, scope: !1499)
!1555 = !DILocation(line: 116, column: 9, scope: !1499)
!1556 = !DILocation(line: 116, column: 16, scope: !1499)
!1557 = !DILocation(line: 116, column: 2, scope: !1499)
!1558 = !DILocation(line: 117, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1440, file: !671, line: 116, column: 25)
!1560 = !DILocation(line: 117, column: 11, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1559, file: !671, discriminator: 1)
!1562 = !DILocation(line: 117, column: 10, scope: !1561)
!1563 = !DILocation(line: 117, column: 17, scope: !1561)
!1564 = !DILocation(line: 117, column: 3, scope: !1561)
!1565 = !DILocation(line: 117, column: 30, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1559, file: !671, discriminator: 2)
!1567 = !DILocation(line: 117, column: 3, scope: !1566)
!1568 = distinct !{!1568, !1558}
!1569 = !DILocation(line: 118, column: 9, scope: !1559)
!1570 = !DILocation(line: 118, column: 7, scope: !1559)
!1571 = !DILocation(line: 119, column: 3, scope: !1559)
!1572 = !DILocation(line: 119, column: 11, scope: !1561)
!1573 = !DILocation(line: 119, column: 10, scope: !1561)
!1574 = !DILocation(line: 119, column: 17, scope: !1561)
!1575 = !DILocation(line: 119, column: 25, scope: !1561)
!1576 = !DILocation(line: 119, column: 29, scope: !1566)
!1577 = !DILocation(line: 119, column: 28, scope: !1566)
!1578 = !DILocation(line: 119, column: 35, scope: !1566)
!1579 = !DILocation(line: 119, column: 3, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1559, file: !671, discriminator: 3)
!1581 = !DILocation(line: 119, column: 48, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1559, file: !671, discriminator: 4)
!1583 = !DILocation(line: 119, column: 3, scope: !1582)
!1584 = distinct !{!1584, !1571}
!1585 = !DILocation(line: 120, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1559, file: !671, line: 120, column: 7)
!1587 = !DILocation(line: 120, column: 7, scope: !1586)
!1588 = !DILocation(line: 120, column: 14, scope: !1586)
!1589 = !DILocation(line: 120, column: 7, scope: !1559)
!1590 = !DILocation(line: 120, column: 29, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1586, file: !671, discriminator: 1)
!1592 = !DILocation(line: 120, column: 32, scope: !1591)
!1593 = !DILocation(line: 120, column: 23, scope: !1591)
!1594 = !DILocation(line: 126, column: 23, scope: !1559)
!1595 = !DILocation(line: 126, column: 15, scope: !1559)
!1596 = !DILocation(line: 126, column: 6, scope: !1559)
!1597 = !DILocation(line: 127, column: 3, scope: !1559)
!1598 = !DILocation(line: 127, column: 15, scope: !1559)
!1599 = !DILocation(line: 128, column: 3, scope: !1559)
!1600 = !DILocation(line: 128, column: 48, scope: !1561)
!1601 = !DILocation(line: 128, column: 47, scope: !1561)
!1602 = !DILocation(line: 128, column: 26, scope: !1561)
!1603 = !DILocation(line: 128, column: 11, scope: !1561)
!1604 = !DILocation(line: 128, column: 19, scope: !1561)
!1605 = !DILocation(line: 128, column: 53, scope: !1561)
!1606 = !DILocation(line: 128, column: 3, scope: !1561)
!1607 = !DILocation(line: 129, column: 15, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1559, file: !671, line: 128, column: 63)
!1609 = !DILocation(line: 129, column: 26, scope: !1608)
!1610 = !DILocation(line: 129, column: 25, scope: !1608)
!1611 = !DILocation(line: 129, column: 46, scope: !1608)
!1612 = !DILocation(line: 129, column: 31, scope: !1608)
!1613 = !DILocation(line: 129, column: 4, scope: !1608)
!1614 = !DILocation(line: 130, column: 13, scope: !1608)
!1615 = !DILocation(line: 130, column: 12, scope: !1608)
!1616 = !DILocation(line: 130, column: 4, scope: !1608)
!1617 = !DILocation(line: 132, column: 36, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1608, file: !671, line: 130, column: 18)
!1619 = !DILocation(line: 133, column: 33, scope: !1618)
!1620 = !DILocation(line: 135, column: 40, scope: !1618)
!1621 = !DILocation(line: 136, column: 33, scope: !1618)
!1622 = !DILocation(line: 138, column: 39, scope: !1618)
!1623 = !DILocation(line: 139, column: 33, scope: !1618)
!1624 = !DILocation(line: 144, column: 28, scope: !1618)
!1625 = !DILocation(line: 144, column: 41, scope: !1618)
!1626 = !DILocation(line: 144, column: 40, scope: !1618)
!1627 = !DILocation(line: 144, column: 21, scope: !1618)
!1628 = !DILocation(line: 144, column: 19, scope: !1618)
!1629 = !DILocation(line: 145, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1618, file: !671, line: 145, column: 9)
!1631 = !DILocation(line: 145, column: 23, scope: !1630)
!1632 = !DILocation(line: 145, column: 26, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1630, file: !671, discriminator: 1)
!1634 = !DILocation(line: 145, column: 39, scope: !1633)
!1635 = !DILocation(line: 145, column: 42, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1630, file: !671, discriminator: 2)
!1637 = !DILocation(line: 145, column: 58, scope: !1636)
!1638 = !DILocation(line: 145, column: 56, scope: !1636)
!1639 = !DILocation(line: 145, column: 9, scope: !1636)
!1640 = !DILocation(line: 146, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !671, line: 145, column: 72)
!1642 = !DILocation(line: 147, column: 5, scope: !1641)
!1643 = !DILocation(line: 148, column: 5, scope: !1618)
!1644 = !DILocation(line: 150, column: 28, scope: !1608)
!1645 = !DILocation(line: 128, column: 3, scope: !1566)
!1646 = distinct !{!1646, !1599}
!1647 = !DILocation(line: 153, column: 17, scope: !1559)
!1648 = !DILocation(line: 153, column: 10, scope: !1559)
!1649 = !DILocation(line: 153, column: 8, scope: !1559)
!1650 = !DILocation(line: 154, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1559, file: !671, line: 154, column: 7)
!1652 = !DILocation(line: 154, column: 12, scope: !1651)
!1653 = !DILocation(line: 154, column: 7, scope: !1559)
!1654 = !DILocation(line: 155, column: 9, scope: !1651)
!1655 = !DILocation(line: 155, column: 12, scope: !1651)
!1656 = !DILocation(line: 155, column: 4, scope: !1651)
!1657 = !DILocation(line: 157, column: 37, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1559, file: !671, line: 157, column: 7)
!1659 = !DILocation(line: 157, column: 21, scope: !1658)
!1660 = !DILocation(line: 157, column: 46, scope: !1658)
!1661 = !DILocation(line: 157, column: 7, scope: !1658)
!1662 = !DILocation(line: 157, column: 51, scope: !1658)
!1663 = !DILocation(line: 157, column: 7, scope: !1559)
!1664 = !DILocation(line: 158, column: 30, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !671, line: 157, column: 59)
!1666 = !DILocation(line: 158, column: 39, scope: !1665)
!1667 = !DILocation(line: 158, column: 44, scope: !1665)
!1668 = !DILocation(line: 158, column: 48, scope: !1665)
!1669 = !DILocation(line: 159, column: 9, scope: !1665)
!1670 = !DILocation(line: 159, column: 21, scope: !1665)
!1671 = !DILocation(line: 158, column: 10, scope: !1665)
!1672 = !DILocation(line: 158, column: 8, scope: !1665)
!1673 = !DILocation(line: 160, column: 8, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1665, file: !671, line: 160, column: 8)
!1675 = !DILocation(line: 160, column: 13, scope: !1674)
!1676 = !DILocation(line: 160, column: 8, scope: !1665)
!1677 = !DILocation(line: 161, column: 65, scope: !1674)
!1678 = !DILocation(line: 161, column: 40, scope: !1674)
!1679 = !DILocation(line: 161, column: 24, scope: !1674)
!1680 = !DILocation(line: 161, column: 57, scope: !1674)
!1681 = !DILocation(line: 161, column: 62, scope: !1674)
!1682 = !DILocation(line: 161, column: 5, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1674, file: !671, discriminator: 1)
!1684 = !DILocation(line: 161, column: 5, scope: !1674)
!1685 = !DILocation(line: 162, column: 3, scope: !1665)
!1686 = !DILocation(line: 116, column: 2, scope: !1502)
!1687 = distinct !{!1687, !1553}
!1688 = !DILocation(line: 165, column: 9, scope: !1440)
!1689 = !DILocation(line: 165, column: 2, scope: !1440)
!1690 = !DILocation(line: 166, column: 1, scope: !1440)
!1691 = !DILocation(line: 166, column: 1, scope: !1499)
!1692 = distinct !DISubprogram(name: "event_end_of_names", scope: !671, file: !671, line: 168, type: !1204, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1693 = !DILocalVariable(name: "server", arg: 1, scope: !1692, file: !671, line: 168, type: !54)
!1694 = !DILocation(line: 168, column: 48, scope: !1692)
!1695 = !DILocalVariable(name: "data", arg: 2, scope: !1692, file: !671, line: 168, type: !449)
!1696 = !DILocation(line: 168, column: 68, scope: !1692)
!1697 = !DILocalVariable(name: "params", scope: !1692, file: !671, line: 170, type: !73)
!1698 = !DILocation(line: 170, column: 8, scope: !1692)
!1699 = !DILocalVariable(name: "channel", scope: !1692, file: !671, line: 170, type: !73)
!1700 = !DILocation(line: 170, column: 17, scope: !1692)
!1701 = !DILocalVariable(name: "chanrec", scope: !1692, file: !671, line: 171, type: !36)
!1702 = !DILocation(line: 171, column: 19, scope: !1692)
!1703 = !DILocalVariable(name: "ownnick", scope: !1692, file: !671, line: 172, type: !500)
!1704 = !DILocation(line: 172, column: 12, scope: !1692)
!1705 = !DILocalVariable(name: "nicks", scope: !1692, file: !671, line: 173, type: !44)
!1706 = !DILocation(line: 173, column: 6, scope: !1692)
!1707 = !DILocation(line: 175, column: 2, scope: !1692)
!1708 = distinct !{!1708, !1707}
!1709 = !DILocation(line: 175, column: 10, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !671, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !671, line: 175, column: 10)
!1712 = distinct !DILexicalBlock(scope: !1692, file: !671, line: 175, column: 4)
!1713 = !DILocation(line: 175, column: 17, scope: !1710)
!1714 = !DILocation(line: 175, column: 5, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !671, discriminator: 2)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !671, line: 175, column: 3)
!1717 = !DILocation(line: 175, column: 14, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !671, discriminator: 3)
!1719 = distinct !DILexicalBlock(scope: !1711, file: !671, line: 175, column: 12)
!1720 = !DILocation(line: 175, column: 101, scope: !1718)
!1721 = !DILocation(line: 175, column: 112, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1712, file: !671, discriminator: 4)
!1723 = !DILocation(line: 177, column: 28, scope: !1692)
!1724 = !DILocation(line: 177, column: 11, scope: !1692)
!1725 = !DILocation(line: 177, column: 9, scope: !1692)
!1726 = !DILocation(line: 179, column: 147, scope: !1692)
!1727 = !DILocation(line: 179, column: 129, scope: !1692)
!1728 = !DILocation(line: 179, column: 114, scope: !1692)
!1729 = !DILocation(line: 179, column: 25, scope: !1692)
!1730 = !DILocation(line: 179, column: 100, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1692, file: !671, discriminator: 1)
!1732 = !DILocation(line: 179, column: 100, scope: !1692)
!1733 = !DILocation(line: 179, column: 75, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1692, file: !671, discriminator: 2)
!1735 = !DILocation(line: 179, column: 59, scope: !1692)
!1736 = !DILocation(line: 179, column: 58, scope: !1692)
!1737 = !DILocation(line: 179, column: 33, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1692, file: !671, discriminator: 3)
!1739 = !DILocation(line: 179, column: 13, scope: !1692)
!1740 = !DILocation(line: 179, column: 10, scope: !1692)
!1741 = !DILocation(line: 180, column: 6, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1692, file: !671, line: 180, column: 6)
!1743 = !DILocation(line: 180, column: 14, scope: !1742)
!1744 = !DILocation(line: 180, column: 21, scope: !1742)
!1745 = !DILocation(line: 180, column: 25, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1742, file: !671, discriminator: 1)
!1747 = !DILocation(line: 180, column: 34, scope: !1746)
!1748 = !DILocation(line: 180, column: 6, scope: !1746)
!1749 = !DILocation(line: 181, column: 69, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1742, file: !671, line: 180, column: 45)
!1751 = !DILocation(line: 181, column: 44, scope: !1750)
!1752 = !DILocation(line: 181, column: 28, scope: !1750)
!1753 = !DILocation(line: 181, column: 61, scope: !1750)
!1754 = !DILocation(line: 181, column: 13, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1750, file: !671, discriminator: 1)
!1756 = !DILocation(line: 181, column: 11, scope: !1750)
!1757 = !DILocation(line: 182, column: 7, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1750, file: !671, line: 182, column: 7)
!1759 = !DILocation(line: 182, column: 15, scope: !1758)
!1760 = !DILocation(line: 182, column: 7, scope: !1750)
!1761 = !DILocation(line: 185, column: 30, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !671, line: 182, column: 23)
!1763 = !DILocation(line: 185, column: 39, scope: !1762)
!1764 = !DILocation(line: 185, column: 12, scope: !1762)
!1765 = !DILocation(line: 185, column: 10, scope: !1762)
!1766 = !DILocation(line: 186, column: 34, scope: !1762)
!1767 = !DILocation(line: 186, column: 43, scope: !1762)
!1768 = !DILocation(line: 186, column: 51, scope: !1762)
!1769 = !DILocation(line: 187, column: 13, scope: !1762)
!1770 = !DILocation(line: 187, column: 19, scope: !1762)
!1771 = !DILocation(line: 186, column: 14, scope: !1762)
!1772 = !DILocation(line: 186, column: 12, scope: !1762)
!1773 = !DILocation(line: 189, column: 3, scope: !1762)
!1774 = !DILocation(line: 190, column: 62, scope: !1750)
!1775 = !DILocation(line: 190, column: 37, scope: !1750)
!1776 = !DILocation(line: 190, column: 21, scope: !1750)
!1777 = !DILocation(line: 190, column: 54, scope: !1750)
!1778 = !DILocation(line: 190, column: 3, scope: !1755)
!1779 = !DILocation(line: 191, column: 35, scope: !1750)
!1780 = !DILocation(line: 191, column: 44, scope: !1750)
!1781 = !DILocation(line: 191, column: 53, scope: !1750)
!1782 = !DILocation(line: 191, column: 17, scope: !1750)
!1783 = !DILocation(line: 191, column: 26, scope: !1750)
!1784 = !DILocation(line: 191, column: 33, scope: !1750)
!1785 = !DILocation(line: 192, column: 3, scope: !1750)
!1786 = !DILocation(line: 192, column: 12, scope: !1750)
!1787 = !DILocation(line: 192, column: 22, scope: !1750)
!1788 = !DILocation(line: 193, column: 36, scope: !1750)
!1789 = !DILocation(line: 193, column: 3, scope: !1750)
!1790 = !DILocation(line: 194, column: 2, scope: !1750)
!1791 = !DILocation(line: 196, column: 9, scope: !1692)
!1792 = !DILocation(line: 196, column: 2, scope: !1692)
!1793 = !DILocation(line: 197, column: 1, scope: !1692)
!1794 = !DILocation(line: 197, column: 1, scope: !1731)
!1795 = distinct !DISubprogram(name: "event_nick_invalid", scope: !671, file: !671, line: 314, type: !1204, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1796 = !DILocalVariable(name: "server", arg: 1, scope: !1795, file: !671, line: 314, type: !54)
!1797 = !DILocation(line: 314, column: 48, scope: !1795)
!1798 = !DILocalVariable(name: "data", arg: 2, scope: !1795, file: !671, line: 314, type: !449)
!1799 = !DILocation(line: 314, column: 68, scope: !1795)
!1800 = !DILocation(line: 316, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !671, line: 316, column: 6)
!1802 = !DILocation(line: 316, column: 15, scope: !1801)
!1803 = !DILocation(line: 316, column: 6, scope: !1795)
!1804 = !DILocation(line: 321, column: 29, scope: !1801)
!1805 = !DILocation(line: 321, column: 37, scope: !1801)
!1806 = !DILocation(line: 321, column: 50, scope: !1801)
!1807 = !DILocation(line: 321, column: 3, scope: !1801)
!1808 = !DILocation(line: 321, column: 11, scope: !1801)
!1809 = !DILocation(line: 321, column: 27, scope: !1801)
!1810 = !DILocation(line: 322, column: 1, scope: !1795)
!1811 = distinct !DISubprogram(name: "event_nick_in_use", scope: !671, file: !671, line: 324, type: !1204, isLocal: true, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1812 = !DILocalVariable(name: "server", arg: 1, scope: !1811, file: !671, line: 324, type: !54)
!1813 = !DILocation(line: 324, column: 47, scope: !1811)
!1814 = !DILocalVariable(name: "data", arg: 2, scope: !1811, file: !671, line: 324, type: !449)
!1815 = !DILocation(line: 324, column: 67, scope: !1811)
!1816 = !DILocalVariable(name: "str", scope: !1811, file: !671, line: 326, type: !73)
!1817 = !DILocation(line: 326, column: 8, scope: !1811)
!1818 = !DILocalVariable(name: "cmd", scope: !1811, file: !671, line: 326, type: !73)
!1819 = !DILocation(line: 326, column: 14, scope: !1811)
!1820 = !DILocalVariable(name: "params", scope: !1811, file: !671, line: 326, type: !73)
!1821 = !DILocation(line: 326, column: 20, scope: !1811)
!1822 = !DILocalVariable(name: "nick", scope: !1811, file: !671, line: 326, type: !73)
!1823 = !DILocation(line: 326, column: 29, scope: !1811)
!1824 = !DILocalVariable(name: "n", scope: !1811, file: !671, line: 327, type: !44)
!1825 = !DILocation(line: 327, column: 6, scope: !1811)
!1826 = !DILocalVariable(name: "try_alternate_nick", scope: !1811, file: !671, line: 328, type: !186)
!1827 = !DILocation(line: 328, column: 11, scope: !1811)
!1828 = !DILocation(line: 330, column: 2, scope: !1811)
!1829 = distinct !{!1829, !1828}
!1830 = !DILocation(line: 330, column: 10, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !671, discriminator: 1)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !671, line: 330, column: 10)
!1833 = distinct !DILexicalBlock(scope: !1811, file: !671, line: 330, column: 4)
!1834 = !DILocation(line: 330, column: 15, scope: !1831)
!1835 = !DILocation(line: 330, column: 5, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1837, file: !671, discriminator: 2)
!1837 = distinct !DILexicalBlock(scope: !1832, file: !671, line: 330, column: 3)
!1838 = !DILocation(line: 330, column: 14, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1840, file: !671, discriminator: 3)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !671, line: 330, column: 12)
!1841 = !DILocation(line: 330, column: 99, scope: !1839)
!1842 = !DILocation(line: 330, column: 110, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1833, file: !671, discriminator: 4)
!1844 = !DILocation(line: 332, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1811, file: !671, line: 332, column: 6)
!1846 = !DILocation(line: 332, column: 14, scope: !1845)
!1847 = !DILocation(line: 332, column: 6, scope: !1811)
!1848 = !DILocation(line: 334, column: 3, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !671, line: 332, column: 25)
!1850 = !DILocation(line: 337, column: 42, scope: !1811)
!1851 = !DILocation(line: 337, column: 50, scope: !1811)
!1852 = !DILocation(line: 337, column: 56, scope: !1811)
!1853 = !DILocation(line: 337, column: 64, scope: !1811)
!1854 = !DILocation(line: 337, column: 73, scope: !1811)
!1855 = !DILocation(line: 337, column: 23, scope: !1811)
!1856 = !DILocation(line: 337, column: 79, scope: !1811)
!1857 = !DILocation(line: 337, column: 84, scope: !1811)
!1858 = !DILocation(line: 338, column: 6, scope: !1811)
!1859 = !DILocation(line: 338, column: 14, scope: !1811)
!1860 = !DILocation(line: 338, column: 23, scope: !1811)
!1861 = !DILocation(line: 338, column: 38, scope: !1811)
!1862 = !DILocation(line: 338, column: 45, scope: !1811)
!1863 = !DILocation(line: 339, column: 25, scope: !1811)
!1864 = !DILocation(line: 339, column: 33, scope: !1811)
!1865 = !DILocation(line: 339, column: 42, scope: !1811)
!1866 = !DILocation(line: 339, column: 58, scope: !1811)
!1867 = !DILocation(line: 339, column: 66, scope: !1811)
!1868 = !DILocation(line: 339, column: 6, scope: !1811)
!1869 = !DILocation(line: 339, column: 72, scope: !1811)
!1870 = !DILocation(line: 338, column: 45, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1811, file: !671, discriminator: 1)
!1872 = !DILocation(line: 337, column: 21, scope: !1871)
!1873 = !DILocation(line: 341, column: 28, scope: !1811)
!1874 = !DILocation(line: 341, column: 11, scope: !1811)
!1875 = !DILocation(line: 341, column: 9, scope: !1811)
!1876 = !DILocation(line: 342, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1811, file: !671, line: 342, column: 6)
!1878 = !DILocation(line: 342, column: 33, scope: !1877)
!1879 = !DILocation(line: 342, column: 39, scope: !1877)
!1880 = !DILocation(line: 342, column: 6, scope: !1877)
!1881 = !DILocation(line: 342, column: 45, scope: !1877)
!1882 = !DILocation(line: 342, column: 6, scope: !1811)
!1883 = !DILocation(line: 344, column: 10, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !671, line: 342, column: 51)
!1885 = !DILocation(line: 344, column: 18, scope: !1884)
!1886 = !DILocation(line: 344, column: 3, scope: !1884)
!1887 = !DILocation(line: 345, column: 27, scope: !1884)
!1888 = !DILocation(line: 345, column: 18, scope: !1884)
!1889 = !DILocation(line: 345, column: 3, scope: !1884)
!1890 = !DILocation(line: 345, column: 11, scope: !1884)
!1891 = !DILocation(line: 345, column: 16, scope: !1884)
!1892 = !DILocation(line: 346, column: 2, scope: !1884)
!1893 = !DILocation(line: 347, column: 9, scope: !1811)
!1894 = !DILocation(line: 347, column: 2, scope: !1811)
!1895 = !DILocation(line: 350, column: 6, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1811, file: !671, line: 350, column: 6)
!1897 = !DILocation(line: 350, column: 6, scope: !1811)
!1898 = !DILocation(line: 352, column: 10, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1896, file: !671, line: 350, column: 26)
!1900 = !DILocation(line: 352, column: 18, scope: !1899)
!1901 = !DILocation(line: 352, column: 3, scope: !1899)
!1902 = !DILocation(line: 353, column: 27, scope: !1899)
!1903 = !DILocation(line: 353, column: 35, scope: !1899)
!1904 = !DILocation(line: 353, column: 44, scope: !1899)
!1905 = !DILocation(line: 353, column: 18, scope: !1899)
!1906 = !DILocation(line: 353, column: 3, scope: !1899)
!1907 = !DILocation(line: 353, column: 11, scope: !1899)
!1908 = !DILocation(line: 353, column: 16, scope: !1899)
!1909 = !DILocation(line: 354, column: 2, scope: !1899)
!1910 = !DILocation(line: 355, column: 18, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1896, file: !671, line: 355, column: 11)
!1912 = !DILocation(line: 355, column: 26, scope: !1911)
!1913 = !DILocation(line: 355, column: 11, scope: !1911)
!1914 = !DILocation(line: 355, column: 32, scope: !1911)
!1915 = !DILocation(line: 355, column: 11, scope: !1896)
!1916 = !DILocation(line: 357, column: 32, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1911, file: !671, line: 355, column: 37)
!1918 = !DILocation(line: 357, column: 40, scope: !1917)
!1919 = !DILocation(line: 357, column: 9, scope: !1917)
!1920 = !DILocation(line: 357, column: 7, scope: !1917)
!1921 = !DILocation(line: 358, column: 10, scope: !1917)
!1922 = !DILocation(line: 358, column: 18, scope: !1917)
!1923 = !DILocation(line: 358, column: 3, scope: !1917)
!1924 = !DILocation(line: 359, column: 18, scope: !1917)
!1925 = !DILocation(line: 359, column: 3, scope: !1917)
!1926 = !DILocation(line: 359, column: 11, scope: !1917)
!1927 = !DILocation(line: 359, column: 16, scope: !1917)
!1928 = !DILocation(line: 360, column: 2, scope: !1917)
!1929 = !DILocation(line: 362, column: 10, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !671, line: 362, column: 3)
!1931 = distinct !DILexicalBlock(scope: !1911, file: !671, line: 360, column: 9)
!1932 = !DILocation(line: 362, column: 8, scope: !1930)
!1933 = !DILocation(line: 362, column: 15, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !671, discriminator: 1)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !671, line: 362, column: 3)
!1936 = !DILocation(line: 362, column: 17, scope: !1934)
!1937 = !DILocation(line: 362, column: 3, scope: !1934)
!1938 = !DILocation(line: 363, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !671, line: 363, column: 8)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !671, line: 362, column: 27)
!1941 = !DILocation(line: 363, column: 8, scope: !1939)
!1942 = !DILocation(line: 363, column: 16, scope: !1939)
!1943 = !DILocation(line: 363, column: 24, scope: !1939)
!1944 = !DILocation(line: 363, column: 30, scope: !1939)
!1945 = !DILocation(line: 363, column: 46, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1939, file: !671, discriminator: 1)
!1947 = !DILocation(line: 363, column: 33, scope: !1946)
!1948 = !DILocation(line: 363, column: 41, scope: !1946)
!1949 = !DILocation(line: 363, column: 49, scope: !1946)
!1950 = !DILocation(line: 363, column: 8, scope: !1946)
!1951 = !DILocation(line: 364, column: 18, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1939, file: !671, line: 363, column: 56)
!1953 = !DILocation(line: 364, column: 5, scope: !1952)
!1954 = !DILocation(line: 364, column: 13, scope: !1952)
!1955 = !DILocation(line: 364, column: 21, scope: !1952)
!1956 = !DILocation(line: 365, column: 5, scope: !1952)
!1957 = !DILocation(line: 368, column: 21, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1940, file: !671, line: 368, column: 8)
!1959 = !DILocation(line: 368, column: 8, scope: !1958)
!1960 = !DILocation(line: 368, column: 16, scope: !1958)
!1961 = !DILocation(line: 368, column: 24, scope: !1958)
!1962 = !DILocation(line: 368, column: 8, scope: !1940)
!1963 = !DILocation(line: 369, column: 18, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !671, line: 368, column: 31)
!1965 = !DILocation(line: 369, column: 5, scope: !1964)
!1966 = !DILocation(line: 369, column: 13, scope: !1964)
!1967 = !DILocation(line: 369, column: 20, scope: !1964)
!1968 = !DILocation(line: 370, column: 5, scope: !1964)
!1969 = !DILocation(line: 372, column: 17, scope: !1940)
!1970 = !DILocation(line: 372, column: 4, scope: !1940)
!1971 = !DILocation(line: 372, column: 12, scope: !1940)
!1972 = !DILocation(line: 372, column: 20, scope: !1940)
!1973 = !DILocation(line: 373, column: 3, scope: !1940)
!1974 = !DILocation(line: 362, column: 23, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1935, file: !671, discriminator: 2)
!1976 = !DILocation(line: 362, column: 3, scope: !1975)
!1977 = distinct !{!1977, !1978}
!1978 = !DILocation(line: 362, column: 3, scope: !1931)
!1979 = !DILocation(line: 376, column: 35, scope: !1811)
!1980 = !DILocation(line: 376, column: 43, scope: !1811)
!1981 = !DILocation(line: 376, column: 8, scope: !1811)
!1982 = !DILocation(line: 376, column: 6, scope: !1811)
!1983 = !DILocation(line: 377, column: 19, scope: !1811)
!1984 = !DILocation(line: 377, column: 27, scope: !1811)
!1985 = !DILocation(line: 377, column: 2, scope: !1811)
!1986 = !DILocation(line: 378, column: 9, scope: !1811)
!1987 = !DILocation(line: 378, column: 2, scope: !1811)
!1988 = !DILocation(line: 379, column: 1, scope: !1811)
!1989 = !DILocation(line: 379, column: 1, scope: !1871)
!1990 = distinct !DISubprogram(name: "event_target_unavailable", scope: !671, file: !671, line: 381, type: !1204, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!1991 = !DILocalVariable(name: "server", arg: 1, scope: !1990, file: !671, line: 381, type: !54)
!1992 = !DILocation(line: 381, column: 54, scope: !1990)
!1993 = !DILocalVariable(name: "data", arg: 2, scope: !1990, file: !671, line: 381, type: !449)
!1994 = !DILocation(line: 381, column: 74, scope: !1990)
!1995 = !DILocalVariable(name: "params", scope: !1990, file: !671, line: 383, type: !73)
!1996 = !DILocation(line: 383, column: 8, scope: !1990)
!1997 = !DILocalVariable(name: "channel", scope: !1990, file: !671, line: 383, type: !73)
!1998 = !DILocation(line: 383, column: 17, scope: !1990)
!1999 = !DILocation(line: 385, column: 2, scope: !1990)
!2000 = distinct !{!2000, !1999}
!2001 = !DILocation(line: 385, column: 10, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2003, file: !671, discriminator: 1)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !671, line: 385, column: 10)
!2004 = distinct !DILexicalBlock(scope: !1990, file: !671, line: 385, column: 4)
!2005 = !DILocation(line: 385, column: 15, scope: !2002)
!2006 = !DILocation(line: 385, column: 5, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2008, file: !671, discriminator: 2)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !671, line: 385, column: 3)
!2009 = !DILocation(line: 385, column: 14, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !2011, file: !671, discriminator: 3)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !671, line: 385, column: 12)
!2012 = !DILocation(line: 385, column: 99, scope: !2010)
!2013 = !DILocation(line: 385, column: 110, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2004, file: !671, discriminator: 4)
!2015 = !DILocation(line: 387, column: 28, scope: !1990)
!2016 = !DILocation(line: 387, column: 11, scope: !1990)
!2017 = !DILocation(line: 387, column: 9, scope: !1990)
!2018 = !DILocation(line: 388, column: 43, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1990, file: !671, line: 388, column: 6)
!2020 = !DILocation(line: 388, column: 25, scope: !2019)
!2021 = !DILocation(line: 388, column: 10, scope: !2019)
!2022 = !DILocation(line: 388, column: 21, scope: !2019)
!2023 = !DILocation(line: 388, column: 65, scope: !2019)
!2024 = !DILocation(line: 388, column: 47, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2019, file: !671, discriminator: 1)
!2026 = !DILocation(line: 388, column: 32, scope: !2019)
!2027 = !DILocation(line: 388, column: 20, scope: !2019)
!2028 = !DILocation(line: 388, column: 8, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2019, file: !671, discriminator: 2)
!2030 = !DILocation(line: 388, column: 8, scope: !2019)
!2031 = !DILocation(line: 388, column: 6, scope: !1990)
!2032 = !DILocation(line: 390, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2019, file: !671, line: 388, column: 31)
!2034 = !DILocation(line: 390, column: 29, scope: !2033)
!2035 = !DILocation(line: 390, column: 3, scope: !2033)
!2036 = !DILocation(line: 391, column: 2, scope: !2033)
!2037 = !DILocation(line: 393, column: 9, scope: !1990)
!2038 = !DILocation(line: 393, column: 2, scope: !1990)
!2039 = !DILocation(line: 394, column: 1, scope: !1990)
!2040 = !DILocation(line: 394, column: 1, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !1990, file: !671, discriminator: 1)
!2042 = distinct !DISubprogram(name: "event_userhost", scope: !671, file: !671, line: 422, type: !1068, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!2043 = !DILocalVariable(name: "server", arg: 1, scope: !2042, file: !671, line: 422, type: !361)
!2044 = !DILocation(line: 422, column: 40, scope: !2042)
!2045 = !DILocalVariable(name: "data", arg: 2, scope: !2042, file: !671, line: 422, type: !449)
!2046 = !DILocation(line: 422, column: 60, scope: !2042)
!2047 = !DILocalVariable(name: "params", scope: !2042, file: !671, line: 424, type: !73)
!2048 = !DILocation(line: 424, column: 8, scope: !2042)
!2049 = !DILocalVariable(name: "hosts", scope: !2042, file: !671, line: 424, type: !73)
!2050 = !DILocation(line: 424, column: 17, scope: !2042)
!2051 = !DILocalVariable(name: "phosts", scope: !2042, file: !671, line: 424, type: !463)
!2052 = !DILocation(line: 424, column: 26, scope: !2042)
!2053 = !DILocalVariable(name: "pos", scope: !2042, file: !671, line: 424, type: !463)
!2054 = !DILocation(line: 424, column: 36, scope: !2042)
!2055 = !DILocalVariable(name: "ptr", scope: !2042, file: !671, line: 424, type: !73)
!2056 = !DILocation(line: 424, column: 42, scope: !2042)
!2057 = !DILocalVariable(name: "oper", scope: !2042, file: !671, line: 425, type: !44)
!2058 = !DILocation(line: 425, column: 6, scope: !2042)
!2059 = !DILocation(line: 427, column: 2, scope: !2042)
!2060 = distinct !{!2060, !2059}
!2061 = !DILocation(line: 427, column: 10, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2063, file: !671, discriminator: 1)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !671, line: 427, column: 10)
!2064 = distinct !DILexicalBlock(scope: !2042, file: !671, line: 427, column: 4)
!2065 = !DILocation(line: 427, column: 15, scope: !2062)
!2066 = !DILocation(line: 427, column: 5, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2068, file: !671, discriminator: 2)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !671, line: 427, column: 3)
!2069 = !DILocation(line: 427, column: 14, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !671, discriminator: 3)
!2071 = distinct !DILexicalBlock(scope: !2063, file: !671, line: 427, column: 12)
!2072 = !DILocation(line: 427, column: 99, scope: !2070)
!2073 = !DILocation(line: 427, column: 110, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2064, file: !671, discriminator: 4)
!2075 = !DILocation(line: 430, column: 28, scope: !2042)
!2076 = !DILocation(line: 430, column: 11, scope: !2042)
!2077 = !DILocation(line: 430, column: 9, scope: !2042)
!2078 = !DILocation(line: 432, column: 22, scope: !2042)
!2079 = !DILocation(line: 432, column: 11, scope: !2042)
!2080 = !DILocation(line: 432, column: 9, scope: !2042)
!2081 = !DILocation(line: 433, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2042, file: !671, line: 433, column: 2)
!2083 = !DILocation(line: 433, column: 11, scope: !2082)
!2084 = !DILocation(line: 433, column: 7, scope: !2082)
!2085 = !DILocation(line: 433, column: 22, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !671, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !671, line: 433, column: 2)
!2088 = !DILocation(line: 433, column: 21, scope: !2086)
!2089 = !DILocation(line: 433, column: 26, scope: !2086)
!2090 = !DILocation(line: 433, column: 2, scope: !2086)
!2091 = !DILocation(line: 434, column: 17, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !671, line: 433, column: 41)
!2093 = !DILocation(line: 434, column: 16, scope: !2092)
!2094 = !DILocation(line: 434, column: 9, scope: !2092)
!2095 = !DILocation(line: 434, column: 7, scope: !2092)
!2096 = !DILocation(line: 435, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2092, file: !671, line: 435, column: 7)
!2098 = !DILocation(line: 435, column: 11, scope: !2097)
!2099 = !DILocation(line: 435, column: 18, scope: !2097)
!2100 = !DILocation(line: 435, column: 21, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2097, file: !671, discriminator: 1)
!2102 = !DILocation(line: 435, column: 29, scope: !2101)
!2103 = !DILocation(line: 435, column: 28, scope: !2101)
!2104 = !DILocation(line: 435, column: 25, scope: !2101)
!2105 = !DILocation(line: 435, column: 7, scope: !2101)
!2106 = !DILocation(line: 435, column: 34, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2097, file: !671, discriminator: 2)
!2108 = !DILocation(line: 436, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2092, file: !671, line: 436, column: 7)
!2110 = !DILocation(line: 436, column: 15, scope: !2109)
!2111 = !DILocation(line: 436, column: 7, scope: !2092)
!2112 = !DILocation(line: 437, column: 4, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !671, line: 436, column: 23)
!2114 = !DILocation(line: 437, column: 12, scope: !2113)
!2115 = !DILocation(line: 438, column: 9, scope: !2113)
!2116 = !DILocation(line: 439, column: 3, scope: !2113)
!2117 = !DILocation(line: 440, column: 9, scope: !2109)
!2118 = !DILocation(line: 441, column: 7, scope: !2092)
!2119 = !DILocation(line: 441, column: 10, scope: !2092)
!2120 = !DILocation(line: 443, column: 25, scope: !2092)
!2121 = !DILocation(line: 443, column: 34, scope: !2092)
!2122 = !DILocation(line: 443, column: 33, scope: !2092)
!2123 = !DILocation(line: 443, column: 40, scope: !2092)
!2124 = !DILocation(line: 443, column: 39, scope: !2092)
!2125 = !DILocation(line: 443, column: 44, scope: !2092)
!2126 = !DILocation(line: 443, column: 52, scope: !2092)
!2127 = !DILocation(line: 443, column: 3, scope: !2092)
!2128 = !DILocation(line: 444, column: 2, scope: !2092)
!2129 = !DILocation(line: 433, column: 37, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2087, file: !671, discriminator: 2)
!2131 = !DILocation(line: 433, column: 2, scope: !2130)
!2132 = distinct !{!2132, !2133}
!2133 = !DILocation(line: 433, column: 2, scope: !2042)
!2134 = !DILocation(line: 445, column: 13, scope: !2042)
!2135 = !DILocation(line: 445, column: 2, scope: !2042)
!2136 = !DILocation(line: 446, column: 9, scope: !2042)
!2137 = !DILocation(line: 446, column: 2, scope: !2042)
!2138 = !DILocation(line: 447, column: 1, scope: !2042)
!2139 = !DILocation(line: 447, column: 1, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2042, file: !671, discriminator: 1)
!2141 = distinct !DISubprogram(name: "sig_usermode", scope: !671, file: !671, line: 449, type: !2142, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !361}
!2144 = !DILocalVariable(name: "server", arg: 1, scope: !2141, file: !671, line: 449, type: !361)
!2145 = !DILocation(line: 449, column: 38, scope: !2141)
!2146 = !DILocation(line: 451, column: 2, scope: !2141)
!2147 = distinct !{!2147, !2146}
!2148 = !DILocation(line: 451, column: 45, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2150, file: !671, discriminator: 1)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !671, line: 451, column: 10)
!2151 = distinct !DILexicalBlock(scope: !2141, file: !671, line: 451, column: 4)
!2152 = !DILocation(line: 451, column: 27, scope: !2149)
!2153 = !DILocation(line: 451, column: 12, scope: !2149)
!2154 = !DILocation(line: 451, column: 10, scope: !2149)
!2155 = !DILocation(line: 451, column: 11, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2150, file: !671, discriminator: 2)
!2157 = !DILocation(line: 451, column: 10, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2151, file: !671, discriminator: 3)
!2159 = !DILocation(line: 451, column: 33, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !671, discriminator: 4)
!2161 = distinct !DILexicalBlock(scope: !2150, file: !671, line: 451, column: 31)
!2162 = !DILocation(line: 451, column: 42, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2164, file: !671, discriminator: 5)
!2164 = distinct !DILexicalBlock(scope: !2150, file: !671, line: 451, column: 40)
!2165 = !DILocation(line: 451, column: 132, scope: !2163)
!2166 = !DILocation(line: 451, column: 143, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2151, file: !671, discriminator: 6)
!2168 = !DILocation(line: 453, column: 24, scope: !2141)
!2169 = !DILocation(line: 453, column: 32, scope: !2141)
!2170 = !DILocation(line: 453, column: 40, scope: !2141)
!2171 = !DILocation(line: 453, column: 46, scope: !2141)
!2172 = !DILocation(line: 453, column: 54, scope: !2141)
!2173 = !DILocation(line: 453, column: 2, scope: !2141)
!2174 = !DILocation(line: 454, column: 1, scope: !2141)
!2175 = !DILocation(line: 454, column: 1, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2141, file: !671, discriminator: 1)
!2177 = distinct !DISubprogram(name: "sig_connected", scope: !671, file: !671, line: 466, type: !2178, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !54}
!2180 = !DILocalVariable(name: "server", arg: 1, scope: !2177, file: !671, line: 466, type: !54)
!2181 = !DILocation(line: 466, column: 43, scope: !2177)
!2182 = !DILocation(line: 468, column: 86, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2177, file: !671, line: 468, column: 6)
!2184 = !DILocation(line: 468, column: 68, scope: !2183)
!2185 = !DILocation(line: 468, column: 53, scope: !2183)
!2186 = !DILocation(line: 468, column: 52, scope: !2183)
!2187 = !DILocation(line: 468, column: 27, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2183, file: !671, discriminator: 3)
!2189 = !DILocation(line: 468, column: 8, scope: !2183)
!2190 = !DILocation(line: 468, column: 6, scope: !2177)
!2191 = !DILocation(line: 468, column: 7, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2183, file: !671, discriminator: 1)
!2193 = !DILocation(line: 468, column: 6, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2177, file: !671, discriminator: 2)
!2195 = !DILocation(line: 469, column: 3, scope: !2183)
!2196 = !DILocation(line: 469, column: 11, scope: !2183)
!2197 = !DILocation(line: 469, column: 26, scope: !2183)
!2198 = !DILocation(line: 470, column: 1, scope: !2177)
!2199 = distinct !DISubprogram(name: "irc_nicklist_deinit", scope: !671, file: !671, line: 494, type: !215, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!2200 = !DILocation(line: 496, column: 2, scope: !2199)
!2201 = !DILocation(line: 497, column: 2, scope: !2199)
!2202 = !DILocation(line: 498, column: 2, scope: !2199)
!2203 = !DILocation(line: 499, column: 2, scope: !2199)
!2204 = !DILocation(line: 500, column: 2, scope: !2199)
!2205 = !DILocation(line: 501, column: 2, scope: !2199)
!2206 = !DILocation(line: 502, column: 2, scope: !2199)
!2207 = !DILocation(line: 503, column: 2, scope: !2199)
!2208 = !DILocation(line: 504, column: 2, scope: !2199)
!2209 = !DILocation(line: 505, column: 2, scope: !2199)
!2210 = !DILocation(line: 506, column: 2, scope: !2199)
!2211 = !DILocation(line: 507, column: 2, scope: !2199)
!2212 = !DILocation(line: 508, column: 2, scope: !2199)
!2213 = !DILocation(line: 509, column: 2, scope: !2199)
!2214 = !DILocation(line: 510, column: 2, scope: !2199)
!2215 = !DILocation(line: 511, column: 2, scope: !2199)
!2216 = !DILocation(line: 512, column: 2, scope: !2199)
!2217 = !DILocation(line: 513, column: 2, scope: !2199)
!2218 = !DILocation(line: 514, column: 1, scope: !2199)
!2219 = distinct !DISubprogram(name: "get_nick_flags", scope: !671, file: !671, line: 456, type: !453, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !674)
!2220 = !DILocalVariable(name: "server", arg: 1, scope: !2219, file: !671, line: 456, type: !361)
!2221 = !DILocation(line: 456, column: 47, scope: !2219)
!2222 = !DILocalVariable(name: "irc_server", scope: !2219, file: !671, line: 458, type: !54)
!2223 = !DILocation(line: 458, column: 18, scope: !2219)
!2224 = !DILocation(line: 458, column: 50, scope: !2219)
!2225 = !DILocation(line: 458, column: 31, scope: !2219)
!2226 = !DILocalVariable(name: "prefix", scope: !2219, file: !671, line: 459, type: !449)
!2227 = !DILocation(line: 459, column: 14, scope: !2219)
!2228 = !DILocation(line: 460, column: 23, scope: !2219)
!2229 = !DILocation(line: 460, column: 35, scope: !2219)
!2230 = !DILocation(line: 460, column: 3, scope: !2219)
!2231 = !DILocation(line: 462, column: 11, scope: !2219)
!2232 = !DILocation(line: 462, column: 18, scope: !2219)
!2233 = !DILocation(line: 462, column: 11, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2219, file: !671, discriminator: 1)
!2235 = !DILocation(line: 462, column: 41, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2219, file: !671, discriminator: 2)
!2237 = !DILocation(line: 462, column: 34, scope: !2236)
!2238 = !DILocation(line: 462, column: 11, scope: !2236)
!2239 = !DILocation(line: 462, column: 11, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2219, file: !671, discriminator: 3)
!2241 = !DILocation(line: 462, column: 9, scope: !2240)
!2242 = !DILocation(line: 463, column: 9, scope: !2219)
!2243 = !DILocation(line: 463, column: 16, scope: !2219)
!2244 = !DILocation(line: 463, column: 9, scope: !2234)
!2245 = !DILocation(line: 463, column: 30, scope: !2236)
!2246 = !DILocation(line: 463, column: 36, scope: !2236)
!2247 = !DILocation(line: 463, column: 9, scope: !2236)
!2248 = !DILocation(line: 463, column: 9, scope: !2240)
!2249 = !DILocation(line: 463, column: 2, scope: !2240)
