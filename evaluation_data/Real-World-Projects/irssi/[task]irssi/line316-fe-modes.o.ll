; ModuleID = './line316-fe-modes.o.i'
source_filename = "./line316-fe-modes.o.i"
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
%struct.MODE_REC = type { %struct._IRC_CHANNEL_REC*, i8*, %struct._GSList*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"group_multi_mode\00", align 1
@mode_tag = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"message irc mode\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"print starting\00", align 1
@group_multi_mode = internal global i32 0, align 4
@modes = internal global %struct._GSList* null, align 8
@channels = external global %struct._GSList*, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.mode_destroy = private unnamed_addr constant [13 x i8] c"mode_destroy\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"mode != NULL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.mode_find_channel = private unnamed_addr constant [18 x i8] c"mode_find_channel\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_modes_init() #0 !dbg !857 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !859
  store i32 -1, i32* @mode_tag, align 4, !dbg !860
  call void @read_settings(), !dbg !861
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !862
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !863
  ret void, !dbg !864
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !865 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !866, metadata !867), !dbg !868
  %2 = load i32, i32* @group_multi_mode, align 4, !dbg !869
  store i32 %2, i32* %1, align 4, !dbg !870
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)), !dbg !871
  store i32 %3, i32* @group_multi_mode, align 4, !dbg !872
  %4 = load i32, i32* %1, align 4, !dbg !873
  %5 = icmp ne i32 %4, 0, !dbg !873
  br i1 %5, label %6, label %12, !dbg !875

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @group_multi_mode, align 4, !dbg !876
  %8 = icmp ne i32 %7, 0, !dbg !876
  br i1 %8, label %12, label %9, !dbg !878

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* @mode_tag, align 4, !dbg !879
  %11 = call i32 @g_source_remove(i32 %10), !dbg !881
  store i32 -1, i32* @mode_tag, align 4, !dbg !882
  br label %21, !dbg !883

; <label>:12:                                     ; preds = %6, %0
  %13 = load i32, i32* %1, align 4, !dbg !884
  %14 = icmp ne i32 %13, 0, !dbg !884
  br i1 %14, label %20, label %15, !dbg !887

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* @group_multi_mode, align 4, !dbg !888
  %17 = icmp ne i32 %16, 0, !dbg !888
  br i1 %17, label %18, label %20, !dbg !890

; <label>:18:                                     ; preds = %15
  %19 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_check_modes to i32 (i8*)*), i8* null), !dbg !891
  store i32 %19, i32* @mode_tag, align 4, !dbg !893
  br label %20, !dbg !894

; <label>:20:                                     ; preds = %18, %15, %12
  br label %21

; <label>:21:                                     ; preds = %20, %9
  ret void, !dbg !895
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_message_mode(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !896 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !899, metadata !867), !dbg !900
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !901, metadata !867), !dbg !902
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !903, metadata !867), !dbg !904
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !905, metadata !867), !dbg !906
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !907, metadata !867), !dbg !908
  %12 = load i8*, i8** %8, align 8, !dbg !909
  %13 = icmp eq i8* %12, null, !dbg !911
  br i1 %13, label %14, label %18, !dbg !912

; <label>:14:                                     ; preds = %5
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !913
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 40, !dbg !915
  %17 = load i8*, i8** %16, align 8, !dbg !915
  store i8* %17, i8** %8, align 8, !dbg !916
  br label %18, !dbg !917

; <label>:18:                                     ; preds = %14, %5
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !918
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !918
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !920
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !921
  %23 = load i8*, i8** %8, align 8, !dbg !922
  %24 = load i8*, i8** %9, align 8, !dbg !923
  %25 = load i8*, i8** %7, align 8, !dbg !924
  %26 = load i8*, i8** %10, align 8, !dbg !925
  %27 = call i32 @ignore_check(%struct._SERVER_REC* %22, i8* %23, i8* %24, i8* %25, i8* %26, i32 2048), !dbg !926
  %28 = icmp ne i32 %27, 0, !dbg !928
  br i1 %28, label %29, label %30, !dbg !929

; <label>:29:                                     ; preds = %18
  br label %102, !dbg !930

; <label>:30:                                     ; preds = %18
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !931
  %32 = bitcast %struct._IRC_SERVER_REC* %31 to i8*, !dbg !931
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !933
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !934
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 27, !dbg !935
  %36 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %35, align 8, !dbg !935
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !936
  %38 = bitcast %struct._IRC_SERVER_REC* %37 to i8*, !dbg !936
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !937
  %40 = bitcast i8* %39 to %struct._SERVER_REC*, !dbg !939
  %41 = load i8*, i8** %7, align 8, !dbg !940
  %42 = call i32 %36(%struct._SERVER_REC* %40, i8* %41), !dbg !941
  %43 = icmp ne i32 %42, 0, !dbg !943
  br i1 %43, label %49, label %44, !dbg !944

; <label>:44:                                     ; preds = %30
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !945
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to i8*, !dbg !945
  %47 = load i8*, i8** %10, align 8, !dbg !947
  %48 = load i8*, i8** %7, align 8, !dbg !948
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %46, i8* null, i32 2048, i32 59, i8* %47, i8* %48), !dbg !949
  br label %102, !dbg !950

; <label>:49:                                     ; preds = %30
  %50 = load i8*, i8** %9, align 8, !dbg !951
  %51 = icmp eq i8* %50, null, !dbg !954
  br i1 %51, label %52, label %59, !dbg !951

; <label>:52:                                     ; preds = %49
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !955
  %54 = bitcast %struct._IRC_SERVER_REC* %53 to i8*, !dbg !955
  %55 = load i8*, i8** %7, align 8, !dbg !957
  %56 = load i8*, i8** %7, align 8, !dbg !958
  %57 = load i8*, i8** %10, align 8, !dbg !959
  %58 = load i8*, i8** %8, align 8, !dbg !960
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %54, i8* %55, i32 2048, i32 45, i8* %56, i8* %57, i8* %58), !dbg !961
  br label %101, !dbg !962

; <label>:59:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %11, metadata !963, metadata !867), !dbg !965
  %60 = load i32, i32* @group_multi_mode, align 4, !dbg !966
  %61 = icmp ne i32 %60, 0, !dbg !966
  br i1 %61, label %63, label %62, !dbg !967

; <label>:62:                                     ; preds = %59
  br label %76, !dbg !968

; <label>:63:                                     ; preds = %59
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !970
  %65 = bitcast %struct._IRC_SERVER_REC* %64 to i8*, !dbg !970
  %66 = call i8* @module_check_cast(i8* %65, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0)), !dbg !971
  %67 = bitcast i8* %66 to %struct._SERVER_REC*, !dbg !972
  %68 = load i8*, i8** %7, align 8, !dbg !973
  %69 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %67, i8* %68), !dbg !974
  %70 = bitcast %struct._CHANNEL_REC* %69 to i8*, !dbg !975
  %71 = call i8* @module_check_cast_module(i8* %70, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)), !dbg !976
  %72 = bitcast i8* %71 to %struct._CHANNEL_REC*, !dbg !978
  %73 = bitcast %struct._CHANNEL_REC* %72 to i8*, !dbg !979
  %74 = call i8* @chat_protocol_check_cast(i8* %73, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)), !dbg !980
  %75 = bitcast i8* %74 to %struct._IRC_CHANNEL_REC*, !dbg !982
  br label %76, !dbg !983

; <label>:76:                                     ; preds = %63, %62
  %77 = phi %struct._IRC_CHANNEL_REC* [ null, %62 ], [ %75, %63 ], !dbg !984
  store %struct._IRC_CHANNEL_REC* %77, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !985
  %78 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !986
  %79 = icmp ne %struct._IRC_CHANNEL_REC* %78, null, !dbg !988
  br i1 %79, label %80, label %92, !dbg !989

; <label>:80:                                     ; preds = %76
  %81 = load i8*, i8** %8, align 8, !dbg !990
  %82 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !992
  %83 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %82, i32 0, i32 7, !dbg !993
  %84 = load i8*, i8** %83, align 8, !dbg !993
  %85 = call i32 @g_ascii_strcasecmp(i8* %81, i8* %84), !dbg !994
  %86 = icmp ne i32 %85, 0, !dbg !995
  br i1 %86, label %87, label %92, !dbg !996

; <label>:87:                                     ; preds = %80
  %88 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !997
  %89 = load i8*, i8** %8, align 8, !dbg !998
  %90 = load i8*, i8** %9, align 8, !dbg !999
  %91 = load i8*, i8** %10, align 8, !dbg !1000
  call void @msg_multi_mode(%struct._IRC_CHANNEL_REC* %88, i8* %89, i8* %90, i8* %91), !dbg !1001
  br label %100, !dbg !1001

; <label>:92:                                     ; preds = %80, %76
  %93 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1002
  %94 = bitcast %struct._IRC_SERVER_REC* %93 to i8*, !dbg !1002
  %95 = load i8*, i8** %7, align 8, !dbg !1004
  %96 = load i8*, i8** %7, align 8, !dbg !1005
  %97 = load i8*, i8** %10, align 8, !dbg !1006
  %98 = load i8*, i8** %8, align 8, !dbg !1007
  %99 = load i8*, i8** %9, align 8, !dbg !1008
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %94, i8* %95, i32 2048, i32 44, i8* %96, i8* %97, i8* %98, i8* %99), !dbg !1009
  br label %100

; <label>:100:                                    ; preds = %92, %87
  br label %101

; <label>:101:                                    ; preds = %100, %52
  br label %102

; <label>:102:                                    ; preds = %29, %101, %44
  ret void, !dbg !1010
}

; Function Attrs: nounwind uwtable
define void @fe_modes_deinit() #0 !dbg !1011 {
  %1 = load i32, i32* @mode_tag, align 4, !dbg !1012
  %2 = icmp ne i32 %1, -1, !dbg !1014
  br i1 %2, label %3, label %6, !dbg !1015

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @mode_tag, align 4, !dbg !1016
  %5 = call i32 @g_source_remove(i32 %4), !dbg !1017
  br label %6, !dbg !1017

; <label>:6:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1018
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1019
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1020
  ret void, !dbg !1021
}

declare i32 @g_source_remove(i32) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_print_starting() #0 !dbg !1022 {
  br label %1, !dbg !1023

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1024
  %3 = icmp ne %struct._GSList* %2, null, !dbg !1026
  br i1 %3, label %4, label %13, !dbg !1027

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1028
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !1030
  %7 = load i8*, i8** %6, align 8, !dbg !1030
  %8 = bitcast i8* %7 to %struct.MODE_REC*, !dbg !1028
  call void @print_mode(%struct.MODE_REC* %8), !dbg !1031
  %9 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1032
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1033
  %11 = load i8*, i8** %10, align 8, !dbg !1033
  %12 = bitcast i8* %11 to %struct.MODE_REC*, !dbg !1032
  call void @mode_destroy(%struct.MODE_REC* %12), !dbg !1034
  br label %1, !dbg !1035, !llvm.loop !1037

