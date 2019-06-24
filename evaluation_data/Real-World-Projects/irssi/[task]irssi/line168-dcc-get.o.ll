; ModuleID = './line168-dcc-get.o.i'
source_filename = "./line168-dcc-get.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.GET_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i32, i8*, i8 }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.CHAT_DCC_REC = type opaque
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.SEND_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i8 }

@.str = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"dcc_download_path\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"dcc error connect\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dcc get receive\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"dcc_file_create_mode\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c".XXXXXX\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"fchmod(3) failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"dcc error file create\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"121 %s %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"dcc_autorename\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"PRIVMSG %s :\01DCC SEND %s %s %d %lu %d\01\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.cmd_dcc_receive = private unnamed_addr constant [16 x i8] c"cmd_dcc_receive\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@dcc_conns = external global %struct._GSList*, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"dcc error get not found\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"ctcp msg dcc send\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"dcc get\00", align 1
@dcc_get_recv_buffer = internal global i8* null, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"dcc error write\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"dcc transfer update\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"dcc error ctcp\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"dcc reply send pasv\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"dcc-get.c\00", align 1
@__func__.ctcp_msg_dcc_send = private unnamed_addr constant [18 x i8] c"ctcp_msg_dcc_send\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1

; Function Attrs: nounwind uwtable
define %struct.GET_DCC_REC* @dcc_get_create(%struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !863 {
  %5 = alloca %struct.GET_DCC_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.GET_DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !867, metadata !868), !dbg !869
  store %struct.CHAT_DCC_REC* %1, %struct.CHAT_DCC_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !870, metadata !868), !dbg !871
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !872, metadata !868), !dbg !873
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !874, metadata !868), !dbg !875
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %10, metadata !876, metadata !868), !dbg !877
  %11 = call noalias i8* @g_malloc0_n(i64 1, i64 256), !dbg !878
  %12 = bitcast i8* %11 to %struct.GET_DCC_REC*, !dbg !879
  store %struct.GET_DCC_REC* %12, %struct.GET_DCC_REC** %10, align 8, !dbg !880
  %13 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !881
  %14 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !882
  %15 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %14, i32 0, i32 1, !dbg !883
  store i32 %13, i32* %15, align 4, !dbg !884
  %16 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !885
  %17 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !886
  %18 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %17, i32 0, i32 0, !dbg !887
  store i32 %16, i32* %18, align 8, !dbg !888
  %19 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !889
  %20 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %19, i32 0, i32 24, !dbg !890
  store i32 -1, i32* %20, align 8, !dbg !891
  %21 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !892
  %22 = bitcast %struct.GET_DCC_REC* %21 to %struct.DCC_REC*, !dbg !893
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !894
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !895
  %25 = load i8*, i8** %8, align 8, !dbg !896
  %26 = load i8*, i8** %9, align 8, !dbg !897
  call void @dcc_init_rec(%struct.DCC_REC* %22, %struct._IRC_SERVER_REC* %23, %struct.CHAT_DCC_REC* %24, i8* %25, i8* %26), !dbg !898
  %27 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !899
  %28 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %27, i32 0, i32 21, !dbg !901
  %29 = load %struct._GHashTable*, %struct._GHashTable** %28, align 8, !dbg !901
  %30 = icmp eq %struct._GHashTable* %29, null, !dbg !902
  br i1 %30, label %31, label %34, !dbg !903

; <label>:31:                                     ; preds = %4
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !904
  %33 = bitcast %struct.GET_DCC_REC* %32 to i8*, !dbg !904
  call void @g_free(i8* %33), !dbg !906
  store %struct.GET_DCC_REC* null, %struct.GET_DCC_REC** %5, align 8, !dbg !907
  br label %36, !dbg !907

; <label>:34:                                     ; preds = %4
  %35 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %10, align 8, !dbg !908
  store %struct.GET_DCC_REC* %35, %struct.GET_DCC_REC** %5, align 8, !dbg !909
  br label %36, !dbg !909

; <label>:36:                                     ; preds = %34, %31
  %37 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %5, align 8, !dbg !910
  ret %struct.GET_DCC_REC* %37, !dbg !910
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare void @dcc_init_rec(%struct.DCC_REC*, %struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @dcc_get_download_path(i8*) #0 !dbg !911 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !914, metadata !868), !dbg !915
  call void @llvm.dbg.declare(metadata i8** %3, metadata !916, metadata !868), !dbg !917
  call void @llvm.dbg.declare(metadata i8** %4, metadata !918, metadata !868), !dbg !919
  call void @llvm.dbg.declare(metadata i8** %5, metadata !920, metadata !868), !dbg !921
  %6 = load i8*, i8** %2, align 8, !dbg !922
  %7 = call noalias i8* @g_path_get_basename(i8* %6), !dbg !923
  store i8* %7, i8** %5, align 8, !dbg !924
  %8 = call i8* @settings_get_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)), !dbg !925
  %9 = call i8* @convert_home(i8* %8), !dbg !926
  store i8* %9, i8** %4, align 8, !dbg !928
  %10 = load i8*, i8** %4, align 8, !dbg !929
  %11 = load i8*, i8** %5, align 8, !dbg !930
  %12 = call noalias i8* (i8*, ...) @g_strconcat(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %11, i8* null), !dbg !931
  store i8* %12, i8** %3, align 8, !dbg !932
  %13 = load i8*, i8** %4, align 8, !dbg !933
  call void @g_free(i8* %13), !dbg !934
  %14 = load i8*, i8** %5, align 8, !dbg !935
  call void @g_free(i8* %14), !dbg !936
  %15 = load i8*, i8** %3, align 8, !dbg !937
  ret i8* %15, !dbg !938
}

declare noalias i8* @g_path_get_basename(i8*) #2

declare i8* @convert_home(i8*) #2

declare i8* @settings_get_str(i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @dcc_get_send_received(%struct.GET_DCC_REC*) #0 !dbg !939 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !942, metadata !868), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %3, metadata !944, metadata !868), !dbg !945
  %4 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !946
  %5 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %4, i32 0, i32 18, !dbg !947
  %6 = load i64, i64* %5, align 8, !dbg !947
  %7 = and i64 %6, 4294967295, !dbg !948
  %8 = trunc i64 %7 to i32, !dbg !946
  %9 = call i32 @htonl(i32 %8) #1, !dbg !949
  store i32 %9, i32* %3, align 4, !dbg !950
  %10 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !951
  %11 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %10, i32 0, i32 26, !dbg !952
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i32 0, i32 0, !dbg !953
  %13 = bitcast i32* %3 to i8*, !dbg !953
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 4, i32 4, i1 false), !dbg !953
  %14 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !954
  %15 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %14, i32 0, i32 13, !dbg !955
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %15, align 8, !dbg !955
  %17 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !956
  %18 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %17, i32 0, i32 26, !dbg !957
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i32 0, i32 0, !dbg !956
  %20 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !958
  %21 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %20, i32 0, i32 27, !dbg !959
  %22 = load i32, i32* %21, align 4, !dbg !959
  %23 = sext i32 %22 to i64, !dbg !960
  %24 = getelementptr inbounds i8, i8* %19, i64 %23, !dbg !960
  %25 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !961
  %26 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %25, i32 0, i32 27, !dbg !962
  %27 = load i32, i32* %26, align 4, !dbg !962
  %28 = sub nsw i32 4, %27, !dbg !963
  %29 = call i32 @net_transmit(%struct._GIOChannel* %16, i8* %24, i32 %28), !dbg !964
  %30 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !965
  %31 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %30, i32 0, i32 27, !dbg !966
  store i32 %29, i32* %31, align 4, !dbg !967
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !968
  %33 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %32, i32 0, i32 27, !dbg !970
  %34 = load i32, i32* %33, align 4, !dbg !970
  %35 = icmp eq i32 %34, 4, !dbg !971
  br i1 %35, label %36, label %39, !dbg !972

; <label>:36:                                     ; preds = %1
  %37 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !973
  %38 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %37, i32 0, i32 27, !dbg !975
  store i32 0, i32* %38, align 4, !dbg !976
  br label %39, !dbg !973

; <label>:39:                                     ; preds = %36, %1
  %40 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !977
  %41 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %40, i32 0, i32 16, !dbg !979
  %42 = load i32, i32* %41, align 8, !dbg !979
  %43 = icmp eq i32 %42, -1, !dbg !980
  br i1 %43, label %44, label %53, !dbg !981

; <label>:44:                                     ; preds = %39
  %45 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !982
  %46 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %45, i32 0, i32 13, !dbg !984
  %47 = load %struct._GIOChannel*, %struct._GIOChannel** %46, align 8, !dbg !984
  %48 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !985
  %49 = bitcast %struct.GET_DCC_REC* %48 to i8*, !dbg !985
  %50 = call i32 @g_input_add(%struct._GIOChannel* %47, i32 2, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dccget_send to void (i8*, %struct._GIOChannel*, i32)*), i8* %49), !dbg !986
  %51 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !987
  %52 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %51, i32 0, i32 16, !dbg !988
  store i32 %50, i32* %52, align 8, !dbg !989
  br label %53, !dbg !990

; <label>:53:                                     ; preds = %44, %39
  ret void, !dbg !991
}

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @net_transmit(%struct._GIOChannel*, i8*, i32) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dccget_send(%struct.GET_DCC_REC*) #0 !dbg !992 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !993, metadata !868), !dbg !994
  call void @llvm.dbg.declare(metadata i32* %3, metadata !995, metadata !868), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %4, metadata !997, metadata !868), !dbg !998
  %5 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !999
  %6 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %5, i32 0, i32 27, !dbg !1001
  %7 = load i32, i32* %6, align 4, !dbg !1001
  %8 = icmp ne i32 %7, 0, !dbg !1002
  br i1 %8, label %9, label %53, !dbg !1003

; <label>:9:                                      ; preds = %1
  %10 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1004
  %11 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %10, i32 0, i32 13, !dbg !1006
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !1006
  %13 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1007
  %14 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %13, i32 0, i32 26, !dbg !1008
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i32 0, i32 0, !dbg !1007
  %16 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1009
  %17 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %16, i32 0, i32 27, !dbg !1010
  %18 = load i32, i32* %17, align 4, !dbg !1010
  %19 = sext i32 %18 to i64, !dbg !1011
  %20 = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !1011
  %21 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1012
  %22 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %21, i32 0, i32 27, !dbg !1013
  %23 = load i32, i32* %22, align 4, !dbg !1013
  %24 = sub nsw i32 4, %23, !dbg !1014
  %25 = call i32 @net_transmit(%struct._GIOChannel* %12, i8* %20, i32 %24), !dbg !1015
  store i32 %25, i32* %4, align 4, !dbg !1016
  %26 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1017
  %27 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %26, i32 0, i32 27, !dbg !1019
  %28 = load i32, i32* %27, align 4, !dbg !1019
  %29 = icmp sle i32 %28, 0, !dbg !1020
  br i1 %29, label %30, label %34, !dbg !1021

; <label>:30:                                     ; preds = %9
  %31 = load i32, i32* %4, align 4, !dbg !1022
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1023
  %33 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %32, i32 0, i32 27, !dbg !1024
  store i32 %31, i32* %33, align 4, !dbg !1025
  br label %44, !dbg !1023

; <label>:34:                                     ; preds = %9
  %35 = load i32, i32* %4, align 4, !dbg !1026
  %36 = icmp sgt i32 %35, 0, !dbg !1028
  br i1 %36, label %37, label %43, !dbg !1029

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %4, align 4, !dbg !1030
  %39 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1031
  %40 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %39, i32 0, i32 27, !dbg !1032
  %41 = load i32, i32* %40, align 4, !dbg !1033
  %42 = add nsw i32 %41, %38, !dbg !1033
  store i32 %42, i32* %40, align 4, !dbg !1033
  br label %43, !dbg !1031

; <label>:43:                                     ; preds = %37, %34
  br label %44

; <label>:44:                                     ; preds = %43, %30
  %45 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1034
  %46 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %45, i32 0, i32 27, !dbg !1036
  %47 = load i32, i32* %46, align 4, !dbg !1036
  %48 = icmp eq i32 %47, 4, !dbg !1037
  br i1 %48, label %49, label %52, !dbg !1038

; <label>:49:                                     ; preds = %44
  %50 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1039
  %51 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %50, i32 0, i32 27, !dbg !1041
  store i32 0, i32* %51, align 4, !dbg !1042
  br label %52, !dbg !1039

; <label>:52:                                     ; preds = %49, %44
  br label %53, !dbg !1043

; <label>:53:                                     ; preds = %52, %1
  %54 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1044
  %55 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %54, i32 0, i32 27, !dbg !1046
  %56 = load i32, i32* %55, align 4, !dbg !1046
  %57 = icmp eq i32 %56, 0, !dbg !1047
  br i1 %57, label %58, label %65, !dbg !1048

; <label>:58:                                     ; preds = %53
  %59 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1049
  %60 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %59, i32 0, i32 16, !dbg !1051
  %61 = load i32, i32* %60, align 8, !dbg !1051
  %62 = call i32 @g_source_remove(i32 %61), !dbg !1052
  %63 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1053
  %64 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %63, i32 0, i32 16, !dbg !1054
  store i32 -1, i32* %64, align 8, !dbg !1055
  br label %65, !dbg !1056

; <label>:65:                                     ; preds = %58, %53
  %66 = bitcast i32* %3 to i8*, !dbg !1057
  %67 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1058
  %68 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %67, i32 0, i32 26, !dbg !1059
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %68, i32 0, i32 0, !dbg !1057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %69, i64 4, i32 4, i1 false), !dbg !1057
  %70 = load i32, i32* %3, align 4, !dbg !1060
  %71 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1062
  %72 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %71, i32 0, i32 18, !dbg !1063
  %73 = load i64, i64* %72, align 8, !dbg !1063
  %74 = and i64 %73, 4294967295, !dbg !1064
  %75 = trunc i64 %74 to i32, !dbg !1062
  %76 = call i32 @htonl(i32 %75) #1, !dbg !1065
  %77 = icmp ne i32 %70, %76, !dbg !1066
  br i1 %77, label %78, label %80, !dbg !1067

; <label>:78:                                     ; preds = %65
  %79 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1068
  call void @dcc_get_send_received(%struct.GET_DCC_REC* %79), !dbg !1069
  br label %80, !dbg !1069

; <label>:80:                                     ; preds = %78, %65
  ret void, !dbg !1070
}

; Function Attrs: nounwind uwtable
define void @sig_dccget_connected(%struct.GET_DCC_REC*) #0 !dbg !1071 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1072, metadata !868), !dbg !1073
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1074, metadata !868), !dbg !1110
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1111, metadata !868), !dbg !1112
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1113, metadata !868), !dbg !1114
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1115, metadata !868), !dbg !1116
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1117, metadata !868), !dbg !1118
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1119, metadata !868), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1121, metadata !868), !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1123, metadata !868), !dbg !1124
  %12 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1125
  %13 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %12, i32 0, i32 30, !dbg !1127
  %14 = load i8, i8* %13, align 8, !dbg !1127
  %15 = lshr i8 %14, 1, !dbg !1127
  %16 = and i8 %15, 1, !dbg !1127
  %17 = zext i8 %16 to i32, !dbg !1127
  %18 = icmp ne i32 %17, 0, !dbg !1125
  br i1 %18, label %37, label %19, !dbg !1128

; <label>:19:                                     ; preds = %1
  %20 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1129
  %21 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %20, i32 0, i32 13, !dbg !1132
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %21, align 8, !dbg !1132
  %23 = call i32 @net_geterror(%struct._GIOChannel* %22), !dbg !1133
  %24 = icmp ne i32 %23, 0, !dbg !1134
  br i1 %24, label %25, label %30, !dbg !1135

; <label>:25:                                     ; preds = %19
  %26 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1136
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.GET_DCC_REC* %26), !dbg !1138
  %28 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1139
  %29 = bitcast %struct.GET_DCC_REC* %28 to %struct.DCC_REC*, !dbg !1140
  call void @dcc_destroy(%struct.DCC_REC* %29), !dbg !1141
  br label %225, !dbg !1142

; <label>:30:                                     ; preds = %19
  %31 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1143
  %32 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %31, i32 0, i32 14, !dbg !1144
  %33 = load i32, i32* %32, align 8, !dbg !1144
  %34 = call i32 @g_source_remove(i32 %33), !dbg !1145
  %35 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1146
  %36 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %35, i32 0, i32 14, !dbg !1147
  store i32 -1, i32* %36, align 8, !dbg !1148
  br label %37, !dbg !1149

; <label>:37:                                     ; preds = %30, %1
  %38 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1150
  %39 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %38, i32 0, i32 29, !dbg !1151
  %40 = load i8*, i8** %39, align 8, !dbg !1151
  call void @g_free(i8* %40), !dbg !1152
  %41 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1153
  %42 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %41, i32 0, i32 9, !dbg !1154
  %43 = load i8*, i8** %42, align 8, !dbg !1154
  %44 = call i8* @dcc_get_download_path(i8* %43), !dbg !1155
  %45 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1156
  %46 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %45, i32 0, i32 29, !dbg !1157
  store i8* %44, i8** %46, align 8, !dbg !1158
  %47 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1159
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.GET_DCC_REC* %47), !dbg !1160
  %49 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1161
  %50 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %49, i32 0, i32 29, !dbg !1163
  %51 = load i8*, i8** %50, align 8, !dbg !1163
  %52 = call i32 @stat(i8* %51, %struct.stat* %3) #7, !dbg !1164
  %53 = icmp eq i32 %52, 0, !dbg !1165
  br i1 %53, label %54, label %70, !dbg !1166

; <label>:54:                                     ; preds = %37
  %55 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1167
  %56 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %55, i32 0, i32 28, !dbg !1168
  %57 = load i32, i32* %56, align 8, !dbg !1168
  %58 = icmp eq i32 %57, 1, !dbg !1169
  br i1 %58, label %59, label %70, !dbg !1170

; <label>:59:                                     ; preds = %54
  %60 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1172
  %61 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %60, i32 0, i32 29, !dbg !1174
  %62 = load i8*, i8** %61, align 8, !dbg !1174
  %63 = call i8* @dcc_get_rename_file(i8* %62), !dbg !1175
  store i8* %63, i8** %4, align 8, !dbg !1176
  %64 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1177
  %65 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %64, i32 0, i32 29, !dbg !1178
  %66 = load i8*, i8** %65, align 8, !dbg !1178
  call void @g_free(i8* %66), !dbg !1179
  %67 = load i8*, i8** %4, align 8, !dbg !1180
  %68 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1181
  %69 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %68, i32 0, i32 29, !dbg !1182
  store i8* %67, i8** %69, align 8, !dbg !1183
  br label %70, !dbg !1184

; <label>:70:                                     ; preds = %59, %54, %37
  %71 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1185
  %72 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %71, i32 0, i32 28, !dbg !1187
  %73 = load i32, i32* %72, align 8, !dbg !1187
  %74 = icmp ne i32 %73, 3, !dbg !1188
  br i1 %74, label %75, label %173, !dbg !1189

; <label>:75:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1190, metadata !868), !dbg !1192
  %76 = call i32 @settings_get_int(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)), !dbg !1193
  %77 = call i32 @octal2dec(i32 %76), !dbg !1194
  store i32 %77, i32* %11, align 4, !dbg !1192
  %78 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1196
  %79 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %78, i32 0, i32 29, !dbg !1197
  %80 = load i8*, i8** %79, align 8, !dbg !1197
  %81 = call i32 @unlink(i8* %80) #7, !dbg !1198
  %82 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1199
  %83 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %82, i32 0, i32 29, !dbg !1200
  %84 = load i8*, i8** %83, align 8, !dbg !1200
  %85 = call noalias i8* (i8*, ...) @g_strconcat(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !1201
  store i8* %85, i8** %5, align 8, !dbg !1202
  %86 = call i32 @umask(i32 63) #7, !dbg !1203
  store i32 %86, i32* %10, align 4, !dbg !1204
  %87 = load i8*, i8** %5, align 8, !dbg !1205
  %88 = call i32 @mkstemp(i8* %87), !dbg !1206
  store i32 %88, i32* %9, align 4, !dbg !1207
  %89 = load i32, i32* %10, align 4, !dbg !1208
  %90 = call i32 @umask(i32 %89) #7, !dbg !1209
  %91 = load i32, i32* %9, align 4, !dbg !1210
  %92 = icmp eq i32 %91, -1, !dbg !1212
  br i1 %92, label %93, label %94, !dbg !1213

; <label>:93:                                     ; preds = %75
  store i32 -1, i32* %7, align 4, !dbg !1214
  br label %104, !dbg !1215

; <label>:94:                                     ; preds = %75
  %95 = load i32, i32* %9, align 4, !dbg !1216
  %96 = load i32, i32* %11, align 4, !dbg !1219
  %97 = call i32 @fchmod(i32 %95, i32 %96) #7, !dbg !1220
  %98 = icmp ne i32 %97, 0, !dbg !1221
  br i1 %98, label %99, label %103, !dbg !1222

; <label>:99:                                     ; preds = %94
  %100 = call i32* @__errno_location() #1, !dbg !1223
  %101 = load i32, i32* %100, align 4, !dbg !1224
  %102 = call i8* @strerror(i32 %101) #7, !dbg !1225
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i8* %102), !dbg !1227
  br label %103, !dbg !1224

; <label>:103:                                    ; preds = %99, %94
  store i32 0, i32* %7, align 4, !dbg !1229
  br label %104

; <label>:104:                                    ; preds = %103, %93
  %105 = load i32, i32* %9, align 4, !dbg !1230
  %106 = call i32 @close(i32 %105), !dbg !1231
  %107 = load i32, i32* %7, align 4, !dbg !1232
  %108 = icmp ne i32 %107, -1, !dbg !1234
  br i1 %108, label %109, label %140, !dbg !1235

; <label>:109:                                    ; preds = %104
  %110 = load i8*, i8** %5, align 8, !dbg !1236
  %111 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1238
  %112 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %111, i32 0, i32 29, !dbg !1239
  %113 = load i8*, i8** %112, align 8, !dbg !1239
  %114 = call i32 @link(i8* %110, i8* %113) #7, !dbg !1240
  store i32 %114, i32* %7, align 4, !dbg !1241
  %115 = load i32, i32* %7, align 4, !dbg !1242
  %116 = icmp eq i32 %115, -1, !dbg !1244
  br i1 %116, label %117, label %139, !dbg !1245

; <label>:117:                                    ; preds = %109
  %118 = call i32* @__errno_location() #1, !dbg !1246
  %119 = load i32, i32* %118, align 4, !dbg !1247
  %120 = icmp eq i32 %119, 1, !dbg !1248
  br i1 %120, label %133, label %121, !dbg !1249

; <label>:121:                                    ; preds = %117
  %122 = call i32* @__errno_location() #1, !dbg !1250
  %123 = load i32, i32* %122, align 4, !dbg !1251
  %124 = icmp eq i32 %123, 38, !dbg !1252
  br i1 %124, label %133, label %125, !dbg !1253

; <label>:125:                                    ; preds = %121
  %126 = call i32* @__errno_location() #1, !dbg !1254
  %127 = load i32, i32* %126, align 4, !dbg !1256
  %128 = icmp eq i32 %127, 13, !dbg !1257
  br i1 %128, label %133, label %129, !dbg !1258

; <label>:129:                                    ; preds = %125
  %130 = call i32* @__errno_location() #1, !dbg !1259
  %131 = load i32, i32* %130, align 4, !dbg !1260
  %132 = icmp eq i32 %131, 95, !dbg !1261
  br i1 %132, label %133, label %139, !dbg !1262

; <label>:133:                                    ; preds = %129, %125, %121, %117
  %134 = load i8*, i8** %5, align 8, !dbg !1264
  %135 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1266
  %136 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %135, i32 0, i32 29, !dbg !1267
  %137 = load i8*, i8** %136, align 8, !dbg !1267
  %138 = call i32 @rename(i8* %134, i8* %137) #7, !dbg !1268
  store i32 %138, i32* %7, align 4, !dbg !1269
  br label %139, !dbg !1270

; <label>:139:                                    ; preds = %133, %129, %109
  br label %140, !dbg !1271

; <label>:140:                                    ; preds = %139, %104
  %141 = load i32, i32* %7, align 4, !dbg !1272
  %142 = icmp eq i32 %141, -1, !dbg !1273
  br i1 %142, label %143, label %144, !dbg !1272

; <label>:143:                                    ; preds = %140
  br label %149, !dbg !1274

; <label>:144:                                    ; preds = %140
  %145 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1275
  %146 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %145, i32 0, i32 29, !dbg !1276
  %147 = load i8*, i8** %146, align 8, !dbg !1276
  %148 = call i32 (i8*, i32, ...) @open(i8* %147, i32 513), !dbg !1277
  br label %149, !dbg !1278

; <label>:149:                                    ; preds = %144, %143
  %150 = phi i32 [ -1, %143 ], [ %148, %144 ], !dbg !1280
  %151 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1282
  %152 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %151, i32 0, i32 24, !dbg !1283
  store i32 %150, i32* %152, align 8, !dbg !1284
  %153 = call i32* @__errno_location() #1, !dbg !1285
  %154 = load i32, i32* %153, align 4, !dbg !1286
  store i32 %154, i32* %8, align 4, !dbg !1287
  %155 = load i8*, i8** %5, align 8, !dbg !1288
  %156 = call i32 @unlink(i8* %155) #7, !dbg !1289
  %157 = load i8*, i8** %5, align 8, !dbg !1290
  call void @g_free(i8* %157), !dbg !1291
  %158 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1292
  %159 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %158, i32 0, i32 24, !dbg !1294
  %160 = load i32, i32* %159, align 8, !dbg !1294
  %161 = icmp eq i32 %160, -1, !dbg !1295
  br i1 %161, label %162, label %172, !dbg !1296

; <label>:162:                                    ; preds = %149
  %163 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1297
  %164 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1299
  %165 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %164, i32 0, i32 29, !dbg !1300
  %166 = load i8*, i8** %165, align 8, !dbg !1300
  %167 = load i32, i32* %8, align 4, !dbg !1301
  %168 = call i8* @g_strerror(i32 %167) #1, !dbg !1302
  %169 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 3, %struct.GET_DCC_REC* %163, i8* %166, i8* %168), !dbg !1303
  %170 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1304
  %171 = bitcast %struct.GET_DCC_REC* %170 to %struct.DCC_REC*, !dbg !1305
  call void @dcc_destroy(%struct.DCC_REC* %171), !dbg !1306
  br label %225, !dbg !1307

; <label>:172:                                    ; preds = %149
  br label %173, !dbg !1308

; <label>:173:                                    ; preds = %172, %70
  %174 = call i64 @time(i64* null) #7, !dbg !1309
  %175 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1310
  %176 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %175, i32 0, i32 17, !dbg !1311
  store i64 %174, i64* %176, align 8, !dbg !1312
  %177 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1313
  %178 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %177, i32 0, i32 22, !dbg !1315
  %179 = load i64, i64* %178, align 8, !dbg !1315
  %180 = icmp eq i64 %179, 0, !dbg !1316
  br i1 %180, label %181, label %184, !dbg !1317

; <label>:181:                                    ; preds = %173
  %182 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1318
  %183 = bitcast %struct.GET_DCC_REC* %182 to %struct.DCC_REC*, !dbg !1320
  call void @dcc_close(%struct.DCC_REC* %183), !dbg !1321
  br label %225, !dbg !1322

; <label>:184:                                    ; preds = %173
  %185 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1323
  %186 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %185, i32 0, i32 13, !dbg !1324
  %187 = load %struct._GIOChannel*, %struct._GIOChannel** %186, align 8, !dbg !1324
  %188 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1325
  %189 = bitcast %struct.GET_DCC_REC* %188 to i8*, !dbg !1325
  %190 = call i32 @g_input_add(%struct._GIOChannel* %187, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dccget_receive to void (i8*, %struct._GIOChannel*, i32)*), i8* %189), !dbg !1326
  %191 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1327
  %192 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %191, i32 0, i32 15, !dbg !1328
  store i32 %190, i32* %192, align 4, !dbg !1329
  %193 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1330
  %194 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.GET_DCC_REC* %193), !dbg !1331
  %195 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1332
  %196 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %195, i32 0, i32 30, !dbg !1334
  %197 = load i8, i8* %196, align 8, !dbg !1334
  %198 = lshr i8 %197, 1, !dbg !1334
  %199 = and i8 %198, 1, !dbg !1334
  %200 = zext i8 %199 to i32, !dbg !1334
  %201 = icmp ne i32 %200, 0, !dbg !1332
  br i1 %201, label %202, label %225, !dbg !1335

; <label>:202:                                    ; preds = %184
  %203 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1336
  %204 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %203, i32 0, i32 3, !dbg !1338
  %205 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %204, align 8, !dbg !1338
  %206 = icmp ne %struct._IRC_SERVER_REC* %205, null, !dbg !1336
  br i1 %206, label %207, label %213, !dbg !1336

; <label>:207:                                    ; preds = %202
  %208 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1339
  %209 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %208, i32 0, i32 3, !dbg !1341
  %210 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %209, align 8, !dbg !1341
  %211 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %210, i32 0, i32 7, !dbg !1342
  %212 = load i8*, i8** %211, align 8, !dbg !1342
  br label %214, !dbg !1343

; <label>:213:                                    ; preds = %202
  br label %214, !dbg !1344

