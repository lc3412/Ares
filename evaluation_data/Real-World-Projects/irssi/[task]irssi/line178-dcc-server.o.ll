; ModuleID = './line178-dcc-server.o.i'
source_filename = "./line178-dcc-server.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.SERVER_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, %struct._NET_SENDBUF_REC*, i8 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GHashTable = type opaque
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }
%struct.GET_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i32, i8*, i8 }

@__func__.dcc_server_find_port = private unnamed_addr constant [21 x i8] c"dcc_server_find_port\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"port_str != NULL\00", align 1
@dcc_conns = external global %struct._GSList*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dcc server\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dcc close\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"dcc server message\00", align 1
@__func__.cmd_dcc_server = private unnamed_addr constant [15 x i8] c"cmd_dcc_server\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"dcc server started\00", align 1
@__func__.dcc_server_update_flags = private unnamed_addr constant [24 x i8] c"dcc_server_update_flags\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"dcc != NULL\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"IS_DCC_SERVER(dcc)\00", align 1
@ip4_any = external global %struct._IPADDR, align 4
@__func__.dcc_init_server_rec = private unnamed_addr constant [20 x i8] c"dcc_init_server_rec\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"dcc created\00", align 1
@__func__.dcc_server_listen = private unnamed_addr constant [18 x i8] c"dcc_server_listen\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@__func__.dcc_server_clone = private unnamed_addr constant [17 x i8] c"dcc_server_clone\00", align 1
@__func__.dcc_server_input = private unnamed_addr constant [17 x i8] c"dcc_server_input\00", align 1
@__func__.cmd_dcc_close = private unnamed_addr constant [14 x i8] c"cmd_dcc_close\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SERVER \00", align 1
@__func__.dcc_server_msg = private unnamed_addr constant [15 x i8] c"dcc_server_msg\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"100 \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"101 %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"110 \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"120 \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1

; Function Attrs: nounwind uwtable
define %struct.SERVER_DCC_REC* @dcc_server_find_port(i8*) #0 !dbg !827 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SERVER_DCC_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !832, metadata !833), !dbg !834
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !835, metadata !833), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %5, metadata !837, metadata !833), !dbg !838
  store i32 0, i32* %5, align 4, !dbg !838
  br label %7, !dbg !839, !llvm.loop !840

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !841
  %9 = icmp ne i8* %8, null, !dbg !845
  br i1 %9, label %10, label %11, !dbg !841

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !846

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dcc_server_find_port, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)), !dbg !849
  store %struct.SERVER_DCC_REC* null, %struct.SERVER_DCC_REC** %2, align 8, !dbg !852
  br label %46, !dbg !852

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !853

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %3, align 8, !dbg !855
  %15 = call i32 @atoi(i8* %14) #6, !dbg !856
  store i32 %15, i32* %5, align 4, !dbg !857
  %16 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !858
  store %struct._GSList* %16, %struct._GSList** %4, align 8, !dbg !860
  br label %17, !dbg !861

; <label>:17:                                     ; preds = %41, %13
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !862
  %19 = icmp ne %struct._GSList* %18, null, !dbg !865
  br i1 %19, label %20, label %45, !dbg !866

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %6, metadata !867, metadata !833), !dbg !869
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !870
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !871
  %23 = load i8*, i8** %22, align 8, !dbg !871
  %24 = bitcast i8* %23 to %struct.SERVER_DCC_REC*, !dbg !870
  store %struct.SERVER_DCC_REC* %24, %struct.SERVER_DCC_REC** %6, align 8, !dbg !869
  %25 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %6, align 8, !dbg !872
  %26 = bitcast %struct.SERVER_DCC_REC* %25 to i8*, !dbg !872
  %27 = call i8* @module_check_cast_module(i8* %26, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !874
  %28 = bitcast i8* %27 to %struct.SERVER_DCC_REC*, !dbg !875
  %29 = icmp ne %struct.SERVER_DCC_REC* %28, null, !dbg !875
  br i1 %29, label %30, label %31, !dbg !876

; <label>:30:                                     ; preds = %20
  br i1 false, label %40, label %32, !dbg !877

; <label>:31:                                     ; preds = %20
  br i1 false, label %32, label %40, !dbg !879

; <label>:32:                                     ; preds = %31, %30
  %33 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %6, align 8, !dbg !881
  %34 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %33, i32 0, i32 12, !dbg !883
  %35 = load i32, i32* %34, align 4, !dbg !883
  %36 = load i32, i32* %5, align 4, !dbg !884
  %37 = icmp eq i32 %35, %36, !dbg !885
  br i1 %37, label %38, label %40, !dbg !886

; <label>:38:                                     ; preds = %32
  %39 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %6, align 8, !dbg !887
  store %struct.SERVER_DCC_REC* %39, %struct.SERVER_DCC_REC** %2, align 8, !dbg !888
  br label %46, !dbg !888

; <label>:40:                                     ; preds = %32, %31, %30
  br label %41, !dbg !889

; <label>:41:                                     ; preds = %40
  %42 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !890
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 1, !dbg !892
  %44 = load %struct._GSList*, %struct._GSList** %43, align 8, !dbg !892
  store %struct._GSList* %44, %struct._GSList** %4, align 8, !dbg !893
  br label %17, !dbg !894, !llvm.loop !895

; <label>:45:                                     ; preds = %17
  store %struct.SERVER_DCC_REC* null, %struct.SERVER_DCC_REC** %2, align 8, !dbg !897
  br label %46, !dbg !897

; <label>:46:                                     ; preds = %45, %38, %11
  %47 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !898
  ret %struct.SERVER_DCC_REC* %47, !dbg !898
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_server_init() #0 !dbg !899 {
  call void @dcc_register_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !900
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !901
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !902
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !903
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*, i8*)* @dcc_server_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !904
  ret void, !dbg !905
}

declare void @dcc_register_type(i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_server(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !906 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GIOChannel*, align 8
  %7 = alloca %struct.SERVER_DCC_REC*, align 8
  %8 = alloca %struct._IPADDR, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !909, metadata !833), !dbg !910
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !911, metadata !833), !dbg !912
  call void @llvm.dbg.declare(metadata i8** %5, metadata !913, metadata !833), !dbg !914
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %6, metadata !915, metadata !833), !dbg !916
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %7, metadata !917, metadata !833), !dbg !918
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %8, metadata !919, metadata !833), !dbg !920
  call void @llvm.dbg.declare(metadata i8** %9, metadata !921, metadata !833), !dbg !922
  call void @llvm.dbg.declare(metadata i8** %10, metadata !923, metadata !833), !dbg !924
  br label %11, !dbg !925, !llvm.loop !926

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !927
  %13 = icmp ne i8* %12, null, !dbg !931
  br i1 %13, label %14, label %15, !dbg !927

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !932

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cmd_dcc_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !935
  br label %95, !dbg !938

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !939

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %3, align 8, !dbg !941
  %19 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %18, i8** %5, i32 2, i8** %9, i8** %10), !dbg !943
  %20 = icmp ne i32 %19, 0, !dbg !943
  br i1 %20, label %22, label %21, !dbg !944

; <label>:21:                                     ; preds = %17
  br label %95, !dbg !945

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %10, align 8, !dbg !946
  %24 = call %struct.SERVER_DCC_REC* @dcc_server_find_port(i8* %23), !dbg !947
  store %struct.SERVER_DCC_REC* %24, %struct.SERVER_DCC_REC** %7, align 8, !dbg !948
  %25 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !949
  %26 = icmp ne %struct.SERVER_DCC_REC* %25, null, !dbg !951
  br i1 %26, label %27, label %31, !dbg !952

; <label>:27:                                     ; preds = %22
  %28 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !953
  %29 = load i8*, i8** %9, align 8, !dbg !955
  call void @dcc_server_update_flags(%struct.SERVER_DCC_REC* %28, i8* %29), !dbg !956
  %30 = load i8*, i8** %5, align 8, !dbg !957
  call void @cmd_params_free(i8* %30), !dbg !958
  br label %95, !dbg !959

; <label>:31:                                     ; preds = %22
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !960
  %33 = bitcast %struct._IRC_SERVER_REC* %32 to i8*, !dbg !960
  %34 = call i8* @module_check_cast(i8* %33, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !962
  %35 = bitcast i8* %34 to %struct._SERVER_REC*, !dbg !963
  %36 = bitcast %struct._SERVER_REC* %35 to i8*, !dbg !964
  %37 = call i8* @chat_protocol_check_cast(i8* %36, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !965
  %38 = bitcast i8* %37 to %struct._IRC_SERVER_REC*, !dbg !967
  %39 = icmp ne %struct._IRC_SERVER_REC* %38, null, !dbg !967
  br i1 %39, label %40, label %41, !dbg !968

; <label>:40:                                     ; preds = %31
  br i1 false, label %49, label %42, !dbg !969

; <label>:41:                                     ; preds = %31
  br i1 false, label %42, label %49, !dbg !971

; <label>:42:                                     ; preds = %41, %40
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !973
  %44 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %43, i32 0, i32 8, !dbg !975
  %45 = load i8, i8* %44, align 8, !dbg !975
  %46 = and i8 %45, 1, !dbg !975
  %47 = zext i8 %46 to i32, !dbg !975
  %48 = icmp ne i32 %47, 0, !dbg !973
  br i1 %48, label %56, label %49, !dbg !976

; <label>:49:                                     ; preds = %42, %41, %40
  br label %50, !dbg !977, !llvm.loop !979

; <label>:50:                                     ; preds = %49
  %51 = load i8*, i8** %5, align 8, !dbg !980
  call void @cmd_params_free(i8* %51), !dbg !983
  br label %52, !dbg !984, !llvm.loop !985

; <label>:52:                                     ; preds = %50
  %53 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !987
  call void @signal_stop(), !dbg !990
  br label %95, !dbg !992
                                                  ; No predecessors!
  br label %55, !dbg !993

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !995

; <label>:56:                                     ; preds = %55, %42
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !996
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 9, !dbg !997
  %59 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %58, align 8, !dbg !997
  %60 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %59), !dbg !998
  %61 = load i8*, i8** %10, align 8, !dbg !999
  %62 = call i32 @atoi(i8* %61) #6, !dbg !1000
  %63 = call %struct._GIOChannel* @dcc_listen_port(%struct._GIOChannel* %60, %struct._IPADDR* %8, i32 %62), !dbg !1001
  store %struct._GIOChannel* %63, %struct._GIOChannel** %6, align 8, !dbg !1003
  %64 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !1004
  %65 = icmp eq %struct._GIOChannel* %64, null, !dbg !1006
  br i1 %65, label %66, label %73, !dbg !1007

; <label>:66:                                     ; preds = %56
  br label %67, !dbg !1008, !llvm.loop !1010

; <label>:67:                                     ; preds = %66
  %68 = load i8*, i8** %5, align 8, !dbg !1011
  call void @cmd_params_free(i8* %68), !dbg !1014
  br label %69, !dbg !1015, !llvm.loop !1016

; <label>:69:                                     ; preds = %67
  %70 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !1018
  call void @signal_stop(), !dbg !1021
  br label %95, !dbg !1023
                                                  ; No predecessors!
  br label %72, !dbg !1024

; <label>:72:                                     ; preds = %71
  br label %73, !dbg !1026

; <label>:73:                                     ; preds = %72, %56
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1027
  %75 = load i8*, i8** %9, align 8, !dbg !1028
  %76 = call %struct.SERVER_DCC_REC* @dcc_server_create(%struct._IRC_SERVER_REC* %74, i8* %75), !dbg !1029
  store %struct.SERVER_DCC_REC* %76, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1030
  %77 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !1031
  %78 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1032
  %79 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %78, i32 0, i32 13, !dbg !1033
  store %struct._GIOChannel* %77, %struct._GIOChannel** %79, align 8, !dbg !1034
  %80 = load i8*, i8** %10, align 8, !dbg !1035
  %81 = call i32 @atoi(i8* %80) #6, !dbg !1036
  %82 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1037
  %83 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %82, i32 0, i32 12, !dbg !1038
  store i32 %81, i32* %83, align 4, !dbg !1039
  %84 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1040
  %85 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %84, i32 0, i32 13, !dbg !1041
  %86 = load %struct._GIOChannel*, %struct._GIOChannel** %85, align 8, !dbg !1041
  %87 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1042
  %88 = bitcast %struct.SERVER_DCC_REC* %87 to i8*, !dbg !1042
  %89 = call i32 @g_input_add(%struct._GIOChannel* %86, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_server_listen to void (i8*, %struct._GIOChannel*, i32)*), i8* %88), !dbg !1043
  %90 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1044
  %91 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %90, i32 0, i32 14, !dbg !1045
  store i32 %89, i32* %91, align 8, !dbg !1046
  %92 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %7, align 8, !dbg !1047
  %93 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.SERVER_DCC_REC* %92), !dbg !1048
  %94 = load i8*, i8** %5, align 8, !dbg !1049
  call void @cmd_params_free(i8* %94), !dbg !1050
  br label %95, !dbg !1051

; <label>:95:                                     ; preds = %73, %69, %52, %27, %21, %15
  ret void, !dbg !1052
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_close(i8*, %struct._SERVER_REC*) #0 !dbg !1053 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SERVER_DCC_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1056, metadata !833), !dbg !1057
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1058, metadata !833), !dbg !1059
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1060, metadata !833), !dbg !1061
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1062, metadata !833), !dbg !1063
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1064, metadata !833), !dbg !1065
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1066, metadata !833), !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1068, metadata !833), !dbg !1069
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1070, metadata !833), !dbg !1071
  br label %12, !dbg !1072, !llvm.loop !1073

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %3, align 8, !dbg !1074
  %14 = icmp ne i8* %13, null, !dbg !1078
  br i1 %14, label %15, label %16, !dbg !1074

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1079

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cmd_dcc_close, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !1082
  br label %79, !dbg !1085

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1086

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %3, align 8, !dbg !1088
  %20 = call i32 @g_ascii_strncasecmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 7), !dbg !1090
  %21 = icmp ne i32 %20, 0, !dbg !1091
  br i1 %21, label %26, label %22, !dbg !1092

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %3, align 8, !dbg !1093
  %24 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %23, i8** %8, i32 2, i8* null, i8** %7), !dbg !1094
  %25 = icmp ne i32 %24, 0, !dbg !1094
  br i1 %25, label %27, label %26, !dbg !1095

; <label>:26:                                     ; preds = %22, %18
  br label %79, !dbg !1097

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %7, align 8, !dbg !1099
  %29 = load i8, i8* %28, align 1, !dbg !1101
  %30 = sext i8 %29 to i32, !dbg !1101
  %31 = icmp eq i32 %30, 0, !dbg !1102
  br i1 %31, label %32, label %39, !dbg !1103

; <label>:32:                                     ; preds = %27
  br label %33, !dbg !1104, !llvm.loop !1106

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %8, align 8, !dbg !1107
  call void @cmd_params_free(i8* %34), !dbg !1110
  br label %35, !dbg !1111, !llvm.loop !1112

; <label>:35:                                     ; preds = %33
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1114
  call void @signal_stop(), !dbg !1117
  br label %79, !dbg !1119
                                                  ; No predecessors!
  br label %38, !dbg !1120

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1122

; <label>:39:                                     ; preds = %38, %27
  %40 = load i8*, i8** %7, align 8, !dbg !1123
  %41 = call i32 @atoi(i8* %40) #6, !dbg !1124
  store i32 %41, i32* %10, align 4, !dbg !1125
  store i32 0, i32* %9, align 4, !dbg !1126
  %42 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1127
  store %struct._GSList* %42, %struct._GSList** %5, align 8, !dbg !1129
  br label %43, !dbg !1130

; <label>:43:                                     ; preds = %71, %39
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1131
  %45 = icmp ne %struct._GSList* %44, null, !dbg !1134
  br i1 %45, label %46, label %73, !dbg !1135

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %11, metadata !1136, metadata !833), !dbg !1138
  %47 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1139
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 0, !dbg !1140
  %49 = load i8*, i8** %48, align 8, !dbg !1140
  %50 = bitcast i8* %49 to %struct.SERVER_DCC_REC*, !dbg !1139
  store %struct.SERVER_DCC_REC* %50, %struct.SERVER_DCC_REC** %11, align 8, !dbg !1138
  %51 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1141
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !1142
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1142
  store %struct._GSList* %53, %struct._GSList** %6, align 8, !dbg !1143
  %54 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %11, align 8, !dbg !1144
  %55 = bitcast %struct.SERVER_DCC_REC* %54 to i8*, !dbg !1144
  %56 = call i8* @module_check_cast_module(i8* %55, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1146
  %57 = bitcast i8* %56 to %struct.SERVER_DCC_REC*, !dbg !1147
  %58 = icmp ne %struct.SERVER_DCC_REC* %57, null, !dbg !1147
  br i1 %58, label %59, label %60, !dbg !1148

; <label>:59:                                     ; preds = %46
  br i1 false, label %70, label %61, !dbg !1149

; <label>:60:                                     ; preds = %46
  br i1 false, label %61, label %70, !dbg !1151

; <label>:61:                                     ; preds = %60, %59
  %62 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %11, align 8, !dbg !1153
  %63 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %62, i32 0, i32 12, !dbg !1155
  %64 = load i32, i32* %63, align 4, !dbg !1155
  %65 = load i32, i32* %10, align 4, !dbg !1156
  %66 = icmp eq i32 %64, %65, !dbg !1157
  br i1 %66, label %67, label %70, !dbg !1158

; <label>:67:                                     ; preds = %61
  store i32 1, i32* %9, align 4, !dbg !1159
  %68 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %11, align 8, !dbg !1161
  %69 = bitcast %struct.SERVER_DCC_REC* %68 to %struct.DCC_REC*, !dbg !1162
  call void @dcc_close(%struct.DCC_REC* %69), !dbg !1163
  br label %70, !dbg !1164

; <label>:70:                                     ; preds = %67, %61, %60, %59
  br label %71, !dbg !1165

; <label>:71:                                     ; preds = %70
  %72 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1166
  store %struct._GSList* %72, %struct._GSList** %5, align 8, !dbg !1168
  br label %43, !dbg !1169, !llvm.loop !1170

; <label>:73:                                     ; preds = %43
  %74 = load i32, i32* %9, align 4, !dbg !1172
  %75 = icmp ne i32 %74, 0, !dbg !1172
  br i1 %75, label %76, label %77, !dbg !1174

; <label>:76:                                     ; preds = %73
  call void @signal_stop(), !dbg !1175
  br label %77, !dbg !1177

; <label>:77:                                     ; preds = %76, %73
  %78 = load i8*, i8** %8, align 8, !dbg !1178
  call void @cmd_params_free(i8* %78), !dbg !1179
  br label %79, !dbg !1180

; <label>:79:                                     ; preds = %77, %35, %26, %16
  ret void, !dbg !1181
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.SERVER_DCC_REC*) #0 !dbg !1182 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !1185, metadata !833), !dbg !1186
  %3 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1187
  %4 = bitcast %struct.SERVER_DCC_REC* %3 to i8*, !dbg !1187
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1189
  %6 = bitcast i8* %5 to %struct.SERVER_DCC_REC*, !dbg !1190
  %7 = icmp ne %struct.SERVER_DCC_REC* %6, null, !dbg !1190
  br i1 %7, label %8, label %9, !dbg !1191

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !1192

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !1194

; <label>:10:                                     ; preds = %9, %8
  br label %20, !dbg !1196

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1197
  %13 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %12, i32 0, i32 22, !dbg !1199
  %14 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %13, align 8, !dbg !1199
  %15 = icmp ne %struct._NET_SENDBUF_REC* %14, null, !dbg !1200
  br i1 %15, label %16, label %20, !dbg !1201

; <label>:16:                                     ; preds = %11
  %17 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1202
  %18 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %17, i32 0, i32 22, !dbg !1203
  %19 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %18, align 8, !dbg !1203
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %19, i32 0), !dbg !1204
  br label %20, !dbg !1204

; <label>:20:                                     ; preds = %10, %16, %11
  ret void, !dbg !1205
}

; Function Attrs: nounwind uwtable
define internal void @dcc_server_msg(%struct.SERVER_DCC_REC*, i8*) #0 !dbg !1206 {
  %3 = alloca %struct.SERVER_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CHAT_DCC_REC*, align 8
  %7 = alloca %struct.GET_DCC_REC*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %3, metadata !1209, metadata !833), !dbg !1210
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1211, metadata !833), !dbg !1212
  br label %15, !dbg !1213, !llvm.loop !1214

; <label>:15:                                     ; preds = %2
  %16 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1215
  %17 = bitcast %struct.SERVER_DCC_REC* %16 to i8*, !dbg !1215
  %18 = call i8* @module_check_cast_module(i8* %17, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1219
  %19 = bitcast i8* %18 to %struct.SERVER_DCC_REC*, !dbg !1220
  %20 = icmp ne %struct.SERVER_DCC_REC* %19, null, !dbg !1220
  br i1 %20, label %21, label %22, !dbg !1221

; <label>:21:                                     ; preds = %15
  br i1 false, label %24, label %23, !dbg !1222

; <label>:22:                                     ; preds = %15
  br i1 false, label %23, label %24, !dbg !1224

; <label>:23:                                     ; preds = %22, %21
  br label %25, !dbg !1226

; <label>:24:                                     ; preds = %22, %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dcc_server_msg, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !1229
  br label %295, !dbg !1232

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1233

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !1235, !llvm.loop !1236

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %4, align 8, !dbg !1237
  %29 = icmp ne i8* %28, null, !dbg !1241
  br i1 %29, label %30, label %31, !dbg !1237

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !1242

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dcc_server_msg, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)), !dbg !1245
  br label %295, !dbg !1248

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !1249

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %4, align 8, !dbg !1251
  %35 = call i32 @g_ascii_strncasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4), !dbg !1253
  %36 = icmp eq i32 %35, 0, !dbg !1254
  br i1 %36, label %37, label %123, !dbg !1255

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %4, align 8, !dbg !1256
  %39 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !1256
  store i8* %39, i8** %4, align 8, !dbg !1256
  %40 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1258
  %41 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %40, i32 0, i32 23, !dbg !1260
  %42 = load i8, i8* %41, align 8, !dbg !1260
  %43 = lshr i8 %42, 1, !dbg !1260
  %44 = and i8 %43, 1, !dbg !1260
  %45 = zext i8 %44 to i32, !dbg !1260
  %46 = icmp ne i32 %45, 0, !dbg !1258
  br i1 %46, label %47, label %122, !dbg !1261

