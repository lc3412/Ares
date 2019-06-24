; ModuleID = './line141-irc-session.o.i'
source_filename = "./line141-irc-session.o.i"
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
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._isupport_data = type { %struct._CONFIG_REC*, %struct._CONFIG_NODE* }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"session save server\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"session restore server\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"session restore nick\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"real_address\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"userhost\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"usermode_away\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"away_reason\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"emode_known\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"sasl_mechanism\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"sasl_username\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"sasl_password\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"isupport_sent\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"isupport\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"halfop\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%s :Restoring connection to %s\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"event 001\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"event 366\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_session_init() #0 !dbg !737 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @sig_session_save_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !740
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, %struct._CONFIG_NODE*)* @sig_session_restore_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !741
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*, %struct._CONFIG_NODE*)* @sig_session_restore_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !742
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !743
  ret void, !dbg !744
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_session_save_server(%struct._IRC_SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*) #0 !dbg !745 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca %struct._isupport_data, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !856, metadata !857), !dbg !858
  store %struct._CONFIG_REC* %1, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !859, metadata !857), !dbg !860
  store %struct._CONFIG_NODE* %2, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !861, metadata !857), !dbg !862
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !863, metadata !857), !dbg !864
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !865, metadata !857), !dbg !866
  call void @llvm.dbg.declare(metadata %struct._isupport_data* %9, metadata !867, metadata !857), !dbg !872
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !873
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !873
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !875
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !876
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !877
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !878
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !880
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !880
  br i1 %19, label %20, label %21, !dbg !881

; <label>:20:                                     ; preds = %3
  br i1 false, label %22, label %23, !dbg !882

; <label>:21:                                     ; preds = %3
  br i1 false, label %23, label %22, !dbg !884

; <label>:22:                                     ; preds = %21, %20
  br label %140, !dbg !886

; <label>:23:                                     ; preds = %21, %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !887
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 56, !dbg !889
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !889
  store %struct._GSList* %26, %struct._GSList** %7, align 8, !dbg !890
  br label %27, !dbg !891

; <label>:27:                                     ; preds = %54, %23
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !892
  %29 = icmp ne %struct._GSList* %28, null, !dbg !895
  br i1 %29, label %30, label %60, !dbg !896

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8** %10, metadata !897, metadata !857), !dbg !899
  %31 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !900
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !901
  %33 = load i8*, i8** %32, align 8, !dbg !901
  store i8* %33, i8** %10, align 8, !dbg !899
  call void @llvm.dbg.declare(metadata i8** %11, metadata !902, metadata !857), !dbg !903
  %34 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !904
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !905
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !905
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !906
  %38 = load i8*, i8** %37, align 8, !dbg !906
  store i8* %38, i8** %11, align 8, !dbg !903
  %39 = load i8*, i8** %11, align 8, !dbg !907
  %40 = icmp eq i8* %39, null, !dbg !909
  br i1 %40, label %41, label %53, !dbg !910

; <label>:41:                                     ; preds = %30
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !911
  %43 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %42, i32 0, i32 9, !dbg !914
  %44 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %43, align 8, !dbg !914
  %45 = load i8*, i8** %10, align 8, !dbg !915
  %46 = load i8*, i8** %10, align 8, !dbg !916
  %47 = call i64 @strlen(i8* %46) #4, !dbg !917
  %48 = trunc i64 %47 to i32, !dbg !917
  %49 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %44, i8* %45, i32 %48), !dbg !918
  %50 = icmp eq i32 %49, -1, !dbg !919
  br i1 %50, label %51, label %52, !dbg !920

; <label>:51:                                     ; preds = %41
  br label %60, !dbg !921

; <label>:52:                                     ; preds = %41
  br label %53, !dbg !922

; <label>:53:                                     ; preds = %52, %30
  br label %54, !dbg !923

; <label>:54:                                     ; preds = %53
  %55 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !924
  %56 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 1, !dbg !926
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !926
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !927
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !927
  store %struct._GSList* %59, %struct._GSList** %7, align 8, !dbg !928
  br label %27, !dbg !929, !llvm.loop !930

; <label>:60:                                     ; preds = %51, %27
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !932
  %62 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %61, i32 0, i32 9, !dbg !933
  %63 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %62, align 8, !dbg !933
  call void @net_sendbuffer_flush(%struct._NET_SENDBUF_REC* %63), !dbg !934
  %64 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !935
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !936
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !937
  %67 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %66, i32 0, i32 40, !dbg !938
  %68 = load i8*, i8** %67, align 8, !dbg !938
  call void @config_node_set_str(%struct._CONFIG_REC* %64, %struct._CONFIG_NODE* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %68), !dbg !939
  %69 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !940
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !941
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !942
  %72 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %71, i32 0, i32 43, !dbg !943
  %73 = load i8*, i8** %72, align 8, !dbg !943
  call void @config_node_set_str(%struct._CONFIG_REC* %69, %struct._CONFIG_NODE* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* %73), !dbg !944
  %74 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !945
  %75 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !946
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !947
  %77 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %76, i32 0, i32 41, !dbg !948
  %78 = load i8*, i8** %77, align 8, !dbg !948
  call void @config_node_set_str(%struct._CONFIG_REC* %74, %struct._CONFIG_NODE* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* %78), !dbg !949
  %79 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !950
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !951
  %81 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !952
  %82 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %81, i32 0, i32 19, !dbg !953
  %83 = load i8, i8* %82, align 8, !dbg !953
  %84 = lshr i8 %83, 1, !dbg !953
  %85 = and i8 %84, 1, !dbg !953
  %86 = zext i8 %85 to i32, !dbg !953
  call void @config_node_set_bool(%struct._CONFIG_REC* %79, %struct._CONFIG_NODE* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %86), !dbg !954
  %87 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !955
  %88 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !956
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !957
  %90 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %89, i32 0, i32 17, !dbg !958
  %91 = load i8*, i8** %90, align 8, !dbg !958
  call void @config_node_set_str(%struct._CONFIG_REC* %87, %struct._CONFIG_NODE* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %91), !dbg !959
  %92 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !960
  %93 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !961
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !962
  %95 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %94, i32 0, i32 45, !dbg !963
  %96 = load i16, i16* %95, align 4, !dbg !963
  %97 = lshr i16 %96, 2, !dbg !963
  %98 = and i16 %97, 1, !dbg !963
  %99 = zext i16 %98 to i32, !dbg !963
  call void @config_node_set_bool(%struct._CONFIG_REC* %92, %struct._CONFIG_NODE* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 %99), !dbg !964
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !965
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !966
  %102 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !967
  %103 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %102, i32 0, i32 3, !dbg !968
  %104 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %103, align 8, !dbg !968
  %105 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %104, i32 0, i32 33, !dbg !969
  %106 = load i32, i32* %105, align 8, !dbg !969
  call void @config_node_set_int(%struct._CONFIG_REC* %100, %struct._CONFIG_NODE* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %106), !dbg !970
  %107 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !971
  %108 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !972
  %109 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !973
  %110 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %109, i32 0, i32 3, !dbg !974
  %111 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %110, align 8, !dbg !974
  %112 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %111, i32 0, i32 34, !dbg !975
  %113 = load i8*, i8** %112, align 8, !dbg !975
  call void @config_node_set_str(%struct._CONFIG_REC* %107, %struct._CONFIG_NODE* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* %113), !dbg !976
  %114 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !977
  %115 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !978
  %116 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !979
  %117 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %116, i32 0, i32 3, !dbg !980
  %118 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %117, align 8, !dbg !980
  %119 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %118, i32 0, i32 35, !dbg !981
  %120 = load i8*, i8** %119, align 8, !dbg !981
  call void @config_node_set_str(%struct._CONFIG_REC* %114, %struct._CONFIG_NODE* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* %120), !dbg !982
  %121 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !983
  %122 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !984
  %123 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !985
  %124 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %123, i32 0, i32 45, !dbg !986
  %125 = load i16, i16* %124, align 4, !dbg !986
  %126 = lshr i16 %125, 9, !dbg !986
  %127 = and i16 %126, 1, !dbg !986
  %128 = zext i16 %127 to i32, !dbg !986
  call void @config_node_set_bool(%struct._CONFIG_REC* %121, %struct._CONFIG_NODE* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %128), !dbg !987
  %129 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !988
  %130 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !989
  %131 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %129, %struct._CONFIG_NODE* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 2), !dbg !990
  store %struct._CONFIG_NODE* %131, %struct._CONFIG_NODE** %8, align 8, !dbg !991
  %132 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !992
  %133 = getelementptr inbounds %struct._isupport_data, %struct._isupport_data* %9, i32 0, i32 0, !dbg !993
  store %struct._CONFIG_REC* %132, %struct._CONFIG_REC** %133, align 8, !dbg !994
  %134 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !995
  %135 = getelementptr inbounds %struct._isupport_data, %struct._isupport_data* %9, i32 0, i32 1, !dbg !996
  store %struct._CONFIG_NODE* %134, %struct._CONFIG_NODE** %135, align 8, !dbg !997
  %136 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !998
  %137 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %136, i32 0, i32 69, !dbg !999
  %138 = load %struct._GHashTable*, %struct._GHashTable** %137, align 8, !dbg !999
  %139 = bitcast %struct._isupport_data* %9 to i8*, !dbg !1000
  call void @g_hash_table_foreach(%struct._GHashTable* %138, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct._isupport_data*)* @session_isupport_foreach to void (i8*, i8*, i8*)*), i8* %139), !dbg !1001
  br label %140, !dbg !1002

; <label>:140:                                    ; preds = %60, %22
  ret void, !dbg !1003
}

; Function Attrs: nounwind uwtable
define internal void @sig_session_restore_server(%struct._IRC_SERVER_REC*, %struct._CONFIG_NODE*) #0 !dbg !1005 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1008, metadata !857), !dbg !1009
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1010, metadata !857), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1012, metadata !857), !dbg !1013
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1014
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !1014
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1016
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !1017
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1018
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1019
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1021
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1021
  br i1 %13, label %14, label %15, !dbg !1022

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %17, !dbg !1023

; <label>:15:                                     ; preds = %2
  br i1 false, label %17, label %16, !dbg !1025

; <label>:16:                                     ; preds = %15, %14
  br label %158, !dbg !1027

; <label>:17:                                     ; preds = %15, %14
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1028
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 40, !dbg !1030
  %20 = load i8*, i8** %19, align 8, !dbg !1030
  %21 = icmp eq i8* %20, null, !dbg !1031
  br i1 %21, label %22, label %28, !dbg !1032

; <label>:22:                                     ; preds = %17
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1033
  %24 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null), !dbg !1034
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !1035
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1037
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 40, !dbg !1038
  store i8* %25, i8** %27, align 8, !dbg !1039
  br label %28, !dbg !1037

; <label>:28:                                     ; preds = %22, %17
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1040
  %30 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !1041
  %31 = call noalias i8* @g_strdup(i8* %30), !dbg !1042
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1044
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 43, !dbg !1045
  store i8* %31, i8** %33, align 8, !dbg !1046
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1047
  %35 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !1048
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !1049
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1050
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 41, !dbg !1051
  store i8* %36, i8** %38, align 8, !dbg !1052
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1053
  %40 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !1054
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1055
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 19, !dbg !1056
  %43 = trunc i32 %40 to i8, !dbg !1057
  %44 = load i8, i8* %42, align 8, !dbg !1057
  %45 = and i8 %43, 1, !dbg !1057
  %46 = shl i8 %45, 1, !dbg !1057
  %47 = and i8 %44, -3, !dbg !1057
  %48 = or i8 %47, %46, !dbg !1057
  store i8 %48, i8* %42, align 8, !dbg !1057
  %49 = zext i8 %45 to i32, !dbg !1057
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1058
  %51 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1059
  %52 = call noalias i8* @g_strdup(i8* %51), !dbg !1060
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1061
  %54 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %53, i32 0, i32 17, !dbg !1062
  store i8* %52, i8** %54, align 8, !dbg !1063
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1064
  %56 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !1065
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1066
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 45, !dbg !1067
  %59 = trunc i32 %56 to i16, !dbg !1068
  %60 = load i16, i16* %58, align 4, !dbg !1068
  %61 = and i16 %59, 1, !dbg !1068
  %62 = shl i16 %61, 2, !dbg !1068
  %63 = and i16 %60, -5, !dbg !1068
  %64 = or i16 %63, %62, !dbg !1068
  store i16 %64, i16* %58, align 4, !dbg !1068
  %65 = zext i16 %61 to i32, !dbg !1068
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1069
  %67 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 0), !dbg !1070
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1071
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 45, !dbg !1072
  %70 = trunc i32 %67 to i16, !dbg !1073
  %71 = load i16, i16* %69, align 4, !dbg !1073
  %72 = and i16 %70, 1, !dbg !1073
  %73 = shl i16 %72, 9, !dbg !1073
  %74 = and i16 %71, -513, !dbg !1073
  %75 = or i16 %74, %73, !dbg !1073
  store i16 %75, i16* %69, align 4, !dbg !1073
  %76 = zext i16 %72 to i32, !dbg !1073
  %77 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1074
  %78 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1075
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1076
  %80 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %79, i32 0, i32 3, !dbg !1077
  %81 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %80, align 8, !dbg !1077
  %82 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %81, i32 0, i32 33, !dbg !1078
  store i32 %78, i32* %82, align 8, !dbg !1079
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1080
  %84 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %83, i32 0, i32 3, !dbg !1081
  %85 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %84, align 8, !dbg !1081
  %86 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %85, i32 0, i32 34, !dbg !1082
  %87 = load i8*, i8** %86, align 8, !dbg !1082
  call void @g_free(i8* %87), !dbg !1083
  %88 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1084
  %89 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8* null), !dbg !1085
  %90 = call noalias i8* @g_strdup(i8* %89), !dbg !1086
  %91 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1087
  %92 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %91, i32 0, i32 3, !dbg !1088
  %93 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %92, align 8, !dbg !1088
  %94 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %93, i32 0, i32 34, !dbg !1089
  store i8* %90, i8** %94, align 8, !dbg !1090
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1091
  %96 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %95, i32 0, i32 3, !dbg !1092
  %97 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %96, align 8, !dbg !1092
  %98 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %97, i32 0, i32 35, !dbg !1093
  %99 = load i8*, i8** %98, align 8, !dbg !1093
  call void @g_free(i8* %99), !dbg !1094
  %100 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1095
  %101 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* null), !dbg !1096
  %102 = call noalias i8* @g_strdup(i8* %101), !dbg !1097
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1098
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 3, !dbg !1099
  %105 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %104, align 8, !dbg !1099
  %106 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %105, i32 0, i32 35, !dbg !1100
  store i8* %102, i8** %106, align 8, !dbg !1101
  %107 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1102
  %108 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %107, i32 0, i32 69, !dbg !1104
  %109 = load %struct._GHashTable*, %struct._GHashTable** %108, align 8, !dbg !1104
  %110 = icmp eq %struct._GHashTable* %109, null, !dbg !1105
  br i1 %110, label %111, label %115, !dbg !1106