; <label>:13:                                     ; preds = %1
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1038
  ret void, !dbg !1039
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @settings_get_bool(i8*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sig_check_modes() #0 !dbg !1040 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.MODE_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1043, metadata !867), !dbg !1044
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1045, metadata !867), !dbg !1046
  %5 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1047
  %6 = icmp eq %struct._GSList* %5, null, !dbg !1049
  br i1 %6, label %7, label %8, !dbg !1050

; <label>:7:                                      ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !1051
  br label %38, !dbg !1051

; <label>:8:                                      ; preds = %0
  %9 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1052
  store %struct._GSList* %9, %struct._GSList** %2, align 8, !dbg !1054
  br label %10, !dbg !1055

; <label>:10:                                     ; preds = %31, %8
  %11 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1056
  %12 = icmp ne %struct._GSList* %11, null, !dbg !1059
  br i1 %12, label %13, label %33, !dbg !1060

; <label>:13:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata %struct.MODE_REC** %4, metadata !1061, metadata !867), !dbg !1063
  %14 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1064
  %15 = getelementptr inbounds %struct._GSList, %struct._GSList* %14, i32 0, i32 0, !dbg !1065
  %16 = load i8*, i8** %15, align 8, !dbg !1065
  %17 = bitcast i8* %16 to %struct.MODE_REC*, !dbg !1064
  store %struct.MODE_REC* %17, %struct.MODE_REC** %4, align 8, !dbg !1063
  %18 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1066
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !1067
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1067
  store %struct._GSList* %20, %struct._GSList** %3, align 8, !dbg !1068
  %21 = call i64 @time(i64* null) #4, !dbg !1069
  %22 = load %struct.MODE_REC*, %struct.MODE_REC** %4, align 8, !dbg !1071
  %23 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %22, i32 0, i32 3, !dbg !1072
  %24 = load i64, i64* %23, align 8, !dbg !1072
  %25 = sub nsw i64 %21, %24, !dbg !1073
  %26 = icmp sge i64 %25, 3, !dbg !1074
  br i1 %26, label %27, label %30, !dbg !1075

; <label>:27:                                     ; preds = %13
  %28 = load %struct.MODE_REC*, %struct.MODE_REC** %4, align 8, !dbg !1076
  call void @print_mode(%struct.MODE_REC* %28), !dbg !1078
  %29 = load %struct.MODE_REC*, %struct.MODE_REC** %4, align 8, !dbg !1079
  call void @mode_destroy(%struct.MODE_REC* %29), !dbg !1080
  br label %30, !dbg !1081

; <label>:30:                                     ; preds = %27, %13
  br label %31, !dbg !1082

; <label>:31:                                     ; preds = %30
  %32 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1083
  store %struct._GSList* %32, %struct._GSList** %2, align 8, !dbg !1085
  br label %10, !dbg !1086, !llvm.loop !1087

; <label>:33:                                     ; preds = %10
  %34 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1089
  %35 = icmp eq %struct._GSList* %34, null, !dbg !1091
  br i1 %35, label %36, label %37, !dbg !1092

; <label>:36:                                     ; preds = %33
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1093
  br label %37, !dbg !1093

; <label>:37:                                     ; preds = %36, %33
  store i32 1, i32* %1, align 4, !dbg !1094
  br label %38, !dbg !1094

; <label>:38:                                     ; preds = %37, %7
  %39 = load i32, i32* %1, align 4, !dbg !1095
  ret i32 %39, !dbg !1095
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind uwtable
define internal void @print_mode(%struct.MODE_REC*) #0 !dbg !1096 {
  %2 = alloca %struct.MODE_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  store %struct.MODE_REC* %0, %struct.MODE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MODE_REC** %2, metadata !1099, metadata !867), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1101, metadata !867), !dbg !1102
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1103, metadata !867), !dbg !1104
  %5 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !1105
  %6 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1107
  %7 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %6, i32 0, i32 0, !dbg !1108
  %8 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1108
  %9 = bitcast %struct._IRC_CHANNEL_REC* %8 to i8*, !dbg !1107
  %10 = call %struct._GSList* @g_slist_find(%struct._GSList* %5, i8* %9), !dbg !1109
  %11 = icmp eq %struct._GSList* %10, null, !dbg !1110
  br i1 %11, label %12, label %13, !dbg !1111

; <label>:12:                                     ; preds = %1
  br label %41, !dbg !1112

; <label>:13:                                     ; preds = %1
  %14 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1114
  store %struct._GSList* %14, %struct._GSList** %3, align 8, !dbg !1115
  store %struct._GSList* null, %struct._GSList** @modes, align 8, !dbg !1116
  %15 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1117
  %16 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %15, i32 0, i32 2, !dbg !1118
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1118
  %18 = call i8* @gslist_to_string(%struct._GSList* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)), !dbg !1119
  store i8* %18, i8** %4, align 8, !dbg !1120
  %19 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1121
  %20 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %19, i32 0, i32 0, !dbg !1122
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %20, align 8, !dbg !1122
  %22 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %21, i32 0, i32 4, !dbg !1123
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !1123
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1121
  %25 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1124
  %26 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %25, i32 0, i32 0, !dbg !1125
  %27 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %26, align 8, !dbg !1125
  %28 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %27, i32 0, i32 5, !dbg !1126
  %29 = load i8*, i8** %28, align 8, !dbg !1126
  %30 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1127
  %31 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %30, i32 0, i32 0, !dbg !1128
  %32 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %31, align 8, !dbg !1128
  %33 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %32, i32 0, i32 5, !dbg !1129
  %34 = load i8*, i8** %33, align 8, !dbg !1129
  %35 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1130
  %36 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %35, i32 0, i32 1, !dbg !1131
  %37 = load i8*, i8** %36, align 8, !dbg !1131
  %38 = load i8*, i8** %4, align 8, !dbg !1132
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* %29, i32 2048, i32 44, i8* %34, i8* %37, i8* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0)), !dbg !1133
  %39 = load i8*, i8** %4, align 8, !dbg !1134
  call void @g_free(i8* %39), !dbg !1135
  %40 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1136
  store %struct._GSList* %40, %struct._GSList** @modes, align 8, !dbg !1137
  br label %41, !dbg !1138

; <label>:41:                                     ; preds = %13, %12
  ret void, !dbg !1139
}

; Function Attrs: nounwind uwtable
define internal void @mode_destroy(%struct.MODE_REC*) #0 !dbg !1141 {
  %2 = alloca %struct.MODE_REC*, align 8
  store %struct.MODE_REC* %0, %struct.MODE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MODE_REC** %2, metadata !1142, metadata !867), !dbg !1143
  br label %3, !dbg !1144, !llvm.loop !1145

; <label>:3:                                      ; preds = %1
  %4 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1146
  %5 = icmp ne %struct.MODE_REC* %4, null, !dbg !1150
  br i1 %5, label %6, label %7, !dbg !1146

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1151

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.mode_destroy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !1154
  br label %25, !dbg !1157

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1158

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1160
  %11 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1161
  %12 = bitcast %struct.MODE_REC* %11 to i8*, !dbg !1161
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !1162
  store %struct._GSList* %13, %struct._GSList** @modes, align 8, !dbg !1163
  %14 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1164
  %15 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %14, i32 0, i32 2, !dbg !1165
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !1165
  call void @g_slist_foreach(%struct._GSList* %16, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1166
  %17 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1167
  %18 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %17, i32 0, i32 2, !dbg !1168
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1168
  call void @g_slist_free(%struct._GSList* %19), !dbg !1169
  %20 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1170
  %21 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %20, i32 0, i32 1, !dbg !1171
  %22 = load i8*, i8** %21, align 8, !dbg !1171
  call void @g_free(i8* %22), !dbg !1172
  %23 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1173
  %24 = bitcast %struct.MODE_REC* %23 to i8*, !dbg !1173
  call void @g_free(i8* %24), !dbg !1174
  br label %25, !dbg !1175

; <label>:25:                                     ; preds = %9, %7
  ret void, !dbg !1176
}

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #1

declare i8* @gslist_to_string(%struct._GSList*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @msg_multi_mode(%struct._IRC_CHANNEL_REC*, i8*, i8*, i8*) #0 !dbg !1178 {
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.MODE_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1181, metadata !867), !dbg !1182
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1183, metadata !867), !dbg !1184
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1185, metadata !867), !dbg !1186
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1187, metadata !867), !dbg !1188
  call void @llvm.dbg.declare(metadata %struct.MODE_REC** %9, metadata !1189, metadata !867), !dbg !1190
  %10 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1191
  %11 = icmp eq %struct._GSList* %10, null, !dbg !1193
  br i1 %11, label %12, label %13, !dbg !1194

; <label>:12:                                     ; preds = %4
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_print_starting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1195
  br label %13, !dbg !1195

; <label>:13:                                     ; preds = %12, %4
  %14 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1196
  %15 = call %struct.MODE_REC* @mode_find_channel(%struct._IRC_CHANNEL_REC* %14), !dbg !1197
  store %struct.MODE_REC* %15, %struct.MODE_REC** %9, align 8, !dbg !1198
  %16 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1199
  %17 = icmp ne %struct.MODE_REC* %16, null, !dbg !1201
  br i1 %17, label %18, label %28, !dbg !1202

; <label>:18:                                     ; preds = %13
  %19 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1203
  %20 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %19, i32 0, i32 1, !dbg !1205
  %21 = load i8*, i8** %20, align 8, !dbg !1205
  %22 = load i8*, i8** %8, align 8, !dbg !1206
  %23 = call i32 @g_strcmp0(i8* %21, i8* %22), !dbg !1207
  %24 = icmp ne i32 %23, 0, !dbg !1208
  br i1 %24, label %25, label %28, !dbg !1209

; <label>:25:                                     ; preds = %18
  %26 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1210
  call void @print_mode(%struct.MODE_REC* %26), !dbg !1212
  %27 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1213
  call void @mode_destroy(%struct.MODE_REC* %27), !dbg !1214
  store %struct.MODE_REC* null, %struct.MODE_REC** %9, align 8, !dbg !1215
  br label %28, !dbg !1216

; <label>:28:                                     ; preds = %25, %18, %13
  %29 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1217
  %30 = icmp eq %struct.MODE_REC* %29, null, !dbg !1219
  br i1 %30, label %31, label %45, !dbg !1220

; <label>:31:                                     ; preds = %28
  %32 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !1221
  %33 = bitcast i8* %32 to %struct.MODE_REC*, !dbg !1223
  store %struct.MODE_REC* %33, %struct.MODE_REC** %9, align 8, !dbg !1224
  %34 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1225
  %35 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1226
  %36 = bitcast %struct.MODE_REC* %35 to i8*, !dbg !1226
  %37 = call %struct._GSList* @g_slist_append(%struct._GSList* %34, i8* %36), !dbg !1227
  store %struct._GSList* %37, %struct._GSList** @modes, align 8, !dbg !1228
  %38 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1229
  %39 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1230
  %40 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %39, i32 0, i32 0, !dbg !1231
  store %struct._IRC_CHANNEL_REC* %38, %struct._IRC_CHANNEL_REC** %40, align 8, !dbg !1232
  %41 = load i8*, i8** %8, align 8, !dbg !1233
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !1234
  %43 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1235
  %44 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %43, i32 0, i32 1, !dbg !1236
  store i8* %42, i8** %44, align 8, !dbg !1237
  br label %45, !dbg !1238