; <label>:47:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1262, metadata !833), !dbg !1264
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %6, metadata !1265, metadata !833), !dbg !1266
  %48 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1267
  %49 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %48, i32 0, i32 3, !dbg !1268
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %49, align 8, !dbg !1268
  %51 = load i8*, i8** %4, align 8, !dbg !1269
  %52 = call %struct.CHAT_DCC_REC* @dcc_chat_create(%struct._IRC_SERVER_REC* %50, %struct.CHAT_DCC_REC* null, i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1270
  store %struct.CHAT_DCC_REC* %52, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1266
  %53 = call i64 @time(i64* null) #7, !dbg !1271
  %54 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1272
  %55 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %54, i32 0, i32 17, !dbg !1273
  store i64 %53, i64* %55, align 8, !dbg !1274
  %56 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1275
  %57 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %56, i32 0, i32 13, !dbg !1276
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %57, align 8, !dbg !1276
  %59 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1277
  %60 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %59, i32 0, i32 13, !dbg !1278
  store %struct._GIOChannel* %58, %struct._GIOChannel** %60, align 8, !dbg !1279
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1280
  %62 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %61, i32 0, i32 13, !dbg !1281
  %63 = load %struct._GIOChannel*, %struct._GIOChannel** %62, align 8, !dbg !1281
  %64 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %63, i32 0), !dbg !1282
  %65 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1283
  %66 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %65, i32 0, i32 23, !dbg !1284
  store %struct._NET_SENDBUF_REC* %64, %struct._NET_SENDBUF_REC** %66, align 8, !dbg !1285
  %67 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1286
  %68 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %67, i32 0, i32 10, !dbg !1287
  %69 = bitcast %struct._IPADDR* %68 to i8*, !dbg !1288
  %70 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1289
  %71 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %70, i32 0, i32 10, !dbg !1290
  %72 = bitcast %struct._IPADDR* %71 to i8*, !dbg !1288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %72, i64 20, i32 8, i1 false), !dbg !1288
  %73 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1291
  %74 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %73, i32 0, i32 10, !dbg !1292
  %75 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1293
  %76 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %75, i32 0, i32 11, !dbg !1294
  %77 = getelementptr inbounds [46 x i8], [46 x i8]* %76, i32 0, i32 0, !dbg !1293
  %78 = call i32 @net_ip2host(%struct._IPADDR* %74, i8* %77), !dbg !1295
  %79 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1296
  %80 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %79, i32 0, i32 12, !dbg !1297
  %81 = load i32, i32* %80, align 4, !dbg !1297
  %82 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1298
  %83 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %82, i32 0, i32 12, !dbg !1299
  store i32 %81, i32* %83, align 4, !dbg !1300
  %84 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1301
  %85 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %84, i32 0, i32 13, !dbg !1302
  %86 = load %struct._GIOChannel*, %struct._GIOChannel** %85, align 8, !dbg !1302
  %87 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1303
  %88 = bitcast %struct.CHAT_DCC_REC* %87 to i8*, !dbg !1303
  %89 = call i32 @g_input_add(%struct._GIOChannel* %86, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_chat_input to void (i8*, %struct._GIOChannel*, i32)*), i8* %88), !dbg !1304
  %90 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1305
  %91 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %90, i32 0, i32 15, !dbg !1306
  store i32 %89, i32* %91, align 4, !dbg !1307
  %92 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1308
  %93 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %92, i32 0, i32 23, !dbg !1309
  %94 = load i8, i8* %93, align 8, !dbg !1310
  %95 = and i8 %94, -9, !dbg !1310
  %96 = or i8 %95, 8, !dbg !1310
  store i8 %96, i8* %93, align 8, !dbg !1310
  %97 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1311
  %98 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %97), !dbg !1312
  %99 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1313
  %100 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %99, i32 0, i32 3, !dbg !1314
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %100, align 8, !dbg !1314
  %102 = icmp ne %struct._IRC_SERVER_REC* %101, null, !dbg !1315
  br i1 %102, label %103, label %109, !dbg !1315

; <label>:103:                                    ; preds = %47
  %104 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1316
  %105 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %104, i32 0, i32 3, !dbg !1318
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %105, align 8, !dbg !1318
  %107 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %106, i32 0, i32 7, !dbg !1319
  %108 = load i8*, i8** %107, align 8, !dbg !1319
  br label %110, !dbg !1320

; <label>:109:                                    ; preds = %47
  br label %110, !dbg !1321

; <label>:110:                                    ; preds = %109, %103
  %111 = phi i8* [ %108, %103 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), %109 ], !dbg !1323
  %112 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* %111), !dbg !1325
  store i8* %112, i8** %5, align 8, !dbg !1326
  %113 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1327
  %114 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %113, i32 0, i32 23, !dbg !1328
  %115 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %114, align 8, !dbg !1328
  %116 = load i8*, i8** %5, align 8, !dbg !1329
  %117 = load i8*, i8** %5, align 8, !dbg !1330
  %118 = call i64 @strlen(i8* %117) #6, !dbg !1331
  %119 = trunc i64 %118 to i32, !dbg !1331
  %120 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %115, i8* %116, i32 %119), !dbg !1332
  %121 = load i8*, i8** %5, align 8, !dbg !1333
  call void @g_free(i8* %121), !dbg !1334
  br label %122, !dbg !1335

; <label>:122:                                    ; preds = %110, %37
  br label %123, !dbg !1336

; <label>:123:                                    ; preds = %122, %33
  %124 = load i8*, i8** %4, align 8, !dbg !1337
  %125 = call i32 @g_ascii_strncasecmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4), !dbg !1339
  %126 = icmp eq i32 %125, 0, !dbg !1340
  br i1 %126, label %127, label %139, !dbg !1341

; <label>:127:                                    ; preds = %123
  %128 = load i8*, i8** %4, align 8, !dbg !1342
  %129 = getelementptr inbounds i8, i8* %128, i64 4, !dbg !1342
  store i8* %129, i8** %4, align 8, !dbg !1342
  %130 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1344
  %131 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %130, i32 0, i32 23, !dbg !1346
  %132 = load i8, i8* %131, align 8, !dbg !1346
  %133 = lshr i8 %132, 2, !dbg !1346
  %134 = and i8 %133, 1, !dbg !1346
  %135 = zext i8 %134 to i32, !dbg !1346
  %136 = icmp ne i32 %135, 0, !dbg !1344
  br i1 %136, label %137, label %138, !dbg !1347

; <label>:137:                                    ; preds = %127
  br label %138, !dbg !1348

; <label>:138:                                    ; preds = %137, %127
  br label %139, !dbg !1350

; <label>:139:                                    ; preds = %138, %123
  %140 = load i8*, i8** %4, align 8, !dbg !1351
  %141 = call i32 @g_ascii_strncasecmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i64 4), !dbg !1353
  %142 = icmp eq i32 %141, 0, !dbg !1354
  br i1 %142, label %143, label %294, !dbg !1355

; <label>:143:                                    ; preds = %139
  %144 = load i8*, i8** %4, align 8, !dbg !1356
  %145 = getelementptr inbounds i8, i8* %144, i64 4, !dbg !1356
  store i8* %145, i8** %4, align 8, !dbg !1356
  %146 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1358
  %147 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %146, i32 0, i32 23, !dbg !1360
  %148 = load i8, i8* %147, align 8, !dbg !1360
  %149 = and i8 %148, 1, !dbg !1360
  %150 = zext i8 %149 to i32, !dbg !1360
  %151 = icmp ne i32 %150, 0, !dbg !1358
  br i1 %151, label %152, label %293, !dbg !1361

; <label>:152:                                    ; preds = %143
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %7, metadata !1362, metadata !833), !dbg !1403
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1404, metadata !833), !dbg !1405
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1406, metadata !833), !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1408, metadata !833), !dbg !1409
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1410, metadata !833), !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1412, metadata !833), !dbg !1413
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1414, metadata !833), !dbg !1415
  store i32 0, i32* %13, align 4, !dbg !1415
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1416, metadata !833), !dbg !1417
  %153 = load i8*, i8** %4, align 8, !dbg !1418
  %154 = call noalias i8** @g_strsplit(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 -1), !dbg !1419
  store i8** %154, i8*** %8, align 8, !dbg !1420
  %155 = load i8**, i8*** %8, align 8, !dbg !1421
  %156 = call i32 @g_strv_length(i8** %155), !dbg !1422
  store i32 %156, i32* %11, align 4, !dbg !1423
  %157 = load i32, i32* %11, align 4, !dbg !1424
  %158 = icmp slt i32 %157, 3, !dbg !1426
  br i1 %158, label %159, label %161, !dbg !1427

; <label>:159:                                    ; preds = %152
  %160 = load i8**, i8*** %8, align 8, !dbg !1428
  call void @g_strfreev(i8** %160), !dbg !1430
  call void @signal_stop(), !dbg !1431
  br label %295, !dbg !1432

; <label>:161:                                    ; preds = %152
  %162 = load i8**, i8*** %8, align 8, !dbg !1433
  %163 = getelementptr inbounds i8*, i8** %162, i64 0, !dbg !1433
  %164 = load i8*, i8** %163, align 8, !dbg !1433
  store i8* %164, i8** %10, align 8, !dbg !1434
  %165 = load i8**, i8*** %8, align 8, !dbg !1435
  %166 = getelementptr inbounds i8*, i8** %165, i64 1, !dbg !1435
  %167 = load i8*, i8** %166, align 8, !dbg !1435
  %168 = call i64 @str_to_uofft(i8* %167), !dbg !1436
  store i64 %168, i64* %14, align 8, !dbg !1437
  %169 = load i8**, i8*** %8, align 8, !dbg !1438
  %170 = getelementptr inbounds i8*, i8** %169, i64 2, !dbg !1438
  %171 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** %170), !dbg !1439
  store i8* %171, i8** %9, align 8, !dbg !1440
  %172 = load i8*, i8** %9, align 8, !dbg !1441
  %173 = call i64 @strlen(i8* %172) #6, !dbg !1442
  %174 = trunc i64 %173 to i32, !dbg !1442
  store i32 %174, i32* %12, align 4, !dbg !1443
  %175 = load i32, i32* %12, align 4, !dbg !1444
  %176 = icmp sgt i32 %175, 1, !dbg !1446
  br i1 %176, label %177, label %204, !dbg !1447

; <label>:177:                                    ; preds = %161
  %178 = load i8*, i8** %9, align 8, !dbg !1448
  %179 = load i8, i8* %178, align 1, !dbg !1450
  %180 = sext i8 %179 to i32, !dbg !1450
  %181 = icmp eq i32 %180, 34, !dbg !1451
  br i1 %181, label %182, label %204, !dbg !1452

; <label>:182:                                    ; preds = %177
  %183 = load i32, i32* %12, align 4, !dbg !1453
  %184 = sub nsw i32 %183, 1, !dbg !1455
  %185 = sext i32 %184 to i64, !dbg !1456
  %186 = load i8*, i8** %9, align 8, !dbg !1456
  %187 = getelementptr inbounds i8, i8* %186, i64 %185, !dbg !1456
  %188 = load i8, i8* %187, align 1, !dbg !1456
  %189 = sext i8 %188 to i32, !dbg !1456
  %190 = icmp eq i32 %189, 34, !dbg !1457
  br i1 %190, label %191, label %204, !dbg !1458

; <label>:191:                                    ; preds = %182
  %192 = load i32, i32* %12, align 4, !dbg !1459
  %193 = sub nsw i32 %192, 1, !dbg !1461
  %194 = sext i32 %193 to i64, !dbg !1462
  %195 = load i8*, i8** %9, align 8, !dbg !1462
  %196 = getelementptr inbounds i8, i8* %195, i64 %194, !dbg !1462
  store i8 0, i8* %196, align 1, !dbg !1463
  br label %197, !dbg !1464, !llvm.loop !1465

; <label>:197:                                    ; preds = %191
  %198 = load i8*, i8** %9, align 8, !dbg !1466
  %199 = load i8*, i8** %9, align 8, !dbg !1469
  %200 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !1470
  %201 = load i32, i32* %12, align 4, !dbg !1471
  %202 = sext i32 %201 to i64, !dbg !1472
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %198, i8* %200, i64 %202, i32 1, i1 false), !dbg !1473
  br label %203, !dbg !1474

; <label>:203:                                    ; preds = %197
  store i32 1, i32* %13, align 4, !dbg !1475
  br label %204, !dbg !1476

; <label>:204:                                    ; preds = %203, %182, %177, %161
  %205 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1477
  %206 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %205, i32 0, i32 3, !dbg !1478
  %207 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %206, align 8, !dbg !1478
  %208 = load i8*, i8** %10, align 8, !dbg !1479
  %209 = load i8*, i8** %9, align 8, !dbg !1480
  %210 = call %struct.GET_DCC_REC* @dcc_get_create(%struct._IRC_SERVER_REC* %207, %struct.CHAT_DCC_REC* null, i8* %208, i8* %209), !dbg !1481
  store %struct.GET_DCC_REC* %210, %struct.GET_DCC_REC** %7, align 8, !dbg !1482
  %211 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1483
  %212 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %211, i32 0, i32 13, !dbg !1484
  %213 = load %struct._GIOChannel*, %struct._GIOChannel** %212, align 8, !dbg !1484
  %214 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1485
  %215 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %214, i32 0, i32 13, !dbg !1486
  store %struct._GIOChannel* %213, %struct._GIOChannel** %215, align 8, !dbg !1487
  %216 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1488
  %217 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %216, i32 0, i32 3, !dbg !1489
  %218 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %217, align 8, !dbg !1489
  %219 = icmp ne %struct._IRC_SERVER_REC* %218, null, !dbg !1488
  br i1 %219, label %220, label %226, !dbg !1488

; <label>:220:                                    ; preds = %204
  %221 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1490
  %222 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %221, i32 0, i32 3, !dbg !1492
  %223 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %222, align 8, !dbg !1492
  %224 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %223, i32 0, i32 7, !dbg !1493
  %225 = load i8*, i8** %224, align 8, !dbg !1493
  br label %227, !dbg !1494

; <label>:226:                                    ; preds = %204
  br label %227, !dbg !1495

; <label>:227:                                    ; preds = %226, %220
  %228 = phi i8* [ %225, %220 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), %226 ], !dbg !1497
  %229 = call noalias i8* @g_strdup(i8* %228), !dbg !1499
  %230 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1500
  %231 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %230, i32 0, i32 8, !dbg !1501
  store i8* %229, i8** %231, align 8, !dbg !1502
  %232 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1503
  %233 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %232, i32 0, i32 10, !dbg !1504
  %234 = bitcast %struct._IPADDR* %233 to i8*, !dbg !1505
  %235 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1506
  %236 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %235, i32 0, i32 10, !dbg !1507
  %237 = bitcast %struct._IPADDR* %236 to i8*, !dbg !1505
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* %237, i64 20, i32 8, i1 false), !dbg !1505
  %238 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1508
  %239 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %238, i32 0, i32 10, !dbg !1510
  %240 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %239, i32 0, i32 0, !dbg !1511
  %241 = load i16, i16* %240, align 8, !dbg !1511
  %242 = zext i16 %241 to i32, !dbg !1508
  %243 = icmp eq i32 %242, 2, !dbg !1512
  br i1 %243, label %244, label %251, !dbg !1513

; <label>:244:                                    ; preds = %227
  %245 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1514
  %246 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %245, i32 0, i32 10, !dbg !1516
  %247 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1517
  %248 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %247, i32 0, i32 11, !dbg !1518
  %249 = getelementptr inbounds [46 x i8], [46 x i8]* %248, i32 0, i32 0, !dbg !1517
  %250 = call i32 @net_ip2host(%struct._IPADDR* %246, i8* %249), !dbg !1519
  br label %258, !dbg !1520

; <label>:251:                                    ; preds = %227
  %252 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1521
  %253 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %252, i32 0, i32 11, !dbg !1523
  %254 = getelementptr inbounds [46 x i8], [46 x i8]* %253, i32 0, i32 0, !dbg !1524
  %255 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1525
  %256 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %255, i32 0, i32 11, !dbg !1526
  %257 = getelementptr inbounds [46 x i8], [46 x i8]* %256, i32 0, i32 0, !dbg !1524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %257, i64 46, i32 4, i1 false), !dbg !1524
  br label %258

; <label>:258:                                    ; preds = %251, %244
  %259 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1527
  %260 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %259, i32 0, i32 12, !dbg !1528
  %261 = load i32, i32* %260, align 4, !dbg !1528
  %262 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1529
  %263 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %262, i32 0, i32 12, !dbg !1530
  store i32 %261, i32* %263, align 4, !dbg !1531
  %264 = load i64, i64* %14, align 8, !dbg !1532
  %265 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1533
  %266 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %265, i32 0, i32 22, !dbg !1534
  store i64 %264, i64* %266, align 8, !dbg !1535
  %267 = load i32, i32* %13, align 4, !dbg !1536
  %268 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1537
  %269 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %268, i32 0, i32 30, !dbg !1538
  %270 = trunc i32 %267 to i8, !dbg !1539
  %271 = load i8, i8* %269, align 8, !dbg !1539
  %272 = and i8 %270, 1, !dbg !1539
  %273 = and i8 %271, -2, !dbg !1539
  %274 = or i8 %273, %272, !dbg !1539
  store i8 %274, i8* %269, align 8, !dbg !1539
  %275 = zext i8 %272 to i32, !dbg !1539
  %276 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1540
  %277 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %276, i32 0, i32 30, !dbg !1541
  %278 = load i8, i8* %277, align 8, !dbg !1542
  %279 = and i8 %278, -3, !dbg !1542
  %280 = or i8 %279, 2, !dbg !1542
  store i8 %280, i8* %277, align 8, !dbg !1542
  %281 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1543
  %282 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %281, i32 0, i32 23, !dbg !1544
  %283 = load i8, i8* %282, align 8, !dbg !1545
  %284 = and i8 %283, -9, !dbg !1545
  %285 = or i8 %284, 8, !dbg !1545
  store i8 %285, i8* %282, align 8, !dbg !1545
  %286 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1546
  %287 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %7, align 8, !dbg !1547
  %288 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %287, i32 0, i32 11, !dbg !1548
  %289 = getelementptr inbounds [46 x i8], [46 x i8]* %288, i32 0, i32 0, !dbg !1547
  %290 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.GET_DCC_REC* %286, i8* %289), !dbg !1549
  %291 = load i8**, i8*** %8, align 8, !dbg !1550
  call void @g_strfreev(i8** %291), !dbg !1551
  %292 = load i8*, i8** %9, align 8, !dbg !1552
  call void @g_free(i8* %292), !dbg !1553
  br label %293, !dbg !1554

; <label>:293:                                    ; preds = %258, %143
  br label %294, !dbg !1555

; <label>:294:                                    ; preds = %293, %139
  call void @signal_stop(), !dbg !1556
  br label %295, !dbg !1557

; <label>:295:                                    ; preds = %294, %159, %31, %24
  ret void, !dbg !1558
}

; Function Attrs: nounwind uwtable
define void @dcc_server_deinit() #0 !dbg !1560 {
  call void @dcc_unregister_type(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1561
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1562
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1563
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1564
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SERVER_DCC_REC*, i8*)* @dcc_server_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1565
  ret void, !dbg !1566
}

declare void @dcc_unregister_type(i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_server_update_flags(%struct.SERVER_DCC_REC*, i8*) #0 !dbg !1567 {
  %3 = alloca %struct.SERVER_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %3, metadata !1568, metadata !833), !dbg !1569
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1570, metadata !833), !dbg !1571
  br label %7, !dbg !1572, !llvm.loop !1573

; <label>:7:                                      ; preds = %2
  %8 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1574
  %9 = icmp ne %struct.SERVER_DCC_REC* %8, null, !dbg !1578
  br i1 %9, label %10, label %11, !dbg !1574

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1579

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dcc_server_update_flags, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !1582
  br label %115, !dbg !1585

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1586

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1588, !llvm.loop !1589

; <label>:14:                                     ; preds = %13
  %15 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1590
  %16 = bitcast %struct.SERVER_DCC_REC* %15 to i8*, !dbg !1590
  %17 = call i8* @module_check_cast_module(i8* %16, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1594
  %18 = bitcast i8* %17 to %struct.SERVER_DCC_REC*, !dbg !1595
  %19 = icmp ne %struct.SERVER_DCC_REC* %18, null, !dbg !1595
  br i1 %19, label %20, label %21, !dbg !1596

; <label>:20:                                     ; preds = %14
  br i1 false, label %23, label %22, !dbg !1597

; <label>:21:                                     ; preds = %14
  br i1 false, label %22, label %23, !dbg !1599

; <label>:22:                                     ; preds = %21, %20
  br label %24, !dbg !1601

; <label>:23:                                     ; preds = %21, %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dcc_server_update_flags, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !1604
  br label %115, !dbg !1607

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1608

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !1610
  %27 = load i8, i8* %26, align 1, !dbg !1612
  %28 = sext i8 %27 to i32, !dbg !1612
  %29 = icmp eq i32 %28, 43, !dbg !1613
  br i1 %29, label %35, label %30, !dbg !1614

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %4, align 8, !dbg !1615
  %32 = load i8, i8* %31, align 1, !dbg !1617
  %33 = sext i8 %32 to i32, !dbg !1617
  %34 = icmp eq i32 %33, 45, !dbg !1618
  br i1 %34, label %35, label %115, !dbg !1619

; <label>:35:                                     ; preds = %30, %25
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1620, metadata !833), !dbg !1622
  %36 = load i8*, i8** %4, align 8, !dbg !1623
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1624
  store i8* %37, i8** %5, align 8, !dbg !1622
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1625, metadata !833), !dbg !1626
  %38 = load i8*, i8** %4, align 8, !dbg !1627
  %39 = load i8, i8* %38, align 1, !dbg !1628
  %40 = sext i8 %39 to i32, !dbg !1628
  %41 = icmp eq i32 %40, 43, !dbg !1629
  %42 = select i1 %41, i32 1, i32 0, !dbg !1630
  store i32 %42, i32* %6, align 4, !dbg !1626
  br label %43, !dbg !1631

; <label>:43:                                     ; preds = %111, %35
  %44 = load i8*, i8** %5, align 8, !dbg !1632
  %45 = load i8, i8* %44, align 1, !dbg !1634
  %46 = icmp ne i8 %45, 0, !dbg !1635
  br i1 %46, label %47, label %114, !dbg !1635

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %5, align 8, !dbg !1636
  %49 = load i8, i8* %48, align 1, !dbg !1639
  %50 = sext i8 %49 to i32, !dbg !1639
  %51 = icmp eq i32 %50, 115, !dbg !1640
  br i1 %51, label %57, label %52, !dbg !1641

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %5, align 8, !dbg !1642
  %54 = load i8, i8* %53, align 1, !dbg !1644
  %55 = sext i8 %54 to i32, !dbg !1644
  %56 = icmp eq i32 %55, 83, !dbg !1645
  br i1 %56, label %57, label %67, !dbg !1646

; <label>:57:                                     ; preds = %52, %47
  %58 = load i32, i32* %6, align 4, !dbg !1647
  %59 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1650
  %60 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %59, i32 0, i32 23, !dbg !1651
  %61 = trunc i32 %58 to i8, !dbg !1652
  %62 = load i8, i8* %60, align 8, !dbg !1652
  %63 = and i8 %61, 1, !dbg !1652
  %64 = and i8 %62, -2, !dbg !1652
  %65 = or i8 %64, %63, !dbg !1652
  store i8 %65, i8* %60, align 8, !dbg !1652
  %66 = zext i8 %63 to i32, !dbg !1652
  br label %111, !dbg !1653

; <label>:67:                                     ; preds = %52
  %68 = load i8*, i8** %5, align 8, !dbg !1654
  %69 = load i8, i8* %68, align 1, !dbg !1656
  %70 = sext i8 %69 to i32, !dbg !1656
  %71 = icmp eq i32 %70, 99, !dbg !1657
  br i1 %71, label %77, label %72, !dbg !1658

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %5, align 8, !dbg !1659
  %74 = load i8, i8* %73, align 1, !dbg !1661
  %75 = sext i8 %74 to i32, !dbg !1661
  %76 = icmp eq i32 %75, 67, !dbg !1662
  br i1 %76, label %77, label %88, !dbg !1663

; <label>:77:                                     ; preds = %72, %67
  %78 = load i32, i32* %6, align 4, !dbg !1664
  %79 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1667
  %80 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %79, i32 0, i32 23, !dbg !1668
  %81 = trunc i32 %78 to i8, !dbg !1669
  %82 = load i8, i8* %80, align 8, !dbg !1669
  %83 = and i8 %81, 1, !dbg !1669
  %84 = shl i8 %83, 1, !dbg !1669
  %85 = and i8 %82, -3, !dbg !1669
  %86 = or i8 %85, %84, !dbg !1669
  store i8 %86, i8* %80, align 8, !dbg !1669
  %87 = zext i8 %83 to i32, !dbg !1669
  br label %110, !dbg !1670