; <label>:111:                                    ; preds = %28
  %112 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !1107
  %113 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1109
  %114 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %113, i32 0, i32 69, !dbg !1110
  store %struct._GHashTable* %112, %struct._GHashTable** %114, align 8, !dbg !1111
  br label %115, !dbg !1112

; <label>:115:                                    ; preds = %111, %28
  %116 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1113
  %117 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* null, %struct._CONFIG_NODE* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !1114
  store %struct._CONFIG_NODE* %117, %struct._CONFIG_NODE** %4, align 8, !dbg !1115
  %118 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1116
  %119 = icmp eq %struct._CONFIG_NODE* %118, null, !dbg !1117
  br i1 %119, label %120, label %121, !dbg !1116

; <label>:120:                                    ; preds = %115
  br label %127, !dbg !1118

; <label>:121:                                    ; preds = %115
  %122 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1119
  %123 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %122, i32 0, i32 2, !dbg !1120
  %124 = load i8*, i8** %123, align 8, !dbg !1120
  %125 = bitcast i8* %124 to %struct._GSList*, !dbg !1119
  %126 = call %struct._GSList* @config_node_first(%struct._GSList* %125), !dbg !1121
  br label %127, !dbg !1122

; <label>:127:                                    ; preds = %121, %120
  %128 = phi %struct._GSList* [ null, %120 ], [ %126, %121 ], !dbg !1123
  store %struct._GSList* %128, %struct._GSList** %5, align 8, !dbg !1125
  br label %129, !dbg !1126

; <label>:129:                                    ; preds = %153, %127
  %130 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1127
  %131 = icmp ne %struct._GSList* %130, null, !dbg !1131
  br i1 %131, label %132, label %156, !dbg !1132

; <label>:132:                                    ; preds = %129
  %133 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1133
  %134 = getelementptr inbounds %struct._GSList, %struct._GSList* %133, i32 0, i32 0, !dbg !1135
  %135 = load i8*, i8** %134, align 8, !dbg !1135
  %136 = bitcast i8* %135 to %struct._CONFIG_NODE*, !dbg !1133
  store %struct._CONFIG_NODE* %136, %struct._CONFIG_NODE** %4, align 8, !dbg !1136
  %137 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1137
  %138 = icmp eq %struct._CONFIG_NODE* %137, null, !dbg !1139
  br i1 %138, label %139, label %140, !dbg !1140

; <label>:139:                                    ; preds = %132
  br label %156, !dbg !1141

; <label>:140:                                    ; preds = %132
  %141 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1142
  %142 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %141, i32 0, i32 69, !dbg !1143
  %143 = load %struct._GHashTable*, %struct._GHashTable** %142, align 8, !dbg !1143
  %144 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1144
  %145 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %144, i32 0, i32 1, !dbg !1145
  %146 = load i8*, i8** %145, align 8, !dbg !1145
  %147 = call noalias i8* @g_strdup(i8* %146), !dbg !1146
  %148 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1147
  %149 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %148, i32 0, i32 2, !dbg !1148
  %150 = load i8*, i8** %149, align 8, !dbg !1148
  %151 = call noalias i8* @g_strdup(i8* %150), !dbg !1149
  %152 = call i32 @g_hash_table_insert(%struct._GHashTable* %143, i8* %147, i8* %151), !dbg !1150
  br label %153, !dbg !1152

; <label>:153:                                    ; preds = %140
  %154 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1153
  %155 = call %struct._GSList* @config_node_next(%struct._GSList* %154), !dbg !1155
  store %struct._GSList* %155, %struct._GSList** %5, align 8, !dbg !1156
  br label %129, !dbg !1157, !llvm.loop !1158

; <label>:156:                                    ; preds = %139, %129
  %157 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1159
  call void @irc_server_init_isupport(%struct._IRC_SERVER_REC* %157), !dbg !1160
  br label %158, !dbg !1161

; <label>:158:                                    ; preds = %156, %16
  ret void, !dbg !1162
}

; Function Attrs: nounwind uwtable
define internal void @sig_session_restore_nick(%struct._IRC_CHANNEL_REC*, %struct._CONFIG_NODE*) #0 !dbg !1163 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1166, metadata !857), !dbg !1167
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1168, metadata !857), !dbg !1169
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1170, metadata !857), !dbg !1171
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1172, metadata !857), !dbg !1173
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1174, metadata !857), !dbg !1175
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1176, metadata !857), !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1178, metadata !857), !dbg !1179
  call void @llvm.dbg.declare(metadata [8 x i8]* %10, metadata !1180, metadata !857), !dbg !1181
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1182, metadata !857), !dbg !1183
  %12 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1184
  %13 = bitcast %struct._IRC_CHANNEL_REC* %12 to i8*, !dbg !1184
  %14 = call i8* @module_check_cast_module(i8* %13, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)), !dbg !1186
  %15 = bitcast i8* %14 to %struct._CHANNEL_REC*, !dbg !1187
  %16 = bitcast %struct._CHANNEL_REC* %15 to i8*, !dbg !1188
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1189
  %18 = bitcast i8* %17 to %struct._IRC_CHANNEL_REC*, !dbg !1191
  %19 = icmp ne %struct._IRC_CHANNEL_REC* %18, null, !dbg !1191
  br i1 %19, label %20, label %21, !dbg !1192

; <label>:20:                                     ; preds = %2
  br i1 false, label %22, label %23, !dbg !1193

; <label>:21:                                     ; preds = %2
  br i1 false, label %23, label %22, !dbg !1195

; <label>:22:                                     ; preds = %21, %20
  br label %82, !dbg !1197

; <label>:23:                                     ; preds = %21, %20
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1198
  %25 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* null), !dbg !1199
  store i8* %25, i8** %5, align 8, !dbg !1200
  %26 = load i8*, i8** %5, align 8, !dbg !1201
  %27 = icmp eq i8* %26, null, !dbg !1203
  br i1 %27, label %28, label %29, !dbg !1204

; <label>:28:                                     ; preds = %23
  br label %82, !dbg !1205

; <label>:29:                                     ; preds = %23
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1206
  %31 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !1207
  store i32 %31, i32* %7, align 4, !dbg !1208
  %32 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1209
  %33 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !1210
  store i32 %33, i32* %9, align 4, !dbg !1211
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1212
  %35 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 0), !dbg !1213
  store i32 %35, i32* %8, align 4, !dbg !1214
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1215
  %37 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* null), !dbg !1216
  store i8* %37, i8** %6, align 8, !dbg !1217
  %38 = load i8*, i8** %6, align 8, !dbg !1218
  %39 = icmp eq i8* %38, null, !dbg !1220
  br i1 %39, label %45, label %40, !dbg !1221

; <label>:40:                                     ; preds = %29
  %41 = load i8*, i8** %6, align 8, !dbg !1222
  %42 = load i8, i8* %41, align 1, !dbg !1224
  %43 = sext i8 %42 to i32, !dbg !1224
  %44 = icmp eq i32 %43, 0, !dbg !1225
  br i1 %44, label %45, label %74, !dbg !1226

; <label>:45:                                     ; preds = %40, %29
  store i32 0, i32* %11, align 4, !dbg !1227
  %46 = load i32, i32* %7, align 4, !dbg !1229
  %47 = icmp ne i32 %46, 0, !dbg !1229
  br i1 %47, label %48, label %53, !dbg !1231

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %11, align 4, !dbg !1232
  %50 = add nsw i32 %49, 1, !dbg !1232
  store i32 %50, i32* %11, align 4, !dbg !1232
  %51 = sext i32 %49 to i64, !dbg !1233
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %51, !dbg !1233
  store i8 64, i8* %52, align 1, !dbg !1234
  br label %53, !dbg !1233

; <label>:53:                                     ; preds = %48, %45
  %54 = load i32, i32* %8, align 4, !dbg !1235
  %55 = icmp ne i32 %54, 0, !dbg !1235
  br i1 %55, label %56, label %61, !dbg !1237

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %11, align 4, !dbg !1238
  %58 = add nsw i32 %57, 1, !dbg !1238
  store i32 %58, i32* %11, align 4, !dbg !1238
  %59 = sext i32 %57 to i64, !dbg !1239
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %59, !dbg !1239
  store i8 37, i8* %60, align 1, !dbg !1240
  br label %61, !dbg !1239

; <label>:61:                                     ; preds = %56, %53
  %62 = load i32, i32* %9, align 4, !dbg !1241
  %63 = icmp ne i32 %62, 0, !dbg !1241
  br i1 %63, label %64, label %69, !dbg !1243

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %11, align 4, !dbg !1244
  %66 = add nsw i32 %65, 1, !dbg !1244
  store i32 %66, i32* %11, align 4, !dbg !1244
  %67 = sext i32 %65 to i64, !dbg !1245
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %67, !dbg !1245
  store i8 43, i8* %68, align 1, !dbg !1246
  br label %69, !dbg !1245

; <label>:69:                                     ; preds = %64, %61
  %70 = load i32, i32* %11, align 4, !dbg !1247
  %71 = sext i32 %70 to i64, !dbg !1248
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %71, !dbg !1248
  store i8 0, i8* %72, align 1, !dbg !1249
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i32 0, i32 0, !dbg !1250
  store i8* %73, i8** %6, align 8, !dbg !1251
  br label %74, !dbg !1252

; <label>:74:                                     ; preds = %69, %40
  %75 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1253
  %76 = load i8*, i8** %5, align 8, !dbg !1254
  %77 = load i32, i32* %7, align 4, !dbg !1255
  %78 = load i32, i32* %8, align 4, !dbg !1256
  %79 = load i32, i32* %9, align 4, !dbg !1257
  %80 = load i8*, i8** %6, align 8, !dbg !1258
  %81 = call %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC* %75, i8* %76, i32 %77, i32 %78, i32 %79, i32 0, i8* %80), !dbg !1259
  br label %82, !dbg !1260

; <label>:82:                                     ; preds = %74, %28, %22
  ret void, !dbg !1261
}

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !1263 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1266, metadata !857), !dbg !1267
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1268, metadata !857), !dbg !1269
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1270, metadata !857), !dbg !1271
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1272, metadata !857), !dbg !1273
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1274
  %8 = bitcast %struct._IRC_SERVER_REC* %7 to i8*, !dbg !1274
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1276
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !1277
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1278
  %12 = call i8* @chat_protocol_check_cast(i8* %11, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1279
  %13 = bitcast i8* %12 to %struct._IRC_SERVER_REC*, !dbg !1281
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1281
  br i1 %14, label %15, label %16, !dbg !1282

; <label>:15:                                     ; preds = %1
  br i1 false, label %25, label %17, !dbg !1283

; <label>:16:                                     ; preds = %1
  br i1 false, label %17, label %25, !dbg !1285

; <label>:17:                                     ; preds = %16, %15
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1287
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 8, !dbg !1289
  %20 = load i8, i8* %19, align 8, !dbg !1289
  %21 = lshr i8 %20, 3, !dbg !1289
  %22 = and i8 %21, 1, !dbg !1289
  %23 = zext i8 %22 to i32, !dbg !1289
  %24 = icmp ne i32 %23, 0, !dbg !1287
  br i1 %24, label %26, label %25, !dbg !1290

; <label>:25:                                     ; preds = %17, %16, %15
  br label %71, !dbg !1291

; <label>:26:                                     ; preds = %17
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1292
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 7, !dbg !1293
  %29 = load i8*, i8** %28, align 8, !dbg !1293
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1294
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 3, !dbg !1295
  %32 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %31, align 8, !dbg !1295
  %33 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %32, i32 0, i32 10, !dbg !1296
  %34 = load i8*, i8** %33, align 8, !dbg !1296
  %35 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* %29, i8* %34), !dbg !1297
  store i8* %35, i8** %4, align 8, !dbg !1298
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1299
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 40, !dbg !1300
  %38 = load i8*, i8** %37, align 8, !dbg !1300
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !1301
  store i8* %39, i8** %5, align 8, !dbg !1302
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1303
  %41 = load i8*, i8** %4, align 8, !dbg !1304
  %42 = load i8*, i8** %5, align 8, !dbg !1305
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %40, i8* %41, i8* %42), !dbg !1306
  %44 = load i8*, i8** %5, align 8, !dbg !1307
  call void @g_free(i8* %44), !dbg !1308
  %45 = load i8*, i8** %4, align 8, !dbg !1309
  call void @g_free(i8* %45), !dbg !1310
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1311
  %47 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %46, i32 0, i32 23, !dbg !1313
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1313
  store %struct._GSList* %48, %struct._GSList** %3, align 8, !dbg !1314
  br label %49, !dbg !1315