; <label>:214:                                    ; preds = %213, %207
  %215 = phi i8* [ %212, %207 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), %213 ], !dbg !1346
  %216 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* %215, i32 0), !dbg !1348
  store i8* %216, i8** %6, align 8, !dbg !1349
  %217 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1350
  %218 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %217, i32 0, i32 13, !dbg !1351
  %219 = load %struct._GIOChannel*, %struct._GIOChannel** %218, align 8, !dbg !1351
  %220 = load i8*, i8** %6, align 8, !dbg !1352
  %221 = load i8*, i8** %6, align 8, !dbg !1353
  %222 = call i64 @strlen(i8* %221) #8, !dbg !1354
  %223 = trunc i64 %222 to i32, !dbg !1354
  %224 = call i32 @net_transmit(%struct._GIOChannel* %219, i8* %220, i32 %223), !dbg !1355
  br label %225, !dbg !1356

; <label>:225:                                    ; preds = %25, %162, %181, %214, %184
  ret void, !dbg !1357
}

declare i32 @net_geterror(%struct._GIOChannel*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @dcc_destroy(%struct.DCC_REC*) #2

declare i32 @g_source_remove(i32) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #5

; Function Attrs: nounwind uwtable
define internal i8* @dcc_get_rename_file(i8*) #0 !dbg !1358 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GString*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1359, metadata !868), !dbg !1360
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1361, metadata !868), !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1363, metadata !868), !dbg !1364
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1365, metadata !868), !dbg !1366
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1367, metadata !868), !dbg !1368
  %7 = call %struct._GString* @g_string_new(i8* null), !dbg !1369
  store %struct._GString* %7, %struct._GString** %3, align 8, !dbg !1370
  store i32 1, i32* %6, align 4, !dbg !1371
  br label %8, !dbg !1372, !llvm.loop !1373

; <label>:8:                                      ; preds = %14, %1
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1374
  %10 = load i8*, i8** %2, align 8, !dbg !1376
  %11 = load i32, i32* %6, align 4, !dbg !1377
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* %10, i32 %11), !dbg !1378
  %12 = load i32, i32* %6, align 4, !dbg !1379
  %13 = add nsw i32 %12, 1, !dbg !1379
  store i32 %13, i32* %6, align 4, !dbg !1379
  br label %14, !dbg !1380

; <label>:14:                                     ; preds = %8
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1381
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 0, !dbg !1383
  %17 = load i8*, i8** %16, align 8, !dbg !1383
  %18 = call i32 @stat(i8* %17, %struct.stat* %4) #7, !dbg !1384
  %19 = icmp eq i32 %18, 0, !dbg !1385
  br i1 %19, label %8, label %20, !dbg !1386, !llvm.loop !1373

; <label>:20:                                     ; preds = %14
  %21 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1387
  %22 = getelementptr inbounds %struct._GString, %struct._GString* %21, i32 0, i32 0, !dbg !1388
  %23 = load i8*, i8** %22, align 8, !dbg !1388
  store i8* %23, i8** %5, align 8, !dbg !1389
  %24 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1390
  %25 = call i8* @g_string_free(%struct._GString* %24, i32 0), !dbg !1391
  %26 = load i8*, i8** %5, align 8, !dbg !1392
  ret i8* %26, !dbg !1393
}

declare i32 @octal2dec(i32) #2

declare i32 @settings_get_int(i8*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #5

; Function Attrs: nounwind
declare i32 @umask(i32) #5

declare i32 @mkstemp(i8*) #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #5

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #5

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare void @dcc_close(%struct.DCC_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dccget_receive(%struct.GET_DCC_REC*) #0 !dbg !1394 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1395, metadata !868), !dbg !1396
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1397, metadata !868), !dbg !1398
  %4 = load i8*, i8** @dcc_get_recv_buffer, align 8, !dbg !1399
  %5 = icmp eq i8* %4, null, !dbg !1401
  br i1 %5, label %6, label %8, !dbg !1402

; <label>:6:                                      ; preds = %1
  %7 = call noalias i8* @g_malloc(i64 32768), !dbg !1403
  store i8* %7, i8** @dcc_get_recv_buffer, align 8, !dbg !1405
  br label %8, !dbg !1406

; <label>:8:                                      ; preds = %6, %1
  br label %9, !dbg !1407

; <label>:9:                                      ; preds = %43, %8
  %10 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1408
  %11 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %10, i32 0, i32 13, !dbg !1412
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %11, align 8, !dbg !1412
  %13 = load i8*, i8** @dcc_get_recv_buffer, align 8, !dbg !1413
  %14 = call i32 @net_receive(%struct._GIOChannel* %12, i8* %13, i32 32768), !dbg !1414
  store i32 %14, i32* %3, align 4, !dbg !1415
  %15 = load i32, i32* %3, align 4, !dbg !1416
  %16 = icmp eq i32 %15, 0, !dbg !1418
  br i1 %16, label %17, label %18, !dbg !1419

; <label>:17:                                     ; preds = %9
  br label %50, !dbg !1420

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %3, align 4, !dbg !1422
  %20 = icmp slt i32 %19, 0, !dbg !1424
  br i1 %20, label %21, label %24, !dbg !1425

; <label>:21:                                     ; preds = %18
  %22 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1426
  %23 = bitcast %struct.GET_DCC_REC* %22 to %struct.DCC_REC*, !dbg !1428
  call void @dcc_close(%struct.DCC_REC* %23), !dbg !1429
  br label %60, !dbg !1430

; <label>:24:                                     ; preds = %18
  %25 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1431
  %26 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %25, i32 0, i32 24, !dbg !1433
  %27 = load i32, i32* %26, align 8, !dbg !1433
  %28 = load i8*, i8** @dcc_get_recv_buffer, align 8, !dbg !1434
  %29 = load i32, i32* %3, align 4, !dbg !1435
  %30 = sext i32 %29 to i64, !dbg !1435
  %31 = call i64 @write(i32 %27, i8* %28, i64 %30), !dbg !1436
  %32 = load i32, i32* %3, align 4, !dbg !1437
  %33 = sext i32 %32 to i64, !dbg !1437
  %34 = icmp ne i64 %31, %33, !dbg !1438
  br i1 %34, label %35, label %43, !dbg !1439

; <label>:35:                                     ; preds = %24
  %36 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1440
  %37 = call i32* @__errno_location() #1, !dbg !1442
  %38 = load i32, i32* %37, align 4, !dbg !1443
  %39 = call i8* @g_strerror(i32 %38) #1, !dbg !1444
  %40 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.GET_DCC_REC* %36, i8* %39), !dbg !1446
  %41 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1447
  %42 = bitcast %struct.GET_DCC_REC* %41 to %struct.DCC_REC*, !dbg !1448
  call void @dcc_close(%struct.DCC_REC* %42), !dbg !1449
  br label %60, !dbg !1450

; <label>:43:                                     ; preds = %24
  %44 = load i32, i32* %3, align 4, !dbg !1451
  %45 = sext i32 %44 to i64, !dbg !1451
  %46 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1452
  %47 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %46, i32 0, i32 18, !dbg !1453
  %48 = load i64, i64* %47, align 8, !dbg !1454
  %49 = add i64 %48, %45, !dbg !1454
  store i64 %49, i64* %47, align 8, !dbg !1454
  br label %9, !dbg !1455, !llvm.loop !1457

; <label>:50:                                     ; preds = %17
  %51 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1458
  %52 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %51, i32 0, i32 27, !dbg !1460
  %53 = load i32, i32* %52, align 4, !dbg !1460
  %54 = icmp sle i32 %53, 0, !dbg !1461
  br i1 %54, label %55, label %57, !dbg !1462

; <label>:55:                                     ; preds = %50
  %56 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1463
  call void @dcc_get_send_received(%struct.GET_DCC_REC* %56), !dbg !1464
  br label %57, !dbg !1464

; <label>:57:                                     ; preds = %55, %50
  %58 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1465
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct.GET_DCC_REC* %58), !dbg !1466
  br label %60, !dbg !1467

; <label>:60:                                     ; preds = %57, %35, %21
  ret void, !dbg !1468
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define void @dcc_get_connect(%struct.GET_DCC_REC*) #0 !dbg !1470 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1471, metadata !868), !dbg !1472
  %3 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1473
  %4 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %3, i32 0, i32 28, !dbg !1475
  %5 = load i32, i32* %4, align 8, !dbg !1475
  %6 = icmp eq i32 %5, 0, !dbg !1476
  br i1 %6, label %7, label %13, !dbg !1477

; <label>:7:                                      ; preds = %1
  %8 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)), !dbg !1478
  %9 = icmp ne i32 %8, 0, !dbg !1478
  %10 = select i1 %9, i32 1, i32 2, !dbg !1478
  %11 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1480
  %12 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %11, i32 0, i32 28, !dbg !1481
  store i32 %10, i32* %12, align 8, !dbg !1482
  br label %13, !dbg !1483

; <label>:13:                                     ; preds = %7, %1
  %14 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1484
  %15 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %14, i32 0, i32 30, !dbg !1486
  %16 = load i8, i8* %15, align 8, !dbg !1486
  %17 = lshr i8 %16, 1, !dbg !1486
  %18 = and i8 %17, 1, !dbg !1486
  %19 = zext i8 %18 to i32, !dbg !1486
  %20 = icmp ne i32 %19, 0, !dbg !1484
  br i1 %20, label %21, label %23, !dbg !1487

; <label>:21:                                     ; preds = %13
  %22 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1488
  call void @sig_dccget_connected(%struct.GET_DCC_REC* %22), !dbg !1490
  br label %50, !dbg !1491

; <label>:23:                                     ; preds = %13
  %24 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1492
  %25 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %24, i32 0, i32 10, !dbg !1493
  %26 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1494
  %27 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %26, i32 0, i32 12, !dbg !1495
  %28 = load i32, i32* %27, align 4, !dbg !1495
  %29 = call %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR* %25, i32 %28), !dbg !1496
  %30 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1497
  %31 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %30, i32 0, i32 13, !dbg !1498
  store %struct._GIOChannel* %29, %struct._GIOChannel** %31, align 8, !dbg !1499
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1500
  %33 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %32, i32 0, i32 13, !dbg !1502
  %34 = load %struct._GIOChannel*, %struct._GIOChannel** %33, align 8, !dbg !1502
  %35 = icmp ne %struct._GIOChannel* %34, null, !dbg !1503
  br i1 %35, label %36, label %45, !dbg !1504

; <label>:36:                                     ; preds = %23
  %37 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1505
  %38 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %37, i32 0, i32 13, !dbg !1507
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %38, align 8, !dbg !1507
  %40 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1508
  %41 = bitcast %struct.GET_DCC_REC* %40 to i8*, !dbg !1508
  %42 = call i32 @g_input_add(%struct._GIOChannel* %39, i32 3, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dccget_connected to void (i8*, %struct._GIOChannel*, i32)*), i8* %41), !dbg !1509
  %43 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1510
  %44 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %43, i32 0, i32 14, !dbg !1511
  store i32 %42, i32* %44, align 8, !dbg !1512
  br label %50, !dbg !1513

; <label>:45:                                     ; preds = %23
  %46 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1514
  %47 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.GET_DCC_REC* %46), !dbg !1516
  %48 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1517
  %49 = bitcast %struct.GET_DCC_REC* %48 to %struct.DCC_REC*, !dbg !1518
  call void @dcc_destroy(%struct.DCC_REC* %49), !dbg !1519
  br label %50

; <label>:50:                                     ; preds = %21, %45, %36
  ret void, !dbg !1520
}

declare i32 @settings_get_bool(i8*) #2

declare %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR*, i32) #2

; Function Attrs: nounwind uwtable
define void @dcc_get_passive(%struct.GET_DCC_REC*) #0 !dbg !1521 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct._IPADDR, align 4
  %5 = alloca i32, align 4
  %6 = alloca [46 x i8], align 16
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1522, metadata !868), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !1524, metadata !868), !dbg !1525
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %4, metadata !1526, metadata !868), !dbg !1527
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1528, metadata !868), !dbg !1529
  call void @llvm.dbg.declare(metadata [46 x i8]* %6, metadata !1530, metadata !868), !dbg !1531
  %7 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1532
  %8 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %7, i32 0, i32 3, !dbg !1533
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !1533
  %10 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %9, i32 0, i32 9, !dbg !1534
  %11 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %10, align 8, !dbg !1534
  %12 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %11), !dbg !1535
  %13 = call %struct._GIOChannel* @dcc_listen(%struct._GIOChannel* %12, %struct._IPADDR* %4, i32* %5), !dbg !1536
  store %struct._GIOChannel* %13, %struct._GIOChannel** %3, align 8, !dbg !1538
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1539
  %15 = icmp eq %struct._GIOChannel* %14, null, !dbg !1541
  br i1 %15, label %16, label %20, !dbg !1542

; <label>:16:                                     ; preds = %1
  br label %17, !dbg !1543, !llvm.loop !1544

; <label>:17:                                     ; preds = %16
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !1545
  call void @signal_stop(), !dbg !1548
  br label %50, !dbg !1550
                                                  ; No predecessors!
  br label %20, !dbg !1551

; <label>:20:                                     ; preds = %19, %1
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1553
  %22 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1554
  %23 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %22, i32 0, i32 13, !dbg !1555
  store %struct._GIOChannel* %21, %struct._GIOChannel** %23, align 8, !dbg !1556
  %24 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1557
  %25 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %24, i32 0, i32 13, !dbg !1558
  %26 = load %struct._GIOChannel*, %struct._GIOChannel** %25, align 8, !dbg !1558
  %27 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1559
  %28 = bitcast %struct.GET_DCC_REC* %27 to i8*, !dbg !1559
  %29 = call i32 @g_input_add(%struct._GIOChannel* %26, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_get_listen to void (i8*, %struct._GIOChannel*, i32)*), i8* %28), !dbg !1560
  %30 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1561
  %31 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %30, i32 0, i32 14, !dbg !1562
  store i32 %29, i32* %31, align 8, !dbg !1563
  %32 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !1564
  call void @dcc_ip2str(%struct._IPADDR* %4, i8* %32), !dbg !1565
  %33 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1566
  %34 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %33, i32 0, i32 3, !dbg !1567
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %34, align 8, !dbg !1567
  %36 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1568
  %37 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %36, i32 0, i32 6, !dbg !1569
  %38 = load i8*, i8** %37, align 8, !dbg !1569
  %39 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1570
  %40 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %39, i32 0, i32 9, !dbg !1571
  %41 = load i8*, i8** %40, align 8, !dbg !1571
  %42 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !1572
  %43 = load i32, i32* %5, align 4, !dbg !1573
  %44 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1574
  %45 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %44, i32 0, i32 22, !dbg !1575
  %46 = load i64, i64* %45, align 8, !dbg !1575
  %47 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1576
  %48 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %47, i32 0, i32 19, !dbg !1577
  %49 = load i32, i32* %48, align 8, !dbg !1577
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i8* %38, i8* %41, i8* %42, i32 %43, i64 %46, i32 %49), !dbg !1578
  br label %50, !dbg !1579

; <label>:50:                                     ; preds = %20, %17
  ret void, !dbg !1580
}

declare %struct._GIOChannel* @dcc_listen(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

declare void @signal_stop() #2

; Function Attrs: nounwind uwtable
define internal void @dcc_get_listen(%struct.GET_DCC_REC*) #0 !dbg !1581 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct._IPADDR, align 4
  %5 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1582, metadata !868), !dbg !1583
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !1584, metadata !868), !dbg !1585
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %4, metadata !1586, metadata !868), !dbg !1587
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1588, metadata !868), !dbg !1589
  %6 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1590
  %7 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %6, i32 0, i32 13, !dbg !1591
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1591
  %9 = call %struct._GIOChannel* @net_accept(%struct._GIOChannel* %8, %struct._IPADDR* %4, i32* %5), !dbg !1592
  store %struct._GIOChannel* %9, %struct._GIOChannel** %3, align 8, !dbg !1593
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1594
  %11 = icmp eq %struct._GIOChannel* %10, null, !dbg !1596
  br i1 %11, label %12, label %13, !dbg !1597

; <label>:12:                                     ; preds = %1
  br label %48, !dbg !1598

; <label>:13:                                     ; preds = %1
  %14 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1599
  %15 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %14, i32 0, i32 13, !dbg !1600
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %15, align 8, !dbg !1600
  call void @net_disconnect(%struct._GIOChannel* %16), !dbg !1601
  %17 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1602
  %18 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %17, i32 0, i32 14, !dbg !1603
  %19 = load i32, i32* %18, align 8, !dbg !1603
  %20 = call i32 @g_source_remove(i32 %19), !dbg !1604
  %21 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1605
  %22 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %21, i32 0, i32 14, !dbg !1606
  store i32 -1, i32* %22, align 8, !dbg !1607
  %23 = call i64 @time(i64* null) #7, !dbg !1608
  %24 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1609
  %25 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %24, i32 0, i32 17, !dbg !1610
  store i64 %23, i64* %25, align 8, !dbg !1611
  %26 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1612
  %27 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1613
  %28 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %27, i32 0, i32 13, !dbg !1614
  store %struct._GIOChannel* %26, %struct._GIOChannel** %28, align 8, !dbg !1615
  %29 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1616
  %30 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %29, i32 0, i32 10, !dbg !1617
  %31 = bitcast %struct._IPADDR* %30 to i8*, !dbg !1618
  %32 = bitcast %struct._IPADDR* %4 to i8*, !dbg !1618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 20, i32 4, i1 false), !dbg !1618
  %33 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1619
  %34 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %33, i32 0, i32 10, !dbg !1620
  %35 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1621
  %36 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %35, i32 0, i32 11, !dbg !1622
  %37 = getelementptr inbounds [46 x i8], [46 x i8]* %36, i32 0, i32 0, !dbg !1621
  %38 = call i32 @net_ip2host(%struct._IPADDR* %34, i8* %37), !dbg !1623
  %39 = load i32, i32* %5, align 4, !dbg !1624
  %40 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1625
  %41 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %40, i32 0, i32 12, !dbg !1626
  store i32 %39, i32* %41, align 4, !dbg !1627
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1628
  %43 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1629
  %44 = bitcast %struct.GET_DCC_REC* %43 to i8*, !dbg !1629
  %45 = call i32 @g_input_add(%struct._GIOChannel* %42, i32 3, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dccget_connected to void (i8*, %struct._GIOChannel*, i32)*), i8* %44), !dbg !1630
  %46 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1631
  %47 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %46, i32 0, i32 14, !dbg !1632
  store i32 %45, i32* %47, align 8, !dbg !1633
  br label %48, !dbg !1634

; <label>:48:                                     ; preds = %13, %12
  ret void, !dbg !1635
}

declare void @dcc_ip2str(%struct._IPADDR*, i8*) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @get_file_params_count(i8**, i32) #0 !dbg !1637 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1640, metadata !868), !dbg !1641
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1642, metadata !868), !dbg !1643
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1644, metadata !868), !dbg !1645
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1646, metadata !868), !dbg !1647
  %8 = load i8**, i8*** %4, align 8, !dbg !1648
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !1648
  %10 = load i8*, i8** %9, align 8, !dbg !1648
  %11 = load i8, i8* %10, align 1, !dbg !1650
  %12 = sext i8 %11 to i32, !dbg !1650
  %13 = icmp eq i32 %12, 34, !dbg !1651
  br i1 %13, label %14, label %102, !dbg !1652

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !dbg !1653
  br label %15, !dbg !1656

; <label>:15:                                     ; preds = %98, %14
  %16 = load i32, i32* %6, align 4, !dbg !1657
  %17 = load i32, i32* %5, align 4, !dbg !1660
  %18 = sub nsw i32 %17, 3, !dbg !1661
  %19 = icmp slt i32 %16, %18, !dbg !1662
  br i1 %19, label %20, label %101, !dbg !1663

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !1664
  %22 = sext i32 %21 to i64, !dbg !1667
  %23 = load i8**, i8*** %4, align 8, !dbg !1667
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !1667
  %25 = load i8*, i8** %24, align 8, !dbg !1667
  %26 = call i64 @strlen(i8* %25) #8, !dbg !1668
  %27 = icmp eq i64 %26, 0, !dbg !1669
  br i1 %27, label %28, label %29, !dbg !1670

; <label>:28:                                     ; preds = %20
  br label %98, !dbg !1671

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4, !dbg !1672
  %31 = sext i32 %30 to i64, !dbg !1674
  %32 = load i8**, i8*** %4, align 8, !dbg !1674
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31, !dbg !1674
  %34 = load i8*, i8** %33, align 8, !dbg !1674
  %35 = call i64 @strlen(i8* %34) #8, !dbg !1675
  %36 = sub i64 %35, 1, !dbg !1676
  %37 = load i32, i32* %6, align 4, !dbg !1677
  %38 = sext i32 %37 to i64, !dbg !1678
  %39 = load i8**, i8*** %4, align 8, !dbg !1678
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38, !dbg !1678
  %41 = load i8*, i8** %40, align 8, !dbg !1678
  %42 = getelementptr inbounds i8, i8* %41, i64 %36, !dbg !1678
  %43 = load i8, i8* %42, align 1, !dbg !1678
  %44 = sext i8 %43 to i32, !dbg !1678
  %45 = icmp eq i32 %44, 34, !dbg !1679
  br i1 %45, label %46, label %97, !dbg !1680

; <label>:46:                                     ; preds = %29
  %47 = load i32, i32* %6, align 4, !dbg !1681
  %48 = add nsw i32 %47, 1, !dbg !1682
  %49 = sext i32 %48 to i64, !dbg !1683
  %50 = load i8**, i8*** %4, align 8, !dbg !1683
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49, !dbg !1683
  %52 = load i8*, i8** %51, align 8, !dbg !1683
  %53 = call i32 @is_numeric(i8* %52, i8 signext 0), !dbg !1684
  %54 = icmp ne i32 %53, 0, !dbg !1684
  br i1 %54, label %64, label %55, !dbg !1685

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %6, align 4, !dbg !1686
  %57 = add nsw i32 %56, 1, !dbg !1688
  %58 = sext i32 %57 to i64, !dbg !1689
  %59 = load i8**, i8*** %4, align 8, !dbg !1689
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58, !dbg !1689
  %61 = load i8*, i8** %60, align 8, !dbg !1689
  %62 = call i32 @is_ipv6_address(i8* %61), !dbg !1690
  %63 = icmp ne i32 %62, 0, !dbg !1690
  br i1 %63, label %64, label %97, !dbg !1691

; <label>:64:                                     ; preds = %55, %46
  %65 = load i32, i32* %6, align 4, !dbg !1692
  %66 = add nsw i32 %65, 1, !dbg !1694
  %67 = add nsw i32 %66, 1, !dbg !1695
  %68 = sext i32 %67 to i64, !dbg !1696
  %69 = load i8**, i8*** %4, align 8, !dbg !1696
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68, !dbg !1696
  %71 = load i8*, i8** %70, align 8, !dbg !1696
  %72 = call i32 @is_numeric(i8* %71, i8 signext 0), !dbg !1697
  %73 = icmp ne i32 %72, 0, !dbg !1697
  br i1 %73, label %74, label %97, !dbg !1698

; <label>:74:                                     ; preds = %64
  %75 = load i32, i32* %6, align 4, !dbg !1699
  %76 = add nsw i32 %75, 1, !dbg !1701
  %77 = add nsw i32 %76, 1, !dbg !1702
  %78 = sext i32 %77 to i64, !dbg !1703
  %79 = load i8**, i8*** %4, align 8, !dbg !1703
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78, !dbg !1703
  %81 = load i8*, i8** %80, align 8, !dbg !1703
  %82 = call i64 @atol(i8* %81) #8, !dbg !1704
  %83 = icmp slt i64 %82, 65536, !dbg !1705
  br i1 %83, label %84, label %97, !dbg !1706

; <label>:84:                                     ; preds = %74
  %85 = load i32, i32* %6, align 4, !dbg !1707
  %86 = add nsw i32 %85, 1, !dbg !1709
  %87 = add nsw i32 %86, 2, !dbg !1710
  %88 = sext i32 %87 to i64, !dbg !1711
  %89 = load i8**, i8*** %4, align 8, !dbg !1711
  %90 = getelementptr inbounds i8*, i8** %89, i64 %88, !dbg !1711
  %91 = load i8*, i8** %90, align 8, !dbg !1711
  %92 = call i32 @is_numeric(i8* %91, i8 signext 0), !dbg !1712
  %93 = icmp ne i32 %92, 0, !dbg !1712
  br i1 %93, label %94, label %97, !dbg !1713

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* %6, align 4, !dbg !1715
  %96 = add nsw i32 %95, 1, !dbg !1716
  store i32 %96, i32* %3, align 4, !dbg !1717
  br label %161, !dbg !1717

; <label>:97:                                     ; preds = %84, %74, %64, %55, %29
  br label %98, !dbg !1718

; <label>:98:                                     ; preds = %97, %28
  %99 = load i32, i32* %6, align 4, !dbg !1719
  %100 = add nsw i32 %99, 1, !dbg !1719
  store i32 %100, i32* %6, align 4, !dbg !1719
  br label %15, !dbg !1721, !llvm.loop !1722

; <label>:101:                                    ; preds = %15
  br label %102, !dbg !1724

; <label>:102:                                    ; preds = %101, %2
  %103 = load i32, i32* %5, align 4, !dbg !1725
  %104 = sub nsw i32 %103, 3, !dbg !1726
  store i32 %104, i32* %7, align 4, !dbg !1727
  %105 = load i32, i32* %5, align 4, !dbg !1728
  %106 = sub nsw i32 %105, 3, !dbg !1730
  store i32 %106, i32* %6, align 4, !dbg !1731
  br label %107, !dbg !1732

; <label>:107:                                    ; preds = %156, %102
  %108 = load i32, i32* %6, align 4, !dbg !1733
  %109 = icmp sgt i32 %108, 0, !dbg !1736
  br i1 %109, label %110, label %159, !dbg !1737

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %6, align 4, !dbg !1738
  %112 = sext i32 %111 to i64, !dbg !1741
  %113 = load i8**, i8*** %4, align 8, !dbg !1741
  %114 = getelementptr inbounds i8*, i8** %113, i64 %112, !dbg !1741
  %115 = load i8*, i8** %114, align 8, !dbg !1741
  %116 = call i32 @is_numeric(i8* %115, i8 signext 0), !dbg !1742
  %117 = icmp ne i32 %116, 0, !dbg !1742
  br i1 %117, label %126, label %118, !dbg !1743

; <label>:118:                                    ; preds = %110
  %119 = load i32, i32* %6, align 4, !dbg !1744
  %120 = sext i32 %119 to i64, !dbg !1746
  %121 = load i8**, i8*** %4, align 8, !dbg !1746
  %122 = getelementptr inbounds i8*, i8** %121, i64 %120, !dbg !1746
  %123 = load i8*, i8** %122, align 8, !dbg !1746
  %124 = call i32 @is_ipv6_address(i8* %123), !dbg !1747
  %125 = icmp ne i32 %124, 0, !dbg !1747
  br i1 %125, label %126, label %155, !dbg !1748

; <label>:126:                                    ; preds = %118, %110
  %127 = load i32, i32* %6, align 4, !dbg !1749
  %128 = add nsw i32 %127, 1, !dbg !1751
  %129 = sext i32 %128 to i64, !dbg !1752
  %130 = load i8**, i8*** %4, align 8, !dbg !1752
  %131 = getelementptr inbounds i8*, i8** %130, i64 %129, !dbg !1752
  %132 = load i8*, i8** %131, align 8, !dbg !1752
  %133 = call i32 @is_numeric(i8* %132, i8 signext 0), !dbg !1753
  %134 = icmp ne i32 %133, 0, !dbg !1753
  br i1 %134, label %135, label %155, !dbg !1754

; <label>:135:                                    ; preds = %126
  %136 = load i32, i32* %6, align 4, !dbg !1755
  %137 = add nsw i32 %136, 1, !dbg !1757
  %138 = sext i32 %137 to i64, !dbg !1758
  %139 = load i8**, i8*** %4, align 8, !dbg !1758
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138, !dbg !1758
  %141 = load i8*, i8** %140, align 8, !dbg !1758
  %142 = call i64 @atol(i8* %141) #8, !dbg !1759
  %143 = icmp slt i64 %142, 65536, !dbg !1760
  br i1 %143, label %144, label %155, !dbg !1761

; <label>:144:                                    ; preds = %135
  %145 = load i32, i32* %6, align 4, !dbg !1762
  %146 = add nsw i32 %145, 2, !dbg !1764
  %147 = sext i32 %146 to i64, !dbg !1765
  %148 = load i8**, i8*** %4, align 8, !dbg !1765
  %149 = getelementptr inbounds i8*, i8** %148, i64 %147, !dbg !1765
  %150 = load i8*, i8** %149, align 8, !dbg !1765
  %151 = call i32 @is_numeric(i8* %150, i8 signext 0), !dbg !1766
  %152 = icmp ne i32 %151, 0, !dbg !1766
  br i1 %152, label %153, label %155, !dbg !1767

; <label>:153:                                    ; preds = %144
  %154 = load i32, i32* %6, align 4, !dbg !1768
  store i32 %154, i32* %7, align 4, !dbg !1769
  br label %155, !dbg !1770

; <label>:155:                                    ; preds = %153, %144, %135, %126, %118
  br label %156, !dbg !1771

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %6, align 4, !dbg !1772
  %158 = add nsw i32 %157, -1, !dbg !1772
  store i32 %158, i32* %6, align 4, !dbg !1772
  br label %107, !dbg !1774, !llvm.loop !1775

; <label>:159:                                    ; preds = %107
  %160 = load i32, i32* %7, align 4, !dbg !1777
  store i32 %160, i32* %3, align 4, !dbg !1778
  br label %161, !dbg !1778

; <label>:161:                                    ; preds = %159, %94
  %162 = load i32, i32* %3, align 4, !dbg !1779
  ret i32 %162, !dbg !1779
}

declare i32 @is_numeric(i8*, i8 signext) #2

