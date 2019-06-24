; ModuleID = './line216-fe-channels.o.i'
source_filename = "./line216-fe-channels.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.THEME_REC = type { i32, i8*, i8*, i64, i32, i8, %struct._GHashTable*, [256 x i32], %struct._GSList*, %struct._GHashTable*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
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
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._SERVER_SETUP_REC = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"autoclose_windows\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"show_names_on_join\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"names_max_columns\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"names_max_width\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"channel created\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"window item changed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"channel add\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"channel modify\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"channel remove\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"channel list\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"auto noauto -bots -botcmd\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"count ops halfops voices normal\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"invite window\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current_theme = external global %struct.THEME_REC*, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.signal_channel_destroyed = private unnamed_addr constant [25 x i8] c"signal_channel_destroyed\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@__func__.signal_window_item_changed = private unnamed_addr constant [27 x i8] c"signal_window_item_changed\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.sig_disconnected = private unnamed_addr constant [17 x i8] c"sig_disconnected\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"invite\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.signal_channel_created_curwin = private unnamed_addr constant [30 x i8] c"signal_channel_created_curwin\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"command join\00", align 1
@channels = external global %struct._GSList*, align 8
@.str.35 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"botcmd\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"channel add fill\00", align 1
@setupchannels = external global %struct._GSList*, align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"autojoin, \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"bots: %s, \00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"botcmd: %s, \00", align 1
@__func__.cmd_names = private unnamed_addr constant [10 x i8] c"cmd_names\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"halfops\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"voices\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"command names\00", align 1
@__func__.cmd_cycle = private unnamed_addr constant [10 x i8] c"cmd_cycle\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"command part\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_channels_nicklist(%struct._CHANNEL_REC*, i32) #0 !dbg !820 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !825, metadata !826), !dbg !827
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !828, metadata !826), !dbg !829
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !830, metadata !826), !dbg !831
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !832, metadata !826), !dbg !833
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !834, metadata !826), !dbg !835
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !836, metadata !826), !dbg !837
  call void @llvm.dbg.declare(metadata i32* %9, metadata !838, metadata !826), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %10, metadata !840, metadata !826), !dbg !841
  call void @llvm.dbg.declare(metadata i32* %11, metadata !842, metadata !826), !dbg !843
  call void @llvm.dbg.declare(metadata i32* %12, metadata !844, metadata !826), !dbg !845
  call void @llvm.dbg.declare(metadata i32* %13, metadata !846, metadata !826), !dbg !847
  call void @llvm.dbg.declare(metadata i8** %14, metadata !848, metadata !826), !dbg !849
  store i32 0, i32* %13, align 4, !dbg !850
  store i32 0, i32* %12, align 4, !dbg !851
  store i32 0, i32* %11, align 4, !dbg !852
  store i32 0, i32* %10, align 4, !dbg !853
  store i32 0, i32* %9, align 4, !dbg !854
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !855
  %16 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %15), !dbg !856
  store %struct._GSList* %16, %struct._GSList** %7, align 8, !dbg !857
  store %struct._GSList* null, %struct._GSList** %8, align 8, !dbg !858
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !859
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 4, !dbg !860
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %18, align 8, !dbg !860
  %20 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %19, i32 0, i32 28, !dbg !861
  %21 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %20, align 8, !dbg !861
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !862
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 4, !dbg !863
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %23, align 8, !dbg !863
  %25 = call i8* %21(%struct._SERVER_REC* %24), !dbg !859
  store i8* %25, i8** %14, align 8, !dbg !864
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !865
  store %struct._GSList* %26, %struct._GSList** %6, align 8, !dbg !867
  br label %27, !dbg !868

; <label>:27:                                     ; preds = %99, %2
  %28 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !869
  %29 = icmp ne %struct._GSList* %28, null, !dbg !872
  br i1 %29, label %30, label %103, !dbg !873

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !874
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !876
  %33 = load i8*, i8** %32, align 8, !dbg !876
  %34 = bitcast i8* %33 to %struct._NICK_REC*, !dbg !874
  store %struct._NICK_REC* %34, %struct._NICK_REC** %5, align 8, !dbg !877
  %35 = load i32, i32* %9, align 4, !dbg !878
  %36 = add nsw i32 %35, 1, !dbg !878
  store i32 %36, i32* %9, align 4, !dbg !878
  %37 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !879
  %38 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %37, i32 0, i32 7, !dbg !881
  %39 = load i8, i8* %38, align 4, !dbg !881
  %40 = lshr i8 %39, 3, !dbg !881
  %41 = and i8 %40, 1, !dbg !881
  %42 = zext i8 %41 to i32, !dbg !881
  %43 = icmp ne i32 %42, 0, !dbg !879
  br i1 %43, label %44, label %52, !dbg !882

; <label>:44:                                     ; preds = %30
  %45 = load i32, i32* %13, align 4, !dbg !883
  %46 = add nsw i32 %45, 1, !dbg !883
  store i32 %46, i32* %13, align 4, !dbg !883
  %47 = load i32, i32* %4, align 4, !dbg !885
  %48 = and i32 %47, 1, !dbg !887
  %49 = icmp eq i32 %48, 0, !dbg !888
  br i1 %49, label %50, label %51, !dbg !889

; <label>:50:                                     ; preds = %44
  br label %99, !dbg !890

; <label>:51:                                     ; preds = %44
  br label %94, !dbg !891

; <label>:52:                                     ; preds = %30
  %53 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !892
  %54 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %53, i32 0, i32 7, !dbg !895
  %55 = load i8, i8* %54, align 4, !dbg !895
  %56 = lshr i8 %55, 4, !dbg !895
  %57 = and i8 %56, 1, !dbg !895
  %58 = zext i8 %57 to i32, !dbg !895
  %59 = icmp ne i32 %58, 0, !dbg !892
  br i1 %59, label %60, label %68, !dbg !892

; <label>:60:                                     ; preds = %52
  %61 = load i32, i32* %12, align 4, !dbg !896
  %62 = add nsw i32 %61, 1, !dbg !896
  store i32 %62, i32* %12, align 4, !dbg !896
  %63 = load i32, i32* %4, align 4, !dbg !898
  %64 = and i32 %63, 2, !dbg !900
  %65 = icmp eq i32 %64, 0, !dbg !901
  br i1 %65, label %66, label %67, !dbg !902

; <label>:66:                                     ; preds = %60
  br label %99, !dbg !903

; <label>:67:                                     ; preds = %60
  br label %93, !dbg !904

; <label>:68:                                     ; preds = %52
  %69 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !905
  %70 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %69, i32 0, i32 7, !dbg !908
  %71 = load i8, i8* %70, align 4, !dbg !908
  %72 = lshr i8 %71, 5, !dbg !908
  %73 = and i8 %72, 1, !dbg !908
  %74 = zext i8 %73 to i32, !dbg !908
  %75 = icmp ne i32 %74, 0, !dbg !905
  br i1 %75, label %76, label %84, !dbg !905

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %11, align 4, !dbg !909
  %78 = add nsw i32 %77, 1, !dbg !909
  store i32 %78, i32* %11, align 4, !dbg !909
  %79 = load i32, i32* %4, align 4, !dbg !911
  %80 = and i32 %79, 4, !dbg !913
  %81 = icmp eq i32 %80, 0, !dbg !914
  br i1 %81, label %82, label %83, !dbg !915

; <label>:82:                                     ; preds = %76
  br label %99, !dbg !916

; <label>:83:                                     ; preds = %76
  br label %92, !dbg !917

; <label>:84:                                     ; preds = %68
  %85 = load i32, i32* %10, align 4, !dbg !918
  %86 = add nsw i32 %85, 1, !dbg !918
  store i32 %86, i32* %10, align 4, !dbg !918
  %87 = load i32, i32* %4, align 4, !dbg !920
  %88 = and i32 %87, 8, !dbg !922
  %89 = icmp eq i32 %88, 0, !dbg !923
  br i1 %89, label %90, label %91, !dbg !924

; <label>:90:                                     ; preds = %84
  br label %99, !dbg !925

; <label>:91:                                     ; preds = %84
  br label %92

; <label>:92:                                     ; preds = %91, %83
  br label %93

; <label>:93:                                     ; preds = %92, %67
  br label %94

; <label>:94:                                     ; preds = %93, %51
  %95 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !926
  %96 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !927
  %97 = bitcast %struct._NICK_REC* %96 to i8*, !dbg !927
  %98 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %95, i8* %97), !dbg !928
  store %struct._GSList* %98, %struct._GSList** %8, align 8, !dbg !929
  br label %99, !dbg !930

; <label>:99:                                     ; preds = %94, %90, %82, %66, %50
  %100 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !931
  %101 = getelementptr inbounds %struct._GSList, %struct._GSList* %100, i32 0, i32 1, !dbg !933
  %102 = load %struct._GSList*, %struct._GSList** %101, align 8, !dbg !933
  store %struct._GSList* %102, %struct._GSList** %6, align 8, !dbg !934
  br label %27, !dbg !935, !llvm.loop !936

; <label>:103:                                    ; preds = %27
  %104 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !938
  call void @g_slist_free(%struct._GSList* %104), !dbg !939
  %105 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !940
  %106 = load i8*, i8** %14, align 8, !dbg !941
  %107 = call %struct._GSList* @g_slist_sort_with_data(%struct._GSList* %105, i32 (i8*, i8*, i8*)* bitcast (i32 (%struct._NICK_REC*, %struct._NICK_REC*, i8*)* @nicklist_compare to i32 (i8*, i8*, i8*)*), i8* %106), !dbg !942
  store %struct._GSList* %107, %struct._GSList** %8, align 8, !dbg !943
  %108 = load i32, i32* %4, align 4, !dbg !944
  %109 = and i32 %108, 16, !dbg !946
  %110 = icmp eq i32 %109, 0, !dbg !947
  br i1 %110, label %111, label %129, !dbg !948

; <label>:111:                                    ; preds = %103
  %112 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !949
  %113 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %112, i32 0, i32 4, !dbg !951
  %114 = load %struct._SERVER_REC*, %struct._SERVER_REC** %113, align 8, !dbg !951
  %115 = bitcast %struct._SERVER_REC* %114 to i8*, !dbg !949
  %116 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !952
  %117 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %116, i32 0, i32 5, !dbg !953
  %118 = load i8*, i8** %117, align 8, !dbg !953
  %119 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !954
  %120 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %119, i32 0, i32 5, !dbg !955
  %121 = load i8*, i8** %120, align 8, !dbg !955
  %122 = load i32, i32* %9, align 4, !dbg !956
  %123 = load i32, i32* %13, align 4, !dbg !957
  %124 = load i32, i32* %12, align 4, !dbg !958
  %125 = load i32, i32* %11, align 4, !dbg !959
  %126 = load i32, i32* %10, align 4, !dbg !960
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %115, i8* %118, i32 524288, i32 77, i8* %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126), !dbg !961
  %127 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !962
  %128 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !963
  call void @display_sorted_nicks(%struct._CHANNEL_REC* %127, %struct._GSList* %128), !dbg !964
  br label %129, !dbg !965

; <label>:129:                                    ; preds = %111, %103
  %130 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !966
  call void @g_slist_free(%struct._GSList* %130), !dbg !967
  %131 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !968
  %132 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %131, i32 0, i32 4, !dbg !969
  %133 = load %struct._SERVER_REC*, %struct._SERVER_REC** %132, align 8, !dbg !969
  %134 = bitcast %struct._SERVER_REC* %133 to i8*, !dbg !968
  %135 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !970
  %136 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %135, i32 0, i32 5, !dbg !971
  %137 = load i8*, i8** %136, align 8, !dbg !971
  %138 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !972
  %139 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %138, i32 0, i32 5, !dbg !973
  %140 = load i8*, i8** %139, align 8, !dbg !973
  %141 = load i32, i32* %9, align 4, !dbg !974
  %142 = load i32, i32* %13, align 4, !dbg !975
  %143 = load i32, i32* %12, align 4, !dbg !976
  %144 = load i32, i32* %11, align 4, !dbg !977
  %145 = load i32, i32* %10, align 4, !dbg !978
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %134, i8* %137, i32 262144, i32 83, i8* %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145), !dbg !979
  ret void, !dbg !980
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._GSList* @g_slist_sort_with_data(%struct._GSList*, i32 (i8*, i8*, i8*)*, i8*) #2

declare i32 @nicklist_compare(%struct._NICK_REC*, %struct._NICK_REC*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @display_sorted_nicks(%struct._CHANNEL_REC*, %struct._GSList*) #0 !dbg !981 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._TEXT_DEST_REC, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i8], align 1
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !984, metadata !826), !dbg !985
  store %struct._GSList* %1, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !986, metadata !826), !dbg !987
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !988, metadata !826), !dbg !989
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %6, metadata !990, metadata !826), !dbg !1005
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1006, metadata !826), !dbg !1007
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1008, metadata !826), !dbg !1009
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1010, metadata !826), !dbg !1011
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1012, metadata !826), !dbg !1013
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1014, metadata !826), !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1016, metadata !826), !dbg !1017
  call void @llvm.dbg.declare(metadata [2 x i8]* %13, metadata !1018, metadata !826), !dbg !1020
  %24 = bitcast [2 x i8]* %13 to i8*, !dbg !1020
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 2, i32 1, i1 false), !dbg !1020
  call void @llvm.dbg.declare(metadata i32** %14, metadata !1021, metadata !826), !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1024, metadata !826), !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1026, metadata !826), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1028, metadata !826), !dbg !1029
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1030, metadata !826), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1032, metadata !826), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1034, metadata !826), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1036, metadata !826), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1038, metadata !826), !dbg !1039
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1040
  %26 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %25, i32 0, i32 4, !dbg !1041
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %26, align 8, !dbg !1041
  %28 = bitcast %struct._SERVER_REC* %27 to i8*, !dbg !1040
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1042
  %30 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %29, i32 0, i32 5, !dbg !1043
  %31 = load i8*, i8** %30, align 8, !dbg !1043
  %32 = call %struct._WINDOW_REC* @window_find_closest(i8* %28, i8* %31, i32 524288), !dbg !1044
  store %struct._WINDOW_REC* %32, %struct._WINDOW_REC** %5, align 8, !dbg !1045
  %33 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1046
  %34 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %33, i32 0, i32 2, !dbg !1047
  %35 = load i32, i32* %34, align 8, !dbg !1047
  store i32 %35, i32* %20, align 4, !dbg !1048
  %36 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1049
  %37 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %36, i32 0, i32 4, !dbg !1050
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1050
  %39 = bitcast %struct._SERVER_REC* %38 to i8*, !dbg !1049
  %40 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1051
  %41 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %40, i32 0, i32 5, !dbg !1052
  %42 = load i8*, i8** %41, align 8, !dbg !1052
  %43 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* null, i8* %39, i8* %42, i32 82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)), !dbg !1053
  store i8* %43, i8** %9, align 8, !dbg !1054
  %44 = load i8*, i8** %9, align 8, !dbg !1055
  %45 = call i8* @strip_codes(i8* %44), !dbg !1056
  store i8* %45, i8** %10, align 8, !dbg !1057
  %46 = load i8*, i8** %10, align 8, !dbg !1058
  %47 = call i64 @strlen(i8* %46) #6, !dbg !1059
  %48 = trunc i64 %47 to i32, !dbg !1059
  store i32 %48, i32* %21, align 4, !dbg !1060
  %49 = load i8*, i8** %10, align 8, !dbg !1061
  call void @g_free(i8* %49), !dbg !1062
  %50 = load i8*, i8** %9, align 8, !dbg !1063
  call void @g_free(i8* %50), !dbg !1064
  %51 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !1065
  %52 = icmp sgt i32 %51, 0, !dbg !1067
  br i1 %52, label %53, label %59, !dbg !1068

; <label>:53:                                     ; preds = %2
  %54 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !1069
  %55 = load i32, i32* %20, align 4, !dbg !1070
  %56 = icmp slt i32 %54, %55, !dbg !1071
  br i1 %56, label %57, label %59, !dbg !1072

; <label>:57:                                     ; preds = %53
  %58 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0)), !dbg !1074
  store i32 %58, i32* %20, align 4, !dbg !1075
  br label %59, !dbg !1076

; <label>:59:                                     ; preds = %57, %53, %2
  %60 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1077
  %61 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %60, i32 0, i32 4, !dbg !1078
  %62 = load %struct._SERVER_REC*, %struct._SERVER_REC** %61, align 8, !dbg !1078
  %63 = bitcast %struct._SERVER_REC* %62 to i8*, !dbg !1077
  %64 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1079
  %65 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %64, i32 0, i32 5, !dbg !1080
  %66 = load i8*, i8** %65, align 8, !dbg !1080
  call void @format_create_dest(%struct._TEXT_DEST_REC* %6, i8* %63, i8* %66, i32 524288, %struct._WINDOW_REC* null), !dbg !1081
  %67 = load %struct.THEME_REC*, %struct.THEME_REC** @current_theme, align 8, !dbg !1082
  %68 = call i64 @time(i64* null) #7, !dbg !1083
  %69 = call i8* @format_get_line_start(%struct.THEME_REC* %67, %struct._TEXT_DEST_REC* %6, i64 %68), !dbg !1084
  store i8* %69, i8** %9, align 8, !dbg !1085
  %70 = load i8*, i8** %9, align 8, !dbg !1086
  %71 = icmp ne i8* %70, null, !dbg !1088
  br i1 %71, label %72, label %83, !dbg !1089

; <label>:72:                                     ; preds = %59
  %73 = load i8*, i8** %9, align 8, !dbg !1090
  %74 = call i8* @strip_codes(i8* %73), !dbg !1092
  store i8* %74, i8** %10, align 8, !dbg !1093
  %75 = load i8*, i8** %10, align 8, !dbg !1094
  %76 = call i64 @strlen(i8* %75) #6, !dbg !1095
  %77 = load i32, i32* %20, align 4, !dbg !1096
  %78 = sext i32 %77 to i64, !dbg !1096
  %79 = sub i64 %78, %76, !dbg !1096
  %80 = trunc i64 %79 to i32, !dbg !1096
  store i32 %80, i32* %20, align 4, !dbg !1096
  %81 = load i8*, i8** %10, align 8, !dbg !1097
  call void @g_free(i8* %81), !dbg !1098
  %82 = load i8*, i8** %9, align 8, !dbg !1099
  call void @g_free(i8* %82), !dbg !1100
  br label %83, !dbg !1101

; <label>:83:                                     ; preds = %72, %59
  %84 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1102
  %85 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %84, i32 0, i32 4, !dbg !1103
  %86 = load %struct._SERVER_REC*, %struct._SERVER_REC** %85, align 8, !dbg !1103
  %87 = bitcast %struct._SERVER_REC* %86 to i8*, !dbg !1102
  %88 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1104
  %89 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %88, i32 0, i32 5, !dbg !1105
  %90 = load i8*, i8** %89, align 8, !dbg !1105
  %91 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1106
  %92 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %91, i32 0, i32 5, !dbg !1107
  %93 = load i8*, i8** %92, align 8, !dbg !1107
  %94 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* null, i8* %87, i8* %90, i32 78, i8* %93), !dbg !1108
  store i8* %94, i8** %11, align 8, !dbg !1109
  %95 = load i8*, i8** %11, align 8, !dbg !1110
  %96 = icmp ne i8* %95, null, !dbg !1112
  br i1 %96, label %97, label %107, !dbg !1113

; <label>:97:                                     ; preds = %83
  %98 = load i8*, i8** %11, align 8, !dbg !1114
  %99 = call i8* @strip_codes(i8* %98), !dbg !1116
  store i8* %99, i8** %10, align 8, !dbg !1117
  %100 = load i8*, i8** %10, align 8, !dbg !1118
  %101 = call i64 @strlen(i8* %100) #6, !dbg !1119
  %102 = load i32, i32* %20, align 4, !dbg !1120
  %103 = sext i32 %102 to i64, !dbg !1120
  %104 = sub i64 %103, %101, !dbg !1120
  %105 = trunc i64 %104 to i32, !dbg !1120
  store i32 %105, i32* %20, align 4, !dbg !1120
  %106 = load i8*, i8** %10, align 8, !dbg !1121
  call void @g_free(i8* %106), !dbg !1122
  br label %107, !dbg !1123

; <label>:107:                                    ; preds = %97, %83
  %108 = load i32, i32* %20, align 4, !dbg !1124
  %109 = icmp sle i32 %108, 0, !dbg !1126
  br i1 %109, label %110, label %111, !dbg !1127

; <label>:110:                                    ; preds = %107
  store i32 10, i32* %20, align 4, !dbg !1128
  br label %111, !dbg !1130

; <label>:111:                                    ; preds = %110, %107
  %112 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1131
  %113 = load i32, i32* %20, align 4, !dbg !1132
  %114 = call i32 @settings_get_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)), !dbg !1133
  %115 = load i32, i32* %21, align 4, !dbg !1134
  %116 = call i32 @get_max_column_count(%struct._GSList* %112, i32 (i8*)* @get_nick_length, i32 %113, i32 %114, i32 %115, i32 3, i32** %14, i32* %16), !dbg !1135
  store i32 %116, i32* %15, align 4, !dbg !1136
  %117 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1137
  %118 = load i32, i32* %16, align 4, !dbg !1138
  %119 = call %struct._GSList* @columns_sort_list(%struct._GSList* %117, i32 %118), !dbg !1139
  store %struct._GSList* %119, %struct._GSList** %4, align 8, !dbg !1140
  %120 = load i32, i32* %16, align 4, !dbg !1141
  %121 = load i32, i32* %15, align 4, !dbg !1142
  %122 = load i32, i32* %16, align 4, !dbg !1143
  %123 = mul nsw i32 %121, %122, !dbg !1144
  %124 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1145
  %125 = call i32 @g_slist_length(%struct._GSList* %124), !dbg !1146
  %126 = sub i32 %123, %125, !dbg !1147
  %127 = sub i32 %120, %126, !dbg !1148
  store i32 %127, i32* %17, align 4, !dbg !1149
  %128 = load i32, i32* %17, align 4, !dbg !1150
  %129 = icmp eq i32 %128, 0, !dbg !1152
  br i1 %129, label %130, label %132, !dbg !1153

; <label>:130:                                    ; preds = %111
  %131 = load i32, i32* %16, align 4, !dbg !1154
  store i32 %131, i32* %17, align 4, !dbg !1155
  br label %132, !dbg !1156

; <label>:132:                                    ; preds = %130, %111
  %133 = load i8*, i8** %11, align 8, !dbg !1157
  %134 = call %struct._GString* @g_string_new(i8* %133), !dbg !1158
  store %struct._GString* %134, %struct._GString** %7, align 8, !dbg !1159
  store i32 0, i32* %18, align 4, !dbg !1160
  store i32 0, i32* %19, align 4, !dbg !1161
  %135 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1162
  store %struct._GSList* %135, %struct._GSList** %8, align 8, !dbg !1164
  br label %136, !dbg !1165

; <label>:136:                                    ; preds = %249, %132
  %137 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1166
  %138 = icmp ne %struct._GSList* %137, null, !dbg !1169
  br i1 %138, label %139, label %253, !dbg !1170

; <label>:139:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %23, metadata !1171, metadata !826), !dbg !1173
  %140 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1174
  %141 = getelementptr inbounds %struct._GSList, %struct._GSList* %140, i32 0, i32 0, !dbg !1175
  %142 = load i8*, i8** %141, align 8, !dbg !1175
  %143 = bitcast i8* %142 to %struct._NICK_REC*, !dbg !1174
  store %struct._NICK_REC* %143, %struct._NICK_REC** %23, align 8, !dbg !1173
  %144 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1176
  %145 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %144, i32 0, i32 8, !dbg !1178
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %145, i64 0, i64 0, !dbg !1176
  %147 = load i8, i8* %146, align 1, !dbg !1176
  %148 = icmp ne i8 %147, 0, !dbg !1176
  br i1 %148, label %149, label %155, !dbg !1179

; <label>:149:                                    ; preds = %139
  %150 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1180
  %151 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %150, i32 0, i32 8, !dbg !1181
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %151, i64 0, i64 0, !dbg !1180
  %153 = load i8, i8* %152, align 1, !dbg !1180
  %154 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0, !dbg !1182
  store i8 %153, i8* %154, align 1, !dbg !1183
  br label %157, !dbg !1182

; <label>:155:                                    ; preds = %139
  %156 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0, !dbg !1184
  store i8 32, i8* %156, align 1, !dbg !1185
  br label %157

; <label>:157:                                    ; preds = %155, %149
  %158 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1186
  %159 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %158, i32 0, i32 3, !dbg !1187
  %160 = load i8*, i8** %159, align 8, !dbg !1187
  %161 = load i32, i32* %18, align 4, !dbg !1188
  %162 = sext i32 %161 to i64, !dbg !1189
  %163 = load i32*, i32** %14, align 8, !dbg !1189
  %164 = getelementptr inbounds i32, i32* %163, i64 %162, !dbg !1189
  %165 = load i32, i32* %164, align 4, !dbg !1189
  %166 = load i32, i32* %21, align 4, !dbg !1190
  %167 = sub nsw i32 %165, %166, !dbg !1191
  %168 = call i8* @get_alignment(i8* %160, i32 %167, i32 4, i8 signext 32), !dbg !1192
  store i8* %168, i8** %12, align 8, !dbg !1193
  %169 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1194
  %170 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %169, i32 0, i32 7, !dbg !1195
  %171 = load i8, i8* %170, align 4, !dbg !1195
  %172 = lshr i8 %171, 3, !dbg !1195
  %173 = and i8 %172, 1, !dbg !1195
  %174 = zext i8 %173 to i32, !dbg !1195
  %175 = icmp ne i32 %174, 0, !dbg !1194
  br i1 %175, label %176, label %177, !dbg !1194

; <label>:176:                                    ; preds = %157
  br label %197, !dbg !1196

; <label>:177:                                    ; preds = %157
  %178 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1198
  %179 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %178, i32 0, i32 7, !dbg !1199
  %180 = load i8, i8* %179, align 4, !dbg !1199
  %181 = lshr i8 %180, 4, !dbg !1199
  %182 = and i8 %181, 1, !dbg !1199
  %183 = zext i8 %182 to i32, !dbg !1199
  %184 = icmp ne i32 %183, 0, !dbg !1198
  br i1 %184, label %185, label %186, !dbg !1198

; <label>:185:                                    ; preds = %177
  br label %195, !dbg !1200

; <label>:186:                                    ; preds = %177
  %187 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !1201
  %188 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %187, i32 0, i32 7, !dbg !1202
  %189 = load i8, i8* %188, align 4, !dbg !1202
  %190 = lshr i8 %189, 5, !dbg !1202
  %191 = and i8 %190, 1, !dbg !1202
  %192 = zext i8 %191 to i32, !dbg !1202
  %193 = icmp ne i32 %192, 0, !dbg !1201
  %194 = select i1 %193, i32 81, i32 82, !dbg !1201
  br label %195, !dbg !1203

; <label>:195:                                    ; preds = %186, %185
  %196 = phi i32 [ 80, %185 ], [ %194, %186 ], !dbg !1205
  br label %197, !dbg !1207

; <label>:197:                                    ; preds = %195, %176
  %198 = phi i32 [ 79, %176 ], [ %196, %195 ], !dbg !1208
  store i32 %198, i32* %22, align 4, !dbg !1209
  %199 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1210
  %200 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %199, i32 0, i32 4, !dbg !1211
  %201 = load %struct._SERVER_REC*, %struct._SERVER_REC** %200, align 8, !dbg !1211
  %202 = bitcast %struct._SERVER_REC* %201 to i8*, !dbg !1210
  %203 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1212
  %204 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %203, i32 0, i32 5, !dbg !1213
  %205 = load i8*, i8** %204, align 8, !dbg !1213
  %206 = load i32, i32* %22, align 4, !dbg !1214
  %207 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i32 0, i32 0, !dbg !1215
  %208 = load i8*, i8** %12, align 8, !dbg !1216
  %209 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* null, i8* %202, i8* %205, i32 %206, i8* %207, i8* %208), !dbg !1217
  store i8* %209, i8** %9, align 8, !dbg !1218
  %210 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1219
  %211 = load i8*, i8** %9, align 8, !dbg !1220
  %212 = call %struct._GString* @g_string_append(%struct._GString* %210, i8* %211), !dbg !1221
  %213 = load i8*, i8** %12, align 8, !dbg !1222
  call void @g_free(i8* %213), !dbg !1223
  %214 = load i8*, i8** %9, align 8, !dbg !1224
  call void @g_free(i8* %214), !dbg !1225
  %215 = load i32, i32* %18, align 4, !dbg !1226
  %216 = add nsw i32 %215, 1, !dbg !1226
  store i32 %216, i32* %18, align 4, !dbg !1226
  %217 = load i32, i32* %15, align 4, !dbg !1228
  %218 = icmp eq i32 %216, %217, !dbg !1229
  br i1 %218, label %219, label %248, !dbg !1230

; <label>:219:                                    ; preds = %197
  %220 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1231
  %221 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %220, i32 0, i32 4, !dbg !1233
  %222 = load %struct._SERVER_REC*, %struct._SERVER_REC** %221, align 8, !dbg !1233
  %223 = bitcast %struct._SERVER_REC* %222 to i8*, !dbg !1231
  %224 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1234
  %225 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %224, i32 0, i32 5, !dbg !1235
  %226 = load i8*, i8** %225, align 8, !dbg !1235
  %227 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1236
  %228 = getelementptr inbounds %struct._GString, %struct._GString* %227, i32 0, i32 0, !dbg !1237
  %229 = load i8*, i8** %228, align 8, !dbg !1237
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* %223, i8* %226, i32 524288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* %229), !dbg !1238
  %230 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1239
  %231 = call %struct._GString* @g_string_truncate(%struct._GString* %230, i64 0), !dbg !1240
  %232 = load i8*, i8** %11, align 8, !dbg !1241
  %233 = icmp ne i8* %232, null, !dbg !1243
  br i1 %233, label %234, label %238, !dbg !1244

; <label>:234:                                    ; preds = %219
  %235 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1245
  %236 = load i8*, i8** %11, align 8, !dbg !1246
  %237 = call %struct._GString* @g_string_assign(%struct._GString* %235, i8* %236), !dbg !1247
  br label %238, !dbg !1247

; <label>:238:                                    ; preds = %234, %219
  store i32 0, i32* %18, align 4, !dbg !1248
  %239 = load i32, i32* %19, align 4, !dbg !1249
  %240 = add nsw i32 %239, 1, !dbg !1249
  store i32 %240, i32* %19, align 4, !dbg !1249
  %241 = load i32, i32* %19, align 4, !dbg !1250
  %242 = load i32, i32* %17, align 4, !dbg !1252
  %243 = icmp eq i32 %241, %242, !dbg !1253
  br i1 %243, label %244, label %247, !dbg !1254

; <label>:244:                                    ; preds = %238
  %245 = load i32, i32* %15, align 4, !dbg !1255
  %246 = add nsw i32 %245, -1, !dbg !1255
  store i32 %246, i32* %15, align 4, !dbg !1255
  br label %247, !dbg !1256

; <label>:247:                                    ; preds = %244, %238
  br label %248, !dbg !1257

; <label>:248:                                    ; preds = %247, %197
  br label %249, !dbg !1258

; <label>:249:                                    ; preds = %248
  %250 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1259
  %251 = getelementptr inbounds %struct._GSList, %struct._GSList* %250, i32 0, i32 1, !dbg !1261
  %252 = load %struct._GSList*, %struct._GSList** %251, align 8, !dbg !1261
  store %struct._GSList* %252, %struct._GSList** %8, align 8, !dbg !1262
  br label %136, !dbg !1263, !llvm.loop !1264

; <label>:253:                                    ; preds = %136
  %254 = load i8*, i8** %11, align 8, !dbg !1266
  %255 = icmp ne i8* %254, null, !dbg !1268
  br i1 %255, label %256, label %274, !dbg !1269

; <label>:256:                                    ; preds = %253
  %257 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1270
  %258 = getelementptr inbounds %struct._GString, %struct._GString* %257, i32 0, i32 1, !dbg !1272
  %259 = load i64, i64* %258, align 8, !dbg !1272
  %260 = load i8*, i8** %11, align 8, !dbg !1273
  %261 = call i64 @strlen(i8* %260) #6, !dbg !1274
  %262 = icmp ugt i64 %259, %261, !dbg !1275
  br i1 %262, label %263, label %274, !dbg !1276