; <label>:45:                                     ; preds = %31, %28
  %46 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1239
  %47 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %46, i32 0, i32 2, !dbg !1240
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1240
  %49 = load i8*, i8** %6, align 8, !dbg !1241
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1242
  %51 = call %struct._GSList* @g_slist_append(%struct._GSList* %48, i8* %50), !dbg !1243
  %52 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1245
  %53 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %52, i32 0, i32 2, !dbg !1246
  store %struct._GSList* %51, %struct._GSList** %53, align 8, !dbg !1247
  %54 = call i64 @time(i64* null) #4, !dbg !1248
  %55 = load %struct.MODE_REC*, %struct.MODE_REC** %9, align 8, !dbg !1249
  %56 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %55, i32 0, i32 3, !dbg !1250
  store i64 %54, i64* %56, align 8, !dbg !1251
  call void @signal_stop(), !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: nounwind uwtable
define internal %struct.MODE_REC* @mode_find_channel(%struct._IRC_CHANNEL_REC*) #0 !dbg !1254 {
  %2 = alloca %struct.MODE_REC*, align 8
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.MODE_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1257, metadata !867), !dbg !1258
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1259, metadata !867), !dbg !1260
  br label %6, !dbg !1261, !llvm.loop !1262

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1263
  %8 = icmp ne %struct._IRC_CHANNEL_REC* %7, null, !dbg !1267
  br i1 %8, label %9, label %10, !dbg !1263

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1268

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.mode_find_channel, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)), !dbg !1271
  store %struct.MODE_REC* null, %struct.MODE_REC** %2, align 8, !dbg !1274
  br label %35, !dbg !1274

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1275

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @modes, align 8, !dbg !1277
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !1279
  br label %14, !dbg !1280

; <label>:14:                                     ; preds = %30, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1281
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1284
  br i1 %16, label %17, label %34, !dbg !1285

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.MODE_REC** %5, metadata !1286, metadata !867), !dbg !1288
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1289
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1290
  %20 = load i8*, i8** %19, align 8, !dbg !1290
  %21 = bitcast i8* %20 to %struct.MODE_REC*, !dbg !1289
  store %struct.MODE_REC* %21, %struct.MODE_REC** %5, align 8, !dbg !1288
  %22 = load %struct.MODE_REC*, %struct.MODE_REC** %5, align 8, !dbg !1291
  %23 = getelementptr inbounds %struct.MODE_REC, %struct.MODE_REC* %22, i32 0, i32 0, !dbg !1293
  %24 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %23, align 8, !dbg !1293
  %25 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1294
  %26 = icmp eq %struct._IRC_CHANNEL_REC* %24, %25, !dbg !1295
  br i1 %26, label %27, label %29, !dbg !1296

; <label>:27:                                     ; preds = %17
  %28 = load %struct.MODE_REC*, %struct.MODE_REC** %5, align 8, !dbg !1297
  store %struct.MODE_REC* %28, %struct.MODE_REC** %2, align 8, !dbg !1298
  br label %35, !dbg !1298

; <label>:29:                                     ; preds = %17
  br label %30, !dbg !1299

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1300
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1302
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1302
  store %struct._GSList* %33, %struct._GSList** %4, align 8, !dbg !1303
  br label %14, !dbg !1304, !llvm.loop !1305

; <label>:34:                                     ; preds = %14
  store %struct.MODE_REC* null, %struct.MODE_REC** %2, align 8, !dbg !1307
  br label %35, !dbg !1307

; <label>:35:                                     ; preds = %34, %27, %10
  %36 = load %struct.MODE_REC*, %struct.MODE_REC** %2, align 8, !dbg !1308
  ret %struct.MODE_REC* %36, !dbg !1308
}