declare i32 @is_ipv6_address(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #6

; Function Attrs: nounwind uwtable
define i8* @get_file_name(i8**, i32) #0 !dbg !1780 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1783, metadata !868), !dbg !1784
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1785, metadata !868), !dbg !1786
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1787, metadata !868), !dbg !1788
  %8 = load i8**, i8*** %3, align 8, !dbg !1789
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !1789
  %10 = load i8*, i8** %9, align 8, !dbg !1789
  %11 = call %struct._GString* @g_string_new(i8* %10), !dbg !1790
  store %struct._GString* %11, %struct._GString** %5, align 8, !dbg !1788
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1791, metadata !868), !dbg !1792
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1793, metadata !868), !dbg !1794
  store i32 1, i32* %7, align 4, !dbg !1795
  br label %12, !dbg !1797

; <label>:12:                                     ; preds = %26, %2
  %13 = load i32, i32* %7, align 4, !dbg !1798
  %14 = load i32, i32* %4, align 4, !dbg !1801
  %15 = icmp slt i32 %13, %14, !dbg !1802
  br i1 %15, label %16, label %29, !dbg !1803

; <label>:16:                                     ; preds = %12
  %17 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1804
  %18 = call %struct._GString* @g_string_append(%struct._GString* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !1806
  store %struct._GString* %18, %struct._GString** %5, align 8, !dbg !1807
  %19 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1808
  %20 = load i32, i32* %7, align 4, !dbg !1809
  %21 = sext i32 %20 to i64, !dbg !1810
  %22 = load i8**, i8*** %3, align 8, !dbg !1810
  %23 = getelementptr inbounds i8*, i8** %22, i64 %21, !dbg !1810
  %24 = load i8*, i8** %23, align 8, !dbg !1810
  %25 = call %struct._GString* @g_string_append(%struct._GString* %19, i8* %24), !dbg !1811
  store %struct._GString* %25, %struct._GString** %5, align 8, !dbg !1812
  br label %26, !dbg !1813

; <label>:26:                                     ; preds = %16
  %27 = load i32, i32* %7, align 4, !dbg !1814
  %28 = add nsw i32 %27, 1, !dbg !1814
  store i32 %28, i32* %7, align 4, !dbg !1814
  br label %12, !dbg !1816, !llvm.loop !1817

; <label>:29:                                     ; preds = %12
  %30 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1819
  %31 = getelementptr inbounds %struct._GString, %struct._GString* %30, i32 0, i32 0, !dbg !1820
  %32 = load i8*, i8** %31, align 8, !dbg !1820
  store i8* %32, i8** %6, align 8, !dbg !1821
  %33 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1822
  %34 = call i8* @g_string_free(%struct._GString* %33, i32 0), !dbg !1823
  %35 = load i8*, i8** %6, align 8, !dbg !1824
  ret i8* %35, !dbg !1825
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @cmd_dcc_receive(i8*, void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)*) #0 !dbg !1826 {
  %4 = alloca i8*, align 8
  %5 = alloca void (%struct.GET_DCC_REC*)*, align 8
  %6 = alloca void (%struct.GET_DCC_REC*)*, align 8
  %7 = alloca %struct.GET_DCC_REC*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.GET_DCC_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1831, metadata !868), !dbg !1832
  store void (%struct.GET_DCC_REC*)* %1, void (%struct.GET_DCC_REC*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (%struct.GET_DCC_REC*)** %5, metadata !1833, metadata !868), !dbg !1834
  store void (%struct.GET_DCC_REC*)* %2, void (%struct.GET_DCC_REC*)** %6, align 8
  call void @llvm.dbg.declare(metadata void (%struct.GET_DCC_REC*)** %6, metadata !1835, metadata !868), !dbg !1836
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %7, metadata !1837, metadata !868), !dbg !1838
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1839, metadata !868), !dbg !1840
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1841, metadata !868), !dbg !1842
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1843, metadata !868), !dbg !1844
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1845, metadata !868), !dbg !1846
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1847, metadata !868), !dbg !1848
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1849, metadata !868), !dbg !1850
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1851, metadata !868), !dbg !1852
  br label %16, !dbg !1853, !llvm.loop !1854

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %4, align 8, !dbg !1855
  %18 = icmp ne i8* %17, null, !dbg !1859
  br i1 %18, label %19, label %20, !dbg !1855

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1860

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cmd_dcc_receive, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !1863
  br label %130, !dbg !1866

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1867

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !1869
  %24 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %23, i8** %13, i32 270338, i8** %10, i8** %11), !dbg !1871
  %25 = icmp ne i32 %24, 0, !dbg !1871
  br i1 %25, label %27, label %26, !dbg !1872

; <label>:26:                                     ; preds = %22
  br label %130, !dbg !1873

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %10, align 8, !dbg !1874
  %29 = load i8, i8* %28, align 1, !dbg !1876
  %30 = sext i8 %29 to i32, !dbg !1876
  %31 = icmp eq i32 %30, 0, !dbg !1877
  br i1 %31, label %32, label %54, !dbg !1878

; <label>:32:                                     ; preds = %27
  %33 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1879
  %34 = call %struct.DCC_REC* @dcc_find_request_latest(i32 %33), !dbg !1881
  %35 = bitcast %struct.DCC_REC* %34 to i8*, !dbg !1883
  %36 = call i8* @module_check_cast_module(i8* %35, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1884
  %37 = bitcast i8* %36 to %struct.GET_DCC_REC*, !dbg !1886
  store %struct.GET_DCC_REC* %37, %struct.GET_DCC_REC** %7, align 8, !dbg !1887
  %38 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1888
  %39 = icmp ne %struct.GET_DCC_REC* %38, null, !dbg !1890
  br i1 %39, label %40, label %52, !dbg !1891

; <label>:40:                                     ; preds = %32
  %41 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1892
  %42 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %41, i32 0, i32 19, !dbg !1895
  %43 = load i32, i32* %42, align 8, !dbg !1895
  %44 = icmp sge i32 %43, 0, !dbg !1896
  br i1 %44, label %48, label %45, !dbg !1897

; <label>:45:                                     ; preds = %40
  %46 = load void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)** %5, align 8, !dbg !1898
  %47 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1899
  call void %46(%struct.GET_DCC_REC* %47), !dbg !1898
  br label %51, !dbg !1898

; <label>:48:                                     ; preds = %40
  %49 = load void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)** %6, align 8, !dbg !1900
  %50 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1901
  call void %49(%struct.GET_DCC_REC* %50), !dbg !1900
  br label %51

; <label>:51:                                     ; preds = %48, %45
  br label %52, !dbg !1902

; <label>:52:                                     ; preds = %51, %32
  %53 = load i8*, i8** %13, align 8, !dbg !1903
  call void @cmd_params_free(i8* %53), !dbg !1904
  br label %130, !dbg !1905

; <label>:54:                                     ; preds = %27
  %55 = call i8* @cmd_get_quoted_param(i8** %11), !dbg !1906
  store i8* %55, i8** %12, align 8, !dbg !1907
  store i32 0, i32* %14, align 4, !dbg !1908
  %56 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1909
  store %struct._GSList* %56, %struct._GSList** %8, align 8, !dbg !1911
  br label %57, !dbg !1912

; <label>:57:                                     ; preds = %120, %54
  %58 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1913
  %59 = icmp ne %struct._GSList* %58, null, !dbg !1916
  br i1 %59, label %60, label %122, !dbg !1917

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %15, metadata !1918, metadata !868), !dbg !1920
  %61 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1921
  %62 = getelementptr inbounds %struct._GSList, %struct._GSList* %61, i32 0, i32 0, !dbg !1922
  %63 = load i8*, i8** %62, align 8, !dbg !1922
  %64 = bitcast i8* %63 to %struct.GET_DCC_REC*, !dbg !1921
  store %struct.GET_DCC_REC* %64, %struct.GET_DCC_REC** %15, align 8, !dbg !1920
  %65 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1923
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 1, !dbg !1924
  %67 = load %struct._GSList*, %struct._GSList** %66, align 8, !dbg !1924
  store %struct._GSList* %67, %struct._GSList** %9, align 8, !dbg !1925
  %68 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1926
  %69 = bitcast %struct.GET_DCC_REC* %68 to i8*, !dbg !1926
  %70 = call i8* @module_check_cast_module(i8* %69, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1928
  %71 = bitcast i8* %70 to %struct.GET_DCC_REC*, !dbg !1929
  %72 = icmp ne %struct.GET_DCC_REC* %71, null, !dbg !1929
  br i1 %72, label %73, label %74, !dbg !1930

; <label>:73:                                     ; preds = %60
  br i1 false, label %119, label %75, !dbg !1931

; <label>:74:                                     ; preds = %60
  br i1 false, label %75, label %119, !dbg !1933

; <label>:75:                                     ; preds = %74, %73
  %76 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1935
  %77 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %76, i32 0, i32 6, !dbg !1937
  %78 = load i8*, i8** %77, align 8, !dbg !1937
  %79 = load i8*, i8** %10, align 8, !dbg !1938
  %80 = call i32 @g_ascii_strcasecmp(i8* %78, i8* %79), !dbg !1939
  %81 = icmp eq i32 %80, 0, !dbg !1940
  br i1 %81, label %82, label %119, !dbg !1941

; <label>:82:                                     ; preds = %75
  %83 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1942
  %84 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %83, i32 0, i32 13, !dbg !1943
  %85 = load %struct._GIOChannel*, %struct._GIOChannel** %84, align 8, !dbg !1943
  %86 = icmp eq %struct._GIOChannel* %85, null, !dbg !1944
  br i1 %86, label %95, label %87, !dbg !1945

; <label>:87:                                     ; preds = %82
  %88 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1946
  %89 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %88, i32 0, i32 30, !dbg !1947
  %90 = load i8, i8* %89, align 8, !dbg !1947
  %91 = lshr i8 %90, 1, !dbg !1947
  %92 = and i8 %91, 1, !dbg !1947
  %93 = zext i8 %92 to i32, !dbg !1947
  %94 = icmp ne i32 %93, 0, !dbg !1946
  br i1 %94, label %95, label %119, !dbg !1948

; <label>:95:                                     ; preds = %87, %82
  %96 = load i8*, i8** %12, align 8, !dbg !1949
  %97 = load i8, i8* %96, align 1, !dbg !1950
  %98 = sext i8 %97 to i32, !dbg !1950
  %99 = icmp eq i32 %98, 0, !dbg !1951
  br i1 %99, label %107, label %100, !dbg !1952

; <label>:100:                                    ; preds = %95
  %101 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1953
  %102 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %101, i32 0, i32 9, !dbg !1954
  %103 = load i8*, i8** %102, align 8, !dbg !1954
  %104 = load i8*, i8** %12, align 8, !dbg !1955
  %105 = call i32 @g_strcmp0(i8* %103, i8* %104), !dbg !1956
  %106 = icmp eq i32 %105, 0, !dbg !1957
  br i1 %106, label %107, label %119, !dbg !1958

; <label>:107:                                    ; preds = %100, %95
  store i32 1, i32* %14, align 4, !dbg !1960
  %108 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1962
  %109 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %108, i32 0, i32 19, !dbg !1964
  %110 = load i32, i32* %109, align 8, !dbg !1964
  %111 = icmp sge i32 %110, 0, !dbg !1965
  br i1 %111, label %115, label %112, !dbg !1966

; <label>:112:                                    ; preds = %107
  %113 = load void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)** %5, align 8, !dbg !1967
  %114 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1968
  call void %113(%struct.GET_DCC_REC* %114), !dbg !1967
  br label %118, !dbg !1967

; <label>:115:                                    ; preds = %107
  %116 = load void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)** %6, align 8, !dbg !1969
  %117 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %15, align 8, !dbg !1970
  call void %116(%struct.GET_DCC_REC* %117), !dbg !1969
  br label %118

; <label>:118:                                    ; preds = %115, %112
  br label %119, !dbg !1971

; <label>:119:                                    ; preds = %118, %100, %87, %75, %74, %73
  br label %120, !dbg !1972

; <label>:120:                                    ; preds = %119
  %121 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1973
  store %struct._GSList* %121, %struct._GSList** %8, align 8, !dbg !1975
  br label %57, !dbg !1976, !llvm.loop !1977

; <label>:122:                                    ; preds = %57
  %123 = load i32, i32* %14, align 4, !dbg !1979
  %124 = icmp ne i32 %123, 0, !dbg !1979
  br i1 %124, label %128, label %125, !dbg !1981

; <label>:125:                                    ; preds = %122
  %126 = load i8*, i8** %10, align 8, !dbg !1982
  %127 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* %126), !dbg !1983
  br label %128, !dbg !1983

; <label>:128:                                    ; preds = %125, %122
  %129 = load i8*, i8** %13, align 8, !dbg !1984
  call void @cmd_params_free(i8* %129), !dbg !1985
  br label %130, !dbg !1986

; <label>:130:                                    ; preds = %128, %52, %26, %20
  ret void, !dbg !1987
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct.DCC_REC* @dcc_find_request_latest(i32) #2

declare void @cmd_params_free(i8*) #2

declare i8* @cmd_get_quoted_param(i8**) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_get_init() #0 !dbg !1989 {
  call void @dcc_register_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1990
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !1991
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !1992
  call void @settings_add_int_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 644), !dbg !1993
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1994
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @ctcp_msg_dcc_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1995
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1996
  ret void, !dbg !1997
}

declare void @dcc_register_type(i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.GET_DCC_REC*) #0 !dbg !1998 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !1999, metadata !868), !dbg !2000
  %3 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !2001
  %4 = bitcast %struct.GET_DCC_REC* %3 to i8*, !dbg !2001
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2003
  %6 = bitcast i8* %5 to %struct.GET_DCC_REC*, !dbg !2004
  %7 = icmp ne %struct.GET_DCC_REC* %6, null, !dbg !2004
  br i1 %7, label %8, label %9, !dbg !2005

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !2006

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !2008

; <label>:10:                                     ; preds = %9, %8
  br label %24, !dbg !2010

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !2012
  %13 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %12, i32 0, i32 29, !dbg !2013
  %14 = load i8*, i8** %13, align 8, !dbg !2013
  call void @g_free(i8* %14), !dbg !2014
  %15 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !2015
  %16 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %15, i32 0, i32 24, !dbg !2017
  %17 = load i32, i32* %16, align 8, !dbg !2017
  %18 = icmp ne i32 %17, -1, !dbg !2018
  br i1 %18, label %19, label %24, !dbg !2019

; <label>:19:                                     ; preds = %11
  %20 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !2020
  %21 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %20, i32 0, i32 24, !dbg !2022
  %22 = load i32, i32* %21, align 8, !dbg !2022
  %23 = call i32 @close(i32 %22), !dbg !2023
  br label %24, !dbg !2023

; <label>:24:                                     ; preds = %10, %19, %11
  ret void, !dbg !2024
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg_dcc_send(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*) #0 !dbg !2025 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.CHAT_DCC_REC*, align 8
  %13 = alloca %struct.GET_DCC_REC*, align 8
  %14 = alloca %struct.SEND_DCC_REC*, align 8
  %15 = alloca %struct._IPADDR, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !2028, metadata !868), !dbg !2029
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2030, metadata !868), !dbg !2031
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2032, metadata !868), !dbg !2033
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2034, metadata !868), !dbg !2035
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2036, metadata !868), !dbg !2037
  store %struct.CHAT_DCC_REC* %5, %struct.CHAT_DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %12, metadata !2038, metadata !868), !dbg !2039
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %13, metadata !2040, metadata !868), !dbg !2041
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %14, metadata !2042, metadata !868), !dbg !2043
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %15, metadata !2044, metadata !868), !dbg !2045
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2046, metadata !868), !dbg !2047
  call void @llvm.dbg.declare(metadata i8*** %17, metadata !2048, metadata !868), !dbg !2049
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2050, metadata !868), !dbg !2051
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2052, metadata !868), !dbg !2053
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2054, metadata !868), !dbg !2055
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2056, metadata !868), !dbg !2057
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2058, metadata !868), !dbg !2059
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2060, metadata !868), !dbg !2061
  store i32 0, i32* %23, align 4, !dbg !2061
  call void @llvm.dbg.declare(metadata i64* %24, metadata !2062, metadata !868), !dbg !2063
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2064, metadata !868), !dbg !2065
  store i32 -1, i32* %25, align 4, !dbg !2065
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2066, metadata !868), !dbg !2067
  store i32 0, i32* %26, align 4, !dbg !2067
  %27 = load i8*, i8** %10, align 8, !dbg !2068
  %28 = icmp eq i8* %27, null, !dbg !2070
  br i1 %28, label %29, label %30, !dbg !2071

; <label>:29:                                     ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8** %10, align 8, !dbg !2072
  br label %30, !dbg !2073

; <label>:30:                                     ; preds = %29, %6
  %31 = load i8*, i8** %9, align 8, !dbg !2074
  %32 = icmp eq i8* %31, null, !dbg !2076
  br i1 %32, label %33, label %34, !dbg !2077

; <label>:33:                                     ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8** %9, align 8, !dbg !2078
  br label %34, !dbg !2079

; <label>:34:                                     ; preds = %33, %30
  %35 = load i8*, i8** %8, align 8, !dbg !2080
  %36 = call noalias i8** @g_strsplit(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !2081
  store i8** %36, i8*** %17, align 8, !dbg !2082
  %37 = load i8**, i8*** %17, align 8, !dbg !2083
  %38 = call i32 @g_strv_length(i8** %37), !dbg !2084
  store i32 %38, i32* %19, align 4, !dbg !2085
  %39 = load i32, i32* %19, align 4, !dbg !2086
  %40 = icmp slt i32 %39, 4, !dbg !2088
  br i1 %40, label %41, label %48, !dbg !2089

; <label>:41:                                     ; preds = %34
  %42 = load i8*, i8** %8, align 8, !dbg !2090
  %43 = load i8*, i8** %9, align 8, !dbg !2092
  %44 = load i8*, i8** %10, align 8, !dbg !2093
  %45 = load i8*, i8** %11, align 8, !dbg !2094
  %46 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %42, i8* %43, i8* %44, i8* %45), !dbg !2095
  %47 = load i8**, i8*** %17, align 8, !dbg !2096
  call void @g_strfreev(i8** %47), !dbg !2097
  br label %293, !dbg !2098

; <label>:48:                                     ; preds = %34
  %49 = load i8**, i8*** %17, align 8, !dbg !2099
  %50 = load i32, i32* %19, align 4, !dbg !2100
  %51 = call i32 @get_file_params_count(i8** %49, i32 %50), !dbg !2101
  store i32 %51, i32* %20, align 4, !dbg !2102
  %52 = load i32, i32* %20, align 4, !dbg !2103
  %53 = sext i32 %52 to i64, !dbg !2104
  %54 = load i8**, i8*** %17, align 8, !dbg !2104
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53, !dbg !2104
  %56 = load i8*, i8** %55, align 8, !dbg !2104
  %57 = call noalias i8* @g_strdup(i8* %56), !dbg !2105
  store i8* %57, i8** %16, align 8, !dbg !2106
  %58 = load i8*, i8** %16, align 8, !dbg !2107
  call void @dcc_str2ip(i8* %58, %struct._IPADDR* %15), !dbg !2108
  %59 = load i32, i32* %20, align 4, !dbg !2109
  %60 = add nsw i32 %59, 1, !dbg !2110
  %61 = sext i32 %60 to i64, !dbg !2111
  %62 = load i8**, i8*** %17, align 8, !dbg !2111
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61, !dbg !2111
  %64 = load i8*, i8** %63, align 8, !dbg !2111
  %65 = call i32 @atoi(i8* %64) #8, !dbg !2112
  store i32 %65, i32* %21, align 4, !dbg !2113
  %66 = load i32, i32* %20, align 4, !dbg !2114
  %67 = add nsw i32 %66, 2, !dbg !2115
  %68 = sext i32 %67 to i64, !dbg !2116
  %69 = load i8**, i8*** %17, align 8, !dbg !2116
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68, !dbg !2116
  %71 = load i8*, i8** %70, align 8, !dbg !2116
  %72 = call i64 @str_to_uofft(i8* %71), !dbg !2117
  store i64 %72, i64* %24, align 8, !dbg !2118
  %73 = load i32, i32* %19, align 4, !dbg !2119
  %74 = load i32, i32* %20, align 4, !dbg !2121
  %75 = add nsw i32 %74, 4, !dbg !2122
  %76 = icmp eq i32 %73, %75, !dbg !2123
  br i1 %76, label %77, label %85, !dbg !2124

; <label>:77:                                     ; preds = %48
  %78 = load i32, i32* %20, align 4, !dbg !2125
  %79 = add nsw i32 %78, 3, !dbg !2127
  %80 = sext i32 %79 to i64, !dbg !2128
  %81 = load i8**, i8*** %17, align 8, !dbg !2128
  %82 = getelementptr inbounds i8*, i8** %81, i64 %80, !dbg !2128
  %83 = load i8*, i8** %82, align 8, !dbg !2128
  %84 = call i32 @atoi(i8* %83) #8, !dbg !2129
  store i32 %84, i32* %25, align 4, !dbg !2130
  store i32 1, i32* %26, align 4, !dbg !2131
  br label %85, !dbg !2132

; <label>:85:                                     ; preds = %77, %48
  %86 = load i8**, i8*** %17, align 8, !dbg !2133
  %87 = load i32, i32* %20, align 4, !dbg !2134
  %88 = call i8* @get_file_name(i8** %86, i32 %87), !dbg !2135
  store i8* %88, i8** %18, align 8, !dbg !2136
  %89 = load i8**, i8*** %17, align 8, !dbg !2137
  call void @g_strfreev(i8** %89), !dbg !2138
  %90 = load i8*, i8** %18, align 8, !dbg !2139
  %91 = call i64 @strlen(i8* %90) #8, !dbg !2140
  %92 = trunc i64 %91 to i32, !dbg !2140
  store i32 %92, i32* %22, align 4, !dbg !2141
  %93 = load i32, i32* %22, align 4, !dbg !2142
  %94 = icmp sgt i32 %93, 1, !dbg !2144
  br i1 %94, label %95, label %122, !dbg !2145

; <label>:95:                                     ; preds = %85
  %96 = load i8*, i8** %18, align 8, !dbg !2146
  %97 = load i8, i8* %96, align 1, !dbg !2148
  %98 = sext i8 %97 to i32, !dbg !2148
  %99 = icmp eq i32 %98, 34, !dbg !2149
  br i1 %99, label %100, label %122, !dbg !2150

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %22, align 4, !dbg !2151
  %102 = sub nsw i32 %101, 1, !dbg !2153
  %103 = sext i32 %102 to i64, !dbg !2154
  %104 = load i8*, i8** %18, align 8, !dbg !2154
  %105 = getelementptr inbounds i8, i8* %104, i64 %103, !dbg !2154
  %106 = load i8, i8* %105, align 1, !dbg !2154
  %107 = sext i8 %106 to i32, !dbg !2154
  %108 = icmp eq i32 %107, 34, !dbg !2155
  br i1 %108, label %109, label %122, !dbg !2156

; <label>:109:                                    ; preds = %100
  %110 = load i32, i32* %22, align 4, !dbg !2157
  %111 = sub nsw i32 %110, 1, !dbg !2159
  %112 = sext i32 %111 to i64, !dbg !2160
  %113 = load i8*, i8** %18, align 8, !dbg !2160
  %114 = getelementptr inbounds i8, i8* %113, i64 %112, !dbg !2160
  store i8 0, i8* %114, align 1, !dbg !2161
  br label %115, !dbg !2162, !llvm.loop !2163

; <label>:115:                                    ; preds = %109
  %116 = load i8*, i8** %18, align 8, !dbg !2164
  %117 = load i8*, i8** %18, align 8, !dbg !2167
  %118 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !2168
  %119 = load i32, i32* %22, align 4, !dbg !2169
  %120 = sext i32 %119 to i64, !dbg !2170
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %116, i8* %118, i64 %120, i32 1, i1 false), !dbg !2171
  br label %121, !dbg !2172

; <label>:121:                                    ; preds = %115
  store i32 1, i32* %23, align 4, !dbg !2173
  br label %122, !dbg !2174

; <label>:122:                                    ; preds = %121, %100, %95, %85
  %123 = load i32, i32* %26, align 4, !dbg !2175
  %124 = icmp ne i32 %123, 0, !dbg !2175
  br i1 %124, label %125, label %208, !dbg !2177

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %21, align 4, !dbg !2178
  %127 = icmp ne i32 %126, 0, !dbg !2180
  br i1 %127, label %128, label %208, !dbg !2181

; <label>:128:                                    ; preds = %125
  %129 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2182
  %130 = load i8*, i8** %9, align 8, !dbg !2184
  %131 = load i8*, i8** %18, align 8, !dbg !2185
  %132 = call %struct.DCC_REC* @dcc_find_request(i32 %129, i8* %130, i8* %131), !dbg !2186
  %133 = bitcast %struct.DCC_REC* %132 to i8*, !dbg !2188
  %134 = call i8* @module_check_cast_module(i8* %133, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2189
  %135 = bitcast i8* %134 to %struct.SEND_DCC_REC*, !dbg !2191
  store %struct.SEND_DCC_REC* %135, %struct.SEND_DCC_REC** %14, align 8, !dbg !2192
  %136 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2193
  %137 = icmp ne %struct.SEND_DCC_REC* %136, null, !dbg !2195
  br i1 %137, label %138, label %192, !dbg !2196

; <label>:138:                                    ; preds = %128
  %139 = load i32, i32* %25, align 4, !dbg !2197
  %140 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2199
  %141 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %140, i32 0, i32 19, !dbg !2200
  %142 = load i32, i32* %141, align 8, !dbg !2200
  %143 = icmp eq i32 %139, %142, !dbg !2201
  br i1 %143, label %144, label %192, !dbg !2202

; <label>:144:                                    ; preds = %138
  %145 = load i8*, i8** %11, align 8, !dbg !2203
  %146 = call noalias i8* @g_strdup(i8* %145), !dbg !2205
  %147 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2206
  %148 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %147, i32 0, i32 8, !dbg !2207
  store i8* %146, i8** %148, align 8, !dbg !2208
  %149 = load i32, i32* %21, align 4, !dbg !2209
  %150 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2210
  %151 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %150, i32 0, i32 12, !dbg !2211
  store i32 %149, i32* %151, align 4, !dbg !2212
  %152 = load i64, i64* %24, align 8, !dbg !2213
  %153 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2214
  %154 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %153, i32 0, i32 22, !dbg !2215
  store i64 %152, i64* %154, align 8, !dbg !2216
  %155 = load i32, i32* %23, align 4, !dbg !2217
  %156 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2218
  %157 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %156, i32 0, i32 28, !dbg !2219
  %158 = trunc i32 %155 to i8, !dbg !2220
  %159 = load i8, i8* %157, align 8, !dbg !2220
  %160 = and i8 %158, 1, !dbg !2220
  %161 = and i8 %159, -2, !dbg !2220
  %162 = or i8 %161, %160, !dbg !2220
  store i8 %162, i8* %157, align 8, !dbg !2220
  %163 = zext i8 %160 to i32, !dbg !2220
  %164 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2221
  %165 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %164, i32 0, i32 10, !dbg !2222
  %166 = bitcast %struct._IPADDR* %165 to i8*, !dbg !2223
  %167 = bitcast %struct._IPADDR* %15 to i8*, !dbg !2223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %166, i8* %167, i64 20, i32 4, i1 false), !dbg !2223
  %168 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2224
  %169 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %168, i32 0, i32 10, !dbg !2226
  %170 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %169, i32 0, i32 0, !dbg !2227
  %171 = load i16, i16* %170, align 8, !dbg !2227
  %172 = zext i16 %171 to i32, !dbg !2224
  %173 = icmp eq i32 %172, 2, !dbg !2228
  br i1 %173, label %174, label %181, !dbg !2229

; <label>:174:                                    ; preds = %144
  %175 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2230
  %176 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %175, i32 0, i32 10, !dbg !2231
  %177 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2232
  %178 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %177, i32 0, i32 11, !dbg !2233
  %179 = getelementptr inbounds [46 x i8], [46 x i8]* %178, i32 0, i32 0, !dbg !2232
  %180 = call i32 @net_ip2host(%struct._IPADDR* %176, i8* %179), !dbg !2234
  br label %187, !dbg !2234

; <label>:181:                                    ; preds = %144
  %182 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2235
  %183 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %182, i32 0, i32 11, !dbg !2237
  %184 = getelementptr inbounds [46 x i8], [46 x i8]* %183, i32 0, i32 0, !dbg !2235
  %185 = load i8*, i8** %16, align 8, !dbg !2238
  %186 = call i64 @g_strlcpy(i8* %184, i8* %185, i64 46), !dbg !2239
  br label %187

; <label>:187:                                    ; preds = %181, %174
  %188 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2240
  %189 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.SEND_DCC_REC* %188), !dbg !2241
  %190 = load i8*, i8** %16, align 8, !dbg !2242
  call void @g_free(i8* %190), !dbg !2243
  %191 = load i8*, i8** %18, align 8, !dbg !2244
  call void @g_free(i8* %191), !dbg !2245
  br label %293, !dbg !2246

; <label>:192:                                    ; preds = %138, %128
  %193 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2247
  %194 = icmp ne %struct.SEND_DCC_REC* %193, null, !dbg !2249
  br i1 %194, label %195, label %206, !dbg !2250

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %25, align 4, !dbg !2251
  %197 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2253
  %198 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %197, i32 0, i32 19, !dbg !2254
  %199 = load i32, i32* %198, align 8, !dbg !2254
  %200 = icmp ne i32 %196, %199, !dbg !2255
  br i1 %200, label %201, label %206, !dbg !2256

; <label>:201:                                    ; preds = %195
  %202 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %14, align 8, !dbg !2257
  %203 = bitcast %struct.SEND_DCC_REC* %202 to %struct.DCC_REC*, !dbg !2259
  call void @dcc_destroy(%struct.DCC_REC* %203), !dbg !2260
  %204 = load i8*, i8** %16, align 8, !dbg !2261
  call void @g_free(i8* %204), !dbg !2262
  %205 = load i8*, i8** %18, align 8, !dbg !2263
  call void @g_free(i8* %205), !dbg !2264
  br label %293, !dbg !2265

