; ModuleID = './line306-fe-irc-server.o.i'
source_filename = "./line306-fe-irc-server.o.i"
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
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.IRC_SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable*, i32, i32, i32 }
%struct._IRC_CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"server add fill\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"server list\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"server add\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"-ircnet -network -cmdspeed -cmdmax -querychans\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ircnet\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cmdspeed\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cmdmax\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"querychans\00", align 1
@setupservers = external global %struct._GSList*, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"SERVER SETUP\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"(pass), \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"autoconnect, \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"noproxy, \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"tls, \00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"tls_cert: %s, \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"tls_pkey: %s, \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tls_verify, \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"tls_cafile: %s, \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"tls_capath: %s, \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"tls_ciphers: %s, \00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"tls_pinned_cert: %s, \00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"tls_pinned_pubkey: %s, \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"cmdmax: %d, \00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"cmdspeed: %d, \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"querychans: %d, \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"host: %s, \00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i8* @get_visible_target(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !955 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !960, metadata !961), !dbg !962
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !963, metadata !961), !dbg !964
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !965, metadata !961), !dbg !966
  %7 = load i8*, i8** %5, align 8, !dbg !967
  %8 = load i8, i8* %7, align 1, !dbg !969
  %9 = sext i8 %8 to i32, !dbg !969
  %10 = icmp eq i32 %9, 33, !dbg !970
  br i1 %10, label %11, label %31, !dbg !971

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !972
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !972
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !974
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !975
  %16 = load i8*, i8** %5, align 8, !dbg !976
  %17 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %15, i8* %16), !dbg !977
  %18 = bitcast %struct._CHANNEL_REC* %17 to i8*, !dbg !979
  %19 = call i8* @module_check_cast_module(i8* %18, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)), !dbg !980
  %20 = bitcast i8* %19 to %struct._CHANNEL_REC*, !dbg !982
  %21 = bitcast %struct._CHANNEL_REC* %20 to i8*, !dbg !983
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !984
  %23 = bitcast i8* %22 to %struct._IRC_CHANNEL_REC*, !dbg !986
  store %struct._IRC_CHANNEL_REC* %23, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !987
  %24 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !988
  %25 = icmp ne %struct._IRC_CHANNEL_REC* %24, null, !dbg !990
  br i1 %25, label %26, label %30, !dbg !991

; <label>:26:                                     ; preds = %11
  %27 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !992
  %28 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %27, i32 0, i32 5, !dbg !993
  %29 = load i8*, i8** %28, align 8, !dbg !993
  store i8* %29, i8** %3, align 8, !dbg !994
  br label %33, !dbg !994

; <label>:30:                                     ; preds = %11
  br label %31, !dbg !995

; <label>:31:                                     ; preds = %30, %2
  %32 = load i8*, i8** %5, align 8, !dbg !996
  store i8* %32, i8** %3, align 8, !dbg !997
  br label %33, !dbg !997

; <label>:33:                                     ; preds = %31, %26
  %34 = load i8*, i8** %3, align 8, !dbg !998
  ret i8* %34, !dbg !998
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_irc_server_init() #0 !dbg !999 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._GHashTable*)* @sig_server_add_fill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1000
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1001
  call void @command_set_options_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0)), !dbg !1002
  ret void, !dbg !1003
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_server_add_fill(%struct.IRC_SERVER_SETUP_REC*, %struct._GHashTable*) #0 !dbg !1004 {
  %3 = alloca %struct.IRC_SERVER_SETUP_REC*, align 8
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca %struct._IRC_CHATNET_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct.IRC_SERVER_SETUP_REC* %0, %struct.IRC_SERVER_SETUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.IRC_SERVER_SETUP_REC** %3, metadata !1007, metadata !961), !dbg !1008
  store %struct._GHashTable* %1, %struct._GHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !1009, metadata !961), !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %5, metadata !1011, metadata !961), !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1013, metadata !961), !dbg !1014
  %7 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1015
  %8 = call i8* @g_hash_table_lookup(%struct._GHashTable* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)), !dbg !1016
  store i8* %8, i8** %6, align 8, !dbg !1017
  %9 = load i8*, i8** %6, align 8, !dbg !1018
  %10 = icmp ne i8* %9, null, !dbg !1018
  br i1 %10, label %14, label %11, !dbg !1020

; <label>:11:                                     ; preds = %2
  %12 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1021
  %13 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !1022
  store i8* %13, i8** %6, align 8, !dbg !1023
  br label %14, !dbg !1024

; <label>:14:                                     ; preds = %11, %2
  %15 = load i8*, i8** %6, align 8, !dbg !1025
  %16 = icmp ne i8* %15, null, !dbg !1027
  br i1 %16, label %17, label %59, !dbg !1028

; <label>:17:                                     ; preds = %14
  br label %18, !dbg !1029, !llvm.loop !1031

; <label>:18:                                     ; preds = %17
  %19 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1032
  %20 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %19, i32 0, i32 2, !dbg !1036
  %21 = load i8*, i8** %20, align 8, !dbg !1036
  %22 = icmp ne i8* %21, null, !dbg !1032
  br i1 %22, label %23, label %29, !dbg !1032

; <label>:23:                                     ; preds = %18
  %24 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1037
  %25 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %24, i32 0, i32 2, !dbg !1040
  %26 = load i8*, i8** %25, align 8, !dbg !1040
  call void @g_free(i8* %26), !dbg !1041
  %27 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1042
  %28 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %27, i32 0, i32 2, !dbg !1043
  store i8* null, i8** %28, align 8, !dbg !1044
  br label %29, !dbg !1045

; <label>:29:                                     ; preds = %23, %18
  br label %30, !dbg !1046

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %6, align 8, !dbg !1048
  %32 = load i8, i8* %31, align 1, !dbg !1050
  %33 = sext i8 %32 to i32, !dbg !1050
  %34 = icmp ne i32 %33, 0, !dbg !1051
  br i1 %34, label %35, label %58, !dbg !1052

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %6, align 8, !dbg !1053
  %37 = call %struct._CHATNET_REC* @chatnet_find(i8* %36), !dbg !1055
  %38 = bitcast %struct._CHATNET_REC* %37 to i8*, !dbg !1055
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)), !dbg !1056
  %40 = bitcast i8* %39 to %struct._CHATNET_REC*, !dbg !1058
  %41 = bitcast %struct._CHATNET_REC* %40 to i8*, !dbg !1059
  %42 = call i8* @chat_protocol_check_cast(i8* %41, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !1060
  %43 = bitcast i8* %42 to %struct._IRC_CHATNET_REC*, !dbg !1062
  store %struct._IRC_CHATNET_REC* %43, %struct._IRC_CHATNET_REC** %5, align 8, !dbg !1063
  %44 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %5, align 8, !dbg !1064
  %45 = icmp ne %struct._IRC_CHATNET_REC* %44, null, !dbg !1065
  br i1 %45, label %46, label %51, !dbg !1064

; <label>:46:                                     ; preds = %35
  %47 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %5, align 8, !dbg !1066
  %48 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %47, i32 0, i32 2, !dbg !1067
  %49 = load i8*, i8** %48, align 8, !dbg !1067
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1068
  br label %54, !dbg !1069

; <label>:51:                                     ; preds = %35
  %52 = load i8*, i8** %6, align 8, !dbg !1070
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !1071
  br label %54, !dbg !1072

; <label>:54:                                     ; preds = %51, %46
  %55 = phi i8* [ %50, %46 ], [ %53, %51 ], !dbg !1073
  %56 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1075
  %57 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %56, i32 0, i32 2, !dbg !1076
  store i8* %55, i8** %57, align 8, !dbg !1077
  br label %58, !dbg !1078

; <label>:58:                                     ; preds = %54, %30
  br label %59, !dbg !1079

; <label>:59:                                     ; preds = %58, %14
  %60 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1080
  %61 = call i8* @g_hash_table_lookup(%struct._GHashTable* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)), !dbg !1081
  store i8* %61, i8** %6, align 8, !dbg !1082
  %62 = load i8*, i8** %6, align 8, !dbg !1083
  %63 = icmp ne i8* %62, null, !dbg !1085
  br i1 %63, label %64, label %74, !dbg !1086

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %6, align 8, !dbg !1087
  %66 = load i8, i8* %65, align 1, !dbg !1089
  %67 = sext i8 %66 to i32, !dbg !1089
  %68 = icmp ne i32 %67, 0, !dbg !1090
  br i1 %68, label %69, label %74, !dbg !1091

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %6, align 8, !dbg !1092
  %71 = call i32 @atoi(i8* %70) #4, !dbg !1094
  %72 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1095
  %73 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %72, i32 0, i32 24, !dbg !1096
  store i32 %71, i32* %73, align 4, !dbg !1097
  br label %74, !dbg !1095

; <label>:74:                                     ; preds = %69, %64, %59
  %75 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1098
  %76 = call i8* @g_hash_table_lookup(%struct._GHashTable* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)), !dbg !1099
  store i8* %76, i8** %6, align 8, !dbg !1100
  %77 = load i8*, i8** %6, align 8, !dbg !1101
  %78 = icmp ne i8* %77, null, !dbg !1103
  br i1 %78, label %79, label %89, !dbg !1104

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %6, align 8, !dbg !1105
  %81 = load i8, i8* %80, align 1, !dbg !1107
  %82 = sext i8 %81 to i32, !dbg !1107
  %83 = icmp ne i32 %82, 0, !dbg !1108
  br i1 %83, label %84, label %89, !dbg !1109

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %6, align 8, !dbg !1110
  %86 = call i32 @atoi(i8* %85) #4, !dbg !1112
  %87 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1113
  %88 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %87, i32 0, i32 23, !dbg !1114
  store i32 %86, i32* %88, align 8, !dbg !1115
  br label %89, !dbg !1113

; <label>:89:                                     ; preds = %84, %79, %74
  %90 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1116
  %91 = call i8* @g_hash_table_lookup(%struct._GHashTable* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0)), !dbg !1117
  store i8* %91, i8** %6, align 8, !dbg !1118
  %92 = load i8*, i8** %6, align 8, !dbg !1119
  %93 = icmp ne i8* %92, null, !dbg !1121
  br i1 %93, label %94, label %104, !dbg !1122

; <label>:94:                                     ; preds = %89
  %95 = load i8*, i8** %6, align 8, !dbg !1123
  %96 = load i8, i8* %95, align 1, !dbg !1125
  %97 = sext i8 %96 to i32, !dbg !1125
  %98 = icmp ne i32 %97, 0, !dbg !1126
  br i1 %98, label %99, label %104, !dbg !1127

; <label>:99:                                     ; preds = %94
  %100 = load i8*, i8** %6, align 8, !dbg !1128
  %101 = call i32 @atoi(i8* %100) #4, !dbg !1130
  %102 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1131
  %103 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %102, i32 0, i32 25, !dbg !1132
  store i32 %101, i32* %103, align 8, !dbg !1133
  br label %104, !dbg !1131

; <label>:104:                                    ; preds = %99, %94, %89
  ret void, !dbg !1134
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_server_list(i8*) #0 !dbg !1135 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GString*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.IRC_SERVER_SETUP_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1138, metadata !961), !dbg !1139
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1140, metadata !961), !dbg !1141
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1142, metadata !961), !dbg !1143
  %6 = call %struct._GString* @g_string_new(i8* null), !dbg !1144
  store %struct._GString* %6, %struct._GString** %3, align 8, !dbg !1145
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 16), !dbg !1146
  %7 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1147
  store %struct._GSList* %7, %struct._GSList** %4, align 8, !dbg !1149
  br label %8, !dbg !1150