; <label>:88:                                     ; preds = %72
  %89 = load i8*, i8** %5, align 8, !dbg !1671
  %90 = load i8, i8* %89, align 1, !dbg !1673
  %91 = sext i8 %90 to i32, !dbg !1673
  %92 = icmp eq i32 %91, 102, !dbg !1674
  br i1 %92, label %98, label %93, !dbg !1675

; <label>:93:                                     ; preds = %88
  %94 = load i8*, i8** %5, align 8, !dbg !1676
  %95 = load i8, i8* %94, align 1, !dbg !1678
  %96 = sext i8 %95 to i32, !dbg !1678
  %97 = icmp eq i32 %96, 70, !dbg !1679
  br i1 %97, label %98, label %109, !dbg !1680

; <label>:98:                                     ; preds = %93, %88
  %99 = load i32, i32* %6, align 4, !dbg !1681
  %100 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1684
  %101 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %100, i32 0, i32 23, !dbg !1685
  %102 = trunc i32 %99 to i8, !dbg !1686
  %103 = load i8, i8* %101, align 8, !dbg !1686
  %104 = and i8 %102, 1, !dbg !1686
  %105 = shl i8 %104, 2, !dbg !1686
  %106 = and i8 %103, -5, !dbg !1686
  %107 = or i8 %106, %105, !dbg !1686
  store i8 %107, i8* %101, align 8, !dbg !1686
  %108 = zext i8 %104 to i32, !dbg !1686
  br label %109, !dbg !1687

; <label>:109:                                    ; preds = %98, %93
  br label %110

; <label>:110:                                    ; preds = %109, %77
  br label %111

; <label>:111:                                    ; preds = %110, %57
  %112 = load i8*, i8** %5, align 8, !dbg !1688
  %113 = getelementptr inbounds i8, i8* %112, i32 1, !dbg !1688
  store i8* %113, i8** %5, align 8, !dbg !1688
  br label %43, !dbg !1689, !llvm.loop !1691

; <label>:114:                                    ; preds = %43
  br label %115, !dbg !1692

; <label>:115:                                    ; preds = %11, %23, %114, %30
  ret void, !dbg !1693
}

declare void @cmd_params_free(i8*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

; Function Attrs: nounwind uwtable
define internal %struct._GIOChannel* @dcc_listen_port(%struct._GIOChannel*, %struct._IPADDR*, i32) #0 !dbg !1694 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1697, metadata !833), !dbg !1698
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1699, metadata !833), !dbg !1700
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1701, metadata !833), !dbg !1702
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1703
  %9 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1705
  %10 = call i32 @net_getsockname(%struct._GIOChannel* %8, %struct._IPADDR* %9, i32* null), !dbg !1706
  %11 = icmp eq i32 %10, -1, !dbg !1707
  br i1 %11, label %12, label %13, !dbg !1708

; <label>:12:                                     ; preds = %3
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !1709
  br label %23, !dbg !1709

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1710
  %15 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %14, i32 0, i32 0, !dbg !1712
  %16 = load i16, i16* %15, align 4, !dbg !1712
  %17 = zext i16 %16 to i32, !dbg !1713
  %18 = icmp ne i32 %17, 2, !dbg !1714
  br i1 %18, label %19, label %21, !dbg !1715

; <label>:19:                                     ; preds = %13
  %20 = call %struct._GIOChannel* @net_listen(%struct._IPADDR* null, i32* %7), !dbg !1716
  store %struct._GIOChannel* %20, %struct._GIOChannel** %4, align 8, !dbg !1717
  br label %23, !dbg !1717

; <label>:21:                                     ; preds = %13
  %22 = call %struct._GIOChannel* @net_listen(%struct._IPADDR* @ip4_any, i32* %7), !dbg !1718
  store %struct._GIOChannel* %22, %struct._GIOChannel** %4, align 8, !dbg !1719
  br label %23, !dbg !1719

; <label>:23:                                     ; preds = %21, %19, %12
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !1720
  ret %struct._GIOChannel* %24, !dbg !1720
}

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

; Function Attrs: nounwind uwtable
define internal %struct.SERVER_DCC_REC* @dcc_server_create(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1721 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1724, metadata !833), !dbg !1725
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1726, metadata !833), !dbg !1727
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %5, metadata !1728, metadata !833), !dbg !1729
  %6 = call noalias i8* @g_malloc0_n(i64 1, i64 216), !dbg !1730
  %7 = bitcast i8* %6 to %struct.SERVER_DCC_REC*, !dbg !1731
  store %struct.SERVER_DCC_REC* %7, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1732
  %8 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1733
  %9 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1734
  %10 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %9, i32 0, i32 0, !dbg !1735
  store i32 %8, i32* %10, align 8, !dbg !1736
  %11 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1737
  %12 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %11, i32 0, i32 1, !dbg !1738
  store i32 %8, i32* %12, align 4, !dbg !1739
  %13 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1740
  %14 = load i8*, i8** %4, align 8, !dbg !1741
  call void @dcc_server_update_flags(%struct.SERVER_DCC_REC* %13, i8* %14), !dbg !1742
  %15 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1743
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1744
  %17 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1745
  %18 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %17, i32 0, i32 5, !dbg !1746
  %19 = load i8*, i8** %18, align 8, !dbg !1746
  %20 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1747
  %21 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %20, i32 0, i32 4, !dbg !1748
  %22 = load i8*, i8** %21, align 8, !dbg !1748
  call void @dcc_init_server_rec(%struct.SERVER_DCC_REC* %15, %struct._IRC_SERVER_REC* %16, i8* %19, i8* %22), !dbg !1749
  %23 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1750
  ret %struct.SERVER_DCC_REC* %23, !dbg !1751
}

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_server_listen(%struct.SERVER_DCC_REC*) #0 !dbg !1752 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  %3 = alloca %struct.SERVER_DCC_REC*, align 8
  %4 = alloca %struct._IPADDR, align 4
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca i32, align 4
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !1753, metadata !833), !dbg !1754
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %3, metadata !1755, metadata !833), !dbg !1756
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %4, metadata !1757, metadata !833), !dbg !1758
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1759, metadata !833), !dbg !1760
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1761, metadata !833), !dbg !1762
  br label %7, !dbg !1763, !llvm.loop !1764

; <label>:7:                                      ; preds = %1
  %8 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1765
  %9 = bitcast %struct.SERVER_DCC_REC* %8 to i8*, !dbg !1765
  %10 = call i8* @module_check_cast_module(i8* %9, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1769
  %11 = bitcast i8* %10 to %struct.SERVER_DCC_REC*, !dbg !1770
  %12 = icmp ne %struct.SERVER_DCC_REC* %11, null, !dbg !1770
  br i1 %12, label %13, label %14, !dbg !1771

; <label>:13:                                     ; preds = %7
  br i1 false, label %16, label %15, !dbg !1772

; <label>:14:                                     ; preds = %7
  br i1 false, label %15, label %16, !dbg !1774

; <label>:15:                                     ; preds = %14, %13
  br label %17, !dbg !1776

; <label>:16:                                     ; preds = %14, %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_server_listen, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !1779
  br label %60, !dbg !1782

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1783

; <label>:18:                                     ; preds = %17
  %19 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1785
  %20 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %19, i32 0, i32 13, !dbg !1786
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %20, align 8, !dbg !1786
  %22 = call %struct._GIOChannel* @net_accept(%struct._GIOChannel* %21, %struct._IPADDR* %4, i32* %6), !dbg !1787
  store %struct._GIOChannel* %22, %struct._GIOChannel** %5, align 8, !dbg !1788
  %23 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1789
  %24 = icmp eq %struct._GIOChannel* %23, null, !dbg !1791
  br i1 %24, label %25, label %26, !dbg !1792

; <label>:25:                                     ; preds = %18
  br label %60, !dbg !1793

; <label>:26:                                     ; preds = %18
  %27 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1794
  %28 = call %struct.SERVER_DCC_REC* @dcc_server_clone(%struct.SERVER_DCC_REC* %27), !dbg !1795
  store %struct.SERVER_DCC_REC* %28, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1796
  %29 = call i64 @time(i64* null) #7, !dbg !1797
  %30 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1798
  %31 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %30, i32 0, i32 17, !dbg !1799
  store i64 %29, i64* %31, align 8, !dbg !1800
  %32 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1801
  %33 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1802
  %34 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %33, i32 0, i32 13, !dbg !1803
  store %struct._GIOChannel* %32, %struct._GIOChannel** %34, align 8, !dbg !1804
  %35 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1805
  %36 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %35, i32 0), !dbg !1806
  %37 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1807
  %38 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %37, i32 0, i32 22, !dbg !1808
  store %struct._NET_SENDBUF_REC* %36, %struct._NET_SENDBUF_REC** %38, align 8, !dbg !1809
  %39 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1810
  %40 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %39, i32 0, i32 10, !dbg !1811
  %41 = bitcast %struct._IPADDR* %40 to i8*, !dbg !1812
  %42 = bitcast %struct._IPADDR* %4 to i8*, !dbg !1812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 20, i32 4, i1 false), !dbg !1812
  %43 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1813
  %44 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %43, i32 0, i32 10, !dbg !1814
  %45 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1815
  %46 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %45, i32 0, i32 11, !dbg !1816
  %47 = getelementptr inbounds [46 x i8], [46 x i8]* %46, i32 0, i32 0, !dbg !1815
  %48 = call i32 @net_ip2host(%struct._IPADDR* %44, i8* %47), !dbg !1817
  %49 = load i32, i32* %6, align 4, !dbg !1818
  %50 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1819
  %51 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %50, i32 0, i32 12, !dbg !1820
  store i32 %49, i32* %51, align 4, !dbg !1821
  %52 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1822
  %53 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1823
  %54 = bitcast %struct.SERVER_DCC_REC* %53 to i8*, !dbg !1823
  %55 = call i32 @g_input_add(%struct._GIOChannel* %52, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SERVER_DCC_REC*)* @dcc_server_input to void (i8*, %struct._GIOChannel*, i32)*), i8* %54), !dbg !1824
  %56 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1825
  %57 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %56, i32 0, i32 15, !dbg !1826
  store i32 %55, i32* %57, align 4, !dbg !1827
  %58 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1828
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.SERVER_DCC_REC* %58), !dbg !1829
  br label %60, !dbg !1830

; <label>:60:                                     ; preds = %26, %25, %16
  ret void, !dbg !1831
}

declare i32 @net_getsockname(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare %struct._GIOChannel* @net_listen(%struct._IPADDR*, i32*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_init_server_rec(%struct.SERVER_DCC_REC*, %struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1833 {
  %5 = alloca %struct.SERVER_DCC_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %5, metadata !1836, metadata !833), !dbg !1837
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1838, metadata !833), !dbg !1839
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1840, metadata !833), !dbg !1841
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1842, metadata !833), !dbg !1843
  br label %9, !dbg !1844, !llvm.loop !1845

; <label>:9:                                      ; preds = %4
  %10 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1846
  %11 = icmp ne %struct.SERVER_DCC_REC* %10, null, !dbg !1850
  br i1 %11, label %12, label %13, !dbg !1846

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1851

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_init_server_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !1854
  br label %63, !dbg !1857

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1858

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1860, !llvm.loop !1861

; <label>:16:                                     ; preds = %15
  %17 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1862
  %18 = bitcast %struct.SERVER_DCC_REC* %17 to i8*, !dbg !1862
  %19 = call i8* @module_check_cast_module(i8* %18, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1866
  %20 = bitcast i8* %19 to %struct.SERVER_DCC_REC*, !dbg !1867
  %21 = icmp ne %struct.SERVER_DCC_REC* %20, null, !dbg !1867
  br i1 %21, label %22, label %23, !dbg !1868

; <label>:22:                                     ; preds = %16
  br i1 false, label %25, label %24, !dbg !1869

; <label>:23:                                     ; preds = %16
  br i1 false, label %24, label %25, !dbg !1871

; <label>:24:                                     ; preds = %23, %22
  br label %26, !dbg !1873

; <label>:25:                                     ; preds = %23, %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_init_server_rec, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !1876
  br label %63, !dbg !1879

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1880

; <label>:27:                                     ; preds = %26
  %28 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !1882
  %29 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1883
  %30 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %29, i32 0, i32 21, !dbg !1884
  store %struct._GHashTable* %28, %struct._GHashTable** %30, align 8, !dbg !1885
  %31 = call i64 @time(i64* null) #7, !dbg !1886
  %32 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1887
  %33 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %32, i32 0, i32 2, !dbg !1888
  store i64 %31, i64* %33, align 8, !dbg !1889
  %34 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1890
  %35 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %34, i32 0, i32 7, !dbg !1891
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %35, align 8, !dbg !1892
  %36 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1893
  %37 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %36, i32 0, i32 9, !dbg !1894
  store i8* null, i8** %37, align 8, !dbg !1895
  %38 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1896
  %39 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %38, i32 0, i32 6, !dbg !1897
  store i8* null, i8** %39, align 8, !dbg !1898
  %40 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1899
  %41 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %40, i32 0, i32 16, !dbg !1900
  store i32 -1, i32* %41, align 8, !dbg !1901
  %42 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1902
  %43 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %42, i32 0, i32 15, !dbg !1903
  store i32 -1, i32* %43, align 4, !dbg !1904
  %44 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1905
  %45 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %44, i32 0, i32 14, !dbg !1906
  store i32 -1, i32* %45, align 8, !dbg !1907
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1908
  %47 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1909
  %48 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %47, i32 0, i32 3, !dbg !1910
  store %struct._IRC_SERVER_REC* %46, %struct._IRC_SERVER_REC** %48, align 8, !dbg !1911
  %49 = load i8*, i8** %7, align 8, !dbg !1912
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1913
  %51 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1914
  %52 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %51, i32 0, i32 5, !dbg !1915
  store i8* %50, i8** %52, align 8, !dbg !1916
  %53 = load i8*, i8** %8, align 8, !dbg !1917
  %54 = call noalias i8* @g_strdup(i8* %53), !dbg !1918
  %55 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1919
  %56 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %55, i32 0, i32 4, !dbg !1920
  store i8* %54, i8** %56, align 8, !dbg !1921
  %57 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !1922
  %58 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1923
  %59 = bitcast %struct.SERVER_DCC_REC* %58 to i8*, !dbg !1923
  %60 = call %struct._GSList* @g_slist_append(%struct._GSList* %57, i8* %59), !dbg !1924
  store %struct._GSList* %60, %struct._GSList** @dcc_conns, align 8, !dbg !1925
  %61 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %5, align 8, !dbg !1926
  %62 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.SERVER_DCC_REC* %61), !dbg !1927
  br label %63, !dbg !1928

; <label>:63:                                     ; preds = %27, %25, %13
  ret void, !dbg !1929
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare %struct._GIOChannel* @net_accept(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct.SERVER_DCC_REC* @dcc_server_clone(%struct.SERVER_DCC_REC*) #0 !dbg !1931 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  %3 = alloca %struct.SERVER_DCC_REC*, align 8
  %4 = alloca %struct.SERVER_DCC_REC*, align 8
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %3, metadata !1934, metadata !833), !dbg !1935
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %4, metadata !1936, metadata !833), !dbg !1937
  br label %5, !dbg !1938, !llvm.loop !1939

; <label>:5:                                      ; preds = %1
  %6 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1940
  %7 = bitcast %struct.SERVER_DCC_REC* %6 to i8*, !dbg !1940
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1944
  %9 = bitcast i8* %8 to %struct.SERVER_DCC_REC*, !dbg !1945
  %10 = icmp ne %struct.SERVER_DCC_REC* %9, null, !dbg !1945
  br i1 %10, label %11, label %12, !dbg !1946

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1947

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1949

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1951

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_server_clone, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !1954
  store %struct.SERVER_DCC_REC* null, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1957
  br label %78, !dbg !1957

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1958

; <label>:16:                                     ; preds = %15
  %17 = call noalias i8* @g_malloc0_n(i64 1, i64 216), !dbg !1960
  %18 = bitcast i8* %17 to %struct.SERVER_DCC_REC*, !dbg !1961
  store %struct.SERVER_DCC_REC* %18, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1962
  %19 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !1963
  %20 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1964
  %21 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %20, i32 0, i32 0, !dbg !1965
  store i32 %19, i32* %21, align 8, !dbg !1966
  %22 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1967
  %23 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %22, i32 0, i32 1, !dbg !1968
  store i32 %19, i32* %23, align 4, !dbg !1969
  %24 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1970
  %25 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %24, i32 0, i32 23, !dbg !1971
  %26 = load i8, i8* %25, align 8, !dbg !1971
  %27 = and i8 %26, 1, !dbg !1971
  %28 = zext i8 %27 to i32, !dbg !1971
  %29 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1972
  %30 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %29, i32 0, i32 23, !dbg !1973
  %31 = trunc i32 %28 to i8, !dbg !1974
  %32 = load i8, i8* %30, align 8, !dbg !1974
  %33 = and i8 %31, 1, !dbg !1974
  %34 = and i8 %32, -2, !dbg !1974
  %35 = or i8 %34, %33, !dbg !1974
  store i8 %35, i8* %30, align 8, !dbg !1974
  %36 = zext i8 %33 to i32, !dbg !1974
  %37 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1975
  %38 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %37, i32 0, i32 23, !dbg !1976
  %39 = load i8, i8* %38, align 8, !dbg !1976
  %40 = lshr i8 %39, 1, !dbg !1976
  %41 = and i8 %40, 1, !dbg !1976
  %42 = zext i8 %41 to i32, !dbg !1976
  %43 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1977
  %44 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %43, i32 0, i32 23, !dbg !1978
  %45 = trunc i32 %42 to i8, !dbg !1979
  %46 = load i8, i8* %44, align 8, !dbg !1979
  %47 = and i8 %45, 1, !dbg !1979
  %48 = shl i8 %47, 1, !dbg !1979
  %49 = and i8 %46, -3, !dbg !1979
  %50 = or i8 %49, %48, !dbg !1979
  store i8 %50, i8* %44, align 8, !dbg !1979
  %51 = zext i8 %47 to i32, !dbg !1979
  %52 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1980
  %53 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %52, i32 0, i32 23, !dbg !1981
  %54 = load i8, i8* %53, align 8, !dbg !1981
  %55 = lshr i8 %54, 2, !dbg !1981
  %56 = and i8 %55, 1, !dbg !1981
  %57 = zext i8 %56 to i32, !dbg !1981
  %58 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1982
  %59 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %58, i32 0, i32 23, !dbg !1983
  %60 = trunc i32 %57 to i8, !dbg !1984
  %61 = load i8, i8* %59, align 8, !dbg !1984
  %62 = and i8 %60, 1, !dbg !1984
  %63 = shl i8 %62, 2, !dbg !1984
  %64 = and i8 %61, -5, !dbg !1984
  %65 = or i8 %64, %63, !dbg !1984
  store i8 %65, i8* %59, align 8, !dbg !1984
  %66 = zext i8 %62 to i32, !dbg !1984
  %67 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1985
  %68 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1986
  %69 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %68, i32 0, i32 3, !dbg !1987
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %69, align 8, !dbg !1987
  %71 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1988
  %72 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %71, i32 0, i32 5, !dbg !1989
  %73 = load i8*, i8** %72, align 8, !dbg !1989
  %74 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %3, align 8, !dbg !1990
  %75 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %74, i32 0, i32 4, !dbg !1991
  %76 = load i8*, i8** %75, align 8, !dbg !1991
  call void @dcc_init_server_rec(%struct.SERVER_DCC_REC* %67, %struct._IRC_SERVER_REC* %70, i8* %73, i8* %76), !dbg !1992
  %77 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %4, align 8, !dbg !1993
  store %struct.SERVER_DCC_REC* %77, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1994
  br label %78, !dbg !1994

; <label>:78:                                     ; preds = %16, %14
  %79 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !1995
  ret %struct.SERVER_DCC_REC* %79, !dbg !1995
}

declare %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_server_input(%struct.SERVER_DCC_REC*) #0 !dbg !1996 {
  %2 = alloca %struct.SERVER_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.SERVER_DCC_REC* %0, %struct.SERVER_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_DCC_REC** %2, metadata !1997, metadata !833), !dbg !1998
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1999, metadata !833), !dbg !2000
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2001, metadata !833), !dbg !2002
  br label %5, !dbg !2003, !llvm.loop !2004

; <label>:5:                                      ; preds = %1
  %6 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2005
  %7 = bitcast %struct.SERVER_DCC_REC* %6 to i8*, !dbg !2005
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)), !dbg !2009
  %9 = bitcast i8* %8 to %struct.SERVER_DCC_REC*, !dbg !2010
  %10 = icmp ne %struct.SERVER_DCC_REC* %9, null, !dbg !2010
  br i1 %10, label %11, label %12, !dbg !2011

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !2012

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !2014

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !2016

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_server_input, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0)), !dbg !2019
  br label %57, !dbg !2022

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2023

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !2025, !llvm.loop !2026

; <label>:17:                                     ; preds = %54, %16
  %18 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2027
  %19 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %18, i32 0, i32 22, !dbg !2029
  %20 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %19, align 8, !dbg !2029
  %21 = call i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC* %20, i8** %3, i32 1), !dbg !2030
  store i32 %21, i32* %4, align 4, !dbg !2031
  %22 = load i32, i32* %4, align 4, !dbg !2032
  %23 = icmp eq i32 %22, -1, !dbg !2034
  br i1 %23, label %24, label %27, !dbg !2035

; <label>:24:                                     ; preds = %17
  %25 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2036
  %26 = bitcast %struct.SERVER_DCC_REC* %25 to %struct.DCC_REC*, !dbg !2038
  call void @dcc_close(%struct.DCC_REC* %26), !dbg !2039
  br label %57, !dbg !2040

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %4, align 4, !dbg !2041
  %29 = icmp sgt i32 %28, 0, !dbg !2043
  br i1 %29, label %30, label %40, !dbg !2044

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %4, align 4, !dbg !2045
  %32 = sext i32 %31 to i64, !dbg !2045
  %33 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2047
  %34 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %33, i32 0, i32 18, !dbg !2048
  %35 = load i64, i64* %34, align 8, !dbg !2049
  %36 = add i64 %35, %32, !dbg !2049
  store i64 %36, i64* %34, align 8, !dbg !2049
  %37 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2050
  %38 = load i8*, i8** %3, align 8, !dbg !2051
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.SERVER_DCC_REC* %37, i8* %38), !dbg !2052
  br label %40, !dbg !2053

; <label>:40:                                     ; preds = %30, %27
  %41 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2054
  %42 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %41, i32 0, i32 23, !dbg !2056
  %43 = load i8, i8* %42, align 8, !dbg !2056
  %44 = lshr i8 %43, 3, !dbg !2056
  %45 = and i8 %44, 1, !dbg !2056
  %46 = zext i8 %45 to i32, !dbg !2056
  %47 = icmp ne i32 %46, 0, !dbg !2054
  br i1 %47, label %48, label %53, !dbg !2057