; <label>:263:                                    ; preds = %256
  %264 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1277
  %265 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %264, i32 0, i32 4, !dbg !1279
  %266 = load %struct._SERVER_REC*, %struct._SERVER_REC** %265, align 8, !dbg !1279
  %267 = bitcast %struct._SERVER_REC* %266 to i8*, !dbg !1277
  %268 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1280
  %269 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %268, i32 0, i32 5, !dbg !1281
  %270 = load i8*, i8** %269, align 8, !dbg !1281
  %271 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1282
  %272 = getelementptr inbounds %struct._GString, %struct._GString* %271, i32 0, i32 0, !dbg !1283
  %273 = load i8*, i8** %272, align 8, !dbg !1283
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* %267, i8* %270, i32 524288, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* %273), !dbg !1284
  br label %274, !dbg !1285

; <label>:274:                                    ; preds = %263, %256, %253
  %275 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1286
  call void @g_slist_free(%struct._GSList* %275), !dbg !1287
  %276 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1288
  %277 = call i8* @g_string_free(%struct._GString* %276, i32 1), !dbg !1289
  %278 = load i32*, i32** %14, align 8, !dbg !1290
  %279 = bitcast i32* %278 to i8*, !dbg !1290
  call void @g_free(i8* %279), !dbg !1291
  %280 = load i8*, i8** %11, align 8, !dbg !1292
  call void @g_free(i8* %280), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: nounwind uwtable
define void @fe_channels_init() #0 !dbg !1295 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !1296
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !1297
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 6), !dbg !1298
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !1299
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, i8*)* @signal_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1300
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @signal_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1301
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @signal_window_item_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1302
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1303
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1304
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1305
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1306
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1307
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1308
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1309
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_channel_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1310
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1311
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_cycle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1312
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)), !dbg !1313
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0)), !dbg !1314
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)), !dbg !1315
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)), !dbg !1316
  ret void, !dbg !1317
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_channel_created(%struct._CHANNEL_REC*, i8*) #0 !dbg !1318 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !1321, metadata !826), !dbg !1322
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1323, metadata !826), !dbg !1324
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1325
  %6 = bitcast %struct._CHANNEL_REC* %5 to %struct._WI_ITEM_REC*, !dbg !1327
  %7 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %6, i32 0, i32 3, !dbg !1327
  %8 = load i8*, i8** %7, align 8, !dbg !1327
  %9 = bitcast i8* %8 to %struct._WINDOW_REC*, !dbg !1328
  %10 = icmp eq %struct._WINDOW_REC* %9, null, !dbg !1329
  br i1 %10, label %11, label %17, !dbg !1330

; <label>:11:                                     ; preds = %2
  %12 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !1331
  %13 = bitcast %struct._CHANNEL_REC* %12 to %struct._WI_ITEM_REC*, !dbg !1333
  %14 = load i8*, i8** %4, align 8, !dbg !1334
  %15 = ptrtoint i8* %14 to i64, !dbg !1335
  %16 = trunc i64 %15 to i32, !dbg !1336
  call void @window_item_create(%struct._WI_ITEM_REC* %13, i32 %16), !dbg !1337
  br label %17, !dbg !1338

; <label>:17:                                     ; preds = %11, %2
  ret void, !dbg !1339
}

; Function Attrs: nounwind uwtable
define internal void @signal_channel_destroyed(%struct._CHANNEL_REC*) #0 !dbg !1340 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !1343, metadata !826), !dbg !1344
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1345, metadata !826), !dbg !1346
  br label %4, !dbg !1347, !llvm.loop !1348

; <label>:4:                                      ; preds = %1
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1349
  %6 = icmp ne %struct._CHANNEL_REC* %5, null, !dbg !1353
  br i1 %6, label %7, label %8, !dbg !1349

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1354

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.signal_channel_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !1357
  br label %77, !dbg !1360

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1361

; <label>:10:                                     ; preds = %9
  %11 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1363
  %12 = bitcast %struct._CHANNEL_REC* %11 to %struct._WI_ITEM_REC*, !dbg !1364
  %13 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %12, i32 0, i32 3, !dbg !1364
  %14 = load i8*, i8** %13, align 8, !dbg !1364
  %15 = bitcast i8* %14 to %struct._WINDOW_REC*, !dbg !1365
  store %struct._WINDOW_REC* %15, %struct._WINDOW_REC** %3, align 8, !dbg !1366
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1367
  %17 = icmp eq %struct._WINDOW_REC* %16, null, !dbg !1369
  br i1 %17, label %18, label %19, !dbg !1370

; <label>:18:                                     ; preds = %10
  br label %77, !dbg !1371

; <label>:19:                                     ; preds = %10
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1372
  %21 = bitcast %struct._CHANNEL_REC* %20 to %struct._WI_ITEM_REC*, !dbg !1373
  call void @window_item_destroy(%struct._WI_ITEM_REC* %21), !dbg !1374
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1375
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 21, !dbg !1377
  %24 = load i16, i16* %23, align 8, !dbg !1377
  %25 = lshr i16 %24, 4, !dbg !1377
  %26 = and i16 %25, 1, !dbg !1377
  %27 = zext i16 %26 to i32, !dbg !1377
  %28 = icmp ne i32 %27, 0, !dbg !1375
  br i1 %28, label %29, label %58, !dbg !1378

; <label>:29:                                     ; preds = %19
  %30 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1379
  %31 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %30, i32 0, i32 21, !dbg !1381
  %32 = load i16, i16* %31, align 8, !dbg !1381
  %33 = lshr i16 %32, 5, !dbg !1381
  %34 = and i16 %33, 1, !dbg !1381
  %35 = zext i16 %34 to i32, !dbg !1381
  %36 = icmp ne i32 %35, 0, !dbg !1379
  br i1 %36, label %58, label %37, !dbg !1382

; <label>:37:                                     ; preds = %29
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1383
  %39 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %38, i32 0, i32 4, !dbg !1384
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %39, align 8, !dbg !1384
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 8, !dbg !1385
  %42 = load i8, i8* %41, align 8, !dbg !1385
  %43 = lshr i8 %42, 1, !dbg !1385
  %44 = and i8 %43, 1, !dbg !1385
  %45 = zext i8 %44 to i32, !dbg !1385
  %46 = icmp ne i32 %45, 0, !dbg !1383
  br i1 %46, label %58, label %47, !dbg !1386

; <label>:47:                                     ; preds = %37
  %48 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1388
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1390
  %50 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %49, i32 0, i32 4, !dbg !1391
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %50, align 8, !dbg !1391
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 6, !dbg !1392
  %53 = load i8*, i8** %52, align 8, !dbg !1392
  %54 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1393
  %55 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %54, i32 0, i32 5, !dbg !1394
  %56 = load i8*, i8** %55, align 8, !dbg !1394
  %57 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %48, i8* %53, i8* %56), !dbg !1395
  br label %77, !dbg !1396

; <label>:58:                                     ; preds = %37, %29, %19
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1397
  %60 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %59, i32 0, i32 21, !dbg !1400
  %61 = load i16, i16* %60, align 8, !dbg !1400
  %62 = lshr i16 %61, 4, !dbg !1400
  %63 = and i16 %62, 1, !dbg !1400
  %64 = zext i16 %63 to i32, !dbg !1400
  %65 = icmp ne i32 %64, 0, !dbg !1397
  br i1 %65, label %66, label %74, !dbg !1401

; <label>:66:                                     ; preds = %58
  %67 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1402
  %68 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %67, i32 0, i32 21, !dbg !1404
  %69 = load i16, i16* %68, align 8, !dbg !1404
  %70 = lshr i16 %69, 5, !dbg !1404
  %71 = and i16 %70, 1, !dbg !1404
  %72 = zext i16 %71 to i32, !dbg !1404
  %73 = icmp ne i32 %72, 0, !dbg !1402
  br i1 %73, label %74, label %76, !dbg !1405

; <label>:74:                                     ; preds = %66, %58
  %75 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1406
  call void @window_auto_destroy(%struct._WINDOW_REC* %75), !dbg !1407
  br label %76, !dbg !1407

; <label>:76:                                     ; preds = %74, %66
  br label %77

; <label>:77:                                     ; preds = %8, %18, %76, %47
  ret void, !dbg !1408
}

; Function Attrs: nounwind uwtable
define internal void @signal_window_item_changed(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1409 {
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1412, metadata !826), !dbg !1413
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !1414, metadata !826), !dbg !1415
  br label %5, !dbg !1416, !llvm.loop !1417

; <label>:5:                                      ; preds = %2
  %6 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1418
  %7 = icmp ne %struct._WINDOW_REC* %6, null, !dbg !1422
  br i1 %7, label %8, label %9, !dbg !1418

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1423

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.signal_window_item_changed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)), !dbg !1426
  br label %40, !dbg !1429

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1430

; <label>:11:                                     ; preds = %10
  %12 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1432
  %13 = icmp eq %struct._WI_ITEM_REC* %12, null, !dbg !1434
  br i1 %13, label %14, label %15, !dbg !1435

; <label>:14:                                     ; preds = %11
  br label %40, !dbg !1436

; <label>:15:                                     ; preds = %11
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1438
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 4, !dbg !1440
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !1440
  %19 = call i32 @g_slist_length(%struct._GSList* %18), !dbg !1441
  %20 = icmp ugt i32 %19, 1, !dbg !1442
  br i1 %20, label %21, label %40, !dbg !1443

; <label>:21:                                     ; preds = %15
  %22 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1444
  %23 = bitcast %struct._WI_ITEM_REC* %22 to i8*, !dbg !1444
  %24 = call i8* @module_check_cast_module(i8* %23, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !1446
  %25 = bitcast i8* %24 to %struct._CHANNEL_REC*, !dbg !1447
  %26 = icmp ne %struct._CHANNEL_REC* %25, null, !dbg !1447
  br i1 %26, label %27, label %28, !dbg !1448

; <label>:27:                                     ; preds = %21
  br i1 false, label %40, label %29, !dbg !1449

; <label>:28:                                     ; preds = %21
  br i1 false, label %29, label %40, !dbg !1451

; <label>:29:                                     ; preds = %28, %27
  %30 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1453
  %31 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %30, i32 0, i32 4, !dbg !1455
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %31, align 8, !dbg !1455
  %33 = bitcast %struct._SERVER_REC* %32 to i8*, !dbg !1453
  %34 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1456
  %35 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %34, i32 0, i32 5, !dbg !1457
  %36 = load i8*, i8** %35, align 8, !dbg !1457
  %37 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1458
  %38 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %37, i32 0, i32 5, !dbg !1459
  %39 = load i8*, i8** %38, align 8, !dbg !1459
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %33, i8* %36, i32 262144, i32 74, i8* %39), !dbg !1460
  call void @signal_stop(), !dbg !1461
  br label %40, !dbg !1462

; <label>:40:                                     ; preds = %9, %14, %29, %28, %27, %15
  ret void, !dbg !1463
}

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._SERVER_REC*) #0 !dbg !1464 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._WINDOW_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1467, metadata !826), !dbg !1468
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %3, metadata !1469, metadata !826), !dbg !1470
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1471, metadata !826), !dbg !1472
  br label %6, !dbg !1473, !llvm.loop !1474

; <label>:6:                                      ; preds = %1
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1475
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !1475
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)), !dbg !1479
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !1480
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !1480
  br i1 %11, label %12, label %13, !dbg !1481

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !1482

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !1484

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !1486

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0)), !dbg !1489
  br label %46, !dbg !1492

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1493

; <label>:17:                                     ; preds = %16
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1495
  %19 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %18, i32 0, i32 23, !dbg !1497
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1497
  store %struct._GSList* %20, %struct._GSList** %4, align 8, !dbg !1498
  br label %21, !dbg !1499

; <label>:21:                                     ; preds = %42, %17
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1500
  %23 = icmp ne %struct._GSList* %22, null, !dbg !1503
  br i1 %23, label %24, label %46, !dbg !1504

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1505, metadata !826), !dbg !1507
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1508
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0, !dbg !1509
  %27 = load i8*, i8** %26, align 8, !dbg !1509
  %28 = bitcast i8* %27 to %struct._CHANNEL_REC*, !dbg !1508
  store %struct._CHANNEL_REC* %28, %struct._CHANNEL_REC** %5, align 8, !dbg !1507
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1510
  %30 = bitcast %struct._CHANNEL_REC* %29 to %struct._WI_ITEM_REC*, !dbg !1511
  %31 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %30, i32 0, i32 3, !dbg !1511
  %32 = load i8*, i8** %31, align 8, !dbg !1511
  %33 = bitcast i8* %32 to %struct._WINDOW_REC*, !dbg !1512
  store %struct._WINDOW_REC* %33, %struct._WINDOW_REC** %3, align 8, !dbg !1513
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %3, align 8, !dbg !1514
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1515
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 6, !dbg !1516
  %37 = load i8*, i8** %36, align 8, !dbg !1516
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1517
  %39 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %38, i32 0, i32 6, !dbg !1518
  %40 = load i8*, i8** %39, align 8, !dbg !1518
  %41 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %34, i8* %37, i8* %40), !dbg !1519
  br label %42, !dbg !1520

; <label>:42:                                     ; preds = %24
  %43 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1521
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !1523
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !1523
  store %struct._GSList* %45, %struct._GSList** %4, align 8, !dbg !1524
  br label %21, !dbg !1525, !llvm.loop !1526

; <label>:46:                                     ; preds = %15, %21
  ret void, !dbg !1528
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_joined(%struct._CHANNEL_REC*) #0 !dbg !1529 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !1530, metadata !826), !dbg !1531
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)), !dbg !1532
  %4 = icmp ne i32 %3, 0, !dbg !1532
  br i1 %4, label %5, label %15, !dbg !1534

; <label>:5:                                      ; preds = %1
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1535
  %7 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %6, i32 0, i32 21, !dbg !1536
  %8 = load i16, i16* %7, align 8, !dbg !1536
  %9 = lshr i16 %8, 7, !dbg !1536
  %10 = and i16 %9, 1, !dbg !1536
  %11 = zext i16 %10 to i32, !dbg !1536
  %12 = icmp ne i32 %11, 0, !dbg !1535
  br i1 %12, label %15, label %13, !dbg !1537

; <label>:13:                                     ; preds = %5
  %14 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1539
  call void @fe_channels_nicklist(%struct._CHANNEL_REC* %14, i32 15), !dbg !1540
  br label %15, !dbg !1540

; <label>:15:                                     ; preds = %13, %5, %1
  ret void, !dbg !1541
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_join(i8*, %struct._SERVER_REC*) #0 !dbg !1542 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._WINDOW_REC*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1545, metadata !826), !dbg !1546
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1547, metadata !826), !dbg !1548
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %5, metadata !1549, metadata !826), !dbg !1550
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !1551, metadata !826), !dbg !1552
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1553, metadata !826), !dbg !1554
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1555, metadata !826), !dbg !1556
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1557, metadata !826), !dbg !1558
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1559, metadata !826), !dbg !1560
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1561, metadata !826), !dbg !1562
  %12 = load i8*, i8** %3, align 8, !dbg !1563
  %13 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %12, i8** %11, i32 319489, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GHashTable** %7, i8** %8), !dbg !1565
  %14 = icmp ne i32 %13, 0, !dbg !1565
  br i1 %14, label %16, label %15, !dbg !1566

; <label>:15:                                     ; preds = %2
  br label %110, !dbg !1567

; <label>:16:                                     ; preds = %2
  %17 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1568
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)), !dbg !1569
  %19 = icmp ne i8* %18, null, !dbg !1570
  %20 = zext i1 %19 to i32, !dbg !1570
  store i32 %20, i32* %9, align 4, !dbg !1571
  %21 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1572
  %22 = call i8* @g_hash_table_lookup(%struct._GHashTable* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)), !dbg !1573
  %23 = icmp ne i8* %22, null, !dbg !1574
  %24 = zext i1 %23 to i32, !dbg !1574
  store i32 %24, i32* %10, align 4, !dbg !1575
  %25 = load i32, i32* %9, align 4, !dbg !1576
  %26 = icmp ne i32 %25, 0, !dbg !1576
  br i1 %26, label %39, label %27, !dbg !1578

; <label>:27:                                     ; preds = %16
  %28 = load i8*, i8** %8, align 8, !dbg !1579
  %29 = load i8, i8* %28, align 1, !dbg !1581
  %30 = sext i8 %29 to i32, !dbg !1581
  %31 = icmp eq i32 %30, 0, !dbg !1582
  br i1 %31, label %32, label %39, !dbg !1583

; <label>:32:                                     ; preds = %27
  br label %33, !dbg !1584, !llvm.loop !1585

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %11, align 8, !dbg !1586
  call void @cmd_params_free(i8* %34), !dbg !1589
  br label %35, !dbg !1590, !llvm.loop !1591

; <label>:35:                                     ; preds = %33
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1593
  call void @signal_stop(), !dbg !1596
  br label %110, !dbg !1598
                                                  ; No predecessors!
  br label %38, !dbg !1599

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1601

; <label>:39:                                     ; preds = %38, %27, %16
  %40 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1603
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1604
  %42 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._GHashTable* %40, %struct._SERVER_REC* %41), !dbg !1605
  store %struct._SERVER_REC* %42, %struct._SERVER_REC** %4, align 8, !dbg !1606
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1607
  %44 = load i8*, i8** %8, align 8, !dbg !1608
  %45 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %43, i8* %44), !dbg !1609
  store %struct._CHANNEL_REC* %45, %struct._CHANNEL_REC** %6, align 8, !dbg !1610
  %46 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !1611
  %47 = icmp ne %struct._CHANNEL_REC* %46, null, !dbg !1613
  br i1 %47, label %48, label %63, !dbg !1614

; <label>:48:                                     ; preds = %39
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !1615
  %50 = bitcast %struct._CHANNEL_REC* %49 to %struct._WI_ITEM_REC*, !dbg !1617
  %51 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %50, i32 0, i32 3, !dbg !1617
  %52 = load i8*, i8** %51, align 8, !dbg !1617
  %53 = bitcast i8* %52 to %struct._WINDOW_REC*, !dbg !1618
  store %struct._WINDOW_REC* %53, %struct._WINDOW_REC** %5, align 8, !dbg !1619
  %54 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1620
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1622
  %56 = icmp ne %struct._WINDOW_REC* %54, %55, !dbg !1623
  br i1 %56, label %57, label %59, !dbg !1624

; <label>:57:                                     ; preds = %48
  %58 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %5, align 8, !dbg !1625
  call void @window_set_active(%struct._WINDOW_REC* %58), !dbg !1626
  br label %59, !dbg !1626

; <label>:59:                                     ; preds = %57, %48
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1627
  %61 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !1628
  %62 = bitcast %struct._CHANNEL_REC* %61 to %struct._WI_ITEM_REC*, !dbg !1629
  call void @window_item_set_active(%struct._WINDOW_REC* %60, %struct._WI_ITEM_REC* %62), !dbg !1630
  br label %108, !dbg !1631

; <label>:63:                                     ; preds = %39
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1632
  %65 = icmp eq %struct._SERVER_REC* %64, null, !dbg !1635
  br i1 %65, label %73, label %66, !dbg !1636

; <label>:66:                                     ; preds = %63
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1637
  %68 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %67, i32 0, i32 8, !dbg !1639
  %69 = load i8, i8* %68, align 8, !dbg !1639
  %70 = and i8 %69, 1, !dbg !1639
  %71 = zext i8 %70 to i32, !dbg !1639
  %72 = icmp ne i32 %71, 0, !dbg !1637
  br i1 %72, label %80, label %73, !dbg !1640

; <label>:73:                                     ; preds = %66, %63
  br label %74, !dbg !1641, !llvm.loop !1642

; <label>:74:                                     ; preds = %73
  %75 = load i8*, i8** %11, align 8, !dbg !1643
  call void @cmd_params_free(i8* %75), !dbg !1646
  br label %76, !dbg !1647, !llvm.loop !1648

; <label>:76:                                     ; preds = %74
  %77 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1650
  call void @signal_stop(), !dbg !1653
  br label %110, !dbg !1655
                                                  ; No predecessors!
  br label %79, !dbg !1656

; <label>:79:                                     ; preds = %78
  br label %80, !dbg !1658

; <label>:80:                                     ; preds = %79, %66
  %81 = load i32, i32* %9, align 4, !dbg !1660
  %82 = icmp ne i32 %81, 0, !dbg !1660
  br i1 %82, label %83, label %94, !dbg !1662

; <label>:83:                                     ; preds = %80
  %84 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1663
  %85 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %84, i32 0, i32 18, !dbg !1666
  %86 = load i8*, i8** %85, align 8, !dbg !1666
  %87 = icmp eq i8* %86, null, !dbg !1667
  br i1 %87, label %88, label %90, !dbg !1668

; <label>:88:                                     ; preds = %83
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 69), !dbg !1669
  call void @signal_stop(), !dbg !1671
  %89 = load i8*, i8** %11, align 8, !dbg !1672
  call void @cmd_params_free(i8* %89), !dbg !1673
  br label %110, !dbg !1674

; <label>:90:                                     ; preds = %83
  %91 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1675
  %92 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %91, i32 0, i32 18, !dbg !1676
  %93 = load i8*, i8** %92, align 8, !dbg !1676
  store i8* %93, i8** %8, align 8, !dbg !1677
  br label %94, !dbg !1678

; <label>:94:                                     ; preds = %90, %80
  %95 = load i32, i32* %10, align 4, !dbg !1679
  %96 = icmp ne i32 %95, 0, !dbg !1679
  br i1 %96, label %97, label %98, !dbg !1681

; <label>:97:                                     ; preds = %94
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @signal_channel_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1682
  br label %98, !dbg !1682

; <label>:98:                                     ; preds = %97, %94
  %99 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1683
  %100 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %99, i32 0, i32 25, !dbg !1684
  %101 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %100, align 8, !dbg !1684
  %102 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1685
  %103 = load i8*, i8** %8, align 8, !dbg !1686
  call void %101(%struct._SERVER_REC* %102, i8* %103, i32 0), !dbg !1683
  %104 = load i32, i32* %10, align 4, !dbg !1687
  %105 = icmp ne i32 %104, 0, !dbg !1687
  br i1 %105, label %106, label %107, !dbg !1689

; <label>:106:                                    ; preds = %98
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @signal_channel_created_curwin to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1690
  br label %107, !dbg !1690

; <label>:107:                                    ; preds = %106, %98
  br label %108

; <label>:108:                                    ; preds = %107, %59
  %109 = load i8*, i8** %11, align 8, !dbg !1691
  call void @cmd_params_free(i8* %109), !dbg !1692
  br label %110, !dbg !1693

; <label>:110:                                    ; preds = %108, %88, %76, %35, %15
  ret void, !dbg !1694
}

; Function Attrs: nounwind uwtable
define internal void @cmd_channel(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1696 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1699, metadata !826), !dbg !1700
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1701, metadata !826), !dbg !1702
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1703, metadata !826), !dbg !1704
  %7 = load i8*, i8** %4, align 8, !dbg !1705
  %8 = load i8, i8* %7, align 1, !dbg !1707
  %9 = sext i8 %8 to i32, !dbg !1707
  %10 = icmp eq i32 %9, 0, !dbg !1708
  br i1 %10, label %11, label %12, !dbg !1709

; <label>:11:                                     ; preds = %3
  call void @cmd_channel_list_joined(), !dbg !1710
  br label %35, !dbg !1710

; <label>:12:                                     ; preds = %3
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1711
  %14 = icmp ne %struct._SERVER_REC* %13, null, !dbg !1713
  br i1 %14, label %15, label %28, !dbg !1714

; <label>:15:                                     ; preds = %12
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1715
  %17 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %16, i32 0, i32 27, !dbg !1717
  %18 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %17, align 8, !dbg !1717
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1718
  %20 = load i8*, i8** %4, align 8, !dbg !1719
  %21 = call i32 %18(%struct._SERVER_REC* %19, i8* %20), !dbg !1720
  %22 = icmp ne i32 %21, 0, !dbg !1720
  br i1 %22, label %23, label %28, !dbg !1721

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %4, align 8, !dbg !1722
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1724
  %26 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1725
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 3, i8* %24, %struct._SERVER_REC* %25, %struct._WI_ITEM_REC* %26), !dbg !1726
  br label %34, !dbg !1727

; <label>:28:                                     ; preds = %15, %12
  %29 = load i8*, i8** %4, align 8, !dbg !1728
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1730
  %31 = bitcast %struct._SERVER_REC* %30 to i8*, !dbg !1730
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1731
  %33 = bitcast %struct._WI_ITEM_REC* %32 to i8*, !dbg !1731
  call void @command_runsub(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %29, i8* %31, i8* %33), !dbg !1732
  br label %34

; <label>:34:                                     ; preds = %28, %23
  br label %35

; <label>:35:                                     ; preds = %34, %11
  ret void, !dbg !1733
}

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_add(i8*) #0 !dbg !1734 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1737, metadata !826), !dbg !1738
  %3 = load i8*, i8** %2, align 8, !dbg !1739
  call void @cmd_channel_add_modify(i8* %3, i32 1), !dbg !1740
  ret void, !dbg !1741
}

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_modify(i8*) #0 !dbg !1742 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1743, metadata !826), !dbg !1744
  %3 = load i8*, i8** %2, align 8, !dbg !1745
  call void @cmd_channel_add_modify(i8* %3, i32 0), !dbg !1746
  ret void, !dbg !1747
}

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_remove(i8*) #0 !dbg !1748 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1749, metadata !826), !dbg !1750
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %3, metadata !1751, metadata !826), !dbg !1767
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1768, metadata !826), !dbg !1769
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1770, metadata !826), !dbg !1771
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1772, metadata !826), !dbg !1773
  %7 = load i8*, i8** %2, align 8, !dbg !1774
  %8 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %7, i8** %6, i32 2, i8** %5, i8** %4), !dbg !1776
  %9 = icmp ne i32 %8, 0, !dbg !1776
  br i1 %9, label %11, label %10, !dbg !1777

; <label>:10:                                     ; preds = %1
  br label %43, !dbg !1778

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !1779
  %13 = load i8, i8* %12, align 1, !dbg !1781
  %14 = sext i8 %13 to i32, !dbg !1781
  %15 = icmp eq i32 %14, 0, !dbg !1782
  br i1 %15, label %21, label %16, !dbg !1783

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %5, align 8, !dbg !1784
  %18 = load i8, i8* %17, align 1, !dbg !1786
  %19 = sext i8 %18 to i32, !dbg !1786
  %20 = icmp eq i32 %19, 0, !dbg !1787
  br i1 %20, label %21, label %28, !dbg !1788

; <label>:21:                                     ; preds = %16, %11
  br label %22, !dbg !1789, !llvm.loop !1790

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !1791
  call void @cmd_params_free(i8* %23), !dbg !1794
  br label %24, !dbg !1795, !llvm.loop !1796

; <label>:24:                                     ; preds = %22
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1798
  call void @signal_stop(), !dbg !1801
  br label %43, !dbg !1803
                                                  ; No predecessors!
  br label %27, !dbg !1804

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !1806

; <label>:28:                                     ; preds = %27, %16
  %29 = load i8*, i8** %5, align 8, !dbg !1808
  %30 = load i8*, i8** %4, align 8, !dbg !1809
  %31 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %29, i8* %30), !dbg !1810
  store %struct._CHANNEL_SETUP_REC* %31, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1811
  %32 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1812
  %33 = icmp eq %struct._CHANNEL_SETUP_REC* %32, null, !dbg !1814
  br i1 %33, label %34, label %37, !dbg !1815

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %5, align 8, !dbg !1816
  %36 = load i8*, i8** %4, align 8, !dbg !1817
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 86, i8* %35, i8* %36), !dbg !1818
  br label %41, !dbg !1818

; <label>:37:                                     ; preds = %28
  %38 = load i8*, i8** %5, align 8, !dbg !1819
  %39 = load i8*, i8** %4, align 8, !dbg !1821
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 88, i8* %38, i8* %39), !dbg !1822
  %40 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1823
  call void @channel_setup_remove(%struct._CHANNEL_SETUP_REC* %40), !dbg !1824
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = load i8*, i8** %6, align 8, !dbg !1825
  call void @cmd_params_free(i8* %42), !dbg !1826
  br label %43, !dbg !1827

; <label>:43:                                     ; preds = %41, %24, %10
  ret void, !dbg !1828
}

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_list() #0 !dbg !1830 {
  %1 = alloca %struct._GString*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %1, metadata !1831, metadata !826), !dbg !1832
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1833, metadata !826), !dbg !1834
  %4 = call %struct._GString* @g_string_new(i8* null), !dbg !1835
  store %struct._GString* %4, %struct._GString** %1, align 8, !dbg !1836
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 89), !dbg !1837
  %5 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !1838
  store %struct._GSList* %5, %struct._GSList** %2, align 8, !dbg !1840
  br label %6, !dbg !1841

; <label>:6:                                      ; preds = %100, %0
  %7 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1842
  %8 = icmp ne %struct._GSList* %7, null, !dbg !1845
  br i1 %8, label %9, label %104, !dbg !1846

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %3, metadata !1847, metadata !826), !dbg !1849
  %10 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1850
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !1851
  %12 = load i8*, i8** %11, align 8, !dbg !1851
  %13 = bitcast i8* %12 to %struct._CHANNEL_SETUP_REC*, !dbg !1850
  store %struct._CHANNEL_SETUP_REC* %13, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1849
  %14 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1852
  %15 = call %struct._GString* @g_string_truncate(%struct._GString* %14, i64 0), !dbg !1853
  %16 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1854
  %17 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %16, i32 0, i32 7, !dbg !1856
  %18 = load i8, i8* %17, align 8, !dbg !1856
  %19 = and i8 %18, 1, !dbg !1856
  %20 = zext i8 %19 to i32, !dbg !1856
  %21 = icmp ne i32 %20, 0, !dbg !1854
  br i1 %21, label %22, label %25, !dbg !1857

; <label>:22:                                     ; preds = %9
  %23 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1858
  %24 = call %struct._GString* @g_string_append(%struct._GString* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0)), !dbg !1859
  br label %25, !dbg !1859

; <label>:25:                                     ; preds = %22, %9
  %26 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1860
  %27 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %26, i32 0, i32 5, !dbg !1862
  %28 = load i8*, i8** %27, align 8, !dbg !1862
  %29 = icmp ne i8* %28, null, !dbg !1863
  br i1 %29, label %30, label %42, !dbg !1864

; <label>:30:                                     ; preds = %25
  %31 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1865
  %32 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %31, i32 0, i32 5, !dbg !1867
  %33 = load i8*, i8** %32, align 8, !dbg !1867
  %34 = load i8, i8* %33, align 1, !dbg !1868
  %35 = sext i8 %34 to i32, !dbg !1868
  %36 = icmp ne i32 %35, 0, !dbg !1869
  br i1 %36, label %37, label %42, !dbg !1870

; <label>:37:                                     ; preds = %30
  %38 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1871
  %39 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1872
  %40 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %39, i32 0, i32 5, !dbg !1873
  %41 = load i8*, i8** %40, align 8, !dbg !1873
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %41), !dbg !1874
  br label %42, !dbg !1874

; <label>:42:                                     ; preds = %37, %30, %25
  %43 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1875
  %44 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %43, i32 0, i32 6, !dbg !1877
  %45 = load i8*, i8** %44, align 8, !dbg !1877
  %46 = icmp ne i8* %45, null, !dbg !1878
  br i1 %46, label %47, label %59, !dbg !1879

; <label>:47:                                     ; preds = %42
  %48 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1880
  %49 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %48, i32 0, i32 6, !dbg !1882
  %50 = load i8*, i8** %49, align 8, !dbg !1882
  %51 = load i8, i8* %50, align 1, !dbg !1883
  %52 = sext i8 %51 to i32, !dbg !1883
  %53 = icmp ne i32 %52, 0, !dbg !1884
  br i1 %53, label %54, label %59, !dbg !1885

; <label>:54:                                     ; preds = %47
  %55 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1886
  %56 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1887
  %57 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %56, i32 0, i32 6, !dbg !1888
  %58 = load i8*, i8** %57, align 8, !dbg !1888
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* %58), !dbg !1889
  br label %59, !dbg !1889

; <label>:59:                                     ; preds = %54, %47, %42
  %60 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1890
  %61 = getelementptr inbounds %struct._GString, %struct._GString* %60, i32 0, i32 1, !dbg !1892
  %62 = load i64, i64* %61, align 8, !dbg !1892
  %63 = icmp ugt i64 %62, 2, !dbg !1893
  br i1 %63, label %64, label %71, !dbg !1894

; <label>:64:                                     ; preds = %59
  %65 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1895
  %66 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1897
  %67 = getelementptr inbounds %struct._GString, %struct._GString* %66, i32 0, i32 1, !dbg !1898
  %68 = load i64, i64* %67, align 8, !dbg !1898
  %69 = sub i64 %68, 2, !dbg !1899
  %70 = call %struct._GString* @g_string_truncate(%struct._GString* %65, i64 %69), !dbg !1900
  br label %71, !dbg !1900