declare i32 @g_strcmp0(i8*, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @signal_stop() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!854, !855}
!llvm.ident = !{!856}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192, globals: !850)
!1 = !DIFile(filename: "line316-fe-modes.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!192 = !{!193, !200, !201, !210, !213, !215, !219, !633, !532, !841}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !194, line: 9, baseType: !195)
!194 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !198, !198, !198, !198, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !206, line: 50, baseType: !207)
!206 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !206, line: 49, baseType: !208)
!208 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !206, line: 77, baseType: !200)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !206, line: 46, baseType: !212)
!212 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !206, line: 88, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !209, !209}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !221, line: 107, baseType: !222)
!221 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !223, line: 30, size: 2240, align: 64, elements: !224)
!223 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!224 = !{!225, !227, !228, !229, !452, !457, !458, !459, !460, !461, !462, !463, !464, !465, !469, !470, !474, !475, !476, !480, !485, !486, !487, !488, !489, !490, !491, !492, !499, !500, !501, !502, !503, !507, !511, !515, !519, !523, !528, !621, !628, !632}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !222, file: !226, line: 3, baseType: !208, size: 32, align: 32)
!226 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !222, file: !226, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !222, file: !226, line: 6, baseType: !208, size: 32, align: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !222, file: !226, line: 8, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !221, line: 113, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !223, line: 25, size: 1920, align: 64, elements: !233)
!233 = !{!234, !236, !237, !238, !240, !241, !242, !243, !244, !246, !247, !248, !249, !250, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !235, line: 3, baseType: !208, size: 32, align: 32)
!235 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !232, file: !235, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !232, file: !235, line: 6, baseType: !208, size: 32, align: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !232, file: !235, line: 9, baseType: !239, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !232, file: !235, line: 10, baseType: !208, size: 32, align: 32, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !232, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !232, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !232, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !232, file: !235, line: 13, baseType: !245, size: 16, align: 16, offset: 448)
!245 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !232, file: !235, line: 14, baseType: !239, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !232, file: !235, line: 15, baseType: !239, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !232, file: !235, line: 16, baseType: !208, size: 32, align: 32, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !232, file: !235, line: 17, baseType: !239, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !232, file: !235, line: 19, baseType: !251, size: 64, align: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !221, line: 99, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !221, line: 99, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !232, file: !235, line: 19, baseType: !251, size: 64, align: 64, offset: 832)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !232, file: !235, line: 21, baseType: !239, size: 64, align: 64, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !232, file: !235, line: 22, baseType: !239, size: 64, align: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !232, file: !235, line: 23, baseType: !239, size: 64, align: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !232, file: !235, line: 24, baseType: !239, size: 64, align: 64, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !232, file: !235, line: 26, baseType: !239, size: 64, align: 64, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !232, file: !235, line: 27, baseType: !239, size: 64, align: 64, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !232, file: !235, line: 28, baseType: !239, size: 64, align: 64, offset: 1280)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !232, file: !235, line: 29, baseType: !239, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !232, file: !235, line: 30, baseType: !239, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !232, file: !235, line: 31, baseType: !239, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !232, file: !235, line: 32, baseType: !239, size: 64, align: 64, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !232, file: !235, line: 33, baseType: !239, size: 64, align: 64, offset: 1600)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !232, file: !235, line: 35, baseType: !268, size: 64, align: 64, offset: 1664)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !271)
!271 = !{!272, !273, !409, !410, !415, !416, !417, !418, !419, !428, !429, !430, !434, !435, !436, !437, !438, !439, !440, !441}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !270, file: !4, line: 100, baseType: !207, size: 32, align: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !270, file: !4, line: 101, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !277)
!277 = !{!278, !300, !306, !313, !317, !396, !400, !405}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !276, file: !4, line: 133, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !268, !210, !283, !286, !287}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !284, line: 66, baseType: !285)
!284 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!285 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !290, line: 42, baseType: !291)
!290 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !290, line: 44, size: 128, align: 64, elements: !292)
!292 = !{!293, !298, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !291, file: !290, line: 46, baseType: !294, size: 32, align: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !295, line: 36, baseType: !296)
!295 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !284, line: 45, baseType: !297)
!297 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !291, file: !290, line: 47, baseType: !207, size: 32, align: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !291, file: !290, line: 48, baseType: !210, size: 64, align: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !276, file: !4, line: 138, baseType: !301, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!282, !268, !304, !283, !286, !287}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !276, file: !4, line: 143, baseType: !307, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!282, !268, !310, !312, !287}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !284, line: 51, baseType: !311)
!311 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !276, file: !4, line: 147, baseType: !314, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!282, !268, !287}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !276, file: !4, line: 149, baseType: !318, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !268, !395}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !324)
!324 = !{!325, !326, !342, !371, !373, !377, !378, !379, !380, !388, !389, !390, !391}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !323, file: !16, line: 174, baseType: !209, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !323, file: !16, line: 175, baseType: !327, size: 64, align: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !330)
!330 = !{!331, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !329, file: !16, line: 198, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !209}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !329, file: !16, line: 199, baseType: !332, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !329, file: !16, line: 200, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !209, !321, !340, !341}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !323, file: !16, line: 177, baseType: !343, size: 64, align: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !347)
!347 = !{!348, !353, !357, !361, !365, !366}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !346, file: !16, line: 216, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!205, !321, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !346, file: !16, line: 218, baseType: !354, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!205, !321}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !346, file: !16, line: 219, baseType: !358, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!205, !321, !201, !209}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !346, file: !16, line: 222, baseType: !362, size: 64, align: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !321}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !346, file: !16, line: 226, baseType: !201, size: 64, align: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !346, file: !16, line: 227, baseType: !367, size: 64, align: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !323, file: !16, line: 178, baseType: !372, size: 32, align: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !206, line: 55, baseType: !297)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !323, file: !16, line: 180, baseType: !374, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !323, file: !16, line: 182, baseType: !207, size: 32, align: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !16, line: 183, baseType: !372, size: 32, align: 32, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !323, file: !16, line: 184, baseType: !372, size: 32, align: 32, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !323, file: !16, line: 186, baseType: !381, size: 64, align: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !383, line: 37, baseType: !384)
!383 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !383, line: 39, size: 128, align: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !384, file: !383, line: 41, baseType: !209, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !383, line: 42, baseType: !381, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !323, file: !16, line: 188, baseType: !321, size: 64, align: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !16, line: 189, baseType: !321, size: 64, align: 64, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !16, line: 191, baseType: !239, size: 64, align: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !323, file: !16, line: 193, baseType: !392, size: 64, align: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !276, file: !4, line: 151, baseType: !397, size: 64, align: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !268}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !276, file: !4, line: 152, baseType: !401, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!282, !268, !404, !287}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !276, file: !4, line: 155, baseType: !406, size: 64, align: 64, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!404, !268}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !270, file: !4, line: 103, baseType: !210, size: 64, align: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !270, file: !4, line: 104, baseType: !411, size: 64, align: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !412, line: 77, baseType: !413)
!412 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !412, line: 77, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !270, file: !4, line: 105, baseType: !411, size: 64, align: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !270, file: !4, line: 106, baseType: !210, size: 64, align: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !270, file: !4, line: 107, baseType: !372, size: 32, align: 32, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !270, file: !4, line: 109, baseType: !283, size: 64, align: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !270, file: !4, line: 110, baseType: !420, size: 64, align: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !422, line: 39, baseType: !423)
!422 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !422, line: 41, size: 192, align: 64, elements: !424)
!424 = !{!425, !426, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !423, file: !422, line: 43, baseType: !210, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !423, file: !422, line: 44, baseType: !283, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !423, file: !422, line: 45, baseType: !283, size: 64, align: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !270, file: !4, line: 111, baseType: !420, size: 64, align: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !270, file: !4, line: 112, baseType: !420, size: 64, align: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !270, file: !4, line: 113, baseType: !431, size: 48, align: 8, offset: 704)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 48, align: 8, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 6)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !270, file: !4, line: 117, baseType: !372, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !270, file: !4, line: 118, baseType: !372, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !270, file: !4, line: 119, baseType: !372, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !270, file: !4, line: 120, baseType: !372, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !270, file: !4, line: 121, baseType: !372, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !270, file: !4, line: 122, baseType: !372, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !270, file: !4, line: 124, baseType: !209, size: 64, align: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !270, file: !4, line: 125, baseType: !209, size: 64, align: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !232, file: !235, line: 38, baseType: !297, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !232, file: !235, line: 39, baseType: !297, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !232, file: !235, line: 40, baseType: !297, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !232, file: !235, line: 41, baseType: !297, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !232, file: !235, line: 42, baseType: !297, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !232, file: !235, line: 43, baseType: !297, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !232, file: !235, line: 44, baseType: !297, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !232, file: !235, line: 45, baseType: !297, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !232, file: !235, line: 46, baseType: !239, size: 64, align: 64, offset: 1792)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !232, file: !235, line: 47, baseType: !239, size: 64, align: 64, offset: 1856)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !222, file: !226, line: 9, baseType: !453, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !454, line: 75, baseType: !455)
!454 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !456, line: 139, baseType: !311)
!456 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!457 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !222, file: !226, line: 10, baseType: !453, size: 64, align: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !222, file: !226, line: 12, baseType: !239, size: 64, align: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !222, file: !226, line: 13, baseType: !239, size: 64, align: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !222, file: !226, line: 15, baseType: !297, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !222, file: !226, line: 16, baseType: !297, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !222, file: !226, line: 17, baseType: !297, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !222, file: !226, line: 18, baseType: !297, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !222, file: !226, line: 19, baseType: !297, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !222, file: !226, line: 21, baseType: !466, size: 64, align: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !221, line: 102, baseType: !468)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !221, line: 102, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !222, file: !226, line: 22, baseType: !208, size: 32, align: 32, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !222, file: !226, line: 25, baseType: !471, size: 128, align: 64, offset: 640)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, align: 64, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !222, file: !226, line: 26, baseType: !208, size: 32, align: 32, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !222, file: !226, line: 27, baseType: !208, size: 32, align: 32, offset: 800)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !222, file: !226, line: 29, baseType: !477, size: 64, align: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !221, line: 103, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !221, line: 103, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !222, file: !226, line: 30, baseType: !481, size: 64, align: 64, offset: 896)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !483, line: 37, baseType: !484)
!483 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !483, line: 37, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !222, file: !226, line: 32, baseType: !239, size: 64, align: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !222, file: !226, line: 33, baseType: !239, size: 64, align: 64, offset: 1024)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !222, file: !226, line: 34, baseType: !239, size: 64, align: 64, offset: 1088)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !222, file: !226, line: 35, baseType: !297, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !222, file: !226, line: 36, baseType: !297, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !222, file: !226, line: 37, baseType: !297, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !222, file: !226, line: 38, baseType: !297, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !222, file: !226, line: 40, baseType: !493, size: 128, align: 64, offset: 1216)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !206, line: 504, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !206, line: 506, size: 128, align: 64, elements: !495)
!495 = !{!496, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !494, file: !206, line: 508, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !206, line: 48, baseType: !311)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !494, file: !206, line: 509, baseType: !497, size: 64, align: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !222, file: !226, line: 41, baseType: !453, size: 64, align: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !222, file: !226, line: 42, baseType: !208, size: 32, align: 32, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !222, file: !226, line: 44, baseType: !381, size: 64, align: 64, offset: 1472)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !222, file: !226, line: 45, baseType: !381, size: 64, align: 64, offset: 1536)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !222, file: !226, line: 53, baseType: !504, size: 64, align: 64, offset: 1600)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !219, !213, !208}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !222, file: !226, line: 55, baseType: !508, size: 64, align: 64, offset: 1664)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!208, !219, !212}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !222, file: !226, line: 57, baseType: !512, size: 64, align: 64, offset: 1728)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!208, !219, !213}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !222, file: !226, line: 60, baseType: !516, size: 64, align: 64, offset: 1792)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!213, !219}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !222, file: !226, line: 62, baseType: !520, size: 64, align: 64, offset: 1856)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !219, !213, !213, !208}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !222, file: !226, line: 65, baseType: !524, size: 64, align: 64, offset: 1920)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!527, !219, !213, !213}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !222, file: !226, line: 69, baseType: !529, size: 64, align: 64, offset: 1984)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !219, !213}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !221, line: 109, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !535, line: 15, size: 1408, align: 64, elements: !536)
!535 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!536 = !{!537, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !572, !573, !575, !576, !577, !578, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !538, line: 3, baseType: !208, size: 32, align: 32)
!538 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !534, file: !538, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !534, file: !538, line: 5, baseType: !481, size: 64, align: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !534, file: !538, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !534, file: !538, line: 8, baseType: !219, size: 64, align: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !534, file: !538, line: 9, baseType: !239, size: 64, align: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !534, file: !538, line: 10, baseType: !239, size: 64, align: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !534, file: !538, line: 11, baseType: !453, size: 64, align: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !534, file: !538, line: 12, baseType: !208, size: 32, align: 32, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !534, file: !538, line: 13, baseType: !239, size: 64, align: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !534, file: !538, line: 15, baseType: !549, size: 64, align: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !221, line: 108, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !555, line: 5, size: 704, align: 64, elements: !556)
!555 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !538, line: 3, baseType: !208, size: 32, align: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !554, file: !538, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !554, file: !538, line: 5, baseType: !481, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !554, file: !538, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !554, file: !538, line: 8, baseType: !219, size: 64, align: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !554, file: !538, line: 9, baseType: !239, size: 64, align: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !554, file: !538, line: 10, baseType: !239, size: 64, align: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !554, file: !538, line: 11, baseType: !453, size: 64, align: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !554, file: !538, line: 12, baseType: !208, size: 32, align: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !554, file: !538, line: 13, baseType: !239, size: 64, align: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !554, file: !538, line: 15, baseType: !549, size: 64, align: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !554, file: !538, line: 17, baseType: !569, size: 64, align: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!213, !552}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !534, file: !538, line: 17, baseType: !569, size: 64, align: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !534, file: !574, line: 5, baseType: !239, size: 64, align: 64, offset: 704)
!574 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !534, file: !574, line: 6, baseType: !239, size: 64, align: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !534, file: !574, line: 7, baseType: !453, size: 64, align: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !534, file: !574, line: 9, baseType: !481, size: 64, align: 64, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !534, file: !574, line: 10, baseType: !579, size: 64, align: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !221, line: 111, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !582, line: 13, size: 576, align: 64, elements: !583)
!582 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!583 = !{!584, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !602, !603}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !585, line: 3, baseType: !208, size: 32, align: 32)
!585 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !581, file: !585, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !581, file: !585, line: 6, baseType: !453, size: 64, align: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !581, file: !585, line: 8, baseType: !239, size: 64, align: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !581, file: !585, line: 9, baseType: !239, size: 64, align: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !581, file: !585, line: 10, baseType: !239, size: 64, align: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !581, file: !585, line: 11, baseType: !208, size: 32, align: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !581, file: !585, line: 14, baseType: !297, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !581, file: !585, line: 15, baseType: !297, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !581, file: !585, line: 18, baseType: !297, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !581, file: !585, line: 19, baseType: !297, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !581, file: !585, line: 20, baseType: !297, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !581, file: !585, line: 21, baseType: !297, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !581, file: !585, line: 22, baseType: !599, size: 64, align: 8, offset: 360)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, align: 8, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 8)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !581, file: !585, line: 26, baseType: !200, size: 64, align: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !585, line: 28, baseType: !579, size: 64, align: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !534, file: !574, line: 12, baseType: !297, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !534, file: !574, line: 13, baseType: !239, size: 64, align: 64, offset: 1088)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !534, file: !574, line: 14, baseType: !208, size: 32, align: 32, offset: 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !534, file: !574, line: 15, baseType: !239, size: 64, align: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !534, file: !574, line: 17, baseType: !297, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !534, file: !574, line: 18, baseType: !297, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !534, file: !574, line: 19, baseType: !297, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !534, file: !574, line: 20, baseType: !297, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !534, file: !574, line: 22, baseType: !297, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !534, file: !574, line: 23, baseType: !297, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !534, file: !574, line: 24, baseType: !297, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !534, file: !574, line: 25, baseType: !297, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !534, file: !574, line: 26, baseType: !297, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !534, file: !574, line: 31, baseType: !618, size: 64, align: 64, offset: 1344)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!239, !532}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !222, file: !226, line: 70, baseType: !622, size: 64, align: 64, offset: 2048)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !219, !213}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !221, line: 110, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !221, line: 110, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !222, file: !226, line: 71, baseType: !629, size: 64, align: 64, offset: 2112)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!208, !213, !213}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !222, file: !226, line: 73, baseType: !629, size: 64, align: 64, offset: 2176)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !635, line: 7, baseType: !636)
!635 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !637, line: 15, size: 1600, align: 64, elements: !638)
!637 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!638 = !{!639, !640, !641, !642, !643, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !538, line: 3, baseType: !208, size: 32, align: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !636, file: !538, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !636, file: !538, line: 5, baseType: !481, size: 64, align: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !636, file: !538, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !636, file: !538, line: 8, baseType: !644, size: 64, align: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !635, line: 6, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !647, line: 42, size: 39168, align: 64, elements: !648)
!647 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!648 = !{!649, !650, !651, !652, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !808, !810}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !226, line: 3, baseType: !208, size: 32, align: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !646, file: !226, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !646, file: !226, line: 6, baseType: !208, size: 32, align: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !646, file: !226, line: 8, baseType: !653, size: 64, align: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !635, line: 5, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !647, line: 24, size: 2496, align: 64, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !235, line: 3, baseType: !208, size: 32, align: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !655, file: !235, line: 4, baseType: !208, size: 32, align: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !655, file: !235, line: 6, baseType: !208, size: 32, align: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !655, file: !235, line: 9, baseType: !239, size: 64, align: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !655, file: !235, line: 10, baseType: !208, size: 32, align: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !655, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !655, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !655, file: !235, line: 11, baseType: !239, size: 64, align: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !655, file: !235, line: 13, baseType: !245, size: 16, align: 16, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !655, file: !235, line: 14, baseType: !239, size: 64, align: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !655, file: !235, line: 15, baseType: !239, size: 64, align: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !655, file: !235, line: 16, baseType: !208, size: 32, align: 32, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !655, file: !235, line: 17, baseType: !239, size: 64, align: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !655, file: !235, line: 19, baseType: !251, size: 64, align: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !655, file: !235, line: 19, baseType: !251, size: 64, align: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !655, file: !235, line: 21, baseType: !239, size: 64, align: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !655, file: !235, line: 22, baseType: !239, size: 64, align: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !655, file: !235, line: 23, baseType: !239, size: 64, align: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !655, file: !235, line: 24, baseType: !239, size: 64, align: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !655, file: !235, line: 26, baseType: !239, size: 64, align: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !655, file: !235, line: 27, baseType: !239, size: 64, align: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !655, file: !235, line: 28, baseType: !239, size: 64, align: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !655, file: !235, line: 29, baseType: !239, size: 64, align: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !655, file: !235, line: 30, baseType: !239, size: 64, align: 64, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !655, file: !235, line: 31, baseType: !239, size: 64, align: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !655, file: !235, line: 32, baseType: !239, size: 64, align: 64, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !655, file: !235, line: 33, baseType: !239, size: 64, align: 64, offset: 1600)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !655, file: !235, line: 35, baseType: !268, size: 64, align: 64, offset: 1664)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !655, file: !235, line: 38, baseType: !297, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !655, file: !235, line: 39, baseType: !297, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !655, file: !235, line: 40, baseType: !297, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !655, file: !235, line: 41, baseType: !297, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !655, file: !235, line: 42, baseType: !297, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !655, file: !235, line: 43, baseType: !297, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !655, file: !235, line: 44, baseType: !297, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !655, file: !235, line: 45, baseType: !297, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !655, file: !235, line: 46, baseType: !239, size: 64, align: 64, offset: 1792)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !655, file: !235, line: 47, baseType: !239, size: 64, align: 64, offset: 1856)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !655, file: !647, line: 27, baseType: !239, size: 64, align: 64, offset: 1920)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !655, file: !647, line: 28, baseType: !239, size: 64, align: 64, offset: 1984)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !655, file: !647, line: 30, baseType: !208, size: 32, align: 32, offset: 2048)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !655, file: !647, line: 31, baseType: !239, size: 64, align: 64, offset: 2112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !655, file: !647, line: 32, baseType: !239, size: 64, align: 64, offset: 2176)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !655, file: !647, line: 34, baseType: !208, size: 32, align: 32, offset: 2240)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !655, file: !647, line: 35, baseType: !208, size: 32, align: 32, offset: 2272)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !655, file: !647, line: 36, baseType: !208, size: 32, align: 32, offset: 2304)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !655, file: !647, line: 38, baseType: !208, size: 32, align: 32, offset: 2336)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !655, file: !647, line: 38, baseType: !208, size: 32, align: 32, offset: 2368)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !655, file: !647, line: 38, baseType: !208, size: 32, align: 32, offset: 2400)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !655, file: !647, line: 38, baseType: !208, size: 32, align: 32, offset: 2432)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !646, file: !226, line: 9, baseType: !453, size: 64, align: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !646, file: !226, line: 10, baseType: !453, size: 64, align: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !646, file: !226, line: 12, baseType: !239, size: 64, align: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !646, file: !226, line: 13, baseType: !239, size: 64, align: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !646, file: !226, line: 15, baseType: !297, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !646, file: !226, line: 16, baseType: !297, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !646, file: !226, line: 17, baseType: !297, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !646, file: !226, line: 18, baseType: !297, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !646, file: !226, line: 19, baseType: !297, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !646, file: !226, line: 21, baseType: !466, size: 64, align: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !646, file: !226, line: 22, baseType: !208, size: 32, align: 32, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !646, file: !226, line: 25, baseType: !471, size: 128, align: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !646, file: !226, line: 26, baseType: !208, size: 32, align: 32, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !646, file: !226, line: 27, baseType: !208, size: 32, align: 32, offset: 800)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !646, file: !226, line: 29, baseType: !477, size: 64, align: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !646, file: !226, line: 30, baseType: !481, size: 64, align: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !646, file: !226, line: 32, baseType: !239, size: 64, align: 64, offset: 960)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !646, file: !226, line: 33, baseType: !239, size: 64, align: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !646, file: !226, line: 34, baseType: !239, size: 64, align: 64, offset: 1088)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !646, file: !226, line: 35, baseType: !297, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !646, file: !226, line: 36, baseType: !297, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !646, file: !226, line: 37, baseType: !297, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !646, file: !226, line: 38, baseType: !297, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !646, file: !226, line: 40, baseType: !493, size: 128, align: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !646, file: !226, line: 41, baseType: !453, size: 64, align: 64, offset: 1344)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !646, file: !226, line: 42, baseType: !208, size: 32, align: 32, offset: 1408)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !646, file: !226, line: 44, baseType: !381, size: 64, align: 64, offset: 1472)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !646, file: !226, line: 45, baseType: !381, size: 64, align: 64, offset: 1536)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !646, file: !226, line: 53, baseType: !504, size: 64, align: 64, offset: 1600)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !646, file: !226, line: 55, baseType: !508, size: 64, align: 64, offset: 1664)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !646, file: !226, line: 57, baseType: !512, size: 64, align: 64, offset: 1728)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !646, file: !226, line: 60, baseType: !516, size: 64, align: 64, offset: 1792)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !646, file: !226, line: 62, baseType: !520, size: 64, align: 64, offset: 1856)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !646, file: !226, line: 65, baseType: !524, size: 64, align: 64, offset: 1920)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !646, file: !226, line: 69, baseType: !529, size: 64, align: 64, offset: 1984)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !646, file: !226, line: 70, baseType: !622, size: 64, align: 64, offset: 2048)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !646, file: !226, line: 71, baseType: !629, size: 64, align: 64, offset: 2112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !646, file: !226, line: 73, baseType: !629, size: 64, align: 64, offset: 2176)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !646, file: !647, line: 46, baseType: !381, size: 64, align: 64, offset: 2240)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !646, file: !647, line: 47, baseType: !381, size: 64, align: 64, offset: 2304)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !646, file: !647, line: 48, baseType: !748, size: 64, align: 64, offset: 2368)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !635, line: 8, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !635, line: 8, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !646, file: !647, line: 49, baseType: !381, size: 64, align: 64, offset: 2432)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !646, file: !647, line: 51, baseType: !239, size: 64, align: 64, offset: 2496)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !646, file: !647, line: 53, baseType: !239, size: 64, align: 64, offset: 2560)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !646, file: !647, line: 54, baseType: !239, size: 64, align: 64, offset: 2624)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !646, file: !647, line: 55, baseType: !239, size: 64, align: 64, offset: 2688)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !646, file: !647, line: 56, baseType: !239, size: 64, align: 64, offset: 2752)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !646, file: !647, line: 57, baseType: !208, size: 32, align: 32, offset: 2816)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !646, file: !647, line: 59, baseType: !297, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !646, file: !647, line: 60, baseType: !297, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !646, file: !647, line: 62, baseType: !297, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !646, file: !647, line: 63, baseType: !297, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !646, file: !647, line: 64, baseType: !297, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !646, file: !647, line: 65, baseType: !297, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !646, file: !647, line: 66, baseType: !297, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !646, file: !647, line: 67, baseType: !297, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !646, file: !647, line: 68, baseType: !297, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !646, file: !647, line: 69, baseType: !297, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !646, file: !647, line: 70, baseType: !297, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !646, file: !647, line: 71, baseType: !297, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !646, file: !647, line: 72, baseType: !297, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !646, file: !647, line: 74, baseType: !208, size: 32, align: 32, offset: 2880)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !646, file: !647, line: 75, baseType: !208, size: 32, align: 32, offset: 2912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !646, file: !647, line: 76, baseType: !208, size: 32, align: 32, offset: 2944)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !646, file: !647, line: 77, baseType: !208, size: 32, align: 32, offset: 2976)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !646, file: !647, line: 79, baseType: !481, size: 64, align: 64, offset: 3008)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !646, file: !647, line: 80, baseType: !381, size: 64, align: 64, offset: 3072)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !646, file: !647, line: 81, baseType: !381, size: 64, align: 64, offset: 3136)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !646, file: !647, line: 83, baseType: !420, size: 64, align: 64, offset: 3200)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !646, file: !647, line: 84, baseType: !372, size: 32, align: 32, offset: 3264)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !646, file: !647, line: 87, baseType: !208, size: 32, align: 32, offset: 3296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !646, file: !647, line: 91, baseType: !381, size: 64, align: 64, offset: 3328)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !646, file: !647, line: 92, baseType: !493, size: 128, align: 64, offset: 3392)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !646, file: !647, line: 93, baseType: !493, size: 128, align: 64, offset: 3520)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !646, file: !647, line: 95, baseType: !208, size: 32, align: 32, offset: 3648)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !646, file: !647, line: 96, baseType: !208, size: 32, align: 32, offset: 3680)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !646, file: !647, line: 97, baseType: !208, size: 32, align: 32, offset: 3712)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !646, file: !647, line: 100, baseType: !381, size: 64, align: 64, offset: 3776)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !646, file: !647, line: 103, baseType: !381, size: 64, align: 64, offset: 3840)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !646, file: !647, line: 106, baseType: !381, size: 64, align: 64, offset: 3904)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !646, file: !647, line: 108, baseType: !481, size: 64, align: 64, offset: 3968)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !646, file: !647, line: 109, baseType: !381, size: 64, align: 64, offset: 4032)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !646, file: !647, line: 111, baseType: !381, size: 64, align: 64, offset: 4096)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !646, file: !647, line: 114, baseType: !200, size: 64, align: 64, offset: 4160)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !646, file: !647, line: 116, baseType: !481, size: 64, align: 64, offset: 4224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !646, file: !647, line: 117, baseType: !796, size: 32768, align: 64, offset: 4288)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 32768, align: 64, elements: !806)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !798, line: 10, size: 128, align: 64, elements: !799)
!798 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!799 = !{!800, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !797, file: !798, line: 11, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !798, line: 7, baseType: !803)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !633, !213, !212, !212, !239, !420}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !797, file: !798, line: 12, baseType: !212, size: 8, align: 8, offset: 64)
!806 = !{!807}
!807 = !DISubrange(count: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !646, file: !647, line: 118, baseType: !809, size: 2048, align: 8, offset: 37056)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 2048, align: 8, elements: !806)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !646, file: !647, line: 120, baseType: !629, size: 64, align: 64, offset: 39104)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !636, file: !538, line: 9, baseType: !239, size: 64, align: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !538, line: 10, baseType: !239, size: 64, align: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !636, file: !538, line: 11, baseType: !453, size: 64, align: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !636, file: !538, line: 12, baseType: !208, size: 32, align: 32, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !636, file: !538, line: 13, baseType: !239, size: 64, align: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !636, file: !538, line: 15, baseType: !549, size: 64, align: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !636, file: !538, line: 17, baseType: !569, size: 64, align: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !636, file: !574, line: 5, baseType: !239, size: 64, align: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !636, file: !574, line: 6, baseType: !239, size: 64, align: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !636, file: !574, line: 7, baseType: !453, size: 64, align: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !636, file: !574, line: 9, baseType: !481, size: 64, align: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !636, file: !574, line: 10, baseType: !579, size: 64, align: 64, offset: 960)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !636, file: !574, line: 12, baseType: !297, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !636, file: !574, line: 13, baseType: !239, size: 64, align: 64, offset: 1088)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !636, file: !574, line: 14, baseType: !208, size: 32, align: 32, offset: 1152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !636, file: !574, line: 15, baseType: !239, size: 64, align: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !636, file: !574, line: 17, baseType: !297, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !636, file: !574, line: 18, baseType: !297, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !636, file: !574, line: 19, baseType: !297, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !636, file: !574, line: 20, baseType: !297, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !636, file: !574, line: 22, baseType: !297, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !636, file: !574, line: 23, baseType: !297, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !636, file: !574, line: 24, baseType: !297, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !636, file: !574, line: 25, baseType: !297, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !636, file: !574, line: 26, baseType: !297, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !636, file: !574, line: 31, baseType: !618, size: 64, align: 64, offset: 1344)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !636, file: !637, line: 18, baseType: !381, size: 64, align: 64, offset: 1408)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !636, file: !637, line: 20, baseType: !453, size: 64, align: 64, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !636, file: !637, line: 21, baseType: !208, size: 32, align: 32, offset: 1536)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !636, file: !637, line: 22, baseType: !208, size: 32, align: 32, offset: 1568)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODE_REC", file: !843, line: 42, baseType: !844)
!843 = !DIFile(filename: "fe-modes.c", directory: "/home/lichi/Desktop/irssi/task1")
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !843, line: 37, size: 256, align: 64, elements: !845)
!845 = !{!846, !847, !848, !849}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !844, file: !843, line: 38, baseType: !633, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !844, file: !843, line: 39, baseType: !239, size: 64, align: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !844, file: !843, line: 40, baseType: !381, size: 64, align: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "last_mode", scope: !844, file: !843, line: 41, baseType: !453, size: 64, align: 64, offset: 192)
!850 = !{!851, !852, !853}
!851 = distinct !DIGlobalVariable(name: "mode_tag", scope: !0, file: !843, line: 44, type: !208, isLocal: true, isDefinition: true, variable: i32* @mode_tag)
!852 = distinct !DIGlobalVariable(name: "group_multi_mode", scope: !0, file: !843, line: 44, type: !208, isLocal: true, isDefinition: true, variable: i32* @group_multi_mode)
!853 = distinct !DIGlobalVariable(name: "modes", scope: !0, file: !843, line: 45, type: !381, isLocal: true, isDefinition: true, variable: %struct._GSList** @modes)
!854 = !{i32 2, !"Dwarf Version", i32 4}
!855 = !{i32 2, !"Debug Info Version", i32 3}
!856 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!857 = distinct !DISubprogram(name: "fe_modes_init", scope: !843, file: !843, line: 212, type: !369, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!858 = !{}
!859 = !DILocation(line: 214, column: 2, scope: !857)
!860 = !DILocation(line: 215, column: 18, scope: !857)
!861 = !DILocation(line: 217, column: 2, scope: !857)
!862 = !DILocation(line: 218, column: 2, scope: !857)
!863 = !DILocation(line: 219, column: 2, scope: !857)
!864 = !DILocation(line: 220, column: 1, scope: !857)
!865 = distinct !DISubprogram(name: "read_settings", scope: !843, file: !843, line: 197, type: !369, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!866 = !DILocalVariable(name: "old_group", scope: !865, file: !843, line: 199, type: !208)
!867 = !DIExpression()
!868 = !DILocation(line: 199, column: 6, scope: !865)
!869 = !DILocation(line: 201, column: 21, scope: !865)
!870 = !DILocation(line: 201, column: 19, scope: !865)
!871 = !DILocation(line: 202, column: 21, scope: !865)
!872 = !DILocation(line: 202, column: 19, scope: !865)
!873 = !DILocation(line: 204, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !843, line: 204, column: 6)
!875 = !DILocation(line: 204, column: 16, scope: !874)
!876 = !DILocation(line: 204, column: 20, scope: !877)
!877 = !DILexicalBlockFile(scope: !874, file: !843, discriminator: 1)
!878 = !DILocation(line: 204, column: 6, scope: !877)
!879 = !DILocation(line: 205, column: 19, scope: !880)
!880 = distinct !DILexicalBlock(scope: !874, file: !843, line: 204, column: 38)
!881 = !DILocation(line: 205, column: 3, scope: !880)
!882 = !DILocation(line: 206, column: 12, scope: !880)
!883 = !DILocation(line: 207, column: 2, scope: !880)
!884 = !DILocation(line: 207, column: 14, scope: !885)
!885 = !DILexicalBlockFile(scope: !886, file: !843, discriminator: 1)
!886 = distinct !DILexicalBlock(scope: !874, file: !843, line: 207, column: 13)
!887 = !DILocation(line: 207, column: 24, scope: !885)
!888 = !DILocation(line: 207, column: 27, scope: !889)
!889 = !DILexicalBlockFile(scope: !886, file: !843, discriminator: 2)
!890 = !DILocation(line: 207, column: 13, scope: !889)
!891 = !DILocation(line: 208, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !843, line: 207, column: 45)
!893 = !DILocation(line: 208, column: 12, scope: !892)
!894 = !DILocation(line: 209, column: 2, scope: !892)
!895 = !DILocation(line: 210, column: 1, scope: !865)
!896 = distinct !DISubprogram(name: "sig_message_mode", scope: !843, file: !843, line: 161, type: !897, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !644, !213, !213, !213, !213}
!899 = !DILocalVariable(name: "server", arg: 1, scope: !896, file: !843, line: 161, type: !644)
!900 = !DILocation(line: 161, column: 46, scope: !896)
!901 = !DILocalVariable(name: "channel", arg: 2, scope: !896, file: !843, line: 161, type: !213)
!902 = !DILocation(line: 161, column: 66, scope: !896)
!903 = !DILocalVariable(name: "nick", arg: 3, scope: !896, file: !843, line: 162, type: !213)
!904 = !DILocation(line: 162, column: 21, scope: !896)
!905 = !DILocalVariable(name: "addr", arg: 4, scope: !896, file: !843, line: 162, type: !213)
!906 = !DILocation(line: 162, column: 39, scope: !896)
!907 = !DILocalVariable(name: "mode", arg: 5, scope: !896, file: !843, line: 163, type: !213)
!908 = !DILocation(line: 163, column: 21, scope: !896)
!909 = !DILocation(line: 165, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !896, file: !843, line: 165, column: 6)
!911 = !DILocation(line: 165, column: 11, scope: !910)
!912 = !DILocation(line: 165, column: 6, scope: !896)
!913 = !DILocation(line: 165, column: 26, scope: !914)
!914 = !DILexicalBlockFile(scope: !910, file: !843, discriminator: 1)
!915 = !DILocation(line: 165, column: 34, scope: !914)
!916 = !DILocation(line: 165, column: 24, scope: !914)
!917 = !DILocation(line: 165, column: 19, scope: !914)
!918 = !DILocation(line: 167, column: 53, scope: !919)
!919 = distinct !DILexicalBlock(scope: !896, file: !843, line: 167, column: 6)
!920 = !DILocation(line: 167, column: 35, scope: !919)
!921 = !DILocation(line: 167, column: 20, scope: !919)
!922 = !DILocation(line: 167, column: 32, scope: !919)
!923 = !DILocation(line: 167, column: 38, scope: !919)
!924 = !DILocation(line: 167, column: 44, scope: !919)
!925 = !DILocation(line: 168, column: 5, scope: !919)
!926 = !DILocation(line: 167, column: 6, scope: !927)
!927 = !DILexicalBlockFile(scope: !919, file: !843, discriminator: 1)
!928 = !DILocation(line: 167, column: 6, scope: !919)
!929 = !DILocation(line: 167, column: 6, scope: !896)
!930 = !DILocation(line: 169, column: 3, scope: !919)
!931 = !DILocation(line: 171, column: 43, scope: !932)
!932 = distinct !DILexicalBlock(scope: !896, file: !843, line: 171, column: 6)
!933 = !DILocation(line: 171, column: 25, scope: !932)
!934 = !DILocation(line: 171, column: 10, scope: !932)
!935 = !DILocation(line: 171, column: 21, scope: !932)
!936 = !DILocation(line: 171, column: 65, scope: !932)
!937 = !DILocation(line: 171, column: 47, scope: !938)
!938 = !DILexicalBlockFile(scope: !932, file: !843, discriminator: 1)
!939 = !DILocation(line: 171, column: 32, scope: !932)
!940 = !DILocation(line: 171, column: 20, scope: !932)
!941 = !DILocation(line: 171, column: 8, scope: !942)
!942 = !DILexicalBlockFile(scope: !932, file: !843, discriminator: 2)
!943 = !DILocation(line: 171, column: 8, scope: !932)
!944 = !DILocation(line: 171, column: 6, scope: !896)
!945 = !DILocation(line: 173, column: 39, scope: !946)
!946 = distinct !DILexicalBlock(scope: !932, file: !843, line: 171, column: 31)
!947 = !DILocation(line: 173, column: 44, scope: !946)
!948 = !DILocation(line: 173, column: 50, scope: !946)
!949 = !DILocation(line: 173, column: 3, scope: !946)
!950 = !DILocation(line: 175, column: 2, scope: !946)
!951 = !DILocation(line: 175, column: 13, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !843, discriminator: 1)
!953 = distinct !DILexicalBlock(scope: !932, file: !843, line: 175, column: 13)
!954 = !DILocation(line: 175, column: 18, scope: !952)
!955 = !DILocation(line: 177, column: 39, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !843, line: 175, column: 26)
!957 = !DILocation(line: 177, column: 47, scope: !956)
!958 = !DILocation(line: 177, column: 103, scope: !956)
!959 = !DILocation(line: 177, column: 112, scope: !956)
!960 = !DILocation(line: 177, column: 118, scope: !956)
!961 = !DILocation(line: 177, column: 3, scope: !956)
!962 = !DILocation(line: 180, column: 2, scope: !956)
!963 = !DILocalVariable(name: "chanrec", scope: !964, file: !843, line: 182, type: !633)
!964 = distinct !DILexicalBlock(scope: !953, file: !843, line: 180, column: 9)
!965 = !DILocation(line: 182, column: 20, scope: !964)
!966 = !DILocation(line: 184, column: 14, scope: !964)
!967 = !DILocation(line: 184, column: 13, scope: !964)
!968 = !DILocation(line: 184, column: 13, scope: !969)
!969 = !DILexicalBlockFile(scope: !964, file: !843, discriminator: 1)
!970 = !DILocation(line: 185, column: 139, scope: !964)
!971 = !DILocation(line: 185, column: 121, scope: !964)
!972 = !DILocation(line: 185, column: 106, scope: !964)
!973 = !DILocation(line: 185, column: 17, scope: !964)
!974 = !DILocation(line: 185, column: 92, scope: !969)
!975 = !DILocation(line: 185, column: 92, scope: !964)
!976 = !DILocation(line: 185, column: 67, scope: !977)
!977 = !DILexicalBlockFile(scope: !964, file: !843, discriminator: 2)
!978 = !DILocation(line: 185, column: 51, scope: !964)
!979 = !DILocation(line: 185, column: 50, scope: !964)
!980 = !DILocation(line: 185, column: 25, scope: !981)
!981 = !DILexicalBlockFile(scope: !964, file: !843, discriminator: 3)
!982 = !DILocation(line: 185, column: 5, scope: !964)
!983 = !DILocation(line: 184, column: 13, scope: !977)
!984 = !DILocation(line: 184, column: 13, scope: !981)
!985 = !DILocation(line: 184, column: 11, scope: !981)
!986 = !DILocation(line: 187, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !964, file: !843, line: 187, column: 7)
!988 = !DILocation(line: 187, column: 15, scope: !987)
!989 = !DILocation(line: 187, column: 22, scope: !987)
!990 = !DILocation(line: 187, column: 44, scope: !991)
!991 = !DILexicalBlockFile(scope: !987, file: !843, discriminator: 1)
!992 = !DILocation(line: 187, column: 50, scope: !991)
!993 = !DILocation(line: 187, column: 58, scope: !991)
!994 = !DILocation(line: 187, column: 25, scope: !991)
!995 = !DILocation(line: 187, column: 64, scope: !991)
!996 = !DILocation(line: 187, column: 7, scope: !991)
!997 = !DILocation(line: 188, column: 19, scope: !987)
!998 = !DILocation(line: 188, column: 28, scope: !987)
!999 = !DILocation(line: 188, column: 34, scope: !987)
!1000 = !DILocation(line: 188, column: 40, scope: !987)
!1001 = !DILocation(line: 188, column: 4, scope: !987)
!1002 = !DILocation(line: 190, column: 40, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !987, file: !843, line: 189, column: 8)
!1004 = !DILocation(line: 190, column: 48, scope: !1003)
!1005 = !DILocation(line: 190, column: 97, scope: !1003)
!1006 = !DILocation(line: 190, column: 106, scope: !1003)
!1007 = !DILocation(line: 190, column: 112, scope: !1003)
!1008 = !DILocation(line: 190, column: 118, scope: !1003)
!1009 = !DILocation(line: 190, column: 4, scope: !1003)
!1010 = !DILocation(line: 195, column: 1, scope: !896)
!1011 = distinct !DISubprogram(name: "fe_modes_deinit", scope: !843, file: !843, line: 222, type: !369, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1012 = !DILocation(line: 224, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1011, file: !843, line: 224, column: 6)
!1014 = !DILocation(line: 224, column: 15, scope: !1013)
!1015 = !DILocation(line: 224, column: 6, scope: !1011)
!1016 = !DILocation(line: 225, column: 19, scope: !1013)
!1017 = !DILocation(line: 225, column: 3, scope: !1013)
!1018 = !DILocation(line: 227, column: 2, scope: !1011)
!1019 = !DILocation(line: 228, column: 2, scope: !1011)
!1020 = !DILocation(line: 230, column: 2, scope: !1011)
!1021 = !DILocation(line: 231, column: 1, scope: !1011)
!1022 = distinct !DISubprogram(name: "sig_print_starting", scope: !843, file: !843, line: 97, type: !369, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1023 = !DILocation(line: 99, column: 2, scope: !1022)
!1024 = !DILocation(line: 99, column: 9, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1022, file: !843, discriminator: 1)
!1026 = !DILocation(line: 99, column: 15, scope: !1025)
!1027 = !DILocation(line: 99, column: 2, scope: !1025)
!1028 = !DILocation(line: 100, column: 14, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !843, line: 99, column: 23)
!1030 = !DILocation(line: 100, column: 21, scope: !1029)
!1031 = !DILocation(line: 100, column: 3, scope: !1029)
!1032 = !DILocation(line: 101, column: 30, scope: !1029)
!1033 = !DILocation(line: 101, column: 37, scope: !1029)
!1034 = !DILocation(line: 101, column: 17, scope: !1029)
!1035 = !DILocation(line: 99, column: 2, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1022, file: !843, discriminator: 2)
!1037 = distinct !{!1037, !1023}
!1038 = !DILocation(line: 104, column: 2, scope: !1022)
!1039 = !DILocation(line: 105, column: 1, scope: !1022)
!1040 = distinct !DISubprogram(name: "sig_check_modes", scope: !843, file: !843, line: 107, type: !1041, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!208}
!1043 = !DILocalVariable(name: "tmp", scope: !1040, file: !843, line: 109, type: !381)
!1044 = !DILocation(line: 109, column: 10, scope: !1040)
!1045 = !DILocalVariable(name: "next", scope: !1040, file: !843, line: 109, type: !381)
!1046 = !DILocation(line: 109, column: 16, scope: !1040)
!1047 = !DILocation(line: 111, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !843, line: 111, column: 6)
!1049 = !DILocation(line: 111, column: 12, scope: !1048)
!1050 = !DILocation(line: 111, column: 6, scope: !1040)
!1051 = !DILocation(line: 112, column: 3, scope: !1048)
!1052 = !DILocation(line: 114, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1040, file: !843, line: 114, column: 2)
!1054 = !DILocation(line: 114, column: 11, scope: !1053)
!1055 = !DILocation(line: 114, column: 7, scope: !1053)
!1056 = !DILocation(line: 114, column: 20, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !843, discriminator: 1)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !843, line: 114, column: 2)
!1059 = !DILocation(line: 114, column: 24, scope: !1057)
!1060 = !DILocation(line: 114, column: 2, scope: !1057)
!1061 = !DILocalVariable(name: "rec", scope: !1062, file: !843, line: 115, type: !841)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !843, line: 114, column: 44)
!1063 = !DILocation(line: 115, column: 13, scope: !1062)
!1064 = !DILocation(line: 115, column: 19, scope: !1062)
!1065 = !DILocation(line: 115, column: 24, scope: !1062)
!1066 = !DILocation(line: 117, column: 10, scope: !1062)
!1067 = !DILocation(line: 117, column: 15, scope: !1062)
!1068 = !DILocation(line: 117, column: 8, scope: !1062)
!1069 = !DILocation(line: 118, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !843, line: 118, column: 7)
!1071 = !DILocation(line: 118, column: 17, scope: !1070)
!1072 = !DILocation(line: 118, column: 22, scope: !1070)
!1073 = !DILocation(line: 118, column: 16, scope: !1070)
!1074 = !DILocation(line: 118, column: 32, scope: !1070)
!1075 = !DILocation(line: 118, column: 7, scope: !1062)
!1076 = !DILocation(line: 119, column: 15, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !843, line: 118, column: 38)
!1078 = !DILocation(line: 119, column: 4, scope: !1077)
!1079 = !DILocation(line: 120, column: 17, scope: !1077)
!1080 = !DILocation(line: 120, column: 4, scope: !1077)
!1081 = !DILocation(line: 121, column: 3, scope: !1077)
!1082 = !DILocation(line: 122, column: 2, scope: !1062)
!1083 = !DILocation(line: 114, column: 38, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1058, file: !843, discriminator: 2)
!1085 = !DILocation(line: 114, column: 36, scope: !1084)
!1086 = !DILocation(line: 114, column: 2, scope: !1084)
!1087 = distinct !{!1087, !1088}
!1088 = !DILocation(line: 114, column: 2, scope: !1040)
!1089 = !DILocation(line: 124, column: 6, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1040, file: !843, line: 124, column: 6)
!1091 = !DILocation(line: 124, column: 12, scope: !1090)
!1092 = !DILocation(line: 124, column: 6, scope: !1040)
!1093 = !DILocation(line: 125, column: 3, scope: !1090)
!1094 = !DILocation(line: 126, column: 2, scope: !1040)
!1095 = !DILocation(line: 127, column: 1, scope: !1040)
!1096 = distinct !DISubprogram(name: "print_mode", scope: !843, file: !843, line: 74, type: !1097, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !841}
!1099 = !DILocalVariable(name: "rec", arg: 1, scope: !1096, file: !843, line: 74, type: !841)
!1100 = !DILocation(line: 74, column: 34, scope: !1096)
!1101 = !DILocalVariable(name: "tmp", scope: !1096, file: !843, line: 76, type: !381)
!1102 = !DILocation(line: 76, column: 10, scope: !1096)
!1103 = !DILocalVariable(name: "nicks", scope: !1096, file: !843, line: 77, type: !239)
!1104 = !DILocation(line: 77, column: 8, scope: !1096)
!1105 = !DILocation(line: 79, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !843, line: 79, column: 6)
!1107 = !DILocation(line: 79, column: 29, scope: !1106)
!1108 = !DILocation(line: 79, column: 34, scope: !1106)
!1109 = !DILocation(line: 79, column: 6, scope: !1106)
!1110 = !DILocation(line: 79, column: 43, scope: !1106)
!1111 = !DILocation(line: 79, column: 6, scope: !1096)
!1112 = !DILocation(line: 81, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1106, file: !843, line: 79, column: 51)
!1114 = !DILocation(line: 84, column: 8, scope: !1096)
!1115 = !DILocation(line: 84, column: 6, scope: !1096)
!1116 = !DILocation(line: 84, column: 21, scope: !1096)
!1117 = !DILocation(line: 86, column: 27, scope: !1096)
!1118 = !DILocation(line: 86, column: 32, scope: !1096)
!1119 = !DILocation(line: 86, column: 10, scope: !1096)
!1120 = !DILocation(line: 86, column: 8, scope: !1096)
!1121 = !DILocation(line: 87, column: 38, scope: !1096)
!1122 = !DILocation(line: 87, column: 43, scope: !1096)
!1123 = !DILocation(line: 87, column: 52, scope: !1096)
!1124 = !DILocation(line: 87, column: 60, scope: !1096)
!1125 = !DILocation(line: 87, column: 65, scope: !1096)
!1126 = !DILocation(line: 87, column: 74, scope: !1096)
!1127 = !DILocation(line: 87, column: 128, scope: !1096)
!1128 = !DILocation(line: 87, column: 133, scope: !1096)
!1129 = !DILocation(line: 87, column: 142, scope: !1096)
!1130 = !DILocation(line: 87, column: 156, scope: !1096)
!1131 = !DILocation(line: 87, column: 161, scope: !1096)
!1132 = !DILocation(line: 87, column: 167, scope: !1096)
!1133 = !DILocation(line: 87, column: 2, scope: !1096)
!1134 = !DILocation(line: 90, column: 9, scope: !1096)
!1135 = !DILocation(line: 90, column: 2, scope: !1096)
!1136 = !DILocation(line: 92, column: 10, scope: !1096)
!1137 = !DILocation(line: 92, column: 8, scope: !1096)
!1138 = !DILocation(line: 93, column: 1, scope: !1096)
!1139 = !DILocation(line: 93, column: 1, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1096, file: !843, discriminator: 1)
!1141 = distinct !DISubprogram(name: "mode_destroy", scope: !843, file: !843, line: 63, type: !1097, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1142 = !DILocalVariable(name: "mode", arg: 1, scope: !1141, file: !843, line: 63, type: !841)
!1143 = !DILocation(line: 63, column: 36, scope: !1141)
!1144 = !DILocation(line: 65, column: 2, scope: !1141)
!1145 = distinct !{!1145, !1144}
!1146 = !DILocation(line: 65, column: 10, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1148, file: !843, discriminator: 1)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !843, line: 65, column: 10)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !843, line: 65, column: 4)
!1150 = !DILocation(line: 65, column: 15, scope: !1147)
!1151 = !DILocation(line: 65, column: 5, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !843, discriminator: 2)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !843, line: 65, column: 3)
!1154 = !DILocation(line: 65, column: 14, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1156, file: !843, discriminator: 3)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !843, line: 65, column: 12)
!1157 = !DILocation(line: 65, column: 99, scope: !1155)
!1158 = !DILocation(line: 65, column: 110, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1149, file: !843, discriminator: 4)
!1160 = !DILocation(line: 67, column: 25, scope: !1141)
!1161 = !DILocation(line: 67, column: 32, scope: !1141)
!1162 = !DILocation(line: 67, column: 10, scope: !1141)
!1163 = !DILocation(line: 67, column: 8, scope: !1141)
!1164 = !DILocation(line: 68, column: 18, scope: !1141)
!1165 = !DILocation(line: 68, column: 24, scope: !1141)
!1166 = !DILocation(line: 68, column: 2, scope: !1141)
!1167 = !DILocation(line: 69, column: 15, scope: !1141)
!1168 = !DILocation(line: 69, column: 21, scope: !1141)
!1169 = !DILocation(line: 69, column: 2, scope: !1141)
!1170 = !DILocation(line: 70, column: 9, scope: !1141)
!1171 = !DILocation(line: 70, column: 15, scope: !1141)
!1172 = !DILocation(line: 70, column: 2, scope: !1141)
!1173 = !DILocation(line: 71, column: 9, scope: !1141)
!1174 = !DILocation(line: 71, column: 2, scope: !1141)
!1175 = !DILocation(line: 72, column: 1, scope: !1141)
!1176 = !DILocation(line: 72, column: 1, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1141, file: !843, discriminator: 1)
!1178 = distinct !DISubprogram(name: "msg_multi_mode", scope: !843, file: !843, line: 129, type: !1179, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !633, !213, !213, !213}
!1181 = !DILocalVariable(name: "channel", arg: 1, scope: !1178, file: !843, line: 129, type: !633)
!1182 = !DILocation(line: 129, column: 45, scope: !1178)
!1183 = !DILocalVariable(name: "sender", arg: 2, scope: !1178, file: !843, line: 129, type: !213)
!1184 = !DILocation(line: 129, column: 66, scope: !1178)
!1185 = !DILocalVariable(name: "addr", arg: 3, scope: !1178, file: !843, line: 130, type: !213)
!1186 = !DILocation(line: 130, column: 19, scope: !1178)
!1187 = !DILocalVariable(name: "mode", arg: 4, scope: !1178, file: !843, line: 130, type: !213)
!1188 = !DILocation(line: 130, column: 37, scope: !1178)
!1189 = !DILocalVariable(name: "rec", scope: !1178, file: !843, line: 132, type: !841)
!1190 = !DILocation(line: 132, column: 12, scope: !1178)
!1191 = !DILocation(line: 134, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1178, file: !843, line: 134, column: 6)
!1193 = !DILocation(line: 134, column: 12, scope: !1192)
!1194 = !DILocation(line: 134, column: 6, scope: !1178)
!1195 = !DILocation(line: 135, column: 3, scope: !1192)
!1196 = !DILocation(line: 137, column: 26, scope: !1178)
!1197 = !DILocation(line: 137, column: 8, scope: !1178)
!1198 = !DILocation(line: 137, column: 6, scope: !1178)
!1199 = !DILocation(line: 138, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1178, file: !843, line: 138, column: 6)
!1201 = !DILocation(line: 138, column: 10, scope: !1200)
!1202 = !DILocation(line: 138, column: 17, scope: !1200)
!1203 = !DILocation(line: 138, column: 30, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1200, file: !843, discriminator: 1)
!1205 = !DILocation(line: 138, column: 35, scope: !1204)
!1206 = !DILocation(line: 138, column: 41, scope: !1204)
!1207 = !DILocation(line: 138, column: 20, scope: !1204)
!1208 = !DILocation(line: 138, column: 47, scope: !1204)
!1209 = !DILocation(line: 138, column: 6, scope: !1204)
!1210 = !DILocation(line: 140, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1200, file: !843, line: 138, column: 53)
!1212 = !DILocation(line: 140, column: 3, scope: !1211)
!1213 = !DILocation(line: 141, column: 16, scope: !1211)
!1214 = !DILocation(line: 141, column: 3, scope: !1211)
!1215 = !DILocation(line: 142, column: 7, scope: !1211)
!1216 = !DILocation(line: 143, column: 2, scope: !1211)
!1217 = !DILocation(line: 145, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1178, file: !843, line: 145, column: 6)
!1219 = !DILocation(line: 145, column: 10, scope: !1218)
!1220 = !DILocation(line: 145, column: 6, scope: !1178)
!1221 = !DILocation(line: 147, column: 23, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !843, line: 145, column: 18)
!1223 = !DILocation(line: 147, column: 10, scope: !1222)
!1224 = !DILocation(line: 147, column: 7, scope: !1222)
!1225 = !DILocation(line: 148, column: 26, scope: !1222)
!1226 = !DILocation(line: 148, column: 33, scope: !1222)
!1227 = !DILocation(line: 148, column: 11, scope: !1222)
!1228 = !DILocation(line: 148, column: 9, scope: !1222)
!1229 = !DILocation(line: 150, column: 18, scope: !1222)
!1230 = !DILocation(line: 150, column: 3, scope: !1222)
!1231 = !DILocation(line: 150, column: 8, scope: !1222)
!1232 = !DILocation(line: 150, column: 16, scope: !1222)
!1233 = !DILocation(line: 151, column: 24, scope: !1222)
!1234 = !DILocation(line: 151, column: 15, scope: !1222)
!1235 = !DILocation(line: 151, column: 3, scope: !1222)
!1236 = !DILocation(line: 151, column: 8, scope: !1222)
!1237 = !DILocation(line: 151, column: 13, scope: !1222)
!1238 = !DILocation(line: 152, column: 2, scope: !1222)
!1239 = !DILocation(line: 154, column: 30, scope: !1178)
!1240 = !DILocation(line: 154, column: 35, scope: !1178)
!1241 = !DILocation(line: 154, column: 51, scope: !1178)
!1242 = !DILocation(line: 154, column: 42, scope: !1178)
!1243 = !DILocation(line: 154, column: 15, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1178, file: !843, discriminator: 1)
!1245 = !DILocation(line: 154, column: 2, scope: !1178)
!1246 = !DILocation(line: 154, column: 7, scope: !1178)
!1247 = !DILocation(line: 154, column: 13, scope: !1178)
!1248 = !DILocation(line: 155, column: 19, scope: !1178)
!1249 = !DILocation(line: 155, column: 2, scope: !1178)
!1250 = !DILocation(line: 155, column: 7, scope: !1178)
!1251 = !DILocation(line: 155, column: 17, scope: !1178)
!1252 = !DILocation(line: 157, column: 2, scope: !1178)
!1253 = !DILocation(line: 158, column: 1, scope: !1178)
!1254 = distinct !DISubprogram(name: "mode_find_channel", scope: !843, file: !843, line: 47, type: !1255, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !858)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!841, !633}
!1257 = !DILocalVariable(name: "channel", arg: 1, scope: !1254, file: !843, line: 47, type: !633)
!1258 = !DILocation(line: 47, column: 53, scope: !1254)
!1259 = !DILocalVariable(name: "tmp", scope: !1254, file: !843, line: 49, type: !381)
!1260 = !DILocation(line: 49, column: 10, scope: !1254)
!1261 = !DILocation(line: 51, column: 2, scope: !1254)
!1262 = distinct !{!1262, !1261}
!1263 = !DILocation(line: 51, column: 10, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1265, file: !843, discriminator: 1)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !843, line: 51, column: 10)
!1266 = distinct !DILexicalBlock(scope: !1254, file: !843, line: 51, column: 4)
!1267 = !DILocation(line: 51, column: 18, scope: !1264)
!1268 = !DILocation(line: 51, column: 5, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1270, file: !843, discriminator: 2)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !843, line: 51, column: 3)
!1271 = !DILocation(line: 51, column: 14, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !843, discriminator: 3)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !843, line: 51, column: 12)
!1274 = !DILocation(line: 51, column: 102, scope: !1272)
!1275 = !DILocation(line: 51, column: 7, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1266, file: !843, discriminator: 4)
!1277 = !DILocation(line: 53, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1254, file: !843, line: 53, column: 2)
!1279 = !DILocation(line: 53, column: 11, scope: !1278)
!1280 = !DILocation(line: 53, column: 7, scope: !1278)
!1281 = !DILocation(line: 53, column: 20, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !843, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !843, line: 53, column: 2)
!1284 = !DILocation(line: 53, column: 24, scope: !1282)
!1285 = !DILocation(line: 53, column: 2, scope: !1282)
!1286 = !DILocalVariable(name: "rec", scope: !1287, file: !843, line: 54, type: !841)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !843, line: 53, column: 49)
!1288 = !DILocation(line: 54, column: 13, scope: !1287)
!1289 = !DILocation(line: 54, column: 19, scope: !1287)
!1290 = !DILocation(line: 54, column: 24, scope: !1287)
!1291 = !DILocation(line: 56, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !843, line: 56, column: 7)
!1293 = !DILocation(line: 56, column: 12, scope: !1292)
!1294 = !DILocation(line: 56, column: 23, scope: !1292)
!1295 = !DILocation(line: 56, column: 20, scope: !1292)
!1296 = !DILocation(line: 56, column: 7, scope: !1287)
!1297 = !DILocation(line: 57, column: 32, scope: !1292)
!1298 = !DILocation(line: 57, column: 25, scope: !1292)
!1299 = !DILocation(line: 58, column: 2, scope: !1287)
!1300 = !DILocation(line: 53, column: 38, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1283, file: !843, discriminator: 2)
!1302 = !DILocation(line: 53, column: 43, scope: !1301)
!1303 = !DILocation(line: 53, column: 36, scope: !1301)
!1304 = !DILocation(line: 53, column: 2, scope: !1301)
!1305 = distinct !{!1305, !1306}
!1306 = !DILocation(line: 53, column: 2, scope: !1254)
!1307 = !DILocation(line: 60, column: 2, scope: !1254)
!1308 = !DILocation(line: 61, column: 1, scope: !1254)