; <label>:48:                                     ; preds = %40
  %49 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2058
  %50 = getelementptr inbounds %struct.SERVER_DCC_REC, %struct.SERVER_DCC_REC* %49, i32 0, i32 13, !dbg !2060
  store %struct._GIOChannel* null, %struct._GIOChannel** %50, align 8, !dbg !2061
  %51 = load %struct.SERVER_DCC_REC*, %struct.SERVER_DCC_REC** %2, align 8, !dbg !2062
  %52 = bitcast %struct.SERVER_DCC_REC* %51 to %struct.DCC_REC*, !dbg !2063
  call void @dcc_close(%struct.DCC_REC* %52), !dbg !2064
  br label %57, !dbg !2065

; <label>:53:                                     ; preds = %40
  br label %54, !dbg !2066

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %4, align 4, !dbg !2067
  %56 = icmp sgt i32 %55, 0, !dbg !2069
  br i1 %56, label %17, label %57, !dbg !2070, !llvm.loop !2026

; <label>:57:                                     ; preds = %14, %54, %48, %24
  ret void, !dbg !2071
}

declare i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC*, i8**, i32) #2

declare void @dcc_close(%struct.DCC_REC*) #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #2

declare %struct.CHAT_DCC_REC* @dcc_chat_create(%struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #2

declare void @dcc_chat_input(%struct.CHAT_DCC_REC*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @g_free(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @g_strv_length(i8**) #2

declare void @g_strfreev(i8**) #2

declare i64 @str_to_uofft(i8*) #2

declare noalias i8* @g_strjoinv(i8*, i8**) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare %struct.GET_DCC_REC* @dcc_get_create(%struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!824, !825}
!llvm.ident = !{!826}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56)
!1 = !DIFile(filename: "line178-dcc-server.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 25, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!38 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!39 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!40 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!41 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!42 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!43 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!44 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!45 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!46 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!47 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!48 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!49 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!50 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!51 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!52 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!53 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!54 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!55 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!56 = !{!57, !58, !62, !64, !787, !80, !423, !215, !413, !794, !798}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_DCC_REC", file: !66, line: 24, baseType: !67)
!66 = !DIFile(filename: "dcc-server.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SERVER_DCC_REC", file: !66, line: 12, size: 1728, align: 64, elements: !68)
!68 = !{!69, !72, !73, !79, !728, !729, !730, !731, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !70, line: 1, baseType: !71, size: 32, align: 32)
!70 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !67, file: !70, line: 2, baseType: !71, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !67, file: !70, line: 3, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !75, line: 75, baseType: !76)
!75 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !77, line: 139, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !67, file: !70, line: 5, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !82, line: 6, baseType: !83)
!82 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !84, line: 42, size: 39168, align: 64, elements: !85)
!84 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = !{!86, !88, !89, !90, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !385, !386, !390, !391, !392, !396, !401, !402, !403, !404, !405, !406, !407, !408, !415, !416, !417, !418, !419, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !725, !727}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !87, line: 3, baseType: !71, size: 32, align: 32)
!87 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !83, file: !87, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !83, file: !87, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !83, file: !87, line: 8, baseType: !91, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !82, line: 5, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !84, line: 24, size: 2496, align: 64, elements: !94)
!94 = !{!95, !97, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !96, line: 3, baseType: !71, size: 32, align: 32)
!96 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !93, file: !96, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !93, file: !96, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !93, file: !96, line: 9, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !93, file: !96, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !93, file: !96, line: 13, baseType: !106, size: 16, align: 16, offset: 448)
!106 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !93, file: !96, line: 14, baseType: !100, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !93, file: !96, line: 15, baseType: !100, size: 64, align: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !93, file: !96, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !93, file: !96, line: 17, baseType: !100, size: 64, align: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !93, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !114, line: 99, baseType: !115)
!114 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !116, line: 22, size: 160, align: 32, elements: !117)
!116 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !115, file: !116, line: 23, baseType: !106, size: 16, align: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !115, file: !116, line: 24, baseType: !120, size: 128, align: 32, offset: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !121, line: 211, size: 128, align: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !120, file: !121, line: 220, baseType: !124, size: 128, align: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !121, line: 213, size: 128, align: 32, elements: !125)
!125 = !{!126, !133, !138}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !124, file: !121, line: 215, baseType: !127, size: 128, align: 8)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, align: 8, elements: !131)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !129, line: 48, baseType: !130)
!129 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!132}
!132 = !DISubrange(count: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !124, file: !121, line: 217, baseType: !134, size: 128, align: 16)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, align: 16, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 49, baseType: !106)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !124, file: !121, line: 218, baseType: !139, size: 128, align: 32)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, align: 32, elements: !142)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 51, baseType: !141)
!141 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !93, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !93, file: !96, line: 21, baseType: !100, size: 64, align: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !93, file: !96, line: 22, baseType: !100, size: 64, align: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !93, file: !96, line: 23, baseType: !100, size: 64, align: 64, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !93, file: !96, line: 24, baseType: !100, size: 64, align: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !93, file: !96, line: 26, baseType: !100, size: 64, align: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !93, file: !96, line: 27, baseType: !100, size: 64, align: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !93, file: !96, line: 28, baseType: !100, size: 64, align: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !93, file: !96, line: 29, baseType: !100, size: 64, align: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !93, file: !96, line: 30, baseType: !100, size: 64, align: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !93, file: !96, line: 31, baseType: !100, size: 64, align: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !93, file: !96, line: 32, baseType: !100, size: 64, align: 64, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !93, file: !96, line: 33, baseType: !100, size: 64, align: 64, offset: 1600)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !93, file: !96, line: 35, baseType: !158, size: 64, align: 64, offset: 1664)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !161)
!161 = !{!162, !164, !304, !305, !310, !311, !312, !313, !314, !323, !324, !325, !329, !330, !331, !332, !333, !334, !335, !336}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !160, file: !4, line: 100, baseType: !163, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !60, line: 49, baseType: !71)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !160, file: !4, line: 101, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !168)
!168 = !{!169, !190, !196, !202, !206, !291, !295, !300}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !167, file: !4, line: 133, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !158, !58, !174, !177, !178}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !175, line: 66, baseType: !176)
!175 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !181, line: 42, baseType: !182)
!181 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !181, line: 44, size: 128, align: 64, elements: !183)
!183 = !{!184, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !182, file: !181, line: 46, baseType: !185, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !186, line: 36, baseType: !187)
!186 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !175, line: 45, baseType: !141)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !182, file: !181, line: 47, baseType: !163, size: 32, align: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !182, file: !181, line: 48, baseType: !58, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !167, file: !4, line: 138, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!173, !158, !194, !174, !177, !178}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !167, file: !4, line: 143, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!173, !158, !200, !201, !178}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !175, line: 51, baseType: !78)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !167, file: !4, line: 147, baseType: !203, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!173, !158, !178}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !167, file: !4, line: 149, baseType: !207, size: 64, align: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !158, !290}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !213)
!213 = !{!214, !216, !237, !266, !268, !272, !273, !274, !275, !283, !284, !285, !286}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !212, file: !16, line: 174, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !60, line: 77, baseType: !57)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !212, file: !16, line: 175, baseType: !217, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !220)
!220 = !{!221, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !219, file: !16, line: 198, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !215}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !219, file: !16, line: 199, baseType: !222, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !219, file: !16, line: 200, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !215, !210, !230, !236}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !215}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !60, line: 50, baseType: !163)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !212, file: !16, line: 177, baseType: !238, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !242)
!242 = !{!243, !248, !252, !256, !260, !261}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !241, file: !16, line: 216, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!235, !210, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !241, file: !16, line: 218, baseType: !249, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!235, !210}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !241, file: !16, line: 219, baseType: !253, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!235, !210, !231, !215}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !241, file: !16, line: 222, baseType: !257, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !210}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !241, file: !16, line: 226, baseType: !231, size: 64, align: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !241, file: !16, line: 227, baseType: !262, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !212, file: !16, line: 178, baseType: !267, size: 32, align: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !60, line: 55, baseType: !141)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !212, file: !16, line: 180, baseType: !269, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !271)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !212, file: !16, line: 182, baseType: !163, size: 32, align: 32, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !16, line: 183, baseType: !267, size: 32, align: 32, offset: 352)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !212, file: !16, line: 184, baseType: !267, size: 32, align: 32, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !212, file: !16, line: 186, baseType: !276, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !278, line: 37, baseType: !279)
!278 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !278, line: 39, size: 128, align: 64, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !279, file: !278, line: 41, baseType: !215, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !278, line: 42, baseType: !276, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !16, line: 188, baseType: !210, size: 64, align: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !16, line: 189, baseType: !210, size: 64, align: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !16, line: 191, baseType: !100, size: 64, align: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !212, file: !16, line: 193, baseType: !287, size: 64, align: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !289)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !167, file: !4, line: 151, baseType: !292, size: 64, align: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !158}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !167, file: !4, line: 152, baseType: !296, size: 64, align: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!173, !158, !299, !178}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !167, file: !4, line: 155, baseType: !301, size: 64, align: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!299, !158}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !160, file: !4, line: 103, baseType: !58, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !160, file: !4, line: 104, baseType: !306, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !307, line: 77, baseType: !308)
!307 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !307, line: 77, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !160, file: !4, line: 105, baseType: !306, size: 64, align: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !160, file: !4, line: 106, baseType: !58, size: 64, align: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !160, file: !4, line: 107, baseType: !267, size: 32, align: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !160, file: !4, line: 109, baseType: !174, size: 64, align: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !160, file: !4, line: 110, baseType: !315, size: 64, align: 64, offset: 512)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !317, line: 39, baseType: !318)
!317 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !317, line: 41, size: 192, align: 64, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !318, file: !317, line: 43, baseType: !58, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !318, file: !317, line: 44, baseType: !174, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !318, file: !317, line: 45, baseType: !174, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !160, file: !4, line: 111, baseType: !315, size: 64, align: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !160, file: !4, line: 112, baseType: !315, size: 64, align: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !160, file: !4, line: 113, baseType: !326, size: 48, align: 8, offset: 704)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 48, align: 8, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 6)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !160, file: !4, line: 117, baseType: !267, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !160, file: !4, line: 118, baseType: !267, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !160, file: !4, line: 119, baseType: !267, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !160, file: !4, line: 120, baseType: !267, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !160, file: !4, line: 121, baseType: !267, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !160, file: !4, line: 122, baseType: !267, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !160, file: !4, line: 124, baseType: !215, size: 64, align: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !160, file: !4, line: 125, baseType: !215, size: 64, align: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !93, file: !96, line: 38, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !93, file: !96, line: 39, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !93, file: !96, line: 40, baseType: !141, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !93, file: !96, line: 41, baseType: !141, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !93, file: !96, line: 42, baseType: !141, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !93, file: !96, line: 43, baseType: !141, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !93, file: !96, line: 44, baseType: !141, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !93, file: !96, line: 45, baseType: !141, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !93, file: !96, line: 46, baseType: !100, size: 64, align: 64, offset: 1792)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !93, file: !96, line: 47, baseType: !100, size: 64, align: 64, offset: 1856)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !93, file: !84, line: 27, baseType: !100, size: 64, align: 64, offset: 1920)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !93, file: !84, line: 28, baseType: !100, size: 64, align: 64, offset: 1984)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !93, file: !84, line: 30, baseType: !71, size: 32, align: 32, offset: 2048)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !93, file: !84, line: 31, baseType: !100, size: 64, align: 64, offset: 2112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !93, file: !84, line: 32, baseType: !100, size: 64, align: 64, offset: 2176)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !93, file: !84, line: 34, baseType: !71, size: 32, align: 32, offset: 2240)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !93, file: !84, line: 35, baseType: !71, size: 32, align: 32, offset: 2272)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !93, file: !84, line: 36, baseType: !71, size: 32, align: 32, offset: 2304)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2336)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2400)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2432)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !83, file: !87, line: 9, baseType: !74, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !83, file: !87, line: 10, baseType: !74, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !83, file: !87, line: 12, baseType: !100, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !83, file: !87, line: 13, baseType: !100, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !83, file: !87, line: 15, baseType: !141, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !83, file: !87, line: 16, baseType: !141, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !83, file: !87, line: 17, baseType: !141, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !83, file: !87, line: 18, baseType: !141, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !83, file: !87, line: 19, baseType: !141, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !83, file: !87, line: 21, baseType: !369, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !114, line: 102, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !372, line: 7, size: 384, align: 64, elements: !373)
!372 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = !{!374, !375, !379, !380, !381, !382, !383, !384}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !371, file: !372, line: 8, baseType: !158, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !371, file: !372, line: 9, baseType: !376, size: 64, align: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !114, line: 101, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !114, line: 101, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !371, file: !372, line: 11, baseType: !71, size: 32, align: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !371, file: !372, line: 12, baseType: !71, size: 32, align: 32, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !371, file: !372, line: 13, baseType: !71, size: 32, align: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !371, file: !372, line: 14, baseType: !100, size: 64, align: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !371, file: !372, line: 15, baseType: !71, size: 32, align: 32, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !371, file: !372, line: 16, baseType: !141, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !83, file: !87, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !83, file: !87, line: 25, baseType: !387, size: 128, align: 64, offset: 640)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, align: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !83, file: !87, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !83, file: !87, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !83, file: !87, line: 29, baseType: !393, size: 64, align: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !114, line: 103, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !114, line: 103, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !83, file: !87, line: 30, baseType: !397, size: 64, align: 64, offset: 896)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !399, line: 37, baseType: !400)
!399 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !399, line: 37, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !83, file: !87, line: 32, baseType: !100, size: 64, align: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !83, file: !87, line: 33, baseType: !100, size: 64, align: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !83, file: !87, line: 34, baseType: !100, size: 64, align: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !83, file: !87, line: 35, baseType: !141, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !83, file: !87, line: 36, baseType: !141, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !83, file: !87, line: 37, baseType: !141, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !83, file: !87, line: 38, baseType: !141, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !83, file: !87, line: 40, baseType: !409, size: 128, align: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !60, line: 504, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !60, line: 506, size: 128, align: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !410, file: !60, line: 508, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !60, line: 48, baseType: !78)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !410, file: !60, line: 509, baseType: !413, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !83, file: !87, line: 41, baseType: !74, size: 64, align: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !83, file: !87, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !83, file: !87, line: 44, baseType: !276, size: 64, align: 64, offset: 1472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !83, file: !87, line: 45, baseType: !276, size: 64, align: 64, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !83, file: !87, line: 53, baseType: !420, size: 64, align: 64, offset: 1600)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !423, !62, !71}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !114, line: 107, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !426, line: 30, size: 2240, align: 64, elements: !427)
!426 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!427 = !{!428, !429, !430, !431, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !507, !511, !515, !519, !524, !601, !608, !612}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !87, line: 3, baseType: !71, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !425, file: !87, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !425, file: !87, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !425, file: !87, line: 8, baseType: !432, size: 64, align: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !114, line: 113, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !426, line: 25, size: 1920, align: 64, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !96, line: 3, baseType: !71, size: 32, align: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !434, file: !96, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !434, file: !96, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !434, file: !96, line: 9, baseType: !100, size: 64, align: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !434, file: !96, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !434, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !434, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !434, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !434, file: !96, line: 13, baseType: !106, size: 16, align: 16, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !434, file: !96, line: 14, baseType: !100, size: 64, align: 64, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !434, file: !96, line: 15, baseType: !100, size: 64, align: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !434, file: !96, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !434, file: !96, line: 17, baseType: !100, size: 64, align: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !434, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !434, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !434, file: !96, line: 21, baseType: !100, size: 64, align: 64, offset: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !434, file: !96, line: 22, baseType: !100, size: 64, align: 64, offset: 960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !434, file: !96, line: 23, baseType: !100, size: 64, align: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !434, file: !96, line: 24, baseType: !100, size: 64, align: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !434, file: !96, line: 26, baseType: !100, size: 64, align: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !434, file: !96, line: 27, baseType: !100, size: 64, align: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !434, file: !96, line: 28, baseType: !100, size: 64, align: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !434, file: !96, line: 29, baseType: !100, size: 64, align: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !434, file: !96, line: 30, baseType: !100, size: 64, align: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !434, file: !96, line: 31, baseType: !100, size: 64, align: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !434, file: !96, line: 32, baseType: !100, size: 64, align: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !434, file: !96, line: 33, baseType: !100, size: 64, align: 64, offset: 1600)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !434, file: !96, line: 35, baseType: !158, size: 64, align: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !434, file: !96, line: 38, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !434, file: !96, line: 39, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !434, file: !96, line: 40, baseType: !141, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !434, file: !96, line: 41, baseType: !141, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !434, file: !96, line: 42, baseType: !141, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !434, file: !96, line: 43, baseType: !141, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !434, file: !96, line: 44, baseType: !141, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !434, file: !96, line: 45, baseType: !141, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !434, file: !96, line: 46, baseType: !100, size: 64, align: 64, offset: 1792)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !434, file: !96, line: 47, baseType: !100, size: 64, align: 64, offset: 1856)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !425, file: !87, line: 9, baseType: !74, size: 64, align: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !425, file: !87, line: 10, baseType: !74, size: 64, align: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !425, file: !87, line: 12, baseType: !100, size: 64, align: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !425, file: !87, line: 13, baseType: !100, size: 64, align: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !425, file: !87, line: 15, baseType: !141, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !425, file: !87, line: 16, baseType: !141, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !425, file: !87, line: 17, baseType: !141, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !425, file: !87, line: 18, baseType: !141, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !425, file: !87, line: 19, baseType: !141, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !425, file: !87, line: 21, baseType: !369, size: 64, align: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !425, file: !87, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !425, file: !87, line: 25, baseType: !387, size: 128, align: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !425, file: !87, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !425, file: !87, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !425, file: !87, line: 29, baseType: !393, size: 64, align: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !425, file: !87, line: 30, baseType: !397, size: 64, align: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !425, file: !87, line: 32, baseType: !100, size: 64, align: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !425, file: !87, line: 33, baseType: !100, size: 64, align: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !425, file: !87, line: 34, baseType: !100, size: 64, align: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !425, file: !87, line: 35, baseType: !141, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !425, file: !87, line: 36, baseType: !141, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !425, file: !87, line: 37, baseType: !141, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !425, file: !87, line: 38, baseType: !141, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !425, file: !87, line: 40, baseType: !409, size: 128, align: 64, offset: 1216)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !425, file: !87, line: 41, baseType: !74, size: 64, align: 64, offset: 1344)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !425, file: !87, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !425, file: !87, line: 44, baseType: !276, size: 64, align: 64, offset: 1472)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !425, file: !87, line: 45, baseType: !276, size: 64, align: 64, offset: 1536)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !425, file: !87, line: 53, baseType: !420, size: 64, align: 64, offset: 1600)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !425, file: !87, line: 55, baseType: !504, size: 64, align: 64, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!71, !423, !61}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !425, file: !87, line: 57, baseType: !508, size: 64, align: 64, offset: 1728)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!71, !423, !62}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !425, file: !87, line: 60, baseType: !512, size: 64, align: 64, offset: 1792)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!62, !423}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !425, file: !87, line: 62, baseType: !516, size: 64, align: 64, offset: 1856)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !423, !62, !62, !71}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !425, file: !87, line: 65, baseType: !520, size: 64, align: 64, offset: 1920)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !423, !62, !62}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !425, file: !87, line: 69, baseType: !525, size: 64, align: 64, offset: 1984)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !423, !62}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !114, line: 109, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !531, line: 15, size: 1408, align: 64, elements: !532)
!531 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = !{!533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !551, !555, !557, !558, !559, !560, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !534, line: 3, baseType: !71, size: 32, align: 32)
!534 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !530, file: !534, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !530, file: !534, line: 5, baseType: !397, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !530, file: !534, line: 7, baseType: !57, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !530, file: !534, line: 8, baseType: !423, size: 64, align: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !530, file: !534, line: 9, baseType: !100, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !534, line: 10, baseType: !100, size: 64, align: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !530, file: !534, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !530, file: !534, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !530, file: !534, line: 13, baseType: !100, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !530, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !114, line: 108, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !114, line: 108, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !530, file: !534, line: 17, baseType: !552, size: 64, align: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!62, !548}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !530, file: !556, line: 5, baseType: !100, size: 64, align: 64, offset: 704)
!556 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!557 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !530, file: !556, line: 6, baseType: !100, size: 64, align: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !530, file: !556, line: 7, baseType: !74, size: 64, align: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !530, file: !556, line: 9, baseType: !397, size: 64, align: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !530, file: !556, line: 10, baseType: !561, size: 64, align: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !114, line: 111, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !564, line: 13, size: 576, align: 64, elements: !565)
!564 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!565 = !{!566, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !582, !583}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !567, line: 3, baseType: !71, size: 32, align: 32)
!567 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !563, file: !567, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !563, file: !567, line: 6, baseType: !74, size: 64, align: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !563, file: !567, line: 8, baseType: !100, size: 64, align: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !563, file: !567, line: 9, baseType: !100, size: 64, align: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !563, file: !567, line: 10, baseType: !100, size: 64, align: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !563, file: !567, line: 11, baseType: !71, size: 32, align: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !563, file: !567, line: 14, baseType: !141, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !563, file: !567, line: 15, baseType: !141, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !563, file: !567, line: 18, baseType: !141, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !563, file: !567, line: 19, baseType: !141, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !563, file: !567, line: 20, baseType: !141, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !563, file: !567, line: 21, baseType: !141, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !563, file: !567, line: 22, baseType: !581, size: 64, align: 8, offset: 360)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, align: 8, elements: !136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !563, file: !567, line: 26, baseType: !57, size: 64, align: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !567, line: 28, baseType: !561, size: 64, align: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !530, file: !556, line: 12, baseType: !141, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !530, file: !556, line: 13, baseType: !100, size: 64, align: 64, offset: 1088)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !530, file: !556, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !556, line: 15, baseType: !100, size: 64, align: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !530, file: !556, line: 17, baseType: !141, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !530, file: !556, line: 18, baseType: !141, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !530, file: !556, line: 19, baseType: !141, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !530, file: !556, line: 20, baseType: !141, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !530, file: !556, line: 22, baseType: !141, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !530, file: !556, line: 23, baseType: !141, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !530, file: !556, line: 24, baseType: !141, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !530, file: !556, line: 25, baseType: !141, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !530, file: !556, line: 26, baseType: !141, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !530, file: !556, line: 31, baseType: !598, size: 64, align: 64, offset: 1344)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!100, !528}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !425, file: !87, line: 70, baseType: !602, size: 64, align: 64, offset: 2048)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !423, !62}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !114, line: 110, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !114, line: 110, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !425, file: !87, line: 71, baseType: !609, size: 64, align: 64, offset: 2112)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!71, !62, !62}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !425, file: !87, line: 73, baseType: !609, size: 64, align: 64, offset: 2176)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !83, file: !87, line: 55, baseType: !504, size: 64, align: 64, offset: 1664)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !83, file: !87, line: 57, baseType: !508, size: 64, align: 64, offset: 1728)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !83, file: !87, line: 60, baseType: !512, size: 64, align: 64, offset: 1792)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !83, file: !87, line: 62, baseType: !516, size: 64, align: 64, offset: 1856)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !83, file: !87, line: 65, baseType: !520, size: 64, align: 64, offset: 1920)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !83, file: !87, line: 69, baseType: !525, size: 64, align: 64, offset: 1984)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !83, file: !87, line: 70, baseType: !602, size: 64, align: 64, offset: 2048)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !83, file: !87, line: 71, baseType: !609, size: 64, align: 64, offset: 2112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !83, file: !87, line: 73, baseType: !609, size: 64, align: 64, offset: 2176)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !83, file: !84, line: 46, baseType: !276, size: 64, align: 64, offset: 2240)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !83, file: !84, line: 47, baseType: !276, size: 64, align: 64, offset: 2304)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !83, file: !84, line: 48, baseType: !625, size: 64, align: 64, offset: 2368)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !82, line: 8, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !82, line: 8, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !83, file: !84, line: 49, baseType: !276, size: 64, align: 64, offset: 2432)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !83, file: !84, line: 51, baseType: !100, size: 64, align: 64, offset: 2496)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !83, file: !84, line: 53, baseType: !100, size: 64, align: 64, offset: 2560)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !83, file: !84, line: 54, baseType: !100, size: 64, align: 64, offset: 2624)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !83, file: !84, line: 55, baseType: !100, size: 64, align: 64, offset: 2688)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !83, file: !84, line: 56, baseType: !100, size: 64, align: 64, offset: 2752)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !83, file: !84, line: 57, baseType: !71, size: 32, align: 32, offset: 2816)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !83, file: !84, line: 59, baseType: !141, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !83, file: !84, line: 60, baseType: !141, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !83, file: !84, line: 62, baseType: !141, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !83, file: !84, line: 63, baseType: !141, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !83, file: !84, line: 64, baseType: !141, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !83, file: !84, line: 65, baseType: !141, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !83, file: !84, line: 66, baseType: !141, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !83, file: !84, line: 67, baseType: !141, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !83, file: !84, line: 68, baseType: !141, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !83, file: !84, line: 69, baseType: !141, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !83, file: !84, line: 70, baseType: !141, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !83, file: !84, line: 71, baseType: !141, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !83, file: !84, line: 72, baseType: !141, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !83, file: !84, line: 74, baseType: !71, size: 32, align: 32, offset: 2880)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !83, file: !84, line: 75, baseType: !71, size: 32, align: 32, offset: 2912)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !83, file: !84, line: 76, baseType: !71, size: 32, align: 32, offset: 2944)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !83, file: !84, line: 77, baseType: !71, size: 32, align: 32, offset: 2976)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !83, file: !84, line: 79, baseType: !397, size: 64, align: 64, offset: 3008)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !83, file: !84, line: 80, baseType: !276, size: 64, align: 64, offset: 3072)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !83, file: !84, line: 81, baseType: !276, size: 64, align: 64, offset: 3136)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !83, file: !84, line: 83, baseType: !315, size: 64, align: 64, offset: 3200)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !83, file: !84, line: 84, baseType: !267, size: 32, align: 32, offset: 3264)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !83, file: !84, line: 87, baseType: !71, size: 32, align: 32, offset: 3296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !83, file: !84, line: 91, baseType: !276, size: 64, align: 64, offset: 3328)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !83, file: !84, line: 92, baseType: !409, size: 128, align: 64, offset: 3392)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !83, file: !84, line: 93, baseType: !409, size: 128, align: 64, offset: 3520)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !83, file: !84, line: 95, baseType: !71, size: 32, align: 32, offset: 3648)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !83, file: !84, line: 96, baseType: !71, size: 32, align: 32, offset: 3680)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !83, file: !84, line: 97, baseType: !71, size: 32, align: 32, offset: 3712)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !83, file: !84, line: 100, baseType: !276, size: 64, align: 64, offset: 3776)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !83, file: !84, line: 103, baseType: !276, size: 64, align: 64, offset: 3840)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !83, file: !84, line: 106, baseType: !276, size: 64, align: 64, offset: 3904)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !83, file: !84, line: 108, baseType: !397, size: 64, align: 64, offset: 3968)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !83, file: !84, line: 109, baseType: !276, size: 64, align: 64, offset: 4032)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !83, file: !84, line: 111, baseType: !276, size: 64, align: 64, offset: 4096)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !83, file: !84, line: 114, baseType: !57, size: 64, align: 64, offset: 4160)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !83, file: !84, line: 116, baseType: !397, size: 64, align: 64, offset: 4224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !83, file: !84, line: 117, baseType: !673, size: 32768, align: 64, offset: 4288)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 32768, align: 64, elements: !723)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !675, line: 10, size: 128, align: 64, elements: !676)
!675 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!676 = !{!677, !722}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !674, file: !675, line: 11, baseType: !678, size: 64, align: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !675, line: 7, baseType: !680)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682, !62, !61, !61, !100, !315}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64, align: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !82, line: 7, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !685, line: 15, size: 1600, align: 64, elements: !686)
!685 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !534, line: 3, baseType: !71, size: 32, align: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !684, file: !534, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !684, file: !534, line: 5, baseType: !397, size: 64, align: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !684, file: !534, line: 7, baseType: !57, size: 64, align: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !684, file: !534, line: 8, baseType: !80, size: 64, align: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !684, file: !534, line: 9, baseType: !100, size: 64, align: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !684, file: !534, line: 10, baseType: !100, size: 64, align: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !684, file: !534, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !684, file: !534, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !684, file: !534, line: 13, baseType: !100, size: 64, align: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !684, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !684, file: !534, line: 17, baseType: !552, size: 64, align: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !684, file: !556, line: 5, baseType: !100, size: 64, align: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !684, file: !556, line: 6, baseType: !100, size: 64, align: 64, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !684, file: !556, line: 7, baseType: !74, size: 64, align: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !684, file: !556, line: 9, baseType: !397, size: 64, align: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !684, file: !556, line: 10, baseType: !561, size: 64, align: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !684, file: !556, line: 12, baseType: !141, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !684, file: !556, line: 13, baseType: !100, size: 64, align: 64, offset: 1088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !684, file: !556, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !684, file: !556, line: 15, baseType: !100, size: 64, align: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !684, file: !556, line: 17, baseType: !141, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !684, file: !556, line: 18, baseType: !141, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !684, file: !556, line: 19, baseType: !141, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !684, file: !556, line: 20, baseType: !141, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !684, file: !556, line: 22, baseType: !141, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !684, file: !556, line: 23, baseType: !141, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !684, file: !556, line: 24, baseType: !141, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !684, file: !556, line: 25, baseType: !141, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !684, file: !556, line: 26, baseType: !141, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !684, file: !556, line: 31, baseType: !598, size: 64, align: 64, offset: 1344)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !684, file: !685, line: 18, baseType: !276, size: 64, align: 64, offset: 1408)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !684, file: !685, line: 20, baseType: !74, size: 64, align: 64, offset: 1472)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !684, file: !685, line: 21, baseType: !71, size: 32, align: 32, offset: 1536)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !684, file: !685, line: 22, baseType: !71, size: 32, align: 32, offset: 1568)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !674, file: !675, line: 12, baseType: !61, size: 8, align: 8, offset: 64)
!723 = !{!724}
!724 = !DISubrange(count: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !83, file: !84, line: 118, baseType: !726, size: 2048, align: 8, offset: 37056)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, align: 8, elements: !723)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !83, file: !84, line: 120, baseType: !609, size: 64, align: 64, offset: 39104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !67, file: !70, line: 6, baseType: !100, size: 64, align: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !67, file: !70, line: 7, baseType: !100, size: 64, align: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !67, file: !70, line: 8, baseType: !100, size: 64, align: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !67, file: !70, line: 10, baseType: !732, size: 64, align: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !734, line: 9, baseType: !735)
!734 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !736, line: 12, size: 1792, align: 64, elements: !737)
!736 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !753, !754, !755, !756, !757, !758, !759, !761, !762, !763, !764, !765, !766, !767}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !70, line: 1, baseType: !71, size: 32, align: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !735, file: !70, line: 2, baseType: !71, size: 32, align: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !735, file: !70, line: 3, baseType: !74, size: 64, align: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !735, file: !70, line: 5, baseType: !80, size: 64, align: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !735, file: !70, line: 6, baseType: !100, size: 64, align: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !735, file: !70, line: 7, baseType: !100, size: 64, align: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !735, file: !70, line: 8, baseType: !100, size: 64, align: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !735, file: !70, line: 10, baseType: !732, size: 64, align: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !735, file: !70, line: 11, baseType: !100, size: 64, align: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !735, file: !70, line: 12, baseType: !100, size: 64, align: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !735, file: !70, line: 14, baseType: !113, size: 160, align: 32, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !735, file: !70, line: 15, baseType: !750, size: 368, align: 8, offset: 736)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 368, align: 8, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 46)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !735, file: !70, line: 16, baseType: !71, size: 32, align: 32, offset: 1120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !735, file: !70, line: 18, baseType: !158, size: 64, align: 64, offset: 1152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !735, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1216)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !735, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1248)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !735, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !735, file: !70, line: 20, baseType: !74, size: 64, align: 64, offset: 1344)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !735, file: !70, line: 21, baseType: !760, size: 64, align: 64, offset: 1408)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !114, line: 49, baseType: !176)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !735, file: !70, line: 23, baseType: !71, size: 32, align: 32, offset: 1472)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !735, file: !70, line: 25, baseType: !141, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !735, file: !70, line: 27, baseType: !397, size: 64, align: 64, offset: 1536)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !735, file: !736, line: 15, baseType: !100, size: 64, align: 64, offset: 1600)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !735, file: !736, line: 16, baseType: !369, size: 64, align: 64, offset: 1664)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !735, file: !736, line: 18, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !735, file: !736, line: 19, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !67, file: !70, line: 11, baseType: !100, size: 64, align: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !67, file: !70, line: 12, baseType: !100, size: 64, align: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !67, file: !70, line: 14, baseType: !113, size: 160, align: 32, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !67, file: !70, line: 15, baseType: !750, size: 368, align: 8, offset: 736)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !67, file: !70, line: 16, baseType: !71, size: 32, align: 32, offset: 1120)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !67, file: !70, line: 18, baseType: !158, size: 64, align: 64, offset: 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !67, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1216)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !67, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1248)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !67, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1280)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !67, file: !70, line: 20, baseType: !74, size: 64, align: 64, offset: 1344)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !67, file: !70, line: 21, baseType: !760, size: 64, align: 64, offset: 1408)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !67, file: !70, line: 23, baseType: !71, size: 32, align: 32, offset: 1472)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !67, file: !70, line: 25, baseType: !141, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !67, file: !70, line: 27, baseType: !397, size: 64, align: 64, offset: 1536)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !67, file: !66, line: 14, baseType: !369, size: 64, align: 64, offset: 1600)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "accept_send", scope: !67, file: !66, line: 16, baseType: !141, size: 1, align: 32, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "accept_chat", scope: !67, file: !66, line: 17, baseType: !141, size: 1, align: 32, offset: 1665, flags: DIFlagBitField, extraData: i64 1664)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "accept_fserve", scope: !67, file: !66, line: 18, baseType: !141, size: 1, align: 32, offset: 1666, flags: DIFlagBitField, extraData: i64 1664)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "connection_established", scope: !67, file: !66, line: 19, baseType: !141, size: 1, align: 32, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !788, line: 9, baseType: !789)
!788 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64, align: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !792, !792, !792, !792, !792, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !114, line: 60, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !57, !158, !71}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !734, line: 13, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !734, line: 11, size: 1600, align: 64, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !70, line: 1, baseType: !71, size: 32, align: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !800, file: !70, line: 2, baseType: !71, size: 32, align: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !800, file: !70, line: 3, baseType: !74, size: 64, align: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !800, file: !70, line: 5, baseType: !80, size: 64, align: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !800, file: !70, line: 6, baseType: !100, size: 64, align: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !800, file: !70, line: 7, baseType: !100, size: 64, align: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !800, file: !70, line: 8, baseType: !100, size: 64, align: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !800, file: !70, line: 10, baseType: !732, size: 64, align: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !800, file: !70, line: 11, baseType: !100, size: 64, align: 64, offset: 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !800, file: !70, line: 12, baseType: !100, size: 64, align: 64, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !800, file: !70, line: 14, baseType: !113, size: 160, align: 32, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !800, file: !70, line: 15, baseType: !750, size: 368, align: 8, offset: 736)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !800, file: !70, line: 16, baseType: !71, size: 32, align: 32, offset: 1120)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !800, file: !70, line: 18, baseType: !158, size: 64, align: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !800, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !800, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1248)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !800, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !800, file: !70, line: 20, baseType: !74, size: 64, align: 64, offset: 1344)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !800, file: !70, line: 21, baseType: !760, size: 64, align: 64, offset: 1408)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !800, file: !70, line: 23, baseType: !71, size: 32, align: 32, offset: 1472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !800, file: !70, line: 25, baseType: !141, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !800, file: !70, line: 27, baseType: !397, size: 64, align: 64, offset: 1536)
!824 = !{i32 2, !"Dwarf Version", i32 4}
!825 = !{i32 2, !"Debug Info Version", i32 3}
!826 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!827 = distinct !DISubprogram(name: "dcc_server_find_port", scope: !828, file: !828, line: 294, type: !829, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!828 = !DIFile(filename: "dcc-server.c", directory: "/home/lichi/Desktop/irssi/task1")
!829 = !DISubroutineType(types: !830)
!830 = !{!64, !62}
!831 = !{}
!832 = !DILocalVariable(name: "port_str", arg: 1, scope: !827, file: !828, line: 294, type: !62)
!833 = !DIExpression()
!834 = !DILocation(line: 294, column: 50, scope: !827)
!835 = !DILocalVariable(name: "tmp", scope: !827, file: !828, line: 296, type: !276)
!836 = !DILocation(line: 296, column: 10, scope: !827)
!837 = !DILocalVariable(name: "port", scope: !827, file: !828, line: 297, type: !141)
!838 = !DILocation(line: 297, column: 15, scope: !827)
!839 = !DILocation(line: 299, column: 2, scope: !827)
!840 = distinct !{!840, !839}
!841 = !DILocation(line: 299, column: 10, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !828, discriminator: 1)
!843 = distinct !DILexicalBlock(scope: !844, file: !828, line: 299, column: 10)
!844 = distinct !DILexicalBlock(scope: !827, file: !828, line: 299, column: 4)
!845 = !DILocation(line: 299, column: 19, scope: !842)
!846 = !DILocation(line: 299, column: 5, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !828, discriminator: 2)
!848 = distinct !DILexicalBlock(scope: !843, file: !828, line: 299, column: 3)
!849 = !DILocation(line: 299, column: 14, scope: !850)
!850 = !DILexicalBlockFile(scope: !851, file: !828, discriminator: 3)
!851 = distinct !DILexicalBlock(scope: !843, file: !828, line: 299, column: 12)
!852 = !DILocation(line: 299, column: 103, scope: !850)
!853 = !DILocation(line: 299, column: 7, scope: !854)
!854 = !DILexicalBlockFile(scope: !844, file: !828, discriminator: 4)
!855 = !DILocation(line: 301, column: 14, scope: !827)
!856 = !DILocation(line: 301, column: 9, scope: !827)
!857 = !DILocation(line: 301, column: 7, scope: !827)
!858 = !DILocation(line: 303, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !827, file: !828, line: 303, column: 2)
!860 = !DILocation(line: 303, column: 11, scope: !859)
!861 = !DILocation(line: 303, column: 7, scope: !859)
!862 = !DILocation(line: 303, column: 24, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !828, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !859, file: !828, line: 303, column: 2)
!865 = !DILocation(line: 303, column: 28, scope: !863)
!866 = !DILocation(line: 303, column: 2, scope: !863)
!867 = !DILocalVariable(name: "dcc", scope: !868, file: !828, line: 304, type: !64)
!868 = distinct !DILexicalBlock(scope: !864, file: !828, line: 303, column: 53)
!869 = !DILocation(line: 304, column: 19, scope: !868)
!870 = !DILocation(line: 304, column: 25, scope: !868)
!871 = !DILocation(line: 304, column: 30, scope: !868)
!872 = !DILocation(line: 306, column: 53, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !828, line: 306, column: 7)
!874 = !DILocation(line: 306, column: 28, scope: !873)
!875 = !DILocation(line: 306, column: 9, scope: !873)
!876 = !DILocation(line: 306, column: 42, scope: !873)
!877 = !DILocation(line: 306, column: 8, scope: !878)
!878 = !DILexicalBlockFile(scope: !873, file: !828, discriminator: 1)
!879 = !DILocation(line: 306, column: 42, scope: !880)
!880 = !DILexicalBlockFile(scope: !873, file: !828, discriminator: 2)
!881 = !DILocation(line: 306, column: 45, scope: !882)
!882 = !DILexicalBlockFile(scope: !873, file: !828, discriminator: 3)
!883 = !DILocation(line: 306, column: 50, scope: !882)
!884 = !DILocation(line: 306, column: 58, scope: !882)
!885 = !DILocation(line: 306, column: 55, scope: !882)
!886 = !DILocation(line: 306, column: 7, scope: !882)
!887 = !DILocation(line: 307, column: 11, scope: !873)
!888 = !DILocation(line: 307, column: 4, scope: !873)
!889 = !DILocation(line: 308, column: 2, scope: !868)
!890 = !DILocation(line: 303, column: 42, scope: !891)
!891 = !DILexicalBlockFile(scope: !864, file: !828, discriminator: 2)
!892 = !DILocation(line: 303, column: 47, scope: !891)
!893 = !DILocation(line: 303, column: 40, scope: !891)
!894 = !DILocation(line: 303, column: 2, scope: !891)
!895 = distinct !{!895, !896}
!896 = !DILocation(line: 303, column: 2, scope: !827)
!897 = !DILocation(line: 310, column: 2, scope: !827)
!898 = !DILocation(line: 311, column: 1, scope: !827)
!899 = distinct !DISubprogram(name: "dcc_server_init", scope: !828, file: !828, line: 396, type: !264, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!900 = !DILocation(line: 398, column: 2, scope: !899)
!901 = !DILocation(line: 399, column: 2, scope: !899)
!902 = !DILocation(line: 400, column: 2, scope: !899)
!903 = !DILocation(line: 401, column: 2, scope: !899)
!904 = !DILocation(line: 402, column: 2, scope: !899)
!905 = !DILocation(line: 403, column: 1, scope: !899)
!906 = distinct !DISubprogram(name: "cmd_dcc_server", scope: !828, file: !828, line: 314, type: !907, isLocal: true, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !62, !80}
!909 = !DILocalVariable(name: "data", arg: 1, scope: !906, file: !828, line: 314, type: !62)
!910 = !DILocation(line: 314, column: 40, scope: !906)
!911 = !DILocalVariable(name: "server", arg: 2, scope: !906, file: !828, line: 314, type: !80)
!912 = !DILocation(line: 314, column: 62, scope: !906)
!913 = !DILocalVariable(name: "free_arg", scope: !906, file: !828, line: 316, type: !57)
!914 = !DILocation(line: 316, column: 8, scope: !906)
!915 = !DILocalVariable(name: "handle", scope: !906, file: !828, line: 317, type: !158)
!916 = !DILocation(line: 317, column: 14, scope: !906)
!917 = !DILocalVariable(name: "dcc", scope: !906, file: !828, line: 318, type: !64)
!918 = !DILocation(line: 318, column: 18, scope: !906)
!919 = !DILocalVariable(name: "own_ip", scope: !906, file: !828, line: 319, type: !113)
!920 = !DILocation(line: 319, column: 9, scope: !906)
!921 = !DILocalVariable(name: "flags", scope: !906, file: !828, line: 320, type: !100)
!922 = !DILocation(line: 320, column: 8, scope: !906)
!923 = !DILocalVariable(name: "port", scope: !906, file: !828, line: 320, type: !100)
!924 = !DILocation(line: 320, column: 16, scope: !906)
!925 = !DILocation(line: 322, column: 2, scope: !906)
!926 = distinct !{!926, !925}
!927 = !DILocation(line: 322, column: 10, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !828, discriminator: 1)
!929 = distinct !DILexicalBlock(scope: !930, file: !828, line: 322, column: 10)
!930 = distinct !DILexicalBlock(scope: !906, file: !828, line: 322, column: 4)
!931 = !DILocation(line: 322, column: 15, scope: !928)
!932 = !DILocation(line: 322, column: 5, scope: !933)
!933 = !DILexicalBlockFile(scope: !934, file: !828, discriminator: 2)
!934 = distinct !DILexicalBlock(scope: !929, file: !828, line: 322, column: 3)
!935 = !DILocation(line: 322, column: 14, scope: !936)
!936 = !DILexicalBlockFile(scope: !937, file: !828, discriminator: 3)
!937 = distinct !DILexicalBlock(scope: !929, file: !828, line: 322, column: 12)
!938 = !DILocation(line: 322, column: 99, scope: !936)
!939 = !DILocation(line: 322, column: 110, scope: !940)
!940 = !DILexicalBlockFile(scope: !930, file: !828, discriminator: 4)
!941 = !DILocation(line: 324, column: 22, scope: !942)
!942 = distinct !DILexicalBlock(scope: !906, file: !828, line: 324, column: 6)
!943 = !DILocation(line: 324, column: 7, scope: !942)
!944 = !DILocation(line: 324, column: 6, scope: !906)
!945 = !DILocation(line: 325, column: 3, scope: !942)
!946 = !DILocation(line: 327, column: 29, scope: !906)
!947 = !DILocation(line: 327, column: 8, scope: !906)
!948 = !DILocation(line: 327, column: 6, scope: !906)
!949 = !DILocation(line: 328, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !906, file: !828, line: 328, column: 6)
!951 = !DILocation(line: 328, column: 10, scope: !950)
!952 = !DILocation(line: 328, column: 6, scope: !906)
!953 = !DILocation(line: 330, column: 27, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !828, line: 328, column: 18)
!955 = !DILocation(line: 330, column: 32, scope: !954)
!956 = !DILocation(line: 330, column: 3, scope: !954)
!957 = !DILocation(line: 331, column: 19, scope: !954)
!958 = !DILocation(line: 331, column: 3, scope: !954)
!959 = !DILocation(line: 332, column: 3, scope: !954)
!960 = !DILocation(line: 336, column: 87, scope: !961)
!961 = distinct !DILexicalBlock(scope: !906, file: !828, line: 336, column: 6)
!962 = !DILocation(line: 336, column: 69, scope: !961)
!963 = !DILocation(line: 336, column: 54, scope: !961)
!964 = !DILocation(line: 336, column: 53, scope: !961)
!965 = !DILocation(line: 336, column: 28, scope: !966)
!966 = !DILexicalBlockFile(scope: !961, file: !828, discriminator: 4)
!967 = !DILocation(line: 336, column: 9, scope: !961)
!968 = !DILocation(line: 336, column: 32, scope: !961)
!969 = !DILocation(line: 336, column: 8, scope: !970)
!970 = !DILexicalBlockFile(scope: !961, file: !828, discriminator: 1)
!971 = !DILocation(line: 336, column: 32, scope: !972)
!972 = !DILexicalBlockFile(scope: !961, file: !828, discriminator: 2)
!973 = !DILocation(line: 336, column: 36, scope: !974)
!974 = !DILexicalBlockFile(scope: !961, file: !828, discriminator: 3)
!975 = !DILocation(line: 336, column: 44, scope: !974)
!976 = !DILocation(line: 336, column: 6, scope: !974)
!977 = !DILocation(line: 337, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !961, file: !828, line: 336, column: 55)
!979 = distinct !{!979, !977}
!980 = !DILocation(line: 337, column: 24, scope: !981)
!981 = !DILexicalBlockFile(scope: !982, file: !828, discriminator: 1)
!982 = distinct !DILexicalBlock(scope: !978, file: !828, line: 337, column: 6)
!983 = !DILocation(line: 337, column: 8, scope: !981)
!984 = !DILocation(line: 337, column: 35, scope: !981)
!985 = distinct !{!985, !986}
!986 = !DILocation(line: 337, column: 35, scope: !982)
!987 = !DILocation(line: 337, column: 40, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !828, discriminator: 2)
!989 = distinct !DILexicalBlock(scope: !982, file: !828, line: 337, column: 38)
!990 = !DILocation(line: 337, column: 118, scope: !991)
!991 = !DILexicalBlockFile(scope: !988, file: !828, discriminator: 4)
!992 = !DILocation(line: 337, column: 133, scope: !988)
!993 = !DILocation(line: 337, column: 154, scope: !994)
!994 = !DILexicalBlockFile(scope: !982, file: !828, discriminator: 3)
!995 = !DILocation(line: 338, column: 2, scope: !978)
!996 = !DILocation(line: 340, column: 49, scope: !906)
!997 = !DILocation(line: 340, column: 57, scope: !906)
!998 = !DILocation(line: 340, column: 27, scope: !906)
!999 = !DILocation(line: 341, column: 20, scope: !906)
!1000 = !DILocation(line: 341, column: 15, scope: !906)
!1001 = !DILocation(line: 340, column: 11, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !906, file: !828, discriminator: 1)
!1003 = !DILocation(line: 340, column: 9, scope: !906)
!1004 = !DILocation(line: 343, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !906, file: !828, line: 343, column: 6)
!1006 = !DILocation(line: 343, column: 13, scope: !1005)
!1007 = !DILocation(line: 343, column: 6, scope: !906)
!1008 = !DILocation(line: 344, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !828, line: 343, column: 21)
!1010 = distinct !{!1010, !1008}
!1011 = !DILocation(line: 344, column: 24, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !828, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !828, line: 344, column: 6)
!1014 = !DILocation(line: 344, column: 8, scope: !1012)
!1015 = !DILocation(line: 344, column: 35, scope: !1012)
!1016 = distinct !{!1016, !1017}
!1017 = !DILocation(line: 344, column: 35, scope: !1013)
!1018 = !DILocation(line: 344, column: 40, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1020, file: !828, discriminator: 2)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !828, line: 344, column: 38)
!1021 = !DILocation(line: 344, column: 110, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1019, file: !828, discriminator: 4)
!1023 = !DILocation(line: 344, column: 125, scope: !1019)
!1024 = !DILocation(line: 344, column: 146, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1013, file: !828, discriminator: 3)
!1026 = !DILocation(line: 345, column: 2, scope: !1009)
!1027 = !DILocation(line: 347, column: 26, scope: !906)
!1028 = !DILocation(line: 347, column: 34, scope: !906)
!1029 = !DILocation(line: 347, column: 8, scope: !906)
!1030 = !DILocation(line: 347, column: 6, scope: !906)
!1031 = !DILocation(line: 348, column: 16, scope: !906)
!1032 = !DILocation(line: 348, column: 2, scope: !906)
!1033 = !DILocation(line: 348, column: 7, scope: !906)
!1034 = !DILocation(line: 348, column: 14, scope: !906)
!1035 = !DILocation(line: 349, column: 19, scope: !906)
!1036 = !DILocation(line: 349, column: 14, scope: !906)
!1037 = !DILocation(line: 349, column: 2, scope: !906)
!1038 = !DILocation(line: 349, column: 7, scope: !906)
!1039 = !DILocation(line: 349, column: 12, scope: !906)
!1040 = !DILocation(line: 350, column: 29, scope: !906)
!1041 = !DILocation(line: 350, column: 34, scope: !906)
!1042 = !DILocation(line: 351, column: 44, scope: !906)
!1043 = !DILocation(line: 350, column: 17, scope: !906)
!1044 = !DILocation(line: 350, column: 2, scope: !906)
!1045 = !DILocation(line: 350, column: 7, scope: !906)
!1046 = !DILocation(line: 350, column: 15, scope: !906)
!1047 = !DILocation(line: 353, column: 39, scope: !906)
!1048 = !DILocation(line: 353, column: 2, scope: !906)
!1049 = !DILocation(line: 355, column: 18, scope: !906)
!1050 = !DILocation(line: 355, column: 2, scope: !906)
!1051 = !DILocation(line: 356, column: 1, scope: !906)
!1052 = !DILocation(line: 356, column: 1, scope: !1002)
!1053 = distinct !DISubprogram(name: "cmd_dcc_close", scope: !828, file: !828, line: 359, type: !1054, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !100, !423}
!1056 = !DILocalVariable(name: "data", arg: 1, scope: !1053, file: !828, line: 359, type: !100)
!1057 = !DILocation(line: 359, column: 33, scope: !1053)
!1058 = !DILocalVariable(name: "server", arg: 2, scope: !1053, file: !828, line: 359, type: !423)
!1059 = !DILocation(line: 359, column: 51, scope: !1053)
!1060 = !DILocalVariable(name: "tmp", scope: !1053, file: !828, line: 361, type: !276)
!1061 = !DILocation(line: 361, column: 10, scope: !1053)
!1062 = !DILocalVariable(name: "next", scope: !1053, file: !828, line: 361, type: !276)
!1063 = !DILocation(line: 361, column: 16, scope: !1053)
!1064 = !DILocalVariable(name: "port_str", scope: !1053, file: !828, line: 362, type: !100)
!1065 = !DILocation(line: 362, column: 8, scope: !1053)
!1066 = !DILocalVariable(name: "free_arg", scope: !1053, file: !828, line: 363, type: !57)
!1067 = !DILocation(line: 363, column: 8, scope: !1053)
!1068 = !DILocalVariable(name: "found", scope: !1053, file: !828, line: 364, type: !71)
!1069 = !DILocation(line: 364, column: 6, scope: !1053)
!1070 = !DILocalVariable(name: "port", scope: !1053, file: !828, line: 364, type: !71)
!1071 = !DILocation(line: 364, column: 13, scope: !1053)
!1072 = !DILocation(line: 366, column: 2, scope: !1053)
!1073 = distinct !{!1073, !1072}
!1074 = !DILocation(line: 366, column: 10, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1076, file: !828, discriminator: 1)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !828, line: 366, column: 10)
!1077 = distinct !DILexicalBlock(scope: !1053, file: !828, line: 366, column: 4)
!1078 = !DILocation(line: 366, column: 15, scope: !1075)
!1079 = !DILocation(line: 366, column: 5, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !828, discriminator: 2)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !828, line: 366, column: 3)
!1082 = !DILocation(line: 366, column: 14, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1084, file: !828, discriminator: 3)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !828, line: 366, column: 12)
!1085 = !DILocation(line: 366, column: 99, scope: !1083)
!1086 = !DILocation(line: 366, column: 110, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1077, file: !828, discriminator: 4)
!1088 = !DILocation(line: 368, column: 26, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1053, file: !828, line: 368, column: 6)
!1090 = !DILocation(line: 368, column: 6, scope: !1089)
!1091 = !DILocation(line: 368, column: 46, scope: !1089)
!1092 = !DILocation(line: 368, column: 51, scope: !1089)
!1093 = !DILocation(line: 369, column: 22, scope: !1089)
!1094 = !DILocation(line: 369, column: 7, scope: !1089)
!1095 = !DILocation(line: 368, column: 6, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1053, file: !828, discriminator: 1)
!1097 = !DILocation(line: 370, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1089, file: !828, line: 369, column: 59)
!1099 = !DILocation(line: 373, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1053, file: !828, line: 373, column: 6)
!1101 = !DILocation(line: 373, column: 6, scope: !1100)
!1102 = !DILocation(line: 373, column: 16, scope: !1100)
!1103 = !DILocation(line: 373, column: 6, scope: !1053)
!1104 = !DILocation(line: 374, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !828, line: 373, column: 25)
!1106 = distinct !{!1106, !1104}
!1107 = !DILocation(line: 374, column: 24, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !828, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !828, line: 374, column: 6)
!1110 = !DILocation(line: 374, column: 8, scope: !1108)
!1111 = !DILocation(line: 374, column: 35, scope: !1108)
!1112 = distinct !{!1112, !1113}
!1113 = !DILocation(line: 374, column: 35, scope: !1109)
!1114 = !DILocation(line: 374, column: 40, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !828, discriminator: 2)
!1116 = distinct !DILexicalBlock(scope: !1109, file: !828, line: 374, column: 38)
!1117 = !DILocation(line: 374, column: 122, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1115, file: !828, discriminator: 4)
!1119 = !DILocation(line: 374, column: 137, scope: !1115)
!1120 = !DILocation(line: 374, column: 158, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1109, file: !828, discriminator: 3)
!1122 = !DILocation(line: 375, column: 2, scope: !1105)
!1123 = !DILocation(line: 377, column: 14, scope: !1053)
!1124 = !DILocation(line: 377, column: 9, scope: !1053)
!1125 = !DILocation(line: 377, column: 7, scope: !1053)
!1126 = !DILocation(line: 378, column: 8, scope: !1053)
!1127 = !DILocation(line: 379, column: 13, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1053, file: !828, line: 379, column: 2)
!1129 = !DILocation(line: 379, column: 11, scope: !1128)
!1130 = !DILocation(line: 379, column: 7, scope: !1128)
!1131 = !DILocation(line: 379, column: 24, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !828, discriminator: 1)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !828, line: 379, column: 2)
!1134 = !DILocation(line: 379, column: 28, scope: !1132)
!1135 = !DILocation(line: 379, column: 2, scope: !1132)
!1136 = !DILocalVariable(name: "dcc", scope: !1137, file: !828, line: 380, type: !64)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !828, line: 379, column: 48)
!1138 = !DILocation(line: 380, column: 19, scope: !1137)
!1139 = !DILocation(line: 380, column: 25, scope: !1137)
!1140 = !DILocation(line: 380, column: 30, scope: !1137)
!1141 = !DILocation(line: 382, column: 10, scope: !1137)
!1142 = !DILocation(line: 382, column: 15, scope: !1137)
!1143 = !DILocation(line: 382, column: 8, scope: !1137)
!1144 = !DILocation(line: 383, column: 53, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !828, line: 383, column: 7)
!1146 = !DILocation(line: 383, column: 28, scope: !1145)
!1147 = !DILocation(line: 383, column: 9, scope: !1145)
!1148 = !DILocation(line: 383, column: 42, scope: !1145)
!1149 = !DILocation(line: 383, column: 8, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1145, file: !828, discriminator: 1)
!1151 = !DILocation(line: 383, column: 42, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1145, file: !828, discriminator: 2)
!1153 = !DILocation(line: 383, column: 45, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1145, file: !828, discriminator: 3)
!1155 = !DILocation(line: 383, column: 50, scope: !1154)
!1156 = !DILocation(line: 383, column: 58, scope: !1154)
!1157 = !DILocation(line: 383, column: 55, scope: !1154)
!1158 = !DILocation(line: 383, column: 7, scope: !1154)
!1159 = !DILocation(line: 384, column: 10, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1145, file: !828, line: 383, column: 64)
!1161 = !DILocation(line: 385, column: 28, scope: !1160)
!1162 = !DILocation(line: 385, column: 15, scope: !1160)
!1163 = !DILocation(line: 385, column: 4, scope: !1160)
!1164 = !DILocation(line: 386, column: 3, scope: !1160)
!1165 = !DILocation(line: 387, column: 2, scope: !1137)
!1166 = !DILocation(line: 379, column: 42, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1133, file: !828, discriminator: 2)
!1168 = !DILocation(line: 379, column: 40, scope: !1167)
!1169 = !DILocation(line: 379, column: 2, scope: !1167)
!1170 = distinct !{!1170, !1171}
!1171 = !DILocation(line: 379, column: 2, scope: !1053)
!1172 = !DILocation(line: 389, column: 6, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1053, file: !828, line: 389, column: 6)
!1174 = !DILocation(line: 389, column: 6, scope: !1053)
!1175 = !DILocation(line: 390, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !828, line: 389, column: 13)
!1177 = !DILocation(line: 391, column: 2, scope: !1176)
!1178 = !DILocation(line: 393, column: 18, scope: !1053)
!1179 = !DILocation(line: 393, column: 2, scope: !1053)
!1180 = !DILocation(line: 394, column: 1, scope: !1053)
!1181 = !DILocation(line: 394, column: 1, scope: !1096)
!1182 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !828, file: !828, line: 42, type: !1183, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !64}
!1185 = !DILocalVariable(name: "dcc", arg: 1, scope: !1182, file: !828, line: 42, type: !64)
!1186 = !DILocation(line: 42, column: 47, scope: !1182)
!1187 = !DILocation(line: 44, column: 53, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !828, line: 44, column: 6)
!1189 = !DILocation(line: 44, column: 28, scope: !1188)
!1190 = !DILocation(line: 44, column: 9, scope: !1188)
!1191 = !DILocation(line: 44, column: 6, scope: !1182)
!1192 = !DILocation(line: 44, column: 8, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1188, file: !828, discriminator: 1)
!1194 = !DILocation(line: 44, column: 6, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1182, file: !828, discriminator: 2)
!1196 = !DILocation(line: 45, column: 3, scope: !1188)
!1197 = !DILocation(line: 47, column: 6, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1182, file: !828, line: 47, column: 6)
!1199 = !DILocation(line: 47, column: 11, scope: !1198)
!1200 = !DILocation(line: 47, column: 19, scope: !1198)
!1201 = !DILocation(line: 47, column: 6, scope: !1182)
!1202 = !DILocation(line: 48, column: 26, scope: !1198)
!1203 = !DILocation(line: 48, column: 31, scope: !1198)
!1204 = !DILocation(line: 48, column: 3, scope: !1198)
!1205 = !DILocation(line: 49, column: 1, scope: !1182)
!1206 = distinct !DISubprogram(name: "dcc_server_msg", scope: !828, file: !828, line: 193, type: !1207, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !64, !62}
!1209 = !DILocalVariable(name: "dcc", arg: 1, scope: !1206, file: !828, line: 193, type: !64)
!1210 = !DILocation(line: 193, column: 44, scope: !1206)
!1211 = !DILocalVariable(name: "msg", arg: 2, scope: !1206, file: !828, line: 193, type: !62)
!1212 = !DILocation(line: 193, column: 61, scope: !1206)
!1213 = !DILocation(line: 195, column: 2, scope: !1206)
!1214 = distinct !{!1214, !1213}
!1215 = !DILocation(line: 195, column: 56, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1217, file: !828, discriminator: 1)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !828, line: 195, column: 10)
!1218 = distinct !DILexicalBlock(scope: !1206, file: !828, line: 195, column: 4)
!1219 = !DILocation(line: 195, column: 31, scope: !1216)
!1220 = !DILocation(line: 195, column: 12, scope: !1216)
!1221 = !DILocation(line: 195, column: 10, scope: !1216)
!1222 = !DILocation(line: 195, column: 11, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1217, file: !828, discriminator: 2)
!1224 = !DILocation(line: 195, column: 10, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1218, file: !828, discriminator: 3)
!1226 = !DILocation(line: 195, column: 40, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1228, file: !828, discriminator: 4)
!1228 = distinct !DILexicalBlock(scope: !1217, file: !828, line: 195, column: 38)
!1229 = !DILocation(line: 195, column: 49, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1231, file: !828, discriminator: 5)
!1231 = distinct !DILexicalBlock(scope: !1217, file: !828, line: 195, column: 47)
!1232 = !DILocation(line: 195, column: 140, scope: !1230)
!1233 = !DILocation(line: 195, column: 151, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1218, file: !828, discriminator: 6)
!1235 = !DILocation(line: 196, column: 2, scope: !1206)
!1236 = distinct !{!1236, !1235}
!1237 = !DILocation(line: 196, column: 10, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !828, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !828, line: 196, column: 10)
!1240 = distinct !DILexicalBlock(scope: !1206, file: !828, line: 196, column: 4)
!1241 = !DILocation(line: 196, column: 14, scope: !1238)
!1242 = !DILocation(line: 196, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !828, discriminator: 2)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !828, line: 196, column: 3)
!1245 = !DILocation(line: 196, column: 14, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !828, discriminator: 3)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !828, line: 196, column: 12)
!1248 = !DILocation(line: 196, column: 98, scope: !1246)
!1249 = !DILocation(line: 196, column: 109, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1240, file: !828, discriminator: 4)
!1251 = !DILocation(line: 199, column: 26, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1206, file: !828, line: 199, column: 6)
!1253 = !DILocation(line: 199, column: 6, scope: !1252)
!1254 = !DILocation(line: 199, column: 42, scope: !1252)
!1255 = !DILocation(line: 199, column: 6, scope: !1206)
!1256 = !DILocation(line: 200, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !828, line: 199, column: 48)
!1258 = !DILocation(line: 202, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !828, line: 202, column: 7)
!1260 = !DILocation(line: 202, column: 12, scope: !1259)
!1261 = !DILocation(line: 202, column: 7, scope: !1257)
!1262 = !DILocalVariable(name: "str", scope: !1263, file: !828, line: 204, type: !100)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !828, line: 202, column: 25)
!1264 = !DILocation(line: 204, column: 10, scope: !1263)
!1265 = !DILocalVariable(name: "dccchat", scope: !1263, file: !828, line: 205, type: !732)
!1266 = !DILocation(line: 205, column: 18, scope: !1263)
!1267 = !DILocation(line: 205, column: 44, scope: !1263)
!1268 = !DILocation(line: 205, column: 49, scope: !1263)
!1269 = !DILocation(line: 205, column: 62, scope: !1263)
!1270 = !DILocation(line: 205, column: 28, scope: !1263)
!1271 = !DILocation(line: 207, column: 25, scope: !1263)
!1272 = !DILocation(line: 207, column: 4, scope: !1263)
!1273 = !DILocation(line: 207, column: 13, scope: !1263)
!1274 = !DILocation(line: 207, column: 23, scope: !1263)
!1275 = !DILocation(line: 208, column: 22, scope: !1263)
!1276 = !DILocation(line: 208, column: 27, scope: !1263)
!1277 = !DILocation(line: 208, column: 4, scope: !1263)
!1278 = !DILocation(line: 208, column: 13, scope: !1263)
!1279 = !DILocation(line: 208, column: 20, scope: !1263)
!1280 = !DILocation(line: 209, column: 45, scope: !1263)
!1281 = !DILocation(line: 209, column: 54, scope: !1263)
!1282 = !DILocation(line: 209, column: 23, scope: !1263)
!1283 = !DILocation(line: 209, column: 4, scope: !1263)
!1284 = !DILocation(line: 209, column: 13, scope: !1263)
!1285 = !DILocation(line: 209, column: 21, scope: !1263)
!1286 = !DILocation(line: 210, column: 12, scope: !1263)
!1287 = !DILocation(line: 210, column: 21, scope: !1263)
!1288 = !DILocation(line: 210, column: 4, scope: !1263)
!1289 = !DILocation(line: 210, column: 28, scope: !1263)
!1290 = !DILocation(line: 210, column: 33, scope: !1263)
!1291 = !DILocation(line: 211, column: 17, scope: !1263)
!1292 = !DILocation(line: 211, column: 26, scope: !1263)
!1293 = !DILocation(line: 211, column: 32, scope: !1263)
!1294 = !DILocation(line: 211, column: 41, scope: !1263)
!1295 = !DILocation(line: 211, column: 4, scope: !1263)
!1296 = !DILocation(line: 212, column: 20, scope: !1263)
!1297 = !DILocation(line: 212, column: 25, scope: !1263)
!1298 = !DILocation(line: 212, column: 4, scope: !1263)
!1299 = !DILocation(line: 212, column: 13, scope: !1263)
!1300 = !DILocation(line: 212, column: 18, scope: !1263)
!1301 = !DILocation(line: 213, column: 35, scope: !1263)
!1302 = !DILocation(line: 213, column: 44, scope: !1263)
!1303 = !DILocation(line: 214, column: 47, scope: !1263)
!1304 = !DILocation(line: 213, column: 23, scope: !1263)
!1305 = !DILocation(line: 213, column: 4, scope: !1263)
!1306 = !DILocation(line: 213, column: 13, scope: !1263)
!1307 = !DILocation(line: 213, column: 21, scope: !1263)
!1308 = !DILocation(line: 216, column: 4, scope: !1263)
!1309 = !DILocation(line: 216, column: 9, scope: !1263)
!1310 = !DILocation(line: 216, column: 32, scope: !1263)
!1311 = !DILocation(line: 217, column: 36, scope: !1263)
!1312 = !DILocation(line: 217, column: 4, scope: !1263)
!1313 = !DILocation(line: 220, column: 13, scope: !1263)
!1314 = !DILocation(line: 220, column: 22, scope: !1263)
!1315 = !DILocation(line: 220, column: 12, scope: !1263)
!1316 = !DILocation(line: 220, column: 32, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1263, file: !828, discriminator: 1)
!1318 = !DILocation(line: 220, column: 41, scope: !1317)
!1319 = !DILocation(line: 220, column: 49, scope: !1317)
!1320 = !DILocation(line: 220, column: 12, scope: !1317)
!1321 = !DILocation(line: 220, column: 12, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1263, file: !828, discriminator: 2)
!1323 = !DILocation(line: 220, column: 12, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1263, file: !828, discriminator: 3)
!1325 = !DILocation(line: 219, column: 10, scope: !1263)
!1326 = !DILocation(line: 219, column: 8, scope: !1263)
!1327 = !DILocation(line: 221, column: 24, scope: !1263)
!1328 = !DILocation(line: 221, column: 33, scope: !1263)
!1329 = !DILocation(line: 221, column: 42, scope: !1263)
!1330 = !DILocation(line: 221, column: 54, scope: !1263)
!1331 = !DILocation(line: 221, column: 47, scope: !1263)
!1332 = !DILocation(line: 221, column: 4, scope: !1317)
!1333 = !DILocation(line: 222, column: 11, scope: !1263)
!1334 = !DILocation(line: 222, column: 4, scope: !1263)
!1335 = !DILocation(line: 223, column: 3, scope: !1263)
!1336 = !DILocation(line: 224, column: 2, scope: !1257)
!1337 = !DILocation(line: 227, column: 26, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1206, file: !828, line: 227, column: 6)
!1339 = !DILocation(line: 227, column: 6, scope: !1338)
!1340 = !DILocation(line: 227, column: 42, scope: !1338)
!1341 = !DILocation(line: 227, column: 6, scope: !1206)
!1342 = !DILocation(line: 228, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !828, line: 227, column: 48)
!1344 = !DILocation(line: 230, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !828, line: 230, column: 7)
!1346 = !DILocation(line: 230, column: 12, scope: !1345)
!1347 = !DILocation(line: 230, column: 7, scope: !1343)
!1348 = !DILocation(line: 232, column: 3, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !828, line: 230, column: 27)
!1350 = !DILocation(line: 233, column: 2, scope: !1343)
!1351 = !DILocation(line: 236, column: 26, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1206, file: !828, line: 236, column: 6)
!1353 = !DILocation(line: 236, column: 6, scope: !1352)
!1354 = !DILocation(line: 236, column: 42, scope: !1352)
!1355 = !DILocation(line: 236, column: 6, scope: !1206)
!1356 = !DILocation(line: 237, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !828, line: 236, column: 48)
!1358 = !DILocation(line: 239, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !828, line: 239, column: 7)
!1360 = !DILocation(line: 239, column: 12, scope: !1359)
!1361 = !DILocation(line: 239, column: 7, scope: !1357)
!1362 = !DILocalVariable(name: "dccget", scope: !1363, file: !828, line: 241, type: !1364)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !828, line: 239, column: 25)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64, align: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GET_DCC_REC", file: !1366, line: 28, baseType: !1367)
!1366 = !DIFile(filename: "dcc-get.h", directory: "/home/lichi/Desktop/irssi/task1")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1366, line: 20, size: 2048, align: 64, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1393, !1394, !1395, !1396, !1398, !1399, !1400, !1401, !1402}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !70, line: 1, baseType: !71, size: 32, align: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !1367, file: !70, line: 2, baseType: !71, size: 32, align: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !1367, file: !70, line: 3, baseType: !74, size: 64, align: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1367, file: !70, line: 5, baseType: !80, size: 64, align: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1367, file: !70, line: 6, baseType: !100, size: 64, align: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !1367, file: !70, line: 7, baseType: !100, size: 64, align: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1367, file: !70, line: 8, baseType: !100, size: 64, align: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !1367, file: !70, line: 10, baseType: !732, size: 64, align: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1367, file: !70, line: 11, baseType: !100, size: 64, align: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1367, file: !70, line: 12, baseType: !100, size: 64, align: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1367, file: !70, line: 14, baseType: !113, size: 160, align: 32, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !1367, file: !70, line: 15, baseType: !750, size: 368, align: 8, offset: 736)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1367, file: !70, line: 16, baseType: !71, size: 32, align: 32, offset: 1120)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1367, file: !70, line: 18, baseType: !158, size: 64, align: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !1367, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !1367, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1248)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !1367, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1280)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !1367, file: !70, line: 20, baseType: !74, size: 64, align: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !1367, file: !70, line: 21, baseType: !760, size: 64, align: 64, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !1367, file: !70, line: 23, baseType: !71, size: 32, align: 32, offset: 1472)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !1367, file: !70, line: 25, baseType: !141, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1367, file: !70, line: 27, baseType: !397, size: 64, align: 64, offset: 1536)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1367, file: !1392, line: 3, baseType: !760, size: 64, align: 64, offset: 1600)
!1392 = !DIFile(filename: "dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !1367, file: !1392, line: 3, baseType: !760, size: 64, align: 64, offset: 1664)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !1367, file: !1392, line: 4, baseType: !71, size: 32, align: 32, offset: 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1367, file: !1392, line: 5, baseType: !71, size: 32, align: 32, offset: 1760)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !1367, file: !1392, line: 8, baseType: !1397, size: 32, align: 8, offset: 1792)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, align: 8, elements: !142)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !1367, file: !1392, line: 9, baseType: !71, size: 32, align: 32, offset: 1824)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !1367, file: !1366, line: 23, baseType: !71, size: 32, align: 32, offset: 1856)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1367, file: !1366, line: 24, baseType: !100, size: 64, align: 64, offset: 1920)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !1367, file: !1366, line: 26, baseType: !141, size: 1, align: 32, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "from_dccserver", scope: !1367, file: !1366, line: 27, baseType: !141, size: 1, align: 32, offset: 1985, flags: DIFlagBitField, extraData: i64 1984)
!1403 = !DILocation(line: 241, column: 17, scope: !1363)
!1404 = !DILocalVariable(name: "params", scope: !1363, file: !828, line: 242, type: !523)
!1405 = !DILocation(line: 242, column: 11, scope: !1363)
!1406 = !DILocalVariable(name: "fname", scope: !1363, file: !828, line: 242, type: !100)
!1407 = !DILocation(line: 242, column: 20, scope: !1363)
!1408 = !DILocalVariable(name: "nick", scope: !1363, file: !828, line: 242, type: !100)
!1409 = !DILocation(line: 242, column: 28, scope: !1363)
!1410 = !DILocalVariable(name: "paramcount", scope: !1363, file: !828, line: 243, type: !71)
!1411 = !DILocation(line: 243, column: 8, scope: !1363)
!1412 = !DILocalVariable(name: "len", scope: !1363, file: !828, line: 243, type: !71)
!1413 = !DILocation(line: 243, column: 20, scope: !1363)
!1414 = !DILocalVariable(name: "quoted", scope: !1363, file: !828, line: 243, type: !71)
!1415 = !DILocation(line: 243, column: 25, scope: !1363)
!1416 = !DILocalVariable(name: "size", scope: !1363, file: !828, line: 244, type: !760)
!1417 = !DILocation(line: 244, column: 11, scope: !1363)
!1418 = !DILocation(line: 247, column: 24, scope: !1363)
!1419 = !DILocation(line: 247, column: 13, scope: !1363)
!1420 = !DILocation(line: 247, column: 11, scope: !1363)
!1421 = !DILocation(line: 248, column: 31, scope: !1363)
!1422 = !DILocation(line: 248, column: 17, scope: !1363)
!1423 = !DILocation(line: 248, column: 15, scope: !1363)
!1424 = !DILocation(line: 250, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1363, file: !828, line: 250, column: 8)
!1426 = !DILocation(line: 250, column: 19, scope: !1425)
!1427 = !DILocation(line: 250, column: 8, scope: !1363)
!1428 = !DILocation(line: 251, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !828, line: 250, column: 24)
!1430 = !DILocation(line: 251, column: 5, scope: !1429)
!1431 = !DILocation(line: 252, column: 5, scope: !1429)
!1432 = !DILocation(line: 253, column: 5, scope: !1429)
!1433 = !DILocation(line: 256, column: 11, scope: !1363)
!1434 = !DILocation(line: 256, column: 9, scope: !1363)
!1435 = !DILocation(line: 257, column: 24, scope: !1363)
!1436 = !DILocation(line: 257, column: 11, scope: !1363)
!1437 = !DILocation(line: 257, column: 9, scope: !1363)
!1438 = !DILocation(line: 258, column: 29, scope: !1363)
!1439 = !DILocation(line: 258, column: 12, scope: !1363)
!1440 = !DILocation(line: 258, column: 10, scope: !1363)
!1441 = !DILocation(line: 260, column: 17, scope: !1363)
!1442 = !DILocation(line: 260, column: 10, scope: !1363)
!1443 = !DILocation(line: 260, column: 8, scope: !1363)
!1444 = !DILocation(line: 261, column: 8, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1363, file: !828, line: 261, column: 8)
!1446 = !DILocation(line: 261, column: 12, scope: !1445)
!1447 = !DILocation(line: 261, column: 16, scope: !1445)
!1448 = !DILocation(line: 261, column: 20, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1445, file: !828, discriminator: 1)
!1450 = !DILocation(line: 261, column: 19, scope: !1449)
!1451 = !DILocation(line: 261, column: 26, scope: !1449)
!1452 = !DILocation(line: 261, column: 33, scope: !1449)
!1453 = !DILocation(line: 261, column: 42, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1445, file: !828, discriminator: 2)
!1455 = !DILocation(line: 261, column: 45, scope: !1454)
!1456 = !DILocation(line: 261, column: 36, scope: !1454)
!1457 = !DILocation(line: 261, column: 49, scope: !1454)
!1458 = !DILocation(line: 261, column: 8, scope: !1454)
!1459 = !DILocation(line: 263, column: 11, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1445, file: !828, line: 261, column: 57)
!1461 = !DILocation(line: 263, column: 14, scope: !1460)
!1462 = !DILocation(line: 263, column: 5, scope: !1460)
!1463 = !DILocation(line: 263, column: 18, scope: !1460)
!1464 = !DILocation(line: 264, column: 5, scope: !1460)
!1465 = distinct !{!1465, !1464}
!1466 = !DILocation(line: 264, column: 20, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !828, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1460, file: !828, line: 264, column: 8)
!1469 = !DILocation(line: 264, column: 29, scope: !1467)
!1470 = !DILocation(line: 264, column: 34, scope: !1467)
!1471 = !DILocation(line: 264, column: 40, scope: !1467)
!1472 = !DILocation(line: 264, column: 39, scope: !1467)
!1473 = !DILocation(line: 264, column: 10, scope: !1467)
!1474 = !DILocation(line: 264, column: 47, scope: !1467)
!1475 = !DILocation(line: 265, column: 12, scope: !1460)
!1476 = !DILocation(line: 266, column: 4, scope: !1460)
!1477 = !DILocation(line: 268, column: 28, scope: !1363)
!1478 = !DILocation(line: 268, column: 33, scope: !1363)
!1479 = !DILocation(line: 268, column: 46, scope: !1363)
!1480 = !DILocation(line: 268, column: 52, scope: !1363)
!1481 = !DILocation(line: 268, column: 13, scope: !1363)
!1482 = !DILocation(line: 268, column: 11, scope: !1363)
!1483 = !DILocation(line: 269, column: 21, scope: !1363)
!1484 = !DILocation(line: 269, column: 26, scope: !1363)
!1485 = !DILocation(line: 269, column: 4, scope: !1363)
!1486 = !DILocation(line: 269, column: 12, scope: !1363)
!1487 = !DILocation(line: 269, column: 19, scope: !1363)
!1488 = !DILocation(line: 270, column: 30, scope: !1363)
!1489 = !DILocation(line: 270, column: 35, scope: !1363)
!1490 = !DILocation(line: 270, column: 44, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1363, file: !828, discriminator: 1)
!1492 = !DILocation(line: 270, column: 49, scope: !1491)
!1493 = !DILocation(line: 270, column: 57, scope: !1491)
!1494 = !DILocation(line: 270, column: 30, scope: !1491)
!1495 = !DILocation(line: 270, column: 30, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1363, file: !828, discriminator: 2)
!1497 = !DILocation(line: 270, column: 30, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1363, file: !828, discriminator: 3)
!1499 = !DILocation(line: 270, column: 21, scope: !1498)
!1500 = !DILocation(line: 270, column: 4, scope: !1498)
!1501 = !DILocation(line: 270, column: 12, scope: !1498)
!1502 = !DILocation(line: 270, column: 19, scope: !1498)
!1503 = !DILocation(line: 271, column: 12, scope: !1363)
!1504 = !DILocation(line: 271, column: 20, scope: !1363)
!1505 = !DILocation(line: 271, column: 4, scope: !1363)
!1506 = !DILocation(line: 271, column: 27, scope: !1363)
!1507 = !DILocation(line: 271, column: 32, scope: !1363)
!1508 = !DILocation(line: 272, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1363, file: !828, line: 272, column: 8)
!1510 = !DILocation(line: 272, column: 16, scope: !1509)
!1511 = !DILocation(line: 272, column: 21, scope: !1509)
!1512 = !DILocation(line: 272, column: 28, scope: !1509)
!1513 = !DILocation(line: 272, column: 8, scope: !1363)
!1514 = !DILocation(line: 273, column: 18, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !828, line: 272, column: 39)
!1516 = !DILocation(line: 273, column: 26, scope: !1515)
!1517 = !DILocation(line: 273, column: 32, scope: !1515)
!1518 = !DILocation(line: 273, column: 40, scope: !1515)
!1519 = !DILocation(line: 273, column: 5, scope: !1515)
!1520 = !DILocation(line: 274, column: 4, scope: !1515)
!1521 = !DILocation(line: 276, column: 12, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1509, file: !828, line: 274, column: 11)
!1523 = !DILocation(line: 276, column: 20, scope: !1522)
!1524 = !DILocation(line: 276, column: 5, scope: !1522)
!1525 = !DILocation(line: 276, column: 29, scope: !1522)
!1526 = !DILocation(line: 276, column: 34, scope: !1522)
!1527 = !DILocation(line: 278, column: 19, scope: !1363)
!1528 = !DILocation(line: 278, column: 24, scope: !1363)
!1529 = !DILocation(line: 278, column: 4, scope: !1363)
!1530 = !DILocation(line: 278, column: 12, scope: !1363)
!1531 = !DILocation(line: 278, column: 17, scope: !1363)
!1532 = !DILocation(line: 279, column: 19, scope: !1363)
!1533 = !DILocation(line: 279, column: 4, scope: !1363)
!1534 = !DILocation(line: 279, column: 12, scope: !1363)
!1535 = !DILocation(line: 279, column: 17, scope: !1363)
!1536 = !DILocation(line: 280, column: 26, scope: !1363)
!1537 = !DILocation(line: 280, column: 4, scope: !1363)
!1538 = !DILocation(line: 280, column: 12, scope: !1363)
!1539 = !DILocation(line: 280, column: 24, scope: !1363)
!1540 = !DILocation(line: 281, column: 4, scope: !1363)
!1541 = !DILocation(line: 281, column: 12, scope: !1363)
!1542 = !DILocation(line: 281, column: 27, scope: !1363)
!1543 = !DILocation(line: 283, column: 4, scope: !1363)
!1544 = !DILocation(line: 283, column: 9, scope: !1363)
!1545 = !DILocation(line: 283, column: 32, scope: !1363)
!1546 = !DILocation(line: 284, column: 34, scope: !1363)
!1547 = !DILocation(line: 284, column: 42, scope: !1363)
!1548 = !DILocation(line: 284, column: 50, scope: !1363)
!1549 = !DILocation(line: 284, column: 4, scope: !1363)
!1550 = !DILocation(line: 286, column: 15, scope: !1363)
!1551 = !DILocation(line: 286, column: 4, scope: !1363)
!1552 = !DILocation(line: 287, column: 11, scope: !1363)
!1553 = !DILocation(line: 287, column: 4, scope: !1363)
!1554 = !DILocation(line: 288, column: 3, scope: !1363)
!1555 = !DILocation(line: 289, column: 2, scope: !1357)
!1556 = !DILocation(line: 291, column: 2, scope: !1206)
!1557 = !DILocation(line: 292, column: 1, scope: !1206)
!1558 = !DILocation(line: 292, column: 1, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1206, file: !828, discriminator: 1)
!1560 = distinct !DISubprogram(name: "dcc_server_deinit", scope: !828, file: !828, line: 405, type: !264, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1561 = !DILocation(line: 407, column: 2, scope: !1560)
!1562 = !DILocation(line: 408, column: 2, scope: !1560)
!1563 = !DILocation(line: 409, column: 2, scope: !1560)
!1564 = !DILocation(line: 410, column: 2, scope: !1560)
!1565 = !DILocation(line: 411, column: 2, scope: !1560)
!1566 = !DILocation(line: 412, column: 1, scope: !1560)
!1567 = distinct !DISubprogram(name: "dcc_server_update_flags", scope: !828, file: !828, line: 95, type: !1207, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1568 = !DILocalVariable(name: "dcc", arg: 1, scope: !1567, file: !828, line: 95, type: !64)
!1569 = !DILocation(line: 95, column: 53, scope: !1567)
!1570 = !DILocalVariable(name: "flags", arg: 2, scope: !1567, file: !828, line: 95, type: !62)
!1571 = !DILocation(line: 95, column: 70, scope: !1567)
!1572 = !DILocation(line: 97, column: 2, scope: !1567)
!1573 = distinct !{!1573, !1572}
!1574 = !DILocation(line: 97, column: 10, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1576, file: !828, discriminator: 1)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !828, line: 97, column: 10)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !828, line: 97, column: 4)
!1578 = !DILocation(line: 97, column: 14, scope: !1575)
!1579 = !DILocation(line: 97, column: 5, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1581, file: !828, discriminator: 2)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !828, line: 97, column: 3)
!1582 = !DILocation(line: 97, column: 14, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !828, discriminator: 3)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !828, line: 97, column: 12)
!1585 = !DILocation(line: 97, column: 98, scope: !1583)
!1586 = !DILocation(line: 97, column: 109, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1577, file: !828, discriminator: 4)
!1588 = !DILocation(line: 98, column: 2, scope: !1567)
!1589 = distinct !{!1589, !1588}
!1590 = !DILocation(line: 98, column: 56, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1592, file: !828, discriminator: 1)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !828, line: 98, column: 10)
!1593 = distinct !DILexicalBlock(scope: !1567, file: !828, line: 98, column: 4)
!1594 = !DILocation(line: 98, column: 31, scope: !1591)
!1595 = !DILocation(line: 98, column: 12, scope: !1591)
!1596 = !DILocation(line: 98, column: 10, scope: !1591)
!1597 = !DILocation(line: 98, column: 11, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1592, file: !828, discriminator: 2)
!1599 = !DILocation(line: 98, column: 10, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1593, file: !828, discriminator: 3)
!1601 = !DILocation(line: 98, column: 40, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !828, discriminator: 4)
!1603 = distinct !DILexicalBlock(scope: !1592, file: !828, line: 98, column: 38)
!1604 = !DILocation(line: 98, column: 49, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1606, file: !828, discriminator: 5)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !828, line: 98, column: 47)
!1607 = !DILocation(line: 98, column: 140, scope: !1605)
!1608 = !DILocation(line: 98, column: 151, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1593, file: !828, discriminator: 6)
!1610 = !DILocation(line: 100, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1567, file: !828, line: 100, column: 6)
!1612 = !DILocation(line: 100, column: 6, scope: !1611)
!1613 = !DILocation(line: 100, column: 13, scope: !1611)
!1614 = !DILocation(line: 100, column: 20, scope: !1611)
!1615 = !DILocation(line: 100, column: 24, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1611, file: !828, discriminator: 1)
!1617 = !DILocation(line: 100, column: 23, scope: !1616)
!1618 = !DILocation(line: 100, column: 30, scope: !1616)
!1619 = !DILocation(line: 100, column: 6, scope: !1616)
!1620 = !DILocalVariable(name: "ptr", scope: !1621, file: !828, line: 101, type: !62)
!1621 = distinct !DILexicalBlock(scope: !1611, file: !828, line: 100, column: 38)
!1622 = !DILocation(line: 101, column: 15, scope: !1621)
!1623 = !DILocation(line: 101, column: 21, scope: !1621)
!1624 = !DILocation(line: 101, column: 27, scope: !1621)
!1625 = !DILocalVariable(name: "value", scope: !1621, file: !828, line: 102, type: !141)
!1626 = !DILocation(line: 102, column: 16, scope: !1621)
!1627 = !DILocation(line: 102, column: 26, scope: !1621)
!1628 = !DILocation(line: 102, column: 25, scope: !1621)
!1629 = !DILocation(line: 102, column: 32, scope: !1621)
!1630 = !DILocation(line: 102, column: 24, scope: !1621)
!1631 = !DILocation(line: 104, column: 3, scope: !1621)
!1632 = !DILocation(line: 104, column: 11, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1621, file: !828, discriminator: 1)
!1634 = !DILocation(line: 104, column: 10, scope: !1633)
!1635 = !DILocation(line: 104, column: 3, scope: !1633)
!1636 = !DILocation(line: 105, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !828, line: 105, column: 8)
!1638 = distinct !DILexicalBlock(scope: !1621, file: !828, line: 104, column: 16)
!1639 = !DILocation(line: 105, column: 8, scope: !1637)
!1640 = !DILocation(line: 105, column: 13, scope: !1637)
!1641 = !DILocation(line: 105, column: 20, scope: !1637)
!1642 = !DILocation(line: 105, column: 24, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1637, file: !828, discriminator: 1)
!1644 = !DILocation(line: 105, column: 23, scope: !1643)
!1645 = !DILocation(line: 105, column: 28, scope: !1643)
!1646 = !DILocation(line: 105, column: 8, scope: !1643)
!1647 = !DILocation(line: 105, column: 57, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !828, discriminator: 2)
!1649 = distinct !DILexicalBlock(scope: !1637, file: !828, line: 105, column: 36)
!1650 = !DILocation(line: 105, column: 38, scope: !1648)
!1651 = !DILocation(line: 105, column: 43, scope: !1648)
!1652 = !DILocation(line: 105, column: 55, scope: !1648)
!1653 = !DILocation(line: 105, column: 64, scope: !1648)
!1654 = !DILocation(line: 106, column: 14, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1637, file: !828, line: 106, column: 13)
!1656 = !DILocation(line: 106, column: 13, scope: !1655)
!1657 = !DILocation(line: 106, column: 18, scope: !1655)
!1658 = !DILocation(line: 106, column: 25, scope: !1655)
!1659 = !DILocation(line: 106, column: 29, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1655, file: !828, discriminator: 1)
!1661 = !DILocation(line: 106, column: 28, scope: !1660)
!1662 = !DILocation(line: 106, column: 33, scope: !1660)
!1663 = !DILocation(line: 106, column: 13, scope: !1660)
!1664 = !DILocation(line: 106, column: 62, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !828, discriminator: 2)
!1666 = distinct !DILexicalBlock(scope: !1655, file: !828, line: 106, column: 41)
!1667 = !DILocation(line: 106, column: 43, scope: !1665)
!1668 = !DILocation(line: 106, column: 48, scope: !1665)
!1669 = !DILocation(line: 106, column: 60, scope: !1665)
!1670 = !DILocation(line: 106, column: 69, scope: !1665)
!1671 = !DILocation(line: 107, column: 14, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1655, file: !828, line: 107, column: 13)
!1673 = !DILocation(line: 107, column: 13, scope: !1672)
!1674 = !DILocation(line: 107, column: 18, scope: !1672)
!1675 = !DILocation(line: 107, column: 25, scope: !1672)
!1676 = !DILocation(line: 107, column: 29, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !828, discriminator: 1)
!1678 = !DILocation(line: 107, column: 28, scope: !1677)
!1679 = !DILocation(line: 107, column: 33, scope: !1677)
!1680 = !DILocation(line: 107, column: 13, scope: !1677)
!1681 = !DILocation(line: 107, column: 64, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1683, file: !828, discriminator: 2)
!1683 = distinct !DILexicalBlock(scope: !1672, file: !828, line: 107, column: 41)
!1684 = !DILocation(line: 107, column: 43, scope: !1682)
!1685 = !DILocation(line: 107, column: 48, scope: !1682)
!1686 = !DILocation(line: 107, column: 62, scope: !1682)
!1687 = !DILocation(line: 107, column: 71, scope: !1682)
!1688 = !DILocation(line: 108, column: 7, scope: !1638)
!1689 = !DILocation(line: 104, column: 3, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1621, file: !828, discriminator: 2)
!1691 = distinct !{!1691, !1631}
!1692 = !DILocation(line: 110, column: 2, scope: !1621)
!1693 = !DILocation(line: 111, column: 1, scope: !1567)
!1694 = distinct !DISubprogram(name: "dcc_listen_port", scope: !828, file: !828, line: 52, type: !1695, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!158, !158, !112, !71}
!1697 = !DILocalVariable(name: "iface", arg: 1, scope: !1694, file: !828, line: 52, type: !158)
!1698 = !DILocation(line: 52, column: 48, scope: !1694)
!1699 = !DILocalVariable(name: "ip", arg: 2, scope: !1694, file: !828, line: 52, type: !112)
!1700 = !DILocation(line: 52, column: 63, scope: !1694)
!1701 = !DILocalVariable(name: "port", arg: 3, scope: !1694, file: !828, line: 52, type: !71)
!1702 = !DILocation(line: 52, column: 71, scope: !1694)
!1703 = !DILocation(line: 54, column: 22, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1694, file: !828, line: 54, column: 6)
!1705 = !DILocation(line: 54, column: 29, scope: !1704)
!1706 = !DILocation(line: 54, column: 6, scope: !1704)
!1707 = !DILocation(line: 54, column: 38, scope: !1704)
!1708 = !DILocation(line: 54, column: 6, scope: !1694)
!1709 = !DILocation(line: 55, column: 3, scope: !1704)
!1710 = !DILocation(line: 57, column: 8, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1694, file: !828, line: 57, column: 6)
!1712 = !DILocation(line: 57, column: 13, scope: !1711)
!1713 = !DILocation(line: 57, column: 7, scope: !1711)
!1714 = !DILocation(line: 57, column: 20, scope: !1711)
!1715 = !DILocation(line: 57, column: 6, scope: !1694)
!1716 = !DILocation(line: 58, column: 10, scope: !1711)
!1717 = !DILocation(line: 58, column: 3, scope: !1711)
!1718 = !DILocation(line: 60, column: 10, scope: !1711)
!1719 = !DILocation(line: 60, column: 3, scope: !1711)
!1720 = !DILocation(line: 61, column: 1, scope: !1694)
!1721 = distinct !DISubprogram(name: "dcc_server_create", scope: !828, file: !828, line: 134, type: !1722, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!64, !80, !62}
!1724 = !DILocalVariable(name: "server", arg: 1, scope: !1721, file: !828, line: 134, type: !80)
!1725 = !DILocation(line: 134, column: 58, scope: !1721)
!1726 = !DILocalVariable(name: "flags", arg: 2, scope: !1721, file: !828, line: 134, type: !62)
!1727 = !DILocation(line: 134, column: 78, scope: !1721)
!1728 = !DILocalVariable(name: "dcc", scope: !1721, file: !828, line: 136, type: !64)
!1729 = !DILocation(line: 136, column: 18, scope: !1721)
!1730 = !DILocation(line: 138, column: 28, scope: !1721)
!1731 = !DILocation(line: 138, column: 9, scope: !1721)
!1732 = !DILocation(line: 138, column: 6, scope: !1721)
!1733 = !DILocation(line: 139, column: 31, scope: !1721)
!1734 = !DILocation(line: 139, column: 19, scope: !1721)
!1735 = !DILocation(line: 139, column: 24, scope: !1721)
!1736 = !DILocation(line: 139, column: 29, scope: !1721)
!1737 = !DILocation(line: 139, column: 2, scope: !1721)
!1738 = !DILocation(line: 139, column: 7, scope: !1721)
!1739 = !DILocation(line: 139, column: 17, scope: !1721)
!1740 = !DILocation(line: 140, column: 26, scope: !1721)
!1741 = !DILocation(line: 140, column: 31, scope: !1721)
!1742 = !DILocation(line: 140, column: 2, scope: !1721)
!1743 = !DILocation(line: 142, column: 22, scope: !1721)
!1744 = !DILocation(line: 142, column: 27, scope: !1721)
!1745 = !DILocation(line: 142, column: 35, scope: !1721)
!1746 = !DILocation(line: 142, column: 40, scope: !1721)
!1747 = !DILocation(line: 142, column: 48, scope: !1721)
!1748 = !DILocation(line: 142, column: 53, scope: !1721)
!1749 = !DILocation(line: 142, column: 2, scope: !1721)
!1750 = !DILocation(line: 143, column: 9, scope: !1721)
!1751 = !DILocation(line: 143, column: 2, scope: !1721)
!1752 = distinct !DISubprogram(name: "dcc_server_listen", scope: !828, file: !828, line: 163, type: !1183, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1753 = !DILocalVariable(name: "dcc", arg: 1, scope: !1752, file: !828, line: 163, type: !64)
!1754 = !DILocation(line: 163, column: 47, scope: !1752)
!1755 = !DILocalVariable(name: "newdcc", scope: !1752, file: !828, line: 165, type: !64)
!1756 = !DILocation(line: 165, column: 18, scope: !1752)
!1757 = !DILocalVariable(name: "ip", scope: !1752, file: !828, line: 166, type: !113)
!1758 = !DILocation(line: 166, column: 9, scope: !1752)
!1759 = !DILocalVariable(name: "handle", scope: !1752, file: !828, line: 167, type: !158)
!1760 = !DILocation(line: 167, column: 14, scope: !1752)
!1761 = !DILocalVariable(name: "port", scope: !1752, file: !828, line: 168, type: !71)
!1762 = !DILocation(line: 168, column: 6, scope: !1752)
!1763 = !DILocation(line: 170, column: 2, scope: !1752)
!1764 = distinct !{!1764, !1763}
!1765 = !DILocation(line: 170, column: 56, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1767, file: !828, discriminator: 1)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !828, line: 170, column: 10)
!1768 = distinct !DILexicalBlock(scope: !1752, file: !828, line: 170, column: 4)
!1769 = !DILocation(line: 170, column: 31, scope: !1766)
!1770 = !DILocation(line: 170, column: 12, scope: !1766)
!1771 = !DILocation(line: 170, column: 10, scope: !1766)
!1772 = !DILocation(line: 170, column: 11, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1767, file: !828, discriminator: 2)
!1774 = !DILocation(line: 170, column: 10, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1768, file: !828, discriminator: 3)
!1776 = !DILocation(line: 170, column: 40, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1778, file: !828, discriminator: 4)
!1778 = distinct !DILexicalBlock(scope: !1767, file: !828, line: 170, column: 38)
!1779 = !DILocation(line: 170, column: 49, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1781, file: !828, discriminator: 5)
!1781 = distinct !DILexicalBlock(scope: !1767, file: !828, line: 170, column: 47)
!1782 = !DILocation(line: 170, column: 140, scope: !1780)
!1783 = !DILocation(line: 170, column: 151, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1768, file: !828, discriminator: 6)
!1785 = !DILocation(line: 173, column: 22, scope: !1752)
!1786 = !DILocation(line: 173, column: 27, scope: !1752)
!1787 = !DILocation(line: 173, column: 11, scope: !1752)
!1788 = !DILocation(line: 173, column: 9, scope: !1752)
!1789 = !DILocation(line: 174, column: 6, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1752, file: !828, line: 174, column: 6)
!1791 = !DILocation(line: 174, column: 13, scope: !1790)
!1792 = !DILocation(line: 174, column: 6, scope: !1752)
!1793 = !DILocation(line: 175, column: 3, scope: !1790)
!1794 = !DILocation(line: 178, column: 28, scope: !1752)
!1795 = !DILocation(line: 178, column: 11, scope: !1752)
!1796 = !DILocation(line: 178, column: 9, scope: !1752)
!1797 = !DILocation(line: 180, column: 22, scope: !1752)
!1798 = !DILocation(line: 180, column: 2, scope: !1752)
!1799 = !DILocation(line: 180, column: 10, scope: !1752)
!1800 = !DILocation(line: 180, column: 20, scope: !1752)
!1801 = !DILocation(line: 181, column: 19, scope: !1752)
!1802 = !DILocation(line: 181, column: 2, scope: !1752)
!1803 = !DILocation(line: 181, column: 10, scope: !1752)
!1804 = !DILocation(line: 181, column: 17, scope: !1752)
!1805 = !DILocation(line: 182, column: 42, scope: !1752)
!1806 = !DILocation(line: 182, column: 20, scope: !1752)
!1807 = !DILocation(line: 182, column: 2, scope: !1752)
!1808 = !DILocation(line: 182, column: 10, scope: !1752)
!1809 = !DILocation(line: 182, column: 18, scope: !1752)
!1810 = !DILocation(line: 183, column: 10, scope: !1752)
!1811 = !DILocation(line: 183, column: 18, scope: !1752)
!1812 = !DILocation(line: 183, column: 2, scope: !1752)
!1813 = !DILocation(line: 184, column: 15, scope: !1752)
!1814 = !DILocation(line: 184, column: 23, scope: !1752)
!1815 = !DILocation(line: 184, column: 29, scope: !1752)
!1816 = !DILocation(line: 184, column: 37, scope: !1752)
!1817 = !DILocation(line: 184, column: 2, scope: !1752)
!1818 = !DILocation(line: 185, column: 17, scope: !1752)
!1819 = !DILocation(line: 185, column: 2, scope: !1752)
!1820 = !DILocation(line: 185, column: 10, scope: !1752)
!1821 = !DILocation(line: 185, column: 15, scope: !1752)
!1822 = !DILocation(line: 186, column: 32, scope: !1752)
!1823 = !DILocation(line: 187, column: 46, scope: !1752)
!1824 = !DILocation(line: 186, column: 20, scope: !1752)
!1825 = !DILocation(line: 186, column: 2, scope: !1752)
!1826 = !DILocation(line: 186, column: 10, scope: !1752)
!1827 = !DILocation(line: 186, column: 18, scope: !1752)
!1828 = !DILocation(line: 189, column: 34, scope: !1752)
!1829 = !DILocation(line: 189, column: 2, scope: !1752)
!1830 = !DILocation(line: 190, column: 1, scope: !1752)
!1831 = !DILocation(line: 190, column: 1, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1752, file: !828, discriminator: 1)
!1833 = distinct !DISubprogram(name: "dcc_init_server_rec", scope: !828, file: !828, line: 114, type: !1834, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !64, !80, !62, !62}
!1836 = !DILocalVariable(name: "dcc", arg: 1, scope: !1833, file: !828, line: 114, type: !64)
!1837 = !DILocation(line: 114, column: 49, scope: !1833)
!1838 = !DILocalVariable(name: "server", arg: 2, scope: !1833, file: !828, line: 114, type: !80)
!1839 = !DILocation(line: 114, column: 70, scope: !1833)
!1840 = !DILocalVariable(name: "mynick", arg: 3, scope: !1833, file: !828, line: 115, type: !62)
!1841 = !DILocation(line: 115, column: 17, scope: !1833)
!1842 = !DILocalVariable(name: "servertag", arg: 4, scope: !1833, file: !828, line: 115, type: !62)
!1843 = !DILocation(line: 115, column: 37, scope: !1833)
!1844 = !DILocation(line: 117, column: 2, scope: !1833)
!1845 = distinct !{!1845, !1844}
!1846 = !DILocation(line: 117, column: 10, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1848, file: !828, discriminator: 1)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !828, line: 117, column: 10)
!1849 = distinct !DILexicalBlock(scope: !1833, file: !828, line: 117, column: 4)
!1850 = !DILocation(line: 117, column: 14, scope: !1847)
!1851 = !DILocation(line: 117, column: 5, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !828, discriminator: 2)
!1853 = distinct !DILexicalBlock(scope: !1848, file: !828, line: 117, column: 3)
!1854 = !DILocation(line: 117, column: 14, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !828, discriminator: 3)
!1856 = distinct !DILexicalBlock(scope: !1848, file: !828, line: 117, column: 12)
!1857 = !DILocation(line: 117, column: 98, scope: !1855)
!1858 = !DILocation(line: 117, column: 109, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1849, file: !828, discriminator: 4)
!1860 = !DILocation(line: 118, column: 2, scope: !1833)
!1861 = distinct !{!1861, !1860}
!1862 = !DILocation(line: 118, column: 56, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !828, discriminator: 1)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !828, line: 118, column: 10)
!1865 = distinct !DILexicalBlock(scope: !1833, file: !828, line: 118, column: 4)
!1866 = !DILocation(line: 118, column: 31, scope: !1863)
!1867 = !DILocation(line: 118, column: 12, scope: !1863)
!1868 = !DILocation(line: 118, column: 10, scope: !1863)
!1869 = !DILocation(line: 118, column: 11, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1864, file: !828, discriminator: 2)
!1871 = !DILocation(line: 118, column: 10, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1865, file: !828, discriminator: 3)
!1873 = !DILocation(line: 118, column: 40, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1875, file: !828, discriminator: 4)
!1875 = distinct !DILexicalBlock(scope: !1864, file: !828, line: 118, column: 38)
!1876 = !DILocation(line: 118, column: 49, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1878, file: !828, discriminator: 5)
!1878 = distinct !DILexicalBlock(scope: !1864, file: !828, line: 118, column: 47)
!1879 = !DILocation(line: 118, column: 140, scope: !1877)
!1880 = !DILocation(line: 118, column: 151, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1865, file: !828, discriminator: 6)
!1882 = !DILocation(line: 120, column: 23, scope: !1833)
!1883 = !DILocation(line: 120, column: 3, scope: !1833)
!1884 = !DILocation(line: 120, column: 9, scope: !1833)
!1885 = !DILocation(line: 120, column: 21, scope: !1833)
!1886 = !DILocation(line: 121, column: 17, scope: !1833)
!1887 = !DILocation(line: 121, column: 2, scope: !1833)
!1888 = !DILocation(line: 121, column: 7, scope: !1833)
!1889 = !DILocation(line: 121, column: 15, scope: !1833)
!1890 = !DILocation(line: 122, column: 2, scope: !1833)
!1891 = !DILocation(line: 122, column: 7, scope: !1833)
!1892 = !DILocation(line: 122, column: 12, scope: !1833)
!1893 = !DILocation(line: 123, column: 2, scope: !1833)
!1894 = !DILocation(line: 123, column: 7, scope: !1833)
!1895 = !DILocation(line: 123, column: 11, scope: !1833)
!1896 = !DILocation(line: 124, column: 2, scope: !1833)
!1897 = !DILocation(line: 124, column: 7, scope: !1833)
!1898 = !DILocation(line: 124, column: 12, scope: !1833)
!1899 = !DILocation(line: 125, column: 32, scope: !1833)
!1900 = !DILocation(line: 125, column: 37, scope: !1833)
!1901 = !DILocation(line: 125, column: 46, scope: !1833)
!1902 = !DILocation(line: 125, column: 17, scope: !1833)
!1903 = !DILocation(line: 125, column: 22, scope: !1833)
!1904 = !DILocation(line: 125, column: 30, scope: !1833)
!1905 = !DILocation(line: 125, column: 2, scope: !1833)
!1906 = !DILocation(line: 125, column: 7, scope: !1833)
!1907 = !DILocation(line: 125, column: 15, scope: !1833)
!1908 = !DILocation(line: 126, column: 16, scope: !1833)
!1909 = !DILocation(line: 126, column: 2, scope: !1833)
!1910 = !DILocation(line: 126, column: 7, scope: !1833)
!1911 = !DILocation(line: 126, column: 14, scope: !1833)
!1912 = !DILocation(line: 127, column: 25, scope: !1833)
!1913 = !DILocation(line: 127, column: 16, scope: !1833)
!1914 = !DILocation(line: 127, column: 2, scope: !1833)
!1915 = !DILocation(line: 127, column: 7, scope: !1833)
!1916 = !DILocation(line: 127, column: 14, scope: !1833)
!1917 = !DILocation(line: 128, column: 28, scope: !1833)
!1918 = !DILocation(line: 128, column: 19, scope: !1833)
!1919 = !DILocation(line: 128, column: 2, scope: !1833)
!1920 = !DILocation(line: 128, column: 7, scope: !1833)
!1921 = !DILocation(line: 128, column: 17, scope: !1833)
!1922 = !DILocation(line: 130, column: 29, scope: !1833)
!1923 = !DILocation(line: 130, column: 40, scope: !1833)
!1924 = !DILocation(line: 130, column: 14, scope: !1833)
!1925 = !DILocation(line: 130, column: 12, scope: !1833)
!1926 = !DILocation(line: 131, column: 32, scope: !1833)
!1927 = !DILocation(line: 131, column: 2, scope: !1833)
!1928 = !DILocation(line: 132, column: 1, scope: !1833)
!1929 = !DILocation(line: 132, column: 1, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1833, file: !828, discriminator: 1)
!1931 = distinct !DISubprogram(name: "dcc_server_clone", scope: !828, file: !828, line: 146, type: !1932, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!64, !64}
!1934 = !DILocalVariable(name: "dcc", arg: 1, scope: !1931, file: !828, line: 146, type: !64)
!1935 = !DILocation(line: 146, column: 57, scope: !1931)
!1936 = !DILocalVariable(name: "newdcc", scope: !1931, file: !828, line: 148, type: !64)
!1937 = !DILocation(line: 148, column: 18, scope: !1931)
!1938 = !DILocation(line: 150, column: 2, scope: !1931)
!1939 = distinct !{!1939, !1938}
!1940 = !DILocation(line: 150, column: 56, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1942, file: !828, discriminator: 1)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !828, line: 150, column: 10)
!1943 = distinct !DILexicalBlock(scope: !1931, file: !828, line: 150, column: 4)
!1944 = !DILocation(line: 150, column: 31, scope: !1941)
!1945 = !DILocation(line: 150, column: 12, scope: !1941)
!1946 = !DILocation(line: 150, column: 10, scope: !1941)
!1947 = !DILocation(line: 150, column: 11, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1942, file: !828, discriminator: 2)
!1949 = !DILocation(line: 150, column: 10, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1943, file: !828, discriminator: 3)
!1951 = !DILocation(line: 150, column: 40, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1953, file: !828, discriminator: 4)
!1953 = distinct !DILexicalBlock(scope: !1942, file: !828, line: 150, column: 38)
!1954 = !DILocation(line: 150, column: 49, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !828, discriminator: 5)
!1956 = distinct !DILexicalBlock(scope: !1942, file: !828, line: 150, column: 47)
!1957 = !DILocation(line: 150, column: 140, scope: !1955)
!1958 = !DILocation(line: 150, column: 7, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1943, file: !828, discriminator: 6)
!1960 = !DILocation(line: 152, column: 31, scope: !1931)
!1961 = !DILocation(line: 152, column: 12, scope: !1931)
!1962 = !DILocation(line: 152, column: 9, scope: !1931)
!1963 = !DILocation(line: 153, column: 37, scope: !1931)
!1964 = !DILocation(line: 153, column: 22, scope: !1931)
!1965 = !DILocation(line: 153, column: 30, scope: !1931)
!1966 = !DILocation(line: 153, column: 35, scope: !1931)
!1967 = !DILocation(line: 153, column: 2, scope: !1931)
!1968 = !DILocation(line: 153, column: 10, scope: !1931)
!1969 = !DILocation(line: 153, column: 20, scope: !1931)
!1970 = !DILocation(line: 154, column: 24, scope: !1931)
!1971 = !DILocation(line: 154, column: 29, scope: !1931)
!1972 = !DILocation(line: 154, column: 2, scope: !1931)
!1973 = !DILocation(line: 154, column: 10, scope: !1931)
!1974 = !DILocation(line: 154, column: 22, scope: !1931)
!1975 = !DILocation(line: 155, column: 24, scope: !1931)
!1976 = !DILocation(line: 155, column: 29, scope: !1931)
!1977 = !DILocation(line: 155, column: 2, scope: !1931)
!1978 = !DILocation(line: 155, column: 10, scope: !1931)
!1979 = !DILocation(line: 155, column: 22, scope: !1931)
!1980 = !DILocation(line: 156, column: 26, scope: !1931)
!1981 = !DILocation(line: 156, column: 31, scope: !1931)
!1982 = !DILocation(line: 156, column: 2, scope: !1931)
!1983 = !DILocation(line: 156, column: 10, scope: !1931)
!1984 = !DILocation(line: 156, column: 24, scope: !1931)
!1985 = !DILocation(line: 158, column: 22, scope: !1931)
!1986 = !DILocation(line: 158, column: 30, scope: !1931)
!1987 = !DILocation(line: 158, column: 35, scope: !1931)
!1988 = !DILocation(line: 158, column: 43, scope: !1931)
!1989 = !DILocation(line: 158, column: 48, scope: !1931)
!1990 = !DILocation(line: 158, column: 56, scope: !1931)
!1991 = !DILocation(line: 158, column: 61, scope: !1931)
!1992 = !DILocation(line: 158, column: 2, scope: !1931)
!1993 = !DILocation(line: 159, column: 9, scope: !1931)
!1994 = !DILocation(line: 159, column: 2, scope: !1931)
!1995 = !DILocation(line: 160, column: 1, scope: !1931)
!1996 = distinct !DISubprogram(name: "dcc_server_input", scope: !828, file: !828, line: 64, type: !1183, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !831)
!1997 = !DILocalVariable(name: "dcc", arg: 1, scope: !1996, file: !828, line: 64, type: !64)
!1998 = !DILocation(line: 64, column: 46, scope: !1996)
!1999 = !DILocalVariable(name: "str", scope: !1996, file: !828, line: 66, type: !100)
!2000 = !DILocation(line: 66, column: 8, scope: !1996)
!2001 = !DILocalVariable(name: "ret", scope: !1996, file: !828, line: 67, type: !71)
!2002 = !DILocation(line: 67, column: 6, scope: !1996)
!2003 = !DILocation(line: 69, column: 2, scope: !1996)
!2004 = distinct !{!2004, !2003}
!2005 = !DILocation(line: 69, column: 56, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2007, file: !828, discriminator: 1)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !828, line: 69, column: 10)
!2008 = distinct !DILexicalBlock(scope: !1996, file: !828, line: 69, column: 4)
!2009 = !DILocation(line: 69, column: 31, scope: !2006)
!2010 = !DILocation(line: 69, column: 12, scope: !2006)
!2011 = !DILocation(line: 69, column: 10, scope: !2006)
!2012 = !DILocation(line: 69, column: 11, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2007, file: !828, discriminator: 2)
!2014 = !DILocation(line: 69, column: 10, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2008, file: !828, discriminator: 3)
!2016 = !DILocation(line: 69, column: 40, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2018, file: !828, discriminator: 4)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !828, line: 69, column: 38)
!2019 = !DILocation(line: 69, column: 49, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2021, file: !828, discriminator: 5)
!2021 = distinct !DILexicalBlock(scope: !2007, file: !828, line: 69, column: 47)
!2022 = !DILocation(line: 69, column: 140, scope: !2020)
!2023 = !DILocation(line: 69, column: 151, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2008, file: !828, discriminator: 6)
!2025 = !DILocation(line: 71, column: 2, scope: !1996)
!2026 = distinct !{!2026, !2025}
!2027 = !DILocation(line: 72, column: 37, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1996, file: !828, line: 71, column: 5)
!2029 = !DILocation(line: 72, column: 42, scope: !2028)
!2030 = !DILocation(line: 72, column: 9, scope: !2028)
!2031 = !DILocation(line: 72, column: 7, scope: !2028)
!2032 = !DILocation(line: 74, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !828, line: 74, column: 7)
!2034 = !DILocation(line: 74, column: 11, scope: !2033)
!2035 = !DILocation(line: 74, column: 7, scope: !2028)
!2036 = !DILocation(line: 76, column: 28, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !828, line: 74, column: 18)
!2038 = !DILocation(line: 76, column: 15, scope: !2037)
!2039 = !DILocation(line: 76, column: 4, scope: !2037)
!2040 = !DILocation(line: 77, column: 4, scope: !2037)
!2041 = !DILocation(line: 80, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2028, file: !828, line: 80, column: 7)
!2043 = !DILocation(line: 80, column: 11, scope: !2042)
!2044 = !DILocation(line: 80, column: 7, scope: !2028)
!2045 = !DILocation(line: 81, column: 20, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !828, line: 80, column: 16)
!2047 = !DILocation(line: 81, column: 4, scope: !2046)
!2048 = !DILocation(line: 81, column: 9, scope: !2046)
!2049 = !DILocation(line: 81, column: 17, scope: !2046)
!2050 = !DILocation(line: 82, column: 41, scope: !2046)
!2051 = !DILocation(line: 82, column: 46, scope: !2046)
!2052 = !DILocation(line: 82, column: 4, scope: !2046)
!2053 = !DILocation(line: 83, column: 3, scope: !2046)
!2054 = !DILocation(line: 85, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2028, file: !828, line: 85, column: 7)
!2056 = !DILocation(line: 85, column: 12, scope: !2055)
!2057 = !DILocation(line: 85, column: 7, scope: !2028)
!2058 = !DILocation(line: 88, column: 4, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !828, line: 85, column: 36)
!2060 = !DILocation(line: 88, column: 9, scope: !2059)
!2061 = !DILocation(line: 88, column: 16, scope: !2059)
!2062 = !DILocation(line: 89, column: 28, scope: !2059)
!2063 = !DILocation(line: 89, column: 15, scope: !2059)
!2064 = !DILocation(line: 89, column: 4, scope: !2059)
!2065 = !DILocation(line: 90, column: 4, scope: !2059)
!2066 = !DILocation(line: 92, column: 2, scope: !2028)
!2067 = !DILocation(line: 92, column: 11, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !1996, file: !828, discriminator: 1)
!2069 = !DILocation(line: 92, column: 15, scope: !2068)
!2070 = !DILocation(line: 92, column: 2, scope: !2068)
!2071 = !DILocation(line: 93, column: 1, scope: !1996)