; <label>:71:                                     ; preds = %64, %59
  %72 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1901
  %73 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %72, i32 0, i32 2, !dbg !1902
  %74 = load i8*, i8** %73, align 8, !dbg !1902
  %75 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1903
  %76 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %75, i32 0, i32 3, !dbg !1904
  %77 = load i8*, i8** %76, align 8, !dbg !1904
  %78 = icmp eq i8* %77, null, !dbg !1905
  br i1 %78, label %79, label %80, !dbg !1903

; <label>:79:                                     ; preds = %71
  br label %84, !dbg !1906

; <label>:80:                                     ; preds = %71
  %81 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1908
  %82 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %81, i32 0, i32 3, !dbg !1910
  %83 = load i8*, i8** %82, align 8, !dbg !1910
  br label %84, !dbg !1911

; <label>:84:                                     ; preds = %80, %79
  %85 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %79 ], [ %83, %80 ], !dbg !1912
  %86 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1914
  %87 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %86, i32 0, i32 4, !dbg !1915
  %88 = load i8*, i8** %87, align 8, !dbg !1915
  %89 = icmp eq i8* %88, null, !dbg !1916
  br i1 %89, label %90, label %91, !dbg !1914

; <label>:90:                                     ; preds = %84
  br label %95, !dbg !1917

; <label>:91:                                     ; preds = %84
  %92 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !1919
  %93 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %92, i32 0, i32 4, !dbg !1921
  %94 = load i8*, i8** %93, align 8, !dbg !1921
  br label %95, !dbg !1922

; <label>:95:                                     ; preds = %91, %90
  %96 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), %90 ], [ %94, %91 ], !dbg !1923
  %97 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1925
  %98 = getelementptr inbounds %struct._GString, %struct._GString* %97, i32 0, i32 0, !dbg !1926
  %99 = load i8*, i8** %98, align 8, !dbg !1926
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 90, i8* %74, i8* %85, i8* %96, i8* %99), !dbg !1927
  br label %100, !dbg !1928

; <label>:100:                                    ; preds = %95
  %101 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1929
  %102 = getelementptr inbounds %struct._GSList, %struct._GSList* %101, i32 0, i32 1, !dbg !1931
  %103 = load %struct._GSList*, %struct._GSList** %102, align 8, !dbg !1931
  store %struct._GSList* %103, %struct._GSList** %2, align 8, !dbg !1932
  br label %6, !dbg !1933, !llvm.loop !1934

; <label>:104:                                    ; preds = %6
  %105 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !1936
  %106 = call i8* @g_string_free(%struct._GString* %105, i32 1), !dbg !1937
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 91), !dbg !1938
  ret void, !dbg !1939
}

; Function Attrs: nounwind uwtable
define internal void @cmd_names(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1940 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  %8 = alloca %struct._GHashTable*, align 8
  %9 = alloca %struct._GString*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1941, metadata !826), !dbg !1942
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1943, metadata !826), !dbg !1944
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1945, metadata !826), !dbg !1946
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !1947, metadata !826), !dbg !1948
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %8, metadata !1949, metadata !826), !dbg !1950
  call void @llvm.dbg.declare(metadata %struct._GString** %9, metadata !1951, metadata !826), !dbg !1952
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1953, metadata !826), !dbg !1954
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1955, metadata !826), !dbg !1956
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !1957, metadata !826), !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1959, metadata !826), !dbg !1960
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1961, metadata !826), !dbg !1962
  br label %15, !dbg !1963, !llvm.loop !1964

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %4, align 8, !dbg !1965
  %17 = icmp ne i8* %16, null, !dbg !1969
  br i1 %17, label %18, label %19, !dbg !1965

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1970

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_names, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)), !dbg !1973
  br label %178, !dbg !1976

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1977

; <label>:21:                                     ; preds = %20
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1979
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !1979
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)), !dbg !1981
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !1982
  %26 = icmp ne %struct._SERVER_REC* %25, null, !dbg !1982
  br i1 %26, label %27, label %28, !dbg !1983

; <label>:27:                                     ; preds = %21
  br i1 false, label %36, label %29, !dbg !1984

; <label>:28:                                     ; preds = %21
  br i1 false, label %29, label %36, !dbg !1986

; <label>:29:                                     ; preds = %28, %27
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1988
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 8, !dbg !1990
  %32 = load i8, i8* %31, align 8, !dbg !1990
  %33 = and i8 %32, 1, !dbg !1990
  %34 = zext i8 %33 to i32, !dbg !1990
  %35 = icmp ne i32 %34, 0, !dbg !1988
  br i1 %35, label %40, label %36, !dbg !1991

; <label>:36:                                     ; preds = %29, %28, %27
  br label %37, !dbg !1992, !llvm.loop !1993

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1994
  call void @signal_stop(), !dbg !1997
  br label %178, !dbg !1999
                                                  ; No predecessors!
  br label %40, !dbg !2000

; <label>:40:                                     ; preds = %39, %29
  %41 = load i8*, i8** %4, align 8, !dbg !2002
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %14, i32 16385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %struct._GHashTable** %8, i8** %10), !dbg !2004
  %43 = icmp ne i32 %42, 0, !dbg !2004
  br i1 %43, label %45, label %44, !dbg !2005

; <label>:44:                                     ; preds = %40
  br label %178, !dbg !2006

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %10, align 8, !dbg !2007
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)), !dbg !2009
  %48 = icmp eq i32 %47, 0, !dbg !2010
  br i1 %48, label %54, label %49, !dbg !2011

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %10, align 8, !dbg !2012
  %51 = load i8, i8* %50, align 1, !dbg !2014
  %52 = sext i8 %51 to i32, !dbg !2014
  %53 = icmp eq i32 %52, 0, !dbg !2015
  br i1 %53, label %54, label %76, !dbg !2016

; <label>:54:                                     ; preds = %49, %45
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2017
  %56 = bitcast %struct._WI_ITEM_REC* %55 to i8*, !dbg !2017
  %57 = call i8* @module_check_cast_module(i8* %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !2020
  %58 = bitcast i8* %57 to %struct._CHANNEL_REC*, !dbg !2021
  %59 = icmp ne %struct._CHANNEL_REC* %58, null, !dbg !2021
  br i1 %59, label %60, label %61, !dbg !2022

; <label>:60:                                     ; preds = %54
  br i1 false, label %62, label %69, !dbg !2023

; <label>:61:                                     ; preds = %54
  br i1 false, label %69, label %62, !dbg !2025

; <label>:62:                                     ; preds = %61, %60
  br label %63, !dbg !2027, !llvm.loop !2028

; <label>:63:                                     ; preds = %62
  %64 = load i8*, i8** %14, align 8, !dbg !2029
  call void @cmd_params_free(i8* %64), !dbg !2032
  br label %65, !dbg !2033, !llvm.loop !2034

; <label>:65:                                     ; preds = %63
  %66 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !2036
  call void @signal_stop(), !dbg !2039
  br label %178, !dbg !2041
                                                  ; No predecessors!
  br label %68, !dbg !2042

; <label>:68:                                     ; preds = %67
  br label %69, !dbg !2044

; <label>:69:                                     ; preds = %68, %61, %60
  %70 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2046
  %71 = bitcast %struct._WI_ITEM_REC* %70 to i8*, !dbg !2046
  %72 = call i8* @module_check_cast_module(i8* %71, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !2047
  %73 = bitcast i8* %72 to %struct._CHANNEL_REC*, !dbg !2048
  %74 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %73, i32 0, i32 6, !dbg !2049
  %75 = load i8*, i8** %74, align 8, !dbg !2049
  store i8* %75, i8** %10, align 8, !dbg !2050
  br label %76, !dbg !2051

; <label>:76:                                     ; preds = %69, %49
  store i32 0, i32* %13, align 4, !dbg !2052
  %77 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2053
  %78 = call i8* @g_hash_table_lookup(%struct._GHashTable* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0)), !dbg !2055
  %79 = icmp ne i8* %78, null, !dbg !2056
  br i1 %79, label %80, label %83, !dbg !2057

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %13, align 4, !dbg !2058
  %82 = or i32 %81, 1, !dbg !2058
  store i32 %82, i32* %13, align 4, !dbg !2058
  br label %83, !dbg !2059

; <label>:83:                                     ; preds = %80, %76
  %84 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2060
  %85 = call i8* @g_hash_table_lookup(%struct._GHashTable* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)), !dbg !2062
  %86 = icmp ne i8* %85, null, !dbg !2063
  br i1 %86, label %87, label %90, !dbg !2064

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %13, align 4, !dbg !2065
  %89 = or i32 %88, 2, !dbg !2065
  store i32 %89, i32* %13, align 4, !dbg !2065
  br label %90, !dbg !2066

; <label>:90:                                     ; preds = %87, %83
  %91 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2067
  %92 = call i8* @g_hash_table_lookup(%struct._GHashTable* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)), !dbg !2069
  %93 = icmp ne i8* %92, null, !dbg !2070
  br i1 %93, label %94, label %97, !dbg !2071

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %13, align 4, !dbg !2072
  %96 = or i32 %95, 4, !dbg !2072
  store i32 %96, i32* %13, align 4, !dbg !2072
  br label %97, !dbg !2073

; <label>:97:                                     ; preds = %94, %90
  %98 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2074
  %99 = call i8* @g_hash_table_lookup(%struct._GHashTable* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)), !dbg !2076
  %100 = icmp ne i8* %99, null, !dbg !2077
  br i1 %100, label %101, label %104, !dbg !2078

; <label>:101:                                    ; preds = %97
  %102 = load i32, i32* %13, align 4, !dbg !2079
  %103 = or i32 %102, 8, !dbg !2079
  store i32 %103, i32* %13, align 4, !dbg !2079
  br label %104, !dbg !2080

; <label>:104:                                    ; preds = %101, %97
  %105 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !2081
  %106 = call i8* @g_hash_table_lookup(%struct._GHashTable* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0)), !dbg !2083
  %107 = icmp ne i8* %106, null, !dbg !2084
  br i1 %107, label %108, label %111, !dbg !2085

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %13, align 4, !dbg !2086
  %110 = or i32 %109, 16, !dbg !2086
  store i32 %110, i32* %13, align 4, !dbg !2086
  br label %111, !dbg !2087

; <label>:111:                                    ; preds = %108, %104
  %112 = load i32, i32* %13, align 4, !dbg !2088
  %113 = icmp eq i32 %112, 0, !dbg !2090
  br i1 %113, label %114, label %115, !dbg !2091

; <label>:114:                                    ; preds = %111
  store i32 15, i32* %13, align 4, !dbg !2092
  br label %115, !dbg !2094

; <label>:115:                                    ; preds = %114, %111
  %116 = call %struct._GString* @g_string_new(i8* null), !dbg !2095
  store %struct._GString* %116, %struct._GString** %9, align 8, !dbg !2096
  %117 = load i8*, i8** %10, align 8, !dbg !2097
  %118 = call noalias i8** @g_strsplit(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32 -1), !dbg !2098
  store i8** %118, i8*** %11, align 8, !dbg !2099
  %119 = load i8**, i8*** %11, align 8, !dbg !2100
  store i8** %119, i8*** %12, align 8, !dbg !2102
  br label %120, !dbg !2103

; <label>:120:                                    ; preds = %139, %115
  %121 = load i8**, i8*** %12, align 8, !dbg !2104
  %122 = load i8*, i8** %121, align 8, !dbg !2107
  %123 = icmp ne i8* %122, null, !dbg !2108
  br i1 %123, label %124, label %142, !dbg !2109

; <label>:124:                                    ; preds = %120
  %125 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2110
  %126 = load i8**, i8*** %12, align 8, !dbg !2112
  %127 = load i8*, i8** %126, align 8, !dbg !2113
  %128 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %125, i8* %127), !dbg !2114
  store %struct._CHANNEL_REC* %128, %struct._CHANNEL_REC** %7, align 8, !dbg !2115
  %129 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2116
  %130 = icmp eq %struct._CHANNEL_REC* %129, null, !dbg !2118
  br i1 %130, label %131, label %135, !dbg !2119

; <label>:131:                                    ; preds = %124
  %132 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2120
  %133 = load i8**, i8*** %12, align 8, !dbg !2121
  %134 = load i8*, i8** %133, align 8, !dbg !2122
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* %134), !dbg !2123
  br label %138, !dbg !2123

; <label>:135:                                    ; preds = %124
  %136 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2124
  %137 = load i32, i32* %13, align 4, !dbg !2126
  call void @fe_channels_nicklist(%struct._CHANNEL_REC* %136, i32 %137), !dbg !2127
  call void @signal_stop(), !dbg !2128
  br label %138

; <label>:138:                                    ; preds = %135, %131
  br label %139, !dbg !2129

; <label>:139:                                    ; preds = %138
  %140 = load i8**, i8*** %12, align 8, !dbg !2130
  %141 = getelementptr inbounds i8*, i8** %140, i32 1, !dbg !2130
  store i8** %141, i8*** %12, align 8, !dbg !2130
  br label %120, !dbg !2132, !llvm.loop !2133

; <label>:142:                                    ; preds = %120
  %143 = load i8**, i8*** %11, align 8, !dbg !2135
  call void @g_strfreev(i8** %143), !dbg !2136
  %144 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2137
  %145 = getelementptr inbounds %struct._GString, %struct._GString* %144, i32 0, i32 1, !dbg !2139
  %146 = load i64, i64* %145, align 8, !dbg !2139
  %147 = icmp ugt i64 %146, 1, !dbg !2140
  br i1 %147, label %148, label %155, !dbg !2141

; <label>:148:                                    ; preds = %142
  %149 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2142
  %150 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2143
  %151 = getelementptr inbounds %struct._GString, %struct._GString* %150, i32 0, i32 1, !dbg !2144
  %152 = load i64, i64* %151, align 8, !dbg !2144
  %153 = sub i64 %152, 1, !dbg !2145
  %154 = call %struct._GString* @g_string_truncate(%struct._GString* %149, i64 %153), !dbg !2146
  br label %155, !dbg !2146

; <label>:155:                                    ; preds = %148, %142
  %156 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2147
  %157 = getelementptr inbounds %struct._GString, %struct._GString* %156, i32 0, i32 1, !dbg !2149
  %158 = load i64, i64* %157, align 8, !dbg !2149
  %159 = icmp ugt i64 %158, 0, !dbg !2150
  br i1 %159, label %160, label %174, !dbg !2151

; <label>:160:                                    ; preds = %155
  %161 = load i8*, i8** %10, align 8, !dbg !2152
  %162 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2154
  %163 = getelementptr inbounds %struct._GString, %struct._GString* %162, i32 0, i32 0, !dbg !2155
  %164 = load i8*, i8** %163, align 8, !dbg !2155
  %165 = call i32 @g_strcmp0(i8* %161, i8* %164), !dbg !2156
  %166 = icmp ne i32 %165, 0, !dbg !2157
  br i1 %166, label %167, label %174, !dbg !2158

; <label>:167:                                    ; preds = %160
  %168 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2159
  %169 = getelementptr inbounds %struct._GString, %struct._GString* %168, i32 0, i32 0, !dbg !2160
  %170 = load i8*, i8** %169, align 8, !dbg !2160
  %171 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2161
  %172 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2162
  %173 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 3, i8* %170, %struct._SERVER_REC* %171, %struct._WI_ITEM_REC* %172), !dbg !2163
  br label %174, !dbg !2163

; <label>:174:                                    ; preds = %167, %160, %155
  %175 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2164
  %176 = call i8* @g_string_free(%struct._GString* %175, i32 1), !dbg !2165
  %177 = load i8*, i8** %14, align 8, !dbg !2166
  call void @cmd_params_free(i8* %177), !dbg !2167
  br label %178, !dbg !2168

; <label>:178:                                    ; preds = %174, %65, %44, %37, %19
  ret void, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal void @cmd_cycle(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2171 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2172, metadata !826), !dbg !2173
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2174, metadata !826), !dbg !2175
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2176, metadata !826), !dbg !2177
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !2178, metadata !826), !dbg !2179
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2180, metadata !826), !dbg !2181
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2182, metadata !826), !dbg !2183
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2184, metadata !826), !dbg !2185
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2186, metadata !826), !dbg !2187
  br label %12, !dbg !2188, !llvm.loop !2189

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !2190
  %14 = icmp ne i8* %13, null, !dbg !2194
  br i1 %14, label %15, label %16, !dbg !2190

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2195

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_cycle, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0)), !dbg !2198
  br label %112, !dbg !2201

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2202

; <label>:18:                                     ; preds = %17
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2204
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !2204
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)), !dbg !2206
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2207
  %23 = icmp ne %struct._SERVER_REC* %22, null, !dbg !2207
  br i1 %23, label %24, label %25, !dbg !2208

; <label>:24:                                     ; preds = %18
  br i1 false, label %33, label %26, !dbg !2209

; <label>:25:                                     ; preds = %18
  br i1 false, label %26, label %33, !dbg !2211

; <label>:26:                                     ; preds = %25, %24
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2213
  %28 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %27, i32 0, i32 8, !dbg !2215
  %29 = load i8, i8* %28, align 8, !dbg !2215
  %30 = and i8 %29, 1, !dbg !2215
  %31 = zext i8 %30 to i32, !dbg !2215
  %32 = icmp ne i32 %31, 0, !dbg !2213
  br i1 %32, label %37, label %33, !dbg !2216

; <label>:33:                                     ; preds = %26, %25, %24
  br label %34, !dbg !2217, !llvm.loop !2218

; <label>:34:                                     ; preds = %33
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2219
  call void @signal_stop(), !dbg !2222
  br label %112, !dbg !2224
                                                  ; No predecessors!
  br label %37, !dbg !2225

; <label>:37:                                     ; preds = %36, %26
  %38 = load i8*, i8** %4, align 8, !dbg !2227
  %39 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2229
  %40 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %38, i8** %11, i32 65538, %struct._WI_ITEM_REC* %39, i8** %8, i8** %9), !dbg !2230
  %41 = icmp ne i32 %40, 0, !dbg !2230
  br i1 %41, label %43, label %42, !dbg !2231

; <label>:42:                                     ; preds = %37
  br label %112, !dbg !2232

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %8, align 8, !dbg !2233
  %45 = load i8, i8* %44, align 1, !dbg !2235
  %46 = sext i8 %45 to i32, !dbg !2235
  %47 = icmp eq i32 %46, 0, !dbg !2236
  br i1 %47, label %48, label %55, !dbg !2237

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !2238, !llvm.loop !2240

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %11, align 8, !dbg !2242
  call void @cmd_params_free(i8* %50), !dbg !2245
  br label %51, !dbg !2246, !llvm.loop !2247

; <label>:51:                                     ; preds = %49
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2249
  call void @signal_stop(), !dbg !2252
  br label %112, !dbg !2254
                                                  ; No predecessors!
  br label %54, !dbg !2255

; <label>:54:                                     ; preds = %53
  br label %55, !dbg !2257

; <label>:55:                                     ; preds = %54, %43
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2259
  %57 = load i8*, i8** %8, align 8, !dbg !2260
  %58 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %56, i8* %57), !dbg !2261
  store %struct._CHANNEL_REC* %58, %struct._CHANNEL_REC** %7, align 8, !dbg !2262
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2263
  %60 = icmp eq %struct._CHANNEL_REC* %59, null, !dbg !2265
  br i1 %60, label %61, label %68, !dbg !2266

; <label>:61:                                     ; preds = %55
  br label %62, !dbg !2267, !llvm.loop !2269

; <label>:62:                                     ; preds = %61
  %63 = load i8*, i8** %11, align 8, !dbg !2271
  call void @cmd_params_free(i8* %63), !dbg !2274
  br label %64, !dbg !2275, !llvm.loop !2276

; <label>:64:                                     ; preds = %62
  %65 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 6 to i8*)), !dbg !2278
  call void @signal_stop(), !dbg !2281
  br label %112, !dbg !2283
                                                  ; No predecessors!
  br label %67, !dbg !2284

; <label>:67:                                     ; preds = %66
  br label %68, !dbg !2286

; <label>:68:                                     ; preds = %67, %55
  %69 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2288
  %70 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %69, i32 0, i32 22, !dbg !2289
  %71 = load i8* (%struct._CHANNEL_REC*)*, i8* (%struct._CHANNEL_REC*)** %70, align 8, !dbg !2289
  %72 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2290
  %73 = call i8* %71(%struct._CHANNEL_REC* %72), !dbg !2288
  store i8* %73, i8** %10, align 8, !dbg !2291
  %74 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2292
  %75 = bitcast %struct._CHANNEL_REC* %74 to %struct._WI_ITEM_REC*, !dbg !2293
  %76 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %75, i32 0, i32 3, !dbg !2293
  %77 = load i8*, i8** %76, align 8, !dbg !2293
  %78 = bitcast i8* %77 to %struct._WINDOW_REC*, !dbg !2294
  %79 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2295
  %80 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %79, i32 0, i32 4, !dbg !2296
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %80, align 8, !dbg !2296
  %82 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %81, i32 0, i32 6, !dbg !2297
  %83 = load i8*, i8** %82, align 8, !dbg !2297
  %84 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2298
  %85 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %84, i32 0, i32 6, !dbg !2299
  %86 = load i8*, i8** %85, align 8, !dbg !2299
  %87 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %78, i8* %83, i8* %86), !dbg !2300
  %88 = load i8*, i8** %4, align 8, !dbg !2301
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2302
  %90 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2303
  %91 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 3, i8* %88, %struct._SERVER_REC* %89, %struct._WI_ITEM_REC* %90), !dbg !2304
  %92 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !2305
  %93 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2307
  %94 = bitcast %struct._CHANNEL_REC* %93 to i8*, !dbg !2307
  %95 = call %struct._GSList* @g_slist_find(%struct._GSList* %92, i8* %94), !dbg !2308
  %96 = icmp ne %struct._GSList* %95, null, !dbg !2309
  br i1 %96, label %97, label %104, !dbg !2310

; <label>:97:                                     ; preds = %68
  %98 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2311
  %99 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %98, i32 0, i32 21, !dbg !2313
  %100 = load i16, i16* %99, align 8, !dbg !2314
  %101 = and i16 %100, -33, !dbg !2314
  %102 = or i16 %101, 32, !dbg !2314
  store i16 %102, i16* %99, align 8, !dbg !2314
  %103 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2315
  call void @channel_destroy(%struct._CHANNEL_REC* %103), !dbg !2316
  br label %104, !dbg !2317

; <label>:104:                                    ; preds = %97, %68
  %105 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2318
  %106 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %105, i32 0, i32 25, !dbg !2319
  %107 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %106, align 8, !dbg !2319
  %108 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2320
  %109 = load i8*, i8** %10, align 8, !dbg !2321
  call void %107(%struct._SERVER_REC* %108, i8* %109, i32 0), !dbg !2318
  %110 = load i8*, i8** %10, align 8, !dbg !2322
  call void @g_free(i8* %110), !dbg !2323
  %111 = load i8*, i8** %11, align 8, !dbg !2324
  call void @cmd_params_free(i8* %111), !dbg !2325
  br label %112, !dbg !2326

; <label>:112:                                    ; preds = %104, %64, %51, %42, %34, %16
  ret void, !dbg !2327
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_channels_deinit() #0 !dbg !2329 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, i8*)* @signal_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2330
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @signal_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2331
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, %struct._WI_ITEM_REC*)* @signal_window_item_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2332
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2333
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2334
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2335
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2336
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2337
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2338
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_channel_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2339
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_channel_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2340
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2341
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_cycle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2342
  ret void, !dbg !2343
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare %struct._WINDOW_REC* @window_find_closest(i8*, i8*, i32) #2

declare i8* @format_get_text(i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) #2

declare i8* @strip_codes(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #2

declare i32 @settings_get_int(i8*) #2

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

declare i8* @format_get_line_start(%struct.THEME_REC*, %struct._TEXT_DEST_REC*, i64) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare i32 @get_max_column_count(%struct._GSList*, i32 (i8*)*, i32, i32, i32, i32, i32**, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_nick_length(i8*) #0 !dbg !2344 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2347, metadata !826), !dbg !2348
  %3 = load i8*, i8** %2, align 8, !dbg !2349
  %4 = bitcast i8* %3 to %struct._NICK_REC*, !dbg !2350
  %5 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %4, i32 0, i32 3, !dbg !2351
  %6 = load i8*, i8** %5, align 8, !dbg !2351
  %7 = call i32 @string_width(i8* %6, i32 -1), !dbg !2352
  ret i32 %7, !dbg !2353
}

declare %struct._GSList* @columns_sort_list(%struct._GSList*, i32) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i8* @get_alignment(i8*, i32, i32, i8 signext) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare void @printtext(i8*, i8*, i32, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare i32 @string_width(i8*, i32) #2

declare void @window_item_create(%struct._WI_ITEM_REC*, i32) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @window_item_destroy(%struct._WI_ITEM_REC*) #2

declare %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #2

declare void @window_auto_destroy(%struct._WINDOW_REC*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare void @signal_stop() #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @cmd_params_free(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare void @window_set_active(%struct._WINDOW_REC*) #2

declare void @window_item_set_active(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_channel_created_curwin(%struct._CHANNEL_REC*) #0 !dbg !2354 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !2355, metadata !826), !dbg !2356
  br label %3, !dbg !2357, !llvm.loop !2358

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2359
  %5 = icmp ne %struct._CHANNEL_REC* %4, null, !dbg !2363
  br i1 %5, label %6, label %7, !dbg !2359

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !2364

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.signal_channel_created_curwin, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !2367
  br label %13, !dbg !2370

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !2371

; <label>:9:                                      ; preds = %8
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2373
  %11 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2374
  %12 = bitcast %struct._CHANNEL_REC* %11 to %struct._WI_ITEM_REC*, !dbg !2375
  call void @window_item_add(%struct._WINDOW_REC* %10, %struct._WI_ITEM_REC* %12, i32 0), !dbg !2376
  br label %13, !dbg !2377

; <label>:13:                                     ; preds = %9, %7
  ret void, !dbg !2378
}

declare void @window_item_add(%struct._WINDOW_REC*, %struct._WI_ITEM_REC*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_list_joined() #0 !dbg !2380 {
  %1 = alloca %struct._CHANNEL_REC*, align 8
  %2 = alloca %struct._GString*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %1, metadata !2381, metadata !826), !dbg !2382
  call void @llvm.dbg.declare(metadata %struct._GString** %2, metadata !2383, metadata !826), !dbg !2384
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2385, metadata !826), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2387, metadata !826), !dbg !2388
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2389, metadata !826), !dbg !2390
  %7 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !2391
  %8 = icmp eq %struct._GSList* %7, null, !dbg !2393
  br i1 %8, label %9, label %10, !dbg !2394

; <label>:9:                                      ; preds = %0
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 75), !dbg !2395
  br label %87, !dbg !2397

; <label>:10:                                     ; preds = %0
  %11 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2398
  %12 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %11, i32 0, i32 5, !dbg !2399
  %13 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !2399
  %14 = bitcast %struct._WI_ITEM_REC* %13 to i8*, !dbg !2398
  %15 = call i8* @module_check_cast_module(i8* %14, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !2400
  %16 = bitcast i8* %15 to %struct._CHANNEL_REC*, !dbg !2401
  store %struct._CHANNEL_REC* %16, %struct._CHANNEL_REC** %1, align 8, !dbg !2402
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2403
  %18 = icmp ne %struct._CHANNEL_REC* %17, null, !dbg !2405
  br i1 %18, label %19, label %23, !dbg !2406

; <label>:19:                                     ; preds = %10
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2407
  %21 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %20, i32 0, i32 5, !dbg !2408
  %22 = load i8*, i8** %21, align 8, !dbg !2408
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 76, i8* %22), !dbg !2409
  br label %23, !dbg !2409

; <label>:23:                                     ; preds = %19, %10
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 84), !dbg !2410
  %24 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !2411
  store %struct._GSList* %24, %struct._GSList** %4, align 8, !dbg !2413
  br label %25, !dbg !2414

; <label>:25:                                     ; preds = %83, %23
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2415
  %27 = icmp ne %struct._GSList* %26, null, !dbg !2418
  br i1 %27, label %28, label %87, !dbg !2419

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2420
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !2422
  %31 = load i8*, i8** %30, align 8, !dbg !2422
  %32 = bitcast i8* %31 to %struct._CHANNEL_REC*, !dbg !2420
  store %struct._CHANNEL_REC* %32, %struct._CHANNEL_REC** %1, align 8, !dbg !2423
  %33 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2424
  %34 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %33), !dbg !2425
  store %struct._GSList* %34, %struct._GSList** %3, align 8, !dbg !2426
  %35 = call %struct._GString* @g_string_new(i8* null), !dbg !2427
  store %struct._GString* %35, %struct._GString** %2, align 8, !dbg !2428
  %36 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2429
  store %struct._GSList* %36, %struct._GSList** %5, align 8, !dbg !2431
  br label %37, !dbg !2432

; <label>:37:                                     ; preds = %49, %28
  %38 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2433
  %39 = icmp ne %struct._GSList* %38, null, !dbg !2436
  br i1 %39, label %40, label %53, !dbg !2437

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !2438, metadata !826), !dbg !2440
  %41 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2441
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !2442
  %43 = load i8*, i8** %42, align 8, !dbg !2442
  %44 = bitcast i8* %43 to %struct._NICK_REC*, !dbg !2441
  store %struct._NICK_REC* %44, %struct._NICK_REC** %6, align 8, !dbg !2440
  %45 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2443
  %46 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !2444
  %47 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %46, i32 0, i32 3, !dbg !2445
  %48 = load i8*, i8** %47, align 8, !dbg !2445
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* %48), !dbg !2446
  br label %49, !dbg !2447

; <label>:49:                                     ; preds = %40
  %50 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2448
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 1, !dbg !2450
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !2450
  store %struct._GSList* %52, %struct._GSList** %5, align 8, !dbg !2451
  br label %37, !dbg !2452, !llvm.loop !2453

; <label>:53:                                     ; preds = %37
  %54 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2455
  %55 = getelementptr inbounds %struct._GString, %struct._GString* %54, i32 0, i32 1, !dbg !2457
  %56 = load i64, i64* %55, align 8, !dbg !2457
  %57 = icmp ugt i64 %56, 1, !dbg !2458
  br i1 %57, label %58, label %65, !dbg !2459

; <label>:58:                                     ; preds = %53
  %59 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2460
  %60 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2462
  %61 = getelementptr inbounds %struct._GString, %struct._GString* %60, i32 0, i32 1, !dbg !2463
  %62 = load i64, i64* %61, align 8, !dbg !2463
  %63 = sub i64 %62, 1, !dbg !2464
  %64 = call %struct._GString* @g_string_truncate(%struct._GString* %59, i64 %63), !dbg !2465
  br label %65, !dbg !2465

; <label>:65:                                     ; preds = %58, %53
  %66 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2466
  %67 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %66, i32 0, i32 5, !dbg !2467
  %68 = load i8*, i8** %67, align 8, !dbg !2467
  %69 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2468
  %70 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %69, i32 0, i32 18, !dbg !2469
  %71 = load i8*, i8** %70, align 8, !dbg !2469
  %72 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %1, align 8, !dbg !2470
  %73 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %72, i32 0, i32 4, !dbg !2471
  %74 = load %struct._SERVER_REC*, %struct._SERVER_REC** %73, align 8, !dbg !2471
  %75 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %74, i32 0, i32 6, !dbg !2472
  %76 = load i8*, i8** %75, align 8, !dbg !2472
  %77 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2473
  %78 = getelementptr inbounds %struct._GString, %struct._GString* %77, i32 0, i32 0, !dbg !2474
  %79 = load i8*, i8** %78, align 8, !dbg !2474
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 85, i8* %68, i8* %71, i8* %76, i8* %79), !dbg !2475
  %80 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2476
  call void @g_slist_free(%struct._GSList* %80), !dbg !2477
  %81 = load %struct._GString*, %struct._GString** %2, align 8, !dbg !2478
  %82 = call i8* @g_string_free(%struct._GString* %81, i32 1), !dbg !2479
  br label %83, !dbg !2480

; <label>:83:                                     ; preds = %65
  %84 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2481
  %85 = getelementptr inbounds %struct._GSList, %struct._GSList* %84, i32 0, i32 1, !dbg !2483
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !2483
  store %struct._GSList* %86, %struct._GSList** %4, align 8, !dbg !2484
  br label %25, !dbg !2485, !llvm.loop !2486

; <label>:87:                                     ; preds = %9, %25
  ret void, !dbg !2488
}