; <label>:8:                                      ; preds = %230, %1
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1151
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1154
  br i1 %10, label %11, label %234, !dbg !1155

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.IRC_SERVER_SETUP_REC** %5, metadata !1156, metadata !961), !dbg !1158
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1159
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !1160
  %14 = load i8*, i8** %13, align 8, !dbg !1160
  %15 = bitcast i8* %14 to %struct.IRC_SERVER_SETUP_REC*, !dbg !1159
  store %struct.IRC_SERVER_SETUP_REC* %15, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1158
  %16 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1161
  %17 = bitcast %struct.IRC_SERVER_SETUP_REC* %16 to i8*, !dbg !1161
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)), !dbg !1163
  %19 = bitcast i8* %18 to %struct._SERVER_SETUP_REC*, !dbg !1164
  %20 = bitcast %struct._SERVER_SETUP_REC* %19 to i8*, !dbg !1165
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)), !dbg !1166
  %22 = bitcast i8* %21 to %struct.IRC_SERVER_SETUP_REC*, !dbg !1168
  %23 = icmp ne %struct.IRC_SERVER_SETUP_REC* %22, null, !dbg !1168
  br i1 %23, label %24, label %25, !dbg !1169

; <label>:24:                                     ; preds = %11
  br i1 false, label %26, label %27, !dbg !1170

; <label>:25:                                     ; preds = %11
  br i1 false, label %27, label %26, !dbg !1172

; <label>:26:                                     ; preds = %25, %24
  br label %230, !dbg !1174

; <label>:27:                                     ; preds = %25, %24
  %28 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1175
  %29 = call %struct._GString* @g_string_truncate(%struct._GString* %28, i64 0), !dbg !1176
  %30 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1177
  %31 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %30, i32 0, i32 6, !dbg !1179
  %32 = load i8*, i8** %31, align 8, !dbg !1179
  %33 = icmp ne i8* %32, null, !dbg !1180
  br i1 %33, label %34, label %37, !dbg !1181

; <label>:34:                                     ; preds = %27
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1182
  %36 = call %struct._GString* @g_string_append(%struct._GString* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1183
  br label %37, !dbg !1183

; <label>:37:                                     ; preds = %34, %27
  %38 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1184
  %39 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %38, i32 0, i32 21, !dbg !1186
  %40 = load i8, i8* %39, align 8, !dbg !1186
  %41 = and i8 %40, 1, !dbg !1186
  %42 = zext i8 %41 to i32, !dbg !1186
  %43 = icmp ne i32 %42, 0, !dbg !1184
  br i1 %43, label %44, label %47, !dbg !1187

; <label>:44:                                     ; preds = %37
  %45 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1188
  %46 = call %struct._GString* @g_string_append(%struct._GString* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)), !dbg !1189
  br label %47, !dbg !1189

; <label>:47:                                     ; preds = %44, %37
  %48 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1190
  %49 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %48, i32 0, i32 21, !dbg !1192
  %50 = load i8, i8* %49, align 8, !dbg !1192
  %51 = lshr i8 %50, 1, !dbg !1192
  %52 = and i8 %51, 1, !dbg !1192
  %53 = zext i8 %52 to i32, !dbg !1192
  %54 = icmp ne i32 %53, 0, !dbg !1190
  br i1 %54, label %55, label %58, !dbg !1193

; <label>:55:                                     ; preds = %47
  %56 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1194
  %57 = call %struct._GString* @g_string_append(%struct._GString* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)), !dbg !1195
  br label %58, !dbg !1195

; <label>:58:                                     ; preds = %55, %47
  %59 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1196
  %60 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %59, i32 0, i32 21, !dbg !1198
  %61 = load i8, i8* %60, align 8, !dbg !1198
  %62 = lshr i8 %61, 5, !dbg !1198
  %63 = and i8 %62, 1, !dbg !1198
  %64 = zext i8 %63 to i32, !dbg !1198
  %65 = icmp ne i32 %64, 0, !dbg !1196
  br i1 %65, label %66, label %157, !dbg !1199

; <label>:66:                                     ; preds = %58
  %67 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1200
  %68 = call %struct._GString* @g_string_append(%struct._GString* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)), !dbg !1202
  %69 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1203
  %70 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %69, i32 0, i32 9, !dbg !1205
  %71 = load i8*, i8** %70, align 8, !dbg !1205
  %72 = icmp ne i8* %71, null, !dbg !1203
  br i1 %72, label %73, label %95, !dbg !1206

; <label>:73:                                     ; preds = %66
  %74 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1207
  %75 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1209
  %76 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %75, i32 0, i32 9, !dbg !1210
  %77 = load i8*, i8** %76, align 8, !dbg !1210
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* %77), !dbg !1211
  %78 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1212
  %79 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %78, i32 0, i32 10, !dbg !1214
  %80 = load i8*, i8** %79, align 8, !dbg !1214
  %81 = icmp ne i8* %80, null, !dbg !1212
  br i1 %81, label %82, label %87, !dbg !1215

; <label>:82:                                     ; preds = %73
  %83 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1216
  %84 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1217
  %85 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %84, i32 0, i32 10, !dbg !1218
  %86 = load i8*, i8** %85, align 8, !dbg !1218
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* %86), !dbg !1219
  br label %87, !dbg !1219

; <label>:87:                                     ; preds = %82, %73
  %88 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1220
  %89 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %88, i32 0, i32 11, !dbg !1222
  %90 = load i8*, i8** %89, align 8, !dbg !1222
  %91 = icmp ne i8* %90, null, !dbg !1220
  br i1 %91, label %92, label %94, !dbg !1223

; <label>:92:                                     ; preds = %87
  %93 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1224
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1225
  br label %94, !dbg !1225

; <label>:94:                                     ; preds = %92, %87
  br label %95, !dbg !1226

; <label>:95:                                     ; preds = %94, %66
  %96 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1227
  %97 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %96, i32 0, i32 21, !dbg !1229
  %98 = load i8, i8* %97, align 8, !dbg !1229
  %99 = lshr i8 %98, 6, !dbg !1229
  %100 = and i8 %99, 1, !dbg !1229
  %101 = zext i8 %100 to i32, !dbg !1229
  %102 = icmp ne i32 %101, 0, !dbg !1227
  br i1 %102, label %103, label %106, !dbg !1230

; <label>:103:                                    ; preds = %95
  %104 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1231
  %105 = call %struct._GString* @g_string_append(%struct._GString* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1232
  br label %106, !dbg !1232

; <label>:106:                                    ; preds = %103, %95
  %107 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1233
  %108 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %107, i32 0, i32 12, !dbg !1235
  %109 = load i8*, i8** %108, align 8, !dbg !1235
  %110 = icmp ne i8* %109, null, !dbg !1233
  br i1 %110, label %111, label %116, !dbg !1236

; <label>:111:                                    ; preds = %106
  %112 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1237
  %113 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1238
  %114 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %113, i32 0, i32 12, !dbg !1239
  %115 = load i8*, i8** %114, align 8, !dbg !1239
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %115), !dbg !1240
  br label %116, !dbg !1240

; <label>:116:                                    ; preds = %111, %106
  %117 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1241
  %118 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %117, i32 0, i32 13, !dbg !1243
  %119 = load i8*, i8** %118, align 8, !dbg !1243
  %120 = icmp ne i8* %119, null, !dbg !1241
  br i1 %120, label %121, label %126, !dbg !1244

; <label>:121:                                    ; preds = %116
  %122 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1245
  %123 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1246
  %124 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %123, i32 0, i32 13, !dbg !1247
  %125 = load i8*, i8** %124, align 8, !dbg !1247
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* %125), !dbg !1248
  br label %126, !dbg !1248

; <label>:126:                                    ; preds = %121, %116
  %127 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1249
  %128 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %127, i32 0, i32 14, !dbg !1251
  %129 = load i8*, i8** %128, align 8, !dbg !1251
  %130 = icmp ne i8* %129, null, !dbg !1249
  br i1 %130, label %131, label %136, !dbg !1252

; <label>:131:                                    ; preds = %126
  %132 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1253
  %133 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1254
  %134 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %133, i32 0, i32 14, !dbg !1255
  %135 = load i8*, i8** %134, align 8, !dbg !1255
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* %135), !dbg !1256
  br label %136, !dbg !1256

; <label>:136:                                    ; preds = %131, %126
  %137 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1257
  %138 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %137, i32 0, i32 15, !dbg !1259
  %139 = load i8*, i8** %138, align 8, !dbg !1259
  %140 = icmp ne i8* %139, null, !dbg !1257
  br i1 %140, label %141, label %146, !dbg !1260

; <label>:141:                                    ; preds = %136
  %142 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1261
  %143 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1262
  %144 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %143, i32 0, i32 15, !dbg !1263
  %145 = load i8*, i8** %144, align 8, !dbg !1263
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i8* %145), !dbg !1264
  br label %146, !dbg !1264

; <label>:146:                                    ; preds = %141, %136
  %147 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1265
  %148 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %147, i32 0, i32 16, !dbg !1267
  %149 = load i8*, i8** %148, align 8, !dbg !1267
  %150 = icmp ne i8* %149, null, !dbg !1265
  br i1 %150, label %151, label %156, !dbg !1268

; <label>:151:                                    ; preds = %146
  %152 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1269
  %153 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1270
  %154 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %153, i32 0, i32 16, !dbg !1271
  %155 = load i8*, i8** %154, align 8, !dbg !1271
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i8* %155), !dbg !1272
  br label %156, !dbg !1272

; <label>:156:                                    ; preds = %151, %146
  br label %157, !dbg !1273

; <label>:157:                                    ; preds = %156, %58
  %158 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1274
  %159 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %158, i32 0, i32 23, !dbg !1276
  %160 = load i32, i32* %159, align 8, !dbg !1276
  %161 = icmp sgt i32 %160, 0, !dbg !1277
  br i1 %161, label %162, label %167, !dbg !1278

; <label>:162:                                    ; preds = %157
  %163 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1279
  %164 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1280
  %165 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %164, i32 0, i32 23, !dbg !1281
  %166 = load i32, i32* %165, align 8, !dbg !1281
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 %166), !dbg !1282
  br label %167, !dbg !1282

; <label>:167:                                    ; preds = %162, %157
  %168 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1283
  %169 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %168, i32 0, i32 24, !dbg !1285
  %170 = load i32, i32* %169, align 4, !dbg !1285
  %171 = icmp sgt i32 %170, 0, !dbg !1286
  br i1 %171, label %172, label %177, !dbg !1287

; <label>:172:                                    ; preds = %167
  %173 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1288
  %174 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1289
  %175 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %174, i32 0, i32 24, !dbg !1290
  %176 = load i32, i32* %175, align 4, !dbg !1290
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %176), !dbg !1291
  br label %177, !dbg !1291

; <label>:177:                                    ; preds = %172, %167
  %178 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1292
  %179 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %178, i32 0, i32 25, !dbg !1294
  %180 = load i32, i32* %179, align 8, !dbg !1294
  %181 = icmp sgt i32 %180, 0, !dbg !1295
  br i1 %181, label %182, label %187, !dbg !1296