; <label>:206:                                    ; preds = %195, %192
  br label %207

; <label>:207:                                    ; preds = %206
  br label %208, !dbg !2266

; <label>:208:                                    ; preds = %207, %125, %122
  %209 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2267
  %210 = load i8*, i8** %9, align 8, !dbg !2268
  %211 = load i8*, i8** %18, align 8, !dbg !2269
  %212 = call %struct.DCC_REC* @dcc_find_request(i32 %209, i8* %210, i8* %211), !dbg !2270
  %213 = bitcast %struct.DCC_REC* %212 to i8*, !dbg !2272
  %214 = call i8* @module_check_cast_module(i8* %213, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2273
  %215 = bitcast i8* %214 to %struct.GET_DCC_REC*, !dbg !2275
  store %struct.GET_DCC_REC* %215, %struct.GET_DCC_REC** %13, align 8, !dbg !2276
  %216 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2277
  %217 = icmp ne %struct.GET_DCC_REC* %216, null, !dbg !2279
  br i1 %217, label %218, label %221, !dbg !2280

; <label>:218:                                    ; preds = %208
  %219 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2281
  %220 = bitcast %struct.GET_DCC_REC* %219 to %struct.DCC_REC*, !dbg !2282
  call void @dcc_destroy(%struct.DCC_REC* %220), !dbg !2283
  br label %221, !dbg !2283

; <label>:221:                                    ; preds = %218, %208
  %222 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2284
  %223 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !2285
  %224 = load i8*, i8** %9, align 8, !dbg !2286
  %225 = load i8*, i8** %18, align 8, !dbg !2287
  %226 = call %struct.GET_DCC_REC* @dcc_get_create(%struct._IRC_SERVER_REC* %222, %struct.CHAT_DCC_REC* %223, i8* %224, i8* %225), !dbg !2288
  store %struct.GET_DCC_REC* %226, %struct.GET_DCC_REC** %13, align 8, !dbg !2289
  %227 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2290
  %228 = icmp eq %struct.GET_DCC_REC* %227, null, !dbg !2292
  br i1 %228, label %229, label %234, !dbg !2293

; <label>:229:                                    ; preds = %221
  %230 = load i8*, i8** %16, align 8, !dbg !2294
  call void @g_free(i8* %230), !dbg !2296
  %231 = load i8*, i8** %18, align 8, !dbg !2297
  call void @g_free(i8* %231), !dbg !2298
  br label %232, !dbg !2299, !llvm.loop !2300

; <label>:232:                                    ; preds = %229
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 529, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ctcp_msg_dcc_send, i32 0, i32 0), i8* null), !dbg !2301
  br label %233, !dbg !2304

; <label>:233:                                    ; preds = %232
  br label %293, !dbg !2305

; <label>:234:                                    ; preds = %221
  %235 = load i8*, i8** %11, align 8, !dbg !2306
  %236 = call noalias i8* @g_strdup(i8* %235), !dbg !2307
  %237 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2308
  %238 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %237, i32 0, i32 8, !dbg !2309
  store i8* %236, i8** %238, align 8, !dbg !2310
  %239 = load i32, i32* %26, align 4, !dbg !2311
  %240 = icmp ne i32 %239, 0, !dbg !2311
  br i1 %240, label %241, label %248, !dbg !2313

; <label>:241:                                    ; preds = %234
  %242 = load i32, i32* %21, align 4, !dbg !2314
  %243 = icmp eq i32 %242, 0, !dbg !2316
  br i1 %243, label %244, label %248, !dbg !2317

; <label>:244:                                    ; preds = %241
  %245 = load i32, i32* %25, align 4, !dbg !2318
  %246 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2319
  %247 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %246, i32 0, i32 19, !dbg !2320
  store i32 %245, i32* %247, align 8, !dbg !2321
  br label %248, !dbg !2319

; <label>:248:                                    ; preds = %244, %241, %234
  %249 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2322
  %250 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %249, i32 0, i32 10, !dbg !2323
  %251 = bitcast %struct._IPADDR* %250 to i8*, !dbg !2324
  %252 = bitcast %struct._IPADDR* %15 to i8*, !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %252, i64 20, i32 4, i1 false), !dbg !2324
  %253 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2325
  %254 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %253, i32 0, i32 10, !dbg !2327
  %255 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %254, i32 0, i32 0, !dbg !2328
  %256 = load i16, i16* %255, align 8, !dbg !2328
  %257 = zext i16 %256 to i32, !dbg !2325
  %258 = icmp eq i32 %257, 2, !dbg !2329
  br i1 %258, label %259, label %266, !dbg !2330

; <label>:259:                                    ; preds = %248
  %260 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2331
  %261 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %260, i32 0, i32 10, !dbg !2332
  %262 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2333
  %263 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %262, i32 0, i32 11, !dbg !2334
  %264 = getelementptr inbounds [46 x i8], [46 x i8]* %263, i32 0, i32 0, !dbg !2333
  %265 = call i32 @net_ip2host(%struct._IPADDR* %261, i8* %264), !dbg !2335
  br label %272, !dbg !2335

; <label>:266:                                    ; preds = %248
  %267 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2336
  %268 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %267, i32 0, i32 11, !dbg !2338
  %269 = getelementptr inbounds [46 x i8], [46 x i8]* %268, i32 0, i32 0, !dbg !2336
  %270 = load i8*, i8** %16, align 8, !dbg !2339
  %271 = call i64 @g_strlcpy(i8* %269, i8* %270, i64 46), !dbg !2340
  br label %272

; <label>:272:                                    ; preds = %266, %259
  %273 = load i32, i32* %21, align 4, !dbg !2341
  %274 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2342
  %275 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %274, i32 0, i32 12, !dbg !2343
  store i32 %273, i32* %275, align 4, !dbg !2344
  %276 = load i64, i64* %24, align 8, !dbg !2345
  %277 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2346
  %278 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %277, i32 0, i32 22, !dbg !2347
  store i64 %276, i64* %278, align 8, !dbg !2348
  %279 = load i32, i32* %23, align 4, !dbg !2349
  %280 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2350
  %281 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %280, i32 0, i32 30, !dbg !2351
  %282 = trunc i32 %279 to i8, !dbg !2352
  %283 = load i8, i8* %281, align 8, !dbg !2352
  %284 = and i8 %282, 1, !dbg !2352
  %285 = and i8 %283, -2, !dbg !2352
  %286 = or i8 %285, %284, !dbg !2352
  store i8 %286, i8* %281, align 8, !dbg !2352
  %287 = zext i8 %284 to i32, !dbg !2352
  %288 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %13, align 8, !dbg !2353
  %289 = load i8*, i8** %10, align 8, !dbg !2354
  %290 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 2, %struct.GET_DCC_REC* %288, i8* %289), !dbg !2355
  %291 = load i8*, i8** %16, align 8, !dbg !2356
  call void @g_free(i8* %291), !dbg !2357
  %292 = load i8*, i8** %18, align 8, !dbg !2358
  call void @g_free(i8* %292), !dbg !2359
  br label %293, !dbg !2360

; <label>:293:                                    ; preds = %272, %233, %201, %187, %41
  ret void, !dbg !2361
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_get(i8*) #0 !dbg !2362 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2365, metadata !868), !dbg !2366
  %3 = load i8*, i8** %2, align 8, !dbg !2367
  call void @cmd_dcc_receive(i8* %3, void (%struct.GET_DCC_REC*)* @dcc_get_connect, void (%struct.GET_DCC_REC*)* @dcc_get_passive), !dbg !2368
  ret void, !dbg !2369
}

; Function Attrs: nounwind uwtable
define void @dcc_get_deinit() #0 !dbg !2370 {
  call void @dcc_unregister_type(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2371
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2372
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @ctcp_msg_dcc_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2373
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2374
  br label %1, !dbg !2375, !llvm.loop !2376

; <label>:1:                                      ; preds = %0
  %2 = load i8*, i8** @dcc_get_recv_buffer, align 8, !dbg !2377
  %3 = icmp ne i8* %2, null, !dbg !2377
  br i1 %3, label %4, label %6, !dbg !2377

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** @dcc_get_recv_buffer, align 8, !dbg !2381
  call void @g_free(i8* %5), !dbg !2384
  store i8* null, i8** @dcc_get_recv_buffer, align 8, !dbg !2385
  br label %6, !dbg !2386

; <label>:6:                                      ; preds = %4, %1
  br label %7, !dbg !2387

; <label>:7:                                      ; preds = %6
  ret void, !dbg !2389
}