declare void @command_runsub(i8*, i8*, i8*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_channel_add_modify(i8*, i32) #0 !dbg !2489 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca %struct._CHATNET_REC*, align 8
  %7 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2492, metadata !826), !dbg !2493
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2494, metadata !826), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !2496, metadata !826), !dbg !2497
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %6, metadata !2498, metadata !826), !dbg !2515
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %7, metadata !2516, metadata !826), !dbg !2517
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2518, metadata !826), !dbg !2519
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2520, metadata !826), !dbg !2521
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2522, metadata !826), !dbg !2523
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2524, metadata !826), !dbg !2525
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2526, metadata !826), !dbg !2527
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2528, metadata !826), !dbg !2529
  %14 = load i8*, i8** %3, align 8, !dbg !2530
  %15 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %14, i8** %13, i32 16387, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), %struct._GHashTable** %5, i8** %11, i8** %10, i8** %12), !dbg !2532
  %16 = icmp ne i32 %15, 0, !dbg !2532
  br i1 %16, label %18, label %17, !dbg !2533

; <label>:17:                                     ; preds = %2
  br label %206, !dbg !2534

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %10, align 8, !dbg !2535
  %20 = load i8, i8* %19, align 1, !dbg !2537
  %21 = sext i8 %20 to i32, !dbg !2537
  %22 = icmp eq i32 %21, 0, !dbg !2538
  br i1 %22, label %28, label %23, !dbg !2539

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %11, align 8, !dbg !2540
  %25 = load i8, i8* %24, align 1, !dbg !2542
  %26 = sext i8 %25 to i32, !dbg !2542
  %27 = icmp eq i32 %26, 0, !dbg !2543
  br i1 %27, label %28, label %35, !dbg !2544

; <label>:28:                                     ; preds = %23, %18
  br label %29, !dbg !2545, !llvm.loop !2547

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %13, align 8, !dbg !2548
  call void @cmd_params_free(i8* %30), !dbg !2551
  br label %31, !dbg !2552, !llvm.loop !2553

; <label>:31:                                     ; preds = %29
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2555
  call void @signal_stop(), !dbg !2558
  br label %206, !dbg !2560
                                                  ; No predecessors!
  br label %34, !dbg !2561

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !2563

; <label>:35:                                     ; preds = %34, %23
  %36 = load i8*, i8** %10, align 8, !dbg !2564
  %37 = call %struct._CHATNET_REC* @chatnet_find(i8* %36), !dbg !2565
  store %struct._CHATNET_REC* %37, %struct._CHATNET_REC** %6, align 8, !dbg !2566
  %38 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %6, align 8, !dbg !2567
  %39 = icmp eq %struct._CHATNET_REC* %38, null, !dbg !2569
  br i1 %39, label %40, label %43, !dbg !2570

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %10, align 8, !dbg !2571
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 204, i8* %41), !dbg !2573
  %42 = load i8*, i8** %13, align 8, !dbg !2574
  call void @cmd_params_free(i8* %42), !dbg !2575
  br label %206, !dbg !2576

; <label>:43:                                     ; preds = %35
  %44 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2577
  %45 = call i8* @g_hash_table_lookup(%struct._GHashTable* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)), !dbg !2578
  store i8* %45, i8** %8, align 8, !dbg !2579
  %46 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2580
  %47 = call i8* @g_hash_table_lookup(%struct._GHashTable* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)), !dbg !2581
  store i8* %47, i8** %9, align 8, !dbg !2582
  %48 = load i8*, i8** %11, align 8, !dbg !2583
  %49 = load i8*, i8** %10, align 8, !dbg !2584
  %50 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %48, i8* %49), !dbg !2585
  store %struct._CHANNEL_SETUP_REC* %50, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2586
  %51 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2587
  %52 = icmp eq %struct._CHANNEL_SETUP_REC* %51, null, !dbg !2589
  br i1 %52, label %53, label %83, !dbg !2590

; <label>:53:                                     ; preds = %43
  %54 = load i32, i32* %4, align 4, !dbg !2591
  %55 = icmp eq i32 %54, 0, !dbg !2594
  br i1 %55, label %56, label %60, !dbg !2595

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %11, align 8, !dbg !2596
  %58 = load i8*, i8** %10, align 8, !dbg !2598
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 86, i8* %57, i8* %58), !dbg !2599
  %59 = load i8*, i8** %13, align 8, !dbg !2600
  call void @cmd_params_free(i8* %59), !dbg !2601
  br label %206, !dbg !2602

; <label>:60:                                     ; preds = %53
  %61 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %6, align 8, !dbg !2603
  %62 = icmp eq %struct._CHATNET_REC* %61, null, !dbg !2604
  br i1 %62, label %63, label %65, !dbg !2605

; <label>:63:                                     ; preds = %60
  %64 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2606
  br label %70, !dbg !2606

; <label>:65:                                     ; preds = %60
  %66 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %6, align 8, !dbg !2608
  %67 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %66, i32 0, i32 1, !dbg !2610
  %68 = load i32, i32* %67, align 4, !dbg !2610
  %69 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %68), !dbg !2611
  br label %70, !dbg !2612

; <label>:70:                                     ; preds = %65, %63
  %71 = phi %struct._CHAT_PROTOCOL_REC* [ %64, %63 ], [ %69, %65 ], !dbg !2613
  %72 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %71, i32 0, i32 7, !dbg !2615
  %73 = load %struct._CHANNEL_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()** %72, align 8, !dbg !2615
  %74 = call %struct._CHANNEL_SETUP_REC* %73(), !dbg !2616
  store %struct._CHANNEL_SETUP_REC* %74, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2617
  %75 = load i8*, i8** %11, align 8, !dbg !2618
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !2619
  %77 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2620
  %78 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %77, i32 0, i32 2, !dbg !2621
  store i8* %76, i8** %78, align 8, !dbg !2622
  %79 = load i8*, i8** %10, align 8, !dbg !2623
  %80 = call noalias i8* @g_strdup(i8* %79), !dbg !2624
  %81 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2625
  %82 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %81, i32 0, i32 3, !dbg !2626
  store i8* %80, i8** %82, align 8, !dbg !2627
  br label %139, !dbg !2628

; <label>:83:                                     ; preds = %43
  %84 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2629
  %85 = call i8* @g_hash_table_lookup(%struct._GHashTable* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)), !dbg !2632
  %86 = icmp ne i8* %85, null, !dbg !2632
  br i1 %86, label %87, label %101, !dbg !2633

; <label>:87:                                     ; preds = %83
  br label %88, !dbg !2634, !llvm.loop !2636

; <label>:88:                                     ; preds = %87
  %89 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2638
  %90 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %89, i32 0, i32 5, !dbg !2642
  %91 = load i8*, i8** %90, align 8, !dbg !2642
  %92 = icmp ne i8* %91, null, !dbg !2638
  br i1 %92, label %93, label %99, !dbg !2638

; <label>:93:                                     ; preds = %88
  %94 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2643
  %95 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %94, i32 0, i32 5, !dbg !2646
  %96 = load i8*, i8** %95, align 8, !dbg !2646
  call void @g_free(i8* %96), !dbg !2647
  %97 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2648
  %98 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %97, i32 0, i32 5, !dbg !2649
  store i8* null, i8** %98, align 8, !dbg !2650
  br label %99, !dbg !2651

; <label>:99:                                     ; preds = %93, %88
  br label %100, !dbg !2652

; <label>:100:                                    ; preds = %99
  br label %101, !dbg !2654

; <label>:101:                                    ; preds = %100, %83
  %102 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2656
  %103 = call i8* @g_hash_table_lookup(%struct._GHashTable* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)), !dbg !2658
  %104 = icmp ne i8* %103, null, !dbg !2658
  br i1 %104, label %105, label %119, !dbg !2659

; <label>:105:                                    ; preds = %101
  br label %106, !dbg !2660, !llvm.loop !2662

; <label>:106:                                    ; preds = %105
  %107 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2664
  %108 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %107, i32 0, i32 6, !dbg !2668
  %109 = load i8*, i8** %108, align 8, !dbg !2668
  %110 = icmp ne i8* %109, null, !dbg !2664
  br i1 %110, label %111, label %117, !dbg !2664

; <label>:111:                                    ; preds = %106
  %112 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2669
  %113 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %112, i32 0, i32 6, !dbg !2672
  %114 = load i8*, i8** %113, align 8, !dbg !2672
  call void @g_free(i8* %114), !dbg !2673
  %115 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2674
  %116 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %115, i32 0, i32 6, !dbg !2675
  store i8* null, i8** %116, align 8, !dbg !2676
  br label %117, !dbg !2677

; <label>:117:                                    ; preds = %111, %106
  br label %118, !dbg !2678

; <label>:118:                                    ; preds = %117
  br label %119, !dbg !2680

; <label>:119:                                    ; preds = %118, %101
  %120 = load i8*, i8** %12, align 8, !dbg !2682
  %121 = load i8, i8* %120, align 1, !dbg !2684
  %122 = sext i8 %121 to i32, !dbg !2684
  %123 = icmp ne i32 %122, 0, !dbg !2685
  br i1 %123, label %124, label %138, !dbg !2686

; <label>:124:                                    ; preds = %119
  br label %125, !dbg !2687, !llvm.loop !2689

; <label>:125:                                    ; preds = %124
  %126 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2691
  %127 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %126, i32 0, i32 4, !dbg !2695
  %128 = load i8*, i8** %127, align 8, !dbg !2695
  %129 = icmp ne i8* %128, null, !dbg !2691
  br i1 %129, label %130, label %136, !dbg !2691

; <label>:130:                                    ; preds = %125
  %131 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2696
  %132 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %131, i32 0, i32 4, !dbg !2699
  %133 = load i8*, i8** %132, align 8, !dbg !2699
  call void @g_free(i8* %133), !dbg !2700
  %134 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2701
  %135 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %134, i32 0, i32 4, !dbg !2702
  store i8* null, i8** %135, align 8, !dbg !2703
  br label %136, !dbg !2704

; <label>:136:                                    ; preds = %130, %125
  br label %137, !dbg !2705

; <label>:137:                                    ; preds = %136
  br label %138, !dbg !2707

; <label>:138:                                    ; preds = %137, %119
  br label %139

; <label>:139:                                    ; preds = %138, %70
  %140 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2709
  %141 = call i8* @g_hash_table_lookup(%struct._GHashTable* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)), !dbg !2711
  %142 = icmp ne i8* %141, null, !dbg !2711
  br i1 %142, label %143, label %149, !dbg !2712

; <label>:143:                                    ; preds = %139
  %144 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2713
  %145 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %144, i32 0, i32 7, !dbg !2715
  %146 = load i8, i8* %145, align 8, !dbg !2716
  %147 = and i8 %146, -2, !dbg !2716
  %148 = or i8 %147, 1, !dbg !2716
  store i8 %148, i8* %145, align 8, !dbg !2716
  br label %149, !dbg !2713

; <label>:149:                                    ; preds = %143, %139
  %150 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2717
  %151 = call i8* @g_hash_table_lookup(%struct._GHashTable* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0)), !dbg !2719
  %152 = icmp ne i8* %151, null, !dbg !2719
  br i1 %152, label %153, label %158, !dbg !2720

; <label>:153:                                    ; preds = %149
  %154 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2721
  %155 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %154, i32 0, i32 7, !dbg !2723
  %156 = load i8, i8* %155, align 8, !dbg !2724
  %157 = and i8 %156, -2, !dbg !2724
  store i8 %157, i8* %155, align 8, !dbg !2724
  br label %158, !dbg !2721

; <label>:158:                                    ; preds = %153, %149
  %159 = load i8*, i8** %8, align 8, !dbg !2725
  %160 = icmp ne i8* %159, null, !dbg !2727
  br i1 %160, label %161, label %171, !dbg !2728

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %8, align 8, !dbg !2729
  %163 = load i8, i8* %162, align 1, !dbg !2731
  %164 = sext i8 %163 to i32, !dbg !2731
  %165 = icmp ne i32 %164, 0, !dbg !2732
  br i1 %165, label %166, label %171, !dbg !2733

; <label>:166:                                    ; preds = %161
  %167 = load i8*, i8** %8, align 8, !dbg !2734
  %168 = call noalias i8* @g_strdup(i8* %167), !dbg !2736
  %169 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2737
  %170 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %169, i32 0, i32 5, !dbg !2738
  store i8* %168, i8** %170, align 8, !dbg !2739
  br label %171, !dbg !2737

; <label>:171:                                    ; preds = %166, %161, %158
  %172 = load i8*, i8** %9, align 8, !dbg !2740
  %173 = icmp ne i8* %172, null, !dbg !2742
  br i1 %173, label %174, label %184, !dbg !2743

; <label>:174:                                    ; preds = %171
  %175 = load i8*, i8** %9, align 8, !dbg !2744
  %176 = load i8, i8* %175, align 1, !dbg !2746
  %177 = sext i8 %176 to i32, !dbg !2746
  %178 = icmp ne i32 %177, 0, !dbg !2747
  br i1 %178, label %179, label %184, !dbg !2748

; <label>:179:                                    ; preds = %174
  %180 = load i8*, i8** %9, align 8, !dbg !2749
  %181 = call noalias i8* @g_strdup(i8* %180), !dbg !2751
  %182 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2752
  %183 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %182, i32 0, i32 6, !dbg !2753
  store i8* %181, i8** %183, align 8, !dbg !2754
  br label %184, !dbg !2752

; <label>:184:                                    ; preds = %179, %174, %171
  %185 = load i8*, i8** %12, align 8, !dbg !2755
  %186 = load i8, i8* %185, align 1, !dbg !2757
  %187 = sext i8 %186 to i32, !dbg !2757
  %188 = icmp ne i32 %187, 0, !dbg !2758
  br i1 %188, label %189, label %198, !dbg !2759

; <label>:189:                                    ; preds = %184
  %190 = load i8*, i8** %12, align 8, !dbg !2760
  %191 = call i32 @g_strcmp0(i8* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)), !dbg !2762
  %192 = icmp ne i32 %191, 0, !dbg !2763
  br i1 %192, label %193, label %198, !dbg !2764

; <label>:193:                                    ; preds = %189
  %194 = load i8*, i8** %12, align 8, !dbg !2765
  %195 = call noalias i8* @g_strdup(i8* %194), !dbg !2767
  %196 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2768
  %197 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %196, i32 0, i32 4, !dbg !2769
  store i8* %195, i8** %197, align 8, !dbg !2770
  br label %198, !dbg !2768

; <label>:198:                                    ; preds = %193, %189, %184
  %199 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2771
  %200 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2772
  %201 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 2, %struct._CHANNEL_SETUP_REC* %199, %struct._GHashTable* %200), !dbg !2773
  %202 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !2774
  call void @channel_setup_create(%struct._CHANNEL_SETUP_REC* %202), !dbg !2775
  %203 = load i8*, i8** %11, align 8, !dbg !2776
  %204 = load i8*, i8** %10, align 8, !dbg !2777
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 87, i8* %203, i8* %204), !dbg !2778
  %205 = load i8*, i8** %13, align 8, !dbg !2779
  call void @cmd_params_free(i8* %205), !dbg !2780
  br label %206, !dbg !2781

; <label>:206:                                    ; preds = %198, %56, %40, %31, %17
  ret void, !dbg !2782
}

declare %struct._CHATNET_REC* @chatnet_find(i8*) #2

declare %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @channel_setup_create(%struct._CHANNEL_SETUP_REC*) #2

