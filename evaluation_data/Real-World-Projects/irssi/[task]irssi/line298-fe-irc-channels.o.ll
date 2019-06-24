; ModuleID = './line298-fe-irc-channels.o.i'
source_filename = "./line298-fe-irc-channels.o.i"
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
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.REJOIN_REC = type { i8*, i8*, i8 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }

@.str = private unnamed_addr constant [10 x i8] c"statusmsg\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"channel rejoin new\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 470\00", align 1
@__func__.sig_channel_rejoin = private unnamed_addr constant [19 x i8] c"sig_channel_rejoin\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fe_channel_is_opchannel(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !887 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !892, metadata !893), !dbg !894
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !895, metadata !893), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %6, metadata !897, metadata !893), !dbg !898
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !899
  %8 = icmp eq %struct._IRC_SERVER_REC* %7, null, !dbg !901
  br i1 %8, label %20, label %9, !dbg !902

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !903
  %11 = load i8, i8* %10, align 1, !dbg !905
  %12 = zext i8 %11 to i32, !dbg !906
  %13 = sext i32 %12 to i64, !dbg !907
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !907
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 71, !dbg !908
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %13, !dbg !907
  %17 = load i8, i8* %16, align 1, !dbg !907
  %18 = sext i8 %17 to i32, !dbg !907
  %19 = icmp eq i32 %18, 0, !dbg !909
  br i1 %19, label %20, label %21, !dbg !910

; <label>:20:                                     ; preds = %9, %2
  store i32 0, i32* %3, align 4, !dbg !911
  br label %37, !dbg !911

; <label>:21:                                     ; preds = %9
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !912
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 69, !dbg !913
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !913
  %25 = call i8* @g_hash_table_lookup(%struct._GHashTable* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !914
  store i8* %25, i8** %6, align 8, !dbg !915
  %26 = load i8*, i8** %6, align 8, !dbg !916
  %27 = icmp eq i8* %26, null, !dbg !918
  br i1 %27, label %28, label %29, !dbg !919

; <label>:28:                                     ; preds = %21
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8, !dbg !920
  br label %29, !dbg !921

; <label>:29:                                     ; preds = %28, %21
  %30 = load i8*, i8** %6, align 8, !dbg !922
  %31 = load i8*, i8** %5, align 8, !dbg !923
  %32 = load i8, i8* %31, align 1, !dbg !924
  %33 = sext i8 %32 to i32, !dbg !924
  %34 = call i8* @strchr(i8* %30, i32 %33) #4, !dbg !925
  %35 = icmp ne i8* %34, null, !dbg !926
  %36 = zext i1 %35 to i32, !dbg !926
  store i32 %36, i32* %3, align 4, !dbg !927
  br label %37, !dbg !927

; <label>:37:                                     ; preds = %29, %20
  %38 = load i32, i32* %3, align 4, !dbg !928
  ret i32 %38, !dbg !928
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !929 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !932, metadata !893), !dbg !933
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !934, metadata !893), !dbg !935
  call void @llvm.dbg.declare(metadata i8** %6, metadata !936, metadata !893), !dbg !937
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !938
  %8 = icmp eq %struct._IRC_SERVER_REC* %7, null, !dbg !940
  br i1 %8, label %20, label %9, !dbg !941

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !942
  %11 = load i8, i8* %10, align 1, !dbg !944
  %12 = zext i8 %11 to i32, !dbg !945
  %13 = sext i32 %12 to i64, !dbg !946
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !946
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 71, !dbg !947
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %13, !dbg !946
  %17 = load i8, i8* %16, align 1, !dbg !946
  %18 = sext i8 %17 to i32, !dbg !946
  %19 = icmp eq i32 %18, 0, !dbg !948
  br i1 %19, label %20, label %22, !dbg !949

; <label>:20:                                     ; preds = %9, %2
  %21 = load i8*, i8** %5, align 8, !dbg !950
  store i8* %21, i8** %3, align 8, !dbg !951
  br label %59, !dbg !951

; <label>:22:                                     ; preds = %9
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !952
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !952
  %25 = call i8* @module_check_cast(i8* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !954
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !955
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 27, !dbg !956
  %28 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %27, align 8, !dbg !956
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !957
  %30 = bitcast %struct._IRC_SERVER_REC* %29 to i8*, !dbg !957
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !958
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !960
  %33 = load i8*, i8** %5, align 8, !dbg !961
  %34 = call i32 %28(%struct._SERVER_REC* %32, i8* %33), !dbg !962
  %35 = icmp eq i32 %34, 0, !dbg !964
  br i1 %35, label %36, label %38, !dbg !965

; <label>:36:                                     ; preds = %22
  %37 = load i8*, i8** %5, align 8, !dbg !966
  store i8* %37, i8** %3, align 8, !dbg !967
  br label %59, !dbg !967

; <label>:38:                                     ; preds = %22
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !968
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 69, !dbg !969
  %41 = load %struct._GHashTable*, %struct._GHashTable** %40, align 8, !dbg !969
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !970
  store i8* %42, i8** %6, align 8, !dbg !971
  %43 = load i8*, i8** %6, align 8, !dbg !972
  %44 = icmp eq i8* %43, null, !dbg !974
  br i1 %44, label %45, label %46, !dbg !975

; <label>:45:                                     ; preds = %38
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8, !dbg !976
  br label %46, !dbg !977

; <label>:46:                                     ; preds = %45, %38
  br label %47, !dbg !978

; <label>:47:                                     ; preds = %54, %46
  %48 = load i8*, i8** %6, align 8, !dbg !979
  %49 = load i8*, i8** %5, align 8, !dbg !981
  %50 = load i8, i8* %49, align 1, !dbg !982
  %51 = sext i8 %50 to i32, !dbg !982
  %52 = call i8* @strchr(i8* %48, i32 %51) #4, !dbg !983
  %53 = icmp ne i8* %52, null, !dbg !984
  br i1 %53, label %54, label %57, !dbg !985

; <label>:54:                                     ; preds = %47
  %55 = load i8*, i8** %5, align 8, !dbg !986
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !986
  store i8* %56, i8** %5, align 8, !dbg !986
  br label %47, !dbg !988, !llvm.loop !990

; <label>:57:                                     ; preds = %47
  %58 = load i8*, i8** %5, align 8, !dbg !991
  store i8* %58, i8** %3, align 8, !dbg !992
  br label %59, !dbg !992

; <label>:59:                                     ; preds = %57, %36, %20
  %60 = load i8*, i8** %3, align 8, !dbg !993
  ret i8* %60, !dbg !993
}

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_irc_channels_init() #0 !dbg !994 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct.REJOIN_REC*)* @sig_channel_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !995
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_event_forward to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !996
  ret void, !dbg !997
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_channel_rejoin(%struct._SERVER_REC*, %struct.REJOIN_REC*) #0 !dbg !998 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct.REJOIN_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1009, metadata !893), !dbg !1010
  store %struct.REJOIN_REC* %1, %struct.REJOIN_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %4, metadata !1011, metadata !893), !dbg !1012
  br label %5, !dbg !1013, !llvm.loop !1014

; <label>:5:                                      ; preds = %2
  %6 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1015
  %7 = icmp ne %struct.REJOIN_REC* %6, null, !dbg !1019
  br i1 %7, label %8, label %9, !dbg !1015

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1020

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_channel_rejoin, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)), !dbg !1023
  br label %17, !dbg !1026

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1027

; <label>:11:                                     ; preds = %10
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1029
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1029
  %14 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %4, align 8, !dbg !1030
  %15 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %14, i32 0, i32 0, !dbg !1031
  %16 = load i8*, i8** %15, align 8, !dbg !1031
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %13, i8* null, i32 262144, i32 37, i8* %16), !dbg !1032
  br label %17, !dbg !1033

; <label>:17:                                     ; preds = %11, %9
  ret void, !dbg !1034
}

; Function Attrs: nounwind uwtable
define internal void @sig_event_forward(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !1036 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1039, metadata !893), !dbg !1040
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1041, metadata !893), !dbg !1042
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1043, metadata !893), !dbg !1044
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1045, metadata !893), !dbg !1046
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1047, metadata !893), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1049, metadata !893), !dbg !1050
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1051, metadata !893), !dbg !1052
  %11 = load i8*, i8** %5, align 8, !dbg !1053
  %12 = call i8* (i8*, i32, ...) @event_get_params(i8* %11, i32 3, i8* null, i8** %9, i8** %10), !dbg !1054
  store i8* %12, i8** %8, align 8, !dbg !1055
  %13 = load i8*, i8** %9, align 8, !dbg !1056
  %14 = icmp ne i8* %13, null, !dbg !1058
  br i1 %14, label %15, label %75, !dbg !1059

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %10, align 8, !dbg !1060
  %17 = icmp ne i8* %16, null, !dbg !1062
  br i1 %17, label %18, label %75, !dbg !1063