; <label>:49:                                     ; preds = %67, %26
  %50 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1316
  %51 = icmp ne %struct._GSList* %50, null, !dbg !1319
  br i1 %51, label %52, label %71, !dbg !1320

; <label>:52:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !1321, metadata !857), !dbg !1323
  %53 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1324
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0, !dbg !1325
  %55 = load i8*, i8** %54, align 8, !dbg !1325
  %56 = bitcast i8* %55 to %struct._IRC_CHANNEL_REC*, !dbg !1324
  store %struct._IRC_CHANNEL_REC* %56, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1323
  %57 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1326
  %58 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %57, i32 0, i32 21, !dbg !1328
  %59 = load i16, i16* %58, align 8, !dbg !1328
  %60 = lshr i16 %59, 7, !dbg !1328
  %61 = and i16 %60, 1, !dbg !1328
  %62 = zext i16 %61 to i32, !dbg !1328
  %63 = icmp ne i32 %62, 0, !dbg !1326
  br i1 %63, label %64, label %66, !dbg !1329

; <label>:64:                                     ; preds = %52
  %65 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1330
  call void @session_restore_channel(%struct._IRC_CHANNEL_REC* %65), !dbg !1331
  br label %66, !dbg !1331

; <label>:66:                                     ; preds = %64, %52
  br label %67, !dbg !1332

; <label>:67:                                     ; preds = %66
  %68 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1333
  %69 = getelementptr inbounds %struct._GSList, %struct._GSList* %68, i32 0, i32 1, !dbg !1335
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !1335
  store %struct._GSList* %70, %struct._GSList** %3, align 8, !dbg !1336
  br label %49, !dbg !1337, !llvm.loop !1338

; <label>:71:                                     ; preds = %25, %49
  ret void, !dbg !1340
}

; Function Attrs: nounwind uwtable
define void @irc_session_deinit() #0 !dbg !1341 {
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, %struct._CONFIG_REC*, %struct._CONFIG_NODE*)* @sig_session_save_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1342
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, %struct._CONFIG_NODE*)* @sig_session_restore_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1343
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*, %struct._CONFIG_NODE*)* @sig_session_restore_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1344
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1345
  ret void, !dbg !1346
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @net_sendbuffer_flush(%struct._NET_SENDBUF_REC*) #1

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #1

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @session_isupport_foreach(i8*, i8*, %struct._isupport_data*) #0 !dbg !1347 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._isupport_data*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1351, metadata !857), !dbg !1352
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1353, metadata !857), !dbg !1354
  store %struct._isupport_data* %2, %struct._isupport_data** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._isupport_data** %6, metadata !1355, metadata !857), !dbg !1356
  %7 = load %struct._isupport_data*, %struct._isupport_data** %6, align 8, !dbg !1357
  %8 = getelementptr inbounds %struct._isupport_data, %struct._isupport_data* %7, i32 0, i32 0, !dbg !1358
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %8, align 8, !dbg !1358
  %10 = load %struct._isupport_data*, %struct._isupport_data** %6, align 8, !dbg !1359
  %11 = getelementptr inbounds %struct._isupport_data, %struct._isupport_data* %10, i32 0, i32 1, !dbg !1360
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1360
  %13 = load i8*, i8** %4, align 8, !dbg !1361
  %14 = load i8*, i8** %5, align 8, !dbg !1362
  call void @config_node_set_str(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %12, i8* %13, i8* %14), !dbg !1363
  ret void, !dbg !1364
}

declare noalias i8* @g_strdup(i8*) #1

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #1

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #1

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #1

declare i32 @g_istr_hash(i8*) #1

declare i32 @g_istr_equal(i8*, i8*) #1

declare %struct._GSList* @config_node_first(%struct._GSList*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare %struct._GSList* @config_node_next(%struct._GSList*) #1

declare void @irc_server_init_isupport(%struct._IRC_SERVER_REC*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare %struct._NICK_REC* @irc_nicklist_insert(%struct._IRC_CHANNEL_REC*, i8*, i32, i32, i32, i32, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @signal_emit(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @session_restore_channel(%struct._IRC_CHANNEL_REC*) #0 !dbg !1365 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !1368, metadata !857), !dbg !1369
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1370, metadata !857), !dbg !1371
  %4 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1372
  %5 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %4, i32 0, i32 4, !dbg !1373
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1373
  %7 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1374
  %8 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %7, i32 0, i32 6, !dbg !1375
  %9 = load i8*, i8** %8, align 8, !dbg !1375
  %10 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1376
  %11 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %10, i32 0, i32 4, !dbg !1377
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !1377
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 7, !dbg !1378
  %14 = load i8*, i8** %13, align 8, !dbg !1378
  %15 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1379
  %16 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %15, i32 0, i32 4, !dbg !1380
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %16, align 8, !dbg !1380
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 43, !dbg !1381
  %19 = load i8*, i8** %18, align 8, !dbg !1381
  %20 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %6, i8* %9, i8* %14, i8* %19), !dbg !1382
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1383
  %22 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %21, i32 0, i32 4, !dbg !1384
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !1384
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 7, !dbg !1385
  %25 = load i8*, i8** %24, align 8, !dbg !1385
  %26 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1386
  %27 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %26, i32 0, i32 6, !dbg !1387
  %28 = load i8*, i8** %27, align 8, !dbg !1387
  %29 = call noalias i8* (i8*, ...) @g_strconcat(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* %28, i8* null), !dbg !1388
  store i8* %29, i8** %3, align 8, !dbg !1389
  %30 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !1390
  %31 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %30, i32 0, i32 4, !dbg !1391
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %31, align 8, !dbg !1391
  %33 = load i8*, i8** %3, align 8, !dbg !1392
  %34 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %32, i8* %33), !dbg !1393
  %35 = load i8*, i8** %3, align 8, !dbg !1394
  call void @g_free(i8* %35), !dbg !1395
  ret void, !dbg !1396
}