declare void @channel_setup_remove(%struct._CHANNEL_SETUP_REC*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare void @channel_destroy(%struct._CHANNEL_REC*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!817, !818}
!llvm.ident = !{!819}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !329)
!1 = !DIFile(filename: "line216-fe-channels.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !308}
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
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!69 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!72 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!73 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!74 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!75 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!76 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!77 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!78 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!79 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!80 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!81 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!82 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!83 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!84 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!85 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!86 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!87 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!88 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!89 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!90 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!91 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!92 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!93 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!94 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!95 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!96 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!97 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!98 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!99 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!100 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!101 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!102 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!103 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!104 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!105 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!109 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!110 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!111 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!112 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!113 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!114 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!115 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!116 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!117 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!118 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!119 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!120 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!121 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!122 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!123 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!124 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!125 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!126 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!127 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!128 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!129 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!130 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!131 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!132 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!133 = !DIEnumerator(name: "TXT_PART", value: 64)
!134 = !DIEnumerator(name: "TXT_KICK", value: 65)
!135 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!136 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!137 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!138 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!139 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!140 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!141 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!142 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!143 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!144 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!145 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!146 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!147 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!148 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!149 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!150 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!151 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!152 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!153 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!154 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!155 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!156 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!157 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!158 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!159 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!160 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!161 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!162 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!163 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!164 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!166 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!167 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!168 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!169 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!170 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!171 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!173 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!174 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!175 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!176 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!177 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!178 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!179 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!180 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!181 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!182 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!183 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!184 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!185 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!186 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!187 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!188 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!189 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!190 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!191 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!192 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!193 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!194 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!195 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!196 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!197 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!198 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!199 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!200 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!201 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!202 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!203 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!204 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!205 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!206 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!207 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!208 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!209 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!210 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!211 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!212 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!213 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!214 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!215 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!216 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!217 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!218 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!219 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!220 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!221 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!222 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!223 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!224 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!225 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!226 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!227 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!228 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!229 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!230 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!231 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!232 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!233 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!234 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!235 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!236 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!237 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!238 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!239 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!240 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!241 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!242 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!243 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!244 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!245 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!246 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!247 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!248 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!249 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!250 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!251 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!252 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!253 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!254 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!255 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!256 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!257 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!258 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!259 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!260 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!261 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!262 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!263 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!264 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!265 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!266 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!267 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!268 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!269 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!270 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!271 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!272 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!273 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!274 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!275 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!276 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!277 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!278 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!279 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!280 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!281 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!282 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!283 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!284 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!285 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!286 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!287 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!288 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!289 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!290 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!291 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!292 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!293 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!294 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!295 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!296 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!297 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!298 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!299 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!300 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!301 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!302 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!303 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!304 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!305 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!306 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!307 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 25, size: 32, align: 32, elements: !310)
!309 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!311 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!312 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!313 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!314 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!315 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!316 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!317 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!318 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!319 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!320 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!321 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!322 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!323 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!324 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!325 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!326 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!327 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!328 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!329 = !{!330, !331, !342, !347, !381, !399, !336, !680, !476, !690, !717, !414, !341}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareDataFunc", file: !332, line: 82, baseType: !333)
!332 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !338, !338, !341}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !332, line: 49, baseType: !337)
!337 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !332, line: 78, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !332, line: 77, baseType: !330)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !343, line: 9, baseType: !344)
!343 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !339, !339, !339, !339, !339, !339}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !349, line: 111, baseType: !350)
!349 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !351, line: 13, size: 576, align: 64, elements: !352)
!351 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !{!353, !355, !356, !362, !365, !366, !367, !368, !370, !371, !372, !373, !374, !375, !379, !380}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !354, line: 3, baseType: !337, size: 32, align: 32)
!354 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !350, file: !354, line: 4, baseType: !337, size: 32, align: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !350, file: !354, line: 6, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !358, line: 75, baseType: !359)
!358 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !360, line: 139, baseType: !361)
!360 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !350, file: !354, line: 8, baseType: !363, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !350, file: !354, line: 9, baseType: !363, size: 64, align: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !350, file: !354, line: 10, baseType: !363, size: 64, align: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !350, file: !354, line: 11, baseType: !337, size: 32, align: 32, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !350, file: !354, line: 14, baseType: !369, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!369 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !350, file: !354, line: 15, baseType: !369, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !350, file: !354, line: 18, baseType: !369, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !350, file: !354, line: 19, baseType: !369, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !350, file: !354, line: 20, baseType: !369, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !350, file: !354, line: 21, baseType: !369, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !350, file: !354, line: 22, baseType: !376, size: 64, align: 8, offset: 360)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 64, align: 8, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !350, file: !354, line: 26, baseType: !330, size: 64, align: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !354, line: 28, baseType: !347, size: 64, align: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !349, line: 117, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !384, line: 28, size: 1280, align: 64, elements: !385)
!384 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!385 = !{!386, !387, !388, !389, !390, !398, !782, !783, !784, !785, !786, !787, !788, !789, !790, !809, !810, !811, !812, !813, !814, !815, !816}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !383, file: !384, line: 29, baseType: !337, size: 32, align: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !384, line: 30, baseType: !363, size: 64, align: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !383, file: !384, line: 32, baseType: !337, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !383, file: !384, line: 32, baseType: !337, size: 32, align: 32, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !383, file: !384, line: 34, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !393, line: 37, baseType: !394)
!393 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !393, line: 39, size: 128, align: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !394, file: !393, line: 41, baseType: !341, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !393, line: 42, baseType: !391, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !383, file: !384, line: 35, baseType: !399, size: 64, align: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !349, line: 108, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !402, line: 5, size: 704, align: 64, elements: !403)
!402 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!403 = !{!404, !406, !407, !412, !413, !775, !776, !777, !778, !779, !780, !781}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !405, line: 3, baseType: !337, size: 32, align: 32)
!405 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !401, file: !405, line: 4, baseType: !337, size: 32, align: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !401, file: !405, line: 5, baseType: !408, size: 64, align: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !410, line: 37, baseType: !411)
!410 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !410, line: 37, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !401, file: !405, line: 7, baseType: !330, size: 64, align: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !401, file: !405, line: 8, baseType: !414, size: 64, align: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !349, line: 107, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !417, line: 30, size: 2240, align: 64, elements: !418)
!417 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!418 = !{!419, !421, !422, !423, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !656, !657, !661, !662, !663, !667, !668, !669, !670, !671, !672, !673, !674, !675, !682, !683, !684, !685, !686, !692, !696, !700, !704, !708, !713, !763, !770, !774}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !420, line: 3, baseType: !337, size: 32, align: 32)
!420 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !416, file: !420, line: 4, baseType: !337, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !416, file: !420, line: 6, baseType: !337, size: 32, align: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !416, file: !420, line: 8, baseType: !424, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !349, line: 113, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !417, line: 25, size: 1920, align: 64, elements: !427)
!427 = !{!428, !430, !431, !432, !433, !434, !435, !436, !437, !439, !440, !441, !442, !443, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !429, line: 3, baseType: !337, size: 32, align: 32)
!429 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!430 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !426, file: !429, line: 4, baseType: !337, size: 32, align: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !426, file: !429, line: 6, baseType: !337, size: 32, align: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !426, file: !429, line: 9, baseType: !363, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !426, file: !429, line: 10, baseType: !337, size: 32, align: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !426, file: !429, line: 11, baseType: !363, size: 64, align: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !426, file: !429, line: 11, baseType: !363, size: 64, align: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !426, file: !429, line: 11, baseType: !363, size: 64, align: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !426, file: !429, line: 13, baseType: !438, size: 16, align: 16, offset: 448)
!438 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !426, file: !429, line: 14, baseType: !363, size: 64, align: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !426, file: !429, line: 15, baseType: !363, size: 64, align: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !426, file: !429, line: 16, baseType: !337, size: 32, align: 32, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !426, file: !429, line: 17, baseType: !363, size: 64, align: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !426, file: !429, line: 19, baseType: !444, size: 64, align: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !349, line: 99, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !349, line: 99, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !426, file: !429, line: 19, baseType: !444, size: 64, align: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !426, file: !429, line: 21, baseType: !363, size: 64, align: 64, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !426, file: !429, line: 22, baseType: !363, size: 64, align: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !426, file: !429, line: 23, baseType: !363, size: 64, align: 64, offset: 1024)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !426, file: !429, line: 24, baseType: !363, size: 64, align: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !426, file: !429, line: 26, baseType: !363, size: 64, align: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !426, file: !429, line: 27, baseType: !363, size: 64, align: 64, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !426, file: !429, line: 28, baseType: !363, size: 64, align: 64, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !426, file: !429, line: 29, baseType: !363, size: 64, align: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !426, file: !429, line: 30, baseType: !363, size: 64, align: 64, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !426, file: !429, line: 31, baseType: !363, size: 64, align: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !426, file: !429, line: 32, baseType: !363, size: 64, align: 64, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !426, file: !429, line: 33, baseType: !363, size: 64, align: 64, offset: 1600)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !426, file: !429, line: 35, baseType: !461, size: 64, align: 64, offset: 1664)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !464)
!464 = !{!465, !466, !600, !601, !606, !607, !608, !609, !610, !619, !620, !621, !625, !626, !627, !628, !629, !630, !631, !632}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !463, file: !4, line: 100, baseType: !336, size: 32, align: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !463, file: !4, line: 101, baseType: !467, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !470)
!470 = !{!471, !494, !500, !506, !510, !587, !591, !596}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !469, file: !4, line: 133, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !461, !476, !478, !481, !482}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !332, line: 46, baseType: !364)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !479, line: 66, baseType: !480)
!479 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!480 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !485, line: 42, baseType: !486)
!485 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !485, line: 44, size: 128, align: 64, elements: !487)
!487 = !{!488, !492, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !486, file: !485, line: 46, baseType: !489, size: 32, align: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !490, line: 36, baseType: !491)
!490 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !479, line: 45, baseType: !369)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !486, file: !485, line: 47, baseType: !336, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !486, file: !485, line: 48, baseType: !476, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !469, file: !4, line: 138, baseType: !495, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!475, !461, !498, !478, !481, !482}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !469, file: !4, line: 143, baseType: !501, size: 64, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!475, !461, !504, !505, !482}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !479, line: 51, baseType: !361)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !469, file: !4, line: 147, baseType: !507, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!475, !461, !482}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !469, file: !4, line: 149, baseType: !511, size: 64, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!514, !461, !586}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !517)
!517 = !{!518, !519, !540, !569, !571, !575, !576, !577, !578, !579, !580, !581, !582}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !516, file: !16, line: 174, baseType: !341, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !516, file: !16, line: 175, baseType: !520, size: 64, align: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !523)
!523 = !{!524, !528, !529}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !522, file: !16, line: 198, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !341}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !522, file: !16, line: 199, baseType: !525, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !522, file: !16, line: 200, baseType: !530, size: 64, align: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !341, !514, !533, !539}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !341}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !332, line: 50, baseType: !336)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !516, file: !16, line: 177, baseType: !541, size: 64, align: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !545)
!545 = !{!546, !551, !555, !559, !563, !564}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !544, file: !16, line: 216, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!538, !514, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !544, file: !16, line: 218, baseType: !552, size: 64, align: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!538, !514}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !544, file: !16, line: 219, baseType: !556, size: 64, align: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!538, !514, !534, !341}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !544, file: !16, line: 222, baseType: !560, size: 64, align: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !514}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !544, file: !16, line: 226, baseType: !534, size: 64, align: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !544, file: !16, line: 227, baseType: !565, size: 64, align: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !516, file: !16, line: 178, baseType: !570, size: 32, align: 32, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !332, line: 55, baseType: !369)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !516, file: !16, line: 180, baseType: !572, size: 64, align: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !516, file: !16, line: 182, baseType: !336, size: 32, align: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !16, line: 183, baseType: !570, size: 32, align: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !516, file: !16, line: 184, baseType: !570, size: 32, align: 32, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !516, file: !16, line: 186, baseType: !391, size: 64, align: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !516, file: !16, line: 188, baseType: !514, size: 64, align: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !16, line: 189, baseType: !514, size: 64, align: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !16, line: 191, baseType: !363, size: 64, align: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !516, file: !16, line: 193, baseType: !583, size: 64, align: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !469, file: !4, line: 151, baseType: !588, size: 64, align: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !461}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !469, file: !4, line: 152, baseType: !592, size: 64, align: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!475, !461, !595, !482}
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !469, file: !4, line: 155, baseType: !597, size: 64, align: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!595, !461}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !463, file: !4, line: 103, baseType: !476, size: 64, align: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !463, file: !4, line: 104, baseType: !602, size: 64, align: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !603, line: 77, baseType: !604)
!603 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !603, line: 77, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !463, file: !4, line: 105, baseType: !602, size: 64, align: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !463, file: !4, line: 106, baseType: !476, size: 64, align: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !463, file: !4, line: 107, baseType: !570, size: 32, align: 32, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !463, file: !4, line: 109, baseType: !478, size: 64, align: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !463, file: !4, line: 110, baseType: !611, size: 64, align: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !613, line: 39, baseType: !614)
!613 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !613, line: 41, size: 192, align: 64, elements: !615)
!615 = !{!616, !617, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !614, file: !613, line: 43, baseType: !476, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !614, file: !613, line: 44, baseType: !478, size: 64, align: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !614, file: !613, line: 45, baseType: !478, size: 64, align: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !463, file: !4, line: 111, baseType: !611, size: 64, align: 64, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !463, file: !4, line: 112, baseType: !611, size: 64, align: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !463, file: !4, line: 113, baseType: !622, size: 48, align: 8, offset: 704)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 48, align: 8, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 6)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !463, file: !4, line: 117, baseType: !570, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !463, file: !4, line: 118, baseType: !570, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !463, file: !4, line: 119, baseType: !570, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !463, file: !4, line: 120, baseType: !570, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !463, file: !4, line: 121, baseType: !570, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !463, file: !4, line: 122, baseType: !570, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !463, file: !4, line: 124, baseType: !341, size: 64, align: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !463, file: !4, line: 125, baseType: !341, size: 64, align: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !426, file: !429, line: 38, baseType: !369, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !426, file: !429, line: 39, baseType: !369, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !426, file: !429, line: 40, baseType: !369, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !426, file: !429, line: 41, baseType: !369, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !426, file: !429, line: 42, baseType: !369, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !426, file: !429, line: 43, baseType: !369, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !426, file: !429, line: 44, baseType: !369, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !426, file: !429, line: 45, baseType: !369, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !426, file: !429, line: 46, baseType: !363, size: 64, align: 64, offset: 1792)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !426, file: !429, line: 47, baseType: !363, size: 64, align: 64, offset: 1856)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !416, file: !420, line: 9, baseType: !357, size: 64, align: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !416, file: !420, line: 10, baseType: !357, size: 64, align: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !416, file: !420, line: 12, baseType: !363, size: 64, align: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !416, file: !420, line: 13, baseType: !363, size: 64, align: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !416, file: !420, line: 15, baseType: !369, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !416, file: !420, line: 16, baseType: !369, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !416, file: !420, line: 17, baseType: !369, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !416, file: !420, line: 18, baseType: !369, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !416, file: !420, line: 19, baseType: !369, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !416, file: !420, line: 21, baseType: !653, size: 64, align: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !349, line: 102, baseType: !655)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !349, line: 102, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !416, file: !420, line: 22, baseType: !337, size: 32, align: 32, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !416, file: !420, line: 25, baseType: !658, size: 128, align: 64, offset: 640)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 128, align: 64, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 2)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !416, file: !420, line: 26, baseType: !337, size: 32, align: 32, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !416, file: !420, line: 27, baseType: !337, size: 32, align: 32, offset: 800)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !416, file: !420, line: 29, baseType: !664, size: 64, align: 64, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !349, line: 103, baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !349, line: 103, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !416, file: !420, line: 30, baseType: !408, size: 64, align: 64, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !416, file: !420, line: 32, baseType: !363, size: 64, align: 64, offset: 960)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !416, file: !420, line: 33, baseType: !363, size: 64, align: 64, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !416, file: !420, line: 34, baseType: !363, size: 64, align: 64, offset: 1088)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !416, file: !420, line: 35, baseType: !369, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !416, file: !420, line: 36, baseType: !369, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !416, file: !420, line: 37, baseType: !369, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !416, file: !420, line: 38, baseType: !369, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !416, file: !420, line: 40, baseType: !676, size: 128, align: 64, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !332, line: 504, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !332, line: 506, size: 128, align: 64, elements: !678)
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !677, file: !332, line: 508, baseType: !680, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !332, line: 48, baseType: !361)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !677, file: !332, line: 509, baseType: !680, size: 64, align: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !416, file: !420, line: 41, baseType: !357, size: 64, align: 64, offset: 1344)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !416, file: !420, line: 42, baseType: !337, size: 32, align: 32, offset: 1408)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !416, file: !420, line: 44, baseType: !391, size: 64, align: 64, offset: 1472)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !416, file: !420, line: 45, baseType: !391, size: 64, align: 64, offset: 1536)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !416, file: !420, line: 53, baseType: !687, size: 64, align: 64, offset: 1600)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !414, !690, !337}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !416, file: !420, line: 55, baseType: !693, size: 64, align: 64, offset: 1664)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!337, !414, !364}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !416, file: !420, line: 57, baseType: !697, size: 64, align: 64, offset: 1728)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!337, !414, !690}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !416, file: !420, line: 60, baseType: !701, size: 64, align: 64, offset: 1792)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64, align: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!690, !414}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !416, file: !420, line: 62, baseType: !705, size: 64, align: 64, offset: 1856)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64, align: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !414, !690, !690, !337}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !416, file: !420, line: 65, baseType: !709, size: 64, align: 64, offset: 1920)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!712, !414, !690, !690}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !416, file: !420, line: 69, baseType: !714, size: 64, align: 64, offset: 1984)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!717, !414, !690}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !349, line: 109, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !720, line: 15, size: 1408, align: 64, elements: !721)
!720 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !736, !740, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !405, line: 3, baseType: !337, size: 32, align: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !719, file: !405, line: 4, baseType: !337, size: 32, align: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !719, file: !405, line: 5, baseType: !408, size: 64, align: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !719, file: !405, line: 7, baseType: !330, size: 64, align: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !719, file: !405, line: 8, baseType: !414, size: 64, align: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !719, file: !405, line: 9, baseType: !363, size: 64, align: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !719, file: !405, line: 10, baseType: !363, size: 64, align: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !719, file: !405, line: 11, baseType: !357, size: 64, align: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !719, file: !405, line: 12, baseType: !337, size: 32, align: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !719, file: !405, line: 13, baseType: !363, size: 64, align: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !719, file: !405, line: 15, baseType: !733, size: 64, align: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !399}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !719, file: !405, line: 17, baseType: !737, size: 64, align: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!690, !399}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !719, file: !741, line: 5, baseType: !363, size: 64, align: 64, offset: 704)
!741 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!742 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !719, file: !741, line: 6, baseType: !363, size: 64, align: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !719, file: !741, line: 7, baseType: !357, size: 64, align: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !719, file: !741, line: 9, baseType: !408, size: 64, align: 64, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !719, file: !741, line: 10, baseType: !347, size: 64, align: 64, offset: 960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !719, file: !741, line: 12, baseType: !369, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !719, file: !741, line: 13, baseType: !363, size: 64, align: 64, offset: 1088)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !719, file: !741, line: 14, baseType: !337, size: 32, align: 32, offset: 1152)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !719, file: !741, line: 15, baseType: !363, size: 64, align: 64, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !719, file: !741, line: 17, baseType: !369, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !719, file: !741, line: 18, baseType: !369, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !719, file: !741, line: 19, baseType: !369, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !719, file: !741, line: 20, baseType: !369, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !719, file: !741, line: 22, baseType: !369, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !719, file: !741, line: 23, baseType: !369, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !719, file: !741, line: 24, baseType: !369, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !719, file: !741, line: 25, baseType: !369, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !719, file: !741, line: 26, baseType: !369, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !719, file: !741, line: 31, baseType: !760, size: 64, align: 64, offset: 1344)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64, align: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!363, !717}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !416, file: !420, line: 70, baseType: !764, size: 64, align: 64, offset: 2048)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!767, !414, !690}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !349, line: 110, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !349, line: 110, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !416, file: !420, line: 71, baseType: !771, size: 64, align: 64, offset: 2112)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!337, !690, !690}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !416, file: !420, line: 73, baseType: !771, size: 64, align: 64, offset: 2176)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !401, file: !405, line: 9, baseType: !363, size: 64, align: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !405, line: 10, baseType: !363, size: 64, align: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !401, file: !405, line: 11, baseType: !357, size: 64, align: 64, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !401, file: !405, line: 12, baseType: !337, size: 32, align: 32, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !401, file: !405, line: 13, baseType: !363, size: 64, align: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !401, file: !405, line: 15, baseType: !733, size: 64, align: 64, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !401, file: !405, line: 17, baseType: !737, size: 64, align: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !383, file: !384, line: 36, baseType: !414, size: 64, align: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !383, file: !384, line: 37, baseType: !414, size: 64, align: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !383, file: !384, line: 38, baseType: !363, size: 64, align: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !383, file: !384, line: 40, baseType: !337, size: 32, align: 32, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !383, file: !384, line: 41, baseType: !391, size: 64, align: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !383, file: !384, line: 43, baseType: !369, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !383, file: !384, line: 44, baseType: !369, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !383, file: !384, line: 45, baseType: !369, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !383, file: !384, line: 48, baseType: !791, size: 64, align: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !793, line: 14, baseType: !794)
!793 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !793, line: 6, size: 256, align: 64, elements: !795)
!795 = !{!796, !797, !806, !807, !808}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !793, line: 7, baseType: !363, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !794, file: !793, line: 9, baseType: !798, size: 64, align: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !800, line: 37, baseType: !801)
!800 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !800, line: 39, size: 192, align: 64, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !801, file: !800, line: 41, baseType: !341, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !800, line: 42, baseType: !798, size: 64, align: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !801, file: !800, line: 43, baseType: !798, size: 64, align: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !794, file: !793, line: 10, baseType: !337, size: 32, align: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !794, file: !793, line: 12, baseType: !337, size: 32, align: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !794, file: !793, line: 13, baseType: !337, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !383, file: !384, line: 49, baseType: !363, size: 64, align: 64, offset: 768)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !383, file: !384, line: 51, baseType: !337, size: 32, align: 32, offset: 832)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !383, file: !384, line: 52, baseType: !363, size: 64, align: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !383, file: !384, line: 54, baseType: !357, size: 64, align: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !383, file: !384, line: 55, baseType: !357, size: 64, align: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !383, file: !384, line: 57, baseType: !363, size: 64, align: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !383, file: !384, line: 58, baseType: !330, size: 64, align: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !383, file: !384, line: 60, baseType: !330, size: 64, align: 64, offset: 1216)
!817 = !{i32 2, !"Dwarf Version", i32 4}
!818 = !{i32 2, !"Debug Info Version", i32 3}
!819 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!820 = distinct !DISubprogram(name: "fe_channels_nicklist", scope: !821, file: !821, line: 467, type: !822, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!821 = !DIFile(filename: "fe-channels.c", directory: "/home/lichi/Desktop/irssi/task1")
!822 = !DISubroutineType(types: !823)
!823 = !{null, !717, !337}
!824 = !{}
!825 = !DILocalVariable(name: "channel", arg: 1, scope: !820, file: !821, line: 467, type: !717)
!826 = !DIExpression()
!827 = !DILocation(line: 467, column: 40, scope: !820)
!828 = !DILocalVariable(name: "flags", arg: 2, scope: !820, file: !821, line: 467, type: !337)
!829 = !DILocation(line: 467, column: 53, scope: !820)
!830 = !DILocalVariable(name: "nick", scope: !820, file: !821, line: 469, type: !347)
!831 = !DILocation(line: 469, column: 12, scope: !820)
!832 = !DILocalVariable(name: "tmp", scope: !820, file: !821, line: 470, type: !391)
!833 = !DILocation(line: 470, column: 10, scope: !820)
!834 = !DILocalVariable(name: "nicklist", scope: !820, file: !821, line: 470, type: !391)
!835 = !DILocation(line: 470, column: 16, scope: !820)
!836 = !DILocalVariable(name: "sorted", scope: !820, file: !821, line: 470, type: !391)
!837 = !DILocation(line: 470, column: 27, scope: !820)
!838 = !DILocalVariable(name: "nicks", scope: !820, file: !821, line: 471, type: !337)
!839 = !DILocation(line: 471, column: 6, scope: !820)
!840 = !DILocalVariable(name: "normal", scope: !820, file: !821, line: 471, type: !337)
!841 = !DILocation(line: 471, column: 13, scope: !820)
!842 = !DILocalVariable(name: "voices", scope: !820, file: !821, line: 471, type: !337)
!843 = !DILocation(line: 471, column: 21, scope: !820)
!844 = !DILocalVariable(name: "halfops", scope: !820, file: !821, line: 471, type: !337)
!845 = !DILocation(line: 471, column: 29, scope: !820)
!846 = !DILocalVariable(name: "ops", scope: !820, file: !821, line: 471, type: !337)
!847 = !DILocation(line: 471, column: 38, scope: !820)
!848 = !DILocalVariable(name: "nick_flags", scope: !820, file: !821, line: 472, type: !690)
!849 = !DILocation(line: 472, column: 14, scope: !820)
!850 = !DILocation(line: 474, column: 42, scope: !820)
!851 = !DILocation(line: 474, column: 36, scope: !820)
!852 = !DILocation(line: 474, column: 26, scope: !820)
!853 = !DILocation(line: 474, column: 17, scope: !820)
!854 = !DILocation(line: 474, column: 8, scope: !820)
!855 = !DILocation(line: 475, column: 31, scope: !820)
!856 = !DILocation(line: 475, column: 13, scope: !820)
!857 = !DILocation(line: 475, column: 11, scope: !820)
!858 = !DILocation(line: 476, column: 9, scope: !820)
!859 = !DILocation(line: 477, column: 15, scope: !820)
!860 = !DILocation(line: 477, column: 24, scope: !820)
!861 = !DILocation(line: 477, column: 32, scope: !820)
!862 = !DILocation(line: 477, column: 47, scope: !820)
!863 = !DILocation(line: 477, column: 56, scope: !820)
!864 = !DILocation(line: 477, column: 13, scope: !820)
!865 = !DILocation(line: 480, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !820, file: !821, line: 480, column: 2)
!867 = !DILocation(line: 480, column: 11, scope: !866)
!868 = !DILocation(line: 480, column: 7, scope: !866)
!869 = !DILocation(line: 480, column: 23, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !821, discriminator: 1)
!871 = distinct !DILexicalBlock(scope: !866, file: !821, line: 480, column: 2)
!872 = !DILocation(line: 480, column: 27, scope: !870)
!873 = !DILocation(line: 480, column: 2, scope: !870)
!874 = !DILocation(line: 481, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !821, line: 480, column: 52)
!876 = !DILocation(line: 481, column: 15, scope: !875)
!877 = !DILocation(line: 481, column: 8, scope: !875)
!878 = !DILocation(line: 483, column: 8, scope: !875)
!879 = !DILocation(line: 484, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !821, line: 484, column: 7)
!881 = !DILocation(line: 484, column: 13, scope: !880)
!882 = !DILocation(line: 484, column: 7, scope: !875)
!883 = !DILocation(line: 485, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !821, line: 484, column: 17)
!885 = !DILocation(line: 486, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !821, line: 486, column: 8)
!887 = !DILocation(line: 486, column: 15, scope: !886)
!888 = !DILocation(line: 486, column: 23, scope: !886)
!889 = !DILocation(line: 486, column: 8, scope: !884)
!890 = !DILocation(line: 487, column: 33, scope: !886)
!891 = !DILocation(line: 488, column: 3, scope: !884)
!892 = !DILocation(line: 488, column: 14, scope: !893)
!893 = !DILexicalBlockFile(scope: !894, file: !821, discriminator: 1)
!894 = distinct !DILexicalBlock(scope: !880, file: !821, line: 488, column: 14)
!895 = !DILocation(line: 488, column: 20, scope: !893)
!896 = !DILocation(line: 489, column: 11, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !821, line: 488, column: 28)
!898 = !DILocation(line: 490, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !897, file: !821, line: 490, column: 8)
!900 = !DILocation(line: 490, column: 15, scope: !899)
!901 = !DILocation(line: 490, column: 23, scope: !899)
!902 = !DILocation(line: 490, column: 8, scope: !897)
!903 = !DILocation(line: 491, column: 5, scope: !899)
!904 = !DILocation(line: 492, column: 3, scope: !897)
!905 = !DILocation(line: 492, column: 14, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !821, discriminator: 1)
!907 = distinct !DILexicalBlock(scope: !894, file: !821, line: 492, column: 14)
!908 = !DILocation(line: 492, column: 20, scope: !906)
!909 = !DILocation(line: 493, column: 10, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !821, line: 492, column: 27)
!911 = !DILocation(line: 494, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !910, file: !821, line: 494, column: 8)
!913 = !DILocation(line: 494, column: 15, scope: !912)
!914 = !DILocation(line: 494, column: 23, scope: !912)
!915 = !DILocation(line: 494, column: 8, scope: !910)
!916 = !DILocation(line: 495, column: 5, scope: !912)
!917 = !DILocation(line: 496, column: 3, scope: !910)
!918 = !DILocation(line: 497, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !907, file: !821, line: 496, column: 10)
!920 = !DILocation(line: 498, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !919, file: !821, line: 498, column: 8)
!922 = !DILocation(line: 498, column: 15, scope: !921)
!923 = !DILocation(line: 498, column: 23, scope: !921)
!924 = !DILocation(line: 498, column: 8, scope: !919)
!925 = !DILocation(line: 499, column: 5, scope: !921)
!926 = !DILocation(line: 502, column: 28, scope: !875)
!927 = !DILocation(line: 502, column: 36, scope: !875)
!928 = !DILocation(line: 502, column: 12, scope: !875)
!929 = !DILocation(line: 502, column: 10, scope: !875)
!930 = !DILocation(line: 503, column: 2, scope: !875)
!931 = !DILocation(line: 480, column: 41, scope: !932)
!932 = !DILexicalBlockFile(scope: !871, file: !821, discriminator: 2)
!933 = !DILocation(line: 480, column: 46, scope: !932)
!934 = !DILocation(line: 480, column: 39, scope: !932)
!935 = !DILocation(line: 480, column: 2, scope: !932)
!936 = distinct !{!936, !937}
!937 = !DILocation(line: 480, column: 2, scope: !820)
!938 = !DILocation(line: 504, column: 15, scope: !820)
!939 = !DILocation(line: 504, column: 2, scope: !820)
!940 = !DILocation(line: 507, column: 34, scope: !820)
!941 = !DILocation(line: 507, column: 87, scope: !820)
!942 = !DILocation(line: 507, column: 11, scope: !820)
!943 = !DILocation(line: 507, column: 9, scope: !820)
!944 = !DILocation(line: 510, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !820, file: !821, line: 510, column: 13)
!946 = !DILocation(line: 510, column: 20, scope: !945)
!947 = !DILocation(line: 510, column: 28, scope: !945)
!948 = !DILocation(line: 510, column: 13, scope: !820)
!949 = !DILocation(line: 511, column: 40, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !821, line: 510, column: 34)
!951 = !DILocation(line: 511, column: 49, scope: !950)
!952 = !DILocation(line: 511, column: 57, scope: !950)
!953 = !DILocation(line: 511, column: 66, scope: !950)
!954 = !DILocation(line: 511, column: 112, scope: !950)
!955 = !DILocation(line: 511, column: 121, scope: !950)
!956 = !DILocation(line: 511, column: 135, scope: !950)
!957 = !DILocation(line: 511, column: 142, scope: !950)
!958 = !DILocation(line: 511, column: 147, scope: !950)
!959 = !DILocation(line: 511, column: 156, scope: !950)
!960 = !DILocation(line: 511, column: 164, scope: !950)
!961 = !DILocation(line: 511, column: 3, scope: !950)
!962 = !DILocation(line: 515, column: 24, scope: !950)
!963 = !DILocation(line: 515, column: 33, scope: !950)
!964 = !DILocation(line: 515, column: 3, scope: !950)
!965 = !DILocation(line: 516, column: 2, scope: !950)
!966 = !DILocation(line: 517, column: 15, scope: !820)
!967 = !DILocation(line: 517, column: 2, scope: !820)
!968 = !DILocation(line: 519, column: 39, scope: !820)
!969 = !DILocation(line: 519, column: 48, scope: !820)
!970 = !DILocation(line: 519, column: 56, scope: !820)
!971 = !DILocation(line: 519, column: 65, scope: !820)
!972 = !DILocation(line: 519, column: 118, scope: !820)
!973 = !DILocation(line: 519, column: 127, scope: !820)
!974 = !DILocation(line: 519, column: 141, scope: !820)
!975 = !DILocation(line: 519, column: 148, scope: !820)
!976 = !DILocation(line: 519, column: 153, scope: !820)
!977 = !DILocation(line: 519, column: 162, scope: !820)
!978 = !DILocation(line: 519, column: 170, scope: !820)
!979 = !DILocation(line: 519, column: 2, scope: !820)
!980 = !DILocation(line: 522, column: 1, scope: !820)
!981 = distinct !DISubprogram(name: "display_sorted_nicks", scope: !821, file: !821, line: 349, type: !982, isLocal: true, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !717, !391}
!984 = !DILocalVariable(name: "channel", arg: 1, scope: !981, file: !821, line: 349, type: !717)
!985 = !DILocation(line: 349, column: 47, scope: !981)
!986 = !DILocalVariable(name: "nicklist", arg: 2, scope: !981, file: !821, line: 349, type: !391)
!987 = !DILocation(line: 349, column: 64, scope: !981)
!988 = !DILocalVariable(name: "window", scope: !981, file: !821, line: 351, type: !381)
!989 = !DILocation(line: 351, column: 14, scope: !981)
!990 = !DILocalVariable(name: "dest", scope: !981, file: !821, line: 352, type: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !992, line: 62, baseType: !993)
!992 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !992, line: 50, size: 576, align: 64, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !993, file: !992, line: 51, baseType: !381, size: 64, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !993, file: !992, line: 52, baseType: !414, size: 64, align: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !993, file: !992, line: 53, baseType: !690, size: 64, align: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !993, file: !992, line: 54, baseType: !690, size: 64, align: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !993, file: !992, line: 55, baseType: !690, size: 64, align: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !993, file: !992, line: 56, baseType: !690, size: 64, align: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !993, file: !992, line: 57, baseType: !337, size: 32, align: 32, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !993, file: !992, line: 59, baseType: !337, size: 32, align: 32, offset: 416)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !993, file: !992, line: 60, baseType: !363, size: 64, align: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !992, line: 61, baseType: !337, size: 32, align: 32, offset: 512)
!1005 = !DILocation(line: 352, column: 16, scope: !981)
!1006 = !DILocalVariable(name: "str", scope: !981, file: !821, line: 353, type: !611)
!1007 = !DILocation(line: 353, column: 11, scope: !981)
!1008 = !DILocalVariable(name: "tmp", scope: !981, file: !821, line: 354, type: !391)
!1009 = !DILocation(line: 354, column: 10, scope: !981)
!1010 = !DILocalVariable(name: "format", scope: !981, file: !821, line: 355, type: !363)
!1011 = !DILocation(line: 355, column: 8, scope: !981)
!1012 = !DILocalVariable(name: "stripped", scope: !981, file: !821, line: 355, type: !363)
!1013 = !DILocation(line: 355, column: 17, scope: !981)
!1014 = !DILocalVariable(name: "prefix_format", scope: !981, file: !821, line: 355, type: !363)
!1015 = !DILocation(line: 355, column: 28, scope: !981)
!1016 = !DILocalVariable(name: "aligned_nick", scope: !981, file: !821, line: 356, type: !363)
!1017 = !DILocation(line: 356, column: 8, scope: !981)
!1018 = !DILocalVariable(name: "nickmode", scope: !981, file: !821, line: 356, type: !1019)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 16, align: 8, elements: !659)
!1020 = !DILocation(line: 356, column: 22, scope: !981)
!1021 = !DILocalVariable(name: "columns", scope: !981, file: !821, line: 357, type: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!1023 = !DILocation(line: 357, column: 7, scope: !981)
!1024 = !DILocalVariable(name: "cols", scope: !981, file: !821, line: 357, type: !337)
!1025 = !DILocation(line: 357, column: 16, scope: !981)
!1026 = !DILocalVariable(name: "rows", scope: !981, file: !821, line: 357, type: !337)
!1027 = !DILocation(line: 357, column: 22, scope: !981)
!1028 = !DILocalVariable(name: "last_col_rows", scope: !981, file: !821, line: 357, type: !337)
!1029 = !DILocation(line: 357, column: 28, scope: !981)
!1030 = !DILocalVariable(name: "col", scope: !981, file: !821, line: 357, type: !337)
!1031 = !DILocation(line: 357, column: 43, scope: !981)
!1032 = !DILocalVariable(name: "row", scope: !981, file: !821, line: 357, type: !337)
!1033 = !DILocation(line: 357, column: 48, scope: !981)
!1034 = !DILocalVariable(name: "max_width", scope: !981, file: !821, line: 357, type: !337)
!1035 = !DILocation(line: 357, column: 53, scope: !981)
!1036 = !DILocalVariable(name: "item_extra", scope: !981, file: !821, line: 358, type: !337)
!1037 = !DILocation(line: 358, column: 6, scope: !981)
!1038 = !DILocalVariable(name: "formatnum", scope: !981, file: !821, line: 358, type: !337)
!1039 = !DILocation(line: 358, column: 18, scope: !981)
!1040 = !DILocation(line: 360, column: 31, scope: !981)
!1041 = !DILocation(line: 360, column: 40, scope: !981)
!1042 = !DILocation(line: 360, column: 48, scope: !981)
!1043 = !DILocation(line: 360, column: 57, scope: !981)
!1044 = !DILocation(line: 360, column: 11, scope: !981)
!1045 = !DILocation(line: 360, column: 9, scope: !981)
!1046 = !DILocation(line: 362, column: 14, scope: !981)
!1047 = !DILocation(line: 362, column: 22, scope: !981)
!1048 = !DILocation(line: 362, column: 12, scope: !981)
!1049 = !DILocation(line: 366, column: 27, scope: !981)
!1050 = !DILocation(line: 366, column: 36, scope: !981)
!1051 = !DILocation(line: 366, column: 44, scope: !981)
!1052 = !DILocation(line: 366, column: 53, scope: !981)
!1053 = !DILocation(line: 365, column: 11, scope: !981)
!1054 = !DILocation(line: 365, column: 9, scope: !981)
!1055 = !DILocation(line: 368, column: 25, scope: !981)
!1056 = !DILocation(line: 368, column: 13, scope: !981)
!1057 = !DILocation(line: 368, column: 11, scope: !981)
!1058 = !DILocation(line: 369, column: 22, scope: !981)
!1059 = !DILocation(line: 369, column: 15, scope: !981)
!1060 = !DILocation(line: 369, column: 13, scope: !981)
!1061 = !DILocation(line: 370, column: 9, scope: !981)
!1062 = !DILocation(line: 370, column: 2, scope: !981)
!1063 = !DILocation(line: 371, column: 9, scope: !981)
!1064 = !DILocation(line: 371, column: 2, scope: !981)
!1065 = !DILocation(line: 373, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !981, file: !821, line: 373, column: 6)
!1067 = !DILocation(line: 373, column: 42, scope: !1066)
!1068 = !DILocation(line: 373, column: 46, scope: !1066)
!1069 = !DILocation(line: 374, column: 6, scope: !1066)
!1070 = !DILocation(line: 374, column: 44, scope: !1066)
!1071 = !DILocation(line: 374, column: 42, scope: !1066)
!1072 = !DILocation(line: 373, column: 6, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !981, file: !821, discriminator: 1)
!1074 = !DILocation(line: 375, column: 15, scope: !1066)
!1075 = !DILocation(line: 375, column: 13, scope: !1066)
!1076 = !DILocation(line: 375, column: 3, scope: !1066)
!1077 = !DILocation(line: 378, column: 28, scope: !981)
!1078 = !DILocation(line: 378, column: 37, scope: !981)
!1079 = !DILocation(line: 378, column: 45, scope: !981)
!1080 = !DILocation(line: 378, column: 54, scope: !981)
!1081 = !DILocation(line: 378, column: 2, scope: !981)
!1082 = !DILocation(line: 380, column: 33, scope: !981)
!1083 = !DILocation(line: 380, column: 55, scope: !981)
!1084 = !DILocation(line: 380, column: 11, scope: !1073)
!1085 = !DILocation(line: 380, column: 9, scope: !981)
!1086 = !DILocation(line: 381, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !981, file: !821, line: 381, column: 6)
!1088 = !DILocation(line: 381, column: 13, scope: !1087)
!1089 = !DILocation(line: 381, column: 6, scope: !981)
!1090 = !DILocation(line: 382, column: 26, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !821, line: 381, column: 21)
!1092 = !DILocation(line: 382, column: 14, scope: !1091)
!1093 = !DILocation(line: 382, column: 12, scope: !1091)
!1094 = !DILocation(line: 383, column: 23, scope: !1091)
!1095 = !DILocation(line: 383, column: 16, scope: !1091)
!1096 = !DILocation(line: 383, column: 13, scope: !1091)
!1097 = !DILocation(line: 384, column: 10, scope: !1091)
!1098 = !DILocation(line: 384, column: 3, scope: !1091)
!1099 = !DILocation(line: 385, column: 10, scope: !1091)
!1100 = !DILocation(line: 385, column: 3, scope: !1091)
!1101 = !DILocation(line: 386, column: 2, scope: !1091)
!1102 = !DILocation(line: 390, column: 34, scope: !981)
!1103 = !DILocation(line: 390, column: 43, scope: !981)
!1104 = !DILocation(line: 390, column: 51, scope: !981)
!1105 = !DILocation(line: 390, column: 60, scope: !981)
!1106 = !DILocation(line: 392, column: 34, scope: !981)
!1107 = !DILocation(line: 392, column: 43, scope: !981)
!1108 = !DILocation(line: 389, column: 18, scope: !981)
!1109 = !DILocation(line: 389, column: 16, scope: !981)
!1110 = !DILocation(line: 393, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !981, file: !821, line: 393, column: 6)
!1112 = !DILocation(line: 393, column: 20, scope: !1111)
!1113 = !DILocation(line: 393, column: 6, scope: !981)
!1114 = !DILocation(line: 394, column: 26, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !821, line: 393, column: 28)
!1116 = !DILocation(line: 394, column: 14, scope: !1115)
!1117 = !DILocation(line: 394, column: 12, scope: !1115)
!1118 = !DILocation(line: 395, column: 23, scope: !1115)
!1119 = !DILocation(line: 395, column: 16, scope: !1115)
!1120 = !DILocation(line: 395, column: 13, scope: !1115)
!1121 = !DILocation(line: 396, column: 10, scope: !1115)
!1122 = !DILocation(line: 396, column: 3, scope: !1115)
!1123 = !DILocation(line: 397, column: 2, scope: !1115)
!1124 = !DILocation(line: 399, column: 6, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !981, file: !821, line: 399, column: 6)
!1126 = !DILocation(line: 399, column: 16, scope: !1125)
!1127 = !DILocation(line: 399, column: 6, scope: !981)
!1128 = !DILocation(line: 402, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !821, line: 399, column: 22)
!1130 = !DILocation(line: 403, column: 2, scope: !1129)
!1131 = !DILocation(line: 406, column: 30, scope: !981)
!1132 = !DILocation(line: 406, column: 57, scope: !981)
!1133 = !DILocation(line: 407, column: 30, scope: !981)
!1134 = !DILocation(line: 408, column: 30, scope: !981)
!1135 = !DILocation(line: 406, column: 9, scope: !981)
!1136 = !DILocation(line: 406, column: 7, scope: !981)
!1137 = !DILocation(line: 409, column: 31, scope: !981)
!1138 = !DILocation(line: 409, column: 41, scope: !981)
!1139 = !DILocation(line: 409, column: 13, scope: !981)
!1140 = !DILocation(line: 409, column: 11, scope: !981)
!1141 = !DILocation(line: 412, column: 18, scope: !981)
!1142 = !DILocation(line: 412, column: 24, scope: !981)
!1143 = !DILocation(line: 412, column: 29, scope: !981)
!1144 = !DILocation(line: 412, column: 28, scope: !981)
!1145 = !DILocation(line: 412, column: 49, scope: !981)
!1146 = !DILocation(line: 412, column: 34, scope: !981)
!1147 = !DILocation(line: 412, column: 33, scope: !981)
!1148 = !DILocation(line: 412, column: 22, scope: !981)
!1149 = !DILocation(line: 412, column: 16, scope: !981)
!1150 = !DILocation(line: 413, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !981, file: !821, line: 413, column: 6)
!1152 = !DILocation(line: 413, column: 20, scope: !1151)
!1153 = !DILocation(line: 413, column: 6, scope: !981)
!1154 = !DILocation(line: 414, column: 19, scope: !1151)
!1155 = !DILocation(line: 414, column: 17, scope: !1151)
!1156 = !DILocation(line: 414, column: 3, scope: !1151)
!1157 = !DILocation(line: 416, column: 21, scope: !981)
!1158 = !DILocation(line: 416, column: 8, scope: !981)
!1159 = !DILocation(line: 416, column: 6, scope: !981)
!1160 = !DILocation(line: 418, column: 6, scope: !981)
!1161 = !DILocation(line: 418, column: 15, scope: !981)
!1162 = !DILocation(line: 419, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !981, file: !821, line: 419, column: 2)
!1164 = !DILocation(line: 419, column: 11, scope: !1163)
!1165 = !DILocation(line: 419, column: 7, scope: !1163)
!1166 = !DILocation(line: 419, column: 23, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1168, file: !821, discriminator: 1)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !821, line: 419, column: 2)
!1169 = !DILocation(line: 419, column: 27, scope: !1167)
!1170 = !DILocation(line: 419, column: 2, scope: !1167)
!1171 = !DILocalVariable(name: "rec", scope: !1172, file: !821, line: 420, type: !347)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !821, line: 419, column: 52)
!1173 = !DILocation(line: 420, column: 13, scope: !1172)
!1174 = !DILocation(line: 420, column: 19, scope: !1172)
!1175 = !DILocation(line: 420, column: 24, scope: !1172)
!1176 = !DILocation(line: 422, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !821, line: 422, column: 7)
!1178 = !DILocation(line: 422, column: 12, scope: !1177)
!1179 = !DILocation(line: 422, column: 7, scope: !1172)
!1180 = !DILocation(line: 423, column: 18, scope: !1177)
!1181 = !DILocation(line: 423, column: 23, scope: !1177)
!1182 = !DILocation(line: 423, column: 4, scope: !1177)
!1183 = !DILocation(line: 423, column: 16, scope: !1177)
!1184 = !DILocation(line: 425, column: 4, scope: !1177)
!1185 = !DILocation(line: 425, column: 16, scope: !1177)
!1186 = !DILocation(line: 427, column: 32, scope: !1172)
!1187 = !DILocation(line: 427, column: 37, scope: !1172)
!1188 = !DILocation(line: 428, column: 40, scope: !1172)
!1189 = !DILocation(line: 428, column: 32, scope: !1172)
!1190 = !DILocation(line: 428, column: 45, scope: !1172)
!1191 = !DILocation(line: 428, column: 44, scope: !1172)
!1192 = !DILocation(line: 427, column: 18, scope: !1172)
!1193 = !DILocation(line: 427, column: 16, scope: !1172)
!1194 = !DILocation(line: 431, column: 15, scope: !1172)
!1195 = !DILocation(line: 431, column: 20, scope: !1172)
!1196 = !DILocation(line: 431, column: 15, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1172, file: !821, discriminator: 1)
!1198 = !DILocation(line: 432, column: 15, scope: !1172)
!1199 = !DILocation(line: 432, column: 20, scope: !1172)
!1200 = !DILocation(line: 432, column: 15, scope: !1197)
!1201 = !DILocation(line: 433, column: 15, scope: !1172)
!1202 = !DILocation(line: 433, column: 20, scope: !1172)
!1203 = !DILocation(line: 432, column: 15, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1172, file: !821, discriminator: 2)
!1205 = !DILocation(line: 432, column: 15, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1172, file: !821, discriminator: 3)
!1207 = !DILocation(line: 431, column: 15, scope: !1204)
!1208 = !DILocation(line: 431, column: 15, scope: !1206)
!1209 = !DILocation(line: 431, column: 13, scope: !1206)
!1210 = !DILocation(line: 436, column: 28, scope: !1172)
!1211 = !DILocation(line: 436, column: 37, scope: !1172)
!1212 = !DILocation(line: 437, column: 28, scope: !1172)
!1213 = !DILocation(line: 437, column: 37, scope: !1172)
!1214 = !DILocation(line: 438, column: 28, scope: !1172)
!1215 = !DILocation(line: 438, column: 39, scope: !1172)
!1216 = !DILocation(line: 438, column: 49, scope: !1172)
!1217 = !DILocation(line: 435, column: 12, scope: !1172)
!1218 = !DILocation(line: 435, column: 10, scope: !1172)
!1219 = !DILocation(line: 439, column: 19, scope: !1172)
!1220 = !DILocation(line: 439, column: 24, scope: !1172)
!1221 = !DILocation(line: 439, column: 3, scope: !1172)
!1222 = !DILocation(line: 440, column: 10, scope: !1172)
!1223 = !DILocation(line: 440, column: 3, scope: !1172)
!1224 = !DILocation(line: 441, column: 10, scope: !1172)
!1225 = !DILocation(line: 441, column: 3, scope: !1172)
!1226 = !DILocation(line: 443, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1172, file: !821, line: 443, column: 7)
!1228 = !DILocation(line: 443, column: 16, scope: !1227)
!1229 = !DILocation(line: 443, column: 13, scope: !1227)
!1230 = !DILocation(line: 443, column: 7, scope: !1172)
!1231 = !DILocation(line: 444, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !821, line: 443, column: 22)
!1233 = !DILocation(line: 444, column: 23, scope: !1232)
!1234 = !DILocation(line: 444, column: 31, scope: !1232)
!1235 = !DILocation(line: 444, column: 40, scope: !1232)
!1236 = !DILocation(line: 445, column: 41, scope: !1232)
!1237 = !DILocation(line: 445, column: 46, scope: !1232)
!1238 = !DILocation(line: 444, column: 4, scope: !1232)
!1239 = !DILocation(line: 446, column: 22, scope: !1232)
!1240 = !DILocation(line: 446, column: 4, scope: !1232)
!1241 = !DILocation(line: 447, column: 8, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !821, line: 447, column: 8)
!1243 = !DILocation(line: 447, column: 22, scope: !1242)
!1244 = !DILocation(line: 447, column: 8, scope: !1232)
!1245 = !DILocation(line: 448, column: 21, scope: !1242)
!1246 = !DILocation(line: 448, column: 26, scope: !1242)
!1247 = !DILocation(line: 448, column: 5, scope: !1242)
!1248 = !DILocation(line: 449, column: 8, scope: !1232)
!1249 = !DILocation(line: 449, column: 16, scope: !1232)
!1250 = !DILocation(line: 451, column: 8, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1232, file: !821, line: 451, column: 8)
!1252 = !DILocation(line: 451, column: 15, scope: !1251)
!1253 = !DILocation(line: 451, column: 12, scope: !1251)
!1254 = !DILocation(line: 451, column: 8, scope: !1232)
!1255 = !DILocation(line: 452, column: 9, scope: !1251)
!1256 = !DILocation(line: 452, column: 5, scope: !1251)
!1257 = !DILocation(line: 453, column: 3, scope: !1232)
!1258 = !DILocation(line: 454, column: 2, scope: !1172)
!1259 = !DILocation(line: 419, column: 41, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1168, file: !821, discriminator: 2)
!1261 = !DILocation(line: 419, column: 46, scope: !1260)
!1262 = !DILocation(line: 419, column: 39, scope: !1260)
!1263 = !DILocation(line: 419, column: 2, scope: !1260)
!1264 = distinct !{!1264, !1265}
!1265 = !DILocation(line: 419, column: 2, scope: !981)
!1266 = !DILocation(line: 456, column: 6, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !981, file: !821, line: 456, column: 6)
!1268 = !DILocation(line: 456, column: 20, scope: !1267)
!1269 = !DILocation(line: 456, column: 27, scope: !1267)
!1270 = !DILocation(line: 456, column: 30, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1267, file: !821, discriminator: 1)
!1272 = !DILocation(line: 456, column: 35, scope: !1271)
!1273 = !DILocation(line: 456, column: 48, scope: !1271)
!1274 = !DILocation(line: 456, column: 41, scope: !1271)
!1275 = !DILocation(line: 456, column: 39, scope: !1271)
!1276 = !DILocation(line: 456, column: 6, scope: !1271)
!1277 = !DILocation(line: 457, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1267, file: !821, line: 456, column: 64)
!1279 = !DILocation(line: 457, column: 22, scope: !1278)
!1280 = !DILocation(line: 457, column: 30, scope: !1278)
!1281 = !DILocation(line: 457, column: 39, scope: !1278)
!1282 = !DILocation(line: 458, column: 40, scope: !1278)
!1283 = !DILocation(line: 458, column: 45, scope: !1278)
!1284 = !DILocation(line: 457, column: 3, scope: !1278)
!1285 = !DILocation(line: 459, column: 2, scope: !1278)
!1286 = !DILocation(line: 461, column: 15, scope: !981)
!1287 = !DILocation(line: 461, column: 2, scope: !981)
!1288 = !DILocation(line: 462, column: 16, scope: !981)
!1289 = !DILocation(line: 462, column: 2, scope: !981)
!1290 = !DILocation(line: 463, column: 9, scope: !981)
!1291 = !DILocation(line: 463, column: 2, scope: !981)
!1292 = !DILocation(line: 464, column: 9, scope: !981)
!1293 = !DILocation(line: 464, column: 2, scope: !981)
!1294 = !DILocation(line: 465, column: 1, scope: !981)
!1295 = distinct !DISubprogram(name: "fe_channels_init", scope: !821, file: !821, line: 624, type: !567, isLocal: false, isDefinition: true, scopeLine: 625, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1296 = !DILocation(line: 626, column: 2, scope: !1295)
!1297 = !DILocation(line: 627, column: 2, scope: !1295)
!1298 = !DILocation(line: 628, column: 2, scope: !1295)
!1299 = !DILocation(line: 629, column: 2, scope: !1295)
!1300 = !DILocation(line: 631, column: 2, scope: !1295)
!1301 = !DILocation(line: 632, column: 2, scope: !1295)
!1302 = !DILocation(line: 633, column: 2, scope: !1295)
!1303 = !DILocation(line: 634, column: 2, scope: !1295)
!1304 = !DILocation(line: 635, column: 2, scope: !1295)
!1305 = !DILocation(line: 637, column: 2, scope: !1295)
!1306 = !DILocation(line: 638, column: 2, scope: !1295)
!1307 = !DILocation(line: 639, column: 2, scope: !1295)
!1308 = !DILocation(line: 640, column: 2, scope: !1295)
!1309 = !DILocation(line: 641, column: 2, scope: !1295)
!1310 = !DILocation(line: 642, column: 2, scope: !1295)
!1311 = !DILocation(line: 643, column: 2, scope: !1295)
!1312 = !DILocation(line: 644, column: 2, scope: !1295)
!1313 = !DILocation(line: 646, column: 2, scope: !1295)
!1314 = !DILocation(line: 647, column: 2, scope: !1295)
!1315 = !DILocation(line: 648, column: 2, scope: !1295)
!1316 = !DILocation(line: 649, column: 2, scope: !1295)
!1317 = !DILocation(line: 650, column: 1, scope: !1295)
!1318 = distinct !DISubprogram(name: "signal_channel_created", scope: !821, file: !821, line: 44, type: !1319, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !717, !330}
!1321 = !DILocalVariable(name: "channel", arg: 1, scope: !1318, file: !821, line: 44, type: !717)
!1322 = !DILocation(line: 44, column: 49, scope: !1318)
!1323 = !DILocalVariable(name: "automatic", arg: 2, scope: !1318, file: !821, line: 44, type: !330)
!1324 = !DILocation(line: 44, column: 64, scope: !1318)
!1325 = !DILocation(line: 46, column: 40, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1318, file: !821, line: 46, column: 6)
!1327 = !DILocation(line: 46, column: 51, scope: !1326)
!1328 = !DILocation(line: 46, column: 7, scope: !1326)
!1329 = !DILocation(line: 46, column: 59, scope: !1326)
!1330 = !DILocation(line: 46, column: 6, scope: !1318)
!1331 = !DILocation(line: 47, column: 38, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !821, line: 46, column: 42)
!1333 = !DILocation(line: 47, column: 22, scope: !1332)
!1334 = !DILocation(line: 48, column: 25, scope: !1332)
!1335 = !DILocation(line: 48, column: 16, scope: !1332)
!1336 = !DILocation(line: 48, column: 9, scope: !1332)
!1337 = !DILocation(line: 47, column: 3, scope: !1332)
!1338 = !DILocation(line: 49, column: 2, scope: !1332)
!1339 = !DILocation(line: 50, column: 1, scope: !1318)
!1340 = distinct !DISubprogram(name: "signal_channel_destroyed", scope: !821, file: !821, line: 59, type: !1341, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !717}
!1343 = !DILocalVariable(name: "channel", arg: 1, scope: !1340, file: !821, line: 59, type: !717)
!1344 = !DILocation(line: 59, column: 51, scope: !1340)
!1345 = !DILocalVariable(name: "window", scope: !1340, file: !821, line: 61, type: !381)
!1346 = !DILocation(line: 61, column: 14, scope: !1340)
!1347 = !DILocation(line: 63, column: 2, scope: !1340)
!1348 = distinct !{!1348, !1347}
!1349 = !DILocation(line: 63, column: 10, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !821, discriminator: 1)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !821, line: 63, column: 10)
!1352 = distinct !DILexicalBlock(scope: !1340, file: !821, line: 63, column: 4)
!1353 = !DILocation(line: 63, column: 18, scope: !1350)
!1354 = !DILocation(line: 63, column: 5, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !821, discriminator: 2)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !821, line: 63, column: 3)
!1357 = !DILocation(line: 63, column: 14, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !821, discriminator: 3)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !821, line: 63, column: 12)
!1360 = !DILocation(line: 63, column: 102, scope: !1358)
!1361 = !DILocation(line: 63, column: 113, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1352, file: !821, discriminator: 4)
!1363 = !DILocation(line: 65, column: 61, scope: !1340)
!1364 = !DILocation(line: 65, column: 72, scope: !1340)
!1365 = !DILocation(line: 65, column: 12, scope: !1340)
!1366 = !DILocation(line: 65, column: 9, scope: !1340)
!1367 = !DILocation(line: 66, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1340, file: !821, line: 66, column: 6)
!1369 = !DILocation(line: 66, column: 13, scope: !1368)
!1370 = !DILocation(line: 66, column: 6, scope: !1340)
!1371 = !DILocation(line: 67, column: 3, scope: !1368)
!1372 = !DILocation(line: 69, column: 38, scope: !1340)
!1373 = !DILocation(line: 69, column: 22, scope: !1340)
!1374 = !DILocation(line: 69, column: 2, scope: !1340)
!1375 = !DILocation(line: 71, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1340, file: !821, line: 71, column: 6)
!1377 = !DILocation(line: 71, column: 15, scope: !1376)
!1378 = !DILocation(line: 71, column: 22, scope: !1376)
!1379 = !DILocation(line: 71, column: 26, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1376, file: !821, discriminator: 1)
!1381 = !DILocation(line: 71, column: 35, scope: !1380)
!1382 = !DILocation(line: 71, column: 40, scope: !1380)
!1383 = !DILocation(line: 72, column: 7, scope: !1376)
!1384 = !DILocation(line: 72, column: 16, scope: !1376)
!1385 = !DILocation(line: 72, column: 24, scope: !1376)
!1386 = !DILocation(line: 71, column: 6, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1340, file: !821, discriminator: 2)
!1388 = !DILocation(line: 74, column: 19, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !821, line: 72, column: 38)
!1390 = !DILocation(line: 74, column: 27, scope: !1389)
!1391 = !DILocation(line: 74, column: 36, scope: !1389)
!1392 = !DILocation(line: 74, column: 44, scope: !1389)
!1393 = !DILocation(line: 75, column: 5, scope: !1389)
!1394 = !DILocation(line: 75, column: 14, scope: !1389)
!1395 = !DILocation(line: 74, column: 3, scope: !1389)
!1396 = !DILocation(line: 76, column: 2, scope: !1389)
!1397 = !DILocation(line: 76, column: 14, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1399, file: !821, discriminator: 1)
!1399 = distinct !DILexicalBlock(scope: !1376, file: !821, line: 76, column: 13)
!1400 = !DILocation(line: 76, column: 23, scope: !1398)
!1401 = !DILocation(line: 76, column: 30, scope: !1398)
!1402 = !DILocation(line: 76, column: 33, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1399, file: !821, discriminator: 2)
!1404 = !DILocation(line: 76, column: 42, scope: !1403)
!1405 = !DILocation(line: 76, column: 13, scope: !1403)
!1406 = !DILocation(line: 77, column: 23, scope: !1399)
!1407 = !DILocation(line: 77, column: 3, scope: !1399)
!1408 = !DILocation(line: 78, column: 1, scope: !1340)
!1409 = distinct !DISubprogram(name: "signal_window_item_changed", scope: !821, file: !821, line: 95, type: !1410, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !381, !399}
!1412 = !DILocalVariable(name: "window", arg: 1, scope: !1409, file: !821, line: 95, type: !381)
!1413 = !DILocation(line: 95, column: 52, scope: !1409)
!1414 = !DILocalVariable(name: "item", arg: 2, scope: !1409, file: !821, line: 95, type: !399)
!1415 = !DILocation(line: 95, column: 73, scope: !1409)
!1416 = !DILocation(line: 97, column: 2, scope: !1409)
!1417 = distinct !{!1417, !1416}
!1418 = !DILocation(line: 97, column: 10, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1420, file: !821, discriminator: 1)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !821, line: 97, column: 10)
!1421 = distinct !DILexicalBlock(scope: !1409, file: !821, line: 97, column: 4)
!1422 = !DILocation(line: 97, column: 17, scope: !1419)
!1423 = !DILocation(line: 97, column: 5, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !821, discriminator: 2)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !821, line: 97, column: 3)
!1426 = !DILocation(line: 97, column: 14, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1428, file: !821, discriminator: 3)
!1428 = distinct !DILexicalBlock(scope: !1420, file: !821, line: 97, column: 12)
!1429 = !DILocation(line: 97, column: 101, scope: !1427)
!1430 = !DILocation(line: 97, column: 112, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1421, file: !821, discriminator: 4)
!1432 = !DILocation(line: 98, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1409, file: !821, line: 98, column: 6)
!1434 = !DILocation(line: 98, column: 11, scope: !1433)
!1435 = !DILocation(line: 98, column: 6, scope: !1409)
!1436 = !DILocation(line: 98, column: 19, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1433, file: !821, discriminator: 1)
!1438 = !DILocation(line: 100, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1409, file: !821, line: 100, column: 6)
!1440 = !DILocation(line: 100, column: 29, scope: !1439)
!1441 = !DILocation(line: 100, column: 6, scope: !1439)
!1442 = !DILocation(line: 100, column: 36, scope: !1439)
!1443 = !DILocation(line: 100, column: 40, scope: !1439)
!1444 = !DILocation(line: 100, column: 86, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1439, file: !821, discriminator: 1)
!1446 = !DILocation(line: 100, column: 61, scope: !1445)
!1447 = !DILocation(line: 100, column: 45, scope: !1445)
!1448 = !DILocation(line: 100, column: 6, scope: !1445)
!1449 = !DILocation(line: 100, column: 44, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1439, file: !821, discriminator: 2)
!1451 = !DILocation(line: 100, column: 6, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1409, file: !821, discriminator: 3)
!1453 = !DILocation(line: 101, column: 40, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1439, file: !821, line: 100, column: 93)
!1455 = !DILocation(line: 101, column: 46, scope: !1454)
!1456 = !DILocation(line: 101, column: 54, scope: !1454)
!1457 = !DILocation(line: 101, column: 60, scope: !1454)
!1458 = !DILocation(line: 101, column: 113, scope: !1454)
!1459 = !DILocation(line: 101, column: 119, scope: !1454)
!1460 = !DILocation(line: 101, column: 3, scope: !1454)
!1461 = !DILocation(line: 104, column: 17, scope: !1454)
!1462 = !DILocation(line: 105, column: 2, scope: !1454)
!1463 = !DILocation(line: 106, column: 1, scope: !1409)
!1464 = distinct !DISubprogram(name: "sig_disconnected", scope: !821, file: !821, line: 80, type: !1465, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !414}
!1467 = !DILocalVariable(name: "server", arg: 1, scope: !1464, file: !821, line: 80, type: !414)
!1468 = !DILocation(line: 80, column: 42, scope: !1464)
!1469 = !DILocalVariable(name: "window", scope: !1464, file: !821, line: 82, type: !381)
!1470 = !DILocation(line: 82, column: 14, scope: !1464)
!1471 = !DILocalVariable(name: "tmp", scope: !1464, file: !821, line: 83, type: !391)
!1472 = !DILocation(line: 83, column: 10, scope: !1464)
!1473 = !DILocation(line: 85, column: 2, scope: !1464)
!1474 = distinct !{!1474, !1473}
!1475 = !DILocation(line: 85, column: 45, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1477, file: !821, discriminator: 1)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !821, line: 85, column: 10)
!1478 = distinct !DILexicalBlock(scope: !1464, file: !821, line: 85, column: 4)
!1479 = !DILocation(line: 85, column: 27, scope: !1476)
!1480 = !DILocation(line: 85, column: 12, scope: !1476)
!1481 = !DILocation(line: 85, column: 10, scope: !1476)
!1482 = !DILocation(line: 85, column: 11, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1477, file: !821, discriminator: 2)
!1484 = !DILocation(line: 85, column: 10, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1478, file: !821, discriminator: 3)
!1486 = !DILocation(line: 85, column: 33, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1488, file: !821, discriminator: 4)
!1488 = distinct !DILexicalBlock(scope: !1477, file: !821, line: 85, column: 31)
!1489 = !DILocation(line: 85, column: 42, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1491, file: !821, discriminator: 5)
!1491 = distinct !DILexicalBlock(scope: !1477, file: !821, line: 85, column: 40)
!1492 = !DILocation(line: 85, column: 132, scope: !1490)
!1493 = !DILocation(line: 85, column: 143, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1478, file: !821, discriminator: 6)
!1495 = !DILocation(line: 87, column: 13, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1464, file: !821, line: 87, column: 2)
!1497 = !DILocation(line: 87, column: 21, scope: !1496)
!1498 = !DILocation(line: 87, column: 11, scope: !1496)
!1499 = !DILocation(line: 87, column: 7, scope: !1496)
!1500 = !DILocation(line: 87, column: 31, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !821, discriminator: 1)
!1502 = distinct !DILexicalBlock(scope: !1496, file: !821, line: 87, column: 2)
!1503 = !DILocation(line: 87, column: 35, scope: !1501)
!1504 = !DILocation(line: 87, column: 2, scope: !1501)
!1505 = !DILocalVariable(name: "channel", scope: !1506, file: !821, line: 88, type: !717)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !821, line: 87, column: 60)
!1507 = !DILocation(line: 88, column: 16, scope: !1506)
!1508 = !DILocation(line: 88, column: 26, scope: !1506)
!1509 = !DILocation(line: 88, column: 31, scope: !1506)
!1510 = !DILocation(line: 90, column: 62, scope: !1506)
!1511 = !DILocation(line: 90, column: 73, scope: !1506)
!1512 = !DILocation(line: 90, column: 13, scope: !1506)
!1513 = !DILocation(line: 90, column: 10, scope: !1506)
!1514 = !DILocation(line: 91, column: 19, scope: !1506)
!1515 = !DILocation(line: 91, column: 27, scope: !1506)
!1516 = !DILocation(line: 91, column: 35, scope: !1506)
!1517 = !DILocation(line: 91, column: 40, scope: !1506)
!1518 = !DILocation(line: 91, column: 49, scope: !1506)
!1519 = !DILocation(line: 91, column: 3, scope: !1506)
!1520 = !DILocation(line: 92, column: 2, scope: !1506)
!1521 = !DILocation(line: 87, column: 49, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1502, file: !821, discriminator: 2)
!1523 = !DILocation(line: 87, column: 54, scope: !1522)
!1524 = !DILocation(line: 87, column: 47, scope: !1522)
!1525 = !DILocation(line: 87, column: 2, scope: !1522)
!1526 = distinct !{!1526, !1527}
!1527 = !DILocation(line: 87, column: 2, scope: !1464)
!1528 = !DILocation(line: 93, column: 1, scope: !1464)
!1529 = distinct !DISubprogram(name: "sig_channel_joined", scope: !821, file: !821, line: 108, type: !1341, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1530 = !DILocalVariable(name: "channel", arg: 1, scope: !1529, file: !821, line: 108, type: !717)
!1531 = !DILocation(line: 108, column: 45, scope: !1529)
!1532 = !DILocation(line: 110, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !821, line: 110, column: 6)
!1534 = !DILocation(line: 110, column: 46, scope: !1533)
!1535 = !DILocation(line: 111, column: 7, scope: !1533)
!1536 = !DILocation(line: 111, column: 16, scope: !1533)
!1537 = !DILocation(line: 110, column: 6, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1529, file: !821, discriminator: 1)
!1539 = !DILocation(line: 112, column: 24, scope: !1533)
!1540 = !DILocation(line: 112, column: 3, scope: !1533)
!1541 = !DILocation(line: 113, column: 1, scope: !1529)
!1542 = distinct !DISubprogram(name: "cmd_join", scope: !821, file: !821, line: 116, type: !1543, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !690, !414}
!1545 = !DILocalVariable(name: "data", arg: 1, scope: !1542, file: !821, line: 116, type: !690)
!1546 = !DILocation(line: 116, column: 34, scope: !1542)
!1547 = !DILocalVariable(name: "server", arg: 2, scope: !1542, file: !821, line: 116, type: !414)
!1548 = !DILocation(line: 116, column: 52, scope: !1542)
!1549 = !DILocalVariable(name: "window", scope: !1542, file: !821, line: 118, type: !381)
!1550 = !DILocation(line: 118, column: 14, scope: !1542)
!1551 = !DILocalVariable(name: "channel", scope: !1542, file: !821, line: 119, type: !717)
!1552 = !DILocation(line: 119, column: 22, scope: !1542)
!1553 = !DILocalVariable(name: "optlist", scope: !1542, file: !821, line: 120, type: !408)
!1554 = !DILocation(line: 120, column: 14, scope: !1542)
!1555 = !DILocalVariable(name: "pdata", scope: !1542, file: !821, line: 121, type: !363)
!1556 = !DILocation(line: 121, column: 8, scope: !1542)
!1557 = !DILocalVariable(name: "invite", scope: !1542, file: !821, line: 122, type: !337)
!1558 = !DILocation(line: 122, column: 6, scope: !1542)
!1559 = !DILocalVariable(name: "samewindow", scope: !1542, file: !821, line: 123, type: !337)
!1560 = !DILocation(line: 123, column: 6, scope: !1542)
!1561 = !DILocalVariable(name: "free_arg", scope: !1542, file: !821, line: 124, type: !330)
!1562 = !DILocation(line: 124, column: 8, scope: !1542)
!1563 = !DILocation(line: 126, column: 22, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1542, file: !821, line: 126, column: 6)
!1565 = !DILocation(line: 126, column: 7, scope: !1564)
!1566 = !DILocation(line: 126, column: 6, scope: !1542)
!1567 = !DILocation(line: 130, column: 3, scope: !1564)
!1568 = !DILocation(line: 132, column: 31, scope: !1542)
!1569 = !DILocation(line: 132, column: 11, scope: !1542)
!1570 = !DILocation(line: 132, column: 50, scope: !1542)
!1571 = !DILocation(line: 132, column: 9, scope: !1542)
!1572 = !DILocation(line: 133, column: 35, scope: !1542)
!1573 = !DILocation(line: 133, column: 15, scope: !1542)
!1574 = !DILocation(line: 133, column: 54, scope: !1542)
!1575 = !DILocation(line: 133, column: 13, scope: !1542)
!1576 = !DILocation(line: 134, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1542, file: !821, line: 134, column: 6)
!1578 = !DILocation(line: 134, column: 14, scope: !1577)
!1579 = !DILocation(line: 134, column: 18, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1577, file: !821, discriminator: 1)
!1581 = !DILocation(line: 134, column: 17, scope: !1580)
!1582 = !DILocation(line: 134, column: 24, scope: !1580)
!1583 = !DILocation(line: 134, column: 6, scope: !1580)
!1584 = !DILocation(line: 135, column: 3, scope: !1577)
!1585 = distinct !{!1585, !1584}
!1586 = !DILocation(line: 135, column: 24, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !821, discriminator: 1)
!1588 = distinct !DILexicalBlock(scope: !1577, file: !821, line: 135, column: 6)
!1589 = !DILocation(line: 135, column: 8, scope: !1587)
!1590 = !DILocation(line: 135, column: 35, scope: !1587)
!1591 = distinct !{!1591, !1592}
!1592 = !DILocation(line: 135, column: 35, scope: !1588)
!1593 = !DILocation(line: 135, column: 40, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !821, discriminator: 2)
!1595 = distinct !DILexicalBlock(scope: !1588, file: !821, line: 135, column: 38)
!1596 = !DILocation(line: 135, column: 122, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1594, file: !821, discriminator: 5)
!1598 = !DILocation(line: 135, column: 137, scope: !1594)
!1599 = !DILocation(line: 135, column: 158, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1588, file: !821, discriminator: 3)
!1601 = !DILocation(line: 135, column: 158, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1588, file: !821, discriminator: 4)
!1603 = !DILocation(line: 138, column: 42, scope: !1542)
!1604 = !DILocation(line: 138, column: 51, scope: !1542)
!1605 = !DILocation(line: 138, column: 11, scope: !1542)
!1606 = !DILocation(line: 138, column: 9, scope: !1542)
!1607 = !DILocation(line: 140, column: 25, scope: !1542)
!1608 = !DILocation(line: 140, column: 33, scope: !1542)
!1609 = !DILocation(line: 140, column: 12, scope: !1542)
!1610 = !DILocation(line: 140, column: 10, scope: !1542)
!1611 = !DILocation(line: 141, column: 6, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1542, file: !821, line: 141, column: 6)
!1613 = !DILocation(line: 141, column: 14, scope: !1612)
!1614 = !DILocation(line: 141, column: 6, scope: !1542)
!1615 = !DILocation(line: 143, column: 46, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !821, line: 141, column: 22)
!1617 = !DILocation(line: 143, column: 57, scope: !1616)
!1618 = !DILocation(line: 143, column: 13, scope: !1616)
!1619 = !DILocation(line: 143, column: 10, scope: !1616)
!1620 = !DILocation(line: 144, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !821, line: 144, column: 7)
!1622 = !DILocation(line: 144, column: 17, scope: !1621)
!1623 = !DILocation(line: 144, column: 14, scope: !1621)
!1624 = !DILocation(line: 144, column: 7, scope: !1616)
!1625 = !DILocation(line: 145, column: 22, scope: !1621)
!1626 = !DILocation(line: 145, column: 4, scope: !1621)
!1627 = !DILocation(line: 147, column: 26, scope: !1616)
!1628 = !DILocation(line: 147, column: 54, scope: !1616)
!1629 = !DILocation(line: 147, column: 38, scope: !1616)
!1630 = !DILocation(line: 147, column: 3, scope: !1616)
!1631 = !DILocation(line: 148, column: 2, scope: !1616)
!1632 = !DILocation(line: 150, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !821, line: 150, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1612, file: !821, line: 149, column: 7)
!1635 = !DILocation(line: 150, column: 14, scope: !1633)
!1636 = !DILocation(line: 150, column: 21, scope: !1633)
!1637 = !DILocation(line: 150, column: 25, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1633, file: !821, discriminator: 1)
!1639 = !DILocation(line: 150, column: 33, scope: !1638)
!1640 = !DILocation(line: 150, column: 7, scope: !1638)
!1641 = !DILocation(line: 151, column: 4, scope: !1633)
!1642 = distinct !{!1642, !1641}
!1643 = !DILocation(line: 151, column: 25, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !821, discriminator: 1)
!1645 = distinct !DILexicalBlock(scope: !1633, file: !821, line: 151, column: 7)
!1646 = !DILocation(line: 151, column: 9, scope: !1644)
!1647 = !DILocation(line: 151, column: 36, scope: !1644)
!1648 = distinct !{!1648, !1649}
!1649 = !DILocation(line: 151, column: 36, scope: !1645)
!1650 = !DILocation(line: 151, column: 41, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1652, file: !821, discriminator: 2)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !821, line: 151, column: 39)
!1653 = !DILocation(line: 151, column: 119, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1651, file: !821, discriminator: 5)
!1655 = !DILocation(line: 151, column: 134, scope: !1651)
!1656 = !DILocation(line: 151, column: 155, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1645, file: !821, discriminator: 3)
!1658 = !DILocation(line: 151, column: 155, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1645, file: !821, discriminator: 4)
!1660 = !DILocation(line: 152, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1634, file: !821, line: 152, column: 7)
!1662 = !DILocation(line: 152, column: 7, scope: !1634)
!1663 = !DILocation(line: 153, column: 8, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !821, line: 153, column: 8)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !821, line: 152, column: 15)
!1666 = !DILocation(line: 153, column: 16, scope: !1664)
!1667 = !DILocation(line: 153, column: 28, scope: !1664)
!1668 = !DILocation(line: 153, column: 8, scope: !1665)
!1669 = !DILocation(line: 154, column: 5, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !821, line: 153, column: 36)
!1671 = !DILocation(line: 155, column: 5, scope: !1670)
!1672 = !DILocation(line: 156, column: 21, scope: !1670)
!1673 = !DILocation(line: 156, column: 5, scope: !1670)
!1674 = !DILocation(line: 157, column: 5, scope: !1670)
!1675 = !DILocation(line: 159, column: 12, scope: !1665)
!1676 = !DILocation(line: 159, column: 20, scope: !1665)
!1677 = !DILocation(line: 159, column: 10, scope: !1665)
!1678 = !DILocation(line: 160, column: 3, scope: !1665)
!1679 = !DILocation(line: 161, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1634, file: !821, line: 161, column: 7)
!1681 = !DILocation(line: 161, column: 7, scope: !1634)
!1682 = !DILocation(line: 162, column: 4, scope: !1680)
!1683 = !DILocation(line: 164, column: 3, scope: !1634)
!1684 = !DILocation(line: 164, column: 11, scope: !1634)
!1685 = !DILocation(line: 164, column: 25, scope: !1634)
!1686 = !DILocation(line: 164, column: 33, scope: !1634)
!1687 = !DILocation(line: 165, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1634, file: !821, line: 165, column: 7)
!1689 = !DILocation(line: 165, column: 7, scope: !1634)
!1690 = !DILocation(line: 166, column: 4, scope: !1688)
!1691 = !DILocation(line: 169, column: 18, scope: !1542)
!1692 = !DILocation(line: 169, column: 2, scope: !1542)
!1693 = !DILocation(line: 170, column: 1, scope: !1542)
!1694 = !DILocation(line: 170, column: 1, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1542, file: !821, discriminator: 1)
!1696 = distinct !DISubprogram(name: "cmd_channel", scope: !821, file: !821, line: 240, type: !1697, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !690, !414, !399}
!1699 = !DILocalVariable(name: "data", arg: 1, scope: !1696, file: !821, line: 240, type: !690)
!1700 = !DILocation(line: 240, column: 37, scope: !1696)
!1701 = !DILocalVariable(name: "server", arg: 2, scope: !1696, file: !821, line: 240, type: !414)
!1702 = !DILocation(line: 240, column: 55, scope: !1696)
!1703 = !DILocalVariable(name: "item", arg: 3, scope: !1696, file: !821, line: 240, type: !399)
!1704 = !DILocation(line: 240, column: 76, scope: !1696)
!1705 = !DILocation(line: 242, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1696, file: !821, line: 242, column: 6)
!1707 = !DILocation(line: 242, column: 6, scope: !1706)
!1708 = !DILocation(line: 242, column: 12, scope: !1706)
!1709 = !DILocation(line: 242, column: 6, scope: !1696)
!1710 = !DILocation(line: 243, column: 3, scope: !1706)
!1711 = !DILocation(line: 244, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !821, line: 244, column: 11)
!1713 = !DILocation(line: 244, column: 18, scope: !1712)
!1714 = !DILocation(line: 244, column: 25, scope: !1712)
!1715 = !DILocation(line: 244, column: 30, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1712, file: !821, discriminator: 1)
!1717 = !DILocation(line: 244, column: 39, scope: !1716)
!1718 = !DILocation(line: 244, column: 49, scope: !1716)
!1719 = !DILocation(line: 244, column: 57, scope: !1716)
!1720 = !DILocation(line: 244, column: 29, scope: !1716)
!1721 = !DILocation(line: 244, column: 11, scope: !1716)
!1722 = !DILocation(line: 245, column: 34, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1712, file: !821, line: 244, column: 65)
!1724 = !DILocation(line: 245, column: 40, scope: !1723)
!1725 = !DILocation(line: 245, column: 48, scope: !1723)
!1726 = !DILocation(line: 245, column: 3, scope: !1723)
!1727 = !DILocation(line: 246, column: 2, scope: !1723)
!1728 = !DILocation(line: 247, column: 29, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1712, file: !821, line: 246, column: 9)
!1730 = !DILocation(line: 247, column: 35, scope: !1729)
!1731 = !DILocation(line: 247, column: 43, scope: !1729)
!1732 = !DILocation(line: 247, column: 3, scope: !1729)
!1733 = !DILocation(line: 249, column: 1, scope: !1696)
!1734 = distinct !DISubprogram(name: "cmd_channel_add", scope: !821, file: !821, line: 312, type: !1735, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !690}
!1737 = !DILocalVariable(name: "data", arg: 1, scope: !1734, file: !821, line: 312, type: !690)
!1738 = !DILocation(line: 312, column: 41, scope: !1734)
!1739 = !DILocation(line: 314, column: 25, scope: !1734)
!1740 = !DILocation(line: 314, column: 2, scope: !1734)
!1741 = !DILocation(line: 315, column: 1, scope: !1734)
!1742 = distinct !DISubprogram(name: "cmd_channel_modify", scope: !821, file: !821, line: 317, type: !1735, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1743 = !DILocalVariable(name: "data", arg: 1, scope: !1742, file: !821, line: 317, type: !690)
!1744 = !DILocation(line: 317, column: 44, scope: !1742)
!1745 = !DILocation(line: 319, column: 25, scope: !1742)
!1746 = !DILocation(line: 319, column: 2, scope: !1742)
!1747 = !DILocation(line: 320, column: 1, scope: !1742)
!1748 = distinct !DISubprogram(name: "cmd_channel_remove", scope: !821, file: !821, line: 323, type: !1735, isLocal: true, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1749 = !DILocalVariable(name: "data", arg: 1, scope: !1748, file: !821, line: 323, type: !690)
!1750 = !DILocation(line: 323, column: 44, scope: !1748)
!1751 = !DILocalVariable(name: "rec", scope: !1748, file: !821, line: 325, type: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !349, line: 115, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !1755, line: 12, size: 512, align: 64, elements: !1756)
!1755 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1756 = !{!1757, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1754, file: !1758, line: 1, baseType: !337, size: 32, align: 32)
!1758 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1754, file: !1758, line: 2, baseType: !337, size: 32, align: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1754, file: !1758, line: 4, baseType: !363, size: 64, align: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1754, file: !1758, line: 5, baseType: !363, size: 64, align: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1754, file: !1758, line: 6, baseType: !363, size: 64, align: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !1754, file: !1758, line: 8, baseType: !363, size: 64, align: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !1754, file: !1758, line: 9, baseType: !363, size: 64, align: 64, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !1754, file: !1758, line: 11, baseType: !369, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1754, file: !1758, line: 12, baseType: !408, size: 64, align: 64, offset: 448)
!1767 = !DILocation(line: 325, column: 21, scope: !1748)
!1768 = !DILocalVariable(name: "chatnet", scope: !1748, file: !821, line: 326, type: !363)
!1769 = !DILocation(line: 326, column: 8, scope: !1748)
!1770 = !DILocalVariable(name: "channel", scope: !1748, file: !821, line: 326, type: !363)
!1771 = !DILocation(line: 326, column: 18, scope: !1748)
!1772 = !DILocalVariable(name: "free_arg", scope: !1748, file: !821, line: 327, type: !330)
!1773 = !DILocation(line: 327, column: 8, scope: !1748)
!1774 = !DILocation(line: 329, column: 22, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1748, file: !821, line: 329, column: 6)
!1776 = !DILocation(line: 329, column: 7, scope: !1775)
!1777 = !DILocation(line: 329, column: 6, scope: !1748)
!1778 = !DILocation(line: 330, column: 3, scope: !1775)
!1779 = !DILocation(line: 331, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1748, file: !821, line: 331, column: 6)
!1781 = !DILocation(line: 331, column: 6, scope: !1780)
!1782 = !DILocation(line: 331, column: 15, scope: !1780)
!1783 = !DILocation(line: 331, column: 23, scope: !1780)
!1784 = !DILocation(line: 331, column: 27, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1780, file: !821, discriminator: 1)
!1786 = !DILocation(line: 331, column: 26, scope: !1785)
!1787 = !DILocation(line: 331, column: 35, scope: !1785)
!1788 = !DILocation(line: 331, column: 6, scope: !1785)
!1789 = !DILocation(line: 332, column: 3, scope: !1780)
!1790 = distinct !{!1790, !1789}
!1791 = !DILocation(line: 332, column: 24, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1793, file: !821, discriminator: 1)
!1793 = distinct !DILexicalBlock(scope: !1780, file: !821, line: 332, column: 6)
!1794 = !DILocation(line: 332, column: 8, scope: !1792)
!1795 = !DILocation(line: 332, column: 35, scope: !1792)
!1796 = distinct !{!1796, !1797}
!1797 = !DILocation(line: 332, column: 35, scope: !1793)
!1798 = !DILocation(line: 332, column: 40, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1800, file: !821, discriminator: 2)
!1800 = distinct !DILexicalBlock(scope: !1793, file: !821, line: 332, column: 38)
!1801 = !DILocation(line: 332, column: 122, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1799, file: !821, discriminator: 5)
!1803 = !DILocation(line: 332, column: 137, scope: !1799)
!1804 = !DILocation(line: 332, column: 158, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1793, file: !821, discriminator: 3)
!1806 = !DILocation(line: 332, column: 158, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1793, file: !821, discriminator: 4)
!1808 = !DILocation(line: 334, column: 27, scope: !1748)
!1809 = !DILocation(line: 334, column: 36, scope: !1748)
!1810 = !DILocation(line: 334, column: 8, scope: !1748)
!1811 = !DILocation(line: 334, column: 6, scope: !1748)
!1812 = !DILocation(line: 335, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1748, file: !821, line: 335, column: 6)
!1814 = !DILocation(line: 335, column: 10, scope: !1813)
!1815 = !DILocation(line: 335, column: 6, scope: !1748)
!1816 = !DILocation(line: 336, column: 52, scope: !1813)
!1817 = !DILocation(line: 336, column: 61, scope: !1813)
!1818 = !DILocation(line: 336, column: 3, scope: !1813)
!1819 = !DILocation(line: 338, column: 50, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1813, file: !821, line: 337, column: 7)
!1821 = !DILocation(line: 338, column: 59, scope: !1820)
!1822 = !DILocation(line: 338, column: 3, scope: !1820)
!1823 = !DILocation(line: 339, column: 24, scope: !1820)
!1824 = !DILocation(line: 339, column: 3, scope: !1820)
!1825 = !DILocation(line: 341, column: 18, scope: !1748)
!1826 = !DILocation(line: 341, column: 2, scope: !1748)
!1827 = !DILocation(line: 342, column: 1, scope: !1748)
!1828 = !DILocation(line: 342, column: 1, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1748, file: !821, discriminator: 1)
!1830 = distinct !DISubprogram(name: "cmd_channel_list", scope: !821, file: !821, line: 213, type: !567, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1831 = !DILocalVariable(name: "str", scope: !1830, file: !821, line: 215, type: !611)
!1832 = !DILocation(line: 215, column: 11, scope: !1830)
!1833 = !DILocalVariable(name: "tmp", scope: !1830, file: !821, line: 216, type: !391)
!1834 = !DILocation(line: 216, column: 10, scope: !1830)
!1835 = !DILocation(line: 218, column: 8, scope: !1830)
!1836 = !DILocation(line: 218, column: 6, scope: !1830)
!1837 = !DILocation(line: 219, column: 2, scope: !1830)
!1838 = !DILocation(line: 220, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1830, file: !821, line: 220, column: 2)
!1840 = !DILocation(line: 220, column: 11, scope: !1839)
!1841 = !DILocation(line: 220, column: 7, scope: !1839)
!1842 = !DILocation(line: 220, column: 28, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1844, file: !821, discriminator: 1)
!1844 = distinct !DILexicalBlock(scope: !1839, file: !821, line: 220, column: 2)
!1845 = !DILocation(line: 220, column: 32, scope: !1843)
!1846 = !DILocation(line: 220, column: 2, scope: !1843)
!1847 = !DILocalVariable(name: "rec", scope: !1848, file: !821, line: 221, type: !1752)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !821, line: 220, column: 57)
!1849 = !DILocation(line: 221, column: 22, scope: !1848)
!1850 = !DILocation(line: 221, column: 28, scope: !1848)
!1851 = !DILocation(line: 221, column: 33, scope: !1848)
!1852 = !DILocation(line: 223, column: 21, scope: !1848)
!1853 = !DILocation(line: 223, column: 3, scope: !1848)
!1854 = !DILocation(line: 224, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1848, file: !821, line: 224, column: 7)
!1856 = !DILocation(line: 224, column: 12, scope: !1855)
!1857 = !DILocation(line: 224, column: 7, scope: !1848)
!1858 = !DILocation(line: 225, column: 20, scope: !1855)
!1859 = !DILocation(line: 225, column: 4, scope: !1855)
!1860 = !DILocation(line: 226, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1848, file: !821, line: 226, column: 7)
!1862 = !DILocation(line: 226, column: 12, scope: !1861)
!1863 = !DILocation(line: 226, column: 21, scope: !1861)
!1864 = !DILocation(line: 226, column: 28, scope: !1861)
!1865 = !DILocation(line: 226, column: 32, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1861, file: !821, discriminator: 1)
!1867 = !DILocation(line: 226, column: 37, scope: !1866)
!1868 = !DILocation(line: 226, column: 31, scope: !1866)
!1869 = !DILocation(line: 226, column: 46, scope: !1866)
!1870 = !DILocation(line: 226, column: 7, scope: !1866)
!1871 = !DILocation(line: 227, column: 27, scope: !1861)
!1872 = !DILocation(line: 227, column: 46, scope: !1861)
!1873 = !DILocation(line: 227, column: 51, scope: !1861)
!1874 = !DILocation(line: 227, column: 4, scope: !1861)
!1875 = !DILocation(line: 228, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1848, file: !821, line: 228, column: 7)
!1877 = !DILocation(line: 228, column: 12, scope: !1876)
!1878 = !DILocation(line: 228, column: 24, scope: !1876)
!1879 = !DILocation(line: 228, column: 31, scope: !1876)
!1880 = !DILocation(line: 228, column: 35, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1876, file: !821, discriminator: 1)
!1882 = !DILocation(line: 228, column: 40, scope: !1881)
!1883 = !DILocation(line: 228, column: 34, scope: !1881)
!1884 = !DILocation(line: 228, column: 52, scope: !1881)
!1885 = !DILocation(line: 228, column: 7, scope: !1881)
!1886 = !DILocation(line: 229, column: 27, scope: !1876)
!1887 = !DILocation(line: 229, column: 48, scope: !1876)
!1888 = !DILocation(line: 229, column: 53, scope: !1876)
!1889 = !DILocation(line: 229, column: 4, scope: !1876)
!1890 = !DILocation(line: 231, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1848, file: !821, line: 231, column: 7)
!1892 = !DILocation(line: 231, column: 12, scope: !1891)
!1893 = !DILocation(line: 231, column: 16, scope: !1891)
!1894 = !DILocation(line: 231, column: 7, scope: !1848)
!1895 = !DILocation(line: 231, column: 39, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1891, file: !821, discriminator: 1)
!1897 = !DILocation(line: 231, column: 44, scope: !1896)
!1898 = !DILocation(line: 231, column: 49, scope: !1896)
!1899 = !DILocation(line: 231, column: 52, scope: !1896)
!1900 = !DILocation(line: 231, column: 21, scope: !1896)
!1901 = !DILocation(line: 232, column: 45, scope: !1848)
!1902 = !DILocation(line: 232, column: 50, scope: !1848)
!1903 = !DILocation(line: 232, column: 56, scope: !1848)
!1904 = !DILocation(line: 232, column: 61, scope: !1848)
!1905 = !DILocation(line: 232, column: 69, scope: !1848)
!1906 = !DILocation(line: 232, column: 56, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 1)
!1908 = !DILocation(line: 232, column: 9, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 2)
!1910 = !DILocation(line: 232, column: 14, scope: !1909)
!1911 = !DILocation(line: 232, column: 56, scope: !1909)
!1912 = !DILocation(line: 232, column: 56, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 3)
!1914 = !DILocation(line: 232, column: 23, scope: !1913)
!1915 = !DILocation(line: 232, column: 28, scope: !1913)
!1916 = !DILocation(line: 232, column: 37, scope: !1913)
!1917 = !DILocation(line: 232, column: 23, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 4)
!1919 = !DILocation(line: 232, column: 9, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 5)
!1921 = !DILocation(line: 232, column: 14, scope: !1920)
!1922 = !DILocation(line: 232, column: 23, scope: !1920)
!1923 = !DILocation(line: 232, column: 23, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1848, file: !821, discriminator: 6)
!1925 = !DILocation(line: 232, column: 24, scope: !1924)
!1926 = !DILocation(line: 232, column: 29, scope: !1924)
!1927 = !DILocation(line: 232, column: 3, scope: !1924)
!1928 = !DILocation(line: 235, column: 2, scope: !1848)
!1929 = !DILocation(line: 220, column: 46, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1844, file: !821, discriminator: 2)
!1931 = !DILocation(line: 220, column: 51, scope: !1930)
!1932 = !DILocation(line: 220, column: 44, scope: !1930)
!1933 = !DILocation(line: 220, column: 2, scope: !1930)
!1934 = distinct !{!1934, !1935}
!1935 = !DILocation(line: 220, column: 2, scope: !1830)
!1936 = !DILocation(line: 236, column: 16, scope: !1830)
!1937 = !DILocation(line: 236, column: 2, scope: !1830)
!1938 = !DILocation(line: 237, column: 2, scope: !1830)
!1939 = !DILocation(line: 238, column: 1, scope: !1830)
!1940 = distinct !DISubprogram(name: "cmd_names", scope: !821, file: !821, line: 525, type: !1697, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!1941 = !DILocalVariable(name: "data", arg: 1, scope: !1940, file: !821, line: 525, type: !690)
!1942 = !DILocation(line: 525, column: 35, scope: !1940)
!1943 = !DILocalVariable(name: "server", arg: 2, scope: !1940, file: !821, line: 525, type: !414)
!1944 = !DILocation(line: 525, column: 53, scope: !1940)
!1945 = !DILocalVariable(name: "item", arg: 3, scope: !1940, file: !821, line: 525, type: !399)
!1946 = !DILocation(line: 525, column: 74, scope: !1940)
!1947 = !DILocalVariable(name: "chanrec", scope: !1940, file: !821, line: 527, type: !717)
!1948 = !DILocation(line: 527, column: 15, scope: !1940)
!1949 = !DILocalVariable(name: "optlist", scope: !1940, file: !821, line: 528, type: !408)
!1950 = !DILocation(line: 528, column: 14, scope: !1940)
!1951 = !DILocalVariable(name: "unknowns", scope: !1940, file: !821, line: 529, type: !611)
!1952 = !DILocation(line: 529, column: 18, scope: !1940)
!1953 = !DILocalVariable(name: "channel", scope: !1940, file: !821, line: 530, type: !363)
!1954 = !DILocation(line: 530, column: 8, scope: !1940)
!1955 = !DILocalVariable(name: "channels", scope: !1940, file: !821, line: 530, type: !712)
!1956 = !DILocation(line: 530, column: 19, scope: !1940)
!1957 = !DILocalVariable(name: "tmp", scope: !1940, file: !821, line: 530, type: !712)
!1958 = !DILocation(line: 530, column: 31, scope: !1940)
!1959 = !DILocalVariable(name: "flags", scope: !1940, file: !821, line: 531, type: !337)
!1960 = !DILocation(line: 531, column: 13, scope: !1940)
!1961 = !DILocalVariable(name: "free_arg", scope: !1940, file: !821, line: 532, type: !330)
!1962 = !DILocation(line: 532, column: 8, scope: !1940)
!1963 = !DILocation(line: 534, column: 2, scope: !1940)
!1964 = distinct !{!1964, !1963}
!1965 = !DILocation(line: 534, column: 10, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1967, file: !821, discriminator: 1)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !821, line: 534, column: 10)
!1968 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 534, column: 4)
!1969 = !DILocation(line: 534, column: 15, scope: !1966)
!1970 = !DILocation(line: 534, column: 5, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1972, file: !821, discriminator: 2)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !821, line: 534, column: 3)
!1973 = !DILocation(line: 534, column: 14, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !821, discriminator: 3)
!1975 = distinct !DILexicalBlock(scope: !1967, file: !821, line: 534, column: 12)
!1976 = !DILocation(line: 534, column: 99, scope: !1974)
!1977 = !DILocation(line: 534, column: 110, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1968, file: !821, discriminator: 4)
!1979 = !DILocation(line: 535, column: 42, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 535, column: 6)
!1981 = !DILocation(line: 535, column: 24, scope: !1980)
!1982 = !DILocation(line: 535, column: 9, scope: !1980)
!1983 = !DILocation(line: 535, column: 35, scope: !1980)
!1984 = !DILocation(line: 535, column: 8, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1980, file: !821, discriminator: 1)
!1986 = !DILocation(line: 535, column: 35, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1980, file: !821, discriminator: 2)
!1988 = !DILocation(line: 535, column: 39, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1980, file: !821, discriminator: 3)
!1990 = !DILocation(line: 535, column: 47, scope: !1989)
!1991 = !DILocation(line: 535, column: 6, scope: !1989)
!1992 = !DILocation(line: 536, column: 3, scope: !1980)
!1993 = distinct !{!1993, !1992}
!1994 = !DILocation(line: 536, column: 8, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1996, file: !821, discriminator: 1)
!1996 = distinct !DILexicalBlock(scope: !1980, file: !821, line: 536, column: 6)
!1997 = !DILocation(line: 536, column: 86, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1995, file: !821, discriminator: 3)
!1999 = !DILocation(line: 536, column: 101, scope: !1995)
!2000 = !DILocation(line: 536, column: 109, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1996, file: !821, discriminator: 2)
!2002 = !DILocation(line: 538, column: 22, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 538, column: 6)
!2004 = !DILocation(line: 538, column: 7, scope: !2003)
!2005 = !DILocation(line: 538, column: 6, scope: !1940)
!2006 = !DILocation(line: 540, column: 3, scope: !2003)
!2007 = !DILocation(line: 542, column: 16, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 542, column: 6)
!2009 = !DILocation(line: 542, column: 6, scope: !2008)
!2010 = !DILocation(line: 542, column: 30, scope: !2008)
!2011 = !DILocation(line: 542, column: 35, scope: !2008)
!2012 = !DILocation(line: 542, column: 39, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2008, file: !821, discriminator: 1)
!2014 = !DILocation(line: 542, column: 38, scope: !2013)
!2015 = !DILocation(line: 542, column: 47, scope: !2013)
!2016 = !DILocation(line: 542, column: 6, scope: !2013)
!2017 = !DILocation(line: 543, column: 51, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !821, line: 543, column: 7)
!2019 = distinct !DILexicalBlock(scope: !2008, file: !821, line: 542, column: 56)
!2020 = !DILocation(line: 543, column: 26, scope: !2018)
!2021 = !DILocation(line: 543, column: 10, scope: !2018)
!2022 = !DILocation(line: 543, column: 7, scope: !2019)
!2023 = !DILocation(line: 543, column: 9, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2018, file: !821, discriminator: 1)
!2025 = !DILocation(line: 543, column: 7, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2019, file: !821, discriminator: 2)
!2027 = !DILocation(line: 544, column: 25, scope: !2018)
!2028 = distinct !{!2028, !2027}
!2029 = !DILocation(line: 544, column: 46, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2031, file: !821, discriminator: 1)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !821, line: 544, column: 28)
!2032 = !DILocation(line: 544, column: 30, scope: !2030)
!2033 = !DILocation(line: 544, column: 57, scope: !2030)
!2034 = distinct !{!2034, !2035}
!2035 = !DILocation(line: 544, column: 57, scope: !2031)
!2036 = !DILocation(line: 544, column: 62, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2038, file: !821, discriminator: 2)
!2038 = distinct !DILexicalBlock(scope: !2031, file: !821, line: 544, column: 60)
!2039 = !DILocation(line: 544, column: 137, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2037, file: !821, discriminator: 5)
!2041 = !DILocation(line: 544, column: 152, scope: !2037)
!2042 = !DILocation(line: 544, column: 173, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2031, file: !821, discriminator: 3)
!2044 = !DILocation(line: 544, column: 173, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2031, file: !821, discriminator: 4)
!2046 = !DILocation(line: 546, column: 55, scope: !2019)
!2047 = !DILocation(line: 546, column: 30, scope: !2019)
!2048 = !DILocation(line: 546, column: 14, scope: !2019)
!2049 = !DILocation(line: 546, column: 47, scope: !2019)
!2050 = !DILocation(line: 546, column: 11, scope: !2019)
!2051 = !DILocation(line: 547, column: 2, scope: !2019)
!2052 = !DILocation(line: 549, column: 8, scope: !1940)
!2053 = !DILocation(line: 550, column: 26, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 550, column: 6)
!2055 = !DILocation(line: 550, column: 6, scope: !2054)
!2056 = !DILocation(line: 550, column: 42, scope: !2054)
!2057 = !DILocation(line: 550, column: 6, scope: !1940)
!2058 = !DILocation(line: 551, column: 9, scope: !2054)
!2059 = !DILocation(line: 551, column: 3, scope: !2054)
!2060 = !DILocation(line: 552, column: 26, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 552, column: 6)
!2062 = !DILocation(line: 552, column: 6, scope: !2061)
!2063 = !DILocation(line: 552, column: 46, scope: !2061)
!2064 = !DILocation(line: 552, column: 6, scope: !1940)
!2065 = !DILocation(line: 553, column: 9, scope: !2061)
!2066 = !DILocation(line: 553, column: 3, scope: !2061)
!2067 = !DILocation(line: 554, column: 26, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 554, column: 6)
!2069 = !DILocation(line: 554, column: 6, scope: !2068)
!2070 = !DILocation(line: 554, column: 45, scope: !2068)
!2071 = !DILocation(line: 554, column: 6, scope: !1940)
!2072 = !DILocation(line: 555, column: 9, scope: !2068)
!2073 = !DILocation(line: 555, column: 3, scope: !2068)
!2074 = !DILocation(line: 556, column: 26, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 556, column: 6)
!2076 = !DILocation(line: 556, column: 6, scope: !2075)
!2077 = !DILocation(line: 556, column: 45, scope: !2075)
!2078 = !DILocation(line: 556, column: 6, scope: !1940)
!2079 = !DILocation(line: 557, column: 9, scope: !2075)
!2080 = !DILocation(line: 557, column: 3, scope: !2075)
!2081 = !DILocation(line: 558, column: 26, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 558, column: 6)
!2083 = !DILocation(line: 558, column: 6, scope: !2082)
!2084 = !DILocation(line: 558, column: 44, scope: !2082)
!2085 = !DILocation(line: 558, column: 6, scope: !1940)
!2086 = !DILocation(line: 559, column: 9, scope: !2082)
!2087 = !DILocation(line: 559, column: 3, scope: !2082)
!2088 = !DILocation(line: 561, column: 13, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 561, column: 13)
!2090 = !DILocation(line: 561, column: 19, scope: !2089)
!2091 = !DILocation(line: 561, column: 13, scope: !1940)
!2092 = !DILocation(line: 561, column: 31, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2089, file: !821, discriminator: 1)
!2094 = !DILocation(line: 561, column: 25, scope: !2093)
!2095 = !DILocation(line: 563, column: 20, scope: !1940)
!2096 = !DILocation(line: 563, column: 18, scope: !1940)
!2097 = !DILocation(line: 565, column: 24, scope: !1940)
!2098 = !DILocation(line: 565, column: 13, scope: !1940)
!2099 = !DILocation(line: 565, column: 11, scope: !1940)
!2100 = !DILocation(line: 566, column: 13, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 566, column: 2)
!2102 = !DILocation(line: 566, column: 11, scope: !2101)
!2103 = !DILocation(line: 566, column: 7, scope: !2101)
!2104 = !DILocation(line: 566, column: 24, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2106, file: !821, discriminator: 1)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !821, line: 566, column: 2)
!2107 = !DILocation(line: 566, column: 23, scope: !2105)
!2108 = !DILocation(line: 566, column: 28, scope: !2105)
!2109 = !DILocation(line: 566, column: 2, scope: !2105)
!2110 = !DILocation(line: 567, column: 26, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !821, line: 566, column: 43)
!2112 = !DILocation(line: 567, column: 35, scope: !2111)
!2113 = !DILocation(line: 567, column: 34, scope: !2111)
!2114 = !DILocation(line: 567, column: 13, scope: !2111)
!2115 = !DILocation(line: 567, column: 11, scope: !2111)
!2116 = !DILocation(line: 568, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2111, file: !821, line: 568, column: 7)
!2118 = !DILocation(line: 568, column: 15, scope: !2117)
!2119 = !DILocation(line: 568, column: 7, scope: !2111)
!2120 = !DILocation(line: 569, column: 27, scope: !2117)
!2121 = !DILocation(line: 569, column: 45, scope: !2117)
!2122 = !DILocation(line: 569, column: 44, scope: !2117)
!2123 = !DILocation(line: 569, column: 4, scope: !2117)
!2124 = !DILocation(line: 571, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2117, file: !821, line: 570, column: 8)
!2126 = !DILocation(line: 571, column: 34, scope: !2125)
!2127 = !DILocation(line: 571, column: 4, scope: !2125)
!2128 = !DILocation(line: 572, column: 4, scope: !2125)
!2129 = !DILocation(line: 574, column: 2, scope: !2111)
!2130 = !DILocation(line: 566, column: 39, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2106, file: !821, discriminator: 2)
!2132 = !DILocation(line: 566, column: 2, scope: !2131)
!2133 = distinct !{!2133, !2134}
!2134 = !DILocation(line: 566, column: 2, scope: !1940)
!2135 = !DILocation(line: 575, column: 13, scope: !1940)
!2136 = !DILocation(line: 575, column: 2, scope: !1940)
!2137 = !DILocation(line: 577, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 577, column: 6)
!2139 = !DILocation(line: 577, column: 16, scope: !2138)
!2140 = !DILocation(line: 577, column: 20, scope: !2138)
!2141 = !DILocation(line: 577, column: 6, scope: !1940)
!2142 = !DILocation(line: 578, column: 35, scope: !2138)
!2143 = !DILocation(line: 578, column: 45, scope: !2138)
!2144 = !DILocation(line: 578, column: 55, scope: !2138)
!2145 = !DILocation(line: 578, column: 58, scope: !2138)
!2146 = !DILocation(line: 578, column: 17, scope: !2138)
!2147 = !DILocation(line: 580, column: 6, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1940, file: !821, line: 580, column: 6)
!2149 = !DILocation(line: 580, column: 16, scope: !2148)
!2150 = !DILocation(line: 580, column: 20, scope: !2148)
!2151 = !DILocation(line: 580, column: 24, scope: !2148)
!2152 = !DILocation(line: 580, column: 37, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2148, file: !821, discriminator: 1)
!2154 = !DILocation(line: 580, column: 46, scope: !2153)
!2155 = !DILocation(line: 580, column: 56, scope: !2153)
!2156 = !DILocation(line: 580, column: 27, scope: !2153)
!2157 = !DILocation(line: 580, column: 61, scope: !2153)
!2158 = !DILocation(line: 580, column: 6, scope: !2153)
!2159 = !DILocation(line: 581, column: 49, scope: !2148)
!2160 = !DILocation(line: 581, column: 59, scope: !2148)
!2161 = !DILocation(line: 581, column: 64, scope: !2148)
!2162 = !DILocation(line: 581, column: 72, scope: !2148)
!2163 = !DILocation(line: 581, column: 17, scope: !2148)
!2164 = !DILocation(line: 582, column: 23, scope: !1940)
!2165 = !DILocation(line: 582, column: 9, scope: !1940)
!2166 = !DILocation(line: 584, column: 18, scope: !1940)
!2167 = !DILocation(line: 584, column: 2, scope: !1940)
!2168 = !DILocation(line: 585, column: 1, scope: !1940)
!2169 = !DILocation(line: 585, column: 1, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !1940, file: !821, discriminator: 1)
!2171 = distinct !DISubprogram(name: "cmd_cycle", scope: !821, file: !821, line: 588, type: !1697, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2172 = !DILocalVariable(name: "data", arg: 1, scope: !2171, file: !821, line: 588, type: !690)
!2173 = !DILocation(line: 588, column: 35, scope: !2171)
!2174 = !DILocalVariable(name: "server", arg: 2, scope: !2171, file: !821, line: 588, type: !414)
!2175 = !DILocation(line: 588, column: 53, scope: !2171)
!2176 = !DILocalVariable(name: "item", arg: 3, scope: !2171, file: !821, line: 588, type: !399)
!2177 = !DILocation(line: 588, column: 74, scope: !2171)
!2178 = !DILocalVariable(name: "chanrec", scope: !2171, file: !821, line: 590, type: !717)
!2179 = !DILocation(line: 590, column: 15, scope: !2171)
!2180 = !DILocalVariable(name: "channame", scope: !2171, file: !821, line: 591, type: !363)
!2181 = !DILocation(line: 591, column: 8, scope: !2171)
!2182 = !DILocalVariable(name: "msg", scope: !2171, file: !821, line: 591, type: !363)
!2183 = !DILocation(line: 591, column: 19, scope: !2171)
!2184 = !DILocalVariable(name: "joindata", scope: !2171, file: !821, line: 591, type: !363)
!2185 = !DILocation(line: 591, column: 25, scope: !2171)
!2186 = !DILocalVariable(name: "free_arg", scope: !2171, file: !821, line: 592, type: !330)
!2187 = !DILocation(line: 592, column: 8, scope: !2171)
!2188 = !DILocation(line: 594, column: 2, scope: !2171)
!2189 = distinct !{!2189, !2188}
!2190 = !DILocation(line: 594, column: 10, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !821, discriminator: 1)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !821, line: 594, column: 10)
!2193 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 594, column: 4)
!2194 = !DILocation(line: 594, column: 15, scope: !2191)
!2195 = !DILocation(line: 594, column: 5, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2197, file: !821, discriminator: 2)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !821, line: 594, column: 3)
!2198 = !DILocation(line: 594, column: 14, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2200, file: !821, discriminator: 3)
!2200 = distinct !DILexicalBlock(scope: !2192, file: !821, line: 594, column: 12)
!2201 = !DILocation(line: 594, column: 99, scope: !2199)
!2202 = !DILocation(line: 594, column: 110, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2193, file: !821, discriminator: 4)
!2204 = !DILocation(line: 595, column: 42, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 595, column: 6)
!2206 = !DILocation(line: 595, column: 24, scope: !2205)
!2207 = !DILocation(line: 595, column: 9, scope: !2205)
!2208 = !DILocation(line: 595, column: 35, scope: !2205)
!2209 = !DILocation(line: 595, column: 8, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2205, file: !821, discriminator: 1)
!2211 = !DILocation(line: 595, column: 35, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2205, file: !821, discriminator: 2)
!2213 = !DILocation(line: 595, column: 39, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2205, file: !821, discriminator: 3)
!2215 = !DILocation(line: 595, column: 47, scope: !2214)
!2216 = !DILocation(line: 595, column: 6, scope: !2214)
!2217 = !DILocation(line: 596, column: 3, scope: !2205)
!2218 = distinct !{!2218, !2217}
!2219 = !DILocation(line: 596, column: 8, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !821, discriminator: 1)
!2221 = distinct !DILexicalBlock(scope: !2205, file: !821, line: 596, column: 6)
!2222 = !DILocation(line: 596, column: 86, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2220, file: !821, discriminator: 3)
!2224 = !DILocation(line: 596, column: 101, scope: !2220)
!2225 = !DILocation(line: 596, column: 109, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2221, file: !821, discriminator: 2)
!2227 = !DILocation(line: 598, column: 22, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 598, column: 6)
!2229 = !DILocation(line: 599, column: 8, scope: !2228)
!2230 = !DILocation(line: 598, column: 7, scope: !2228)
!2231 = !DILocation(line: 598, column: 6, scope: !2171)
!2232 = !DILocation(line: 600, column: 3, scope: !2228)
!2233 = !DILocation(line: 601, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 601, column: 6)
!2235 = !DILocation(line: 601, column: 6, scope: !2234)
!2236 = !DILocation(line: 601, column: 16, scope: !2234)
!2237 = !DILocation(line: 601, column: 6, scope: !2171)
!2238 = !DILocation(line: 601, column: 25, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2234, file: !821, discriminator: 1)
!2240 = distinct !{!2240, !2241}
!2241 = !DILocation(line: 601, column: 25, scope: !2234)
!2242 = !DILocation(line: 601, column: 46, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !821, discriminator: 2)
!2244 = distinct !DILexicalBlock(scope: !2234, file: !821, line: 601, column: 28)
!2245 = !DILocation(line: 601, column: 30, scope: !2243)
!2246 = !DILocation(line: 601, column: 57, scope: !2243)
!2247 = distinct !{!2247, !2248}
!2248 = !DILocation(line: 601, column: 57, scope: !2244)
!2249 = !DILocation(line: 601, column: 62, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2251, file: !821, discriminator: 3)
!2251 = distinct !DILexicalBlock(scope: !2244, file: !821, line: 601, column: 60)
!2252 = !DILocation(line: 601, column: 144, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2250, file: !821, discriminator: 6)
!2254 = !DILocation(line: 601, column: 159, scope: !2250)
!2255 = !DILocation(line: 601, column: 180, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2244, file: !821, discriminator: 4)
!2257 = !DILocation(line: 601, column: 180, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2244, file: !821, discriminator: 5)
!2259 = !DILocation(line: 603, column: 25, scope: !2171)
!2260 = !DILocation(line: 603, column: 33, scope: !2171)
!2261 = !DILocation(line: 603, column: 12, scope: !2171)
!2262 = !DILocation(line: 603, column: 10, scope: !2171)
!2263 = !DILocation(line: 604, column: 6, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 604, column: 6)
!2265 = !DILocation(line: 604, column: 14, scope: !2264)
!2266 = !DILocation(line: 604, column: 6, scope: !2171)
!2267 = !DILocation(line: 604, column: 22, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2264, file: !821, discriminator: 1)
!2269 = distinct !{!2269, !2270}
!2270 = !DILocation(line: 604, column: 22, scope: !2264)
!2271 = !DILocation(line: 604, column: 43, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !821, discriminator: 2)
!2273 = distinct !DILexicalBlock(scope: !2264, file: !821, line: 604, column: 25)
!2274 = !DILocation(line: 604, column: 27, scope: !2272)
!2275 = !DILocation(line: 604, column: 54, scope: !2272)
!2276 = distinct !{!2276, !2277}
!2277 = !DILocation(line: 604, column: 54, scope: !2273)
!2278 = !DILocation(line: 604, column: 59, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !821, discriminator: 3)
!2280 = distinct !DILexicalBlock(scope: !2273, file: !821, line: 604, column: 57)
!2281 = !DILocation(line: 604, column: 138, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2279, file: !821, discriminator: 6)
!2283 = !DILocation(line: 604, column: 153, scope: !2279)
!2284 = !DILocation(line: 604, column: 174, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2273, file: !821, discriminator: 4)
!2286 = !DILocation(line: 604, column: 174, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2273, file: !821, discriminator: 5)
!2288 = !DILocation(line: 606, column: 13, scope: !2171)
!2289 = !DILocation(line: 606, column: 22, scope: !2171)
!2290 = !DILocation(line: 606, column: 36, scope: !2171)
!2291 = !DILocation(line: 606, column: 11, scope: !2171)
!2292 = !DILocation(line: 607, column: 52, scope: !2171)
!2293 = !DILocation(line: 607, column: 63, scope: !2171)
!2294 = !DILocation(line: 607, column: 19, scope: !2171)
!2295 = !DILocation(line: 608, column: 4, scope: !2171)
!2296 = !DILocation(line: 608, column: 13, scope: !2171)
!2297 = !DILocation(line: 608, column: 21, scope: !2171)
!2298 = !DILocation(line: 608, column: 26, scope: !2171)
!2299 = !DILocation(line: 608, column: 35, scope: !2171)
!2300 = !DILocation(line: 607, column: 2, scope: !2171)
!2301 = !DILocation(line: 611, column: 33, scope: !2171)
!2302 = !DILocation(line: 611, column: 39, scope: !2171)
!2303 = !DILocation(line: 611, column: 47, scope: !2171)
!2304 = !DILocation(line: 611, column: 2, scope: !2171)
!2305 = !DILocation(line: 613, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2171, file: !821, line: 613, column: 6)
!2307 = !DILocation(line: 613, column: 29, scope: !2306)
!2308 = !DILocation(line: 613, column: 6, scope: !2306)
!2309 = !DILocation(line: 613, column: 38, scope: !2306)
!2310 = !DILocation(line: 613, column: 6, scope: !2171)
!2311 = !DILocation(line: 614, column: 3, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !821, line: 613, column: 46)
!2313 = !DILocation(line: 614, column: 12, scope: !2312)
!2314 = !DILocation(line: 614, column: 17, scope: !2312)
!2315 = !DILocation(line: 615, column: 19, scope: !2312)
!2316 = !DILocation(line: 615, column: 3, scope: !2312)
!2317 = !DILocation(line: 616, column: 2, scope: !2312)
!2318 = !DILocation(line: 618, column: 2, scope: !2171)
!2319 = !DILocation(line: 618, column: 10, scope: !2171)
!2320 = !DILocation(line: 618, column: 24, scope: !2171)
!2321 = !DILocation(line: 618, column: 32, scope: !2171)
!2322 = !DILocation(line: 619, column: 9, scope: !2171)
!2323 = !DILocation(line: 619, column: 2, scope: !2171)
!2324 = !DILocation(line: 621, column: 18, scope: !2171)
!2325 = !DILocation(line: 621, column: 2, scope: !2171)
!2326 = !DILocation(line: 622, column: 1, scope: !2171)
!2327 = !DILocation(line: 622, column: 1, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2171, file: !821, discriminator: 1)
!2329 = distinct !DISubprogram(name: "fe_channels_deinit", scope: !821, file: !821, line: 652, type: !567, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2330 = !DILocation(line: 654, column: 2, scope: !2329)
!2331 = !DILocation(line: 655, column: 2, scope: !2329)
!2332 = !DILocation(line: 656, column: 2, scope: !2329)
!2333 = !DILocation(line: 657, column: 2, scope: !2329)
!2334 = !DILocation(line: 658, column: 2, scope: !2329)
!2335 = !DILocation(line: 660, column: 2, scope: !2329)
!2336 = !DILocation(line: 661, column: 2, scope: !2329)
!2337 = !DILocation(line: 662, column: 2, scope: !2329)
!2338 = !DILocation(line: 663, column: 2, scope: !2329)
!2339 = !DILocation(line: 664, column: 2, scope: !2329)
!2340 = !DILocation(line: 665, column: 2, scope: !2329)
!2341 = !DILocation(line: 666, column: 2, scope: !2329)
!2342 = !DILocation(line: 667, column: 2, scope: !2329)
!2343 = !DILocation(line: 668, column: 1, scope: !2329)
!2344 = distinct !DISubprogram(name: "get_nick_length", scope: !821, file: !821, line: 344, type: !2345, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!337, !330}
!2347 = !DILocalVariable(name: "data", arg: 1, scope: !2344, file: !821, line: 344, type: !330)
!2348 = !DILocation(line: 344, column: 34, scope: !2344)
!2349 = !DILocation(line: 346, column: 43, scope: !2344)
!2350 = !DILocation(line: 346, column: 30, scope: !2344)
!2351 = !DILocation(line: 346, column: 50, scope: !2344)
!2352 = !DILocation(line: 346, column: 16, scope: !2344)
!2353 = !DILocation(line: 346, column: 9, scope: !2344)
!2354 = distinct !DISubprogram(name: "signal_channel_created_curwin", scope: !821, file: !821, line: 52, type: !1341, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2355 = !DILocalVariable(name: "channel", arg: 1, scope: !2354, file: !821, line: 52, type: !717)
!2356 = !DILocation(line: 52, column: 56, scope: !2354)
!2357 = !DILocation(line: 54, column: 2, scope: !2354)
!2358 = distinct !{!2358, !2357}
!2359 = !DILocation(line: 54, column: 10, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !821, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !821, line: 54, column: 10)
!2362 = distinct !DILexicalBlock(scope: !2354, file: !821, line: 54, column: 4)
!2363 = !DILocation(line: 54, column: 18, scope: !2360)
!2364 = !DILocation(line: 54, column: 5, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !821, discriminator: 2)
!2366 = distinct !DILexicalBlock(scope: !2361, file: !821, line: 54, column: 3)
!2367 = !DILocation(line: 54, column: 14, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !821, discriminator: 3)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !821, line: 54, column: 12)
!2370 = !DILocation(line: 54, column: 102, scope: !2368)
!2371 = !DILocation(line: 54, column: 113, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2362, file: !821, discriminator: 4)
!2373 = !DILocation(line: 56, column: 18, scope: !2354)
!2374 = !DILocation(line: 56, column: 46, scope: !2354)
!2375 = !DILocation(line: 56, column: 30, scope: !2354)
!2376 = !DILocation(line: 56, column: 2, scope: !2354)
!2377 = !DILocation(line: 57, column: 1, scope: !2354)
!2378 = !DILocation(line: 57, column: 1, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2354, file: !821, discriminator: 1)
!2380 = distinct !DISubprogram(name: "cmd_channel_list_joined", scope: !821, file: !821, line: 172, type: !567, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2381 = !DILocalVariable(name: "channel", scope: !2380, file: !821, line: 174, type: !717)
!2382 = !DILocation(line: 174, column: 15, scope: !2380)
!2383 = !DILocalVariable(name: "nicks", scope: !2380, file: !821, line: 175, type: !611)
!2384 = !DILocation(line: 175, column: 11, scope: !2380)
!2385 = !DILocalVariable(name: "nicklist", scope: !2380, file: !821, line: 176, type: !391)
!2386 = !DILocation(line: 176, column: 10, scope: !2380)
!2387 = !DILocalVariable(name: "tmp", scope: !2380, file: !821, line: 176, type: !391)
!2388 = !DILocation(line: 176, column: 21, scope: !2380)
!2389 = !DILocalVariable(name: "ntmp", scope: !2380, file: !821, line: 176, type: !391)
!2390 = !DILocation(line: 176, column: 27, scope: !2380)
!2391 = !DILocation(line: 178, column: 6, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2380, file: !821, line: 178, column: 6)
!2393 = !DILocation(line: 178, column: 15, scope: !2392)
!2394 = !DILocation(line: 178, column: 6, scope: !2380)
!2395 = !DILocation(line: 179, column: 3, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !821, line: 178, column: 23)
!2397 = !DILocation(line: 180, column: 3, scope: !2396)
!2398 = !DILocation(line: 184, column: 54, scope: !2380)
!2399 = !DILocation(line: 184, column: 66, scope: !2380)
!2400 = !DILocation(line: 184, column: 29, scope: !2380)
!2401 = !DILocation(line: 184, column: 13, scope: !2380)
!2402 = !DILocation(line: 184, column: 10, scope: !2380)
!2403 = !DILocation(line: 185, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2380, file: !821, line: 185, column: 6)
!2405 = !DILocation(line: 185, column: 14, scope: !2404)
!2406 = !DILocation(line: 185, column: 6, scope: !2380)
!2407 = !DILocation(line: 186, column: 48, scope: !2404)
!2408 = !DILocation(line: 186, column: 57, scope: !2404)
!2409 = !DILocation(line: 186, column: 3, scope: !2404)
!2410 = !DILocation(line: 190, column: 2, scope: !2380)
!2411 = !DILocation(line: 191, column: 13, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2380, file: !821, line: 191, column: 2)
!2413 = !DILocation(line: 191, column: 11, scope: !2412)
!2414 = !DILocation(line: 191, column: 7, scope: !2412)
!2415 = !DILocation(line: 191, column: 23, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2417, file: !821, discriminator: 1)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !821, line: 191, column: 2)
!2418 = !DILocation(line: 191, column: 27, scope: !2416)
!2419 = !DILocation(line: 191, column: 2, scope: !2416)
!2420 = !DILocation(line: 192, column: 13, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !821, line: 191, column: 52)
!2422 = !DILocation(line: 192, column: 18, scope: !2421)
!2423 = !DILocation(line: 192, column: 11, scope: !2421)
!2424 = !DILocation(line: 194, column: 32, scope: !2421)
!2425 = !DILocation(line: 194, column: 14, scope: !2421)
!2426 = !DILocation(line: 194, column: 12, scope: !2421)
!2427 = !DILocation(line: 195, column: 11, scope: !2421)
!2428 = !DILocation(line: 195, column: 9, scope: !2421)
!2429 = !DILocation(line: 196, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2421, file: !821, line: 196, column: 3)
!2431 = !DILocation(line: 196, column: 13, scope: !2430)
!2432 = !DILocation(line: 196, column: 8, scope: !2430)
!2433 = !DILocation(line: 196, column: 25, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2435, file: !821, discriminator: 1)
!2435 = distinct !DILexicalBlock(scope: !2430, file: !821, line: 196, column: 3)
!2436 = !DILocation(line: 196, column: 30, scope: !2434)
!2437 = !DILocation(line: 196, column: 3, scope: !2434)
!2438 = !DILocalVariable(name: "rec", scope: !2439, file: !821, line: 197, type: !347)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !821, line: 196, column: 57)
!2440 = !DILocation(line: 197, column: 14, scope: !2439)
!2441 = !DILocation(line: 197, column: 20, scope: !2439)
!2442 = !DILocation(line: 197, column: 26, scope: !2439)
!2443 = !DILocation(line: 199, column: 27, scope: !2439)
!2444 = !DILocation(line: 199, column: 41, scope: !2439)
!2445 = !DILocation(line: 199, column: 46, scope: !2439)
!2446 = !DILocation(line: 199, column: 4, scope: !2439)
!2447 = !DILocation(line: 200, column: 3, scope: !2439)
!2448 = !DILocation(line: 196, column: 45, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2435, file: !821, discriminator: 2)
!2450 = !DILocation(line: 196, column: 51, scope: !2449)
!2451 = !DILocation(line: 196, column: 43, scope: !2449)
!2452 = !DILocation(line: 196, column: 3, scope: !2449)
!2453 = distinct !{!2453, !2454}
!2454 = !DILocation(line: 196, column: 3, scope: !2421)
!2455 = !DILocation(line: 202, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2421, file: !821, line: 202, column: 7)
!2457 = !DILocation(line: 202, column: 14, scope: !2456)
!2458 = !DILocation(line: 202, column: 18, scope: !2456)
!2459 = !DILocation(line: 202, column: 7, scope: !2421)
!2460 = !DILocation(line: 202, column: 41, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2456, file: !821, discriminator: 1)
!2462 = !DILocation(line: 202, column: 48, scope: !2461)
!2463 = !DILocation(line: 202, column: 55, scope: !2461)
!2464 = !DILocation(line: 202, column: 58, scope: !2461)
!2465 = !DILocation(line: 202, column: 23, scope: !2461)
!2466 = !DILocation(line: 203, column: 44, scope: !2421)
!2467 = !DILocation(line: 203, column: 53, scope: !2421)
!2468 = !DILocation(line: 203, column: 67, scope: !2421)
!2469 = !DILocation(line: 203, column: 76, scope: !2421)
!2470 = !DILocation(line: 203, column: 82, scope: !2421)
!2471 = !DILocation(line: 203, column: 91, scope: !2421)
!2472 = !DILocation(line: 203, column: 99, scope: !2421)
!2473 = !DILocation(line: 203, column: 104, scope: !2421)
!2474 = !DILocation(line: 203, column: 111, scope: !2421)
!2475 = !DILocation(line: 203, column: 3, scope: !2421)
!2476 = !DILocation(line: 207, column: 16, scope: !2421)
!2477 = !DILocation(line: 207, column: 3, scope: !2421)
!2478 = !DILocation(line: 208, column: 17, scope: !2421)
!2479 = !DILocation(line: 208, column: 3, scope: !2421)
!2480 = !DILocation(line: 209, column: 2, scope: !2421)
!2481 = !DILocation(line: 191, column: 41, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2417, file: !821, discriminator: 2)
!2483 = !DILocation(line: 191, column: 46, scope: !2482)
!2484 = !DILocation(line: 191, column: 39, scope: !2482)
!2485 = !DILocation(line: 191, column: 2, scope: !2482)
!2486 = distinct !{!2486, !2487}
!2487 = !DILocation(line: 191, column: 2, scope: !2380)
!2488 = !DILocation(line: 210, column: 1, scope: !2380)
!2489 = distinct !DISubprogram(name: "cmd_channel_add_modify", scope: !821, file: !821, line: 251, type: !2490, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !824)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !690, !538}
!2492 = !DILocalVariable(name: "data", arg: 1, scope: !2489, file: !821, line: 251, type: !690)
!2493 = !DILocation(line: 251, column: 48, scope: !2489)
!2494 = !DILocalVariable(name: "add", arg: 2, scope: !2489, file: !821, line: 251, type: !538)
!2495 = !DILocation(line: 251, column: 63, scope: !2489)
!2496 = !DILocalVariable(name: "optlist", scope: !2489, file: !821, line: 253, type: !408)
!2497 = !DILocation(line: 253, column: 14, scope: !2489)
!2498 = !DILocalVariable(name: "chatnetrec", scope: !2489, file: !821, line: 254, type: !2499)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64, align: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !349, line: 106, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !2502, line: 13, size: 576, align: 64, elements: !2503)
!2502 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!2503 = !{!2504, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2501, file: !2505, line: 1, baseType: !337, size: 32, align: 32)
!2505 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !2501, file: !2505, line: 2, baseType: !337, size: 32, align: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2501, file: !2505, line: 4, baseType: !363, size: 64, align: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !2501, file: !2505, line: 6, baseType: !363, size: 64, align: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !2501, file: !2505, line: 7, baseType: !363, size: 64, align: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !2501, file: !2505, line: 8, baseType: !363, size: 64, align: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !2501, file: !2505, line: 10, baseType: !363, size: 64, align: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !2501, file: !2505, line: 11, baseType: !363, size: 64, align: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !2501, file: !2505, line: 12, baseType: !444, size: 64, align: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !2501, file: !2505, line: 12, baseType: !444, size: 64, align: 64, offset: 512)
!2515 = !DILocation(line: 254, column: 22, scope: !2489)
!2516 = !DILocalVariable(name: "rec", scope: !2489, file: !821, line: 255, type: !1752)
!2517 = !DILocation(line: 255, column: 21, scope: !2489)
!2518 = !DILocalVariable(name: "botarg", scope: !2489, file: !821, line: 256, type: !363)
!2519 = !DILocation(line: 256, column: 8, scope: !2489)
!2520 = !DILocalVariable(name: "botcmdarg", scope: !2489, file: !821, line: 256, type: !363)
!2521 = !DILocation(line: 256, column: 17, scope: !2489)
!2522 = !DILocalVariable(name: "chatnet", scope: !2489, file: !821, line: 256, type: !363)
!2523 = !DILocation(line: 256, column: 29, scope: !2489)
!2524 = !DILocalVariable(name: "channel", scope: !2489, file: !821, line: 256, type: !363)
!2525 = !DILocation(line: 256, column: 39, scope: !2489)
!2526 = !DILocalVariable(name: "password", scope: !2489, file: !821, line: 256, type: !363)
!2527 = !DILocation(line: 256, column: 49, scope: !2489)
!2528 = !DILocalVariable(name: "free_arg", scope: !2489, file: !821, line: 257, type: !330)
!2529 = !DILocation(line: 257, column: 8, scope: !2489)
!2530 = !DILocation(line: 259, column: 22, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 259, column: 6)
!2532 = !DILocation(line: 259, column: 7, scope: !2531)
!2533 = !DILocation(line: 259, column: 6, scope: !2489)
!2534 = !DILocation(line: 261, column: 3, scope: !2531)
!2535 = !DILocation(line: 263, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 263, column: 6)
!2537 = !DILocation(line: 263, column: 6, scope: !2536)
!2538 = !DILocation(line: 263, column: 15, scope: !2536)
!2539 = !DILocation(line: 263, column: 23, scope: !2536)
!2540 = !DILocation(line: 263, column: 27, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2536, file: !821, discriminator: 1)
!2542 = !DILocation(line: 263, column: 26, scope: !2541)
!2543 = !DILocation(line: 263, column: 35, scope: !2541)
!2544 = !DILocation(line: 263, column: 6, scope: !2541)
!2545 = !DILocation(line: 264, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2536, file: !821, line: 263, column: 44)
!2547 = distinct !{!2547, !2545}
!2548 = !DILocation(line: 264, column: 24, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !821, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !821, line: 264, column: 6)
!2551 = !DILocation(line: 264, column: 8, scope: !2549)
!2552 = !DILocation(line: 264, column: 35, scope: !2549)
!2553 = distinct !{!2553, !2554}
!2554 = !DILocation(line: 264, column: 35, scope: !2550)
!2555 = !DILocation(line: 264, column: 40, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2557, file: !821, discriminator: 2)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !821, line: 264, column: 38)
!2558 = !DILocation(line: 264, column: 122, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2556, file: !821, discriminator: 4)
!2560 = !DILocation(line: 264, column: 137, scope: !2556)
!2561 = !DILocation(line: 264, column: 158, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2550, file: !821, discriminator: 3)
!2563 = !DILocation(line: 265, column: 2, scope: !2546)
!2564 = !DILocation(line: 267, column: 28, scope: !2489)
!2565 = !DILocation(line: 267, column: 15, scope: !2489)
!2566 = !DILocation(line: 267, column: 13, scope: !2489)
!2567 = !DILocation(line: 268, column: 6, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 268, column: 6)
!2569 = !DILocation(line: 268, column: 17, scope: !2568)
!2570 = !DILocation(line: 268, column: 6, scope: !2489)
!2571 = !DILocation(line: 269, column: 48, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !821, line: 268, column: 25)
!2573 = !DILocation(line: 269, column: 3, scope: !2572)
!2574 = !DILocation(line: 271, column: 19, scope: !2572)
!2575 = !DILocation(line: 271, column: 3, scope: !2572)
!2576 = !DILocation(line: 272, column: 3, scope: !2572)
!2577 = !DILocation(line: 275, column: 31, scope: !2489)
!2578 = !DILocation(line: 275, column: 11, scope: !2489)
!2579 = !DILocation(line: 275, column: 9, scope: !2489)
!2580 = !DILocation(line: 276, column: 34, scope: !2489)
!2581 = !DILocation(line: 276, column: 14, scope: !2489)
!2582 = !DILocation(line: 276, column: 12, scope: !2489)
!2583 = !DILocation(line: 278, column: 27, scope: !2489)
!2584 = !DILocation(line: 278, column: 36, scope: !2489)
!2585 = !DILocation(line: 278, column: 8, scope: !2489)
!2586 = !DILocation(line: 278, column: 6, scope: !2489)
!2587 = !DILocation(line: 279, column: 6, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 279, column: 6)
!2589 = !DILocation(line: 279, column: 10, scope: !2588)
!2590 = !DILocation(line: 279, column: 6, scope: !2489)
!2591 = !DILocation(line: 280, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !821, line: 280, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !821, line: 279, column: 18)
!2594 = !DILocation(line: 280, column: 11, scope: !2592)
!2595 = !DILocation(line: 280, column: 7, scope: !2593)
!2596 = !DILocation(line: 281, column: 53, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !821, line: 280, column: 19)
!2598 = !DILocation(line: 281, column: 62, scope: !2597)
!2599 = !DILocation(line: 281, column: 4, scope: !2597)
!2600 = !DILocation(line: 283, column: 20, scope: !2597)
!2601 = !DILocation(line: 283, column: 4, scope: !2597)
!2602 = !DILocation(line: 284, column: 4, scope: !2597)
!2603 = !DILocation(line: 287, column: 11, scope: !2593)
!2604 = !DILocation(line: 287, column: 23, scope: !2593)
!2605 = !DILocation(line: 287, column: 10, scope: !2593)
!2606 = !DILocation(line: 287, column: 10, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2593, file: !821, discriminator: 1)
!2608 = !DILocation(line: 287, column: 63, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2593, file: !821, discriminator: 2)
!2610 = !DILocation(line: 287, column: 76, scope: !2609)
!2611 = !DILocation(line: 287, column: 40, scope: !2609)
!2612 = !DILocation(line: 287, column: 10, scope: !2609)
!2613 = !DILocation(line: 287, column: 10, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2593, file: !821, discriminator: 3)
!2615 = !DILocation(line: 287, column: 89, scope: !2614)
!2616 = !DILocation(line: 287, column: 9, scope: !2614)
!2617 = !DILocation(line: 287, column: 7, scope: !2614)
!2618 = !DILocation(line: 288, column: 24, scope: !2593)
!2619 = !DILocation(line: 288, column: 15, scope: !2593)
!2620 = !DILocation(line: 288, column: 3, scope: !2593)
!2621 = !DILocation(line: 288, column: 8, scope: !2593)
!2622 = !DILocation(line: 288, column: 13, scope: !2593)
!2623 = !DILocation(line: 289, column: 27, scope: !2593)
!2624 = !DILocation(line: 289, column: 18, scope: !2593)
!2625 = !DILocation(line: 289, column: 3, scope: !2593)
!2626 = !DILocation(line: 289, column: 8, scope: !2593)
!2627 = !DILocation(line: 289, column: 16, scope: !2593)
!2628 = !DILocation(line: 290, column: 2, scope: !2593)
!2629 = !DILocation(line: 291, column: 27, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !821, line: 291, column: 7)
!2631 = distinct !DILexicalBlock(scope: !2588, file: !821, line: 290, column: 9)
!2632 = !DILocation(line: 291, column: 7, scope: !2630)
!2633 = !DILocation(line: 291, column: 7, scope: !2631)
!2634 = !DILocation(line: 291, column: 45, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2630, file: !821, discriminator: 1)
!2636 = distinct !{!2636, !2637}
!2637 = !DILocation(line: 291, column: 45, scope: !2630)
!2638 = !DILocation(line: 291, column: 54, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !821, discriminator: 2)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !821, line: 291, column: 54)
!2641 = distinct !DILexicalBlock(scope: !2630, file: !821, line: 291, column: 48)
!2642 = !DILocation(line: 291, column: 59, scope: !2639)
!2643 = !DILocation(line: 291, column: 78, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !821, discriminator: 3)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !821, line: 291, column: 69)
!2646 = !DILocation(line: 291, column: 83, scope: !2644)
!2647 = !DILocation(line: 291, column: 71, scope: !2644)
!2648 = !DILocation(line: 291, column: 95, scope: !2644)
!2649 = !DILocation(line: 291, column: 100, scope: !2644)
!2650 = !DILocation(line: 291, column: 110, scope: !2644)
!2651 = !DILocation(line: 291, column: 46, scope: !2644)
!2652 = !DILocation(line: 291, column: 48, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2641, file: !821, discriminator: 4)
!2654 = !DILocation(line: 291, column: 48, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2641, file: !821, discriminator: 5)
!2656 = !DILocation(line: 292, column: 27, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2631, file: !821, line: 292, column: 7)
!2658 = !DILocation(line: 292, column: 7, scope: !2657)
!2659 = !DILocation(line: 292, column: 7, scope: !2631)
!2660 = !DILocation(line: 292, column: 47, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2657, file: !821, discriminator: 1)
!2662 = distinct !{!2662, !2663}
!2663 = !DILocation(line: 292, column: 47, scope: !2657)
!2664 = !DILocation(line: 292, column: 56, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2666, file: !821, discriminator: 2)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !821, line: 292, column: 56)
!2667 = distinct !DILexicalBlock(scope: !2657, file: !821, line: 292, column: 50)
!2668 = !DILocation(line: 292, column: 61, scope: !2665)
!2669 = !DILocation(line: 292, column: 83, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2671, file: !821, discriminator: 3)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !821, line: 292, column: 74)
!2672 = !DILocation(line: 292, column: 88, scope: !2670)
!2673 = !DILocation(line: 292, column: 76, scope: !2670)
!2674 = !DILocation(line: 292, column: 103, scope: !2670)
!2675 = !DILocation(line: 292, column: 108, scope: !2670)
!2676 = !DILocation(line: 292, column: 121, scope: !2670)
!2677 = !DILocation(line: 292, column: 48, scope: !2670)
!2678 = !DILocation(line: 292, column: 50, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2667, file: !821, discriminator: 4)
!2680 = !DILocation(line: 292, column: 50, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2667, file: !821, discriminator: 5)
!2682 = !DILocation(line: 293, column: 8, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2631, file: !821, line: 293, column: 7)
!2684 = !DILocation(line: 293, column: 7, scope: !2683)
!2685 = !DILocation(line: 293, column: 17, scope: !2683)
!2686 = !DILocation(line: 293, column: 7, scope: !2631)
!2687 = !DILocation(line: 293, column: 26, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2683, file: !821, discriminator: 1)
!2689 = distinct !{!2689, !2690}
!2690 = !DILocation(line: 293, column: 26, scope: !2683)
!2691 = !DILocation(line: 293, column: 35, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2693, file: !821, discriminator: 2)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !821, line: 293, column: 35)
!2694 = distinct !DILexicalBlock(scope: !2683, file: !821, line: 293, column: 29)
!2695 = !DILocation(line: 293, column: 40, scope: !2692)
!2696 = !DILocation(line: 293, column: 59, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2698, file: !821, discriminator: 3)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !821, line: 293, column: 50)
!2699 = !DILocation(line: 293, column: 64, scope: !2697)
!2700 = !DILocation(line: 293, column: 52, scope: !2697)
!2701 = !DILocation(line: 293, column: 76, scope: !2697)
!2702 = !DILocation(line: 293, column: 81, scope: !2697)
!2703 = !DILocation(line: 293, column: 91, scope: !2697)
!2704 = !DILocation(line: 293, column: 27, scope: !2697)
!2705 = !DILocation(line: 293, column: 29, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2694, file: !821, discriminator: 4)
!2707 = !DILocation(line: 293, column: 29, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2694, file: !821, discriminator: 5)
!2709 = !DILocation(line: 295, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 295, column: 6)
!2711 = !DILocation(line: 295, column: 6, scope: !2710)
!2712 = !DILocation(line: 295, column: 6, scope: !2489)
!2713 = !DILocation(line: 295, column: 44, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2710, file: !821, discriminator: 1)
!2715 = !DILocation(line: 295, column: 49, scope: !2714)
!2716 = !DILocation(line: 295, column: 58, scope: !2714)
!2717 = !DILocation(line: 296, column: 26, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 296, column: 6)
!2719 = !DILocation(line: 296, column: 6, scope: !2718)
!2720 = !DILocation(line: 296, column: 6, scope: !2489)
!2721 = !DILocation(line: 296, column: 46, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2718, file: !821, discriminator: 1)
!2723 = !DILocation(line: 296, column: 51, scope: !2722)
!2724 = !DILocation(line: 296, column: 60, scope: !2722)
!2725 = !DILocation(line: 297, column: 6, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 297, column: 6)
!2727 = !DILocation(line: 297, column: 13, scope: !2726)
!2728 = !DILocation(line: 297, column: 20, scope: !2726)
!2729 = !DILocation(line: 297, column: 24, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2726, file: !821, discriminator: 1)
!2731 = !DILocation(line: 297, column: 23, scope: !2730)
!2732 = !DILocation(line: 297, column: 31, scope: !2730)
!2733 = !DILocation(line: 297, column: 6, scope: !2730)
!2734 = !DILocation(line: 297, column: 65, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2726, file: !821, discriminator: 2)
!2736 = !DILocation(line: 297, column: 56, scope: !2735)
!2737 = !DILocation(line: 297, column: 40, scope: !2735)
!2738 = !DILocation(line: 297, column: 45, scope: !2735)
!2739 = !DILocation(line: 297, column: 54, scope: !2735)
!2740 = !DILocation(line: 298, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 298, column: 6)
!2742 = !DILocation(line: 298, column: 16, scope: !2741)
!2743 = !DILocation(line: 298, column: 23, scope: !2741)
!2744 = !DILocation(line: 298, column: 27, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2741, file: !821, discriminator: 1)
!2746 = !DILocation(line: 298, column: 26, scope: !2745)
!2747 = !DILocation(line: 298, column: 37, scope: !2745)
!2748 = !DILocation(line: 298, column: 6, scope: !2745)
!2749 = !DILocation(line: 298, column: 74, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2741, file: !821, discriminator: 2)
!2751 = !DILocation(line: 298, column: 65, scope: !2750)
!2752 = !DILocation(line: 298, column: 46, scope: !2750)
!2753 = !DILocation(line: 298, column: 51, scope: !2750)
!2754 = !DILocation(line: 298, column: 63, scope: !2750)
!2755 = !DILocation(line: 299, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2489, file: !821, line: 299, column: 6)
!2757 = !DILocation(line: 299, column: 6, scope: !2756)
!2758 = !DILocation(line: 299, column: 16, scope: !2756)
!2759 = !DILocation(line: 299, column: 24, scope: !2756)
!2760 = !DILocation(line: 299, column: 37, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2756, file: !821, discriminator: 1)
!2762 = !DILocation(line: 299, column: 27, scope: !2761)
!2763 = !DILocation(line: 299, column: 52, scope: !2761)
!2764 = !DILocation(line: 299, column: 6, scope: !2761)
!2765 = !DILocation(line: 299, column: 83, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2756, file: !821, discriminator: 2)
!2767 = !DILocation(line: 299, column: 74, scope: !2766)
!2768 = !DILocation(line: 299, column: 58, scope: !2766)
!2769 = !DILocation(line: 299, column: 63, scope: !2766)
!2770 = !DILocation(line: 299, column: 72, scope: !2766)
!2771 = !DILocation(line: 301, column: 37, scope: !2489)
!2772 = !DILocation(line: 301, column: 42, scope: !2489)
!2773 = !DILocation(line: 301, column: 2, scope: !2489)
!2774 = !DILocation(line: 303, column: 23, scope: !2489)
!2775 = !DILocation(line: 303, column: 2, scope: !2489)
!2776 = !DILocation(line: 304, column: 47, scope: !2489)
!2777 = !DILocation(line: 304, column: 56, scope: !2489)
!2778 = !DILocation(line: 304, column: 2, scope: !2489)
!2779 = !DILocation(line: 307, column: 18, scope: !2489)
!2780 = !DILocation(line: 307, column: 2, scope: !2489)
!2781 = !DILocation(line: 308, column: 1, scope: !2489)
!2782 = !DILocation(line: 308, column: 1, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2489, file: !821, discriminator: 1)