declare void @dcc_unregister_type(i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_string_printf(%struct._GString*, i8*, ...) #2

declare noalias i8* @g_malloc(i64) #2

declare i32 @net_receive(%struct._GIOChannel*, i8*, i32) #2

declare i64 @write(i32, i8*, i64) #2

declare %struct._GIOChannel* @net_accept(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare void @net_disconnect(%struct._GIOChannel*) #2

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @g_strv_length(i8**) #2

declare void @g_strfreev(i8**) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @dcc_str2ip(i8*, %struct._IPADDR*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare i64 @str_to_uofft(i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct.DCC_REC* @dcc_find_request(i32, i8*, i8*) #2

declare i64 @g_strlcpy(i8*, i8*, i64) #2

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!860, !861}
!llvm.ident = !{!862}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !75, globals: !857)
!1 = !DIFile(filename: "line168-dcc-get.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !42, !54}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 12, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "dcc-get.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "DCC_GET_DEFAULT", value: 0)
!39 = !DIEnumerator(name: "DCC_GET_RENAME", value: 1)
!40 = !DIEnumerator(name: "DCC_GET_OVERWRITE", value: 2)
!41 = !DIEnumerator(name: "DCC_GET_RESUME", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 51, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53}
!45 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!46 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!47 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!48 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!49 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!50 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!51 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!52 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!53 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 25, size: 32, align: 32, elements: !56)
!55 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!57 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!58 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!59 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!60 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!61 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!62 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!63 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!64 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!65 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!66 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!67 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!68 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!69 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!70 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!71 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!72 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!73 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!74 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!75 = !{!76, !784, !231, !202, !810, !187, !230, !429, !527, !814, !821}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GET_DCC_REC", file: !36, line: 28, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 20, size: 2048, align: 64, elements: !79)
!79 = !{!80, !83, !84, !90, !746, !747, !748, !749, !754, !755, !756, !757, !761, !762, !763, !764, !765, !766, !767, !769, !770, !771, !772, !774, !775, !776, !777, !779, !780, !781, !782, !783}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !81, line: 1, baseType: !82, size: 32, align: 32)
!81 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !78, file: !81, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !78, file: !81, line: 3, baseType: !85, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !86, line: 75, baseType: !87)
!86 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !88, line: 139, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !78, file: !81, line: 5, baseType: !91, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !93, line: 6, baseType: !94)
!93 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !95, line: 42, size: 39168, align: 64, elements: !96)
!95 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !{!97, !99, !100, !101, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !401, !402, !406, !407, !408, !412, !417, !418, !419, !420, !421, !422, !423, !424, !431, !432, !433, !434, !435, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !743, !745}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !98, line: 3, baseType: !82, size: 32, align: 32)
!98 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !94, file: !98, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !94, file: !98, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !94, file: !98, line: 8, baseType: !102, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !93, line: 5, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !95, line: 24, size: 2496, align: 64, elements: !105)
!105 = !{!106, !108, !109, !110, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !107, line: 3, baseType: !82, size: 32, align: 32)
!107 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !104, file: !107, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !104, file: !107, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !104, file: !107, line: 9, baseType: !111, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !104, file: !107, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !104, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !104, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !104, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !104, file: !107, line: 13, baseType: !118, size: 16, align: 16, offset: 448)
!118 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !104, file: !107, line: 14, baseType: !111, size: 64, align: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !104, file: !107, line: 15, baseType: !111, size: 64, align: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !104, file: !107, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !104, file: !107, line: 17, baseType: !111, size: 64, align: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !104, file: !107, line: 19, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !126, line: 99, baseType: !127)
!126 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !128, line: 22, size: 160, align: 32, elements: !129)
!128 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !127, file: !128, line: 23, baseType: !118, size: 16, align: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !127, file: !128, line: 24, baseType: !132, size: 128, align: 32, offset: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !133, line: 211, size: 128, align: 32, elements: !134)
!133 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !132, file: !133, line: 220, baseType: !136, size: 128, align: 32)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !133, line: 213, size: 128, align: 32, elements: !137)
!137 = !{!138, !145, !150}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !136, file: !133, line: 215, baseType: !139, size: 128, align: 8)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, align: 8, elements: !143)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !141, line: 48, baseType: !142)
!141 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!143 = !{!144}
!144 = !DISubrange(count: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !136, file: !133, line: 217, baseType: !146, size: 128, align: 16)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 16, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !141, line: 49, baseType: !118)
!148 = !{!149}
!149 = !DISubrange(count: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !136, file: !133, line: 218, baseType: !151, size: 128, align: 32)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, align: 32, elements: !154)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 51, baseType: !153)
!153 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !104, file: !107, line: 19, baseType: !124, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !104, file: !107, line: 21, baseType: !111, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !104, file: !107, line: 22, baseType: !111, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !104, file: !107, line: 23, baseType: !111, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !104, file: !107, line: 24, baseType: !111, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !104, file: !107, line: 26, baseType: !111, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !104, file: !107, line: 27, baseType: !111, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !104, file: !107, line: 28, baseType: !111, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !104, file: !107, line: 29, baseType: !111, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !104, file: !107, line: 30, baseType: !111, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !104, file: !107, line: 31, baseType: !111, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !104, file: !107, line: 32, baseType: !111, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !104, file: !107, line: 33, baseType: !111, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !104, file: !107, line: 35, baseType: !170, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !173)
!173 = !{!174, !177, !320, !321, !326, !327, !328, !329, !330, !339, !340, !341, !345, !346, !347, !348, !349, !350, !351, !352}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !172, file: !4, line: 100, baseType: !175, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !176, line: 49, baseType: !82)
!176 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !172, file: !4, line: 101, baseType: !178, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !181)
!181 = !{!182, !205, !211, !217, !221, !307, !311, !316}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !180, file: !4, line: 133, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !170, !187, !189, !192, !193}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !176, line: 46, baseType: !112)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !190, line: 66, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !196, line: 42, baseType: !197)
!196 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !196, line: 44, size: 128, align: 64, elements: !198)
!198 = !{!199, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !197, file: !196, line: 46, baseType: !200, size: 32, align: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !201, line: 36, baseType: !202)
!201 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !190, line: 45, baseType: !153)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !197, file: !196, line: 47, baseType: !175, size: 32, align: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !197, file: !196, line: 48, baseType: !187, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !180, file: !4, line: 138, baseType: !206, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!186, !170, !209, !189, !192, !193}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !180, file: !4, line: 143, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!186, !170, !215, !216, !193}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !190, line: 51, baseType: !89)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !180, file: !4, line: 147, baseType: !218, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!186, !170, !193}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !180, file: !4, line: 149, baseType: !222, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !170, !306}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !228)
!228 = !{!229, !232, !253, !282, !284, !288, !289, !290, !291, !299, !300, !301, !302}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !227, file: !16, line: 174, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !176, line: 77, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !227, file: !16, line: 175, baseType: !233, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !236)
!236 = !{!237, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !235, file: !16, line: 198, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !230}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !235, file: !16, line: 199, baseType: !238, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !235, file: !16, line: 200, baseType: !243, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !230, !225, !246, !252}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !230}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !176, line: 50, baseType: !175)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !227, file: !16, line: 177, baseType: !254, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !258)
!258 = !{!259, !264, !268, !272, !276, !277}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !257, file: !16, line: 216, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!251, !225, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !257, file: !16, line: 218, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!251, !225}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !257, file: !16, line: 219, baseType: !269, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!251, !225, !247, !230}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !257, file: !16, line: 222, baseType: !273, size: 64, align: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !225}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !257, file: !16, line: 226, baseType: !247, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !257, file: !16, line: 227, baseType: !278, size: 64, align: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !227, file: !16, line: 178, baseType: !283, size: 32, align: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !176, line: 55, baseType: !153)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !227, file: !16, line: 180, baseType: !285, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !227, file: !16, line: 182, baseType: !175, size: 32, align: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !16, line: 183, baseType: !283, size: 32, align: 32, offset: 352)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !227, file: !16, line: 184, baseType: !283, size: 32, align: 32, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !227, file: !16, line: 186, baseType: !292, size: 64, align: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !294, line: 37, baseType: !295)
!294 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !294, line: 39, size: 128, align: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !295, file: !294, line: 41, baseType: !230, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !294, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !227, file: !16, line: 188, baseType: !225, size: 64, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !16, line: 189, baseType: !225, size: 64, align: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !16, line: 191, baseType: !111, size: 64, align: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !227, file: !16, line: 193, baseType: !303, size: 64, align: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !305)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !180, file: !4, line: 151, baseType: !308, size: 64, align: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !170}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !180, file: !4, line: 152, baseType: !312, size: 64, align: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!186, !170, !315, !193}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !180, file: !4, line: 155, baseType: !317, size: 64, align: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!315, !170}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !172, file: !4, line: 103, baseType: !187, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !172, file: !4, line: 104, baseType: !322, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !323, line: 77, baseType: !324)
!323 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !323, line: 77, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !172, file: !4, line: 105, baseType: !322, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !172, file: !4, line: 106, baseType: !187, size: 64, align: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !172, file: !4, line: 107, baseType: !283, size: 32, align: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !172, file: !4, line: 109, baseType: !189, size: 64, align: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !172, file: !4, line: 110, baseType: !331, size: 64, align: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !333, line: 39, baseType: !334)
!333 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !333, line: 41, size: 192, align: 64, elements: !335)
!335 = !{!336, !337, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !334, file: !333, line: 43, baseType: !187, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !334, file: !333, line: 44, baseType: !189, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !334, file: !333, line: 45, baseType: !189, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !172, file: !4, line: 111, baseType: !331, size: 64, align: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !172, file: !4, line: 112, baseType: !331, size: 64, align: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !172, file: !4, line: 113, baseType: !342, size: 48, align: 8, offset: 704)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, align: 8, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 6)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !172, file: !4, line: 117, baseType: !283, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !172, file: !4, line: 118, baseType: !283, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !172, file: !4, line: 119, baseType: !283, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !172, file: !4, line: 120, baseType: !283, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !172, file: !4, line: 121, baseType: !283, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !172, file: !4, line: 122, baseType: !283, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !172, file: !4, line: 124, baseType: !230, size: 64, align: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !172, file: !4, line: 125, baseType: !230, size: 64, align: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !104, file: !107, line: 38, baseType: !153, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !104, file: !107, line: 39, baseType: !153, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !104, file: !107, line: 40, baseType: !153, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !104, file: !107, line: 41, baseType: !153, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !104, file: !107, line: 42, baseType: !153, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !104, file: !107, line: 43, baseType: !153, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !104, file: !107, line: 44, baseType: !153, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !104, file: !107, line: 45, baseType: !153, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !104, file: !107, line: 46, baseType: !111, size: 64, align: 64, offset: 1792)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !104, file: !107, line: 47, baseType: !111, size: 64, align: 64, offset: 1856)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !104, file: !95, line: 27, baseType: !111, size: 64, align: 64, offset: 1920)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !104, file: !95, line: 28, baseType: !111, size: 64, align: 64, offset: 1984)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !104, file: !95, line: 30, baseType: !82, size: 32, align: 32, offset: 2048)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !104, file: !95, line: 31, baseType: !111, size: 64, align: 64, offset: 2112)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !104, file: !95, line: 32, baseType: !111, size: 64, align: 64, offset: 2176)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !104, file: !95, line: 34, baseType: !82, size: 32, align: 32, offset: 2240)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !104, file: !95, line: 35, baseType: !82, size: 32, align: 32, offset: 2272)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !104, file: !95, line: 36, baseType: !82, size: 32, align: 32, offset: 2304)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !104, file: !95, line: 38, baseType: !82, size: 32, align: 32, offset: 2336)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !104, file: !95, line: 38, baseType: !82, size: 32, align: 32, offset: 2368)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !104, file: !95, line: 38, baseType: !82, size: 32, align: 32, offset: 2400)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !104, file: !95, line: 38, baseType: !82, size: 32, align: 32, offset: 2432)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !94, file: !98, line: 9, baseType: !85, size: 64, align: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !94, file: !98, line: 10, baseType: !85, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !94, file: !98, line: 12, baseType: !111, size: 64, align: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !94, file: !98, line: 13, baseType: !111, size: 64, align: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !94, file: !98, line: 15, baseType: !153, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !94, file: !98, line: 16, baseType: !153, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !94, file: !98, line: 17, baseType: !153, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !94, file: !98, line: 18, baseType: !153, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !94, file: !98, line: 19, baseType: !153, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !94, file: !98, line: 21, baseType: !385, size: 64, align: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !126, line: 102, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !388, line: 7, size: 384, align: 64, elements: !389)
!388 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!389 = !{!390, !391, !395, !396, !397, !398, !399, !400}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !387, file: !388, line: 8, baseType: !170, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !387, file: !388, line: 9, baseType: !392, size: 64, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !126, line: 101, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !126, line: 101, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !387, file: !388, line: 11, baseType: !82, size: 32, align: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !387, file: !388, line: 12, baseType: !82, size: 32, align: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !387, file: !388, line: 13, baseType: !82, size: 32, align: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !387, file: !388, line: 14, baseType: !111, size: 64, align: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !387, file: !388, line: 15, baseType: !82, size: 32, align: 32, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !387, file: !388, line: 16, baseType: !153, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !94, file: !98, line: 22, baseType: !82, size: 32, align: 32, offset: 576)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !94, file: !98, line: 25, baseType: !403, size: 128, align: 64, offset: 640)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, align: 64, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 2)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !94, file: !98, line: 26, baseType: !82, size: 32, align: 32, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !94, file: !98, line: 27, baseType: !82, size: 32, align: 32, offset: 800)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !94, file: !98, line: 29, baseType: !409, size: 64, align: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !126, line: 103, baseType: !411)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !126, line: 103, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !94, file: !98, line: 30, baseType: !413, size: 64, align: 64, offset: 896)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !415, line: 37, baseType: !416)
!415 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !415, line: 37, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !94, file: !98, line: 32, baseType: !111, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !94, file: !98, line: 33, baseType: !111, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !94, file: !98, line: 34, baseType: !111, size: 64, align: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !94, file: !98, line: 35, baseType: !153, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !94, file: !98, line: 36, baseType: !153, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !94, file: !98, line: 37, baseType: !153, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !94, file: !98, line: 38, baseType: !153, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !94, file: !98, line: 40, baseType: !425, size: 128, align: 64, offset: 1216)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !176, line: 504, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !176, line: 506, size: 128, align: 64, elements: !427)
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !426, file: !176, line: 508, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !176, line: 48, baseType: !89)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !426, file: !176, line: 509, baseType: !429, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !94, file: !98, line: 41, baseType: !85, size: 64, align: 64, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !94, file: !98, line: 42, baseType: !82, size: 32, align: 32, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !94, file: !98, line: 44, baseType: !292, size: 64, align: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !94, file: !98, line: 45, baseType: !292, size: 64, align: 64, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !94, file: !98, line: 53, baseType: !436, size: 64, align: 64, offset: 1600)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439, !527, !82}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !126, line: 107, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !442, line: 30, size: 2240, align: 64, elements: !443)
!442 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!443 = !{!444, !445, !446, !447, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !523, !529, !533, !537, !542, !619, !626, !630}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !98, line: 3, baseType: !82, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !441, file: !98, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !441, file: !98, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !441, file: !98, line: 8, baseType: !448, size: 64, align: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !126, line: 113, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !442, line: 25, size: 1920, align: 64, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !107, line: 3, baseType: !82, size: 32, align: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !450, file: !107, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !450, file: !107, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !450, file: !107, line: 9, baseType: !111, size: 64, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !450, file: !107, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !450, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !450, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !450, file: !107, line: 11, baseType: !111, size: 64, align: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !450, file: !107, line: 13, baseType: !118, size: 16, align: 16, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !450, file: !107, line: 14, baseType: !111, size: 64, align: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !450, file: !107, line: 15, baseType: !111, size: 64, align: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !450, file: !107, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !450, file: !107, line: 17, baseType: !111, size: 64, align: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !450, file: !107, line: 19, baseType: !124, size: 64, align: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !450, file: !107, line: 19, baseType: !124, size: 64, align: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !450, file: !107, line: 21, baseType: !111, size: 64, align: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !450, file: !107, line: 22, baseType: !111, size: 64, align: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !450, file: !107, line: 23, baseType: !111, size: 64, align: 64, offset: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !450, file: !107, line: 24, baseType: !111, size: 64, align: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !450, file: !107, line: 26, baseType: !111, size: 64, align: 64, offset: 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !450, file: !107, line: 27, baseType: !111, size: 64, align: 64, offset: 1216)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !450, file: !107, line: 28, baseType: !111, size: 64, align: 64, offset: 1280)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !450, file: !107, line: 29, baseType: !111, size: 64, align: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !450, file: !107, line: 30, baseType: !111, size: 64, align: 64, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !450, file: !107, line: 31, baseType: !111, size: 64, align: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !450, file: !107, line: 32, baseType: !111, size: 64, align: 64, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !450, file: !107, line: 33, baseType: !111, size: 64, align: 64, offset: 1600)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !450, file: !107, line: 35, baseType: !170, size: 64, align: 64, offset: 1664)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !450, file: !107, line: 38, baseType: !153, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !450, file: !107, line: 39, baseType: !153, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !450, file: !107, line: 40, baseType: !153, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !450, file: !107, line: 41, baseType: !153, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !450, file: !107, line: 42, baseType: !153, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !450, file: !107, line: 43, baseType: !153, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !450, file: !107, line: 44, baseType: !153, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !450, file: !107, line: 45, baseType: !153, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !450, file: !107, line: 46, baseType: !111, size: 64, align: 64, offset: 1792)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !450, file: !107, line: 47, baseType: !111, size: 64, align: 64, offset: 1856)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !441, file: !98, line: 9, baseType: !85, size: 64, align: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !441, file: !98, line: 10, baseType: !85, size: 64, align: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !441, file: !98, line: 12, baseType: !111, size: 64, align: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !441, file: !98, line: 13, baseType: !111, size: 64, align: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !441, file: !98, line: 15, baseType: !153, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !441, file: !98, line: 16, baseType: !153, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !441, file: !98, line: 17, baseType: !153, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !441, file: !98, line: 18, baseType: !153, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !441, file: !98, line: 19, baseType: !153, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !441, file: !98, line: 21, baseType: !385, size: 64, align: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !441, file: !98, line: 22, baseType: !82, size: 32, align: 32, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !441, file: !98, line: 25, baseType: !403, size: 128, align: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !441, file: !98, line: 26, baseType: !82, size: 32, align: 32, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !441, file: !98, line: 27, baseType: !82, size: 32, align: 32, offset: 800)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !441, file: !98, line: 29, baseType: !409, size: 64, align: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !441, file: !98, line: 30, baseType: !413, size: 64, align: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !441, file: !98, line: 32, baseType: !111, size: 64, align: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !441, file: !98, line: 33, baseType: !111, size: 64, align: 64, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !441, file: !98, line: 34, baseType: !111, size: 64, align: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !441, file: !98, line: 35, baseType: !153, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !441, file: !98, line: 36, baseType: !153, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !441, file: !98, line: 37, baseType: !153, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !441, file: !98, line: 38, baseType: !153, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !441, file: !98, line: 40, baseType: !425, size: 128, align: 64, offset: 1216)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !441, file: !98, line: 41, baseType: !85, size: 64, align: 64, offset: 1344)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !441, file: !98, line: 42, baseType: !82, size: 32, align: 32, offset: 1408)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !441, file: !98, line: 44, baseType: !292, size: 64, align: 64, offset: 1472)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !441, file: !98, line: 45, baseType: !292, size: 64, align: 64, offset: 1536)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !441, file: !98, line: 53, baseType: !436, size: 64, align: 64, offset: 1600)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !441, file: !98, line: 55, baseType: !520, size: 64, align: 64, offset: 1664)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!82, !439, !112}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !441, file: !98, line: 57, baseType: !524, size: 64, align: 64, offset: 1728)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!82, !439, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !441, file: !98, line: 60, baseType: !530, size: 64, align: 64, offset: 1792)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!527, !439}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !441, file: !98, line: 62, baseType: !534, size: 64, align: 64, offset: 1856)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !439, !527, !527, !82}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !441, file: !98, line: 65, baseType: !538, size: 64, align: 64, offset: 1920)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64, align: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !439, !527, !527}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !441, file: !98, line: 69, baseType: !543, size: 64, align: 64, offset: 1984)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !439, !527}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !126, line: 109, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !549, line: 15, size: 1408, align: 64, elements: !550)
!549 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = !{!551, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !569, !573, !575, !576, !577, !578, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !548, file: !552, line: 3, baseType: !82, size: 32, align: 32)
!552 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !548, file: !552, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !548, file: !552, line: 5, baseType: !413, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !548, file: !552, line: 7, baseType: !231, size: 64, align: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !548, file: !552, line: 8, baseType: !439, size: 64, align: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !548, file: !552, line: 9, baseType: !111, size: 64, align: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !552, line: 10, baseType: !111, size: 64, align: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !548, file: !552, line: 11, baseType: !85, size: 64, align: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !548, file: !552, line: 12, baseType: !82, size: 32, align: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !548, file: !552, line: 13, baseType: !111, size: 64, align: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !548, file: !552, line: 15, baseType: !563, size: 64, align: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !126, line: 108, baseType: !568)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !126, line: 108, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !548, file: !552, line: 17, baseType: !570, size: 64, align: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!527, !566}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !548, file: !574, line: 5, baseType: !111, size: 64, align: 64, offset: 704)
!574 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !548, file: !574, line: 6, baseType: !111, size: 64, align: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !548, file: !574, line: 7, baseType: !85, size: 64, align: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !548, file: !574, line: 9, baseType: !413, size: 64, align: 64, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !548, file: !574, line: 10, baseType: !579, size: 64, align: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !126, line: 111, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !582, line: 13, size: 576, align: 64, elements: !583)
!582 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!583 = !{!584, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !600, !601}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !585, line: 3, baseType: !82, size: 32, align: 32)
!585 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !581, file: !585, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !581, file: !585, line: 6, baseType: !85, size: 64, align: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !581, file: !585, line: 8, baseType: !111, size: 64, align: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !581, file: !585, line: 9, baseType: !111, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !581, file: !585, line: 10, baseType: !111, size: 64, align: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !581, file: !585, line: 11, baseType: !82, size: 32, align: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !581, file: !585, line: 14, baseType: !153, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !581, file: !585, line: 15, baseType: !153, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !581, file: !585, line: 18, baseType: !153, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !581, file: !585, line: 19, baseType: !153, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !581, file: !585, line: 20, baseType: !153, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !581, file: !585, line: 21, baseType: !153, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !581, file: !585, line: 22, baseType: !599, size: 64, align: 8, offset: 360)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, align: 8, elements: !148)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !581, file: !585, line: 26, baseType: !231, size: 64, align: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !585, line: 28, baseType: !579, size: 64, align: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !548, file: !574, line: 12, baseType: !153, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !548, file: !574, line: 13, baseType: !111, size: 64, align: 64, offset: 1088)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !548, file: !574, line: 14, baseType: !82, size: 32, align: 32, offset: 1152)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !548, file: !574, line: 15, baseType: !111, size: 64, align: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !548, file: !574, line: 17, baseType: !153, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !548, file: !574, line: 18, baseType: !153, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !548, file: !574, line: 19, baseType: !153, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !548, file: !574, line: 20, baseType: !153, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !548, file: !574, line: 22, baseType: !153, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !548, file: !574, line: 23, baseType: !153, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !548, file: !574, line: 24, baseType: !153, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !548, file: !574, line: 25, baseType: !153, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !548, file: !574, line: 26, baseType: !153, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !548, file: !574, line: 31, baseType: !616, size: 64, align: 64, offset: 1344)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!111, !546}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !441, file: !98, line: 70, baseType: !620, size: 64, align: 64, offset: 2048)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !439, !527}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !126, line: 110, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !126, line: 110, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !441, file: !98, line: 71, baseType: !627, size: 64, align: 64, offset: 2112)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!82, !527, !527}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !441, file: !98, line: 73, baseType: !627, size: 64, align: 64, offset: 2176)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !94, file: !98, line: 55, baseType: !520, size: 64, align: 64, offset: 1664)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !94, file: !98, line: 57, baseType: !524, size: 64, align: 64, offset: 1728)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !94, file: !98, line: 60, baseType: !530, size: 64, align: 64, offset: 1792)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !94, file: !98, line: 62, baseType: !534, size: 64, align: 64, offset: 1856)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !94, file: !98, line: 65, baseType: !538, size: 64, align: 64, offset: 1920)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !94, file: !98, line: 69, baseType: !543, size: 64, align: 64, offset: 1984)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !94, file: !98, line: 70, baseType: !620, size: 64, align: 64, offset: 2048)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !94, file: !98, line: 71, baseType: !627, size: 64, align: 64, offset: 2112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !94, file: !98, line: 73, baseType: !627, size: 64, align: 64, offset: 2176)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !94, file: !95, line: 46, baseType: !292, size: 64, align: 64, offset: 2240)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !94, file: !95, line: 47, baseType: !292, size: 64, align: 64, offset: 2304)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !94, file: !95, line: 48, baseType: !643, size: 64, align: 64, offset: 2368)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !93, line: 8, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !93, line: 8, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !94, file: !95, line: 49, baseType: !292, size: 64, align: 64, offset: 2432)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !94, file: !95, line: 51, baseType: !111, size: 64, align: 64, offset: 2496)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !94, file: !95, line: 53, baseType: !111, size: 64, align: 64, offset: 2560)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !94, file: !95, line: 54, baseType: !111, size: 64, align: 64, offset: 2624)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !94, file: !95, line: 55, baseType: !111, size: 64, align: 64, offset: 2688)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !94, file: !95, line: 56, baseType: !111, size: 64, align: 64, offset: 2752)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !94, file: !95, line: 57, baseType: !82, size: 32, align: 32, offset: 2816)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !94, file: !95, line: 59, baseType: !153, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !94, file: !95, line: 60, baseType: !153, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !94, file: !95, line: 62, baseType: !153, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !94, file: !95, line: 63, baseType: !153, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !94, file: !95, line: 64, baseType: !153, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !94, file: !95, line: 65, baseType: !153, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !94, file: !95, line: 66, baseType: !153, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !94, file: !95, line: 67, baseType: !153, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !94, file: !95, line: 68, baseType: !153, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !94, file: !95, line: 69, baseType: !153, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !94, file: !95, line: 70, baseType: !153, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !94, file: !95, line: 71, baseType: !153, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !94, file: !95, line: 72, baseType: !153, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !94, file: !95, line: 74, baseType: !82, size: 32, align: 32, offset: 2880)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !94, file: !95, line: 75, baseType: !82, size: 32, align: 32, offset: 2912)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !94, file: !95, line: 76, baseType: !82, size: 32, align: 32, offset: 2944)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !94, file: !95, line: 77, baseType: !82, size: 32, align: 32, offset: 2976)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !94, file: !95, line: 79, baseType: !413, size: 64, align: 64, offset: 3008)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !94, file: !95, line: 80, baseType: !292, size: 64, align: 64, offset: 3072)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !94, file: !95, line: 81, baseType: !292, size: 64, align: 64, offset: 3136)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !94, file: !95, line: 83, baseType: !331, size: 64, align: 64, offset: 3200)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !94, file: !95, line: 84, baseType: !283, size: 32, align: 32, offset: 3264)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !94, file: !95, line: 87, baseType: !82, size: 32, align: 32, offset: 3296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !94, file: !95, line: 91, baseType: !292, size: 64, align: 64, offset: 3328)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !94, file: !95, line: 92, baseType: !425, size: 128, align: 64, offset: 3392)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !94, file: !95, line: 93, baseType: !425, size: 128, align: 64, offset: 3520)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !94, file: !95, line: 95, baseType: !82, size: 32, align: 32, offset: 3648)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !94, file: !95, line: 96, baseType: !82, size: 32, align: 32, offset: 3680)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !94, file: !95, line: 97, baseType: !82, size: 32, align: 32, offset: 3712)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !94, file: !95, line: 100, baseType: !292, size: 64, align: 64, offset: 3776)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !94, file: !95, line: 103, baseType: !292, size: 64, align: 64, offset: 3840)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !94, file: !95, line: 106, baseType: !292, size: 64, align: 64, offset: 3904)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !94, file: !95, line: 108, baseType: !413, size: 64, align: 64, offset: 3968)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !94, file: !95, line: 109, baseType: !292, size: 64, align: 64, offset: 4032)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !94, file: !95, line: 111, baseType: !292, size: 64, align: 64, offset: 4096)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !94, file: !95, line: 114, baseType: !231, size: 64, align: 64, offset: 4160)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !94, file: !95, line: 116, baseType: !413, size: 64, align: 64, offset: 4224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !94, file: !95, line: 117, baseType: !691, size: 32768, align: 64, offset: 4288)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 32768, align: 64, elements: !741)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !693, line: 10, size: 128, align: 64, elements: !694)
!693 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!694 = !{!695, !740}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !692, file: !693, line: 11, baseType: !696, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !693, line: 7, baseType: !698)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !700, !527, !112, !112, !111, !331}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !93, line: 7, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !703, line: 15, size: 1600, align: 64, elements: !704)
!703 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !552, line: 3, baseType: !82, size: 32, align: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !702, file: !552, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !702, file: !552, line: 5, baseType: !413, size: 64, align: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !702, file: !552, line: 7, baseType: !231, size: 64, align: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !702, file: !552, line: 8, baseType: !91, size: 64, align: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !702, file: !552, line: 9, baseType: !111, size: 64, align: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !702, file: !552, line: 10, baseType: !111, size: 64, align: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !702, file: !552, line: 11, baseType: !85, size: 64, align: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !702, file: !552, line: 12, baseType: !82, size: 32, align: 32, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !702, file: !552, line: 13, baseType: !111, size: 64, align: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !702, file: !552, line: 15, baseType: !563, size: 64, align: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !702, file: !552, line: 17, baseType: !570, size: 64, align: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !702, file: !574, line: 5, baseType: !111, size: 64, align: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !702, file: !574, line: 6, baseType: !111, size: 64, align: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !702, file: !574, line: 7, baseType: !85, size: 64, align: 64, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !702, file: !574, line: 9, baseType: !413, size: 64, align: 64, offset: 896)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !702, file: !574, line: 10, baseType: !579, size: 64, align: 64, offset: 960)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !702, file: !574, line: 12, baseType: !153, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !702, file: !574, line: 13, baseType: !111, size: 64, align: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !702, file: !574, line: 14, baseType: !82, size: 32, align: 32, offset: 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !702, file: !574, line: 15, baseType: !111, size: 64, align: 64, offset: 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !702, file: !574, line: 17, baseType: !153, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !702, file: !574, line: 18, baseType: !153, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !702, file: !574, line: 19, baseType: !153, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !702, file: !574, line: 20, baseType: !153, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !702, file: !574, line: 22, baseType: !153, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !702, file: !574, line: 23, baseType: !153, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !702, file: !574, line: 24, baseType: !153, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !702, file: !574, line: 25, baseType: !153, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !702, file: !574, line: 26, baseType: !153, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !702, file: !574, line: 31, baseType: !616, size: 64, align: 64, offset: 1344)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !702, file: !703, line: 18, baseType: !292, size: 64, align: 64, offset: 1408)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !702, file: !703, line: 20, baseType: !85, size: 64, align: 64, offset: 1472)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !702, file: !703, line: 21, baseType: !82, size: 32, align: 32, offset: 1536)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !702, file: !703, line: 22, baseType: !82, size: 32, align: 32, offset: 1568)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !692, file: !693, line: 12, baseType: !112, size: 8, align: 8, offset: 64)
!741 = !{!742}
!742 = !DISubrange(count: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !94, file: !95, line: 118, baseType: !744, size: 2048, align: 8, offset: 37056)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2048, align: 8, elements: !741)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !94, file: !95, line: 120, baseType: !627, size: 64, align: 64, offset: 39104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !78, file: !81, line: 6, baseType: !111, size: 64, align: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !78, file: !81, line: 7, baseType: !111, size: 64, align: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !78, file: !81, line: 8, baseType: !111, size: 64, align: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !78, file: !81, line: 10, baseType: !750, size: 64, align: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !752, line: 9, baseType: !753)
!752 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !752, line: 9, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !78, file: !81, line: 11, baseType: !111, size: 64, align: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !78, file: !81, line: 12, baseType: !111, size: 64, align: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !78, file: !81, line: 14, baseType: !125, size: 160, align: 32, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !78, file: !81, line: 15, baseType: !758, size: 368, align: 8, offset: 736)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 368, align: 8, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 46)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !78, file: !81, line: 16, baseType: !82, size: 32, align: 32, offset: 1120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !78, file: !81, line: 18, baseType: !170, size: 64, align: 64, offset: 1152)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !78, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !78, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1248)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !78, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1280)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !78, file: !81, line: 20, baseType: !85, size: 64, align: 64, offset: 1344)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !78, file: !81, line: 21, baseType: !768, size: 64, align: 64, offset: 1408)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !126, line: 49, baseType: !191)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !78, file: !81, line: 23, baseType: !82, size: 32, align: 32, offset: 1472)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !78, file: !81, line: 25, baseType: !153, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !78, file: !81, line: 27, baseType: !413, size: 64, align: 64, offset: 1536)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !78, file: !773, line: 3, baseType: !768, size: 64, align: 64, offset: 1600)
!773 = !DIFile(filename: "dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!774 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !78, file: !773, line: 3, baseType: !768, size: 64, align: 64, offset: 1664)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !78, file: !773, line: 4, baseType: !82, size: 32, align: 32, offset: 1728)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !78, file: !773, line: 5, baseType: !82, size: 32, align: 32, offset: 1760)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !78, file: !773, line: 8, baseType: !778, size: 32, align: 8, offset: 1792)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 32, align: 8, elements: !154)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !78, file: !773, line: 9, baseType: !82, size: 32, align: 32, offset: 1824)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !78, file: !36, line: 23, baseType: !82, size: 32, align: 32, offset: 1856)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !78, file: !36, line: 24, baseType: !111, size: 64, align: 64, offset: 1920)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !78, file: !36, line: 26, baseType: !153, size: 1, align: 32, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "from_dccserver", scope: !78, file: !36, line: 27, baseType: !153, size: 1, align: 32, offset: 1985, flags: DIFlagBitField, extraData: i64 1984)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !752, line: 13, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 11, size: 1600, align: 64, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !786, file: !81, line: 1, baseType: !82, size: 32, align: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !786, file: !81, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !786, file: !81, line: 3, baseType: !85, size: 64, align: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !786, file: !81, line: 5, baseType: !91, size: 64, align: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !786, file: !81, line: 6, baseType: !111, size: 64, align: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !786, file: !81, line: 7, baseType: !111, size: 64, align: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !786, file: !81, line: 8, baseType: !111, size: 64, align: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !786, file: !81, line: 10, baseType: !750, size: 64, align: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !786, file: !81, line: 11, baseType: !111, size: 64, align: 64, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !786, file: !81, line: 12, baseType: !111, size: 64, align: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !786, file: !81, line: 14, baseType: !125, size: 160, align: 32, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !786, file: !81, line: 15, baseType: !758, size: 368, align: 8, offset: 736)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !786, file: !81, line: 16, baseType: !82, size: 32, align: 32, offset: 1120)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !786, file: !81, line: 18, baseType: !170, size: 64, align: 64, offset: 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !786, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1216)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !786, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1248)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !786, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1280)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !786, file: !81, line: 20, baseType: !85, size: 64, align: 64, offset: 1344)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !786, file: !81, line: 21, baseType: !768, size: 64, align: 64, offset: 1408)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !786, file: !81, line: 23, baseType: !82, size: 32, align: 32, offset: 1472)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !786, file: !81, line: 25, baseType: !153, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !786, file: !81, line: 27, baseType: !413, size: 64, align: 64, offset: 1536)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !126, line: 60, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64, align: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !231, !170, !82}
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !815, line: 9, baseType: !816)
!815 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !819, !819, !819, !819, !819, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEND_DCC_REC", file: !823, line: 20, baseType: !824)
!823 = !DIFile(filename: "dcc-send.h", directory: "/home/lichi/Desktop/irssi/task1")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 12, size: 1920, align: 64, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !81, line: 1, baseType: !82, size: 32, align: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !824, file: !81, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !824, file: !81, line: 3, baseType: !85, size: 64, align: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !824, file: !81, line: 5, baseType: !91, size: 64, align: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !824, file: !81, line: 6, baseType: !111, size: 64, align: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !824, file: !81, line: 7, baseType: !111, size: 64, align: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !824, file: !81, line: 8, baseType: !111, size: 64, align: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !824, file: !81, line: 10, baseType: !750, size: 64, align: 64, offset: 384)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !824, file: !81, line: 11, baseType: !111, size: 64, align: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !824, file: !81, line: 12, baseType: !111, size: 64, align: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !824, file: !81, line: 14, baseType: !125, size: 160, align: 32, offset: 576)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !824, file: !81, line: 15, baseType: !758, size: 368, align: 8, offset: 736)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !824, file: !81, line: 16, baseType: !82, size: 32, align: 32, offset: 1120)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !824, file: !81, line: 18, baseType: !170, size: 64, align: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !824, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !824, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1248)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !824, file: !81, line: 19, baseType: !82, size: 32, align: 32, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !824, file: !81, line: 20, baseType: !85, size: 64, align: 64, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !824, file: !81, line: 21, baseType: !768, size: 64, align: 64, offset: 1408)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !824, file: !81, line: 23, baseType: !82, size: 32, align: 32, offset: 1472)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !824, file: !81, line: 25, baseType: !153, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !824, file: !81, line: 27, baseType: !413, size: 64, align: 64, offset: 1536)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !824, file: !773, line: 3, baseType: !768, size: 64, align: 64, offset: 1600)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !824, file: !773, line: 3, baseType: !768, size: 64, align: 64, offset: 1664)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !824, file: !773, line: 4, baseType: !82, size: 32, align: 32, offset: 1728)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !824, file: !773, line: 5, baseType: !82, size: 32, align: 32, offset: 1760)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !824, file: !773, line: 8, baseType: !778, size: 32, align: 8, offset: 1792)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !824, file: !773, line: 9, baseType: !82, size: 32, align: 32, offset: 1824)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !824, file: !823, line: 15, baseType: !153, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "waitforend", scope: !824, file: !823, line: 18, baseType: !153, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gotalldata", scope: !824, file: !823, line: 19, baseType: !153, size: 1, align: 32, offset: 1858, flags: DIFlagBitField, extraData: i64 1856)
!857 = !{!858}
!858 = distinct !DIGlobalVariable(name: "dcc_get_recv_buffer", scope: !0, file: !859, line: 33, type: !111, isLocal: true, isDefinition: true, variable: i8** @dcc_get_recv_buffer)
!859 = !DIFile(filename: "dcc-get.c", directory: "/home/lichi/Desktop/irssi/task1")
!860 = !{i32 2, !"Dwarf Version", i32 4}
!861 = !{i32 2, !"Debug Info Version", i32 3}
!862 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!863 = distinct !DISubprogram(name: "dcc_get_create", scope: !859, file: !859, line: 35, type: !864, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{!76, !91, !750, !527, !527}
!866 = !{}
!867 = !DILocalVariable(name: "server", arg: 1, scope: !863, file: !859, line: 35, type: !91)
!868 = !DIExpression()
!869 = !DILocation(line: 35, column: 45, scope: !863)
!870 = !DILocalVariable(name: "chat", arg: 2, scope: !863, file: !859, line: 35, type: !750)
!871 = !DILocation(line: 35, column: 67, scope: !863)
!872 = !DILocalVariable(name: "nick", arg: 3, scope: !863, file: !859, line: 36, type: !527)
!873 = !DILocation(line: 36, column: 20, scope: !863)
!874 = !DILocalVariable(name: "arg", arg: 4, scope: !863, file: !859, line: 36, type: !527)
!875 = !DILocation(line: 36, column: 38, scope: !863)
!876 = !DILocalVariable(name: "dcc", scope: !863, file: !859, line: 38, type: !76)
!877 = !DILocation(line: 38, column: 15, scope: !863)
!878 = !DILocation(line: 40, column: 25, scope: !863)
!879 = !DILocation(line: 40, column: 9, scope: !863)
!880 = !DILocation(line: 40, column: 6, scope: !863)
!881 = !DILocation(line: 41, column: 19, scope: !863)
!882 = !DILocation(line: 41, column: 2, scope: !863)
!883 = !DILocation(line: 41, column: 7, scope: !863)
!884 = !DILocation(line: 41, column: 17, scope: !863)
!885 = !DILocation(line: 42, column: 14, scope: !863)
!886 = !DILocation(line: 42, column: 2, scope: !863)
!887 = !DILocation(line: 42, column: 7, scope: !863)
!888 = !DILocation(line: 42, column: 12, scope: !863)
!889 = !DILocation(line: 43, column: 2, scope: !863)
!890 = !DILocation(line: 43, column: 7, scope: !863)
!891 = !DILocation(line: 43, column: 15, scope: !863)
!892 = !DILocation(line: 45, column: 29, scope: !863)
!893 = !DILocation(line: 45, column: 16, scope: !863)
!894 = !DILocation(line: 45, column: 36, scope: !863)
!895 = !DILocation(line: 45, column: 44, scope: !863)
!896 = !DILocation(line: 45, column: 50, scope: !863)
!897 = !DILocation(line: 45, column: 56, scope: !863)
!898 = !DILocation(line: 45, column: 2, scope: !863)
!899 = !DILocation(line: 46, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !863, file: !859, line: 46, column: 6)
!901 = !DILocation(line: 46, column: 11, scope: !900)
!902 = !DILocation(line: 46, column: 23, scope: !900)
!903 = !DILocation(line: 46, column: 6, scope: !863)
!904 = !DILocation(line: 48, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !859, line: 46, column: 31)
!906 = !DILocation(line: 48, column: 3, scope: !905)
!907 = !DILocation(line: 49, column: 3, scope: !905)
!908 = !DILocation(line: 52, column: 16, scope: !863)
!909 = !DILocation(line: 52, column: 9, scope: !863)
!910 = !DILocation(line: 53, column: 1, scope: !863)
!911 = distinct !DISubprogram(name: "dcc_get_download_path", scope: !859, file: !859, line: 63, type: !912, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!912 = !DISubroutineType(types: !913)
!913 = !{!111, !527}
!914 = !DILocalVariable(name: "fname", arg: 1, scope: !911, file: !859, line: 63, type: !527)
!915 = !DILocation(line: 63, column: 41, scope: !911)
!916 = !DILocalVariable(name: "str", scope: !911, file: !859, line: 65, type: !111)
!917 = !DILocation(line: 65, column: 8, scope: !911)
!918 = !DILocalVariable(name: "downpath", scope: !911, file: !859, line: 65, type: !111)
!919 = !DILocation(line: 65, column: 14, scope: !911)
!920 = !DILocalVariable(name: "base", scope: !911, file: !859, line: 66, type: !111)
!921 = !DILocation(line: 66, column: 8, scope: !911)
!922 = !DILocation(line: 68, column: 29, scope: !911)
!923 = !DILocation(line: 68, column: 9, scope: !911)
!924 = !DILocation(line: 68, column: 7, scope: !911)
!925 = !DILocation(line: 69, column: 26, scope: !911)
!926 = !DILocation(line: 69, column: 13, scope: !927)
!927 = !DILexicalBlockFile(scope: !911, file: !859, discriminator: 1)
!928 = !DILocation(line: 69, column: 11, scope: !911)
!929 = !DILocation(line: 70, column: 20, scope: !911)
!930 = !DILocation(line: 70, column: 35, scope: !911)
!931 = !DILocation(line: 70, column: 8, scope: !911)
!932 = !DILocation(line: 70, column: 6, scope: !911)
!933 = !DILocation(line: 71, column: 9, scope: !911)
!934 = !DILocation(line: 71, column: 2, scope: !911)
!935 = !DILocation(line: 72, column: 9, scope: !911)
!936 = !DILocation(line: 72, column: 2, scope: !911)
!937 = !DILocation(line: 74, column: 9, scope: !911)
!938 = !DILocation(line: 74, column: 2, scope: !911)
!939 = distinct !DISubprogram(name: "dcc_get_send_received", scope: !859, file: !859, line: 98, type: !940, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !76}
!942 = !DILocalVariable(name: "dcc", arg: 1, scope: !939, file: !859, line: 98, type: !76)
!943 = !DILocation(line: 98, column: 41, scope: !939)
!944 = !DILocalVariable(name: "recd", scope: !939, file: !859, line: 100, type: !202)
!945 = !DILocation(line: 100, column: 10, scope: !939)
!946 = !DILocation(line: 102, column: 25, scope: !939)
!947 = !DILocation(line: 102, column: 30, scope: !939)
!948 = !DILocation(line: 102, column: 38, scope: !939)
!949 = !DILocation(line: 102, column: 19, scope: !939)
!950 = !DILocation(line: 102, column: 7, scope: !939)
!951 = !DILocation(line: 103, column: 9, scope: !939)
!952 = !DILocation(line: 103, column: 14, scope: !939)
!953 = !DILocation(line: 103, column: 2, scope: !939)
!954 = !DILocation(line: 106, column: 16, scope: !939)
!955 = !DILocation(line: 106, column: 21, scope: !939)
!956 = !DILocation(line: 106, column: 29, scope: !939)
!957 = !DILocation(line: 106, column: 34, scope: !939)
!958 = !DILocation(line: 106, column: 44, scope: !939)
!959 = !DILocation(line: 106, column: 49, scope: !939)
!960 = !DILocation(line: 106, column: 43, scope: !939)
!961 = !DILocation(line: 107, column: 11, scope: !939)
!962 = !DILocation(line: 107, column: 16, scope: !939)
!963 = !DILocation(line: 107, column: 10, scope: !939)
!964 = !DILocation(line: 106, column: 3, scope: !939)
!965 = !DILocation(line: 105, column: 2, scope: !939)
!966 = !DILocation(line: 105, column: 7, scope: !939)
!967 = !DILocation(line: 105, column: 17, scope: !939)
!968 = !DILocation(line: 108, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !939, file: !859, line: 108, column: 6)
!970 = !DILocation(line: 108, column: 11, scope: !969)
!971 = !DILocation(line: 108, column: 21, scope: !969)
!972 = !DILocation(line: 108, column: 6, scope: !939)
!973 = !DILocation(line: 108, column: 27, scope: !974)
!974 = !DILexicalBlockFile(scope: !969, file: !859, discriminator: 1)
!975 = !DILocation(line: 108, column: 32, scope: !974)
!976 = !DILocation(line: 108, column: 42, scope: !974)
!977 = !DILocation(line: 114, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !939, file: !859, line: 114, column: 6)
!979 = !DILocation(line: 114, column: 11, scope: !978)
!980 = !DILocation(line: 114, column: 20, scope: !978)
!981 = !DILocation(line: 114, column: 6, scope: !939)
!982 = !DILocation(line: 115, column: 31, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !859, line: 114, column: 27)
!984 = !DILocation(line: 115, column: 36, scope: !983)
!985 = !DILocation(line: 117, column: 10, scope: !983)
!986 = !DILocation(line: 115, column: 19, scope: !983)
!987 = !DILocation(line: 115, column: 3, scope: !983)
!988 = !DILocation(line: 115, column: 8, scope: !983)
!989 = !DILocation(line: 115, column: 17, scope: !983)
!990 = !DILocation(line: 118, column: 2, scope: !983)
!991 = !DILocation(line: 119, column: 1, scope: !939)
!992 = distinct !DISubprogram(name: "sig_dccget_send", scope: !859, file: !859, line: 122, type: !940, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!993 = !DILocalVariable(name: "dcc", arg: 1, scope: !992, file: !859, line: 122, type: !76)
!994 = !DILocation(line: 122, column: 42, scope: !992)
!995 = !DILocalVariable(name: "recd", scope: !992, file: !859, line: 124, type: !202)
!996 = !DILocation(line: 124, column: 10, scope: !992)
!997 = !DILocalVariable(name: "ret", scope: !992, file: !859, line: 125, type: !82)
!998 = !DILocation(line: 125, column: 6, scope: !992)
!999 = !DILocation(line: 127, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !992, file: !859, line: 127, column: 6)
!1001 = !DILocation(line: 127, column: 11, scope: !1000)
!1002 = !DILocation(line: 127, column: 21, scope: !1000)
!1003 = !DILocation(line: 127, column: 6, scope: !992)
!1004 = !DILocation(line: 128, column: 22, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !859, line: 127, column: 27)
!1006 = !DILocation(line: 128, column: 27, scope: !1005)
!1007 = !DILocation(line: 128, column: 35, scope: !1005)
!1008 = !DILocation(line: 128, column: 40, scope: !1005)
!1009 = !DILocation(line: 128, column: 50, scope: !1005)
!1010 = !DILocation(line: 128, column: 55, scope: !1005)
!1011 = !DILocation(line: 128, column: 49, scope: !1005)
!1012 = !DILocation(line: 129, column: 10, scope: !1005)
!1013 = !DILocation(line: 129, column: 15, scope: !1005)
!1014 = !DILocation(line: 129, column: 9, scope: !1005)
!1015 = !DILocation(line: 128, column: 9, scope: !1005)
!1016 = !DILocation(line: 128, column: 7, scope: !1005)
!1017 = !DILocation(line: 131, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1005, file: !859, line: 131, column: 7)
!1019 = !DILocation(line: 131, column: 12, scope: !1018)
!1020 = !DILocation(line: 131, column: 22, scope: !1018)
!1021 = !DILocation(line: 131, column: 7, scope: !1005)
!1022 = !DILocation(line: 132, column: 21, scope: !1018)
!1023 = !DILocation(line: 132, column: 4, scope: !1018)
!1024 = !DILocation(line: 132, column: 9, scope: !1018)
!1025 = !DILocation(line: 132, column: 19, scope: !1018)
!1026 = !DILocation(line: 133, column: 12, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !859, line: 133, column: 12)
!1028 = !DILocation(line: 133, column: 16, scope: !1027)
!1029 = !DILocation(line: 133, column: 12, scope: !1018)
!1030 = !DILocation(line: 134, column: 22, scope: !1027)
!1031 = !DILocation(line: 134, column: 4, scope: !1027)
!1032 = !DILocation(line: 134, column: 9, scope: !1027)
!1033 = !DILocation(line: 134, column: 19, scope: !1027)
!1034 = !DILocation(line: 136, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1005, file: !859, line: 136, column: 7)
!1036 = !DILocation(line: 136, column: 12, scope: !1035)
!1037 = !DILocation(line: 136, column: 22, scope: !1035)
!1038 = !DILocation(line: 136, column: 7, scope: !1005)
!1039 = !DILocation(line: 136, column: 28, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1035, file: !859, discriminator: 1)
!1041 = !DILocation(line: 136, column: 33, scope: !1040)
!1042 = !DILocation(line: 136, column: 43, scope: !1040)
!1043 = !DILocation(line: 138, column: 2, scope: !1005)
!1044 = !DILocation(line: 140, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !992, file: !859, line: 140, column: 6)
!1046 = !DILocation(line: 140, column: 11, scope: !1045)
!1047 = !DILocation(line: 140, column: 21, scope: !1045)
!1048 = !DILocation(line: 140, column: 6, scope: !992)
!1049 = !DILocation(line: 141, column: 19, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !859, line: 140, column: 27)
!1051 = !DILocation(line: 141, column: 24, scope: !1050)
!1052 = !DILocation(line: 141, column: 3, scope: !1050)
!1053 = !DILocation(line: 142, column: 17, scope: !1050)
!1054 = !DILocation(line: 142, column: 22, scope: !1050)
!1055 = !DILocation(line: 142, column: 31, scope: !1050)
!1056 = !DILocation(line: 143, column: 2, scope: !1050)
!1057 = !DILocation(line: 145, column: 2, scope: !992)
!1058 = !DILocation(line: 145, column: 16, scope: !992)
!1059 = !DILocation(line: 145, column: 21, scope: !992)
!1060 = !DILocation(line: 146, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !992, file: !859, line: 146, column: 6)
!1062 = !DILocation(line: 146, column: 30, scope: !1061)
!1063 = !DILocation(line: 146, column: 35, scope: !1061)
!1064 = !DILocation(line: 146, column: 43, scope: !1061)
!1065 = !DILocation(line: 146, column: 24, scope: !1061)
!1066 = !DILocation(line: 146, column: 11, scope: !1061)
!1067 = !DILocation(line: 146, column: 6, scope: !992)
!1068 = !DILocation(line: 147, column: 39, scope: !1061)
!1069 = !DILocation(line: 147, column: 17, scope: !1061)
!1070 = !DILocation(line: 148, column: 1, scope: !992)
!1071 = distinct !DISubprogram(name: "sig_dccget_connected", scope: !859, file: !859, line: 191, type: !940, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1072 = !DILocalVariable(name: "dcc", arg: 1, scope: !1071, file: !859, line: 191, type: !76)
!1073 = !DILocation(line: 191, column: 40, scope: !1071)
!1074 = !DILocalVariable(name: "statbuf", scope: !1071, file: !859, line: 193, type: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1076, line: 46, size: 1152, align: 64, elements: !1077)
!1076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!1077 = !{!1078, !1080, !1082, !1084, !1086, !1088, !1090, !1091, !1092, !1094, !1096, !1098, !1104, !1105, !1106}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1075, file: !1076, line: 48, baseType: !1079, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !88, line: 124, baseType: !191)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1075, file: !1076, line: 53, baseType: !1081, size: 64, align: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !88, line: 127, baseType: !191)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1075, file: !1076, line: 61, baseType: !1083, size: 64, align: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !88, line: 130, baseType: !191)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1075, file: !1076, line: 62, baseType: !1085, size: 32, align: 32, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !88, line: 129, baseType: !153)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1075, file: !1076, line: 64, baseType: !1087, size: 32, align: 32, offset: 224)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !88, line: 125, baseType: !153)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1075, file: !1076, line: 65, baseType: !1089, size: 32, align: 32, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !88, line: 126, baseType: !153)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1075, file: !1076, line: 67, baseType: !82, size: 32, align: 32, offset: 288)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1075, file: !1076, line: 69, baseType: !1079, size: 64, align: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1075, file: !1076, line: 74, baseType: !1093, size: 64, align: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !88, line: 131, baseType: !89)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1075, file: !1076, line: 78, baseType: !1095, size: 64, align: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !88, line: 153, baseType: !89)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1075, file: !1076, line: 80, baseType: !1097, size: 64, align: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !88, line: 158, baseType: !89)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1075, file: !1076, line: 91, baseType: !1099, size: 128, align: 64, offset: 576)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !86, line: 120, size: 128, align: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1099, file: !86, line: 122, baseType: !87, size: 64, align: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1099, file: !86, line: 123, baseType: !1103, size: 64, align: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !88, line: 175, baseType: !89)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1075, file: !1076, line: 92, baseType: !1099, size: 128, align: 64, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1075, file: !1076, line: 93, baseType: !1099, size: 128, align: 64, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1075, file: !1076, line: 106, baseType: !1107, size: 192, align: 64, offset: 960)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, size: 192, align: 64, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 3)
!1110 = !DILocation(line: 193, column: 14, scope: !1071)
!1111 = !DILocalVariable(name: "fname", scope: !1071, file: !859, line: 194, type: !111)
!1112 = !DILocation(line: 194, column: 8, scope: !1071)
!1113 = !DILocalVariable(name: "tempfname", scope: !1071, file: !859, line: 194, type: !111)
!1114 = !DILocation(line: 194, column: 16, scope: !1071)
!1115 = !DILocalVariable(name: "str", scope: !1071, file: !859, line: 194, type: !111)
!1116 = !DILocation(line: 194, column: 28, scope: !1071)
!1117 = !DILocalVariable(name: "ret", scope: !1071, file: !859, line: 195, type: !82)
!1118 = !DILocation(line: 195, column: 13, scope: !1071)
!1119 = !DILocalVariable(name: "ret_errno", scope: !1071, file: !859, line: 195, type: !82)
!1120 = !DILocation(line: 195, column: 18, scope: !1071)
!1121 = !DILocalVariable(name: "temphandle", scope: !1071, file: !859, line: 195, type: !82)
!1122 = !DILocation(line: 195, column: 29, scope: !1071)
!1123 = !DILocalVariable(name: "old_umask", scope: !1071, file: !859, line: 195, type: !82)
!1124 = !DILocation(line: 195, column: 41, scope: !1071)
!1125 = !DILocation(line: 197, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1071, file: !859, line: 197, column: 6)
!1127 = !DILocation(line: 197, column: 12, scope: !1126)
!1128 = !DILocation(line: 197, column: 6, scope: !1071)
!1129 = !DILocation(line: 198, column: 20, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !859, line: 198, column: 7)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !859, line: 197, column: 28)
!1132 = !DILocation(line: 198, column: 25, scope: !1130)
!1133 = !DILocation(line: 198, column: 7, scope: !1130)
!1134 = !DILocation(line: 198, column: 33, scope: !1130)
!1135 = !DILocation(line: 198, column: 7, scope: !1131)
!1136 = !DILocation(line: 200, column: 40, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !859, line: 198, column: 39)
!1138 = !DILocation(line: 200, column: 4, scope: !1137)
!1139 = !DILocation(line: 201, column: 30, scope: !1137)
!1140 = !DILocation(line: 201, column: 17, scope: !1137)
!1141 = !DILocation(line: 201, column: 4, scope: !1137)
!1142 = !DILocation(line: 202, column: 4, scope: !1137)
!1143 = !DILocation(line: 205, column: 19, scope: !1131)
!1144 = !DILocation(line: 205, column: 24, scope: !1131)
!1145 = !DILocation(line: 205, column: 3, scope: !1131)
!1146 = !DILocation(line: 206, column: 3, scope: !1131)
!1147 = !DILocation(line: 206, column: 8, scope: !1131)
!1148 = !DILocation(line: 206, column: 16, scope: !1131)
!1149 = !DILocation(line: 207, column: 2, scope: !1131)
!1150 = !DILocation(line: 209, column: 9, scope: !1071)
!1151 = !DILocation(line: 209, column: 14, scope: !1071)
!1152 = !DILocation(line: 209, column: 2, scope: !1071)
!1153 = !DILocation(line: 210, column: 36, scope: !1071)
!1154 = !DILocation(line: 210, column: 41, scope: !1071)
!1155 = !DILocation(line: 210, column: 14, scope: !1071)
!1156 = !DILocation(line: 210, column: 2, scope: !1071)
!1157 = !DILocation(line: 210, column: 7, scope: !1071)
!1158 = !DILocation(line: 210, column: 12, scope: !1071)
!1159 = !DILocation(line: 213, column: 36, scope: !1071)
!1160 = !DILocation(line: 213, column: 2, scope: !1071)
!1161 = !DILocation(line: 215, column: 11, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1071, file: !859, line: 215, column: 6)
!1163 = !DILocation(line: 215, column: 16, scope: !1162)
!1164 = !DILocation(line: 215, column: 6, scope: !1162)
!1165 = !DILocation(line: 215, column: 32, scope: !1162)
!1166 = !DILocation(line: 215, column: 37, scope: !1162)
!1167 = !DILocation(line: 216, column: 6, scope: !1162)
!1168 = !DILocation(line: 216, column: 11, scope: !1162)
!1169 = !DILocation(line: 216, column: 20, scope: !1162)
!1170 = !DILocation(line: 215, column: 6, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1071, file: !859, discriminator: 1)
!1172 = !DILocation(line: 218, column: 31, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !859, line: 216, column: 39)
!1174 = !DILocation(line: 218, column: 36, scope: !1173)
!1175 = !DILocation(line: 218, column: 11, scope: !1173)
!1176 = !DILocation(line: 218, column: 9, scope: !1173)
!1177 = !DILocation(line: 219, column: 10, scope: !1173)
!1178 = !DILocation(line: 219, column: 15, scope: !1173)
!1179 = !DILocation(line: 219, column: 3, scope: !1173)
!1180 = !DILocation(line: 220, column: 15, scope: !1173)
!1181 = !DILocation(line: 220, column: 3, scope: !1173)
!1182 = !DILocation(line: 220, column: 8, scope: !1173)
!1183 = !DILocation(line: 220, column: 13, scope: !1173)
!1184 = !DILocation(line: 221, column: 2, scope: !1173)
!1185 = !DILocation(line: 223, column: 6, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1071, file: !859, line: 223, column: 6)
!1187 = !DILocation(line: 223, column: 11, scope: !1186)
!1188 = !DILocation(line: 223, column: 20, scope: !1186)
!1189 = !DILocation(line: 223, column: 6, scope: !1071)
!1190 = !DILocalVariable(name: "dcc_file_create_mode", scope: !1191, file: !859, line: 224, type: !82)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !859, line: 223, column: 39)
!1192 = !DILocation(line: 224, column: 7, scope: !1191)
!1193 = !DILocation(line: 224, column: 40, scope: !1191)
!1194 = !DILocation(line: 224, column: 30, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1191, file: !859, discriminator: 1)
!1196 = !DILocation(line: 228, column: 10, scope: !1191)
!1197 = !DILocation(line: 228, column: 15, scope: !1191)
!1198 = !DILocation(line: 228, column: 3, scope: !1191)
!1199 = !DILocation(line: 232, column: 27, scope: !1191)
!1200 = !DILocation(line: 232, column: 32, scope: !1191)
!1201 = !DILocation(line: 232, column: 15, scope: !1191)
!1202 = !DILocation(line: 232, column: 13, scope: !1191)
!1203 = !DILocation(line: 234, column: 29, scope: !1191)
!1204 = !DILocation(line: 234, column: 27, scope: !1191)
!1205 = !DILocation(line: 235, column: 24, scope: !1191)
!1206 = !DILocation(line: 235, column: 16, scope: !1191)
!1207 = !DILocation(line: 235, column: 14, scope: !1191)
!1208 = !DILocation(line: 236, column: 9, scope: !1191)
!1209 = !DILocation(line: 236, column: 3, scope: !1191)
!1210 = !DILocation(line: 238, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1191, file: !859, line: 238, column: 7)
!1212 = !DILocation(line: 238, column: 18, scope: !1211)
!1213 = !DILocation(line: 238, column: 7, scope: !1191)
!1214 = !DILocation(line: 239, column: 8, scope: !1211)
!1215 = !DILocation(line: 239, column: 4, scope: !1211)
!1216 = !DILocation(line: 241, column: 15, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !859, line: 241, column: 8)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !859, line: 240, column: 8)
!1219 = !DILocation(line: 241, column: 27, scope: !1217)
!1220 = !DILocation(line: 241, column: 8, scope: !1217)
!1221 = !DILocation(line: 241, column: 49, scope: !1217)
!1222 = !DILocation(line: 241, column: 8, scope: !1218)
!1223 = !DILocation(line: 242, column: 6, scope: !1217)
!1224 = !DILocation(line: 242, column: 5, scope: !1217)
!1225 = !DILocation(line: 242, column: 71, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1217, file: !859, discriminator: 1)
!1227 = !DILocation(line: 242, column: 5, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1217, file: !859, discriminator: 2)
!1229 = !DILocation(line: 244, column: 8, scope: !1218)
!1230 = !DILocation(line: 247, column: 9, scope: !1191)
!1231 = !DILocation(line: 247, column: 3, scope: !1191)
!1232 = !DILocation(line: 249, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1191, file: !859, line: 249, column: 7)
!1234 = !DILocation(line: 249, column: 11, scope: !1233)
!1235 = !DILocation(line: 249, column: 7, scope: !1191)
!1236 = !DILocation(line: 250, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !859, line: 249, column: 18)
!1238 = !DILocation(line: 250, column: 26, scope: !1237)
!1239 = !DILocation(line: 250, column: 31, scope: !1237)
!1240 = !DILocation(line: 250, column: 10, scope: !1237)
!1241 = !DILocation(line: 250, column: 8, scope: !1237)
!1242 = !DILocation(line: 252, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !859, line: 252, column: 8)
!1244 = !DILocation(line: 252, column: 12, scope: !1243)
!1245 = !DILocation(line: 252, column: 18, scope: !1243)
!1246 = !DILocation(line: 254, column: 10, scope: !1243)
!1247 = !DILocation(line: 254, column: 9, scope: !1243)
!1248 = !DILocation(line: 254, column: 14, scope: !1243)
!1249 = !DILocation(line: 254, column: 23, scope: !1243)
!1250 = !DILocation(line: 256, column: 10, scope: !1243)
!1251 = !DILocation(line: 256, column: 9, scope: !1243)
!1252 = !DILocation(line: 256, column: 14, scope: !1243)
!1253 = !DILocation(line: 256, column: 24, scope: !1243)
!1254 = !DILocation(line: 256, column: 29, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1243, file: !859, discriminator: 1)
!1256 = !DILocation(line: 256, column: 28, scope: !1255)
!1257 = !DILocation(line: 256, column: 33, scope: !1255)
!1258 = !DILocation(line: 256, column: 43, scope: !1255)
!1259 = !DILocation(line: 258, column: 10, scope: !1243)
!1260 = !DILocation(line: 258, column: 9, scope: !1243)
!1261 = !DILocation(line: 258, column: 14, scope: !1243)
!1262 = !DILocation(line: 252, column: 8, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1237, file: !859, discriminator: 1)
!1264 = !DILocation(line: 262, column: 18, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1243, file: !859, line: 258, column: 30)
!1266 = !DILocation(line: 262, column: 29, scope: !1265)
!1267 = !DILocation(line: 262, column: 34, scope: !1265)
!1268 = !DILocation(line: 262, column: 11, scope: !1265)
!1269 = !DILocation(line: 262, column: 9, scope: !1265)
!1270 = !DILocation(line: 263, column: 4, scope: !1265)
!1271 = !DILocation(line: 264, column: 3, scope: !1237)
!1272 = !DILocation(line: 267, column: 18, scope: !1191)
!1273 = !DILocation(line: 267, column: 22, scope: !1191)
!1274 = !DILocation(line: 267, column: 18, scope: !1195)
!1275 = !DILocation(line: 268, column: 9, scope: !1191)
!1276 = !DILocation(line: 268, column: 14, scope: !1191)
!1277 = !DILocation(line: 268, column: 4, scope: !1191)
!1278 = !DILocation(line: 267, column: 18, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1191, file: !859, discriminator: 2)
!1280 = !DILocation(line: 267, column: 18, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1191, file: !859, discriminator: 3)
!1282 = !DILocation(line: 267, column: 3, scope: !1281)
!1283 = !DILocation(line: 267, column: 8, scope: !1281)
!1284 = !DILocation(line: 267, column: 16, scope: !1281)
!1285 = !DILocation(line: 271, column: 16, scope: !1191)
!1286 = !DILocation(line: 271, column: 15, scope: !1191)
!1287 = !DILocation(line: 271, column: 13, scope: !1191)
!1288 = !DILocation(line: 272, column: 10, scope: !1191)
!1289 = !DILocation(line: 272, column: 3, scope: !1191)
!1290 = !DILocation(line: 273, column: 10, scope: !1191)
!1291 = !DILocation(line: 273, column: 3, scope: !1191)
!1292 = !DILocation(line: 275, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1191, file: !859, line: 275, column: 7)
!1294 = !DILocation(line: 275, column: 12, scope: !1293)
!1295 = !DILocation(line: 275, column: 20, scope: !1293)
!1296 = !DILocation(line: 275, column: 7, scope: !1191)
!1297 = !DILocation(line: 277, column: 9, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !859, line: 275, column: 27)
!1299 = !DILocation(line: 277, column: 14, scope: !1298)
!1300 = !DILocation(line: 277, column: 19, scope: !1298)
!1301 = !DILocation(line: 277, column: 36, scope: !1298)
!1302 = !DILocation(line: 277, column: 25, scope: !1298)
!1303 = !DILocation(line: 276, column: 4, scope: !1298)
!1304 = !DILocation(line: 278, column: 30, scope: !1298)
!1305 = !DILocation(line: 278, column: 17, scope: !1298)
!1306 = !DILocation(line: 278, column: 4, scope: !1298)
!1307 = !DILocation(line: 279, column: 4, scope: !1298)
!1308 = !DILocation(line: 281, column: 2, scope: !1191)
!1309 = !DILocation(line: 283, column: 19, scope: !1071)
!1310 = !DILocation(line: 283, column: 2, scope: !1071)
!1311 = !DILocation(line: 283, column: 7, scope: !1071)
!1312 = !DILocation(line: 283, column: 17, scope: !1071)
!1313 = !DILocation(line: 284, column: 6, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1071, file: !859, line: 284, column: 6)
!1315 = !DILocation(line: 284, column: 11, scope: !1314)
!1316 = !DILocation(line: 284, column: 16, scope: !1314)
!1317 = !DILocation(line: 284, column: 6, scope: !1071)
!1318 = !DILocation(line: 285, column: 27, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !859, line: 284, column: 22)
!1320 = !DILocation(line: 285, column: 14, scope: !1319)
!1321 = !DILocation(line: 285, column: 3, scope: !1319)
!1322 = !DILocation(line: 286, column: 3, scope: !1319)
!1323 = !DILocation(line: 288, column: 29, scope: !1071)
!1324 = !DILocation(line: 288, column: 34, scope: !1071)
!1325 = !DILocation(line: 289, column: 45, scope: !1071)
!1326 = !DILocation(line: 288, column: 17, scope: !1071)
!1327 = !DILocation(line: 288, column: 2, scope: !1071)
!1328 = !DILocation(line: 288, column: 7, scope: !1071)
!1329 = !DILocation(line: 288, column: 15, scope: !1071)
!1330 = !DILocation(line: 290, column: 34, scope: !1071)
!1331 = !DILocation(line: 290, column: 2, scope: !1071)
!1332 = !DILocation(line: 292, column: 6, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1071, file: !859, line: 292, column: 6)
!1334 = !DILocation(line: 292, column: 11, scope: !1333)
!1335 = !DILocation(line: 292, column: 6, scope: !1071)
!1336 = !DILocation(line: 294, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !859, line: 292, column: 27)
!1338 = !DILocation(line: 294, column: 16, scope: !1337)
!1339 = !DILocation(line: 294, column: 25, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1337, file: !859, discriminator: 1)
!1341 = !DILocation(line: 294, column: 30, scope: !1340)
!1342 = !DILocation(line: 294, column: 38, scope: !1340)
!1343 = !DILocation(line: 294, column: 11, scope: !1340)
!1344 = !DILocation(line: 294, column: 11, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1337, file: !859, discriminator: 2)
!1346 = !DILocation(line: 294, column: 11, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1337, file: !859, discriminator: 3)
!1348 = !DILocation(line: 293, column: 9, scope: !1337)
!1349 = !DILocation(line: 293, column: 7, scope: !1337)
!1350 = !DILocation(line: 295, column: 16, scope: !1337)
!1351 = !DILocation(line: 295, column: 21, scope: !1337)
!1352 = !DILocation(line: 295, column: 29, scope: !1337)
!1353 = !DILocation(line: 295, column: 41, scope: !1337)
!1354 = !DILocation(line: 295, column: 34, scope: !1337)
!1355 = !DILocation(line: 295, column: 3, scope: !1340)
!1356 = !DILocation(line: 296, column: 2, scope: !1337)
!1357 = !DILocation(line: 297, column: 1, scope: !1071)
!1358 = distinct !DISubprogram(name: "dcc_get_rename_file", scope: !859, file: !859, line: 77, type: !912, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1359 = !DILocalVariable(name: "fname", arg: 1, scope: !1358, file: !859, line: 77, type: !527)
!1360 = !DILocation(line: 77, column: 46, scope: !1358)
!1361 = !DILocalVariable(name: "newname", scope: !1358, file: !859, line: 79, type: !331)
!1362 = !DILocation(line: 79, column: 11, scope: !1358)
!1363 = !DILocalVariable(name: "statbuf", scope: !1358, file: !859, line: 80, type: !1075)
!1364 = !DILocation(line: 80, column: 14, scope: !1358)
!1365 = !DILocalVariable(name: "ret", scope: !1358, file: !859, line: 81, type: !111)
!1366 = !DILocation(line: 81, column: 8, scope: !1358)
!1367 = !DILocalVariable(name: "num", scope: !1358, file: !859, line: 82, type: !82)
!1368 = !DILocation(line: 82, column: 6, scope: !1358)
!1369 = !DILocation(line: 84, column: 12, scope: !1358)
!1370 = !DILocation(line: 84, column: 10, scope: !1358)
!1371 = !DILocation(line: 85, column: 6, scope: !1358)
!1372 = !DILocation(line: 86, column: 2, scope: !1358)
!1373 = distinct !{!1373, !1372}
!1374 = !DILocation(line: 87, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1358, file: !859, line: 86, column: 5)
!1376 = !DILocation(line: 87, column: 37, scope: !1375)
!1377 = !DILocation(line: 87, column: 44, scope: !1375)
!1378 = !DILocation(line: 87, column: 3, scope: !1375)
!1379 = !DILocation(line: 88, column: 6, scope: !1375)
!1380 = !DILocation(line: 89, column: 2, scope: !1375)
!1381 = !DILocation(line: 89, column: 16, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1358, file: !859, discriminator: 1)
!1383 = !DILocation(line: 89, column: 25, scope: !1382)
!1384 = !DILocation(line: 89, column: 11, scope: !1382)
!1385 = !DILocation(line: 89, column: 40, scope: !1382)
!1386 = !DILocation(line: 89, column: 2, scope: !1382)
!1387 = !DILocation(line: 91, column: 8, scope: !1358)
!1388 = !DILocation(line: 91, column: 17, scope: !1358)
!1389 = !DILocation(line: 91, column: 6, scope: !1358)
!1390 = !DILocation(line: 92, column: 16, scope: !1358)
!1391 = !DILocation(line: 92, column: 2, scope: !1358)
!1392 = !DILocation(line: 93, column: 9, scope: !1358)
!1393 = !DILocation(line: 93, column: 2, scope: !1358)
!1394 = distinct !DISubprogram(name: "sig_dccget_receive", scope: !859, file: !859, line: 153, type: !940, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1395 = !DILocalVariable(name: "dcc", arg: 1, scope: !1394, file: !859, line: 153, type: !76)
!1396 = !DILocation(line: 153, column: 45, scope: !1394)
!1397 = !DILocalVariable(name: "ret", scope: !1394, file: !859, line: 155, type: !82)
!1398 = !DILocation(line: 155, column: 6, scope: !1394)
!1399 = !DILocation(line: 157, column: 6, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1394, file: !859, line: 157, column: 6)
!1401 = !DILocation(line: 157, column: 26, scope: !1400)
!1402 = !DILocation(line: 157, column: 6, scope: !1394)
!1403 = !DILocation(line: 158, column: 25, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !859, line: 157, column: 34)
!1405 = !DILocation(line: 158, column: 23, scope: !1404)
!1406 = !DILocation(line: 159, column: 2, scope: !1404)
!1407 = !DILocation(line: 161, column: 2, scope: !1394)
!1408 = !DILocation(line: 162, column: 21, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !859, line: 161, column: 11)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !859, line: 161, column: 2)
!1411 = distinct !DILexicalBlock(scope: !1394, file: !859, line: 161, column: 2)
!1412 = !DILocation(line: 162, column: 26, scope: !1409)
!1413 = !DILocation(line: 162, column: 34, scope: !1409)
!1414 = !DILocation(line: 162, column: 9, scope: !1409)
!1415 = !DILocation(line: 162, column: 7, scope: !1409)
!1416 = !DILocation(line: 164, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1409, file: !859, line: 164, column: 7)
!1418 = !DILocation(line: 164, column: 11, scope: !1417)
!1419 = !DILocation(line: 164, column: 7, scope: !1409)
!1420 = !DILocation(line: 164, column: 17, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1417, file: !859, discriminator: 1)
!1422 = !DILocation(line: 166, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1409, file: !859, line: 166, column: 7)
!1424 = !DILocation(line: 166, column: 11, scope: !1423)
!1425 = !DILocation(line: 166, column: 7, scope: !1409)
!1426 = !DILocation(line: 169, column: 28, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !859, line: 166, column: 16)
!1428 = !DILocation(line: 169, column: 15, scope: !1427)
!1429 = !DILocation(line: 169, column: 4, scope: !1427)
!1430 = !DILocation(line: 170, column: 4, scope: !1427)
!1431 = !DILocation(line: 173, column: 13, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1409, file: !859, line: 173, column: 7)
!1433 = !DILocation(line: 173, column: 18, scope: !1432)
!1434 = !DILocation(line: 173, column: 27, scope: !1432)
!1435 = !DILocation(line: 173, column: 48, scope: !1432)
!1436 = !DILocation(line: 173, column: 7, scope: !1432)
!1437 = !DILocation(line: 173, column: 56, scope: !1432)
!1438 = !DILocation(line: 173, column: 53, scope: !1432)
!1439 = !DILocation(line: 173, column: 7, scope: !1409)
!1440 = !DILocation(line: 176, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1432, file: !859, line: 173, column: 61)
!1442 = !DILocation(line: 176, column: 26, scope: !1441)
!1443 = !DILocation(line: 176, column: 25, scope: !1441)
!1444 = !DILocation(line: 176, column: 14, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1441, file: !859, discriminator: 1)
!1446 = !DILocation(line: 175, column: 4, scope: !1441)
!1447 = !DILocation(line: 177, column: 28, scope: !1441)
!1448 = !DILocation(line: 177, column: 15, scope: !1441)
!1449 = !DILocation(line: 177, column: 4, scope: !1441)
!1450 = !DILocation(line: 178, column: 25, scope: !1441)
!1451 = !DILocation(line: 180, column: 19, scope: !1409)
!1452 = !DILocation(line: 180, column: 3, scope: !1409)
!1453 = !DILocation(line: 180, column: 8, scope: !1409)
!1454 = !DILocation(line: 180, column: 16, scope: !1409)
!1455 = !DILocation(line: 161, column: 2, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1410, file: !859, discriminator: 1)
!1457 = distinct !{!1457, !1407}
!1458 = !DILocation(line: 184, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1394, file: !859, line: 184, column: 6)
!1460 = !DILocation(line: 184, column: 11, scope: !1459)
!1461 = !DILocation(line: 184, column: 21, scope: !1459)
!1462 = !DILocation(line: 184, column: 6, scope: !1394)
!1463 = !DILocation(line: 185, column: 25, scope: !1459)
!1464 = !DILocation(line: 185, column: 3, scope: !1459)
!1465 = !DILocation(line: 187, column: 40, scope: !1394)
!1466 = !DILocation(line: 187, column: 2, scope: !1394)
!1467 = !DILocation(line: 188, column: 1, scope: !1394)
!1468 = !DILocation(line: 188, column: 1, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1394, file: !859, discriminator: 1)
!1470 = distinct !DISubprogram(name: "dcc_get_connect", scope: !859, file: !859, line: 299, type: !940, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1471 = !DILocalVariable(name: "dcc", arg: 1, scope: !1470, file: !859, line: 299, type: !76)
!1472 = !DILocation(line: 299, column: 35, scope: !1470)
!1473 = !DILocation(line: 301, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !859, line: 301, column: 6)
!1475 = !DILocation(line: 301, column: 11, scope: !1474)
!1476 = !DILocation(line: 301, column: 20, scope: !1474)
!1477 = !DILocation(line: 301, column: 6, scope: !1470)
!1478 = !DILocation(line: 302, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !859, line: 301, column: 40)
!1480 = !DILocation(line: 302, column: 3, scope: !1479)
!1481 = !DILocation(line: 302, column: 8, scope: !1479)
!1482 = !DILocation(line: 302, column: 17, scope: !1479)
!1483 = !DILocation(line: 304, column: 2, scope: !1479)
!1484 = !DILocation(line: 306, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1470, file: !859, line: 306, column: 6)
!1486 = !DILocation(line: 306, column: 11, scope: !1485)
!1487 = !DILocation(line: 306, column: 6, scope: !1470)
!1488 = !DILocation(line: 307, column: 24, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !859, line: 306, column: 27)
!1490 = !DILocation(line: 307, column: 3, scope: !1489)
!1491 = !DILocation(line: 308, column: 3, scope: !1489)
!1492 = !DILocation(line: 311, column: 32, scope: !1470)
!1493 = !DILocation(line: 311, column: 37, scope: !1470)
!1494 = !DILocation(line: 311, column: 43, scope: !1470)
!1495 = !DILocation(line: 311, column: 48, scope: !1470)
!1496 = !DILocation(line: 311, column: 16, scope: !1470)
!1497 = !DILocation(line: 311, column: 2, scope: !1470)
!1498 = !DILocation(line: 311, column: 7, scope: !1470)
!1499 = !DILocation(line: 311, column: 14, scope: !1470)
!1500 = !DILocation(line: 313, column: 6, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1470, file: !859, line: 313, column: 6)
!1502 = !DILocation(line: 313, column: 11, scope: !1501)
!1503 = !DILocation(line: 313, column: 18, scope: !1501)
!1504 = !DILocation(line: 313, column: 6, scope: !1470)
!1505 = !DILocation(line: 315, column: 16, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !859, line: 313, column: 26)
!1507 = !DILocation(line: 315, column: 21, scope: !1506)
!1508 = !DILocation(line: 318, column: 9, scope: !1506)
!1509 = !DILocation(line: 315, column: 4, scope: !1506)
!1510 = !DILocation(line: 314, column: 3, scope: !1506)
!1511 = !DILocation(line: 314, column: 8, scope: !1506)
!1512 = !DILocation(line: 314, column: 16, scope: !1506)
!1513 = !DILocation(line: 319, column: 2, scope: !1506)
!1514 = !DILocation(line: 321, column: 39, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1501, file: !859, line: 319, column: 9)
!1516 = !DILocation(line: 321, column: 3, scope: !1515)
!1517 = !DILocation(line: 322, column: 29, scope: !1515)
!1518 = !DILocation(line: 322, column: 16, scope: !1515)
!1519 = !DILocation(line: 322, column: 3, scope: !1515)
!1520 = !DILocation(line: 324, column: 1, scope: !1470)
!1521 = distinct !DISubprogram(name: "dcc_get_passive", scope: !859, file: !859, line: 351, type: !940, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1522 = !DILocalVariable(name: "dcc", arg: 1, scope: !1521, file: !859, line: 351, type: !76)
!1523 = !DILocation(line: 351, column: 35, scope: !1521)
!1524 = !DILocalVariable(name: "handle", scope: !1521, file: !859, line: 353, type: !170)
!1525 = !DILocation(line: 353, column: 14, scope: !1521)
!1526 = !DILocalVariable(name: "own_ip", scope: !1521, file: !859, line: 354, type: !125)
!1527 = !DILocation(line: 354, column: 9, scope: !1521)
!1528 = !DILocalVariable(name: "port", scope: !1521, file: !859, line: 355, type: !82)
!1529 = !DILocation(line: 355, column: 6, scope: !1521)
!1530 = !DILocalVariable(name: "host", scope: !1521, file: !859, line: 356, type: !758)
!1531 = !DILocation(line: 356, column: 7, scope: !1521)
!1532 = !DILocation(line: 358, column: 44, scope: !1521)
!1533 = !DILocation(line: 358, column: 49, scope: !1521)
!1534 = !DILocation(line: 358, column: 57, scope: !1521)
!1535 = !DILocation(line: 358, column: 22, scope: !1521)
!1536 = !DILocation(line: 358, column: 11, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1521, file: !859, discriminator: 1)
!1538 = !DILocation(line: 358, column: 9, scope: !1521)
!1539 = !DILocation(line: 360, column: 6, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1521, file: !859, line: 360, column: 6)
!1541 = !DILocation(line: 360, column: 13, scope: !1540)
!1542 = !DILocation(line: 360, column: 6, scope: !1521)
!1543 = !DILocation(line: 361, column: 3, scope: !1540)
!1544 = distinct !{!1544, !1543}
!1545 = !DILocation(line: 361, column: 8, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1547, file: !859, discriminator: 1)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !859, line: 361, column: 6)
!1548 = !DILocation(line: 361, column: 78, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1546, file: !859, discriminator: 3)
!1550 = !DILocation(line: 361, column: 93, scope: !1546)
!1551 = !DILocation(line: 361, column: 101, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1547, file: !859, discriminator: 2)
!1553 = !DILocation(line: 363, column: 16, scope: !1521)
!1554 = !DILocation(line: 363, column: 2, scope: !1521)
!1555 = !DILocation(line: 363, column: 7, scope: !1521)
!1556 = !DILocation(line: 363, column: 14, scope: !1521)
!1557 = !DILocation(line: 364, column: 29, scope: !1521)
!1558 = !DILocation(line: 364, column: 34, scope: !1521)
!1559 = !DILocation(line: 365, column: 41, scope: !1521)
!1560 = !DILocation(line: 364, column: 17, scope: !1521)
!1561 = !DILocation(line: 364, column: 2, scope: !1521)
!1562 = !DILocation(line: 364, column: 7, scope: !1521)
!1563 = !DILocation(line: 364, column: 15, scope: !1521)
!1564 = !DILocation(line: 368, column: 22, scope: !1521)
!1565 = !DILocation(line: 368, column: 2, scope: !1521)
!1566 = !DILocation(line: 369, column: 16, scope: !1521)
!1567 = !DILocation(line: 369, column: 21, scope: !1521)
!1568 = !DILocation(line: 371, column: 9, scope: !1521)
!1569 = !DILocation(line: 371, column: 14, scope: !1521)
!1570 = !DILocation(line: 371, column: 20, scope: !1521)
!1571 = !DILocation(line: 371, column: 25, scope: !1521)
!1572 = !DILocation(line: 371, column: 30, scope: !1521)
!1573 = !DILocation(line: 371, column: 36, scope: !1521)
!1574 = !DILocation(line: 371, column: 42, scope: !1521)
!1575 = !DILocation(line: 371, column: 47, scope: !1521)
!1576 = !DILocation(line: 371, column: 53, scope: !1521)
!1577 = !DILocation(line: 371, column: 58, scope: !1521)
!1578 = !DILocation(line: 369, column: 2, scope: !1521)
!1579 = !DILocation(line: 372, column: 1, scope: !1521)
!1580 = !DILocation(line: 372, column: 1, scope: !1537)
!1581 = distinct !DISubprogram(name: "dcc_get_listen", scope: !859, file: !859, line: 326, type: !940, isLocal: true, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1582 = !DILocalVariable(name: "dcc", arg: 1, scope: !1581, file: !859, line: 326, type: !76)
!1583 = !DILocation(line: 326, column: 41, scope: !1581)
!1584 = !DILocalVariable(name: "handle", scope: !1581, file: !859, line: 328, type: !170)
!1585 = !DILocation(line: 328, column: 14, scope: !1581)
!1586 = !DILocalVariable(name: "addr", scope: !1581, file: !859, line: 329, type: !125)
!1587 = !DILocation(line: 329, column: 9, scope: !1581)
!1588 = !DILocalVariable(name: "port", scope: !1581, file: !859, line: 330, type: !82)
!1589 = !DILocation(line: 330, column: 6, scope: !1581)
!1590 = !DILocation(line: 333, column: 22, scope: !1581)
!1591 = !DILocation(line: 333, column: 27, scope: !1581)
!1592 = !DILocation(line: 333, column: 11, scope: !1581)
!1593 = !DILocation(line: 333, column: 9, scope: !1581)
!1594 = !DILocation(line: 334, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1581, file: !859, line: 334, column: 6)
!1596 = !DILocation(line: 334, column: 13, scope: !1595)
!1597 = !DILocation(line: 334, column: 6, scope: !1581)
!1598 = !DILocation(line: 335, column: 3, scope: !1595)
!1599 = !DILocation(line: 337, column: 17, scope: !1581)
!1600 = !DILocation(line: 337, column: 22, scope: !1581)
!1601 = !DILocation(line: 337, column: 2, scope: !1581)
!1602 = !DILocation(line: 338, column: 18, scope: !1581)
!1603 = !DILocation(line: 338, column: 23, scope: !1581)
!1604 = !DILocation(line: 338, column: 2, scope: !1581)
!1605 = !DILocation(line: 339, column: 2, scope: !1581)
!1606 = !DILocation(line: 339, column: 7, scope: !1581)
!1607 = !DILocation(line: 339, column: 15, scope: !1581)
!1608 = !DILocation(line: 341, column: 19, scope: !1581)
!1609 = !DILocation(line: 341, column: 2, scope: !1581)
!1610 = !DILocation(line: 341, column: 7, scope: !1581)
!1611 = !DILocation(line: 341, column: 17, scope: !1581)
!1612 = !DILocation(line: 342, column: 16, scope: !1581)
!1613 = !DILocation(line: 342, column: 2, scope: !1581)
!1614 = !DILocation(line: 342, column: 7, scope: !1581)
!1615 = !DILocation(line: 342, column: 14, scope: !1581)
!1616 = !DILocation(line: 343, column: 10, scope: !1581)
!1617 = !DILocation(line: 343, column: 15, scope: !1581)
!1618 = !DILocation(line: 343, column: 2, scope: !1581)
!1619 = !DILocation(line: 344, column: 15, scope: !1581)
!1620 = !DILocation(line: 344, column: 20, scope: !1581)
!1621 = !DILocation(line: 344, column: 26, scope: !1581)
!1622 = !DILocation(line: 344, column: 31, scope: !1581)
!1623 = !DILocation(line: 344, column: 2, scope: !1581)
!1624 = !DILocation(line: 345, column: 14, scope: !1581)
!1625 = !DILocation(line: 345, column: 2, scope: !1581)
!1626 = !DILocation(line: 345, column: 7, scope: !1581)
!1627 = !DILocation(line: 345, column: 12, scope: !1581)
!1628 = !DILocation(line: 347, column: 29, scope: !1581)
!1629 = !DILocation(line: 348, column: 47, scope: !1581)
!1630 = !DILocation(line: 347, column: 17, scope: !1581)
!1631 = !DILocation(line: 347, column: 2, scope: !1581)
!1632 = !DILocation(line: 347, column: 7, scope: !1581)
!1633 = !DILocation(line: 347, column: 15, scope: !1581)
!1634 = !DILocation(line: 349, column: 1, scope: !1581)
!1635 = !DILocation(line: 349, column: 1, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1581, file: !859, discriminator: 1)
!1637 = distinct !DISubprogram(name: "get_file_params_count", scope: !859, file: !859, line: 388, type: !1638, isLocal: false, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!82, !541, !82}
!1640 = !DILocalVariable(name: "params", arg: 1, scope: !1637, file: !859, line: 388, type: !541)
!1641 = !DILocation(line: 388, column: 34, scope: !1637)
!1642 = !DILocalVariable(name: "paramcount", arg: 2, scope: !1637, file: !859, line: 388, type: !82)
!1643 = !DILocation(line: 388, column: 46, scope: !1637)
!1644 = !DILocalVariable(name: "pos", scope: !1637, file: !859, line: 390, type: !82)
!1645 = !DILocation(line: 390, column: 6, scope: !1637)
!1646 = !DILocalVariable(name: "best", scope: !1637, file: !859, line: 390, type: !82)
!1647 = !DILocation(line: 390, column: 11, scope: !1637)
!1648 = !DILocation(line: 392, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1637, file: !859, line: 392, column: 6)
!1650 = !DILocation(line: 392, column: 6, scope: !1649)
!1651 = !DILocation(line: 392, column: 17, scope: !1649)
!1652 = !DILocation(line: 392, column: 6, scope: !1637)
!1653 = !DILocation(line: 394, column: 12, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !859, line: 394, column: 3)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !859, line: 392, column: 25)
!1656 = !DILocation(line: 394, column: 8, scope: !1654)
!1657 = !DILocation(line: 394, column: 17, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1659, file: !859, discriminator: 1)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !859, line: 394, column: 3)
!1660 = !DILocation(line: 394, column: 23, scope: !1658)
!1661 = !DILocation(line: 394, column: 33, scope: !1658)
!1662 = !DILocation(line: 394, column: 21, scope: !1658)
!1663 = !DILocation(line: 394, column: 3, scope: !1658)
!1664 = !DILocation(line: 395, column: 22, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !859, line: 395, column: 8)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !859, line: 394, column: 44)
!1667 = !DILocation(line: 395, column: 15, scope: !1665)
!1668 = !DILocation(line: 395, column: 8, scope: !1665)
!1669 = !DILocation(line: 395, column: 28, scope: !1665)
!1670 = !DILocation(line: 395, column: 8, scope: !1666)
!1671 = !DILocation(line: 396, column: 5, scope: !1665)
!1672 = !DILocation(line: 397, column: 34, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1666, file: !859, line: 397, column: 8)
!1674 = !DILocation(line: 397, column: 27, scope: !1673)
!1675 = !DILocation(line: 397, column: 20, scope: !1673)
!1676 = !DILocation(line: 397, column: 39, scope: !1673)
!1677 = !DILocation(line: 397, column: 15, scope: !1673)
!1678 = !DILocation(line: 397, column: 8, scope: !1673)
!1679 = !DILocation(line: 397, column: 43, scope: !1673)
!1680 = !DILocation(line: 397, column: 50, scope: !1673)
!1681 = !DILocation(line: 398, column: 28, scope: !1673)
!1682 = !DILocation(line: 398, column: 31, scope: !1673)
!1683 = !DILocation(line: 398, column: 21, scope: !1673)
!1684 = !DILocation(line: 398, column: 10, scope: !1673)
!1685 = !DILocation(line: 398, column: 42, scope: !1673)
!1686 = !DILocation(line: 398, column: 68, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1673, file: !859, discriminator: 1)
!1688 = !DILocation(line: 398, column: 71, scope: !1687)
!1689 = !DILocation(line: 398, column: 61, scope: !1687)
!1690 = !DILocation(line: 398, column: 45, scope: !1687)
!1691 = !DILocation(line: 398, column: 77, scope: !1687)
!1692 = !DILocation(line: 398, column: 99, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1673, file: !859, discriminator: 2)
!1694 = !DILocation(line: 398, column: 102, scope: !1693)
!1695 = !DILocation(line: 398, column: 105, scope: !1693)
!1696 = !DILocation(line: 398, column: 91, scope: !1693)
!1697 = !DILocation(line: 398, column: 80, scope: !1693)
!1698 = !DILocation(line: 398, column: 116, scope: !1693)
!1699 = !DILocation(line: 398, column: 132, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1673, file: !859, discriminator: 3)
!1701 = !DILocation(line: 398, column: 135, scope: !1700)
!1702 = !DILocation(line: 398, column: 138, scope: !1700)
!1703 = !DILocation(line: 398, column: 124, scope: !1700)
!1704 = !DILocation(line: 398, column: 119, scope: !1700)
!1705 = !DILocation(line: 398, column: 143, scope: !1700)
!1706 = !DILocation(line: 398, column: 151, scope: !1700)
!1707 = !DILocation(line: 398, column: 173, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1673, file: !859, discriminator: 4)
!1709 = !DILocation(line: 398, column: 176, scope: !1708)
!1710 = !DILocation(line: 398, column: 179, scope: !1708)
!1711 = !DILocation(line: 398, column: 165, scope: !1708)
!1712 = !DILocation(line: 398, column: 154, scope: !1708)
!1713 = !DILocation(line: 397, column: 8, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1666, file: !859, discriminator: 1)
!1715 = !DILocation(line: 399, column: 12, scope: !1673)
!1716 = !DILocation(line: 399, column: 15, scope: !1673)
!1717 = !DILocation(line: 399, column: 5, scope: !1673)
!1718 = !DILocation(line: 400, column: 3, scope: !1666)
!1719 = !DILocation(line: 394, column: 40, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1659, file: !859, discriminator: 2)
!1721 = !DILocation(line: 394, column: 3, scope: !1720)
!1722 = distinct !{!1722, !1723}
!1723 = !DILocation(line: 394, column: 3, scope: !1655)
!1724 = !DILocation(line: 401, column: 2, scope: !1655)
!1725 = !DILocation(line: 403, column: 16, scope: !1637)
!1726 = !DILocation(line: 403, column: 26, scope: !1637)
!1727 = !DILocation(line: 403, column: 14, scope: !1637)
!1728 = !DILocation(line: 404, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1637, file: !859, line: 404, column: 2)
!1730 = !DILocation(line: 404, column: 23, scope: !1729)
!1731 = !DILocation(line: 404, column: 11, scope: !1729)
!1732 = !DILocation(line: 404, column: 7, scope: !1729)
!1733 = !DILocation(line: 404, column: 27, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !859, discriminator: 1)
!1735 = distinct !DILexicalBlock(scope: !1729, file: !859, line: 404, column: 2)
!1736 = !DILocation(line: 404, column: 31, scope: !1734)
!1737 = !DILocation(line: 404, column: 2, scope: !1734)
!1738 = !DILocation(line: 405, column: 27, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !859, line: 405, column: 7)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !859, line: 404, column: 43)
!1741 = !DILocation(line: 405, column: 20, scope: !1739)
!1742 = !DILocation(line: 405, column: 9, scope: !1739)
!1743 = !DILocation(line: 405, column: 39, scope: !1739)
!1744 = !DILocation(line: 405, column: 65, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1739, file: !859, discriminator: 1)
!1746 = !DILocation(line: 405, column: 58, scope: !1745)
!1747 = !DILocation(line: 405, column: 42, scope: !1745)
!1748 = !DILocation(line: 405, column: 72, scope: !1745)
!1749 = !DILocation(line: 405, column: 94, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1739, file: !859, discriminator: 2)
!1751 = !DILocation(line: 405, column: 98, scope: !1750)
!1752 = !DILocation(line: 405, column: 86, scope: !1750)
!1753 = !DILocation(line: 405, column: 75, scope: !1750)
!1754 = !DILocation(line: 405, column: 109, scope: !1750)
!1755 = !DILocation(line: 405, column: 125, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1739, file: !859, discriminator: 3)
!1757 = !DILocation(line: 405, column: 129, scope: !1756)
!1758 = !DILocation(line: 405, column: 117, scope: !1756)
!1759 = !DILocation(line: 405, column: 112, scope: !1756)
!1760 = !DILocation(line: 405, column: 134, scope: !1756)
!1761 = !DILocation(line: 405, column: 142, scope: !1756)
!1762 = !DILocation(line: 405, column: 164, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1739, file: !859, discriminator: 4)
!1764 = !DILocation(line: 405, column: 168, scope: !1763)
!1765 = !DILocation(line: 405, column: 156, scope: !1763)
!1766 = !DILocation(line: 405, column: 145, scope: !1763)
!1767 = !DILocation(line: 405, column: 7, scope: !1763)
!1768 = !DILocation(line: 406, column: 32, scope: !1739)
!1769 = !DILocation(line: 406, column: 30, scope: !1739)
!1770 = !DILocation(line: 406, column: 25, scope: !1739)
!1771 = !DILocation(line: 407, column: 2, scope: !1740)
!1772 = !DILocation(line: 404, column: 39, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1735, file: !859, discriminator: 2)
!1774 = !DILocation(line: 404, column: 2, scope: !1773)
!1775 = distinct !{!1775, !1776}
!1776 = !DILocation(line: 404, column: 2, scope: !1637)
!1777 = !DILocation(line: 409, column: 16, scope: !1637)
!1778 = !DILocation(line: 409, column: 9, scope: !1637)
!1779 = !DILocation(line: 410, column: 1, scope: !1637)
!1780 = distinct !DISubprogram(name: "get_file_name", scope: !859, file: !859, line: 412, type: !1781, isLocal: false, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!111, !541, !82}
!1783 = !DILocalVariable(name: "params", arg: 1, scope: !1780, file: !859, line: 412, type: !541)
!1784 = !DILocation(line: 412, column: 28, scope: !1780)
!1785 = !DILocalVariable(name: "fileparams", arg: 2, scope: !1780, file: !859, line: 412, type: !82)
!1786 = !DILocation(line: 412, column: 40, scope: !1780)
!1787 = !DILocalVariable(name: "out", scope: !1780, file: !859, line: 414, type: !331)
!1788 = !DILocation(line: 414, column: 11, scope: !1780)
!1789 = !DILocation(line: 414, column: 30, scope: !1780)
!1790 = !DILocation(line: 414, column: 17, scope: !1780)
!1791 = !DILocalVariable(name: "ret", scope: !1780, file: !859, line: 415, type: !111)
!1792 = !DILocation(line: 415, column: 8, scope: !1780)
!1793 = !DILocalVariable(name: "pos", scope: !1780, file: !859, line: 416, type: !82)
!1794 = !DILocation(line: 416, column: 6, scope: !1780)
!1795 = !DILocation(line: 418, column: 11, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1780, file: !859, line: 418, column: 2)
!1797 = !DILocation(line: 418, column: 7, scope: !1796)
!1798 = !DILocation(line: 418, column: 16, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !859, discriminator: 1)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !859, line: 418, column: 2)
!1801 = !DILocation(line: 418, column: 22, scope: !1799)
!1802 = !DILocation(line: 418, column: 20, scope: !1799)
!1803 = !DILocation(line: 418, column: 2, scope: !1799)
!1804 = !DILocation(line: 419, column: 25, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !859, line: 418, column: 41)
!1806 = !DILocation(line: 419, column: 9, scope: !1805)
!1807 = !DILocation(line: 419, column: 7, scope: !1805)
!1808 = !DILocation(line: 420, column: 25, scope: !1805)
!1809 = !DILocation(line: 420, column: 37, scope: !1805)
!1810 = !DILocation(line: 420, column: 30, scope: !1805)
!1811 = !DILocation(line: 420, column: 9, scope: !1805)
!1812 = !DILocation(line: 420, column: 7, scope: !1805)
!1813 = !DILocation(line: 421, column: 2, scope: !1805)
!1814 = !DILocation(line: 418, column: 37, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1800, file: !859, discriminator: 2)
!1816 = !DILocation(line: 418, column: 2, scope: !1815)
!1817 = distinct !{!1817, !1818}
!1818 = !DILocation(line: 418, column: 2, scope: !1780)
!1819 = !DILocation(line: 423, column: 8, scope: !1780)
!1820 = !DILocation(line: 423, column: 13, scope: !1780)
!1821 = !DILocation(line: 423, column: 6, scope: !1780)
!1822 = !DILocation(line: 424, column: 16, scope: !1780)
!1823 = !DILocation(line: 424, column: 2, scope: !1780)
!1824 = !DILocation(line: 425, column: 9, scope: !1780)
!1825 = !DILocation(line: 425, column: 2, scope: !1780)
!1826 = distinct !DISubprogram(name: "cmd_dcc_receive", scope: !859, file: !859, line: 555, type: !1827, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !527, !1829, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_GET_FUNC", file: !36, line: 32, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!1831 = !DILocalVariable(name: "data", arg: 1, scope: !1826, file: !859, line: 555, type: !527)
!1832 = !DILocation(line: 555, column: 34, scope: !1826)
!1833 = !DILocalVariable(name: "accept_func", arg: 2, scope: !1826, file: !859, line: 555, type: !1829)
!1834 = !DILocation(line: 555, column: 53, scope: !1826)
!1835 = !DILocalVariable(name: "pasv_accept_func", arg: 3, scope: !1826, file: !859, line: 556, type: !1829)
!1836 = !DILocation(line: 556, column: 21, scope: !1826)
!1837 = !DILocalVariable(name: "dcc", scope: !1826, file: !859, line: 558, type: !76)
!1838 = !DILocation(line: 558, column: 15, scope: !1826)
!1839 = !DILocalVariable(name: "tmp", scope: !1826, file: !859, line: 559, type: !292)
!1840 = !DILocation(line: 559, column: 10, scope: !1826)
!1841 = !DILocalVariable(name: "next", scope: !1826, file: !859, line: 559, type: !292)
!1842 = !DILocation(line: 559, column: 16, scope: !1826)
!1843 = !DILocalVariable(name: "nick", scope: !1826, file: !859, line: 560, type: !111)
!1844 = !DILocation(line: 560, column: 8, scope: !1826)
!1845 = !DILocalVariable(name: "arg", scope: !1826, file: !859, line: 560, type: !111)
!1846 = !DILocation(line: 560, column: 15, scope: !1826)
!1847 = !DILocalVariable(name: "fname", scope: !1826, file: !859, line: 560, type: !111)
!1848 = !DILocation(line: 560, column: 21, scope: !1826)
!1849 = !DILocalVariable(name: "free_arg", scope: !1826, file: !859, line: 561, type: !231)
!1850 = !DILocation(line: 561, column: 8, scope: !1826)
!1851 = !DILocalVariable(name: "found", scope: !1826, file: !859, line: 562, type: !82)
!1852 = !DILocation(line: 562, column: 6, scope: !1826)
!1853 = !DILocation(line: 564, column: 2, scope: !1826)
!1854 = distinct !{!1854, !1853}
!1855 = !DILocation(line: 564, column: 10, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !859, discriminator: 1)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !859, line: 564, column: 10)
!1858 = distinct !DILexicalBlock(scope: !1826, file: !859, line: 564, column: 4)
!1859 = !DILocation(line: 564, column: 15, scope: !1856)
!1860 = !DILocation(line: 564, column: 5, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1862, file: !859, discriminator: 2)
!1862 = distinct !DILexicalBlock(scope: !1857, file: !859, line: 564, column: 3)
!1863 = !DILocation(line: 564, column: 14, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !859, discriminator: 3)
!1865 = distinct !DILexicalBlock(scope: !1857, file: !859, line: 564, column: 12)
!1866 = !DILocation(line: 564, column: 99, scope: !1864)
!1867 = !DILocation(line: 564, column: 110, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1858, file: !859, discriminator: 4)
!1869 = !DILocation(line: 566, column: 22, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1826, file: !859, line: 566, column: 6)
!1871 = !DILocation(line: 566, column: 7, scope: !1870)
!1872 = !DILocation(line: 566, column: 6, scope: !1826)
!1873 = !DILocation(line: 568, column: 3, scope: !1870)
!1874 = !DILocation(line: 570, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1826, file: !859, line: 570, column: 6)
!1876 = !DILocation(line: 570, column: 6, scope: !1875)
!1877 = !DILocation(line: 570, column: 12, scope: !1875)
!1878 = !DILocation(line: 570, column: 6, scope: !1826)
!1879 = !DILocation(line: 571, column: 75, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !859, line: 570, column: 21)
!1881 = !DILocation(line: 571, column: 51, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1880, file: !859, discriminator: 1)
!1883 = !DILocation(line: 571, column: 51, scope: !1880)
!1884 = !DILocation(line: 571, column: 26, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1880, file: !859, discriminator: 2)
!1886 = !DILocation(line: 571, column: 10, scope: !1880)
!1887 = !DILocation(line: 571, column: 7, scope: !1880)
!1888 = !DILocation(line: 572, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1880, file: !859, line: 572, column: 7)
!1890 = !DILocation(line: 572, column: 11, scope: !1889)
!1891 = !DILocation(line: 572, column: 7, scope: !1880)
!1892 = !DILocation(line: 573, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !859, line: 573, column: 8)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !859, line: 572, column: 19)
!1895 = !DILocation(line: 573, column: 17, scope: !1893)
!1896 = !DILocation(line: 573, column: 25, scope: !1893)
!1897 = !DILocation(line: 573, column: 8, scope: !1894)
!1898 = !DILocation(line: 574, column: 5, scope: !1893)
!1899 = !DILocation(line: 574, column: 17, scope: !1893)
!1900 = !DILocation(line: 576, column: 5, scope: !1893)
!1901 = !DILocation(line: 576, column: 22, scope: !1893)
!1902 = !DILocation(line: 577, column: 3, scope: !1894)
!1903 = !DILocation(line: 578, column: 19, scope: !1880)
!1904 = !DILocation(line: 578, column: 3, scope: !1880)
!1905 = !DILocation(line: 579, column: 3, scope: !1880)
!1906 = !DILocation(line: 582, column: 10, scope: !1826)
!1907 = !DILocation(line: 582, column: 8, scope: !1826)
!1908 = !DILocation(line: 584, column: 8, scope: !1826)
!1909 = !DILocation(line: 585, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1826, file: !859, line: 585, column: 2)
!1911 = !DILocation(line: 585, column: 11, scope: !1910)
!1912 = !DILocation(line: 585, column: 7, scope: !1910)
!1913 = !DILocation(line: 585, column: 24, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1915, file: !859, discriminator: 1)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !859, line: 585, column: 2)
!1916 = !DILocation(line: 585, column: 28, scope: !1914)
!1917 = !DILocation(line: 585, column: 2, scope: !1914)
!1918 = !DILocalVariable(name: "dcc", scope: !1919, file: !859, line: 586, type: !76)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !859, line: 585, column: 48)
!1920 = !DILocation(line: 586, column: 16, scope: !1919)
!1921 = !DILocation(line: 586, column: 22, scope: !1919)
!1922 = !DILocation(line: 586, column: 27, scope: !1919)
!1923 = !DILocation(line: 588, column: 10, scope: !1919)
!1924 = !DILocation(line: 588, column: 15, scope: !1919)
!1925 = !DILocation(line: 588, column: 8, scope: !1919)
!1926 = !DILocation(line: 589, column: 50, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1919, file: !859, line: 589, column: 7)
!1928 = !DILocation(line: 589, column: 25, scope: !1927)
!1929 = !DILocation(line: 589, column: 9, scope: !1927)
!1930 = !DILocation(line: 589, column: 39, scope: !1927)
!1931 = !DILocation(line: 589, column: 8, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1927, file: !859, discriminator: 1)
!1933 = !DILocation(line: 589, column: 39, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1927, file: !859, discriminator: 2)
!1935 = !DILocation(line: 589, column: 61, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1927, file: !859, discriminator: 3)
!1937 = !DILocation(line: 589, column: 66, scope: !1936)
!1938 = !DILocation(line: 589, column: 72, scope: !1936)
!1939 = !DILocation(line: 589, column: 42, scope: !1936)
!1940 = !DILocation(line: 589, column: 78, scope: !1936)
!1941 = !DILocation(line: 589, column: 83, scope: !1936)
!1942 = !DILocation(line: 590, column: 10, scope: !1927)
!1943 = !DILocation(line: 590, column: 16, scope: !1927)
!1944 = !DILocation(line: 590, column: 23, scope: !1927)
!1945 = !DILocation(line: 590, column: 9, scope: !1927)
!1946 = !DILocation(line: 590, column: 12, scope: !1932)
!1947 = !DILocation(line: 590, column: 17, scope: !1932)
!1948 = !DILocation(line: 590, column: 33, scope: !1932)
!1949 = !DILocation(line: 591, column: 9, scope: !1927)
!1950 = !DILocation(line: 591, column: 8, scope: !1927)
!1951 = !DILocation(line: 591, column: 15, scope: !1927)
!1952 = !DILocation(line: 591, column: 23, scope: !1927)
!1953 = !DILocation(line: 591, column: 36, scope: !1932)
!1954 = !DILocation(line: 591, column: 41, scope: !1932)
!1955 = !DILocation(line: 591, column: 46, scope: !1932)
!1956 = !DILocation(line: 591, column: 26, scope: !1932)
!1957 = !DILocation(line: 591, column: 53, scope: !1932)
!1958 = !DILocation(line: 589, column: 7, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1919, file: !859, discriminator: 4)
!1960 = !DILocation(line: 592, column: 10, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1927, file: !859, line: 591, column: 60)
!1962 = !DILocation(line: 593, column: 11, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1961, file: !859, line: 593, column: 8)
!1964 = !DILocation(line: 593, column: 17, scope: !1963)
!1965 = !DILocation(line: 593, column: 25, scope: !1963)
!1966 = !DILocation(line: 593, column: 8, scope: !1961)
!1967 = !DILocation(line: 594, column: 5, scope: !1963)
!1968 = !DILocation(line: 594, column: 17, scope: !1963)
!1969 = !DILocation(line: 596, column: 5, scope: !1963)
!1970 = !DILocation(line: 596, column: 22, scope: !1963)
!1971 = !DILocation(line: 597, column: 3, scope: !1961)
!1972 = !DILocation(line: 598, column: 2, scope: !1919)
!1973 = !DILocation(line: 585, column: 42, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1915, file: !859, discriminator: 2)
!1975 = !DILocation(line: 585, column: 40, scope: !1974)
!1976 = !DILocation(line: 585, column: 2, scope: !1974)
!1977 = distinct !{!1977, !1978}
!1978 = !DILocation(line: 585, column: 2, scope: !1826)
!1979 = !DILocation(line: 600, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1826, file: !859, line: 600, column: 6)
!1981 = !DILocation(line: 600, column: 6, scope: !1826)
!1982 = !DILocation(line: 601, column: 45, scope: !1980)
!1983 = !DILocation(line: 601, column: 3, scope: !1980)
!1984 = !DILocation(line: 603, column: 18, scope: !1826)
!1985 = !DILocation(line: 603, column: 2, scope: !1826)
!1986 = !DILocation(line: 604, column: 1, scope: !1826)
!1987 = !DILocation(line: 604, column: 1, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1826, file: !859, discriminator: 1)
!1989 = distinct !DISubprogram(name: "dcc_get_init", scope: !859, file: !859, line: 612, type: !280, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1990 = !DILocation(line: 614, column: 9, scope: !1989)
!1991 = !DILocation(line: 615, column: 2, scope: !1989)
!1992 = !DILocation(line: 616, column: 2, scope: !1989)
!1993 = !DILocation(line: 617, column: 2, scope: !1989)
!1994 = !DILocation(line: 619, column: 2, scope: !1989)
!1995 = !DILocation(line: 620, column: 2, scope: !1989)
!1996 = !DILocation(line: 621, column: 2, scope: !1989)
!1997 = !DILocation(line: 622, column: 1, scope: !1989)
!1998 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !859, file: !859, line: 55, type: !940, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!1999 = !DILocalVariable(name: "dcc", arg: 1, scope: !1998, file: !859, line: 55, type: !76)
!2000 = !DILocation(line: 55, column: 44, scope: !1998)
!2001 = !DILocation(line: 57, column: 50, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !859, line: 57, column: 6)
!2003 = !DILocation(line: 57, column: 25, scope: !2002)
!2004 = !DILocation(line: 57, column: 9, scope: !2002)
!2005 = !DILocation(line: 57, column: 6, scope: !1998)
!2006 = !DILocation(line: 57, column: 8, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2002, file: !859, discriminator: 1)
!2008 = !DILocation(line: 57, column: 6, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1998, file: !859, discriminator: 2)
!2010 = !DILocation(line: 57, column: 40, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2002, file: !859, discriminator: 3)
!2012 = !DILocation(line: 59, column: 9, scope: !1998)
!2013 = !DILocation(line: 59, column: 14, scope: !1998)
!2014 = !DILocation(line: 59, column: 2, scope: !1998)
!2015 = !DILocation(line: 60, column: 6, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1998, file: !859, line: 60, column: 6)
!2017 = !DILocation(line: 60, column: 11, scope: !2016)
!2018 = !DILocation(line: 60, column: 19, scope: !2016)
!2019 = !DILocation(line: 60, column: 6, scope: !1998)
!2020 = !DILocation(line: 60, column: 32, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2016, file: !859, discriminator: 1)
!2022 = !DILocation(line: 60, column: 37, scope: !2021)
!2023 = !DILocation(line: 60, column: 26, scope: !2021)
!2024 = !DILocation(line: 61, column: 1, scope: !1998)
!2025 = distinct !DISubprogram(name: "ctcp_msg_dcc_send", scope: !859, file: !859, line: 429, type: !2026, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !91, !527, !527, !527, !527, !750}
!2028 = !DILocalVariable(name: "server", arg: 1, scope: !2025, file: !859, line: 429, type: !91)
!2029 = !DILocation(line: 429, column: 47, scope: !2025)
!2030 = !DILocalVariable(name: "data", arg: 2, scope: !2025, file: !859, line: 429, type: !527)
!2031 = !DILocation(line: 429, column: 67, scope: !2025)
!2032 = !DILocalVariable(name: "nick", arg: 3, scope: !2025, file: !859, line: 430, type: !527)
!2033 = !DILocation(line: 430, column: 22, scope: !2025)
!2034 = !DILocalVariable(name: "addr", arg: 4, scope: !2025, file: !859, line: 430, type: !527)
!2035 = !DILocation(line: 430, column: 40, scope: !2025)
!2036 = !DILocalVariable(name: "target", arg: 5, scope: !2025, file: !859, line: 431, type: !527)
!2037 = !DILocation(line: 431, column: 22, scope: !2025)
!2038 = !DILocalVariable(name: "chat", arg: 6, scope: !2025, file: !859, line: 431, type: !750)
!2039 = !DILocation(line: 431, column: 44, scope: !2025)
!2040 = !DILocalVariable(name: "dcc", scope: !2025, file: !859, line: 433, type: !76)
!2041 = !DILocation(line: 433, column: 15, scope: !2025)
!2042 = !DILocalVariable(name: "temp_dcc", scope: !2025, file: !859, line: 434, type: !821)
!2043 = !DILocation(line: 434, column: 16, scope: !2025)
!2044 = !DILocalVariable(name: "ip", scope: !2025, file: !859, line: 435, type: !125)
!2045 = !DILocation(line: 435, column: 9, scope: !2025)
!2046 = !DILocalVariable(name: "address", scope: !2025, file: !859, line: 436, type: !111)
!2047 = !DILocation(line: 436, column: 8, scope: !2025)
!2048 = !DILocalVariable(name: "params", scope: !2025, file: !859, line: 436, type: !541)
!2049 = !DILocation(line: 436, column: 19, scope: !2025)
!2050 = !DILocalVariable(name: "fname", scope: !2025, file: !859, line: 436, type: !111)
!2051 = !DILocation(line: 436, column: 28, scope: !2025)
!2052 = !DILocalVariable(name: "paramcount", scope: !2025, file: !859, line: 437, type: !82)
!2053 = !DILocation(line: 437, column: 6, scope: !2025)
!2054 = !DILocalVariable(name: "fileparams", scope: !2025, file: !859, line: 437, type: !82)
!2055 = !DILocation(line: 437, column: 18, scope: !2025)
!2056 = !DILocalVariable(name: "port", scope: !2025, file: !859, line: 438, type: !82)
!2057 = !DILocation(line: 438, column: 6, scope: !2025)
!2058 = !DILocalVariable(name: "len", scope: !2025, file: !859, line: 438, type: !82)
!2059 = !DILocation(line: 438, column: 12, scope: !2025)
!2060 = !DILocalVariable(name: "quoted", scope: !2025, file: !859, line: 438, type: !82)
!2061 = !DILocation(line: 438, column: 17, scope: !2025)
!2062 = !DILocalVariable(name: "size", scope: !2025, file: !859, line: 439, type: !768)
!2063 = !DILocation(line: 439, column: 16, scope: !2025)
!2064 = !DILocalVariable(name: "p_id", scope: !2025, file: !859, line: 440, type: !82)
!2065 = !DILocation(line: 440, column: 6, scope: !2025)
!2066 = !DILocalVariable(name: "passive", scope: !2025, file: !859, line: 441, type: !82)
!2067 = !DILocation(line: 441, column: 6, scope: !2025)
!2068 = !DILocation(line: 443, column: 6, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 443, column: 6)
!2070 = !DILocation(line: 443, column: 11, scope: !2069)
!2071 = !DILocation(line: 443, column: 6, scope: !2025)
!2072 = !DILocation(line: 444, column: 8, scope: !2069)
!2073 = !DILocation(line: 444, column: 3, scope: !2069)
!2074 = !DILocation(line: 445, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 445, column: 6)
!2076 = !DILocation(line: 445, column: 11, scope: !2075)
!2077 = !DILocation(line: 445, column: 6, scope: !2025)
!2078 = !DILocation(line: 446, column: 8, scope: !2075)
!2079 = !DILocation(line: 446, column: 3, scope: !2075)
!2080 = !DILocation(line: 450, column: 22, scope: !2025)
!2081 = !DILocation(line: 450, column: 11, scope: !2025)
!2082 = !DILocation(line: 450, column: 9, scope: !2025)
!2083 = !DILocation(line: 451, column: 29, scope: !2025)
!2084 = !DILocation(line: 451, column: 15, scope: !2025)
!2085 = !DILocation(line: 451, column: 13, scope: !2025)
!2086 = !DILocation(line: 453, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 453, column: 6)
!2088 = !DILocation(line: 453, column: 17, scope: !2087)
!2089 = !DILocation(line: 453, column: 6, scope: !2025)
!2090 = !DILocation(line: 454, column: 44, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !859, line: 453, column: 22)
!2092 = !DILocation(line: 455, column: 8, scope: !2091)
!2093 = !DILocation(line: 455, column: 14, scope: !2091)
!2094 = !DILocation(line: 455, column: 20, scope: !2091)
!2095 = !DILocation(line: 454, column: 3, scope: !2091)
!2096 = !DILocation(line: 456, column: 14, scope: !2091)
!2097 = !DILocation(line: 456, column: 3, scope: !2091)
!2098 = !DILocation(line: 457, column: 17, scope: !2091)
!2099 = !DILocation(line: 460, column: 37, scope: !2025)
!2100 = !DILocation(line: 460, column: 45, scope: !2025)
!2101 = !DILocation(line: 460, column: 15, scope: !2025)
!2102 = !DILocation(line: 460, column: 13, scope: !2025)
!2103 = !DILocation(line: 462, column: 28, scope: !2025)
!2104 = !DILocation(line: 462, column: 21, scope: !2025)
!2105 = !DILocation(line: 462, column: 12, scope: !2025)
!2106 = !DILocation(line: 462, column: 10, scope: !2025)
!2107 = !DILocation(line: 463, column: 13, scope: !2025)
!2108 = !DILocation(line: 463, column: 2, scope: !2025)
!2109 = !DILocation(line: 464, column: 21, scope: !2025)
!2110 = !DILocation(line: 464, column: 31, scope: !2025)
!2111 = !DILocation(line: 464, column: 14, scope: !2025)
!2112 = !DILocation(line: 464, column: 9, scope: !2025)
!2113 = !DILocation(line: 464, column: 7, scope: !2025)
!2114 = !DILocation(line: 465, column: 29, scope: !2025)
!2115 = !DILocation(line: 465, column: 39, scope: !2025)
!2116 = !DILocation(line: 465, column: 22, scope: !2025)
!2117 = !DILocation(line: 465, column: 9, scope: !2025)
!2118 = !DILocation(line: 465, column: 7, scope: !2025)
!2119 = !DILocation(line: 468, column: 6, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 468, column: 6)
!2121 = !DILocation(line: 468, column: 20, scope: !2120)
!2122 = !DILocation(line: 468, column: 31, scope: !2120)
!2123 = !DILocation(line: 468, column: 17, scope: !2120)
!2124 = !DILocation(line: 468, column: 6, scope: !2025)
!2125 = !DILocation(line: 469, column: 22, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !859, line: 468, column: 36)
!2127 = !DILocation(line: 469, column: 32, scope: !2126)
!2128 = !DILocation(line: 469, column: 15, scope: !2126)
!2129 = !DILocation(line: 469, column: 10, scope: !2126)
!2130 = !DILocation(line: 469, column: 8, scope: !2126)
!2131 = !DILocation(line: 470, column: 11, scope: !2126)
!2132 = !DILocation(line: 471, column: 2, scope: !2126)
!2133 = !DILocation(line: 473, column: 24, scope: !2025)
!2134 = !DILocation(line: 473, column: 32, scope: !2025)
!2135 = !DILocation(line: 473, column: 10, scope: !2025)
!2136 = !DILocation(line: 473, column: 8, scope: !2025)
!2137 = !DILocation(line: 474, column: 13, scope: !2025)
!2138 = !DILocation(line: 474, column: 2, scope: !2025)
!2139 = !DILocation(line: 476, column: 22, scope: !2025)
!2140 = !DILocation(line: 476, column: 15, scope: !2025)
!2141 = !DILocation(line: 476, column: 13, scope: !2025)
!2142 = !DILocation(line: 477, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 477, column: 6)
!2144 = !DILocation(line: 477, column: 10, scope: !2143)
!2145 = !DILocation(line: 477, column: 14, scope: !2143)
!2146 = !DILocation(line: 477, column: 18, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2143, file: !859, discriminator: 1)
!2148 = !DILocation(line: 477, column: 17, scope: !2147)
!2149 = !DILocation(line: 477, column: 24, scope: !2147)
!2150 = !DILocation(line: 477, column: 31, scope: !2147)
!2151 = !DILocation(line: 477, column: 40, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2143, file: !859, discriminator: 2)
!2153 = !DILocation(line: 477, column: 43, scope: !2152)
!2154 = !DILocation(line: 477, column: 34, scope: !2152)
!2155 = !DILocation(line: 477, column: 47, scope: !2152)
!2156 = !DILocation(line: 477, column: 6, scope: !2152)
!2157 = !DILocation(line: 479, column: 9, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2143, file: !859, line: 477, column: 55)
!2159 = !DILocation(line: 479, column: 12, scope: !2158)
!2160 = !DILocation(line: 479, column: 3, scope: !2158)
!2161 = !DILocation(line: 479, column: 16, scope: !2158)
!2162 = !DILocation(line: 480, column: 3, scope: !2158)
!2163 = distinct !{!2163, !2162}
!2164 = !DILocation(line: 480, column: 18, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2166, file: !859, discriminator: 1)
!2166 = distinct !DILexicalBlock(scope: !2158, file: !859, line: 480, column: 6)
!2167 = !DILocation(line: 480, column: 27, scope: !2165)
!2168 = !DILocation(line: 480, column: 32, scope: !2165)
!2169 = !DILocation(line: 480, column: 38, scope: !2165)
!2170 = !DILocation(line: 480, column: 37, scope: !2165)
!2171 = !DILocation(line: 480, column: 8, scope: !2165)
!2172 = !DILocation(line: 480, column: 45, scope: !2165)
!2173 = !DILocation(line: 481, column: 24, scope: !2158)
!2174 = !DILocation(line: 482, column: 2, scope: !2158)
!2175 = !DILocation(line: 484, column: 6, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 484, column: 6)
!2177 = !DILocation(line: 484, column: 14, scope: !2176)
!2178 = !DILocation(line: 484, column: 17, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2176, file: !859, discriminator: 1)
!2180 = !DILocation(line: 484, column: 22, scope: !2179)
!2181 = !DILocation(line: 484, column: 6, scope: !2179)
!2182 = !DILocation(line: 489, column: 74, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !859, line: 484, column: 28)
!2184 = !DILocation(line: 489, column: 113, scope: !2183)
!2185 = !DILocation(line: 489, column: 119, scope: !2183)
!2186 = !DILocation(line: 489, column: 57, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !859, discriminator: 1)
!2188 = !DILocation(line: 489, column: 57, scope: !2183)
!2189 = !DILocation(line: 489, column: 32, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2183, file: !859, discriminator: 2)
!2191 = !DILocation(line: 489, column: 15, scope: !2183)
!2192 = !DILocation(line: 489, column: 12, scope: !2183)
!2193 = !DILocation(line: 490, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2183, file: !859, line: 490, column: 7)
!2195 = !DILocation(line: 490, column: 16, scope: !2194)
!2196 = !DILocation(line: 490, column: 23, scope: !2194)
!2197 = !DILocation(line: 490, column: 26, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2194, file: !859, discriminator: 1)
!2199 = !DILocation(line: 490, column: 34, scope: !2198)
!2200 = !DILocation(line: 490, column: 44, scope: !2198)
!2201 = !DILocation(line: 490, column: 31, scope: !2198)
!2202 = !DILocation(line: 490, column: 7, scope: !2198)
!2203 = !DILocation(line: 491, column: 32, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2194, file: !859, line: 490, column: 53)
!2205 = !DILocation(line: 491, column: 23, scope: !2204)
!2206 = !DILocation(line: 491, column: 4, scope: !2204)
!2207 = !DILocation(line: 491, column: 14, scope: !2204)
!2208 = !DILocation(line: 491, column: 21, scope: !2204)
!2209 = !DILocation(line: 492, column: 21, scope: !2204)
!2210 = !DILocation(line: 492, column: 4, scope: !2204)
!2211 = !DILocation(line: 492, column: 14, scope: !2204)
!2212 = !DILocation(line: 492, column: 19, scope: !2204)
!2213 = !DILocation(line: 493, column: 21, scope: !2204)
!2214 = !DILocation(line: 493, column: 4, scope: !2204)
!2215 = !DILocation(line: 493, column: 14, scope: !2204)
!2216 = !DILocation(line: 493, column: 19, scope: !2204)
!2217 = !DILocation(line: 494, column: 28, scope: !2204)
!2218 = !DILocation(line: 494, column: 4, scope: !2204)
!2219 = !DILocation(line: 494, column: 14, scope: !2204)
!2220 = !DILocation(line: 494, column: 26, scope: !2204)
!2221 = !DILocation(line: 496, column: 12, scope: !2204)
!2222 = !DILocation(line: 496, column: 22, scope: !2204)
!2223 = !DILocation(line: 496, column: 4, scope: !2204)
!2224 = !DILocation(line: 497, column: 8, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2204, file: !859, line: 497, column: 8)
!2226 = !DILocation(line: 497, column: 18, scope: !2225)
!2227 = !DILocation(line: 497, column: 23, scope: !2225)
!2228 = !DILocation(line: 497, column: 30, scope: !2225)
!2229 = !DILocation(line: 497, column: 8, scope: !2204)
!2230 = !DILocation(line: 498, column: 18, scope: !2225)
!2231 = !DILocation(line: 498, column: 28, scope: !2225)
!2232 = !DILocation(line: 498, column: 34, scope: !2225)
!2233 = !DILocation(line: 498, column: 44, scope: !2225)
!2234 = !DILocation(line: 498, column: 5, scope: !2225)
!2235 = !DILocation(line: 501, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !859, line: 499, column: 9)
!2237 = !DILocation(line: 501, column: 25, scope: !2236)
!2238 = !DILocation(line: 501, column: 34, scope: !2236)
!2239 = !DILocation(line: 501, column: 5, scope: !2236)
!2240 = !DILocation(line: 507, column: 42, scope: !2204)
!2241 = !DILocation(line: 507, column: 4, scope: !2204)
!2242 = !DILocation(line: 508, column: 11, scope: !2204)
!2243 = !DILocation(line: 508, column: 4, scope: !2204)
!2244 = !DILocation(line: 509, column: 11, scope: !2204)
!2245 = !DILocation(line: 509, column: 4, scope: !2204)
!2246 = !DILocation(line: 510, column: 4, scope: !2204)
!2247 = !DILocation(line: 511, column: 14, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2194, file: !859, line: 511, column: 14)
!2249 = !DILocation(line: 511, column: 23, scope: !2248)
!2250 = !DILocation(line: 511, column: 30, scope: !2248)
!2251 = !DILocation(line: 511, column: 33, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2248, file: !859, discriminator: 1)
!2253 = !DILocation(line: 511, column: 41, scope: !2252)
!2254 = !DILocation(line: 511, column: 51, scope: !2252)
!2255 = !DILocation(line: 511, column: 38, scope: !2252)
!2256 = !DILocation(line: 511, column: 14, scope: !2252)
!2257 = !DILocation(line: 514, column: 30, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2248, file: !859, line: 511, column: 60)
!2259 = !DILocation(line: 514, column: 17, scope: !2258)
!2260 = !DILocation(line: 514, column: 4, scope: !2258)
!2261 = !DILocation(line: 515, column: 11, scope: !2258)
!2262 = !DILocation(line: 515, column: 4, scope: !2258)
!2263 = !DILocation(line: 516, column: 11, scope: !2258)
!2264 = !DILocation(line: 516, column: 4, scope: !2258)
!2265 = !DILocation(line: 517, column: 4, scope: !2258)
!2266 = !DILocation(line: 519, column: 2, scope: !2183)
!2267 = !DILocation(line: 521, column: 67, scope: !2025)
!2268 = !DILocation(line: 521, column: 105, scope: !2025)
!2269 = !DILocation(line: 521, column: 111, scope: !2025)
!2270 = !DILocation(line: 521, column: 50, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2025, file: !859, discriminator: 1)
!2272 = !DILocation(line: 521, column: 50, scope: !2025)
!2273 = !DILocation(line: 521, column: 25, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2025, file: !859, discriminator: 2)
!2275 = !DILocation(line: 521, column: 9, scope: !2025)
!2276 = !DILocation(line: 521, column: 6, scope: !2025)
!2277 = !DILocation(line: 522, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 522, column: 6)
!2279 = !DILocation(line: 522, column: 10, scope: !2278)
!2280 = !DILocation(line: 522, column: 6, scope: !2025)
!2281 = !DILocation(line: 523, column: 29, scope: !2278)
!2282 = !DILocation(line: 523, column: 16, scope: !2278)
!2283 = !DILocation(line: 523, column: 3, scope: !2278)
!2284 = !DILocation(line: 525, column: 23, scope: !2025)
!2285 = !DILocation(line: 525, column: 31, scope: !2025)
!2286 = !DILocation(line: 525, column: 37, scope: !2025)
!2287 = !DILocation(line: 525, column: 43, scope: !2025)
!2288 = !DILocation(line: 525, column: 8, scope: !2025)
!2289 = !DILocation(line: 525, column: 6, scope: !2025)
!2290 = !DILocation(line: 526, column: 6, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 526, column: 6)
!2292 = !DILocation(line: 526, column: 10, scope: !2291)
!2293 = !DILocation(line: 526, column: 6, scope: !2025)
!2294 = !DILocation(line: 527, column: 10, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !859, line: 526, column: 18)
!2296 = !DILocation(line: 527, column: 3, scope: !2295)
!2297 = !DILocation(line: 528, column: 10, scope: !2295)
!2298 = !DILocation(line: 528, column: 3, scope: !2295)
!2299 = !DILocation(line: 529, column: 3, scope: !2295)
!2300 = distinct !{!2300, !2299}
!2301 = !DILocation(line: 529, column: 8, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !859, discriminator: 1)
!2303 = distinct !DILexicalBlock(scope: !2295, file: !859, line: 529, column: 6)
!2304 = !DILocation(line: 529, column: 5, scope: !2302)
!2305 = !DILocation(line: 530, column: 3, scope: !2295)
!2306 = !DILocation(line: 532, column: 25, scope: !2025)
!2307 = !DILocation(line: 532, column: 16, scope: !2025)
!2308 = !DILocation(line: 532, column: 2, scope: !2025)
!2309 = !DILocation(line: 532, column: 7, scope: !2025)
!2310 = !DILocation(line: 532, column: 14, scope: !2025)
!2311 = !DILocation(line: 534, column: 6, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 534, column: 6)
!2313 = !DILocation(line: 534, column: 14, scope: !2312)
!2314 = !DILocation(line: 534, column: 17, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2312, file: !859, discriminator: 1)
!2316 = !DILocation(line: 534, column: 22, scope: !2315)
!2317 = !DILocation(line: 534, column: 6, scope: !2315)
!2318 = !DILocation(line: 535, column: 18, scope: !2312)
!2319 = !DILocation(line: 535, column: 3, scope: !2312)
!2320 = !DILocation(line: 535, column: 8, scope: !2312)
!2321 = !DILocation(line: 535, column: 16, scope: !2312)
!2322 = !DILocation(line: 537, column: 10, scope: !2025)
!2323 = !DILocation(line: 537, column: 15, scope: !2025)
!2324 = !DILocation(line: 537, column: 2, scope: !2025)
!2325 = !DILocation(line: 538, column: 6, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2025, file: !859, line: 538, column: 6)
!2327 = !DILocation(line: 538, column: 11, scope: !2326)
!2328 = !DILocation(line: 538, column: 16, scope: !2326)
!2329 = !DILocation(line: 538, column: 23, scope: !2326)
!2330 = !DILocation(line: 538, column: 6, scope: !2025)
!2331 = !DILocation(line: 539, column: 16, scope: !2326)
!2332 = !DILocation(line: 539, column: 21, scope: !2326)
!2333 = !DILocation(line: 539, column: 27, scope: !2326)
!2334 = !DILocation(line: 539, column: 32, scope: !2326)
!2335 = !DILocation(line: 539, column: 3, scope: !2326)
!2336 = !DILocation(line: 542, column: 13, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2326, file: !859, line: 540, column: 7)
!2338 = !DILocation(line: 542, column: 18, scope: !2337)
!2339 = !DILocation(line: 542, column: 27, scope: !2337)
!2340 = !DILocation(line: 542, column: 3, scope: !2337)
!2341 = !DILocation(line: 544, column: 14, scope: !2025)
!2342 = !DILocation(line: 544, column: 2, scope: !2025)
!2343 = !DILocation(line: 544, column: 7, scope: !2025)
!2344 = !DILocation(line: 544, column: 12, scope: !2025)
!2345 = !DILocation(line: 545, column: 14, scope: !2025)
!2346 = !DILocation(line: 545, column: 2, scope: !2025)
!2347 = !DILocation(line: 545, column: 7, scope: !2025)
!2348 = !DILocation(line: 545, column: 12, scope: !2025)
!2349 = !DILocation(line: 546, column: 21, scope: !2025)
!2350 = !DILocation(line: 546, column: 2, scope: !2025)
!2351 = !DILocation(line: 546, column: 7, scope: !2025)
!2352 = !DILocation(line: 546, column: 19, scope: !2025)
!2353 = !DILocation(line: 548, column: 32, scope: !2025)
!2354 = !DILocation(line: 548, column: 37, scope: !2025)
!2355 = !DILocation(line: 548, column: 2, scope: !2025)
!2356 = !DILocation(line: 550, column: 9, scope: !2025)
!2357 = !DILocation(line: 550, column: 2, scope: !2025)
!2358 = !DILocation(line: 551, column: 9, scope: !2025)
!2359 = !DILocation(line: 551, column: 2, scope: !2025)
!2360 = !DILocation(line: 552, column: 1, scope: !2025)
!2361 = !DILocation(line: 552, column: 1, scope: !2271)
!2362 = distinct !DISubprogram(name: "cmd_dcc_get", scope: !859, file: !859, line: 607, type: !2363, isLocal: true, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !527}
!2365 = !DILocalVariable(name: "data", arg: 1, scope: !2362, file: !859, line: 607, type: !527)
!2366 = !DILocation(line: 607, column: 37, scope: !2362)
!2367 = !DILocation(line: 609, column: 18, scope: !2362)
!2368 = !DILocation(line: 609, column: 2, scope: !2362)
!2369 = !DILocation(line: 610, column: 1, scope: !2362)
!2370 = distinct !DISubprogram(name: "dcc_get_deinit", scope: !859, file: !859, line: 624, type: !280, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !866)
!2371 = !DILocation(line: 626, column: 9, scope: !2370)
!2372 = !DILocation(line: 627, column: 2, scope: !2370)
!2373 = !DILocation(line: 628, column: 2, scope: !2370)
!2374 = !DILocation(line: 629, column: 2, scope: !2370)
!2375 = !DILocation(line: 630, column: 2, scope: !2370)
!2376 = distinct !{!2376, !2375}
!2377 = !DILocation(line: 630, column: 11, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2379, file: !859, discriminator: 1)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !859, line: 630, column: 11)
!2380 = distinct !DILexicalBlock(scope: !2370, file: !859, line: 630, column: 5)
!2381 = !DILocation(line: 630, column: 41, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2383, file: !859, discriminator: 2)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !859, line: 630, column: 32)
!2384 = !DILocation(line: 630, column: 34, scope: !2382)
!2385 = !DILocation(line: 630, column: 85, scope: !2382)
!2386 = !DILocation(line: 630, column: 3, scope: !2382)
!2387 = !DILocation(line: 630, column: 5, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2380, file: !859, discriminator: 3)
!2389 = !DILocation(line: 631, column: 1, scope: !2370)