declare noalias i8* @g_strconcat(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!734, !735}
!llvm.ident = !{!736}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !77)
!1 = !DIFile(filename: "line141-irc-session.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !62, !70}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 75, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!38 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!39 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!40 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!41 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!42 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!43 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!44 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!45 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!46 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!47 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!48 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!49 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!50 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!51 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!52 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!53 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!54 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!55 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!56 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!57 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!58 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!59 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!60 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!61 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 4, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!66 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!67 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!68 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!69 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 24, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "sasl.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "SASL_MECHANISM_NONE", value: 0)
!74 = !DIEnumerator(name: "SASL_MECHANISM_PLAIN", value: 1)
!75 = !DIEnumerator(name: "SASL_MECHANISM_EXTERNAL", value: 2)
!76 = !DIEnumerator(name: "SASL_MECHANISM_MAX", value: 3)
!77 = !{!78, !85, !86, !412, !721, !725, !730, !675, !519}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !79, line: 9, baseType: !80)
!79 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !83, !83, !83, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !88, line: 6, baseType: !89)
!88 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !90, line: 42, size: 39168, align: 64, elements: !91)
!90 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !{!92, !95, !96, !97, !344, !349, !350, !351, !352, !353, !354, !355, !356, !357, !374, !375, !379, !380, !381, !385, !390, !391, !392, !393, !394, !395, !396, !397, !404, !405, !406, !407, !408, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !718, !720}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !93, line: 3, baseType: !94, size: 32, align: 32)
!93 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !89, file: !93, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !89, file: !93, line: 6, baseType: !94, size: 32, align: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !89, file: !93, line: 8, baseType: !98, size: 64, align: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !88, line: 5, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !90, line: 24, size: 2496, align: 64, elements: !101)
!101 = !{!102, !104, !105, !106, !109, !110, !111, !112, !113, !115, !116, !117, !118, !119, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !103, line: 3, baseType: !94, size: 32, align: 32)
!103 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !100, file: !103, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !100, file: !103, line: 6, baseType: !94, size: 32, align: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !100, file: !103, line: 9, baseType: !107, size: 64, align: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !100, file: !103, line: 10, baseType: !94, size: 32, align: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !100, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !100, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !100, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !100, file: !103, line: 13, baseType: !114, size: 16, align: 16, offset: 448)
!114 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !100, file: !103, line: 14, baseType: !107, size: 64, align: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !100, file: !103, line: 15, baseType: !107, size: 64, align: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !100, file: !103, line: 16, baseType: !94, size: 32, align: 32, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !100, file: !103, line: 17, baseType: !107, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !100, file: !103, line: 19, baseType: !120, size: 64, align: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !122, line: 99, baseType: !123)
!122 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !122, line: 99, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !100, file: !103, line: 19, baseType: !120, size: 64, align: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !100, file: !103, line: 21, baseType: !107, size: 64, align: 64, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !100, file: !103, line: 22, baseType: !107, size: 64, align: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !100, file: !103, line: 23, baseType: !107, size: 64, align: 64, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !100, file: !103, line: 24, baseType: !107, size: 64, align: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !100, file: !103, line: 26, baseType: !107, size: 64, align: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !100, file: !103, line: 27, baseType: !107, size: 64, align: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !100, file: !103, line: 28, baseType: !107, size: 64, align: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !100, file: !103, line: 29, baseType: !107, size: 64, align: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !100, file: !103, line: 30, baseType: !107, size: 64, align: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !100, file: !103, line: 31, baseType: !107, size: 64, align: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !100, file: !103, line: 32, baseType: !107, size: 64, align: 64, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !100, file: !103, line: 33, baseType: !107, size: 64, align: 64, offset: 1600)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !100, file: !103, line: 35, baseType: !138, size: 64, align: 64, offset: 1664)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !141)
!141 = !{!142, !145, !289, !290, !295, !296, !297, !298, !299, !308, !309, !310, !314, !315, !316, !317, !318, !319, !320, !321}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !140, file: !4, line: 100, baseType: !143, size: 32, align: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !144, line: 49, baseType: !94)
!144 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !140, file: !4, line: 101, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !149)
!149 = !{!150, !174, !180, !187, !191, !276, !280, !285}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !148, file: !4, line: 133, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !138, !155, !157, !160, !161}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !144, line: 46, baseType: !108)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !158, line: 66, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!159 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !164, line: 42, baseType: !165)
!164 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !164, line: 44, size: 128, align: 64, elements: !166)
!166 = !{!167, !172, !173}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !165, file: !164, line: 46, baseType: !168, size: 32, align: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !169, line: 36, baseType: !170)
!169 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !158, line: 45, baseType: !171)
!171 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !165, file: !164, line: 47, baseType: !143, size: 32, align: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !165, file: !164, line: 48, baseType: !155, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !148, file: !4, line: 138, baseType: !175, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!154, !138, !178, !157, !160, !161}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !148, file: !4, line: 143, baseType: !181, size: 64, align: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!154, !138, !184, !186, !161}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !158, line: 51, baseType: !185)
!185 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !148, file: !4, line: 147, baseType: !188, size: 64, align: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!154, !138, !161}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !148, file: !4, line: 149, baseType: !192, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !138, !275}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !198)
!198 = !{!199, !201, !222, !251, !253, !257, !258, !259, !260, !268, !269, !270, !271}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !197, file: !16, line: 174, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !144, line: 77, baseType: !85)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !197, file: !16, line: 175, baseType: !202, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !205)
!205 = !{!206, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !204, file: !16, line: 198, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !200}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !204, file: !16, line: 199, baseType: !207, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !204, file: !16, line: 200, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !200, !195, !215, !221}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !200}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !144, line: 50, baseType: !143)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !197, file: !16, line: 177, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !227)
!227 = !{!228, !233, !237, !241, !245, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !226, file: !16, line: 216, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!220, !195, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !226, file: !16, line: 218, baseType: !234, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!220, !195}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !226, file: !16, line: 219, baseType: !238, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!220, !195, !216, !200}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !226, file: !16, line: 222, baseType: !242, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !195}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !226, file: !16, line: 226, baseType: !216, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !226, file: !16, line: 227, baseType: !247, size: 64, align: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !197, file: !16, line: 178, baseType: !252, size: 32, align: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !144, line: 55, baseType: !171)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !197, file: !16, line: 180, baseType: !254, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !197, file: !16, line: 182, baseType: !143, size: 32, align: 32, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !16, line: 183, baseType: !252, size: 32, align: 32, offset: 352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !197, file: !16, line: 184, baseType: !252, size: 32, align: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !197, file: !16, line: 186, baseType: !261, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !263, line: 37, baseType: !264)
!263 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !263, line: 39, size: 128, align: 64, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !264, file: !263, line: 41, baseType: !200, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !263, line: 42, baseType: !261, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !197, file: !16, line: 188, baseType: !195, size: 64, align: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !16, line: 189, baseType: !195, size: 64, align: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !16, line: 191, baseType: !107, size: 64, align: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !197, file: !16, line: 193, baseType: !272, size: 64, align: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !148, file: !4, line: 151, baseType: !277, size: 64, align: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !138}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !148, file: !4, line: 152, baseType: !281, size: 64, align: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!154, !138, !284, !161}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !148, file: !4, line: 155, baseType: !286, size: 64, align: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!284, !138}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !140, file: !4, line: 103, baseType: !155, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !140, file: !4, line: 104, baseType: !291, size: 64, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !292, line: 77, baseType: !293)
!292 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !292, line: 77, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !140, file: !4, line: 105, baseType: !291, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !140, file: !4, line: 106, baseType: !155, size: 64, align: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !140, file: !4, line: 107, baseType: !252, size: 32, align: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !140, file: !4, line: 109, baseType: !157, size: 64, align: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !140, file: !4, line: 110, baseType: !300, size: 64, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !302, line: 39, baseType: !303)
!302 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !302, line: 41, size: 192, align: 64, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !303, file: !302, line: 43, baseType: !155, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !303, file: !302, line: 44, baseType: !157, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !303, file: !302, line: 45, baseType: !157, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !140, file: !4, line: 111, baseType: !300, size: 64, align: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !140, file: !4, line: 112, baseType: !300, size: 64, align: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !140, file: !4, line: 113, baseType: !311, size: 48, align: 8, offset: 704)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 48, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 6)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !140, file: !4, line: 117, baseType: !252, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !140, file: !4, line: 118, baseType: !252, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !140, file: !4, line: 119, baseType: !252, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !140, file: !4, line: 120, baseType: !252, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !140, file: !4, line: 121, baseType: !252, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !140, file: !4, line: 122, baseType: !252, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !140, file: !4, line: 124, baseType: !200, size: 64, align: 64, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !140, file: !4, line: 125, baseType: !200, size: 64, align: 64, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !100, file: !103, line: 38, baseType: !171, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !100, file: !103, line: 39, baseType: !171, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !100, file: !103, line: 40, baseType: !171, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !100, file: !103, line: 41, baseType: !171, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !100, file: !103, line: 42, baseType: !171, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !100, file: !103, line: 43, baseType: !171, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !100, file: !103, line: 44, baseType: !171, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !100, file: !103, line: 45, baseType: !171, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !100, file: !103, line: 46, baseType: !107, size: 64, align: 64, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !100, file: !103, line: 47, baseType: !107, size: 64, align: 64, offset: 1856)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !100, file: !90, line: 27, baseType: !107, size: 64, align: 64, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !100, file: !90, line: 28, baseType: !107, size: 64, align: 64, offset: 1984)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !100, file: !90, line: 30, baseType: !94, size: 32, align: 32, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !100, file: !90, line: 31, baseType: !107, size: 64, align: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !100, file: !90, line: 32, baseType: !107, size: 64, align: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !100, file: !90, line: 34, baseType: !94, size: 32, align: 32, offset: 2240)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !100, file: !90, line: 35, baseType: !94, size: 32, align: 32, offset: 2272)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !100, file: !90, line: 36, baseType: !94, size: 32, align: 32, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !100, file: !90, line: 38, baseType: !94, size: 32, align: 32, offset: 2336)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !100, file: !90, line: 38, baseType: !94, size: 32, align: 32, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !100, file: !90, line: 38, baseType: !94, size: 32, align: 32, offset: 2400)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !100, file: !90, line: 38, baseType: !94, size: 32, align: 32, offset: 2432)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !89, file: !93, line: 9, baseType: !345, size: 64, align: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !346, line: 75, baseType: !347)
!346 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !348, line: 139, baseType: !185)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !89, file: !93, line: 10, baseType: !345, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !89, file: !93, line: 12, baseType: !107, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !89, file: !93, line: 13, baseType: !107, size: 64, align: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !89, file: !93, line: 15, baseType: !171, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !89, file: !93, line: 16, baseType: !171, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !89, file: !93, line: 17, baseType: !171, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !89, file: !93, line: 18, baseType: !171, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !89, file: !93, line: 19, baseType: !171, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !89, file: !93, line: 21, baseType: !358, size: 64, align: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !122, line: 102, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !361, line: 7, size: 384, align: 64, elements: !362)
!361 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!362 = !{!363, !364, !368, !369, !370, !371, !372, !373}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !360, file: !361, line: 8, baseType: !138, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !360, file: !361, line: 9, baseType: !365, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !122, line: 101, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !122, line: 101, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !360, file: !361, line: 11, baseType: !94, size: 32, align: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !360, file: !361, line: 12, baseType: !94, size: 32, align: 32, offset: 160)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !360, file: !361, line: 13, baseType: !94, size: 32, align: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !360, file: !361, line: 14, baseType: !107, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !360, file: !361, line: 15, baseType: !94, size: 32, align: 32, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !360, file: !361, line: 16, baseType: !171, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !89, file: !93, line: 22, baseType: !94, size: 32, align: 32, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !89, file: !93, line: 25, baseType: !376, size: 128, align: 64, offset: 640)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, align: 64, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 2)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !89, file: !93, line: 26, baseType: !94, size: 32, align: 32, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !89, file: !93, line: 27, baseType: !94, size: 32, align: 32, offset: 800)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !89, file: !93, line: 29, baseType: !382, size: 64, align: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !122, line: 103, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !122, line: 103, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !89, file: !93, line: 30, baseType: !386, size: 64, align: 64, offset: 896)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !388, line: 37, baseType: !389)
!388 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !388, line: 37, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !89, file: !93, line: 32, baseType: !107, size: 64, align: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !89, file: !93, line: 33, baseType: !107, size: 64, align: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !89, file: !93, line: 34, baseType: !107, size: 64, align: 64, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !89, file: !93, line: 35, baseType: !171, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !89, file: !93, line: 36, baseType: !171, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !89, file: !93, line: 37, baseType: !171, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !89, file: !93, line: 38, baseType: !171, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !89, file: !93, line: 40, baseType: !398, size: 128, align: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !144, line: 504, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !144, line: 506, size: 128, align: 64, elements: !400)
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !399, file: !144, line: 508, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !144, line: 48, baseType: !185)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !399, file: !144, line: 509, baseType: !402, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !89, file: !93, line: 41, baseType: !345, size: 64, align: 64, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !89, file: !93, line: 42, baseType: !94, size: 32, align: 32, offset: 1408)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !89, file: !93, line: 44, baseType: !261, size: 64, align: 64, offset: 1472)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !89, file: !93, line: 45, baseType: !261, size: 64, align: 64, offset: 1536)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !89, file: !93, line: 53, baseType: !409, size: 64, align: 64, offset: 1600)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412, !500, !94}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !122, line: 107, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !415, line: 30, size: 2240, align: 64, elements: !416)
!415 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!416 = !{!417, !418, !419, !420, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !496, !502, !506, !510, !515, !594, !601, !605}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !93, line: 3, baseType: !94, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !414, file: !93, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !414, file: !93, line: 6, baseType: !94, size: 32, align: 32, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !414, file: !93, line: 8, baseType: !421, size: 64, align: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !122, line: 113, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !415, line: 25, size: 1920, align: 64, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !103, line: 3, baseType: !94, size: 32, align: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !423, file: !103, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !423, file: !103, line: 6, baseType: !94, size: 32, align: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !423, file: !103, line: 9, baseType: !107, size: 64, align: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !423, file: !103, line: 10, baseType: !94, size: 32, align: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !423, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !423, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !423, file: !103, line: 11, baseType: !107, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !423, file: !103, line: 13, baseType: !114, size: 16, align: 16, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !423, file: !103, line: 14, baseType: !107, size: 64, align: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !423, file: !103, line: 15, baseType: !107, size: 64, align: 64, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !423, file: !103, line: 16, baseType: !94, size: 32, align: 32, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !423, file: !103, line: 17, baseType: !107, size: 64, align: 64, offset: 704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !423, file: !103, line: 19, baseType: !120, size: 64, align: 64, offset: 768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !423, file: !103, line: 19, baseType: !120, size: 64, align: 64, offset: 832)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !423, file: !103, line: 21, baseType: !107, size: 64, align: 64, offset: 896)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !423, file: !103, line: 22, baseType: !107, size: 64, align: 64, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !423, file: !103, line: 23, baseType: !107, size: 64, align: 64, offset: 1024)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !423, file: !103, line: 24, baseType: !107, size: 64, align: 64, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !423, file: !103, line: 26, baseType: !107, size: 64, align: 64, offset: 1152)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !423, file: !103, line: 27, baseType: !107, size: 64, align: 64, offset: 1216)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !423, file: !103, line: 28, baseType: !107, size: 64, align: 64, offset: 1280)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !423, file: !103, line: 29, baseType: !107, size: 64, align: 64, offset: 1344)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !423, file: !103, line: 30, baseType: !107, size: 64, align: 64, offset: 1408)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !423, file: !103, line: 31, baseType: !107, size: 64, align: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !423, file: !103, line: 32, baseType: !107, size: 64, align: 64, offset: 1536)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !423, file: !103, line: 33, baseType: !107, size: 64, align: 64, offset: 1600)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !423, file: !103, line: 35, baseType: !138, size: 64, align: 64, offset: 1664)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !423, file: !103, line: 38, baseType: !171, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !423, file: !103, line: 39, baseType: !171, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !423, file: !103, line: 40, baseType: !171, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !423, file: !103, line: 41, baseType: !171, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !423, file: !103, line: 42, baseType: !171, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !423, file: !103, line: 43, baseType: !171, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !423, file: !103, line: 44, baseType: !171, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !423, file: !103, line: 45, baseType: !171, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !423, file: !103, line: 46, baseType: !107, size: 64, align: 64, offset: 1792)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !423, file: !103, line: 47, baseType: !107, size: 64, align: 64, offset: 1856)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !414, file: !93, line: 9, baseType: !345, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !414, file: !93, line: 10, baseType: !345, size: 64, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !414, file: !93, line: 12, baseType: !107, size: 64, align: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !414, file: !93, line: 13, baseType: !107, size: 64, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !414, file: !93, line: 15, baseType: !171, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !414, file: !93, line: 16, baseType: !171, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !414, file: !93, line: 17, baseType: !171, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !414, file: !93, line: 18, baseType: !171, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !414, file: !93, line: 19, baseType: !171, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !414, file: !93, line: 21, baseType: !358, size: 64, align: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !414, file: !93, line: 22, baseType: !94, size: 32, align: 32, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !414, file: !93, line: 25, baseType: !376, size: 128, align: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !414, file: !93, line: 26, baseType: !94, size: 32, align: 32, offset: 768)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !414, file: !93, line: 27, baseType: !94, size: 32, align: 32, offset: 800)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !414, file: !93, line: 29, baseType: !382, size: 64, align: 64, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !414, file: !93, line: 30, baseType: !386, size: 64, align: 64, offset: 896)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !414, file: !93, line: 32, baseType: !107, size: 64, align: 64, offset: 960)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !414, file: !93, line: 33, baseType: !107, size: 64, align: 64, offset: 1024)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !414, file: !93, line: 34, baseType: !107, size: 64, align: 64, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !414, file: !93, line: 35, baseType: !171, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !414, file: !93, line: 36, baseType: !171, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !414, file: !93, line: 37, baseType: !171, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !414, file: !93, line: 38, baseType: !171, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !414, file: !93, line: 40, baseType: !398, size: 128, align: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !414, file: !93, line: 41, baseType: !345, size: 64, align: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !414, file: !93, line: 42, baseType: !94, size: 32, align: 32, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !414, file: !93, line: 44, baseType: !261, size: 64, align: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !414, file: !93, line: 45, baseType: !261, size: 64, align: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !414, file: !93, line: 53, baseType: !409, size: 64, align: 64, offset: 1600)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !414, file: !93, line: 55, baseType: !493, size: 64, align: 64, offset: 1664)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!94, !412, !108}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !414, file: !93, line: 57, baseType: !497, size: 64, align: 64, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!94, !412, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !414, file: !93, line: 60, baseType: !503, size: 64, align: 64, offset: 1792)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!500, !412}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !414, file: !93, line: 62, baseType: !507, size: 64, align: 64, offset: 1856)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !412, !500, !500, !94}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !414, file: !93, line: 65, baseType: !511, size: 64, align: 64, offset: 1920)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!514, !412, !500, !500}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !414, file: !93, line: 69, baseType: !516, size: 64, align: 64, offset: 1984)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !412, !500}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !122, line: 109, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !522, line: 15, size: 1408, align: 64, elements: !523)
!522 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!523 = !{!524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !542, !546, !548, !549, !550, !551, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !521, file: !525, line: 3, baseType: !94, size: 32, align: 32)
!525 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !521, file: !525, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !521, file: !525, line: 5, baseType: !386, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !521, file: !525, line: 7, baseType: !85, size: 64, align: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !521, file: !525, line: 8, baseType: !412, size: 64, align: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !521, file: !525, line: 9, baseType: !107, size: 64, align: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !521, file: !525, line: 10, baseType: !107, size: 64, align: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !521, file: !525, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !521, file: !525, line: 12, baseType: !94, size: 32, align: 32, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !521, file: !525, line: 13, baseType: !107, size: 64, align: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !521, file: !525, line: 15, baseType: !536, size: 64, align: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !122, line: 108, baseType: !541)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !122, line: 108, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !521, file: !525, line: 17, baseType: !543, size: 64, align: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!500, !539}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !521, file: !547, line: 5, baseType: !107, size: 64, align: 64, offset: 704)
!547 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !521, file: !547, line: 6, baseType: !107, size: 64, align: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !521, file: !547, line: 7, baseType: !345, size: 64, align: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !521, file: !547, line: 9, baseType: !386, size: 64, align: 64, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !521, file: !547, line: 10, baseType: !552, size: 64, align: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !122, line: 111, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !555, line: 13, size: 576, align: 64, elements: !556)
!555 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!556 = !{!557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !575, !576}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !558, line: 3, baseType: !94, size: 32, align: 32)
!558 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !554, file: !558, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !554, file: !558, line: 6, baseType: !345, size: 64, align: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !554, file: !558, line: 8, baseType: !107, size: 64, align: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !554, file: !558, line: 9, baseType: !107, size: 64, align: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !554, file: !558, line: 10, baseType: !107, size: 64, align: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !554, file: !558, line: 11, baseType: !94, size: 32, align: 32, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !554, file: !558, line: 14, baseType: !171, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !554, file: !558, line: 15, baseType: !171, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !554, file: !558, line: 18, baseType: !171, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !554, file: !558, line: 19, baseType: !171, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !554, file: !558, line: 20, baseType: !171, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !554, file: !558, line: 21, baseType: !171, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !554, file: !558, line: 22, baseType: !572, size: 64, align: 8, offset: 360)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, align: 8, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !554, file: !558, line: 26, baseType: !85, size: 64, align: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !558, line: 28, baseType: !552, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !521, file: !547, line: 12, baseType: !171, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !521, file: !547, line: 13, baseType: !107, size: 64, align: 64, offset: 1088)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !521, file: !547, line: 14, baseType: !94, size: 32, align: 32, offset: 1152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !521, file: !547, line: 15, baseType: !107, size: 64, align: 64, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !521, file: !547, line: 17, baseType: !171, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !521, file: !547, line: 18, baseType: !171, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !521, file: !547, line: 19, baseType: !171, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !521, file: !547, line: 20, baseType: !171, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !521, file: !547, line: 22, baseType: !171, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !521, file: !547, line: 23, baseType: !171, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !521, file: !547, line: 24, baseType: !171, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !521, file: !547, line: 25, baseType: !171, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !521, file: !547, line: 26, baseType: !171, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !521, file: !547, line: 31, baseType: !591, size: 64, align: 64, offset: 1344)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!107, !519}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !414, file: !93, line: 70, baseType: !595, size: 64, align: 64, offset: 2048)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!598, !412, !500}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !122, line: 110, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !122, line: 110, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !414, file: !93, line: 71, baseType: !602, size: 64, align: 64, offset: 2112)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!94, !500, !500}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !414, file: !93, line: 73, baseType: !602, size: 64, align: 64, offset: 2176)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !89, file: !93, line: 55, baseType: !493, size: 64, align: 64, offset: 1664)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !89, file: !93, line: 57, baseType: !497, size: 64, align: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !89, file: !93, line: 60, baseType: !503, size: 64, align: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !89, file: !93, line: 62, baseType: !507, size: 64, align: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !89, file: !93, line: 65, baseType: !511, size: 64, align: 64, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !89, file: !93, line: 69, baseType: !516, size: 64, align: 64, offset: 1984)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !89, file: !93, line: 70, baseType: !595, size: 64, align: 64, offset: 2048)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !89, file: !93, line: 71, baseType: !602, size: 64, align: 64, offset: 2112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !89, file: !93, line: 73, baseType: !602, size: 64, align: 64, offset: 2176)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !89, file: !90, line: 46, baseType: !261, size: 64, align: 64, offset: 2240)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !89, file: !90, line: 47, baseType: !261, size: 64, align: 64, offset: 2304)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !89, file: !90, line: 48, baseType: !618, size: 64, align: 64, offset: 2368)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !88, line: 8, baseType: !620)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !88, line: 8, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !89, file: !90, line: 49, baseType: !261, size: 64, align: 64, offset: 2432)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !89, file: !90, line: 51, baseType: !107, size: 64, align: 64, offset: 2496)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !89, file: !90, line: 53, baseType: !107, size: 64, align: 64, offset: 2560)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !89, file: !90, line: 54, baseType: !107, size: 64, align: 64, offset: 2624)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !89, file: !90, line: 55, baseType: !107, size: 64, align: 64, offset: 2688)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !89, file: !90, line: 56, baseType: !107, size: 64, align: 64, offset: 2752)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !89, file: !90, line: 57, baseType: !94, size: 32, align: 32, offset: 2816)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !89, file: !90, line: 59, baseType: !171, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !89, file: !90, line: 60, baseType: !171, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !89, file: !90, line: 62, baseType: !171, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !89, file: !90, line: 63, baseType: !171, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !89, file: !90, line: 64, baseType: !171, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !89, file: !90, line: 65, baseType: !171, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !89, file: !90, line: 66, baseType: !171, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !89, file: !90, line: 67, baseType: !171, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !89, file: !90, line: 68, baseType: !171, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !89, file: !90, line: 69, baseType: !171, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !89, file: !90, line: 70, baseType: !171, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !89, file: !90, line: 71, baseType: !171, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !89, file: !90, line: 72, baseType: !171, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !89, file: !90, line: 74, baseType: !94, size: 32, align: 32, offset: 2880)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !89, file: !90, line: 75, baseType: !94, size: 32, align: 32, offset: 2912)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !89, file: !90, line: 76, baseType: !94, size: 32, align: 32, offset: 2944)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !89, file: !90, line: 77, baseType: !94, size: 32, align: 32, offset: 2976)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !89, file: !90, line: 79, baseType: !386, size: 64, align: 64, offset: 3008)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !89, file: !90, line: 80, baseType: !261, size: 64, align: 64, offset: 3072)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !89, file: !90, line: 81, baseType: !261, size: 64, align: 64, offset: 3136)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !89, file: !90, line: 83, baseType: !300, size: 64, align: 64, offset: 3200)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !89, file: !90, line: 84, baseType: !252, size: 32, align: 32, offset: 3264)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !89, file: !90, line: 87, baseType: !94, size: 32, align: 32, offset: 3296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !89, file: !90, line: 91, baseType: !261, size: 64, align: 64, offset: 3328)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !89, file: !90, line: 92, baseType: !398, size: 128, align: 64, offset: 3392)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !89, file: !90, line: 93, baseType: !398, size: 128, align: 64, offset: 3520)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !89, file: !90, line: 95, baseType: !94, size: 32, align: 32, offset: 3648)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !89, file: !90, line: 96, baseType: !94, size: 32, align: 32, offset: 3680)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !89, file: !90, line: 97, baseType: !94, size: 32, align: 32, offset: 3712)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !89, file: !90, line: 100, baseType: !261, size: 64, align: 64, offset: 3776)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !89, file: !90, line: 103, baseType: !261, size: 64, align: 64, offset: 3840)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !89, file: !90, line: 106, baseType: !261, size: 64, align: 64, offset: 3904)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !89, file: !90, line: 108, baseType: !386, size: 64, align: 64, offset: 3968)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !89, file: !90, line: 109, baseType: !261, size: 64, align: 64, offset: 4032)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !89, file: !90, line: 111, baseType: !261, size: 64, align: 64, offset: 4096)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !89, file: !90, line: 114, baseType: !85, size: 64, align: 64, offset: 4160)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !89, file: !90, line: 116, baseType: !386, size: 64, align: 64, offset: 4224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !89, file: !90, line: 117, baseType: !666, size: 32768, align: 64, offset: 4288)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 32768, align: 64, elements: !716)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !668, line: 10, size: 128, align: 64, elements: !669)
!668 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!669 = !{!670, !715}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !667, file: !668, line: 11, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !668, line: 7, baseType: !673)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675, !500, !108, !108, !107, !300}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !88, line: 7, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !678, line: 15, size: 1600, align: 64, elements: !679)
!678 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !525, line: 3, baseType: !94, size: 32, align: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !677, file: !525, line: 4, baseType: !94, size: 32, align: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !677, file: !525, line: 5, baseType: !386, size: 64, align: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !677, file: !525, line: 7, baseType: !85, size: 64, align: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !677, file: !525, line: 8, baseType: !86, size: 64, align: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !677, file: !525, line: 9, baseType: !107, size: 64, align: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !677, file: !525, line: 10, baseType: !107, size: 64, align: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !677, file: !525, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !677, file: !525, line: 12, baseType: !94, size: 32, align: 32, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !677, file: !525, line: 13, baseType: !107, size: 64, align: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !677, file: !525, line: 15, baseType: !536, size: 64, align: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !677, file: !525, line: 17, baseType: !543, size: 64, align: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !677, file: !547, line: 5, baseType: !107, size: 64, align: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !677, file: !547, line: 6, baseType: !107, size: 64, align: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !677, file: !547, line: 7, baseType: !345, size: 64, align: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !677, file: !547, line: 9, baseType: !386, size: 64, align: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !677, file: !547, line: 10, baseType: !552, size: 64, align: 64, offset: 960)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !677, file: !547, line: 12, baseType: !171, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !677, file: !547, line: 13, baseType: !107, size: 64, align: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !677, file: !547, line: 14, baseType: !94, size: 32, align: 32, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !677, file: !547, line: 15, baseType: !107, size: 64, align: 64, offset: 1216)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !677, file: !547, line: 17, baseType: !171, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !677, file: !547, line: 18, baseType: !171, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !677, file: !547, line: 19, baseType: !171, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !677, file: !547, line: 20, baseType: !171, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !677, file: !547, line: 22, baseType: !171, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !677, file: !547, line: 23, baseType: !171, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !677, file: !547, line: 24, baseType: !171, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !677, file: !547, line: 25, baseType: !171, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !677, file: !547, line: 26, baseType: !171, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !677, file: !547, line: 31, baseType: !591, size: 64, align: 64, offset: 1344)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !677, file: !678, line: 18, baseType: !261, size: 64, align: 64, offset: 1408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !677, file: !678, line: 20, baseType: !345, size: 64, align: 64, offset: 1472)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !677, file: !678, line: 21, baseType: !94, size: 32, align: 32, offset: 1536)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !677, file: !678, line: 22, baseType: !94, size: 32, align: 32, offset: 1568)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !667, file: !668, line: 12, baseType: !108, size: 8, align: 8, offset: 64)
!716 = !{!717}
!717 = !DISubrange(count: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !89, file: !90, line: 118, baseType: !719, size: 2048, align: 8, offset: 37056)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 2048, align: 8, elements: !716)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !89, file: !90, line: 120, baseType: !602, size: 64, align: 64, offset: 39104)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !144, line: 91, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !200, !200, !200}
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !144, line: 90, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!252, !729}
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !144, line: 78, baseType: !83)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !144, line: 80, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!143, !729, !729}
!734 = !{i32 2, !"Dwarf Version", i32 4}
!735 = !{i32 2, !"Debug Info Version", i32 3}
!736 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!737 = distinct !DISubprogram(name: "irc_session_init", scope: !738, file: !738, line: 203, type: !249, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!738 = !DIFile(filename: "irc-session.c", directory: "/home/lichi/Desktop/irssi/task1")
!739 = !{}
!740 = !DILocation(line: 205, column: 2, scope: !737)
!741 = !DILocation(line: 206, column: 2, scope: !737)
!742 = !DILocation(line: 207, column: 2, scope: !737)
!743 = !DILocation(line: 209, column: 2, scope: !737)
!744 = !DILocation(line: 210, column: 1, scope: !737)
!745 = distinct !DISubprogram(name: "sig_session_save_server", scope: !738, file: !738, line: 40, type: !746, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !86, !748, !757}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !63, line: 18, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !63, line: 49, size: 576, align: 64, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !764, !765, !766, !853, !854, !855}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !750, file: !63, line: 50, baseType: !107, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !750, file: !63, line: 51, baseType: !94, size: 32, align: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !750, file: !63, line: 52, baseType: !94, size: 32, align: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !750, file: !63, line: 54, baseType: !107, size: 64, align: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !750, file: !63, line: 55, baseType: !757, size: 64, align: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !63, line: 17, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !63, line: 20, size: 192, align: 64, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !63, line: 21, baseType: !94, size: 32, align: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !759, file: !63, line: 22, baseType: !107, size: 64, align: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !759, file: !63, line: 23, baseType: !85, size: 64, align: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !750, file: !63, line: 56, baseType: !386, size: 64, align: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !750, file: !63, line: 57, baseType: !386, size: 64, align: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !750, file: !63, line: 59, baseType: !767, size: 64, align: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !36, line: 37, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !36, line: 169, size: 1152, align: 64, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !780, !812, !814, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !769, file: !36, line: 172, baseType: !200, size: 64, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !769, file: !36, line: 173, baseType: !252, size: 32, align: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !769, file: !36, line: 176, baseType: !252, size: 32, align: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !769, file: !36, line: 179, baseType: !178, size: 64, align: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !769, file: !36, line: 182, baseType: !776, size: 64, align: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !778, line: 36, baseType: !779)
!778 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !778, line: 36, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !769, file: !36, line: 185, baseType: !781, size: 64, align: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !36, line: 38, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !36, line: 127, size: 320, align: 64, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !783, file: !36, line: 131, baseType: !155, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !783, file: !36, line: 132, baseType: !155, size: 64, align: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !783, file: !36, line: 133, baseType: !155, size: 64, align: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !783, file: !36, line: 134, baseType: !155, size: 64, align: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !783, file: !36, line: 138, baseType: !252, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !783, file: !36, line: 143, baseType: !252, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !783, file: !36, line: 144, baseType: !252, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !783, file: !36, line: 145, baseType: !252, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !783, file: !36, line: 146, baseType: !252, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !783, file: !36, line: 147, baseType: !252, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !783, file: !36, line: 148, baseType: !252, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !783, file: !36, line: 149, baseType: !252, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !783, file: !36, line: 150, baseType: !252, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !783, file: !36, line: 151, baseType: !252, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !783, file: !36, line: 152, baseType: !252, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !783, file: !36, line: 153, baseType: !252, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !783, file: !36, line: 154, baseType: !252, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !783, file: !36, line: 155, baseType: !252, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !783, file: !36, line: 156, baseType: !252, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !783, file: !36, line: 157, baseType: !252, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !783, file: !36, line: 158, baseType: !252, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !783, file: !36, line: 159, baseType: !252, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !783, file: !36, line: 160, baseType: !252, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !783, file: !36, line: 161, baseType: !252, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !783, file: !36, line: 162, baseType: !252, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !783, file: !36, line: 163, baseType: !252, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !783, file: !36, line: 166, baseType: !252, size: 32, align: 32, offset: 288)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !769, file: !36, line: 188, baseType: !813, size: 32, align: 32, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !36, line: 109, baseType: !35)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !769, file: !36, line: 189, baseType: !815, size: 64, align: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !36, line: 39, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !36, line: 111, size: 64, align: 64, elements: !817)
!817 = !{!818, !819, !820, !822, !823, !824, !826, !829, !830, !831, !832, !835}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !816, file: !36, line: 113, baseType: !200, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !816, file: !36, line: 114, baseType: !155, size: 64, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !816, file: !36, line: 115, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !144, line: 54, baseType: !159)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !816, file: !36, line: 116, baseType: !821, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !816, file: !36, line: 117, baseType: !821, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !816, file: !36, line: 118, baseType: !825, size: 64, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !158, line: 52, baseType: !159)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !816, file: !36, line: 119, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !144, line: 58, baseType: !828)
!828 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !816, file: !36, line: 120, baseType: !821, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !816, file: !36, line: 121, baseType: !155, size: 64, align: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !816, file: !36, line: 122, baseType: !155, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !816, file: !36, line: 123, baseType: !833, size: 8, align: 8)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !144, line: 52, baseType: !834)
!834 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !816, file: !36, line: 124, baseType: !252, size: 32, align: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !769, file: !36, line: 190, baseType: !252, size: 32, align: 32, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !769, file: !36, line: 191, baseType: !252, size: 32, align: 32, offset: 480)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !769, file: !36, line: 194, baseType: !813, size: 32, align: 32, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !769, file: !36, line: 195, baseType: !815, size: 64, align: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !769, file: !36, line: 196, baseType: !252, size: 32, align: 32, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !769, file: !36, line: 197, baseType: !252, size: 32, align: 32, offset: 672)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !769, file: !36, line: 201, baseType: !386, size: 64, align: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !769, file: !36, line: 202, baseType: !143, size: 32, align: 32, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !769, file: !36, line: 203, baseType: !178, size: 64, align: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !769, file: !36, line: 204, baseType: !178, size: 64, align: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !769, file: !36, line: 205, baseType: !155, size: 64, align: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !769, file: !36, line: 206, baseType: !252, size: 32, align: 32, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !769, file: !36, line: 210, baseType: !849, size: 64, align: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !36, line: 41, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !767, !155, !220}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !750, file: !63, line: 62, baseType: !138, size: 64, align: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !750, file: !63, line: 63, baseType: !94, size: 32, align: 32, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !750, file: !63, line: 64, baseType: !94, size: 32, align: 32, offset: 544)
!856 = !DILocalVariable(name: "server", arg: 1, scope: !745, file: !738, line: 40, type: !86)
!857 = !DIExpression()
!858 = !DILocation(line: 40, column: 53, scope: !745)
!859 = !DILocalVariable(name: "config", arg: 2, scope: !745, file: !738, line: 40, type: !748)
!860 = !DILocation(line: 40, column: 73, scope: !745)
!861 = !DILocalVariable(name: "node", arg: 3, scope: !745, file: !738, line: 41, type: !757)
!862 = !DILocation(line: 41, column: 22, scope: !745)
!863 = !DILocalVariable(name: "tmp", scope: !745, file: !738, line: 43, type: !261)
!864 = !DILocation(line: 43, column: 17, scope: !745)
!865 = !DILocalVariable(name: "isupport", scope: !745, file: !738, line: 44, type: !757)
!866 = !DILocation(line: 44, column: 15, scope: !745)
!867 = !DILocalVariable(name: "isupport_data", scope: !745, file: !738, line: 45, type: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_isupport_data", file: !738, line: 33, size: 128, align: 64, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !868, file: !738, line: 33, baseType: !748, size: 64, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !868, file: !738, line: 33, baseType: !757, size: 64, align: 64, offset: 64)
!872 = !DILocation(line: 45, column: 24, scope: !745)
!873 = !DILocation(line: 47, column: 87, scope: !874)
!874 = distinct !DILexicalBlock(scope: !745, file: !738, line: 47, column: 6)
!875 = !DILocation(line: 47, column: 69, scope: !874)
!876 = !DILocation(line: 47, column: 54, scope: !874)
!877 = !DILocation(line: 47, column: 53, scope: !874)
!878 = !DILocation(line: 47, column: 28, scope: !879)
!879 = !DILexicalBlockFile(scope: !874, file: !738, discriminator: 3)
!880 = !DILocation(line: 47, column: 9, scope: !874)
!881 = !DILocation(line: 47, column: 6, scope: !745)
!882 = !DILocation(line: 47, column: 8, scope: !883)
!883 = !DILexicalBlockFile(scope: !874, file: !738, discriminator: 1)
!884 = !DILocation(line: 47, column: 6, scope: !885)
!885 = !DILexicalBlockFile(scope: !745, file: !738, discriminator: 2)
!886 = !DILocation(line: 48, column: 3, scope: !874)
!887 = !DILocation(line: 51, column: 13, scope: !888)
!888 = distinct !DILexicalBlock(scope: !745, file: !738, line: 51, column: 2)
!889 = !DILocation(line: 51, column: 21, scope: !888)
!890 = !DILocation(line: 51, column: 11, scope: !888)
!891 = !DILocation(line: 51, column: 7, scope: !888)
!892 = !DILocation(line: 51, column: 31, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !738, discriminator: 1)
!894 = distinct !DILexicalBlock(scope: !888, file: !738, line: 51, column: 2)
!895 = !DILocation(line: 51, column: 35, scope: !893)
!896 = !DILocation(line: 51, column: 2, scope: !893)
!897 = !DILocalVariable(name: "cmd", scope: !898, file: !738, line: 52, type: !500)
!898 = distinct !DILexicalBlock(scope: !894, file: !738, line: 51, column: 66)
!899 = !DILocation(line: 52, column: 15, scope: !898)
!900 = !DILocation(line: 52, column: 21, scope: !898)
!901 = !DILocation(line: 52, column: 26, scope: !898)
!902 = !DILocalVariable(name: "redirect", scope: !898, file: !738, line: 53, type: !85)
!903 = !DILocation(line: 53, column: 23, scope: !898)
!904 = !DILocation(line: 53, column: 34, scope: !898)
!905 = !DILocation(line: 53, column: 39, scope: !898)
!906 = !DILocation(line: 53, column: 45, scope: !898)
!907 = !DILocation(line: 55, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !898, file: !738, line: 55, column: 7)
!909 = !DILocation(line: 55, column: 16, scope: !908)
!910 = !DILocation(line: 55, column: 7, scope: !898)
!911 = !DILocation(line: 56, column: 28, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !738, line: 56, column: 8)
!913 = distinct !DILexicalBlock(scope: !908, file: !738, line: 55, column: 24)
!914 = !DILocation(line: 56, column: 36, scope: !912)
!915 = !DILocation(line: 56, column: 44, scope: !912)
!916 = !DILocation(line: 57, column: 14, scope: !912)
!917 = !DILocation(line: 57, column: 7, scope: !912)
!918 = !DILocation(line: 56, column: 8, scope: !912)
!919 = !DILocation(line: 57, column: 20, scope: !912)
!920 = !DILocation(line: 56, column: 8, scope: !913)
!921 = !DILocation(line: 58, column: 5, scope: !912)
!922 = !DILocation(line: 59, column: 3, scope: !913)
!923 = !DILocation(line: 60, column: 2, scope: !898)
!924 = !DILocation(line: 51, column: 49, scope: !925)
!925 = !DILexicalBlockFile(scope: !894, file: !738, discriminator: 2)
!926 = !DILocation(line: 51, column: 54, scope: !925)
!927 = !DILocation(line: 51, column: 60, scope: !925)
!928 = !DILocation(line: 51, column: 47, scope: !925)
!929 = !DILocation(line: 51, column: 2, scope: !925)
!930 = distinct !{!930, !931}
!931 = !DILocation(line: 51, column: 2, scope: !745)
!932 = !DILocation(line: 61, column: 30, scope: !745)
!933 = !DILocation(line: 61, column: 38, scope: !745)
!934 = !DILocation(line: 61, column: 9, scope: !745)
!935 = !DILocation(line: 63, column: 22, scope: !745)
!936 = !DILocation(line: 63, column: 30, scope: !745)
!937 = !DILocation(line: 63, column: 52, scope: !745)
!938 = !DILocation(line: 63, column: 60, scope: !745)
!939 = !DILocation(line: 63, column: 2, scope: !745)
!940 = !DILocation(line: 64, column: 22, scope: !745)
!941 = !DILocation(line: 64, column: 30, scope: !745)
!942 = !DILocation(line: 64, column: 48, scope: !745)
!943 = !DILocation(line: 64, column: 56, scope: !745)
!944 = !DILocation(line: 64, column: 2, scope: !745)
!945 = !DILocation(line: 65, column: 22, scope: !745)
!946 = !DILocation(line: 65, column: 30, scope: !745)
!947 = !DILocation(line: 65, column: 48, scope: !745)
!948 = !DILocation(line: 65, column: 56, scope: !745)
!949 = !DILocation(line: 65, column: 2, scope: !745)
!950 = !DILocation(line: 66, column: 23, scope: !745)
!951 = !DILocation(line: 66, column: 31, scope: !745)
!952 = !DILocation(line: 66, column: 54, scope: !745)
!953 = !DILocation(line: 66, column: 62, scope: !745)
!954 = !DILocation(line: 66, column: 2, scope: !745)
!955 = !DILocation(line: 67, column: 22, scope: !745)
!956 = !DILocation(line: 67, column: 30, scope: !745)
!957 = !DILocation(line: 67, column: 51, scope: !745)
!958 = !DILocation(line: 67, column: 59, scope: !745)
!959 = !DILocation(line: 67, column: 2, scope: !745)
!960 = !DILocation(line: 68, column: 23, scope: !745)
!961 = !DILocation(line: 68, column: 31, scope: !745)
!962 = !DILocation(line: 68, column: 52, scope: !745)
!963 = !DILocation(line: 68, column: 60, scope: !745)
!964 = !DILocation(line: 68, column: 2, scope: !745)
!965 = !DILocation(line: 70, column: 22, scope: !745)
!966 = !DILocation(line: 70, column: 30, scope: !745)
!967 = !DILocation(line: 70, column: 54, scope: !745)
!968 = !DILocation(line: 70, column: 62, scope: !745)
!969 = !DILocation(line: 70, column: 71, scope: !745)
!970 = !DILocation(line: 70, column: 2, scope: !745)
!971 = !DILocation(line: 71, column: 22, scope: !745)
!972 = !DILocation(line: 71, column: 30, scope: !745)
!973 = !DILocation(line: 71, column: 53, scope: !745)
!974 = !DILocation(line: 71, column: 61, scope: !745)
!975 = !DILocation(line: 71, column: 70, scope: !745)
!976 = !DILocation(line: 71, column: 2, scope: !745)
!977 = !DILocation(line: 72, column: 22, scope: !745)
!978 = !DILocation(line: 72, column: 30, scope: !745)
!979 = !DILocation(line: 72, column: 53, scope: !745)
!980 = !DILocation(line: 72, column: 61, scope: !745)
!981 = !DILocation(line: 72, column: 70, scope: !745)
!982 = !DILocation(line: 72, column: 2, scope: !745)
!983 = !DILocation(line: 74, column: 23, scope: !745)
!984 = !DILocation(line: 74, column: 31, scope: !745)
!985 = !DILocation(line: 74, column: 54, scope: !745)
!986 = !DILocation(line: 74, column: 62, scope: !745)
!987 = !DILocation(line: 74, column: 2, scope: !745)
!988 = !DILocation(line: 75, column: 33, scope: !745)
!989 = !DILocation(line: 75, column: 41, scope: !745)
!990 = !DILocation(line: 75, column: 13, scope: !745)
!991 = !DILocation(line: 75, column: 11, scope: !745)
!992 = !DILocation(line: 76, column: 32, scope: !745)
!993 = !DILocation(line: 76, column: 23, scope: !745)
!994 = !DILocation(line: 76, column: 30, scope: !745)
!995 = !DILocation(line: 77, column: 30, scope: !745)
!996 = !DILocation(line: 77, column: 23, scope: !745)
!997 = !DILocation(line: 77, column: 28, scope: !745)
!998 = !DILocation(line: 79, column: 30, scope: !745)
!999 = !DILocation(line: 79, column: 38, scope: !745)
!1000 = !DILocation(line: 79, column: 83, scope: !745)
!1001 = !DILocation(line: 79, column: 9, scope: !745)
!1002 = !DILocation(line: 80, column: 1, scope: !745)
!1003 = !DILocation(line: 80, column: 1, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !745, file: !738, discriminator: 1)
!1005 = distinct !DISubprogram(name: "sig_session_restore_server", scope: !738, file: !738, line: 82, type: !1006, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !86, !757}
!1008 = !DILocalVariable(name: "server", arg: 1, scope: !1005, file: !738, line: 82, type: !86)
!1009 = !DILocation(line: 82, column: 56, scope: !1005)
!1010 = !DILocalVariable(name: "node", arg: 2, scope: !1005, file: !738, line: 83, type: !757)
!1011 = !DILocation(line: 83, column: 25, scope: !1005)
!1012 = !DILocalVariable(name: "tmp", scope: !1005, file: !738, line: 85, type: !261)
!1013 = !DILocation(line: 85, column: 10, scope: !1005)
!1014 = !DILocation(line: 87, column: 87, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !738, line: 87, column: 6)
!1016 = !DILocation(line: 87, column: 69, scope: !1015)
!1017 = !DILocation(line: 87, column: 54, scope: !1015)
!1018 = !DILocation(line: 87, column: 53, scope: !1015)
!1019 = !DILocation(line: 87, column: 28, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1015, file: !738, discriminator: 3)
!1021 = !DILocation(line: 87, column: 9, scope: !1015)
!1022 = !DILocation(line: 87, column: 6, scope: !1005)
!1023 = !DILocation(line: 87, column: 8, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1015, file: !738, discriminator: 1)
!1025 = !DILocation(line: 87, column: 6, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1005, file: !738, discriminator: 2)
!1027 = !DILocation(line: 88, column: 3, scope: !1015)
!1028 = !DILocation(line: 90, column: 13, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1005, file: !738, line: 90, column: 13)
!1030 = !DILocation(line: 90, column: 21, scope: !1029)
!1031 = !DILocation(line: 90, column: 34, scope: !1029)
!1032 = !DILocation(line: 90, column: 13, scope: !1005)
!1033 = !DILocation(line: 91, column: 55, scope: !1029)
!1034 = !DILocation(line: 91, column: 35, scope: !1029)
!1035 = !DILocation(line: 91, column: 26, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1029, file: !738, discriminator: 1)
!1037 = !DILocation(line: 91, column: 3, scope: !1029)
!1038 = !DILocation(line: 91, column: 11, scope: !1029)
!1039 = !DILocation(line: 91, column: 24, scope: !1029)
!1040 = !DILocation(line: 92, column: 50, scope: !1005)
!1041 = !DILocation(line: 92, column: 30, scope: !1005)
!1042 = !DILocation(line: 92, column: 21, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1005, file: !738, discriminator: 1)
!1044 = !DILocation(line: 92, column: 2, scope: !1005)
!1045 = !DILocation(line: 92, column: 10, scope: !1005)
!1046 = !DILocation(line: 92, column: 19, scope: !1005)
!1047 = !DILocation(line: 93, column: 50, scope: !1005)
!1048 = !DILocation(line: 93, column: 30, scope: !1005)
!1049 = !DILocation(line: 93, column: 21, scope: !1043)
!1050 = !DILocation(line: 93, column: 2, scope: !1005)
!1051 = !DILocation(line: 93, column: 10, scope: !1005)
!1052 = !DILocation(line: 93, column: 19, scope: !1005)
!1053 = !DILocation(line: 94, column: 47, scope: !1005)
!1054 = !DILocation(line: 94, column: 26, scope: !1005)
!1055 = !DILocation(line: 94, column: 2, scope: !1005)
!1056 = !DILocation(line: 94, column: 10, scope: !1005)
!1057 = !DILocation(line: 94, column: 24, scope: !1005)
!1058 = !DILocation(line: 95, column: 53, scope: !1005)
!1059 = !DILocation(line: 95, column: 33, scope: !1005)
!1060 = !DILocation(line: 95, column: 24, scope: !1043)
!1061 = !DILocation(line: 95, column: 2, scope: !1005)
!1062 = !DILocation(line: 95, column: 10, scope: !1005)
!1063 = !DILocation(line: 95, column: 22, scope: !1005)
!1064 = !DILocation(line: 96, column: 45, scope: !1005)
!1065 = !DILocation(line: 96, column: 24, scope: !1005)
!1066 = !DILocation(line: 96, column: 2, scope: !1005)
!1067 = !DILocation(line: 96, column: 10, scope: !1005)
!1068 = !DILocation(line: 96, column: 22, scope: !1005)
!1069 = !DILocation(line: 97, column: 47, scope: !1005)
!1070 = !DILocation(line: 97, column: 26, scope: !1005)
!1071 = !DILocation(line: 97, column: 2, scope: !1005)
!1072 = !DILocation(line: 97, column: 10, scope: !1005)
!1073 = !DILocation(line: 97, column: 24, scope: !1005)
!1074 = !DILocation(line: 99, column: 56, scope: !1005)
!1075 = !DILocation(line: 99, column: 36, scope: !1005)
!1076 = !DILocation(line: 99, column: 2, scope: !1005)
!1077 = !DILocation(line: 99, column: 10, scope: !1005)
!1078 = !DILocation(line: 99, column: 19, scope: !1005)
!1079 = !DILocation(line: 99, column: 34, scope: !1005)
!1080 = !DILocation(line: 103, column: 9, scope: !1005)
!1081 = !DILocation(line: 103, column: 17, scope: !1005)
!1082 = !DILocation(line: 103, column: 26, scope: !1005)
!1083 = !DILocation(line: 103, column: 2, scope: !1005)
!1084 = !DILocation(line: 104, column: 64, scope: !1005)
!1085 = !DILocation(line: 104, column: 44, scope: !1005)
!1086 = !DILocation(line: 104, column: 35, scope: !1043)
!1087 = !DILocation(line: 104, column: 2, scope: !1005)
!1088 = !DILocation(line: 104, column: 10, scope: !1005)
!1089 = !DILocation(line: 104, column: 19, scope: !1005)
!1090 = !DILocation(line: 104, column: 33, scope: !1005)
!1091 = !DILocation(line: 105, column: 9, scope: !1005)
!1092 = !DILocation(line: 105, column: 17, scope: !1005)
!1093 = !DILocation(line: 105, column: 26, scope: !1005)
!1094 = !DILocation(line: 105, column: 2, scope: !1005)
!1095 = !DILocation(line: 106, column: 64, scope: !1005)
!1096 = !DILocation(line: 106, column: 44, scope: !1005)
!1097 = !DILocation(line: 106, column: 35, scope: !1043)
!1098 = !DILocation(line: 106, column: 2, scope: !1005)
!1099 = !DILocation(line: 106, column: 10, scope: !1005)
!1100 = !DILocation(line: 106, column: 19, scope: !1005)
!1101 = !DILocation(line: 106, column: 33, scope: !1005)
!1102 = !DILocation(line: 108, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1005, file: !738, line: 108, column: 6)
!1104 = !DILocation(line: 108, column: 14, scope: !1103)
!1105 = !DILocation(line: 108, column: 23, scope: !1103)
!1106 = !DILocation(line: 108, column: 6, scope: !1005)
!1107 = !DILocation(line: 109, column: 22, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !738, line: 108, column: 31)
!1109 = !DILocation(line: 109, column: 3, scope: !1108)
!1110 = !DILocation(line: 109, column: 11, scope: !1108)
!1111 = !DILocation(line: 109, column: 20, scope: !1108)
!1112 = !DILocation(line: 111, column: 2, scope: !1108)
!1113 = !DILocation(line: 113, column: 34, scope: !1005)
!1114 = !DILocation(line: 113, column: 9, scope: !1005)
!1115 = !DILocation(line: 113, column: 7, scope: !1005)
!1116 = !DILocation(line: 114, column: 8, scope: !1005)
!1117 = !DILocation(line: 114, column: 13, scope: !1005)
!1118 = !DILocation(line: 114, column: 8, scope: !1043)
!1119 = !DILocation(line: 114, column: 47, scope: !1026)
!1120 = !DILocation(line: 114, column: 53, scope: !1026)
!1121 = !DILocation(line: 114, column: 29, scope: !1026)
!1122 = !DILocation(line: 114, column: 8, scope: !1026)
!1123 = !DILocation(line: 114, column: 8, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1005, file: !738, discriminator: 3)
!1125 = !DILocation(line: 114, column: 6, scope: !1124)
!1126 = !DILocation(line: 116, column: 2, scope: !1005)
!1127 = !DILocation(line: 116, column: 9, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1129, file: !738, discriminator: 1)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !738, line: 116, column: 2)
!1130 = distinct !DILexicalBlock(scope: !1005, file: !738, line: 116, column: 2)
!1131 = !DILocation(line: 116, column: 13, scope: !1128)
!1132 = !DILocation(line: 116, column: 2, scope: !1128)
!1133 = !DILocation(line: 117, column: 10, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !738, line: 116, column: 50)
!1135 = !DILocation(line: 117, column: 15, scope: !1134)
!1136 = !DILocation(line: 117, column: 8, scope: !1134)
!1137 = !DILocation(line: 118, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !738, line: 118, column: 7)
!1139 = !DILocation(line: 118, column: 12, scope: !1138)
!1140 = !DILocation(line: 118, column: 7, scope: !1134)
!1141 = !DILocation(line: 119, column: 4, scope: !1138)
!1142 = !DILocation(line: 121, column: 23, scope: !1134)
!1143 = !DILocation(line: 121, column: 31, scope: !1134)
!1144 = !DILocation(line: 121, column: 50, scope: !1134)
!1145 = !DILocation(line: 121, column: 56, scope: !1134)
!1146 = !DILocation(line: 121, column: 41, scope: !1134)
!1147 = !DILocation(line: 122, column: 18, scope: !1134)
!1148 = !DILocation(line: 122, column: 24, scope: !1134)
!1149 = !DILocation(line: 122, column: 9, scope: !1134)
!1150 = !DILocation(line: 121, column: 3, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1134, file: !738, discriminator: 1)
!1152 = !DILocation(line: 123, column: 2, scope: !1134)
!1153 = !DILocation(line: 116, column: 44, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1129, file: !738, discriminator: 2)
!1155 = !DILocation(line: 116, column: 27, scope: !1154)
!1156 = !DILocation(line: 116, column: 25, scope: !1154)
!1157 = !DILocation(line: 116, column: 2, scope: !1154)
!1158 = distinct !{!1158, !1126}
!1159 = !DILocation(line: 124, column: 27, scope: !1005)
!1160 = !DILocation(line: 124, column: 2, scope: !1005)
!1161 = !DILocation(line: 126, column: 1, scope: !1005)
!1162 = !DILocation(line: 126, column: 1, scope: !1043)
!1163 = distinct !DISubprogram(name: "sig_session_restore_nick", scope: !738, file: !738, line: 128, type: !1164, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !675, !757}
!1166 = !DILocalVariable(name: "channel", arg: 1, scope: !1163, file: !738, line: 128, type: !675)
!1167 = !DILocation(line: 128, column: 55, scope: !1163)
!1168 = !DILocalVariable(name: "node", arg: 2, scope: !1163, file: !738, line: 129, type: !757)
!1169 = !DILocation(line: 129, column: 23, scope: !1163)
!1170 = !DILocalVariable(name: "nick", scope: !1163, file: !738, line: 131, type: !500)
!1171 = !DILocation(line: 131, column: 14, scope: !1163)
!1172 = !DILocalVariable(name: "prefixes", scope: !1163, file: !738, line: 131, type: !500)
!1173 = !DILocation(line: 131, column: 21, scope: !1163)
!1174 = !DILocalVariable(name: "op", scope: !1163, file: !738, line: 132, type: !94)
!1175 = !DILocation(line: 132, column: 13, scope: !1163)
!1176 = !DILocalVariable(name: "halfop", scope: !1163, file: !738, line: 132, type: !94)
!1177 = !DILocation(line: 132, column: 17, scope: !1163)
!1178 = !DILocalVariable(name: "voice", scope: !1163, file: !738, line: 132, type: !94)
!1179 = !DILocation(line: 132, column: 25, scope: !1163)
!1180 = !DILocalVariable(name: "newprefixes", scope: !1163, file: !738, line: 133, type: !572)
!1181 = !DILocation(line: 133, column: 7, scope: !1163)
!1182 = !DILocalVariable(name: "i", scope: !1163, file: !738, line: 134, type: !94)
!1183 = !DILocation(line: 134, column: 6, scope: !1163)
!1184 = !DILocation(line: 136, column: 96, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !738, line: 136, column: 6)
!1186 = !DILocation(line: 136, column: 71, scope: !1185)
!1187 = !DILocation(line: 136, column: 55, scope: !1185)
!1188 = !DILocation(line: 136, column: 54, scope: !1185)
!1189 = !DILocation(line: 136, column: 29, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1185, file: !738, discriminator: 3)
!1191 = !DILocation(line: 136, column: 9, scope: !1185)
!1192 = !DILocation(line: 136, column: 6, scope: !1163)
!1193 = !DILocation(line: 136, column: 8, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1185, file: !738, discriminator: 1)
!1195 = !DILocation(line: 136, column: 6, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1163, file: !738, discriminator: 2)
!1197 = !DILocation(line: 137, column: 3, scope: !1185)
!1198 = !DILocation(line: 139, column: 29, scope: !1163)
!1199 = !DILocation(line: 139, column: 9, scope: !1163)
!1200 = !DILocation(line: 139, column: 7, scope: !1163)
!1201 = !DILocation(line: 140, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1163, file: !738, line: 140, column: 6)
!1203 = !DILocation(line: 140, column: 11, scope: !1202)
!1204 = !DILocation(line: 140, column: 6, scope: !1163)
!1205 = !DILocation(line: 141, column: 17, scope: !1202)
!1206 = !DILocation(line: 143, column: 28, scope: !1163)
!1207 = !DILocation(line: 143, column: 7, scope: !1163)
!1208 = !DILocation(line: 143, column: 5, scope: !1163)
!1209 = !DILocation(line: 144, column: 38, scope: !1163)
!1210 = !DILocation(line: 144, column: 17, scope: !1163)
!1211 = !DILocation(line: 144, column: 15, scope: !1163)
!1212 = !DILocation(line: 145, column: 39, scope: !1163)
!1213 = !DILocation(line: 145, column: 18, scope: !1163)
!1214 = !DILocation(line: 145, column: 16, scope: !1163)
!1215 = !DILocation(line: 146, column: 33, scope: !1163)
!1216 = !DILocation(line: 146, column: 13, scope: !1163)
!1217 = !DILocation(line: 146, column: 11, scope: !1163)
!1218 = !DILocation(line: 147, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1163, file: !738, line: 147, column: 6)
!1220 = !DILocation(line: 147, column: 15, scope: !1219)
!1221 = !DILocation(line: 147, column: 22, scope: !1219)
!1222 = !DILocation(line: 147, column: 26, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1219, file: !738, discriminator: 1)
!1224 = !DILocation(line: 147, column: 25, scope: !1223)
!1225 = !DILocation(line: 147, column: 35, scope: !1223)
!1226 = !DILocation(line: 147, column: 6, scope: !1223)
!1227 = !DILocation(line: 152, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1219, file: !738, line: 147, column: 44)
!1229 = !DILocation(line: 153, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !738, line: 153, column: 7)
!1231 = !DILocation(line: 153, column: 7, scope: !1228)
!1232 = !DILocation(line: 154, column: 17, scope: !1230)
!1233 = !DILocation(line: 154, column: 4, scope: !1230)
!1234 = !DILocation(line: 154, column: 21, scope: !1230)
!1235 = !DILocation(line: 155, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !738, line: 155, column: 7)
!1237 = !DILocation(line: 155, column: 7, scope: !1228)
!1238 = !DILocation(line: 156, column: 17, scope: !1236)
!1239 = !DILocation(line: 156, column: 4, scope: !1236)
!1240 = !DILocation(line: 156, column: 21, scope: !1236)
!1241 = !DILocation(line: 157, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1228, file: !738, line: 157, column: 7)
!1243 = !DILocation(line: 157, column: 7, scope: !1228)
!1244 = !DILocation(line: 158, column: 17, scope: !1242)
!1245 = !DILocation(line: 158, column: 4, scope: !1242)
!1246 = !DILocation(line: 158, column: 21, scope: !1242)
!1247 = !DILocation(line: 159, column: 15, scope: !1228)
!1248 = !DILocation(line: 159, column: 3, scope: !1228)
!1249 = !DILocation(line: 159, column: 18, scope: !1228)
!1250 = !DILocation(line: 160, column: 14, scope: !1228)
!1251 = !DILocation(line: 160, column: 12, scope: !1228)
!1252 = !DILocation(line: 161, column: 2, scope: !1228)
!1253 = !DILocation(line: 162, column: 22, scope: !1163)
!1254 = !DILocation(line: 162, column: 31, scope: !1163)
!1255 = !DILocation(line: 162, column: 37, scope: !1163)
!1256 = !DILocation(line: 162, column: 41, scope: !1163)
!1257 = !DILocation(line: 162, column: 49, scope: !1163)
!1258 = !DILocation(line: 162, column: 61, scope: !1163)
!1259 = !DILocation(line: 162, column: 2, scope: !1163)
!1260 = !DILocation(line: 163, column: 1, scope: !1163)
!1261 = !DILocation(line: 163, column: 1, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1163, file: !738, discriminator: 1)
!1263 = distinct !DISubprogram(name: "sig_connected", scope: !738, file: !738, line: 177, type: !1264, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !86}
!1266 = !DILocalVariable(name: "server", arg: 1, scope: !1263, file: !738, line: 177, type: !86)
!1267 = !DILocation(line: 177, column: 43, scope: !1263)
!1268 = !DILocalVariable(name: "tmp", scope: !1263, file: !738, line: 179, type: !261)
!1269 = !DILocation(line: 179, column: 10, scope: !1263)
!1270 = !DILocalVariable(name: "str", scope: !1263, file: !738, line: 180, type: !107)
!1271 = !DILocation(line: 180, column: 15, scope: !1263)
!1272 = !DILocalVariable(name: "addr", scope: !1263, file: !738, line: 180, type: !107)
!1273 = !DILocation(line: 180, column: 21, scope: !1263)
!1274 = !DILocation(line: 182, column: 87, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1263, file: !738, line: 182, column: 6)
!1276 = !DILocation(line: 182, column: 69, scope: !1275)
!1277 = !DILocation(line: 182, column: 54, scope: !1275)
!1278 = !DILocation(line: 182, column: 53, scope: !1275)
!1279 = !DILocation(line: 182, column: 28, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1275, file: !738, discriminator: 4)
!1281 = !DILocation(line: 182, column: 9, scope: !1275)
!1282 = !DILocation(line: 182, column: 32, scope: !1275)
!1283 = !DILocation(line: 182, column: 8, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1275, file: !738, discriminator: 1)
!1285 = !DILocation(line: 182, column: 32, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1275, file: !738, discriminator: 2)
!1287 = !DILocation(line: 182, column: 36, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1275, file: !738, discriminator: 3)
!1289 = !DILocation(line: 182, column: 44, scope: !1288)
!1290 = !DILocation(line: 182, column: 6, scope: !1288)
!1291 = !DILocation(line: 183, column: 3, scope: !1275)
!1292 = !DILocation(line: 186, column: 10, scope: !1263)
!1293 = !DILocation(line: 186, column: 18, scope: !1263)
!1294 = !DILocation(line: 186, column: 24, scope: !1263)
!1295 = !DILocation(line: 186, column: 32, scope: !1263)
!1296 = !DILocation(line: 186, column: 41, scope: !1263)
!1297 = !DILocation(line: 185, column: 8, scope: !1263)
!1298 = !DILocation(line: 185, column: 6, scope: !1263)
!1299 = !DILocation(line: 190, column: 18, scope: !1263)
!1300 = !DILocation(line: 190, column: 26, scope: !1263)
!1301 = !DILocation(line: 190, column: 9, scope: !1263)
!1302 = !DILocation(line: 190, column: 7, scope: !1263)
!1303 = !DILocation(line: 191, column: 30, scope: !1263)
!1304 = !DILocation(line: 191, column: 38, scope: !1263)
!1305 = !DILocation(line: 191, column: 43, scope: !1263)
!1306 = !DILocation(line: 191, column: 2, scope: !1263)
!1307 = !DILocation(line: 192, column: 16, scope: !1263)
!1308 = !DILocation(line: 192, column: 9, scope: !1263)
!1309 = !DILocation(line: 193, column: 16, scope: !1263)
!1310 = !DILocation(line: 193, column: 9, scope: !1263)
!1311 = !DILocation(line: 195, column: 13, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1263, file: !738, line: 195, column: 2)
!1313 = !DILocation(line: 195, column: 21, scope: !1312)
!1314 = !DILocation(line: 195, column: 11, scope: !1312)
!1315 = !DILocation(line: 195, column: 7, scope: !1312)
!1316 = !DILocation(line: 195, column: 31, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1318, file: !738, discriminator: 1)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !738, line: 195, column: 2)
!1319 = !DILocation(line: 195, column: 35, scope: !1317)
!1320 = !DILocation(line: 195, column: 2, scope: !1317)
!1321 = !DILocalVariable(name: "rec", scope: !1322, file: !738, line: 196, type: !675)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !738, line: 195, column: 60)
!1323 = !DILocation(line: 196, column: 20, scope: !1322)
!1324 = !DILocation(line: 196, column: 26, scope: !1322)
!1325 = !DILocation(line: 196, column: 31, scope: !1322)
!1326 = !DILocation(line: 198, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !738, line: 198, column: 7)
!1328 = !DILocation(line: 198, column: 12, scope: !1327)
!1329 = !DILocation(line: 198, column: 7, scope: !1322)
!1330 = !DILocation(line: 199, column: 49, scope: !1327)
!1331 = !DILocation(line: 199, column: 25, scope: !1327)
!1332 = !DILocation(line: 200, column: 2, scope: !1322)
!1333 = !DILocation(line: 195, column: 49, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1318, file: !738, discriminator: 2)
!1335 = !DILocation(line: 195, column: 54, scope: !1334)
!1336 = !DILocation(line: 195, column: 47, scope: !1334)
!1337 = !DILocation(line: 195, column: 2, scope: !1334)
!1338 = distinct !{!1338, !1339}
!1339 = !DILocation(line: 195, column: 2, scope: !1263)
!1340 = !DILocation(line: 201, column: 1, scope: !1263)
!1341 = distinct !DISubprogram(name: "irc_session_deinit", scope: !738, file: !738, line: 212, type: !249, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1342 = !DILocation(line: 214, column: 2, scope: !1341)
!1343 = !DILocation(line: 215, column: 2, scope: !1341)
!1344 = !DILocation(line: 216, column: 2, scope: !1341)
!1345 = !DILocation(line: 218, column: 2, scope: !1341)
!1346 = !DILocation(line: 219, column: 1, scope: !1341)
!1347 = distinct !DISubprogram(name: "session_isupport_foreach", scope: !738, file: !738, line: 35, type: !1348, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !107, !107, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64, align: 64)
!1351 = !DILocalVariable(name: "key", arg: 1, scope: !1347, file: !738, line: 35, type: !107)
!1352 = !DILocation(line: 35, column: 44, scope: !1347)
!1353 = !DILocalVariable(name: "value", arg: 2, scope: !1347, file: !738, line: 35, type: !107)
!1354 = !DILocation(line: 35, column: 55, scope: !1347)
!1355 = !DILocalVariable(name: "data", arg: 3, scope: !1347, file: !738, line: 35, type: !1350)
!1356 = !DILocation(line: 35, column: 85, scope: !1347)
!1357 = !DILocation(line: 37, column: 29, scope: !1347)
!1358 = !DILocation(line: 37, column: 35, scope: !1347)
!1359 = !DILocation(line: 37, column: 43, scope: !1347)
!1360 = !DILocation(line: 37, column: 49, scope: !1347)
!1361 = !DILocation(line: 37, column: 55, scope: !1347)
!1362 = !DILocation(line: 37, column: 60, scope: !1347)
!1363 = !DILocation(line: 37, column: 9, scope: !1347)
!1364 = !DILocation(line: 38, column: 1, scope: !1347)
!1365 = distinct !DISubprogram(name: "session_restore_channel", scope: !738, file: !738, line: 165, type: !1366, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !739)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !675}
!1368 = !DILocalVariable(name: "channel", arg: 1, scope: !1365, file: !738, line: 165, type: !675)
!1369 = !DILocation(line: 165, column: 54, scope: !1365)
!1370 = !DILocalVariable(name: "data", scope: !1365, file: !738, line: 167, type: !107)
!1371 = !DILocation(line: 167, column: 8, scope: !1365)
!1372 = !DILocation(line: 169, column: 31, scope: !1365)
!1373 = !DILocation(line: 169, column: 40, scope: !1365)
!1374 = !DILocation(line: 169, column: 48, scope: !1365)
!1375 = !DILocation(line: 169, column: 57, scope: !1365)
!1376 = !DILocation(line: 170, column: 7, scope: !1365)
!1377 = !DILocation(line: 170, column: 16, scope: !1365)
!1378 = !DILocation(line: 170, column: 24, scope: !1365)
!1379 = !DILocation(line: 170, column: 30, scope: !1365)
!1380 = !DILocation(line: 170, column: 39, scope: !1365)
!1381 = !DILocation(line: 170, column: 47, scope: !1365)
!1382 = !DILocation(line: 169, column: 2, scope: !1365)
!1383 = !DILocation(line: 172, column: 21, scope: !1365)
!1384 = !DILocation(line: 172, column: 30, scope: !1365)
!1385 = !DILocation(line: 172, column: 38, scope: !1365)
!1386 = !DILocation(line: 172, column: 49, scope: !1365)
!1387 = !DILocation(line: 172, column: 58, scope: !1365)
!1388 = !DILocation(line: 172, column: 9, scope: !1365)
!1389 = !DILocation(line: 172, column: 7, scope: !1365)
!1390 = !DILocation(line: 173, column: 30, scope: !1365)
!1391 = !DILocation(line: 173, column: 39, scope: !1365)
!1392 = !DILocation(line: 173, column: 47, scope: !1365)
!1393 = !DILocation(line: 173, column: 2, scope: !1365)
!1394 = !DILocation(line: 174, column: 9, scope: !1365)
!1395 = !DILocation(line: 174, column: 2, scope: !1365)
!1396 = !DILocation(line: 175, column: 1, scope: !1365)