; <label>:182:                                    ; preds = %177
  %183 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1297
  %184 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1298
  %185 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %184, i32 0, i32 25, !dbg !1299
  %186 = load i32, i32* %185, align 8, !dbg !1299
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 %186), !dbg !1300
  br label %187, !dbg !1300

; <label>:187:                                    ; preds = %182, %177
  %188 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1301
  %189 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %188, i32 0, i32 17, !dbg !1303
  %190 = load i8*, i8** %189, align 8, !dbg !1303
  %191 = icmp ne i8* %190, null, !dbg !1304
  br i1 %191, label %192, label %197, !dbg !1305

; <label>:192:                                    ; preds = %187
  %193 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1306
  %194 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1307
  %195 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %194, i32 0, i32 17, !dbg !1308
  %196 = load i8*, i8** %195, align 8, !dbg !1308
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* %196), !dbg !1309
  br label %197, !dbg !1309

; <label>:197:                                    ; preds = %192, %187
  %198 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1310
  %199 = getelementptr inbounds %struct._GString, %struct._GString* %198, i32 0, i32 1, !dbg !1312
  %200 = load i64, i64* %199, align 8, !dbg !1312
  %201 = icmp ugt i64 %200, 1, !dbg !1313
  br i1 %201, label %202, label %209, !dbg !1314

; <label>:202:                                    ; preds = %197
  %203 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1315
  %204 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1317
  %205 = getelementptr inbounds %struct._GString, %struct._GString* %204, i32 0, i32 1, !dbg !1318
  %206 = load i64, i64* %205, align 8, !dbg !1318
  %207 = sub i64 %206, 2, !dbg !1319
  %208 = call %struct._GString* @g_string_truncate(%struct._GString* %203, i64 %207), !dbg !1320
  br label %209, !dbg !1320

; <label>:209:                                    ; preds = %202, %197
  %210 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1321
  %211 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %210, i32 0, i32 4, !dbg !1322
  %212 = load i8*, i8** %211, align 8, !dbg !1322
  %213 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1323
  %214 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %213, i32 0, i32 5, !dbg !1324
  %215 = load i32, i32* %214, align 8, !dbg !1324
  %216 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1325
  %217 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %216, i32 0, i32 2, !dbg !1326
  %218 = load i8*, i8** %217, align 8, !dbg !1326
  %219 = icmp eq i8* %218, null, !dbg !1327
  br i1 %219, label %220, label %221, !dbg !1325

; <label>:220:                                    ; preds = %209
  br label %225, !dbg !1328

; <label>:221:                                    ; preds = %209
  %222 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %5, align 8, !dbg !1330
  %223 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %222, i32 0, i32 2, !dbg !1331
  %224 = load i8*, i8** %223, align 8, !dbg !1331
  br label %225, !dbg !1332

; <label>:225:                                    ; preds = %221, %220
  %226 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %220 ], [ %224, %221 ], !dbg !1333
  %227 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1335
  %228 = getelementptr inbounds %struct._GString, %struct._GString* %227, i32 0, i32 0, !dbg !1336
  %229 = load i8*, i8** %228, align 8, !dbg !1336
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 17, i8* %212, i32 %215, i8* %226, i8* %229), !dbg !1337
  br label %230, !dbg !1338

; <label>:230:                                    ; preds = %225, %26
  %231 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1339
  %232 = getelementptr inbounds %struct._GSList, %struct._GSList* %231, i32 0, i32 1, !dbg !1341
  %233 = load %struct._GSList*, %struct._GSList** %232, align 8, !dbg !1341
  store %struct._GSList* %233, %struct._GSList** %4, align 8, !dbg !1342
  br label %8, !dbg !1343, !llvm.loop !1344

; <label>:234:                                    ; preds = %8
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 18), !dbg !1346
  %235 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1347
  %236 = call i8* @g_string_free(%struct._GString* %235, i32 1), !dbg !1348
  ret void, !dbg !1349
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_irc_server_deinit() #0 !dbg !1350 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._GHashTable*)* @sig_server_add_fill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1351
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1352
  ret void, !dbg !1353
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @g_free(i8*) #2