; <label>:18:                                     ; preds = %15
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1064
  %20 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %19, i32 0, i32 27, !dbg !1066
  %21 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %20, align 8, !dbg !1066
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1067
  %23 = load i8*, i8** %9, align 8, !dbg !1068
  %24 = call i32 %21(%struct._SERVER_REC* %22, i8* %23), !dbg !1069
  %25 = icmp ne i32 %24, 0, !dbg !1069
  br i1 %25, label %26, label %75, !dbg !1070

; <label>:26:                                     ; preds = %18
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1071
  %28 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %27, i32 0, i32 27, !dbg !1073
  %29 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %28, align 8, !dbg !1073
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1074
  %31 = load i8*, i8** %10, align 8, !dbg !1075
  %32 = call i32 %29(%struct._SERVER_REC* %30, i8* %31), !dbg !1076
  %33 = icmp ne i32 %32, 0, !dbg !1076
  br i1 %33, label %34, label %75, !dbg !1077

; <label>:34:                                     ; preds = %26
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1078
  %36 = bitcast %struct._SERVER_REC* %35 to i8*, !dbg !1078
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1080
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !1081
  %39 = load i8*, i8** %9, align 8, !dbg !1082
  %40 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %38, i8* %39), !dbg !1083
  %41 = bitcast %struct._CHANNEL_REC* %40 to i8*, !dbg !1085
  %42 = call i8* @module_check_cast_module(i8* %41, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !1086
  %43 = bitcast i8* %42 to %struct._CHANNEL_REC*, !dbg !1088
  %44 = bitcast %struct._CHANNEL_REC* %43 to i8*, !dbg !1089
  %45 = call i8* @chat_protocol_check_cast(i8* %44, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !1090
  %46 = bitcast i8* %45 to %struct._IRC_CHANNEL_REC*, !dbg !1092
  store %struct._IRC_CHANNEL_REC* %46, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1093
  %47 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1094
  %48 = icmp ne %struct._IRC_CHANNEL_REC* %47, null, !dbg !1096
  br i1 %48, label %49, label %74, !dbg !1097

; <label>:49:                                     ; preds = %34
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1098
  %51 = bitcast %struct._SERVER_REC* %50 to i8*, !dbg !1098
  %52 = call i8* @module_check_cast(i8* %51, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1100
  %53 = bitcast i8* %52 to %struct._SERVER_REC*, !dbg !1101
  %54 = load i8*, i8** %10, align 8, !dbg !1102
  %55 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %53, i8* %54), !dbg !1103
  %56 = bitcast %struct._CHANNEL_REC* %55 to i8*, !dbg !1105
  %57 = call i8* @module_check_cast_module(i8* %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !1106
  %58 = bitcast i8* %57 to %struct._CHANNEL_REC*, !dbg !1108
  %59 = bitcast %struct._CHANNEL_REC* %58 to i8*, !dbg !1109
  %60 = call i8* @chat_protocol_check_cast(i8* %59, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !1110
  %61 = bitcast i8* %60 to %struct._IRC_CHANNEL_REC*, !dbg !1112
  %62 = icmp eq %struct._IRC_CHANNEL_REC* %61, null, !dbg !1113
  br i1 %62, label %63, label %74, !dbg !1114

; <label>:63:                                     ; preds = %49
  %64 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1115
  %65 = bitcast %struct._IRC_CHANNEL_REC* %64 to %struct._WI_ITEM_REC*, !dbg !1117
  %66 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %65, i32 0, i32 3, !dbg !1117
  %67 = load i8*, i8** %66, align 8, !dbg !1117
  %68 = bitcast i8* %67 to %struct._WINDOW_REC*, !dbg !1118
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1119
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 6, !dbg !1120
  %71 = load i8*, i8** %70, align 8, !dbg !1120
  %72 = load i8*, i8** %10, align 8, !dbg !1121
  %73 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %68, i8* %71, i8* %72), !dbg !1122
  br label %74, !dbg !1123

; <label>:74:                                     ; preds = %63, %49, %34
  br label %75, !dbg !1124

; <label>:75:                                     ; preds = %74, %26, %18, %15, %3
  %76 = load i8*, i8** %8, align 8, !dbg !1125
  call void @g_free(i8* %76), !dbg !1126
  ret void, !dbg !1127
}

; Function Attrs: nounwind uwtable
define void @fe_irc_channels_deinit() #0 !dbg !1128 {
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct.REJOIN_REC*)* @sig_channel_rejoin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1129
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_event_forward to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1130
  ret void, !dbg !1131
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!884, !885}
!llvm.ident = !{!886}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192)
!1 = !DIFile(filename: "line298-fe-irc-channels.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_NETSPLIT", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_NETSPLIT_MORE", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN_MORE", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_NO_NETSPLITS", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_NETSPLITS_HEADER", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_NETSPLITS_LINE", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_NETSPLITS_FOOTER", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_NETWORK_ADDED", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_NETWORK_REMOVED", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_NETWORK_NOT_FOUND", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_NETWORK_HEADER", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_NETWORK_LINE", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_NETWORK_FOOTER", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_HEADER", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_LINE", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_FOOTER", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_SASL_SUCCESS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_SASL_ERROR", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_CAP_REQ", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_CAP_LS", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_CAP_ACK", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_CAP_NAK", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_CAP_LIST", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_CAP_NEW", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_CAP_DEL", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_FILL_2", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_JOINERROR_TOOMANY", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_JOINERROR_FULL", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_JOINERROR_INVITE", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_JOINERROR_BANNED", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_KEY", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_MASK", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_JOINERROR_UNAVAIL", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_JOINERROR_DUPLICATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_CHANNEL_REJOIN", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_INVITING", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_CHANNEL_CREATED", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_CHANNEL_URL", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_TOPIC", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_NO_TOPIC", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_TOPIC_INFO", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_CHANMODE_CHANGE", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_SERVER_CHANMODE_CHANGE", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_CHANNEL_MODE", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_BANTYPE", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_NO_BANS", value: 48)
!118 = !DIEnumerator(name: "IRCTXT_BANLIST", value: 49)
!119 = !DIEnumerator(name: "IRCTXT_BANLIST_LONG", value: 50)
!120 = !DIEnumerator(name: "IRCTXT_EBANLIST", value: 51)
!121 = !DIEnumerator(name: "IRCTXT_EBANLIST_LONG", value: 52)
!122 = !DIEnumerator(name: "IRCTXT_NO_INVITELIST", value: 53)
!123 = !DIEnumerator(name: "IRCTXT_INVITELIST", value: 54)
!124 = !DIEnumerator(name: "IRCTXT_INVITELIST_LONG", value: 55)
!125 = !DIEnumerator(name: "IRCTXT_NO_SUCH_CHANNEL", value: 56)
!126 = !DIEnumerator(name: "IRCTXT_CHANNEL_SYNCED", value: 57)
!127 = !DIEnumerator(name: "IRCTXT_FILL_4", value: 58)
!128 = !DIEnumerator(name: "IRCTXT_USERMODE_CHANGE", value: 59)
!129 = !DIEnumerator(name: "IRCTXT_USER_MODE", value: 60)
!130 = !DIEnumerator(name: "IRCTXT_AWAY", value: 61)
!131 = !DIEnumerator(name: "IRCTXT_UNAWAY", value: 62)
!132 = !DIEnumerator(name: "IRCTXT_NICK_AWAY", value: 63)
!133 = !DIEnumerator(name: "IRCTXT_NO_SUCH_NICK", value: 64)
!134 = !DIEnumerator(name: "IRCTXT_NICK_IN_USE", value: 65)
!135 = !DIEnumerator(name: "IRCTXT_NICK_UNAVAILABLE", value: 66)
!136 = !DIEnumerator(name: "IRCTXT_YOUR_NICK_OWNED", value: 67)
!137 = !DIEnumerator(name: "IRCTXT_FILL_5", value: 68)
!138 = !DIEnumerator(name: "IRCTXT_WHOIS", value: 69)
!139 = !DIEnumerator(name: "IRCTXT_WHOWAS", value: 70)
!140 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE", value: 71)
!141 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE_SIGNON", value: 72)
!142 = !DIEnumerator(name: "IRCTXT_WHOIS_SERVER", value: 73)
!143 = !DIEnumerator(name: "IRCTXT_WHOIS_OPER", value: 74)
!144 = !DIEnumerator(name: "IRCTXT_WHOIS_MODES", value: 75)
!145 = !DIEnumerator(name: "IRCTXT_WHOIS_REALHOST", value: 76)
!146 = !DIEnumerator(name: "IRCTXT_WHOIS_USERMODE", value: 77)
!147 = !DIEnumerator(name: "IRCTXT_WHOIS_CHANNELS", value: 78)
!148 = !DIEnumerator(name: "IRCTXT_WHOIS_AWAY", value: 79)
!149 = !DIEnumerator(name: "IRCTXT_WHOIS_SPECIAL", value: 80)
!150 = !DIEnumerator(name: "IRCTXT_WHOIS_EXTRA", value: 81)
!151 = !DIEnumerator(name: "IRCTXT_END_OF_WHOIS", value: 82)
!152 = !DIEnumerator(name: "IRCTXT_END_OF_WHOWAS", value: 83)
!153 = !DIEnumerator(name: "IRCTXT_WHOIS_NOT_FOUND", value: 84)
!154 = !DIEnumerator(name: "IRCTXT_WHO", value: 85)
!155 = !DIEnumerator(name: "IRCTXT_END_OF_WHO", value: 86)
!156 = !DIEnumerator(name: "IRCTXT_FILL_6", value: 87)
!157 = !DIEnumerator(name: "IRCTXT_OWN_NOTICE", value: 88)
!158 = !DIEnumerator(name: "IRCTXT_OWN_ACTION", value: 89)
!159 = !DIEnumerator(name: "IRCTXT_OWN_ACTION_TARGET", value: 90)
!160 = !DIEnumerator(name: "IRCTXT_OWN_CTCP", value: 91)
!161 = !DIEnumerator(name: "IRCTXT_FILL_7", value: 92)
!162 = !DIEnumerator(name: "IRCTXT_NOTICE_SERVER", value: 93)
!163 = !DIEnumerator(name: "IRCTXT_NOTICE_PUBLIC", value: 94)
!164 = !DIEnumerator(name: "IRCTXT_NOTICE_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE", value: 96)
!166 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE_QUERY", value: 97)
!167 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC", value: 98)
!168 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC_CHANNEL", value: 99)
!169 = !DIEnumerator(name: "IRCTXT_FILL_8", value: 100)
!170 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY", value: 101)
!171 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "IRCTXT_CTCP_PING_REPLY", value: 103)
!173 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED", value: 104)
!174 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED_UNKNOWN", value: 105)
!175 = !DIEnumerator(name: "IRCTXT_FILL_10", value: 106)
!176 = !DIEnumerator(name: "IRCTXT_ONLINE", value: 107)
!177 = !DIEnumerator(name: "IRCTXT_PONG", value: 108)
!178 = !DIEnumerator(name: "IRCTXT_WALLOPS", value: 109)
!179 = !DIEnumerator(name: "IRCTXT_ACTION_WALLOPS", value: 110)
!180 = !DIEnumerator(name: "IRCTXT_KILL", value: 111)
!181 = !DIEnumerator(name: "IRCTXT_KILL_SERVER", value: 112)
!182 = !DIEnumerator(name: "IRCTXT_ERROR", value: 113)
!183 = !DIEnumerator(name: "IRCTXT_UNKNOWN_MODE", value: 114)
!184 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT", value: 115)
!185 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT_SERVER", value: 116)
!186 = !DIEnumerator(name: "IRCTXT_FILL_11", value: 117)
!187 = !DIEnumerator(name: "IRCTXT_SILENCED", value: 118)
!188 = !DIEnumerator(name: "IRCTXT_UNSILENCED", value: 119)
!189 = !DIEnumerator(name: "IRCTXT_SILENCE_LINE", value: 120)
!190 = !DIEnumerator(name: "IRCTXT_ASK_OPER_PASS", value: 121)
!191 = !DIEnumerator(name: "IRCTXT_ACCEPT_LIST", value: 122)
!192 = !{!193, !194, !195, !196, !623, !263, !495, !630, !522, !838, !542}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!194 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!195 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !198, line: 107, baseType: !199)
!198 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !200, line: 30, size: 2240, align: 64, elements: !201)
!200 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!201 = !{!202, !204, !205, !206, !440, !445, !446, !447, !448, !449, !450, !451, !452, !453, !457, !458, !462, !463, !464, !468, !473, !474, !475, !476, !477, !478, !479, !480, !487, !488, !489, !490, !491, !497, !501, !505, !509, !513, !518, !611, !618, !622}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !203, line: 3, baseType: !194, size: 32, align: 32)
!203 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!204 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !199, file: !203, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !199, file: !203, line: 6, baseType: !194, size: 32, align: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !199, file: !203, line: 8, baseType: !207, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !198, line: 113, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !200, line: 25, size: 1920, align: 64, elements: !210)
!210 = !{!211, !213, !214, !215, !218, !219, !220, !221, !222, !224, !225, !226, !227, !228, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !209, file: !212, line: 3, baseType: !194, size: 32, align: 32)
!212 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !209, file: !212, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !209, file: !212, line: 6, baseType: !194, size: 32, align: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !209, file: !212, line: 9, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !209, file: !212, line: 10, baseType: !194, size: 32, align: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !209, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !209, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !209, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !209, file: !212, line: 13, baseType: !223, size: 16, align: 16, offset: 448)
!223 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !209, file: !212, line: 14, baseType: !216, size: 64, align: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !209, file: !212, line: 15, baseType: !216, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !209, file: !212, line: 16, baseType: !194, size: 32, align: 32, offset: 640)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !209, file: !212, line: 17, baseType: !216, size: 64, align: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !209, file: !212, line: 19, baseType: !229, size: 64, align: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !198, line: 99, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !198, line: 99, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !209, file: !212, line: 19, baseType: !229, size: 64, align: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !209, file: !212, line: 21, baseType: !216, size: 64, align: 64, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !209, file: !212, line: 22, baseType: !216, size: 64, align: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !209, file: !212, line: 23, baseType: !216, size: 64, align: 64, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !209, file: !212, line: 24, baseType: !216, size: 64, align: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !209, file: !212, line: 26, baseType: !216, size: 64, align: 64, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !209, file: !212, line: 27, baseType: !216, size: 64, align: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !209, file: !212, line: 28, baseType: !216, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !209, file: !212, line: 29, baseType: !216, size: 64, align: 64, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !209, file: !212, line: 30, baseType: !216, size: 64, align: 64, offset: 1408)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !209, file: !212, line: 31, baseType: !216, size: 64, align: 64, offset: 1472)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !209, file: !212, line: 32, baseType: !216, size: 64, align: 64, offset: 1536)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !209, file: !212, line: 33, baseType: !216, size: 64, align: 64, offset: 1600)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !209, file: !212, line: 35, baseType: !246, size: 64, align: 64, offset: 1664)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !249)
!249 = !{!250, !253, !397, !398, !403, !404, !405, !406, !407, !416, !417, !418, !422, !423, !424, !425, !426, !427, !428, !429}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !248, file: !4, line: 100, baseType: !251, size: 32, align: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !252, line: 49, baseType: !194)
!252 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !248, file: !4, line: 101, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !257)
!257 = !{!258, !282, !288, !295, !299, !384, !388, !393}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !256, file: !4, line: 133, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !246, !263, !265, !268, !269}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !252, line: 46, baseType: !217)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !266, line: 66, baseType: !267)
!266 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!267 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !272, line: 42, baseType: !273)
!272 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !272, line: 44, size: 128, align: 64, elements: !274)
!274 = !{!275, !280, !281}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !273, file: !272, line: 46, baseType: !276, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !277, line: 36, baseType: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !266, line: 45, baseType: !279)
!279 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !273, file: !272, line: 47, baseType: !251, size: 32, align: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !273, file: !272, line: 48, baseType: !263, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !256, file: !4, line: 138, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!262, !246, !286, !265, !268, !269}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !256, file: !4, line: 143, baseType: !289, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!262, !246, !292, !294, !269}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !266, line: 51, baseType: !293)
!293 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !256, file: !4, line: 147, baseType: !296, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!262, !246, !269}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !256, file: !4, line: 149, baseType: !300, size: 64, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !246, !383}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !306)
!306 = !{!307, !309, !330, !359, !361, !365, !366, !367, !368, !376, !377, !378, !379}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !305, file: !16, line: 174, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !252, line: 77, baseType: !193)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !305, file: !16, line: 175, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !313)
!313 = !{!314, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !312, file: !16, line: 198, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !308}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !312, file: !16, line: 199, baseType: !315, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !312, file: !16, line: 200, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !308, !303, !323, !329}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !308}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !252, line: 50, baseType: !251)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !305, file: !16, line: 177, baseType: !331, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !335)
!335 = !{!336, !341, !345, !349, !353, !354}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !334, file: !16, line: 216, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!328, !303, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !334, file: !16, line: 218, baseType: !342, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!328, !303}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !334, file: !16, line: 219, baseType: !346, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!328, !303, !324, !308}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !334, file: !16, line: 222, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !303}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !334, file: !16, line: 226, baseType: !324, size: 64, align: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !334, file: !16, line: 227, baseType: !355, size: 64, align: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !305, file: !16, line: 178, baseType: !360, size: 32, align: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !252, line: 55, baseType: !279)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !305, file: !16, line: 180, baseType: !362, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !305, file: !16, line: 182, baseType: !251, size: 32, align: 32, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !16, line: 183, baseType: !360, size: 32, align: 32, offset: 352)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !305, file: !16, line: 184, baseType: !360, size: 32, align: 32, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !305, file: !16, line: 186, baseType: !369, size: 64, align: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !371, line: 37, baseType: !372)
!371 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !371, line: 39, size: 128, align: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !372, file: !371, line: 41, baseType: !308, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !371, line: 42, baseType: !369, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !305, file: !16, line: 188, baseType: !303, size: 64, align: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !16, line: 189, baseType: !303, size: 64, align: 64, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !16, line: 191, baseType: !216, size: 64, align: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !305, file: !16, line: 193, baseType: !380, size: 64, align: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !256, file: !4, line: 151, baseType: !385, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !246}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !256, file: !4, line: 152, baseType: !389, size: 64, align: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!262, !246, !392, !269}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !256, file: !4, line: 155, baseType: !394, size: 64, align: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!392, !246}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !248, file: !4, line: 103, baseType: !263, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !248, file: !4, line: 104, baseType: !399, size: 64, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !400, line: 77, baseType: !401)
!400 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !400, line: 77, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !248, file: !4, line: 105, baseType: !399, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !248, file: !4, line: 106, baseType: !263, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !248, file: !4, line: 107, baseType: !360, size: 32, align: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !248, file: !4, line: 109, baseType: !265, size: 64, align: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !248, file: !4, line: 110, baseType: !408, size: 64, align: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !410, line: 39, baseType: !411)
!410 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !410, line: 41, size: 192, align: 64, elements: !412)
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !411, file: !410, line: 43, baseType: !263, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !410, line: 44, baseType: !265, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !411, file: !410, line: 45, baseType: !265, size: 64, align: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !248, file: !4, line: 111, baseType: !408, size: 64, align: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !248, file: !4, line: 112, baseType: !408, size: 64, align: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !248, file: !4, line: 113, baseType: !419, size: 48, align: 8, offset: 704)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 48, align: 8, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 6)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !248, file: !4, line: 117, baseType: !360, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !248, file: !4, line: 118, baseType: !360, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !248, file: !4, line: 119, baseType: !360, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !248, file: !4, line: 120, baseType: !360, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !248, file: !4, line: 121, baseType: !360, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !248, file: !4, line: 122, baseType: !360, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !248, file: !4, line: 124, baseType: !308, size: 64, align: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !248, file: !4, line: 125, baseType: !308, size: 64, align: 64, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !209, file: !212, line: 38, baseType: !279, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !209, file: !212, line: 39, baseType: !279, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !209, file: !212, line: 40, baseType: !279, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !209, file: !212, line: 41, baseType: !279, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !209, file: !212, line: 42, baseType: !279, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !209, file: !212, line: 43, baseType: !279, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !209, file: !212, line: 44, baseType: !279, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !209, file: !212, line: 45, baseType: !279, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !209, file: !212, line: 46, baseType: !216, size: 64, align: 64, offset: 1792)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !209, file: !212, line: 47, baseType: !216, size: 64, align: 64, offset: 1856)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !199, file: !203, line: 9, baseType: !441, size: 64, align: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !442, line: 75, baseType: !443)
!442 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !444, line: 139, baseType: !293)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !199, file: !203, line: 10, baseType: !441, size: 64, align: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !199, file: !203, line: 12, baseType: !216, size: 64, align: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !199, file: !203, line: 13, baseType: !216, size: 64, align: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !199, file: !203, line: 15, baseType: !279, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !199, file: !203, line: 16, baseType: !279, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !199, file: !203, line: 17, baseType: !279, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !199, file: !203, line: 18, baseType: !279, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !199, file: !203, line: 19, baseType: !279, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !199, file: !203, line: 21, baseType: !454, size: 64, align: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !198, line: 102, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !198, line: 102, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !199, file: !203, line: 22, baseType: !194, size: 32, align: 32, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !199, file: !203, line: 25, baseType: !459, size: 128, align: 64, offset: 640)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, align: 64, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 2)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !199, file: !203, line: 26, baseType: !194, size: 32, align: 32, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !199, file: !203, line: 27, baseType: !194, size: 32, align: 32, offset: 800)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !199, file: !203, line: 29, baseType: !465, size: 64, align: 64, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !198, line: 103, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !198, line: 103, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !199, file: !203, line: 30, baseType: !469, size: 64, align: 64, offset: 896)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !471, line: 37, baseType: !472)
!471 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !471, line: 37, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !199, file: !203, line: 32, baseType: !216, size: 64, align: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !199, file: !203, line: 33, baseType: !216, size: 64, align: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !199, file: !203, line: 34, baseType: !216, size: 64, align: 64, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !199, file: !203, line: 35, baseType: !279, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !199, file: !203, line: 36, baseType: !279, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !199, file: !203, line: 37, baseType: !279, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !199, file: !203, line: 38, baseType: !279, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !199, file: !203, line: 40, baseType: !481, size: 128, align: 64, offset: 1216)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !252, line: 504, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !252, line: 506, size: 128, align: 64, elements: !483)
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !482, file: !252, line: 508, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !252, line: 48, baseType: !293)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !482, file: !252, line: 509, baseType: !485, size: 64, align: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !199, file: !203, line: 41, baseType: !441, size: 64, align: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !199, file: !203, line: 42, baseType: !194, size: 32, align: 32, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !199, file: !203, line: 44, baseType: !369, size: 64, align: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !199, file: !203, line: 45, baseType: !369, size: 64, align: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !199, file: !203, line: 53, baseType: !492, size: 64, align: 64, offset: 1600)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !196, !495, !194}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !199, file: !203, line: 55, baseType: !498, size: 64, align: 64, offset: 1664)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!194, !196, !217}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !199, file: !203, line: 57, baseType: !502, size: 64, align: 64, offset: 1728)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!194, !196, !495}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !199, file: !203, line: 60, baseType: !506, size: 64, align: 64, offset: 1792)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!495, !196}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !199, file: !203, line: 62, baseType: !510, size: 64, align: 64, offset: 1856)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !196, !495, !495, !194}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !199, file: !203, line: 65, baseType: !514, size: 64, align: 64, offset: 1920)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!517, !196, !495, !495}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !199, file: !203, line: 69, baseType: !519, size: 64, align: 64, offset: 1984)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !196, !495}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !198, line: 109, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !525, line: 15, size: 1408, align: 64, elements: !526)
!525 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!526 = !{!527, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !562, !563, !565, !566, !567, !568, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !528, line: 3, baseType: !194, size: 32, align: 32)
!528 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !524, file: !528, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !524, file: !528, line: 5, baseType: !469, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !524, file: !528, line: 7, baseType: !193, size: 64, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !524, file: !528, line: 8, baseType: !196, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !524, file: !528, line: 9, baseType: !216, size: 64, align: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !528, line: 10, baseType: !216, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !524, file: !528, line: 11, baseType: !441, size: 64, align: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !524, file: !528, line: 12, baseType: !194, size: 32, align: 32, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !524, file: !528, line: 13, baseType: !216, size: 64, align: 64, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !524, file: !528, line: 15, baseType: !539, size: 64, align: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !198, line: 108, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !545, line: 5, size: 704, align: 64, elements: !546)
!545 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !528, line: 3, baseType: !194, size: 32, align: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !544, file: !528, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !544, file: !528, line: 5, baseType: !469, size: 64, align: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !544, file: !528, line: 7, baseType: !193, size: 64, align: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !544, file: !528, line: 8, baseType: !196, size: 64, align: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !544, file: !528, line: 9, baseType: !216, size: 64, align: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !528, line: 10, baseType: !216, size: 64, align: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !544, file: !528, line: 11, baseType: !441, size: 64, align: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !544, file: !528, line: 12, baseType: !194, size: 32, align: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !544, file: !528, line: 13, baseType: !216, size: 64, align: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !544, file: !528, line: 15, baseType: !539, size: 64, align: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !544, file: !528, line: 17, baseType: !559, size: 64, align: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!495, !542}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !524, file: !528, line: 17, baseType: !559, size: 64, align: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !524, file: !564, line: 5, baseType: !216, size: 64, align: 64, offset: 704)
!564 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!565 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !524, file: !564, line: 6, baseType: !216, size: 64, align: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !524, file: !564, line: 7, baseType: !441, size: 64, align: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !524, file: !564, line: 9, baseType: !469, size: 64, align: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !524, file: !564, line: 10, baseType: !569, size: 64, align: 64, offset: 960)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !198, line: 111, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !572, line: 13, size: 576, align: 64, elements: !573)
!572 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!573 = !{!574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !592, !593}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !575, line: 3, baseType: !194, size: 32, align: 32)
!575 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!576 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !571, file: !575, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !571, file: !575, line: 6, baseType: !441, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !571, file: !575, line: 8, baseType: !216, size: 64, align: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !571, file: !575, line: 9, baseType: !216, size: 64, align: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !571, file: !575, line: 10, baseType: !216, size: 64, align: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !571, file: !575, line: 11, baseType: !194, size: 32, align: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !571, file: !575, line: 14, baseType: !279, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !571, file: !575, line: 15, baseType: !279, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !571, file: !575, line: 18, baseType: !279, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !571, file: !575, line: 19, baseType: !279, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !571, file: !575, line: 20, baseType: !279, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !571, file: !575, line: 21, baseType: !279, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !571, file: !575, line: 22, baseType: !589, size: 64, align: 8, offset: 360)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, align: 8, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 8)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !571, file: !575, line: 26, baseType: !193, size: 64, align: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !575, line: 28, baseType: !569, size: 64, align: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !524, file: !564, line: 12, baseType: !279, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !524, file: !564, line: 13, baseType: !216, size: 64, align: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !524, file: !564, line: 14, baseType: !194, size: 32, align: 32, offset: 1152)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !524, file: !564, line: 15, baseType: !216, size: 64, align: 64, offset: 1216)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !524, file: !564, line: 17, baseType: !279, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !524, file: !564, line: 18, baseType: !279, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !524, file: !564, line: 19, baseType: !279, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !524, file: !564, line: 20, baseType: !279, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !524, file: !564, line: 22, baseType: !279, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !524, file: !564, line: 23, baseType: !279, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !524, file: !564, line: 24, baseType: !279, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !524, file: !564, line: 25, baseType: !279, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !524, file: !564, line: 26, baseType: !279, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !524, file: !564, line: 31, baseType: !608, size: 64, align: 64, offset: 1344)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!216, !522}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !199, file: !203, line: 70, baseType: !612, size: 64, align: 64, offset: 2048)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!615, !196, !495}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !198, line: 110, baseType: !617)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !198, line: 110, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !199, file: !203, line: 71, baseType: !619, size: 64, align: 64, offset: 2112)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!194, !495, !495}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !199, file: !203, line: 73, baseType: !619, size: 64, align: 64, offset: 2176)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !624, line: 9, baseType: !625)
!624 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628, !628, !628, !628, !628, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !632, line: 7, baseType: !633)
!632 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !634, line: 15, size: 1600, align: 64, elements: !635)
!634 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!635 = !{!636, !637, !638, !639, !640, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !528, line: 3, baseType: !194, size: 32, align: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !633, file: !528, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !633, file: !528, line: 5, baseType: !469, size: 64, align: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !633, file: !528, line: 7, baseType: !193, size: 64, align: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !633, file: !528, line: 8, baseType: !641, size: 64, align: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !632, line: 6, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !644, line: 42, size: 39168, align: 64, elements: !645)
!644 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{!646, !647, !648, !649, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !805, !807}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !203, line: 3, baseType: !194, size: 32, align: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !643, file: !203, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !643, file: !203, line: 6, baseType: !194, size: 32, align: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !643, file: !203, line: 8, baseType: !650, size: 64, align: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !632, line: 5, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !644, line: 24, size: 2496, align: 64, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !212, line: 3, baseType: !194, size: 32, align: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !652, file: !212, line: 4, baseType: !194, size: 32, align: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !652, file: !212, line: 6, baseType: !194, size: 32, align: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !652, file: !212, line: 9, baseType: !216, size: 64, align: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !652, file: !212, line: 10, baseType: !194, size: 32, align: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !652, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !652, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !652, file: !212, line: 11, baseType: !216, size: 64, align: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !652, file: !212, line: 13, baseType: !223, size: 16, align: 16, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !652, file: !212, line: 14, baseType: !216, size: 64, align: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !652, file: !212, line: 15, baseType: !216, size: 64, align: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !652, file: !212, line: 16, baseType: !194, size: 32, align: 32, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !652, file: !212, line: 17, baseType: !216, size: 64, align: 64, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !652, file: !212, line: 19, baseType: !229, size: 64, align: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !652, file: !212, line: 19, baseType: !229, size: 64, align: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !652, file: !212, line: 21, baseType: !216, size: 64, align: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !652, file: !212, line: 22, baseType: !216, size: 64, align: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !652, file: !212, line: 23, baseType: !216, size: 64, align: 64, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !652, file: !212, line: 24, baseType: !216, size: 64, align: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !652, file: !212, line: 26, baseType: !216, size: 64, align: 64, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !652, file: !212, line: 27, baseType: !216, size: 64, align: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !652, file: !212, line: 28, baseType: !216, size: 64, align: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !652, file: !212, line: 29, baseType: !216, size: 64, align: 64, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !652, file: !212, line: 30, baseType: !216, size: 64, align: 64, offset: 1408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !652, file: !212, line: 31, baseType: !216, size: 64, align: 64, offset: 1472)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !652, file: !212, line: 32, baseType: !216, size: 64, align: 64, offset: 1536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !652, file: !212, line: 33, baseType: !216, size: 64, align: 64, offset: 1600)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !652, file: !212, line: 35, baseType: !246, size: 64, align: 64, offset: 1664)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !652, file: !212, line: 38, baseType: !279, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !652, file: !212, line: 39, baseType: !279, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !652, file: !212, line: 40, baseType: !279, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !652, file: !212, line: 41, baseType: !279, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !652, file: !212, line: 42, baseType: !279, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !652, file: !212, line: 43, baseType: !279, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !652, file: !212, line: 44, baseType: !279, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !652, file: !212, line: 45, baseType: !279, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !652, file: !212, line: 46, baseType: !216, size: 64, align: 64, offset: 1792)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !652, file: !212, line: 47, baseType: !216, size: 64, align: 64, offset: 1856)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !652, file: !644, line: 27, baseType: !216, size: 64, align: 64, offset: 1920)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !652, file: !644, line: 28, baseType: !216, size: 64, align: 64, offset: 1984)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !652, file: !644, line: 30, baseType: !194, size: 32, align: 32, offset: 2048)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !652, file: !644, line: 31, baseType: !216, size: 64, align: 64, offset: 2112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !652, file: !644, line: 32, baseType: !216, size: 64, align: 64, offset: 2176)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !652, file: !644, line: 34, baseType: !194, size: 32, align: 32, offset: 2240)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !652, file: !644, line: 35, baseType: !194, size: 32, align: 32, offset: 2272)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !652, file: !644, line: 36, baseType: !194, size: 32, align: 32, offset: 2304)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !652, file: !644, line: 38, baseType: !194, size: 32, align: 32, offset: 2336)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !652, file: !644, line: 38, baseType: !194, size: 32, align: 32, offset: 2368)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !652, file: !644, line: 38, baseType: !194, size: 32, align: 32, offset: 2400)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !652, file: !644, line: 38, baseType: !194, size: 32, align: 32, offset: 2432)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !643, file: !203, line: 9, baseType: !441, size: 64, align: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !643, file: !203, line: 10, baseType: !441, size: 64, align: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !643, file: !203, line: 12, baseType: !216, size: 64, align: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !643, file: !203, line: 13, baseType: !216, size: 64, align: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !643, file: !203, line: 15, baseType: !279, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !643, file: !203, line: 16, baseType: !279, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !643, file: !203, line: 17, baseType: !279, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !643, file: !203, line: 18, baseType: !279, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !643, file: !203, line: 19, baseType: !279, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !643, file: !203, line: 21, baseType: !454, size: 64, align: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !643, file: !203, line: 22, baseType: !194, size: 32, align: 32, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !643, file: !203, line: 25, baseType: !459, size: 128, align: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !643, file: !203, line: 26, baseType: !194, size: 32, align: 32, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !643, file: !203, line: 27, baseType: !194, size: 32, align: 32, offset: 800)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !643, file: !203, line: 29, baseType: !465, size: 64, align: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !643, file: !203, line: 30, baseType: !469, size: 64, align: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !643, file: !203, line: 32, baseType: !216, size: 64, align: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !643, file: !203, line: 33, baseType: !216, size: 64, align: 64, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !643, file: !203, line: 34, baseType: !216, size: 64, align: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !643, file: !203, line: 35, baseType: !279, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !643, file: !203, line: 36, baseType: !279, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !643, file: !203, line: 37, baseType: !279, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !643, file: !203, line: 38, baseType: !279, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !643, file: !203, line: 40, baseType: !481, size: 128, align: 64, offset: 1216)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !643, file: !203, line: 41, baseType: !441, size: 64, align: 64, offset: 1344)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !643, file: !203, line: 42, baseType: !194, size: 32, align: 32, offset: 1408)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !643, file: !203, line: 44, baseType: !369, size: 64, align: 64, offset: 1472)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !643, file: !203, line: 45, baseType: !369, size: 64, align: 64, offset: 1536)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !643, file: !203, line: 53, baseType: !492, size: 64, align: 64, offset: 1600)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !643, file: !203, line: 55, baseType: !498, size: 64, align: 64, offset: 1664)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !643, file: !203, line: 57, baseType: !502, size: 64, align: 64, offset: 1728)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !643, file: !203, line: 60, baseType: !506, size: 64, align: 64, offset: 1792)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !643, file: !203, line: 62, baseType: !510, size: 64, align: 64, offset: 1856)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !643, file: !203, line: 65, baseType: !514, size: 64, align: 64, offset: 1920)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !643, file: !203, line: 69, baseType: !519, size: 64, align: 64, offset: 1984)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !643, file: !203, line: 70, baseType: !612, size: 64, align: 64, offset: 2048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !643, file: !203, line: 71, baseType: !619, size: 64, align: 64, offset: 2112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !643, file: !203, line: 73, baseType: !619, size: 64, align: 64, offset: 2176)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !643, file: !644, line: 46, baseType: !369, size: 64, align: 64, offset: 2240)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !643, file: !644, line: 47, baseType: !369, size: 64, align: 64, offset: 2304)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !643, file: !644, line: 48, baseType: !745, size: 64, align: 64, offset: 2368)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !632, line: 8, baseType: !747)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !632, line: 8, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !643, file: !644, line: 49, baseType: !369, size: 64, align: 64, offset: 2432)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !643, file: !644, line: 51, baseType: !216, size: 64, align: 64, offset: 2496)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !643, file: !644, line: 53, baseType: !216, size: 64, align: 64, offset: 2560)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !643, file: !644, line: 54, baseType: !216, size: 64, align: 64, offset: 2624)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !643, file: !644, line: 55, baseType: !216, size: 64, align: 64, offset: 2688)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !643, file: !644, line: 56, baseType: !216, size: 64, align: 64, offset: 2752)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !643, file: !644, line: 57, baseType: !194, size: 32, align: 32, offset: 2816)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !643, file: !644, line: 59, baseType: !279, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !643, file: !644, line: 60, baseType: !279, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !643, file: !644, line: 62, baseType: !279, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !643, file: !644, line: 63, baseType: !279, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !643, file: !644, line: 64, baseType: !279, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !643, file: !644, line: 65, baseType: !279, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !643, file: !644, line: 66, baseType: !279, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !643, file: !644, line: 67, baseType: !279, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !643, file: !644, line: 68, baseType: !279, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !643, file: !644, line: 69, baseType: !279, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !643, file: !644, line: 70, baseType: !279, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !643, file: !644, line: 71, baseType: !279, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !643, file: !644, line: 72, baseType: !279, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !643, file: !644, line: 74, baseType: !194, size: 32, align: 32, offset: 2880)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !643, file: !644, line: 75, baseType: !194, size: 32, align: 32, offset: 2912)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !643, file: !644, line: 76, baseType: !194, size: 32, align: 32, offset: 2944)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !643, file: !644, line: 77, baseType: !194, size: 32, align: 32, offset: 2976)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !643, file: !644, line: 79, baseType: !469, size: 64, align: 64, offset: 3008)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !643, file: !644, line: 80, baseType: !369, size: 64, align: 64, offset: 3072)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !643, file: !644, line: 81, baseType: !369, size: 64, align: 64, offset: 3136)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !643, file: !644, line: 83, baseType: !408, size: 64, align: 64, offset: 3200)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !643, file: !644, line: 84, baseType: !360, size: 32, align: 32, offset: 3264)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !643, file: !644, line: 87, baseType: !194, size: 32, align: 32, offset: 3296)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !643, file: !644, line: 91, baseType: !369, size: 64, align: 64, offset: 3328)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !643, file: !644, line: 92, baseType: !481, size: 128, align: 64, offset: 3392)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !643, file: !644, line: 93, baseType: !481, size: 128, align: 64, offset: 3520)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !643, file: !644, line: 95, baseType: !194, size: 32, align: 32, offset: 3648)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !643, file: !644, line: 96, baseType: !194, size: 32, align: 32, offset: 3680)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !643, file: !644, line: 97, baseType: !194, size: 32, align: 32, offset: 3712)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !643, file: !644, line: 100, baseType: !369, size: 64, align: 64, offset: 3776)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !643, file: !644, line: 103, baseType: !369, size: 64, align: 64, offset: 3840)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !643, file: !644, line: 106, baseType: !369, size: 64, align: 64, offset: 3904)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !643, file: !644, line: 108, baseType: !469, size: 64, align: 64, offset: 3968)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !643, file: !644, line: 109, baseType: !369, size: 64, align: 64, offset: 4032)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !643, file: !644, line: 111, baseType: !369, size: 64, align: 64, offset: 4096)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !643, file: !644, line: 114, baseType: !193, size: 64, align: 64, offset: 4160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !643, file: !644, line: 116, baseType: !469, size: 64, align: 64, offset: 4224)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !643, file: !644, line: 117, baseType: !793, size: 32768, align: 64, offset: 4288)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 32768, align: 64, elements: !803)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !795, line: 10, size: 128, align: 64, elements: !796)
!795 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!796 = !{!797, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !794, file: !795, line: 11, baseType: !798, size: 64, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !795, line: 7, baseType: !800)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !630, !495, !217, !217, !216, !408}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !794, file: !795, line: 12, baseType: !217, size: 8, align: 8, offset: 64)
!803 = !{!804}
!804 = !DISubrange(count: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !643, file: !644, line: 118, baseType: !806, size: 2048, align: 8, offset: 37056)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2048, align: 8, elements: !803)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !643, file: !644, line: 120, baseType: !619, size: 64, align: 64, offset: 39104)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !633, file: !528, line: 9, baseType: !216, size: 64, align: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !528, line: 10, baseType: !216, size: 64, align: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !633, file: !528, line: 11, baseType: !441, size: 64, align: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !633, file: !528, line: 12, baseType: !194, size: 32, align: 32, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !633, file: !528, line: 13, baseType: !216, size: 64, align: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !633, file: !528, line: 15, baseType: !539, size: 64, align: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !633, file: !528, line: 17, baseType: !559, size: 64, align: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !633, file: !564, line: 5, baseType: !216, size: 64, align: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !633, file: !564, line: 6, baseType: !216, size: 64, align: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !633, file: !564, line: 7, baseType: !441, size: 64, align: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !633, file: !564, line: 9, baseType: !469, size: 64, align: 64, offset: 896)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !633, file: !564, line: 10, baseType: !569, size: 64, align: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !633, file: !564, line: 12, baseType: !279, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !633, file: !564, line: 13, baseType: !216, size: 64, align: 64, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !633, file: !564, line: 14, baseType: !194, size: 32, align: 32, offset: 1152)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !633, file: !564, line: 15, baseType: !216, size: 64, align: 64, offset: 1216)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !633, file: !564, line: 17, baseType: !279, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !633, file: !564, line: 18, baseType: !279, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !633, file: !564, line: 19, baseType: !279, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !633, file: !564, line: 20, baseType: !279, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !633, file: !564, line: 22, baseType: !279, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !633, file: !564, line: 23, baseType: !279, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !633, file: !564, line: 24, baseType: !279, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !633, file: !564, line: 25, baseType: !279, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !633, file: !564, line: 26, baseType: !279, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !633, file: !564, line: 31, baseType: !608, size: 64, align: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !633, file: !634, line: 18, baseType: !369, size: 64, align: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !633, file: !634, line: 20, baseType: !441, size: 64, align: 64, offset: 1472)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !633, file: !634, line: 21, baseType: !194, size: 32, align: 32, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !633, file: !634, line: 22, baseType: !194, size: 32, align: 32, offset: 1568)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !198, line: 117, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !841, line: 28, size: 1280, align: 64, elements: !842)
!841 = !DIFile(filename: "../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !876, !877, !878, !879, !880, !881, !882, !883}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !840, file: !841, line: 29, baseType: !194, size: 32, align: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !840, file: !841, line: 30, baseType: !216, size: 64, align: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !840, file: !841, line: 32, baseType: !194, size: 32, align: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !840, file: !841, line: 32, baseType: !194, size: 32, align: 32, offset: 160)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !840, file: !841, line: 34, baseType: !369, size: 64, align: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !840, file: !841, line: 35, baseType: !542, size: 64, align: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !840, file: !841, line: 36, baseType: !196, size: 64, align: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !840, file: !841, line: 37, baseType: !196, size: 64, align: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !840, file: !841, line: 38, baseType: !216, size: 64, align: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !840, file: !841, line: 40, baseType: !194, size: 32, align: 32, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !840, file: !841, line: 41, baseType: !369, size: 64, align: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !840, file: !841, line: 43, baseType: !279, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !840, file: !841, line: 44, baseType: !279, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !840, file: !841, line: 45, baseType: !279, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !840, file: !841, line: 48, baseType: !858, size: 64, align: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !860, line: 14, baseType: !861)
!860 = !DIFile(filename: "../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !860, line: 6, size: 256, align: 64, elements: !862)
!862 = !{!863, !864, !873, !874, !875}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !860, line: 7, baseType: !216, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !861, file: !860, line: 9, baseType: !865, size: 64, align: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !867, line: 37, baseType: !868)
!867 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !867, line: 39, size: 192, align: 64, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !868, file: !867, line: 41, baseType: !308, size: 64, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !867, line: 42, baseType: !865, size: 64, align: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !868, file: !867, line: 43, baseType: !865, size: 64, align: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !861, file: !860, line: 10, baseType: !194, size: 32, align: 32, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !861, file: !860, line: 12, baseType: !194, size: 32, align: 32, offset: 160)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !861, file: !860, line: 13, baseType: !194, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !840, file: !841, line: 49, baseType: !216, size: 64, align: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !840, file: !841, line: 51, baseType: !194, size: 32, align: 32, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !840, file: !841, line: 52, baseType: !216, size: 64, align: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !840, file: !841, line: 54, baseType: !441, size: 64, align: 64, offset: 960)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !840, file: !841, line: 55, baseType: !441, size: 64, align: 64, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !840, file: !841, line: 57, baseType: !216, size: 64, align: 64, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !840, file: !841, line: 58, baseType: !193, size: 64, align: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !840, file: !841, line: 60, baseType: !193, size: 64, align: 64, offset: 1216)
!884 = !{i32 2, !"Dwarf Version", i32 4}
!885 = !{i32 2, !"Debug Info Version", i32 3}
!886 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!887 = distinct !DISubprogram(name: "fe_channel_is_opchannel", scope: !888, file: !888, line: 34, type: !889, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!888 = !DIFile(filename: "fe-irc-channels.c", directory: "/home/lichi/Desktop/irssi/task1")
!889 = !DISubroutineType(types: !890)
!890 = !{!194, !641, !495}
!891 = !{}
!892 = !DILocalVariable(name: "server", arg: 1, scope: !887, file: !888, line: 34, type: !641)
!893 = !DIExpression()
!894 = !DILocation(line: 34, column: 45, scope: !887)
!895 = !DILocalVariable(name: "target", arg: 2, scope: !887, file: !888, line: 34, type: !495)
!896 = !DILocation(line: 34, column: 65, scope: !887)
!897 = !DILocalVariable(name: "statusmsg", scope: !887, file: !888, line: 36, type: !495)
!898 = !DILocation(line: 36, column: 14, scope: !887)
!899 = !DILocation(line: 39, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !887, file: !888, line: 39, column: 6)
!901 = !DILocation(line: 39, column: 13, scope: !900)
!902 = !DILocation(line: 39, column: 20, scope: !900)
!903 = !DILocation(line: 39, column: 59, scope: !904)
!904 = !DILexicalBlockFile(scope: !900, file: !888, discriminator: 1)
!905 = !DILocation(line: 39, column: 58, scope: !904)
!906 = !DILocation(line: 39, column: 38, scope: !904)
!907 = !DILocation(line: 39, column: 23, scope: !904)
!908 = !DILocation(line: 39, column: 31, scope: !904)
!909 = !DILocation(line: 39, column: 67, scope: !904)
!910 = !DILocation(line: 39, column: 6, scope: !904)
!911 = !DILocation(line: 40, column: 3, scope: !900)
!912 = !DILocation(line: 42, column: 34, scope: !887)
!913 = !DILocation(line: 42, column: 42, scope: !887)
!914 = !DILocation(line: 42, column: 14, scope: !887)
!915 = !DILocation(line: 42, column: 12, scope: !887)
!916 = !DILocation(line: 43, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !887, file: !888, line: 43, column: 6)
!918 = !DILocation(line: 43, column: 16, scope: !917)
!919 = !DILocation(line: 43, column: 6, scope: !887)
!920 = !DILocation(line: 44, column: 13, scope: !917)
!921 = !DILocation(line: 44, column: 3, scope: !917)
!922 = !DILocation(line: 46, column: 16, scope: !887)
!923 = !DILocation(line: 46, column: 28, scope: !887)
!924 = !DILocation(line: 46, column: 27, scope: !887)
!925 = !DILocation(line: 46, column: 9, scope: !887)
!926 = !DILocation(line: 46, column: 36, scope: !887)
!927 = !DILocation(line: 46, column: 2, scope: !887)
!928 = !DILocation(line: 47, column: 1, scope: !887)
!929 = distinct !DISubprogram(name: "fe_channel_skip_prefix", scope: !888, file: !888, line: 49, type: !930, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!930 = !DISubroutineType(types: !931)
!931 = !{!495, !641, !495}
!932 = !DILocalVariable(name: "server", arg: 1, scope: !929, file: !888, line: 49, type: !641)
!933 = !DILocation(line: 49, column: 52, scope: !929)
!934 = !DILocalVariable(name: "target", arg: 2, scope: !929, file: !888, line: 49, type: !495)
!935 = !DILocation(line: 49, column: 72, scope: !929)
!936 = !DILocalVariable(name: "statusmsg", scope: !929, file: !888, line: 51, type: !495)
!937 = !DILocation(line: 51, column: 14, scope: !929)
!938 = !DILocation(line: 54, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !929, file: !888, line: 54, column: 6)
!940 = !DILocation(line: 54, column: 13, scope: !939)
!941 = !DILocation(line: 54, column: 20, scope: !939)
!942 = !DILocation(line: 54, column: 59, scope: !943)
!943 = !DILexicalBlockFile(scope: !939, file: !888, discriminator: 1)
!944 = !DILocation(line: 54, column: 58, scope: !943)
!945 = !DILocation(line: 54, column: 38, scope: !943)
!946 = !DILocation(line: 54, column: 23, scope: !943)
!947 = !DILocation(line: 54, column: 31, scope: !943)
!948 = !DILocation(line: 54, column: 67, scope: !943)
!949 = !DILocation(line: 54, column: 6, scope: !943)
!950 = !DILocation(line: 55, column: 10, scope: !939)
!951 = !DILocation(line: 55, column: 3, scope: !939)
!952 = !DILocation(line: 58, column: 42, scope: !953)
!953 = distinct !DILexicalBlock(scope: !929, file: !888, line: 58, column: 6)
!954 = !DILocation(line: 58, column: 24, scope: !953)
!955 = !DILocation(line: 58, column: 9, scope: !953)
!956 = !DILocation(line: 58, column: 20, scope: !953)
!957 = !DILocation(line: 58, column: 64, scope: !953)
!958 = !DILocation(line: 58, column: 46, scope: !959)
!959 = !DILexicalBlockFile(scope: !953, file: !888, discriminator: 1)
!960 = !DILocation(line: 58, column: 31, scope: !953)
!961 = !DILocation(line: 58, column: 19, scope: !953)
!962 = !DILocation(line: 58, column: 7, scope: !963)
!963 = !DILexicalBlockFile(scope: !953, file: !888, discriminator: 2)
!964 = !DILocation(line: 58, column: 28, scope: !953)
!965 = !DILocation(line: 58, column: 6, scope: !929)
!966 = !DILocation(line: 59, column: 10, scope: !953)
!967 = !DILocation(line: 59, column: 3, scope: !953)
!968 = !DILocation(line: 61, column: 34, scope: !929)
!969 = !DILocation(line: 61, column: 42, scope: !929)
!970 = !DILocation(line: 61, column: 14, scope: !929)
!971 = !DILocation(line: 61, column: 12, scope: !929)
!972 = !DILocation(line: 65, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !929, file: !888, line: 65, column: 6)
!974 = !DILocation(line: 65, column: 16, scope: !973)
!975 = !DILocation(line: 65, column: 6, scope: !929)
!976 = !DILocation(line: 66, column: 13, scope: !973)
!977 = !DILocation(line: 66, column: 3, scope: !973)
!978 = !DILocation(line: 69, column: 2, scope: !929)
!979 = !DILocation(line: 69, column: 16, scope: !980)
!980 = !DILexicalBlockFile(scope: !929, file: !888, discriminator: 1)
!981 = !DILocation(line: 69, column: 28, scope: !980)
!982 = !DILocation(line: 69, column: 27, scope: !980)
!983 = !DILocation(line: 69, column: 9, scope: !980)
!984 = !DILocation(line: 69, column: 36, scope: !980)
!985 = !DILocation(line: 69, column: 2, scope: !980)
!986 = !DILocation(line: 70, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !929, file: !888, line: 69, column: 44)
!988 = !DILocation(line: 69, column: 2, scope: !989)
!989 = !DILexicalBlockFile(scope: !929, file: !888, discriminator: 2)
!990 = distinct !{!990, !978}
!991 = !DILocation(line: 73, column: 9, scope: !929)
!992 = !DILocation(line: 73, column: 2, scope: !929)
!993 = !DILocation(line: 74, column: 1, scope: !929)
!994 = distinct !DISubprogram(name: "fe_irc_channels_init", scope: !888, file: !888, line: 101, type: !357, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!995 = !DILocation(line: 103, column: 2, scope: !994)
!996 = !DILocation(line: 104, column: 2, scope: !994)
!997 = !DILocation(line: 105, column: 1, scope: !994)
!998 = distinct !DISubprogram(name: "sig_channel_rejoin", scope: !888, file: !888, line: 76, type: !999, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !196, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64, align: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "REJOIN_REC", file: !1003, line: 8, baseType: !1004)
!1003 = !DIFile(filename: "../../../src/irc/core/channel-rejoin.h", directory: "/home/lichi/Desktop/irssi/task1")
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 4, size: 192, align: 64, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1004, file: !1003, line: 5, baseType: !216, size: 64, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1004, file: !1003, line: 6, baseType: !216, size: 64, align: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "joining", scope: !1004, file: !1003, line: 7, baseType: !279, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1009 = !DILocalVariable(name: "server", arg: 1, scope: !998, file: !888, line: 76, type: !196)
!1010 = !DILocation(line: 76, column: 44, scope: !998)
!1011 = !DILocalVariable(name: "rec", arg: 2, scope: !998, file: !888, line: 76, type: !1001)
!1012 = !DILocation(line: 76, column: 64, scope: !998)
!1013 = !DILocation(line: 78, column: 2, scope: !998)
!1014 = distinct !{!1014, !1013}
!1015 = !DILocation(line: 78, column: 10, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1017, file: !888, discriminator: 1)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !888, line: 78, column: 10)
!1018 = distinct !DILexicalBlock(scope: !998, file: !888, line: 78, column: 4)
!1019 = !DILocation(line: 78, column: 14, scope: !1016)
!1020 = !DILocation(line: 78, column: 5, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !888, discriminator: 2)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !888, line: 78, column: 3)
!1023 = !DILocation(line: 78, column: 14, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1025, file: !888, discriminator: 3)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !888, line: 78, column: 12)
!1026 = !DILocation(line: 78, column: 98, scope: !1024)
!1027 = !DILocation(line: 78, column: 109, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1018, file: !888, discriminator: 4)
!1029 = !DILocation(line: 80, column: 38, scope: !998)
!1030 = !DILocation(line: 80, column: 49, scope: !998)
!1031 = !DILocation(line: 80, column: 54, scope: !998)
!1032 = !DILocation(line: 80, column: 2, scope: !998)
!1033 = !DILocation(line: 82, column: 1, scope: !998)
!1034 = !DILocation(line: 82, column: 1, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !998, file: !888, discriminator: 1)
!1036 = distinct !DISubprogram(name: "sig_event_forward", scope: !888, file: !888, line: 84, type: !1037, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !196, !495, !495}
!1039 = !DILocalVariable(name: "server", arg: 1, scope: !1036, file: !888, line: 84, type: !196)
!1040 = !DILocation(line: 84, column: 43, scope: !1036)
!1041 = !DILocalVariable(name: "data", arg: 2, scope: !1036, file: !888, line: 84, type: !495)
!1042 = !DILocation(line: 84, column: 63, scope: !1036)
!1043 = !DILocalVariable(name: "nick", arg: 3, scope: !1036, file: !888, line: 85, type: !495)
!1044 = !DILocation(line: 85, column: 22, scope: !1036)
!1045 = !DILocalVariable(name: "channel", scope: !1036, file: !888, line: 87, type: !630)
!1046 = !DILocation(line: 87, column: 19, scope: !1036)
!1047 = !DILocalVariable(name: "params", scope: !1036, file: !888, line: 88, type: !216)
!1048 = !DILocation(line: 88, column: 8, scope: !1036)
!1049 = !DILocalVariable(name: "from", scope: !1036, file: !888, line: 88, type: !216)
!1050 = !DILocation(line: 88, column: 17, scope: !1036)
!1051 = !DILocalVariable(name: "to", scope: !1036, file: !888, line: 88, type: !216)
!1052 = !DILocation(line: 88, column: 24, scope: !1036)
!1053 = !DILocation(line: 90, column: 28, scope: !1036)
!1054 = !DILocation(line: 90, column: 11, scope: !1036)
!1055 = !DILocation(line: 90, column: 9, scope: !1036)
!1056 = !DILocation(line: 91, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1036, file: !888, line: 91, column: 6)
!1058 = !DILocation(line: 91, column: 11, scope: !1057)
!1059 = !DILocation(line: 91, column: 18, scope: !1057)
!1060 = !DILocation(line: 91, column: 21, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1057, file: !888, discriminator: 1)
!1062 = !DILocation(line: 91, column: 24, scope: !1061)
!1063 = !DILocation(line: 91, column: 32, scope: !1061)
!1064 = !DILocation(line: 91, column: 37, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1057, file: !888, discriminator: 2)
!1066 = !DILocation(line: 91, column: 46, scope: !1065)
!1067 = !DILocation(line: 91, column: 56, scope: !1065)
!1068 = !DILocation(line: 91, column: 64, scope: !1065)
!1069 = !DILocation(line: 91, column: 36, scope: !1065)
!1070 = !DILocation(line: 91, column: 71, scope: !1065)
!1071 = !DILocation(line: 91, column: 76, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1057, file: !888, discriminator: 3)
!1073 = !DILocation(line: 91, column: 85, scope: !1072)
!1074 = !DILocation(line: 91, column: 95, scope: !1072)
!1075 = !DILocation(line: 91, column: 103, scope: !1072)
!1076 = !DILocation(line: 91, column: 75, scope: !1072)
!1077 = !DILocation(line: 91, column: 6, scope: !1072)
!1078 = !DILocation(line: 92, column: 148, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1057, file: !888, line: 91, column: 109)
!1080 = !DILocation(line: 92, column: 130, scope: !1079)
!1081 = !DILocation(line: 92, column: 115, scope: !1079)
!1082 = !DILocation(line: 92, column: 26, scope: !1079)
!1083 = !DILocation(line: 92, column: 101, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1079, file: !888, discriminator: 1)
!1085 = !DILocation(line: 92, column: 101, scope: !1079)
!1086 = !DILocation(line: 92, column: 76, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1079, file: !888, discriminator: 2)
!1088 = !DILocation(line: 92, column: 60, scope: !1079)
!1089 = !DILocation(line: 92, column: 59, scope: !1079)
!1090 = !DILocation(line: 92, column: 34, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1079, file: !888, discriminator: 3)
!1092 = !DILocation(line: 92, column: 14, scope: !1079)
!1093 = !DILocation(line: 92, column: 11, scope: !1079)
!1094 = !DILocation(line: 93, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1079, file: !888, line: 93, column: 7)
!1096 = !DILocation(line: 93, column: 15, scope: !1095)
!1097 = !DILocation(line: 93, column: 22, scope: !1095)
!1098 = !DILocation(line: 93, column: 160, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1095, file: !888, discriminator: 1)
!1100 = !DILocation(line: 93, column: 142, scope: !1099)
!1101 = !DILocation(line: 93, column: 127, scope: !1099)
!1102 = !DILocation(line: 93, column: 39, scope: !1099)
!1103 = !DILocation(line: 93, column: 113, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1099, file: !888, discriminator: 2)
!1105 = !DILocation(line: 93, column: 113, scope: !1099)
!1106 = !DILocation(line: 93, column: 88, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1099, file: !888, discriminator: 3)
!1108 = !DILocation(line: 93, column: 72, scope: !1099)
!1109 = !DILocation(line: 93, column: 71, scope: !1099)
!1110 = !DILocation(line: 93, column: 46, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1099, file: !888, discriminator: 4)
!1112 = !DILocation(line: 93, column: 26, scope: !1099)
!1113 = !DILocation(line: 93, column: 35, scope: !1099)
!1114 = !DILocation(line: 93, column: 7, scope: !1099)
!1115 = !DILocation(line: 94, column: 54, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1095, file: !888, line: 93, column: 63)
!1117 = !DILocation(line: 94, column: 65, scope: !1116)
!1118 = !DILocation(line: 94, column: 21, scope: !1116)
!1119 = !DILocation(line: 95, column: 6, scope: !1116)
!1120 = !DILocation(line: 95, column: 14, scope: !1116)
!1121 = !DILocation(line: 95, column: 19, scope: !1116)
!1122 = !DILocation(line: 94, column: 4, scope: !1116)
!1123 = !DILocation(line: 96, column: 3, scope: !1116)
!1124 = !DILocation(line: 97, column: 2, scope: !1079)
!1125 = !DILocation(line: 98, column: 9, scope: !1036)
!1126 = !DILocation(line: 98, column: 2, scope: !1036)
!1127 = !DILocation(line: 99, column: 1, scope: !1036)
!1128 = distinct !DISubprogram(name: "fe_irc_channels_deinit", scope: !888, file: !888, line: 107, type: !357, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !891)
!1129 = !DILocation(line: 109, column: 2, scope: !1128)
!1130 = !DILocation(line: 110, column: 2, scope: !1128)
!1131 = !DILocation(line: 111, column: 1, scope: !1128)