declare %struct._CHATNET_REC* @chatnet_find(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct._GString* @g_string_new(i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!952, !953}
!llvm.ident = !{!954}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192)
!1 = !DIFile(filename: "line306-fe-irc-server.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!192 = !{!193, !625, !518, !209, !830, !837, !865, !880, !918}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !195, line: 7, baseType: !196)
!195 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !197, line: 15, size: 1600, align: 64, elements: !198)
!197 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!198 = !{!199, !202, !203, !208, !210, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !196, file: !200, line: 3, baseType: !201, size: 32, align: 32)
!200 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!201 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !196, file: !200, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !196, file: !200, line: 5, baseType: !204, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !206, line: 37, baseType: !207)
!206 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !206, line: 37, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !196, file: !200, line: 7, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !196, file: !200, line: 8, baseType: !211, size: 64, align: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !195, line: 6, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !214, line: 42, size: 39168, align: 64, elements: !215)
!214 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = !{!216, !218, !219, !220, !467, !472, !473, !474, !475, !476, !477, !478, !479, !480, !484, !485, !489, !490, !491, !495, !496, !497, !498, !499, !500, !501, !502, !503, !510, !511, !512, !513, !514, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !797, !799}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !217, line: 3, baseType: !201, size: 32, align: 32)
!217 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !213, file: !217, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !213, file: !217, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !213, file: !217, line: 8, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !195, line: 5, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !214, line: 24, size: 2496, align: 64, elements: !224)
!224 = !{!225, !227, !228, !229, !232, !233, !234, !235, !236, !238, !239, !240, !241, !242, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !226, line: 3, baseType: !201, size: 32, align: 32)
!226 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !223, file: !226, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !223, file: !226, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !223, file: !226, line: 9, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !223, file: !226, line: 10, baseType: !201, size: 32, align: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !223, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !223, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !223, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !223, file: !226, line: 13, baseType: !237, size: 16, align: 16, offset: 448)
!237 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !223, file: !226, line: 14, baseType: !230, size: 64, align: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !223, file: !226, line: 15, baseType: !230, size: 64, align: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !223, file: !226, line: 16, baseType: !201, size: 32, align: 32, offset: 640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !223, file: !226, line: 17, baseType: !230, size: 64, align: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !223, file: !226, line: 19, baseType: !243, size: 64, align: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !245, line: 99, baseType: !246)
!245 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !245, line: 99, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !223, file: !226, line: 19, baseType: !243, size: 64, align: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !223, file: !226, line: 21, baseType: !230, size: 64, align: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !223, file: !226, line: 22, baseType: !230, size: 64, align: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !223, file: !226, line: 23, baseType: !230, size: 64, align: 64, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !223, file: !226, line: 24, baseType: !230, size: 64, align: 64, offset: 1088)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !223, file: !226, line: 26, baseType: !230, size: 64, align: 64, offset: 1152)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !223, file: !226, line: 27, baseType: !230, size: 64, align: 64, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !223, file: !226, line: 28, baseType: !230, size: 64, align: 64, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !223, file: !226, line: 29, baseType: !230, size: 64, align: 64, offset: 1344)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !223, file: !226, line: 30, baseType: !230, size: 64, align: 64, offset: 1408)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !223, file: !226, line: 31, baseType: !230, size: 64, align: 64, offset: 1472)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !223, file: !226, line: 32, baseType: !230, size: 64, align: 64, offset: 1536)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !223, file: !226, line: 33, baseType: !230, size: 64, align: 64, offset: 1600)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !223, file: !226, line: 35, baseType: !261, size: 64, align: 64, offset: 1664)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !264)
!264 = !{!265, !268, !412, !413, !418, !419, !420, !421, !422, !431, !432, !433, !437, !438, !439, !440, !441, !442, !443, !444}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !263, file: !4, line: 100, baseType: !266, size: 32, align: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !267, line: 49, baseType: !201)
!267 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!268 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !263, file: !4, line: 101, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !272)
!272 = !{!273, !297, !303, !310, !314, !399, !403, !408}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !271, file: !4, line: 133, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !261, !278, !280, !283, !284}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !267, line: 46, baseType: !231)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !281, line: 66, baseType: !282)
!281 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!282 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !287, line: 42, baseType: !288)
!287 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !287, line: 44, size: 128, align: 64, elements: !289)
!289 = !{!290, !295, !296}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !288, file: !287, line: 46, baseType: !291, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !292, line: 36, baseType: !293)
!292 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !281, line: 45, baseType: !294)
!294 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !288, file: !287, line: 47, baseType: !266, size: 32, align: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !288, file: !287, line: 48, baseType: !278, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !271, file: !4, line: 138, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!277, !261, !301, !280, !283, !284}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !271, file: !4, line: 143, baseType: !304, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!277, !261, !307, !309, !284}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !281, line: 51, baseType: !308)
!308 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !271, file: !4, line: 147, baseType: !311, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!277, !261, !284}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !271, file: !4, line: 149, baseType: !315, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !261, !398}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !321)
!321 = !{!322, !324, !345, !374, !376, !380, !381, !382, !383, !391, !392, !393, !394}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !320, file: !16, line: 174, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !267, line: 77, baseType: !209)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !320, file: !16, line: 175, baseType: !325, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !328)
!328 = !{!329, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !327, file: !16, line: 198, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !323}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !327, file: !16, line: 199, baseType: !330, size: 64, align: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !327, file: !16, line: 200, baseType: !335, size: 64, align: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !323, !318, !338, !344}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !323}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !267, line: 50, baseType: !266)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !320, file: !16, line: 177, baseType: !346, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !350)
!350 = !{!351, !356, !360, !364, !368, !369}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !349, file: !16, line: 216, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!343, !318, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !349, file: !16, line: 218, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!343, !318}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !349, file: !16, line: 219, baseType: !361, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!343, !318, !339, !323}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !349, file: !16, line: 222, baseType: !365, size: 64, align: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !318}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !349, file: !16, line: 226, baseType: !339, size: 64, align: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !349, file: !16, line: 227, baseType: !370, size: 64, align: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !320, file: !16, line: 178, baseType: !375, size: 32, align: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !267, line: 55, baseType: !294)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !320, file: !16, line: 180, baseType: !377, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !320, file: !16, line: 182, baseType: !266, size: 32, align: 32, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !16, line: 183, baseType: !375, size: 32, align: 32, offset: 352)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !320, file: !16, line: 184, baseType: !375, size: 32, align: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !320, file: !16, line: 186, baseType: !384, size: 64, align: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !386, line: 37, baseType: !387)
!386 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !386, line: 39, size: 128, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !387, file: !386, line: 41, baseType: !323, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !386, line: 42, baseType: !384, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !320, file: !16, line: 188, baseType: !318, size: 64, align: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !16, line: 189, baseType: !318, size: 64, align: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !16, line: 191, baseType: !230, size: 64, align: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !320, file: !16, line: 193, baseType: !395, size: 64, align: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !271, file: !4, line: 151, baseType: !400, size: 64, align: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !261}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !271, file: !4, line: 152, baseType: !404, size: 64, align: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!277, !261, !407, !284}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !271, file: !4, line: 155, baseType: !409, size: 64, align: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!407, !261}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !263, file: !4, line: 103, baseType: !278, size: 64, align: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !263, file: !4, line: 104, baseType: !414, size: 64, align: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !415, line: 77, baseType: !416)
!415 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !415, line: 77, flags: DIFlagFwdDecl)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !263, file: !4, line: 105, baseType: !414, size: 64, align: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !263, file: !4, line: 106, baseType: !278, size: 64, align: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !263, file: !4, line: 107, baseType: !375, size: 32, align: 32, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !263, file: !4, line: 109, baseType: !280, size: 64, align: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !263, file: !4, line: 110, baseType: !423, size: 64, align: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !425, line: 39, baseType: !426)
!425 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !425, line: 41, size: 192, align: 64, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !426, file: !425, line: 43, baseType: !278, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !426, file: !425, line: 44, baseType: !280, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !426, file: !425, line: 45, baseType: !280, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !263, file: !4, line: 111, baseType: !423, size: 64, align: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !263, file: !4, line: 112, baseType: !423, size: 64, align: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !263, file: !4, line: 113, baseType: !434, size: 48, align: 8, offset: 704)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 48, align: 8, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 6)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !263, file: !4, line: 117, baseType: !375, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !263, file: !4, line: 118, baseType: !375, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !263, file: !4, line: 119, baseType: !375, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !263, file: !4, line: 120, baseType: !375, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !263, file: !4, line: 121, baseType: !375, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !263, file: !4, line: 122, baseType: !375, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !263, file: !4, line: 124, baseType: !323, size: 64, align: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !263, file: !4, line: 125, baseType: !323, size: 64, align: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !223, file: !226, line: 38, baseType: !294, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !223, file: !226, line: 39, baseType: !294, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !223, file: !226, line: 40, baseType: !294, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !223, file: !226, line: 41, baseType: !294, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !223, file: !226, line: 42, baseType: !294, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !223, file: !226, line: 43, baseType: !294, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !223, file: !226, line: 44, baseType: !294, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !223, file: !226, line: 45, baseType: !294, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !223, file: !226, line: 46, baseType: !230, size: 64, align: 64, offset: 1792)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !223, file: !226, line: 47, baseType: !230, size: 64, align: 64, offset: 1856)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !223, file: !214, line: 27, baseType: !230, size: 64, align: 64, offset: 1920)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !223, file: !214, line: 28, baseType: !230, size: 64, align: 64, offset: 1984)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !223, file: !214, line: 30, baseType: !201, size: 32, align: 32, offset: 2048)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !223, file: !214, line: 31, baseType: !230, size: 64, align: 64, offset: 2112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !223, file: !214, line: 32, baseType: !230, size: 64, align: 64, offset: 2176)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !223, file: !214, line: 34, baseType: !201, size: 32, align: 32, offset: 2240)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !223, file: !214, line: 35, baseType: !201, size: 32, align: 32, offset: 2272)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !223, file: !214, line: 36, baseType: !201, size: 32, align: 32, offset: 2304)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !223, file: !214, line: 38, baseType: !201, size: 32, align: 32, offset: 2336)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !223, file: !214, line: 38, baseType: !201, size: 32, align: 32, offset: 2368)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !223, file: !214, line: 38, baseType: !201, size: 32, align: 32, offset: 2400)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !223, file: !214, line: 38, baseType: !201, size: 32, align: 32, offset: 2432)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !213, file: !217, line: 9, baseType: !468, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !469, line: 75, baseType: !470)
!469 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !471, line: 139, baseType: !308)
!471 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !213, file: !217, line: 10, baseType: !468, size: 64, align: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !213, file: !217, line: 12, baseType: !230, size: 64, align: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !213, file: !217, line: 13, baseType: !230, size: 64, align: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !213, file: !217, line: 15, baseType: !294, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !213, file: !217, line: 16, baseType: !294, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !213, file: !217, line: 17, baseType: !294, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !213, file: !217, line: 18, baseType: !294, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !213, file: !217, line: 19, baseType: !294, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !213, file: !217, line: 21, baseType: !481, size: 64, align: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !245, line: 102, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !245, line: 102, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !213, file: !217, line: 22, baseType: !201, size: 32, align: 32, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !213, file: !217, line: 25, baseType: !486, size: 128, align: 64, offset: 640)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, align: 64, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 2)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !213, file: !217, line: 26, baseType: !201, size: 32, align: 32, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !213, file: !217, line: 27, baseType: !201, size: 32, align: 32, offset: 800)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !213, file: !217, line: 29, baseType: !492, size: 64, align: 64, offset: 832)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !245, line: 103, baseType: !494)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !245, line: 103, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !213, file: !217, line: 30, baseType: !204, size: 64, align: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !213, file: !217, line: 32, baseType: !230, size: 64, align: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !213, file: !217, line: 33, baseType: !230, size: 64, align: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !213, file: !217, line: 34, baseType: !230, size: 64, align: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !213, file: !217, line: 35, baseType: !294, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !213, file: !217, line: 36, baseType: !294, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !213, file: !217, line: 37, baseType: !294, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !213, file: !217, line: 38, baseType: !294, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !213, file: !217, line: 40, baseType: !504, size: 128, align: 64, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !267, line: 504, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !267, line: 506, size: 128, align: 64, elements: !506)
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !505, file: !267, line: 508, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !267, line: 48, baseType: !308)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !505, file: !267, line: 509, baseType: !508, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !213, file: !217, line: 41, baseType: !468, size: 64, align: 64, offset: 1344)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !213, file: !217, line: 42, baseType: !201, size: 32, align: 32, offset: 1408)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !213, file: !217, line: 44, baseType: !384, size: 64, align: 64, offset: 1472)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !213, file: !217, line: 45, baseType: !384, size: 64, align: 64, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !213, file: !217, line: 53, baseType: !515, size: 64, align: 64, offset: 1600)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518, !606, !201}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !245, line: 107, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !521, line: 30, size: 2240, align: 64, elements: !522)
!521 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!522 = !{!523, !524, !525, !526, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !602, !608, !612, !616, !621, !713, !720, !724}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !217, line: 3, baseType: !201, size: 32, align: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !520, file: !217, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !520, file: !217, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !520, file: !217, line: 8, baseType: !527, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !245, line: 113, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !521, line: 25, size: 1920, align: 64, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !226, line: 3, baseType: !201, size: 32, align: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !529, file: !226, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !529, file: !226, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !529, file: !226, line: 9, baseType: !230, size: 64, align: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !529, file: !226, line: 10, baseType: !201, size: 32, align: 32, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !529, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !529, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !529, file: !226, line: 11, baseType: !230, size: 64, align: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !529, file: !226, line: 13, baseType: !237, size: 16, align: 16, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !529, file: !226, line: 14, baseType: !230, size: 64, align: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !529, file: !226, line: 15, baseType: !230, size: 64, align: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !529, file: !226, line: 16, baseType: !201, size: 32, align: 32, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !529, file: !226, line: 17, baseType: !230, size: 64, align: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !529, file: !226, line: 19, baseType: !243, size: 64, align: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !529, file: !226, line: 19, baseType: !243, size: 64, align: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !529, file: !226, line: 21, baseType: !230, size: 64, align: 64, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !529, file: !226, line: 22, baseType: !230, size: 64, align: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !529, file: !226, line: 23, baseType: !230, size: 64, align: 64, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !529, file: !226, line: 24, baseType: !230, size: 64, align: 64, offset: 1088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !529, file: !226, line: 26, baseType: !230, size: 64, align: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !529, file: !226, line: 27, baseType: !230, size: 64, align: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !529, file: !226, line: 28, baseType: !230, size: 64, align: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !529, file: !226, line: 29, baseType: !230, size: 64, align: 64, offset: 1344)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !529, file: !226, line: 30, baseType: !230, size: 64, align: 64, offset: 1408)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !529, file: !226, line: 31, baseType: !230, size: 64, align: 64, offset: 1472)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !529, file: !226, line: 32, baseType: !230, size: 64, align: 64, offset: 1536)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !529, file: !226, line: 33, baseType: !230, size: 64, align: 64, offset: 1600)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !529, file: !226, line: 35, baseType: !261, size: 64, align: 64, offset: 1664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !529, file: !226, line: 38, baseType: !294, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !529, file: !226, line: 39, baseType: !294, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !529, file: !226, line: 40, baseType: !294, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !529, file: !226, line: 41, baseType: !294, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !529, file: !226, line: 42, baseType: !294, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !529, file: !226, line: 43, baseType: !294, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !529, file: !226, line: 44, baseType: !294, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !529, file: !226, line: 45, baseType: !294, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !529, file: !226, line: 46, baseType: !230, size: 64, align: 64, offset: 1792)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !529, file: !226, line: 47, baseType: !230, size: 64, align: 64, offset: 1856)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !520, file: !217, line: 9, baseType: !468, size: 64, align: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !520, file: !217, line: 10, baseType: !468, size: 64, align: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !520, file: !217, line: 12, baseType: !230, size: 64, align: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !520, file: !217, line: 13, baseType: !230, size: 64, align: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !520, file: !217, line: 15, baseType: !294, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !520, file: !217, line: 16, baseType: !294, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !520, file: !217, line: 17, baseType: !294, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !520, file: !217, line: 18, baseType: !294, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !520, file: !217, line: 19, baseType: !294, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !520, file: !217, line: 21, baseType: !481, size: 64, align: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !520, file: !217, line: 22, baseType: !201, size: 32, align: 32, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !520, file: !217, line: 25, baseType: !486, size: 128, align: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !520, file: !217, line: 26, baseType: !201, size: 32, align: 32, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !520, file: !217, line: 27, baseType: !201, size: 32, align: 32, offset: 800)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !520, file: !217, line: 29, baseType: !492, size: 64, align: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !520, file: !217, line: 30, baseType: !204, size: 64, align: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !520, file: !217, line: 32, baseType: !230, size: 64, align: 64, offset: 960)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !520, file: !217, line: 33, baseType: !230, size: 64, align: 64, offset: 1024)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !520, file: !217, line: 34, baseType: !230, size: 64, align: 64, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !520, file: !217, line: 35, baseType: !294, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !520, file: !217, line: 36, baseType: !294, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !520, file: !217, line: 37, baseType: !294, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !520, file: !217, line: 38, baseType: !294, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !520, file: !217, line: 40, baseType: !504, size: 128, align: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !520, file: !217, line: 41, baseType: !468, size: 64, align: 64, offset: 1344)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !520, file: !217, line: 42, baseType: !201, size: 32, align: 32, offset: 1408)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !520, file: !217, line: 44, baseType: !384, size: 64, align: 64, offset: 1472)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !520, file: !217, line: 45, baseType: !384, size: 64, align: 64, offset: 1536)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !520, file: !217, line: 53, baseType: !515, size: 64, align: 64, offset: 1600)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !520, file: !217, line: 55, baseType: !599, size: 64, align: 64, offset: 1664)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!201, !518, !231}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !520, file: !217, line: 57, baseType: !603, size: 64, align: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!201, !518, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !520, file: !217, line: 60, baseType: !609, size: 64, align: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!606, !518}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !520, file: !217, line: 62, baseType: !613, size: 64, align: 64, offset: 1856)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !518, !606, !606, !201}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !520, file: !217, line: 65, baseType: !617, size: 64, align: 64, offset: 1920)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !518, !606, !606}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !520, file: !217, line: 69, baseType: !622, size: 64, align: 64, offset: 1984)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !518, !606}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !245, line: 109, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !628, line: 15, size: 1408, align: 64, elements: !629)
!628 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !664, !665, !667, !668, !669, !670, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !200, line: 3, baseType: !201, size: 32, align: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !627, file: !200, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !627, file: !200, line: 5, baseType: !204, size: 64, align: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !627, file: !200, line: 7, baseType: !209, size: 64, align: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !627, file: !200, line: 8, baseType: !518, size: 64, align: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !627, file: !200, line: 9, baseType: !230, size: 64, align: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !627, file: !200, line: 10, baseType: !230, size: 64, align: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !627, file: !200, line: 11, baseType: !468, size: 64, align: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !627, file: !200, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !627, file: !200, line: 13, baseType: !230, size: 64, align: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !627, file: !200, line: 15, baseType: !641, size: 64, align: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !245, line: 108, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !647, line: 5, size: 704, align: 64, elements: !648)
!647 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !200, line: 3, baseType: !201, size: 32, align: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !646, file: !200, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !646, file: !200, line: 5, baseType: !204, size: 64, align: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !646, file: !200, line: 7, baseType: !209, size: 64, align: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !646, file: !200, line: 8, baseType: !518, size: 64, align: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !646, file: !200, line: 9, baseType: !230, size: 64, align: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !200, line: 10, baseType: !230, size: 64, align: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !646, file: !200, line: 11, baseType: !468, size: 64, align: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !646, file: !200, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !646, file: !200, line: 13, baseType: !230, size: 64, align: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !646, file: !200, line: 15, baseType: !641, size: 64, align: 64, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !646, file: !200, line: 17, baseType: !661, size: 64, align: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!606, !644}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !627, file: !200, line: 17, baseType: !661, size: 64, align: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !627, file: !666, line: 5, baseType: !230, size: 64, align: 64, offset: 704)
!666 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!667 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !627, file: !666, line: 6, baseType: !230, size: 64, align: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !627, file: !666, line: 7, baseType: !468, size: 64, align: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !627, file: !666, line: 9, baseType: !204, size: 64, align: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !627, file: !666, line: 10, baseType: !671, size: 64, align: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !245, line: 111, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !674, line: 13, size: 576, align: 64, elements: !675)
!674 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!675 = !{!676, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !694, !695}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !677, line: 3, baseType: !201, size: 32, align: 32)
!677 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !673, file: !677, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !673, file: !677, line: 6, baseType: !468, size: 64, align: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !673, file: !677, line: 8, baseType: !230, size: 64, align: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !673, file: !677, line: 9, baseType: !230, size: 64, align: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !673, file: !677, line: 10, baseType: !230, size: 64, align: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !673, file: !677, line: 11, baseType: !201, size: 32, align: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !673, file: !677, line: 14, baseType: !294, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !673, file: !677, line: 15, baseType: !294, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !673, file: !677, line: 18, baseType: !294, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !673, file: !677, line: 19, baseType: !294, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !673, file: !677, line: 20, baseType: !294, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !673, file: !677, line: 21, baseType: !294, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !673, file: !677, line: 22, baseType: !691, size: 64, align: 8, offset: 360)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, align: 8, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 8)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !673, file: !677, line: 26, baseType: !209, size: 64, align: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !673, file: !677, line: 28, baseType: !671, size: 64, align: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !627, file: !666, line: 12, baseType: !294, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !627, file: !666, line: 13, baseType: !230, size: 64, align: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !627, file: !666, line: 14, baseType: !201, size: 32, align: 32, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !627, file: !666, line: 15, baseType: !230, size: 64, align: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !627, file: !666, line: 17, baseType: !294, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !627, file: !666, line: 18, baseType: !294, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !627, file: !666, line: 19, baseType: !294, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !627, file: !666, line: 20, baseType: !294, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !627, file: !666, line: 22, baseType: !294, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !627, file: !666, line: 23, baseType: !294, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !627, file: !666, line: 24, baseType: !294, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !627, file: !666, line: 25, baseType: !294, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !627, file: !666, line: 26, baseType: !294, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !627, file: !666, line: 31, baseType: !710, size: 64, align: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!230, !625}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !520, file: !217, line: 70, baseType: !714, size: 64, align: 64, offset: 2048)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!717, !518, !606}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !245, line: 110, baseType: !719)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !245, line: 110, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !520, file: !217, line: 71, baseType: !721, size: 64, align: 64, offset: 2112)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!201, !606, !606}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !520, file: !217, line: 73, baseType: !721, size: 64, align: 64, offset: 2176)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !213, file: !217, line: 55, baseType: !599, size: 64, align: 64, offset: 1664)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !213, file: !217, line: 57, baseType: !603, size: 64, align: 64, offset: 1728)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !213, file: !217, line: 60, baseType: !609, size: 64, align: 64, offset: 1792)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !213, file: !217, line: 62, baseType: !613, size: 64, align: 64, offset: 1856)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !213, file: !217, line: 65, baseType: !617, size: 64, align: 64, offset: 1920)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !213, file: !217, line: 69, baseType: !622, size: 64, align: 64, offset: 1984)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !213, file: !217, line: 70, baseType: !714, size: 64, align: 64, offset: 2048)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !213, file: !217, line: 71, baseType: !721, size: 64, align: 64, offset: 2112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !213, file: !217, line: 73, baseType: !721, size: 64, align: 64, offset: 2176)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !213, file: !214, line: 46, baseType: !384, size: 64, align: 64, offset: 2240)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !213, file: !214, line: 47, baseType: !384, size: 64, align: 64, offset: 2304)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !213, file: !214, line: 48, baseType: !737, size: 64, align: 64, offset: 2368)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !195, line: 8, baseType: !739)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !195, line: 8, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !213, file: !214, line: 49, baseType: !384, size: 64, align: 64, offset: 2432)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !213, file: !214, line: 51, baseType: !230, size: 64, align: 64, offset: 2496)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !213, file: !214, line: 53, baseType: !230, size: 64, align: 64, offset: 2560)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !213, file: !214, line: 54, baseType: !230, size: 64, align: 64, offset: 2624)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !213, file: !214, line: 55, baseType: !230, size: 64, align: 64, offset: 2688)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !213, file: !214, line: 56, baseType: !230, size: 64, align: 64, offset: 2752)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !213, file: !214, line: 57, baseType: !201, size: 32, align: 32, offset: 2816)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !213, file: !214, line: 59, baseType: !294, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !213, file: !214, line: 60, baseType: !294, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !213, file: !214, line: 62, baseType: !294, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !213, file: !214, line: 63, baseType: !294, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !213, file: !214, line: 64, baseType: !294, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !213, file: !214, line: 65, baseType: !294, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !213, file: !214, line: 66, baseType: !294, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !213, file: !214, line: 67, baseType: !294, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !213, file: !214, line: 68, baseType: !294, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !213, file: !214, line: 69, baseType: !294, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !213, file: !214, line: 70, baseType: !294, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !213, file: !214, line: 71, baseType: !294, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !213, file: !214, line: 72, baseType: !294, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !213, file: !214, line: 74, baseType: !201, size: 32, align: 32, offset: 2880)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !213, file: !214, line: 75, baseType: !201, size: 32, align: 32, offset: 2912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !213, file: !214, line: 76, baseType: !201, size: 32, align: 32, offset: 2944)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !213, file: !214, line: 77, baseType: !201, size: 32, align: 32, offset: 2976)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !213, file: !214, line: 79, baseType: !204, size: 64, align: 64, offset: 3008)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !213, file: !214, line: 80, baseType: !384, size: 64, align: 64, offset: 3072)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !213, file: !214, line: 81, baseType: !384, size: 64, align: 64, offset: 3136)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !213, file: !214, line: 83, baseType: !423, size: 64, align: 64, offset: 3200)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !213, file: !214, line: 84, baseType: !375, size: 32, align: 32, offset: 3264)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !213, file: !214, line: 87, baseType: !201, size: 32, align: 32, offset: 3296)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !213, file: !214, line: 91, baseType: !384, size: 64, align: 64, offset: 3328)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !213, file: !214, line: 92, baseType: !504, size: 128, align: 64, offset: 3392)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !213, file: !214, line: 93, baseType: !504, size: 128, align: 64, offset: 3520)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !213, file: !214, line: 95, baseType: !201, size: 32, align: 32, offset: 3648)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !213, file: !214, line: 96, baseType: !201, size: 32, align: 32, offset: 3680)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !213, file: !214, line: 97, baseType: !201, size: 32, align: 32, offset: 3712)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !213, file: !214, line: 100, baseType: !384, size: 64, align: 64, offset: 3776)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !213, file: !214, line: 103, baseType: !384, size: 64, align: 64, offset: 3840)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !213, file: !214, line: 106, baseType: !384, size: 64, align: 64, offset: 3904)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !213, file: !214, line: 108, baseType: !204, size: 64, align: 64, offset: 3968)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !213, file: !214, line: 109, baseType: !384, size: 64, align: 64, offset: 4032)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !213, file: !214, line: 111, baseType: !384, size: 64, align: 64, offset: 4096)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !213, file: !214, line: 114, baseType: !209, size: 64, align: 64, offset: 4160)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !213, file: !214, line: 116, baseType: !204, size: 64, align: 64, offset: 4224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !213, file: !214, line: 117, baseType: !785, size: 32768, align: 64, offset: 4288)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 32768, align: 64, elements: !795)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !787, line: 10, size: 128, align: 64, elements: !788)
!787 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!788 = !{!789, !794}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !786, file: !787, line: 11, baseType: !790, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !787, line: 7, baseType: !792)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !193, !606, !231, !231, !230, !423}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !786, file: !787, line: 12, baseType: !231, size: 8, align: 8, offset: 64)
!795 = !{!796}
!796 = !DISubrange(count: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !213, file: !214, line: 118, baseType: !798, size: 2048, align: 8, offset: 37056)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 2048, align: 8, elements: !795)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !213, file: !214, line: 120, baseType: !721, size: 64, align: 64, offset: 39104)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !196, file: !200, line: 9, baseType: !230, size: 64, align: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !200, line: 10, baseType: !230, size: 64, align: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !196, file: !200, line: 11, baseType: !468, size: 64, align: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !196, file: !200, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !196, file: !200, line: 13, baseType: !230, size: 64, align: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !196, file: !200, line: 15, baseType: !641, size: 64, align: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !196, file: !200, line: 17, baseType: !661, size: 64, align: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !196, file: !666, line: 5, baseType: !230, size: 64, align: 64, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !196, file: !666, line: 6, baseType: !230, size: 64, align: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !196, file: !666, line: 7, baseType: !468, size: 64, align: 64, offset: 832)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !196, file: !666, line: 9, baseType: !204, size: 64, align: 64, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !196, file: !666, line: 10, baseType: !671, size: 64, align: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !196, file: !666, line: 12, baseType: !294, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !196, file: !666, line: 13, baseType: !230, size: 64, align: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !196, file: !666, line: 14, baseType: !201, size: 32, align: 32, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !196, file: !666, line: 15, baseType: !230, size: 64, align: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !196, file: !666, line: 17, baseType: !294, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !196, file: !666, line: 18, baseType: !294, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !196, file: !666, line: 19, baseType: !294, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !196, file: !666, line: 20, baseType: !294, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !196, file: !666, line: 22, baseType: !294, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !196, file: !666, line: 23, baseType: !294, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !196, file: !666, line: 24, baseType: !294, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !196, file: !666, line: 25, baseType: !294, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !196, file: !666, line: 26, baseType: !294, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !196, file: !666, line: 31, baseType: !710, size: 64, align: 64, offset: 1344)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !196, file: !197, line: 18, baseType: !384, size: 64, align: 64, offset: 1408)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !196, file: !197, line: 20, baseType: !468, size: 64, align: 64, offset: 1472)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !196, file: !197, line: 21, baseType: !201, size: 32, align: 32, offset: 1536)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !196, file: !197, line: 22, baseType: !201, size: 32, align: 32, offset: 1568)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !831, line: 9, baseType: !832)
!831 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64, align: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835, !835, !835, !835, !835, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHATNET_REC", file: !195, line: 4, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHATNET_REC", file: !840, line: 17, size: 1152, align: 64, elements: !841)
!840 = !DIFile(filename: "../../../src/irc/core/irc-chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!841 = !{!842, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !843, line: 1, baseType: !201, size: 32, align: 32)
!843 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !839, file: !843, line: 2, baseType: !201, size: 32, align: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !843, line: 4, baseType: !230, size: 64, align: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !839, file: !843, line: 6, baseType: !230, size: 64, align: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !839, file: !843, line: 7, baseType: !230, size: 64, align: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !839, file: !843, line: 8, baseType: !230, size: 64, align: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !839, file: !843, line: 10, baseType: !230, size: 64, align: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !839, file: !843, line: 11, baseType: !230, size: 64, align: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !839, file: !843, line: 12, baseType: !243, size: 64, align: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !839, file: !843, line: 12, baseType: !243, size: 64, align: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !839, file: !840, line: 20, baseType: !230, size: 64, align: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !839, file: !840, line: 21, baseType: !230, size: 64, align: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !839, file: !840, line: 23, baseType: !230, size: 64, align: 64, offset: 704)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !839, file: !840, line: 24, baseType: !230, size: 64, align: 64, offset: 768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !839, file: !840, line: 25, baseType: !230, size: 64, align: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !839, file: !840, line: 27, baseType: !201, size: 32, align: 32, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !839, file: !840, line: 28, baseType: !201, size: 32, align: 32, offset: 928)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !839, file: !840, line: 29, baseType: !201, size: 32, align: 32, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !839, file: !840, line: 32, baseType: !201, size: 32, align: 32, offset: 992)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !839, file: !840, line: 32, baseType: !201, size: 32, align: 32, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !839, file: !840, line: 32, baseType: !201, size: 32, align: 32, offset: 1056)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !839, file: !840, line: 32, baseType: !201, size: 32, align: 32, offset: 1088)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !245, line: 106, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !868, line: 13, size: 576, align: 64, elements: !869)
!868 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !843, line: 1, baseType: !201, size: 32, align: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !867, file: !843, line: 2, baseType: !201, size: 32, align: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !867, file: !843, line: 4, baseType: !230, size: 64, align: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !867, file: !843, line: 6, baseType: !230, size: 64, align: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !867, file: !843, line: 7, baseType: !230, size: 64, align: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !867, file: !843, line: 8, baseType: !230, size: 64, align: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !867, file: !843, line: 10, baseType: !230, size: 64, align: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !867, file: !843, line: 11, baseType: !230, size: 64, align: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !867, file: !843, line: 12, baseType: !243, size: 64, align: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !867, file: !843, line: 12, baseType: !243, size: 64, align: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_SETUP_REC", file: !882, line: 21, baseType: !883)
!882 = !DIFile(filename: "../../../src/irc/core/irc-servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !882, line: 14, size: 1536, align: 64, elements: !884)
!884 = !{!885, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !883, file: !886, line: 1, baseType: !201, size: 32, align: 32)
!886 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !883, file: !886, line: 2, baseType: !201, size: 32, align: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !883, file: !886, line: 4, baseType: !230, size: 64, align: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !883, file: !886, line: 6, baseType: !237, size: 16, align: 16, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !883, file: !886, line: 7, baseType: !230, size: 64, align: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !883, file: !886, line: 8, baseType: !201, size: 32, align: 32, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !883, file: !886, line: 9, baseType: !230, size: 64, align: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !883, file: !886, line: 11, baseType: !201, size: 32, align: 32, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !883, file: !886, line: 12, baseType: !230, size: 64, align: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !883, file: !886, line: 14, baseType: !230, size: 64, align: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !883, file: !886, line: 15, baseType: !230, size: 64, align: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !883, file: !886, line: 16, baseType: !230, size: 64, align: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !883, file: !886, line: 17, baseType: !230, size: 64, align: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !883, file: !886, line: 18, baseType: !230, size: 64, align: 64, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !883, file: !886, line: 19, baseType: !230, size: 64, align: 64, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !883, file: !886, line: 20, baseType: !230, size: 64, align: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !883, file: !886, line: 21, baseType: !230, size: 64, align: 64, offset: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !883, file: !886, line: 23, baseType: !230, size: 64, align: 64, offset: 1024)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !883, file: !886, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !883, file: !886, line: 24, baseType: !243, size: 64, align: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !883, file: !886, line: 26, baseType: !468, size: 64, align: 64, offset: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !883, file: !886, line: 28, baseType: !294, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !883, file: !886, line: 29, baseType: !294, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !883, file: !886, line: 30, baseType: !294, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !883, file: !886, line: 31, baseType: !294, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !883, file: !886, line: 32, baseType: !294, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !883, file: !886, line: 33, baseType: !294, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !883, file: !886, line: 34, baseType: !294, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !883, file: !886, line: 36, baseType: !204, size: 64, align: 64, offset: 1344)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !883, file: !882, line: 18, baseType: !201, size: 32, align: 32, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !883, file: !882, line: 19, baseType: !201, size: 32, align: 32, offset: 1440)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !883, file: !882, line: 20, baseType: !201, size: 32, align: 32, offset: 1472)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64, align: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !245, line: 114, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !921, line: 13, size: 1408, align: 64, elements: !922)
!921 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !886, line: 1, baseType: !201, size: 32, align: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !920, file: !886, line: 2, baseType: !201, size: 32, align: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !920, file: !886, line: 4, baseType: !230, size: 64, align: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !920, file: !886, line: 6, baseType: !237, size: 16, align: 16, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !920, file: !886, line: 7, baseType: !230, size: 64, align: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !920, file: !886, line: 8, baseType: !201, size: 32, align: 32, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !920, file: !886, line: 9, baseType: !230, size: 64, align: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !920, file: !886, line: 11, baseType: !201, size: 32, align: 32, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !920, file: !886, line: 12, baseType: !230, size: 64, align: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !920, file: !886, line: 14, baseType: !230, size: 64, align: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !920, file: !886, line: 15, baseType: !230, size: 64, align: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !920, file: !886, line: 16, baseType: !230, size: 64, align: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !920, file: !886, line: 17, baseType: !230, size: 64, align: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !920, file: !886, line: 18, baseType: !230, size: 64, align: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !920, file: !886, line: 19, baseType: !230, size: 64, align: 64, offset: 832)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !920, file: !886, line: 20, baseType: !230, size: 64, align: 64, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !920, file: !886, line: 21, baseType: !230, size: 64, align: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !920, file: !886, line: 23, baseType: !230, size: 64, align: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !920, file: !886, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !920, file: !886, line: 24, baseType: !243, size: 64, align: 64, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !920, file: !886, line: 26, baseType: !468, size: 64, align: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !920, file: !886, line: 28, baseType: !294, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !920, file: !886, line: 29, baseType: !294, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !920, file: !886, line: 30, baseType: !294, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !920, file: !886, line: 31, baseType: !294, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !920, file: !886, line: 32, baseType: !294, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !920, file: !886, line: 33, baseType: !294, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !920, file: !886, line: 34, baseType: !294, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !920, file: !886, line: 36, baseType: !204, size: 64, align: 64, offset: 1344)
!952 = !{i32 2, !"Dwarf Version", i32 4}
!953 = !{i32 2, !"Debug Info Version", i32 3}
!954 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!955 = distinct !DISubprogram(name: "get_visible_target", scope: !956, file: !956, line: 39, type: !957, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !959)
!956 = !DIFile(filename: "fe-irc-server.c", directory: "/home/lichi/Desktop/irssi/task1")
!957 = !DISubroutineType(types: !958)
!958 = !{!606, !211, !606}
!959 = !{}
!960 = !DILocalVariable(name: "server", arg: 1, scope: !955, file: !956, line: 39, type: !211)
!961 = !DIExpression()
!962 = !DILocation(line: 39, column: 48, scope: !955)
!963 = !DILocalVariable(name: "target", arg: 2, scope: !955, file: !956, line: 39, type: !606)
!964 = !DILocation(line: 39, column: 68, scope: !955)
!965 = !DILocalVariable(name: "channel", scope: !955, file: !956, line: 41, type: !193)
!966 = !DILocation(line: 41, column: 19, scope: !955)
!967 = !DILocation(line: 43, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !955, file: !956, line: 43, column: 6)
!969 = !DILocation(line: 43, column: 6, scope: !968)
!970 = !DILocation(line: 43, column: 14, scope: !968)
!971 = !DILocation(line: 43, column: 6, scope: !955)
!972 = !DILocation(line: 46, column: 148, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !956, line: 43, column: 22)
!974 = !DILocation(line: 46, column: 130, scope: !973)
!975 = !DILocation(line: 46, column: 115, scope: !973)
!976 = !DILocation(line: 46, column: 26, scope: !973)
!977 = !DILocation(line: 46, column: 101, scope: !978)
!978 = !DILexicalBlockFile(scope: !973, file: !956, discriminator: 1)
!979 = !DILocation(line: 46, column: 101, scope: !973)
!980 = !DILocation(line: 46, column: 76, scope: !981)
!981 = !DILexicalBlockFile(scope: !973, file: !956, discriminator: 2)
!982 = !DILocation(line: 46, column: 60, scope: !973)
!983 = !DILocation(line: 46, column: 59, scope: !973)
!984 = !DILocation(line: 46, column: 34, scope: !985)
!985 = !DILexicalBlockFile(scope: !973, file: !956, discriminator: 3)
!986 = !DILocation(line: 46, column: 14, scope: !973)
!987 = !DILocation(line: 46, column: 11, scope: !973)
!988 = !DILocation(line: 47, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !973, file: !956, line: 47, column: 7)
!990 = !DILocation(line: 47, column: 15, scope: !989)
!991 = !DILocation(line: 47, column: 7, scope: !973)
!992 = !DILocation(line: 48, column: 11, scope: !989)
!993 = !DILocation(line: 48, column: 20, scope: !989)
!994 = !DILocation(line: 48, column: 4, scope: !989)
!995 = !DILocation(line: 49, column: 2, scope: !973)
!996 = !DILocation(line: 51, column: 9, scope: !955)
!997 = !DILocation(line: 51, column: 2, scope: !955)
!998 = !DILocation(line: 52, column: 1, scope: !955)
!999 = distinct !DISubprogram(name: "fe_irc_server_init", scope: !956, file: !956, line: 153, type: !372, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !959)
!1000 = !DILocation(line: 155, column: 2, scope: !999)
!1001 = !DILocation(line: 156, column: 2, scope: !999)
!1002 = !DILocation(line: 158, column: 2, scope: !999)
!1003 = !DILocation(line: 159, column: 1, scope: !999)
!1004 = distinct !DISubprogram(name: "sig_server_add_fill", scope: !956, file: !956, line: 61, type: !1005, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !959)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !880, !204}
!1007 = !DILocalVariable(name: "rec", arg: 1, scope: !1004, file: !956, line: 61, type: !880)
!1008 = !DILocation(line: 61, column: 55, scope: !1004)
!1009 = !DILocalVariable(name: "optlist", arg: 2, scope: !1004, file: !956, line: 62, type: !204)
!1010 = !DILocation(line: 62, column: 17, scope: !1004)
!1011 = !DILocalVariable(name: "ircnet", scope: !1004, file: !956, line: 64, type: !837)
!1012 = !DILocation(line: 64, column: 26, scope: !1004)
!1013 = !DILocalVariable(name: "value", scope: !1004, file: !956, line: 65, type: !230)
!1014 = !DILocation(line: 65, column: 8, scope: !1004)
!1015 = !DILocation(line: 67, column: 30, scope: !1004)
!1016 = !DILocation(line: 67, column: 10, scope: !1004)
!1017 = !DILocation(line: 67, column: 8, scope: !1004)
!1018 = !DILocation(line: 70, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1004, file: !956, line: 70, column: 6)
!1020 = !DILocation(line: 70, column: 6, scope: !1004)
!1021 = !DILocation(line: 71, column: 31, scope: !1019)
!1022 = !DILocation(line: 71, column: 11, scope: !1019)
!1023 = !DILocation(line: 71, column: 9, scope: !1019)
!1024 = !DILocation(line: 71, column: 3, scope: !1019)
!1025 = !DILocation(line: 73, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1004, file: !956, line: 73, column: 6)
!1027 = !DILocation(line: 73, column: 12, scope: !1026)
!1028 = !DILocation(line: 73, column: 6, scope: !1004)
!1029 = !DILocation(line: 74, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !956, line: 73, column: 20)
!1031 = distinct !{!1031, !1029}
!1032 = !DILocation(line: 74, column: 12, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !956, discriminator: 1)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !956, line: 74, column: 12)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !956, line: 74, column: 6)
!1036 = !DILocation(line: 74, column: 17, scope: !1033)
!1037 = !DILocation(line: 74, column: 35, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !956, discriminator: 2)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !956, line: 74, column: 26)
!1040 = !DILocation(line: 74, column: 40, scope: !1038)
!1041 = !DILocation(line: 74, column: 28, scope: !1038)
!1042 = !DILocation(line: 74, column: 51, scope: !1038)
!1043 = !DILocation(line: 74, column: 56, scope: !1038)
!1044 = !DILocation(line: 74, column: 65, scope: !1038)
!1045 = !DILocation(line: 74, column: 4, scope: !1038)
!1046 = !DILocation(line: 74, column: 6, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1035, file: !956, discriminator: 3)
!1048 = !DILocation(line: 75, column: 8, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1030, file: !956, line: 75, column: 7)
!1050 = !DILocation(line: 75, column: 7, scope: !1049)
!1051 = !DILocation(line: 75, column: 14, scope: !1049)
!1052 = !DILocation(line: 75, column: 7, scope: !1030)
!1053 = !DILocation(line: 76, column: 107, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !956, line: 75, column: 23)
!1055 = !DILocation(line: 76, column: 94, scope: !1054)
!1056 = !DILocation(line: 76, column: 76, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1054, file: !956, discriminator: 1)
!1058 = !DILocation(line: 76, column: 60, scope: !1054)
!1059 = !DILocation(line: 76, column: 59, scope: !1054)
!1060 = !DILocation(line: 76, column: 34, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1054, file: !956, discriminator: 2)
!1062 = !DILocation(line: 76, column: 14, scope: !1054)
!1063 = !DILocation(line: 76, column: 11, scope: !1054)
!1064 = !DILocation(line: 77, column: 19, scope: !1054)
!1065 = !DILocation(line: 77, column: 26, scope: !1054)
!1066 = !DILocation(line: 78, column: 14, scope: !1054)
!1067 = !DILocation(line: 78, column: 22, scope: !1054)
!1068 = !DILocation(line: 78, column: 5, scope: !1054)
!1069 = !DILocation(line: 77, column: 19, scope: !1057)
!1070 = !DILocation(line: 78, column: 39, scope: !1057)
!1071 = !DILocation(line: 78, column: 30, scope: !1057)
!1072 = !DILocation(line: 77, column: 19, scope: !1061)
!1073 = !DILocation(line: 77, column: 19, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1054, file: !956, discriminator: 3)
!1075 = !DILocation(line: 77, column: 4, scope: !1074)
!1076 = !DILocation(line: 77, column: 9, scope: !1074)
!1077 = !DILocation(line: 77, column: 17, scope: !1074)
!1078 = !DILocation(line: 79, column: 3, scope: !1054)
!1079 = !DILocation(line: 80, column: 2, scope: !1030)
!1080 = !DILocation(line: 82, column: 30, scope: !1004)
!1081 = !DILocation(line: 82, column: 10, scope: !1004)
!1082 = !DILocation(line: 82, column: 8, scope: !1004)
!1083 = !DILocation(line: 83, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1004, file: !956, line: 83, column: 6)
!1085 = !DILocation(line: 83, column: 12, scope: !1084)
!1086 = !DILocation(line: 83, column: 19, scope: !1084)
!1087 = !DILocation(line: 83, column: 23, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1084, file: !956, discriminator: 1)
!1089 = !DILocation(line: 83, column: 22, scope: !1088)
!1090 = !DILocation(line: 83, column: 29, scope: !1088)
!1091 = !DILocation(line: 83, column: 6, scope: !1088)
!1092 = !DILocation(line: 83, column: 66, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1084, file: !956, discriminator: 2)
!1094 = !DILocation(line: 83, column: 61, scope: !1093)
!1095 = !DILocation(line: 83, column: 38, scope: !1093)
!1096 = !DILocation(line: 83, column: 43, scope: !1093)
!1097 = !DILocation(line: 83, column: 59, scope: !1093)
!1098 = !DILocation(line: 84, column: 30, scope: !1004)
!1099 = !DILocation(line: 84, column: 10, scope: !1004)
!1100 = !DILocation(line: 84, column: 8, scope: !1004)
!1101 = !DILocation(line: 85, column: 6, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1004, file: !956, line: 85, column: 6)
!1103 = !DILocation(line: 85, column: 12, scope: !1102)
!1104 = !DILocation(line: 85, column: 19, scope: !1102)
!1105 = !DILocation(line: 85, column: 23, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1102, file: !956, discriminator: 1)
!1107 = !DILocation(line: 85, column: 22, scope: !1106)
!1108 = !DILocation(line: 85, column: 29, scope: !1106)
!1109 = !DILocation(line: 85, column: 6, scope: !1106)
!1110 = !DILocation(line: 85, column: 67, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1102, file: !956, discriminator: 2)
!1112 = !DILocation(line: 85, column: 62, scope: !1111)
!1113 = !DILocation(line: 85, column: 38, scope: !1111)
!1114 = !DILocation(line: 85, column: 43, scope: !1111)
!1115 = !DILocation(line: 85, column: 60, scope: !1111)
!1116 = !DILocation(line: 86, column: 30, scope: !1004)
!1117 = !DILocation(line: 86, column: 10, scope: !1004)
!1118 = !DILocation(line: 86, column: 8, scope: !1004)
!1119 = !DILocation(line: 87, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1004, file: !956, line: 87, column: 6)
!1121 = !DILocation(line: 87, column: 12, scope: !1120)
!1122 = !DILocation(line: 87, column: 19, scope: !1120)
!1123 = !DILocation(line: 87, column: 23, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1120, file: !956, discriminator: 1)
!1125 = !DILocation(line: 87, column: 22, scope: !1124)
!1126 = !DILocation(line: 87, column: 29, scope: !1124)
!1127 = !DILocation(line: 87, column: 6, scope: !1124)
!1128 = !DILocation(line: 87, column: 66, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1120, file: !956, discriminator: 2)
!1130 = !DILocation(line: 87, column: 61, scope: !1129)
!1131 = !DILocation(line: 87, column: 38, scope: !1129)
!1132 = !DILocation(line: 87, column: 43, scope: !1129)
!1133 = !DILocation(line: 87, column: 59, scope: !1129)
!1134 = !DILocation(line: 88, column: 1, scope: !1004)
!1135 = distinct !DISubprogram(name: "cmd_server_list", scope: !956, file: !956, line: 91, type: !1136, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !959)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !606}
!1138 = !DILocalVariable(name: "data", arg: 1, scope: !1135, file: !956, line: 91, type: !606)
!1139 = !DILocation(line: 91, column: 41, scope: !1135)
!1140 = !DILocalVariable(name: "str", scope: !1135, file: !956, line: 93, type: !423)
!1141 = !DILocation(line: 93, column: 11, scope: !1135)
!1142 = !DILocalVariable(name: "tmp", scope: !1135, file: !956, line: 94, type: !384)
!1143 = !DILocation(line: 94, column: 10, scope: !1135)
!1144 = !DILocation(line: 96, column: 8, scope: !1135)
!1145 = !DILocation(line: 96, column: 6, scope: !1135)
!1146 = !DILocation(line: 97, column: 2, scope: !1135)
!1147 = !DILocation(line: 98, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1135, file: !956, line: 98, column: 2)
!1149 = !DILocation(line: 98, column: 11, scope: !1148)
!1150 = !DILocation(line: 98, column: 7, scope: !1148)
!1151 = !DILocation(line: 98, column: 27, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !956, discriminator: 1)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !956, line: 98, column: 2)
!1154 = !DILocation(line: 98, column: 31, scope: !1152)
!1155 = !DILocation(line: 98, column: 2, scope: !1152)
!1156 = !DILocalVariable(name: "rec", scope: !1157, file: !956, line: 99, type: !880)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !956, line: 98, column: 56)
!1158 = !DILocation(line: 99, column: 25, scope: !1157)
!1159 = !DILocation(line: 99, column: 31, scope: !1157)
!1160 = !DILocation(line: 99, column: 36, scope: !1157)
!1161 = !DILocation(line: 101, column: 100, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 101, column: 7)
!1163 = !DILocation(line: 101, column: 82, scope: !1162)
!1164 = !DILocation(line: 101, column: 61, scope: !1162)
!1165 = !DILocation(line: 101, column: 60, scope: !1162)
!1166 = !DILocation(line: 101, column: 35, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1162, file: !956, discriminator: 3)
!1168 = !DILocation(line: 101, column: 10, scope: !1162)
!1169 = !DILocation(line: 101, column: 7, scope: !1157)
!1170 = !DILocation(line: 101, column: 9, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1162, file: !956, discriminator: 1)
!1172 = !DILocation(line: 101, column: 7, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1157, file: !956, discriminator: 2)
!1174 = !DILocation(line: 102, column: 25, scope: !1162)
!1175 = !DILocation(line: 104, column: 21, scope: !1157)
!1176 = !DILocation(line: 104, column: 3, scope: !1157)
!1177 = !DILocation(line: 105, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 105, column: 7)
!1179 = !DILocation(line: 105, column: 12, scope: !1178)
!1180 = !DILocation(line: 105, column: 21, scope: !1178)
!1181 = !DILocation(line: 105, column: 7, scope: !1157)
!1182 = !DILocation(line: 106, column: 20, scope: !1178)
!1183 = !DILocation(line: 106, column: 4, scope: !1178)
!1184 = !DILocation(line: 107, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 107, column: 7)
!1186 = !DILocation(line: 107, column: 12, scope: !1185)
!1187 = !DILocation(line: 107, column: 7, scope: !1157)
!1188 = !DILocation(line: 108, column: 20, scope: !1185)
!1189 = !DILocation(line: 108, column: 4, scope: !1185)
!1190 = !DILocation(line: 109, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 109, column: 7)
!1192 = !DILocation(line: 109, column: 12, scope: !1191)
!1193 = !DILocation(line: 109, column: 7, scope: !1157)
!1194 = !DILocation(line: 110, column: 20, scope: !1191)
!1195 = !DILocation(line: 110, column: 4, scope: !1191)
!1196 = !DILocation(line: 111, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 111, column: 7)
!1198 = !DILocation(line: 111, column: 12, scope: !1197)
!1199 = !DILocation(line: 111, column: 7, scope: !1157)
!1200 = !DILocation(line: 112, column: 20, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !956, line: 111, column: 21)
!1202 = !DILocation(line: 112, column: 4, scope: !1201)
!1203 = !DILocation(line: 113, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 113, column: 8)
!1205 = !DILocation(line: 113, column: 13, scope: !1204)
!1206 = !DILocation(line: 113, column: 8, scope: !1201)
!1207 = !DILocation(line: 114, column: 28, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !956, line: 113, column: 23)
!1209 = !DILocation(line: 114, column: 51, scope: !1208)
!1210 = !DILocation(line: 114, column: 56, scope: !1208)
!1211 = !DILocation(line: 114, column: 5, scope: !1208)
!1212 = !DILocation(line: 115, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !956, line: 115, column: 9)
!1214 = !DILocation(line: 115, column: 14, scope: !1213)
!1215 = !DILocation(line: 115, column: 9, scope: !1208)
!1216 = !DILocation(line: 116, column: 29, scope: !1213)
!1217 = !DILocation(line: 116, column: 52, scope: !1213)
!1218 = !DILocation(line: 116, column: 57, scope: !1213)
!1219 = !DILocation(line: 116, column: 6, scope: !1213)
!1220 = !DILocation(line: 117, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1208, file: !956, line: 117, column: 9)
!1222 = !DILocation(line: 117, column: 14, scope: !1221)
!1223 = !DILocation(line: 117, column: 9, scope: !1208)
!1224 = !DILocation(line: 118, column: 29, scope: !1221)
!1225 = !DILocation(line: 118, column: 6, scope: !1221)
!1226 = !DILocation(line: 119, column: 4, scope: !1208)
!1227 = !DILocation(line: 120, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 120, column: 8)
!1229 = !DILocation(line: 120, column: 13, scope: !1228)
!1230 = !DILocation(line: 120, column: 8, scope: !1201)
!1231 = !DILocation(line: 121, column: 21, scope: !1228)
!1232 = !DILocation(line: 121, column: 5, scope: !1228)
!1233 = !DILocation(line: 122, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 122, column: 8)
!1235 = !DILocation(line: 122, column: 13, scope: !1234)
!1236 = !DILocation(line: 122, column: 8, scope: !1201)
!1237 = !DILocation(line: 123, column: 28, scope: !1234)
!1238 = !DILocation(line: 123, column: 53, scope: !1234)
!1239 = !DILocation(line: 123, column: 58, scope: !1234)
!1240 = !DILocation(line: 123, column: 5, scope: !1234)
!1241 = !DILocation(line: 124, column: 8, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 124, column: 8)
!1243 = !DILocation(line: 124, column: 13, scope: !1242)
!1244 = !DILocation(line: 124, column: 8, scope: !1201)
!1245 = !DILocation(line: 125, column: 28, scope: !1242)
!1246 = !DILocation(line: 125, column: 53, scope: !1242)
!1247 = !DILocation(line: 125, column: 58, scope: !1242)
!1248 = !DILocation(line: 125, column: 5, scope: !1242)
!1249 = !DILocation(line: 126, column: 8, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 126, column: 8)
!1251 = !DILocation(line: 126, column: 13, scope: !1250)
!1252 = !DILocation(line: 126, column: 8, scope: !1201)
!1253 = !DILocation(line: 127, column: 28, scope: !1250)
!1254 = !DILocation(line: 127, column: 54, scope: !1250)
!1255 = !DILocation(line: 127, column: 59, scope: !1250)
!1256 = !DILocation(line: 127, column: 5, scope: !1250)
!1257 = !DILocation(line: 128, column: 8, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 128, column: 8)
!1259 = !DILocation(line: 128, column: 13, scope: !1258)
!1260 = !DILocation(line: 128, column: 8, scope: !1201)
!1261 = !DILocation(line: 129, column: 28, scope: !1258)
!1262 = !DILocation(line: 129, column: 58, scope: !1258)
!1263 = !DILocation(line: 129, column: 63, scope: !1258)
!1264 = !DILocation(line: 129, column: 5, scope: !1258)
!1265 = !DILocation(line: 130, column: 8, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1201, file: !956, line: 130, column: 8)
!1267 = !DILocation(line: 130, column: 13, scope: !1266)
!1268 = !DILocation(line: 130, column: 8, scope: !1201)
!1269 = !DILocation(line: 131, column: 28, scope: !1266)
!1270 = !DILocation(line: 131, column: 60, scope: !1266)
!1271 = !DILocation(line: 131, column: 65, scope: !1266)
!1272 = !DILocation(line: 131, column: 5, scope: !1266)
!1273 = !DILocation(line: 133, column: 3, scope: !1201)
!1274 = !DILocation(line: 134, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 134, column: 7)
!1276 = !DILocation(line: 134, column: 12, scope: !1275)
!1277 = !DILocation(line: 134, column: 29, scope: !1275)
!1278 = !DILocation(line: 134, column: 7, scope: !1157)
!1279 = !DILocation(line: 135, column: 27, scope: !1275)
!1280 = !DILocation(line: 135, column: 48, scope: !1275)
!1281 = !DILocation(line: 135, column: 53, scope: !1275)
!1282 = !DILocation(line: 135, column: 4, scope: !1275)
!1283 = !DILocation(line: 136, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 136, column: 7)
!1285 = !DILocation(line: 136, column: 12, scope: !1284)
!1286 = !DILocation(line: 136, column: 28, scope: !1284)
!1287 = !DILocation(line: 136, column: 7, scope: !1157)
!1288 = !DILocation(line: 137, column: 27, scope: !1284)
!1289 = !DILocation(line: 137, column: 50, scope: !1284)
!1290 = !DILocation(line: 137, column: 55, scope: !1284)
!1291 = !DILocation(line: 137, column: 4, scope: !1284)
!1292 = !DILocation(line: 138, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 138, column: 7)
!1294 = !DILocation(line: 138, column: 12, scope: !1293)
!1295 = !DILocation(line: 138, column: 28, scope: !1293)
!1296 = !DILocation(line: 138, column: 7, scope: !1157)
!1297 = !DILocation(line: 139, column: 27, scope: !1293)
!1298 = !DILocation(line: 139, column: 52, scope: !1293)
!1299 = !DILocation(line: 139, column: 57, scope: !1293)
!1300 = !DILocation(line: 139, column: 4, scope: !1293)
!1301 = !DILocation(line: 140, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 140, column: 7)
!1303 = !DILocation(line: 140, column: 12, scope: !1302)
!1304 = !DILocation(line: 140, column: 21, scope: !1302)
!1305 = !DILocation(line: 140, column: 7, scope: !1157)
!1306 = !DILocation(line: 141, column: 27, scope: !1302)
!1307 = !DILocation(line: 141, column: 46, scope: !1302)
!1308 = !DILocation(line: 141, column: 51, scope: !1302)
!1309 = !DILocation(line: 141, column: 4, scope: !1302)
!1310 = !DILocation(line: 143, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1157, file: !956, line: 143, column: 7)
!1312 = !DILocation(line: 143, column: 12, scope: !1311)
!1313 = !DILocation(line: 143, column: 16, scope: !1311)
!1314 = !DILocation(line: 143, column: 7, scope: !1157)
!1315 = !DILocation(line: 143, column: 39, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !1311, file: !956, discriminator: 1)
!1317 = !DILocation(line: 143, column: 44, scope: !1316)
!1318 = !DILocation(line: 143, column: 49, scope: !1316)
!1319 = !DILocation(line: 143, column: 52, scope: !1316)
!1320 = !DILocation(line: 143, column: 21, scope: !1316)
!1321 = !DILocation(line: 144, column: 50, scope: !1157)
!1322 = !DILocation(line: 144, column: 55, scope: !1157)
!1323 = !DILocation(line: 144, column: 64, scope: !1157)
!1324 = !DILocation(line: 144, column: 69, scope: !1157)
!1325 = !DILocation(line: 144, column: 75, scope: !1157)
!1326 = !DILocation(line: 144, column: 80, scope: !1157)
!1327 = !DILocation(line: 144, column: 88, scope: !1157)
!1328 = !DILocation(line: 144, column: 75, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1157, file: !956, discriminator: 1)
!1330 = !DILocation(line: 144, column: 9, scope: !1173)
!1331 = !DILocation(line: 144, column: 14, scope: !1173)
!1332 = !DILocation(line: 144, column: 75, scope: !1173)
!1333 = !DILocation(line: 144, column: 75, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1157, file: !956, discriminator: 3)
!1335 = !DILocation(line: 144, column: 23, scope: !1334)
!1336 = !DILocation(line: 144, column: 28, scope: !1334)
!1337 = !DILocation(line: 144, column: 3, scope: !1334)
!1338 = !DILocation(line: 148, column: 2, scope: !1157)
!1339 = !DILocation(line: 98, column: 45, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1153, file: !956, discriminator: 2)
!1341 = !DILocation(line: 98, column: 50, scope: !1340)
!1342 = !DILocation(line: 98, column: 43, scope: !1340)
!1343 = !DILocation(line: 98, column: 2, scope: !1340)
!1344 = distinct !{!1344, !1345}
!1345 = !DILocation(line: 98, column: 2, scope: !1135)
!1346 = !DILocation(line: 149, column: 2, scope: !1135)
!1347 = !DILocation(line: 150, column: 16, scope: !1135)
!1348 = !DILocation(line: 150, column: 2, scope: !1135)
!1349 = !DILocation(line: 151, column: 1, scope: !1135)
!1350 = distinct !DISubprogram(name: "fe_irc_server_deinit", scope: !956, file: !956, line: 161, type: !372, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !959)
!1351 = !DILocation(line: 163, column: 2, scope: !1350)
!1352 = !DILocation(line: 164, column: 2, scope: !1350)
!1353 = !DILocation(line: 165, column: 1, scope: !1350)
